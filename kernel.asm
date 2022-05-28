
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b6813103          	ld	sp,-1176(sp) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	658060ef          	jal	ra,80006674 <start>

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
    80001088:	3bd020ef          	jal	ra,80003c44 <_ZN5Riscv20handleSupervisorTrapEv>

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

void idle(void* args)
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00113423          	sd	ra,8(sp)
    80001564:	00813023          	sd	s0,0(sp)
    80001568:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    8000156c:	00008517          	auipc	a0,0x8
    80001570:	ab450513          	addi	a0,a0,-1356 # 80009020 <CONSOLE_STATUS+0x10>
    80001574:	00002097          	auipc	ra,0x2
    80001578:	598080e7          	jalr	1432(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
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
    Riscv::printString("Thread 1 started...\n");
    8000159c:	00008517          	auipc	a0,0x8
    800015a0:	a8c50513          	addi	a0,a0,-1396 # 80009028 <CONSOLE_STATUS+0x18>
    800015a4:	00002097          	auipc	ra,0x2
    800015a8:	568080e7          	jalr	1384(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800015ac:	00000493          	li	s1,0
    800015b0:	03c0006f          	j	800015ec <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	d80080e7          	jalr	-640(ra) # 80001334 <thread_dispatch>
        Riscv::printString("i : ");
    800015bc:	00008517          	auipc	a0,0x8
    800015c0:	a8450513          	addi	a0,a0,-1404 # 80009040 <CONSOLE_STATUS+0x30>
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	548080e7          	jalr	1352(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015cc:	00048513          	mv	a0,s1
    800015d0:	00002097          	auipc	ra,0x2
    800015d4:	5ac080e7          	jalr	1452(ra) # 80003b7c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015d8:	00008517          	auipc	a0,0x8
    800015dc:	b2850513          	addi	a0,a0,-1240 # 80009100 <CONSOLE_STATUS+0xf0>
    800015e0:	00002097          	auipc	ra,0x2
    800015e4:	52c080e7          	jalr	1324(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800015e8:	00148493          	addi	s1,s1,1
    800015ec:	000027b7          	lui	a5,0x2
    800015f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015f4:	0097ec63          	bltu	a5,s1,8000160c <_Z15thread1FunctionPv+0x84>
        if(i % 150 == 0 && i > 0)
    800015f8:	09600793          	li	a5,150
    800015fc:	02f4f7b3          	remu	a5,s1,a5
    80001600:	fa079ee3          	bnez	a5,800015bc <_Z15thread1FunctionPv+0x34>
    80001604:	fa048ce3          	beqz	s1,800015bc <_Z15thread1FunctionPv+0x34>
    80001608:	fadff06f          	j	800015b4 <_Z15thread1FunctionPv+0x2c>
    }
}
    8000160c:	01813083          	ld	ra,24(sp)
    80001610:	01013403          	ld	s0,16(sp)
    80001614:	00813483          	ld	s1,8(sp)
    80001618:	02010113          	addi	sp,sp,32
    8000161c:	00008067          	ret

0000000080001620 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	00913423          	sd	s1,8(sp)
    80001630:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001634:	00008517          	auipc	a0,0x8
    80001638:	a1450513          	addi	a0,a0,-1516 # 80009048 <CONSOLE_STATUS+0x38>
    8000163c:	00002097          	auipc	ra,0x2
    80001640:	4d0080e7          	jalr	1232(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    80001644:	00000493          	li	s1,0
    80001648:	03c0006f          	j	80001684 <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	ce8080e7          	jalr	-792(ra) # 80001334 <thread_dispatch>
        Riscv::printString("j : ");
    80001654:	00008517          	auipc	a0,0x8
    80001658:	a0c50513          	addi	a0,a0,-1524 # 80009060 <CONSOLE_STATUS+0x50>
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	4b0080e7          	jalr	1200(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001664:	00048513          	mv	a0,s1
    80001668:	00002097          	auipc	ra,0x2
    8000166c:	514080e7          	jalr	1300(ra) # 80003b7c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001670:	00008517          	auipc	a0,0x8
    80001674:	a9050513          	addi	a0,a0,-1392 # 80009100 <CONSOLE_STATUS+0xf0>
    80001678:	00002097          	auipc	ra,0x2
    8000167c:	494080e7          	jalr	1172(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001680:	00148493          	addi	s1,s1,1
    80001684:	000027b7          	lui	a5,0x2
    80001688:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000168c:	0097ec63          	bltu	a5,s1,800016a4 <_Z15thread2FunctionPv+0x84>
        if(j % 50 == 0 && j > 0)
    80001690:	03200793          	li	a5,50
    80001694:	02f4f7b3          	remu	a5,s1,a5
    80001698:	fa079ee3          	bnez	a5,80001654 <_Z15thread2FunctionPv+0x34>
    8000169c:	fa048ce3          	beqz	s1,80001654 <_Z15thread2FunctionPv+0x34>
    800016a0:	fadff06f          	j	8000164c <_Z15thread2FunctionPv+0x2c>
    }
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret

00000000800016b8 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    800016cc:	00000493          	li	s1,0
    800016d0:	000027b7          	lui	a5,0x2
    800016d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016d8:	0297c463          	blt	a5,s1,80001700 <_ZN12TestPeriodic18periodicActivationEv+0x48>
    {
        Riscv::printString("i : ");
    800016dc:	00008517          	auipc	a0,0x8
    800016e0:	96450513          	addi	a0,a0,-1692 # 80009040 <CONSOLE_STATUS+0x30>
    800016e4:	00002097          	auipc	ra,0x2
    800016e8:	428080e7          	jalr	1064(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800016ec:	00048513          	mv	a0,s1
    800016f0:	00002097          	auipc	ra,0x2
    800016f4:	48c080e7          	jalr	1164(ra) # 80003b7c <_ZN5Riscv12printIntegerEm>
    for(int i = 0 ; i < 10000;i++)
    800016f8:	0014849b          	addiw	s1,s1,1
    800016fc:	fd5ff06f          	j	800016d0 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    80001700:	01813083          	ld	ra,24(sp)
    80001704:	01013403          	ld	s0,16(sp)
    80001708:	00813483          	ld	s1,8(sp)
    8000170c:	02010113          	addi	sp,sp,32
    80001710:	00008067          	ret

0000000080001714 <_Z20thread2FunctionTest2Pv>:
{
    80001714:	fe010113          	addi	sp,sp,-32
    80001718:	00113c23          	sd	ra,24(sp)
    8000171c:	00813823          	sd	s0,16(sp)
    80001720:	00913423          	sd	s1,8(sp)
    80001724:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001728:	00008517          	auipc	a0,0x8
    8000172c:	92050513          	addi	a0,a0,-1760 # 80009048 <CONSOLE_STATUS+0x38>
    80001730:	00002097          	auipc	ra,0x2
    80001734:	3dc080e7          	jalr	988(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001738:	00000493          	li	s1,0
    8000173c:	0480006f          	j	80001784 <_Z20thread2FunctionTest2Pv+0x70>
            thread_exit();
    80001740:	00000097          	auipc	ra,0x0
    80001744:	c14080e7          	jalr	-1004(ra) # 80001354 <thread_exit>
    80001748:	0500006f          	j	80001798 <_Z20thread2FunctionTest2Pv+0x84>
            thread_dispatch();
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	be8080e7          	jalr	-1048(ra) # 80001334 <thread_dispatch>
        Riscv::printString("j : ");
    80001754:	00008517          	auipc	a0,0x8
    80001758:	90c50513          	addi	a0,a0,-1780 # 80009060 <CONSOLE_STATUS+0x50>
    8000175c:	00002097          	auipc	ra,0x2
    80001760:	3b0080e7          	jalr	944(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001764:	00048513          	mv	a0,s1
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	414080e7          	jalr	1044(ra) # 80003b7c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001770:	00008517          	auipc	a0,0x8
    80001774:	99050513          	addi	a0,a0,-1648 # 80009100 <CONSOLE_STATUS+0xf0>
    80001778:	00002097          	auipc	ra,0x2
    8000177c:	394080e7          	jalr	916(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001780:	00148493          	addi	s1,s1,1
    80001784:	000027b7          	lui	a5,0x2
    80001788:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000178c:	0297e063          	bltu	a5,s1,800017ac <_Z20thread2FunctionTest2Pv+0x98>
        if(j == 200)
    80001790:	0c800793          	li	a5,200
    80001794:	faf486e3          	beq	s1,a5,80001740 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    80001798:	03200793          	li	a5,50
    8000179c:	02f4f7b3          	remu	a5,s1,a5
    800017a0:	fa079ae3          	bnez	a5,80001754 <_Z20thread2FunctionTest2Pv+0x40>
    800017a4:	fa0488e3          	beqz	s1,80001754 <_Z20thread2FunctionTest2Pv+0x40>
    800017a8:	fa5ff06f          	j	8000174c <_Z20thread2FunctionTest2Pv+0x38>
}
    800017ac:	01813083          	ld	ra,24(sp)
    800017b0:	01013403          	ld	s0,16(sp)
    800017b4:	00813483          	ld	s1,8(sp)
    800017b8:	02010113          	addi	sp,sp,32
    800017bc:	00008067          	ret

00000000800017c0 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    800017c0:	0000a717          	auipc	a4,0xa
    800017c4:	41072703          	lw	a4,1040(a4) # 8000bbd0 <head>
    800017c8:	00a00793          	li	a5,10
    800017cc:	06f70c63          	beq	a4,a5,80001844 <_Z9consumerAPv+0x84>
{
    800017d0:	fe010113          	addi	sp,sp,-32
    800017d4:	00113c23          	sd	ra,24(sp)
    800017d8:	00813823          	sd	s0,16(sp)
    800017dc:	00913423          	sd	s1,8(sp)
    800017e0:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    800017e4:	0000a497          	auipc	s1,0xa
    800017e8:	3ec48493          	addi	s1,s1,1004 # 8000bbd0 <head>
    800017ec:	0084b503          	ld	a0,8(s1)
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	bf0080e7          	jalr	-1040(ra) # 800013e0 <sem_wait>
        __putc(buffer[head++]);
    800017f8:	0004a783          	lw	a5,0(s1)
    800017fc:	0017871b          	addiw	a4,a5,1
    80001800:	00e4a023          	sw	a4,0(s1)
    80001804:	00f487b3          	add	a5,s1,a5
    80001808:	0107c503          	lbu	a0,16(a5)
    8000180c:	00007097          	auipc	ra,0x7
    80001810:	f30080e7          	jalr	-208(ra) # 8000873c <__putc>
        sem_signal(spaceAvailable);
    80001814:	0204b503          	ld	a0,32(s1)
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	bf4080e7          	jalr	-1036(ra) # 8000140c <sem_signal>
    while(head!=10)
    80001820:	0000a717          	auipc	a4,0xa
    80001824:	3b072703          	lw	a4,944(a4) # 8000bbd0 <head>
    80001828:	00a00793          	li	a5,10
    8000182c:	faf71ce3          	bne	a4,a5,800017e4 <_Z9consumerAPv+0x24>
    }
}
    80001830:	01813083          	ld	ra,24(sp)
    80001834:	01013403          	ld	s0,16(sp)
    80001838:	00813483          	ld	s1,8(sp)
    8000183c:	02010113          	addi	sp,sp,32
    80001840:	00008067          	ret
    80001844:	00008067          	ret

0000000080001848 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80001848:	0000a717          	auipc	a4,0xa
    8000184c:	3b072703          	lw	a4,944(a4) # 8000bbf8 <tail>
    80001850:	00a00793          	li	a5,10
    80001854:	08f70063          	beq	a4,a5,800018d4 <_Z9producerAPv+0x8c>
{
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00113c23          	sd	ra,24(sp)
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    8000186c:	0000a497          	auipc	s1,0xa
    80001870:	36448493          	addi	s1,s1,868 # 8000bbd0 <head>
    80001874:	0204b503          	ld	a0,32(s1)
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	b68080e7          	jalr	-1176(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    80001880:	0284a783          	lw	a5,40(s1)
    80001884:	0000a717          	auipc	a4,0xa
    80001888:	14c70713          	addi	a4,a4,332 # 8000b9d0 <string>
    8000188c:	00f70733          	add	a4,a4,a5
    80001890:	00074683          	lbu	a3,0(a4)
    80001894:	00f48733          	add	a4,s1,a5
    80001898:	00d70823          	sb	a3,16(a4)
        tail++;
    8000189c:	0017879b          	addiw	a5,a5,1
    800018a0:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    800018a4:	0084b503          	ld	a0,8(s1)
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	b64080e7          	jalr	-1180(ra) # 8000140c <sem_signal>
    while(tail!=10)
    800018b0:	0000a717          	auipc	a4,0xa
    800018b4:	34872703          	lw	a4,840(a4) # 8000bbf8 <tail>
    800018b8:	00a00793          	li	a5,10
    800018bc:	faf718e3          	bne	a4,a5,8000186c <_Z9producerAPv+0x24>
    }
}
    800018c0:	01813083          	ld	ra,24(sp)
    800018c4:	01013403          	ld	s0,16(sp)
    800018c8:	00813483          	ld	s1,8(sp)
    800018cc:	02010113          	addi	sp,sp,32
    800018d0:	00008067          	ret
    800018d4:	00008067          	ret

00000000800018d8 <_Z11threadTest1v>:
{
    800018d8:	fe010113          	addi	sp,sp,-32
    800018dc:	00113c23          	sd	ra,24(sp)
    800018e0:	00813823          	sd	s0,16(sp)
    800018e4:	00913423          	sd	s1,8(sp)
    800018e8:	01213023          	sd	s2,0(sp)
    800018ec:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    800018f0:	01000513          	li	a0,16
    800018f4:	00002097          	auipc	ra,0x2
    800018f8:	db8080e7          	jalr	-584(ra) # 800036ac <_Znwm>
    800018fc:	00050493          	mv	s1,a0
    80001900:	00000613          	li	a2,0
    80001904:	00000597          	auipc	a1,0x0
    80001908:	c8458593          	addi	a1,a1,-892 # 80001588 <_Z15thread1FunctionPv>
    8000190c:	00002097          	auipc	ra,0x2
    80001910:	f38080e7          	jalr	-200(ra) # 80003844 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001914:	00048513          	mv	a0,s1
    80001918:	00002097          	auipc	ra,0x2
    8000191c:	e64080e7          	jalr	-412(ra) # 8000377c <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001920:	01000513          	li	a0,16
    80001924:	00002097          	auipc	ra,0x2
    80001928:	d88080e7          	jalr	-632(ra) # 800036ac <_Znwm>
    8000192c:	00050493          	mv	s1,a0
    80001930:	00000613          	li	a2,0
    80001934:	00000597          	auipc	a1,0x0
    80001938:	cec58593          	addi	a1,a1,-788 # 80001620 <_Z15thread2FunctionPv>
    8000193c:	00002097          	auipc	ra,0x2
    80001940:	f08080e7          	jalr	-248(ra) # 80003844 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001944:	00048513          	mv	a0,s1
    80001948:	00002097          	auipc	ra,0x2
    8000194c:	e34080e7          	jalr	-460(ra) # 8000377c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001950:	00002097          	auipc	ra,0x2
    80001954:	134080e7          	jalr	308(ra) # 80003a84 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001958:	00007517          	auipc	a0,0x7
    8000195c:	71050513          	addi	a0,a0,1808 # 80009068 <CONSOLE_STATUS+0x58>
    80001960:	00002097          	auipc	ra,0x2
    80001964:	1ac080e7          	jalr	428(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	13c080e7          	jalr	316(ra) # 80003aa4 <_ZN5Riscv17disableInterruptsEv>
}
    80001970:	01813083          	ld	ra,24(sp)
    80001974:	01013403          	ld	s0,16(sp)
    80001978:	00813483          	ld	s1,8(sp)
    8000197c:	00013903          	ld	s2,0(sp)
    80001980:	02010113          	addi	sp,sp,32
    80001984:	00008067          	ret
    80001988:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    8000198c:	00048513          	mv	a0,s1
    80001990:	00002097          	auipc	ra,0x2
    80001994:	d44080e7          	jalr	-700(ra) # 800036d4 <_ZdlPv>
    80001998:	00090513          	mv	a0,s2
    8000199c:	0000b097          	auipc	ra,0xb
    800019a0:	3dc080e7          	jalr	988(ra) # 8000cd78 <_Unwind_Resume>
    800019a4:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019a8:	00048513          	mv	a0,s1
    800019ac:	00002097          	auipc	ra,0x2
    800019b0:	d28080e7          	jalr	-728(ra) # 800036d4 <_ZdlPv>
    800019b4:	00090513          	mv	a0,s2
    800019b8:	0000b097          	auipc	ra,0xb
    800019bc:	3c0080e7          	jalr	960(ra) # 8000cd78 <_Unwind_Resume>

00000000800019c0 <_Z11threadTest2v>:
{
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	01213023          	sd	s2,0(sp)
    800019d4:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    800019d8:	01000513          	li	a0,16
    800019dc:	00002097          	auipc	ra,0x2
    800019e0:	cd0080e7          	jalr	-816(ra) # 800036ac <_Znwm>
    800019e4:	00050493          	mv	s1,a0
    800019e8:	00000613          	li	a2,0
    800019ec:	00000597          	auipc	a1,0x0
    800019f0:	b7058593          	addi	a1,a1,-1168 # 8000155c <_Z4idlePv>
    800019f4:	00002097          	auipc	ra,0x2
    800019f8:	e50080e7          	jalr	-432(ra) # 80003844 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019fc:	00048513          	mv	a0,s1
    80001a00:	00002097          	auipc	ra,0x2
    80001a04:	d7c080e7          	jalr	-644(ra) # 8000377c <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a08:	01000513          	li	a0,16
    80001a0c:	00002097          	auipc	ra,0x2
    80001a10:	ca0080e7          	jalr	-864(ra) # 800036ac <_Znwm>
    80001a14:	00050493          	mv	s1,a0
    80001a18:	00000613          	li	a2,0
    80001a1c:	00000597          	auipc	a1,0x0
    80001a20:	b6c58593          	addi	a1,a1,-1172 # 80001588 <_Z15thread1FunctionPv>
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	e20080e7          	jalr	-480(ra) # 80003844 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	00002097          	auipc	ra,0x2
    80001a34:	d4c080e7          	jalr	-692(ra) # 8000377c <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a38:	01000513          	li	a0,16
    80001a3c:	00002097          	auipc	ra,0x2
    80001a40:	c70080e7          	jalr	-912(ra) # 800036ac <_Znwm>
    80001a44:	00050493          	mv	s1,a0
    80001a48:	00000613          	li	a2,0
    80001a4c:	00000597          	auipc	a1,0x0
    80001a50:	cc858593          	addi	a1,a1,-824 # 80001714 <_Z20thread2FunctionTest2Pv>
    80001a54:	00002097          	auipc	ra,0x2
    80001a58:	df0080e7          	jalr	-528(ra) # 80003844 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a5c:	00048513          	mv	a0,s1
    80001a60:	00002097          	auipc	ra,0x2
    80001a64:	d1c080e7          	jalr	-740(ra) # 8000377c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a68:	00002097          	auipc	ra,0x2
    80001a6c:	01c080e7          	jalr	28(ra) # 80003a84 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001a70:	00007517          	auipc	a0,0x7
    80001a74:	5f850513          	addi	a0,a0,1528 # 80009068 <CONSOLE_STATUS+0x58>
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	094080e7          	jalr	148(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a80:	00002097          	auipc	ra,0x2
    80001a84:	024080e7          	jalr	36(ra) # 80003aa4 <_ZN5Riscv17disableInterruptsEv>
}
    80001a88:	01813083          	ld	ra,24(sp)
    80001a8c:	01013403          	ld	s0,16(sp)
    80001a90:	00813483          	ld	s1,8(sp)
    80001a94:	00013903          	ld	s2,0(sp)
    80001a98:	02010113          	addi	sp,sp,32
    80001a9c:	00008067          	ret
    80001aa0:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00002097          	auipc	ra,0x2
    80001aac:	c2c080e7          	jalr	-980(ra) # 800036d4 <_ZdlPv>
    80001ab0:	00090513          	mv	a0,s2
    80001ab4:	0000b097          	auipc	ra,0xb
    80001ab8:	2c4080e7          	jalr	708(ra) # 8000cd78 <_Unwind_Resume>
    80001abc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00002097          	auipc	ra,0x2
    80001ac8:	c10080e7          	jalr	-1008(ra) # 800036d4 <_ZdlPv>
    80001acc:	00090513          	mv	a0,s2
    80001ad0:	0000b097          	auipc	ra,0xb
    80001ad4:	2a8080e7          	jalr	680(ra) # 8000cd78 <_Unwind_Resume>
    80001ad8:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001adc:	00048513          	mv	a0,s1
    80001ae0:	00002097          	auipc	ra,0x2
    80001ae4:	bf4080e7          	jalr	-1036(ra) # 800036d4 <_ZdlPv>
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	0000b097          	auipc	ra,0xb
    80001af0:	28c080e7          	jalr	652(ra) # 8000cd78 <_Unwind_Resume>

0000000080001af4 <_Z10mallocFreev>:
{
    80001af4:	cc010113          	addi	sp,sp,-832
    80001af8:	32113c23          	sd	ra,824(sp)
    80001afc:	32813823          	sd	s0,816(sp)
    80001b00:	32913423          	sd	s1,808(sp)
    80001b04:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001b08:	00007517          	auipc	a0,0x7
    80001b0c:	56850513          	addi	a0,a0,1384 # 80009070 <CONSOLE_STATUS+0x60>
    80001b10:	00002097          	auipc	ra,0x2
    80001b14:	ffc080e7          	jalr	-4(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001b18:	00000493          	li	s1,0
    80001b1c:	0080006f          	j	80001b24 <_Z10mallocFreev+0x30>
    80001b20:	0014849b          	addiw	s1,s1,1
    80001b24:	06300793          	li	a5,99
    80001b28:	0497c463          	blt	a5,s1,80001b70 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b2c:	06400513          	li	a0,100
    80001b30:	fffff097          	auipc	ra,0xfffff
    80001b34:	728080e7          	jalr	1832(ra) # 80001258 <mem_alloc>
    80001b38:	00349793          	slli	a5,s1,0x3
    80001b3c:	fe040713          	addi	a4,s0,-32
    80001b40:	00f707b3          	add	a5,a4,a5
    80001b44:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b48:	fc051ce3          	bnez	a0,80001b20 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001b4c:	00007517          	auipc	a0,0x7
    80001b50:	53450513          	addi	a0,a0,1332 # 80009080 <CONSOLE_STATUS+0x70>
    80001b54:	00002097          	auipc	ra,0x2
    80001b58:	fb8080e7          	jalr	-72(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80001b5c:	33813083          	ld	ra,824(sp)
    80001b60:	33013403          	ld	s0,816(sp)
    80001b64:	32813483          	ld	s1,808(sp)
    80001b68:	34010113          	addi	sp,sp,832
    80001b6c:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b70:	00000493          	li	s1,0
    80001b74:	06300793          	li	a5,99
    80001b78:	0297ce63          	blt	a5,s1,80001bb4 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b7c:	00349793          	slli	a5,s1,0x3
    80001b80:	fe040713          	addi	a4,s0,-32
    80001b84:	00f707b3          	add	a5,a4,a5
    80001b88:	ce07b503          	ld	a0,-800(a5)
    80001b8c:	fffff097          	auipc	ra,0xfffff
    80001b90:	6fc080e7          	jalr	1788(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001b94:	00051663          	bnez	a0,80001ba0 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001b98:	0024849b          	addiw	s1,s1,2
    80001b9c:	fd9ff06f          	j	80001b74 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001ba0:	00007517          	auipc	a0,0x7
    80001ba4:	4e050513          	addi	a0,a0,1248 # 80009080 <CONSOLE_STATUS+0x70>
    80001ba8:	00002097          	auipc	ra,0x2
    80001bac:	f64080e7          	jalr	-156(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
            return;
    80001bb0:	fadff06f          	j	80001b5c <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001bb4:	00000493          	li	s1,0
    80001bb8:	0080006f          	j	80001bc0 <_Z10mallocFreev+0xcc>
    80001bbc:	0024849b          	addiw	s1,s1,2
    80001bc0:	06300793          	li	a5,99
    80001bc4:	0297cc63          	blt	a5,s1,80001bfc <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001bc8:	01400513          	li	a0,20
    80001bcc:	fffff097          	auipc	ra,0xfffff
    80001bd0:	68c080e7          	jalr	1676(ra) # 80001258 <mem_alloc>
    80001bd4:	00349793          	slli	a5,s1,0x3
    80001bd8:	fe040713          	addi	a4,s0,-32
    80001bdc:	00f707b3          	add	a5,a4,a5
    80001be0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001be4:	fc051ce3          	bnez	a0,80001bbc <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001be8:	00007517          	auipc	a0,0x7
    80001bec:	49850513          	addi	a0,a0,1176 # 80009080 <CONSOLE_STATUS+0x70>
    80001bf0:	00002097          	auipc	ra,0x2
    80001bf4:	f1c080e7          	jalr	-228(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
            return;
    80001bf8:	f65ff06f          	j	80001b5c <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001bfc:	00000493          	li	s1,0
    80001c00:	06300793          	li	a5,99
    80001c04:	0297ce63          	blt	a5,s1,80001c40 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001c08:	00349793          	slli	a5,s1,0x3
    80001c0c:	fe040713          	addi	a4,s0,-32
    80001c10:	00f707b3          	add	a5,a4,a5
    80001c14:	ce07b503          	ld	a0,-800(a5)
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	670080e7          	jalr	1648(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001c20:	00051663          	bnez	a0,80001c2c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c24:	0014849b          	addiw	s1,s1,1
    80001c28:	fd9ff06f          	j	80001c00 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001c2c:	00007517          	auipc	a0,0x7
    80001c30:	45450513          	addi	a0,a0,1108 # 80009080 <CONSOLE_STATUS+0x70>
    80001c34:	00002097          	auipc	ra,0x2
    80001c38:	ed8080e7          	jalr	-296(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
            return;
    80001c3c:	f21ff06f          	j	80001b5c <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c40:	00007517          	auipc	a0,0x7
    80001c44:	44850513          	addi	a0,a0,1096 # 80009088 <CONSOLE_STATUS+0x78>
    80001c48:	00002097          	auipc	ra,0x2
    80001c4c:	ec4080e7          	jalr	-316(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    80001c50:	f0dff06f          	j	80001b5c <_Z10mallocFreev+0x68>

0000000080001c54 <_Z9bigMallocv>:
{
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00113423          	sd	ra,8(sp)
    80001c5c:	00813023          	sd	s0,0(sp)
    80001c60:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001c64:	00007517          	auipc	a0,0x7
    80001c68:	42c50513          	addi	a0,a0,1068 # 80009090 <CONSOLE_STATUS+0x80>
    80001c6c:	00002097          	auipc	ra,0x2
    80001c70:	ea0080e7          	jalr	-352(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c74:	0000a797          	auipc	a5,0xa
    80001c78:	f0c7b783          	ld	a5,-244(a5) # 8000bb80 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c7c:	0007b503          	ld	a0,0(a5)
    80001c80:	0000a797          	auipc	a5,0xa
    80001c84:	ec87b783          	ld	a5,-312(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c88:	0007b783          	ld	a5,0(a5)
    80001c8c:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001c90:	06450513          	addi	a0,a0,100
    80001c94:	fffff097          	auipc	ra,0xfffff
    80001c98:	5c4080e7          	jalr	1476(ra) # 80001258 <mem_alloc>
    if(p == 0)
    80001c9c:	02050263          	beqz	a0,80001cc0 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001ca0:	00007517          	auipc	a0,0x7
    80001ca4:	3e050513          	addi	a0,a0,992 # 80009080 <CONSOLE_STATUS+0x70>
    80001ca8:	00002097          	auipc	ra,0x2
    80001cac:	e64080e7          	jalr	-412(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret
        Riscv::printString("OK\n");
    80001cc0:	00007517          	auipc	a0,0x7
    80001cc4:	3c850513          	addi	a0,a0,968 # 80009088 <CONSOLE_STATUS+0x78>
    80001cc8:	00002097          	auipc	ra,0x2
    80001ccc:	e44080e7          	jalr	-444(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    80001cd0:	fe1ff06f          	j	80001cb0 <_Z9bigMallocv+0x5c>

0000000080001cd4 <_Z17lotOfSmallMallocsv>:
{
    80001cd4:	fd010113          	addi	sp,sp,-48
    80001cd8:	02113423          	sd	ra,40(sp)
    80001cdc:	02813023          	sd	s0,32(sp)
    80001ce0:	00913c23          	sd	s1,24(sp)
    80001ce4:	01213823          	sd	s2,16(sp)
    80001ce8:	01313423          	sd	s3,8(sp)
    80001cec:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001cf0:	00007517          	auipc	a0,0x7
    80001cf4:	3b050513          	addi	a0,a0,944 # 800090a0 <CONSOLE_STATUS+0x90>
    80001cf8:	00002097          	auipc	ra,0x2
    80001cfc:	e14080e7          	jalr	-492(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001d00:	00000493          	li	s1,0
    uint64 sum = 0;
    80001d04:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001d08:	00000913          	li	s2,0
    80001d0c:	0180006f          	j	80001d24 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d10:	00a00793          	li	a5,10
    80001d14:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d18:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d1c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d20:	00148493          	addi	s1,s1,1
    80001d24:	000027b7          	lui	a5,0x2
    80001d28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d2c:	0097ea63          	bltu	a5,s1,80001d40 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d30:	00800513          	li	a0,8
    80001d34:	fffff097          	auipc	ra,0xfffff
    80001d38:	524080e7          	jalr	1316(ra) # 80001258 <mem_alloc>
        if(t == 0)
    80001d3c:	fc051ae3          	bnez	a0,80001d10 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001d40:	00090513          	mv	a0,s2
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	e38080e7          	jalr	-456(ra) # 80003b7c <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d4c:	00007517          	auipc	a0,0x7
    80001d50:	3b450513          	addi	a0,a0,948 # 80009100 <CONSOLE_STATUS+0xf0>
    80001d54:	00002097          	auipc	ra,0x2
    80001d58:	db8080e7          	jalr	-584(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d5c:	00291793          	slli	a5,s2,0x2
    80001d60:	01278933          	add	s2,a5,s2
    80001d64:	00191913          	slli	s2,s2,0x1
    80001d68:	03390863          	beq	s2,s3,80001d98 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d6c:	00007517          	auipc	a0,0x7
    80001d70:	31450513          	addi	a0,a0,788 # 80009080 <CONSOLE_STATUS+0x70>
    80001d74:	00002097          	auipc	ra,0x2
    80001d78:	d98080e7          	jalr	-616(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80001d7c:	02813083          	ld	ra,40(sp)
    80001d80:	02013403          	ld	s0,32(sp)
    80001d84:	01813483          	ld	s1,24(sp)
    80001d88:	01013903          	ld	s2,16(sp)
    80001d8c:	00813983          	ld	s3,8(sp)
    80001d90:	03010113          	addi	sp,sp,48
    80001d94:	00008067          	ret
        Riscv::printString("OK\n");
    80001d98:	00007517          	auipc	a0,0x7
    80001d9c:	2f050513          	addi	a0,a0,752 # 80009088 <CONSOLE_STATUS+0x78>
    80001da0:	00002097          	auipc	ra,0x2
    80001da4:	d6c080e7          	jalr	-660(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    80001da8:	fd5ff06f          	j	80001d7c <_Z17lotOfSmallMallocsv+0xa8>

0000000080001dac <_Z7badFreev>:
{
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001dbc:	00007517          	auipc	a0,0x7
    80001dc0:	2fc50513          	addi	a0,a0,764 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001dc4:	00002097          	auipc	ra,0x2
    80001dc8:	d48080e7          	jalr	-696(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001dcc:	00800513          	li	a0,8
    80001dd0:	fffff097          	auipc	ra,0xfffff
    80001dd4:	488080e7          	jalr	1160(ra) # 80001258 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001dd8:	00250513          	addi	a0,a0,2
    80001ddc:	fffff097          	auipc	ra,0xfffff
    80001de0:	4ac080e7          	jalr	1196(ra) # 80001288 <mem_free>
    if(retval == 0)
    80001de4:	02051263          	bnez	a0,80001e08 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001de8:	00007517          	auipc	a0,0x7
    80001dec:	29850513          	addi	a0,a0,664 # 80009080 <CONSOLE_STATUS+0x70>
    80001df0:	00002097          	auipc	ra,0x2
    80001df4:	d1c080e7          	jalr	-740(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret
        Riscv::printString("OK\n");
    80001e08:	00007517          	auipc	a0,0x7
    80001e0c:	28050513          	addi	a0,a0,640 # 80009088 <CONSOLE_STATUS+0x78>
    80001e10:	00002097          	auipc	ra,0x2
    80001e14:	cfc080e7          	jalr	-772(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80001e18:	fe1ff06f          	j	80001df8 <_Z7badFreev+0x4c>

0000000080001e1c <_Z13stressTestingv>:
{
    80001e1c:	cc010113          	addi	sp,sp,-832
    80001e20:	32113c23          	sd	ra,824(sp)
    80001e24:	32813823          	sd	s0,816(sp)
    80001e28:	32913423          	sd	s1,808(sp)
    80001e2c:	33213023          	sd	s2,800(sp)
    80001e30:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001e34:	00007517          	auipc	a0,0x7
    80001e38:	29450513          	addi	a0,a0,660 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e3c:	00002097          	auipc	ra,0x2
    80001e40:	cd0080e7          	jalr	-816(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001e44:	00000493          	li	s1,0
    80001e48:	0080006f          	j	80001e50 <_Z13stressTestingv+0x34>
    80001e4c:	0014849b          	addiw	s1,s1,1
    80001e50:	06300793          	li	a5,99
    80001e54:	0497c663          	blt	a5,s1,80001ea0 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001e58:	00100513          	li	a0,1
    80001e5c:	fffff097          	auipc	ra,0xfffff
    80001e60:	3fc080e7          	jalr	1020(ra) # 80001258 <mem_alloc>
    80001e64:	00349793          	slli	a5,s1,0x3
    80001e68:	fe040713          	addi	a4,s0,-32
    80001e6c:	00f707b3          	add	a5,a4,a5
    80001e70:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001e74:	fc051ce3          	bnez	a0,80001e4c <_Z13stressTestingv+0x30>
            Riscv::printString("not OK\n");
    80001e78:	00007517          	auipc	a0,0x7
    80001e7c:	20850513          	addi	a0,a0,520 # 80009080 <CONSOLE_STATUS+0x70>
    80001e80:	00002097          	auipc	ra,0x2
    80001e84:	c8c080e7          	jalr	-884(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80001e88:	33813083          	ld	ra,824(sp)
    80001e8c:	33013403          	ld	s0,816(sp)
    80001e90:	32813483          	ld	s1,808(sp)
    80001e94:	32013903          	ld	s2,800(sp)
    80001e98:	34010113          	addi	sp,sp,832
    80001e9c:	00008067          	ret
    int sz = 300;
    80001ea0:	12c00913          	li	s2,300
    while(sz > 0)
    80001ea4:	11205263          	blez	s2,80001fa8 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001ea8:	00000493          	li	s1,0
    80001eac:	06300793          	li	a5,99
    80001eb0:	0697cc63          	blt	a5,s1,80001f28 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001eb4:	00349793          	slli	a5,s1,0x3
    80001eb8:	fe040713          	addi	a4,s0,-32
    80001ebc:	00f707b3          	add	a5,a4,a5
    80001ec0:	ce07b503          	ld	a0,-800(a5)
    80001ec4:	fffff097          	auipc	ra,0xfffff
    80001ec8:	3c4080e7          	jalr	964(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001ecc:	02051a63          	bnez	a0,80001f00 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001ed0:	01f9551b          	srliw	a0,s2,0x1f
    80001ed4:	0125053b          	addw	a0,a0,s2
    80001ed8:	4015551b          	sraiw	a0,a0,0x1
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	37c080e7          	jalr	892(ra) # 80001258 <mem_alloc>
    80001ee4:	00349793          	slli	a5,s1,0x3
    80001ee8:	fe040713          	addi	a4,s0,-32
    80001eec:	00f707b3          	add	a5,a4,a5
    80001ef0:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001ef4:	02050063          	beqz	a0,80001f14 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001ef8:	0024849b          	addiw	s1,s1,2
    80001efc:	fb1ff06f          	j	80001eac <_Z13stressTestingv+0x90>
                Riscv::printString("not OK\n");
    80001f00:	00007517          	auipc	a0,0x7
    80001f04:	18050513          	addi	a0,a0,384 # 80009080 <CONSOLE_STATUS+0x70>
    80001f08:	00002097          	auipc	ra,0x2
    80001f0c:	c04080e7          	jalr	-1020(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
                return;
    80001f10:	f79ff06f          	j	80001e88 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f14:	00007517          	auipc	a0,0x7
    80001f18:	1c450513          	addi	a0,a0,452 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f1c:	00002097          	auipc	ra,0x2
    80001f20:	bf0080e7          	jalr	-1040(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
                return;
    80001f24:	f65ff06f          	j	80001e88 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001f28:	00100493          	li	s1,1
    80001f2c:	06300793          	li	a5,99
    80001f30:	0697c863          	blt	a5,s1,80001fa0 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001f34:	00349793          	slli	a5,s1,0x3
    80001f38:	fe040713          	addi	a4,s0,-32
    80001f3c:	00f707b3          	add	a5,a4,a5
    80001f40:	ce07b503          	ld	a0,-800(a5)
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	344080e7          	jalr	836(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001f4c:	02051663          	bnez	a0,80001f78 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001f50:	00090513          	mv	a0,s2
    80001f54:	fffff097          	auipc	ra,0xfffff
    80001f58:	304080e7          	jalr	772(ra) # 80001258 <mem_alloc>
    80001f5c:	00349793          	slli	a5,s1,0x3
    80001f60:	fe040713          	addi	a4,s0,-32
    80001f64:	00f707b3          	add	a5,a4,a5
    80001f68:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f6c:	02050063          	beqz	a0,80001f8c <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001f70:	0024849b          	addiw	s1,s1,2
    80001f74:	fb9ff06f          	j	80001f2c <_Z13stressTestingv+0x110>
                Riscv::printString("not OK\n");
    80001f78:	00007517          	auipc	a0,0x7
    80001f7c:	10850513          	addi	a0,a0,264 # 80009080 <CONSOLE_STATUS+0x70>
    80001f80:	00002097          	auipc	ra,0x2
    80001f84:	b8c080e7          	jalr	-1140(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
                return;
    80001f88:	f01ff06f          	j	80001e88 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f8c:	00007517          	auipc	a0,0x7
    80001f90:	14c50513          	addi	a0,a0,332 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f94:	00002097          	auipc	ra,0x2
    80001f98:	b78080e7          	jalr	-1160(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
                return;
    80001f9c:	eedff06f          	j	80001e88 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001fa0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001fa4:	f01ff06f          	j	80001ea4 <_Z13stressTestingv+0x88>
    Riscv::printString("OK\n");
    80001fa8:	00007517          	auipc	a0,0x7
    80001fac:	0e050513          	addi	a0,a0,224 # 80009088 <CONSOLE_STATUS+0x78>
    80001fb0:	00002097          	auipc	ra,0x2
    80001fb4:	b5c080e7          	jalr	-1188(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    80001fb8:	ed1ff06f          	j	80001e88 <_Z13stressTestingv+0x6c>

0000000080001fbc <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001fbc:	fe010113          	addi	sp,sp,-32
    80001fc0:	00113c23          	sd	ra,24(sp)
    80001fc4:	00813823          	sd	s0,16(sp)
    80001fc8:	00913423          	sd	s1,8(sp)
    80001fcc:	02010413          	addi	s0,sp,32
    80001fd0:	00050493          	mv	s1,a0
    80001fd4:	00002097          	auipc	ra,0x2
    80001fd8:	9dc080e7          	jalr	-1572(ra) # 800039b0 <_ZN14PeriodicThreadC1Em>
    80001fdc:	0000a797          	auipc	a5,0xa
    80001fe0:	a4478793          	addi	a5,a5,-1468 # 8000ba20 <_ZTV12TestPeriodic+0x10>
    80001fe4:	00f4b023          	sd	a5,0(s1)
}
    80001fe8:	01813083          	ld	ra,24(sp)
    80001fec:	01013403          	ld	s0,16(sp)
    80001ff0:	00813483          	ld	s1,8(sp)
    80001ff4:	02010113          	addi	sp,sp,32
    80001ff8:	00008067          	ret

0000000080001ffc <_Z11threadTest3v>:
{
    80001ffc:	fe010113          	addi	sp,sp,-32
    80002000:	00113c23          	sd	ra,24(sp)
    80002004:	00813823          	sd	s0,16(sp)
    80002008:	00913423          	sd	s1,8(sp)
    8000200c:	01213023          	sd	s2,0(sp)
    80002010:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80002014:	01000513          	li	a0,16
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	694080e7          	jalr	1684(ra) # 800036ac <_Znwm>
    80002020:	00050913          	mv	s2,a0
    80002024:	03200593          	li	a1,50
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	f94080e7          	jalr	-108(ra) # 80001fbc <_ZN12TestPeriodicC1Em>
    t->start();
    80002030:	00090513          	mv	a0,s2
    80002034:	00001097          	auipc	ra,0x1
    80002038:	748080e7          	jalr	1864(ra) # 8000377c <_ZN6Thread5startEv>
    while(true)
    8000203c:	0000006f          	j	8000203c <_Z11threadTest3v+0x40>
    80002040:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002044:	00090513          	mv	a0,s2
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	68c080e7          	jalr	1676(ra) # 800036d4 <_ZdlPv>
    80002050:	00048513          	mv	a0,s1
    80002054:	0000b097          	auipc	ra,0xb
    80002058:	d24080e7          	jalr	-732(ra) # 8000cd78 <_Unwind_Resume>

000000008000205c <_Z11threadTestsv>:
{
    8000205c:	ff010113          	addi	sp,sp,-16
    80002060:	00113423          	sd	ra,8(sp)
    80002064:	00813023          	sd	s0,0(sp)
    80002068:	01010413          	addi	s0,sp,16
    threadTest3();
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	f90080e7          	jalr	-112(ra) # 80001ffc <_Z11threadTest3v>

0000000080002074 <_Z10mallocTestv>:
{
    80002074:	fc010113          	addi	sp,sp,-64
    80002078:	02113c23          	sd	ra,56(sp)
    8000207c:	02813823          	sd	s0,48(sp)
    80002080:	02913423          	sd	s1,40(sp)
    80002084:	03213023          	sd	s2,32(sp)
    80002088:	01313c23          	sd	s3,24(sp)
    8000208c:	01413823          	sd	s4,16(sp)
    80002090:	01513423          	sd	s5,8(sp)
    80002094:	01613023          	sd	s6,0(sp)
    80002098:	04010413          	addi	s0,sp,64
    Riscv::printString("Testing a few mallocs and frees\n\n");
    8000209c:	00007517          	auipc	a0,0x7
    800020a0:	04450513          	addi	a0,a0,68 # 800090e0 <CONSOLE_STATUS+0xd0>
    800020a4:	00002097          	auipc	ra,0x2
    800020a8:	a68080e7          	jalr	-1432(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    800020ac:	02c00513          	li	a0,44
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	5fc080e7          	jalr	1532(ra) # 800036ac <_Znwm>
    800020b8:	00050493          	mv	s1,a0
    o->a = 3;
    800020bc:	00300793          	li	a5,3
    800020c0:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    800020c4:	00a00513          	li	a0,10
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	190080e7          	jalr	400(ra) # 80001258 <mem_alloc>
    800020d0:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    800020d4:	06400513          	li	a0,100
    800020d8:	fffff097          	auipc	ra,0xfffff
    800020dc:	180080e7          	jalr	384(ra) # 80001258 <mem_alloc>
    800020e0:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    800020e4:	3e800513          	li	a0,1000
    800020e8:	fffff097          	auipc	ra,0xfffff
    800020ec:	170080e7          	jalr	368(ra) # 80001258 <mem_alloc>
    800020f0:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    800020f4:	00002537          	lui	a0,0x2
    800020f8:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	15c080e7          	jalr	348(ra) # 80001258 <mem_alloc>
    80002104:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80002108:	00100513          	li	a0,1
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	14c080e7          	jalr	332(ra) # 80001258 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80002114:	06090c63          	beqz	s2,8000218c <_Z10mallocTestv+0x118>
    80002118:	00050b13          	mv	s6,a0
    8000211c:	06098863          	beqz	s3,8000218c <_Z10mallocTestv+0x118>
    80002120:	060a0663          	beqz	s4,8000218c <_Z10mallocTestv+0x118>
    80002124:	060a8463          	beqz	s5,8000218c <_Z10mallocTestv+0x118>
    80002128:	06050263          	beqz	a0,8000218c <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    8000212c:	00090513          	mv	a0,s2
    80002130:	00001097          	auipc	ra,0x1
    80002134:	5a4080e7          	jalr	1444(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)m3;
    80002138:	000a0513          	mv	a0,s4
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	598080e7          	jalr	1432(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)m4;
    80002144:	000a8513          	mv	a0,s5
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	58c080e7          	jalr	1420(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)m2;
    80002150:	00098513          	mv	a0,s3
    80002154:	00001097          	auipc	ra,0x1
    80002158:	580080e7          	jalr	1408(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)m5;
    8000215c:	000b0513          	mv	a0,s6
    80002160:	00001097          	auipc	ra,0x1
    80002164:	574080e7          	jalr	1396(ra) # 800036d4 <_ZdlPv>
    delete o;
    80002168:	00048863          	beqz	s1,80002178 <_Z10mallocTestv+0x104>
    8000216c:	00048513          	mv	a0,s1
    80002170:	00001097          	auipc	ra,0x1
    80002174:	564080e7          	jalr	1380(ra) # 800036d4 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80002178:	00007517          	auipc	a0,0x7
    8000217c:	f9050513          	addi	a0,a0,-112 # 80009108 <CONSOLE_STATUS+0xf8>
    80002180:	00002097          	auipc	ra,0x2
    80002184:	98c080e7          	jalr	-1652(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    80002188:	0140006f          	j	8000219c <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    8000218c:	00007517          	auipc	a0,0x7
    80002190:	ef450513          	addi	a0,a0,-268 # 80009080 <CONSOLE_STATUS+0x70>
    80002194:	00002097          	auipc	ra,0x2
    80002198:	978080e7          	jalr	-1672(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    8000219c:	03813083          	ld	ra,56(sp)
    800021a0:	03013403          	ld	s0,48(sp)
    800021a4:	02813483          	ld	s1,40(sp)
    800021a8:	02013903          	ld	s2,32(sp)
    800021ac:	01813983          	ld	s3,24(sp)
    800021b0:	01013a03          	ld	s4,16(sp)
    800021b4:	00813a83          	ld	s5,8(sp)
    800021b8:	00013b03          	ld	s6,0(sp)
    800021bc:	04010113          	addi	sp,sp,64
    800021c0:	00008067          	ret

00000000800021c4 <_Z16mallocEverythingv>:
{
    800021c4:	fe010113          	addi	sp,sp,-32
    800021c8:	00113c23          	sd	ra,24(sp)
    800021cc:	00813823          	sd	s0,16(sp)
    800021d0:	00913423          	sd	s1,8(sp)
    800021d4:	02010413          	addi	s0,sp,32
    Riscv::printString("Testing allocating whole address space\n\n");
    800021d8:	00007517          	auipc	a0,0x7
    800021dc:	f6050513          	addi	a0,a0,-160 # 80009138 <CONSOLE_STATUS+0x128>
    800021e0:	00002097          	auipc	ra,0x2
    800021e4:	92c080e7          	jalr	-1748(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    800021e8:	0000a797          	auipc	a5,0xa
    800021ec:	9607b783          	ld	a5,-1696(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021f0:	0007b503          	ld	a0,0(a5)
    800021f4:	0000a797          	auipc	a5,0xa
    800021f8:	98c7b783          	ld	a5,-1652(a5) # 8000bb80 <_GLOBAL_OFFSET_TABLE_+0x50>
    800021fc:	0007b783          	ld	a5,0(a5)
    80002200:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    80002204:	ff050513          	addi	a0,a0,-16
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	050080e7          	jalr	80(ra) # 80001258 <mem_alloc>
    if(m!=nullptr){
    80002210:	02050463          	beqz	a0,80002238 <_Z16mallocEverythingv+0x74>
        Riscv::printString("not OK\n");
    80002214:	00007517          	auipc	a0,0x7
    80002218:	e6c50513          	addi	a0,a0,-404 # 80009080 <CONSOLE_STATUS+0x70>
    8000221c:	00002097          	auipc	ra,0x2
    80002220:	8f0080e7          	jalr	-1808(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80002224:	01813083          	ld	ra,24(sp)
    80002228:	01013403          	ld	s0,16(sp)
    8000222c:	00813483          	ld	s1,8(sp)
    80002230:	02010113          	addi	sp,sp,32
    80002234:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002238:	0000a797          	auipc	a5,0xa
    8000223c:	9487b783          	ld	a5,-1720(a5) # 8000bb80 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002240:	0007b503          	ld	a0,0(a5)
    80002244:	0000a797          	auipc	a5,0xa
    80002248:	9047b783          	ld	a5,-1788(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000224c:	0007b783          	ld	a5,0(a5)
    80002250:	40f50533          	sub	a0,a0,a5
    80002254:	ff050513          	addi	a0,a0,-16
    80002258:	00655513          	srli	a0,a0,0x6
    8000225c:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    80002260:	00651513          	slli	a0,a0,0x6
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	ff4080e7          	jalr	-12(ra) # 80001258 <mem_alloc>
    8000226c:	00050493          	mv	s1,a0
    if(m==nullptr){
    80002270:	02050a63          	beqz	a0,800022a4 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    80002274:	00100513          	li	a0,1
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	fe0080e7          	jalr	-32(ra) # 80001258 <mem_alloc>
    if(small_chunk == nullptr){
    80002280:	02050c63          	beqz	a0,800022b8 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    80002284:	00048513          	mv	a0,s1
    80002288:	00001097          	auipc	ra,0x1
    8000228c:	44c080e7          	jalr	1100(ra) # 800036d4 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    80002290:	00007517          	auipc	a0,0x7
    80002294:	ed850513          	addi	a0,a0,-296 # 80009168 <CONSOLE_STATUS+0x158>
    80002298:	00002097          	auipc	ra,0x2
    8000229c:	874080e7          	jalr	-1932(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    800022a0:	f85ff06f          	j	80002224 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800022a4:	00007517          	auipc	a0,0x7
    800022a8:	ddc50513          	addi	a0,a0,-548 # 80009080 <CONSOLE_STATUS+0x70>
    800022ac:	00002097          	auipc	ra,0x2
    800022b0:	860080e7          	jalr	-1952(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        return;
    800022b4:	f71ff06f          	j	80002224 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	dc850513          	addi	a0,a0,-568 # 80009080 <CONSOLE_STATUS+0x70>
    800022c0:	00002097          	auipc	ra,0x2
    800022c4:	84c080e7          	jalr	-1972(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        return;
    800022c8:	f5dff06f          	j	80002224 <_Z16mallocEverythingv+0x60>

00000000800022cc <_Z17mallocGapFillTestv>:
{
    800022cc:	f6010113          	addi	sp,sp,-160
    800022d0:	08113c23          	sd	ra,152(sp)
    800022d4:	08813823          	sd	s0,144(sp)
    800022d8:	08913423          	sd	s1,136(sp)
    800022dc:	09213023          	sd	s2,128(sp)
    800022e0:	07313c23          	sd	s3,120(sp)
    800022e4:	07413823          	sd	s4,112(sp)
    800022e8:	07513423          	sd	s5,104(sp)
    800022ec:	07613023          	sd	s6,96(sp)
    800022f0:	05713c23          	sd	s7,88(sp)
    800022f4:	05813823          	sd	s8,80(sp)
    800022f8:	0a010413          	addi	s0,sp,160
    Riscv::printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800022fc:	00007517          	auipc	a0,0x7
    80002300:	ea450513          	addi	a0,a0,-348 # 800091a0 <CONSOLE_STATUS+0x190>
    80002304:	00002097          	auipc	ra,0x2
    80002308:	808080e7          	jalr	-2040(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    for(int i=0;i<N;i++)
    8000230c:	00000493          	li	s1,0
    80002310:	00900793          	li	a5,9
    80002314:	0697c863          	blt	a5,s1,80002384 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    80002318:	0064951b          	slliw	a0,s1,0x6
    8000231c:	0015051b          	addiw	a0,a0,1
    80002320:	fffff097          	auipc	ra,0xfffff
    80002324:	f38080e7          	jalr	-200(ra) # 80001258 <mem_alloc>
    80002328:	00349793          	slli	a5,s1,0x3
    8000232c:	fb040713          	addi	a4,s0,-80
    80002330:	00f707b3          	add	a5,a4,a5
    80002334:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80002338:	00050663          	beqz	a0,80002344 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    8000233c:	0014849b          	addiw	s1,s1,1
    80002340:	fd1ff06f          	j	80002310 <_Z17mallocGapFillTestv+0x44>
            Riscv::printString("not OK\n");
    80002344:	00007517          	auipc	a0,0x7
    80002348:	d3c50513          	addi	a0,a0,-708 # 80009080 <CONSOLE_STATUS+0x70>
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	7c0080e7          	jalr	1984(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80002354:	09813083          	ld	ra,152(sp)
    80002358:	09013403          	ld	s0,144(sp)
    8000235c:	08813483          	ld	s1,136(sp)
    80002360:	08013903          	ld	s2,128(sp)
    80002364:	07813983          	ld	s3,120(sp)
    80002368:	07013a03          	ld	s4,112(sp)
    8000236c:	06813a83          	ld	s5,104(sp)
    80002370:	06013b03          	ld	s6,96(sp)
    80002374:	05813b83          	ld	s7,88(sp)
    80002378:	05013c03          	ld	s8,80(sp)
    8000237c:	0a010113          	addi	sp,sp,160
    80002380:	00008067          	ret
    delete (uint64*)m[2];
    80002384:	f7043503          	ld	a0,-144(s0)
    80002388:	00050663          	beqz	a0,80002394 <_Z17mallocGapFillTestv+0xc8>
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	348080e7          	jalr	840(ra) # 800036d4 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002394:	00100513          	li	a0,1
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	ec0080e7          	jalr	-320(ra) # 80001258 <mem_alloc>
    800023a0:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    800023a4:	00100513          	li	a0,1
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	eb0080e7          	jalr	-336(ra) # 80001258 <mem_alloc>
    800023b0:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    800023b4:	00100513          	li	a0,1
    800023b8:	fffff097          	auipc	ra,0xfffff
    800023bc:	ea0080e7          	jalr	-352(ra) # 80001258 <mem_alloc>
    800023c0:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    800023c4:	08048863          	beqz	s1,80002454 <_Z17mallocGapFillTestv+0x188>
    800023c8:	08090663          	beqz	s2,80002454 <_Z17mallocGapFillTestv+0x188>
    800023cc:	08050463          	beqz	a0,80002454 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    800023d0:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    800023d4:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    800023d8:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    800023dc:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    800023e0:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    800023e4:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    800023e8:	0897f063          	bgeu	a5,s1,80002468 <_Z17mallocGapFillTestv+0x19c>
    800023ec:	06a4fe63          	bgeu	s1,a0,80002468 <_Z17mallocGapFillTestv+0x19c>
    800023f0:	0727fc63          	bgeu	a5,s2,80002468 <_Z17mallocGapFillTestv+0x19c>
    800023f4:	06a97a63          	bgeu	s2,a0,80002468 <_Z17mallocGapFillTestv+0x19c>
    800023f8:	07367863          	bgeu	a2,s3,80002468 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    800023fc:	00050663          	beqz	a0,80002408 <_Z17mallocGapFillTestv+0x13c>
    80002400:	00001097          	auipc	ra,0x1
    80002404:	2d4080e7          	jalr	724(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)m[4];
    80002408:	f8043503          	ld	a0,-128(s0)
    8000240c:	00050663          	beqz	a0,80002418 <_Z17mallocGapFillTestv+0x14c>
    80002410:	00001097          	auipc	ra,0x1
    80002414:	2c4080e7          	jalr	708(ra) # 800036d4 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    80002418:	28000513          	li	a0,640
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	e3c080e7          	jalr	-452(ra) # 80001258 <mem_alloc>
    80002424:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    80002428:	24000513          	li	a0,576
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	e2c080e7          	jalr	-468(ra) # 80001258 <mem_alloc>
    80002434:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    80002438:	040c0263          	beqz	s8,8000247c <_Z17mallocGapFillTestv+0x1b0>
    8000243c:	04050063          	beqz	a0,8000247c <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002440:	04aa7863          	bgeu	s4,a0,80002490 <_Z17mallocGapFillTestv+0x1c4>
    80002444:	04ab7663          	bgeu	s6,a0,80002490 <_Z17mallocGapFillTestv+0x1c4>
    80002448:	055c7463          	bgeu	s8,s5,80002490 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    8000244c:	00000a13          	li	s4,0
    80002450:	0580006f          	j	800024a8 <_Z17mallocGapFillTestv+0x1dc>
        Riscv::printString("not OK\n");
    80002454:	00007517          	auipc	a0,0x7
    80002458:	c2c50513          	addi	a0,a0,-980 # 80009080 <CONSOLE_STATUS+0x70>
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	6b0080e7          	jalr	1712(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        return;
    80002464:	ef1ff06f          	j	80002354 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002468:	00007517          	auipc	a0,0x7
    8000246c:	c1850513          	addi	a0,a0,-1000 # 80009080 <CONSOLE_STATUS+0x70>
    80002470:	00001097          	auipc	ra,0x1
    80002474:	69c080e7          	jalr	1692(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        return;
    80002478:	eddff06f          	j	80002354 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    8000247c:	00007517          	auipc	a0,0x7
    80002480:	c0450513          	addi	a0,a0,-1020 # 80009080 <CONSOLE_STATUS+0x70>
    80002484:	00001097          	auipc	ra,0x1
    80002488:	688080e7          	jalr	1672(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        return;
    8000248c:	ec9ff06f          	j	80002354 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002490:	00007517          	auipc	a0,0x7
    80002494:	bf050513          	addi	a0,a0,-1040 # 80009080 <CONSOLE_STATUS+0x70>
    80002498:	00001097          	auipc	ra,0x1
    8000249c:	674080e7          	jalr	1652(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        return;
    800024a0:	eb5ff06f          	j	80002354 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    800024a4:	001a0a1b          	addiw	s4,s4,1
    800024a8:	00900793          	li	a5,9
    800024ac:	0347c263          	blt	a5,s4,800024d0 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    800024b0:	003a1793          	slli	a5,s4,0x3
    800024b4:	fb040713          	addi	a4,s0,-80
    800024b8:	00f707b3          	add	a5,a4,a5
    800024bc:	fb07b503          	ld	a0,-80(a5)
    800024c0:	fe0502e3          	beqz	a0,800024a4 <_Z17mallocGapFillTestv+0x1d8>
    800024c4:	00001097          	auipc	ra,0x1
    800024c8:	210080e7          	jalr	528(ra) # 800036d4 <_ZdlPv>
    800024cc:	fd9ff06f          	j	800024a4 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800024d0:	00048513          	mv	a0,s1
    800024d4:	00001097          	auipc	ra,0x1
    800024d8:	200080e7          	jalr	512(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)tmp2;
    800024dc:	00090513          	mv	a0,s2
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	1f4080e7          	jalr	500(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)tmp3;
    800024e8:	00098513          	mv	a0,s3
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	1e8080e7          	jalr	488(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)tmp4;
    800024f4:	000c0513          	mv	a0,s8
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	1dc080e7          	jalr	476(ra) # 800036d4 <_ZdlPv>
    delete (uint64*)tmp5;
    80002500:	000b8513          	mv	a0,s7
    80002504:	00001097          	auipc	ra,0x1
    80002508:	1d0080e7          	jalr	464(ra) # 800036d4 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    8000250c:	00007517          	auipc	a0,0x7
    80002510:	cdc50513          	addi	a0,a0,-804 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002514:	00001097          	auipc	ra,0x1
    80002518:	5f8080e7          	jalr	1528(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    8000251c:	e39ff06f          	j	80002354 <_Z17mallocGapFillTestv+0x88>

0000000080002520 <_Z21memoryAllocationTestsv>:
{
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00113423          	sd	ra,8(sp)
    80002528:	00813023          	sd	s0,0(sp)
    8000252c:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    80002530:	00000097          	auipc	ra,0x0
    80002534:	d9c080e7          	jalr	-612(ra) # 800022cc <_Z17mallocGapFillTestv>
}
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_Z8semTest1v>:

void semTest1()
{
    80002548:	fe010113          	addi	sp,sp,-32
    8000254c:	00113c23          	sd	ra,24(sp)
    80002550:	00813823          	sd	s0,16(sp)
    80002554:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    80002558:	00a00593          	li	a1,10
    8000255c:	00009517          	auipc	a0,0x9
    80002560:	69450513          	addi	a0,a0,1684 # 8000bbf0 <spaceAvailable>
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	e18080e7          	jalr	-488(ra) # 8000137c <sem_open>

    sem_open(&itemAvailable, 0);
    8000256c:	00000593          	li	a1,0
    80002570:	00009517          	auipc	a0,0x9
    80002574:	66850513          	addi	a0,a0,1640 # 8000bbd8 <itemAvailable>
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	e04080e7          	jalr	-508(ra) # 8000137c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    80002580:	00000613          	li	a2,0
    80002584:	fffff597          	auipc	a1,0xfffff
    80002588:	2c458593          	addi	a1,a1,708 # 80001848 <_Z9producerAPv>
    8000258c:	fe840513          	addi	a0,s0,-24
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	d24080e7          	jalr	-732(ra) # 800012b4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    80002598:	00000613          	li	a2,0
    8000259c:	fffff597          	auipc	a1,0xfffff
    800025a0:	22458593          	addi	a1,a1,548 # 800017c0 <_Z9consumerAPv>
    800025a4:	fe040513          	addi	a0,s0,-32
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	d0c080e7          	jalr	-756(ra) # 800012b4 <thread_create>
    800025b0:	00c0006f          	j	800025bc <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	d80080e7          	jalr	-640(ra) # 80001334 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    800025bc:	fe843503          	ld	a0,-24(s0)
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	4b0080e7          	jalr	1200(ra) # 80002a70 <_ZN3PCB10isFinishedEv>
    800025c8:	fe0506e3          	beqz	a0,800025b4 <_Z8semTest1v+0x6c>
    800025cc:	fe843503          	ld	a0,-24(s0)
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	4a0080e7          	jalr	1184(ra) # 80002a70 <_ZN3PCB10isFinishedEv>
    800025d8:	fc050ee3          	beqz	a0,800025b4 <_Z8semTest1v+0x6c>
}
    800025dc:	01813083          	ld	ra,24(sp)
    800025e0:	01013403          	ld	s0,16(sp)
    800025e4:	02010113          	addi	sp,sp,32
    800025e8:	00008067          	ret

00000000800025ec <_Z14semaphoreTestsv>:
{
    800025ec:	ff010113          	addi	sp,sp,-16
    800025f0:	00113423          	sd	ra,8(sp)
    800025f4:	00813023          	sd	s0,0(sp)
    800025f8:	01010413          	addi	s0,sp,16
    semTest1();
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	f4c080e7          	jalr	-180(ra) # 80002548 <_Z8semTest1v>
}
    80002604:	00813083          	ld	ra,8(sp)
    80002608:	00013403          	ld	s0,0(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_Z12consoleTest1v>:

void consoleTest1()
{
    80002614:	fe010113          	addi	sp,sp,-32
    80002618:	00113c23          	sd	ra,24(sp)
    8000261c:	00813823          	sd	s0,16(sp)
    80002620:	00913423          	sd	s1,8(sp)
    80002624:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002628:	00000493          	li	s1,0
    8000262c:	06300793          	li	a5,99
    80002630:	0097ca63          	blt	a5,s1,80002644 <_Z12consoleTest1v+0x30>
    {
        getc();
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	edc080e7          	jalr	-292(ra) # 80001510 <getc>
    for(int i = 0; i < 100;i++)
    8000263c:	0014849b          	addiw	s1,s1,1
    80002640:	fedff06f          	j	8000262c <_Z12consoleTest1v+0x18>
    }
}
    80002644:	01813083          	ld	ra,24(sp)
    80002648:	01013403          	ld	s0,16(sp)
    8000264c:	00813483          	ld	s1,8(sp)
    80002650:	02010113          	addi	sp,sp,32
    80002654:	00008067          	ret

0000000080002658 <_Z12consoleTestsv>:

void consoleTests()
{
    80002658:	ff010113          	addi	sp,sp,-16
    8000265c:	00113423          	sd	ra,8(sp)
    80002660:	00813023          	sd	s0,0(sp)
    80002664:	01010413          	addi	s0,sp,16
    consoleTest1();
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	fac080e7          	jalr	-84(ra) # 80002614 <_Z12consoleTest1v>
}
    80002670:	00813083          	ld	ra,8(sp)
    80002674:	00013403          	ld	s0,0(sp)
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret

0000000080002680 <_Z7myTestsv>:
{
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
    consoleTests();
    80002690:	00000097          	auipc	ra,0x0
    80002694:	fc8080e7          	jalr	-56(ra) # 80002658 <_Z12consoleTestsv>
}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00813423          	sd	s0,8(sp)
    800026b0:	01010413          	addi	s0,sp,16
    800026b4:	00813403          	ld	s0,8(sp)
    800026b8:	01010113          	addi	sp,sp,16
    800026bc:	00008067          	ret

00000000800026c0 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800026c0:	ff010113          	addi	sp,sp,-16
    800026c4:	00813423          	sd	s0,8(sp)
    800026c8:	01010413          	addi	s0,sp,16
    800026cc:	00813403          	ld	s0,8(sp)
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	00813023          	sd	s0,0(sp)
    800026e4:	01010413          	addi	s0,sp,16
    800026e8:	00009797          	auipc	a5,0x9
    800026ec:	30878793          	addi	a5,a5,776 # 8000b9f0 <_ZTV14PeriodicThread+0x10>
    800026f0:	00f53023          	sd	a5,0(a0)
    800026f4:	00001097          	auipc	ra,0x1
    800026f8:	efc080e7          	jalr	-260(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_ZN14PeriodicThreadD0Ev>:
    8000270c:	fe010113          	addi	sp,sp,-32
    80002710:	00113c23          	sd	ra,24(sp)
    80002714:	00813823          	sd	s0,16(sp)
    80002718:	00913423          	sd	s1,8(sp)
    8000271c:	02010413          	addi	s0,sp,32
    80002720:	00050493          	mv	s1,a0
    80002724:	00009797          	auipc	a5,0x9
    80002728:	2cc78793          	addi	a5,a5,716 # 8000b9f0 <_ZTV14PeriodicThread+0x10>
    8000272c:	00f53023          	sd	a5,0(a0)
    80002730:	00001097          	auipc	ra,0x1
    80002734:	ec0080e7          	jalr	-320(ra) # 800035f0 <_ZN6ThreadD1Ev>
    80002738:	00048513          	mv	a0,s1
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	f98080e7          	jalr	-104(ra) # 800036d4 <_ZdlPv>
    80002744:	01813083          	ld	ra,24(sp)
    80002748:	01013403          	ld	s0,16(sp)
    8000274c:	00813483          	ld	s1,8(sp)
    80002750:	02010113          	addi	sp,sp,32
    80002754:	00008067          	ret

0000000080002758 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16
    80002768:	00009797          	auipc	a5,0x9
    8000276c:	28878793          	addi	a5,a5,648 # 8000b9f0 <_ZTV14PeriodicThread+0x10>
    80002770:	00f53023          	sd	a5,0(a0)
    80002774:	00001097          	auipc	ra,0x1
    80002778:	e7c080e7          	jalr	-388(ra) # 800035f0 <_ZN6ThreadD1Ev>
    8000277c:	00813083          	ld	ra,8(sp)
    80002780:	00013403          	ld	s0,0(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN12TestPeriodicD0Ev>:
    8000278c:	fe010113          	addi	sp,sp,-32
    80002790:	00113c23          	sd	ra,24(sp)
    80002794:	00813823          	sd	s0,16(sp)
    80002798:	00913423          	sd	s1,8(sp)
    8000279c:	02010413          	addi	s0,sp,32
    800027a0:	00050493          	mv	s1,a0
    800027a4:	00009797          	auipc	a5,0x9
    800027a8:	24c78793          	addi	a5,a5,588 # 8000b9f0 <_ZTV14PeriodicThread+0x10>
    800027ac:	00f53023          	sd	a5,0(a0)
    800027b0:	00001097          	auipc	ra,0x1
    800027b4:	e40080e7          	jalr	-448(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800027b8:	00048513          	mv	a0,s1
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	f18080e7          	jalr	-232(ra) # 800036d4 <_ZdlPv>
    800027c4:	01813083          	ld	ra,24(sp)
    800027c8:	01013403          	ld	s0,16(sp)
    800027cc:	00813483          	ld	s1,8(sp)
    800027d0:	02010113          	addi	sp,sp,32
    800027d4:	00008067          	ret

00000000800027d8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	00813023          	sd	s0,0(sp)
    800027e4:	01010413          	addi	s0,sp,16
    //Riscv::printString("Runner started...\n");
    Riscv::popSppSpie();
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	304080e7          	jalr	772(ra) # 80003aec <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800027f0:	00009797          	auipc	a5,0x9
    800027f4:	4107b783          	ld	a5,1040(a5) # 8000bc00 <_ZN3PCB7runningE>
    800027f8:	0207b703          	ld	a4,32(a5)
    800027fc:	0287b503          	ld	a0,40(a5)
    80002800:	000700e7          	jalr	a4

    thread_exit();
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	b50080e7          	jalr	-1200(ra) # 80001354 <thread_exit>
}
    8000280c:	00813083          	ld	ra,8(sp)
    80002810:	00013403          	ld	s0,0(sp)
    80002814:	01010113          	addi	sp,sp,16
    80002818:	00008067          	ret

000000008000281c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000281c:	ff010113          	addi	sp,sp,-16
    80002820:	00813423          	sd	s0,8(sp)
    80002824:	01010413          	addi	s0,sp,16
    })
    80002828:	00050023          	sb	zero,0(a0)
    8000282c:	00e53823          	sd	a4,16(a0)
    80002830:	00053c23          	sd	zero,24(a0)
    80002834:	02b53023          	sd	a1,32(a0)
    80002838:	02c53423          	sd	a2,40(a0)
    8000283c:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002840:	000017b7          	lui	a5,0x1
    80002844:	00f686b3          	add	a3,a3,a5
    })
    80002848:	04d53023          	sd	a3,64(a0)
    8000284c:	00000797          	auipc	a5,0x0
    80002850:	f8c78793          	addi	a5,a5,-116 # 800027d8 <_ZN3PCB6runnerEv>
    80002854:	04f53423          	sd	a5,72(a0)
    nextPCB = 0;
    80002858:	00053423          	sd	zero,8(a0)
}
    8000285c:	00813403          	ld	s0,8(sp)
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret

0000000080002868 <_ZN3PCB5sleepEm>:
{
    80002868:	ff010113          	addi	sp,sp,-16
    8000286c:	00813423          	sd	s0,8(sp)
    80002870:	01010413          	addi	s0,sp,16
}
    80002874:	00813403          	ld	s0,8(sp)
    80002878:	01010113          	addi	sp,sp,16
    8000287c:	00008067          	ret

0000000080002880 <_ZN3PCB5startEv>:
{
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00113423          	sd	ra,8(sp)
    80002888:	00813023          	sd	s0,0(sp)
    8000288c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002890:	00001097          	auipc	ra,0x1
    80002894:	c28080e7          	jalr	-984(ra) # 800034b8 <_ZN9Scheduler3putEP3PCB>
}
    80002898:	00813083          	ld	ra,8(sp)
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800028a8:	fe010113          	addi	sp,sp,-32
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	00813823          	sd	s0,16(sp)
    800028b4:	00913423          	sd	s1,8(sp)
    800028b8:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800028bc:	00009497          	auipc	s1,0x9
    800028c0:	3444b483          	ld	s1,836(s1) # 8000bc00 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800028c4:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800028c8:	00100793          	li	a5,1
    800028cc:	04f70063          	beq	a4,a5,8000290c <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800028d0:	00001097          	auipc	ra,0x1
    800028d4:	c3c080e7          	jalr	-964(ra) # 8000350c <_ZN9Scheduler3getEv>
    800028d8:	00009797          	auipc	a5,0x9
    800028dc:	32a7b423          	sd	a0,808(a5) # 8000bc00 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800028e0:	00100793          	li	a5,1
    800028e4:	02f52c23          	sw	a5,56(a0)
    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);

    PCB::contextSwitch(&old->context, &running->context);
    800028e8:	04050593          	addi	a1,a0,64
    800028ec:	04048513          	addi	a0,s1,64
    800028f0:	fffff097          	auipc	ra,0xfffff
    800028f4:	948080e7          	jalr	-1720(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800028f8:	01813083          	ld	ra,24(sp)
    800028fc:	01013403          	ld	s0,16(sp)
    80002900:	00813483          	ld	s1,8(sp)
    80002904:	02010113          	addi	sp,sp,32
    80002908:	00008067          	ret
        Scheduler::put(old);
    8000290c:	00048513          	mv	a0,s1
    80002910:	00001097          	auipc	ra,0x1
    80002914:	ba8080e7          	jalr	-1112(ra) # 800034b8 <_ZN9Scheduler3putEP3PCB>
    80002918:	fb9ff06f          	j	800028d0 <_ZN3PCB8dispatchEv+0x28>

000000008000291c <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    8000291c:	ff010113          	addi	sp,sp,-16
    80002920:	00113423          	sd	ra,8(sp)
    80002924:	00813023          	sd	s0,0(sp)
    80002928:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000292c:	00002097          	auipc	ra,0x2
    80002930:	aac080e7          	jalr	-1364(ra) # 800043d8 <_Z7kmallocm>
}
    80002934:	00813083          	ld	ra,8(sp)
    80002938:	00013403          	ld	s0,0(sp)
    8000293c:	01010113          	addi	sp,sp,16
    80002940:	00008067          	ret

0000000080002944 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002944:	ff010113          	addi	sp,sp,-16
    80002948:	00113423          	sd	ra,8(sp)
    8000294c:	00813023          	sd	s0,0(sp)
    80002950:	01010413          	addi	s0,sp,16
    kfree(p);
    80002954:	00002097          	auipc	ra,0x2
    80002958:	ae8080e7          	jalr	-1304(ra) # 8000443c <_Z5kfreePv>
}
    8000295c:	00813083          	ld	ra,8(sp)
    80002960:	00013403          	ld	s0,0(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret

000000008000296c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00113423          	sd	ra,8(sp)
    80002974:	00813023          	sd	s0,0(sp)
    80002978:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    8000297c:	03053503          	ld	a0,48(a0)
    80002980:	00002097          	auipc	ra,0x2
    80002984:	abc080e7          	jalr	-1348(ra) # 8000443c <_Z5kfreePv>
}
    80002988:	00813083          	ld	ra,8(sp)
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002998:	fd010113          	addi	sp,sp,-48
    8000299c:	02113423          	sd	ra,40(sp)
    800029a0:	02813023          	sd	s0,32(sp)
    800029a4:	00913c23          	sd	s1,24(sp)
    800029a8:	01213823          	sd	s2,16(sp)
    800029ac:	01313423          	sd	s3,8(sp)
    800029b0:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800029b4:	05000513          	li	a0,80
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	f64080e7          	jalr	-156(ra) # 8000291c <_ZN3PCBnwEm>
    800029c0:	00050493          	mv	s1,a0
    800029c4:	00000713          	li	a4,0
    800029c8:	00000693          	li	a3,0
    800029cc:	00000613          	li	a2,0
    800029d0:	00000593          	li	a1,0
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	e48080e7          	jalr	-440(ra) # 8000281c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    800029dc:	00048513          	mv	a0,s1
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	ea0080e7          	jalr	-352(ra) # 80002880 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    800029e8:	00100793          	li	a5,1
    800029ec:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    800029f0:	00001097          	auipc	ra,0x1
    800029f4:	b1c080e7          	jalr	-1252(ra) # 8000350c <_ZN9Scheduler3getEv>
    800029f8:	00009797          	auipc	a5,0x9
    800029fc:	20a7b423          	sd	a0,520(a5) # 8000bc00 <_ZN3PCB7runningE>
    80002a00:	00100993          	li	s3,1
    80002a04:	03352c23          	sw	s3,56(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB* consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002a08:	00001537          	lui	a0,0x1
    80002a0c:	00002097          	auipc	ra,0x2
    80002a10:	9cc080e7          	jalr	-1588(ra) # 800043d8 <_Z7kmallocm>
    80002a14:	00050913          	mv	s2,a0
    80002a18:	05000513          	li	a0,80
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	f00080e7          	jalr	-256(ra) # 8000291c <_ZN3PCBnwEm>
    80002a24:	00050493          	mv	s1,a0
    80002a28:	00200713          	li	a4,2
    80002a2c:	00090693          	mv	a3,s2
    80002a30:	00000613          	li	a2,0
    80002a34:	00009597          	auipc	a1,0x9
    80002a38:	13c5b583          	ld	a1,316(a1) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	de0080e7          	jalr	-544(ra) # 8000281c <_ZN3PCBC1EPFvPvES0_S0_m>
    consolePCB->systemThread = true;
    80002a44:	01348023          	sb	s3,0(s1)
    consolePCB->start();
    80002a48:	00048513          	mv	a0,s1
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	e34080e7          	jalr	-460(ra) # 80002880 <_ZN3PCB5startEv>
    //PCB* idlePCB = new PCB(&Riscv::idleRiscv, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    //idlePCB->start();
    //idlePCB->systemThread = true;
}
    80002a54:	02813083          	ld	ra,40(sp)
    80002a58:	02013403          	ld	s0,32(sp)
    80002a5c:	01813483          	ld	s1,24(sp)
    80002a60:	01013903          	ld	s2,16(sp)
    80002a64:	00813983          	ld	s3,8(sp)
    80002a68:	03010113          	addi	sp,sp,48
    80002a6c:	00008067          	ret

0000000080002a70 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002a70:	ff010113          	addi	sp,sp,-16
    80002a74:	00813423          	sd	s0,8(sp)
    80002a78:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002a7c:	03852503          	lw	a0,56(a0) # 1038 <_entry-0x7fffefc8>
    80002a80:	ffd50513          	addi	a0,a0,-3
}
    80002a84:	00153513          	seqz	a0,a0
    80002a88:	00813403          	ld	s0,8(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00113423          	sd	ra,8(sp)
    80002a9c:	00813023          	sd	s0,0(sp)
    80002aa0:	01010413          	addi	s0,sp,16
    Riscv::printString("Exiting thread...\n");
    80002aa4:	00006517          	auipc	a0,0x6
    80002aa8:	79c50513          	addi	a0,a0,1948 # 80009240 <CONSOLE_STATUS+0x230>
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	060080e7          	jalr	96(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    PCB::timeSliceCounter = 0;
    80002ab4:	00009797          	auipc	a5,0x9
    80002ab8:	14c78793          	addi	a5,a5,332 # 8000bc00 <_ZN3PCB7runningE>
    80002abc:	0007b423          	sd	zero,8(a5)
    PCB::running->setState(PCB::FINISHED);
    80002ac0:	0007b783          	ld	a5,0(a5)
    80002ac4:	00300713          	li	a4,3
    80002ac8:	02e7ac23          	sw	a4,56(a5)
    PCB::dispatch();
    80002acc:	00000097          	auipc	ra,0x0
    80002ad0:	ddc080e7          	jalr	-548(ra) # 800028a8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002ad4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002ad8:	00001097          	auipc	ra,0x1
    80002adc:	524080e7          	jalr	1316(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ae0:	00813083          	ld	ra,8(sp)
    80002ae4:	00013403          	ld	s0,0(sp)
    80002ae8:	01010113          	addi	sp,sp,16
    80002aec:	00008067          	ret

0000000080002af0 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00113423          	sd	ra,8(sp)
    80002af8:	00813023          	sd	s0,0(sp)
    80002afc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002b00:	00009797          	auipc	a5,0x9
    80002b04:	1007b423          	sd	zero,264(a5) # 8000bc08 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	da0080e7          	jalr	-608(ra) # 800028a8 <_ZN3PCB8dispatchEv>
}
    80002b10:	00813083          	ld	ra,8(sp)
    80002b14:	00013403          	ld	s0,0(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00113423          	sd	ra,8(sp)
    80002b28:	00813023          	sd	s0,0(sp)
    80002b2c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b30:	00058713          	mv	a4,a1
    PCB::timeSliceCounter = 0;
    80002b34:	00009797          	auipc	a5,0x9
    80002b38:	0cc78793          	addi	a5,a5,204 # 8000bc00 <_ZN3PCB7runningE>
    80002b3c:	0007b423          	sd	zero,8(a5)
    PCB::running->setTimeToSleep(time);
    80002b40:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b44:	00e7bc23          	sd	a4,24(a5)
    SleepPCBList::insertSleepingPCB();
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	62c080e7          	jalr	1580(ra) # 80003174 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	d58080e7          	jalr	-680(ra) # 800028a8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002b58:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b5c:	00001097          	auipc	ra,0x1
    80002b60:	4a0080e7          	jalr	1184(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b64:	00813083          	ld	ra,8(sp)
    80002b68:	00013403          	ld	s0,0(sp)
    80002b6c:	01010113          	addi	sp,sp,16
    80002b70:	00008067          	ret

0000000080002b74 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002b74:	fd010113          	addi	sp,sp,-48
    80002b78:	02113423          	sd	ra,40(sp)
    80002b7c:	02813023          	sd	s0,32(sp)
    80002b80:	00913c23          	sd	s1,24(sp)
    80002b84:	01213823          	sd	s2,16(sp)
    80002b88:	01313423          	sd	s3,8(sp)
    80002b8c:	01413023          	sd	s4,0(sp)
    80002b90:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b94:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b98:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b9c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002ba0:	05000513          	li	a0,80
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	d78080e7          	jalr	-648(ra) # 8000291c <_ZN3PCBnwEm>
    80002bac:	00050493          	mv	s1,a0
    80002bb0:	00200713          	li	a4,2
    80002bb4:	00009697          	auipc	a3,0x9
    80002bb8:	05c6b683          	ld	a3,92(a3) # 8000bc10 <_ZN3PCB10savedRegA4E>
    80002bbc:	000a0613          	mv	a2,s4
    80002bc0:	00098593          	mv	a1,s3
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	c58080e7          	jalr	-936(ra) # 8000281c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002bcc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002bd0:	02048e63          	beqz	s1,80002c0c <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	ca8080e7          	jalr	-856(ra) # 80002880 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002be0:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002be4:	00001097          	auipc	ra,0x1
    80002be8:	418080e7          	jalr	1048(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bec:	02813083          	ld	ra,40(sp)
    80002bf0:	02013403          	ld	s0,32(sp)
    80002bf4:	01813483          	ld	s1,24(sp)
    80002bf8:	01013903          	ld	s2,16(sp)
    80002bfc:	00813983          	ld	s3,8(sp)
    80002c00:	00013a03          	ld	s4,0(sp)
    80002c04:	03010113          	addi	sp,sp,48
    80002c08:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c0c:	fff00513          	li	a0,-1
    80002c10:	fd5ff06f          	j	80002be4 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002c14 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002c14:	ff010113          	addi	sp,sp,-16
    80002c18:	00113423          	sd	ra,8(sp)
    80002c1c:	00813023          	sd	s0,0(sp)
    80002c20:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c24:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002c28:	02050463          	beqz	a0,80002c50 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	c54080e7          	jalr	-940(ra) # 80002880 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c34:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002c38:	00001097          	auipc	ra,0x1
    80002c3c:	3c4080e7          	jalr	964(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c40:	00813083          	ld	ra,8(sp)
    80002c44:	00013403          	ld	s0,0(sp)
    80002c48:	01010113          	addi	sp,sp,16
    80002c4c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c50:	fff00513          	li	a0,-1
    80002c54:	fe5ff06f          	j	80002c38 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002c58 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002c58:	fd010113          	addi	sp,sp,-48
    80002c5c:	02113423          	sd	ra,40(sp)
    80002c60:	02813023          	sd	s0,32(sp)
    80002c64:	00913c23          	sd	s1,24(sp)
    80002c68:	01213823          	sd	s2,16(sp)
    80002c6c:	01313423          	sd	s3,8(sp)
    80002c70:	01413023          	sd	s4,0(sp)
    80002c74:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c78:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c7c:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c80:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c84:	05000513          	li	a0,80
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	c94080e7          	jalr	-876(ra) # 8000291c <_ZN3PCBnwEm>
    80002c90:	00050493          	mv	s1,a0
    80002c94:	00200713          	li	a4,2
    80002c98:	00009697          	auipc	a3,0x9
    80002c9c:	f786b683          	ld	a3,-136(a3) # 8000bc10 <_ZN3PCB10savedRegA4E>
    80002ca0:	000a0613          	mv	a2,s4
    80002ca4:	00098593          	mv	a1,s3
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	b74080e7          	jalr	-1164(ra) # 8000281c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002cb0:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002cb4:	02048863          	beqz	s1,80002ce4 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002cb8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002cbc:	00001097          	auipc	ra,0x1
    80002cc0:	340080e7          	jalr	832(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002cc4:	02813083          	ld	ra,40(sp)
    80002cc8:	02013403          	ld	s0,32(sp)
    80002ccc:	01813483          	ld	s1,24(sp)
    80002cd0:	01013903          	ld	s2,16(sp)
    80002cd4:	00813983          	ld	s3,8(sp)
    80002cd8:	00013a03          	ld	s4,0(sp)
    80002cdc:	03010113          	addi	sp,sp,48
    80002ce0:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002ce4:	fff00513          	li	a0,-1
    80002ce8:	fd5ff06f          	j	80002cbc <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002cec <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
int KConsole::cntWInterrupt = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002cec:	fd010113          	addi	sp,sp,-48
    80002cf0:	02113423          	sd	ra,40(sp)
    80002cf4:	02813023          	sd	s0,32(sp)
    80002cf8:	00913c23          	sd	s1,24(sp)
    80002cfc:	01213823          	sd	s2,16(sp)
    80002d00:	01313423          	sd	s3,8(sp)
    80002d04:	03010413          	addi	s0,sp,48
    80002d08:	00050993          	mv	s3,a0
    80002d0c:	00058913          	mv	s2,a1
    80002d10:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002d14:	01000513          	li	a0,16
    80002d18:	00001097          	auipc	ra,0x1
    80002d1c:	6c0080e7          	jalr	1728(ra) # 800043d8 <_Z7kmallocm>
    newElem->next = 0;
    80002d20:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002d24:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002d28:	00093783          	ld	a5,0(s2)
    80002d2c:	02078663          	beqz	a5,80002d58 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002d30:	0004b783          	ld	a5,0(s1)
    80002d34:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002d38:	00a4b023          	sd	a0,0(s1)
    }
}
    80002d3c:	02813083          	ld	ra,40(sp)
    80002d40:	02013403          	ld	s0,32(sp)
    80002d44:	01813483          	ld	s1,24(sp)
    80002d48:	01013903          	ld	s2,16(sp)
    80002d4c:	00813983          	ld	s3,8(sp)
    80002d50:	03010113          	addi	sp,sp,48
    80002d54:	00008067          	ret
        head = tail = newElem;
    80002d58:	00a4b023          	sd	a0,0(s1)
    80002d5c:	00a93023          	sd	a0,0(s2)
    80002d60:	fddff06f          	j	80002d3c <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002d64 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002d64:	fe010113          	addi	sp,sp,-32
    80002d68:	00113c23          	sd	ra,24(sp)
    80002d6c:	00813823          	sd	s0,16(sp)
    80002d70:	00913423          	sd	s1,8(sp)
    80002d74:	02010413          	addi	s0,sp,32
    80002d78:	00050793          	mv	a5,a0
    if(head == 0)
    80002d7c:	00053503          	ld	a0,0(a0)
    80002d80:	02050e63          	beqz	a0,80002dbc <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002d84:	00053703          	ld	a4,0(a0)
    80002d88:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002d8c:	02070463          	beqz	a4,80002db4 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002d90:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002d94:	00001097          	auipc	ra,0x1
    80002d98:	6a8080e7          	jalr	1704(ra) # 8000443c <_Z5kfreePv>
    return c;
}
    80002d9c:	00048513          	mv	a0,s1
    80002da0:	01813083          	ld	ra,24(sp)
    80002da4:	01013403          	ld	s0,16(sp)
    80002da8:	00813483          	ld	s1,8(sp)
    80002dac:	02010113          	addi	sp,sp,32
    80002db0:	00008067          	ret
        tail = 0;
    80002db4:	0005b023          	sd	zero,0(a1)
    80002db8:	fd9ff06f          	j	80002d90 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002dbc:	00000493          	li	s1,0
    80002dc0:	fddff06f          	j	80002d9c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002dc4 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002dc4:	fe010113          	addi	sp,sp,-32
    80002dc8:	00113c23          	sd	ra,24(sp)
    80002dcc:	00813823          	sd	s0,16(sp)
    80002dd0:	00913423          	sd	s1,8(sp)
    80002dd4:	01213023          	sd	s2,0(sp)
    80002dd8:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002ddc:	01800513          	li	a0,24
    80002de0:	00002097          	auipc	ra,0x2
    80002de4:	90c080e7          	jalr	-1780(ra) # 800046ec <_ZN10KSemaphorenwEm>
    80002de8:	00050493          	mv	s1,a0
    80002dec:	00000593          	li	a1,0
    80002df0:	00001097          	auipc	ra,0x1
    80002df4:	6ac080e7          	jalr	1708(ra) # 8000449c <_ZN10KSemaphoreC1Ei>
    80002df8:	00009797          	auipc	a5,0x9
    80002dfc:	e297b023          	sd	s1,-480(a5) # 8000bc18 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002e00:	01800513          	li	a0,24
    80002e04:	00002097          	auipc	ra,0x2
    80002e08:	8e8080e7          	jalr	-1816(ra) # 800046ec <_ZN10KSemaphorenwEm>
    80002e0c:	00050493          	mv	s1,a0
    80002e10:	00000593          	li	a1,0
    80002e14:	00001097          	auipc	ra,0x1
    80002e18:	688080e7          	jalr	1672(ra) # 8000449c <_ZN10KSemaphoreC1Ei>
    80002e1c:	00009797          	auipc	a5,0x9
    80002e20:	e097b223          	sd	s1,-508(a5) # 8000bc20 <_ZN8KConsole19hasCharactersOutputE>
}
    80002e24:	01813083          	ld	ra,24(sp)
    80002e28:	01013403          	ld	s0,16(sp)
    80002e2c:	00813483          	ld	s1,8(sp)
    80002e30:	00013903          	ld	s2,0(sp)
    80002e34:	02010113          	addi	sp,sp,32
    80002e38:	00008067          	ret
    80002e3c:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002e40:	00048513          	mv	a0,s1
    80002e44:	00002097          	auipc	ra,0x2
    80002e48:	940080e7          	jalr	-1728(ra) # 80004784 <_ZN10KSemaphoredlEPv>
    80002e4c:	00090513          	mv	a0,s2
    80002e50:	0000a097          	auipc	ra,0xa
    80002e54:	f28080e7          	jalr	-216(ra) # 8000cd78 <_Unwind_Resume>
    80002e58:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00002097          	auipc	ra,0x2
    80002e64:	924080e7          	jalr	-1756(ra) # 80004784 <_ZN10KSemaphoredlEPv>
    80002e68:	00090513          	mv	a0,s2
    80002e6c:	0000a097          	auipc	ra,0xa
    80002e70:	f0c080e7          	jalr	-244(ra) # 8000cd78 <_Unwind_Resume>

0000000080002e74 <_ZN8KConsole17putCharacterInputEc>:
            }
    }
}

void KConsole::putCharacterInput(char c)
{
    80002e74:	ff010113          	addi	sp,sp,-16
    80002e78:	00113423          	sd	ra,8(sp)
    80002e7c:	00813023          	sd	s0,0(sp)
    80002e80:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002e84:	00009617          	auipc	a2,0x9
    80002e88:	da460613          	addi	a2,a2,-604 # 8000bc28 <_ZN8KConsole9tailInputE>
    80002e8c:	00009597          	auipc	a1,0x9
    80002e90:	da458593          	addi	a1,a1,-604 # 8000bc30 <_ZN8KConsole9headInputE>
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	e58080e7          	jalr	-424(ra) # 80002cec <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002e9c:	00009517          	auipc	a0,0x9
    80002ea0:	d7c53503          	ld	a0,-644(a0) # 8000bc18 <_ZN8KConsole18hasCharactersInputE>
    80002ea4:	00002097          	auipc	ra,0x2
    80002ea8:	800080e7          	jalr	-2048(ra) # 800046a4 <_ZN10KSemaphore6signalEv>
}
    80002eac:	00813083          	ld	ra,8(sp)
    80002eb0:	00013403          	ld	s0,0(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret

0000000080002ebc <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002ebc:	ff010113          	addi	sp,sp,-16
    80002ec0:	00113423          	sd	ra,8(sp)
    80002ec4:	00813023          	sd	s0,0(sp)
    80002ec8:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002ecc:	00009517          	auipc	a0,0x9
    80002ed0:	d4c53503          	ld	a0,-692(a0) # 8000bc18 <_ZN8KConsole18hasCharactersInputE>
    80002ed4:	00001097          	auipc	ra,0x1
    80002ed8:	670080e7          	jalr	1648(ra) # 80004544 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002edc:	00009597          	auipc	a1,0x9
    80002ee0:	d4c58593          	addi	a1,a1,-692 # 8000bc28 <_ZN8KConsole9tailInputE>
    80002ee4:	00009517          	auipc	a0,0x9
    80002ee8:	d4c50513          	addi	a0,a0,-692 # 8000bc30 <_ZN8KConsole9headInputE>
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	e78080e7          	jalr	-392(ra) # 80002d64 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002ef4:	00813083          	ld	ra,8(sp)
    80002ef8:	00013403          	ld	s0,0(sp)
    80002efc:	01010113          	addi	sp,sp,16
    80002f00:	00008067          	ret

0000000080002f04 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002f04:	ff010113          	addi	sp,sp,-16
    80002f08:	00113423          	sd	ra,8(sp)
    80002f0c:	00813023          	sd	s0,0(sp)
    80002f10:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002f14:	00009617          	auipc	a2,0x9
    80002f18:	d2460613          	addi	a2,a2,-732 # 8000bc38 <_ZN8KConsole10tailOutputE>
    80002f1c:	00009597          	auipc	a1,0x9
    80002f20:	d2458593          	addi	a1,a1,-732 # 8000bc40 <_ZN8KConsole10headOutputE>
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	dc8080e7          	jalr	-568(ra) # 80002cec <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002f2c:	00009517          	auipc	a0,0x9
    80002f30:	cf453503          	ld	a0,-780(a0) # 8000bc20 <_ZN8KConsole19hasCharactersOutputE>
    80002f34:	00001097          	auipc	ra,0x1
    80002f38:	770080e7          	jalr	1904(ra) # 800046a4 <_ZN10KSemaphore6signalEv>
}
    80002f3c:	00813083          	ld	ra,8(sp)
    80002f40:	00013403          	ld	s0,0(sp)
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00008067          	ret

0000000080002f4c <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002f4c:	00009797          	auipc	a5,0x9
    80002f50:	bf47b783          	ld	a5,-1036(a5) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f54:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002f58:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002f5c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002f60:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002f64:	0017f793          	andi	a5,a5,1
    80002f68:	08078063          	beqz	a5,80002fe8 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002f6c:	fe010113          	addi	sp,sp,-32
    80002f70:	00113c23          	sd	ra,24(sp)
    80002f74:	00813823          	sd	s0,16(sp)
    80002f78:	00913423          	sd	s1,8(sp)
    80002f7c:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002f80:	00009797          	auipc	a5,0x9
    80002f84:	bd87b783          	ld	a5,-1064(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f88:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002f8c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002f90:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002f94:	00058493          	mv	s1,a1
    80002f98:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002f9c:	00048513          	mv	a0,s1
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	ed4080e7          	jalr	-300(ra) # 80002e74 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002fa8:	00048513          	mv	a0,s1
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	f58080e7          	jalr	-168(ra) # 80002f04 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002fb4:	00009797          	auipc	a5,0x9
    80002fb8:	b8c7b783          	ld	a5,-1140(a5) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fbc:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002fc0:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fc4:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fc8:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fcc:	0017f793          	andi	a5,a5,1
    80002fd0:	fa0798e3          	bnez	a5,80002f80 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002fd4:	01813083          	ld	ra,24(sp)
    80002fd8:	01013403          	ld	s0,16(sp)
    80002fdc:	00813483          	ld	s1,8(sp)
    80002fe0:	02010113          	addi	sp,sp,32
    80002fe4:	00008067          	ret
    80002fe8:	00008067          	ret

0000000080002fec <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002fec:	ff010113          	addi	sp,sp,-16
    80002ff0:	00113423          	sd	ra,8(sp)
    80002ff4:	00813023          	sd	s0,0(sp)
    80002ff8:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002ffc:	00009517          	auipc	a0,0x9
    80003000:	c2453503          	ld	a0,-988(a0) # 8000bc20 <_ZN8KConsole19hasCharactersOutputE>
    80003004:	00001097          	auipc	ra,0x1
    80003008:	540080e7          	jalr	1344(ra) # 80004544 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    8000300c:	00009597          	auipc	a1,0x9
    80003010:	c2c58593          	addi	a1,a1,-980 # 8000bc38 <_ZN8KConsole10tailOutputE>
    80003014:	00009517          	auipc	a0,0x9
    80003018:	c2c50513          	addi	a0,a0,-980 # 8000bc40 <_ZN8KConsole10headOutputE>
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	d48080e7          	jalr	-696(ra) # 80002d64 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80003024:	00813083          	ld	ra,8(sp)
    80003028:	00013403          	ld	s0,0(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret

0000000080003034 <_ZN8KConsole23sendCharactersToConsoleEPv>:
            uint64 x = CONSOLE_STATUS;
    80003034:	00009797          	auipc	a5,0x9
    80003038:	b0c7b783          	ld	a5,-1268(a5) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000303c:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003040:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003044:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003048:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    8000304c:	0207f793          	andi	a5,a5,32
    80003050:	fe0782e3          	beqz	a5,80003034 <_ZN8KConsole23sendCharactersToConsoleEPv>
{
    80003054:	fe010113          	addi	sp,sp,-32
    80003058:	00113c23          	sd	ra,24(sp)
    8000305c:	00813823          	sd	s0,16(sp)
    80003060:	02010413          	addi	s0,sp,32
                char volatile c = getCharacterOutput();
    80003064:	00000097          	auipc	ra,0x0
    80003068:	f88080e7          	jalr	-120(ra) # 80002fec <_ZN8KConsole18getCharacterOutputEv>
    8000306c:	fea407a3          	sb	a0,-17(s0)
                x = CONSOLE_RX_DATA;
    80003070:	00009797          	auipc	a5,0x9
    80003074:	ac87b783          	ld	a5,-1336(a5) # 8000bb38 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003078:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    8000307c:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80003080:	fef44783          	lbu	a5,-17(s0)
    80003084:	0ff7f793          	andi	a5,a5,255
    80003088:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    8000308c:	00b50023          	sb	a1,0(a0)
            uint64 x = CONSOLE_STATUS;
    80003090:	00009797          	auipc	a5,0x9
    80003094:	ab07b783          	ld	a5,-1360(a5) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003098:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    8000309c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    800030a0:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    800030a4:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    800030a8:	0207f793          	andi	a5,a5,32
    800030ac:	fe0782e3          	beqz	a5,80003090 <_ZN8KConsole23sendCharactersToConsoleEPv+0x5c>
    800030b0:	fb5ff06f          	j	80003064 <_ZN8KConsole23sendCharactersToConsoleEPv+0x30>

00000000800030b4 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00113423          	sd	ra,8(sp)
    800030bc:	00813023          	sd	s0,0(sp)
    800030c0:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800030c4:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800030c8:	0ff57513          	andi	a0,a0,255
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	e38080e7          	jalr	-456(ra) # 80002f04 <_ZN8KConsole18putCharacterOutputEc>
    Elem* curr = headOutput;
    800030d4:	00009797          	auipc	a5,0x9
    800030d8:	b6c7b783          	ld	a5,-1172(a5) # 8000bc40 <_ZN8KConsole10headOutputE>
    while(curr != 0)
    800030dc:	00078663          	beqz	a5,800030e8 <_ZN8KConsole11putcHandlerEv+0x34>
    {
        curr = curr->next;
    800030e0:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800030e4:	ff9ff06f          	j	800030dc <_ZN8KConsole11putcHandlerEv+0x28>
    }
}
    800030e8:	00813083          	ld	ra,8(sp)
    800030ec:	00013403          	ld	s0,0(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00113423          	sd	ra,8(sp)
    80003100:	00813023          	sd	s0,0(sp)
    80003104:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterInput();
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	db4080e7          	jalr	-588(ra) # 80002ebc <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003110:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003114:	00001097          	auipc	ra,0x1
    80003118:	ee8080e7          	jalr	-280(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000311c:	00813083          	ld	ra,8(sp)
    80003120:	00013403          	ld	s0,0(sp)
    80003124:	01010113          	addi	sp,sp,16
    80003128:	00008067          	ret

000000008000312c <_ZN8KConsole11printBufferEv>:

void KConsole::printBuffer()
{
    8000312c:	fe010113          	addi	sp,sp,-32
    80003130:	00113c23          	sd	ra,24(sp)
    80003134:	00813823          	sd	s0,16(sp)
    80003138:	00913423          	sd	s1,8(sp)
    8000313c:	02010413          	addi	s0,sp,32
    Elem* curr = headInput;
    80003140:	00009497          	auipc	s1,0x9
    80003144:	af04b483          	ld	s1,-1296(s1) # 8000bc30 <_ZN8KConsole9headInputE>
    while(curr != 0)
    80003148:	00048c63          	beqz	s1,80003160 <_ZN8KConsole11printBufferEv+0x34>
    {
        putc(curr->data);
    8000314c:	0084c503          	lbu	a0,8(s1)
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	3e8080e7          	jalr	1000(ra) # 80001538 <putc>
        curr = curr->next;
    80003158:	0004b483          	ld	s1,0(s1)
    while(curr != 0)
    8000315c:	fedff06f          	j	80003148 <_ZN8KConsole11printBufferEv+0x1c>
    }
}
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	01013403          	ld	s0,16(sp)
    80003168:	00813483          	ld	s1,8(sp)
    8000316c:	02010113          	addi	sp,sp,32
    80003170:	00008067          	ret

0000000080003174 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00813423          	sd	s0,8(sp)
    8000317c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003180:	00009797          	auipc	a5,0x9
    80003184:	9f87b783          	ld	a5,-1544(a5) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003188:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    8000318c:	00500793          	li	a5,5
    80003190:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003194:	00009797          	auipc	a5,0x9
    80003198:	abc7b783          	ld	a5,-1348(a5) # 8000bc50 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    8000319c:	00000593          	li	a1,0
    while(curr != 0)
    800031a0:	02078063          	beqz	a5,800031c0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031a4:	01863683          	ld	a3,24(a2)
    800031a8:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800031ac:	00e6e863          	bltu	a3,a4,800031bc <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800031b0:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800031b4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031b8:	fe9ff06f          	j	800031a0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800031bc:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800031c0:	02058263          	beqz	a1,800031e4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    800031c4:	01863783          	ld	a5,24(a2)
    800031c8:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800031cc:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800031d0:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    800031d4:	00c5b423          	sd	a2,8(a1)
    }
}
    800031d8:	00813403          	ld	s0,8(sp)
    800031dc:	01010113          	addi	sp,sp,16
    800031e0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800031e4:	00009797          	auipc	a5,0x9
    800031e8:	a6c7b623          	sd	a2,-1428(a5) # 8000bc50 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800031ec:	00863783          	ld	a5,8(a2)
    800031f0:	fe0784e3          	beqz	a5,800031d8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031f4:	0187b703          	ld	a4,24(a5)
    800031f8:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    800031fc:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003200:	00e7bc23          	sd	a4,24(a5)
    80003204:	fd5ff06f          	j	800031d8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080003208 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80003208:	00009517          	auipc	a0,0x9
    8000320c:	a4853503          	ld	a0,-1464(a0) # 8000bc50 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003210:	08050863          	beqz	a0,800032a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003214:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80003218:	00100713          	li	a4,1
    8000321c:	00e78863          	beq	a5,a4,8000322c <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80003220:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003224:	00f53c23          	sd	a5,24(a0)
    80003228:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    8000322c:	06050a63          	beqz	a0,800032a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80003230:	00009797          	auipc	a5,0x9
    80003234:	a207b783          	ld	a5,-1504(a5) # 8000bc50 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003238:	00a78663          	beq	a5,a0,80003244 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000323c:	01853783          	ld	a5,24(a0)
    80003240:	06079063          	bnez	a5,800032a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80003244:	fe010113          	addi	sp,sp,-32
    80003248:	00113c23          	sd	ra,24(sp)
    8000324c:	00813823          	sd	s0,16(sp)
    80003250:	00913423          	sd	s1,8(sp)
    80003254:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80003258:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    8000325c:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80003260:	00000097          	auipc	ra,0x0
    80003264:	258080e7          	jalr	600(ra) # 800034b8 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80003268:	00009797          	auipc	a5,0x9
    8000326c:	9e97b423          	sd	s1,-1560(a5) # 8000bc50 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80003270:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80003274:	00048c63          	beqz	s1,8000328c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003278:	00009797          	auipc	a5,0x9
    8000327c:	9d87b783          	ld	a5,-1576(a5) # 8000bc50 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003280:	fc978ce3          	beq	a5,s1,80003258 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003284:	0184b783          	ld	a5,24(s1)
    80003288:	fc0788e3          	beqz	a5,80003258 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    8000328c:	01813083          	ld	ra,24(sp)
    80003290:	01013403          	ld	s0,16(sp)
    80003294:	00813483          	ld	s1,8(sp)
    80003298:	02010113          	addi	sp,sp,32
    8000329c:	00008067          	ret
    800032a0:	00008067          	ret

00000000800032a4 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    800032a4:	fe010113          	addi	sp,sp,-32
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00813823          	sd	s0,16(sp)
    800032b0:	00913423          	sd	s1,8(sp)
    800032b4:	01213023          	sd	s2,0(sp)
    800032b8:	02010413          	addi	s0,sp,32
    800032bc:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800032c0:	00053503          	ld	a0,0(a0)
    800032c4:	00853903          	ld	s2,8(a0)
    kfree(first);
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	174080e7          	jalr	372(ra) # 8000443c <_Z5kfreePv>
    first = newFirst;
    800032d0:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800032d4:	00090e63          	beqz	s2,800032f0 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800032d8:	01813083          	ld	ra,24(sp)
    800032dc:	01013403          	ld	s0,16(sp)
    800032e0:	00813483          	ld	s1,8(sp)
    800032e4:	00013903          	ld	s2,0(sp)
    800032e8:	02010113          	addi	sp,sp,32
    800032ec:	00008067          	ret
        first = last = 0;
    800032f0:	0004b423          	sd	zero,8(s1)
    800032f4:	0004b023          	sd	zero,0(s1)
}
    800032f8:	fe1ff06f          	j	800032d8 <_ZN5Queue3popEv+0x34>

00000000800032fc <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    800032fc:	fe010113          	addi	sp,sp,-32
    80003300:	00113c23          	sd	ra,24(sp)
    80003304:	00813823          	sd	s0,16(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	01213023          	sd	s2,0(sp)
    80003310:	02010413          	addi	s0,sp,32
    80003314:	00050493          	mv	s1,a0
    80003318:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    8000331c:	01000513          	li	a0,16
    80003320:	00001097          	auipc	ra,0x1
    80003324:	0b8080e7          	jalr	184(ra) # 800043d8 <_Z7kmallocm>
    newElem->data = t;
    80003328:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    8000332c:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80003330:	0004b783          	ld	a5,0(s1)
    80003334:	02078463          	beqz	a5,8000335c <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80003338:	0084b783          	ld	a5,8(s1)
    8000333c:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80003340:	00a4b423          	sd	a0,8(s1)
    }
}
    80003344:	01813083          	ld	ra,24(sp)
    80003348:	01013403          	ld	s0,16(sp)
    8000334c:	00813483          	ld	s1,8(sp)
    80003350:	00013903          	ld	s2,0(sp)
    80003354:	02010113          	addi	sp,sp,32
    80003358:	00008067          	ret
        first = newElem;
    8000335c:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80003360:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003364:	00053423          	sd	zero,8(a0)
    80003368:	0004b783          	ld	a5,0(s1)
    8000336c:	0007b423          	sd	zero,8(a5)
    80003370:	fd5ff06f          	j	80003344 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003374 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003374:	ff010113          	addi	sp,sp,-16
    80003378:	00813423          	sd	s0,8(sp)
    8000337c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003380:	00053503          	ld	a0,0(a0)
    80003384:	00050463          	beqz	a0,8000338c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003388:	00053503          	ld	a0,0(a0)
}
    8000338c:	00813403          	ld	s0,8(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00813423          	sd	s0,8(sp)
    800033a0:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    800033a4:	00053423          	sd	zero,8(a0)
    800033a8:	00053023          	sd	zero,0(a0)
}
    800033ac:	00813403          	ld	s0,8(sp)
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	00008067          	ret

00000000800033b8 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    800033b8:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    800033bc:	04050063          	beqz	a0,800033fc <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    800033c0:	fe010113          	addi	sp,sp,-32
    800033c4:	00113c23          	sd	ra,24(sp)
    800033c8:	00813823          	sd	s0,16(sp)
    800033cc:	00913423          	sd	s1,8(sp)
    800033d0:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800033d4:	00853483          	ld	s1,8(a0)
        kfree(old);
    800033d8:	00001097          	auipc	ra,0x1
    800033dc:	064080e7          	jalr	100(ra) # 8000443c <_Z5kfreePv>
        curr = curr->next;
    800033e0:	00048513          	mv	a0,s1
    while(curr != 0)
    800033e4:	fe0498e3          	bnez	s1,800033d4 <_ZN5QueueD1Ev+0x1c>
    }
}
    800033e8:	01813083          	ld	ra,24(sp)
    800033ec:	01013403          	ld	s0,16(sp)
    800033f0:	00813483          	ld	s1,8(sp)
    800033f4:	02010113          	addi	sp,sp,32
    800033f8:	00008067          	ret
    800033fc:	00008067          	ret

0000000080003400 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00813423          	sd	s0,8(sp)
    80003408:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    8000340c:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80003410:	00000513          	li	a0,0
    while(curr != 0)
    80003414:	00078863          	beqz	a5,80003424 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80003418:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    8000341c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003420:	ff5ff06f          	j	80003414 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80003424:	00813403          	ld	s0,8(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret

0000000080003430 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00113423          	sd	ra,8(sp)
    80003438:	00813023          	sd	s0,0(sp)
    8000343c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003440:	00001097          	auipc	ra,0x1
    80003444:	f98080e7          	jalr	-104(ra) # 800043d8 <_Z7kmallocm>
}
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003458:	ff010113          	addi	sp,sp,-16
    8000345c:	00113423          	sd	ra,8(sp)
    80003460:	00813023          	sd	s0,0(sp)
    80003464:	01010413          	addi	s0,sp,16
    kfree(p);
    80003468:	00001097          	auipc	ra,0x1
    8000346c:	fd4080e7          	jalr	-44(ra) # 8000443c <_Z5kfreePv>
}
    80003470:	00813083          	ld	ra,8(sp)
    80003474:	00013403          	ld	s0,0(sp)
    80003478:	01010113          	addi	sp,sp,16
    8000347c:	00008067          	ret

0000000080003480 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003480:	ff010113          	addi	sp,sp,-16
    80003484:	00813423          	sd	s0,8(sp)
    80003488:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000348c:	00008797          	auipc	a5,0x8
    80003490:	7cc7b783          	ld	a5,1996(a5) # 8000bc58 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003494:	00000513          	li	a0,0
    while(curr != 0)
    80003498:	00078863          	beqz	a5,800034a8 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000349c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800034a0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800034a4:	ff5ff06f          	j	80003498 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800034a8:	0005051b          	sext.w	a0,a0
    800034ac:	00813403          	ld	s0,8(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret

00000000800034b8 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800034b8:	ff010113          	addi	sp,sp,-16
    800034bc:	00813423          	sd	s0,8(sp)
    800034c0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800034c4:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800034c8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800034cc:	00008797          	auipc	a5,0x8
    800034d0:	78c7b783          	ld	a5,1932(a5) # 8000bc58 <_ZN9Scheduler16schedulerPCBHeadE>
    800034d4:	02078263          	beqz	a5,800034f8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800034d8:	00008797          	auipc	a5,0x8
    800034dc:	78078793          	addi	a5,a5,1920 # 8000bc58 <_ZN9Scheduler16schedulerPCBHeadE>
    800034e0:	0087b703          	ld	a4,8(a5)
    800034e4:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800034e8:	00a7b423          	sd	a0,8(a5)
    }
}
    800034ec:	00813403          	ld	s0,8(sp)
    800034f0:	01010113          	addi	sp,sp,16
    800034f4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800034f8:	00008797          	auipc	a5,0x8
    800034fc:	76078793          	addi	a5,a5,1888 # 8000bc58 <_ZN9Scheduler16schedulerPCBHeadE>
    80003500:	00a7b423          	sd	a0,8(a5)
    80003504:	00a7b023          	sd	a0,0(a5)
    80003508:	fe5ff06f          	j	800034ec <_ZN9Scheduler3putEP3PCB+0x34>

000000008000350c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    8000350c:	ff010113          	addi	sp,sp,-16
    80003510:	00813423          	sd	s0,8(sp)
    80003514:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003518:	00008517          	auipc	a0,0x8
    8000351c:	74053503          	ld	a0,1856(a0) # 8000bc58 <_ZN9Scheduler16schedulerPCBHeadE>
    80003520:	00050c63          	beqz	a0,80003538 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003524:	00853783          	ld	a5,8(a0)
    80003528:	00078e63          	beqz	a5,80003544 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000352c:	00008717          	auipc	a4,0x8
    80003530:	72f73623          	sd	a5,1836(a4) # 8000bc58 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003534:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003538:	00813403          	ld	s0,8(sp)
    8000353c:	01010113          	addi	sp,sp,16
    80003540:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003544:	00008797          	auipc	a5,0x8
    80003548:	71478793          	addi	a5,a5,1812 # 8000bc58 <_ZN9Scheduler16schedulerPCBHeadE>
    8000354c:	0007b423          	sd	zero,8(a5)
    80003550:	0007b023          	sd	zero,0(a5)
    80003554:	fe1ff06f          	j	80003534 <_ZN9Scheduler3getEv+0x28>

0000000080003558 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    80003558:	fe010113          	addi	sp,sp,-32
    8000355c:	00113c23          	sd	ra,24(sp)
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    8000356c:	00006517          	auipc	a0,0x6
    80003570:	cec50513          	addi	a0,a0,-788 # 80009258 <CONSOLE_STATUS+0x248>
    80003574:	00000097          	auipc	ra,0x0
    80003578:	598080e7          	jalr	1432(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    8000357c:	00008497          	auipc	s1,0x8
    80003580:	6dc4b483          	ld	s1,1756(s1) # 8000bc58 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003584:	02048863          	beqz	s1,800035b4 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    80003588:	00000613          	li	a2,0
    8000358c:	01000593          	li	a1,16
    80003590:	0004851b          	sext.w	a0,s1
    80003594:	00003097          	auipc	ra,0x3
    80003598:	8f0080e7          	jalr	-1808(ra) # 80005e84 <_Z8printIntiii>
        Riscv::printString("\n");
    8000359c:	00006517          	auipc	a0,0x6
    800035a0:	b6450513          	addi	a0,a0,-1180 # 80009100 <CONSOLE_STATUS+0xf0>
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	568080e7          	jalr	1384(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        curr = curr->nextPCB;
    800035ac:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800035b0:	fd5ff06f          	j	80003584 <_ZN9Scheduler5printEv+0x2c>
    }
}
    800035b4:	01813083          	ld	ra,24(sp)
    800035b8:	01013403          	ld	s0,16(sp)
    800035bc:	00813483          	ld	s1,8(sp)
    800035c0:	02010113          	addi	sp,sp,32
    800035c4:	00008067          	ret

00000000800035c8 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    800035c8:	ff010113          	addi	sp,sp,-16
    800035cc:	00113423          	sd	ra,8(sp)
    800035d0:	00813023          	sd	s0,0(sp)
    800035d4:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800035d8:	00001097          	auipc	ra,0x1
    800035dc:	8ec080e7          	jalr	-1812(ra) # 80003ec4 <_ZN5Riscv10kernelMainEv>
    800035e0:	00813083          	ld	ra,8(sp)
    800035e4:	00013403          	ld	s0,0(sp)
    800035e8:	01010113          	addi	sp,sp,16
    800035ec:	00008067          	ret

00000000800035f0 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread()
    800035f0:	ff010113          	addi	sp,sp,-16
    800035f4:	00113423          	sd	ra,8(sp)
    800035f8:	00813023          	sd	s0,0(sp)
    800035fc:	01010413          	addi	s0,sp,16
    80003600:	00008797          	auipc	a5,0x8
    80003604:	45878793          	addi	a5,a5,1112 # 8000ba58 <_ZTV6Thread+0x10>
    80003608:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    8000360c:	00853503          	ld	a0,8(a0)
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	c78080e7          	jalr	-904(ra) # 80001288 <mem_free>
}
    80003618:	00813083          	ld	ra,8(sp)
    8000361c:	00013403          	ld	s0,0(sp)
    80003620:	01010113          	addi	sp,sp,16
    80003624:	00008067          	ret

0000000080003628 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003628:	ff010113          	addi	sp,sp,-16
    8000362c:	00113423          	sd	ra,8(sp)
    80003630:	00813023          	sd	s0,0(sp)
    80003634:	01010413          	addi	s0,sp,16
    80003638:	00008797          	auipc	a5,0x8
    8000363c:	44878793          	addi	a5,a5,1096 # 8000ba80 <_ZTV9Semaphore+0x10>
    80003640:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003644:	00853503          	ld	a0,8(a0)
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	c40080e7          	jalr	-960(ra) # 80001288 <mem_free>
}
    80003650:	00813083          	ld	ra,8(sp)
    80003654:	00013403          	ld	s0,0(sp)
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret

0000000080003660 <_ZN6Thread6runnerEPv>:
{
    80003660:	fe010113          	addi	sp,sp,-32
    80003664:	00113c23          	sd	ra,24(sp)
    80003668:	00813823          	sd	s0,16(sp)
    8000366c:	00913423          	sd	s1,8(sp)
    80003670:	02010413          	addi	s0,sp,32
    80003674:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	bf850513          	addi	a0,a0,-1032 # 80009270 <CONSOLE_STATUS+0x260>
    80003680:	00000097          	auipc	ra,0x0
    80003684:	48c080e7          	jalr	1164(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    thr->run();
    80003688:	0004b783          	ld	a5,0(s1)
    8000368c:	0107b783          	ld	a5,16(a5)
    80003690:	00048513          	mv	a0,s1
    80003694:	000780e7          	jalr	a5
}
    80003698:	01813083          	ld	ra,24(sp)
    8000369c:	01013403          	ld	s0,16(sp)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	02010113          	addi	sp,sp,32
    800036a8:	00008067          	ret

00000000800036ac <_Znwm>:
{
    800036ac:	ff010113          	addi	sp,sp,-16
    800036b0:	00113423          	sd	ra,8(sp)
    800036b4:	00813023          	sd	s0,0(sp)
    800036b8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	b9c080e7          	jalr	-1124(ra) # 80001258 <mem_alloc>
}
    800036c4:	00813083          	ld	ra,8(sp)
    800036c8:	00013403          	ld	s0,0(sp)
    800036cc:	01010113          	addi	sp,sp,16
    800036d0:	00008067          	ret

00000000800036d4 <_ZdlPv>:
{
    800036d4:	ff010113          	addi	sp,sp,-16
    800036d8:	00113423          	sd	ra,8(sp)
    800036dc:	00813023          	sd	s0,0(sp)
    800036e0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	ba4080e7          	jalr	-1116(ra) # 80001288 <mem_free>
}
    800036ec:	00813083          	ld	ra,8(sp)
    800036f0:	00013403          	ld	s0,0(sp)
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00008067          	ret

00000000800036fc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00113c23          	sd	ra,24(sp)
    80003704:	00813823          	sd	s0,16(sp)
    80003708:	00913423          	sd	s1,8(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	00050493          	mv	s1,a0
}
    80003714:	00000097          	auipc	ra,0x0
    80003718:	edc080e7          	jalr	-292(ra) # 800035f0 <_ZN6ThreadD1Ev>
    8000371c:	00048513          	mv	a0,s1
    80003720:	00000097          	auipc	ra,0x0
    80003724:	fb4080e7          	jalr	-76(ra) # 800036d4 <_ZdlPv>
    80003728:	01813083          	ld	ra,24(sp)
    8000372c:	01013403          	ld	s0,16(sp)
    80003730:	00813483          	ld	s1,8(sp)
    80003734:	02010113          	addi	sp,sp,32
    80003738:	00008067          	ret

000000008000373c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000373c:	fe010113          	addi	sp,sp,-32
    80003740:	00113c23          	sd	ra,24(sp)
    80003744:	00813823          	sd	s0,16(sp)
    80003748:	00913423          	sd	s1,8(sp)
    8000374c:	02010413          	addi	s0,sp,32
    80003750:	00050493          	mv	s1,a0
}
    80003754:	00000097          	auipc	ra,0x0
    80003758:	ed4080e7          	jalr	-300(ra) # 80003628 <_ZN9SemaphoreD1Ev>
    8000375c:	00048513          	mv	a0,s1
    80003760:	00000097          	auipc	ra,0x0
    80003764:	f74080e7          	jalr	-140(ra) # 800036d4 <_ZdlPv>
    80003768:	01813083          	ld	ra,24(sp)
    8000376c:	01013403          	ld	s0,16(sp)
    80003770:	00813483          	ld	s1,8(sp)
    80003774:	02010113          	addi	sp,sp,32
    80003778:	00008067          	ret

000000008000377c <_ZN6Thread5startEv>:
    if(myHandle != 0)
    8000377c:	00853503          	ld	a0,8(a0)
    80003780:	02050663          	beqz	a0,800037ac <_ZN6Thread5startEv+0x30>
{
    80003784:	ff010113          	addi	sp,sp,-16
    80003788:	00113423          	sd	ra,8(sp)
    8000378c:	00813023          	sd	s0,0(sp)
    80003790:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	cd0080e7          	jalr	-816(ra) # 80001464 <thread_start>
}
    8000379c:	00813083          	ld	ra,8(sp)
    800037a0:	00013403          	ld	s0,0(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret
        return -1;
    800037ac:	fff00513          	li	a0,-1
}
    800037b0:	00008067          	ret

00000000800037b4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800037b4:	ff010113          	addi	sp,sp,-16
    800037b8:	00113423          	sd	ra,8(sp)
    800037bc:	00813023          	sd	s0,0(sp)
    800037c0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	b70080e7          	jalr	-1168(ra) # 80001334 <thread_dispatch>
}
    800037cc:	00813083          	ld	ra,8(sp)
    800037d0:	00013403          	ld	s0,0(sp)
    800037d4:	01010113          	addi	sp,sp,16
    800037d8:	00008067          	ret

00000000800037dc <_ZN6Thread5sleepEm>:
{
    800037dc:	ff010113          	addi	sp,sp,-16
    800037e0:	00113423          	sd	ra,8(sp)
    800037e4:	00813023          	sd	s0,0(sp)
    800037e8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	c4c080e7          	jalr	-948(ra) # 80001438 <time_sleep>
}
    800037f4:	00813083          	ld	ra,8(sp)
    800037f8:	00013403          	ld	s0,0(sp)
    800037fc:	01010113          	addi	sp,sp,16
    80003800:	00008067          	ret

0000000080003804 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003804:	fe010113          	addi	sp,sp,-32
    80003808:	00113c23          	sd	ra,24(sp)
    8000380c:	00813823          	sd	s0,16(sp)
    80003810:	00913423          	sd	s1,8(sp)
    80003814:	01213023          	sd	s2,0(sp)
    80003818:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000381c:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003820:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003824:	0004b783          	ld	a5,0(s1)
    80003828:	0187b783          	ld	a5,24(a5)
    8000382c:	00048513          	mv	a0,s1
    80003830:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003834:	00090513          	mv	a0,s2
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	fa4080e7          	jalr	-92(ra) # 800037dc <_ZN6Thread5sleepEm>
    while(true)
    80003840:	fe5ff06f          	j	80003824 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003844 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	00813023          	sd	s0,0(sp)
    80003850:	01010413          	addi	s0,sp,16
    80003854:	00008797          	auipc	a5,0x8
    80003858:	20478793          	addi	a5,a5,516 # 8000ba58 <_ZTV6Thread+0x10>
    8000385c:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003860:	00850513          	addi	a0,a0,8
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	c2c080e7          	jalr	-980(ra) # 80001490 <thread_make_pcb>
}
    8000386c:	00813083          	ld	ra,8(sp)
    80003870:	00013403          	ld	s0,0(sp)
    80003874:	01010113          	addi	sp,sp,16
    80003878:	00008067          	ret

000000008000387c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000387c:	ff010113          	addi	sp,sp,-16
    80003880:	00113423          	sd	ra,8(sp)
    80003884:	00813023          	sd	s0,0(sp)
    80003888:	01010413          	addi	s0,sp,16
    8000388c:	00008797          	auipc	a5,0x8
    80003890:	1cc78793          	addi	a5,a5,460 # 8000ba58 <_ZTV6Thread+0x10>
    80003894:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003898:	00050613          	mv	a2,a0
    8000389c:	00000597          	auipc	a1,0x0
    800038a0:	dc458593          	addi	a1,a1,-572 # 80003660 <_ZN6Thread6runnerEPv>
    800038a4:	00850513          	addi	a0,a0,8
    800038a8:	ffffe097          	auipc	ra,0xffffe
    800038ac:	be8080e7          	jalr	-1048(ra) # 80001490 <thread_make_pcb>
}
    800038b0:	00813083          	ld	ra,8(sp)
    800038b4:	00013403          	ld	s0,0(sp)
    800038b8:	01010113          	addi	sp,sp,16
    800038bc:	00008067          	ret

00000000800038c0 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    800038c0:	00853503          	ld	a0,8(a0)
    800038c4:	02050663          	beqz	a0,800038f0 <_ZN9Semaphore4waitEv+0x30>
{
    800038c8:	ff010113          	addi	sp,sp,-16
    800038cc:	00113423          	sd	ra,8(sp)
    800038d0:	00813023          	sd	s0,0(sp)
    800038d4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	b08080e7          	jalr	-1272(ra) # 800013e0 <sem_wait>
}
    800038e0:	00813083          	ld	ra,8(sp)
    800038e4:	00013403          	ld	s0,0(sp)
    800038e8:	01010113          	addi	sp,sp,16
    800038ec:	00008067          	ret
        return -1;
    800038f0:	fff00513          	li	a0,-1
}
    800038f4:	00008067          	ret

00000000800038f8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	02010413          	addi	s0,sp,32
    8000390c:	00050493          	mv	s1,a0
    80003910:	00008797          	auipc	a5,0x8
    80003914:	17078793          	addi	a5,a5,368 # 8000ba80 <_ZTV9Semaphore+0x10>
    80003918:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000391c:	00850513          	addi	a0,a0,8
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	a5c080e7          	jalr	-1444(ra) # 8000137c <sem_open>
    if(retval != 0)
    80003928:	00050463          	beqz	a0,80003930 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    8000392c:	0004b423          	sd	zero,8(s1)
}
    80003930:	01813083          	ld	ra,24(sp)
    80003934:	01013403          	ld	s0,16(sp)
    80003938:	00813483          	ld	s1,8(sp)
    8000393c:	02010113          	addi	sp,sp,32
    80003940:	00008067          	ret

0000000080003944 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003944:	00853503          	ld	a0,8(a0)
    80003948:	02050663          	beqz	a0,80003974 <_ZN9Semaphore6signalEv+0x30>
{
    8000394c:	ff010113          	addi	sp,sp,-16
    80003950:	00113423          	sd	ra,8(sp)
    80003954:	00813023          	sd	s0,0(sp)
    80003958:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	ab0080e7          	jalr	-1360(ra) # 8000140c <sem_signal>
}
    80003964:	00813083          	ld	ra,8(sp)
    80003968:	00013403          	ld	s0,0(sp)
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	00008067          	ret
        return -1;
    80003974:	fff00513          	li	a0,-1
}
    80003978:	00008067          	ret

000000008000397c <_ZN7Console4getcEv>:
{
    8000397c:	ff010113          	addi	sp,sp,-16
    80003980:	00813423          	sd	s0,8(sp)
    80003984:	01010413          	addi	s0,sp,16
}
    80003988:	00000513          	li	a0,0
    8000398c:	00813403          	ld	s0,8(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret

0000000080003998 <_ZN7Console4putcEc>:
{
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00813423          	sd	s0,8(sp)
    800039a0:	01010413          	addi	s0,sp,16
}
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret

00000000800039b0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800039b0:	fe010113          	addi	sp,sp,-32
    800039b4:	00113c23          	sd	ra,24(sp)
    800039b8:	00813823          	sd	s0,16(sp)
    800039bc:	00913423          	sd	s1,8(sp)
    800039c0:	01213023          	sd	s2,0(sp)
    800039c4:	02010413          	addi	s0,sp,32
    800039c8:	00050493          	mv	s1,a0
    800039cc:	00058913          	mv	s2,a1
    800039d0:	01000513          	li	a0,16
    800039d4:	00000097          	auipc	ra,0x0
    800039d8:	cd8080e7          	jalr	-808(ra) # 800036ac <_Znwm>
    800039dc:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800039e0:	00953023          	sd	s1,0(a0)
    800039e4:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800039e8:	00000597          	auipc	a1,0x0
    800039ec:	e1c58593          	addi	a1,a1,-484 # 80003804 <_ZN14PeriodicThread6runnerEPv>
    800039f0:	00048513          	mv	a0,s1
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	e50080e7          	jalr	-432(ra) # 80003844 <_ZN6ThreadC1EPFvPvES0_>
    800039fc:	00008797          	auipc	a5,0x8
    80003a00:	ff478793          	addi	a5,a5,-12 # 8000b9f0 <_ZTV14PeriodicThread+0x10>
    80003a04:	00f4b023          	sd	a5,0(s1)
}
    80003a08:	01813083          	ld	ra,24(sp)
    80003a0c:	01013403          	ld	s0,16(sp)
    80003a10:	00813483          	ld	s1,8(sp)
    80003a14:	00013903          	ld	s2,0(sp)
    80003a18:	02010113          	addi	sp,sp,32
    80003a1c:	00008067          	ret

0000000080003a20 <_ZN5Riscv15userMainWrapperEPv>:

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* )
{
    80003a20:	ff010113          	addi	sp,sp,-16
    80003a24:	00113423          	sd	ra,8(sp)
    80003a28:	00813023          	sd	s0,0(sp)
    80003a2c:	01010413          	addi	s0,sp,16
    userMain();
    80003a30:	00003097          	auipc	ra,0x3
    80003a34:	890080e7          	jalr	-1904(ra) # 800062c0 <_Z8userMainv>
}
    80003a38:	00813083          	ld	ra,8(sp)
    80003a3c:	00013403          	ld	s0,0(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <_ZN5Riscv10initSystemEv>:
{
    80003a48:	ff010113          	addi	sp,sp,-16
    80003a4c:	00113423          	sd	ra,8(sp)
    80003a50:	00813023          	sd	s0,0(sp)
    80003a54:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003a58:	00008797          	auipc	a5,0x8
    80003a5c:	0f87b783          	ld	a5,248(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003a60:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	f34080e7          	jalr	-204(ra) # 80002998 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003a6c:	fffff097          	auipc	ra,0xfffff
    80003a70:	358080e7          	jalr	856(ra) # 80002dc4 <_ZN8KConsole10initializeEv>
}
    80003a74:	00813083          	ld	ra,8(sp)
    80003a78:	00013403          	ld	s0,0(sp)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00813423          	sd	s0,8(sp)
    80003a8c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003a90:	00200793          	li	a5,2
    80003a94:	1007a073          	csrs	sstatus,a5
}
    80003a98:	00813403          	ld	s0,8(sp)
    80003a9c:	01010113          	addi	sp,sp,16
    80003aa0:	00008067          	ret

0000000080003aa4 <_ZN5Riscv17disableInterruptsEv>:
{
    80003aa4:	ff010113          	addi	sp,sp,-16
    80003aa8:	00813423          	sd	s0,8(sp)
    80003aac:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ab0:	00200793          	li	a5,2
    80003ab4:	1007b073          	csrc	sstatus,a5
}
    80003ab8:	00813403          	ld	s0,8(sp)
    80003abc:	01010113          	addi	sp,sp,16
    80003ac0:	00008067          	ret

0000000080003ac4 <_ZN5Riscv9endSystemEv>:
{
    80003ac4:	ff010113          	addi	sp,sp,-16
    80003ac8:	00113423          	sd	ra,8(sp)
    80003acc:	00813023          	sd	s0,0(sp)
    80003ad0:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	fd0080e7          	jalr	-48(ra) # 80003aa4 <_ZN5Riscv17disableInterruptsEv>
}
    80003adc:	00813083          	ld	ra,8(sp)
    80003ae0:	00013403          	ld	s0,0(sp)
    80003ae4:	01010113          	addi	sp,sp,16
    80003ae8:	00008067          	ret

0000000080003aec <_ZN5Riscv10popSppSpieEv>:
{
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00813423          	sd	s0,8(sp)
    80003af4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003af8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003afc:	10200073          	sret
}
    80003b00:	00813403          	ld	s0,8(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_ZN5Riscv11printStringEPKc>:
{
    80003b0c:	fd010113          	addi	sp,sp,-48
    80003b10:	02113423          	sd	ra,40(sp)
    80003b14:	02813023          	sd	s0,32(sp)
    80003b18:	00913c23          	sd	s1,24(sp)
    80003b1c:	01213823          	sd	s2,16(sp)
    80003b20:	03010413          	addi	s0,sp,48
    80003b24:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b28:	100027f3          	csrr	a5,sstatus
    80003b2c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003b30:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b34:	00200793          	li	a5,2
    80003b38:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    80003b3c:	0004c503          	lbu	a0,0(s1)
    80003b40:	00050a63          	beqz	a0,80003b54 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    80003b44:	00005097          	auipc	ra,0x5
    80003b48:	bf8080e7          	jalr	-1032(ra) # 8000873c <__putc>
        string++;
    80003b4c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003b50:	fedff06f          	j	80003b3c <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003b54:	0009091b          	sext.w	s2,s2
    80003b58:	00297913          	andi	s2,s2,2
    80003b5c:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003b60:	10092073          	csrs	sstatus,s2
}
    80003b64:	02813083          	ld	ra,40(sp)
    80003b68:	02013403          	ld	s0,32(sp)
    80003b6c:	01813483          	ld	s1,24(sp)
    80003b70:	01013903          	ld	s2,16(sp)
    80003b74:	03010113          	addi	sp,sp,48
    80003b78:	00008067          	ret

0000000080003b7c <_ZN5Riscv12printIntegerEm>:
{
    80003b7c:	fc010113          	addi	sp,sp,-64
    80003b80:	02113c23          	sd	ra,56(sp)
    80003b84:	02813823          	sd	s0,48(sp)
    80003b88:	02913423          	sd	s1,40(sp)
    80003b8c:	03213023          	sd	s2,32(sp)
    80003b90:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b94:	100027f3          	csrr	a5,sstatus
    80003b98:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003b9c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ba0:	00200793          	li	a5,2
    80003ba4:	1007b073          	csrc	sstatus,a5
        x = num;
    80003ba8:	0005051b          	sext.w	a0,a0
    i = 0;
    80003bac:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    80003bb0:	00a00613          	li	a2,10
    80003bb4:	02c5773b          	remuw	a4,a0,a2
    80003bb8:	02071693          	slli	a3,a4,0x20
    80003bbc:	0206d693          	srli	a3,a3,0x20
    80003bc0:	00005717          	auipc	a4,0x5
    80003bc4:	7e070713          	addi	a4,a4,2016 # 800093a0 <_ZZN5Riscv12printIntegerEmE6digits>
    80003bc8:	00d70733          	add	a4,a4,a3
    80003bcc:	00074703          	lbu	a4,0(a4)
    80003bd0:	fe040693          	addi	a3,s0,-32
    80003bd4:	009687b3          	add	a5,a3,s1
    80003bd8:	0014849b          	addiw	s1,s1,1
    80003bdc:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003be0:	0005071b          	sext.w	a4,a0
    80003be4:	02c5553b          	divuw	a0,a0,a2
    80003be8:	00900793          	li	a5,9
    80003bec:	fce7e2e3          	bltu	a5,a4,80003bb0 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    80003bf0:	fff4849b          	addiw	s1,s1,-1
    80003bf4:	0004ce63          	bltz	s1,80003c10 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003bf8:	fe040793          	addi	a5,s0,-32
    80003bfc:	009787b3          	add	a5,a5,s1
    80003c00:	ff07c503          	lbu	a0,-16(a5)
    80003c04:	00005097          	auipc	ra,0x5
    80003c08:	b38080e7          	jalr	-1224(ra) # 8000873c <__putc>
    80003c0c:	fe5ff06f          	j	80003bf0 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    80003c10:	00a00513          	li	a0,10
    80003c14:	00005097          	auipc	ra,0x5
    80003c18:	b28080e7          	jalr	-1240(ra) # 8000873c <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003c1c:	0009091b          	sext.w	s2,s2
    80003c20:	00297913          	andi	s2,s2,2
    80003c24:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003c28:	10092073          	csrs	sstatus,s2
}
    80003c2c:	03813083          	ld	ra,56(sp)
    80003c30:	03013403          	ld	s0,48(sp)
    80003c34:	02813483          	ld	s1,40(sp)
    80003c38:	02013903          	ld	s2,32(sp)
    80003c3c:	04010113          	addi	sp,sp,64
    80003c40:	00008067          	ret

0000000080003c44 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003c44:	f9010113          	addi	sp,sp,-112
    80003c48:	06113423          	sd	ra,104(sp)
    80003c4c:	06813023          	sd	s0,96(sp)
    80003c50:	04913c23          	sd	s1,88(sp)
    80003c54:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003c58:	00070713          	mv	a4,a4
    80003c5c:	00008797          	auipc	a5,0x8
    80003c60:	f2c7b783          	ld	a5,-212(a5) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003c64:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003c68:	142027f3          	csrr	a5,scause
    80003c6c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003c70:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003c74:	fff00713          	li	a4,-1
    80003c78:	03f71713          	slli	a4,a4,0x3f
    80003c7c:	00170713          	addi	a4,a4,1
    80003c80:	0ae78863          	beq	a5,a4,80003d30 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    80003c84:	fff00713          	li	a4,-1
    80003c88:	03f71713          	slli	a4,a4,0x3f
    80003c8c:	00170713          	addi	a4,a4,1
    80003c90:	04f76e63          	bltu	a4,a5,80003cec <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    80003c94:	ff878793          	addi	a5,a5,-8
    80003c98:	00100713          	li	a4,1
    80003c9c:	16f76c63          	bltu	a4,a5,80003e14 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003ca0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003ca4:	14102773          	csrr	a4,sepc
    80003ca8:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003cac:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003cb0:	00470713          	addi	a4,a4,4
    80003cb4:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003cb8:	10002773          	csrr	a4,sstatus
    80003cbc:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003cc0:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003cc4:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003cc8:	04200713          	li	a4,66
    80003ccc:	12f76c63          	bltu	a4,a5,80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    80003cd0:	00279793          	slli	a5,a5,0x2
    80003cd4:	00005717          	auipc	a4,0x5
    80003cd8:	5bc70713          	addi	a4,a4,1468 # 80009290 <CONSOLE_STATUS+0x280>
    80003cdc:	00e787b3          	add	a5,a5,a4
    80003ce0:	0007a783          	lw	a5,0(a5)
    80003ce4:	00e787b3          	add	a5,a5,a4
    80003ce8:	00078067          	jr	a5
    switch(scause)
    80003cec:	fff00713          	li	a4,-1
    80003cf0:	03f71713          	slli	a4,a4,0x3f
    80003cf4:	00970713          	addi	a4,a4,9
    80003cf8:	10e79e63          	bne	a5,a4,80003e14 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
            uint64 x = CONSOLE_STATUS;
    80003cfc:	00008797          	auipc	a5,0x8
    80003d00:	e447b783          	ld	a5,-444(a5) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003d04:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003d08:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003d0c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003d10:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003d14:	0017f793          	andi	a5,a5,1
    80003d18:	0a079663          	bnez	a5,80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
            plic_complete(plic_claim());
    80003d1c:	00003097          	auipc	ra,0x3
    80003d20:	1b8080e7          	jalr	440(ra) # 80006ed4 <plic_claim>
    80003d24:	00003097          	auipc	ra,0x3
    80003d28:	1e8080e7          	jalr	488(ra) # 80006f0c <plic_complete>
            break;
    80003d2c:	0e80006f          	j	80003e14 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003d30:	141027f3          	csrr	a5,sepc
    80003d34:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003d38:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003d3c:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003d40:	100027f3          	csrr	a5,sstatus
    80003d44:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003d48:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003d4c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003d50:	00200793          	li	a5,2
    80003d54:	1447b073          	csrc	sip,a5
            total++;
    80003d58:	00008717          	auipc	a4,0x8
    80003d5c:	f1070713          	addi	a4,a4,-240 # 8000bc68 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003d60:	00073783          	ld	a5,0(a4)
    80003d64:	00178793          	addi	a5,a5,1
    80003d68:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003d6c:	00008497          	auipc	s1,0x8
    80003d70:	df44b483          	ld	s1,-524(s1) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003d74:	0004b783          	ld	a5,0(s1)
    80003d78:	00178793          	addi	a5,a5,1
    80003d7c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	488080e7          	jalr	1160(ra) # 80003208 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003d88:	00008797          	auipc	a5,0x8
    80003d8c:	df07b783          	ld	a5,-528(a5) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003d90:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003d94:	0107b783          	ld	a5,16(a5)
    80003d98:	0004b703          	ld	a4,0(s1)
    80003d9c:	00f77c63          	bgeu	a4,a5,80003db4 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
            Riscv::w_sstatus(sstatus);
    80003da0:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003da4:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003da8:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003dac:	14179073          	csrw	sepc,a5
}
    80003db0:	0640006f          	j	80003e14 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
                PCB::timeSliceCounter = 0;
    80003db4:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003db8:	fffff097          	auipc	ra,0xfffff
    80003dbc:	af0080e7          	jalr	-1296(ra) # 800028a8 <_ZN3PCB8dispatchEv>
    80003dc0:	fe1ff06f          	j	80003da0 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
                x = CONSOLE_TX_DATA;
    80003dc4:	00008797          	auipc	a5,0x8
    80003dc8:	d947b783          	ld	a5,-620(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003dcc:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003dd0:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003dd4:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003dd8:	00058493          	mv	s1,a1
    80003ddc:	0ff4f493          	andi	s1,s1,255
                KConsole::putCharacterInput(c);
    80003de0:	00048513          	mv	a0,s1
    80003de4:	fffff097          	auipc	ra,0xfffff
    80003de8:	090080e7          	jalr	144(ra) # 80002e74 <_ZN8KConsole17putCharacterInputEc>
                KConsole::putCharacterOutput(c);
    80003dec:	00048513          	mv	a0,s1
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	114080e7          	jalr	276(ra) # 80002f04 <_ZN8KConsole18putCharacterOutputEc>
    80003df8:	f25ff06f          	j	80003d1c <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                    MemoryAllocator::memAllocHandler();
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	604080e7          	jalr	1540(ra) # 80004400 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003e04:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003e08:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003e0c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003e10:	14179073          	csrw	sepc,a5
}
    80003e14:	06813083          	ld	ra,104(sp)
    80003e18:	06013403          	ld	s0,96(sp)
    80003e1c:	05813483          	ld	s1,88(sp)
    80003e20:	07010113          	addi	sp,sp,112
    80003e24:	00008067          	ret
                    MemoryAllocator::memFreeHandler();
    80003e28:	00000097          	auipc	ra,0x0
    80003e2c:	63c080e7          	jalr	1596(ra) # 80004464 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003e30:	fd5ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadMakePCBHandler();
    80003e34:	fffff097          	auipc	ra,0xfffff
    80003e38:	e24080e7          	jalr	-476(ra) # 80002c58 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003e3c:	fc9ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadCreateHandler();
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	d34080e7          	jalr	-716(ra) # 80002b74 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003e48:	fbdff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadStartHandler();
    80003e4c:	fffff097          	auipc	ra,0xfffff
    80003e50:	dc8080e7          	jalr	-568(ra) # 80002c14 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003e54:	fb1ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadDispatchHandler();
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	c98080e7          	jalr	-872(ra) # 80002af0 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003e60:	fa5ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadExitHandler();
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	c30080e7          	jalr	-976(ra) # 80002a94 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003e6c:	f99ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadSleepHandler();
    80003e70:	fffff097          	auipc	ra,0xfffff
    80003e74:	cb0080e7          	jalr	-848(ra) # 80002b20 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003e78:	f8dff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KSemaphore::semOpenHandler();
    80003e7c:	00001097          	auipc	ra,0x1
    80003e80:	898080e7          	jalr	-1896(ra) # 80004714 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003e84:	f81ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KSemaphore::semWaitHandler();
    80003e88:	00001097          	auipc	ra,0x1
    80003e8c:	924080e7          	jalr	-1756(ra) # 800047ac <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003e90:	f75ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KSemaphore::semSignalHandler();
    80003e94:	00001097          	auipc	ra,0x1
    80003e98:	958080e7          	jalr	-1704(ra) # 800047ec <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003e9c:	f69ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KSemaphore::semCloseHandler();
    80003ea0:	00001097          	auipc	ra,0x1
    80003ea4:	98c080e7          	jalr	-1652(ra) # 8000482c <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003ea8:	f5dff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KConsole::getcHandler();
    80003eac:	fffff097          	auipc	ra,0xfffff
    80003eb0:	24c080e7          	jalr	588(ra) # 800030f8 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003eb4:	f51ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KConsole::putcHandler();
    80003eb8:	fffff097          	auipc	ra,0xfffff
    80003ebc:	1fc080e7          	jalr	508(ra) # 800030b4 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003ec0:	f45ff06f          	j	80003e04 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>

0000000080003ec4 <_ZN5Riscv10kernelMainEv>:
{
    80003ec4:	fe010113          	addi	sp,sp,-32
    80003ec8:	00113c23          	sd	ra,24(sp)
    80003ecc:	00813823          	sd	s0,16(sp)
    80003ed0:	00913423          	sd	s1,8(sp)
    80003ed4:	01213023          	sd	s2,0(sp)
    80003ed8:	02010413          	addi	s0,sp,32
    initSystem();
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	b6c080e7          	jalr	-1172(ra) # 80003a48 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	ba0080e7          	jalr	-1120(ra) # 80003a84 <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003eec:	00001537          	lui	a0,0x1
    80003ef0:	00000097          	auipc	ra,0x0
    80003ef4:	4e8080e7          	jalr	1256(ra) # 800043d8 <_Z7kmallocm>
    80003ef8:	00050913          	mv	s2,a0
    80003efc:	05000513          	li	a0,80
    80003f00:	fffff097          	auipc	ra,0xfffff
    80003f04:	a1c080e7          	jalr	-1508(ra) # 8000291c <_ZN3PCBnwEm>
    80003f08:	00050493          	mv	s1,a0
    80003f0c:	00200713          	li	a4,2
    80003f10:	00090693          	mv	a3,s2
    80003f14:	00000613          	li	a2,0
    80003f18:	00000597          	auipc	a1,0x0
    80003f1c:	b0858593          	addi	a1,a1,-1272 # 80003a20 <_ZN5Riscv15userMainWrapperEPv>
    80003f20:	fffff097          	auipc	ra,0xfffff
    80003f24:	8fc080e7          	jalr	-1796(ra) # 8000281c <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003f28:	00048513          	mv	a0,s1
    80003f2c:	fffff097          	auipc	ra,0xfffff
    80003f30:	954080e7          	jalr	-1708(ra) # 80002880 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003f34:	00048513          	mv	a0,s1
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	b38080e7          	jalr	-1224(ra) # 80002a70 <_ZN3PCB10isFinishedEv>
    80003f40:	00051863          	bnez	a0,80003f50 <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003f44:	ffffd097          	auipc	ra,0xffffd
    80003f48:	3f0080e7          	jalr	1008(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003f4c:	fe9ff06f          	j	80003f34 <_ZN5Riscv10kernelMainEv+0x70>
    disableInterrupts();
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	b54080e7          	jalr	-1196(ra) # 80003aa4 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003f58:	00000097          	auipc	ra,0x0
    80003f5c:	b6c080e7          	jalr	-1172(ra) # 80003ac4 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003f60:	00005517          	auipc	a0,0x5
    80003f64:	45050513          	addi	a0,a0,1104 # 800093b0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003f68:	00000097          	auipc	ra,0x0
    80003f6c:	ba4080e7          	jalr	-1116(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
}
    80003f70:	01813083          	ld	ra,24(sp)
    80003f74:	01013403          	ld	s0,16(sp)
    80003f78:	00813483          	ld	s1,8(sp)
    80003f7c:	00013903          	ld	s2,0(sp)
    80003f80:	02010113          	addi	sp,sp,32
    80003f84:	00008067          	ret
    80003f88:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003f8c:	00048513          	mv	a0,s1
    80003f90:	fffff097          	auipc	ra,0xfffff
    80003f94:	9b4080e7          	jalr	-1612(ra) # 80002944 <_ZN3PCBdlEPv>
    80003f98:	00090513          	mv	a0,s2
    80003f9c:	00009097          	auipc	ra,0x9
    80003fa0:	ddc080e7          	jalr	-548(ra) # 8000cd78 <_Unwind_Resume>

0000000080003fa4 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00113423          	sd	ra,8(sp)
    80003fac:	00813023          	sd	s0,0(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    myTests();
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	6cc080e7          	jalr	1740(ra) # 80002680 <_Z7myTestsv>
}
    80003fbc:	00813083          	ld	ra,8(sp)
    80003fc0:	00013403          	ld	s0,0(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret

0000000080003fcc <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003fcc:	ff010113          	addi	sp,sp,-16
    80003fd0:	00813423          	sd	s0,8(sp)
    80003fd4:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003fd8:	00200793          	li	a5,2
    80003fdc:	1047b073          	csrc	sie,a5
}
    80003fe0:	00813403          	ld	s0,8(sp)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret

0000000080003fec <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003fec:	ff010113          	addi	sp,sp,-16
    80003ff0:	00813423          	sd	s0,8(sp)
    80003ff4:	01010413          	addi	s0,sp,16
    while(true)
    80003ff8:	0000006f          	j	80003ff8 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003ffc <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003ffc:	ff010113          	addi	sp,sp,-16
    80004000:	00813423          	sd	s0,8(sp)
    80004004:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80004008:	00058793          	mv	a5,a1
    __asm__ volatile("csrr a1, sscratch");
    8000400c:	140025f3          	csrr	a1,sscratch
    __asm__ volatile("sd a0, 80(a1)");
    80004010:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004014:	00078593          	mv	a1,a5
}
    80004018:	00813403          	ld	s0,8(sp)
    8000401c:	01010113          	addi	sp,sp,16
    80004020:	00008067          	ret

0000000080004024 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80004024:	ff010113          	addi	sp,sp,-16
    80004028:	00813423          	sd	s0,8(sp)
    8000402c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004030:	00008717          	auipc	a4,0x8
    80004034:	c4072703          	lw	a4,-960(a4) # 8000bc70 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004038:	00100793          	li	a5,1
    8000403c:	04f70263          	beq	a4,a5,80004080 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80004040:	00008797          	auipc	a5,0x8
    80004044:	c3078793          	addi	a5,a5,-976 # 8000bc70 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004048:	00100713          	li	a4,1
    8000404c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004050:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80004054:	00008717          	auipc	a4,0x8
    80004058:	af473703          	ld	a4,-1292(a4) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000405c:	00073703          	ld	a4,0(a4)
    80004060:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80004064:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80004068:	00008797          	auipc	a5,0x8
    8000406c:	b187b783          	ld	a5,-1256(a5) # 8000bb80 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004070:	0007b783          	ld	a5,0(a5)
    80004074:	40e787b3          	sub	a5,a5,a4
    80004078:	ff178793          	addi	a5,a5,-15
    8000407c:	00f73023          	sd	a5,0(a4)
}
    80004080:	00813403          	ld	s0,8(sp)
    80004084:	01010113          	addi	sp,sp,16
    80004088:	00008067          	ret

000000008000408c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    8000408c:	fe010113          	addi	sp,sp,-32
    80004090:	00113c23          	sd	ra,24(sp)
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00913423          	sd	s1,8(sp)
    8000409c:	01213023          	sd	s2,0(sp)
    800040a0:	02010413          	addi	s0,sp,32
    800040a4:	00050493          	mv	s1,a0
    800040a8:	00058913          	mv	s2,a1
    initMemory();
    800040ac:	00000097          	auipc	ra,0x0
    800040b0:	f78080e7          	jalr	-136(ra) # 80004024 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800040b4:	00008797          	auipc	a5,0x8
    800040b8:	bc47b783          	ld	a5,-1084(a5) # 8000bc78 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800040bc:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800040c0:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800040c4:	00000713          	li	a4,0
    while(curr != 0)
    800040c8:	00078c63          	beqz	a5,800040e0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800040cc:	00f4e863          	bltu	s1,a5,800040dc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800040d0:	00078713          	mv	a4,a5
        curr = curr->next;
    800040d4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800040d8:	ff1ff06f          	j	800040c8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800040dc:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800040e0:	02070063          	beqz	a4,80004100 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800040e4:	00973423          	sd	s1,8(a4)
}
    800040e8:	01813083          	ld	ra,24(sp)
    800040ec:	01013403          	ld	s0,16(sp)
    800040f0:	00813483          	ld	s1,8(sp)
    800040f4:	00013903          	ld	s2,0(sp)
    800040f8:	02010113          	addi	sp,sp,32
    800040fc:	00008067          	ret
        headAllocated = newAllocated;
    80004100:	00008797          	auipc	a5,0x8
    80004104:	b697bc23          	sd	s1,-1160(a5) # 8000bc78 <_ZN15MemoryAllocator13headAllocatedE>
    80004108:	fe1ff06f          	j	800040e8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

000000008000410c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00113c23          	sd	ra,24(sp)
    80004114:	00813823          	sd	s0,16(sp)
    80004118:	00913423          	sd	s1,8(sp)
    8000411c:	01213023          	sd	s2,0(sp)
    80004120:	02010413          	addi	s0,sp,32
    80004124:	00050913          	mv	s2,a0
    initMemory();
    80004128:	00000097          	auipc	ra,0x0
    8000412c:	efc080e7          	jalr	-260(ra) # 80004024 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004130:	00008497          	auipc	s1,0x8
    80004134:	b504b483          	ld	s1,-1200(s1) # 8000bc80 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004138:	00000713          	li	a4,0
    while(curr != 0)
    8000413c:	0a048863          	beqz	s1,800041ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80004140:	0004b783          	ld	a5,0(s1)
    80004144:	0127f863          	bgeu	a5,s2,80004154 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004148:	00048713          	mv	a4,s1
        curr = curr->next;
    8000414c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004150:	fedff06f          	j	8000413c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004154:	01090693          	addi	a3,s2,16
    80004158:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    8000415c:	00008617          	auipc	a2,0x8
    80004160:	a2463603          	ld	a2,-1500(a2) # 8000bb80 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004164:	00063603          	ld	a2,0(a2)
    80004168:	04d66c63          	bltu	a2,a3,800041c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    8000416c:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80004170:	01000613          	li	a2,16
    80004174:	02f67663          	bgeu	a2,a5,800041a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80004178:	0084b603          	ld	a2,8(s1)
    8000417c:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004180:	ff078793          	addi	a5,a5,-16
    80004184:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80004188:	00070663          	beqz	a4,80004194 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    8000418c:	00d73423          	sd	a3,8(a4)
    80004190:	0380006f          	j	800041c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80004194:	00008797          	auipc	a5,0x8
    80004198:	aed7b623          	sd	a3,-1300(a5) # 8000bc80 <_ZN15MemoryAllocator8headFreeE>
    8000419c:	02c0006f          	j	800041c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    800041a0:	00070863          	beqz	a4,800041b0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    800041a4:	0084b783          	ld	a5,8(s1)
    800041a8:	00f73423          	sd	a5,8(a4)
    800041ac:	01c0006f          	j	800041c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    800041b0:	0084b783          	ld	a5,8(s1)
    800041b4:	00008717          	auipc	a4,0x8
    800041b8:	acf73623          	sd	a5,-1332(a4) # 8000bc80 <_ZN15MemoryAllocator8headFreeE>
    800041bc:	00c0006f          	j	800041c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    800041c0:	02070063          	beqz	a4,800041e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800041c4:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800041c8:	00090593          	mv	a1,s2
    800041cc:	00048513          	mv	a0,s1
    800041d0:	00000097          	auipc	ra,0x0
    800041d4:	ebc080e7          	jalr	-324(ra) # 8000408c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800041d8:	01048513          	addi	a0,s1,16
            break;
    800041dc:	0140006f          	j	800041f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800041e0:	00008797          	auipc	a5,0x8
    800041e4:	aa07b023          	sd	zero,-1376(a5) # 8000bc80 <_ZN15MemoryAllocator8headFreeE>
    800041e8:	fe1ff06f          	j	800041c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800041ec:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800041f0:	01813083          	ld	ra,24(sp)
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	00813483          	ld	s1,8(sp)
    800041fc:	00013903          	ld	s2,0(sp)
    80004200:	02010113          	addi	sp,sp,32
    80004204:	00008067          	ret

0000000080004208 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004208:	ff010113          	addi	sp,sp,-16
    8000420c:	00113423          	sd	ra,8(sp)
    80004210:	00813023          	sd	s0,0(sp)
    80004214:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004218:	00000097          	auipc	ra,0x0
    8000421c:	ef4080e7          	jalr	-268(ra) # 8000410c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004220:	00813083          	ld	ra,8(sp)
    80004224:	00013403          	ld	s0,0(sp)
    80004228:	01010113          	addi	sp,sp,16
    8000422c:	00008067          	ret

0000000080004230 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004230:	fe010113          	addi	sp,sp,-32
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	00813823          	sd	s0,16(sp)
    8000423c:	00913423          	sd	s1,8(sp)
    80004240:	01213023          	sd	s2,0(sp)
    80004244:	02010413          	addi	s0,sp,32
    80004248:	00050493          	mv	s1,a0
    8000424c:	00058913          	mv	s2,a1
    initMemory();
    80004250:	00000097          	auipc	ra,0x0
    80004254:	dd4080e7          	jalr	-556(ra) # 80004024 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004258:	00008797          	auipc	a5,0x8
    8000425c:	a287b783          	ld	a5,-1496(a5) # 8000bc80 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004260:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80004264:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80004268:	00000713          	li	a4,0
    while(curr != 0)
    8000426c:	00078c63          	beqz	a5,80004284 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004270:	00f4e863          	bltu	s1,a5,80004280 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004274:	00078713          	mv	a4,a5
        curr = curr->next;
    80004278:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000427c:	ff1ff06f          	j	8000426c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004280:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004284:	04070663          	beqz	a4,800042d0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004288:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    8000428c:	0084b783          	ld	a5,8(s1)
    80004290:	00078a63          	beqz	a5,800042a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004294:	0004b603          	ld	a2,0(s1)
    80004298:	01060693          	addi	a3,a2,16
    8000429c:	00d486b3          	add	a3,s1,a3
    800042a0:	02d78e63          	beq	a5,a3,800042dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800042a4:	00070a63          	beqz	a4,800042b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800042a8:	00073683          	ld	a3,0(a4)
    800042ac:	01068793          	addi	a5,a3,16
    800042b0:	00f707b3          	add	a5,a4,a5
    800042b4:	04978263          	beq	a5,s1,800042f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800042b8:	01813083          	ld	ra,24(sp)
    800042bc:	01013403          	ld	s0,16(sp)
    800042c0:	00813483          	ld	s1,8(sp)
    800042c4:	00013903          	ld	s2,0(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret
        headFree = newSegment;
    800042d0:	00008797          	auipc	a5,0x8
    800042d4:	9a97b823          	sd	s1,-1616(a5) # 8000bc80 <_ZN15MemoryAllocator8headFreeE>
    800042d8:	fb5ff06f          	j	8000428c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800042dc:	0007b683          	ld	a3,0(a5)
    800042e0:	00d60633          	add	a2,a2,a3
    800042e4:	01060613          	addi	a2,a2,16
    800042e8:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800042ec:	0087b783          	ld	a5,8(a5)
    800042f0:	00f4b423          	sd	a5,8(s1)
    800042f4:	fb1ff06f          	j	800042a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800042f8:	0004b783          	ld	a5,0(s1)
    800042fc:	00f686b3          	add	a3,a3,a5
    80004300:	01068693          	addi	a3,a3,16
    80004304:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004308:	0084b783          	ld	a5,8(s1)
    8000430c:	00f73423          	sd	a5,8(a4)
}
    80004310:	fa9ff06f          	j	800042b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004314 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004314:	fe010113          	addi	sp,sp,-32
    80004318:	00113c23          	sd	ra,24(sp)
    8000431c:	00813823          	sd	s0,16(sp)
    80004320:	00913423          	sd	s1,8(sp)
    80004324:	01213023          	sd	s2,0(sp)
    80004328:	02010413          	addi	s0,sp,32
    8000432c:	00050913          	mv	s2,a0
    initMemory();
    80004330:	00000097          	auipc	ra,0x0
    80004334:	cf4080e7          	jalr	-780(ra) # 80004024 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004338:	00008497          	auipc	s1,0x8
    8000433c:	9404b483          	ld	s1,-1728(s1) # 8000bc78 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004340:	00000713          	li	a4,0
    while(curr != 0)
    80004344:	02048a63          	beqz	s1,80004378 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004348:	01048793          	addi	a5,s1,16
    8000434c:	01278863          	beq	a5,s2,8000435c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004350:	00048713          	mv	a4,s1
        curr = curr->next;
    80004354:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004358:	fedff06f          	j	80004344 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    8000435c:	02070e63          	beqz	a4,80004398 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004360:	0084b783          	ld	a5,8(s1)
    80004364:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004368:	0004b583          	ld	a1,0(s1)
    8000436c:	00048513          	mv	a0,s1
    80004370:	00000097          	auipc	ra,0x0
    80004374:	ec0080e7          	jalr	-320(ra) # 80004230 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004378:	02048863          	beqz	s1,800043a8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    8000437c:	00000513          	li	a0,0
    else
        return 1;
}
    80004380:	01813083          	ld	ra,24(sp)
    80004384:	01013403          	ld	s0,16(sp)
    80004388:	00813483          	ld	s1,8(sp)
    8000438c:	00013903          	ld	s2,0(sp)
    80004390:	02010113          	addi	sp,sp,32
    80004394:	00008067          	ret
                headAllocated = curr->next;
    80004398:	0084b783          	ld	a5,8(s1)
    8000439c:	00008717          	auipc	a4,0x8
    800043a0:	8cf73e23          	sd	a5,-1828(a4) # 8000bc78 <_ZN15MemoryAllocator13headAllocatedE>
    800043a4:	fc5ff06f          	j	80004368 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800043a8:	00100513          	li	a0,1
    800043ac:	fd5ff06f          	j	80004380 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800043b0 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800043b0:	ff010113          	addi	sp,sp,-16
    800043b4:	00113423          	sd	ra,8(sp)
    800043b8:	00813023          	sd	s0,0(sp)
    800043bc:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800043c0:	00000097          	auipc	ra,0x0
    800043c4:	f54080e7          	jalr	-172(ra) # 80004314 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800043c8:	00813083          	ld	ra,8(sp)
    800043cc:	00013403          	ld	s0,0(sp)
    800043d0:	01010113          	addi	sp,sp,16
    800043d4:	00008067          	ret

00000000800043d8 <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    800043d8:	ff010113          	addi	sp,sp,-16
    800043dc:	00113423          	sd	ra,8(sp)
    800043e0:	00813023          	sd	s0,0(sp)
    800043e4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800043e8:	00000097          	auipc	ra,0x0
    800043ec:	e20080e7          	jalr	-480(ra) # 80004208 <_ZN15MemoryAllocator9mem_allocEm>
}
    800043f0:	00813083          	ld	ra,8(sp)
    800043f4:	00013403          	ld	s0,0(sp)
    800043f8:	01010113          	addi	sp,sp,16
    800043fc:	00008067          	ret

0000000080004400 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004400:	ff010113          	addi	sp,sp,-16
    80004404:	00113423          	sd	ra,8(sp)
    80004408:	00813023          	sd	s0,0(sp)
    8000440c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004410:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004414:	00651513          	slli	a0,a0,0x6
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	fc0080e7          	jalr	-64(ra) # 800043d8 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004420:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004424:	00000097          	auipc	ra,0x0
    80004428:	bd8080e7          	jalr	-1064(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000442c:	00813083          	ld	ra,8(sp)
    80004430:	00013403          	ld	s0,0(sp)
    80004434:	01010113          	addi	sp,sp,16
    80004438:	00008067          	ret

000000008000443c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    8000443c:	ff010113          	addi	sp,sp,-16
    80004440:	00113423          	sd	ra,8(sp)
    80004444:	00813023          	sd	s0,0(sp)
    80004448:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000444c:	00000097          	auipc	ra,0x0
    80004450:	f64080e7          	jalr	-156(ra) # 800043b0 <_ZN15MemoryAllocator8mem_freeEPv>
    80004454:	00813083          	ld	ra,8(sp)
    80004458:	00013403          	ld	s0,0(sp)
    8000445c:	01010113          	addi	sp,sp,16
    80004460:	00008067          	ret

0000000080004464 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004464:	ff010113          	addi	sp,sp,-16
    80004468:	00113423          	sd	ra,8(sp)
    8000446c:	00813023          	sd	s0,0(sp)
    80004470:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004474:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004478:	00000097          	auipc	ra,0x0
    8000447c:	fc4080e7          	jalr	-60(ra) # 8000443c <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004480:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004484:	00000097          	auipc	ra,0x0
    80004488:	b78080e7          	jalr	-1160(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000448c:	00813083          	ld	ra,8(sp)
    80004490:	00013403          	ld	s0,0(sp)
    80004494:	01010113          	addi	sp,sp,16
    80004498:	00008067          	ret

000000008000449c <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    8000449c:	ff010113          	addi	sp,sp,-16
    800044a0:	00813423          	sd	s0,8(sp)
    800044a4:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    800044a8:	00b52a23          	sw	a1,20(a0)
    800044ac:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800044b0:	00053423          	sd	zero,8(a0)
    800044b4:	00053023          	sd	zero,0(a0)
}
    800044b8:	00813403          	ld	s0,8(sp)
    800044bc:	01010113          	addi	sp,sp,16
    800044c0:	00008067          	ret

00000000800044c4 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800044c4:	ff010113          	addi	sp,sp,-16
    800044c8:	00813423          	sd	s0,8(sp)
    800044cc:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800044d0:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800044d4:	00053783          	ld	a5,0(a0)
    800044d8:	00078e63          	beqz	a5,800044f4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800044dc:	00853783          	ld	a5,8(a0)
    800044e0:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800044e4:	00b53423          	sd	a1,8(a0)
    }
}
    800044e8:	00813403          	ld	s0,8(sp)
    800044ec:	01010113          	addi	sp,sp,16
    800044f0:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800044f4:	00b53423          	sd	a1,8(a0)
    800044f8:	00b53023          	sd	a1,0(a0)
    800044fc:	fedff06f          	j	800044e8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004500 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004500:	ff010113          	addi	sp,sp,-16
    80004504:	00113423          	sd	ra,8(sp)
    80004508:	00813023          	sd	s0,0(sp)
    8000450c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004510:	00007797          	auipc	a5,0x7
    80004514:	6687b783          	ld	a5,1640(a5) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x48>
    80004518:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    8000451c:	00200793          	li	a5,2
    80004520:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    80004524:	00000097          	auipc	ra,0x0
    80004528:	fa0080e7          	jalr	-96(ra) # 800044c4 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	37c080e7          	jalr	892(ra) # 800028a8 <_ZN3PCB8dispatchEv>
}
    80004534:	00813083          	ld	ra,8(sp)
    80004538:	00013403          	ld	s0,0(sp)
    8000453c:	01010113          	addi	sp,sp,16
    80004540:	00008067          	ret

0000000080004544 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80004544:	01052783          	lw	a5,16(a0)
    80004548:	fff7879b          	addiw	a5,a5,-1
    8000454c:	00f52823          	sw	a5,16(a0)
    80004550:	02079713          	slli	a4,a5,0x20
    80004554:	00074663          	bltz	a4,80004560 <_ZN10KSemaphore4waitEv+0x1c>
}
    80004558:	00000513          	li	a0,0
    8000455c:	00008067          	ret
uint64 KSemaphore::wait() {
    80004560:	ff010113          	addi	sp,sp,-16
    80004564:	00113423          	sd	ra,8(sp)
    80004568:	00813023          	sd	s0,0(sp)
    8000456c:	01010413          	addi	s0,sp,16
        block();
    80004570:	00000097          	auipc	ra,0x0
    80004574:	f90080e7          	jalr	-112(ra) # 80004500 <_ZN10KSemaphore5blockEv>
}
    80004578:	00000513          	li	a0,0
    8000457c:	00813083          	ld	ra,8(sp)
    80004580:	00013403          	ld	s0,0(sp)
    80004584:	01010113          	addi	sp,sp,16
    80004588:	00008067          	ret

000000008000458c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    8000458c:	ff010113          	addi	sp,sp,-16
    80004590:	00813423          	sd	s0,8(sp)
    80004594:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004598:	00053503          	ld	a0,0(a0)
    8000459c:	00813403          	ld	s0,8(sp)
    800045a0:	01010113          	addi	sp,sp,16
    800045a4:	00008067          	ret

00000000800045a8 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800045a8:	ff010113          	addi	sp,sp,-16
    800045ac:	00813423          	sd	s0,8(sp)
    800045b0:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800045b4:	00053783          	ld	a5,0(a0)
    800045b8:	00078c63          	beqz	a5,800045d0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800045bc:	0087b703          	ld	a4,8(a5)
    800045c0:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800045c4:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800045c8:	00053783          	ld	a5,0(a0)
    800045cc:	00078863          	beqz	a5,800045dc <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800045d0:	00813403          	ld	s0,8(sp)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret
        tailBlocked =0;
    800045dc:	00053423          	sd	zero,8(a0)
    800045e0:	ff1ff06f          	j	800045d0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800045e4 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800045e4:	fe010113          	addi	sp,sp,-32
    800045e8:	00113c23          	sd	ra,24(sp)
    800045ec:	00813823          	sd	s0,16(sp)
    800045f0:	00913423          	sd	s1,8(sp)
    800045f4:	01213023          	sd	s2,0(sp)
    800045f8:	02010413          	addi	s0,sp,32
    800045fc:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004600:	00090513          	mv	a0,s2
    80004604:	00000097          	auipc	ra,0x0
    80004608:	f88080e7          	jalr	-120(ra) # 8000458c <_ZN10KSemaphore15getFirstBlockedEv>
    8000460c:	00050493          	mv	s1,a0
    80004610:	02050063          	beqz	a0,80004630 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80004614:	00090513          	mv	a0,s2
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	f90080e7          	jalr	-112(ra) # 800045a8 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004620:	00048513          	mv	a0,s1
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	e94080e7          	jalr	-364(ra) # 800034b8 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    8000462c:	fd5ff06f          	j	80004600 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004630:	01813083          	ld	ra,24(sp)
    80004634:	01013403          	ld	s0,16(sp)
    80004638:	00813483          	ld	s1,8(sp)
    8000463c:	00013903          	ld	s2,0(sp)
    80004640:	02010113          	addi	sp,sp,32
    80004644:	00008067          	ret

0000000080004648 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004648:	fe010113          	addi	sp,sp,-32
    8000464c:	00113c23          	sd	ra,24(sp)
    80004650:	00813823          	sd	s0,16(sp)
    80004654:	00913423          	sd	s1,8(sp)
    80004658:	01213023          	sd	s2,0(sp)
    8000465c:	02010413          	addi	s0,sp,32
    80004660:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004664:	00000097          	auipc	ra,0x0
    80004668:	f28080e7          	jalr	-216(ra) # 8000458c <_ZN10KSemaphore15getFirstBlockedEv>
    8000466c:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004670:	00090513          	mv	a0,s2
    80004674:	00000097          	auipc	ra,0x0
    80004678:	f34080e7          	jalr	-204(ra) # 800045a8 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    8000467c:	00048863          	beqz	s1,8000468c <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004680:	00048513          	mv	a0,s1
    80004684:	fffff097          	auipc	ra,0xfffff
    80004688:	e34080e7          	jalr	-460(ra) # 800034b8 <_ZN9Scheduler3putEP3PCB>
    }
}
    8000468c:	01813083          	ld	ra,24(sp)
    80004690:	01013403          	ld	s0,16(sp)
    80004694:	00813483          	ld	s1,8(sp)
    80004698:	00013903          	ld	s2,0(sp)
    8000469c:	02010113          	addi	sp,sp,32
    800046a0:	00008067          	ret

00000000800046a4 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800046a4:	01052783          	lw	a5,16(a0)
    800046a8:	0017879b          	addiw	a5,a5,1
    800046ac:	0007871b          	sext.w	a4,a5
    800046b0:	00f52823          	sw	a5,16(a0)
    800046b4:	00e05663          	blez	a4,800046c0 <_ZN10KSemaphore6signalEv+0x1c>
}
    800046b8:	00000513          	li	a0,0
    800046bc:	00008067          	ret
uint64 KSemaphore::signal() {
    800046c0:	ff010113          	addi	sp,sp,-16
    800046c4:	00113423          	sd	ra,8(sp)
    800046c8:	00813023          	sd	s0,0(sp)
    800046cc:	01010413          	addi	s0,sp,16
        unblock();
    800046d0:	00000097          	auipc	ra,0x0
    800046d4:	f78080e7          	jalr	-136(ra) # 80004648 <_ZN10KSemaphore7unblockEv>
}
    800046d8:	00000513          	li	a0,0
    800046dc:	00813083          	ld	ra,8(sp)
    800046e0:	00013403          	ld	s0,0(sp)
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00008067          	ret

00000000800046ec <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800046ec:	ff010113          	addi	sp,sp,-16
    800046f0:	00113423          	sd	ra,8(sp)
    800046f4:	00813023          	sd	s0,0(sp)
    800046f8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800046fc:	00000097          	auipc	ra,0x0
    80004700:	cdc080e7          	jalr	-804(ra) # 800043d8 <_Z7kmallocm>
}
    80004704:	00813083          	ld	ra,8(sp)
    80004708:	00013403          	ld	s0,0(sp)
    8000470c:	01010113          	addi	sp,sp,16
    80004710:	00008067          	ret

0000000080004714 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004714:	fd010113          	addi	sp,sp,-48
    80004718:	02113423          	sd	ra,40(sp)
    8000471c:	02813023          	sd	s0,32(sp)
    80004720:	00913c23          	sd	s1,24(sp)
    80004724:	01213823          	sd	s2,16(sp)
    80004728:	01313423          	sd	s3,8(sp)
    8000472c:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004730:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004734:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004738:	01800513          	li	a0,24
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	fb0080e7          	jalr	-80(ra) # 800046ec <_ZN10KSemaphorenwEm>
    80004744:	00050493          	mv	s1,a0
    80004748:	0009859b          	sext.w	a1,s3
    8000474c:	00000097          	auipc	ra,0x0
    80004750:	d50080e7          	jalr	-688(ra) # 8000449c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80004754:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004758:	02048263          	beqz	s1,8000477c <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    8000475c:	00000513          	li	a0,0
}
    80004760:	02813083          	ld	ra,40(sp)
    80004764:	02013403          	ld	s0,32(sp)
    80004768:	01813483          	ld	s1,24(sp)
    8000476c:	01013903          	ld	s2,16(sp)
    80004770:	00813983          	ld	s3,8(sp)
    80004774:	03010113          	addi	sp,sp,48
    80004778:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000477c:	fff00513          	li	a0,-1
    80004780:	fe1ff06f          	j	80004760 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004784 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004784:	ff010113          	addi	sp,sp,-16
    80004788:	00113423          	sd	ra,8(sp)
    8000478c:	00813023          	sd	s0,0(sp)
    80004790:	01010413          	addi	s0,sp,16
    kfree(p);
    80004794:	00000097          	auipc	ra,0x0
    80004798:	ca8080e7          	jalr	-856(ra) # 8000443c <_Z5kfreePv>
}
    8000479c:	00813083          	ld	ra,8(sp)
    800047a0:	00013403          	ld	s0,0(sp)
    800047a4:	01010113          	addi	sp,sp,16
    800047a8:	00008067          	ret

00000000800047ac <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800047ac:	fe010113          	addi	sp,sp,-32
    800047b0:	00113c23          	sd	ra,24(sp)
    800047b4:	00813823          	sd	s0,16(sp)
    800047b8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047bc:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	d84080e7          	jalr	-636(ra) # 80004544 <_ZN10KSemaphore4waitEv>
    800047c8:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800047cc:	fe843783          	ld	a5,-24(s0)
    800047d0:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	828080e7          	jalr	-2008(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    800047dc:	01813083          	ld	ra,24(sp)
    800047e0:	01013403          	ld	s0,16(sp)
    800047e4:	02010113          	addi	sp,sp,32
    800047e8:	00008067          	ret

00000000800047ec <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    800047ec:	fe010113          	addi	sp,sp,-32
    800047f0:	00113c23          	sd	ra,24(sp)
    800047f4:	00813823          	sd	s0,16(sp)
    800047f8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047fc:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004800:	00000097          	auipc	ra,0x0
    80004804:	ea4080e7          	jalr	-348(ra) # 800046a4 <_ZN10KSemaphore6signalEv>
    80004808:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000480c:	fe843783          	ld	a5,-24(s0)
    80004810:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004814:	fffff097          	auipc	ra,0xfffff
    80004818:	7e8080e7          	jalr	2024(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000481c:	01813083          	ld	ra,24(sp)
    80004820:	01013403          	ld	s0,16(sp)
    80004824:	02010113          	addi	sp,sp,32
    80004828:	00008067          	ret

000000008000482c <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    8000482c:	fe010113          	addi	sp,sp,-32
    80004830:	00113c23          	sd	ra,24(sp)
    80004834:	00813823          	sd	s0,16(sp)
    80004838:	00913423          	sd	s1,8(sp)
    8000483c:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004840:	00058493          	mv	s1,a1
    delete kSem;
    80004844:	00048e63          	beqz	s1,80004860 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004848:	00048513          	mv	a0,s1
    8000484c:	00000097          	auipc	ra,0x0
    80004850:	d98080e7          	jalr	-616(ra) # 800045e4 <_ZN10KSemaphoreD1Ev>
    80004854:	00048513          	mv	a0,s1
    80004858:	00000097          	auipc	ra,0x0
    8000485c:	f2c080e7          	jalr	-212(ra) # 80004784 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004860:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004864:	fffff097          	auipc	ra,0xfffff
    80004868:	798080e7          	jalr	1944(ra) # 80003ffc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000486c:	01813083          	ld	ra,24(sp)
    80004870:	01013403          	ld	s0,16(sp)
    80004874:	00813483          	ld	s1,8(sp)
    80004878:	02010113          	addi	sp,sp,32
    8000487c:	00008067          	ret

0000000080004880 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80004880:	fe010113          	addi	sp,sp,-32
    80004884:	00113c23          	sd	ra,24(sp)
    80004888:	00813823          	sd	s0,16(sp)
    8000488c:	00913423          	sd	s1,8(sp)
    80004890:	01213023          	sd	s2,0(sp)
    80004894:	02010413          	addi	s0,sp,32
    80004898:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000489c:	00000913          	li	s2,0
    800048a0:	00c0006f          	j	800048ac <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	a90080e7          	jalr	-1392(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	c64080e7          	jalr	-924(ra) # 80001510 <getc>
    800048b4:	0005059b          	sext.w	a1,a0
    800048b8:	07100793          	li	a5,113
    800048bc:	02f58a63          	beq	a1,a5,800048f0 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800048c0:	0084b503          	ld	a0,8(s1)
    800048c4:	00002097          	auipc	ra,0x2
    800048c8:	c94080e7          	jalr	-876(ra) # 80006558 <_ZN6Buffer3putEi>
        i++;
    800048cc:	0019071b          	addiw	a4,s2,1
    800048d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048d4:	0004a683          	lw	a3,0(s1)
    800048d8:	0026979b          	slliw	a5,a3,0x2
    800048dc:	00d787bb          	addw	a5,a5,a3
    800048e0:	0017979b          	slliw	a5,a5,0x1
    800048e4:	02f767bb          	remw	a5,a4,a5
    800048e8:	fc0792e3          	bnez	a5,800048ac <_Z16producerKeyboardPv+0x2c>
    800048ec:	fb9ff06f          	j	800048a4 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800048f0:	00100793          	li	a5,1
    800048f4:	00007717          	auipc	a4,0x7
    800048f8:	38f72a23          	sw	a5,916(a4) # 8000bc88 <threadEnd>

    delete data->buffer;
    800048fc:	0084b903          	ld	s2,8(s1)
    80004900:	00090e63          	beqz	s2,8000491c <_Z16producerKeyboardPv+0x9c>
    80004904:	00090513          	mv	a0,s2
    80004908:	00002097          	auipc	ra,0x2
    8000490c:	b94080e7          	jalr	-1132(ra) # 8000649c <_ZN6BufferD1Ev>
    80004910:	00090513          	mv	a0,s2
    80004914:	fffff097          	auipc	ra,0xfffff
    80004918:	dc0080e7          	jalr	-576(ra) # 800036d4 <_ZdlPv>

    sem_signal(data->wait);
    8000491c:	0104b503          	ld	a0,16(s1)
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	aec080e7          	jalr	-1300(ra) # 8000140c <sem_signal>
}
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	00013903          	ld	s2,0(sp)
    80004938:	02010113          	addi	sp,sp,32
    8000493c:	00008067          	ret

0000000080004940 <_Z8producerPv>:

void producer(void *arg) {
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	01213023          	sd	s2,0(sp)
    80004954:	02010413          	addi	s0,sp,32
    80004958:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000495c:	00000913          	li	s2,0
    80004960:	00c0006f          	j	8000496c <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	9d0080e7          	jalr	-1584(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    8000496c:	00007797          	auipc	a5,0x7
    80004970:	31c7a783          	lw	a5,796(a5) # 8000bc88 <threadEnd>
    80004974:	02079e63          	bnez	a5,800049b0 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004978:	0004a583          	lw	a1,0(s1)
    8000497c:	0305859b          	addiw	a1,a1,48
    80004980:	0084b503          	ld	a0,8(s1)
    80004984:	00002097          	auipc	ra,0x2
    80004988:	bd4080e7          	jalr	-1068(ra) # 80006558 <_ZN6Buffer3putEi>
        i++;
    8000498c:	0019071b          	addiw	a4,s2,1
    80004990:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004994:	0004a683          	lw	a3,0(s1)
    80004998:	0026979b          	slliw	a5,a3,0x2
    8000499c:	00d787bb          	addw	a5,a5,a3
    800049a0:	0017979b          	slliw	a5,a5,0x1
    800049a4:	02f767bb          	remw	a5,a4,a5
    800049a8:	fc0792e3          	bnez	a5,8000496c <_Z8producerPv+0x2c>
    800049ac:	fb9ff06f          	j	80004964 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800049b0:	0104b503          	ld	a0,16(s1)
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	a58080e7          	jalr	-1448(ra) # 8000140c <sem_signal>
}
    800049bc:	01813083          	ld	ra,24(sp)
    800049c0:	01013403          	ld	s0,16(sp)
    800049c4:	00813483          	ld	s1,8(sp)
    800049c8:	00013903          	ld	s2,0(sp)
    800049cc:	02010113          	addi	sp,sp,32
    800049d0:	00008067          	ret

00000000800049d4 <_Z8consumerPv>:

void consumer(void *arg) {
    800049d4:	fd010113          	addi	sp,sp,-48
    800049d8:	02113423          	sd	ra,40(sp)
    800049dc:	02813023          	sd	s0,32(sp)
    800049e0:	00913c23          	sd	s1,24(sp)
    800049e4:	01213823          	sd	s2,16(sp)
    800049e8:	01313423          	sd	s3,8(sp)
    800049ec:	03010413          	addi	s0,sp,48
    800049f0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    800049f4:	00000993          	li	s3,0
    800049f8:	01c0006f          	j	80004a14 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	938080e7          	jalr	-1736(ra) # 80001334 <thread_dispatch>
    80004a04:	0500006f          	j	80004a54 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004a08:	00a00513          	li	a0,10
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	b2c080e7          	jalr	-1236(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004a14:	00007797          	auipc	a5,0x7
    80004a18:	2747a783          	lw	a5,628(a5) # 8000bc88 <threadEnd>
    80004a1c:	04079463          	bnez	a5,80004a64 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004a20:	00893503          	ld	a0,8(s2)
    80004a24:	00002097          	auipc	ra,0x2
    80004a28:	bc4080e7          	jalr	-1084(ra) # 800065e8 <_ZN6Buffer3getEv>
        i++;
    80004a2c:	0019849b          	addiw	s1,s3,1
    80004a30:	0004899b          	sext.w	s3,s1
        putc(key);
    80004a34:	0ff57513          	andi	a0,a0,255
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	b00080e7          	jalr	-1280(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004a40:	00092703          	lw	a4,0(s2)
    80004a44:	0027179b          	slliw	a5,a4,0x2
    80004a48:	00e787bb          	addw	a5,a5,a4
    80004a4c:	02f4e7bb          	remw	a5,s1,a5
    80004a50:	fa0786e3          	beqz	a5,800049fc <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004a54:	05000793          	li	a5,80
    80004a58:	02f4e4bb          	remw	s1,s1,a5
    80004a5c:	fa049ce3          	bnez	s1,80004a14 <_Z8consumerPv+0x40>
    80004a60:	fa9ff06f          	j	80004a08 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004a64:	01093503          	ld	a0,16(s2)
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	9a4080e7          	jalr	-1628(ra) # 8000140c <sem_signal>
}
    80004a70:	02813083          	ld	ra,40(sp)
    80004a74:	02013403          	ld	s0,32(sp)
    80004a78:	01813483          	ld	s1,24(sp)
    80004a7c:	01013903          	ld	s2,16(sp)
    80004a80:	00813983          	ld	s3,8(sp)
    80004a84:	03010113          	addi	sp,sp,48
    80004a88:	00008067          	ret

0000000080004a8c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004a8c:	f9010113          	addi	sp,sp,-112
    80004a90:	06113423          	sd	ra,104(sp)
    80004a94:	06813023          	sd	s0,96(sp)
    80004a98:	04913c23          	sd	s1,88(sp)
    80004a9c:	05213823          	sd	s2,80(sp)
    80004aa0:	05313423          	sd	s3,72(sp)
    80004aa4:	05413023          	sd	s4,64(sp)
    80004aa8:	03513c23          	sd	s5,56(sp)
    80004aac:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004ab0:	00005517          	auipc	a0,0x5
    80004ab4:	90850513          	addi	a0,a0,-1784 # 800093b8 <_ZZN5Riscv12printIntegerEmE6digits+0x18>
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	234080e7          	jalr	564(ra) # 80005cec <_Z11printStringPKc>
    getString(input, 30);
    80004ac0:	01e00593          	li	a1,30
    80004ac4:	fa040493          	addi	s1,s0,-96
    80004ac8:	00048513          	mv	a0,s1
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	29c080e7          	jalr	668(ra) # 80005d68 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ad4:	00048513          	mv	a0,s1
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	35c080e7          	jalr	860(ra) # 80005e34 <_Z11stringToIntPKc>
    80004ae0:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004ae4:	00005517          	auipc	a0,0x5
    80004ae8:	8f450513          	addi	a0,a0,-1804 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    80004aec:	00001097          	auipc	ra,0x1
    80004af0:	200080e7          	jalr	512(ra) # 80005cec <_Z11printStringPKc>
    getString(input, 30);
    80004af4:	01e00593          	li	a1,30
    80004af8:	00048513          	mv	a0,s1
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	26c080e7          	jalr	620(ra) # 80005d68 <_Z9getStringPci>
    n = stringToInt(input);
    80004b04:	00048513          	mv	a0,s1
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	32c080e7          	jalr	812(ra) # 80005e34 <_Z11stringToIntPKc>
    80004b10:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004b14:	00005517          	auipc	a0,0x5
    80004b18:	8e450513          	addi	a0,a0,-1820 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	1d0080e7          	jalr	464(ra) # 80005cec <_Z11printStringPKc>
    80004b24:	00000613          	li	a2,0
    80004b28:	00a00593          	li	a1,10
    80004b2c:	00090513          	mv	a0,s2
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	354080e7          	jalr	852(ra) # 80005e84 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004b38:	00005517          	auipc	a0,0x5
    80004b3c:	8d850513          	addi	a0,a0,-1832 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    80004b40:	00001097          	auipc	ra,0x1
    80004b44:	1ac080e7          	jalr	428(ra) # 80005cec <_Z11printStringPKc>
    80004b48:	00000613          	li	a2,0
    80004b4c:	00a00593          	li	a1,10
    80004b50:	00048513          	mv	a0,s1
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	330080e7          	jalr	816(ra) # 80005e84 <_Z8printIntiii>
    printString(".\n");
    80004b5c:	00004517          	auipc	a0,0x4
    80004b60:	6f450513          	addi	a0,a0,1780 # 80009250 <CONSOLE_STATUS+0x240>
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	188080e7          	jalr	392(ra) # 80005cec <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004b6c:	03800513          	li	a0,56
    80004b70:	fffff097          	auipc	ra,0xfffff
    80004b74:	b3c080e7          	jalr	-1220(ra) # 800036ac <_Znwm>
    80004b78:	00050a13          	mv	s4,a0
    80004b7c:	00048593          	mv	a1,s1
    80004b80:	00002097          	auipc	ra,0x2
    80004b84:	894080e7          	jalr	-1900(ra) # 80006414 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004b88:	00000593          	li	a1,0
    80004b8c:	00007517          	auipc	a0,0x7
    80004b90:	10450513          	addi	a0,a0,260 # 8000bc90 <waitForAll>
    80004b94:	ffffc097          	auipc	ra,0xffffc
    80004b98:	7e8080e7          	jalr	2024(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004b9c:	00391793          	slli	a5,s2,0x3
    80004ba0:	00f78793          	addi	a5,a5,15
    80004ba4:	ff07f793          	andi	a5,a5,-16
    80004ba8:	40f10133          	sub	sp,sp,a5
    80004bac:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004bb0:	0019071b          	addiw	a4,s2,1
    80004bb4:	00171793          	slli	a5,a4,0x1
    80004bb8:	00e787b3          	add	a5,a5,a4
    80004bbc:	00379793          	slli	a5,a5,0x3
    80004bc0:	00f78793          	addi	a5,a5,15
    80004bc4:	ff07f793          	andi	a5,a5,-16
    80004bc8:	40f10133          	sub	sp,sp,a5
    80004bcc:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004bd0:	00191613          	slli	a2,s2,0x1
    80004bd4:	012607b3          	add	a5,a2,s2
    80004bd8:	00379793          	slli	a5,a5,0x3
    80004bdc:	00f987b3          	add	a5,s3,a5
    80004be0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004be4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004be8:	00007717          	auipc	a4,0x7
    80004bec:	0a873703          	ld	a4,168(a4) # 8000bc90 <waitForAll>
    80004bf0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004bf4:	00078613          	mv	a2,a5
    80004bf8:	00000597          	auipc	a1,0x0
    80004bfc:	ddc58593          	addi	a1,a1,-548 # 800049d4 <_Z8consumerPv>
    80004c00:	f9840513          	addi	a0,s0,-104
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	6b0080e7          	jalr	1712(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004c0c:	00000493          	li	s1,0
    80004c10:	0280006f          	j	80004c38 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004c14:	00000597          	auipc	a1,0x0
    80004c18:	c6c58593          	addi	a1,a1,-916 # 80004880 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004c1c:	00179613          	slli	a2,a5,0x1
    80004c20:	00f60633          	add	a2,a2,a5
    80004c24:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004c28:	00c98633          	add	a2,s3,a2
    80004c2c:	ffffc097          	auipc	ra,0xffffc
    80004c30:	688080e7          	jalr	1672(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004c34:	0014849b          	addiw	s1,s1,1
    80004c38:	0524d263          	bge	s1,s2,80004c7c <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004c3c:	00149793          	slli	a5,s1,0x1
    80004c40:	009787b3          	add	a5,a5,s1
    80004c44:	00379793          	slli	a5,a5,0x3
    80004c48:	00f987b3          	add	a5,s3,a5
    80004c4c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004c50:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004c54:	00007717          	auipc	a4,0x7
    80004c58:	03c73703          	ld	a4,60(a4) # 8000bc90 <waitForAll>
    80004c5c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004c60:	00048793          	mv	a5,s1
    80004c64:	00349513          	slli	a0,s1,0x3
    80004c68:	00aa8533          	add	a0,s5,a0
    80004c6c:	fa9054e3          	blez	s1,80004c14 <_Z22producerConsumer_C_APIv+0x188>
    80004c70:	00000597          	auipc	a1,0x0
    80004c74:	cd058593          	addi	a1,a1,-816 # 80004940 <_Z8producerPv>
    80004c78:	fa5ff06f          	j	80004c1c <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004c7c:	ffffc097          	auipc	ra,0xffffc
    80004c80:	6b8080e7          	jalr	1720(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004c84:	00000493          	li	s1,0
    80004c88:	00994e63          	blt	s2,s1,80004ca4 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004c8c:	00007517          	auipc	a0,0x7
    80004c90:	00453503          	ld	a0,4(a0) # 8000bc90 <waitForAll>
    80004c94:	ffffc097          	auipc	ra,0xffffc
    80004c98:	74c080e7          	jalr	1868(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004c9c:	0014849b          	addiw	s1,s1,1
    80004ca0:	fe9ff06f          	j	80004c88 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004ca4:	00007517          	auipc	a0,0x7
    80004ca8:	fec53503          	ld	a0,-20(a0) # 8000bc90 <waitForAll>
    80004cac:	ffffc097          	auipc	ra,0xffffc
    80004cb0:	708080e7          	jalr	1800(ra) # 800013b4 <sem_close>
    80004cb4:	f9040113          	addi	sp,s0,-112
    80004cb8:	06813083          	ld	ra,104(sp)
    80004cbc:	06013403          	ld	s0,96(sp)
    80004cc0:	05813483          	ld	s1,88(sp)
    80004cc4:	05013903          	ld	s2,80(sp)
    80004cc8:	04813983          	ld	s3,72(sp)
    80004ccc:	04013a03          	ld	s4,64(sp)
    80004cd0:	03813a83          	ld	s5,56(sp)
    80004cd4:	07010113          	addi	sp,sp,112
    80004cd8:	00008067          	ret
    80004cdc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004ce0:	000a0513          	mv	a0,s4
    80004ce4:	fffff097          	auipc	ra,0xfffff
    80004ce8:	9f0080e7          	jalr	-1552(ra) # 800036d4 <_ZdlPv>
    80004cec:	00048513          	mv	a0,s1
    80004cf0:	00008097          	auipc	ra,0x8
    80004cf4:	088080e7          	jalr	136(ra) # 8000cd78 <_Unwind_Resume>

0000000080004cf8 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004cf8:	fe010113          	addi	sp,sp,-32
    80004cfc:	00113c23          	sd	ra,24(sp)
    80004d00:	00813823          	sd	s0,16(sp)
    80004d04:	00913423          	sd	s1,8(sp)
    80004d08:	01213023          	sd	s2,0(sp)
    80004d0c:	02010413          	addi	s0,sp,32
    80004d10:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d14:	00100793          	li	a5,1
    80004d18:	02a7f863          	bgeu	a5,a0,80004d48 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d1c:	00a00793          	li	a5,10
    80004d20:	02f577b3          	remu	a5,a0,a5
    80004d24:	02078e63          	beqz	a5,80004d60 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d28:	fff48513          	addi	a0,s1,-1
    80004d2c:	00000097          	auipc	ra,0x0
    80004d30:	fcc080e7          	jalr	-52(ra) # 80004cf8 <_ZL9fibonaccim>
    80004d34:	00050913          	mv	s2,a0
    80004d38:	ffe48513          	addi	a0,s1,-2
    80004d3c:	00000097          	auipc	ra,0x0
    80004d40:	fbc080e7          	jalr	-68(ra) # 80004cf8 <_ZL9fibonaccim>
    80004d44:	00a90533          	add	a0,s2,a0
}
    80004d48:	01813083          	ld	ra,24(sp)
    80004d4c:	01013403          	ld	s0,16(sp)
    80004d50:	00813483          	ld	s1,8(sp)
    80004d54:	00013903          	ld	s2,0(sp)
    80004d58:	02010113          	addi	sp,sp,32
    80004d5c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d60:	ffffc097          	auipc	ra,0xffffc
    80004d64:	5d4080e7          	jalr	1492(ra) # 80001334 <thread_dispatch>
    80004d68:	fc1ff06f          	j	80004d28 <_ZL9fibonaccim+0x30>

0000000080004d6c <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004d6c:	fe010113          	addi	sp,sp,-32
    80004d70:	00113c23          	sd	ra,24(sp)
    80004d74:	00813823          	sd	s0,16(sp)
    80004d78:	00913423          	sd	s1,8(sp)
    80004d7c:	01213023          	sd	s2,0(sp)
    80004d80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d84:	00000913          	li	s2,0
    80004d88:	0380006f          	j	80004dc0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004d8c:	ffffc097          	auipc	ra,0xffffc
    80004d90:	5a8080e7          	jalr	1448(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004d94:	00148493          	addi	s1,s1,1
    80004d98:	000027b7          	lui	a5,0x2
    80004d9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004da0:	0097ee63          	bltu	a5,s1,80004dbc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004da4:	00000713          	li	a4,0
    80004da8:	000077b7          	lui	a5,0x7
    80004dac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004db0:	fce7eee3          	bltu	a5,a4,80004d8c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004db4:	00170713          	addi	a4,a4,1
    80004db8:	ff1ff06f          	j	80004da8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004dbc:	00190913          	addi	s2,s2,1
    80004dc0:	00900793          	li	a5,9
    80004dc4:	0527e063          	bltu	a5,s2,80004e04 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004dc8:	00004517          	auipc	a0,0x4
    80004dcc:	66050513          	addi	a0,a0,1632 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	f1c080e7          	jalr	-228(ra) # 80005cec <_Z11printStringPKc>
    80004dd8:	00000613          	li	a2,0
    80004ddc:	00a00593          	li	a1,10
    80004de0:	0009051b          	sext.w	a0,s2
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	0a0080e7          	jalr	160(ra) # 80005e84 <_Z8printIntiii>
    80004dec:	00004517          	auipc	a0,0x4
    80004df0:	31450513          	addi	a0,a0,788 # 80009100 <CONSOLE_STATUS+0xf0>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	ef8080e7          	jalr	-264(ra) # 80005cec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004dfc:	00000493          	li	s1,0
    80004e00:	f99ff06f          	j	80004d98 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004e04:	00004517          	auipc	a0,0x4
    80004e08:	62c50513          	addi	a0,a0,1580 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	ee0080e7          	jalr	-288(ra) # 80005cec <_Z11printStringPKc>
    finishedA = true;
    80004e14:	00100793          	li	a5,1
    80004e18:	00007717          	auipc	a4,0x7
    80004e1c:	e8f70023          	sb	a5,-384(a4) # 8000bc98 <_ZL9finishedA>
}
    80004e20:	01813083          	ld	ra,24(sp)
    80004e24:	01013403          	ld	s0,16(sp)
    80004e28:	00813483          	ld	s1,8(sp)
    80004e2c:	00013903          	ld	s2,0(sp)
    80004e30:	02010113          	addi	sp,sp,32
    80004e34:	00008067          	ret

0000000080004e38 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004e38:	fe010113          	addi	sp,sp,-32
    80004e3c:	00113c23          	sd	ra,24(sp)
    80004e40:	00813823          	sd	s0,16(sp)
    80004e44:	00913423          	sd	s1,8(sp)
    80004e48:	01213023          	sd	s2,0(sp)
    80004e4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e50:	00000913          	li	s2,0
    80004e54:	0380006f          	j	80004e8c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004e58:	ffffc097          	auipc	ra,0xffffc
    80004e5c:	4dc080e7          	jalr	1244(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004e60:	00148493          	addi	s1,s1,1
    80004e64:	000027b7          	lui	a5,0x2
    80004e68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e6c:	0097ee63          	bltu	a5,s1,80004e88 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e70:	00000713          	li	a4,0
    80004e74:	000077b7          	lui	a5,0x7
    80004e78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e7c:	fce7eee3          	bltu	a5,a4,80004e58 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004e80:	00170713          	addi	a4,a4,1
    80004e84:	ff1ff06f          	j	80004e74 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e88:	00190913          	addi	s2,s2,1
    80004e8c:	00f00793          	li	a5,15
    80004e90:	0527e063          	bltu	a5,s2,80004ed0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e94:	00004517          	auipc	a0,0x4
    80004e98:	5ac50513          	addi	a0,a0,1452 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80004e9c:	00001097          	auipc	ra,0x1
    80004ea0:	e50080e7          	jalr	-432(ra) # 80005cec <_Z11printStringPKc>
    80004ea4:	00000613          	li	a2,0
    80004ea8:	00a00593          	li	a1,10
    80004eac:	0009051b          	sext.w	a0,s2
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	fd4080e7          	jalr	-44(ra) # 80005e84 <_Z8printIntiii>
    80004eb8:	00004517          	auipc	a0,0x4
    80004ebc:	24850513          	addi	a0,a0,584 # 80009100 <CONSOLE_STATUS+0xf0>
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	e2c080e7          	jalr	-468(ra) # 80005cec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ec8:	00000493          	li	s1,0
    80004ecc:	f99ff06f          	j	80004e64 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004ed0:	00004517          	auipc	a0,0x4
    80004ed4:	57850513          	addi	a0,a0,1400 # 80009448 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80004ed8:	00001097          	auipc	ra,0x1
    80004edc:	e14080e7          	jalr	-492(ra) # 80005cec <_Z11printStringPKc>
    finishedB = true;
    80004ee0:	00100793          	li	a5,1
    80004ee4:	00007717          	auipc	a4,0x7
    80004ee8:	daf70aa3          	sb	a5,-587(a4) # 8000bc99 <_ZL9finishedB>
    thread_dispatch();
    80004eec:	ffffc097          	auipc	ra,0xffffc
    80004ef0:	448080e7          	jalr	1096(ra) # 80001334 <thread_dispatch>
}
    80004ef4:	01813083          	ld	ra,24(sp)
    80004ef8:	01013403          	ld	s0,16(sp)
    80004efc:	00813483          	ld	s1,8(sp)
    80004f00:	00013903          	ld	s2,0(sp)
    80004f04:	02010113          	addi	sp,sp,32
    80004f08:	00008067          	ret

0000000080004f0c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004f0c:	fe010113          	addi	sp,sp,-32
    80004f10:	00113c23          	sd	ra,24(sp)
    80004f14:	00813823          	sd	s0,16(sp)
    80004f18:	00913423          	sd	s1,8(sp)
    80004f1c:	01213023          	sd	s2,0(sp)
    80004f20:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f24:	00000493          	li	s1,0
    80004f28:	0400006f          	j	80004f68 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004f2c:	00004517          	auipc	a0,0x4
    80004f30:	52c50513          	addi	a0,a0,1324 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	db8080e7          	jalr	-584(ra) # 80005cec <_Z11printStringPKc>
    80004f3c:	00000613          	li	a2,0
    80004f40:	00a00593          	li	a1,10
    80004f44:	00048513          	mv	a0,s1
    80004f48:	00001097          	auipc	ra,0x1
    80004f4c:	f3c080e7          	jalr	-196(ra) # 80005e84 <_Z8printIntiii>
    80004f50:	00004517          	auipc	a0,0x4
    80004f54:	1b050513          	addi	a0,a0,432 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	d94080e7          	jalr	-620(ra) # 80005cec <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f60:	0014849b          	addiw	s1,s1,1
    80004f64:	0ff4f493          	andi	s1,s1,255
    80004f68:	00200793          	li	a5,2
    80004f6c:	fc97f0e3          	bgeu	a5,s1,80004f2c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004f70:	00004517          	auipc	a0,0x4
    80004f74:	4f050513          	addi	a0,a0,1264 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	d74080e7          	jalr	-652(ra) # 80005cec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f80:	00700313          	li	t1,7
    thread_dispatch();
    80004f84:	ffffc097          	auipc	ra,0xffffc
    80004f88:	3b0080e7          	jalr	944(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f8c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004f90:	00004517          	auipc	a0,0x4
    80004f94:	4e050513          	addi	a0,a0,1248 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	d54080e7          	jalr	-684(ra) # 80005cec <_Z11printStringPKc>
    80004fa0:	00000613          	li	a2,0
    80004fa4:	00a00593          	li	a1,10
    80004fa8:	0009051b          	sext.w	a0,s2
    80004fac:	00001097          	auipc	ra,0x1
    80004fb0:	ed8080e7          	jalr	-296(ra) # 80005e84 <_Z8printIntiii>
    80004fb4:	00004517          	auipc	a0,0x4
    80004fb8:	14c50513          	addi	a0,a0,332 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fbc:	00001097          	auipc	ra,0x1
    80004fc0:	d30080e7          	jalr	-720(ra) # 80005cec <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004fc4:	00c00513          	li	a0,12
    80004fc8:	00000097          	auipc	ra,0x0
    80004fcc:	d30080e7          	jalr	-720(ra) # 80004cf8 <_ZL9fibonaccim>
    80004fd0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004fd4:	00004517          	auipc	a0,0x4
    80004fd8:	4a450513          	addi	a0,a0,1188 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xd8>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	d10080e7          	jalr	-752(ra) # 80005cec <_Z11printStringPKc>
    80004fe4:	00000613          	li	a2,0
    80004fe8:	00a00593          	li	a1,10
    80004fec:	0009051b          	sext.w	a0,s2
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	e94080e7          	jalr	-364(ra) # 80005e84 <_Z8printIntiii>
    80004ff8:	00004517          	auipc	a0,0x4
    80004ffc:	10850513          	addi	a0,a0,264 # 80009100 <CONSOLE_STATUS+0xf0>
    80005000:	00001097          	auipc	ra,0x1
    80005004:	cec080e7          	jalr	-788(ra) # 80005cec <_Z11printStringPKc>
    80005008:	0400006f          	j	80005048 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000500c:	00004517          	auipc	a0,0x4
    80005010:	44c50513          	addi	a0,a0,1100 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80005014:	00001097          	auipc	ra,0x1
    80005018:	cd8080e7          	jalr	-808(ra) # 80005cec <_Z11printStringPKc>
    8000501c:	00000613          	li	a2,0
    80005020:	00a00593          	li	a1,10
    80005024:	00048513          	mv	a0,s1
    80005028:	00001097          	auipc	ra,0x1
    8000502c:	e5c080e7          	jalr	-420(ra) # 80005e84 <_Z8printIntiii>
    80005030:	00004517          	auipc	a0,0x4
    80005034:	0d050513          	addi	a0,a0,208 # 80009100 <CONSOLE_STATUS+0xf0>
    80005038:	00001097          	auipc	ra,0x1
    8000503c:	cb4080e7          	jalr	-844(ra) # 80005cec <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005040:	0014849b          	addiw	s1,s1,1
    80005044:	0ff4f493          	andi	s1,s1,255
    80005048:	00500793          	li	a5,5
    8000504c:	fc97f0e3          	bgeu	a5,s1,8000500c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80005050:	00004517          	auipc	a0,0x4
    80005054:	3e050513          	addi	a0,a0,992 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80005058:	00001097          	auipc	ra,0x1
    8000505c:	c94080e7          	jalr	-876(ra) # 80005cec <_Z11printStringPKc>
    finishedC = true;
    80005060:	00100793          	li	a5,1
    80005064:	00007717          	auipc	a4,0x7
    80005068:	c2f70b23          	sb	a5,-970(a4) # 8000bc9a <_ZL9finishedC>
    thread_dispatch();
    8000506c:	ffffc097          	auipc	ra,0xffffc
    80005070:	2c8080e7          	jalr	712(ra) # 80001334 <thread_dispatch>
}
    80005074:	01813083          	ld	ra,24(sp)
    80005078:	01013403          	ld	s0,16(sp)
    8000507c:	00813483          	ld	s1,8(sp)
    80005080:	00013903          	ld	s2,0(sp)
    80005084:	02010113          	addi	sp,sp,32
    80005088:	00008067          	ret

000000008000508c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000508c:	fe010113          	addi	sp,sp,-32
    80005090:	00113c23          	sd	ra,24(sp)
    80005094:	00813823          	sd	s0,16(sp)
    80005098:	00913423          	sd	s1,8(sp)
    8000509c:	01213023          	sd	s2,0(sp)
    800050a0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800050a4:	00a00493          	li	s1,10
    800050a8:	0400006f          	j	800050e8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050ac:	00004517          	auipc	a0,0x4
    800050b0:	3dc50513          	addi	a0,a0,988 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	c38080e7          	jalr	-968(ra) # 80005cec <_Z11printStringPKc>
    800050bc:	00000613          	li	a2,0
    800050c0:	00a00593          	li	a1,10
    800050c4:	00048513          	mv	a0,s1
    800050c8:	00001097          	auipc	ra,0x1
    800050cc:	dbc080e7          	jalr	-580(ra) # 80005e84 <_Z8printIntiii>
    800050d0:	00004517          	auipc	a0,0x4
    800050d4:	03050513          	addi	a0,a0,48 # 80009100 <CONSOLE_STATUS+0xf0>
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	c14080e7          	jalr	-1004(ra) # 80005cec <_Z11printStringPKc>
    for (; i < 13; i++) {
    800050e0:	0014849b          	addiw	s1,s1,1
    800050e4:	0ff4f493          	andi	s1,s1,255
    800050e8:	00c00793          	li	a5,12
    800050ec:	fc97f0e3          	bgeu	a5,s1,800050ac <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800050f0:	00004517          	auipc	a0,0x4
    800050f4:	3a050513          	addi	a0,a0,928 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    800050f8:	00001097          	auipc	ra,0x1
    800050fc:	bf4080e7          	jalr	-1036(ra) # 80005cec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005100:	00500313          	li	t1,5
    thread_dispatch();
    80005104:	ffffc097          	auipc	ra,0xffffc
    80005108:	230080e7          	jalr	560(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    8000510c:	01000513          	li	a0,16
    80005110:	00000097          	auipc	ra,0x0
    80005114:	be8080e7          	jalr	-1048(ra) # 80004cf8 <_ZL9fibonaccim>
    80005118:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000511c:	00004517          	auipc	a0,0x4
    80005120:	38450513          	addi	a0,a0,900 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80005124:	00001097          	auipc	ra,0x1
    80005128:	bc8080e7          	jalr	-1080(ra) # 80005cec <_Z11printStringPKc>
    8000512c:	00000613          	li	a2,0
    80005130:	00a00593          	li	a1,10
    80005134:	0009051b          	sext.w	a0,s2
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	d4c080e7          	jalr	-692(ra) # 80005e84 <_Z8printIntiii>
    80005140:	00004517          	auipc	a0,0x4
    80005144:	fc050513          	addi	a0,a0,-64 # 80009100 <CONSOLE_STATUS+0xf0>
    80005148:	00001097          	auipc	ra,0x1
    8000514c:	ba4080e7          	jalr	-1116(ra) # 80005cec <_Z11printStringPKc>
    80005150:	0400006f          	j	80005190 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005154:	00004517          	auipc	a0,0x4
    80005158:	33450513          	addi	a0,a0,820 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	b90080e7          	jalr	-1136(ra) # 80005cec <_Z11printStringPKc>
    80005164:	00000613          	li	a2,0
    80005168:	00a00593          	li	a1,10
    8000516c:	00048513          	mv	a0,s1
    80005170:	00001097          	auipc	ra,0x1
    80005174:	d14080e7          	jalr	-748(ra) # 80005e84 <_Z8printIntiii>
    80005178:	00004517          	auipc	a0,0x4
    8000517c:	f8850513          	addi	a0,a0,-120 # 80009100 <CONSOLE_STATUS+0xf0>
    80005180:	00001097          	auipc	ra,0x1
    80005184:	b6c080e7          	jalr	-1172(ra) # 80005cec <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005188:	0014849b          	addiw	s1,s1,1
    8000518c:	0ff4f493          	andi	s1,s1,255
    80005190:	00f00793          	li	a5,15
    80005194:	fc97f0e3          	bgeu	a5,s1,80005154 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80005198:	00004517          	auipc	a0,0x4
    8000519c:	31850513          	addi	a0,a0,792 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800051a0:	00001097          	auipc	ra,0x1
    800051a4:	b4c080e7          	jalr	-1204(ra) # 80005cec <_Z11printStringPKc>
    finishedD = true;
    800051a8:	00100793          	li	a5,1
    800051ac:	00007717          	auipc	a4,0x7
    800051b0:	aef707a3          	sb	a5,-1297(a4) # 8000bc9b <_ZL9finishedD>
    thread_dispatch();
    800051b4:	ffffc097          	auipc	ra,0xffffc
    800051b8:	180080e7          	jalr	384(ra) # 80001334 <thread_dispatch>
}
    800051bc:	01813083          	ld	ra,24(sp)
    800051c0:	01013403          	ld	s0,16(sp)
    800051c4:	00813483          	ld	s1,8(sp)
    800051c8:	00013903          	ld	s2,0(sp)
    800051cc:	02010113          	addi	sp,sp,32
    800051d0:	00008067          	ret

00000000800051d4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800051d4:	fc010113          	addi	sp,sp,-64
    800051d8:	02113c23          	sd	ra,56(sp)
    800051dc:	02813823          	sd	s0,48(sp)
    800051e0:	02913423          	sd	s1,40(sp)
    800051e4:	03213023          	sd	s2,32(sp)
    800051e8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    Riscv::printString("Got here\n");
    800051ec:	00004517          	auipc	a0,0x4
    800051f0:	2d450513          	addi	a0,a0,724 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800051f4:	fffff097          	auipc	ra,0xfffff
    800051f8:	918080e7          	jalr	-1768(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    threads[0] = new WorkerA();
    800051fc:	01000513          	li	a0,16
    80005200:	ffffe097          	auipc	ra,0xffffe
    80005204:	4ac080e7          	jalr	1196(ra) # 800036ac <_Znwm>
    80005208:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    8000520c:	ffffe097          	auipc	ra,0xffffe
    80005210:	670080e7          	jalr	1648(ra) # 8000387c <_ZN6ThreadC1Ev>
    80005214:	00007797          	auipc	a5,0x7
    80005218:	88c78793          	addi	a5,a5,-1908 # 8000baa0 <_ZTV7WorkerA+0x10>
    8000521c:	00f4b023          	sd	a5,0(s1)
    80005220:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80005224:	00004517          	auipc	a0,0x4
    80005228:	2ac50513          	addi	a0,a0,684 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    8000522c:	00001097          	auipc	ra,0x1
    80005230:	ac0080e7          	jalr	-1344(ra) # 80005cec <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80005234:	01000513          	li	a0,16
    80005238:	ffffe097          	auipc	ra,0xffffe
    8000523c:	474080e7          	jalr	1140(ra) # 800036ac <_Znwm>
    80005240:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80005244:	ffffe097          	auipc	ra,0xffffe
    80005248:	638080e7          	jalr	1592(ra) # 8000387c <_ZN6ThreadC1Ev>
    8000524c:	00007797          	auipc	a5,0x7
    80005250:	87c78793          	addi	a5,a5,-1924 # 8000bac8 <_ZTV7WorkerB+0x10>
    80005254:	00f4b023          	sd	a5,0(s1)
    80005258:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000525c:	00004517          	auipc	a0,0x4
    80005260:	28c50513          	addi	a0,a0,652 # 800094e8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005264:	00001097          	auipc	ra,0x1
    80005268:	a88080e7          	jalr	-1400(ra) # 80005cec <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000526c:	01000513          	li	a0,16
    80005270:	ffffe097          	auipc	ra,0xffffe
    80005274:	43c080e7          	jalr	1084(ra) # 800036ac <_Znwm>
    80005278:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    8000527c:	ffffe097          	auipc	ra,0xffffe
    80005280:	600080e7          	jalr	1536(ra) # 8000387c <_ZN6ThreadC1Ev>
    80005284:	00007797          	auipc	a5,0x7
    80005288:	86c78793          	addi	a5,a5,-1940 # 8000baf0 <_ZTV7WorkerC+0x10>
    8000528c:	00f4b023          	sd	a5,0(s1)
    80005290:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005294:	00004517          	auipc	a0,0x4
    80005298:	26c50513          	addi	a0,a0,620 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    8000529c:	00001097          	auipc	ra,0x1
    800052a0:	a50080e7          	jalr	-1456(ra) # 80005cec <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800052a4:	01000513          	li	a0,16
    800052a8:	ffffe097          	auipc	ra,0xffffe
    800052ac:	404080e7          	jalr	1028(ra) # 800036ac <_Znwm>
    800052b0:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    800052b4:	ffffe097          	auipc	ra,0xffffe
    800052b8:	5c8080e7          	jalr	1480(ra) # 8000387c <_ZN6ThreadC1Ev>
    800052bc:	00007797          	auipc	a5,0x7
    800052c0:	85c78793          	addi	a5,a5,-1956 # 8000bb18 <_ZTV7WorkerD+0x10>
    800052c4:	00f4b023          	sd	a5,0(s1)
    800052c8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800052cc:	00004517          	auipc	a0,0x4
    800052d0:	24c50513          	addi	a0,a0,588 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800052d4:	00001097          	auipc	ra,0x1
    800052d8:	a18080e7          	jalr	-1512(ra) # 80005cec <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800052dc:	00000493          	li	s1,0
    800052e0:	00300793          	li	a5,3
    800052e4:	0297ca63          	blt	a5,s1,80005318 <_Z20Threads_CPP_API_testv+0x144>
        Riscv::printString("Starting...\n");
    800052e8:	00004517          	auipc	a0,0x4
    800052ec:	24850513          	addi	a0,a0,584 # 80009530 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    800052f0:	fffff097          	auipc	ra,0xfffff
    800052f4:	81c080e7          	jalr	-2020(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
        threads[i]->start();
    800052f8:	00349793          	slli	a5,s1,0x3
    800052fc:	fe040713          	addi	a4,s0,-32
    80005300:	00f707b3          	add	a5,a4,a5
    80005304:	fe07b503          	ld	a0,-32(a5)
    80005308:	ffffe097          	auipc	ra,0xffffe
    8000530c:	474080e7          	jalr	1140(ra) # 8000377c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005310:	0014849b          	addiw	s1,s1,1
    80005314:	fcdff06f          	j	800052e0 <_Z20Threads_CPP_API_testv+0x10c>
    }

    Riscv::printString("Thread started\n");
    80005318:	00004517          	auipc	a0,0x4
    8000531c:	22850513          	addi	a0,a0,552 # 80009540 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80005320:	ffffe097          	auipc	ra,0xffffe
    80005324:	7ec080e7          	jalr	2028(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    80005328:	00c0006f          	j	80005334 <_Z20Threads_CPP_API_testv+0x160>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000532c:	ffffe097          	auipc	ra,0xffffe
    80005330:	488080e7          	jalr	1160(ra) # 800037b4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005334:	00007797          	auipc	a5,0x7
    80005338:	9647c783          	lbu	a5,-1692(a5) # 8000bc98 <_ZL9finishedA>
    8000533c:	fe0788e3          	beqz	a5,8000532c <_Z20Threads_CPP_API_testv+0x158>
    80005340:	00007797          	auipc	a5,0x7
    80005344:	9597c783          	lbu	a5,-1703(a5) # 8000bc99 <_ZL9finishedB>
    80005348:	fe0782e3          	beqz	a5,8000532c <_Z20Threads_CPP_API_testv+0x158>
    8000534c:	00007797          	auipc	a5,0x7
    80005350:	94e7c783          	lbu	a5,-1714(a5) # 8000bc9a <_ZL9finishedC>
    80005354:	fc078ce3          	beqz	a5,8000532c <_Z20Threads_CPP_API_testv+0x158>
    80005358:	00007797          	auipc	a5,0x7
    8000535c:	9437c783          	lbu	a5,-1725(a5) # 8000bc9b <_ZL9finishedD>
    80005360:	fc0786e3          	beqz	a5,8000532c <_Z20Threads_CPP_API_testv+0x158>
        //Riscv::printString("main\n");
    }

    for (auto thread: threads) { delete thread; }
    80005364:	fc040493          	addi	s1,s0,-64
    80005368:	0080006f          	j	80005370 <_Z20Threads_CPP_API_testv+0x19c>
    8000536c:	00848493          	addi	s1,s1,8
    80005370:	fe040793          	addi	a5,s0,-32
    80005374:	08f48663          	beq	s1,a5,80005400 <_Z20Threads_CPP_API_testv+0x22c>
    80005378:	0004b503          	ld	a0,0(s1)
    8000537c:	fe0508e3          	beqz	a0,8000536c <_Z20Threads_CPP_API_testv+0x198>
    80005380:	00053783          	ld	a5,0(a0)
    80005384:	0087b783          	ld	a5,8(a5)
    80005388:	000780e7          	jalr	a5
    8000538c:	fe1ff06f          	j	8000536c <_Z20Threads_CPP_API_testv+0x198>
    80005390:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80005394:	00048513          	mv	a0,s1
    80005398:	ffffe097          	auipc	ra,0xffffe
    8000539c:	33c080e7          	jalr	828(ra) # 800036d4 <_ZdlPv>
    800053a0:	00090513          	mv	a0,s2
    800053a4:	00008097          	auipc	ra,0x8
    800053a8:	9d4080e7          	jalr	-1580(ra) # 8000cd78 <_Unwind_Resume>
    800053ac:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800053b0:	00048513          	mv	a0,s1
    800053b4:	ffffe097          	auipc	ra,0xffffe
    800053b8:	320080e7          	jalr	800(ra) # 800036d4 <_ZdlPv>
    800053bc:	00090513          	mv	a0,s2
    800053c0:	00008097          	auipc	ra,0x8
    800053c4:	9b8080e7          	jalr	-1608(ra) # 8000cd78 <_Unwind_Resume>
    800053c8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800053cc:	00048513          	mv	a0,s1
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	304080e7          	jalr	772(ra) # 800036d4 <_ZdlPv>
    800053d8:	00090513          	mv	a0,s2
    800053dc:	00008097          	auipc	ra,0x8
    800053e0:	99c080e7          	jalr	-1636(ra) # 8000cd78 <_Unwind_Resume>
    800053e4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800053e8:	00048513          	mv	a0,s1
    800053ec:	ffffe097          	auipc	ra,0xffffe
    800053f0:	2e8080e7          	jalr	744(ra) # 800036d4 <_ZdlPv>
    800053f4:	00090513          	mv	a0,s2
    800053f8:	00008097          	auipc	ra,0x8
    800053fc:	980080e7          	jalr	-1664(ra) # 8000cd78 <_Unwind_Resume>
    80005400:	03813083          	ld	ra,56(sp)
    80005404:	03013403          	ld	s0,48(sp)
    80005408:	02813483          	ld	s1,40(sp)
    8000540c:	02013903          	ld	s2,32(sp)
    80005410:	04010113          	addi	sp,sp,64
    80005414:	00008067          	ret

0000000080005418 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005418:	ff010113          	addi	sp,sp,-16
    8000541c:	00113423          	sd	ra,8(sp)
    80005420:	00813023          	sd	s0,0(sp)
    80005424:	01010413          	addi	s0,sp,16
    80005428:	00006797          	auipc	a5,0x6
    8000542c:	67878793          	addi	a5,a5,1656 # 8000baa0 <_ZTV7WorkerA+0x10>
    80005430:	00f53023          	sd	a5,0(a0)
    80005434:	ffffe097          	auipc	ra,0xffffe
    80005438:	1bc080e7          	jalr	444(ra) # 800035f0 <_ZN6ThreadD1Ev>
    8000543c:	00813083          	ld	ra,8(sp)
    80005440:	00013403          	ld	s0,0(sp)
    80005444:	01010113          	addi	sp,sp,16
    80005448:	00008067          	ret

000000008000544c <_ZN7WorkerAD0Ev>:
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00113c23          	sd	ra,24(sp)
    80005454:	00813823          	sd	s0,16(sp)
    80005458:	00913423          	sd	s1,8(sp)
    8000545c:	02010413          	addi	s0,sp,32
    80005460:	00050493          	mv	s1,a0
    80005464:	00006797          	auipc	a5,0x6
    80005468:	63c78793          	addi	a5,a5,1596 # 8000baa0 <_ZTV7WorkerA+0x10>
    8000546c:	00f53023          	sd	a5,0(a0)
    80005470:	ffffe097          	auipc	ra,0xffffe
    80005474:	180080e7          	jalr	384(ra) # 800035f0 <_ZN6ThreadD1Ev>
    80005478:	00048513          	mv	a0,s1
    8000547c:	ffffe097          	auipc	ra,0xffffe
    80005480:	258080e7          	jalr	600(ra) # 800036d4 <_ZdlPv>
    80005484:	01813083          	ld	ra,24(sp)
    80005488:	01013403          	ld	s0,16(sp)
    8000548c:	00813483          	ld	s1,8(sp)
    80005490:	02010113          	addi	sp,sp,32
    80005494:	00008067          	ret

0000000080005498 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005498:	ff010113          	addi	sp,sp,-16
    8000549c:	00113423          	sd	ra,8(sp)
    800054a0:	00813023          	sd	s0,0(sp)
    800054a4:	01010413          	addi	s0,sp,16
    800054a8:	00006797          	auipc	a5,0x6
    800054ac:	62078793          	addi	a5,a5,1568 # 8000bac8 <_ZTV7WorkerB+0x10>
    800054b0:	00f53023          	sd	a5,0(a0)
    800054b4:	ffffe097          	auipc	ra,0xffffe
    800054b8:	13c080e7          	jalr	316(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800054bc:	00813083          	ld	ra,8(sp)
    800054c0:	00013403          	ld	s0,0(sp)
    800054c4:	01010113          	addi	sp,sp,16
    800054c8:	00008067          	ret

00000000800054cc <_ZN7WorkerBD0Ev>:
    800054cc:	fe010113          	addi	sp,sp,-32
    800054d0:	00113c23          	sd	ra,24(sp)
    800054d4:	00813823          	sd	s0,16(sp)
    800054d8:	00913423          	sd	s1,8(sp)
    800054dc:	02010413          	addi	s0,sp,32
    800054e0:	00050493          	mv	s1,a0
    800054e4:	00006797          	auipc	a5,0x6
    800054e8:	5e478793          	addi	a5,a5,1508 # 8000bac8 <_ZTV7WorkerB+0x10>
    800054ec:	00f53023          	sd	a5,0(a0)
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	100080e7          	jalr	256(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800054f8:	00048513          	mv	a0,s1
    800054fc:	ffffe097          	auipc	ra,0xffffe
    80005500:	1d8080e7          	jalr	472(ra) # 800036d4 <_ZdlPv>
    80005504:	01813083          	ld	ra,24(sp)
    80005508:	01013403          	ld	s0,16(sp)
    8000550c:	00813483          	ld	s1,8(sp)
    80005510:	02010113          	addi	sp,sp,32
    80005514:	00008067          	ret

0000000080005518 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005518:	ff010113          	addi	sp,sp,-16
    8000551c:	00113423          	sd	ra,8(sp)
    80005520:	00813023          	sd	s0,0(sp)
    80005524:	01010413          	addi	s0,sp,16
    80005528:	00006797          	auipc	a5,0x6
    8000552c:	5c878793          	addi	a5,a5,1480 # 8000baf0 <_ZTV7WorkerC+0x10>
    80005530:	00f53023          	sd	a5,0(a0)
    80005534:	ffffe097          	auipc	ra,0xffffe
    80005538:	0bc080e7          	jalr	188(ra) # 800035f0 <_ZN6ThreadD1Ev>
    8000553c:	00813083          	ld	ra,8(sp)
    80005540:	00013403          	ld	s0,0(sp)
    80005544:	01010113          	addi	sp,sp,16
    80005548:	00008067          	ret

000000008000554c <_ZN7WorkerCD0Ev>:
    8000554c:	fe010113          	addi	sp,sp,-32
    80005550:	00113c23          	sd	ra,24(sp)
    80005554:	00813823          	sd	s0,16(sp)
    80005558:	00913423          	sd	s1,8(sp)
    8000555c:	02010413          	addi	s0,sp,32
    80005560:	00050493          	mv	s1,a0
    80005564:	00006797          	auipc	a5,0x6
    80005568:	58c78793          	addi	a5,a5,1420 # 8000baf0 <_ZTV7WorkerC+0x10>
    8000556c:	00f53023          	sd	a5,0(a0)
    80005570:	ffffe097          	auipc	ra,0xffffe
    80005574:	080080e7          	jalr	128(ra) # 800035f0 <_ZN6ThreadD1Ev>
    80005578:	00048513          	mv	a0,s1
    8000557c:	ffffe097          	auipc	ra,0xffffe
    80005580:	158080e7          	jalr	344(ra) # 800036d4 <_ZdlPv>
    80005584:	01813083          	ld	ra,24(sp)
    80005588:	01013403          	ld	s0,16(sp)
    8000558c:	00813483          	ld	s1,8(sp)
    80005590:	02010113          	addi	sp,sp,32
    80005594:	00008067          	ret

0000000080005598 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005598:	ff010113          	addi	sp,sp,-16
    8000559c:	00113423          	sd	ra,8(sp)
    800055a0:	00813023          	sd	s0,0(sp)
    800055a4:	01010413          	addi	s0,sp,16
    800055a8:	00006797          	auipc	a5,0x6
    800055ac:	57078793          	addi	a5,a5,1392 # 8000bb18 <_ZTV7WorkerD+0x10>
    800055b0:	00f53023          	sd	a5,0(a0)
    800055b4:	ffffe097          	auipc	ra,0xffffe
    800055b8:	03c080e7          	jalr	60(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800055bc:	00813083          	ld	ra,8(sp)
    800055c0:	00013403          	ld	s0,0(sp)
    800055c4:	01010113          	addi	sp,sp,16
    800055c8:	00008067          	ret

00000000800055cc <_ZN7WorkerDD0Ev>:
    800055cc:	fe010113          	addi	sp,sp,-32
    800055d0:	00113c23          	sd	ra,24(sp)
    800055d4:	00813823          	sd	s0,16(sp)
    800055d8:	00913423          	sd	s1,8(sp)
    800055dc:	02010413          	addi	s0,sp,32
    800055e0:	00050493          	mv	s1,a0
    800055e4:	00006797          	auipc	a5,0x6
    800055e8:	53478793          	addi	a5,a5,1332 # 8000bb18 <_ZTV7WorkerD+0x10>
    800055ec:	00f53023          	sd	a5,0(a0)
    800055f0:	ffffe097          	auipc	ra,0xffffe
    800055f4:	000080e7          	jalr	ra # 800035f0 <_ZN6ThreadD1Ev>
    800055f8:	00048513          	mv	a0,s1
    800055fc:	ffffe097          	auipc	ra,0xffffe
    80005600:	0d8080e7          	jalr	216(ra) # 800036d4 <_ZdlPv>
    80005604:	01813083          	ld	ra,24(sp)
    80005608:	01013403          	ld	s0,16(sp)
    8000560c:	00813483          	ld	s1,8(sp)
    80005610:	02010113          	addi	sp,sp,32
    80005614:	00008067          	ret

0000000080005618 <_ZN7WorkerA3runEv>:
    void run() override {
    80005618:	ff010113          	addi	sp,sp,-16
    8000561c:	00113423          	sd	ra,8(sp)
    80005620:	00813023          	sd	s0,0(sp)
    80005624:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005628:	00000593          	li	a1,0
    8000562c:	fffff097          	auipc	ra,0xfffff
    80005630:	740080e7          	jalr	1856(ra) # 80004d6c <_ZN7WorkerA11workerBodyAEPv>
    }
    80005634:	00813083          	ld	ra,8(sp)
    80005638:	00013403          	ld	s0,0(sp)
    8000563c:	01010113          	addi	sp,sp,16
    80005640:	00008067          	ret

0000000080005644 <_ZN7WorkerB3runEv>:
    void run() override {
    80005644:	ff010113          	addi	sp,sp,-16
    80005648:	00113423          	sd	ra,8(sp)
    8000564c:	00813023          	sd	s0,0(sp)
    80005650:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005654:	00000593          	li	a1,0
    80005658:	fffff097          	auipc	ra,0xfffff
    8000565c:	7e0080e7          	jalr	2016(ra) # 80004e38 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005660:	00813083          	ld	ra,8(sp)
    80005664:	00013403          	ld	s0,0(sp)
    80005668:	01010113          	addi	sp,sp,16
    8000566c:	00008067          	ret

0000000080005670 <_ZN7WorkerC3runEv>:
    void run() override {
    80005670:	ff010113          	addi	sp,sp,-16
    80005674:	00113423          	sd	ra,8(sp)
    80005678:	00813023          	sd	s0,0(sp)
    8000567c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005680:	00000593          	li	a1,0
    80005684:	00000097          	auipc	ra,0x0
    80005688:	888080e7          	jalr	-1912(ra) # 80004f0c <_ZN7WorkerC11workerBodyCEPv>
    }
    8000568c:	00813083          	ld	ra,8(sp)
    80005690:	00013403          	ld	s0,0(sp)
    80005694:	01010113          	addi	sp,sp,16
    80005698:	00008067          	ret

000000008000569c <_ZN7WorkerD3runEv>:

    void run() override {
    8000569c:	ff010113          	addi	sp,sp,-16
    800056a0:	00113423          	sd	ra,8(sp)
    800056a4:	00813023          	sd	s0,0(sp)
    800056a8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800056ac:	00000593          	li	a1,0
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	9dc080e7          	jalr	-1572(ra) # 8000508c <_ZN7WorkerD11workerBodyDEPv>
    }
    800056b8:	00813083          	ld	ra,8(sp)
    800056bc:	00013403          	ld	s0,0(sp)
    800056c0:	01010113          	addi	sp,sp,16
    800056c4:	00008067          	ret

00000000800056c8 <_ZL9fibonaccim>:
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n)
{
    800056c8:	fe010113          	addi	sp,sp,-32
    800056cc:	00113c23          	sd	ra,24(sp)
    800056d0:	00813823          	sd	s0,16(sp)
    800056d4:	00913423          	sd	s1,8(sp)
    800056d8:	01213023          	sd	s2,0(sp)
    800056dc:	02010413          	addi	s0,sp,32
    800056e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    800056e4:	00100793          	li	a5,1
    800056e8:	02a7f863          	bgeu	a5,a0,80005718 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800056ec:	00a00793          	li	a5,10
    800056f0:	02f577b3          	remu	a5,a0,a5
    800056f4:	02078e63          	beqz	a5,80005730 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800056f8:	fff48513          	addi	a0,s1,-1
    800056fc:	00000097          	auipc	ra,0x0
    80005700:	fcc080e7          	jalr	-52(ra) # 800056c8 <_ZL9fibonaccim>
    80005704:	00050913          	mv	s2,a0
    80005708:	ffe48513          	addi	a0,s1,-2
    8000570c:	00000097          	auipc	ra,0x0
    80005710:	fbc080e7          	jalr	-68(ra) # 800056c8 <_ZL9fibonaccim>
    80005714:	00a90533          	add	a0,s2,a0
}
    80005718:	01813083          	ld	ra,24(sp)
    8000571c:	01013403          	ld	s0,16(sp)
    80005720:	00813483          	ld	s1,8(sp)
    80005724:	00013903          	ld	s2,0(sp)
    80005728:	02010113          	addi	sp,sp,32
    8000572c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	c04080e7          	jalr	-1020(ra) # 80001334 <thread_dispatch>
    80005738:	fc1ff06f          	j	800056f8 <_ZL9fibonaccim+0x30>

000000008000573c <_Z11workerBodyCPv>:
    Riscv::printString("B finished!\n");
    finishedB = true;
}

void workerBodyC(void* arg)
{
    8000573c:	fe010113          	addi	sp,sp,-32
    80005740:	00113c23          	sd	ra,24(sp)
    80005744:	00813823          	sd	s0,16(sp)
    80005748:	00913423          	sd	s1,8(sp)
    8000574c:	01213023          	sd	s2,0(sp)
    80005750:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005754:	00000493          	li	s1,0
    80005758:	0400006f          	j	80005798 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    8000575c:	00004517          	auipc	a0,0x4
    80005760:	cfc50513          	addi	a0,a0,-772 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80005764:	00000097          	auipc	ra,0x0
    80005768:	588080e7          	jalr	1416(ra) # 80005cec <_Z11printStringPKc>
    8000576c:	00000613          	li	a2,0
    80005770:	00a00593          	li	a1,10
    80005774:	00048513          	mv	a0,s1
    80005778:	00000097          	auipc	ra,0x0
    8000577c:	70c080e7          	jalr	1804(ra) # 80005e84 <_Z8printIntiii>
    80005780:	00004517          	auipc	a0,0x4
    80005784:	98050513          	addi	a0,a0,-1664 # 80009100 <CONSOLE_STATUS+0xf0>
    80005788:	00000097          	auipc	ra,0x0
    8000578c:	564080e7          	jalr	1380(ra) # 80005cec <_Z11printStringPKc>
    for (; i < 3; i++)
    80005790:	0014849b          	addiw	s1,s1,1
    80005794:	0ff4f493          	andi	s1,s1,255
    80005798:	00200793          	li	a5,2
    8000579c:	fc97f0e3          	bgeu	a5,s1,8000575c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800057a0:	00004517          	auipc	a0,0x4
    800057a4:	cc050513          	addi	a0,a0,-832 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	544080e7          	jalr	1348(ra) # 80005cec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800057b0:	00700313          	li	t1,7
    thread_dispatch();
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	b80080e7          	jalr	-1152(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    800057bc:	00004517          	auipc	a0,0x4
    800057c0:	d9450513          	addi	a0,a0,-620 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    800057c4:	00000097          	auipc	ra,0x0
    800057c8:	528080e7          	jalr	1320(ra) # 80005cec <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800057cc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800057d0:	00004517          	auipc	a0,0x4
    800057d4:	ca050513          	addi	a0,a0,-864 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    800057d8:	00000097          	auipc	ra,0x0
    800057dc:	514080e7          	jalr	1300(ra) # 80005cec <_Z11printStringPKc>
    800057e0:	00000613          	li	a2,0
    800057e4:	00a00593          	li	a1,10
    800057e8:	0009051b          	sext.w	a0,s2
    800057ec:	00000097          	auipc	ra,0x0
    800057f0:	698080e7          	jalr	1688(ra) # 80005e84 <_Z8printIntiii>
    800057f4:	00004517          	auipc	a0,0x4
    800057f8:	90c50513          	addi	a0,a0,-1780 # 80009100 <CONSOLE_STATUS+0xf0>
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	4f0080e7          	jalr	1264(ra) # 80005cec <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005804:	00c00513          	li	a0,12
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	ec0080e7          	jalr	-320(ra) # 800056c8 <_ZL9fibonaccim>
    80005810:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005814:	00004517          	auipc	a0,0x4
    80005818:	c6450513          	addi	a0,a0,-924 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xd8>
    8000581c:	00000097          	auipc	ra,0x0
    80005820:	4d0080e7          	jalr	1232(ra) # 80005cec <_Z11printStringPKc>
    80005824:	00000613          	li	a2,0
    80005828:	00a00593          	li	a1,10
    8000582c:	0009051b          	sext.w	a0,s2
    80005830:	00000097          	auipc	ra,0x0
    80005834:	654080e7          	jalr	1620(ra) # 80005e84 <_Z8printIntiii>
    80005838:	00004517          	auipc	a0,0x4
    8000583c:	8c850513          	addi	a0,a0,-1848 # 80009100 <CONSOLE_STATUS+0xf0>
    80005840:	00000097          	auipc	ra,0x0
    80005844:	4ac080e7          	jalr	1196(ra) # 80005cec <_Z11printStringPKc>
    80005848:	0400006f          	j	80005888 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000584c:	00004517          	auipc	a0,0x4
    80005850:	c0c50513          	addi	a0,a0,-1012 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80005854:	00000097          	auipc	ra,0x0
    80005858:	498080e7          	jalr	1176(ra) # 80005cec <_Z11printStringPKc>
    8000585c:	00000613          	li	a2,0
    80005860:	00a00593          	li	a1,10
    80005864:	00048513          	mv	a0,s1
    80005868:	00000097          	auipc	ra,0x0
    8000586c:	61c080e7          	jalr	1564(ra) # 80005e84 <_Z8printIntiii>
    80005870:	00004517          	auipc	a0,0x4
    80005874:	89050513          	addi	a0,a0,-1904 # 80009100 <CONSOLE_STATUS+0xf0>
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	474080e7          	jalr	1140(ra) # 80005cec <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005880:	0014849b          	addiw	s1,s1,1
    80005884:	0ff4f493          	andi	s1,s1,255
    80005888:	00500793          	li	a5,5
    8000588c:	fc97f0e3          	bgeu	a5,s1,8000584c <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    80005890:	ffffc097          	auipc	ra,0xffffc
    80005894:	aa4080e7          	jalr	-1372(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005898:	00004517          	auipc	a0,0x4
    8000589c:	cc850513          	addi	a0,a0,-824 # 80009560 <_ZZN5Riscv12printIntegerEmE6digits+0x1c0>
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	44c080e7          	jalr	1100(ra) # 80005cec <_Z11printStringPKc>
    finishedC = true;
    800058a8:	00100793          	li	a5,1
    800058ac:	00006717          	auipc	a4,0x6
    800058b0:	3ef70823          	sb	a5,1008(a4) # 8000bc9c <_ZL9finishedC>
}
    800058b4:	01813083          	ld	ra,24(sp)
    800058b8:	01013403          	ld	s0,16(sp)
    800058bc:	00813483          	ld	s1,8(sp)
    800058c0:	00013903          	ld	s2,0(sp)
    800058c4:	02010113          	addi	sp,sp,32
    800058c8:	00008067          	ret

00000000800058cc <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    800058cc:	fe010113          	addi	sp,sp,-32
    800058d0:	00113c23          	sd	ra,24(sp)
    800058d4:	00813823          	sd	s0,16(sp)
    800058d8:	00913423          	sd	s1,8(sp)
    800058dc:	01213023          	sd	s2,0(sp)
    800058e0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800058e4:	00a00493          	li	s1,10
    800058e8:	0400006f          	j	80005928 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800058ec:	00004517          	auipc	a0,0x4
    800058f0:	b9c50513          	addi	a0,a0,-1124 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    800058f4:	00000097          	auipc	ra,0x0
    800058f8:	3f8080e7          	jalr	1016(ra) # 80005cec <_Z11printStringPKc>
    800058fc:	00000613          	li	a2,0
    80005900:	00a00593          	li	a1,10
    80005904:	00048513          	mv	a0,s1
    80005908:	00000097          	auipc	ra,0x0
    8000590c:	57c080e7          	jalr	1404(ra) # 80005e84 <_Z8printIntiii>
    80005910:	00003517          	auipc	a0,0x3
    80005914:	7f050513          	addi	a0,a0,2032 # 80009100 <CONSOLE_STATUS+0xf0>
    80005918:	00000097          	auipc	ra,0x0
    8000591c:	3d4080e7          	jalr	980(ra) # 80005cec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005920:	0014849b          	addiw	s1,s1,1
    80005924:	0ff4f493          	andi	s1,s1,255
    80005928:	00c00793          	li	a5,12
    8000592c:	fc97f0e3          	bgeu	a5,s1,800058ec <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005930:	00004517          	auipc	a0,0x4
    80005934:	b6050513          	addi	a0,a0,-1184 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	3b4080e7          	jalr	948(ra) # 80005cec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005940:	00500313          	li	t1,5
    thread_dispatch();
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	9f0080e7          	jalr	-1552(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    8000594c:	00004517          	auipc	a0,0x4
    80005950:	c2450513          	addi	a0,a0,-988 # 80009570 <_ZZN5Riscv12printIntegerEmE6digits+0x1d0>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	398080e7          	jalr	920(ra) # 80005cec <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    8000595c:	01000513          	li	a0,16
    80005960:	00000097          	auipc	ra,0x0
    80005964:	d68080e7          	jalr	-664(ra) # 800056c8 <_ZL9fibonaccim>
    80005968:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000596c:	00004517          	auipc	a0,0x4
    80005970:	b3450513          	addi	a0,a0,-1228 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80005974:	00000097          	auipc	ra,0x0
    80005978:	378080e7          	jalr	888(ra) # 80005cec <_Z11printStringPKc>
    8000597c:	00000613          	li	a2,0
    80005980:	00a00593          	li	a1,10
    80005984:	0009051b          	sext.w	a0,s2
    80005988:	00000097          	auipc	ra,0x0
    8000598c:	4fc080e7          	jalr	1276(ra) # 80005e84 <_Z8printIntiii>
    80005990:	00003517          	auipc	a0,0x3
    80005994:	77050513          	addi	a0,a0,1904 # 80009100 <CONSOLE_STATUS+0xf0>
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	354080e7          	jalr	852(ra) # 80005cec <_Z11printStringPKc>
    800059a0:	0400006f          	j	800059e0 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800059a4:	00004517          	auipc	a0,0x4
    800059a8:	ae450513          	addi	a0,a0,-1308 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    800059ac:	00000097          	auipc	ra,0x0
    800059b0:	340080e7          	jalr	832(ra) # 80005cec <_Z11printStringPKc>
    800059b4:	00000613          	li	a2,0
    800059b8:	00a00593          	li	a1,10
    800059bc:	00048513          	mv	a0,s1
    800059c0:	00000097          	auipc	ra,0x0
    800059c4:	4c4080e7          	jalr	1220(ra) # 80005e84 <_Z8printIntiii>
    800059c8:	00003517          	auipc	a0,0x3
    800059cc:	73850513          	addi	a0,a0,1848 # 80009100 <CONSOLE_STATUS+0xf0>
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	31c080e7          	jalr	796(ra) # 80005cec <_Z11printStringPKc>
    for (; i < 16; i++) {
    800059d8:	0014849b          	addiw	s1,s1,1
    800059dc:	0ff4f493          	andi	s1,s1,255
    800059e0:	00f00793          	li	a5,15
    800059e4:	fc97f0e3          	bgeu	a5,s1,800059a4 <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    800059e8:	ffffc097          	auipc	ra,0xffffc
    800059ec:	94c080e7          	jalr	-1716(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    800059f0:	00004517          	auipc	a0,0x4
    800059f4:	ac050513          	addi	a0,a0,-1344 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	2f4080e7          	jalr	756(ra) # 80005cec <_Z11printStringPKc>
    finishedD = true;
    80005a00:	00100793          	li	a5,1
    80005a04:	00006717          	auipc	a4,0x6
    80005a08:	28f70ca3          	sb	a5,665(a4) # 8000bc9d <_ZL9finishedD>
}
    80005a0c:	01813083          	ld	ra,24(sp)
    80005a10:	01013403          	ld	s0,16(sp)
    80005a14:	00813483          	ld	s1,8(sp)
    80005a18:	00013903          	ld	s2,0(sp)
    80005a1c:	02010113          	addi	sp,sp,32
    80005a20:	00008067          	ret

0000000080005a24 <_Z11workerBodyAPv>:
{
    80005a24:	fe010113          	addi	sp,sp,-32
    80005a28:	00113c23          	sd	ra,24(sp)
    80005a2c:	00813823          	sd	s0,16(sp)
    80005a30:	00913423          	sd	s1,8(sp)
    80005a34:	01213023          	sd	s2,0(sp)
    80005a38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80005a3c:	00000913          	li	s2,0
    80005a40:	0380006f          	j	80005a78 <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	8f0080e7          	jalr	-1808(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005a4c:	00148493          	addi	s1,s1,1
    80005a50:	000027b7          	lui	a5,0x2
    80005a54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005a58:	0097ee63          	bltu	a5,s1,80005a74 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a5c:	00000713          	li	a4,0
    80005a60:	000077b7          	lui	a5,0x7
    80005a64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a68:	fce7eee3          	bltu	a5,a4,80005a44 <_Z11workerBodyAPv+0x20>
    80005a6c:	00170713          	addi	a4,a4,1
    80005a70:	ff1ff06f          	j	80005a60 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80005a74:	00190913          	addi	s2,s2,1
    80005a78:	00900793          	li	a5,9
    80005a7c:	0527e063          	bltu	a5,s2,80005abc <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005a80:	00004517          	auipc	a0,0x4
    80005a84:	9a850513          	addi	a0,a0,-1624 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80005a88:	00000097          	auipc	ra,0x0
    80005a8c:	264080e7          	jalr	612(ra) # 80005cec <_Z11printStringPKc>
    80005a90:	00000613          	li	a2,0
    80005a94:	00a00593          	li	a1,10
    80005a98:	0009051b          	sext.w	a0,s2
    80005a9c:	00000097          	auipc	ra,0x0
    80005aa0:	3e8080e7          	jalr	1000(ra) # 80005e84 <_Z8printIntiii>
    80005aa4:	00003517          	auipc	a0,0x3
    80005aa8:	65c50513          	addi	a0,a0,1628 # 80009100 <CONSOLE_STATUS+0xf0>
    80005aac:	00000097          	auipc	ra,0x0
    80005ab0:	240080e7          	jalr	576(ra) # 80005cec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005ab4:	00000493          	li	s1,0
    80005ab8:	f99ff06f          	j	80005a50 <_Z11workerBodyAPv+0x2c>
    Riscv::printString("A finished!\n");
    80005abc:	00004517          	auipc	a0,0x4
    80005ac0:	97450513          	addi	a0,a0,-1676 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80005ac4:	ffffe097          	auipc	ra,0xffffe
    80005ac8:	048080e7          	jalr	72(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    finishedA = true;
    80005acc:	00100793          	li	a5,1
    80005ad0:	00006717          	auipc	a4,0x6
    80005ad4:	1cf70723          	sb	a5,462(a4) # 8000bc9e <_ZL9finishedA>
}
    80005ad8:	01813083          	ld	ra,24(sp)
    80005adc:	01013403          	ld	s0,16(sp)
    80005ae0:	00813483          	ld	s1,8(sp)
    80005ae4:	00013903          	ld	s2,0(sp)
    80005ae8:	02010113          	addi	sp,sp,32
    80005aec:	00008067          	ret

0000000080005af0 <_Z11workerBodyBPv>:
{
    80005af0:	fe010113          	addi	sp,sp,-32
    80005af4:	00113c23          	sd	ra,24(sp)
    80005af8:	00813823          	sd	s0,16(sp)
    80005afc:	00913423          	sd	s1,8(sp)
    80005b00:	01213023          	sd	s2,0(sp)
    80005b04:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005b08:	00000913          	li	s2,0
    80005b0c:	0340006f          	j	80005b40 <_Z11workerBodyBPv+0x50>
            thread_dispatch();
    80005b10:	ffffc097          	auipc	ra,0xffffc
    80005b14:	824080e7          	jalr	-2012(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10; j++)
    80005b18:	00148493          	addi	s1,s1,1
    80005b1c:	00900793          	li	a5,9
    80005b20:	0097ee63          	bltu	a5,s1,80005b3c <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005b24:	00000713          	li	a4,0
    80005b28:	000077b7          	lui	a5,0x7
    80005b2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005b30:	fee7e0e3          	bltu	a5,a4,80005b10 <_Z11workerBodyBPv+0x20>
    80005b34:	00170713          	addi	a4,a4,1
    80005b38:	ff1ff06f          	j	80005b28 <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80005b3c:	00190913          	addi	s2,s2,1
    80005b40:	00f00793          	li	a5,15
    80005b44:	0527e063          	bltu	a5,s2,80005b84 <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80005b48:	00004517          	auipc	a0,0x4
    80005b4c:	8f850513          	addi	a0,a0,-1800 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	19c080e7          	jalr	412(ra) # 80005cec <_Z11printStringPKc>
    80005b58:	00000613          	li	a2,0
    80005b5c:	00a00593          	li	a1,10
    80005b60:	0009051b          	sext.w	a0,s2
    80005b64:	00000097          	auipc	ra,0x0
    80005b68:	320080e7          	jalr	800(ra) # 80005e84 <_Z8printIntiii>
    80005b6c:	00003517          	auipc	a0,0x3
    80005b70:	59450513          	addi	a0,a0,1428 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	178080e7          	jalr	376(ra) # 80005cec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++)
    80005b7c:	00000493          	li	s1,0
    80005b80:	f9dff06f          	j	80005b1c <_Z11workerBodyBPv+0x2c>
    thread_dispatch();
    80005b84:	ffffb097          	auipc	ra,0xffffb
    80005b88:	7b0080e7          	jalr	1968(ra) # 80001334 <thread_dispatch>
    Riscv::printString("B finished!\n");
    80005b8c:	00004517          	auipc	a0,0x4
    80005b90:	8bc50513          	addi	a0,a0,-1860 # 80009448 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80005b94:	ffffe097          	auipc	ra,0xffffe
    80005b98:	f78080e7          	jalr	-136(ra) # 80003b0c <_ZN5Riscv11printStringEPKc>
    finishedB = true;
    80005b9c:	00100793          	li	a5,1
    80005ba0:	00006717          	auipc	a4,0x6
    80005ba4:	0ef70fa3          	sb	a5,255(a4) # 8000bc9f <_ZL9finishedB>
}
    80005ba8:	01813083          	ld	ra,24(sp)
    80005bac:	01013403          	ld	s0,16(sp)
    80005bb0:	00813483          	ld	s1,8(sp)
    80005bb4:	00013903          	ld	s2,0(sp)
    80005bb8:	02010113          	addi	sp,sp,32
    80005bbc:	00008067          	ret

0000000080005bc0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005bc0:	fc010113          	addi	sp,sp,-64
    80005bc4:	02113c23          	sd	ra,56(sp)
    80005bc8:	02813823          	sd	s0,48(sp)
    80005bcc:	02913423          	sd	s1,40(sp)
    80005bd0:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005bd4:	00000613          	li	a2,0
    80005bd8:	00000597          	auipc	a1,0x0
    80005bdc:	e4c58593          	addi	a1,a1,-436 # 80005a24 <_Z11workerBodyAPv>
    80005be0:	fc040513          	addi	a0,s0,-64
    80005be4:	ffffb097          	auipc	ra,0xffffb
    80005be8:	6d0080e7          	jalr	1744(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005bec:	00004517          	auipc	a0,0x4
    80005bf0:	8e450513          	addi	a0,a0,-1820 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005bf4:	00000097          	auipc	ra,0x0
    80005bf8:	0f8080e7          	jalr	248(ra) # 80005cec <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005bfc:	00000613          	li	a2,0
    80005c00:	00000597          	auipc	a1,0x0
    80005c04:	ef058593          	addi	a1,a1,-272 # 80005af0 <_Z11workerBodyBPv>
    80005c08:	fc840513          	addi	a0,s0,-56
    80005c0c:	ffffb097          	auipc	ra,0xffffb
    80005c10:	6a8080e7          	jalr	1704(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	8d450513          	addi	a0,a0,-1836 # 800094e8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	0d0080e7          	jalr	208(ra) # 80005cec <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005c24:	00000613          	li	a2,0
    80005c28:	00000597          	auipc	a1,0x0
    80005c2c:	b1458593          	addi	a1,a1,-1260 # 8000573c <_Z11workerBodyCPv>
    80005c30:	fd040513          	addi	a0,s0,-48
    80005c34:	ffffb097          	auipc	ra,0xffffb
    80005c38:	680080e7          	jalr	1664(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005c3c:	00004517          	auipc	a0,0x4
    80005c40:	8c450513          	addi	a0,a0,-1852 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005c44:	00000097          	auipc	ra,0x0
    80005c48:	0a8080e7          	jalr	168(ra) # 80005cec <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005c4c:	00000613          	li	a2,0
    80005c50:	00000597          	auipc	a1,0x0
    80005c54:	c7c58593          	addi	a1,a1,-900 # 800058cc <_Z11workerBodyDPv>
    80005c58:	fd840513          	addi	a0,s0,-40
    80005c5c:	ffffb097          	auipc	ra,0xffffb
    80005c60:	658080e7          	jalr	1624(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005c64:	00004517          	auipc	a0,0x4
    80005c68:	8b450513          	addi	a0,a0,-1868 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	080080e7          	jalr	128(ra) # 80005cec <_Z11printStringPKc>
    80005c74:	00c0006f          	j	80005c80 <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005c78:	ffffb097          	auipc	ra,0xffffb
    80005c7c:	6bc080e7          	jalr	1724(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005c80:	00006797          	auipc	a5,0x6
    80005c84:	01e7c783          	lbu	a5,30(a5) # 8000bc9e <_ZL9finishedA>
    80005c88:	fe0788e3          	beqz	a5,80005c78 <_Z18Threads_C_API_testv+0xb8>
    80005c8c:	00006797          	auipc	a5,0x6
    80005c90:	0137c783          	lbu	a5,19(a5) # 8000bc9f <_ZL9finishedB>
    80005c94:	fe0782e3          	beqz	a5,80005c78 <_Z18Threads_C_API_testv+0xb8>
    80005c98:	00006797          	auipc	a5,0x6
    80005c9c:	0047c783          	lbu	a5,4(a5) # 8000bc9c <_ZL9finishedC>
    80005ca0:	fc078ce3          	beqz	a5,80005c78 <_Z18Threads_C_API_testv+0xb8>
    80005ca4:	00006797          	auipc	a5,0x6
    80005ca8:	ff97c783          	lbu	a5,-7(a5) # 8000bc9d <_ZL9finishedD>
    80005cac:	fc0786e3          	beqz	a5,80005c78 <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005cb0:	fc040493          	addi	s1,s0,-64
    80005cb4:	0080006f          	j	80005cbc <_Z18Threads_C_API_testv+0xfc>
    80005cb8:	00848493          	addi	s1,s1,8
    80005cbc:	fe040793          	addi	a5,s0,-32
    80005cc0:	00f48c63          	beq	s1,a5,80005cd8 <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005cc4:	0004b503          	ld	a0,0(s1)
    80005cc8:	fe0508e3          	beqz	a0,80005cb8 <_Z18Threads_C_API_testv+0xf8>
    80005ccc:	ffffe097          	auipc	ra,0xffffe
    80005cd0:	a08080e7          	jalr	-1528(ra) # 800036d4 <_ZdlPv>
    80005cd4:	fe5ff06f          	j	80005cb8 <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005cd8:	03813083          	ld	ra,56(sp)
    80005cdc:	03013403          	ld	s0,48(sp)
    80005ce0:	02813483          	ld	s1,40(sp)
    80005ce4:	04010113          	addi	sp,sp,64
    80005ce8:	00008067          	ret

0000000080005cec <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005cec:	fe010113          	addi	sp,sp,-32
    80005cf0:	00113c23          	sd	ra,24(sp)
    80005cf4:	00813823          	sd	s0,16(sp)
    80005cf8:	00913423          	sd	s1,8(sp)
    80005cfc:	02010413          	addi	s0,sp,32
    80005d00:	00050493          	mv	s1,a0
    LOCK();
    80005d04:	00100613          	li	a2,1
    80005d08:	00000593          	li	a1,0
    80005d0c:	00006517          	auipc	a0,0x6
    80005d10:	f9450513          	addi	a0,a0,-108 # 8000bca0 <lockPrint>
    80005d14:	ffffb097          	auipc	ra,0xffffb
    80005d18:	504080e7          	jalr	1284(ra) # 80001218 <copy_and_swap>
    80005d1c:	fe0514e3          	bnez	a0,80005d04 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005d20:	0004c503          	lbu	a0,0(s1)
    80005d24:	00050a63          	beqz	a0,80005d38 <_Z11printStringPKc+0x4c>
        putc(*string);
    80005d28:	ffffc097          	auipc	ra,0xffffc
    80005d2c:	810080e7          	jalr	-2032(ra) # 80001538 <putc>
        string++;
    80005d30:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005d34:	fedff06f          	j	80005d20 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005d38:	00000613          	li	a2,0
    80005d3c:	00100593          	li	a1,1
    80005d40:	00006517          	auipc	a0,0x6
    80005d44:	f6050513          	addi	a0,a0,-160 # 8000bca0 <lockPrint>
    80005d48:	ffffb097          	auipc	ra,0xffffb
    80005d4c:	4d0080e7          	jalr	1232(ra) # 80001218 <copy_and_swap>
    80005d50:	fe0514e3          	bnez	a0,80005d38 <_Z11printStringPKc+0x4c>
}
    80005d54:	01813083          	ld	ra,24(sp)
    80005d58:	01013403          	ld	s0,16(sp)
    80005d5c:	00813483          	ld	s1,8(sp)
    80005d60:	02010113          	addi	sp,sp,32
    80005d64:	00008067          	ret

0000000080005d68 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005d68:	fd010113          	addi	sp,sp,-48
    80005d6c:	02113423          	sd	ra,40(sp)
    80005d70:	02813023          	sd	s0,32(sp)
    80005d74:	00913c23          	sd	s1,24(sp)
    80005d78:	01213823          	sd	s2,16(sp)
    80005d7c:	01313423          	sd	s3,8(sp)
    80005d80:	01413023          	sd	s4,0(sp)
    80005d84:	03010413          	addi	s0,sp,48
    80005d88:	00050993          	mv	s3,a0
    80005d8c:	00058a13          	mv	s4,a1
    LOCK();
    80005d90:	00100613          	li	a2,1
    80005d94:	00000593          	li	a1,0
    80005d98:	00006517          	auipc	a0,0x6
    80005d9c:	f0850513          	addi	a0,a0,-248 # 8000bca0 <lockPrint>
    80005da0:	ffffb097          	auipc	ra,0xffffb
    80005da4:	478080e7          	jalr	1144(ra) # 80001218 <copy_and_swap>
    80005da8:	fe0514e3          	bnez	a0,80005d90 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005dac:	00000913          	li	s2,0
    80005db0:	00090493          	mv	s1,s2
    80005db4:	0019091b          	addiw	s2,s2,1
    80005db8:	03495a63          	bge	s2,s4,80005dec <_Z9getStringPci+0x84>
        cc = getc();
    80005dbc:	ffffb097          	auipc	ra,0xffffb
    80005dc0:	754080e7          	jalr	1876(ra) # 80001510 <getc>
        if (cc < 1)
    80005dc4:	02050463          	beqz	a0,80005dec <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005dc8:	009984b3          	add	s1,s3,s1
    80005dcc:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005dd0:	00a00793          	li	a5,10
    80005dd4:	00f50a63          	beq	a0,a5,80005de8 <_Z9getStringPci+0x80>
    80005dd8:	00d00793          	li	a5,13
    80005ddc:	fcf51ae3          	bne	a0,a5,80005db0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005de0:	00090493          	mv	s1,s2
    80005de4:	0080006f          	j	80005dec <_Z9getStringPci+0x84>
    80005de8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005dec:	009984b3          	add	s1,s3,s1
    80005df0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005df4:	00000613          	li	a2,0
    80005df8:	00100593          	li	a1,1
    80005dfc:	00006517          	auipc	a0,0x6
    80005e00:	ea450513          	addi	a0,a0,-348 # 8000bca0 <lockPrint>
    80005e04:	ffffb097          	auipc	ra,0xffffb
    80005e08:	414080e7          	jalr	1044(ra) # 80001218 <copy_and_swap>
    80005e0c:	fe0514e3          	bnez	a0,80005df4 <_Z9getStringPci+0x8c>
    return buf;
}
    80005e10:	00098513          	mv	a0,s3
    80005e14:	02813083          	ld	ra,40(sp)
    80005e18:	02013403          	ld	s0,32(sp)
    80005e1c:	01813483          	ld	s1,24(sp)
    80005e20:	01013903          	ld	s2,16(sp)
    80005e24:	00813983          	ld	s3,8(sp)
    80005e28:	00013a03          	ld	s4,0(sp)
    80005e2c:	03010113          	addi	sp,sp,48
    80005e30:	00008067          	ret

0000000080005e34 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005e34:	ff010113          	addi	sp,sp,-16
    80005e38:	00813423          	sd	s0,8(sp)
    80005e3c:	01010413          	addi	s0,sp,16
    80005e40:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e44:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e48:	0006c603          	lbu	a2,0(a3)
    80005e4c:	fd06071b          	addiw	a4,a2,-48
    80005e50:	0ff77713          	andi	a4,a4,255
    80005e54:	00900793          	li	a5,9
    80005e58:	02e7e063          	bltu	a5,a4,80005e78 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e5c:	0025179b          	slliw	a5,a0,0x2
    80005e60:	00a787bb          	addw	a5,a5,a0
    80005e64:	0017979b          	slliw	a5,a5,0x1
    80005e68:	00168693          	addi	a3,a3,1
    80005e6c:	00c787bb          	addw	a5,a5,a2
    80005e70:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e74:	fd5ff06f          	j	80005e48 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e78:	00813403          	ld	s0,8(sp)
    80005e7c:	01010113          	addi	sp,sp,16
    80005e80:	00008067          	ret

0000000080005e84 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005e84:	fc010113          	addi	sp,sp,-64
    80005e88:	02113c23          	sd	ra,56(sp)
    80005e8c:	02813823          	sd	s0,48(sp)
    80005e90:	02913423          	sd	s1,40(sp)
    80005e94:	03213023          	sd	s2,32(sp)
    80005e98:	01313c23          	sd	s3,24(sp)
    80005e9c:	04010413          	addi	s0,sp,64
    80005ea0:	00050493          	mv	s1,a0
    80005ea4:	00058913          	mv	s2,a1
    80005ea8:	00060993          	mv	s3,a2
    LOCK();
    80005eac:	00100613          	li	a2,1
    80005eb0:	00000593          	li	a1,0
    80005eb4:	00006517          	auipc	a0,0x6
    80005eb8:	dec50513          	addi	a0,a0,-532 # 8000bca0 <lockPrint>
    80005ebc:	ffffb097          	auipc	ra,0xffffb
    80005ec0:	35c080e7          	jalr	860(ra) # 80001218 <copy_and_swap>
    80005ec4:	fe0514e3          	bnez	a0,80005eac <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005ec8:	00098463          	beqz	s3,80005ed0 <_Z8printIntiii+0x4c>
    80005ecc:	0804c463          	bltz	s1,80005f54 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005ed0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005ed4:	00000593          	li	a1,0
    }

    i = 0;
    80005ed8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005edc:	0009079b          	sext.w	a5,s2
    80005ee0:	0325773b          	remuw	a4,a0,s2
    80005ee4:	00048613          	mv	a2,s1
    80005ee8:	0014849b          	addiw	s1,s1,1
    80005eec:	02071693          	slli	a3,a4,0x20
    80005ef0:	0206d693          	srli	a3,a3,0x20
    80005ef4:	00003717          	auipc	a4,0x3
    80005ef8:	68c70713          	addi	a4,a4,1676 # 80009580 <_ZL6digits>
    80005efc:	00d70733          	add	a4,a4,a3
    80005f00:	00074683          	lbu	a3,0(a4)
    80005f04:	fd040713          	addi	a4,s0,-48
    80005f08:	00c70733          	add	a4,a4,a2
    80005f0c:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005f10:	0005071b          	sext.w	a4,a0
    80005f14:	0325553b          	divuw	a0,a0,s2
    80005f18:	fcf772e3          	bgeu	a4,a5,80005edc <_Z8printIntiii+0x58>
    if (neg)
    80005f1c:	00058c63          	beqz	a1,80005f34 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005f20:	fd040793          	addi	a5,s0,-48
    80005f24:	009784b3          	add	s1,a5,s1
    80005f28:	02d00793          	li	a5,45
    80005f2c:	fef48823          	sb	a5,-16(s1)
    80005f30:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005f34:	fff4849b          	addiw	s1,s1,-1
    80005f38:	0204c463          	bltz	s1,80005f60 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005f3c:	fd040793          	addi	a5,s0,-48
    80005f40:	009787b3          	add	a5,a5,s1
    80005f44:	ff07c503          	lbu	a0,-16(a5)
    80005f48:	ffffb097          	auipc	ra,0xffffb
    80005f4c:	5f0080e7          	jalr	1520(ra) # 80001538 <putc>
    80005f50:	fe5ff06f          	j	80005f34 <_Z8printIntiii+0xb0>
        x = -xx;
    80005f54:	4090053b          	negw	a0,s1
        neg = 1;
    80005f58:	00100593          	li	a1,1
        x = -xx;
    80005f5c:	f7dff06f          	j	80005ed8 <_Z8printIntiii+0x54>

    UNLOCK();
    80005f60:	00000613          	li	a2,0
    80005f64:	00100593          	li	a1,1
    80005f68:	00006517          	auipc	a0,0x6
    80005f6c:	d3850513          	addi	a0,a0,-712 # 8000bca0 <lockPrint>
    80005f70:	ffffb097          	auipc	ra,0xffffb
    80005f74:	2a8080e7          	jalr	680(ra) # 80001218 <copy_and_swap>
    80005f78:	fe0514e3          	bnez	a0,80005f60 <_Z8printIntiii+0xdc>
}
    80005f7c:	03813083          	ld	ra,56(sp)
    80005f80:	03013403          	ld	s0,48(sp)
    80005f84:	02813483          	ld	s1,40(sp)
    80005f88:	02013903          	ld	s2,32(sp)
    80005f8c:	01813983          	ld	s3,24(sp)
    80005f90:	04010113          	addi	sp,sp,64
    80005f94:	00008067          	ret

0000000080005f98 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005f98:	fe010113          	addi	sp,sp,-32
    80005f9c:	00113c23          	sd	ra,24(sp)
    80005fa0:	00813823          	sd	s0,16(sp)
    80005fa4:	00913423          	sd	s1,8(sp)
    80005fa8:	01213023          	sd	s2,0(sp)
    80005fac:	02010413          	addi	s0,sp,32
    80005fb0:	00050493          	mv	s1,a0
    80005fb4:	00b52023          	sw	a1,0(a0)
    80005fb8:	00052823          	sw	zero,16(a0)
    80005fbc:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fc0:	00259513          	slli	a0,a1,0x2
    80005fc4:	ffffb097          	auipc	ra,0xffffb
    80005fc8:	294080e7          	jalr	660(ra) # 80001258 <mem_alloc>
    80005fcc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005fd0:	01000513          	li	a0,16
    80005fd4:	ffffd097          	auipc	ra,0xffffd
    80005fd8:	6d8080e7          	jalr	1752(ra) # 800036ac <_Znwm>
    80005fdc:	00050913          	mv	s2,a0
    80005fe0:	00000593          	li	a1,0
    80005fe4:	ffffe097          	auipc	ra,0xffffe
    80005fe8:	914080e7          	jalr	-1772(ra) # 800038f8 <_ZN9SemaphoreC1Ej>
    80005fec:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005ff0:	01000513          	li	a0,16
    80005ff4:	ffffd097          	auipc	ra,0xffffd
    80005ff8:	6b8080e7          	jalr	1720(ra) # 800036ac <_Znwm>
    80005ffc:	00050913          	mv	s2,a0
    80006000:	0004a583          	lw	a1,0(s1)
    80006004:	ffffe097          	auipc	ra,0xffffe
    80006008:	8f4080e7          	jalr	-1804(ra) # 800038f8 <_ZN9SemaphoreC1Ej>
    8000600c:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80006010:	01000513          	li	a0,16
    80006014:	ffffd097          	auipc	ra,0xffffd
    80006018:	698080e7          	jalr	1688(ra) # 800036ac <_Znwm>
    8000601c:	00050913          	mv	s2,a0
    80006020:	00100593          	li	a1,1
    80006024:	ffffe097          	auipc	ra,0xffffe
    80006028:	8d4080e7          	jalr	-1836(ra) # 800038f8 <_ZN9SemaphoreC1Ej>
    8000602c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006030:	01000513          	li	a0,16
    80006034:	ffffd097          	auipc	ra,0xffffd
    80006038:	678080e7          	jalr	1656(ra) # 800036ac <_Znwm>
    8000603c:	00050913          	mv	s2,a0
    80006040:	00100593          	li	a1,1
    80006044:	ffffe097          	auipc	ra,0xffffe
    80006048:	8b4080e7          	jalr	-1868(ra) # 800038f8 <_ZN9SemaphoreC1Ej>
    8000604c:	0324b823          	sd	s2,48(s1)
}
    80006050:	01813083          	ld	ra,24(sp)
    80006054:	01013403          	ld	s0,16(sp)
    80006058:	00813483          	ld	s1,8(sp)
    8000605c:	00013903          	ld	s2,0(sp)
    80006060:	02010113          	addi	sp,sp,32
    80006064:	00008067          	ret
    80006068:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000606c:	00090513          	mv	a0,s2
    80006070:	ffffd097          	auipc	ra,0xffffd
    80006074:	664080e7          	jalr	1636(ra) # 800036d4 <_ZdlPv>
    80006078:	00048513          	mv	a0,s1
    8000607c:	00007097          	auipc	ra,0x7
    80006080:	cfc080e7          	jalr	-772(ra) # 8000cd78 <_Unwind_Resume>
    80006084:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80006088:	00090513          	mv	a0,s2
    8000608c:	ffffd097          	auipc	ra,0xffffd
    80006090:	648080e7          	jalr	1608(ra) # 800036d4 <_ZdlPv>
    80006094:	00048513          	mv	a0,s1
    80006098:	00007097          	auipc	ra,0x7
    8000609c:	ce0080e7          	jalr	-800(ra) # 8000cd78 <_Unwind_Resume>
    800060a0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800060a4:	00090513          	mv	a0,s2
    800060a8:	ffffd097          	auipc	ra,0xffffd
    800060ac:	62c080e7          	jalr	1580(ra) # 800036d4 <_ZdlPv>
    800060b0:	00048513          	mv	a0,s1
    800060b4:	00007097          	auipc	ra,0x7
    800060b8:	cc4080e7          	jalr	-828(ra) # 8000cd78 <_Unwind_Resume>
    800060bc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800060c0:	00090513          	mv	a0,s2
    800060c4:	ffffd097          	auipc	ra,0xffffd
    800060c8:	610080e7          	jalr	1552(ra) # 800036d4 <_ZdlPv>
    800060cc:	00048513          	mv	a0,s1
    800060d0:	00007097          	auipc	ra,0x7
    800060d4:	ca8080e7          	jalr	-856(ra) # 8000cd78 <_Unwind_Resume>

00000000800060d8 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800060d8:	fe010113          	addi	sp,sp,-32
    800060dc:	00113c23          	sd	ra,24(sp)
    800060e0:	00813823          	sd	s0,16(sp)
    800060e4:	00913423          	sd	s1,8(sp)
    800060e8:	02010413          	addi	s0,sp,32
    800060ec:	00050493          	mv	s1,a0
    putc('\n');
    800060f0:	00a00513          	li	a0,10
    800060f4:	ffffb097          	auipc	ra,0xffffb
    800060f8:	444080e7          	jalr	1092(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800060fc:	0104a783          	lw	a5,16(s1)
    80006100:	0144a703          	lw	a4,20(s1)
    80006104:	00e78c63          	beq	a5,a4,8000611c <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006108:	0017879b          	addiw	a5,a5,1
    8000610c:	0004a703          	lw	a4,0(s1)
    80006110:	02e7e7bb          	remw	a5,a5,a4
    80006114:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006118:	fe5ff06f          	j	800060fc <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    8000611c:	02100513          	li	a0,33
    80006120:	ffffb097          	auipc	ra,0xffffb
    80006124:	418080e7          	jalr	1048(ra) # 80001538 <putc>
    putc('\n');
    80006128:	00a00513          	li	a0,10
    8000612c:	ffffb097          	auipc	ra,0xffffb
    80006130:	40c080e7          	jalr	1036(ra) # 80001538 <putc>

    mem_free(buffer);
    80006134:	0084b503          	ld	a0,8(s1)
    80006138:	ffffb097          	auipc	ra,0xffffb
    8000613c:	150080e7          	jalr	336(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80006140:	0204b503          	ld	a0,32(s1)
    80006144:	00050863          	beqz	a0,80006154 <_ZN9BufferCPPD1Ev+0x7c>
    80006148:	00053783          	ld	a5,0(a0)
    8000614c:	0087b783          	ld	a5,8(a5)
    80006150:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006154:	0184b503          	ld	a0,24(s1)
    80006158:	00050863          	beqz	a0,80006168 <_ZN9BufferCPPD1Ev+0x90>
    8000615c:	00053783          	ld	a5,0(a0)
    80006160:	0087b783          	ld	a5,8(a5)
    80006164:	000780e7          	jalr	a5
    delete mutexTail;
    80006168:	0304b503          	ld	a0,48(s1)
    8000616c:	00050863          	beqz	a0,8000617c <_ZN9BufferCPPD1Ev+0xa4>
    80006170:	00053783          	ld	a5,0(a0)
    80006174:	0087b783          	ld	a5,8(a5)
    80006178:	000780e7          	jalr	a5
    delete mutexHead;
    8000617c:	0284b503          	ld	a0,40(s1)
    80006180:	00050863          	beqz	a0,80006190 <_ZN9BufferCPPD1Ev+0xb8>
    80006184:	00053783          	ld	a5,0(a0)
    80006188:	0087b783          	ld	a5,8(a5)
    8000618c:	000780e7          	jalr	a5

}
    80006190:	01813083          	ld	ra,24(sp)
    80006194:	01013403          	ld	s0,16(sp)
    80006198:	00813483          	ld	s1,8(sp)
    8000619c:	02010113          	addi	sp,sp,32
    800061a0:	00008067          	ret

00000000800061a4 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    800061a4:	fe010113          	addi	sp,sp,-32
    800061a8:	00113c23          	sd	ra,24(sp)
    800061ac:	00813823          	sd	s0,16(sp)
    800061b0:	00913423          	sd	s1,8(sp)
    800061b4:	01213023          	sd	s2,0(sp)
    800061b8:	02010413          	addi	s0,sp,32
    800061bc:	00050493          	mv	s1,a0
    800061c0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800061c4:	01853503          	ld	a0,24(a0)
    800061c8:	ffffd097          	auipc	ra,0xffffd
    800061cc:	6f8080e7          	jalr	1784(ra) # 800038c0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800061d0:	0304b503          	ld	a0,48(s1)
    800061d4:	ffffd097          	auipc	ra,0xffffd
    800061d8:	6ec080e7          	jalr	1772(ra) # 800038c0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800061dc:	0084b783          	ld	a5,8(s1)
    800061e0:	0144a703          	lw	a4,20(s1)
    800061e4:	00271713          	slli	a4,a4,0x2
    800061e8:	00e787b3          	add	a5,a5,a4
    800061ec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800061f0:	0144a783          	lw	a5,20(s1)
    800061f4:	0017879b          	addiw	a5,a5,1
    800061f8:	0004a703          	lw	a4,0(s1)
    800061fc:	02e7e7bb          	remw	a5,a5,a4
    80006200:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006204:	0304b503          	ld	a0,48(s1)
    80006208:	ffffd097          	auipc	ra,0xffffd
    8000620c:	73c080e7          	jalr	1852(ra) # 80003944 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006210:	0204b503          	ld	a0,32(s1)
    80006214:	ffffd097          	auipc	ra,0xffffd
    80006218:	730080e7          	jalr	1840(ra) # 80003944 <_ZN9Semaphore6signalEv>

}
    8000621c:	01813083          	ld	ra,24(sp)
    80006220:	01013403          	ld	s0,16(sp)
    80006224:	00813483          	ld	s1,8(sp)
    80006228:	00013903          	ld	s2,0(sp)
    8000622c:	02010113          	addi	sp,sp,32
    80006230:	00008067          	ret

0000000080006234 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006234:	fe010113          	addi	sp,sp,-32
    80006238:	00113c23          	sd	ra,24(sp)
    8000623c:	00813823          	sd	s0,16(sp)
    80006240:	00913423          	sd	s1,8(sp)
    80006244:	01213023          	sd	s2,0(sp)
    80006248:	02010413          	addi	s0,sp,32
    8000624c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006250:	02053503          	ld	a0,32(a0)
    80006254:	ffffd097          	auipc	ra,0xffffd
    80006258:	66c080e7          	jalr	1644(ra) # 800038c0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000625c:	0284b503          	ld	a0,40(s1)
    80006260:	ffffd097          	auipc	ra,0xffffd
    80006264:	660080e7          	jalr	1632(ra) # 800038c0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006268:	0084b703          	ld	a4,8(s1)
    8000626c:	0104a783          	lw	a5,16(s1)
    80006270:	00279693          	slli	a3,a5,0x2
    80006274:	00d70733          	add	a4,a4,a3
    80006278:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000627c:	0017879b          	addiw	a5,a5,1
    80006280:	0004a703          	lw	a4,0(s1)
    80006284:	02e7e7bb          	remw	a5,a5,a4
    80006288:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000628c:	0284b503          	ld	a0,40(s1)
    80006290:	ffffd097          	auipc	ra,0xffffd
    80006294:	6b4080e7          	jalr	1716(ra) # 80003944 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006298:	0184b503          	ld	a0,24(s1)
    8000629c:	ffffd097          	auipc	ra,0xffffd
    800062a0:	6a8080e7          	jalr	1704(ra) # 80003944 <_ZN9Semaphore6signalEv>

    return ret;
}
    800062a4:	00090513          	mv	a0,s2
    800062a8:	01813083          	ld	ra,24(sp)
    800062ac:	01013403          	ld	s0,16(sp)
    800062b0:	00813483          	ld	s1,8(sp)
    800062b4:	00013903          	ld	s2,0(sp)
    800062b8:	02010113          	addi	sp,sp,32
    800062bc:	00008067          	ret

00000000800062c0 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800062c0:	ff010113          	addi	sp,sp,-16
    800062c4:	00113423          	sd	ra,8(sp)
    800062c8:	00813023          	sd	s0,0(sp)
    800062cc:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    800062d0:	00000097          	auipc	ra,0x0
    800062d4:	0bc080e7          	jalr	188(ra) # 8000638c <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800062d8:	00813083          	ld	ra,8(sp)
    800062dc:	00013403          	ld	s0,0(sp)
    800062e0:	01010113          	addi	sp,sp,16
    800062e4:	00008067          	ret

00000000800062e8 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800062e8:	fe010113          	addi	sp,sp,-32
    800062ec:	00113c23          	sd	ra,24(sp)
    800062f0:	00813823          	sd	s0,16(sp)
    800062f4:	00913423          	sd	s1,8(sp)
    800062f8:	01213023          	sd	s2,0(sp)
    800062fc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006300:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006304:	00600493          	li	s1,6
    while (--i > 0) {
    80006308:	fff4849b          	addiw	s1,s1,-1
    8000630c:	04905463          	blez	s1,80006354 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80006310:	00003517          	auipc	a0,0x3
    80006314:	28850513          	addi	a0,a0,648 # 80009598 <_ZL6digits+0x18>
    80006318:	00000097          	auipc	ra,0x0
    8000631c:	9d4080e7          	jalr	-1580(ra) # 80005cec <_Z11printStringPKc>
        printInt(sleep_time);
    80006320:	00000613          	li	a2,0
    80006324:	00a00593          	li	a1,10
    80006328:	0009051b          	sext.w	a0,s2
    8000632c:	00000097          	auipc	ra,0x0
    80006330:	b58080e7          	jalr	-1192(ra) # 80005e84 <_Z8printIntiii>
        printString(" !\n");
    80006334:	00003517          	auipc	a0,0x3
    80006338:	26c50513          	addi	a0,a0,620 # 800095a0 <_ZL6digits+0x20>
    8000633c:	00000097          	auipc	ra,0x0
    80006340:	9b0080e7          	jalr	-1616(ra) # 80005cec <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006344:	00090513          	mv	a0,s2
    80006348:	ffffb097          	auipc	ra,0xffffb
    8000634c:	0f0080e7          	jalr	240(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    80006350:	fb9ff06f          	j	80006308 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006354:	00a00793          	li	a5,10
    80006358:	02f95933          	divu	s2,s2,a5
    8000635c:	fff90913          	addi	s2,s2,-1
    80006360:	00006797          	auipc	a5,0x6
    80006364:	94878793          	addi	a5,a5,-1720 # 8000bca8 <finished>
    80006368:	01278933          	add	s2,a5,s2
    8000636c:	00100793          	li	a5,1
    80006370:	00f90023          	sb	a5,0(s2)
}
    80006374:	01813083          	ld	ra,24(sp)
    80006378:	01013403          	ld	s0,16(sp)
    8000637c:	00813483          	ld	s1,8(sp)
    80006380:	00013903          	ld	s2,0(sp)
    80006384:	02010113          	addi	sp,sp,32
    80006388:	00008067          	ret

000000008000638c <_Z12testSleepingv>:

void testSleeping()
{
    8000638c:	fc010113          	addi	sp,sp,-64
    80006390:	02113c23          	sd	ra,56(sp)
    80006394:	02813823          	sd	s0,48(sp)
    80006398:	02913423          	sd	s1,40(sp)
    8000639c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800063a0:	00a00793          	li	a5,10
    800063a4:	fcf43823          	sd	a5,-48(s0)
    800063a8:	01400793          	li	a5,20
    800063ac:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800063b0:	00000493          	li	s1,0
    800063b4:	02c0006f          	j	800063e0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800063b8:	00349793          	slli	a5,s1,0x3
    800063bc:	fd040613          	addi	a2,s0,-48
    800063c0:	00f60633          	add	a2,a2,a5
    800063c4:	00000597          	auipc	a1,0x0
    800063c8:	f2458593          	addi	a1,a1,-220 # 800062e8 <_Z9sleepyRunPv>
    800063cc:	fc040513          	addi	a0,s0,-64
    800063d0:	00f50533          	add	a0,a0,a5
    800063d4:	ffffb097          	auipc	ra,0xffffb
    800063d8:	ee0080e7          	jalr	-288(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800063dc:	0014849b          	addiw	s1,s1,1
    800063e0:	00100793          	li	a5,1
    800063e4:	fc97dae3          	bge	a5,s1,800063b8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800063e8:	00006797          	auipc	a5,0x6
    800063ec:	8c07c783          	lbu	a5,-1856(a5) # 8000bca8 <finished>
    800063f0:	fe078ce3          	beqz	a5,800063e8 <_Z12testSleepingv+0x5c>
    800063f4:	00006797          	auipc	a5,0x6
    800063f8:	8b57c783          	lbu	a5,-1867(a5) # 8000bca9 <finished+0x1>
    800063fc:	fe0786e3          	beqz	a5,800063e8 <_Z12testSleepingv+0x5c>
}
    80006400:	03813083          	ld	ra,56(sp)
    80006404:	03013403          	ld	s0,48(sp)
    80006408:	02813483          	ld	s1,40(sp)
    8000640c:	04010113          	addi	sp,sp,64
    80006410:	00008067          	ret

0000000080006414 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80006414:	fe010113          	addi	sp,sp,-32
    80006418:	00113c23          	sd	ra,24(sp)
    8000641c:	00813823          	sd	s0,16(sp)
    80006420:	00913423          	sd	s1,8(sp)
    80006424:	02010413          	addi	s0,sp,32
    80006428:	00050493          	mv	s1,a0
    8000642c:	00b52023          	sw	a1,0(a0)
    80006430:	00052823          	sw	zero,16(a0)
    80006434:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006438:	00259513          	slli	a0,a1,0x2
    8000643c:	ffffb097          	auipc	ra,0xffffb
    80006440:	e1c080e7          	jalr	-484(ra) # 80001258 <mem_alloc>
    80006444:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006448:	00000593          	li	a1,0
    8000644c:	02048513          	addi	a0,s1,32
    80006450:	ffffb097          	auipc	ra,0xffffb
    80006454:	f2c080e7          	jalr	-212(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    80006458:	0004a583          	lw	a1,0(s1)
    8000645c:	01848513          	addi	a0,s1,24
    80006460:	ffffb097          	auipc	ra,0xffffb
    80006464:	f1c080e7          	jalr	-228(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80006468:	00100593          	li	a1,1
    8000646c:	02848513          	addi	a0,s1,40
    80006470:	ffffb097          	auipc	ra,0xffffb
    80006474:	f0c080e7          	jalr	-244(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80006478:	00100593          	li	a1,1
    8000647c:	03048513          	addi	a0,s1,48
    80006480:	ffffb097          	auipc	ra,0xffffb
    80006484:	efc080e7          	jalr	-260(ra) # 8000137c <sem_open>
}
    80006488:	01813083          	ld	ra,24(sp)
    8000648c:	01013403          	ld	s0,16(sp)
    80006490:	00813483          	ld	s1,8(sp)
    80006494:	02010113          	addi	sp,sp,32
    80006498:	00008067          	ret

000000008000649c <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    8000649c:	fe010113          	addi	sp,sp,-32
    800064a0:	00113c23          	sd	ra,24(sp)
    800064a4:	00813823          	sd	s0,16(sp)
    800064a8:	00913423          	sd	s1,8(sp)
    800064ac:	02010413          	addi	s0,sp,32
    800064b0:	00050493          	mv	s1,a0
    putc('\n');
    800064b4:	00a00513          	li	a0,10
    800064b8:	ffffb097          	auipc	ra,0xffffb
    800064bc:	080080e7          	jalr	128(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    800064c0:	00003517          	auipc	a0,0x3
    800064c4:	0e850513          	addi	a0,a0,232 # 800095a8 <_ZL6digits+0x28>
    800064c8:	00000097          	auipc	ra,0x0
    800064cc:	824080e7          	jalr	-2012(ra) # 80005cec <_Z11printStringPKc>
    while (head != tail) {
    800064d0:	0104a783          	lw	a5,16(s1)
    800064d4:	0144a703          	lw	a4,20(s1)
    800064d8:	00e78c63          	beq	a5,a4,800064f0 <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800064dc:	0017879b          	addiw	a5,a5,1
    800064e0:	0004a703          	lw	a4,0(s1)
    800064e4:	02e7e7bb          	remw	a5,a5,a4
    800064e8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800064ec:	fe5ff06f          	j	800064d0 <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    800064f0:	02100513          	li	a0,33
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	044080e7          	jalr	68(ra) # 80001538 <putc>
    putc('\n');
    800064fc:	00a00513          	li	a0,10
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	038080e7          	jalr	56(ra) # 80001538 <putc>

    mem_free(buffer);
    80006508:	0084b503          	ld	a0,8(s1)
    8000650c:	ffffb097          	auipc	ra,0xffffb
    80006510:	d7c080e7          	jalr	-644(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    80006514:	0204b503          	ld	a0,32(s1)
    80006518:	ffffb097          	auipc	ra,0xffffb
    8000651c:	e9c080e7          	jalr	-356(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80006520:	0184b503          	ld	a0,24(s1)
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	e90080e7          	jalr	-368(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    8000652c:	0304b503          	ld	a0,48(s1)
    80006530:	ffffb097          	auipc	ra,0xffffb
    80006534:	e84080e7          	jalr	-380(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80006538:	0284b503          	ld	a0,40(s1)
    8000653c:	ffffb097          	auipc	ra,0xffffb
    80006540:	e78080e7          	jalr	-392(ra) # 800013b4 <sem_close>
}
    80006544:	01813083          	ld	ra,24(sp)
    80006548:	01013403          	ld	s0,16(sp)
    8000654c:	00813483          	ld	s1,8(sp)
    80006550:	02010113          	addi	sp,sp,32
    80006554:	00008067          	ret

0000000080006558 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80006558:	fe010113          	addi	sp,sp,-32
    8000655c:	00113c23          	sd	ra,24(sp)
    80006560:	00813823          	sd	s0,16(sp)
    80006564:	00913423          	sd	s1,8(sp)
    80006568:	01213023          	sd	s2,0(sp)
    8000656c:	02010413          	addi	s0,sp,32
    80006570:	00050493          	mv	s1,a0
    80006574:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006578:	01853503          	ld	a0,24(a0)
    8000657c:	ffffb097          	auipc	ra,0xffffb
    80006580:	e64080e7          	jalr	-412(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80006584:	0304b503          	ld	a0,48(s1)
    80006588:	ffffb097          	auipc	ra,0xffffb
    8000658c:	e58080e7          	jalr	-424(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80006590:	0084b783          	ld	a5,8(s1)
    80006594:	0144a703          	lw	a4,20(s1)
    80006598:	00271713          	slli	a4,a4,0x2
    8000659c:	00e787b3          	add	a5,a5,a4
    800065a0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800065a4:	0144a783          	lw	a5,20(s1)
    800065a8:	0017879b          	addiw	a5,a5,1
    800065ac:	0004a703          	lw	a4,0(s1)
    800065b0:	02e7e7bb          	remw	a5,a5,a4
    800065b4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800065b8:	0304b503          	ld	a0,48(s1)
    800065bc:	ffffb097          	auipc	ra,0xffffb
    800065c0:	e50080e7          	jalr	-432(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    800065c4:	0204b503          	ld	a0,32(s1)
    800065c8:	ffffb097          	auipc	ra,0xffffb
    800065cc:	e44080e7          	jalr	-444(ra) # 8000140c <sem_signal>

}
    800065d0:	01813083          	ld	ra,24(sp)
    800065d4:	01013403          	ld	s0,16(sp)
    800065d8:	00813483          	ld	s1,8(sp)
    800065dc:	00013903          	ld	s2,0(sp)
    800065e0:	02010113          	addi	sp,sp,32
    800065e4:	00008067          	ret

00000000800065e8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800065e8:	fe010113          	addi	sp,sp,-32
    800065ec:	00113c23          	sd	ra,24(sp)
    800065f0:	00813823          	sd	s0,16(sp)
    800065f4:	00913423          	sd	s1,8(sp)
    800065f8:	01213023          	sd	s2,0(sp)
    800065fc:	02010413          	addi	s0,sp,32
    80006600:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006604:	02053503          	ld	a0,32(a0)
    80006608:	ffffb097          	auipc	ra,0xffffb
    8000660c:	dd8080e7          	jalr	-552(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80006610:	0284b503          	ld	a0,40(s1)
    80006614:	ffffb097          	auipc	ra,0xffffb
    80006618:	dcc080e7          	jalr	-564(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    8000661c:	0084b703          	ld	a4,8(s1)
    80006620:	0104a783          	lw	a5,16(s1)
    80006624:	00279693          	slli	a3,a5,0x2
    80006628:	00d70733          	add	a4,a4,a3
    8000662c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006630:	0017879b          	addiw	a5,a5,1
    80006634:	0004a703          	lw	a4,0(s1)
    80006638:	02e7e7bb          	remw	a5,a5,a4
    8000663c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006640:	0284b503          	ld	a0,40(s1)
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	dc8080e7          	jalr	-568(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    8000664c:	0184b503          	ld	a0,24(s1)
    80006650:	ffffb097          	auipc	ra,0xffffb
    80006654:	dbc080e7          	jalr	-580(ra) # 8000140c <sem_signal>

    return ret;
}
    80006658:	00090513          	mv	a0,s2
    8000665c:	01813083          	ld	ra,24(sp)
    80006660:	01013403          	ld	s0,16(sp)
    80006664:	00813483          	ld	s1,8(sp)
    80006668:	00013903          	ld	s2,0(sp)
    8000666c:	02010113          	addi	sp,sp,32
    80006670:	00008067          	ret

0000000080006674 <start>:
    80006674:	ff010113          	addi	sp,sp,-16
    80006678:	00813423          	sd	s0,8(sp)
    8000667c:	01010413          	addi	s0,sp,16
    80006680:	300027f3          	csrr	a5,mstatus
    80006684:	ffffe737          	lui	a4,0xffffe
    80006688:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff18ef>
    8000668c:	00e7f7b3          	and	a5,a5,a4
    80006690:	00001737          	lui	a4,0x1
    80006694:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006698:	00e7e7b3          	or	a5,a5,a4
    8000669c:	30079073          	csrw	mstatus,a5
    800066a0:	00000797          	auipc	a5,0x0
    800066a4:	16078793          	addi	a5,a5,352 # 80006800 <system_main>
    800066a8:	34179073          	csrw	mepc,a5
    800066ac:	00000793          	li	a5,0
    800066b0:	18079073          	csrw	satp,a5
    800066b4:	000107b7          	lui	a5,0x10
    800066b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800066bc:	30279073          	csrw	medeleg,a5
    800066c0:	30379073          	csrw	mideleg,a5
    800066c4:	104027f3          	csrr	a5,sie
    800066c8:	2227e793          	ori	a5,a5,546
    800066cc:	10479073          	csrw	sie,a5
    800066d0:	fff00793          	li	a5,-1
    800066d4:	00a7d793          	srli	a5,a5,0xa
    800066d8:	3b079073          	csrw	pmpaddr0,a5
    800066dc:	00f00793          	li	a5,15
    800066e0:	3a079073          	csrw	pmpcfg0,a5
    800066e4:	f14027f3          	csrr	a5,mhartid
    800066e8:	0200c737          	lui	a4,0x200c
    800066ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800066f0:	0007869b          	sext.w	a3,a5
    800066f4:	00269713          	slli	a4,a3,0x2
    800066f8:	000f4637          	lui	a2,0xf4
    800066fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006700:	00d70733          	add	a4,a4,a3
    80006704:	0037979b          	slliw	a5,a5,0x3
    80006708:	020046b7          	lui	a3,0x2004
    8000670c:	00d787b3          	add	a5,a5,a3
    80006710:	00c585b3          	add	a1,a1,a2
    80006714:	00371693          	slli	a3,a4,0x3
    80006718:	00005717          	auipc	a4,0x5
    8000671c:	59870713          	addi	a4,a4,1432 # 8000bcb0 <timer_scratch>
    80006720:	00b7b023          	sd	a1,0(a5)
    80006724:	00d70733          	add	a4,a4,a3
    80006728:	00f73c23          	sd	a5,24(a4)
    8000672c:	02c73023          	sd	a2,32(a4)
    80006730:	34071073          	csrw	mscratch,a4
    80006734:	00000797          	auipc	a5,0x0
    80006738:	6ec78793          	addi	a5,a5,1772 # 80006e20 <timervec>
    8000673c:	30579073          	csrw	mtvec,a5
    80006740:	300027f3          	csrr	a5,mstatus
    80006744:	0087e793          	ori	a5,a5,8
    80006748:	30079073          	csrw	mstatus,a5
    8000674c:	304027f3          	csrr	a5,mie
    80006750:	0807e793          	ori	a5,a5,128
    80006754:	30479073          	csrw	mie,a5
    80006758:	f14027f3          	csrr	a5,mhartid
    8000675c:	0007879b          	sext.w	a5,a5
    80006760:	00078213          	mv	tp,a5
    80006764:	30200073          	mret
    80006768:	00813403          	ld	s0,8(sp)
    8000676c:	01010113          	addi	sp,sp,16
    80006770:	00008067          	ret

0000000080006774 <timerinit>:
    80006774:	ff010113          	addi	sp,sp,-16
    80006778:	00813423          	sd	s0,8(sp)
    8000677c:	01010413          	addi	s0,sp,16
    80006780:	f14027f3          	csrr	a5,mhartid
    80006784:	0200c737          	lui	a4,0x200c
    80006788:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000678c:	0007869b          	sext.w	a3,a5
    80006790:	00269713          	slli	a4,a3,0x2
    80006794:	000f4637          	lui	a2,0xf4
    80006798:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000679c:	00d70733          	add	a4,a4,a3
    800067a0:	0037979b          	slliw	a5,a5,0x3
    800067a4:	020046b7          	lui	a3,0x2004
    800067a8:	00d787b3          	add	a5,a5,a3
    800067ac:	00c585b3          	add	a1,a1,a2
    800067b0:	00371693          	slli	a3,a4,0x3
    800067b4:	00005717          	auipc	a4,0x5
    800067b8:	4fc70713          	addi	a4,a4,1276 # 8000bcb0 <timer_scratch>
    800067bc:	00b7b023          	sd	a1,0(a5)
    800067c0:	00d70733          	add	a4,a4,a3
    800067c4:	00f73c23          	sd	a5,24(a4)
    800067c8:	02c73023          	sd	a2,32(a4)
    800067cc:	34071073          	csrw	mscratch,a4
    800067d0:	00000797          	auipc	a5,0x0
    800067d4:	65078793          	addi	a5,a5,1616 # 80006e20 <timervec>
    800067d8:	30579073          	csrw	mtvec,a5
    800067dc:	300027f3          	csrr	a5,mstatus
    800067e0:	0087e793          	ori	a5,a5,8
    800067e4:	30079073          	csrw	mstatus,a5
    800067e8:	304027f3          	csrr	a5,mie
    800067ec:	0807e793          	ori	a5,a5,128
    800067f0:	30479073          	csrw	mie,a5
    800067f4:	00813403          	ld	s0,8(sp)
    800067f8:	01010113          	addi	sp,sp,16
    800067fc:	00008067          	ret

0000000080006800 <system_main>:
    80006800:	fe010113          	addi	sp,sp,-32
    80006804:	00813823          	sd	s0,16(sp)
    80006808:	00913423          	sd	s1,8(sp)
    8000680c:	00113c23          	sd	ra,24(sp)
    80006810:	02010413          	addi	s0,sp,32
    80006814:	00000097          	auipc	ra,0x0
    80006818:	0c4080e7          	jalr	196(ra) # 800068d8 <cpuid>
    8000681c:	00005497          	auipc	s1,0x5
    80006820:	38448493          	addi	s1,s1,900 # 8000bba0 <started>
    80006824:	02050263          	beqz	a0,80006848 <system_main+0x48>
    80006828:	0004a783          	lw	a5,0(s1)
    8000682c:	0007879b          	sext.w	a5,a5
    80006830:	fe078ce3          	beqz	a5,80006828 <system_main+0x28>
    80006834:	0ff0000f          	fence
    80006838:	00003517          	auipc	a0,0x3
    8000683c:	db850513          	addi	a0,a0,-584 # 800095f0 <_ZL6digits+0x70>
    80006840:	00001097          	auipc	ra,0x1
    80006844:	a7c080e7          	jalr	-1412(ra) # 800072bc <panic>
    80006848:	00001097          	auipc	ra,0x1
    8000684c:	9d0080e7          	jalr	-1584(ra) # 80007218 <consoleinit>
    80006850:	00001097          	auipc	ra,0x1
    80006854:	15c080e7          	jalr	348(ra) # 800079ac <printfinit>
    80006858:	00003517          	auipc	a0,0x3
    8000685c:	8a850513          	addi	a0,a0,-1880 # 80009100 <CONSOLE_STATUS+0xf0>
    80006860:	00001097          	auipc	ra,0x1
    80006864:	ab8080e7          	jalr	-1352(ra) # 80007318 <__printf>
    80006868:	00003517          	auipc	a0,0x3
    8000686c:	d5850513          	addi	a0,a0,-680 # 800095c0 <_ZL6digits+0x40>
    80006870:	00001097          	auipc	ra,0x1
    80006874:	aa8080e7          	jalr	-1368(ra) # 80007318 <__printf>
    80006878:	00003517          	auipc	a0,0x3
    8000687c:	88850513          	addi	a0,a0,-1912 # 80009100 <CONSOLE_STATUS+0xf0>
    80006880:	00001097          	auipc	ra,0x1
    80006884:	a98080e7          	jalr	-1384(ra) # 80007318 <__printf>
    80006888:	00001097          	auipc	ra,0x1
    8000688c:	4b0080e7          	jalr	1200(ra) # 80007d38 <kinit>
    80006890:	00000097          	auipc	ra,0x0
    80006894:	148080e7          	jalr	328(ra) # 800069d8 <trapinit>
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	16c080e7          	jalr	364(ra) # 80006a04 <trapinithart>
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	5c0080e7          	jalr	1472(ra) # 80006e60 <plicinit>
    800068a8:	00000097          	auipc	ra,0x0
    800068ac:	5e0080e7          	jalr	1504(ra) # 80006e88 <plicinithart>
    800068b0:	00000097          	auipc	ra,0x0
    800068b4:	078080e7          	jalr	120(ra) # 80006928 <userinit>
    800068b8:	0ff0000f          	fence
    800068bc:	00100793          	li	a5,1
    800068c0:	00003517          	auipc	a0,0x3
    800068c4:	d1850513          	addi	a0,a0,-744 # 800095d8 <_ZL6digits+0x58>
    800068c8:	00f4a023          	sw	a5,0(s1)
    800068cc:	00001097          	auipc	ra,0x1
    800068d0:	a4c080e7          	jalr	-1460(ra) # 80007318 <__printf>
    800068d4:	0000006f          	j	800068d4 <system_main+0xd4>

00000000800068d8 <cpuid>:
    800068d8:	ff010113          	addi	sp,sp,-16
    800068dc:	00813423          	sd	s0,8(sp)
    800068e0:	01010413          	addi	s0,sp,16
    800068e4:	00020513          	mv	a0,tp
    800068e8:	00813403          	ld	s0,8(sp)
    800068ec:	0005051b          	sext.w	a0,a0
    800068f0:	01010113          	addi	sp,sp,16
    800068f4:	00008067          	ret

00000000800068f8 <mycpu>:
    800068f8:	ff010113          	addi	sp,sp,-16
    800068fc:	00813423          	sd	s0,8(sp)
    80006900:	01010413          	addi	s0,sp,16
    80006904:	00020793          	mv	a5,tp
    80006908:	00813403          	ld	s0,8(sp)
    8000690c:	0007879b          	sext.w	a5,a5
    80006910:	00779793          	slli	a5,a5,0x7
    80006914:	00006517          	auipc	a0,0x6
    80006918:	3cc50513          	addi	a0,a0,972 # 8000cce0 <cpus>
    8000691c:	00f50533          	add	a0,a0,a5
    80006920:	01010113          	addi	sp,sp,16
    80006924:	00008067          	ret

0000000080006928 <userinit>:
    80006928:	ff010113          	addi	sp,sp,-16
    8000692c:	00813423          	sd	s0,8(sp)
    80006930:	01010413          	addi	s0,sp,16
    80006934:	00813403          	ld	s0,8(sp)
    80006938:	01010113          	addi	sp,sp,16
    8000693c:	ffffd317          	auipc	t1,0xffffd
    80006940:	c8c30067          	jr	-884(t1) # 800035c8 <main>

0000000080006944 <either_copyout>:
    80006944:	ff010113          	addi	sp,sp,-16
    80006948:	00813023          	sd	s0,0(sp)
    8000694c:	00113423          	sd	ra,8(sp)
    80006950:	01010413          	addi	s0,sp,16
    80006954:	02051663          	bnez	a0,80006980 <either_copyout+0x3c>
    80006958:	00058513          	mv	a0,a1
    8000695c:	00060593          	mv	a1,a2
    80006960:	0006861b          	sext.w	a2,a3
    80006964:	00002097          	auipc	ra,0x2
    80006968:	c60080e7          	jalr	-928(ra) # 800085c4 <__memmove>
    8000696c:	00813083          	ld	ra,8(sp)
    80006970:	00013403          	ld	s0,0(sp)
    80006974:	00000513          	li	a0,0
    80006978:	01010113          	addi	sp,sp,16
    8000697c:	00008067          	ret
    80006980:	00003517          	auipc	a0,0x3
    80006984:	c9850513          	addi	a0,a0,-872 # 80009618 <_ZL6digits+0x98>
    80006988:	00001097          	auipc	ra,0x1
    8000698c:	934080e7          	jalr	-1740(ra) # 800072bc <panic>

0000000080006990 <either_copyin>:
    80006990:	ff010113          	addi	sp,sp,-16
    80006994:	00813023          	sd	s0,0(sp)
    80006998:	00113423          	sd	ra,8(sp)
    8000699c:	01010413          	addi	s0,sp,16
    800069a0:	02059463          	bnez	a1,800069c8 <either_copyin+0x38>
    800069a4:	00060593          	mv	a1,a2
    800069a8:	0006861b          	sext.w	a2,a3
    800069ac:	00002097          	auipc	ra,0x2
    800069b0:	c18080e7          	jalr	-1000(ra) # 800085c4 <__memmove>
    800069b4:	00813083          	ld	ra,8(sp)
    800069b8:	00013403          	ld	s0,0(sp)
    800069bc:	00000513          	li	a0,0
    800069c0:	01010113          	addi	sp,sp,16
    800069c4:	00008067          	ret
    800069c8:	00003517          	auipc	a0,0x3
    800069cc:	c7850513          	addi	a0,a0,-904 # 80009640 <_ZL6digits+0xc0>
    800069d0:	00001097          	auipc	ra,0x1
    800069d4:	8ec080e7          	jalr	-1812(ra) # 800072bc <panic>

00000000800069d8 <trapinit>:
    800069d8:	ff010113          	addi	sp,sp,-16
    800069dc:	00813423          	sd	s0,8(sp)
    800069e0:	01010413          	addi	s0,sp,16
    800069e4:	00813403          	ld	s0,8(sp)
    800069e8:	00003597          	auipc	a1,0x3
    800069ec:	c8058593          	addi	a1,a1,-896 # 80009668 <_ZL6digits+0xe8>
    800069f0:	00006517          	auipc	a0,0x6
    800069f4:	37050513          	addi	a0,a0,880 # 8000cd60 <tickslock>
    800069f8:	01010113          	addi	sp,sp,16
    800069fc:	00001317          	auipc	t1,0x1
    80006a00:	5cc30067          	jr	1484(t1) # 80007fc8 <initlock>

0000000080006a04 <trapinithart>:
    80006a04:	ff010113          	addi	sp,sp,-16
    80006a08:	00813423          	sd	s0,8(sp)
    80006a0c:	01010413          	addi	s0,sp,16
    80006a10:	00000797          	auipc	a5,0x0
    80006a14:	30078793          	addi	a5,a5,768 # 80006d10 <kernelvec>
    80006a18:	10579073          	csrw	stvec,a5
    80006a1c:	00813403          	ld	s0,8(sp)
    80006a20:	01010113          	addi	sp,sp,16
    80006a24:	00008067          	ret

0000000080006a28 <usertrap>:
    80006a28:	ff010113          	addi	sp,sp,-16
    80006a2c:	00813423          	sd	s0,8(sp)
    80006a30:	01010413          	addi	s0,sp,16
    80006a34:	00813403          	ld	s0,8(sp)
    80006a38:	01010113          	addi	sp,sp,16
    80006a3c:	00008067          	ret

0000000080006a40 <usertrapret>:
    80006a40:	ff010113          	addi	sp,sp,-16
    80006a44:	00813423          	sd	s0,8(sp)
    80006a48:	01010413          	addi	s0,sp,16
    80006a4c:	00813403          	ld	s0,8(sp)
    80006a50:	01010113          	addi	sp,sp,16
    80006a54:	00008067          	ret

0000000080006a58 <kerneltrap>:
    80006a58:	fe010113          	addi	sp,sp,-32
    80006a5c:	00813823          	sd	s0,16(sp)
    80006a60:	00113c23          	sd	ra,24(sp)
    80006a64:	00913423          	sd	s1,8(sp)
    80006a68:	02010413          	addi	s0,sp,32
    80006a6c:	142025f3          	csrr	a1,scause
    80006a70:	100027f3          	csrr	a5,sstatus
    80006a74:	0027f793          	andi	a5,a5,2
    80006a78:	10079c63          	bnez	a5,80006b90 <kerneltrap+0x138>
    80006a7c:	142027f3          	csrr	a5,scause
    80006a80:	0207ce63          	bltz	a5,80006abc <kerneltrap+0x64>
    80006a84:	00003517          	auipc	a0,0x3
    80006a88:	c2c50513          	addi	a0,a0,-980 # 800096b0 <_ZL6digits+0x130>
    80006a8c:	00001097          	auipc	ra,0x1
    80006a90:	88c080e7          	jalr	-1908(ra) # 80007318 <__printf>
    80006a94:	141025f3          	csrr	a1,sepc
    80006a98:	14302673          	csrr	a2,stval
    80006a9c:	00003517          	auipc	a0,0x3
    80006aa0:	c2450513          	addi	a0,a0,-988 # 800096c0 <_ZL6digits+0x140>
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	874080e7          	jalr	-1932(ra) # 80007318 <__printf>
    80006aac:	00003517          	auipc	a0,0x3
    80006ab0:	c2c50513          	addi	a0,a0,-980 # 800096d8 <_ZL6digits+0x158>
    80006ab4:	00001097          	auipc	ra,0x1
    80006ab8:	808080e7          	jalr	-2040(ra) # 800072bc <panic>
    80006abc:	0ff7f713          	andi	a4,a5,255
    80006ac0:	00900693          	li	a3,9
    80006ac4:	04d70063          	beq	a4,a3,80006b04 <kerneltrap+0xac>
    80006ac8:	fff00713          	li	a4,-1
    80006acc:	03f71713          	slli	a4,a4,0x3f
    80006ad0:	00170713          	addi	a4,a4,1
    80006ad4:	fae798e3          	bne	a5,a4,80006a84 <kerneltrap+0x2c>
    80006ad8:	00000097          	auipc	ra,0x0
    80006adc:	e00080e7          	jalr	-512(ra) # 800068d8 <cpuid>
    80006ae0:	06050663          	beqz	a0,80006b4c <kerneltrap+0xf4>
    80006ae4:	144027f3          	csrr	a5,sip
    80006ae8:	ffd7f793          	andi	a5,a5,-3
    80006aec:	14479073          	csrw	sip,a5
    80006af0:	01813083          	ld	ra,24(sp)
    80006af4:	01013403          	ld	s0,16(sp)
    80006af8:	00813483          	ld	s1,8(sp)
    80006afc:	02010113          	addi	sp,sp,32
    80006b00:	00008067          	ret
    80006b04:	00000097          	auipc	ra,0x0
    80006b08:	3d0080e7          	jalr	976(ra) # 80006ed4 <plic_claim>
    80006b0c:	00a00793          	li	a5,10
    80006b10:	00050493          	mv	s1,a0
    80006b14:	06f50863          	beq	a0,a5,80006b84 <kerneltrap+0x12c>
    80006b18:	fc050ce3          	beqz	a0,80006af0 <kerneltrap+0x98>
    80006b1c:	00050593          	mv	a1,a0
    80006b20:	00003517          	auipc	a0,0x3
    80006b24:	b7050513          	addi	a0,a0,-1168 # 80009690 <_ZL6digits+0x110>
    80006b28:	00000097          	auipc	ra,0x0
    80006b2c:	7f0080e7          	jalr	2032(ra) # 80007318 <__printf>
    80006b30:	01013403          	ld	s0,16(sp)
    80006b34:	01813083          	ld	ra,24(sp)
    80006b38:	00048513          	mv	a0,s1
    80006b3c:	00813483          	ld	s1,8(sp)
    80006b40:	02010113          	addi	sp,sp,32
    80006b44:	00000317          	auipc	t1,0x0
    80006b48:	3c830067          	jr	968(t1) # 80006f0c <plic_complete>
    80006b4c:	00006517          	auipc	a0,0x6
    80006b50:	21450513          	addi	a0,a0,532 # 8000cd60 <tickslock>
    80006b54:	00001097          	auipc	ra,0x1
    80006b58:	498080e7          	jalr	1176(ra) # 80007fec <acquire>
    80006b5c:	00005717          	auipc	a4,0x5
    80006b60:	04870713          	addi	a4,a4,72 # 8000bba4 <ticks>
    80006b64:	00072783          	lw	a5,0(a4)
    80006b68:	00006517          	auipc	a0,0x6
    80006b6c:	1f850513          	addi	a0,a0,504 # 8000cd60 <tickslock>
    80006b70:	0017879b          	addiw	a5,a5,1
    80006b74:	00f72023          	sw	a5,0(a4)
    80006b78:	00001097          	auipc	ra,0x1
    80006b7c:	540080e7          	jalr	1344(ra) # 800080b8 <release>
    80006b80:	f65ff06f          	j	80006ae4 <kerneltrap+0x8c>
    80006b84:	00001097          	auipc	ra,0x1
    80006b88:	09c080e7          	jalr	156(ra) # 80007c20 <uartintr>
    80006b8c:	fa5ff06f          	j	80006b30 <kerneltrap+0xd8>
    80006b90:	00003517          	auipc	a0,0x3
    80006b94:	ae050513          	addi	a0,a0,-1312 # 80009670 <_ZL6digits+0xf0>
    80006b98:	00000097          	auipc	ra,0x0
    80006b9c:	724080e7          	jalr	1828(ra) # 800072bc <panic>

0000000080006ba0 <clockintr>:
    80006ba0:	fe010113          	addi	sp,sp,-32
    80006ba4:	00813823          	sd	s0,16(sp)
    80006ba8:	00913423          	sd	s1,8(sp)
    80006bac:	00113c23          	sd	ra,24(sp)
    80006bb0:	02010413          	addi	s0,sp,32
    80006bb4:	00006497          	auipc	s1,0x6
    80006bb8:	1ac48493          	addi	s1,s1,428 # 8000cd60 <tickslock>
    80006bbc:	00048513          	mv	a0,s1
    80006bc0:	00001097          	auipc	ra,0x1
    80006bc4:	42c080e7          	jalr	1068(ra) # 80007fec <acquire>
    80006bc8:	00005717          	auipc	a4,0x5
    80006bcc:	fdc70713          	addi	a4,a4,-36 # 8000bba4 <ticks>
    80006bd0:	00072783          	lw	a5,0(a4)
    80006bd4:	01013403          	ld	s0,16(sp)
    80006bd8:	01813083          	ld	ra,24(sp)
    80006bdc:	00048513          	mv	a0,s1
    80006be0:	0017879b          	addiw	a5,a5,1
    80006be4:	00813483          	ld	s1,8(sp)
    80006be8:	00f72023          	sw	a5,0(a4)
    80006bec:	02010113          	addi	sp,sp,32
    80006bf0:	00001317          	auipc	t1,0x1
    80006bf4:	4c830067          	jr	1224(t1) # 800080b8 <release>

0000000080006bf8 <devintr>:
    80006bf8:	142027f3          	csrr	a5,scause
    80006bfc:	00000513          	li	a0,0
    80006c00:	0007c463          	bltz	a5,80006c08 <devintr+0x10>
    80006c04:	00008067          	ret
    80006c08:	fe010113          	addi	sp,sp,-32
    80006c0c:	00813823          	sd	s0,16(sp)
    80006c10:	00113c23          	sd	ra,24(sp)
    80006c14:	00913423          	sd	s1,8(sp)
    80006c18:	02010413          	addi	s0,sp,32
    80006c1c:	0ff7f713          	andi	a4,a5,255
    80006c20:	00900693          	li	a3,9
    80006c24:	04d70c63          	beq	a4,a3,80006c7c <devintr+0x84>
    80006c28:	fff00713          	li	a4,-1
    80006c2c:	03f71713          	slli	a4,a4,0x3f
    80006c30:	00170713          	addi	a4,a4,1
    80006c34:	00e78c63          	beq	a5,a4,80006c4c <devintr+0x54>
    80006c38:	01813083          	ld	ra,24(sp)
    80006c3c:	01013403          	ld	s0,16(sp)
    80006c40:	00813483          	ld	s1,8(sp)
    80006c44:	02010113          	addi	sp,sp,32
    80006c48:	00008067          	ret
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	c8c080e7          	jalr	-884(ra) # 800068d8 <cpuid>
    80006c54:	06050663          	beqz	a0,80006cc0 <devintr+0xc8>
    80006c58:	144027f3          	csrr	a5,sip
    80006c5c:	ffd7f793          	andi	a5,a5,-3
    80006c60:	14479073          	csrw	sip,a5
    80006c64:	01813083          	ld	ra,24(sp)
    80006c68:	01013403          	ld	s0,16(sp)
    80006c6c:	00813483          	ld	s1,8(sp)
    80006c70:	00200513          	li	a0,2
    80006c74:	02010113          	addi	sp,sp,32
    80006c78:	00008067          	ret
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	258080e7          	jalr	600(ra) # 80006ed4 <plic_claim>
    80006c84:	00a00793          	li	a5,10
    80006c88:	00050493          	mv	s1,a0
    80006c8c:	06f50663          	beq	a0,a5,80006cf8 <devintr+0x100>
    80006c90:	00100513          	li	a0,1
    80006c94:	fa0482e3          	beqz	s1,80006c38 <devintr+0x40>
    80006c98:	00048593          	mv	a1,s1
    80006c9c:	00003517          	auipc	a0,0x3
    80006ca0:	9f450513          	addi	a0,a0,-1548 # 80009690 <_ZL6digits+0x110>
    80006ca4:	00000097          	auipc	ra,0x0
    80006ca8:	674080e7          	jalr	1652(ra) # 80007318 <__printf>
    80006cac:	00048513          	mv	a0,s1
    80006cb0:	00000097          	auipc	ra,0x0
    80006cb4:	25c080e7          	jalr	604(ra) # 80006f0c <plic_complete>
    80006cb8:	00100513          	li	a0,1
    80006cbc:	f7dff06f          	j	80006c38 <devintr+0x40>
    80006cc0:	00006517          	auipc	a0,0x6
    80006cc4:	0a050513          	addi	a0,a0,160 # 8000cd60 <tickslock>
    80006cc8:	00001097          	auipc	ra,0x1
    80006ccc:	324080e7          	jalr	804(ra) # 80007fec <acquire>
    80006cd0:	00005717          	auipc	a4,0x5
    80006cd4:	ed470713          	addi	a4,a4,-300 # 8000bba4 <ticks>
    80006cd8:	00072783          	lw	a5,0(a4)
    80006cdc:	00006517          	auipc	a0,0x6
    80006ce0:	08450513          	addi	a0,a0,132 # 8000cd60 <tickslock>
    80006ce4:	0017879b          	addiw	a5,a5,1
    80006ce8:	00f72023          	sw	a5,0(a4)
    80006cec:	00001097          	auipc	ra,0x1
    80006cf0:	3cc080e7          	jalr	972(ra) # 800080b8 <release>
    80006cf4:	f65ff06f          	j	80006c58 <devintr+0x60>
    80006cf8:	00001097          	auipc	ra,0x1
    80006cfc:	f28080e7          	jalr	-216(ra) # 80007c20 <uartintr>
    80006d00:	fadff06f          	j	80006cac <devintr+0xb4>
	...

0000000080006d10 <kernelvec>:
    80006d10:	f0010113          	addi	sp,sp,-256
    80006d14:	00113023          	sd	ra,0(sp)
    80006d18:	00213423          	sd	sp,8(sp)
    80006d1c:	00313823          	sd	gp,16(sp)
    80006d20:	00413c23          	sd	tp,24(sp)
    80006d24:	02513023          	sd	t0,32(sp)
    80006d28:	02613423          	sd	t1,40(sp)
    80006d2c:	02713823          	sd	t2,48(sp)
    80006d30:	02813c23          	sd	s0,56(sp)
    80006d34:	04913023          	sd	s1,64(sp)
    80006d38:	04a13423          	sd	a0,72(sp)
    80006d3c:	04b13823          	sd	a1,80(sp)
    80006d40:	04c13c23          	sd	a2,88(sp)
    80006d44:	06d13023          	sd	a3,96(sp)
    80006d48:	06e13423          	sd	a4,104(sp)
    80006d4c:	06f13823          	sd	a5,112(sp)
    80006d50:	07013c23          	sd	a6,120(sp)
    80006d54:	09113023          	sd	a7,128(sp)
    80006d58:	09213423          	sd	s2,136(sp)
    80006d5c:	09313823          	sd	s3,144(sp)
    80006d60:	09413c23          	sd	s4,152(sp)
    80006d64:	0b513023          	sd	s5,160(sp)
    80006d68:	0b613423          	sd	s6,168(sp)
    80006d6c:	0b713823          	sd	s7,176(sp)
    80006d70:	0b813c23          	sd	s8,184(sp)
    80006d74:	0d913023          	sd	s9,192(sp)
    80006d78:	0da13423          	sd	s10,200(sp)
    80006d7c:	0db13823          	sd	s11,208(sp)
    80006d80:	0dc13c23          	sd	t3,216(sp)
    80006d84:	0fd13023          	sd	t4,224(sp)
    80006d88:	0fe13423          	sd	t5,232(sp)
    80006d8c:	0ff13823          	sd	t6,240(sp)
    80006d90:	cc9ff0ef          	jal	ra,80006a58 <kerneltrap>
    80006d94:	00013083          	ld	ra,0(sp)
    80006d98:	00813103          	ld	sp,8(sp)
    80006d9c:	01013183          	ld	gp,16(sp)
    80006da0:	02013283          	ld	t0,32(sp)
    80006da4:	02813303          	ld	t1,40(sp)
    80006da8:	03013383          	ld	t2,48(sp)
    80006dac:	03813403          	ld	s0,56(sp)
    80006db0:	04013483          	ld	s1,64(sp)
    80006db4:	04813503          	ld	a0,72(sp)
    80006db8:	05013583          	ld	a1,80(sp)
    80006dbc:	05813603          	ld	a2,88(sp)
    80006dc0:	06013683          	ld	a3,96(sp)
    80006dc4:	06813703          	ld	a4,104(sp)
    80006dc8:	07013783          	ld	a5,112(sp)
    80006dcc:	07813803          	ld	a6,120(sp)
    80006dd0:	08013883          	ld	a7,128(sp)
    80006dd4:	08813903          	ld	s2,136(sp)
    80006dd8:	09013983          	ld	s3,144(sp)
    80006ddc:	09813a03          	ld	s4,152(sp)
    80006de0:	0a013a83          	ld	s5,160(sp)
    80006de4:	0a813b03          	ld	s6,168(sp)
    80006de8:	0b013b83          	ld	s7,176(sp)
    80006dec:	0b813c03          	ld	s8,184(sp)
    80006df0:	0c013c83          	ld	s9,192(sp)
    80006df4:	0c813d03          	ld	s10,200(sp)
    80006df8:	0d013d83          	ld	s11,208(sp)
    80006dfc:	0d813e03          	ld	t3,216(sp)
    80006e00:	0e013e83          	ld	t4,224(sp)
    80006e04:	0e813f03          	ld	t5,232(sp)
    80006e08:	0f013f83          	ld	t6,240(sp)
    80006e0c:	10010113          	addi	sp,sp,256
    80006e10:	10200073          	sret
    80006e14:	00000013          	nop
    80006e18:	00000013          	nop
    80006e1c:	00000013          	nop

0000000080006e20 <timervec>:
    80006e20:	34051573          	csrrw	a0,mscratch,a0
    80006e24:	00b53023          	sd	a1,0(a0)
    80006e28:	00c53423          	sd	a2,8(a0)
    80006e2c:	00d53823          	sd	a3,16(a0)
    80006e30:	01853583          	ld	a1,24(a0)
    80006e34:	02053603          	ld	a2,32(a0)
    80006e38:	0005b683          	ld	a3,0(a1)
    80006e3c:	00c686b3          	add	a3,a3,a2
    80006e40:	00d5b023          	sd	a3,0(a1)
    80006e44:	00200593          	li	a1,2
    80006e48:	14459073          	csrw	sip,a1
    80006e4c:	01053683          	ld	a3,16(a0)
    80006e50:	00853603          	ld	a2,8(a0)
    80006e54:	00053583          	ld	a1,0(a0)
    80006e58:	34051573          	csrrw	a0,mscratch,a0
    80006e5c:	30200073          	mret

0000000080006e60 <plicinit>:
    80006e60:	ff010113          	addi	sp,sp,-16
    80006e64:	00813423          	sd	s0,8(sp)
    80006e68:	01010413          	addi	s0,sp,16
    80006e6c:	00813403          	ld	s0,8(sp)
    80006e70:	0c0007b7          	lui	a5,0xc000
    80006e74:	00100713          	li	a4,1
    80006e78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006e7c:	00e7a223          	sw	a4,4(a5)
    80006e80:	01010113          	addi	sp,sp,16
    80006e84:	00008067          	ret

0000000080006e88 <plicinithart>:
    80006e88:	ff010113          	addi	sp,sp,-16
    80006e8c:	00813023          	sd	s0,0(sp)
    80006e90:	00113423          	sd	ra,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00000097          	auipc	ra,0x0
    80006e9c:	a40080e7          	jalr	-1472(ra) # 800068d8 <cpuid>
    80006ea0:	0085171b          	slliw	a4,a0,0x8
    80006ea4:	0c0027b7          	lui	a5,0xc002
    80006ea8:	00e787b3          	add	a5,a5,a4
    80006eac:	40200713          	li	a4,1026
    80006eb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006eb4:	00813083          	ld	ra,8(sp)
    80006eb8:	00013403          	ld	s0,0(sp)
    80006ebc:	00d5151b          	slliw	a0,a0,0xd
    80006ec0:	0c2017b7          	lui	a5,0xc201
    80006ec4:	00a78533          	add	a0,a5,a0
    80006ec8:	00052023          	sw	zero,0(a0)
    80006ecc:	01010113          	addi	sp,sp,16
    80006ed0:	00008067          	ret

0000000080006ed4 <plic_claim>:
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00813023          	sd	s0,0(sp)
    80006edc:	00113423          	sd	ra,8(sp)
    80006ee0:	01010413          	addi	s0,sp,16
    80006ee4:	00000097          	auipc	ra,0x0
    80006ee8:	9f4080e7          	jalr	-1548(ra) # 800068d8 <cpuid>
    80006eec:	00813083          	ld	ra,8(sp)
    80006ef0:	00013403          	ld	s0,0(sp)
    80006ef4:	00d5151b          	slliw	a0,a0,0xd
    80006ef8:	0c2017b7          	lui	a5,0xc201
    80006efc:	00a78533          	add	a0,a5,a0
    80006f00:	00452503          	lw	a0,4(a0)
    80006f04:	01010113          	addi	sp,sp,16
    80006f08:	00008067          	ret

0000000080006f0c <plic_complete>:
    80006f0c:	fe010113          	addi	sp,sp,-32
    80006f10:	00813823          	sd	s0,16(sp)
    80006f14:	00913423          	sd	s1,8(sp)
    80006f18:	00113c23          	sd	ra,24(sp)
    80006f1c:	02010413          	addi	s0,sp,32
    80006f20:	00050493          	mv	s1,a0
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	9b4080e7          	jalr	-1612(ra) # 800068d8 <cpuid>
    80006f2c:	01813083          	ld	ra,24(sp)
    80006f30:	01013403          	ld	s0,16(sp)
    80006f34:	00d5179b          	slliw	a5,a0,0xd
    80006f38:	0c201737          	lui	a4,0xc201
    80006f3c:	00f707b3          	add	a5,a4,a5
    80006f40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006f44:	00813483          	ld	s1,8(sp)
    80006f48:	02010113          	addi	sp,sp,32
    80006f4c:	00008067          	ret

0000000080006f50 <consolewrite>:
    80006f50:	fb010113          	addi	sp,sp,-80
    80006f54:	04813023          	sd	s0,64(sp)
    80006f58:	04113423          	sd	ra,72(sp)
    80006f5c:	02913c23          	sd	s1,56(sp)
    80006f60:	03213823          	sd	s2,48(sp)
    80006f64:	03313423          	sd	s3,40(sp)
    80006f68:	03413023          	sd	s4,32(sp)
    80006f6c:	01513c23          	sd	s5,24(sp)
    80006f70:	05010413          	addi	s0,sp,80
    80006f74:	06c05c63          	blez	a2,80006fec <consolewrite+0x9c>
    80006f78:	00060993          	mv	s3,a2
    80006f7c:	00050a13          	mv	s4,a0
    80006f80:	00058493          	mv	s1,a1
    80006f84:	00000913          	li	s2,0
    80006f88:	fff00a93          	li	s5,-1
    80006f8c:	01c0006f          	j	80006fa8 <consolewrite+0x58>
    80006f90:	fbf44503          	lbu	a0,-65(s0)
    80006f94:	0019091b          	addiw	s2,s2,1
    80006f98:	00148493          	addi	s1,s1,1
    80006f9c:	00001097          	auipc	ra,0x1
    80006fa0:	a9c080e7          	jalr	-1380(ra) # 80007a38 <uartputc>
    80006fa4:	03298063          	beq	s3,s2,80006fc4 <consolewrite+0x74>
    80006fa8:	00048613          	mv	a2,s1
    80006fac:	00100693          	li	a3,1
    80006fb0:	000a0593          	mv	a1,s4
    80006fb4:	fbf40513          	addi	a0,s0,-65
    80006fb8:	00000097          	auipc	ra,0x0
    80006fbc:	9d8080e7          	jalr	-1576(ra) # 80006990 <either_copyin>
    80006fc0:	fd5518e3          	bne	a0,s5,80006f90 <consolewrite+0x40>
    80006fc4:	04813083          	ld	ra,72(sp)
    80006fc8:	04013403          	ld	s0,64(sp)
    80006fcc:	03813483          	ld	s1,56(sp)
    80006fd0:	02813983          	ld	s3,40(sp)
    80006fd4:	02013a03          	ld	s4,32(sp)
    80006fd8:	01813a83          	ld	s5,24(sp)
    80006fdc:	00090513          	mv	a0,s2
    80006fe0:	03013903          	ld	s2,48(sp)
    80006fe4:	05010113          	addi	sp,sp,80
    80006fe8:	00008067          	ret
    80006fec:	00000913          	li	s2,0
    80006ff0:	fd5ff06f          	j	80006fc4 <consolewrite+0x74>

0000000080006ff4 <consoleread>:
    80006ff4:	f9010113          	addi	sp,sp,-112
    80006ff8:	06813023          	sd	s0,96(sp)
    80006ffc:	04913c23          	sd	s1,88(sp)
    80007000:	05213823          	sd	s2,80(sp)
    80007004:	05313423          	sd	s3,72(sp)
    80007008:	05413023          	sd	s4,64(sp)
    8000700c:	03513c23          	sd	s5,56(sp)
    80007010:	03613823          	sd	s6,48(sp)
    80007014:	03713423          	sd	s7,40(sp)
    80007018:	03813023          	sd	s8,32(sp)
    8000701c:	06113423          	sd	ra,104(sp)
    80007020:	01913c23          	sd	s9,24(sp)
    80007024:	07010413          	addi	s0,sp,112
    80007028:	00060b93          	mv	s7,a2
    8000702c:	00050913          	mv	s2,a0
    80007030:	00058c13          	mv	s8,a1
    80007034:	00060b1b          	sext.w	s6,a2
    80007038:	00006497          	auipc	s1,0x6
    8000703c:	d5048493          	addi	s1,s1,-688 # 8000cd88 <cons>
    80007040:	00400993          	li	s3,4
    80007044:	fff00a13          	li	s4,-1
    80007048:	00a00a93          	li	s5,10
    8000704c:	05705e63          	blez	s7,800070a8 <consoleread+0xb4>
    80007050:	09c4a703          	lw	a4,156(s1)
    80007054:	0984a783          	lw	a5,152(s1)
    80007058:	0007071b          	sext.w	a4,a4
    8000705c:	08e78463          	beq	a5,a4,800070e4 <consoleread+0xf0>
    80007060:	07f7f713          	andi	a4,a5,127
    80007064:	00e48733          	add	a4,s1,a4
    80007068:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000706c:	0017869b          	addiw	a3,a5,1
    80007070:	08d4ac23          	sw	a3,152(s1)
    80007074:	00070c9b          	sext.w	s9,a4
    80007078:	0b370663          	beq	a4,s3,80007124 <consoleread+0x130>
    8000707c:	00100693          	li	a3,1
    80007080:	f9f40613          	addi	a2,s0,-97
    80007084:	000c0593          	mv	a1,s8
    80007088:	00090513          	mv	a0,s2
    8000708c:	f8e40fa3          	sb	a4,-97(s0)
    80007090:	00000097          	auipc	ra,0x0
    80007094:	8b4080e7          	jalr	-1868(ra) # 80006944 <either_copyout>
    80007098:	01450863          	beq	a0,s4,800070a8 <consoleread+0xb4>
    8000709c:	001c0c13          	addi	s8,s8,1
    800070a0:	fffb8b9b          	addiw	s7,s7,-1
    800070a4:	fb5c94e3          	bne	s9,s5,8000704c <consoleread+0x58>
    800070a8:	000b851b          	sext.w	a0,s7
    800070ac:	06813083          	ld	ra,104(sp)
    800070b0:	06013403          	ld	s0,96(sp)
    800070b4:	05813483          	ld	s1,88(sp)
    800070b8:	05013903          	ld	s2,80(sp)
    800070bc:	04813983          	ld	s3,72(sp)
    800070c0:	04013a03          	ld	s4,64(sp)
    800070c4:	03813a83          	ld	s5,56(sp)
    800070c8:	02813b83          	ld	s7,40(sp)
    800070cc:	02013c03          	ld	s8,32(sp)
    800070d0:	01813c83          	ld	s9,24(sp)
    800070d4:	40ab053b          	subw	a0,s6,a0
    800070d8:	03013b03          	ld	s6,48(sp)
    800070dc:	07010113          	addi	sp,sp,112
    800070e0:	00008067          	ret
    800070e4:	00001097          	auipc	ra,0x1
    800070e8:	1d8080e7          	jalr	472(ra) # 800082bc <push_on>
    800070ec:	0984a703          	lw	a4,152(s1)
    800070f0:	09c4a783          	lw	a5,156(s1)
    800070f4:	0007879b          	sext.w	a5,a5
    800070f8:	fef70ce3          	beq	a4,a5,800070f0 <consoleread+0xfc>
    800070fc:	00001097          	auipc	ra,0x1
    80007100:	234080e7          	jalr	564(ra) # 80008330 <pop_on>
    80007104:	0984a783          	lw	a5,152(s1)
    80007108:	07f7f713          	andi	a4,a5,127
    8000710c:	00e48733          	add	a4,s1,a4
    80007110:	01874703          	lbu	a4,24(a4)
    80007114:	0017869b          	addiw	a3,a5,1
    80007118:	08d4ac23          	sw	a3,152(s1)
    8000711c:	00070c9b          	sext.w	s9,a4
    80007120:	f5371ee3          	bne	a4,s3,8000707c <consoleread+0x88>
    80007124:	000b851b          	sext.w	a0,s7
    80007128:	f96bf2e3          	bgeu	s7,s6,800070ac <consoleread+0xb8>
    8000712c:	08f4ac23          	sw	a5,152(s1)
    80007130:	f7dff06f          	j	800070ac <consoleread+0xb8>

0000000080007134 <consputc>:
    80007134:	10000793          	li	a5,256
    80007138:	00f50663          	beq	a0,a5,80007144 <consputc+0x10>
    8000713c:	00001317          	auipc	t1,0x1
    80007140:	9f430067          	jr	-1548(t1) # 80007b30 <uartputc_sync>
    80007144:	ff010113          	addi	sp,sp,-16
    80007148:	00113423          	sd	ra,8(sp)
    8000714c:	00813023          	sd	s0,0(sp)
    80007150:	01010413          	addi	s0,sp,16
    80007154:	00800513          	li	a0,8
    80007158:	00001097          	auipc	ra,0x1
    8000715c:	9d8080e7          	jalr	-1576(ra) # 80007b30 <uartputc_sync>
    80007160:	02000513          	li	a0,32
    80007164:	00001097          	auipc	ra,0x1
    80007168:	9cc080e7          	jalr	-1588(ra) # 80007b30 <uartputc_sync>
    8000716c:	00013403          	ld	s0,0(sp)
    80007170:	00813083          	ld	ra,8(sp)
    80007174:	00800513          	li	a0,8
    80007178:	01010113          	addi	sp,sp,16
    8000717c:	00001317          	auipc	t1,0x1
    80007180:	9b430067          	jr	-1612(t1) # 80007b30 <uartputc_sync>

0000000080007184 <consoleintr>:
    80007184:	fe010113          	addi	sp,sp,-32
    80007188:	00813823          	sd	s0,16(sp)
    8000718c:	00913423          	sd	s1,8(sp)
    80007190:	01213023          	sd	s2,0(sp)
    80007194:	00113c23          	sd	ra,24(sp)
    80007198:	02010413          	addi	s0,sp,32
    8000719c:	00006917          	auipc	s2,0x6
    800071a0:	bec90913          	addi	s2,s2,-1044 # 8000cd88 <cons>
    800071a4:	00050493          	mv	s1,a0
    800071a8:	00090513          	mv	a0,s2
    800071ac:	00001097          	auipc	ra,0x1
    800071b0:	e40080e7          	jalr	-448(ra) # 80007fec <acquire>
    800071b4:	02048c63          	beqz	s1,800071ec <consoleintr+0x68>
    800071b8:	0a092783          	lw	a5,160(s2)
    800071bc:	09892703          	lw	a4,152(s2)
    800071c0:	07f00693          	li	a3,127
    800071c4:	40e7873b          	subw	a4,a5,a4
    800071c8:	02e6e263          	bltu	a3,a4,800071ec <consoleintr+0x68>
    800071cc:	00d00713          	li	a4,13
    800071d0:	04e48063          	beq	s1,a4,80007210 <consoleintr+0x8c>
    800071d4:	07f7f713          	andi	a4,a5,127
    800071d8:	00e90733          	add	a4,s2,a4
    800071dc:	0017879b          	addiw	a5,a5,1
    800071e0:	0af92023          	sw	a5,160(s2)
    800071e4:	00970c23          	sb	s1,24(a4)
    800071e8:	08f92e23          	sw	a5,156(s2)
    800071ec:	01013403          	ld	s0,16(sp)
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	00813483          	ld	s1,8(sp)
    800071f8:	00013903          	ld	s2,0(sp)
    800071fc:	00006517          	auipc	a0,0x6
    80007200:	b8c50513          	addi	a0,a0,-1140 # 8000cd88 <cons>
    80007204:	02010113          	addi	sp,sp,32
    80007208:	00001317          	auipc	t1,0x1
    8000720c:	eb030067          	jr	-336(t1) # 800080b8 <release>
    80007210:	00a00493          	li	s1,10
    80007214:	fc1ff06f          	j	800071d4 <consoleintr+0x50>

0000000080007218 <consoleinit>:
    80007218:	fe010113          	addi	sp,sp,-32
    8000721c:	00113c23          	sd	ra,24(sp)
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	02010413          	addi	s0,sp,32
    8000722c:	00006497          	auipc	s1,0x6
    80007230:	b5c48493          	addi	s1,s1,-1188 # 8000cd88 <cons>
    80007234:	00048513          	mv	a0,s1
    80007238:	00002597          	auipc	a1,0x2
    8000723c:	4b058593          	addi	a1,a1,1200 # 800096e8 <_ZL6digits+0x168>
    80007240:	00001097          	auipc	ra,0x1
    80007244:	d88080e7          	jalr	-632(ra) # 80007fc8 <initlock>
    80007248:	00000097          	auipc	ra,0x0
    8000724c:	7ac080e7          	jalr	1964(ra) # 800079f4 <uartinit>
    80007250:	01813083          	ld	ra,24(sp)
    80007254:	01013403          	ld	s0,16(sp)
    80007258:	00000797          	auipc	a5,0x0
    8000725c:	d9c78793          	addi	a5,a5,-612 # 80006ff4 <consoleread>
    80007260:	0af4bc23          	sd	a5,184(s1)
    80007264:	00000797          	auipc	a5,0x0
    80007268:	cec78793          	addi	a5,a5,-788 # 80006f50 <consolewrite>
    8000726c:	0cf4b023          	sd	a5,192(s1)
    80007270:	00813483          	ld	s1,8(sp)
    80007274:	02010113          	addi	sp,sp,32
    80007278:	00008067          	ret

000000008000727c <console_read>:
    8000727c:	ff010113          	addi	sp,sp,-16
    80007280:	00813423          	sd	s0,8(sp)
    80007284:	01010413          	addi	s0,sp,16
    80007288:	00813403          	ld	s0,8(sp)
    8000728c:	00006317          	auipc	t1,0x6
    80007290:	bb433303          	ld	t1,-1100(t1) # 8000ce40 <devsw+0x10>
    80007294:	01010113          	addi	sp,sp,16
    80007298:	00030067          	jr	t1

000000008000729c <console_write>:
    8000729c:	ff010113          	addi	sp,sp,-16
    800072a0:	00813423          	sd	s0,8(sp)
    800072a4:	01010413          	addi	s0,sp,16
    800072a8:	00813403          	ld	s0,8(sp)
    800072ac:	00006317          	auipc	t1,0x6
    800072b0:	b9c33303          	ld	t1,-1124(t1) # 8000ce48 <devsw+0x18>
    800072b4:	01010113          	addi	sp,sp,16
    800072b8:	00030067          	jr	t1

00000000800072bc <panic>:
    800072bc:	fe010113          	addi	sp,sp,-32
    800072c0:	00113c23          	sd	ra,24(sp)
    800072c4:	00813823          	sd	s0,16(sp)
    800072c8:	00913423          	sd	s1,8(sp)
    800072cc:	02010413          	addi	s0,sp,32
    800072d0:	00050493          	mv	s1,a0
    800072d4:	00002517          	auipc	a0,0x2
    800072d8:	41c50513          	addi	a0,a0,1052 # 800096f0 <_ZL6digits+0x170>
    800072dc:	00006797          	auipc	a5,0x6
    800072e0:	c007a623          	sw	zero,-1012(a5) # 8000cee8 <pr+0x18>
    800072e4:	00000097          	auipc	ra,0x0
    800072e8:	034080e7          	jalr	52(ra) # 80007318 <__printf>
    800072ec:	00048513          	mv	a0,s1
    800072f0:	00000097          	auipc	ra,0x0
    800072f4:	028080e7          	jalr	40(ra) # 80007318 <__printf>
    800072f8:	00002517          	auipc	a0,0x2
    800072fc:	e0850513          	addi	a0,a0,-504 # 80009100 <CONSOLE_STATUS+0xf0>
    80007300:	00000097          	auipc	ra,0x0
    80007304:	018080e7          	jalr	24(ra) # 80007318 <__printf>
    80007308:	00100793          	li	a5,1
    8000730c:	00005717          	auipc	a4,0x5
    80007310:	88f72e23          	sw	a5,-1892(a4) # 8000bba8 <panicked>
    80007314:	0000006f          	j	80007314 <panic+0x58>

0000000080007318 <__printf>:
    80007318:	f3010113          	addi	sp,sp,-208
    8000731c:	08813023          	sd	s0,128(sp)
    80007320:	07313423          	sd	s3,104(sp)
    80007324:	09010413          	addi	s0,sp,144
    80007328:	05813023          	sd	s8,64(sp)
    8000732c:	08113423          	sd	ra,136(sp)
    80007330:	06913c23          	sd	s1,120(sp)
    80007334:	07213823          	sd	s2,112(sp)
    80007338:	07413023          	sd	s4,96(sp)
    8000733c:	05513c23          	sd	s5,88(sp)
    80007340:	05613823          	sd	s6,80(sp)
    80007344:	05713423          	sd	s7,72(sp)
    80007348:	03913c23          	sd	s9,56(sp)
    8000734c:	03a13823          	sd	s10,48(sp)
    80007350:	03b13423          	sd	s11,40(sp)
    80007354:	00006317          	auipc	t1,0x6
    80007358:	b7c30313          	addi	t1,t1,-1156 # 8000ced0 <pr>
    8000735c:	01832c03          	lw	s8,24(t1)
    80007360:	00b43423          	sd	a1,8(s0)
    80007364:	00c43823          	sd	a2,16(s0)
    80007368:	00d43c23          	sd	a3,24(s0)
    8000736c:	02e43023          	sd	a4,32(s0)
    80007370:	02f43423          	sd	a5,40(s0)
    80007374:	03043823          	sd	a6,48(s0)
    80007378:	03143c23          	sd	a7,56(s0)
    8000737c:	00050993          	mv	s3,a0
    80007380:	4a0c1663          	bnez	s8,8000782c <__printf+0x514>
    80007384:	60098c63          	beqz	s3,8000799c <__printf+0x684>
    80007388:	0009c503          	lbu	a0,0(s3)
    8000738c:	00840793          	addi	a5,s0,8
    80007390:	f6f43c23          	sd	a5,-136(s0)
    80007394:	00000493          	li	s1,0
    80007398:	22050063          	beqz	a0,800075b8 <__printf+0x2a0>
    8000739c:	00002a37          	lui	s4,0x2
    800073a0:	00018ab7          	lui	s5,0x18
    800073a4:	000f4b37          	lui	s6,0xf4
    800073a8:	00989bb7          	lui	s7,0x989
    800073ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800073b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800073b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800073b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800073bc:	00148c9b          	addiw	s9,s1,1
    800073c0:	02500793          	li	a5,37
    800073c4:	01998933          	add	s2,s3,s9
    800073c8:	38f51263          	bne	a0,a5,8000774c <__printf+0x434>
    800073cc:	00094783          	lbu	a5,0(s2)
    800073d0:	00078c9b          	sext.w	s9,a5
    800073d4:	1e078263          	beqz	a5,800075b8 <__printf+0x2a0>
    800073d8:	0024849b          	addiw	s1,s1,2
    800073dc:	07000713          	li	a4,112
    800073e0:	00998933          	add	s2,s3,s1
    800073e4:	38e78a63          	beq	a5,a4,80007778 <__printf+0x460>
    800073e8:	20f76863          	bltu	a4,a5,800075f8 <__printf+0x2e0>
    800073ec:	42a78863          	beq	a5,a0,8000781c <__printf+0x504>
    800073f0:	06400713          	li	a4,100
    800073f4:	40e79663          	bne	a5,a4,80007800 <__printf+0x4e8>
    800073f8:	f7843783          	ld	a5,-136(s0)
    800073fc:	0007a603          	lw	a2,0(a5)
    80007400:	00878793          	addi	a5,a5,8
    80007404:	f6f43c23          	sd	a5,-136(s0)
    80007408:	42064a63          	bltz	a2,8000783c <__printf+0x524>
    8000740c:	00a00713          	li	a4,10
    80007410:	02e677bb          	remuw	a5,a2,a4
    80007414:	00002d97          	auipc	s11,0x2
    80007418:	304d8d93          	addi	s11,s11,772 # 80009718 <digits>
    8000741c:	00900593          	li	a1,9
    80007420:	0006051b          	sext.w	a0,a2
    80007424:	00000c93          	li	s9,0
    80007428:	02079793          	slli	a5,a5,0x20
    8000742c:	0207d793          	srli	a5,a5,0x20
    80007430:	00fd87b3          	add	a5,s11,a5
    80007434:	0007c783          	lbu	a5,0(a5)
    80007438:	02e656bb          	divuw	a3,a2,a4
    8000743c:	f8f40023          	sb	a5,-128(s0)
    80007440:	14c5d863          	bge	a1,a2,80007590 <__printf+0x278>
    80007444:	06300593          	li	a1,99
    80007448:	00100c93          	li	s9,1
    8000744c:	02e6f7bb          	remuw	a5,a3,a4
    80007450:	02079793          	slli	a5,a5,0x20
    80007454:	0207d793          	srli	a5,a5,0x20
    80007458:	00fd87b3          	add	a5,s11,a5
    8000745c:	0007c783          	lbu	a5,0(a5)
    80007460:	02e6d73b          	divuw	a4,a3,a4
    80007464:	f8f400a3          	sb	a5,-127(s0)
    80007468:	12a5f463          	bgeu	a1,a0,80007590 <__printf+0x278>
    8000746c:	00a00693          	li	a3,10
    80007470:	00900593          	li	a1,9
    80007474:	02d777bb          	remuw	a5,a4,a3
    80007478:	02079793          	slli	a5,a5,0x20
    8000747c:	0207d793          	srli	a5,a5,0x20
    80007480:	00fd87b3          	add	a5,s11,a5
    80007484:	0007c503          	lbu	a0,0(a5)
    80007488:	02d757bb          	divuw	a5,a4,a3
    8000748c:	f8a40123          	sb	a0,-126(s0)
    80007490:	48e5f263          	bgeu	a1,a4,80007914 <__printf+0x5fc>
    80007494:	06300513          	li	a0,99
    80007498:	02d7f5bb          	remuw	a1,a5,a3
    8000749c:	02059593          	slli	a1,a1,0x20
    800074a0:	0205d593          	srli	a1,a1,0x20
    800074a4:	00bd85b3          	add	a1,s11,a1
    800074a8:	0005c583          	lbu	a1,0(a1)
    800074ac:	02d7d7bb          	divuw	a5,a5,a3
    800074b0:	f8b401a3          	sb	a1,-125(s0)
    800074b4:	48e57263          	bgeu	a0,a4,80007938 <__printf+0x620>
    800074b8:	3e700513          	li	a0,999
    800074bc:	02d7f5bb          	remuw	a1,a5,a3
    800074c0:	02059593          	slli	a1,a1,0x20
    800074c4:	0205d593          	srli	a1,a1,0x20
    800074c8:	00bd85b3          	add	a1,s11,a1
    800074cc:	0005c583          	lbu	a1,0(a1)
    800074d0:	02d7d7bb          	divuw	a5,a5,a3
    800074d4:	f8b40223          	sb	a1,-124(s0)
    800074d8:	46e57663          	bgeu	a0,a4,80007944 <__printf+0x62c>
    800074dc:	02d7f5bb          	remuw	a1,a5,a3
    800074e0:	02059593          	slli	a1,a1,0x20
    800074e4:	0205d593          	srli	a1,a1,0x20
    800074e8:	00bd85b3          	add	a1,s11,a1
    800074ec:	0005c583          	lbu	a1,0(a1)
    800074f0:	02d7d7bb          	divuw	a5,a5,a3
    800074f4:	f8b402a3          	sb	a1,-123(s0)
    800074f8:	46ea7863          	bgeu	s4,a4,80007968 <__printf+0x650>
    800074fc:	02d7f5bb          	remuw	a1,a5,a3
    80007500:	02059593          	slli	a1,a1,0x20
    80007504:	0205d593          	srli	a1,a1,0x20
    80007508:	00bd85b3          	add	a1,s11,a1
    8000750c:	0005c583          	lbu	a1,0(a1)
    80007510:	02d7d7bb          	divuw	a5,a5,a3
    80007514:	f8b40323          	sb	a1,-122(s0)
    80007518:	3eeaf863          	bgeu	s5,a4,80007908 <__printf+0x5f0>
    8000751c:	02d7f5bb          	remuw	a1,a5,a3
    80007520:	02059593          	slli	a1,a1,0x20
    80007524:	0205d593          	srli	a1,a1,0x20
    80007528:	00bd85b3          	add	a1,s11,a1
    8000752c:	0005c583          	lbu	a1,0(a1)
    80007530:	02d7d7bb          	divuw	a5,a5,a3
    80007534:	f8b403a3          	sb	a1,-121(s0)
    80007538:	42eb7e63          	bgeu	s6,a4,80007974 <__printf+0x65c>
    8000753c:	02d7f5bb          	remuw	a1,a5,a3
    80007540:	02059593          	slli	a1,a1,0x20
    80007544:	0205d593          	srli	a1,a1,0x20
    80007548:	00bd85b3          	add	a1,s11,a1
    8000754c:	0005c583          	lbu	a1,0(a1)
    80007550:	02d7d7bb          	divuw	a5,a5,a3
    80007554:	f8b40423          	sb	a1,-120(s0)
    80007558:	42ebfc63          	bgeu	s7,a4,80007990 <__printf+0x678>
    8000755c:	02079793          	slli	a5,a5,0x20
    80007560:	0207d793          	srli	a5,a5,0x20
    80007564:	00fd8db3          	add	s11,s11,a5
    80007568:	000dc703          	lbu	a4,0(s11)
    8000756c:	00a00793          	li	a5,10
    80007570:	00900c93          	li	s9,9
    80007574:	f8e404a3          	sb	a4,-119(s0)
    80007578:	00065c63          	bgez	a2,80007590 <__printf+0x278>
    8000757c:	f9040713          	addi	a4,s0,-112
    80007580:	00f70733          	add	a4,a4,a5
    80007584:	02d00693          	li	a3,45
    80007588:	fed70823          	sb	a3,-16(a4)
    8000758c:	00078c93          	mv	s9,a5
    80007590:	f8040793          	addi	a5,s0,-128
    80007594:	01978cb3          	add	s9,a5,s9
    80007598:	f7f40d13          	addi	s10,s0,-129
    8000759c:	000cc503          	lbu	a0,0(s9)
    800075a0:	fffc8c93          	addi	s9,s9,-1
    800075a4:	00000097          	auipc	ra,0x0
    800075a8:	b90080e7          	jalr	-1136(ra) # 80007134 <consputc>
    800075ac:	ffac98e3          	bne	s9,s10,8000759c <__printf+0x284>
    800075b0:	00094503          	lbu	a0,0(s2)
    800075b4:	e00514e3          	bnez	a0,800073bc <__printf+0xa4>
    800075b8:	1a0c1663          	bnez	s8,80007764 <__printf+0x44c>
    800075bc:	08813083          	ld	ra,136(sp)
    800075c0:	08013403          	ld	s0,128(sp)
    800075c4:	07813483          	ld	s1,120(sp)
    800075c8:	07013903          	ld	s2,112(sp)
    800075cc:	06813983          	ld	s3,104(sp)
    800075d0:	06013a03          	ld	s4,96(sp)
    800075d4:	05813a83          	ld	s5,88(sp)
    800075d8:	05013b03          	ld	s6,80(sp)
    800075dc:	04813b83          	ld	s7,72(sp)
    800075e0:	04013c03          	ld	s8,64(sp)
    800075e4:	03813c83          	ld	s9,56(sp)
    800075e8:	03013d03          	ld	s10,48(sp)
    800075ec:	02813d83          	ld	s11,40(sp)
    800075f0:	0d010113          	addi	sp,sp,208
    800075f4:	00008067          	ret
    800075f8:	07300713          	li	a4,115
    800075fc:	1ce78a63          	beq	a5,a4,800077d0 <__printf+0x4b8>
    80007600:	07800713          	li	a4,120
    80007604:	1ee79e63          	bne	a5,a4,80007800 <__printf+0x4e8>
    80007608:	f7843783          	ld	a5,-136(s0)
    8000760c:	0007a703          	lw	a4,0(a5)
    80007610:	00878793          	addi	a5,a5,8
    80007614:	f6f43c23          	sd	a5,-136(s0)
    80007618:	28074263          	bltz	a4,8000789c <__printf+0x584>
    8000761c:	00002d97          	auipc	s11,0x2
    80007620:	0fcd8d93          	addi	s11,s11,252 # 80009718 <digits>
    80007624:	00f77793          	andi	a5,a4,15
    80007628:	00fd87b3          	add	a5,s11,a5
    8000762c:	0007c683          	lbu	a3,0(a5)
    80007630:	00f00613          	li	a2,15
    80007634:	0007079b          	sext.w	a5,a4
    80007638:	f8d40023          	sb	a3,-128(s0)
    8000763c:	0047559b          	srliw	a1,a4,0x4
    80007640:	0047569b          	srliw	a3,a4,0x4
    80007644:	00000c93          	li	s9,0
    80007648:	0ee65063          	bge	a2,a4,80007728 <__printf+0x410>
    8000764c:	00f6f693          	andi	a3,a3,15
    80007650:	00dd86b3          	add	a3,s11,a3
    80007654:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007658:	0087d79b          	srliw	a5,a5,0x8
    8000765c:	00100c93          	li	s9,1
    80007660:	f8d400a3          	sb	a3,-127(s0)
    80007664:	0cb67263          	bgeu	a2,a1,80007728 <__printf+0x410>
    80007668:	00f7f693          	andi	a3,a5,15
    8000766c:	00dd86b3          	add	a3,s11,a3
    80007670:	0006c583          	lbu	a1,0(a3)
    80007674:	00f00613          	li	a2,15
    80007678:	0047d69b          	srliw	a3,a5,0x4
    8000767c:	f8b40123          	sb	a1,-126(s0)
    80007680:	0047d593          	srli	a1,a5,0x4
    80007684:	28f67e63          	bgeu	a2,a5,80007920 <__printf+0x608>
    80007688:	00f6f693          	andi	a3,a3,15
    8000768c:	00dd86b3          	add	a3,s11,a3
    80007690:	0006c503          	lbu	a0,0(a3)
    80007694:	0087d813          	srli	a6,a5,0x8
    80007698:	0087d69b          	srliw	a3,a5,0x8
    8000769c:	f8a401a3          	sb	a0,-125(s0)
    800076a0:	28b67663          	bgeu	a2,a1,8000792c <__printf+0x614>
    800076a4:	00f6f693          	andi	a3,a3,15
    800076a8:	00dd86b3          	add	a3,s11,a3
    800076ac:	0006c583          	lbu	a1,0(a3)
    800076b0:	00c7d513          	srli	a0,a5,0xc
    800076b4:	00c7d69b          	srliw	a3,a5,0xc
    800076b8:	f8b40223          	sb	a1,-124(s0)
    800076bc:	29067a63          	bgeu	a2,a6,80007950 <__printf+0x638>
    800076c0:	00f6f693          	andi	a3,a3,15
    800076c4:	00dd86b3          	add	a3,s11,a3
    800076c8:	0006c583          	lbu	a1,0(a3)
    800076cc:	0107d813          	srli	a6,a5,0x10
    800076d0:	0107d69b          	srliw	a3,a5,0x10
    800076d4:	f8b402a3          	sb	a1,-123(s0)
    800076d8:	28a67263          	bgeu	a2,a0,8000795c <__printf+0x644>
    800076dc:	00f6f693          	andi	a3,a3,15
    800076e0:	00dd86b3          	add	a3,s11,a3
    800076e4:	0006c683          	lbu	a3,0(a3)
    800076e8:	0147d79b          	srliw	a5,a5,0x14
    800076ec:	f8d40323          	sb	a3,-122(s0)
    800076f0:	21067663          	bgeu	a2,a6,800078fc <__printf+0x5e4>
    800076f4:	02079793          	slli	a5,a5,0x20
    800076f8:	0207d793          	srli	a5,a5,0x20
    800076fc:	00fd8db3          	add	s11,s11,a5
    80007700:	000dc683          	lbu	a3,0(s11)
    80007704:	00800793          	li	a5,8
    80007708:	00700c93          	li	s9,7
    8000770c:	f8d403a3          	sb	a3,-121(s0)
    80007710:	00075c63          	bgez	a4,80007728 <__printf+0x410>
    80007714:	f9040713          	addi	a4,s0,-112
    80007718:	00f70733          	add	a4,a4,a5
    8000771c:	02d00693          	li	a3,45
    80007720:	fed70823          	sb	a3,-16(a4)
    80007724:	00078c93          	mv	s9,a5
    80007728:	f8040793          	addi	a5,s0,-128
    8000772c:	01978cb3          	add	s9,a5,s9
    80007730:	f7f40d13          	addi	s10,s0,-129
    80007734:	000cc503          	lbu	a0,0(s9)
    80007738:	fffc8c93          	addi	s9,s9,-1
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	9f8080e7          	jalr	-1544(ra) # 80007134 <consputc>
    80007744:	ff9d18e3          	bne	s10,s9,80007734 <__printf+0x41c>
    80007748:	0100006f          	j	80007758 <__printf+0x440>
    8000774c:	00000097          	auipc	ra,0x0
    80007750:	9e8080e7          	jalr	-1560(ra) # 80007134 <consputc>
    80007754:	000c8493          	mv	s1,s9
    80007758:	00094503          	lbu	a0,0(s2)
    8000775c:	c60510e3          	bnez	a0,800073bc <__printf+0xa4>
    80007760:	e40c0ee3          	beqz	s8,800075bc <__printf+0x2a4>
    80007764:	00005517          	auipc	a0,0x5
    80007768:	76c50513          	addi	a0,a0,1900 # 8000ced0 <pr>
    8000776c:	00001097          	auipc	ra,0x1
    80007770:	94c080e7          	jalr	-1716(ra) # 800080b8 <release>
    80007774:	e49ff06f          	j	800075bc <__printf+0x2a4>
    80007778:	f7843783          	ld	a5,-136(s0)
    8000777c:	03000513          	li	a0,48
    80007780:	01000d13          	li	s10,16
    80007784:	00878713          	addi	a4,a5,8
    80007788:	0007bc83          	ld	s9,0(a5)
    8000778c:	f6e43c23          	sd	a4,-136(s0)
    80007790:	00000097          	auipc	ra,0x0
    80007794:	9a4080e7          	jalr	-1628(ra) # 80007134 <consputc>
    80007798:	07800513          	li	a0,120
    8000779c:	00000097          	auipc	ra,0x0
    800077a0:	998080e7          	jalr	-1640(ra) # 80007134 <consputc>
    800077a4:	00002d97          	auipc	s11,0x2
    800077a8:	f74d8d93          	addi	s11,s11,-140 # 80009718 <digits>
    800077ac:	03ccd793          	srli	a5,s9,0x3c
    800077b0:	00fd87b3          	add	a5,s11,a5
    800077b4:	0007c503          	lbu	a0,0(a5)
    800077b8:	fffd0d1b          	addiw	s10,s10,-1
    800077bc:	004c9c93          	slli	s9,s9,0x4
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	974080e7          	jalr	-1676(ra) # 80007134 <consputc>
    800077c8:	fe0d12e3          	bnez	s10,800077ac <__printf+0x494>
    800077cc:	f8dff06f          	j	80007758 <__printf+0x440>
    800077d0:	f7843783          	ld	a5,-136(s0)
    800077d4:	0007bc83          	ld	s9,0(a5)
    800077d8:	00878793          	addi	a5,a5,8
    800077dc:	f6f43c23          	sd	a5,-136(s0)
    800077e0:	000c9a63          	bnez	s9,800077f4 <__printf+0x4dc>
    800077e4:	1080006f          	j	800078ec <__printf+0x5d4>
    800077e8:	001c8c93          	addi	s9,s9,1
    800077ec:	00000097          	auipc	ra,0x0
    800077f0:	948080e7          	jalr	-1720(ra) # 80007134 <consputc>
    800077f4:	000cc503          	lbu	a0,0(s9)
    800077f8:	fe0518e3          	bnez	a0,800077e8 <__printf+0x4d0>
    800077fc:	f5dff06f          	j	80007758 <__printf+0x440>
    80007800:	02500513          	li	a0,37
    80007804:	00000097          	auipc	ra,0x0
    80007808:	930080e7          	jalr	-1744(ra) # 80007134 <consputc>
    8000780c:	000c8513          	mv	a0,s9
    80007810:	00000097          	auipc	ra,0x0
    80007814:	924080e7          	jalr	-1756(ra) # 80007134 <consputc>
    80007818:	f41ff06f          	j	80007758 <__printf+0x440>
    8000781c:	02500513          	li	a0,37
    80007820:	00000097          	auipc	ra,0x0
    80007824:	914080e7          	jalr	-1772(ra) # 80007134 <consputc>
    80007828:	f31ff06f          	j	80007758 <__printf+0x440>
    8000782c:	00030513          	mv	a0,t1
    80007830:	00000097          	auipc	ra,0x0
    80007834:	7bc080e7          	jalr	1980(ra) # 80007fec <acquire>
    80007838:	b4dff06f          	j	80007384 <__printf+0x6c>
    8000783c:	40c0053b          	negw	a0,a2
    80007840:	00a00713          	li	a4,10
    80007844:	02e576bb          	remuw	a3,a0,a4
    80007848:	00002d97          	auipc	s11,0x2
    8000784c:	ed0d8d93          	addi	s11,s11,-304 # 80009718 <digits>
    80007850:	ff700593          	li	a1,-9
    80007854:	02069693          	slli	a3,a3,0x20
    80007858:	0206d693          	srli	a3,a3,0x20
    8000785c:	00dd86b3          	add	a3,s11,a3
    80007860:	0006c683          	lbu	a3,0(a3)
    80007864:	02e557bb          	divuw	a5,a0,a4
    80007868:	f8d40023          	sb	a3,-128(s0)
    8000786c:	10b65e63          	bge	a2,a1,80007988 <__printf+0x670>
    80007870:	06300593          	li	a1,99
    80007874:	02e7f6bb          	remuw	a3,a5,a4
    80007878:	02069693          	slli	a3,a3,0x20
    8000787c:	0206d693          	srli	a3,a3,0x20
    80007880:	00dd86b3          	add	a3,s11,a3
    80007884:	0006c683          	lbu	a3,0(a3)
    80007888:	02e7d73b          	divuw	a4,a5,a4
    8000788c:	00200793          	li	a5,2
    80007890:	f8d400a3          	sb	a3,-127(s0)
    80007894:	bca5ece3          	bltu	a1,a0,8000746c <__printf+0x154>
    80007898:	ce5ff06f          	j	8000757c <__printf+0x264>
    8000789c:	40e007bb          	negw	a5,a4
    800078a0:	00002d97          	auipc	s11,0x2
    800078a4:	e78d8d93          	addi	s11,s11,-392 # 80009718 <digits>
    800078a8:	00f7f693          	andi	a3,a5,15
    800078ac:	00dd86b3          	add	a3,s11,a3
    800078b0:	0006c583          	lbu	a1,0(a3)
    800078b4:	ff100613          	li	a2,-15
    800078b8:	0047d69b          	srliw	a3,a5,0x4
    800078bc:	f8b40023          	sb	a1,-128(s0)
    800078c0:	0047d59b          	srliw	a1,a5,0x4
    800078c4:	0ac75e63          	bge	a4,a2,80007980 <__printf+0x668>
    800078c8:	00f6f693          	andi	a3,a3,15
    800078cc:	00dd86b3          	add	a3,s11,a3
    800078d0:	0006c603          	lbu	a2,0(a3)
    800078d4:	00f00693          	li	a3,15
    800078d8:	0087d79b          	srliw	a5,a5,0x8
    800078dc:	f8c400a3          	sb	a2,-127(s0)
    800078e0:	d8b6e4e3          	bltu	a3,a1,80007668 <__printf+0x350>
    800078e4:	00200793          	li	a5,2
    800078e8:	e2dff06f          	j	80007714 <__printf+0x3fc>
    800078ec:	00002c97          	auipc	s9,0x2
    800078f0:	e0cc8c93          	addi	s9,s9,-500 # 800096f8 <_ZL6digits+0x178>
    800078f4:	02800513          	li	a0,40
    800078f8:	ef1ff06f          	j	800077e8 <__printf+0x4d0>
    800078fc:	00700793          	li	a5,7
    80007900:	00600c93          	li	s9,6
    80007904:	e0dff06f          	j	80007710 <__printf+0x3f8>
    80007908:	00700793          	li	a5,7
    8000790c:	00600c93          	li	s9,6
    80007910:	c69ff06f          	j	80007578 <__printf+0x260>
    80007914:	00300793          	li	a5,3
    80007918:	00200c93          	li	s9,2
    8000791c:	c5dff06f          	j	80007578 <__printf+0x260>
    80007920:	00300793          	li	a5,3
    80007924:	00200c93          	li	s9,2
    80007928:	de9ff06f          	j	80007710 <__printf+0x3f8>
    8000792c:	00400793          	li	a5,4
    80007930:	00300c93          	li	s9,3
    80007934:	dddff06f          	j	80007710 <__printf+0x3f8>
    80007938:	00400793          	li	a5,4
    8000793c:	00300c93          	li	s9,3
    80007940:	c39ff06f          	j	80007578 <__printf+0x260>
    80007944:	00500793          	li	a5,5
    80007948:	00400c93          	li	s9,4
    8000794c:	c2dff06f          	j	80007578 <__printf+0x260>
    80007950:	00500793          	li	a5,5
    80007954:	00400c93          	li	s9,4
    80007958:	db9ff06f          	j	80007710 <__printf+0x3f8>
    8000795c:	00600793          	li	a5,6
    80007960:	00500c93          	li	s9,5
    80007964:	dadff06f          	j	80007710 <__printf+0x3f8>
    80007968:	00600793          	li	a5,6
    8000796c:	00500c93          	li	s9,5
    80007970:	c09ff06f          	j	80007578 <__printf+0x260>
    80007974:	00800793          	li	a5,8
    80007978:	00700c93          	li	s9,7
    8000797c:	bfdff06f          	j	80007578 <__printf+0x260>
    80007980:	00100793          	li	a5,1
    80007984:	d91ff06f          	j	80007714 <__printf+0x3fc>
    80007988:	00100793          	li	a5,1
    8000798c:	bf1ff06f          	j	8000757c <__printf+0x264>
    80007990:	00900793          	li	a5,9
    80007994:	00800c93          	li	s9,8
    80007998:	be1ff06f          	j	80007578 <__printf+0x260>
    8000799c:	00002517          	auipc	a0,0x2
    800079a0:	d6450513          	addi	a0,a0,-668 # 80009700 <_ZL6digits+0x180>
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	918080e7          	jalr	-1768(ra) # 800072bc <panic>

00000000800079ac <printfinit>:
    800079ac:	fe010113          	addi	sp,sp,-32
    800079b0:	00813823          	sd	s0,16(sp)
    800079b4:	00913423          	sd	s1,8(sp)
    800079b8:	00113c23          	sd	ra,24(sp)
    800079bc:	02010413          	addi	s0,sp,32
    800079c0:	00005497          	auipc	s1,0x5
    800079c4:	51048493          	addi	s1,s1,1296 # 8000ced0 <pr>
    800079c8:	00048513          	mv	a0,s1
    800079cc:	00002597          	auipc	a1,0x2
    800079d0:	d4458593          	addi	a1,a1,-700 # 80009710 <_ZL6digits+0x190>
    800079d4:	00000097          	auipc	ra,0x0
    800079d8:	5f4080e7          	jalr	1524(ra) # 80007fc8 <initlock>
    800079dc:	01813083          	ld	ra,24(sp)
    800079e0:	01013403          	ld	s0,16(sp)
    800079e4:	0004ac23          	sw	zero,24(s1)
    800079e8:	00813483          	ld	s1,8(sp)
    800079ec:	02010113          	addi	sp,sp,32
    800079f0:	00008067          	ret

00000000800079f4 <uartinit>:
    800079f4:	ff010113          	addi	sp,sp,-16
    800079f8:	00813423          	sd	s0,8(sp)
    800079fc:	01010413          	addi	s0,sp,16
    80007a00:	100007b7          	lui	a5,0x10000
    80007a04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007a08:	f8000713          	li	a4,-128
    80007a0c:	00e781a3          	sb	a4,3(a5)
    80007a10:	00300713          	li	a4,3
    80007a14:	00e78023          	sb	a4,0(a5)
    80007a18:	000780a3          	sb	zero,1(a5)
    80007a1c:	00e781a3          	sb	a4,3(a5)
    80007a20:	00700693          	li	a3,7
    80007a24:	00d78123          	sb	a3,2(a5)
    80007a28:	00e780a3          	sb	a4,1(a5)
    80007a2c:	00813403          	ld	s0,8(sp)
    80007a30:	01010113          	addi	sp,sp,16
    80007a34:	00008067          	ret

0000000080007a38 <uartputc>:
    80007a38:	00004797          	auipc	a5,0x4
    80007a3c:	1707a783          	lw	a5,368(a5) # 8000bba8 <panicked>
    80007a40:	00078463          	beqz	a5,80007a48 <uartputc+0x10>
    80007a44:	0000006f          	j	80007a44 <uartputc+0xc>
    80007a48:	fd010113          	addi	sp,sp,-48
    80007a4c:	02813023          	sd	s0,32(sp)
    80007a50:	00913c23          	sd	s1,24(sp)
    80007a54:	01213823          	sd	s2,16(sp)
    80007a58:	01313423          	sd	s3,8(sp)
    80007a5c:	02113423          	sd	ra,40(sp)
    80007a60:	03010413          	addi	s0,sp,48
    80007a64:	00004917          	auipc	s2,0x4
    80007a68:	14c90913          	addi	s2,s2,332 # 8000bbb0 <uart_tx_r>
    80007a6c:	00093783          	ld	a5,0(s2)
    80007a70:	00004497          	auipc	s1,0x4
    80007a74:	14848493          	addi	s1,s1,328 # 8000bbb8 <uart_tx_w>
    80007a78:	0004b703          	ld	a4,0(s1)
    80007a7c:	02078693          	addi	a3,a5,32
    80007a80:	00050993          	mv	s3,a0
    80007a84:	02e69c63          	bne	a3,a4,80007abc <uartputc+0x84>
    80007a88:	00001097          	auipc	ra,0x1
    80007a8c:	834080e7          	jalr	-1996(ra) # 800082bc <push_on>
    80007a90:	00093783          	ld	a5,0(s2)
    80007a94:	0004b703          	ld	a4,0(s1)
    80007a98:	02078793          	addi	a5,a5,32
    80007a9c:	00e79463          	bne	a5,a4,80007aa4 <uartputc+0x6c>
    80007aa0:	0000006f          	j	80007aa0 <uartputc+0x68>
    80007aa4:	00001097          	auipc	ra,0x1
    80007aa8:	88c080e7          	jalr	-1908(ra) # 80008330 <pop_on>
    80007aac:	00093783          	ld	a5,0(s2)
    80007ab0:	0004b703          	ld	a4,0(s1)
    80007ab4:	02078693          	addi	a3,a5,32
    80007ab8:	fce688e3          	beq	a3,a4,80007a88 <uartputc+0x50>
    80007abc:	01f77693          	andi	a3,a4,31
    80007ac0:	00005597          	auipc	a1,0x5
    80007ac4:	43058593          	addi	a1,a1,1072 # 8000cef0 <uart_tx_buf>
    80007ac8:	00d586b3          	add	a3,a1,a3
    80007acc:	00170713          	addi	a4,a4,1
    80007ad0:	01368023          	sb	s3,0(a3)
    80007ad4:	00e4b023          	sd	a4,0(s1)
    80007ad8:	10000637          	lui	a2,0x10000
    80007adc:	02f71063          	bne	a4,a5,80007afc <uartputc+0xc4>
    80007ae0:	0340006f          	j	80007b14 <uartputc+0xdc>
    80007ae4:	00074703          	lbu	a4,0(a4)
    80007ae8:	00f93023          	sd	a5,0(s2)
    80007aec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007af0:	00093783          	ld	a5,0(s2)
    80007af4:	0004b703          	ld	a4,0(s1)
    80007af8:	00f70e63          	beq	a4,a5,80007b14 <uartputc+0xdc>
    80007afc:	00564683          	lbu	a3,5(a2)
    80007b00:	01f7f713          	andi	a4,a5,31
    80007b04:	00e58733          	add	a4,a1,a4
    80007b08:	0206f693          	andi	a3,a3,32
    80007b0c:	00178793          	addi	a5,a5,1
    80007b10:	fc069ae3          	bnez	a3,80007ae4 <uartputc+0xac>
    80007b14:	02813083          	ld	ra,40(sp)
    80007b18:	02013403          	ld	s0,32(sp)
    80007b1c:	01813483          	ld	s1,24(sp)
    80007b20:	01013903          	ld	s2,16(sp)
    80007b24:	00813983          	ld	s3,8(sp)
    80007b28:	03010113          	addi	sp,sp,48
    80007b2c:	00008067          	ret

0000000080007b30 <uartputc_sync>:
    80007b30:	ff010113          	addi	sp,sp,-16
    80007b34:	00813423          	sd	s0,8(sp)
    80007b38:	01010413          	addi	s0,sp,16
    80007b3c:	00004717          	auipc	a4,0x4
    80007b40:	06c72703          	lw	a4,108(a4) # 8000bba8 <panicked>
    80007b44:	02071663          	bnez	a4,80007b70 <uartputc_sync+0x40>
    80007b48:	00050793          	mv	a5,a0
    80007b4c:	100006b7          	lui	a3,0x10000
    80007b50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007b54:	02077713          	andi	a4,a4,32
    80007b58:	fe070ce3          	beqz	a4,80007b50 <uartputc_sync+0x20>
    80007b5c:	0ff7f793          	andi	a5,a5,255
    80007b60:	00f68023          	sb	a5,0(a3)
    80007b64:	00813403          	ld	s0,8(sp)
    80007b68:	01010113          	addi	sp,sp,16
    80007b6c:	00008067          	ret
    80007b70:	0000006f          	j	80007b70 <uartputc_sync+0x40>

0000000080007b74 <uartstart>:
    80007b74:	ff010113          	addi	sp,sp,-16
    80007b78:	00813423          	sd	s0,8(sp)
    80007b7c:	01010413          	addi	s0,sp,16
    80007b80:	00004617          	auipc	a2,0x4
    80007b84:	03060613          	addi	a2,a2,48 # 8000bbb0 <uart_tx_r>
    80007b88:	00004517          	auipc	a0,0x4
    80007b8c:	03050513          	addi	a0,a0,48 # 8000bbb8 <uart_tx_w>
    80007b90:	00063783          	ld	a5,0(a2)
    80007b94:	00053703          	ld	a4,0(a0)
    80007b98:	04f70263          	beq	a4,a5,80007bdc <uartstart+0x68>
    80007b9c:	100005b7          	lui	a1,0x10000
    80007ba0:	00005817          	auipc	a6,0x5
    80007ba4:	35080813          	addi	a6,a6,848 # 8000cef0 <uart_tx_buf>
    80007ba8:	01c0006f          	j	80007bc4 <uartstart+0x50>
    80007bac:	0006c703          	lbu	a4,0(a3)
    80007bb0:	00f63023          	sd	a5,0(a2)
    80007bb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bb8:	00063783          	ld	a5,0(a2)
    80007bbc:	00053703          	ld	a4,0(a0)
    80007bc0:	00f70e63          	beq	a4,a5,80007bdc <uartstart+0x68>
    80007bc4:	01f7f713          	andi	a4,a5,31
    80007bc8:	00e806b3          	add	a3,a6,a4
    80007bcc:	0055c703          	lbu	a4,5(a1)
    80007bd0:	00178793          	addi	a5,a5,1
    80007bd4:	02077713          	andi	a4,a4,32
    80007bd8:	fc071ae3          	bnez	a4,80007bac <uartstart+0x38>
    80007bdc:	00813403          	ld	s0,8(sp)
    80007be0:	01010113          	addi	sp,sp,16
    80007be4:	00008067          	ret

0000000080007be8 <uartgetc>:
    80007be8:	ff010113          	addi	sp,sp,-16
    80007bec:	00813423          	sd	s0,8(sp)
    80007bf0:	01010413          	addi	s0,sp,16
    80007bf4:	10000737          	lui	a4,0x10000
    80007bf8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007bfc:	0017f793          	andi	a5,a5,1
    80007c00:	00078c63          	beqz	a5,80007c18 <uartgetc+0x30>
    80007c04:	00074503          	lbu	a0,0(a4)
    80007c08:	0ff57513          	andi	a0,a0,255
    80007c0c:	00813403          	ld	s0,8(sp)
    80007c10:	01010113          	addi	sp,sp,16
    80007c14:	00008067          	ret
    80007c18:	fff00513          	li	a0,-1
    80007c1c:	ff1ff06f          	j	80007c0c <uartgetc+0x24>

0000000080007c20 <uartintr>:
    80007c20:	100007b7          	lui	a5,0x10000
    80007c24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007c28:	0017f793          	andi	a5,a5,1
    80007c2c:	0a078463          	beqz	a5,80007cd4 <uartintr+0xb4>
    80007c30:	fe010113          	addi	sp,sp,-32
    80007c34:	00813823          	sd	s0,16(sp)
    80007c38:	00913423          	sd	s1,8(sp)
    80007c3c:	00113c23          	sd	ra,24(sp)
    80007c40:	02010413          	addi	s0,sp,32
    80007c44:	100004b7          	lui	s1,0x10000
    80007c48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007c4c:	0ff57513          	andi	a0,a0,255
    80007c50:	fffff097          	auipc	ra,0xfffff
    80007c54:	534080e7          	jalr	1332(ra) # 80007184 <consoleintr>
    80007c58:	0054c783          	lbu	a5,5(s1)
    80007c5c:	0017f793          	andi	a5,a5,1
    80007c60:	fe0794e3          	bnez	a5,80007c48 <uartintr+0x28>
    80007c64:	00004617          	auipc	a2,0x4
    80007c68:	f4c60613          	addi	a2,a2,-180 # 8000bbb0 <uart_tx_r>
    80007c6c:	00004517          	auipc	a0,0x4
    80007c70:	f4c50513          	addi	a0,a0,-180 # 8000bbb8 <uart_tx_w>
    80007c74:	00063783          	ld	a5,0(a2)
    80007c78:	00053703          	ld	a4,0(a0)
    80007c7c:	04f70263          	beq	a4,a5,80007cc0 <uartintr+0xa0>
    80007c80:	100005b7          	lui	a1,0x10000
    80007c84:	00005817          	auipc	a6,0x5
    80007c88:	26c80813          	addi	a6,a6,620 # 8000cef0 <uart_tx_buf>
    80007c8c:	01c0006f          	j	80007ca8 <uartintr+0x88>
    80007c90:	0006c703          	lbu	a4,0(a3)
    80007c94:	00f63023          	sd	a5,0(a2)
    80007c98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c9c:	00063783          	ld	a5,0(a2)
    80007ca0:	00053703          	ld	a4,0(a0)
    80007ca4:	00f70e63          	beq	a4,a5,80007cc0 <uartintr+0xa0>
    80007ca8:	01f7f713          	andi	a4,a5,31
    80007cac:	00e806b3          	add	a3,a6,a4
    80007cb0:	0055c703          	lbu	a4,5(a1)
    80007cb4:	00178793          	addi	a5,a5,1
    80007cb8:	02077713          	andi	a4,a4,32
    80007cbc:	fc071ae3          	bnez	a4,80007c90 <uartintr+0x70>
    80007cc0:	01813083          	ld	ra,24(sp)
    80007cc4:	01013403          	ld	s0,16(sp)
    80007cc8:	00813483          	ld	s1,8(sp)
    80007ccc:	02010113          	addi	sp,sp,32
    80007cd0:	00008067          	ret
    80007cd4:	00004617          	auipc	a2,0x4
    80007cd8:	edc60613          	addi	a2,a2,-292 # 8000bbb0 <uart_tx_r>
    80007cdc:	00004517          	auipc	a0,0x4
    80007ce0:	edc50513          	addi	a0,a0,-292 # 8000bbb8 <uart_tx_w>
    80007ce4:	00063783          	ld	a5,0(a2)
    80007ce8:	00053703          	ld	a4,0(a0)
    80007cec:	04f70263          	beq	a4,a5,80007d30 <uartintr+0x110>
    80007cf0:	100005b7          	lui	a1,0x10000
    80007cf4:	00005817          	auipc	a6,0x5
    80007cf8:	1fc80813          	addi	a6,a6,508 # 8000cef0 <uart_tx_buf>
    80007cfc:	01c0006f          	j	80007d18 <uartintr+0xf8>
    80007d00:	0006c703          	lbu	a4,0(a3)
    80007d04:	00f63023          	sd	a5,0(a2)
    80007d08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d0c:	00063783          	ld	a5,0(a2)
    80007d10:	00053703          	ld	a4,0(a0)
    80007d14:	02f70063          	beq	a4,a5,80007d34 <uartintr+0x114>
    80007d18:	01f7f713          	andi	a4,a5,31
    80007d1c:	00e806b3          	add	a3,a6,a4
    80007d20:	0055c703          	lbu	a4,5(a1)
    80007d24:	00178793          	addi	a5,a5,1
    80007d28:	02077713          	andi	a4,a4,32
    80007d2c:	fc071ae3          	bnez	a4,80007d00 <uartintr+0xe0>
    80007d30:	00008067          	ret
    80007d34:	00008067          	ret

0000000080007d38 <kinit>:
    80007d38:	fc010113          	addi	sp,sp,-64
    80007d3c:	02913423          	sd	s1,40(sp)
    80007d40:	fffff7b7          	lui	a5,0xfffff
    80007d44:	00006497          	auipc	s1,0x6
    80007d48:	1cb48493          	addi	s1,s1,459 # 8000df0f <end+0xfff>
    80007d4c:	02813823          	sd	s0,48(sp)
    80007d50:	01313c23          	sd	s3,24(sp)
    80007d54:	00f4f4b3          	and	s1,s1,a5
    80007d58:	02113c23          	sd	ra,56(sp)
    80007d5c:	03213023          	sd	s2,32(sp)
    80007d60:	01413823          	sd	s4,16(sp)
    80007d64:	01513423          	sd	s5,8(sp)
    80007d68:	04010413          	addi	s0,sp,64
    80007d6c:	000017b7          	lui	a5,0x1
    80007d70:	01100993          	li	s3,17
    80007d74:	00f487b3          	add	a5,s1,a5
    80007d78:	01b99993          	slli	s3,s3,0x1b
    80007d7c:	06f9e063          	bltu	s3,a5,80007ddc <kinit+0xa4>
    80007d80:	00005a97          	auipc	s5,0x5
    80007d84:	190a8a93          	addi	s5,s5,400 # 8000cf10 <end>
    80007d88:	0754ec63          	bltu	s1,s5,80007e00 <kinit+0xc8>
    80007d8c:	0734fa63          	bgeu	s1,s3,80007e00 <kinit+0xc8>
    80007d90:	00088a37          	lui	s4,0x88
    80007d94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d98:	00004917          	auipc	s2,0x4
    80007d9c:	e2890913          	addi	s2,s2,-472 # 8000bbc0 <kmem>
    80007da0:	00ca1a13          	slli	s4,s4,0xc
    80007da4:	0140006f          	j	80007db8 <kinit+0x80>
    80007da8:	000017b7          	lui	a5,0x1
    80007dac:	00f484b3          	add	s1,s1,a5
    80007db0:	0554e863          	bltu	s1,s5,80007e00 <kinit+0xc8>
    80007db4:	0534f663          	bgeu	s1,s3,80007e00 <kinit+0xc8>
    80007db8:	00001637          	lui	a2,0x1
    80007dbc:	00100593          	li	a1,1
    80007dc0:	00048513          	mv	a0,s1
    80007dc4:	00000097          	auipc	ra,0x0
    80007dc8:	5e4080e7          	jalr	1508(ra) # 800083a8 <__memset>
    80007dcc:	00093783          	ld	a5,0(s2)
    80007dd0:	00f4b023          	sd	a5,0(s1)
    80007dd4:	00993023          	sd	s1,0(s2)
    80007dd8:	fd4498e3          	bne	s1,s4,80007da8 <kinit+0x70>
    80007ddc:	03813083          	ld	ra,56(sp)
    80007de0:	03013403          	ld	s0,48(sp)
    80007de4:	02813483          	ld	s1,40(sp)
    80007de8:	02013903          	ld	s2,32(sp)
    80007dec:	01813983          	ld	s3,24(sp)
    80007df0:	01013a03          	ld	s4,16(sp)
    80007df4:	00813a83          	ld	s5,8(sp)
    80007df8:	04010113          	addi	sp,sp,64
    80007dfc:	00008067          	ret
    80007e00:	00002517          	auipc	a0,0x2
    80007e04:	93050513          	addi	a0,a0,-1744 # 80009730 <digits+0x18>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	4b4080e7          	jalr	1204(ra) # 800072bc <panic>

0000000080007e10 <freerange>:
    80007e10:	fc010113          	addi	sp,sp,-64
    80007e14:	000017b7          	lui	a5,0x1
    80007e18:	02913423          	sd	s1,40(sp)
    80007e1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007e20:	009504b3          	add	s1,a0,s1
    80007e24:	fffff537          	lui	a0,0xfffff
    80007e28:	02813823          	sd	s0,48(sp)
    80007e2c:	02113c23          	sd	ra,56(sp)
    80007e30:	03213023          	sd	s2,32(sp)
    80007e34:	01313c23          	sd	s3,24(sp)
    80007e38:	01413823          	sd	s4,16(sp)
    80007e3c:	01513423          	sd	s5,8(sp)
    80007e40:	01613023          	sd	s6,0(sp)
    80007e44:	04010413          	addi	s0,sp,64
    80007e48:	00a4f4b3          	and	s1,s1,a0
    80007e4c:	00f487b3          	add	a5,s1,a5
    80007e50:	06f5e463          	bltu	a1,a5,80007eb8 <freerange+0xa8>
    80007e54:	00005a97          	auipc	s5,0x5
    80007e58:	0bca8a93          	addi	s5,s5,188 # 8000cf10 <end>
    80007e5c:	0954e263          	bltu	s1,s5,80007ee0 <freerange+0xd0>
    80007e60:	01100993          	li	s3,17
    80007e64:	01b99993          	slli	s3,s3,0x1b
    80007e68:	0734fc63          	bgeu	s1,s3,80007ee0 <freerange+0xd0>
    80007e6c:	00058a13          	mv	s4,a1
    80007e70:	00004917          	auipc	s2,0x4
    80007e74:	d5090913          	addi	s2,s2,-688 # 8000bbc0 <kmem>
    80007e78:	00002b37          	lui	s6,0x2
    80007e7c:	0140006f          	j	80007e90 <freerange+0x80>
    80007e80:	000017b7          	lui	a5,0x1
    80007e84:	00f484b3          	add	s1,s1,a5
    80007e88:	0554ec63          	bltu	s1,s5,80007ee0 <freerange+0xd0>
    80007e8c:	0534fa63          	bgeu	s1,s3,80007ee0 <freerange+0xd0>
    80007e90:	00001637          	lui	a2,0x1
    80007e94:	00100593          	li	a1,1
    80007e98:	00048513          	mv	a0,s1
    80007e9c:	00000097          	auipc	ra,0x0
    80007ea0:	50c080e7          	jalr	1292(ra) # 800083a8 <__memset>
    80007ea4:	00093703          	ld	a4,0(s2)
    80007ea8:	016487b3          	add	a5,s1,s6
    80007eac:	00e4b023          	sd	a4,0(s1)
    80007eb0:	00993023          	sd	s1,0(s2)
    80007eb4:	fcfa76e3          	bgeu	s4,a5,80007e80 <freerange+0x70>
    80007eb8:	03813083          	ld	ra,56(sp)
    80007ebc:	03013403          	ld	s0,48(sp)
    80007ec0:	02813483          	ld	s1,40(sp)
    80007ec4:	02013903          	ld	s2,32(sp)
    80007ec8:	01813983          	ld	s3,24(sp)
    80007ecc:	01013a03          	ld	s4,16(sp)
    80007ed0:	00813a83          	ld	s5,8(sp)
    80007ed4:	00013b03          	ld	s6,0(sp)
    80007ed8:	04010113          	addi	sp,sp,64
    80007edc:	00008067          	ret
    80007ee0:	00002517          	auipc	a0,0x2
    80007ee4:	85050513          	addi	a0,a0,-1968 # 80009730 <digits+0x18>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	3d4080e7          	jalr	980(ra) # 800072bc <panic>

0000000080007ef0 <kfree>:
    80007ef0:	fe010113          	addi	sp,sp,-32
    80007ef4:	00813823          	sd	s0,16(sp)
    80007ef8:	00113c23          	sd	ra,24(sp)
    80007efc:	00913423          	sd	s1,8(sp)
    80007f00:	02010413          	addi	s0,sp,32
    80007f04:	03451793          	slli	a5,a0,0x34
    80007f08:	04079c63          	bnez	a5,80007f60 <kfree+0x70>
    80007f0c:	00005797          	auipc	a5,0x5
    80007f10:	00478793          	addi	a5,a5,4 # 8000cf10 <end>
    80007f14:	00050493          	mv	s1,a0
    80007f18:	04f56463          	bltu	a0,a5,80007f60 <kfree+0x70>
    80007f1c:	01100793          	li	a5,17
    80007f20:	01b79793          	slli	a5,a5,0x1b
    80007f24:	02f57e63          	bgeu	a0,a5,80007f60 <kfree+0x70>
    80007f28:	00001637          	lui	a2,0x1
    80007f2c:	00100593          	li	a1,1
    80007f30:	00000097          	auipc	ra,0x0
    80007f34:	478080e7          	jalr	1144(ra) # 800083a8 <__memset>
    80007f38:	00004797          	auipc	a5,0x4
    80007f3c:	c8878793          	addi	a5,a5,-888 # 8000bbc0 <kmem>
    80007f40:	0007b703          	ld	a4,0(a5)
    80007f44:	01813083          	ld	ra,24(sp)
    80007f48:	01013403          	ld	s0,16(sp)
    80007f4c:	00e4b023          	sd	a4,0(s1)
    80007f50:	0097b023          	sd	s1,0(a5)
    80007f54:	00813483          	ld	s1,8(sp)
    80007f58:	02010113          	addi	sp,sp,32
    80007f5c:	00008067          	ret
    80007f60:	00001517          	auipc	a0,0x1
    80007f64:	7d050513          	addi	a0,a0,2000 # 80009730 <digits+0x18>
    80007f68:	fffff097          	auipc	ra,0xfffff
    80007f6c:	354080e7          	jalr	852(ra) # 800072bc <panic>

0000000080007f70 <kalloc>:
    80007f70:	fe010113          	addi	sp,sp,-32
    80007f74:	00813823          	sd	s0,16(sp)
    80007f78:	00913423          	sd	s1,8(sp)
    80007f7c:	00113c23          	sd	ra,24(sp)
    80007f80:	02010413          	addi	s0,sp,32
    80007f84:	00004797          	auipc	a5,0x4
    80007f88:	c3c78793          	addi	a5,a5,-964 # 8000bbc0 <kmem>
    80007f8c:	0007b483          	ld	s1,0(a5)
    80007f90:	02048063          	beqz	s1,80007fb0 <kalloc+0x40>
    80007f94:	0004b703          	ld	a4,0(s1)
    80007f98:	00001637          	lui	a2,0x1
    80007f9c:	00500593          	li	a1,5
    80007fa0:	00048513          	mv	a0,s1
    80007fa4:	00e7b023          	sd	a4,0(a5)
    80007fa8:	00000097          	auipc	ra,0x0
    80007fac:	400080e7          	jalr	1024(ra) # 800083a8 <__memset>
    80007fb0:	01813083          	ld	ra,24(sp)
    80007fb4:	01013403          	ld	s0,16(sp)
    80007fb8:	00048513          	mv	a0,s1
    80007fbc:	00813483          	ld	s1,8(sp)
    80007fc0:	02010113          	addi	sp,sp,32
    80007fc4:	00008067          	ret

0000000080007fc8 <initlock>:
    80007fc8:	ff010113          	addi	sp,sp,-16
    80007fcc:	00813423          	sd	s0,8(sp)
    80007fd0:	01010413          	addi	s0,sp,16
    80007fd4:	00813403          	ld	s0,8(sp)
    80007fd8:	00b53423          	sd	a1,8(a0)
    80007fdc:	00052023          	sw	zero,0(a0)
    80007fe0:	00053823          	sd	zero,16(a0)
    80007fe4:	01010113          	addi	sp,sp,16
    80007fe8:	00008067          	ret

0000000080007fec <acquire>:
    80007fec:	fe010113          	addi	sp,sp,-32
    80007ff0:	00813823          	sd	s0,16(sp)
    80007ff4:	00913423          	sd	s1,8(sp)
    80007ff8:	00113c23          	sd	ra,24(sp)
    80007ffc:	01213023          	sd	s2,0(sp)
    80008000:	02010413          	addi	s0,sp,32
    80008004:	00050493          	mv	s1,a0
    80008008:	10002973          	csrr	s2,sstatus
    8000800c:	100027f3          	csrr	a5,sstatus
    80008010:	ffd7f793          	andi	a5,a5,-3
    80008014:	10079073          	csrw	sstatus,a5
    80008018:	fffff097          	auipc	ra,0xfffff
    8000801c:	8e0080e7          	jalr	-1824(ra) # 800068f8 <mycpu>
    80008020:	07852783          	lw	a5,120(a0)
    80008024:	06078e63          	beqz	a5,800080a0 <acquire+0xb4>
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	8d0080e7          	jalr	-1840(ra) # 800068f8 <mycpu>
    80008030:	07852783          	lw	a5,120(a0)
    80008034:	0004a703          	lw	a4,0(s1)
    80008038:	0017879b          	addiw	a5,a5,1
    8000803c:	06f52c23          	sw	a5,120(a0)
    80008040:	04071063          	bnez	a4,80008080 <acquire+0x94>
    80008044:	00100713          	li	a4,1
    80008048:	00070793          	mv	a5,a4
    8000804c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008050:	0007879b          	sext.w	a5,a5
    80008054:	fe079ae3          	bnez	a5,80008048 <acquire+0x5c>
    80008058:	0ff0000f          	fence
    8000805c:	fffff097          	auipc	ra,0xfffff
    80008060:	89c080e7          	jalr	-1892(ra) # 800068f8 <mycpu>
    80008064:	01813083          	ld	ra,24(sp)
    80008068:	01013403          	ld	s0,16(sp)
    8000806c:	00a4b823          	sd	a0,16(s1)
    80008070:	00013903          	ld	s2,0(sp)
    80008074:	00813483          	ld	s1,8(sp)
    80008078:	02010113          	addi	sp,sp,32
    8000807c:	00008067          	ret
    80008080:	0104b903          	ld	s2,16(s1)
    80008084:	fffff097          	auipc	ra,0xfffff
    80008088:	874080e7          	jalr	-1932(ra) # 800068f8 <mycpu>
    8000808c:	faa91ce3          	bne	s2,a0,80008044 <acquire+0x58>
    80008090:	00001517          	auipc	a0,0x1
    80008094:	6a850513          	addi	a0,a0,1704 # 80009738 <digits+0x20>
    80008098:	fffff097          	auipc	ra,0xfffff
    8000809c:	224080e7          	jalr	548(ra) # 800072bc <panic>
    800080a0:	00195913          	srli	s2,s2,0x1
    800080a4:	fffff097          	auipc	ra,0xfffff
    800080a8:	854080e7          	jalr	-1964(ra) # 800068f8 <mycpu>
    800080ac:	00197913          	andi	s2,s2,1
    800080b0:	07252e23          	sw	s2,124(a0)
    800080b4:	f75ff06f          	j	80008028 <acquire+0x3c>

00000000800080b8 <release>:
    800080b8:	fe010113          	addi	sp,sp,-32
    800080bc:	00813823          	sd	s0,16(sp)
    800080c0:	00113c23          	sd	ra,24(sp)
    800080c4:	00913423          	sd	s1,8(sp)
    800080c8:	01213023          	sd	s2,0(sp)
    800080cc:	02010413          	addi	s0,sp,32
    800080d0:	00052783          	lw	a5,0(a0)
    800080d4:	00079a63          	bnez	a5,800080e8 <release+0x30>
    800080d8:	00001517          	auipc	a0,0x1
    800080dc:	66850513          	addi	a0,a0,1640 # 80009740 <digits+0x28>
    800080e0:	fffff097          	auipc	ra,0xfffff
    800080e4:	1dc080e7          	jalr	476(ra) # 800072bc <panic>
    800080e8:	01053903          	ld	s2,16(a0)
    800080ec:	00050493          	mv	s1,a0
    800080f0:	fffff097          	auipc	ra,0xfffff
    800080f4:	808080e7          	jalr	-2040(ra) # 800068f8 <mycpu>
    800080f8:	fea910e3          	bne	s2,a0,800080d8 <release+0x20>
    800080fc:	0004b823          	sd	zero,16(s1)
    80008100:	0ff0000f          	fence
    80008104:	0f50000f          	fence	iorw,ow
    80008108:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000810c:	ffffe097          	auipc	ra,0xffffe
    80008110:	7ec080e7          	jalr	2028(ra) # 800068f8 <mycpu>
    80008114:	100027f3          	csrr	a5,sstatus
    80008118:	0027f793          	andi	a5,a5,2
    8000811c:	04079a63          	bnez	a5,80008170 <release+0xb8>
    80008120:	07852783          	lw	a5,120(a0)
    80008124:	02f05e63          	blez	a5,80008160 <release+0xa8>
    80008128:	fff7871b          	addiw	a4,a5,-1
    8000812c:	06e52c23          	sw	a4,120(a0)
    80008130:	00071c63          	bnez	a4,80008148 <release+0x90>
    80008134:	07c52783          	lw	a5,124(a0)
    80008138:	00078863          	beqz	a5,80008148 <release+0x90>
    8000813c:	100027f3          	csrr	a5,sstatus
    80008140:	0027e793          	ori	a5,a5,2
    80008144:	10079073          	csrw	sstatus,a5
    80008148:	01813083          	ld	ra,24(sp)
    8000814c:	01013403          	ld	s0,16(sp)
    80008150:	00813483          	ld	s1,8(sp)
    80008154:	00013903          	ld	s2,0(sp)
    80008158:	02010113          	addi	sp,sp,32
    8000815c:	00008067          	ret
    80008160:	00001517          	auipc	a0,0x1
    80008164:	60050513          	addi	a0,a0,1536 # 80009760 <digits+0x48>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	154080e7          	jalr	340(ra) # 800072bc <panic>
    80008170:	00001517          	auipc	a0,0x1
    80008174:	5d850513          	addi	a0,a0,1496 # 80009748 <digits+0x30>
    80008178:	fffff097          	auipc	ra,0xfffff
    8000817c:	144080e7          	jalr	324(ra) # 800072bc <panic>

0000000080008180 <holding>:
    80008180:	00052783          	lw	a5,0(a0)
    80008184:	00079663          	bnez	a5,80008190 <holding+0x10>
    80008188:	00000513          	li	a0,0
    8000818c:	00008067          	ret
    80008190:	fe010113          	addi	sp,sp,-32
    80008194:	00813823          	sd	s0,16(sp)
    80008198:	00913423          	sd	s1,8(sp)
    8000819c:	00113c23          	sd	ra,24(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	01053483          	ld	s1,16(a0)
    800081a8:	ffffe097          	auipc	ra,0xffffe
    800081ac:	750080e7          	jalr	1872(ra) # 800068f8 <mycpu>
    800081b0:	01813083          	ld	ra,24(sp)
    800081b4:	01013403          	ld	s0,16(sp)
    800081b8:	40a48533          	sub	a0,s1,a0
    800081bc:	00153513          	seqz	a0,a0
    800081c0:	00813483          	ld	s1,8(sp)
    800081c4:	02010113          	addi	sp,sp,32
    800081c8:	00008067          	ret

00000000800081cc <push_off>:
    800081cc:	fe010113          	addi	sp,sp,-32
    800081d0:	00813823          	sd	s0,16(sp)
    800081d4:	00113c23          	sd	ra,24(sp)
    800081d8:	00913423          	sd	s1,8(sp)
    800081dc:	02010413          	addi	s0,sp,32
    800081e0:	100024f3          	csrr	s1,sstatus
    800081e4:	100027f3          	csrr	a5,sstatus
    800081e8:	ffd7f793          	andi	a5,a5,-3
    800081ec:	10079073          	csrw	sstatus,a5
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	708080e7          	jalr	1800(ra) # 800068f8 <mycpu>
    800081f8:	07852783          	lw	a5,120(a0)
    800081fc:	02078663          	beqz	a5,80008228 <push_off+0x5c>
    80008200:	ffffe097          	auipc	ra,0xffffe
    80008204:	6f8080e7          	jalr	1784(ra) # 800068f8 <mycpu>
    80008208:	07852783          	lw	a5,120(a0)
    8000820c:	01813083          	ld	ra,24(sp)
    80008210:	01013403          	ld	s0,16(sp)
    80008214:	0017879b          	addiw	a5,a5,1
    80008218:	06f52c23          	sw	a5,120(a0)
    8000821c:	00813483          	ld	s1,8(sp)
    80008220:	02010113          	addi	sp,sp,32
    80008224:	00008067          	ret
    80008228:	0014d493          	srli	s1,s1,0x1
    8000822c:	ffffe097          	auipc	ra,0xffffe
    80008230:	6cc080e7          	jalr	1740(ra) # 800068f8 <mycpu>
    80008234:	0014f493          	andi	s1,s1,1
    80008238:	06952e23          	sw	s1,124(a0)
    8000823c:	fc5ff06f          	j	80008200 <push_off+0x34>

0000000080008240 <pop_off>:
    80008240:	ff010113          	addi	sp,sp,-16
    80008244:	00813023          	sd	s0,0(sp)
    80008248:	00113423          	sd	ra,8(sp)
    8000824c:	01010413          	addi	s0,sp,16
    80008250:	ffffe097          	auipc	ra,0xffffe
    80008254:	6a8080e7          	jalr	1704(ra) # 800068f8 <mycpu>
    80008258:	100027f3          	csrr	a5,sstatus
    8000825c:	0027f793          	andi	a5,a5,2
    80008260:	04079663          	bnez	a5,800082ac <pop_off+0x6c>
    80008264:	07852783          	lw	a5,120(a0)
    80008268:	02f05a63          	blez	a5,8000829c <pop_off+0x5c>
    8000826c:	fff7871b          	addiw	a4,a5,-1
    80008270:	06e52c23          	sw	a4,120(a0)
    80008274:	00071c63          	bnez	a4,8000828c <pop_off+0x4c>
    80008278:	07c52783          	lw	a5,124(a0)
    8000827c:	00078863          	beqz	a5,8000828c <pop_off+0x4c>
    80008280:	100027f3          	csrr	a5,sstatus
    80008284:	0027e793          	ori	a5,a5,2
    80008288:	10079073          	csrw	sstatus,a5
    8000828c:	00813083          	ld	ra,8(sp)
    80008290:	00013403          	ld	s0,0(sp)
    80008294:	01010113          	addi	sp,sp,16
    80008298:	00008067          	ret
    8000829c:	00001517          	auipc	a0,0x1
    800082a0:	4c450513          	addi	a0,a0,1220 # 80009760 <digits+0x48>
    800082a4:	fffff097          	auipc	ra,0xfffff
    800082a8:	018080e7          	jalr	24(ra) # 800072bc <panic>
    800082ac:	00001517          	auipc	a0,0x1
    800082b0:	49c50513          	addi	a0,a0,1180 # 80009748 <digits+0x30>
    800082b4:	fffff097          	auipc	ra,0xfffff
    800082b8:	008080e7          	jalr	8(ra) # 800072bc <panic>

00000000800082bc <push_on>:
    800082bc:	fe010113          	addi	sp,sp,-32
    800082c0:	00813823          	sd	s0,16(sp)
    800082c4:	00113c23          	sd	ra,24(sp)
    800082c8:	00913423          	sd	s1,8(sp)
    800082cc:	02010413          	addi	s0,sp,32
    800082d0:	100024f3          	csrr	s1,sstatus
    800082d4:	100027f3          	csrr	a5,sstatus
    800082d8:	0027e793          	ori	a5,a5,2
    800082dc:	10079073          	csrw	sstatus,a5
    800082e0:	ffffe097          	auipc	ra,0xffffe
    800082e4:	618080e7          	jalr	1560(ra) # 800068f8 <mycpu>
    800082e8:	07852783          	lw	a5,120(a0)
    800082ec:	02078663          	beqz	a5,80008318 <push_on+0x5c>
    800082f0:	ffffe097          	auipc	ra,0xffffe
    800082f4:	608080e7          	jalr	1544(ra) # 800068f8 <mycpu>
    800082f8:	07852783          	lw	a5,120(a0)
    800082fc:	01813083          	ld	ra,24(sp)
    80008300:	01013403          	ld	s0,16(sp)
    80008304:	0017879b          	addiw	a5,a5,1
    80008308:	06f52c23          	sw	a5,120(a0)
    8000830c:	00813483          	ld	s1,8(sp)
    80008310:	02010113          	addi	sp,sp,32
    80008314:	00008067          	ret
    80008318:	0014d493          	srli	s1,s1,0x1
    8000831c:	ffffe097          	auipc	ra,0xffffe
    80008320:	5dc080e7          	jalr	1500(ra) # 800068f8 <mycpu>
    80008324:	0014f493          	andi	s1,s1,1
    80008328:	06952e23          	sw	s1,124(a0)
    8000832c:	fc5ff06f          	j	800082f0 <push_on+0x34>

0000000080008330 <pop_on>:
    80008330:	ff010113          	addi	sp,sp,-16
    80008334:	00813023          	sd	s0,0(sp)
    80008338:	00113423          	sd	ra,8(sp)
    8000833c:	01010413          	addi	s0,sp,16
    80008340:	ffffe097          	auipc	ra,0xffffe
    80008344:	5b8080e7          	jalr	1464(ra) # 800068f8 <mycpu>
    80008348:	100027f3          	csrr	a5,sstatus
    8000834c:	0027f793          	andi	a5,a5,2
    80008350:	04078463          	beqz	a5,80008398 <pop_on+0x68>
    80008354:	07852783          	lw	a5,120(a0)
    80008358:	02f05863          	blez	a5,80008388 <pop_on+0x58>
    8000835c:	fff7879b          	addiw	a5,a5,-1
    80008360:	06f52c23          	sw	a5,120(a0)
    80008364:	07853783          	ld	a5,120(a0)
    80008368:	00079863          	bnez	a5,80008378 <pop_on+0x48>
    8000836c:	100027f3          	csrr	a5,sstatus
    80008370:	ffd7f793          	andi	a5,a5,-3
    80008374:	10079073          	csrw	sstatus,a5
    80008378:	00813083          	ld	ra,8(sp)
    8000837c:	00013403          	ld	s0,0(sp)
    80008380:	01010113          	addi	sp,sp,16
    80008384:	00008067          	ret
    80008388:	00001517          	auipc	a0,0x1
    8000838c:	40050513          	addi	a0,a0,1024 # 80009788 <digits+0x70>
    80008390:	fffff097          	auipc	ra,0xfffff
    80008394:	f2c080e7          	jalr	-212(ra) # 800072bc <panic>
    80008398:	00001517          	auipc	a0,0x1
    8000839c:	3d050513          	addi	a0,a0,976 # 80009768 <digits+0x50>
    800083a0:	fffff097          	auipc	ra,0xfffff
    800083a4:	f1c080e7          	jalr	-228(ra) # 800072bc <panic>

00000000800083a8 <__memset>:
    800083a8:	ff010113          	addi	sp,sp,-16
    800083ac:	00813423          	sd	s0,8(sp)
    800083b0:	01010413          	addi	s0,sp,16
    800083b4:	1a060e63          	beqz	a2,80008570 <__memset+0x1c8>
    800083b8:	40a007b3          	neg	a5,a0
    800083bc:	0077f793          	andi	a5,a5,7
    800083c0:	00778693          	addi	a3,a5,7
    800083c4:	00b00813          	li	a6,11
    800083c8:	0ff5f593          	andi	a1,a1,255
    800083cc:	fff6071b          	addiw	a4,a2,-1
    800083d0:	1b06e663          	bltu	a3,a6,8000857c <__memset+0x1d4>
    800083d4:	1cd76463          	bltu	a4,a3,8000859c <__memset+0x1f4>
    800083d8:	1a078e63          	beqz	a5,80008594 <__memset+0x1ec>
    800083dc:	00b50023          	sb	a1,0(a0)
    800083e0:	00100713          	li	a4,1
    800083e4:	1ae78463          	beq	a5,a4,8000858c <__memset+0x1e4>
    800083e8:	00b500a3          	sb	a1,1(a0)
    800083ec:	00200713          	li	a4,2
    800083f0:	1ae78a63          	beq	a5,a4,800085a4 <__memset+0x1fc>
    800083f4:	00b50123          	sb	a1,2(a0)
    800083f8:	00300713          	li	a4,3
    800083fc:	18e78463          	beq	a5,a4,80008584 <__memset+0x1dc>
    80008400:	00b501a3          	sb	a1,3(a0)
    80008404:	00400713          	li	a4,4
    80008408:	1ae78263          	beq	a5,a4,800085ac <__memset+0x204>
    8000840c:	00b50223          	sb	a1,4(a0)
    80008410:	00500713          	li	a4,5
    80008414:	1ae78063          	beq	a5,a4,800085b4 <__memset+0x20c>
    80008418:	00b502a3          	sb	a1,5(a0)
    8000841c:	00700713          	li	a4,7
    80008420:	18e79e63          	bne	a5,a4,800085bc <__memset+0x214>
    80008424:	00b50323          	sb	a1,6(a0)
    80008428:	00700e93          	li	t4,7
    8000842c:	00859713          	slli	a4,a1,0x8
    80008430:	00e5e733          	or	a4,a1,a4
    80008434:	01059e13          	slli	t3,a1,0x10
    80008438:	01c76e33          	or	t3,a4,t3
    8000843c:	01859313          	slli	t1,a1,0x18
    80008440:	006e6333          	or	t1,t3,t1
    80008444:	02059893          	slli	a7,a1,0x20
    80008448:	40f60e3b          	subw	t3,a2,a5
    8000844c:	011368b3          	or	a7,t1,a7
    80008450:	02859813          	slli	a6,a1,0x28
    80008454:	0108e833          	or	a6,a7,a6
    80008458:	03059693          	slli	a3,a1,0x30
    8000845c:	003e589b          	srliw	a7,t3,0x3
    80008460:	00d866b3          	or	a3,a6,a3
    80008464:	03859713          	slli	a4,a1,0x38
    80008468:	00389813          	slli	a6,a7,0x3
    8000846c:	00f507b3          	add	a5,a0,a5
    80008470:	00e6e733          	or	a4,a3,a4
    80008474:	000e089b          	sext.w	a7,t3
    80008478:	00f806b3          	add	a3,a6,a5
    8000847c:	00e7b023          	sd	a4,0(a5)
    80008480:	00878793          	addi	a5,a5,8
    80008484:	fed79ce3          	bne	a5,a3,8000847c <__memset+0xd4>
    80008488:	ff8e7793          	andi	a5,t3,-8
    8000848c:	0007871b          	sext.w	a4,a5
    80008490:	01d787bb          	addw	a5,a5,t4
    80008494:	0ce88e63          	beq	a7,a4,80008570 <__memset+0x1c8>
    80008498:	00f50733          	add	a4,a0,a5
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0017871b          	addiw	a4,a5,1
    800084a4:	0cc77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	0027871b          	addiw	a4,a5,2
    800084b4:	0ac77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	0037871b          	addiw	a4,a5,3
    800084c4:	0ac77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	0047871b          	addiw	a4,a5,4
    800084d4:	08c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	0057871b          	addiw	a4,a5,5
    800084e4:	08c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	0067871b          	addiw	a4,a5,6
    800084f4:	06c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	0077871b          	addiw	a4,a5,7
    80008504:	06c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008508:	00e50733          	add	a4,a0,a4
    8000850c:	00b70023          	sb	a1,0(a4)
    80008510:	0087871b          	addiw	a4,a5,8
    80008514:	04c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008518:	00e50733          	add	a4,a0,a4
    8000851c:	00b70023          	sb	a1,0(a4)
    80008520:	0097871b          	addiw	a4,a5,9
    80008524:	04c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008528:	00e50733          	add	a4,a0,a4
    8000852c:	00b70023          	sb	a1,0(a4)
    80008530:	00a7871b          	addiw	a4,a5,10
    80008534:	02c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00b70023          	sb	a1,0(a4)
    80008540:	00b7871b          	addiw	a4,a5,11
    80008544:	02c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008548:	00e50733          	add	a4,a0,a4
    8000854c:	00b70023          	sb	a1,0(a4)
    80008550:	00c7871b          	addiw	a4,a5,12
    80008554:	00c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008558:	00e50733          	add	a4,a0,a4
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	00d7879b          	addiw	a5,a5,13
    80008564:	00c7f663          	bgeu	a5,a2,80008570 <__memset+0x1c8>
    80008568:	00f507b3          	add	a5,a0,a5
    8000856c:	00b78023          	sb	a1,0(a5)
    80008570:	00813403          	ld	s0,8(sp)
    80008574:	01010113          	addi	sp,sp,16
    80008578:	00008067          	ret
    8000857c:	00b00693          	li	a3,11
    80008580:	e55ff06f          	j	800083d4 <__memset+0x2c>
    80008584:	00300e93          	li	t4,3
    80008588:	ea5ff06f          	j	8000842c <__memset+0x84>
    8000858c:	00100e93          	li	t4,1
    80008590:	e9dff06f          	j	8000842c <__memset+0x84>
    80008594:	00000e93          	li	t4,0
    80008598:	e95ff06f          	j	8000842c <__memset+0x84>
    8000859c:	00000793          	li	a5,0
    800085a0:	ef9ff06f          	j	80008498 <__memset+0xf0>
    800085a4:	00200e93          	li	t4,2
    800085a8:	e85ff06f          	j	8000842c <__memset+0x84>
    800085ac:	00400e93          	li	t4,4
    800085b0:	e7dff06f          	j	8000842c <__memset+0x84>
    800085b4:	00500e93          	li	t4,5
    800085b8:	e75ff06f          	j	8000842c <__memset+0x84>
    800085bc:	00600e93          	li	t4,6
    800085c0:	e6dff06f          	j	8000842c <__memset+0x84>

00000000800085c4 <__memmove>:
    800085c4:	ff010113          	addi	sp,sp,-16
    800085c8:	00813423          	sd	s0,8(sp)
    800085cc:	01010413          	addi	s0,sp,16
    800085d0:	0e060863          	beqz	a2,800086c0 <__memmove+0xfc>
    800085d4:	fff6069b          	addiw	a3,a2,-1
    800085d8:	0006881b          	sext.w	a6,a3
    800085dc:	0ea5e863          	bltu	a1,a0,800086cc <__memmove+0x108>
    800085e0:	00758713          	addi	a4,a1,7
    800085e4:	00a5e7b3          	or	a5,a1,a0
    800085e8:	40a70733          	sub	a4,a4,a0
    800085ec:	0077f793          	andi	a5,a5,7
    800085f0:	00f73713          	sltiu	a4,a4,15
    800085f4:	00174713          	xori	a4,a4,1
    800085f8:	0017b793          	seqz	a5,a5
    800085fc:	00e7f7b3          	and	a5,a5,a4
    80008600:	10078863          	beqz	a5,80008710 <__memmove+0x14c>
    80008604:	00900793          	li	a5,9
    80008608:	1107f463          	bgeu	a5,a6,80008710 <__memmove+0x14c>
    8000860c:	0036581b          	srliw	a6,a2,0x3
    80008610:	fff8081b          	addiw	a6,a6,-1
    80008614:	02081813          	slli	a6,a6,0x20
    80008618:	01d85893          	srli	a7,a6,0x1d
    8000861c:	00858813          	addi	a6,a1,8
    80008620:	00058793          	mv	a5,a1
    80008624:	00050713          	mv	a4,a0
    80008628:	01088833          	add	a6,a7,a6
    8000862c:	0007b883          	ld	a7,0(a5)
    80008630:	00878793          	addi	a5,a5,8
    80008634:	00870713          	addi	a4,a4,8
    80008638:	ff173c23          	sd	a7,-8(a4)
    8000863c:	ff0798e3          	bne	a5,a6,8000862c <__memmove+0x68>
    80008640:	ff867713          	andi	a4,a2,-8
    80008644:	02071793          	slli	a5,a4,0x20
    80008648:	0207d793          	srli	a5,a5,0x20
    8000864c:	00f585b3          	add	a1,a1,a5
    80008650:	40e686bb          	subw	a3,a3,a4
    80008654:	00f507b3          	add	a5,a0,a5
    80008658:	06e60463          	beq	a2,a4,800086c0 <__memmove+0xfc>
    8000865c:	0005c703          	lbu	a4,0(a1)
    80008660:	00e78023          	sb	a4,0(a5)
    80008664:	04068e63          	beqz	a3,800086c0 <__memmove+0xfc>
    80008668:	0015c603          	lbu	a2,1(a1)
    8000866c:	00100713          	li	a4,1
    80008670:	00c780a3          	sb	a2,1(a5)
    80008674:	04e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008678:	0025c603          	lbu	a2,2(a1)
    8000867c:	00200713          	li	a4,2
    80008680:	00c78123          	sb	a2,2(a5)
    80008684:	02e68e63          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008688:	0035c603          	lbu	a2,3(a1)
    8000868c:	00300713          	li	a4,3
    80008690:	00c781a3          	sb	a2,3(a5)
    80008694:	02e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008698:	0045c603          	lbu	a2,4(a1)
    8000869c:	00400713          	li	a4,4
    800086a0:	00c78223          	sb	a2,4(a5)
    800086a4:	00e68e63          	beq	a3,a4,800086c0 <__memmove+0xfc>
    800086a8:	0055c603          	lbu	a2,5(a1)
    800086ac:	00500713          	li	a4,5
    800086b0:	00c782a3          	sb	a2,5(a5)
    800086b4:	00e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    800086b8:	0065c703          	lbu	a4,6(a1)
    800086bc:	00e78323          	sb	a4,6(a5)
    800086c0:	00813403          	ld	s0,8(sp)
    800086c4:	01010113          	addi	sp,sp,16
    800086c8:	00008067          	ret
    800086cc:	02061713          	slli	a4,a2,0x20
    800086d0:	02075713          	srli	a4,a4,0x20
    800086d4:	00e587b3          	add	a5,a1,a4
    800086d8:	f0f574e3          	bgeu	a0,a5,800085e0 <__memmove+0x1c>
    800086dc:	02069613          	slli	a2,a3,0x20
    800086e0:	02065613          	srli	a2,a2,0x20
    800086e4:	fff64613          	not	a2,a2
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00c78633          	add	a2,a5,a2
    800086f0:	fff7c683          	lbu	a3,-1(a5)
    800086f4:	fff78793          	addi	a5,a5,-1
    800086f8:	fff70713          	addi	a4,a4,-1
    800086fc:	00d70023          	sb	a3,0(a4)
    80008700:	fec798e3          	bne	a5,a2,800086f0 <__memmove+0x12c>
    80008704:	00813403          	ld	s0,8(sp)
    80008708:	01010113          	addi	sp,sp,16
    8000870c:	00008067          	ret
    80008710:	02069713          	slli	a4,a3,0x20
    80008714:	02075713          	srli	a4,a4,0x20
    80008718:	00170713          	addi	a4,a4,1
    8000871c:	00e50733          	add	a4,a0,a4
    80008720:	00050793          	mv	a5,a0
    80008724:	0005c683          	lbu	a3,0(a1)
    80008728:	00178793          	addi	a5,a5,1
    8000872c:	00158593          	addi	a1,a1,1
    80008730:	fed78fa3          	sb	a3,-1(a5)
    80008734:	fee798e3          	bne	a5,a4,80008724 <__memmove+0x160>
    80008738:	f89ff06f          	j	800086c0 <__memmove+0xfc>

000000008000873c <__putc>:
    8000873c:	fe010113          	addi	sp,sp,-32
    80008740:	00813823          	sd	s0,16(sp)
    80008744:	00113c23          	sd	ra,24(sp)
    80008748:	02010413          	addi	s0,sp,32
    8000874c:	00050793          	mv	a5,a0
    80008750:	fef40593          	addi	a1,s0,-17
    80008754:	00100613          	li	a2,1
    80008758:	00000513          	li	a0,0
    8000875c:	fef407a3          	sb	a5,-17(s0)
    80008760:	fffff097          	auipc	ra,0xfffff
    80008764:	b3c080e7          	jalr	-1220(ra) # 8000729c <console_write>
    80008768:	01813083          	ld	ra,24(sp)
    8000876c:	01013403          	ld	s0,16(sp)
    80008770:	02010113          	addi	sp,sp,32
    80008774:	00008067          	ret

0000000080008778 <__getc>:
    80008778:	fe010113          	addi	sp,sp,-32
    8000877c:	00813823          	sd	s0,16(sp)
    80008780:	00113c23          	sd	ra,24(sp)
    80008784:	02010413          	addi	s0,sp,32
    80008788:	fe840593          	addi	a1,s0,-24
    8000878c:	00100613          	li	a2,1
    80008790:	00000513          	li	a0,0
    80008794:	fffff097          	auipc	ra,0xfffff
    80008798:	ae8080e7          	jalr	-1304(ra) # 8000727c <console_read>
    8000879c:	fe844503          	lbu	a0,-24(s0)
    800087a0:	01813083          	ld	ra,24(sp)
    800087a4:	01013403          	ld	s0,16(sp)
    800087a8:	02010113          	addi	sp,sp,32
    800087ac:	00008067          	ret

00000000800087b0 <console_handler>:
    800087b0:	fe010113          	addi	sp,sp,-32
    800087b4:	00813823          	sd	s0,16(sp)
    800087b8:	00113c23          	sd	ra,24(sp)
    800087bc:	00913423          	sd	s1,8(sp)
    800087c0:	02010413          	addi	s0,sp,32
    800087c4:	14202773          	csrr	a4,scause
    800087c8:	100027f3          	csrr	a5,sstatus
    800087cc:	0027f793          	andi	a5,a5,2
    800087d0:	06079e63          	bnez	a5,8000884c <console_handler+0x9c>
    800087d4:	00074c63          	bltz	a4,800087ec <console_handler+0x3c>
    800087d8:	01813083          	ld	ra,24(sp)
    800087dc:	01013403          	ld	s0,16(sp)
    800087e0:	00813483          	ld	s1,8(sp)
    800087e4:	02010113          	addi	sp,sp,32
    800087e8:	00008067          	ret
    800087ec:	0ff77713          	andi	a4,a4,255
    800087f0:	00900793          	li	a5,9
    800087f4:	fef712e3          	bne	a4,a5,800087d8 <console_handler+0x28>
    800087f8:	ffffe097          	auipc	ra,0xffffe
    800087fc:	6dc080e7          	jalr	1756(ra) # 80006ed4 <plic_claim>
    80008800:	00a00793          	li	a5,10
    80008804:	00050493          	mv	s1,a0
    80008808:	02f50c63          	beq	a0,a5,80008840 <console_handler+0x90>
    8000880c:	fc0506e3          	beqz	a0,800087d8 <console_handler+0x28>
    80008810:	00050593          	mv	a1,a0
    80008814:	00001517          	auipc	a0,0x1
    80008818:	e7c50513          	addi	a0,a0,-388 # 80009690 <_ZL6digits+0x110>
    8000881c:	fffff097          	auipc	ra,0xfffff
    80008820:	afc080e7          	jalr	-1284(ra) # 80007318 <__printf>
    80008824:	01013403          	ld	s0,16(sp)
    80008828:	01813083          	ld	ra,24(sp)
    8000882c:	00048513          	mv	a0,s1
    80008830:	00813483          	ld	s1,8(sp)
    80008834:	02010113          	addi	sp,sp,32
    80008838:	ffffe317          	auipc	t1,0xffffe
    8000883c:	6d430067          	jr	1748(t1) # 80006f0c <plic_complete>
    80008840:	fffff097          	auipc	ra,0xfffff
    80008844:	3e0080e7          	jalr	992(ra) # 80007c20 <uartintr>
    80008848:	fddff06f          	j	80008824 <console_handler+0x74>
    8000884c:	00001517          	auipc	a0,0x1
    80008850:	f4450513          	addi	a0,a0,-188 # 80009790 <digits+0x78>
    80008854:	fffff097          	auipc	ra,0xfffff
    80008858:	a68080e7          	jalr	-1432(ra) # 800072bc <panic>
	...
