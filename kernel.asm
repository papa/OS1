
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	d1013103          	ld	sp,-752(sp) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	56d060ef          	jal	ra,80006d88 <start>

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
    80001088:	169020ef          	jal	ra,800039f0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800015b4:	cc0080e7          	jalr	-832(ra) # 80006270 <_Z11printStringPKc>
        printInt(i);
    800015b8:	00000613          	li	a2,0
    800015bc:	00a00593          	li	a1,10
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00005097          	auipc	ra,0x5
    800015c8:	e44080e7          	jalr	-444(ra) # 80006408 <_Z8printIntiii>
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
    80001604:	c70080e7          	jalr	-912(ra) # 80006270 <_Z11printStringPKc>
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
    80001634:	c40080e7          	jalr	-960(ra) # 80006270 <_Z11printStringPKc>
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
    80001654:	c20080e7          	jalr	-992(ra) # 80006270 <_Z11printStringPKc>
        printInt(i);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	0004851b          	sext.w	a0,s1
    80001664:	00005097          	auipc	ra,0x5
    80001668:	da4080e7          	jalr	-604(ra) # 80006408 <_Z8printIntiii>
        printString("\n");
    8000166c:	00008517          	auipc	a0,0x8
    80001670:	a8c50513          	addi	a0,a0,-1396 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001674:	00005097          	auipc	ra,0x5
    80001678:	bfc080e7          	jalr	-1028(ra) # 80006270 <_Z11printStringPKc>
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
    800016d4:	ba0080e7          	jalr	-1120(ra) # 80006270 <_Z11printStringPKc>
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
    800016f4:	b80080e7          	jalr	-1152(ra) # 80006270 <_Z11printStringPKc>
        printInt(j);
    800016f8:	00000613          	li	a2,0
    800016fc:	00a00593          	li	a1,10
    80001700:	0004851b          	sext.w	a0,s1
    80001704:	00005097          	auipc	ra,0x5
    80001708:	d04080e7          	jalr	-764(ra) # 80006408 <_Z8printIntiii>
        printString("\n");
    8000170c:	00008517          	auipc	a0,0x8
    80001710:	9ec50513          	addi	a0,a0,-1556 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001714:	00005097          	auipc	ra,0x5
    80001718:	b5c080e7          	jalr	-1188(ra) # 80006270 <_Z11printStringPKc>
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
    80001774:	b00080e7          	jalr	-1280(ra) # 80006270 <_Z11printStringPKc>
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
    800017a0:	ad4080e7          	jalr	-1324(ra) # 80006270 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00005097          	auipc	ra,0x5
    800017b4:	c58080e7          	jalr	-936(ra) # 80006408 <_Z8printIntiii>
        printString("\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	94050513          	addi	a0,a0,-1728 # 800090f8 <CONSOLE_STATUS+0xe8>
    800017c0:	00005097          	auipc	ra,0x5
    800017c4:	ab0080e7          	jalr	-1360(ra) # 80006270 <_Z11printStringPKc>
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
    80001858:	a1c080e7          	jalr	-1508(ra) # 80006270 <_Z11printStringPKc>
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
    8000189c:	9d8080e7          	jalr	-1576(ra) # 80006270 <_Z11printStringPKc>
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
    800018f0:	984080e7          	jalr	-1660(ra) # 80006270 <_Z11printStringPKc>
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
    80001938:	93c080e7          	jalr	-1732(ra) # 80006270 <_Z11printStringPKc>
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
    8000197c:	8f8080e7          	jalr	-1800(ra) # 80006270 <_Z11printStringPKc>
            return;
    80001980:	f21ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001984:	00007517          	auipc	a0,0x7
    80001988:	6fc50513          	addi	a0,a0,1788 # 80009080 <CONSOLE_STATUS+0x70>
    8000198c:	00005097          	auipc	ra,0x5
    80001990:	8e4080e7          	jalr	-1820(ra) # 80006270 <_Z11printStringPKc>
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
    800019b4:	8c0080e7          	jalr	-1856(ra) # 80006270 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019b8:	0000a797          	auipc	a5,0xa
    800019bc:	3907b783          	ld	a5,912(a5) # 8000bd48 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	0000a797          	auipc	a5,0xa
    800019c8:	3247b783          	ld	a5,804(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    800019f0:	884080e7          	jalr	-1916(ra) # 80006270 <_Z11printStringPKc>
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        printString("OK\n");
    80001a04:	00007517          	auipc	a0,0x7
    80001a08:	67c50513          	addi	a0,a0,1660 # 80009080 <CONSOLE_STATUS+0x70>
    80001a0c:	00005097          	auipc	ra,0x5
    80001a10:	864080e7          	jalr	-1948(ra) # 80006270 <_Z11printStringPKc>
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
    80001a40:	834080e7          	jalr	-1996(ra) # 80006270 <_Z11printStringPKc>
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
    80001a94:	978080e7          	jalr	-1672(ra) # 80006408 <_Z8printIntiii>
    printString("\n");
    80001a98:	00007517          	auipc	a0,0x7
    80001a9c:	66050513          	addi	a0,a0,1632 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001aa0:	00004097          	auipc	ra,0x4
    80001aa4:	7d0080e7          	jalr	2000(ra) # 80006270 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001aa8:	00291793          	slli	a5,s2,0x2
    80001aac:	01278933          	add	s2,a5,s2
    80001ab0:	00191913          	slli	s2,s2,0x1
    80001ab4:	03390863          	beq	s2,s3,80001ae4 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	5c050513          	addi	a0,a0,1472 # 80009078 <CONSOLE_STATUS+0x68>
    80001ac0:	00004097          	auipc	ra,0x4
    80001ac4:	7b0080e7          	jalr	1968(ra) # 80006270 <_Z11printStringPKc>
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
    80001af0:	784080e7          	jalr	1924(ra) # 80006270 <_Z11printStringPKc>
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
    80001b14:	760080e7          	jalr	1888(ra) # 80006270 <_Z11printStringPKc>
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
    80001b40:	734080e7          	jalr	1844(ra) # 80006270 <_Z11printStringPKc>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret
         printString("OK\n");
    80001b54:	00007517          	auipc	a0,0x7
    80001b58:	52c50513          	addi	a0,a0,1324 # 80009080 <CONSOLE_STATUS+0x70>
    80001b5c:	00004097          	auipc	ra,0x4
    80001b60:	714080e7          	jalr	1812(ra) # 80006270 <_Z11printStringPKc>
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
    80001b8c:	6e8080e7          	jalr	1768(ra) # 80006270 <_Z11printStringPKc>
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
    80001bd0:	6a4080e7          	jalr	1700(ra) # 80006270 <_Z11printStringPKc>
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
    80001c58:	61c080e7          	jalr	1564(ra) # 80006270 <_Z11printStringPKc>
                return;
    80001c5c:	f79ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001c60:	00007517          	auipc	a0,0x7
    80001c64:	47050513          	addi	a0,a0,1136 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001c68:	00004097          	auipc	ra,0x4
    80001c6c:	608080e7          	jalr	1544(ra) # 80006270 <_Z11printStringPKc>
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
    80001cd0:	5a4080e7          	jalr	1444(ra) # 80006270 <_Z11printStringPKc>
                return;
    80001cd4:	f01ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001cd8:	00007517          	auipc	a0,0x7
    80001cdc:	3f850513          	addi	a0,a0,1016 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001ce0:	00004097          	auipc	ra,0x4
    80001ce4:	590080e7          	jalr	1424(ra) # 80006270 <_Z11printStringPKc>
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
    80001d00:	574080e7          	jalr	1396(ra) # 80006270 <_Z11printStringPKc>
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
    80001d44:	df078793          	addi	a5,a5,-528 # 8000bb30 <_ZTV12TestPeriodic+0x10>
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
    80001dbc:	1b0080e7          	jalr	432(ra) # 80010f68 <_Unwind_Resume>

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
    80001e0c:	468080e7          	jalr	1128(ra) # 80006270 <_Z11printStringPKc>

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
    80001ee8:	38c080e7          	jalr	908(ra) # 80006270 <_Z11printStringPKc>
    80001eec:	0140006f          	j	80001f00 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    80001ef0:	00007517          	auipc	a0,0x7
    80001ef4:	18850513          	addi	a0,a0,392 # 80009078 <CONSOLE_STATUS+0x68>
    80001ef8:	00004097          	auipc	ra,0x4
    80001efc:	378080e7          	jalr	888(ra) # 80006270 <_Z11printStringPKc>
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
    80001f7c:	2f8080e7          	jalr	760(ra) # 80006270 <_Z11printStringPKc>

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
    80001fc4:	2b0080e7          	jalr	688(ra) # 80006270 <_Z11printStringPKc>
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
    800020d4:	1a0080e7          	jalr	416(ra) # 80006270 <_Z11printStringPKc>
        return;
    800020d8:	ef1ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020dc:	00007517          	auipc	a0,0x7
    800020e0:	f9c50513          	addi	a0,a0,-100 # 80009078 <CONSOLE_STATUS+0x68>
    800020e4:	00004097          	auipc	ra,0x4
    800020e8:	18c080e7          	jalr	396(ra) # 80006270 <_Z11printStringPKc>
        return;
    800020ec:	eddff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020f0:	00007517          	auipc	a0,0x7
    800020f4:	f8850513          	addi	a0,a0,-120 # 80009078 <CONSOLE_STATUS+0x68>
    800020f8:	00004097          	auipc	ra,0x4
    800020fc:	178080e7          	jalr	376(ra) # 80006270 <_Z11printStringPKc>
        return;
    80002100:	ec9ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002104:	00007517          	auipc	a0,0x7
    80002108:	f7450513          	addi	a0,a0,-140 # 80009078 <CONSOLE_STATUS+0x68>
    8000210c:	00004097          	auipc	ra,0x4
    80002110:	164080e7          	jalr	356(ra) # 80006270 <_Z11printStringPKc>
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
    8000218c:	0e8080e7          	jalr	232(ra) # 80006270 <_Z11printStringPKc>
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
    800021c0:	be472703          	lw	a4,-1052(a4) # 8000bda0 <head>
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
    800021e4:	bc048493          	addi	s1,s1,-1088 # 8000bda0 <head>
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
    80002220:	b8472703          	lw	a4,-1148(a4) # 8000bda0 <head>
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
    80002248:	b8472703          	lw	a4,-1148(a4) # 8000bdc8 <tail>
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
    8000226c:	b3848493          	addi	s1,s1,-1224 # 8000bda0 <head>
    80002270:	0204b503          	ld	a0,32(s1)
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	16c080e7          	jalr	364(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    8000227c:	0284a783          	lw	a5,40(s1)
    80002280:	0000a717          	auipc	a4,0xa
    80002284:	86070713          	addi	a4,a4,-1952 # 8000bae0 <string>
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
    800022b0:	b1c72703          	lw	a4,-1252(a4) # 8000bdc8 <tail>
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
    80002408:	6fc78793          	addi	a5,a5,1788 # 8000bb00 <_ZTV14PeriodicThread+0x10>
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
    80002444:	6c078793          	addi	a5,a5,1728 # 8000bb00 <_ZTV14PeriodicThread+0x10>
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
    80002488:	67c78793          	addi	a5,a5,1660 # 8000bb00 <_ZTV14PeriodicThread+0x10>
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
    800024c4:	64078793          	addi	a5,a5,1600 # 8000bb00 <_ZTV14PeriodicThread+0x10>
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
    80002510:	8c47b783          	ld	a5,-1852(a5) # 8000bdd0 <_ZN3PCB7runningE>
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
    800025e4:	7f04b483          	ld	s1,2032(s1) # 8000bdd0 <_ZN3PCB7runningE>

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
    80002600:	7d490913          	addi	s2,s2,2004 # 8000bdd0 <_ZN3PCB7runningE>
    80002604:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002608:	00100793          	li	a5,1
    8000260c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002610:	00001097          	auipc	ra,0x1
    80002614:	3a0080e7          	jalr	928(ra) # 800039b0 <_ZN5Riscv14changePrivModeEv>

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
    80002668:	a30080e7          	jalr	-1488(ra) # 80004094 <_ZN15MemoryAllocator7kmallocEm>
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
    80002690:	a6c080e7          	jalr	-1428(ra) # 800040f8 <_ZN15MemoryAllocator5kfreeEPv>
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
    800026bc:	a40080e7          	jalr	-1472(ra) # 800040f8 <_ZN15MemoryAllocator5kfreeEPv>
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
    80002738:	69c90913          	addi	s2,s2,1692 # 8000bdd0 <_ZN3PCB7runningE>
    8000273c:	00a93023          	sd	a0,0(s2)
    80002740:	00100a13          	li	s4,1
    80002744:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002748:	00001537          	lui	a0,0x1
    8000274c:	00002097          	auipc	ra,0x2
    80002750:	948080e7          	jalr	-1720(ra) # 80004094 <_ZN15MemoryAllocator7kmallocEm>
    80002754:	00050993          	mv	s3,a0
    80002758:	06000513          	li	a0,96
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	ef8080e7          	jalr	-264(ra) # 80002654 <_ZN3PCBnwEm>
    80002764:	00050493          	mv	s1,a0
    80002768:	00200713          	li	a4,2
    8000276c:	00098693          	mv	a3,s3
    80002770:	00000613          	li	a2,0
    80002774:	00009597          	auipc	a1,0x9
    80002778:	5ac5b583          	ld	a1,1452(a1) # 8000bd20 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    800027f0:	5e478793          	addi	a5,a5,1508 # 8000bdd0 <_ZN3PCB7runningE>
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
    80002814:	168080e7          	jalr	360(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
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
    8000283c:	5a07b423          	sd	zero,1448(a5) # 8000bde0 <_ZN3PCB16timeSliceCounterE>
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
    80002870:	56470713          	addi	a4,a4,1380 # 8000bdd0 <_ZN3PCB7runningE>
    80002874:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002878:	00073703          	ld	a4,0(a4)
    8000287c:	00009697          	auipc	a3,0x9
    80002880:	49c6b683          	ld	a3,1180(a3) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800028a8:	0d4080e7          	jalr	212(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002900:	4ec6b683          	ld	a3,1260(a3) # 8000bde8 <_ZN3PCB10savedRegA4E>
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
    80002930:	04c080e7          	jalr	76(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002984:	ff8080e7          	jalr	-8(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
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
    800029e4:	4086b683          	ld	a3,1032(a3) # 8000bde8 <_ZN3PCB10savedRegA4E>
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
    80002a08:	f74080e7          	jalr	-140(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002a54:	970080e7          	jalr	-1680(ra) # 800043c0 <_ZN10KSemaphorenwEm>
    80002a58:	00050493          	mv	s1,a0
    80002a5c:	00000593          	li	a1,0
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	6f8080e7          	jalr	1784(ra) # 80004158 <_ZN10KSemaphoreC1Ei>
    80002a68:	00009797          	auipc	a5,0x9
    80002a6c:	3897b423          	sd	s1,904(a5) # 8000bdf0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002a70:	01800513          	li	a0,24
    80002a74:	00002097          	auipc	ra,0x2
    80002a78:	94c080e7          	jalr	-1716(ra) # 800043c0 <_ZN10KSemaphorenwEm>
    80002a7c:	00050493          	mv	s1,a0
    80002a80:	00000593          	li	a1,0
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	6d4080e7          	jalr	1748(ra) # 80004158 <_ZN10KSemaphoreC1Ei>
    80002a8c:	00009797          	auipc	a5,0x9
    80002a90:	3697b623          	sd	s1,876(a5) # 8000bdf8 <_ZN8KConsole19hasCharactersOutputE>
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
    80002ab8:	9ac080e7          	jalr	-1620(ra) # 80004460 <_ZN10KSemaphoredlEPv>
    80002abc:	00090513          	mv	a0,s2
    80002ac0:	0000e097          	auipc	ra,0xe
    80002ac4:	4a8080e7          	jalr	1192(ra) # 80010f68 <_Unwind_Resume>
    80002ac8:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002acc:	00048513          	mv	a0,s1
    80002ad0:	00002097          	auipc	ra,0x2
    80002ad4:	990080e7          	jalr	-1648(ra) # 80004460 <_ZN10KSemaphoredlEPv>
    80002ad8:	00090513          	mv	a0,s2
    80002adc:	0000e097          	auipc	ra,0xe
    80002ae0:	48c080e7          	jalr	1164(ra) # 80010f68 <_Unwind_Resume>

0000000080002ae4 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002ae4:	00009697          	auipc	a3,0x9
    80002ae8:	30c68693          	addi	a3,a3,780 # 8000bdf0 <_ZN8KConsole18hasCharactersInputE>
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
    80002b1c:	31870713          	addi	a4,a4,792 # 8000de30 <_ZN8KConsole11inputBufferE>
    80002b20:	00c70633          	add	a2,a4,a2
    80002b24:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002b28:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002b2c:	0006b503          	ld	a0,0(a3)
    80002b30:	00002097          	auipc	ra,0x2
    80002b34:	848080e7          	jalr	-1976(ra) # 80004378 <_ZN10KSemaphore6signalEv>
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
    80002b64:	29048493          	addi	s1,s1,656 # 8000bdf0 <_ZN8KConsole18hasCharactersInputE>
    80002b68:	0004b503          	ld	a0,0(s1)
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	694080e7          	jalr	1684(ra) # 80004200 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002b74:	0184b783          	ld	a5,24(s1)
    80002b78:	0104b703          	ld	a4,16(s1)
    80002b7c:	04e78063          	beq	a5,a4,80002bbc <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002b80:	0000b717          	auipc	a4,0xb
    80002b84:	2b070713          	addi	a4,a4,688 # 8000de30 <_ZN8KConsole11inputBufferE>
    80002b88:	00f70733          	add	a4,a4,a5
    80002b8c:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002b90:	00178793          	addi	a5,a5,1
    80002b94:	00002737          	lui	a4,0x2
    80002b98:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002b9c:	00e7f7b3          	and	a5,a5,a4
    80002ba0:	00009717          	auipc	a4,0x9
    80002ba4:	26f73423          	sd	a5,616(a4) # 8000be08 <_ZN8KConsole9inputHeadE>

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
    80002bc8:	22c68693          	addi	a3,a3,556 # 8000bdf0 <_ZN8KConsole18hasCharactersInputE>
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
    80002c0c:	22868693          	addi	a3,a3,552 # 8000be30 <_ZN8KConsole12outputBufferE>
    80002c10:	00c68633          	add	a2,a3,a2
    80002c14:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002c18:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002c1c:	00873503          	ld	a0,8(a4)
    80002c20:	00001097          	auipc	ra,0x1
    80002c24:	758080e7          	jalr	1880(ra) # 80004378 <_ZN10KSemaphore6signalEv>
}
    80002c28:	00813083          	ld	ra,8(sp)
    80002c2c:	00013403          	ld	s0,0(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret
    80002c38:	00008067          	ret

0000000080002c3c <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002c3c:	00009797          	auipc	a5,0x9
    80002c40:	0a47b783          	ld	a5,164(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002c74:	0907b783          	ld	a5,144(a5) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80002ca8:	03c7b783          	ld	a5,60(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002cf4:	10048493          	addi	s1,s1,256 # 8000bdf0 <_ZN8KConsole18hasCharactersInputE>
    80002cf8:	0084b503          	ld	a0,8(s1)
    80002cfc:	00001097          	auipc	ra,0x1
    80002d00:	504080e7          	jalr	1284(ra) # 80004200 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002d04:	0284b783          	ld	a5,40(s1)
    80002d08:	0204b703          	ld	a4,32(s1)
    80002d0c:	04e78063          	beq	a5,a4,80002d4c <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002d10:	00009717          	auipc	a4,0x9
    80002d14:	12070713          	addi	a4,a4,288 # 8000be30 <_ZN8KConsole12outputBufferE>
    80002d18:	00f70733          	add	a4,a4,a5
    80002d1c:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002d20:	00178793          	addi	a5,a5,1
    80002d24:	00002737          	lui	a4,0x2
    80002d28:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002d2c:	00e7f7b3          	and	a5,a5,a4
    80002d30:	00009717          	auipc	a4,0x9
    80002d34:	0ef73423          	sd	a5,232(a4) # 8000be18 <_ZN8KConsole10outputHeadE>

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
    80002d9c:	05870713          	addi	a4,a4,88 # 8000bdf0 <_ZN8KConsole18hasCharactersInputE>
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
    80002dd0:	bac080e7          	jalr	-1108(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002e20:	00453503          	ld	a0,4(a0) # 8000be20 <_ZN8KConsole11pendingPutcE>
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
    80002e60:	ed47b783          	ld	a5,-300(a5) # 8000bd30 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002e64:	0007c783          	lbu	a5,0(a5)
    80002e68:	00078e63          	beqz	a5,80002e84 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	fa4080e7          	jalr	-92(ra) # 80002e10 <_ZN8KConsole17outputBufferEmptyEv>
    80002e74:	00050863          	beqz	a0,80002e84 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e78:	00009797          	auipc	a5,0x9
    80002e7c:	fb07b783          	ld	a5,-80(a5) # 8000be28 <_ZN8KConsole11pendingGetcE>
    80002e80:	fc0784e3          	beqz	a5,80002e48 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002e84:	00009797          	auipc	a5,0x9
    80002e88:	e5c7b783          	ld	a5,-420(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002ea8:	f7c7b783          	ld	a5,-132(a5) # 8000be20 <_ZN8KConsole11pendingPutcE>
    80002eac:	fa0784e3          	beqz	a5,80002e54 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002eb0:	ffffe097          	auipc	ra,0xffffe
    80002eb4:	6ac080e7          	jalr	1708(ra) # 8000155c <sysCallGetCharOutput>
    80002eb8:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002ebc:	00009717          	auipc	a4,0x9
    80002ec0:	f3470713          	addi	a4,a4,-204 # 8000bdf0 <_ZN8KConsole18hasCharactersInputE>
    80002ec4:	03073783          	ld	a5,48(a4)
    80002ec8:	fff78793          	addi	a5,a5,-1
    80002ecc:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002ed0:	00009797          	auipc	a5,0x9
    80002ed4:	e087b783          	ld	a5,-504(a5) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80002f14:	a68080e7          	jalr	-1432(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
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
    80003058:	cec7b783          	ld	a5,-788(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000305c:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003060:	00500793          	li	a5,5
    80003064:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003068:	0000d797          	auipc	a5,0xd
    8000306c:	dc87b783          	ld	a5,-568(a5) # 8000fe30 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    800030ac:	d8c7b423          	sd	a2,-632(a5) # 8000fe30 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800030b0:	fedff06f          	j	8000309c <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800030b4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800030b4:	0000d517          	auipc	a0,0xd
    800030b8:	d7c53503          	ld	a0,-644(a0) # 8000fe30 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    800030cc:	c5073703          	ld	a4,-944(a4) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800030f8:	c2473703          	ld	a4,-988(a4) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    80003118:	d097be23          	sd	s1,-740(a5) # 8000fe30 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80003150:	f48080e7          	jalr	-184(ra) # 80004094 <_ZN15MemoryAllocator7kmallocEm>
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
    80003178:	f84080e7          	jalr	-124(ra) # 800040f8 <_ZN15MemoryAllocator5kfreeEPv>
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
    8000319c:	ca07b783          	ld	a5,-864(a5) # 8000fe38 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031dc:	c607b783          	ld	a5,-928(a5) # 8000fe38 <_ZN9Scheduler16schedulerPCBHeadE>
    800031e0:	02078263          	beqz	a5,80003204 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800031e4:	0000d797          	auipc	a5,0xd
    800031e8:	c5478793          	addi	a5,a5,-940 # 8000fe38 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80003208:	c3478793          	addi	a5,a5,-972 # 8000fe38 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80003228:	c1453503          	ld	a0,-1004(a0) # 8000fe38 <_ZN9Scheduler16schedulerPCBHeadE>
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
    8000323c:	c0f73023          	sd	a5,-1024(a4) # 8000fe38 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003240:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003244:	00813403          	ld	s0,8(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003250:	0000d797          	auipc	a5,0xd
    80003254:	be878793          	addi	a5,a5,-1048 # 8000fe38 <_ZN9Scheduler16schedulerPCBHeadE>
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
    8000327c:	bc04b483          	ld	s1,-1088(s1) # 8000fe38 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003280:	02048863          	beqz	s1,800032b0 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    80003284:	00000613          	li	a2,0
    80003288:	01000593          	li	a1,16
    8000328c:	0004851b          	sext.w	a0,s1
    80003290:	00003097          	auipc	ra,0x3
    80003294:	178080e7          	jalr	376(ra) # 80006408 <_Z8printIntiii>
        printString("\n");
    80003298:	00006517          	auipc	a0,0x6
    8000329c:	e6050513          	addi	a0,a0,-416 # 800090f8 <CONSOLE_STATUS+0xe8>
    800032a0:	00003097          	auipc	ra,0x3
    800032a4:	fd0080e7          	jalr	-48(ra) # 80006270 <_Z11printStringPKc>
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
    800032d8:	530080e7          	jalr	1328(ra) # 80003804 <_ZN5Riscv10kernelMainEv>
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
    8000332c:	84078793          	addi	a5,a5,-1984 # 8000bb68 <_ZTV6Thread+0x10>
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
    80003364:	83078793          	addi	a5,a5,-2000 # 8000bb90 <_ZTV9Semaphore+0x10>
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
    80003534:	63878793          	addi	a5,a5,1592 # 8000bb68 <_ZTV6Thread+0x10>
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
    8000356c:	60078793          	addi	a5,a5,1536 # 8000bb68 <_ZTV6Thread+0x10>
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
    800035f0:	5a478793          	addi	a5,a5,1444 # 8000bb90 <_ZTV9Semaphore+0x10>
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
    800036f8:	40c78793          	addi	a5,a5,1036 # 8000bb00 <_ZTV14PeriodicThread+0x10>
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
    8000372c:	1ec080e7          	jalr	492(ra) # 80006914 <_Z8userMainv>
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
    80003754:	5a07b783          	ld	a5,1440(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x20>
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

0000000080003804 <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    80003804:	0000c797          	auipc	a5,0xc
    80003808:	6447c783          	lbu	a5,1604(a5) # 8000fe48 <_ZN5Riscv16kernelMainCalledE>
    8000380c:	00078463          	beqz	a5,80003814 <_ZN5Riscv10kernelMainEv+0x10>
    80003810:	00008067          	ret
{
    80003814:	fe010113          	addi	sp,sp,-32
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	00813823          	sd	s0,16(sp)
    80003820:	00913423          	sd	s1,8(sp)
    80003824:	01213023          	sd	s2,0(sp)
    80003828:	02010413          	addi	s0,sp,32
    kernelMainCalled = true;
    8000382c:	00100793          	li	a5,1
    80003830:	0000c717          	auipc	a4,0xc
    80003834:	60f70c23          	sb	a5,1560(a4) # 8000fe48 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	f08080e7          	jalr	-248(ra) # 80003740 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003840:	00001537          	lui	a0,0x1
    80003844:	00001097          	auipc	ra,0x1
    80003848:	850080e7          	jalr	-1968(ra) # 80004094 <_ZN15MemoryAllocator7kmallocEm>
    8000384c:	00050913          	mv	s2,a0
    80003850:	06000513          	li	a0,96
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	e00080e7          	jalr	-512(ra) # 80002654 <_ZN3PCBnwEm>
    8000385c:	00050493          	mv	s1,a0
    80003860:	00200713          	li	a4,2
    80003864:	00090693          	mv	a3,s2
    80003868:	00000613          	li	a2,0
    8000386c:	00000597          	auipc	a1,0x0
    80003870:	eac58593          	addi	a1,a1,-340 # 80003718 <_ZN5Riscv15userMainWrapperEPv>
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	cc4080e7          	jalr	-828(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    8000387c:	00048513          	mv	a0,s1
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	d20080e7          	jalr	-736(ra) # 800025a0 <_ZN3PCB5startEv>
    enableInterrupts();
    80003888:	00000097          	auipc	ra,0x0
    8000388c:	ef4080e7          	jalr	-268(ra) # 8000377c <_ZN5Riscv16enableInterruptsEv>
    while(!userPCB->isFinished())
    80003890:	00048513          	mv	a0,s1
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	f24080e7          	jalr	-220(ra) # 800027b8 <_ZN3PCB10isFinishedEv>
    8000389c:	00051863          	bnez	a0,800038ac <_ZN5Riscv10kernelMainEv+0xa8>
        thread_dispatch();
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	a94080e7          	jalr	-1388(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    800038a8:	fe9ff06f          	j	80003890 <_ZN5Riscv10kernelMainEv+0x8c>
    finishSystem = true;
    800038ac:	00100793          	li	a5,1
    800038b0:	0000c717          	auipc	a4,0xc
    800038b4:	58f70ca3          	sb	a5,1433(a4) # 8000fe49 <_ZN5Riscv12finishSystemE>
    800038b8:	00c0006f          	j	800038c4 <_ZN5Riscv10kernelMainEv+0xc0>
        thread_dispatch();
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	a78080e7          	jalr	-1416(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    800038c4:	00008797          	auipc	a5,0x8
    800038c8:	4647b783          	ld	a5,1124(a5) # 8000bd28 <_GLOBAL_OFFSET_TABLE_+0x58>
    800038cc:	0007b503          	ld	a0,0(a5)
    800038d0:	fffff097          	auipc	ra,0xfffff
    800038d4:	ee8080e7          	jalr	-280(ra) # 800027b8 <_ZN3PCB10isFinishedEv>
    800038d8:	fe0502e3          	beqz	a0,800038bc <_ZN5Riscv10kernelMainEv+0xb8>
    disableInterrupts();
    800038dc:	00000097          	auipc	ra,0x0
    800038e0:	ec0080e7          	jalr	-320(ra) # 8000379c <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	ed8080e7          	jalr	-296(ra) # 800037bc <_ZN5Riscv9endSystemEv>
}
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	00013903          	ld	s2,0(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret
    80003904:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003908:	00048513          	mv	a0,s1
    8000390c:	fffff097          	auipc	ra,0xfffff
    80003910:	d70080e7          	jalr	-656(ra) # 8000267c <_ZN3PCBdlEPv>
    80003914:	00090513          	mv	a0,s2
    80003918:	0000d097          	auipc	ra,0xd
    8000391c:	650080e7          	jalr	1616(ra) # 80010f68 <_Unwind_Resume>

0000000080003920 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003920:	ff010113          	addi	sp,sp,-16
    80003924:	00113423          	sd	ra,8(sp)
    80003928:	00813023          	sd	s0,0(sp)
    8000392c:	01010413          	addi	s0,sp,16
    myTests();
    80003930:	fffff097          	auipc	ra,0xfffff
    80003934:	a28080e7          	jalr	-1496(ra) # 80002358 <_Z7myTestsv>
}
    80003938:	00813083          	ld	ra,8(sp)
    8000393c:	00013403          	ld	s0,0(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret

0000000080003948 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003948:	ff010113          	addi	sp,sp,-16
    8000394c:	00813423          	sd	s0,8(sp)
    80003950:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003954:	00200793          	li	a5,2
    80003958:	1047b073          	csrc	sie,a5
}
    8000395c:	00813403          	ld	s0,8(sp)
    80003960:	01010113          	addi	sp,sp,16
    80003964:	00008067          	ret

0000000080003968 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00813423          	sd	s0,8(sp)
    80003970:	01010413          	addi	s0,sp,16
    while(true)
    80003974:	0000006f          	j	80003974 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003978 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00813423          	sd	s0,8(sp)
    80003980:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003984:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003988:	00008717          	auipc	a4,0x8
    8000398c:	3b873703          	ld	a4,952(a4) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003990:	00073703          	ld	a4,0(a4)
    80003994:	01073703          	ld	a4,16(a4)
    80003998:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    8000399c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800039a0:	00078593          	mv	a1,a5
}
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret

00000000800039b0 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    800039b0:	ff010113          	addi	sp,sp,-16
    800039b4:	00813423          	sd	s0,8(sp)
    800039b8:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    800039bc:	00008797          	auipc	a5,0x8
    800039c0:	3847b783          	ld	a5,900(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x70>
    800039c4:	0007b783          	ld	a5,0(a5)
    800039c8:	0007c783          	lbu	a5,0(a5)
    800039cc:	00078c63          	beqz	a5,800039e4 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800039d0:	10000793          	li	a5,256
    800039d4:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800039d8:	00813403          	ld	s0,8(sp)
    800039dc:	01010113          	addi	sp,sp,16
    800039e0:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800039e4:	10000793          	li	a5,256
    800039e8:	1007b073          	csrc	sstatus,a5
    800039ec:	fedff06f          	j	800039d8 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800039f0 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800039f0:	f9010113          	addi	sp,sp,-112
    800039f4:	06113423          	sd	ra,104(sp)
    800039f8:	06813023          	sd	s0,96(sp)
    800039fc:	04913c23          	sd	s1,88(sp)
    80003a00:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003a04:	00070713          	mv	a4,a4
    80003a08:	00008797          	auipc	a5,0x8
    80003a0c:	3507b783          	ld	a5,848(a5) # 8000bd58 <_GLOBAL_OFFSET_TABLE_+0x88>
    80003a10:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003a14:	00008797          	auipc	a5,0x8
    80003a18:	32c7b783          	ld	a5,812(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003a1c:	0007b783          	ld	a5,0(a5)
    80003a20:	14002773          	csrr	a4,sscratch
    80003a24:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003a28:	142027f3          	csrr	a5,scause
    80003a2c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003a30:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003a34:	00900713          	li	a4,9
    80003a38:	02f76e63          	bltu	a4,a5,80003a74 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003a3c:	00800713          	li	a4,8
    80003a40:	18e7f463          	bgeu	a5,a4,80003bc8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80003a44:	00500713          	li	a4,5
    80003a48:	16e78a63          	beq	a5,a4,80003bbc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003a4c:	00700713          	li	a4,7
    80003a50:	00e79863          	bne	a5,a4,80003a60 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	d88080e7          	jalr	-632(ra) # 800027dc <_ZN3PCB17threadExitHandlerEv>
            break;
    80003a5c:	1200006f          	j	80003b7c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003a60:	00200713          	li	a4,2
    80003a64:	10e79c63          	bne	a5,a4,80003b7c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	d74080e7          	jalr	-652(ra) # 800027dc <_ZN3PCB17threadExitHandlerEv>
            break;
    80003a70:	10c0006f          	j	80003b7c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003a74:	fff00713          	li	a4,-1
    80003a78:	03f71713          	slli	a4,a4,0x3f
    80003a7c:	00170713          	addi	a4,a4,1
    80003a80:	06e78a63          	beq	a5,a4,80003af4 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80003a84:	fff00713          	li	a4,-1
    80003a88:	03f71713          	slli	a4,a4,0x3f
    80003a8c:	00970713          	addi	a4,a4,9
    80003a90:	0ee79663          	bne	a5,a4,80003b7c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    80003a94:	00008797          	auipc	a5,0x8
    80003a98:	24c7b783          	ld	a5,588(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003a9c:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003aa0:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003aa4:	00050583          	lb	a1,0(a0) # 1000 <_entry-0x7ffff000>
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003aa8:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003aac:	0017f793          	andi	a5,a5,1
    80003ab0:	02078863          	beqz	a5,80003ae0 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80003ab4:	00008797          	auipc	a5,0x8
    80003ab8:	24c7b783          	ld	a5,588(a5) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003abc:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003ac0:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003ac4:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003ac8:	00058513          	mv	a0,a1
    80003acc:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003ad0:	00008797          	auipc	a5,0x8
    80003ad4:	2287b783          	ld	a5,552(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003ad8:	0007b783          	ld	a5,0(a5)
    80003adc:	0c079263          	bnez	a5,80003ba0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003ae0:	00004097          	auipc	ra,0x4
    80003ae4:	b04080e7          	jalr	-1276(ra) # 800075e4 <plic_claim>
    80003ae8:	00004097          	auipc	ra,0x4
    80003aec:	b34080e7          	jalr	-1228(ra) # 8000761c <plic_complete>
            break;
    80003af0:	08c0006f          	j	80003b7c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003af4:	141027f3          	csrr	a5,sepc
    80003af8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003afc:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003b00:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b04:	100027f3          	csrr	a5,sstatus
    80003b08:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003b0c:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003b10:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003b14:	00200793          	li	a5,2
    80003b18:	1447b073          	csrc	sip,a5
            totalTime++;
    80003b1c:	0000c717          	auipc	a4,0xc
    80003b20:	32c70713          	addi	a4,a4,812 # 8000fe48 <_ZN5Riscv16kernelMainCalledE>
    80003b24:	00873783          	ld	a5,8(a4)
    80003b28:	00178793          	addi	a5,a5,1
    80003b2c:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003b30:	00008497          	auipc	s1,0x8
    80003b34:	1d84b483          	ld	s1,472(s1) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003b38:	0004b783          	ld	a5,0(s1)
    80003b3c:	00178793          	addi	a5,a5,1
    80003b40:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003b44:	fffff097          	auipc	ra,0xfffff
    80003b48:	570080e7          	jalr	1392(ra) # 800030b4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003b4c:	00008797          	auipc	a5,0x8
    80003b50:	1f47b783          	ld	a5,500(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003b54:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003b58:	0187b783          	ld	a5,24(a5)
    80003b5c:	0004b703          	ld	a4,0(s1)
    80003b60:	02f77863          	bgeu	a4,a5,80003b90 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80003b64:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b68:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003b6c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003b70:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	e3c080e7          	jalr	-452(ra) # 800039b0 <_ZN5Riscv14changePrivModeEv>
}
    80003b7c:	06813083          	ld	ra,104(sp)
    80003b80:	06013403          	ld	s0,96(sp)
    80003b84:	05813483          	ld	s1,88(sp)
    80003b88:	07010113          	addi	sp,sp,112
    80003b8c:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003b90:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003b94:	fffff097          	auipc	ra,0xfffff
    80003b98:	a34080e7          	jalr	-1484(ra) # 800025c8 <_ZN3PCB8dispatchEv>
    80003b9c:	fc9ff06f          	j	80003b64 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80003ba0:	fff78793          	addi	a5,a5,-1
    80003ba4:	00008717          	auipc	a4,0x8
    80003ba8:	15473703          	ld	a4,340(a4) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003bac:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	f34080e7          	jalr	-204(ra) # 80002ae4 <_ZN8KConsole17putCharacterInputEc>
    80003bb8:	f29ff06f          	j	80003ae0 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80003bbc:	fffff097          	auipc	ra,0xfffff
    80003bc0:	c20080e7          	jalr	-992(ra) # 800027dc <_ZN3PCB17threadExitHandlerEv>
            break;
    80003bc4:	fb9ff06f          	j	80003b7c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003bc8:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003bcc:	14102773          	csrr	a4,sepc
    80003bd0:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003bd4:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003bd8:	00470713          	addi	a4,a4,4
    80003bdc:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003be0:	10002773          	csrr	a4,sstatus
    80003be4:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003be8:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003bec:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003bf0:	04300713          	li	a4,67
    80003bf4:	02f76463          	bltu	a4,a5,80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80003bf8:	00279793          	slli	a5,a5,0x2
    80003bfc:	00005717          	auipc	a4,0x5
    80003c00:	5e870713          	addi	a4,a4,1512 # 800091e4 <CONSOLE_STATUS+0x1d4>
    80003c04:	00e787b3          	add	a5,a5,a4
    80003c08:	0007a783          	lw	a5,0(a5)
    80003c0c:	00e787b3          	add	a5,a5,a4
    80003c10:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	4a8080e7          	jalr	1192(ra) # 800040bc <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003c1c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003c20:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003c24:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003c28:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003c2c:	00000097          	auipc	ra,0x0
    80003c30:	d84080e7          	jalr	-636(ra) # 800039b0 <_ZN5Riscv14changePrivModeEv>
}
    80003c34:	f49ff06f          	j	80003b7c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	4e8080e7          	jalr	1256(ra) # 80004120 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003c40:	fddff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80003c44:	fffff097          	auipc	ra,0xfffff
    80003c48:	d5c080e7          	jalr	-676(ra) # 800029a0 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003c4c:	fd1ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	c6c080e7          	jalr	-916(ra) # 800028bc <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003c58:	fc5ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	d00080e7          	jalr	-768(ra) # 8000295c <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003c64:	fb9ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	bc0080e7          	jalr	-1088(ra) # 80002828 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003c70:	fadff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	b68080e7          	jalr	-1176(ra) # 800027dc <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003c7c:	fa1ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    80003c80:	fffff097          	auipc	ra,0xfffff
    80003c84:	bd8080e7          	jalr	-1064(ra) # 80002858 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003c88:	f95ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	75c080e7          	jalr	1884(ra) # 800043e8 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003c94:	f89ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80003c98:	00000097          	auipc	ra,0x0
    80003c9c:	7f0080e7          	jalr	2032(ra) # 80004488 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003ca0:	f7dff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80003ca4:	00001097          	auipc	ra,0x1
    80003ca8:	838080e7          	jalr	-1992(ra) # 800044dc <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003cac:	f71ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80003cb0:	00001097          	auipc	ra,0x1
    80003cb4:	870080e7          	jalr	-1936(ra) # 80004520 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003cb8:	f65ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80003cbc:	fffff097          	auipc	ra,0xfffff
    80003cc0:	0c8080e7          	jalr	200(ra) # 80002d84 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003cc4:	f59ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80003cc8:	fffff097          	auipc	ra,0xfffff
    80003ccc:	08c080e7          	jalr	140(ra) # 80002d54 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003cd0:	f4dff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80003cd4:	fffff097          	auipc	ra,0xfffff
    80003cd8:	220080e7          	jalr	544(ra) # 80002ef4 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003cdc:	f41ff06f          	j	80003c1c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

0000000080003ce0 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00813423          	sd	s0,8(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003cec:	0000c717          	auipc	a4,0xc
    80003cf0:	16c72703          	lw	a4,364(a4) # 8000fe58 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003cf4:	00100793          	li	a5,1
    80003cf8:	04f70263          	beq	a4,a5,80003d3c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003cfc:	0000c797          	auipc	a5,0xc
    80003d00:	15c78793          	addi	a5,a5,348 # 8000fe58 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003d04:	00100713          	li	a4,1
    80003d08:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003d0c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003d10:	00008717          	auipc	a4,0x8
    80003d14:	fd873703          	ld	a4,-40(a4) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003d18:	00073703          	ld	a4,0(a4)
    80003d1c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003d20:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003d24:	00008797          	auipc	a5,0x8
    80003d28:	0247b783          	ld	a5,36(a5) # 8000bd48 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d2c:	0007b783          	ld	a5,0(a5)
    80003d30:	40e787b3          	sub	a5,a5,a4
    80003d34:	ff178793          	addi	a5,a5,-15
    80003d38:	00f73023          	sd	a5,0(a4)
}
    80003d3c:	00813403          	ld	s0,8(sp)
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret

0000000080003d48 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003d48:	fe010113          	addi	sp,sp,-32
    80003d4c:	00113c23          	sd	ra,24(sp)
    80003d50:	00813823          	sd	s0,16(sp)
    80003d54:	00913423          	sd	s1,8(sp)
    80003d58:	01213023          	sd	s2,0(sp)
    80003d5c:	02010413          	addi	s0,sp,32
    80003d60:	00050493          	mv	s1,a0
    80003d64:	00058913          	mv	s2,a1
    initMemory();
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	f78080e7          	jalr	-136(ra) # 80003ce0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003d70:	0000c797          	auipc	a5,0xc
    80003d74:	0f07b783          	ld	a5,240(a5) # 8000fe60 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003d78:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003d7c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003d80:	00000713          	li	a4,0
    while(curr != 0)
    80003d84:	00078c63          	beqz	a5,80003d9c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003d88:	00f4e863          	bltu	s1,a5,80003d98 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003d8c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003d90:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003d94:	ff1ff06f          	j	80003d84 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003d98:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003d9c:	02070063          	beqz	a4,80003dbc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003da0:	00973423          	sd	s1,8(a4)
}
    80003da4:	01813083          	ld	ra,24(sp)
    80003da8:	01013403          	ld	s0,16(sp)
    80003dac:	00813483          	ld	s1,8(sp)
    80003db0:	00013903          	ld	s2,0(sp)
    80003db4:	02010113          	addi	sp,sp,32
    80003db8:	00008067          	ret
        headAllocated = newAllocated;
    80003dbc:	0000c797          	auipc	a5,0xc
    80003dc0:	0a97b223          	sd	s1,164(a5) # 8000fe60 <_ZN15MemoryAllocator13headAllocatedE>
    80003dc4:	fe1ff06f          	j	80003da4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003dc8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003dc8:	fe010113          	addi	sp,sp,-32
    80003dcc:	00113c23          	sd	ra,24(sp)
    80003dd0:	00813823          	sd	s0,16(sp)
    80003dd4:	00913423          	sd	s1,8(sp)
    80003dd8:	01213023          	sd	s2,0(sp)
    80003ddc:	02010413          	addi	s0,sp,32
    80003de0:	00050913          	mv	s2,a0
    initMemory();
    80003de4:	00000097          	auipc	ra,0x0
    80003de8:	efc080e7          	jalr	-260(ra) # 80003ce0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003dec:	0000c497          	auipc	s1,0xc
    80003df0:	07c4b483          	ld	s1,124(s1) # 8000fe68 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003df4:	00000713          	li	a4,0
    while(curr != 0)
    80003df8:	0a048863          	beqz	s1,80003ea8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003dfc:	0004b783          	ld	a5,0(s1)
    80003e00:	0127f863          	bgeu	a5,s2,80003e10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003e04:	00048713          	mv	a4,s1
        curr = curr->next;
    80003e08:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003e0c:	fedff06f          	j	80003df8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003e10:	01090693          	addi	a3,s2,16
    80003e14:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003e18:	00008617          	auipc	a2,0x8
    80003e1c:	f3063603          	ld	a2,-208(a2) # 8000bd48 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003e20:	00063603          	ld	a2,0(a2)
    80003e24:	04d66c63          	bltu	a2,a3,80003e7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003e28:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003e2c:	01000613          	li	a2,16
    80003e30:	02f67663          	bgeu	a2,a5,80003e5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003e34:	0084b603          	ld	a2,8(s1)
    80003e38:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003e3c:	ff078793          	addi	a5,a5,-16
    80003e40:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003e44:	00070663          	beqz	a4,80003e50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003e48:	00d73423          	sd	a3,8(a4)
    80003e4c:	0380006f          	j	80003e84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003e50:	0000c797          	auipc	a5,0xc
    80003e54:	00d7bc23          	sd	a3,24(a5) # 8000fe68 <_ZN15MemoryAllocator8headFreeE>
    80003e58:	02c0006f          	j	80003e84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003e5c:	00070863          	beqz	a4,80003e6c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003e60:	0084b783          	ld	a5,8(s1)
    80003e64:	00f73423          	sd	a5,8(a4)
    80003e68:	01c0006f          	j	80003e84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003e6c:	0084b783          	ld	a5,8(s1)
    80003e70:	0000c717          	auipc	a4,0xc
    80003e74:	fef73c23          	sd	a5,-8(a4) # 8000fe68 <_ZN15MemoryAllocator8headFreeE>
    80003e78:	00c0006f          	j	80003e84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003e7c:	02070063          	beqz	a4,80003e9c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003e80:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003e84:	00090593          	mv	a1,s2
    80003e88:	00048513          	mv	a0,s1
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	ebc080e7          	jalr	-324(ra) # 80003d48 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003e94:	01048513          	addi	a0,s1,16
            break;
    80003e98:	0140006f          	j	80003eac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003e9c:	0000c797          	auipc	a5,0xc
    80003ea0:	fc07b623          	sd	zero,-52(a5) # 8000fe68 <_ZN15MemoryAllocator8headFreeE>
    80003ea4:	fe1ff06f          	j	80003e84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003ea8:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003eac:	01813083          	ld	ra,24(sp)
    80003eb0:	01013403          	ld	s0,16(sp)
    80003eb4:	00813483          	ld	s1,8(sp)
    80003eb8:	00013903          	ld	s2,0(sp)
    80003ebc:	02010113          	addi	sp,sp,32
    80003ec0:	00008067          	ret

0000000080003ec4 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003ec4:	ff010113          	addi	sp,sp,-16
    80003ec8:	00113423          	sd	ra,8(sp)
    80003ecc:	00813023          	sd	s0,0(sp)
    80003ed0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	ef4080e7          	jalr	-268(ra) # 80003dc8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003edc:	00813083          	ld	ra,8(sp)
    80003ee0:	00013403          	ld	s0,0(sp)
    80003ee4:	01010113          	addi	sp,sp,16
    80003ee8:	00008067          	ret

0000000080003eec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003eec:	fe010113          	addi	sp,sp,-32
    80003ef0:	00113c23          	sd	ra,24(sp)
    80003ef4:	00813823          	sd	s0,16(sp)
    80003ef8:	00913423          	sd	s1,8(sp)
    80003efc:	01213023          	sd	s2,0(sp)
    80003f00:	02010413          	addi	s0,sp,32
    80003f04:	00050493          	mv	s1,a0
    80003f08:	00058913          	mv	s2,a1
    initMemory();
    80003f0c:	00000097          	auipc	ra,0x0
    80003f10:	dd4080e7          	jalr	-556(ra) # 80003ce0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003f14:	0000c797          	auipc	a5,0xc
    80003f18:	f547b783          	ld	a5,-172(a5) # 8000fe68 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003f1c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003f20:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003f24:	00000713          	li	a4,0
    while(curr != 0)
    80003f28:	00078c63          	beqz	a5,80003f40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003f2c:	00f4e863          	bltu	s1,a5,80003f3c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003f30:	00078713          	mv	a4,a5
        curr = curr->next;
    80003f34:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003f38:	ff1ff06f          	j	80003f28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003f3c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003f40:	04070663          	beqz	a4,80003f8c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003f44:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003f48:	0084b783          	ld	a5,8(s1)
    80003f4c:	00078a63          	beqz	a5,80003f60 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003f50:	0004b603          	ld	a2,0(s1)
    80003f54:	01060693          	addi	a3,a2,16
    80003f58:	00d486b3          	add	a3,s1,a3
    80003f5c:	02d78e63          	beq	a5,a3,80003f98 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003f60:	00070a63          	beqz	a4,80003f74 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003f64:	00073683          	ld	a3,0(a4)
    80003f68:	01068793          	addi	a5,a3,16
    80003f6c:	00f707b3          	add	a5,a4,a5
    80003f70:	04978263          	beq	a5,s1,80003fb4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003f74:	01813083          	ld	ra,24(sp)
    80003f78:	01013403          	ld	s0,16(sp)
    80003f7c:	00813483          	ld	s1,8(sp)
    80003f80:	00013903          	ld	s2,0(sp)
    80003f84:	02010113          	addi	sp,sp,32
    80003f88:	00008067          	ret
        headFree = newSegment;
    80003f8c:	0000c797          	auipc	a5,0xc
    80003f90:	ec97be23          	sd	s1,-292(a5) # 8000fe68 <_ZN15MemoryAllocator8headFreeE>
    80003f94:	fb5ff06f          	j	80003f48 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003f98:	0007b683          	ld	a3,0(a5)
    80003f9c:	00d60633          	add	a2,a2,a3
    80003fa0:	01060613          	addi	a2,a2,16
    80003fa4:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003fa8:	0087b783          	ld	a5,8(a5)
    80003fac:	00f4b423          	sd	a5,8(s1)
    80003fb0:	fb1ff06f          	j	80003f60 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003fb4:	0004b783          	ld	a5,0(s1)
    80003fb8:	00f686b3          	add	a3,a3,a5
    80003fbc:	01068693          	addi	a3,a3,16
    80003fc0:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003fc4:	0084b783          	ld	a5,8(s1)
    80003fc8:	00f73423          	sd	a5,8(a4)
}
    80003fcc:	fa9ff06f          	j	80003f74 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003fd0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003fd0:	fe010113          	addi	sp,sp,-32
    80003fd4:	00113c23          	sd	ra,24(sp)
    80003fd8:	00813823          	sd	s0,16(sp)
    80003fdc:	00913423          	sd	s1,8(sp)
    80003fe0:	01213023          	sd	s2,0(sp)
    80003fe4:	02010413          	addi	s0,sp,32
    80003fe8:	00050913          	mv	s2,a0
    initMemory();
    80003fec:	00000097          	auipc	ra,0x0
    80003ff0:	cf4080e7          	jalr	-780(ra) # 80003ce0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003ff4:	0000c497          	auipc	s1,0xc
    80003ff8:	e6c4b483          	ld	s1,-404(s1) # 8000fe60 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003ffc:	00000713          	li	a4,0
    while(curr != 0)
    80004000:	02048a63          	beqz	s1,80004034 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004004:	01048793          	addi	a5,s1,16
    80004008:	01278863          	beq	a5,s2,80004018 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    8000400c:	00048713          	mv	a4,s1
        curr = curr->next;
    80004010:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004014:	fedff06f          	j	80004000 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004018:	02070e63          	beqz	a4,80004054 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    8000401c:	0084b783          	ld	a5,8(s1)
    80004020:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004024:	0004b583          	ld	a1,0(s1)
    80004028:	00048513          	mv	a0,s1
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	ec0080e7          	jalr	-320(ra) # 80003eec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004034:	02048863          	beqz	s1,80004064 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004038:	00000513          	li	a0,0
    else
        return 1;
}
    8000403c:	01813083          	ld	ra,24(sp)
    80004040:	01013403          	ld	s0,16(sp)
    80004044:	00813483          	ld	s1,8(sp)
    80004048:	00013903          	ld	s2,0(sp)
    8000404c:	02010113          	addi	sp,sp,32
    80004050:	00008067          	ret
                headAllocated = curr->next;
    80004054:	0084b783          	ld	a5,8(s1)
    80004058:	0000c717          	auipc	a4,0xc
    8000405c:	e0f73423          	sd	a5,-504(a4) # 8000fe60 <_ZN15MemoryAllocator13headAllocatedE>
    80004060:	fc5ff06f          	j	80004024 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004064:	00100513          	li	a0,1
    80004068:	fd5ff06f          	j	8000403c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

000000008000406c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    8000406c:	ff010113          	addi	sp,sp,-16
    80004070:	00113423          	sd	ra,8(sp)
    80004074:	00813023          	sd	s0,0(sp)
    80004078:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	f54080e7          	jalr	-172(ra) # 80003fd0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004084:	00813083          	ld	ra,8(sp)
    80004088:	00013403          	ld	s0,0(sp)
    8000408c:	01010113          	addi	sp,sp,16
    80004090:	00008067          	ret

0000000080004094 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004094:	ff010113          	addi	sp,sp,-16
    80004098:	00113423          	sd	ra,8(sp)
    8000409c:	00813023          	sd	s0,0(sp)
    800040a0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	e20080e7          	jalr	-480(ra) # 80003ec4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800040ac:	00813083          	ld	ra,8(sp)
    800040b0:	00013403          	ld	s0,0(sp)
    800040b4:	01010113          	addi	sp,sp,16
    800040b8:	00008067          	ret

00000000800040bc <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    800040bc:	ff010113          	addi	sp,sp,-16
    800040c0:	00113423          	sd	ra,8(sp)
    800040c4:	00813023          	sd	s0,0(sp)
    800040c8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800040cc:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800040d0:	00651513          	slli	a0,a0,0x6
    800040d4:	00000097          	auipc	ra,0x0
    800040d8:	fc0080e7          	jalr	-64(ra) # 80004094 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800040dc:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800040e0:	00000097          	auipc	ra,0x0
    800040e4:	898080e7          	jalr	-1896(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
}
    800040e8:	00813083          	ld	ra,8(sp)
    800040ec:	00013403          	ld	s0,0(sp)
    800040f0:	01010113          	addi	sp,sp,16
    800040f4:	00008067          	ret

00000000800040f8 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800040f8:	ff010113          	addi	sp,sp,-16
    800040fc:	00113423          	sd	ra,8(sp)
    80004100:	00813023          	sd	s0,0(sp)
    80004104:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004108:	00000097          	auipc	ra,0x0
    8000410c:	f64080e7          	jalr	-156(ra) # 8000406c <_ZN15MemoryAllocator8mem_freeEPv>
    80004110:	00813083          	ld	ra,8(sp)
    80004114:	00013403          	ld	s0,0(sp)
    80004118:	01010113          	addi	sp,sp,16
    8000411c:	00008067          	ret

0000000080004120 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004120:	ff010113          	addi	sp,sp,-16
    80004124:	00113423          	sd	ra,8(sp)
    80004128:	00813023          	sd	s0,0(sp)
    8000412c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004130:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004134:	00000097          	auipc	ra,0x0
    80004138:	fc4080e7          	jalr	-60(ra) # 800040f8 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000413c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004140:	00000097          	auipc	ra,0x0
    80004144:	838080e7          	jalr	-1992(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004148:	00813083          	ld	ra,8(sp)
    8000414c:	00013403          	ld	s0,0(sp)
    80004150:	01010113          	addi	sp,sp,16
    80004154:	00008067          	ret

0000000080004158 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004158:	ff010113          	addi	sp,sp,-16
    8000415c:	00813423          	sd	s0,8(sp)
    80004160:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004164:	00b52a23          	sw	a1,20(a0)
    80004168:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000416c:	00053423          	sd	zero,8(a0)
    80004170:	00053023          	sd	zero,0(a0)
}
    80004174:	00813403          	ld	s0,8(sp)
    80004178:	01010113          	addi	sp,sp,16
    8000417c:	00008067          	ret

0000000080004180 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00813423          	sd	s0,8(sp)
    80004188:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000418c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004190:	00053783          	ld	a5,0(a0)
    80004194:	00078e63          	beqz	a5,800041b0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004198:	00853783          	ld	a5,8(a0)
    8000419c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800041a0:	00b53423          	sd	a1,8(a0)
    }
}
    800041a4:	00813403          	ld	s0,8(sp)
    800041a8:	01010113          	addi	sp,sp,16
    800041ac:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800041b0:	00b53423          	sd	a1,8(a0)
    800041b4:	00b53023          	sd	a1,0(a0)
    800041b8:	fedff06f          	j	800041a4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800041bc <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800041bc:	ff010113          	addi	sp,sp,-16
    800041c0:	00113423          	sd	ra,8(sp)
    800041c4:	00813023          	sd	s0,0(sp)
    800041c8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800041cc:	00008797          	auipc	a5,0x8
    800041d0:	b747b783          	ld	a5,-1164(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x70>
    800041d4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800041d8:	00200793          	li	a5,2
    800041dc:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800041e0:	00000097          	auipc	ra,0x0
    800041e4:	fa0080e7          	jalr	-96(ra) # 80004180 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800041e8:	ffffe097          	auipc	ra,0xffffe
    800041ec:	3e0080e7          	jalr	992(ra) # 800025c8 <_ZN3PCB8dispatchEv>
}
    800041f0:	00813083          	ld	ra,8(sp)
    800041f4:	00013403          	ld	s0,0(sp)
    800041f8:	01010113          	addi	sp,sp,16
    800041fc:	00008067          	ret

0000000080004200 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004200:	00008797          	auipc	a5,0x8
    80004204:	b407b783          	ld	a5,-1216(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004208:	0007b783          	ld	a5,0(a5)
    8000420c:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004210:	01052783          	lw	a5,16(a0)
    80004214:	fff7879b          	addiw	a5,a5,-1
    80004218:	00f52823          	sw	a5,16(a0)
    8000421c:	02079713          	slli	a4,a5,0x20
    80004220:	00074663          	bltz	a4,8000422c <_ZN10KSemaphore4waitEv+0x2c>
}
    80004224:	00000513          	li	a0,0
    80004228:	00008067          	ret
{
    8000422c:	ff010113          	addi	sp,sp,-16
    80004230:	00113423          	sd	ra,8(sp)
    80004234:	00813023          	sd	s0,0(sp)
    80004238:	01010413          	addi	s0,sp,16
        block();
    8000423c:	00000097          	auipc	ra,0x0
    80004240:	f80080e7          	jalr	-128(ra) # 800041bc <_ZN10KSemaphore5blockEv>
}
    80004244:	00000513          	li	a0,0
    80004248:	00813083          	ld	ra,8(sp)
    8000424c:	00013403          	ld	s0,0(sp)
    80004250:	01010113          	addi	sp,sp,16
    80004254:	00008067          	ret

0000000080004258 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004258:	ff010113          	addi	sp,sp,-16
    8000425c:	00813423          	sd	s0,8(sp)
    80004260:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004264:	00053503          	ld	a0,0(a0)
    80004268:	00813403          	ld	s0,8(sp)
    8000426c:	01010113          	addi	sp,sp,16
    80004270:	00008067          	ret

0000000080004274 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004274:	ff010113          	addi	sp,sp,-16
    80004278:	00813423          	sd	s0,8(sp)
    8000427c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004280:	00053783          	ld	a5,0(a0)
    80004284:	00078c63          	beqz	a5,8000429c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004288:	0087b703          	ld	a4,8(a5)
    8000428c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004290:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004294:	00053783          	ld	a5,0(a0)
    80004298:	00078863          	beqz	a5,800042a8 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000429c:	00813403          	ld	s0,8(sp)
    800042a0:	01010113          	addi	sp,sp,16
    800042a4:	00008067          	ret
        tailBlocked =0;
    800042a8:	00053423          	sd	zero,8(a0)
    800042ac:	ff1ff06f          	j	8000429c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800042b0 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800042b0:	fe010113          	addi	sp,sp,-32
    800042b4:	00113c23          	sd	ra,24(sp)
    800042b8:	00813823          	sd	s0,16(sp)
    800042bc:	00913423          	sd	s1,8(sp)
    800042c0:	01213023          	sd	s2,0(sp)
    800042c4:	02010413          	addi	s0,sp,32
    800042c8:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800042cc:	00090513          	mv	a0,s2
    800042d0:	00000097          	auipc	ra,0x0
    800042d4:	f88080e7          	jalr	-120(ra) # 80004258 <_ZN10KSemaphore15getFirstBlockedEv>
    800042d8:	00050493          	mv	s1,a0
    800042dc:	02050463          	beqz	a0,80004304 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800042e0:	00090513          	mv	a0,s2
    800042e4:	00000097          	auipc	ra,0x0
    800042e8:	f90080e7          	jalr	-112(ra) # 80004274 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800042ec:	00100793          	li	a5,1
    800042f0:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800042f4:	00048513          	mv	a0,s1
    800042f8:	fffff097          	auipc	ra,0xfffff
    800042fc:	ecc080e7          	jalr	-308(ra) # 800031c4 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004300:	fcdff06f          	j	800042cc <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004304:	01813083          	ld	ra,24(sp)
    80004308:	01013403          	ld	s0,16(sp)
    8000430c:	00813483          	ld	s1,8(sp)
    80004310:	00013903          	ld	s2,0(sp)
    80004314:	02010113          	addi	sp,sp,32
    80004318:	00008067          	ret

000000008000431c <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    8000431c:	fe010113          	addi	sp,sp,-32
    80004320:	00113c23          	sd	ra,24(sp)
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	00913423          	sd	s1,8(sp)
    8000432c:	01213023          	sd	s2,0(sp)
    80004330:	02010413          	addi	s0,sp,32
    80004334:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	f20080e7          	jalr	-224(ra) # 80004258 <_ZN10KSemaphore15getFirstBlockedEv>
    80004340:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004344:	00090513          	mv	a0,s2
    80004348:	00000097          	auipc	ra,0x0
    8000434c:	f2c080e7          	jalr	-212(ra) # 80004274 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004350:	00048863          	beqz	s1,80004360 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004354:	00048513          	mv	a0,s1
    80004358:	fffff097          	auipc	ra,0xfffff
    8000435c:	e6c080e7          	jalr	-404(ra) # 800031c4 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004360:	01813083          	ld	ra,24(sp)
    80004364:	01013403          	ld	s0,16(sp)
    80004368:	00813483          	ld	s1,8(sp)
    8000436c:	00013903          	ld	s2,0(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret

0000000080004378 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004378:	01052783          	lw	a5,16(a0)
    8000437c:	0017879b          	addiw	a5,a5,1
    80004380:	0007871b          	sext.w	a4,a5
    80004384:	00f52823          	sw	a5,16(a0)
    80004388:	00e05663          	blez	a4,80004394 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000438c:	00000513          	li	a0,0
    80004390:	00008067          	ret
uint64 KSemaphore::signal() {
    80004394:	ff010113          	addi	sp,sp,-16
    80004398:	00113423          	sd	ra,8(sp)
    8000439c:	00813023          	sd	s0,0(sp)
    800043a0:	01010413          	addi	s0,sp,16
        unblock();
    800043a4:	00000097          	auipc	ra,0x0
    800043a8:	f78080e7          	jalr	-136(ra) # 8000431c <_ZN10KSemaphore7unblockEv>
}
    800043ac:	00000513          	li	a0,0
    800043b0:	00813083          	ld	ra,8(sp)
    800043b4:	00013403          	ld	s0,0(sp)
    800043b8:	01010113          	addi	sp,sp,16
    800043bc:	00008067          	ret

00000000800043c0 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800043c0:	ff010113          	addi	sp,sp,-16
    800043c4:	00113423          	sd	ra,8(sp)
    800043c8:	00813023          	sd	s0,0(sp)
    800043cc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	cc4080e7          	jalr	-828(ra) # 80004094 <_ZN15MemoryAllocator7kmallocEm>
}
    800043d8:	00813083          	ld	ra,8(sp)
    800043dc:	00013403          	ld	s0,0(sp)
    800043e0:	01010113          	addi	sp,sp,16
    800043e4:	00008067          	ret

00000000800043e8 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800043e8:	fd010113          	addi	sp,sp,-48
    800043ec:	02113423          	sd	ra,40(sp)
    800043f0:	02813023          	sd	s0,32(sp)
    800043f4:	00913c23          	sd	s1,24(sp)
    800043f8:	01213823          	sd	s2,16(sp)
    800043fc:	01313423          	sd	s3,8(sp)
    80004400:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004404:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004408:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    8000440c:	01800513          	li	a0,24
    80004410:	00000097          	auipc	ra,0x0
    80004414:	fb0080e7          	jalr	-80(ra) # 800043c0 <_ZN10KSemaphorenwEm>
    80004418:	00050493          	mv	s1,a0
    8000441c:	0009859b          	sext.w	a1,s3
    80004420:	00000097          	auipc	ra,0x0
    80004424:	d38080e7          	jalr	-712(ra) # 80004158 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80004428:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    8000442c:	02048663          	beqz	s1,80004458 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80004430:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004434:	fffff097          	auipc	ra,0xfffff
    80004438:	544080e7          	jalr	1348(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000443c:	02813083          	ld	ra,40(sp)
    80004440:	02013403          	ld	s0,32(sp)
    80004444:	01813483          	ld	s1,24(sp)
    80004448:	01013903          	ld	s2,16(sp)
    8000444c:	00813983          	ld	s3,8(sp)
    80004450:	03010113          	addi	sp,sp,48
    80004454:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004458:	fff00513          	li	a0,-1
    8000445c:	fd9ff06f          	j	80004434 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004460 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004460:	ff010113          	addi	sp,sp,-16
    80004464:	00113423          	sd	ra,8(sp)
    80004468:	00813023          	sd	s0,0(sp)
    8000446c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004470:	00000097          	auipc	ra,0x0
    80004474:	c88080e7          	jalr	-888(ra) # 800040f8 <_ZN15MemoryAllocator5kfreeEPv>
}
    80004478:	00813083          	ld	ra,8(sp)
    8000447c:	00013403          	ld	s0,0(sp)
    80004480:	01010113          	addi	sp,sp,16
    80004484:	00008067          	ret

0000000080004488 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004488:	ff010113          	addi	sp,sp,-16
    8000448c:	00113423          	sd	ra,8(sp)
    80004490:	00813023          	sd	s0,0(sp)
    80004494:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004498:	00058513          	mv	a0,a1
    //uint64 volatile retval = kSem->wait();
    kSem->wait();
    8000449c:	00000097          	auipc	ra,0x0
    800044a0:	d64080e7          	jalr	-668(ra) # 80004200 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800044a4:	00008797          	auipc	a5,0x8
    800044a8:	89c7b783          	ld	a5,-1892(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x70>
    800044ac:	0007b783          	ld	a5,0(a5)
    800044b0:	0587c783          	lbu	a5,88(a5)
    800044b4:	02078063          	beqz	a5,800044d4 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800044b8:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800044bc:	fffff097          	auipc	ra,0xfffff
    800044c0:	4bc080e7          	jalr	1212(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
}
    800044c4:	00813083          	ld	ra,8(sp)
    800044c8:	00013403          	ld	s0,0(sp)
    800044cc:	01010113          	addi	sp,sp,16
    800044d0:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800044d4:	00000513          	li	a0,0
    800044d8:	fe5ff06f          	j	800044bc <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800044dc <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00113423          	sd	ra,8(sp)
    800044e4:	00813023          	sd	s0,0(sp)
    800044e8:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800044ec:	00058513          	mv	a0,a1
    if (kSem == 0)
    800044f0:	02050463          	beqz	a0,80004518 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        //uint64 volatile retval = kSem->signal();
        kSem->signal();
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	e84080e7          	jalr	-380(ra) # 80004378 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800044fc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80004500:	fffff097          	auipc	ra,0xfffff
    80004504:	478080e7          	jalr	1144(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004508:	00813083          	ld	ra,8(sp)
    8000450c:	00013403          	ld	s0,0(sp)
    80004510:	01010113          	addi	sp,sp,16
    80004514:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80004518:	00100513          	li	a0,1
    8000451c:	fe5ff06f          	j	80004500 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080004520 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004520:	fe010113          	addi	sp,sp,-32
    80004524:	00113c23          	sd	ra,24(sp)
    80004528:	00813823          	sd	s0,16(sp)
    8000452c:	00913423          	sd	s1,8(sp)
    80004530:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004534:	00058493          	mv	s1,a1
    delete kSem;
    80004538:	00048e63          	beqz	s1,80004554 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    8000453c:	00048513          	mv	a0,s1
    80004540:	00000097          	auipc	ra,0x0
    80004544:	d70080e7          	jalr	-656(ra) # 800042b0 <_ZN10KSemaphoreD1Ev>
    80004548:	00048513          	mv	a0,s1
    8000454c:	00000097          	auipc	ra,0x0
    80004550:	f14080e7          	jalr	-236(ra) # 80004460 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004554:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	420080e7          	jalr	1056(ra) # 80003978 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004560:	01813083          	ld	ra,24(sp)
    80004564:	01013403          	ld	s0,16(sp)
    80004568:	00813483          	ld	s1,8(sp)
    8000456c:	02010113          	addi	sp,sp,32
    80004570:	00008067          	ret

0000000080004574 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80004574:	fe010113          	addi	sp,sp,-32
    80004578:	00113c23          	sd	ra,24(sp)
    8000457c:	00813823          	sd	s0,16(sp)
    80004580:	00913423          	sd	s1,8(sp)
    80004584:	01213023          	sd	s2,0(sp)
    80004588:	02010413          	addi	s0,sp,32
    8000458c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004590:	00000913          	li	s2,0
    80004594:	00c0006f          	j	800045a0 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	d9c080e7          	jalr	-612(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    800045a0:	ffffd097          	auipc	ra,0xffffd
    800045a4:	f70080e7          	jalr	-144(ra) # 80001510 <getc>
    800045a8:	0005059b          	sext.w	a1,a0
    800045ac:	07100793          	li	a5,113
    800045b0:	02f58a63          	beq	a1,a5,800045e4 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800045b4:	0084b503          	ld	a0,8(s1)
    800045b8:	00002097          	auipc	ra,0x2
    800045bc:	54c080e7          	jalr	1356(ra) # 80006b04 <_ZN6Buffer3putEi>
        i++;
    800045c0:	0019071b          	addiw	a4,s2,1
    800045c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800045c8:	0004a683          	lw	a3,0(s1)
    800045cc:	0026979b          	slliw	a5,a3,0x2
    800045d0:	00d787bb          	addw	a5,a5,a3
    800045d4:	0017979b          	slliw	a5,a5,0x1
    800045d8:	02f767bb          	remw	a5,a4,a5
    800045dc:	fc0792e3          	bnez	a5,800045a0 <_Z16producerKeyboardPv+0x2c>
    800045e0:	fb9ff06f          	j	80004598 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800045e4:	00100793          	li	a5,1
    800045e8:	0000c717          	auipc	a4,0xc
    800045ec:	88f72423          	sw	a5,-1912(a4) # 8000fe70 <threadEnd>

    delete data->buffer;
    800045f0:	0084b903          	ld	s2,8(s1)
    800045f4:	00090e63          	beqz	s2,80004610 <_Z16producerKeyboardPv+0x9c>
    800045f8:	00090513          	mv	a0,s2
    800045fc:	00002097          	auipc	ra,0x2
    80004600:	6ac080e7          	jalr	1708(ra) # 80006ca8 <_ZN6BufferD1Ev>
    80004604:	00090513          	mv	a0,s2
    80004608:	fffff097          	auipc	ra,0xfffff
    8000460c:	da8080e7          	jalr	-600(ra) # 800033b0 <_ZdlPv>

    sem_signal(data->wait);
    80004610:	0104b503          	ld	a0,16(s1)
    80004614:	ffffd097          	auipc	ra,0xffffd
    80004618:	df8080e7          	jalr	-520(ra) # 8000140c <sem_signal>
}
    8000461c:	01813083          	ld	ra,24(sp)
    80004620:	01013403          	ld	s0,16(sp)
    80004624:	00813483          	ld	s1,8(sp)
    80004628:	00013903          	ld	s2,0(sp)
    8000462c:	02010113          	addi	sp,sp,32
    80004630:	00008067          	ret

0000000080004634 <_Z8producerPv>:

void producer(void *arg) {
    80004634:	fe010113          	addi	sp,sp,-32
    80004638:	00113c23          	sd	ra,24(sp)
    8000463c:	00813823          	sd	s0,16(sp)
    80004640:	00913423          	sd	s1,8(sp)
    80004644:	01213023          	sd	s2,0(sp)
    80004648:	02010413          	addi	s0,sp,32
    8000464c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004650:	00000913          	li	s2,0
    80004654:	00c0006f          	j	80004660 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004658:	ffffd097          	auipc	ra,0xffffd
    8000465c:	cdc080e7          	jalr	-804(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    80004660:	0000c797          	auipc	a5,0xc
    80004664:	8107a783          	lw	a5,-2032(a5) # 8000fe70 <threadEnd>
    80004668:	02079e63          	bnez	a5,800046a4 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000466c:	0004a583          	lw	a1,0(s1)
    80004670:	0305859b          	addiw	a1,a1,48
    80004674:	0084b503          	ld	a0,8(s1)
    80004678:	00002097          	auipc	ra,0x2
    8000467c:	48c080e7          	jalr	1164(ra) # 80006b04 <_ZN6Buffer3putEi>
        i++;
    80004680:	0019071b          	addiw	a4,s2,1
    80004684:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004688:	0004a683          	lw	a3,0(s1)
    8000468c:	0026979b          	slliw	a5,a3,0x2
    80004690:	00d787bb          	addw	a5,a5,a3
    80004694:	0017979b          	slliw	a5,a5,0x1
    80004698:	02f767bb          	remw	a5,a4,a5
    8000469c:	fc0792e3          	bnez	a5,80004660 <_Z8producerPv+0x2c>
    800046a0:	fb9ff06f          	j	80004658 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800046a4:	0104b503          	ld	a0,16(s1)
    800046a8:	ffffd097          	auipc	ra,0xffffd
    800046ac:	d64080e7          	jalr	-668(ra) # 8000140c <sem_signal>
}
    800046b0:	01813083          	ld	ra,24(sp)
    800046b4:	01013403          	ld	s0,16(sp)
    800046b8:	00813483          	ld	s1,8(sp)
    800046bc:	00013903          	ld	s2,0(sp)
    800046c0:	02010113          	addi	sp,sp,32
    800046c4:	00008067          	ret

00000000800046c8 <_Z8consumerPv>:

void consumer(void *arg) {
    800046c8:	fd010113          	addi	sp,sp,-48
    800046cc:	02113423          	sd	ra,40(sp)
    800046d0:	02813023          	sd	s0,32(sp)
    800046d4:	00913c23          	sd	s1,24(sp)
    800046d8:	01213823          	sd	s2,16(sp)
    800046dc:	01313423          	sd	s3,8(sp)
    800046e0:	03010413          	addi	s0,sp,48
    800046e4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    800046e8:	00000993          	li	s3,0
    800046ec:	01c0006f          	j	80004708 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	c44080e7          	jalr	-956(ra) # 80001334 <thread_dispatch>
    800046f8:	0500006f          	j	80004748 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800046fc:	00a00513          	li	a0,10
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	e38080e7          	jalr	-456(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004708:	0000b797          	auipc	a5,0xb
    8000470c:	7687a783          	lw	a5,1896(a5) # 8000fe70 <threadEnd>
    80004710:	04079463          	bnez	a5,80004758 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004714:	00893503          	ld	a0,8(s2)
    80004718:	00002097          	auipc	ra,0x2
    8000471c:	47c080e7          	jalr	1148(ra) # 80006b94 <_ZN6Buffer3getEv>
        i++;
    80004720:	0019849b          	addiw	s1,s3,1
    80004724:	0004899b          	sext.w	s3,s1
        putc(key);
    80004728:	0ff57513          	andi	a0,a0,255
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	e0c080e7          	jalr	-500(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004734:	00092703          	lw	a4,0(s2)
    80004738:	0027179b          	slliw	a5,a4,0x2
    8000473c:	00e787bb          	addw	a5,a5,a4
    80004740:	02f4e7bb          	remw	a5,s1,a5
    80004744:	fa0786e3          	beqz	a5,800046f0 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004748:	05000793          	li	a5,80
    8000474c:	02f4e4bb          	remw	s1,s1,a5
    80004750:	fa049ce3          	bnez	s1,80004708 <_Z8consumerPv+0x40>
    80004754:	fa9ff06f          	j	800046fc <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004758:	01093503          	ld	a0,16(s2)
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	cb0080e7          	jalr	-848(ra) # 8000140c <sem_signal>
}
    80004764:	02813083          	ld	ra,40(sp)
    80004768:	02013403          	ld	s0,32(sp)
    8000476c:	01813483          	ld	s1,24(sp)
    80004770:	01013903          	ld	s2,16(sp)
    80004774:	00813983          	ld	s3,8(sp)
    80004778:	03010113          	addi	sp,sp,48
    8000477c:	00008067          	ret

0000000080004780 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004780:	f9010113          	addi	sp,sp,-112
    80004784:	06113423          	sd	ra,104(sp)
    80004788:	06813023          	sd	s0,96(sp)
    8000478c:	04913c23          	sd	s1,88(sp)
    80004790:	05213823          	sd	s2,80(sp)
    80004794:	05313423          	sd	s3,72(sp)
    80004798:	05413023          	sd	s4,64(sp)
    8000479c:	03513c23          	sd	s5,56(sp)
    800047a0:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	b5450513          	addi	a0,a0,-1196 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800047ac:	00002097          	auipc	ra,0x2
    800047b0:	ac4080e7          	jalr	-1340(ra) # 80006270 <_Z11printStringPKc>
    getString(input, 30);
    800047b4:	01e00593          	li	a1,30
    800047b8:	fa040493          	addi	s1,s0,-96
    800047bc:	00048513          	mv	a0,s1
    800047c0:	00002097          	auipc	ra,0x2
    800047c4:	b2c080e7          	jalr	-1236(ra) # 800062ec <_Z9getStringPci>
    threadNum = stringToInt(input);
    800047c8:	00048513          	mv	a0,s1
    800047cc:	00002097          	auipc	ra,0x2
    800047d0:	bec080e7          	jalr	-1044(ra) # 800063b8 <_Z11stringToIntPKc>
    800047d4:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    800047d8:	00005517          	auipc	a0,0x5
    800047dc:	b4050513          	addi	a0,a0,-1216 # 80009318 <CONSOLE_STATUS+0x308>
    800047e0:	00002097          	auipc	ra,0x2
    800047e4:	a90080e7          	jalr	-1392(ra) # 80006270 <_Z11printStringPKc>
    getString(input, 30);
    800047e8:	01e00593          	li	a1,30
    800047ec:	00048513          	mv	a0,s1
    800047f0:	00002097          	auipc	ra,0x2
    800047f4:	afc080e7          	jalr	-1284(ra) # 800062ec <_Z9getStringPci>
    n = stringToInt(input);
    800047f8:	00048513          	mv	a0,s1
    800047fc:	00002097          	auipc	ra,0x2
    80004800:	bbc080e7          	jalr	-1092(ra) # 800063b8 <_Z11stringToIntPKc>
    80004804:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004808:	00005517          	auipc	a0,0x5
    8000480c:	b3050513          	addi	a0,a0,-1232 # 80009338 <CONSOLE_STATUS+0x328>
    80004810:	00002097          	auipc	ra,0x2
    80004814:	a60080e7          	jalr	-1440(ra) # 80006270 <_Z11printStringPKc>
    80004818:	00000613          	li	a2,0
    8000481c:	00a00593          	li	a1,10
    80004820:	00090513          	mv	a0,s2
    80004824:	00002097          	auipc	ra,0x2
    80004828:	be4080e7          	jalr	-1052(ra) # 80006408 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000482c:	00005517          	auipc	a0,0x5
    80004830:	b2450513          	addi	a0,a0,-1244 # 80009350 <CONSOLE_STATUS+0x340>
    80004834:	00002097          	auipc	ra,0x2
    80004838:	a3c080e7          	jalr	-1476(ra) # 80006270 <_Z11printStringPKc>
    8000483c:	00000613          	li	a2,0
    80004840:	00a00593          	li	a1,10
    80004844:	00048513          	mv	a0,s1
    80004848:	00002097          	auipc	ra,0x2
    8000484c:	bc0080e7          	jalr	-1088(ra) # 80006408 <_Z8printIntiii>
    printString(".\n");
    80004850:	00005517          	auipc	a0,0x5
    80004854:	b1850513          	addi	a0,a0,-1256 # 80009368 <CONSOLE_STATUS+0x358>
    80004858:	00002097          	auipc	ra,0x2
    8000485c:	a18080e7          	jalr	-1512(ra) # 80006270 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004860:	03800513          	li	a0,56
    80004864:	fffff097          	auipc	ra,0xfffff
    80004868:	b24080e7          	jalr	-1244(ra) # 80003388 <_Znwm>
    8000486c:	00050a13          	mv	s4,a0
    80004870:	00048593          	mv	a1,s1
    80004874:	00002097          	auipc	ra,0x2
    80004878:	1f4080e7          	jalr	500(ra) # 80006a68 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    8000487c:	00000593          	li	a1,0
    80004880:	0000b517          	auipc	a0,0xb
    80004884:	5f850513          	addi	a0,a0,1528 # 8000fe78 <waitForAll>
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	af4080e7          	jalr	-1292(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004890:	00391793          	slli	a5,s2,0x3
    80004894:	00f78793          	addi	a5,a5,15
    80004898:	ff07f793          	andi	a5,a5,-16
    8000489c:	40f10133          	sub	sp,sp,a5
    800048a0:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    800048a4:	0019071b          	addiw	a4,s2,1
    800048a8:	00171793          	slli	a5,a4,0x1
    800048ac:	00e787b3          	add	a5,a5,a4
    800048b0:	00379793          	slli	a5,a5,0x3
    800048b4:	00f78793          	addi	a5,a5,15
    800048b8:	ff07f793          	andi	a5,a5,-16
    800048bc:	40f10133          	sub	sp,sp,a5
    800048c0:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    800048c4:	00191613          	slli	a2,s2,0x1
    800048c8:	012607b3          	add	a5,a2,s2
    800048cc:	00379793          	slli	a5,a5,0x3
    800048d0:	00f987b3          	add	a5,s3,a5
    800048d4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800048d8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800048dc:	0000b717          	auipc	a4,0xb
    800048e0:	59c73703          	ld	a4,1436(a4) # 8000fe78 <waitForAll>
    800048e4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800048e8:	00078613          	mv	a2,a5
    800048ec:	00000597          	auipc	a1,0x0
    800048f0:	ddc58593          	addi	a1,a1,-548 # 800046c8 <_Z8consumerPv>
    800048f4:	f9840513          	addi	a0,s0,-104
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	9bc080e7          	jalr	-1604(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004900:	00000493          	li	s1,0
    80004904:	0280006f          	j	8000492c <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004908:	00000597          	auipc	a1,0x0
    8000490c:	c6c58593          	addi	a1,a1,-916 # 80004574 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004910:	00179613          	slli	a2,a5,0x1
    80004914:	00f60633          	add	a2,a2,a5
    80004918:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000491c:	00c98633          	add	a2,s3,a2
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	994080e7          	jalr	-1644(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004928:	0014849b          	addiw	s1,s1,1
    8000492c:	0524d263          	bge	s1,s2,80004970 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004930:	00149793          	slli	a5,s1,0x1
    80004934:	009787b3          	add	a5,a5,s1
    80004938:	00379793          	slli	a5,a5,0x3
    8000493c:	00f987b3          	add	a5,s3,a5
    80004940:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004944:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004948:	0000b717          	auipc	a4,0xb
    8000494c:	53073703          	ld	a4,1328(a4) # 8000fe78 <waitForAll>
    80004950:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004954:	00048793          	mv	a5,s1
    80004958:	00349513          	slli	a0,s1,0x3
    8000495c:	00aa8533          	add	a0,s5,a0
    80004960:	fa9054e3          	blez	s1,80004908 <_Z22producerConsumer_C_APIv+0x188>
    80004964:	00000597          	auipc	a1,0x0
    80004968:	cd058593          	addi	a1,a1,-816 # 80004634 <_Z8producerPv>
    8000496c:	fa5ff06f          	j	80004910 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	9c4080e7          	jalr	-1596(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004978:	00000493          	li	s1,0
    8000497c:	00994e63          	blt	s2,s1,80004998 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004980:	0000b517          	auipc	a0,0xb
    80004984:	4f853503          	ld	a0,1272(a0) # 8000fe78 <waitForAll>
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	a58080e7          	jalr	-1448(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004990:	0014849b          	addiw	s1,s1,1
    80004994:	fe9ff06f          	j	8000497c <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004998:	0000b517          	auipc	a0,0xb
    8000499c:	4e053503          	ld	a0,1248(a0) # 8000fe78 <waitForAll>
    800049a0:	ffffd097          	auipc	ra,0xffffd
    800049a4:	a14080e7          	jalr	-1516(ra) # 800013b4 <sem_close>
    800049a8:	f9040113          	addi	sp,s0,-112
    800049ac:	06813083          	ld	ra,104(sp)
    800049b0:	06013403          	ld	s0,96(sp)
    800049b4:	05813483          	ld	s1,88(sp)
    800049b8:	05013903          	ld	s2,80(sp)
    800049bc:	04813983          	ld	s3,72(sp)
    800049c0:	04013a03          	ld	s4,64(sp)
    800049c4:	03813a83          	ld	s5,56(sp)
    800049c8:	07010113          	addi	sp,sp,112
    800049cc:	00008067          	ret
    800049d0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800049d4:	000a0513          	mv	a0,s4
    800049d8:	fffff097          	auipc	ra,0xfffff
    800049dc:	9d8080e7          	jalr	-1576(ra) # 800033b0 <_ZdlPv>
    800049e0:	00048513          	mv	a0,s1
    800049e4:	0000c097          	auipc	ra,0xc
    800049e8:	584080e7          	jalr	1412(ra) # 80010f68 <_Unwind_Resume>

00000000800049ec <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800049ec:	fe010113          	addi	sp,sp,-32
    800049f0:	00113c23          	sd	ra,24(sp)
    800049f4:	00813823          	sd	s0,16(sp)
    800049f8:	00913423          	sd	s1,8(sp)
    800049fc:	01213023          	sd	s2,0(sp)
    80004a00:	02010413          	addi	s0,sp,32
    80004a04:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004a08:	00100793          	li	a5,1
    80004a0c:	02a7f863          	bgeu	a5,a0,80004a3c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004a10:	00a00793          	li	a5,10
    80004a14:	02f577b3          	remu	a5,a0,a5
    80004a18:	02078e63          	beqz	a5,80004a54 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004a1c:	fff48513          	addi	a0,s1,-1
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	fcc080e7          	jalr	-52(ra) # 800049ec <_ZL9fibonaccim>
    80004a28:	00050913          	mv	s2,a0
    80004a2c:	ffe48513          	addi	a0,s1,-2
    80004a30:	00000097          	auipc	ra,0x0
    80004a34:	fbc080e7          	jalr	-68(ra) # 800049ec <_ZL9fibonaccim>
    80004a38:	00a90533          	add	a0,s2,a0
}
    80004a3c:	01813083          	ld	ra,24(sp)
    80004a40:	01013403          	ld	s0,16(sp)
    80004a44:	00813483          	ld	s1,8(sp)
    80004a48:	00013903          	ld	s2,0(sp)
    80004a4c:	02010113          	addi	sp,sp,32
    80004a50:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	8e0080e7          	jalr	-1824(ra) # 80001334 <thread_dispatch>
    80004a5c:	fc1ff06f          	j	80004a1c <_ZL9fibonaccim+0x30>

0000000080004a60 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004a60:	fe010113          	addi	sp,sp,-32
    80004a64:	00113c23          	sd	ra,24(sp)
    80004a68:	00813823          	sd	s0,16(sp)
    80004a6c:	00913423          	sd	s1,8(sp)
    80004a70:	01213023          	sd	s2,0(sp)
    80004a74:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004a78:	00000913          	li	s2,0
    80004a7c:	0380006f          	j	80004ab4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	8b4080e7          	jalr	-1868(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004a88:	00148493          	addi	s1,s1,1
    80004a8c:	000027b7          	lui	a5,0x2
    80004a90:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a94:	0097ee63          	bltu	a5,s1,80004ab0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a98:	00000713          	li	a4,0
    80004a9c:	000077b7          	lui	a5,0x7
    80004aa0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004aa4:	fce7eee3          	bltu	a5,a4,80004a80 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004aa8:	00170713          	addi	a4,a4,1
    80004aac:	ff1ff06f          	j	80004a9c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004ab0:	00190913          	addi	s2,s2,1
    80004ab4:	00900793          	li	a5,9
    80004ab8:	0527e063          	bltu	a5,s2,80004af8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004abc:	00005517          	auipc	a0,0x5
    80004ac0:	8b450513          	addi	a0,a0,-1868 # 80009370 <CONSOLE_STATUS+0x360>
    80004ac4:	00001097          	auipc	ra,0x1
    80004ac8:	7ac080e7          	jalr	1964(ra) # 80006270 <_Z11printStringPKc>
    80004acc:	00000613          	li	a2,0
    80004ad0:	00a00593          	li	a1,10
    80004ad4:	0009051b          	sext.w	a0,s2
    80004ad8:	00002097          	auipc	ra,0x2
    80004adc:	930080e7          	jalr	-1744(ra) # 80006408 <_Z8printIntiii>
    80004ae0:	00004517          	auipc	a0,0x4
    80004ae4:	61850513          	addi	a0,a0,1560 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	788080e7          	jalr	1928(ra) # 80006270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004af0:	00000493          	li	s1,0
    80004af4:	f99ff06f          	j	80004a8c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004af8:	00005517          	auipc	a0,0x5
    80004afc:	88050513          	addi	a0,a0,-1920 # 80009378 <CONSOLE_STATUS+0x368>
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	770080e7          	jalr	1904(ra) # 80006270 <_Z11printStringPKc>
    finishedA = true;
    80004b08:	00100793          	li	a5,1
    80004b0c:	0000b717          	auipc	a4,0xb
    80004b10:	36f70a23          	sb	a5,884(a4) # 8000fe80 <_ZL9finishedA>
}
    80004b14:	01813083          	ld	ra,24(sp)
    80004b18:	01013403          	ld	s0,16(sp)
    80004b1c:	00813483          	ld	s1,8(sp)
    80004b20:	00013903          	ld	s2,0(sp)
    80004b24:	02010113          	addi	sp,sp,32
    80004b28:	00008067          	ret

0000000080004b2c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004b2c:	fe010113          	addi	sp,sp,-32
    80004b30:	00113c23          	sd	ra,24(sp)
    80004b34:	00813823          	sd	s0,16(sp)
    80004b38:	00913423          	sd	s1,8(sp)
    80004b3c:	01213023          	sd	s2,0(sp)
    80004b40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004b44:	00000913          	li	s2,0
    80004b48:	0380006f          	j	80004b80 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004b4c:	ffffc097          	auipc	ra,0xffffc
    80004b50:	7e8080e7          	jalr	2024(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004b54:	00148493          	addi	s1,s1,1
    80004b58:	000027b7          	lui	a5,0x2
    80004b5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b60:	0097ee63          	bltu	a5,s1,80004b7c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b64:	00000713          	li	a4,0
    80004b68:	000077b7          	lui	a5,0x7
    80004b6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b70:	fce7eee3          	bltu	a5,a4,80004b4c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004b74:	00170713          	addi	a4,a4,1
    80004b78:	ff1ff06f          	j	80004b68 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004b7c:	00190913          	addi	s2,s2,1
    80004b80:	00f00793          	li	a5,15
    80004b84:	0527e063          	bltu	a5,s2,80004bc4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004b88:	00005517          	auipc	a0,0x5
    80004b8c:	80050513          	addi	a0,a0,-2048 # 80009388 <CONSOLE_STATUS+0x378>
    80004b90:	00001097          	auipc	ra,0x1
    80004b94:	6e0080e7          	jalr	1760(ra) # 80006270 <_Z11printStringPKc>
    80004b98:	00000613          	li	a2,0
    80004b9c:	00a00593          	li	a1,10
    80004ba0:	0009051b          	sext.w	a0,s2
    80004ba4:	00002097          	auipc	ra,0x2
    80004ba8:	864080e7          	jalr	-1948(ra) # 80006408 <_Z8printIntiii>
    80004bac:	00004517          	auipc	a0,0x4
    80004bb0:	54c50513          	addi	a0,a0,1356 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	6bc080e7          	jalr	1724(ra) # 80006270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004bbc:	00000493          	li	s1,0
    80004bc0:	f99ff06f          	j	80004b58 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004bc4:	ffffc097          	auipc	ra,0xffffc
    80004bc8:	770080e7          	jalr	1904(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004bcc:	00004517          	auipc	a0,0x4
    80004bd0:	7c450513          	addi	a0,a0,1988 # 80009390 <CONSOLE_STATUS+0x380>
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	69c080e7          	jalr	1692(ra) # 80006270 <_Z11printStringPKc>
    finishedB = true;
    80004bdc:	00100793          	li	a5,1
    80004be0:	0000b717          	auipc	a4,0xb
    80004be4:	2af700a3          	sb	a5,673(a4) # 8000fe81 <_ZL9finishedB>
}
    80004be8:	01813083          	ld	ra,24(sp)
    80004bec:	01013403          	ld	s0,16(sp)
    80004bf0:	00813483          	ld	s1,8(sp)
    80004bf4:	00013903          	ld	s2,0(sp)
    80004bf8:	02010113          	addi	sp,sp,32
    80004bfc:	00008067          	ret

0000000080004c00 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004c00:	fe010113          	addi	sp,sp,-32
    80004c04:	00113c23          	sd	ra,24(sp)
    80004c08:	00813823          	sd	s0,16(sp)
    80004c0c:	00913423          	sd	s1,8(sp)
    80004c10:	01213023          	sd	s2,0(sp)
    80004c14:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004c18:	00000493          	li	s1,0
    80004c1c:	0400006f          	j	80004c5c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004c20:	00004517          	auipc	a0,0x4
    80004c24:	78050513          	addi	a0,a0,1920 # 800093a0 <CONSOLE_STATUS+0x390>
    80004c28:	00001097          	auipc	ra,0x1
    80004c2c:	648080e7          	jalr	1608(ra) # 80006270 <_Z11printStringPKc>
    80004c30:	00000613          	li	a2,0
    80004c34:	00a00593          	li	a1,10
    80004c38:	00048513          	mv	a0,s1
    80004c3c:	00001097          	auipc	ra,0x1
    80004c40:	7cc080e7          	jalr	1996(ra) # 80006408 <_Z8printIntiii>
    80004c44:	00004517          	auipc	a0,0x4
    80004c48:	4b450513          	addi	a0,a0,1204 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	624080e7          	jalr	1572(ra) # 80006270 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004c54:	0014849b          	addiw	s1,s1,1
    80004c58:	0ff4f493          	andi	s1,s1,255
    80004c5c:	00200793          	li	a5,2
    80004c60:	fc97f0e3          	bgeu	a5,s1,80004c20 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004c64:	00004517          	auipc	a0,0x4
    80004c68:	74450513          	addi	a0,a0,1860 # 800093a8 <CONSOLE_STATUS+0x398>
    80004c6c:	00001097          	auipc	ra,0x1
    80004c70:	604080e7          	jalr	1540(ra) # 80006270 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004c74:	00700313          	li	t1,7
    thread_dispatch();
    80004c78:	ffffc097          	auipc	ra,0xffffc
    80004c7c:	6bc080e7          	jalr	1724(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004c80:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004c84:	00004517          	auipc	a0,0x4
    80004c88:	73450513          	addi	a0,a0,1844 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004c8c:	00001097          	auipc	ra,0x1
    80004c90:	5e4080e7          	jalr	1508(ra) # 80006270 <_Z11printStringPKc>
    80004c94:	00000613          	li	a2,0
    80004c98:	00a00593          	li	a1,10
    80004c9c:	0009051b          	sext.w	a0,s2
    80004ca0:	00001097          	auipc	ra,0x1
    80004ca4:	768080e7          	jalr	1896(ra) # 80006408 <_Z8printIntiii>
    80004ca8:	00004517          	auipc	a0,0x4
    80004cac:	45050513          	addi	a0,a0,1104 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004cb0:	00001097          	auipc	ra,0x1
    80004cb4:	5c0080e7          	jalr	1472(ra) # 80006270 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004cb8:	00c00513          	li	a0,12
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	d30080e7          	jalr	-720(ra) # 800049ec <_ZL9fibonaccim>
    80004cc4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004cc8:	00004517          	auipc	a0,0x4
    80004ccc:	6f850513          	addi	a0,a0,1784 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004cd0:	00001097          	auipc	ra,0x1
    80004cd4:	5a0080e7          	jalr	1440(ra) # 80006270 <_Z11printStringPKc>
    80004cd8:	00000613          	li	a2,0
    80004cdc:	00a00593          	li	a1,10
    80004ce0:	0009051b          	sext.w	a0,s2
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	724080e7          	jalr	1828(ra) # 80006408 <_Z8printIntiii>
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	40c50513          	addi	a0,a0,1036 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	57c080e7          	jalr	1404(ra) # 80006270 <_Z11printStringPKc>
    80004cfc:	0400006f          	j	80004d3c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004d00:	00004517          	auipc	a0,0x4
    80004d04:	6a050513          	addi	a0,a0,1696 # 800093a0 <CONSOLE_STATUS+0x390>
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	568080e7          	jalr	1384(ra) # 80006270 <_Z11printStringPKc>
    80004d10:	00000613          	li	a2,0
    80004d14:	00a00593          	li	a1,10
    80004d18:	00048513          	mv	a0,s1
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	6ec080e7          	jalr	1772(ra) # 80006408 <_Z8printIntiii>
    80004d24:	00004517          	auipc	a0,0x4
    80004d28:	3d450513          	addi	a0,a0,980 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	544080e7          	jalr	1348(ra) # 80006270 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004d34:	0014849b          	addiw	s1,s1,1
    80004d38:	0ff4f493          	andi	s1,s1,255
    80004d3c:	00500793          	li	a5,5
    80004d40:	fc97f0e3          	bgeu	a5,s1,80004d00 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    80004d44:	ffffc097          	auipc	ra,0xffffc
    80004d48:	5f0080e7          	jalr	1520(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80004d4c:	00004517          	auipc	a0,0x4
    80004d50:	68450513          	addi	a0,a0,1668 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	51c080e7          	jalr	1308(ra) # 80006270 <_Z11printStringPKc>
    finishedC = true;
    80004d5c:	00100793          	li	a5,1
    80004d60:	0000b717          	auipc	a4,0xb
    80004d64:	12f70123          	sb	a5,290(a4) # 8000fe82 <_ZL9finishedC>
}
    80004d68:	01813083          	ld	ra,24(sp)
    80004d6c:	01013403          	ld	s0,16(sp)
    80004d70:	00813483          	ld	s1,8(sp)
    80004d74:	00013903          	ld	s2,0(sp)
    80004d78:	02010113          	addi	sp,sp,32
    80004d7c:	00008067          	ret

0000000080004d80 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004d80:	fe010113          	addi	sp,sp,-32
    80004d84:	00113c23          	sd	ra,24(sp)
    80004d88:	00813823          	sd	s0,16(sp)
    80004d8c:	00913423          	sd	s1,8(sp)
    80004d90:	01213023          	sd	s2,0(sp)
    80004d94:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004d98:	00a00493          	li	s1,10
    80004d9c:	0400006f          	j	80004ddc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004da0:	00004517          	auipc	a0,0x4
    80004da4:	64050513          	addi	a0,a0,1600 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004da8:	00001097          	auipc	ra,0x1
    80004dac:	4c8080e7          	jalr	1224(ra) # 80006270 <_Z11printStringPKc>
    80004db0:	00000613          	li	a2,0
    80004db4:	00a00593          	li	a1,10
    80004db8:	00048513          	mv	a0,s1
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	64c080e7          	jalr	1612(ra) # 80006408 <_Z8printIntiii>
    80004dc4:	00004517          	auipc	a0,0x4
    80004dc8:	33450513          	addi	a0,a0,820 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	4a4080e7          	jalr	1188(ra) # 80006270 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004dd4:	0014849b          	addiw	s1,s1,1
    80004dd8:	0ff4f493          	andi	s1,s1,255
    80004ddc:	00c00793          	li	a5,12
    80004de0:	fc97f0e3          	bgeu	a5,s1,80004da0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004de4:	00004517          	auipc	a0,0x4
    80004de8:	60450513          	addi	a0,a0,1540 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	484080e7          	jalr	1156(ra) # 80006270 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004df4:	00500313          	li	t1,5
    thread_dispatch();
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	53c080e7          	jalr	1340(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004e00:	01000513          	li	a0,16
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	be8080e7          	jalr	-1048(ra) # 800049ec <_ZL9fibonaccim>
    80004e0c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e10:	00004517          	auipc	a0,0x4
    80004e14:	5e850513          	addi	a0,a0,1512 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	458080e7          	jalr	1112(ra) # 80006270 <_Z11printStringPKc>
    80004e20:	00000613          	li	a2,0
    80004e24:	00a00593          	li	a1,10
    80004e28:	0009051b          	sext.w	a0,s2
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	5dc080e7          	jalr	1500(ra) # 80006408 <_Z8printIntiii>
    80004e34:	00004517          	auipc	a0,0x4
    80004e38:	2c450513          	addi	a0,a0,708 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	434080e7          	jalr	1076(ra) # 80006270 <_Z11printStringPKc>
    80004e44:	0400006f          	j	80004e84 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e48:	00004517          	auipc	a0,0x4
    80004e4c:	59850513          	addi	a0,a0,1432 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	420080e7          	jalr	1056(ra) # 80006270 <_Z11printStringPKc>
    80004e58:	00000613          	li	a2,0
    80004e5c:	00a00593          	li	a1,10
    80004e60:	00048513          	mv	a0,s1
    80004e64:	00001097          	auipc	ra,0x1
    80004e68:	5a4080e7          	jalr	1444(ra) # 80006408 <_Z8printIntiii>
    80004e6c:	00004517          	auipc	a0,0x4
    80004e70:	28c50513          	addi	a0,a0,652 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004e74:	00001097          	auipc	ra,0x1
    80004e78:	3fc080e7          	jalr	1020(ra) # 80006270 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004e7c:	0014849b          	addiw	s1,s1,1
    80004e80:	0ff4f493          	andi	s1,s1,255
    80004e84:	00f00793          	li	a5,15
    80004e88:	fc97f0e3          	bgeu	a5,s1,80004e48 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80004e8c:	ffffc097          	auipc	ra,0xffffc
    80004e90:	4a8080e7          	jalr	1192(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80004e94:	00004517          	auipc	a0,0x4
    80004e98:	57450513          	addi	a0,a0,1396 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004e9c:	00001097          	auipc	ra,0x1
    80004ea0:	3d4080e7          	jalr	980(ra) # 80006270 <_Z11printStringPKc>
    finishedD = true;
    80004ea4:	00100793          	li	a5,1
    80004ea8:	0000b717          	auipc	a4,0xb
    80004eac:	fcf70da3          	sb	a5,-37(a4) # 8000fe83 <_ZL9finishedD>
}
    80004eb0:	01813083          	ld	ra,24(sp)
    80004eb4:	01013403          	ld	s0,16(sp)
    80004eb8:	00813483          	ld	s1,8(sp)
    80004ebc:	00013903          	ld	s2,0(sp)
    80004ec0:	02010113          	addi	sp,sp,32
    80004ec4:	00008067          	ret

0000000080004ec8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004ec8:	fc010113          	addi	sp,sp,-64
    80004ecc:	02113c23          	sd	ra,56(sp)
    80004ed0:	02813823          	sd	s0,48(sp)
    80004ed4:	02913423          	sd	s1,40(sp)
    80004ed8:	03213023          	sd	s2,32(sp)
    80004edc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    80004ee0:	01000513          	li	a0,16
    80004ee4:	ffffe097          	auipc	ra,0xffffe
    80004ee8:	4a4080e7          	jalr	1188(ra) # 80003388 <_Znwm>
    80004eec:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004ef0:	ffffe097          	auipc	ra,0xffffe
    80004ef4:	668080e7          	jalr	1640(ra) # 80003558 <_ZN6ThreadC1Ev>
    80004ef8:	00007797          	auipc	a5,0x7
    80004efc:	cb878793          	addi	a5,a5,-840 # 8000bbb0 <_ZTV7WorkerA+0x10>
    80004f00:	00f4b023          	sd	a5,0(s1)
    80004f04:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	51050513          	addi	a0,a0,1296 # 80009418 <CONSOLE_STATUS+0x408>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	360080e7          	jalr	864(ra) # 80006270 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004f18:	01000513          	li	a0,16
    80004f1c:	ffffe097          	auipc	ra,0xffffe
    80004f20:	46c080e7          	jalr	1132(ra) # 80003388 <_Znwm>
    80004f24:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004f28:	ffffe097          	auipc	ra,0xffffe
    80004f2c:	630080e7          	jalr	1584(ra) # 80003558 <_ZN6ThreadC1Ev>
    80004f30:	00007797          	auipc	a5,0x7
    80004f34:	ca878793          	addi	a5,a5,-856 # 8000bbd8 <_ZTV7WorkerB+0x10>
    80004f38:	00f4b023          	sd	a5,0(s1)
    80004f3c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004f40:	00004517          	auipc	a0,0x4
    80004f44:	4f050513          	addi	a0,a0,1264 # 80009430 <CONSOLE_STATUS+0x420>
    80004f48:	00001097          	auipc	ra,0x1
    80004f4c:	328080e7          	jalr	808(ra) # 80006270 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004f50:	01000513          	li	a0,16
    80004f54:	ffffe097          	auipc	ra,0xffffe
    80004f58:	434080e7          	jalr	1076(ra) # 80003388 <_Znwm>
    80004f5c:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004f60:	ffffe097          	auipc	ra,0xffffe
    80004f64:	5f8080e7          	jalr	1528(ra) # 80003558 <_ZN6ThreadC1Ev>
    80004f68:	00007797          	auipc	a5,0x7
    80004f6c:	c9878793          	addi	a5,a5,-872 # 8000bc00 <_ZTV7WorkerC+0x10>
    80004f70:	00f4b023          	sd	a5,0(s1)
    80004f74:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004f78:	00004517          	auipc	a0,0x4
    80004f7c:	4d050513          	addi	a0,a0,1232 # 80009448 <CONSOLE_STATUS+0x438>
    80004f80:	00001097          	auipc	ra,0x1
    80004f84:	2f0080e7          	jalr	752(ra) # 80006270 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004f88:	01000513          	li	a0,16
    80004f8c:	ffffe097          	auipc	ra,0xffffe
    80004f90:	3fc080e7          	jalr	1020(ra) # 80003388 <_Znwm>
    80004f94:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004f98:	ffffe097          	auipc	ra,0xffffe
    80004f9c:	5c0080e7          	jalr	1472(ra) # 80003558 <_ZN6ThreadC1Ev>
    80004fa0:	00007797          	auipc	a5,0x7
    80004fa4:	c8878793          	addi	a5,a5,-888 # 8000bc28 <_ZTV7WorkerD+0x10>
    80004fa8:	00f4b023          	sd	a5,0(s1)
    80004fac:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	4b050513          	addi	a0,a0,1200 # 80009460 <CONSOLE_STATUS+0x450>
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	2b8080e7          	jalr	696(ra) # 80006270 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004fc0:	00000493          	li	s1,0
    80004fc4:	00300793          	li	a5,3
    80004fc8:	0297c663          	blt	a5,s1,80004ff4 <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    80004fcc:	00349793          	slli	a5,s1,0x3
    80004fd0:	fe040713          	addi	a4,s0,-32
    80004fd4:	00f707b3          	add	a5,a4,a5
    80004fd8:	fe07b503          	ld	a0,-32(a5)
    80004fdc:	ffffe097          	auipc	ra,0xffffe
    80004fe0:	47c080e7          	jalr	1148(ra) # 80003458 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004fe4:	0014849b          	addiw	s1,s1,1
    80004fe8:	fddff06f          	j	80004fc4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004fec:	ffffe097          	auipc	ra,0xffffe
    80004ff0:	4a4080e7          	jalr	1188(ra) # 80003490 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ff4:	0000b797          	auipc	a5,0xb
    80004ff8:	e8c7c783          	lbu	a5,-372(a5) # 8000fe80 <_ZL9finishedA>
    80004ffc:	fe0788e3          	beqz	a5,80004fec <_Z20Threads_CPP_API_testv+0x124>
    80005000:	0000b797          	auipc	a5,0xb
    80005004:	e817c783          	lbu	a5,-383(a5) # 8000fe81 <_ZL9finishedB>
    80005008:	fe0782e3          	beqz	a5,80004fec <_Z20Threads_CPP_API_testv+0x124>
    8000500c:	0000b797          	auipc	a5,0xb
    80005010:	e767c783          	lbu	a5,-394(a5) # 8000fe82 <_ZL9finishedC>
    80005014:	fc078ce3          	beqz	a5,80004fec <_Z20Threads_CPP_API_testv+0x124>
    80005018:	0000b797          	auipc	a5,0xb
    8000501c:	e6b7c783          	lbu	a5,-405(a5) # 8000fe83 <_ZL9finishedD>
    80005020:	fc0786e3          	beqz	a5,80004fec <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    80005024:	fc040493          	addi	s1,s0,-64
    80005028:	0080006f          	j	80005030 <_Z20Threads_CPP_API_testv+0x168>
    8000502c:	00848493          	addi	s1,s1,8
    80005030:	fe040793          	addi	a5,s0,-32
    80005034:	08f48663          	beq	s1,a5,800050c0 <_Z20Threads_CPP_API_testv+0x1f8>
    80005038:	0004b503          	ld	a0,0(s1)
    8000503c:	fe0508e3          	beqz	a0,8000502c <_Z20Threads_CPP_API_testv+0x164>
    80005040:	00053783          	ld	a5,0(a0)
    80005044:	0087b783          	ld	a5,8(a5)
    80005048:	000780e7          	jalr	a5
    8000504c:	fe1ff06f          	j	8000502c <_Z20Threads_CPP_API_testv+0x164>
    80005050:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80005054:	00048513          	mv	a0,s1
    80005058:	ffffe097          	auipc	ra,0xffffe
    8000505c:	358080e7          	jalr	856(ra) # 800033b0 <_ZdlPv>
    80005060:	00090513          	mv	a0,s2
    80005064:	0000c097          	auipc	ra,0xc
    80005068:	f04080e7          	jalr	-252(ra) # 80010f68 <_Unwind_Resume>
    8000506c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005070:	00048513          	mv	a0,s1
    80005074:	ffffe097          	auipc	ra,0xffffe
    80005078:	33c080e7          	jalr	828(ra) # 800033b0 <_ZdlPv>
    8000507c:	00090513          	mv	a0,s2
    80005080:	0000c097          	auipc	ra,0xc
    80005084:	ee8080e7          	jalr	-280(ra) # 80010f68 <_Unwind_Resume>
    80005088:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000508c:	00048513          	mv	a0,s1
    80005090:	ffffe097          	auipc	ra,0xffffe
    80005094:	320080e7          	jalr	800(ra) # 800033b0 <_ZdlPv>
    80005098:	00090513          	mv	a0,s2
    8000509c:	0000c097          	auipc	ra,0xc
    800050a0:	ecc080e7          	jalr	-308(ra) # 80010f68 <_Unwind_Resume>
    800050a4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800050a8:	00048513          	mv	a0,s1
    800050ac:	ffffe097          	auipc	ra,0xffffe
    800050b0:	304080e7          	jalr	772(ra) # 800033b0 <_ZdlPv>
    800050b4:	00090513          	mv	a0,s2
    800050b8:	0000c097          	auipc	ra,0xc
    800050bc:	eb0080e7          	jalr	-336(ra) # 80010f68 <_Unwind_Resume>
    800050c0:	03813083          	ld	ra,56(sp)
    800050c4:	03013403          	ld	s0,48(sp)
    800050c8:	02813483          	ld	s1,40(sp)
    800050cc:	02013903          	ld	s2,32(sp)
    800050d0:	04010113          	addi	sp,sp,64
    800050d4:	00008067          	ret

00000000800050d8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800050d8:	ff010113          	addi	sp,sp,-16
    800050dc:	00113423          	sd	ra,8(sp)
    800050e0:	00813023          	sd	s0,0(sp)
    800050e4:	01010413          	addi	s0,sp,16
    800050e8:	00007797          	auipc	a5,0x7
    800050ec:	ac878793          	addi	a5,a5,-1336 # 8000bbb0 <_ZTV7WorkerA+0x10>
    800050f0:	00f53023          	sd	a5,0(a0)
    800050f4:	ffffe097          	auipc	ra,0xffffe
    800050f8:	224080e7          	jalr	548(ra) # 80003318 <_ZN6ThreadD1Ev>
    800050fc:	00813083          	ld	ra,8(sp)
    80005100:	00013403          	ld	s0,0(sp)
    80005104:	01010113          	addi	sp,sp,16
    80005108:	00008067          	ret

000000008000510c <_ZN7WorkerAD0Ev>:
    8000510c:	fe010113          	addi	sp,sp,-32
    80005110:	00113c23          	sd	ra,24(sp)
    80005114:	00813823          	sd	s0,16(sp)
    80005118:	00913423          	sd	s1,8(sp)
    8000511c:	02010413          	addi	s0,sp,32
    80005120:	00050493          	mv	s1,a0
    80005124:	00007797          	auipc	a5,0x7
    80005128:	a8c78793          	addi	a5,a5,-1396 # 8000bbb0 <_ZTV7WorkerA+0x10>
    8000512c:	00f53023          	sd	a5,0(a0)
    80005130:	ffffe097          	auipc	ra,0xffffe
    80005134:	1e8080e7          	jalr	488(ra) # 80003318 <_ZN6ThreadD1Ev>
    80005138:	00048513          	mv	a0,s1
    8000513c:	ffffe097          	auipc	ra,0xffffe
    80005140:	274080e7          	jalr	628(ra) # 800033b0 <_ZdlPv>
    80005144:	01813083          	ld	ra,24(sp)
    80005148:	01013403          	ld	s0,16(sp)
    8000514c:	00813483          	ld	s1,8(sp)
    80005150:	02010113          	addi	sp,sp,32
    80005154:	00008067          	ret

0000000080005158 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005158:	ff010113          	addi	sp,sp,-16
    8000515c:	00113423          	sd	ra,8(sp)
    80005160:	00813023          	sd	s0,0(sp)
    80005164:	01010413          	addi	s0,sp,16
    80005168:	00007797          	auipc	a5,0x7
    8000516c:	a7078793          	addi	a5,a5,-1424 # 8000bbd8 <_ZTV7WorkerB+0x10>
    80005170:	00f53023          	sd	a5,0(a0)
    80005174:	ffffe097          	auipc	ra,0xffffe
    80005178:	1a4080e7          	jalr	420(ra) # 80003318 <_ZN6ThreadD1Ev>
    8000517c:	00813083          	ld	ra,8(sp)
    80005180:	00013403          	ld	s0,0(sp)
    80005184:	01010113          	addi	sp,sp,16
    80005188:	00008067          	ret

000000008000518c <_ZN7WorkerBD0Ev>:
    8000518c:	fe010113          	addi	sp,sp,-32
    80005190:	00113c23          	sd	ra,24(sp)
    80005194:	00813823          	sd	s0,16(sp)
    80005198:	00913423          	sd	s1,8(sp)
    8000519c:	02010413          	addi	s0,sp,32
    800051a0:	00050493          	mv	s1,a0
    800051a4:	00007797          	auipc	a5,0x7
    800051a8:	a3478793          	addi	a5,a5,-1484 # 8000bbd8 <_ZTV7WorkerB+0x10>
    800051ac:	00f53023          	sd	a5,0(a0)
    800051b0:	ffffe097          	auipc	ra,0xffffe
    800051b4:	168080e7          	jalr	360(ra) # 80003318 <_ZN6ThreadD1Ev>
    800051b8:	00048513          	mv	a0,s1
    800051bc:	ffffe097          	auipc	ra,0xffffe
    800051c0:	1f4080e7          	jalr	500(ra) # 800033b0 <_ZdlPv>
    800051c4:	01813083          	ld	ra,24(sp)
    800051c8:	01013403          	ld	s0,16(sp)
    800051cc:	00813483          	ld	s1,8(sp)
    800051d0:	02010113          	addi	sp,sp,32
    800051d4:	00008067          	ret

00000000800051d8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800051d8:	ff010113          	addi	sp,sp,-16
    800051dc:	00113423          	sd	ra,8(sp)
    800051e0:	00813023          	sd	s0,0(sp)
    800051e4:	01010413          	addi	s0,sp,16
    800051e8:	00007797          	auipc	a5,0x7
    800051ec:	a1878793          	addi	a5,a5,-1512 # 8000bc00 <_ZTV7WorkerC+0x10>
    800051f0:	00f53023          	sd	a5,0(a0)
    800051f4:	ffffe097          	auipc	ra,0xffffe
    800051f8:	124080e7          	jalr	292(ra) # 80003318 <_ZN6ThreadD1Ev>
    800051fc:	00813083          	ld	ra,8(sp)
    80005200:	00013403          	ld	s0,0(sp)
    80005204:	01010113          	addi	sp,sp,16
    80005208:	00008067          	ret

000000008000520c <_ZN7WorkerCD0Ev>:
    8000520c:	fe010113          	addi	sp,sp,-32
    80005210:	00113c23          	sd	ra,24(sp)
    80005214:	00813823          	sd	s0,16(sp)
    80005218:	00913423          	sd	s1,8(sp)
    8000521c:	02010413          	addi	s0,sp,32
    80005220:	00050493          	mv	s1,a0
    80005224:	00007797          	auipc	a5,0x7
    80005228:	9dc78793          	addi	a5,a5,-1572 # 8000bc00 <_ZTV7WorkerC+0x10>
    8000522c:	00f53023          	sd	a5,0(a0)
    80005230:	ffffe097          	auipc	ra,0xffffe
    80005234:	0e8080e7          	jalr	232(ra) # 80003318 <_ZN6ThreadD1Ev>
    80005238:	00048513          	mv	a0,s1
    8000523c:	ffffe097          	auipc	ra,0xffffe
    80005240:	174080e7          	jalr	372(ra) # 800033b0 <_ZdlPv>
    80005244:	01813083          	ld	ra,24(sp)
    80005248:	01013403          	ld	s0,16(sp)
    8000524c:	00813483          	ld	s1,8(sp)
    80005250:	02010113          	addi	sp,sp,32
    80005254:	00008067          	ret

0000000080005258 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005258:	ff010113          	addi	sp,sp,-16
    8000525c:	00113423          	sd	ra,8(sp)
    80005260:	00813023          	sd	s0,0(sp)
    80005264:	01010413          	addi	s0,sp,16
    80005268:	00007797          	auipc	a5,0x7
    8000526c:	9c078793          	addi	a5,a5,-1600 # 8000bc28 <_ZTV7WorkerD+0x10>
    80005270:	00f53023          	sd	a5,0(a0)
    80005274:	ffffe097          	auipc	ra,0xffffe
    80005278:	0a4080e7          	jalr	164(ra) # 80003318 <_ZN6ThreadD1Ev>
    8000527c:	00813083          	ld	ra,8(sp)
    80005280:	00013403          	ld	s0,0(sp)
    80005284:	01010113          	addi	sp,sp,16
    80005288:	00008067          	ret

000000008000528c <_ZN7WorkerDD0Ev>:
    8000528c:	fe010113          	addi	sp,sp,-32
    80005290:	00113c23          	sd	ra,24(sp)
    80005294:	00813823          	sd	s0,16(sp)
    80005298:	00913423          	sd	s1,8(sp)
    8000529c:	02010413          	addi	s0,sp,32
    800052a0:	00050493          	mv	s1,a0
    800052a4:	00007797          	auipc	a5,0x7
    800052a8:	98478793          	addi	a5,a5,-1660 # 8000bc28 <_ZTV7WorkerD+0x10>
    800052ac:	00f53023          	sd	a5,0(a0)
    800052b0:	ffffe097          	auipc	ra,0xffffe
    800052b4:	068080e7          	jalr	104(ra) # 80003318 <_ZN6ThreadD1Ev>
    800052b8:	00048513          	mv	a0,s1
    800052bc:	ffffe097          	auipc	ra,0xffffe
    800052c0:	0f4080e7          	jalr	244(ra) # 800033b0 <_ZdlPv>
    800052c4:	01813083          	ld	ra,24(sp)
    800052c8:	01013403          	ld	s0,16(sp)
    800052cc:	00813483          	ld	s1,8(sp)
    800052d0:	02010113          	addi	sp,sp,32
    800052d4:	00008067          	ret

00000000800052d8 <_ZN7WorkerA3runEv>:
    void run() override {
    800052d8:	ff010113          	addi	sp,sp,-16
    800052dc:	00113423          	sd	ra,8(sp)
    800052e0:	00813023          	sd	s0,0(sp)
    800052e4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800052e8:	00000593          	li	a1,0
    800052ec:	fffff097          	auipc	ra,0xfffff
    800052f0:	774080e7          	jalr	1908(ra) # 80004a60 <_ZN7WorkerA11workerBodyAEPv>
    }
    800052f4:	00813083          	ld	ra,8(sp)
    800052f8:	00013403          	ld	s0,0(sp)
    800052fc:	01010113          	addi	sp,sp,16
    80005300:	00008067          	ret

0000000080005304 <_ZN7WorkerB3runEv>:
    void run() override {
    80005304:	ff010113          	addi	sp,sp,-16
    80005308:	00113423          	sd	ra,8(sp)
    8000530c:	00813023          	sd	s0,0(sp)
    80005310:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005314:	00000593          	li	a1,0
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	814080e7          	jalr	-2028(ra) # 80004b2c <_ZN7WorkerB11workerBodyBEPv>
    }
    80005320:	00813083          	ld	ra,8(sp)
    80005324:	00013403          	ld	s0,0(sp)
    80005328:	01010113          	addi	sp,sp,16
    8000532c:	00008067          	ret

0000000080005330 <_ZN7WorkerC3runEv>:
    void run() override {
    80005330:	ff010113          	addi	sp,sp,-16
    80005334:	00113423          	sd	ra,8(sp)
    80005338:	00813023          	sd	s0,0(sp)
    8000533c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005340:	00000593          	li	a1,0
    80005344:	00000097          	auipc	ra,0x0
    80005348:	8bc080e7          	jalr	-1860(ra) # 80004c00 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000534c:	00813083          	ld	ra,8(sp)
    80005350:	00013403          	ld	s0,0(sp)
    80005354:	01010113          	addi	sp,sp,16
    80005358:	00008067          	ret

000000008000535c <_ZN7WorkerD3runEv>:

    void run() override {
    8000535c:	ff010113          	addi	sp,sp,-16
    80005360:	00113423          	sd	ra,8(sp)
    80005364:	00813023          	sd	s0,0(sp)
    80005368:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000536c:	00000593          	li	a1,0
    80005370:	00000097          	auipc	ra,0x0
    80005374:	a10080e7          	jalr	-1520(ra) # 80004d80 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005378:	00813083          	ld	ra,8(sp)
    8000537c:	00013403          	ld	s0,0(sp)
    80005380:	01010113          	addi	sp,sp,16
    80005384:	00008067          	ret

0000000080005388 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005388:	fe010113          	addi	sp,sp,-32
    8000538c:	00113c23          	sd	ra,24(sp)
    80005390:	00813823          	sd	s0,16(sp)
    80005394:	00913423          	sd	s1,8(sp)
    80005398:	01213023          	sd	s2,0(sp)
    8000539c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800053a0:	00000913          	li	s2,0
    800053a4:	0380006f          	j	800053dc <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800053a8:	ffffc097          	auipc	ra,0xffffc
    800053ac:	f8c080e7          	jalr	-116(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800053b0:	00148493          	addi	s1,s1,1
    800053b4:	000027b7          	lui	a5,0x2
    800053b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800053bc:	0097ee63          	bltu	a5,s1,800053d8 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800053c0:	00000713          	li	a4,0
    800053c4:	000077b7          	lui	a5,0x7
    800053c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800053cc:	fce7eee3          	bltu	a5,a4,800053a8 <_Z11workerBodyAPv+0x20>
    800053d0:	00170713          	addi	a4,a4,1
    800053d4:	ff1ff06f          	j	800053c4 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800053d8:	00190913          	addi	s2,s2,1
    800053dc:	00900793          	li	a5,9
    800053e0:	0527e063          	bltu	a5,s2,80005420 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800053e4:	00004517          	auipc	a0,0x4
    800053e8:	f8c50513          	addi	a0,a0,-116 # 80009370 <CONSOLE_STATUS+0x360>
    800053ec:	00001097          	auipc	ra,0x1
    800053f0:	e84080e7          	jalr	-380(ra) # 80006270 <_Z11printStringPKc>
    800053f4:	00000613          	li	a2,0
    800053f8:	00a00593          	li	a1,10
    800053fc:	0009051b          	sext.w	a0,s2
    80005400:	00001097          	auipc	ra,0x1
    80005404:	008080e7          	jalr	8(ra) # 80006408 <_Z8printIntiii>
    80005408:	00004517          	auipc	a0,0x4
    8000540c:	cf050513          	addi	a0,a0,-784 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005410:	00001097          	auipc	ra,0x1
    80005414:	e60080e7          	jalr	-416(ra) # 80006270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005418:	00000493          	li	s1,0
    8000541c:	f99ff06f          	j	800053b4 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005420:	00004517          	auipc	a0,0x4
    80005424:	f5850513          	addi	a0,a0,-168 # 80009378 <CONSOLE_STATUS+0x368>
    80005428:	00001097          	auipc	ra,0x1
    8000542c:	e48080e7          	jalr	-440(ra) # 80006270 <_Z11printStringPKc>
    finishedA = true;
    80005430:	00100793          	li	a5,1
    80005434:	0000b717          	auipc	a4,0xb
    80005438:	a4f70823          	sb	a5,-1456(a4) # 8000fe84 <finishedA>
}
    8000543c:	01813083          	ld	ra,24(sp)
    80005440:	01013403          	ld	s0,16(sp)
    80005444:	00813483          	ld	s1,8(sp)
    80005448:	00013903          	ld	s2,0(sp)
    8000544c:	02010113          	addi	sp,sp,32
    80005450:	00008067          	ret

0000000080005454 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005454:	fe010113          	addi	sp,sp,-32
    80005458:	00113c23          	sd	ra,24(sp)
    8000545c:	00813823          	sd	s0,16(sp)
    80005460:	00913423          	sd	s1,8(sp)
    80005464:	01213023          	sd	s2,0(sp)
    80005468:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000546c:	00000913          	li	s2,0
    80005470:	0380006f          	j	800054a8 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005474:	ffffc097          	auipc	ra,0xffffc
    80005478:	ec0080e7          	jalr	-320(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000547c:	00148493          	addi	s1,s1,1
    80005480:	000027b7          	lui	a5,0x2
    80005484:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005488:	0097ee63          	bltu	a5,s1,800054a4 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000548c:	00000713          	li	a4,0
    80005490:	000077b7          	lui	a5,0x7
    80005494:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005498:	fce7eee3          	bltu	a5,a4,80005474 <_Z11workerBodyBPv+0x20>
    8000549c:	00170713          	addi	a4,a4,1
    800054a0:	ff1ff06f          	j	80005490 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800054a4:	00190913          	addi	s2,s2,1
    800054a8:	00f00793          	li	a5,15
    800054ac:	0527e063          	bltu	a5,s2,800054ec <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800054b0:	00004517          	auipc	a0,0x4
    800054b4:	ed850513          	addi	a0,a0,-296 # 80009388 <CONSOLE_STATUS+0x378>
    800054b8:	00001097          	auipc	ra,0x1
    800054bc:	db8080e7          	jalr	-584(ra) # 80006270 <_Z11printStringPKc>
    800054c0:	00000613          	li	a2,0
    800054c4:	00a00593          	li	a1,10
    800054c8:	0009051b          	sext.w	a0,s2
    800054cc:	00001097          	auipc	ra,0x1
    800054d0:	f3c080e7          	jalr	-196(ra) # 80006408 <_Z8printIntiii>
    800054d4:	00004517          	auipc	a0,0x4
    800054d8:	c2450513          	addi	a0,a0,-988 # 800090f8 <CONSOLE_STATUS+0xe8>
    800054dc:	00001097          	auipc	ra,0x1
    800054e0:	d94080e7          	jalr	-620(ra) # 80006270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800054e4:	00000493          	li	s1,0
    800054e8:	f99ff06f          	j	80005480 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    800054ec:	00004517          	auipc	a0,0x4
    800054f0:	ea450513          	addi	a0,a0,-348 # 80009390 <CONSOLE_STATUS+0x380>
    800054f4:	00001097          	auipc	ra,0x1
    800054f8:	d7c080e7          	jalr	-644(ra) # 80006270 <_Z11printStringPKc>
    finishedB = true;
    800054fc:	00100793          	li	a5,1
    80005500:	0000b717          	auipc	a4,0xb
    80005504:	98f702a3          	sb	a5,-1659(a4) # 8000fe85 <finishedB>
    thread_dispatch();
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	e2c080e7          	jalr	-468(ra) # 80001334 <thread_dispatch>
}
    80005510:	01813083          	ld	ra,24(sp)
    80005514:	01013403          	ld	s0,16(sp)
    80005518:	00813483          	ld	s1,8(sp)
    8000551c:	00013903          	ld	s2,0(sp)
    80005520:	02010113          	addi	sp,sp,32
    80005524:	00008067          	ret

0000000080005528 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80005528:	fe010113          	addi	sp,sp,-32
    8000552c:	00113c23          	sd	ra,24(sp)
    80005530:	00813823          	sd	s0,16(sp)
    80005534:	00913423          	sd	s1,8(sp)
    80005538:	01213023          	sd	s2,0(sp)
    8000553c:	02010413          	addi	s0,sp,32
    80005540:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005544:	00100793          	li	a5,1
    80005548:	02a7f863          	bgeu	a5,a0,80005578 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000554c:	00a00793          	li	a5,10
    80005550:	02f577b3          	remu	a5,a0,a5
    80005554:	02078e63          	beqz	a5,80005590 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005558:	fff48513          	addi	a0,s1,-1
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	fcc080e7          	jalr	-52(ra) # 80005528 <_Z9fibonaccim>
    80005564:	00050913          	mv	s2,a0
    80005568:	ffe48513          	addi	a0,s1,-2
    8000556c:	00000097          	auipc	ra,0x0
    80005570:	fbc080e7          	jalr	-68(ra) # 80005528 <_Z9fibonaccim>
    80005574:	00a90533          	add	a0,s2,a0
}
    80005578:	01813083          	ld	ra,24(sp)
    8000557c:	01013403          	ld	s0,16(sp)
    80005580:	00813483          	ld	s1,8(sp)
    80005584:	00013903          	ld	s2,0(sp)
    80005588:	02010113          	addi	sp,sp,32
    8000558c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005590:	ffffc097          	auipc	ra,0xffffc
    80005594:	da4080e7          	jalr	-604(ra) # 80001334 <thread_dispatch>
    80005598:	fc1ff06f          	j	80005558 <_Z9fibonaccim+0x30>

000000008000559c <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    8000559c:	fe010113          	addi	sp,sp,-32
    800055a0:	00113c23          	sd	ra,24(sp)
    800055a4:	00813823          	sd	s0,16(sp)
    800055a8:	00913423          	sd	s1,8(sp)
    800055ac:	01213023          	sd	s2,0(sp)
    800055b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800055b4:	00000493          	li	s1,0
    800055b8:	0400006f          	j	800055f8 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800055bc:	00004517          	auipc	a0,0x4
    800055c0:	de450513          	addi	a0,a0,-540 # 800093a0 <CONSOLE_STATUS+0x390>
    800055c4:	00001097          	auipc	ra,0x1
    800055c8:	cac080e7          	jalr	-852(ra) # 80006270 <_Z11printStringPKc>
    800055cc:	00000613          	li	a2,0
    800055d0:	00a00593          	li	a1,10
    800055d4:	00048513          	mv	a0,s1
    800055d8:	00001097          	auipc	ra,0x1
    800055dc:	e30080e7          	jalr	-464(ra) # 80006408 <_Z8printIntiii>
    800055e0:	00004517          	auipc	a0,0x4
    800055e4:	b1850513          	addi	a0,a0,-1256 # 800090f8 <CONSOLE_STATUS+0xe8>
    800055e8:	00001097          	auipc	ra,0x1
    800055ec:	c88080e7          	jalr	-888(ra) # 80006270 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800055f0:	0014849b          	addiw	s1,s1,1
    800055f4:	0ff4f493          	andi	s1,s1,255
    800055f8:	00200793          	li	a5,2
    800055fc:	fc97f0e3          	bgeu	a5,s1,800055bc <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005600:	00004517          	auipc	a0,0x4
    80005604:	da850513          	addi	a0,a0,-600 # 800093a8 <CONSOLE_STATUS+0x398>
    80005608:	00001097          	auipc	ra,0x1
    8000560c:	c68080e7          	jalr	-920(ra) # 80006270 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005610:	00700313          	li	t1,7
    thread_dispatch();
    80005614:	ffffc097          	auipc	ra,0xffffc
    80005618:	d20080e7          	jalr	-736(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000561c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005620:	00004517          	auipc	a0,0x4
    80005624:	d9850513          	addi	a0,a0,-616 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80005628:	00001097          	auipc	ra,0x1
    8000562c:	c48080e7          	jalr	-952(ra) # 80006270 <_Z11printStringPKc>
    80005630:	00000613          	li	a2,0
    80005634:	00a00593          	li	a1,10
    80005638:	0009051b          	sext.w	a0,s2
    8000563c:	00001097          	auipc	ra,0x1
    80005640:	dcc080e7          	jalr	-564(ra) # 80006408 <_Z8printIntiii>
    80005644:	00004517          	auipc	a0,0x4
    80005648:	ab450513          	addi	a0,a0,-1356 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000564c:	00001097          	auipc	ra,0x1
    80005650:	c24080e7          	jalr	-988(ra) # 80006270 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005654:	00c00513          	li	a0,12
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	ed0080e7          	jalr	-304(ra) # 80005528 <_Z9fibonaccim>
    80005660:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005664:	00004517          	auipc	a0,0x4
    80005668:	d5c50513          	addi	a0,a0,-676 # 800093c0 <CONSOLE_STATUS+0x3b0>
    8000566c:	00001097          	auipc	ra,0x1
    80005670:	c04080e7          	jalr	-1020(ra) # 80006270 <_Z11printStringPKc>
    80005674:	00000613          	li	a2,0
    80005678:	00a00593          	li	a1,10
    8000567c:	0009051b          	sext.w	a0,s2
    80005680:	00001097          	auipc	ra,0x1
    80005684:	d88080e7          	jalr	-632(ra) # 80006408 <_Z8printIntiii>
    80005688:	00004517          	auipc	a0,0x4
    8000568c:	a7050513          	addi	a0,a0,-1424 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005690:	00001097          	auipc	ra,0x1
    80005694:	be0080e7          	jalr	-1056(ra) # 80006270 <_Z11printStringPKc>
    80005698:	0400006f          	j	800056d8 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000569c:	00004517          	auipc	a0,0x4
    800056a0:	d0450513          	addi	a0,a0,-764 # 800093a0 <CONSOLE_STATUS+0x390>
    800056a4:	00001097          	auipc	ra,0x1
    800056a8:	bcc080e7          	jalr	-1076(ra) # 80006270 <_Z11printStringPKc>
    800056ac:	00000613          	li	a2,0
    800056b0:	00a00593          	li	a1,10
    800056b4:	00048513          	mv	a0,s1
    800056b8:	00001097          	auipc	ra,0x1
    800056bc:	d50080e7          	jalr	-688(ra) # 80006408 <_Z8printIntiii>
    800056c0:	00004517          	auipc	a0,0x4
    800056c4:	a3850513          	addi	a0,a0,-1480 # 800090f8 <CONSOLE_STATUS+0xe8>
    800056c8:	00001097          	auipc	ra,0x1
    800056cc:	ba8080e7          	jalr	-1112(ra) # 80006270 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800056d0:	0014849b          	addiw	s1,s1,1
    800056d4:	0ff4f493          	andi	s1,s1,255
    800056d8:	00500793          	li	a5,5
    800056dc:	fc97f0e3          	bgeu	a5,s1,8000569c <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    800056e0:	00004517          	auipc	a0,0x4
    800056e4:	c9850513          	addi	a0,a0,-872 # 80009378 <CONSOLE_STATUS+0x368>
    800056e8:	00001097          	auipc	ra,0x1
    800056ec:	b88080e7          	jalr	-1144(ra) # 80006270 <_Z11printStringPKc>
    finishedC = true;
    800056f0:	00100793          	li	a5,1
    800056f4:	0000a717          	auipc	a4,0xa
    800056f8:	78f70923          	sb	a5,1938(a4) # 8000fe86 <finishedC>
    thread_dispatch();
    800056fc:	ffffc097          	auipc	ra,0xffffc
    80005700:	c38080e7          	jalr	-968(ra) # 80001334 <thread_dispatch>
}
    80005704:	01813083          	ld	ra,24(sp)
    80005708:	01013403          	ld	s0,16(sp)
    8000570c:	00813483          	ld	s1,8(sp)
    80005710:	00013903          	ld	s2,0(sp)
    80005714:	02010113          	addi	sp,sp,32
    80005718:	00008067          	ret

000000008000571c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    8000571c:	fe010113          	addi	sp,sp,-32
    80005720:	00113c23          	sd	ra,24(sp)
    80005724:	00813823          	sd	s0,16(sp)
    80005728:	00913423          	sd	s1,8(sp)
    8000572c:	01213023          	sd	s2,0(sp)
    80005730:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005734:	00a00493          	li	s1,10
    80005738:	0400006f          	j	80005778 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000573c:	00004517          	auipc	a0,0x4
    80005740:	ca450513          	addi	a0,a0,-860 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80005744:	00001097          	auipc	ra,0x1
    80005748:	b2c080e7          	jalr	-1236(ra) # 80006270 <_Z11printStringPKc>
    8000574c:	00000613          	li	a2,0
    80005750:	00a00593          	li	a1,10
    80005754:	00048513          	mv	a0,s1
    80005758:	00001097          	auipc	ra,0x1
    8000575c:	cb0080e7          	jalr	-848(ra) # 80006408 <_Z8printIntiii>
    80005760:	00004517          	auipc	a0,0x4
    80005764:	99850513          	addi	a0,a0,-1640 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005768:	00001097          	auipc	ra,0x1
    8000576c:	b08080e7          	jalr	-1272(ra) # 80006270 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005770:	0014849b          	addiw	s1,s1,1
    80005774:	0ff4f493          	andi	s1,s1,255
    80005778:	00c00793          	li	a5,12
    8000577c:	fc97f0e3          	bgeu	a5,s1,8000573c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005780:	00004517          	auipc	a0,0x4
    80005784:	c6850513          	addi	a0,a0,-920 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005788:	00001097          	auipc	ra,0x1
    8000578c:	ae8080e7          	jalr	-1304(ra) # 80006270 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005790:	00500313          	li	t1,5
    thread_dispatch();
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	ba0080e7          	jalr	-1120(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    8000579c:	01000513          	li	a0,16
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	d88080e7          	jalr	-632(ra) # 80005528 <_Z9fibonaccim>
    800057a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800057ac:	00004517          	auipc	a0,0x4
    800057b0:	c4c50513          	addi	a0,a0,-948 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800057b4:	00001097          	auipc	ra,0x1
    800057b8:	abc080e7          	jalr	-1348(ra) # 80006270 <_Z11printStringPKc>
    800057bc:	00000613          	li	a2,0
    800057c0:	00a00593          	li	a1,10
    800057c4:	0009051b          	sext.w	a0,s2
    800057c8:	00001097          	auipc	ra,0x1
    800057cc:	c40080e7          	jalr	-960(ra) # 80006408 <_Z8printIntiii>
    800057d0:	00004517          	auipc	a0,0x4
    800057d4:	92850513          	addi	a0,a0,-1752 # 800090f8 <CONSOLE_STATUS+0xe8>
    800057d8:	00001097          	auipc	ra,0x1
    800057dc:	a98080e7          	jalr	-1384(ra) # 80006270 <_Z11printStringPKc>
    800057e0:	0400006f          	j	80005820 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800057e4:	00004517          	auipc	a0,0x4
    800057e8:	bfc50513          	addi	a0,a0,-1028 # 800093e0 <CONSOLE_STATUS+0x3d0>
    800057ec:	00001097          	auipc	ra,0x1
    800057f0:	a84080e7          	jalr	-1404(ra) # 80006270 <_Z11printStringPKc>
    800057f4:	00000613          	li	a2,0
    800057f8:	00a00593          	li	a1,10
    800057fc:	00048513          	mv	a0,s1
    80005800:	00001097          	auipc	ra,0x1
    80005804:	c08080e7          	jalr	-1016(ra) # 80006408 <_Z8printIntiii>
    80005808:	00004517          	auipc	a0,0x4
    8000580c:	8f050513          	addi	a0,a0,-1808 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005810:	00001097          	auipc	ra,0x1
    80005814:	a60080e7          	jalr	-1440(ra) # 80006270 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005818:	0014849b          	addiw	s1,s1,1
    8000581c:	0ff4f493          	andi	s1,s1,255
    80005820:	00f00793          	li	a5,15
    80005824:	fc97f0e3          	bgeu	a5,s1,800057e4 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005828:	00004517          	auipc	a0,0x4
    8000582c:	be050513          	addi	a0,a0,-1056 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005830:	00001097          	auipc	ra,0x1
    80005834:	a40080e7          	jalr	-1472(ra) # 80006270 <_Z11printStringPKc>
    finishedD = true;
    80005838:	00100793          	li	a5,1
    8000583c:	0000a717          	auipc	a4,0xa
    80005840:	64f705a3          	sb	a5,1611(a4) # 8000fe87 <finishedD>
    thread_dispatch();
    80005844:	ffffc097          	auipc	ra,0xffffc
    80005848:	af0080e7          	jalr	-1296(ra) # 80001334 <thread_dispatch>
}
    8000584c:	01813083          	ld	ra,24(sp)
    80005850:	01013403          	ld	s0,16(sp)
    80005854:	00813483          	ld	s1,8(sp)
    80005858:	00013903          	ld	s2,0(sp)
    8000585c:	02010113          	addi	sp,sp,32
    80005860:	00008067          	ret

0000000080005864 <_Z18Threads_C_API_testv>:

void Threads_C_API_test() {
    80005864:	fc010113          	addi	sp,sp,-64
    80005868:	02113c23          	sd	ra,56(sp)
    8000586c:	02813823          	sd	s0,48(sp)
    80005870:	02913423          	sd	s1,40(sp)
    80005874:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005878:	00000613          	li	a2,0
    8000587c:	00000597          	auipc	a1,0x0
    80005880:	b0c58593          	addi	a1,a1,-1268 # 80005388 <_Z11workerBodyAPv>
    80005884:	fc040513          	addi	a0,s0,-64
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	a2c080e7          	jalr	-1492(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005890:	00004517          	auipc	a0,0x4
    80005894:	b8850513          	addi	a0,a0,-1144 # 80009418 <CONSOLE_STATUS+0x408>
    80005898:	00001097          	auipc	ra,0x1
    8000589c:	9d8080e7          	jalr	-1576(ra) # 80006270 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800058a0:	00000613          	li	a2,0
    800058a4:	00000597          	auipc	a1,0x0
    800058a8:	bb058593          	addi	a1,a1,-1104 # 80005454 <_Z11workerBodyBPv>
    800058ac:	fc840513          	addi	a0,s0,-56
    800058b0:	ffffc097          	auipc	ra,0xffffc
    800058b4:	a04080e7          	jalr	-1532(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    800058b8:	00004517          	auipc	a0,0x4
    800058bc:	b7850513          	addi	a0,a0,-1160 # 80009430 <CONSOLE_STATUS+0x420>
    800058c0:	00001097          	auipc	ra,0x1
    800058c4:	9b0080e7          	jalr	-1616(ra) # 80006270 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800058c8:	00000613          	li	a2,0
    800058cc:	00000597          	auipc	a1,0x0
    800058d0:	cd058593          	addi	a1,a1,-816 # 8000559c <_Z11workerBodyCPv>
    800058d4:	fd040513          	addi	a0,s0,-48
    800058d8:	ffffc097          	auipc	ra,0xffffc
    800058dc:	9dc080e7          	jalr	-1572(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    800058e0:	00004517          	auipc	a0,0x4
    800058e4:	b6850513          	addi	a0,a0,-1176 # 80009448 <CONSOLE_STATUS+0x438>
    800058e8:	00001097          	auipc	ra,0x1
    800058ec:	988080e7          	jalr	-1656(ra) # 80006270 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800058f0:	00000613          	li	a2,0
    800058f4:	00000597          	auipc	a1,0x0
    800058f8:	e2858593          	addi	a1,a1,-472 # 8000571c <_Z11workerBodyDPv>
    800058fc:	fd840513          	addi	a0,s0,-40
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	9b4080e7          	jalr	-1612(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005908:	00004517          	auipc	a0,0x4
    8000590c:	b5850513          	addi	a0,a0,-1192 # 80009460 <CONSOLE_STATUS+0x450>
    80005910:	00001097          	auipc	ra,0x1
    80005914:	960080e7          	jalr	-1696(ra) # 80006270 <_Z11printStringPKc>
    80005918:	00c0006f          	j	80005924 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000591c:	ffffc097          	auipc	ra,0xffffc
    80005920:	a18080e7          	jalr	-1512(ra) # 80001334 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005924:	0000a797          	auipc	a5,0xa
    80005928:	5607c783          	lbu	a5,1376(a5) # 8000fe84 <finishedA>
    8000592c:	fe0788e3          	beqz	a5,8000591c <_Z18Threads_C_API_testv+0xb8>
    80005930:	0000a797          	auipc	a5,0xa
    80005934:	5557c783          	lbu	a5,1365(a5) # 8000fe85 <finishedB>
    80005938:	fe0782e3          	beqz	a5,8000591c <_Z18Threads_C_API_testv+0xb8>
    8000593c:	0000a797          	auipc	a5,0xa
    80005940:	54a7c783          	lbu	a5,1354(a5) # 8000fe86 <finishedC>
    80005944:	fc078ce3          	beqz	a5,8000591c <_Z18Threads_C_API_testv+0xb8>
    80005948:	0000a797          	auipc	a5,0xa
    8000594c:	53f7c783          	lbu	a5,1343(a5) # 8000fe87 <finishedD>
    80005950:	fc0786e3          	beqz	a5,8000591c <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete (uint64*)thread; }
    80005954:	fc040493          	addi	s1,s0,-64
    80005958:	0080006f          	j	80005960 <_Z18Threads_C_API_testv+0xfc>
    8000595c:	00848493          	addi	s1,s1,8
    80005960:	fe040793          	addi	a5,s0,-32
    80005964:	00f48c63          	beq	s1,a5,8000597c <_Z18Threads_C_API_testv+0x118>
    80005968:	0004b503          	ld	a0,0(s1)
    8000596c:	fe0508e3          	beqz	a0,8000595c <_Z18Threads_C_API_testv+0xf8>
    80005970:	ffffe097          	auipc	ra,0xffffe
    80005974:	a40080e7          	jalr	-1472(ra) # 800033b0 <_ZdlPv>
    80005978:	fe5ff06f          	j	8000595c <_Z18Threads_C_API_testv+0xf8>
}
    8000597c:	03813083          	ld	ra,56(sp)
    80005980:	03013403          	ld	s0,48(sp)
    80005984:	02813483          	ld	s1,40(sp)
    80005988:	04010113          	addi	sp,sp,64
    8000598c:	00008067          	ret

0000000080005990 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    Semaphore* wait;
};

extern volatile int threadEnd;

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005990:	fd010113          	addi	sp,sp,-48
    80005994:	02113423          	sd	ra,40(sp)
    80005998:	02813023          	sd	s0,32(sp)
    8000599c:	00913c23          	sd	s1,24(sp)
    800059a0:	01213823          	sd	s2,16(sp)
    800059a4:	01313423          	sd	s3,8(sp)
    800059a8:	03010413          	addi	s0,sp,48
    800059ac:	00050993          	mv	s3,a0
    800059b0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800059b4:	00000913          	li	s2,0
    800059b8:	00c0006f          	j	800059c4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800059bc:	ffffe097          	auipc	ra,0xffffe
    800059c0:	ad4080e7          	jalr	-1324(ra) # 80003490 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'q') {
    800059c4:	ffffc097          	auipc	ra,0xffffc
    800059c8:	b4c080e7          	jalr	-1204(ra) # 80001510 <getc>
    800059cc:	0005059b          	sext.w	a1,a0
    800059d0:	07100793          	li	a5,113
    800059d4:	02f58a63          	beq	a1,a5,80005a08 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800059d8:	0084b503          	ld	a0,8(s1)
    800059dc:	00001097          	auipc	ra,0x1
    800059e0:	c94080e7          	jalr	-876(ra) # 80006670 <_ZN9BufferCPP3putEi>
        i++;
    800059e4:	0019071b          	addiw	a4,s2,1
    800059e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800059ec:	0004a683          	lw	a3,0(s1)
    800059f0:	0026979b          	slliw	a5,a3,0x2
    800059f4:	00d787bb          	addw	a5,a5,a3
    800059f8:	0017979b          	slliw	a5,a5,0x1
    800059fc:	02f767bb          	remw	a5,a4,a5
    80005a00:	fc0792e3          	bnez	a5,800059c4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005a04:	fb9ff06f          	j	800059bc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005a08:	00006797          	auipc	a5,0x6
    80005a0c:	3487b783          	ld	a5,840(a5) # 8000bd50 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005a10:	00100713          	li	a4,1
    80005a14:	00e7a023          	sw	a4,0(a5)
    td->buffer->put('!');
    80005a18:	0109b783          	ld	a5,16(s3)
    80005a1c:	02100593          	li	a1,33
    80005a20:	0087b503          	ld	a0,8(a5)
    80005a24:	00001097          	auipc	ra,0x1
    80005a28:	c4c080e7          	jalr	-948(ra) # 80006670 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005a2c:	0104b503          	ld	a0,16(s1)
    80005a30:	ffffe097          	auipc	ra,0xffffe
    80005a34:	bf0080e7          	jalr	-1040(ra) # 80003620 <_ZN9Semaphore6signalEv>
}
    80005a38:	02813083          	ld	ra,40(sp)
    80005a3c:	02013403          	ld	s0,32(sp)
    80005a40:	01813483          	ld	s1,24(sp)
    80005a44:	01013903          	ld	s2,16(sp)
    80005a48:	00813983          	ld	s3,8(sp)
    80005a4c:	03010113          	addi	sp,sp,48
    80005a50:	00008067          	ret

0000000080005a54 <_ZN8Producer8producerEPv>:

void Producer::producer(void *arg) {
    80005a54:	fe010113          	addi	sp,sp,-32
    80005a58:	00113c23          	sd	ra,24(sp)
    80005a5c:	00813823          	sd	s0,16(sp)
    80005a60:	00913423          	sd	s1,8(sp)
    80005a64:	01213023          	sd	s2,0(sp)
    80005a68:	02010413          	addi	s0,sp,32
    80005a6c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005a70:	00000913          	li	s2,0
    80005a74:	00c0006f          	j	80005a80 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005a78:	ffffe097          	auipc	ra,0xffffe
    80005a7c:	a18080e7          	jalr	-1512(ra) # 80003490 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005a80:	00006797          	auipc	a5,0x6
    80005a84:	2d07b783          	ld	a5,720(a5) # 8000bd50 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005a88:	0007a783          	lw	a5,0(a5)
    80005a8c:	0007879b          	sext.w	a5,a5
    80005a90:	02079e63          	bnez	a5,80005acc <_ZN8Producer8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    80005a94:	0004a583          	lw	a1,0(s1)
    80005a98:	0305859b          	addiw	a1,a1,48
    80005a9c:	0084b503          	ld	a0,8(s1)
    80005aa0:	00001097          	auipc	ra,0x1
    80005aa4:	bd0080e7          	jalr	-1072(ra) # 80006670 <_ZN9BufferCPP3putEi>
        i++;
    80005aa8:	0019071b          	addiw	a4,s2,1
    80005aac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005ab0:	0004a683          	lw	a3,0(s1)
    80005ab4:	0026979b          	slliw	a5,a3,0x2
    80005ab8:	00d787bb          	addw	a5,a5,a3
    80005abc:	0017979b          	slliw	a5,a5,0x1
    80005ac0:	02f767bb          	remw	a5,a4,a5
    80005ac4:	fa079ee3          	bnez	a5,80005a80 <_ZN8Producer8producerEPv+0x2c>
    80005ac8:	fb1ff06f          	j	80005a78 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005acc:	0104b503          	ld	a0,16(s1)
    80005ad0:	ffffe097          	auipc	ra,0xffffe
    80005ad4:	b50080e7          	jalr	-1200(ra) # 80003620 <_ZN9Semaphore6signalEv>
}
    80005ad8:	01813083          	ld	ra,24(sp)
    80005adc:	01013403          	ld	s0,16(sp)
    80005ae0:	00813483          	ld	s1,8(sp)
    80005ae4:	00013903          	ld	s2,0(sp)
    80005ae8:	02010113          	addi	sp,sp,32
    80005aec:	00008067          	ret

0000000080005af0 <_ZN8Consumer8consumerEPv>:

void Consumer::consumer(void *arg) {
    80005af0:	fd010113          	addi	sp,sp,-48
    80005af4:	02113423          	sd	ra,40(sp)
    80005af8:	02813023          	sd	s0,32(sp)
    80005afc:	00913c23          	sd	s1,24(sp)
    80005b00:	01213823          	sd	s2,16(sp)
    80005b04:	01313423          	sd	s3,8(sp)
    80005b08:	01413023          	sd	s4,0(sp)
    80005b0c:	03010413          	addi	s0,sp,48
    80005b10:	00050993          	mv	s3,a0
    80005b14:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005b18:	00000a13          	li	s4,0
    80005b1c:	01c0006f          	j	80005b38 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005b20:	ffffe097          	auipc	ra,0xffffe
    80005b24:	970080e7          	jalr	-1680(ra) # 80003490 <_ZN6Thread8dispatchEv>
    80005b28:	0580006f          	j	80005b80 <_ZN8Consumer8consumerEPv+0x90>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005b2c:	00a00513          	li	a0,10
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	a08080e7          	jalr	-1528(ra) # 80001538 <putc>
    while (!threadEnd) {
    80005b38:	00006797          	auipc	a5,0x6
    80005b3c:	2187b783          	ld	a5,536(a5) # 8000bd50 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005b40:	0007a783          	lw	a5,0(a5)
    80005b44:	0007879b          	sext.w	a5,a5
    80005b48:	06079263          	bnez	a5,80005bac <_ZN8Consumer8consumerEPv+0xbc>
        int key = data->buffer->get();
    80005b4c:	00893503          	ld	a0,8(s2)
    80005b50:	00001097          	auipc	ra,0x1
    80005b54:	bb0080e7          	jalr	-1104(ra) # 80006700 <_ZN9BufferCPP3getEv>
        i++;
    80005b58:	001a049b          	addiw	s1,s4,1
    80005b5c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005b60:	0ff57513          	andi	a0,a0,255
    80005b64:	ffffc097          	auipc	ra,0xffffc
    80005b68:	9d4080e7          	jalr	-1580(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80005b6c:	00092703          	lw	a4,0(s2)
    80005b70:	0027179b          	slliw	a5,a4,0x2
    80005b74:	00e787bb          	addw	a5,a5,a4
    80005b78:	02f4e7bb          	remw	a5,s1,a5
    80005b7c:	fa0782e3          	beqz	a5,80005b20 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005b80:	05000793          	li	a5,80
    80005b84:	02f4e4bb          	remw	s1,s1,a5
    80005b88:	fa0498e3          	bnez	s1,80005b38 <_ZN8Consumer8consumerEPv+0x48>
    80005b8c:	fa1ff06f          	j	80005b2c <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005b90:	0109b783          	ld	a5,16(s3)
    80005b94:	0087b503          	ld	a0,8(a5)
    80005b98:	00001097          	auipc	ra,0x1
    80005b9c:	b68080e7          	jalr	-1176(ra) # 80006700 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005ba0:	0ff57513          	andi	a0,a0,255
    80005ba4:	ffffe097          	auipc	ra,0xffffe
    80005ba8:	adc080e7          	jalr	-1316(ra) # 80003680 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005bac:	0109b783          	ld	a5,16(s3)
    80005bb0:	0087b503          	ld	a0,8(a5)
    80005bb4:	00001097          	auipc	ra,0x1
    80005bb8:	bd8080e7          	jalr	-1064(ra) # 8000678c <_ZN9BufferCPP6getCntEv>
    80005bbc:	fca04ae3          	bgtz	a0,80005b90 <_ZN8Consumer8consumerEPv+0xa0>
    }

    data->wait->signal();
    80005bc0:	01093503          	ld	a0,16(s2)
    80005bc4:	ffffe097          	auipc	ra,0xffffe
    80005bc8:	a5c080e7          	jalr	-1444(ra) # 80003620 <_ZN9Semaphore6signalEv>
}
    80005bcc:	02813083          	ld	ra,40(sp)
    80005bd0:	02013403          	ld	s0,32(sp)
    80005bd4:	01813483          	ld	s1,24(sp)
    80005bd8:	01013903          	ld	s2,16(sp)
    80005bdc:	00813983          	ld	s3,8(sp)
    80005be0:	00013a03          	ld	s4,0(sp)
    80005be4:	03010113          	addi	sp,sp,48
    80005be8:	00008067          	ret

0000000080005bec <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API()
{
    80005bec:	f8010113          	addi	sp,sp,-128
    80005bf0:	06113c23          	sd	ra,120(sp)
    80005bf4:	06813823          	sd	s0,112(sp)
    80005bf8:	06913423          	sd	s1,104(sp)
    80005bfc:	07213023          	sd	s2,96(sp)
    80005c00:	05313c23          	sd	s3,88(sp)
    80005c04:	05413823          	sd	s4,80(sp)
    80005c08:	05513423          	sd	s5,72(sp)
    80005c0c:	05613023          	sd	s6,64(sp)
    80005c10:	03713c23          	sd	s7,56(sp)
    80005c14:	03813823          	sd	s8,48(sp)
    80005c18:	03913423          	sd	s9,40(sp)
    80005c1c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005c20:	00010b93          	mv	s7,sp
    threadEnd = 0;
    80005c24:	00006797          	auipc	a5,0x6
    80005c28:	12c7b783          	ld	a5,300(a5) # 8000bd50 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005c2c:	0007a023          	sw	zero,0(a5)
    printString("Unesite broj proizvodjaca?\n");
    80005c30:	00003517          	auipc	a0,0x3
    80005c34:	6c850513          	addi	a0,a0,1736 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005c38:	00000097          	auipc	ra,0x0
    80005c3c:	638080e7          	jalr	1592(ra) # 80006270 <_Z11printStringPKc>
    getString(input, 30);
    80005c40:	01e00593          	li	a1,30
    80005c44:	f8040493          	addi	s1,s0,-128
    80005c48:	00048513          	mv	a0,s1
    80005c4c:	00000097          	auipc	ra,0x0
    80005c50:	6a0080e7          	jalr	1696(ra) # 800062ec <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005c54:	00048513          	mv	a0,s1
    80005c58:	00000097          	auipc	ra,0x0
    80005c5c:	760080e7          	jalr	1888(ra) # 800063b8 <_Z11stringToIntPKc>
    80005c60:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005c64:	00003517          	auipc	a0,0x3
    80005c68:	6b450513          	addi	a0,a0,1716 # 80009318 <CONSOLE_STATUS+0x308>
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	604080e7          	jalr	1540(ra) # 80006270 <_Z11printStringPKc>
    getString(input, 30);
    80005c74:	01e00593          	li	a1,30
    80005c78:	00048513          	mv	a0,s1
    80005c7c:	00000097          	auipc	ra,0x0
    80005c80:	670080e7          	jalr	1648(ra) # 800062ec <_Z9getStringPci>
    n = stringToInt(input);
    80005c84:	00048513          	mv	a0,s1
    80005c88:	00000097          	auipc	ra,0x0
    80005c8c:	730080e7          	jalr	1840(ra) # 800063b8 <_Z11stringToIntPKc>
    80005c90:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005c94:	00003517          	auipc	a0,0x3
    80005c98:	6a450513          	addi	a0,a0,1700 # 80009338 <CONSOLE_STATUS+0x328>
    80005c9c:	00000097          	auipc	ra,0x0
    80005ca0:	5d4080e7          	jalr	1492(ra) # 80006270 <_Z11printStringPKc>
    80005ca4:	00000613          	li	a2,0
    80005ca8:	00a00593          	li	a1,10
    80005cac:	00090513          	mv	a0,s2
    80005cb0:	00000097          	auipc	ra,0x0
    80005cb4:	758080e7          	jalr	1880(ra) # 80006408 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005cb8:	00003517          	auipc	a0,0x3
    80005cbc:	69850513          	addi	a0,a0,1688 # 80009350 <CONSOLE_STATUS+0x340>
    80005cc0:	00000097          	auipc	ra,0x0
    80005cc4:	5b0080e7          	jalr	1456(ra) # 80006270 <_Z11printStringPKc>
    80005cc8:	00000613          	li	a2,0
    80005ccc:	00a00593          	li	a1,10
    80005cd0:	00048513          	mv	a0,s1
    80005cd4:	00000097          	auipc	ra,0x0
    80005cd8:	734080e7          	jalr	1844(ra) # 80006408 <_Z8printIntiii>
    printString(".\n");
    80005cdc:	00003517          	auipc	a0,0x3
    80005ce0:	68c50513          	addi	a0,a0,1676 # 80009368 <CONSOLE_STATUS+0x358>
    80005ce4:	00000097          	auipc	ra,0x0
    80005ce8:	58c080e7          	jalr	1420(ra) # 80006270 <_Z11printStringPKc>
    if(threadNum > n) {
    80005cec:	0324c463          	blt	s1,s2,80005d14 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    } else if (threadNum < 1) {
    80005cf0:	03205c63          	blez	s2,80005d28 <_Z29producerConsumer_CPP_Sync_APIv+0x13c>
    BufferCPP *buffer = new BufferCPP(n);
    80005cf4:	03800513          	li	a0,56
    80005cf8:	ffffd097          	auipc	ra,0xffffd
    80005cfc:	690080e7          	jalr	1680(ra) # 80003388 <_Znwm>
    80005d00:	00050a93          	mv	s5,a0
    80005d04:	00048593          	mv	a1,s1
    80005d08:	00001097          	auipc	ra,0x1
    80005d0c:	814080e7          	jalr	-2028(ra) # 8000651c <_ZN9BufferCPPC1Ei>
    80005d10:	0300006f          	j	80005d40 <_Z29producerConsumer_CPP_Sync_APIv+0x154>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005d14:	00003517          	auipc	a0,0x3
    80005d18:	76450513          	addi	a0,a0,1892 # 80009478 <CONSOLE_STATUS+0x468>
    80005d1c:	00000097          	auipc	ra,0x0
    80005d20:	554080e7          	jalr	1364(ra) # 80006270 <_Z11printStringPKc>
        return;
    80005d24:	0140006f          	j	80005d38 <_Z29producerConsumer_CPP_Sync_APIv+0x14c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	79050513          	addi	a0,a0,1936 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005d30:	00000097          	auipc	ra,0x0
    80005d34:	540080e7          	jalr	1344(ra) # 80006270 <_Z11printStringPKc>
        return;
    80005d38:	000b8113          	mv	sp,s7
    80005d3c:	26c0006f          	j	80005fa8 <_Z29producerConsumer_CPP_Sync_APIv+0x3bc>
    waitForAll = new Semaphore(0);
    80005d40:	01000513          	li	a0,16
    80005d44:	ffffd097          	auipc	ra,0xffffd
    80005d48:	644080e7          	jalr	1604(ra) # 80003388 <_Znwm>
    80005d4c:	00050493          	mv	s1,a0
    80005d50:	00000593          	li	a1,0
    80005d54:	ffffe097          	auipc	ra,0xffffe
    80005d58:	880080e7          	jalr	-1920(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    80005d5c:	00006717          	auipc	a4,0x6
    80005d60:	fdc73703          	ld	a4,-36(a4) # 8000bd38 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005d64:	00973023          	sd	s1,0(a4)
    Thread* threads[threadNum];
    80005d68:	00391793          	slli	a5,s2,0x3
    80005d6c:	00f78793          	addi	a5,a5,15
    80005d70:	ff07f793          	andi	a5,a5,-16
    80005d74:	40f10133          	sub	sp,sp,a5
    80005d78:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005d7c:	0019069b          	addiw	a3,s2,1
    80005d80:	00169793          	slli	a5,a3,0x1
    80005d84:	00d787b3          	add	a5,a5,a3
    80005d88:	00379793          	slli	a5,a5,0x3
    80005d8c:	00f78793          	addi	a5,a5,15
    80005d90:	ff07f793          	andi	a5,a5,-16
    80005d94:	40f10133          	sub	sp,sp,a5
    80005d98:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005d9c:	00191493          	slli	s1,s2,0x1
    80005da0:	012487b3          	add	a5,s1,s2
    80005da4:	00379793          	slli	a5,a5,0x3
    80005da8:	00fa07b3          	add	a5,s4,a5
    80005dac:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005db0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005db4:	00073703          	ld	a4,0(a4)
    80005db8:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80005dbc:	01800513          	li	a0,24
    80005dc0:	ffffd097          	auipc	ra,0xffffd
    80005dc4:	5c8080e7          	jalr	1480(ra) # 80003388 <_Znwm>
    80005dc8:	00050b13          	mv	s6,a0
    80005dcc:	012484b3          	add	s1,s1,s2
    80005dd0:	00349493          	slli	s1,s1,0x3
    80005dd4:	009a04b3          	add	s1,s4,s1

class Consumer:public Thread {
    thread_data* td;
    void consumer(void *arg);
public:
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80005dd8:	ffffd097          	auipc	ra,0xffffd
    80005ddc:	780080e7          	jalr	1920(ra) # 80003558 <_ZN6ThreadC1Ev>
    80005de0:	00006797          	auipc	a5,0x6
    80005de4:	ec078793          	addi	a5,a5,-320 # 8000bca0 <_ZTV8Consumer+0x10>
    80005de8:	00fb3023          	sd	a5,0(s6)
    80005dec:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80005df0:	000b0513          	mv	a0,s6
    80005df4:	ffffd097          	auipc	ra,0xffffd
    80005df8:	664080e7          	jalr	1636(ra) # 80003458 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005dfc:	00000493          	li	s1,0
    80005e00:	0380006f          	j	80005e38 <_Z29producerConsumer_CPP_Sync_APIv+0x24c>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80005e04:	00006797          	auipc	a5,0x6
    80005e08:	e7478793          	addi	a5,a5,-396 # 8000bc78 <_ZTV8Producer+0x10>
    80005e0c:	00fcb023          	sd	a5,0(s9)
    80005e10:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80005e14:	00349793          	slli	a5,s1,0x3
    80005e18:	00f987b3          	add	a5,s3,a5
    80005e1c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005e20:	00349793          	slli	a5,s1,0x3
    80005e24:	00f987b3          	add	a5,s3,a5
    80005e28:	0007b503          	ld	a0,0(a5)
    80005e2c:	ffffd097          	auipc	ra,0xffffd
    80005e30:	62c080e7          	jalr	1580(ra) # 80003458 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005e34:	0014849b          	addiw	s1,s1,1
    80005e38:	0b24d263          	bge	s1,s2,80005edc <_Z29producerConsumer_CPP_Sync_APIv+0x2f0>
        data[i].id = i;
    80005e3c:	00149793          	slli	a5,s1,0x1
    80005e40:	009787b3          	add	a5,a5,s1
    80005e44:	00379793          	slli	a5,a5,0x3
    80005e48:	00fa07b3          	add	a5,s4,a5
    80005e4c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005e50:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005e54:	00006717          	auipc	a4,0x6
    80005e58:	ee473703          	ld	a4,-284(a4) # 8000bd38 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005e5c:	00073703          	ld	a4,0(a4)
    80005e60:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005e64:	02905863          	blez	s1,80005e94 <_Z29producerConsumer_CPP_Sync_APIv+0x2a8>
            threads[i] = new Producer(data+i);
    80005e68:	01800513          	li	a0,24
    80005e6c:	ffffd097          	auipc	ra,0xffffd
    80005e70:	51c080e7          	jalr	1308(ra) # 80003388 <_Znwm>
    80005e74:	00050c93          	mv	s9,a0
    80005e78:	00149c13          	slli	s8,s1,0x1
    80005e7c:	009c0c33          	add	s8,s8,s1
    80005e80:	003c1c13          	slli	s8,s8,0x3
    80005e84:	018a0c33          	add	s8,s4,s8
    80005e88:	ffffd097          	auipc	ra,0xffffd
    80005e8c:	6d0080e7          	jalr	1744(ra) # 80003558 <_ZN6ThreadC1Ev>
    80005e90:	f75ff06f          	j	80005e04 <_Z29producerConsumer_CPP_Sync_APIv+0x218>
            threads[i] = new ProducerKeyboard(data+i);
    80005e94:	01800513          	li	a0,24
    80005e98:	ffffd097          	auipc	ra,0xffffd
    80005e9c:	4f0080e7          	jalr	1264(ra) # 80003388 <_Znwm>
    80005ea0:	00050c93          	mv	s9,a0
    80005ea4:	00149c13          	slli	s8,s1,0x1
    80005ea8:	009c0c33          	add	s8,s8,s1
    80005eac:	003c1c13          	slli	s8,s8,0x3
    80005eb0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005eb4:	ffffd097          	auipc	ra,0xffffd
    80005eb8:	6a4080e7          	jalr	1700(ra) # 80003558 <_ZN6ThreadC1Ev>
    80005ebc:	00006797          	auipc	a5,0x6
    80005ec0:	d9478793          	addi	a5,a5,-620 # 8000bc50 <_ZTV16ProducerKeyboard+0x10>
    80005ec4:	00fcb023          	sd	a5,0(s9)
    80005ec8:	018cb823          	sd	s8,16(s9)
    80005ecc:	00349793          	slli	a5,s1,0x3
    80005ed0:	00f987b3          	add	a5,s3,a5
    80005ed4:	0197b023          	sd	s9,0(a5)
    80005ed8:	f49ff06f          	j	80005e20 <_Z29producerConsumer_CPP_Sync_APIv+0x234>
    printString("dispatching...\n");
    80005edc:	00003517          	auipc	a0,0x3
    80005ee0:	60c50513          	addi	a0,a0,1548 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80005ee4:	00000097          	auipc	ra,0x0
    80005ee8:	38c080e7          	jalr	908(ra) # 80006270 <_Z11printStringPKc>
    Thread::dispatch();
    80005eec:	ffffd097          	auipc	ra,0xffffd
    80005ef0:	5a4080e7          	jalr	1444(ra) # 80003490 <_ZN6Thread8dispatchEv>
    printString("dispatch return...\n");
    80005ef4:	00003517          	auipc	a0,0x3
    80005ef8:	60450513          	addi	a0,a0,1540 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80005efc:	00000097          	auipc	ra,0x0
    80005f00:	374080e7          	jalr	884(ra) # 80006270 <_Z11printStringPKc>
    for (int i = 0; i <= threadNum; i++) {
    80005f04:	00000493          	li	s1,0
    80005f08:	02994063          	blt	s2,s1,80005f28 <_Z29producerConsumer_CPP_Sync_APIv+0x33c>
        waitForAll->wait();
    80005f0c:	00006797          	auipc	a5,0x6
    80005f10:	e2c7b783          	ld	a5,-468(a5) # 8000bd38 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005f14:	0007b503          	ld	a0,0(a5)
    80005f18:	ffffd097          	auipc	ra,0xffffd
    80005f1c:	684080e7          	jalr	1668(ra) # 8000359c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005f20:	0014849b          	addiw	s1,s1,1
    80005f24:	fe5ff06f          	j	80005f08 <_Z29producerConsumer_CPP_Sync_APIv+0x31c>
    for (int i = 0; i < threadNum; i++) {
    80005f28:	00000493          	li	s1,0
    80005f2c:	0080006f          	j	80005f34 <_Z29producerConsumer_CPP_Sync_APIv+0x348>
    80005f30:	0014849b          	addiw	s1,s1,1
    80005f34:	0324d263          	bge	s1,s2,80005f58 <_Z29producerConsumer_CPP_Sync_APIv+0x36c>
        delete threads[i];
    80005f38:	00349793          	slli	a5,s1,0x3
    80005f3c:	00f987b3          	add	a5,s3,a5
    80005f40:	0007b503          	ld	a0,0(a5)
    80005f44:	fe0506e3          	beqz	a0,80005f30 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005f48:	00053783          	ld	a5,0(a0)
    80005f4c:	0087b783          	ld	a5,8(a5)
    80005f50:	000780e7          	jalr	a5
    80005f54:	fddff06f          	j	80005f30 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    delete consumerThread;
    80005f58:	000b0a63          	beqz	s6,80005f6c <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    80005f5c:	000b3783          	ld	a5,0(s6)
    80005f60:	0087b783          	ld	a5,8(a5)
    80005f64:	000b0513          	mv	a0,s6
    80005f68:	000780e7          	jalr	a5
    delete waitForAll;
    80005f6c:	00006797          	auipc	a5,0x6
    80005f70:	dcc7b783          	ld	a5,-564(a5) # 8000bd38 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005f74:	0007b503          	ld	a0,0(a5)
    80005f78:	00050863          	beqz	a0,80005f88 <_Z29producerConsumer_CPP_Sync_APIv+0x39c>
    80005f7c:	00053783          	ld	a5,0(a0)
    80005f80:	0087b783          	ld	a5,8(a5)
    80005f84:	000780e7          	jalr	a5
    delete buffer;
    80005f88:	000a8e63          	beqz	s5,80005fa4 <_Z29producerConsumer_CPP_Sync_APIv+0x3b8>
    80005f8c:	000a8513          	mv	a0,s5
    80005f90:	00001097          	auipc	ra,0x1
    80005f94:	884080e7          	jalr	-1916(ra) # 80006814 <_ZN9BufferCPPD1Ev>
    80005f98:	000a8513          	mv	a0,s5
    80005f9c:	ffffd097          	auipc	ra,0xffffd
    80005fa0:	414080e7          	jalr	1044(ra) # 800033b0 <_ZdlPv>
    80005fa4:	000b8113          	mv	sp,s7
}
    80005fa8:	f8040113          	addi	sp,s0,-128
    80005fac:	07813083          	ld	ra,120(sp)
    80005fb0:	07013403          	ld	s0,112(sp)
    80005fb4:	06813483          	ld	s1,104(sp)
    80005fb8:	06013903          	ld	s2,96(sp)
    80005fbc:	05813983          	ld	s3,88(sp)
    80005fc0:	05013a03          	ld	s4,80(sp)
    80005fc4:	04813a83          	ld	s5,72(sp)
    80005fc8:	04013b03          	ld	s6,64(sp)
    80005fcc:	03813b83          	ld	s7,56(sp)
    80005fd0:	03013c03          	ld	s8,48(sp)
    80005fd4:	02813c83          	ld	s9,40(sp)
    80005fd8:	08010113          	addi	sp,sp,128
    80005fdc:	00008067          	ret
    80005fe0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005fe4:	000a8513          	mv	a0,s5
    80005fe8:	ffffd097          	auipc	ra,0xffffd
    80005fec:	3c8080e7          	jalr	968(ra) # 800033b0 <_ZdlPv>
    80005ff0:	00048513          	mv	a0,s1
    80005ff4:	0000b097          	auipc	ra,0xb
    80005ff8:	f74080e7          	jalr	-140(ra) # 80010f68 <_Unwind_Resume>
    80005ffc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80006000:	00048513          	mv	a0,s1
    80006004:	ffffd097          	auipc	ra,0xffffd
    80006008:	3ac080e7          	jalr	940(ra) # 800033b0 <_ZdlPv>
    8000600c:	00090513          	mv	a0,s2
    80006010:	0000b097          	auipc	ra,0xb
    80006014:	f58080e7          	jalr	-168(ra) # 80010f68 <_Unwind_Resume>
    80006018:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    8000601c:	000b0513          	mv	a0,s6
    80006020:	ffffd097          	auipc	ra,0xffffd
    80006024:	390080e7          	jalr	912(ra) # 800033b0 <_ZdlPv>
    80006028:	00048513          	mv	a0,s1
    8000602c:	0000b097          	auipc	ra,0xb
    80006030:	f3c080e7          	jalr	-196(ra) # 80010f68 <_Unwind_Resume>
    80006034:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80006038:	000c8513          	mv	a0,s9
    8000603c:	ffffd097          	auipc	ra,0xffffd
    80006040:	374080e7          	jalr	884(ra) # 800033b0 <_ZdlPv>
    80006044:	00048513          	mv	a0,s1
    80006048:	0000b097          	auipc	ra,0xb
    8000604c:	f20080e7          	jalr	-224(ra) # 80010f68 <_Unwind_Resume>
    80006050:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80006054:	000c8513          	mv	a0,s9
    80006058:	ffffd097          	auipc	ra,0xffffd
    8000605c:	358080e7          	jalr	856(ra) # 800033b0 <_ZdlPv>
    80006060:	00048513          	mv	a0,s1
    80006064:	0000b097          	auipc	ra,0xb
    80006068:	f04080e7          	jalr	-252(ra) # 80010f68 <_Unwind_Resume>

000000008000606c <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    8000606c:	ff010113          	addi	sp,sp,-16
    80006070:	00113423          	sd	ra,8(sp)
    80006074:	00813023          	sd	s0,0(sp)
    80006078:	01010413          	addi	s0,sp,16
    8000607c:	00006797          	auipc	a5,0x6
    80006080:	c2478793          	addi	a5,a5,-988 # 8000bca0 <_ZTV8Consumer+0x10>
    80006084:	00f53023          	sd	a5,0(a0)
    80006088:	ffffd097          	auipc	ra,0xffffd
    8000608c:	290080e7          	jalr	656(ra) # 80003318 <_ZN6ThreadD1Ev>
    80006090:	00813083          	ld	ra,8(sp)
    80006094:	00013403          	ld	s0,0(sp)
    80006098:	01010113          	addi	sp,sp,16
    8000609c:	00008067          	ret

00000000800060a0 <_ZN8ConsumerD0Ev>:
    800060a0:	fe010113          	addi	sp,sp,-32
    800060a4:	00113c23          	sd	ra,24(sp)
    800060a8:	00813823          	sd	s0,16(sp)
    800060ac:	00913423          	sd	s1,8(sp)
    800060b0:	02010413          	addi	s0,sp,32
    800060b4:	00050493          	mv	s1,a0
    800060b8:	00006797          	auipc	a5,0x6
    800060bc:	be878793          	addi	a5,a5,-1048 # 8000bca0 <_ZTV8Consumer+0x10>
    800060c0:	00f53023          	sd	a5,0(a0)
    800060c4:	ffffd097          	auipc	ra,0xffffd
    800060c8:	254080e7          	jalr	596(ra) # 80003318 <_ZN6ThreadD1Ev>
    800060cc:	00048513          	mv	a0,s1
    800060d0:	ffffd097          	auipc	ra,0xffffd
    800060d4:	2e0080e7          	jalr	736(ra) # 800033b0 <_ZdlPv>
    800060d8:	01813083          	ld	ra,24(sp)
    800060dc:	01013403          	ld	s0,16(sp)
    800060e0:	00813483          	ld	s1,8(sp)
    800060e4:	02010113          	addi	sp,sp,32
    800060e8:	00008067          	ret

00000000800060ec <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    800060ec:	ff010113          	addi	sp,sp,-16
    800060f0:	00113423          	sd	ra,8(sp)
    800060f4:	00813023          	sd	s0,0(sp)
    800060f8:	01010413          	addi	s0,sp,16
    800060fc:	00006797          	auipc	a5,0x6
    80006100:	b7c78793          	addi	a5,a5,-1156 # 8000bc78 <_ZTV8Producer+0x10>
    80006104:	00f53023          	sd	a5,0(a0)
    80006108:	ffffd097          	auipc	ra,0xffffd
    8000610c:	210080e7          	jalr	528(ra) # 80003318 <_ZN6ThreadD1Ev>
    80006110:	00813083          	ld	ra,8(sp)
    80006114:	00013403          	ld	s0,0(sp)
    80006118:	01010113          	addi	sp,sp,16
    8000611c:	00008067          	ret

0000000080006120 <_ZN8ProducerD0Ev>:
    80006120:	fe010113          	addi	sp,sp,-32
    80006124:	00113c23          	sd	ra,24(sp)
    80006128:	00813823          	sd	s0,16(sp)
    8000612c:	00913423          	sd	s1,8(sp)
    80006130:	02010413          	addi	s0,sp,32
    80006134:	00050493          	mv	s1,a0
    80006138:	00006797          	auipc	a5,0x6
    8000613c:	b4078793          	addi	a5,a5,-1216 # 8000bc78 <_ZTV8Producer+0x10>
    80006140:	00f53023          	sd	a5,0(a0)
    80006144:	ffffd097          	auipc	ra,0xffffd
    80006148:	1d4080e7          	jalr	468(ra) # 80003318 <_ZN6ThreadD1Ev>
    8000614c:	00048513          	mv	a0,s1
    80006150:	ffffd097          	auipc	ra,0xffffd
    80006154:	260080e7          	jalr	608(ra) # 800033b0 <_ZdlPv>
    80006158:	01813083          	ld	ra,24(sp)
    8000615c:	01013403          	ld	s0,16(sp)
    80006160:	00813483          	ld	s1,8(sp)
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00008067          	ret

000000008000616c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000616c:	ff010113          	addi	sp,sp,-16
    80006170:	00113423          	sd	ra,8(sp)
    80006174:	00813023          	sd	s0,0(sp)
    80006178:	01010413          	addi	s0,sp,16
    8000617c:	00006797          	auipc	a5,0x6
    80006180:	ad478793          	addi	a5,a5,-1324 # 8000bc50 <_ZTV16ProducerKeyboard+0x10>
    80006184:	00f53023          	sd	a5,0(a0)
    80006188:	ffffd097          	auipc	ra,0xffffd
    8000618c:	190080e7          	jalr	400(ra) # 80003318 <_ZN6ThreadD1Ev>
    80006190:	00813083          	ld	ra,8(sp)
    80006194:	00013403          	ld	s0,0(sp)
    80006198:	01010113          	addi	sp,sp,16
    8000619c:	00008067          	ret

00000000800061a0 <_ZN16ProducerKeyboardD0Ev>:
    800061a0:	fe010113          	addi	sp,sp,-32
    800061a4:	00113c23          	sd	ra,24(sp)
    800061a8:	00813823          	sd	s0,16(sp)
    800061ac:	00913423          	sd	s1,8(sp)
    800061b0:	02010413          	addi	s0,sp,32
    800061b4:	00050493          	mv	s1,a0
    800061b8:	00006797          	auipc	a5,0x6
    800061bc:	a9878793          	addi	a5,a5,-1384 # 8000bc50 <_ZTV16ProducerKeyboard+0x10>
    800061c0:	00f53023          	sd	a5,0(a0)
    800061c4:	ffffd097          	auipc	ra,0xffffd
    800061c8:	154080e7          	jalr	340(ra) # 80003318 <_ZN6ThreadD1Ev>
    800061cc:	00048513          	mv	a0,s1
    800061d0:	ffffd097          	auipc	ra,0xffffd
    800061d4:	1e0080e7          	jalr	480(ra) # 800033b0 <_ZdlPv>
    800061d8:	01813083          	ld	ra,24(sp)
    800061dc:	01013403          	ld	s0,16(sp)
    800061e0:	00813483          	ld	s1,8(sp)
    800061e4:	02010113          	addi	sp,sp,32
    800061e8:	00008067          	ret

00000000800061ec <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800061ec:	ff010113          	addi	sp,sp,-16
    800061f0:	00113423          	sd	ra,8(sp)
    800061f4:	00813023          	sd	s0,0(sp)
    800061f8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800061fc:	01053583          	ld	a1,16(a0)
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	790080e7          	jalr	1936(ra) # 80005990 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80006208:	00813083          	ld	ra,8(sp)
    8000620c:	00013403          	ld	s0,0(sp)
    80006210:	01010113          	addi	sp,sp,16
    80006214:	00008067          	ret

0000000080006218 <_ZN8Producer3runEv>:
    void run() override {
    80006218:	ff010113          	addi	sp,sp,-16
    8000621c:	00113423          	sd	ra,8(sp)
    80006220:	00813023          	sd	s0,0(sp)
    80006224:	01010413          	addi	s0,sp,16
        producer(td);
    80006228:	01053583          	ld	a1,16(a0)
    8000622c:	00000097          	auipc	ra,0x0
    80006230:	828080e7          	jalr	-2008(ra) # 80005a54 <_ZN8Producer8producerEPv>
    }
    80006234:	00813083          	ld	ra,8(sp)
    80006238:	00013403          	ld	s0,0(sp)
    8000623c:	01010113          	addi	sp,sp,16
    80006240:	00008067          	ret

0000000080006244 <_ZN8Consumer3runEv>:

    void run() override {
    80006244:	ff010113          	addi	sp,sp,-16
    80006248:	00113423          	sd	ra,8(sp)
    8000624c:	00813023          	sd	s0,0(sp)
    80006250:	01010413          	addi	s0,sp,16
        consumer(td);
    80006254:	01053583          	ld	a1,16(a0)
    80006258:	00000097          	auipc	ra,0x0
    8000625c:	898080e7          	jalr	-1896(ra) # 80005af0 <_ZN8Consumer8consumerEPv>
    }
    80006260:	00813083          	ld	ra,8(sp)
    80006264:	00013403          	ld	s0,0(sp)
    80006268:	01010113          	addi	sp,sp,16
    8000626c:	00008067          	ret

0000000080006270 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006270:	fe010113          	addi	sp,sp,-32
    80006274:	00113c23          	sd	ra,24(sp)
    80006278:	00813823          	sd	s0,16(sp)
    8000627c:	00913423          	sd	s1,8(sp)
    80006280:	02010413          	addi	s0,sp,32
    80006284:	00050493          	mv	s1,a0
    LOCK();
    80006288:	00100613          	li	a2,1
    8000628c:	00000593          	li	a1,0
    80006290:	0000a517          	auipc	a0,0xa
    80006294:	bf850513          	addi	a0,a0,-1032 # 8000fe88 <lockPrint>
    80006298:	ffffb097          	auipc	ra,0xffffb
    8000629c:	f80080e7          	jalr	-128(ra) # 80001218 <copy_and_swap>
    800062a0:	fe0514e3          	bnez	a0,80006288 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800062a4:	0004c503          	lbu	a0,0(s1)
    800062a8:	00050a63          	beqz	a0,800062bc <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	28c080e7          	jalr	652(ra) # 80001538 <putc>
        string++;
    800062b4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800062b8:	fedff06f          	j	800062a4 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800062bc:	00000613          	li	a2,0
    800062c0:	00100593          	li	a1,1
    800062c4:	0000a517          	auipc	a0,0xa
    800062c8:	bc450513          	addi	a0,a0,-1084 # 8000fe88 <lockPrint>
    800062cc:	ffffb097          	auipc	ra,0xffffb
    800062d0:	f4c080e7          	jalr	-180(ra) # 80001218 <copy_and_swap>
    800062d4:	fe0514e3          	bnez	a0,800062bc <_Z11printStringPKc+0x4c>
}
    800062d8:	01813083          	ld	ra,24(sp)
    800062dc:	01013403          	ld	s0,16(sp)
    800062e0:	00813483          	ld	s1,8(sp)
    800062e4:	02010113          	addi	sp,sp,32
    800062e8:	00008067          	ret

00000000800062ec <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800062ec:	fd010113          	addi	sp,sp,-48
    800062f0:	02113423          	sd	ra,40(sp)
    800062f4:	02813023          	sd	s0,32(sp)
    800062f8:	00913c23          	sd	s1,24(sp)
    800062fc:	01213823          	sd	s2,16(sp)
    80006300:	01313423          	sd	s3,8(sp)
    80006304:	01413023          	sd	s4,0(sp)
    80006308:	03010413          	addi	s0,sp,48
    8000630c:	00050993          	mv	s3,a0
    80006310:	00058a13          	mv	s4,a1
    LOCK();
    80006314:	00100613          	li	a2,1
    80006318:	00000593          	li	a1,0
    8000631c:	0000a517          	auipc	a0,0xa
    80006320:	b6c50513          	addi	a0,a0,-1172 # 8000fe88 <lockPrint>
    80006324:	ffffb097          	auipc	ra,0xffffb
    80006328:	ef4080e7          	jalr	-268(ra) # 80001218 <copy_and_swap>
    8000632c:	fe0514e3          	bnez	a0,80006314 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006330:	00000913          	li	s2,0
    80006334:	00090493          	mv	s1,s2
    80006338:	0019091b          	addiw	s2,s2,1
    8000633c:	03495a63          	bge	s2,s4,80006370 <_Z9getStringPci+0x84>
        cc = getc();
    80006340:	ffffb097          	auipc	ra,0xffffb
    80006344:	1d0080e7          	jalr	464(ra) # 80001510 <getc>
        if(cc < 1)
    80006348:	02050463          	beqz	a0,80006370 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000634c:	009984b3          	add	s1,s3,s1
    80006350:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006354:	00a00793          	li	a5,10
    80006358:	00f50a63          	beq	a0,a5,8000636c <_Z9getStringPci+0x80>
    8000635c:	00d00793          	li	a5,13
    80006360:	fcf51ae3          	bne	a0,a5,80006334 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80006364:	00090493          	mv	s1,s2
    80006368:	0080006f          	j	80006370 <_Z9getStringPci+0x84>
    8000636c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006370:	009984b3          	add	s1,s3,s1
    80006374:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006378:	00000613          	li	a2,0
    8000637c:	00100593          	li	a1,1
    80006380:	0000a517          	auipc	a0,0xa
    80006384:	b0850513          	addi	a0,a0,-1272 # 8000fe88 <lockPrint>
    80006388:	ffffb097          	auipc	ra,0xffffb
    8000638c:	e90080e7          	jalr	-368(ra) # 80001218 <copy_and_swap>
    80006390:	fe0514e3          	bnez	a0,80006378 <_Z9getStringPci+0x8c>
    return buf;
}
    80006394:	00098513          	mv	a0,s3
    80006398:	02813083          	ld	ra,40(sp)
    8000639c:	02013403          	ld	s0,32(sp)
    800063a0:	01813483          	ld	s1,24(sp)
    800063a4:	01013903          	ld	s2,16(sp)
    800063a8:	00813983          	ld	s3,8(sp)
    800063ac:	00013a03          	ld	s4,0(sp)
    800063b0:	03010113          	addi	sp,sp,48
    800063b4:	00008067          	ret

00000000800063b8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800063b8:	ff010113          	addi	sp,sp,-16
    800063bc:	00813423          	sd	s0,8(sp)
    800063c0:	01010413          	addi	s0,sp,16
    800063c4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800063c8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800063cc:	0006c603          	lbu	a2,0(a3)
    800063d0:	fd06071b          	addiw	a4,a2,-48
    800063d4:	0ff77713          	andi	a4,a4,255
    800063d8:	00900793          	li	a5,9
    800063dc:	02e7e063          	bltu	a5,a4,800063fc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800063e0:	0025179b          	slliw	a5,a0,0x2
    800063e4:	00a787bb          	addw	a5,a5,a0
    800063e8:	0017979b          	slliw	a5,a5,0x1
    800063ec:	00168693          	addi	a3,a3,1
    800063f0:	00c787bb          	addw	a5,a5,a2
    800063f4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800063f8:	fd5ff06f          	j	800063cc <_Z11stringToIntPKc+0x14>
    return n;
}
    800063fc:	00813403          	ld	s0,8(sp)
    80006400:	01010113          	addi	sp,sp,16
    80006404:	00008067          	ret

0000000080006408 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006408:	fc010113          	addi	sp,sp,-64
    8000640c:	02113c23          	sd	ra,56(sp)
    80006410:	02813823          	sd	s0,48(sp)
    80006414:	02913423          	sd	s1,40(sp)
    80006418:	03213023          	sd	s2,32(sp)
    8000641c:	01313c23          	sd	s3,24(sp)
    80006420:	04010413          	addi	s0,sp,64
    80006424:	00050493          	mv	s1,a0
    80006428:	00058913          	mv	s2,a1
    8000642c:	00060993          	mv	s3,a2
    LOCK();
    80006430:	00100613          	li	a2,1
    80006434:	00000593          	li	a1,0
    80006438:	0000a517          	auipc	a0,0xa
    8000643c:	a5050513          	addi	a0,a0,-1456 # 8000fe88 <lockPrint>
    80006440:	ffffb097          	auipc	ra,0xffffb
    80006444:	dd8080e7          	jalr	-552(ra) # 80001218 <copy_and_swap>
    80006448:	fe0514e3          	bnez	a0,80006430 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000644c:	00098463          	beqz	s3,80006454 <_Z8printIntiii+0x4c>
    80006450:	0804c463          	bltz	s1,800064d8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006454:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006458:	00000593          	li	a1,0
    }

    i = 0;
    8000645c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006460:	0009079b          	sext.w	a5,s2
    80006464:	0325773b          	remuw	a4,a0,s2
    80006468:	00048613          	mv	a2,s1
    8000646c:	0014849b          	addiw	s1,s1,1
    80006470:	02071693          	slli	a3,a4,0x20
    80006474:	0206d693          	srli	a3,a3,0x20
    80006478:	00006717          	auipc	a4,0x6
    8000647c:	84070713          	addi	a4,a4,-1984 # 8000bcb8 <digits>
    80006480:	00d70733          	add	a4,a4,a3
    80006484:	00074683          	lbu	a3,0(a4)
    80006488:	fd040713          	addi	a4,s0,-48
    8000648c:	00c70733          	add	a4,a4,a2
    80006490:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006494:	0005071b          	sext.w	a4,a0
    80006498:	0325553b          	divuw	a0,a0,s2
    8000649c:	fcf772e3          	bgeu	a4,a5,80006460 <_Z8printIntiii+0x58>
    if(neg)
    800064a0:	00058c63          	beqz	a1,800064b8 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800064a4:	fd040793          	addi	a5,s0,-48
    800064a8:	009784b3          	add	s1,a5,s1
    800064ac:	02d00793          	li	a5,45
    800064b0:	fef48823          	sb	a5,-16(s1)
    800064b4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800064b8:	fff4849b          	addiw	s1,s1,-1
    800064bc:	0204c463          	bltz	s1,800064e4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800064c0:	fd040793          	addi	a5,s0,-48
    800064c4:	009787b3          	add	a5,a5,s1
    800064c8:	ff07c503          	lbu	a0,-16(a5)
    800064cc:	ffffb097          	auipc	ra,0xffffb
    800064d0:	06c080e7          	jalr	108(ra) # 80001538 <putc>
    800064d4:	fe5ff06f          	j	800064b8 <_Z8printIntiii+0xb0>
        x = -xx;
    800064d8:	4090053b          	negw	a0,s1
        neg = 1;
    800064dc:	00100593          	li	a1,1
        x = -xx;
    800064e0:	f7dff06f          	j	8000645c <_Z8printIntiii+0x54>

    UNLOCK();
    800064e4:	00000613          	li	a2,0
    800064e8:	00100593          	li	a1,1
    800064ec:	0000a517          	auipc	a0,0xa
    800064f0:	99c50513          	addi	a0,a0,-1636 # 8000fe88 <lockPrint>
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	d24080e7          	jalr	-732(ra) # 80001218 <copy_and_swap>
    800064fc:	fe0514e3          	bnez	a0,800064e4 <_Z8printIntiii+0xdc>
}
    80006500:	03813083          	ld	ra,56(sp)
    80006504:	03013403          	ld	s0,48(sp)
    80006508:	02813483          	ld	s1,40(sp)
    8000650c:	02013903          	ld	s2,32(sp)
    80006510:	01813983          	ld	s3,24(sp)
    80006514:	04010113          	addi	sp,sp,64
    80006518:	00008067          	ret

000000008000651c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"
BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000651c:	fd010113          	addi	sp,sp,-48
    80006520:	02113423          	sd	ra,40(sp)
    80006524:	02813023          	sd	s0,32(sp)
    80006528:	00913c23          	sd	s1,24(sp)
    8000652c:	01213823          	sd	s2,16(sp)
    80006530:	01313423          	sd	s3,8(sp)
    80006534:	03010413          	addi	s0,sp,48
    80006538:	00050493          	mv	s1,a0
    8000653c:	00058913          	mv	s2,a1
    80006540:	0015879b          	addiw	a5,a1,1
    80006544:	0007851b          	sext.w	a0,a5
    80006548:	00f4a023          	sw	a5,0(s1)
    8000654c:	0004a823          	sw	zero,16(s1)
    80006550:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006554:	00251513          	slli	a0,a0,0x2
    80006558:	ffffb097          	auipc	ra,0xffffb
    8000655c:	d00080e7          	jalr	-768(ra) # 80001258 <mem_alloc>
    80006560:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006564:	01000513          	li	a0,16
    80006568:	ffffd097          	auipc	ra,0xffffd
    8000656c:	e20080e7          	jalr	-480(ra) # 80003388 <_Znwm>
    80006570:	00050993          	mv	s3,a0
    80006574:	00000593          	li	a1,0
    80006578:	ffffd097          	auipc	ra,0xffffd
    8000657c:	05c080e7          	jalr	92(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    80006580:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006584:	01000513          	li	a0,16
    80006588:	ffffd097          	auipc	ra,0xffffd
    8000658c:	e00080e7          	jalr	-512(ra) # 80003388 <_Znwm>
    80006590:	00050993          	mv	s3,a0
    80006594:	00090593          	mv	a1,s2
    80006598:	ffffd097          	auipc	ra,0xffffd
    8000659c:	03c080e7          	jalr	60(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    800065a0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800065a4:	01000513          	li	a0,16
    800065a8:	ffffd097          	auipc	ra,0xffffd
    800065ac:	de0080e7          	jalr	-544(ra) # 80003388 <_Znwm>
    800065b0:	00050913          	mv	s2,a0
    800065b4:	00100593          	li	a1,1
    800065b8:	ffffd097          	auipc	ra,0xffffd
    800065bc:	01c080e7          	jalr	28(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    800065c0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800065c4:	01000513          	li	a0,16
    800065c8:	ffffd097          	auipc	ra,0xffffd
    800065cc:	dc0080e7          	jalr	-576(ra) # 80003388 <_Znwm>
    800065d0:	00050913          	mv	s2,a0
    800065d4:	00100593          	li	a1,1
    800065d8:	ffffd097          	auipc	ra,0xffffd
    800065dc:	ffc080e7          	jalr	-4(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    800065e0:	0324b823          	sd	s2,48(s1)
}
    800065e4:	02813083          	ld	ra,40(sp)
    800065e8:	02013403          	ld	s0,32(sp)
    800065ec:	01813483          	ld	s1,24(sp)
    800065f0:	01013903          	ld	s2,16(sp)
    800065f4:	00813983          	ld	s3,8(sp)
    800065f8:	03010113          	addi	sp,sp,48
    800065fc:	00008067          	ret
    80006600:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006604:	00098513          	mv	a0,s3
    80006608:	ffffd097          	auipc	ra,0xffffd
    8000660c:	da8080e7          	jalr	-600(ra) # 800033b0 <_ZdlPv>
    80006610:	00048513          	mv	a0,s1
    80006614:	0000b097          	auipc	ra,0xb
    80006618:	954080e7          	jalr	-1708(ra) # 80010f68 <_Unwind_Resume>
    8000661c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006620:	00098513          	mv	a0,s3
    80006624:	ffffd097          	auipc	ra,0xffffd
    80006628:	d8c080e7          	jalr	-628(ra) # 800033b0 <_ZdlPv>
    8000662c:	00048513          	mv	a0,s1
    80006630:	0000b097          	auipc	ra,0xb
    80006634:	938080e7          	jalr	-1736(ra) # 80010f68 <_Unwind_Resume>
    80006638:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000663c:	00090513          	mv	a0,s2
    80006640:	ffffd097          	auipc	ra,0xffffd
    80006644:	d70080e7          	jalr	-656(ra) # 800033b0 <_ZdlPv>
    80006648:	00048513          	mv	a0,s1
    8000664c:	0000b097          	auipc	ra,0xb
    80006650:	91c080e7          	jalr	-1764(ra) # 80010f68 <_Unwind_Resume>
    80006654:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006658:	00090513          	mv	a0,s2
    8000665c:	ffffd097          	auipc	ra,0xffffd
    80006660:	d54080e7          	jalr	-684(ra) # 800033b0 <_ZdlPv>
    80006664:	00048513          	mv	a0,s1
    80006668:	0000b097          	auipc	ra,0xb
    8000666c:	900080e7          	jalr	-1792(ra) # 80010f68 <_Unwind_Resume>

0000000080006670 <_ZN9BufferCPP3putEi>:
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;
}

void BufferCPP::put(int val) {
    80006670:	fe010113          	addi	sp,sp,-32
    80006674:	00113c23          	sd	ra,24(sp)
    80006678:	00813823          	sd	s0,16(sp)
    8000667c:	00913423          	sd	s1,8(sp)
    80006680:	01213023          	sd	s2,0(sp)
    80006684:	02010413          	addi	s0,sp,32
    80006688:	00050493          	mv	s1,a0
    8000668c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006690:	01853503          	ld	a0,24(a0)
    80006694:	ffffd097          	auipc	ra,0xffffd
    80006698:	f08080e7          	jalr	-248(ra) # 8000359c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000669c:	0304b503          	ld	a0,48(s1)
    800066a0:	ffffd097          	auipc	ra,0xffffd
    800066a4:	efc080e7          	jalr	-260(ra) # 8000359c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800066a8:	0084b783          	ld	a5,8(s1)
    800066ac:	0144a703          	lw	a4,20(s1)
    800066b0:	00271713          	slli	a4,a4,0x2
    800066b4:	00e787b3          	add	a5,a5,a4
    800066b8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800066bc:	0144a783          	lw	a5,20(s1)
    800066c0:	0017879b          	addiw	a5,a5,1
    800066c4:	0004a703          	lw	a4,0(s1)
    800066c8:	02e7e7bb          	remw	a5,a5,a4
    800066cc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800066d0:	0304b503          	ld	a0,48(s1)
    800066d4:	ffffd097          	auipc	ra,0xffffd
    800066d8:	f4c080e7          	jalr	-180(ra) # 80003620 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800066dc:	0204b503          	ld	a0,32(s1)
    800066e0:	ffffd097          	auipc	ra,0xffffd
    800066e4:	f40080e7          	jalr	-192(ra) # 80003620 <_ZN9Semaphore6signalEv>

}
    800066e8:	01813083          	ld	ra,24(sp)
    800066ec:	01013403          	ld	s0,16(sp)
    800066f0:	00813483          	ld	s1,8(sp)
    800066f4:	00013903          	ld	s2,0(sp)
    800066f8:	02010113          	addi	sp,sp,32
    800066fc:	00008067          	ret

0000000080006700 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006700:	fe010113          	addi	sp,sp,-32
    80006704:	00113c23          	sd	ra,24(sp)
    80006708:	00813823          	sd	s0,16(sp)
    8000670c:	00913423          	sd	s1,8(sp)
    80006710:	01213023          	sd	s2,0(sp)
    80006714:	02010413          	addi	s0,sp,32
    80006718:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000671c:	02053503          	ld	a0,32(a0)
    80006720:	ffffd097          	auipc	ra,0xffffd
    80006724:	e7c080e7          	jalr	-388(ra) # 8000359c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006728:	0284b503          	ld	a0,40(s1)
    8000672c:	ffffd097          	auipc	ra,0xffffd
    80006730:	e70080e7          	jalr	-400(ra) # 8000359c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006734:	0084b703          	ld	a4,8(s1)
    80006738:	0104a783          	lw	a5,16(s1)
    8000673c:	00279693          	slli	a3,a5,0x2
    80006740:	00d70733          	add	a4,a4,a3
    80006744:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006748:	0017879b          	addiw	a5,a5,1
    8000674c:	0004a703          	lw	a4,0(s1)
    80006750:	02e7e7bb          	remw	a5,a5,a4
    80006754:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006758:	0284b503          	ld	a0,40(s1)
    8000675c:	ffffd097          	auipc	ra,0xffffd
    80006760:	ec4080e7          	jalr	-316(ra) # 80003620 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006764:	0184b503          	ld	a0,24(s1)
    80006768:	ffffd097          	auipc	ra,0xffffd
    8000676c:	eb8080e7          	jalr	-328(ra) # 80003620 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006770:	00090513          	mv	a0,s2
    80006774:	01813083          	ld	ra,24(sp)
    80006778:	01013403          	ld	s0,16(sp)
    8000677c:	00813483          	ld	s1,8(sp)
    80006780:	00013903          	ld	s2,0(sp)
    80006784:	02010113          	addi	sp,sp,32
    80006788:	00008067          	ret

000000008000678c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000678c:	fe010113          	addi	sp,sp,-32
    80006790:	00113c23          	sd	ra,24(sp)
    80006794:	00813823          	sd	s0,16(sp)
    80006798:	00913423          	sd	s1,8(sp)
    8000679c:	01213023          	sd	s2,0(sp)
    800067a0:	02010413          	addi	s0,sp,32
    800067a4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800067a8:	02853503          	ld	a0,40(a0)
    800067ac:	ffffd097          	auipc	ra,0xffffd
    800067b0:	df0080e7          	jalr	-528(ra) # 8000359c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800067b4:	0304b503          	ld	a0,48(s1)
    800067b8:	ffffd097          	auipc	ra,0xffffd
    800067bc:	de4080e7          	jalr	-540(ra) # 8000359c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800067c0:	0144a783          	lw	a5,20(s1)
    800067c4:	0104a903          	lw	s2,16(s1)
    800067c8:	0327ce63          	blt	a5,s2,80006804 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800067cc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800067d0:	0304b503          	ld	a0,48(s1)
    800067d4:	ffffd097          	auipc	ra,0xffffd
    800067d8:	e4c080e7          	jalr	-436(ra) # 80003620 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800067dc:	0284b503          	ld	a0,40(s1)
    800067e0:	ffffd097          	auipc	ra,0xffffd
    800067e4:	e40080e7          	jalr	-448(ra) # 80003620 <_ZN9Semaphore6signalEv>

    return ret;
}
    800067e8:	00090513          	mv	a0,s2
    800067ec:	01813083          	ld	ra,24(sp)
    800067f0:	01013403          	ld	s0,16(sp)
    800067f4:	00813483          	ld	s1,8(sp)
    800067f8:	00013903          	ld	s2,0(sp)
    800067fc:	02010113          	addi	sp,sp,32
    80006800:	00008067          	ret
        ret = cap - head + tail;
    80006804:	0004a703          	lw	a4,0(s1)
    80006808:	4127093b          	subw	s2,a4,s2
    8000680c:	00f9093b          	addw	s2,s2,a5
    80006810:	fc1ff06f          	j	800067d0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006814 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006814:	fe010113          	addi	sp,sp,-32
    80006818:	00113c23          	sd	ra,24(sp)
    8000681c:	00813823          	sd	s0,16(sp)
    80006820:	00913423          	sd	s1,8(sp)
    80006824:	02010413          	addi	s0,sp,32
    80006828:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000682c:	00a00513          	li	a0,10
    80006830:	ffffd097          	auipc	ra,0xffffd
    80006834:	e50080e7          	jalr	-432(ra) # 80003680 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006838:	00003517          	auipc	a0,0x3
    8000683c:	cd850513          	addi	a0,a0,-808 # 80009510 <CONSOLE_STATUS+0x500>
    80006840:	00000097          	auipc	ra,0x0
    80006844:	a30080e7          	jalr	-1488(ra) # 80006270 <_Z11printStringPKc>
    while (getCnt()) {
    80006848:	00048513          	mv	a0,s1
    8000684c:	00000097          	auipc	ra,0x0
    80006850:	f40080e7          	jalr	-192(ra) # 8000678c <_ZN9BufferCPP6getCntEv>
    80006854:	02050c63          	beqz	a0,8000688c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006858:	0084b783          	ld	a5,8(s1)
    8000685c:	0104a703          	lw	a4,16(s1)
    80006860:	00271713          	slli	a4,a4,0x2
    80006864:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006868:	0007c503          	lbu	a0,0(a5)
    8000686c:	ffffd097          	auipc	ra,0xffffd
    80006870:	e14080e7          	jalr	-492(ra) # 80003680 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006874:	0104a783          	lw	a5,16(s1)
    80006878:	0017879b          	addiw	a5,a5,1
    8000687c:	0004a703          	lw	a4,0(s1)
    80006880:	02e7e7bb          	remw	a5,a5,a4
    80006884:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006888:	fc1ff06f          	j	80006848 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000688c:	02100513          	li	a0,33
    80006890:	ffffd097          	auipc	ra,0xffffd
    80006894:	df0080e7          	jalr	-528(ra) # 80003680 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006898:	00a00513          	li	a0,10
    8000689c:	ffffd097          	auipc	ra,0xffffd
    800068a0:	de4080e7          	jalr	-540(ra) # 80003680 <_ZN7Console4putcEc>
    mem_free(buffer);
    800068a4:	0084b503          	ld	a0,8(s1)
    800068a8:	ffffb097          	auipc	ra,0xffffb
    800068ac:	9e0080e7          	jalr	-1568(ra) # 80001288 <mem_free>
    delete itemAvailable;
    800068b0:	0204b503          	ld	a0,32(s1)
    800068b4:	00050863          	beqz	a0,800068c4 <_ZN9BufferCPPD1Ev+0xb0>
    800068b8:	00053783          	ld	a5,0(a0)
    800068bc:	0087b783          	ld	a5,8(a5)
    800068c0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800068c4:	0184b503          	ld	a0,24(s1)
    800068c8:	00050863          	beqz	a0,800068d8 <_ZN9BufferCPPD1Ev+0xc4>
    800068cc:	00053783          	ld	a5,0(a0)
    800068d0:	0087b783          	ld	a5,8(a5)
    800068d4:	000780e7          	jalr	a5
    delete mutexTail;
    800068d8:	0304b503          	ld	a0,48(s1)
    800068dc:	00050863          	beqz	a0,800068ec <_ZN9BufferCPPD1Ev+0xd8>
    800068e0:	00053783          	ld	a5,0(a0)
    800068e4:	0087b783          	ld	a5,8(a5)
    800068e8:	000780e7          	jalr	a5
    delete mutexHead;
    800068ec:	0284b503          	ld	a0,40(s1)
    800068f0:	00050863          	beqz	a0,80006900 <_ZN9BufferCPPD1Ev+0xec>
    800068f4:	00053783          	ld	a5,0(a0)
    800068f8:	0087b783          	ld	a5,8(a5)
    800068fc:	000780e7          	jalr	a5
}
    80006900:	01813083          	ld	ra,24(sp)
    80006904:	01013403          	ld	s0,16(sp)
    80006908:	00813483          	ld	s1,8(sp)
    8000690c:	02010113          	addi	sp,sp,32
    80006910:	00008067          	ret

0000000080006914 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80006914:	ff010113          	addi	sp,sp,-16
    80006918:	00113423          	sd	ra,8(sp)
    8000691c:	00813023          	sd	s0,0(sp)
    80006920:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus");
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
    80006924:	fffff097          	auipc	ra,0xfffff
    80006928:	2c8080e7          	jalr	712(ra) # 80005bec <_Z29producerConsumer_CPP_Sync_APIv>

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    8000692c:	00813083          	ld	ra,8(sp)
    80006930:	00013403          	ld	s0,0(sp)
    80006934:	01010113          	addi	sp,sp,16
    80006938:	00008067          	ret

000000008000693c <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    8000693c:	fe010113          	addi	sp,sp,-32
    80006940:	00113c23          	sd	ra,24(sp)
    80006944:	00813823          	sd	s0,16(sp)
    80006948:	00913423          	sd	s1,8(sp)
    8000694c:	01213023          	sd	s2,0(sp)
    80006950:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006954:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006958:	00600493          	li	s1,6
    while (--i > 0) {
    8000695c:	fff4849b          	addiw	s1,s1,-1
    80006960:	04905463          	blez	s1,800069a8 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80006964:	00003517          	auipc	a0,0x3
    80006968:	bc450513          	addi	a0,a0,-1084 # 80009528 <CONSOLE_STATUS+0x518>
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	904080e7          	jalr	-1788(ra) # 80006270 <_Z11printStringPKc>
        printInt(sleep_time);
    80006974:	00000613          	li	a2,0
    80006978:	00a00593          	li	a1,10
    8000697c:	0009051b          	sext.w	a0,s2
    80006980:	00000097          	auipc	ra,0x0
    80006984:	a88080e7          	jalr	-1400(ra) # 80006408 <_Z8printIntiii>
        printString(" !\n");
    80006988:	00003517          	auipc	a0,0x3
    8000698c:	ba850513          	addi	a0,a0,-1112 # 80009530 <CONSOLE_STATUS+0x520>
    80006990:	00000097          	auipc	ra,0x0
    80006994:	8e0080e7          	jalr	-1824(ra) # 80006270 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006998:	00090513          	mv	a0,s2
    8000699c:	ffffb097          	auipc	ra,0xffffb
    800069a0:	a9c080e7          	jalr	-1380(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    800069a4:	fb9ff06f          	j	8000695c <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800069a8:	00a00793          	li	a5,10
    800069ac:	02f95933          	divu	s2,s2,a5
    800069b0:	fff90913          	addi	s2,s2,-1
    800069b4:	00009797          	auipc	a5,0x9
    800069b8:	4dc78793          	addi	a5,a5,1244 # 8000fe90 <finished>
    800069bc:	01278933          	add	s2,a5,s2
    800069c0:	00100793          	li	a5,1
    800069c4:	00f90023          	sb	a5,0(s2)
}
    800069c8:	01813083          	ld	ra,24(sp)
    800069cc:	01013403          	ld	s0,16(sp)
    800069d0:	00813483          	ld	s1,8(sp)
    800069d4:	00013903          	ld	s2,0(sp)
    800069d8:	02010113          	addi	sp,sp,32
    800069dc:	00008067          	ret

00000000800069e0 <_Z12testSleepingv>:

void testSleeping() {
    800069e0:	fc010113          	addi	sp,sp,-64
    800069e4:	02113c23          	sd	ra,56(sp)
    800069e8:	02813823          	sd	s0,48(sp)
    800069ec:	02913423          	sd	s1,40(sp)
    800069f0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800069f4:	00a00793          	li	a5,10
    800069f8:	fcf43823          	sd	a5,-48(s0)
    800069fc:	01400793          	li	a5,20
    80006a00:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006a04:	00000493          	li	s1,0
    80006a08:	02c0006f          	j	80006a34 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006a0c:	00349793          	slli	a5,s1,0x3
    80006a10:	fd040613          	addi	a2,s0,-48
    80006a14:	00f60633          	add	a2,a2,a5
    80006a18:	00000597          	auipc	a1,0x0
    80006a1c:	f2458593          	addi	a1,a1,-220 # 8000693c <_Z9sleepyRunPv>
    80006a20:	fc040513          	addi	a0,s0,-64
    80006a24:	00f50533          	add	a0,a0,a5
    80006a28:	ffffb097          	auipc	ra,0xffffb
    80006a2c:	88c080e7          	jalr	-1908(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006a30:	0014849b          	addiw	s1,s1,1
    80006a34:	00100793          	li	a5,1
    80006a38:	fc97dae3          	bge	a5,s1,80006a0c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006a3c:	00009797          	auipc	a5,0x9
    80006a40:	4547c783          	lbu	a5,1108(a5) # 8000fe90 <finished>
    80006a44:	fe078ce3          	beqz	a5,80006a3c <_Z12testSleepingv+0x5c>
    80006a48:	00009797          	auipc	a5,0x9
    80006a4c:	4497c783          	lbu	a5,1097(a5) # 8000fe91 <finished+0x1>
    80006a50:	fe0786e3          	beqz	a5,80006a3c <_Z12testSleepingv+0x5c>
    80006a54:	03813083          	ld	ra,56(sp)
    80006a58:	03013403          	ld	s0,48(sp)
    80006a5c:	02813483          	ld	s1,40(sp)
    80006a60:	04010113          	addi	sp,sp,64
    80006a64:	00008067          	ret

0000000080006a68 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006a68:	fe010113          	addi	sp,sp,-32
    80006a6c:	00113c23          	sd	ra,24(sp)
    80006a70:	00813823          	sd	s0,16(sp)
    80006a74:	00913423          	sd	s1,8(sp)
    80006a78:	01213023          	sd	s2,0(sp)
    80006a7c:	02010413          	addi	s0,sp,32
    80006a80:	00050493          	mv	s1,a0
    80006a84:	00058913          	mv	s2,a1
    80006a88:	0015879b          	addiw	a5,a1,1
    80006a8c:	0007851b          	sext.w	a0,a5
    80006a90:	00f4a023          	sw	a5,0(s1)
    80006a94:	0004a823          	sw	zero,16(s1)
    80006a98:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006a9c:	00251513          	slli	a0,a0,0x2
    80006aa0:	ffffa097          	auipc	ra,0xffffa
    80006aa4:	7b8080e7          	jalr	1976(ra) # 80001258 <mem_alloc>
    80006aa8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006aac:	00000593          	li	a1,0
    80006ab0:	02048513          	addi	a0,s1,32
    80006ab4:	ffffb097          	auipc	ra,0xffffb
    80006ab8:	8c8080e7          	jalr	-1848(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006abc:	00090593          	mv	a1,s2
    80006ac0:	01848513          	addi	a0,s1,24
    80006ac4:	ffffb097          	auipc	ra,0xffffb
    80006ac8:	8b8080e7          	jalr	-1864(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80006acc:	00100593          	li	a1,1
    80006ad0:	02848513          	addi	a0,s1,40
    80006ad4:	ffffb097          	auipc	ra,0xffffb
    80006ad8:	8a8080e7          	jalr	-1880(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80006adc:	00100593          	li	a1,1
    80006ae0:	03048513          	addi	a0,s1,48
    80006ae4:	ffffb097          	auipc	ra,0xffffb
    80006ae8:	898080e7          	jalr	-1896(ra) # 8000137c <sem_open>
}
    80006aec:	01813083          	ld	ra,24(sp)
    80006af0:	01013403          	ld	s0,16(sp)
    80006af4:	00813483          	ld	s1,8(sp)
    80006af8:	00013903          	ld	s2,0(sp)
    80006afc:	02010113          	addi	sp,sp,32
    80006b00:	00008067          	ret

0000000080006b04 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006b04:	fe010113          	addi	sp,sp,-32
    80006b08:	00113c23          	sd	ra,24(sp)
    80006b0c:	00813823          	sd	s0,16(sp)
    80006b10:	00913423          	sd	s1,8(sp)
    80006b14:	01213023          	sd	s2,0(sp)
    80006b18:	02010413          	addi	s0,sp,32
    80006b1c:	00050493          	mv	s1,a0
    80006b20:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006b24:	01853503          	ld	a0,24(a0)
    80006b28:	ffffb097          	auipc	ra,0xffffb
    80006b2c:	8b8080e7          	jalr	-1864(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80006b30:	0304b503          	ld	a0,48(s1)
    80006b34:	ffffb097          	auipc	ra,0xffffb
    80006b38:	8ac080e7          	jalr	-1876(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80006b3c:	0084b783          	ld	a5,8(s1)
    80006b40:	0144a703          	lw	a4,20(s1)
    80006b44:	00271713          	slli	a4,a4,0x2
    80006b48:	00e787b3          	add	a5,a5,a4
    80006b4c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006b50:	0144a783          	lw	a5,20(s1)
    80006b54:	0017879b          	addiw	a5,a5,1
    80006b58:	0004a703          	lw	a4,0(s1)
    80006b5c:	02e7e7bb          	remw	a5,a5,a4
    80006b60:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006b64:	0304b503          	ld	a0,48(s1)
    80006b68:	ffffb097          	auipc	ra,0xffffb
    80006b6c:	8a4080e7          	jalr	-1884(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80006b70:	0204b503          	ld	a0,32(s1)
    80006b74:	ffffb097          	auipc	ra,0xffffb
    80006b78:	898080e7          	jalr	-1896(ra) # 8000140c <sem_signal>

}
    80006b7c:	01813083          	ld	ra,24(sp)
    80006b80:	01013403          	ld	s0,16(sp)
    80006b84:	00813483          	ld	s1,8(sp)
    80006b88:	00013903          	ld	s2,0(sp)
    80006b8c:	02010113          	addi	sp,sp,32
    80006b90:	00008067          	ret

0000000080006b94 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006b94:	fe010113          	addi	sp,sp,-32
    80006b98:	00113c23          	sd	ra,24(sp)
    80006b9c:	00813823          	sd	s0,16(sp)
    80006ba0:	00913423          	sd	s1,8(sp)
    80006ba4:	01213023          	sd	s2,0(sp)
    80006ba8:	02010413          	addi	s0,sp,32
    80006bac:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006bb0:	02053503          	ld	a0,32(a0)
    80006bb4:	ffffb097          	auipc	ra,0xffffb
    80006bb8:	82c080e7          	jalr	-2004(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80006bbc:	0284b503          	ld	a0,40(s1)
    80006bc0:	ffffb097          	auipc	ra,0xffffb
    80006bc4:	820080e7          	jalr	-2016(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80006bc8:	0084b703          	ld	a4,8(s1)
    80006bcc:	0104a783          	lw	a5,16(s1)
    80006bd0:	00279693          	slli	a3,a5,0x2
    80006bd4:	00d70733          	add	a4,a4,a3
    80006bd8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006bdc:	0017879b          	addiw	a5,a5,1
    80006be0:	0004a703          	lw	a4,0(s1)
    80006be4:	02e7e7bb          	remw	a5,a5,a4
    80006be8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006bec:	0284b503          	ld	a0,40(s1)
    80006bf0:	ffffb097          	auipc	ra,0xffffb
    80006bf4:	81c080e7          	jalr	-2020(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80006bf8:	0184b503          	ld	a0,24(s1)
    80006bfc:	ffffb097          	auipc	ra,0xffffb
    80006c00:	810080e7          	jalr	-2032(ra) # 8000140c <sem_signal>

    return ret;
}
    80006c04:	00090513          	mv	a0,s2
    80006c08:	01813083          	ld	ra,24(sp)
    80006c0c:	01013403          	ld	s0,16(sp)
    80006c10:	00813483          	ld	s1,8(sp)
    80006c14:	00013903          	ld	s2,0(sp)
    80006c18:	02010113          	addi	sp,sp,32
    80006c1c:	00008067          	ret

0000000080006c20 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt()
{
    80006c20:	fe010113          	addi	sp,sp,-32
    80006c24:	00113c23          	sd	ra,24(sp)
    80006c28:	00813823          	sd	s0,16(sp)
    80006c2c:	00913423          	sd	s1,8(sp)
    80006c30:	01213023          	sd	s2,0(sp)
    80006c34:	02010413          	addi	s0,sp,32
    80006c38:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006c3c:	02853503          	ld	a0,40(a0)
    80006c40:	ffffa097          	auipc	ra,0xffffa
    80006c44:	7a0080e7          	jalr	1952(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    80006c48:	0304b503          	ld	a0,48(s1)
    80006c4c:	ffffa097          	auipc	ra,0xffffa
    80006c50:	794080e7          	jalr	1940(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    80006c54:	0144a783          	lw	a5,20(s1)
    80006c58:	0104a903          	lw	s2,16(s1)
    80006c5c:	0327ce63          	blt	a5,s2,80006c98 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006c60:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006c64:	0304b503          	ld	a0,48(s1)
    80006c68:	ffffa097          	auipc	ra,0xffffa
    80006c6c:	7a4080e7          	jalr	1956(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    80006c70:	0284b503          	ld	a0,40(s1)
    80006c74:	ffffa097          	auipc	ra,0xffffa
    80006c78:	798080e7          	jalr	1944(ra) # 8000140c <sem_signal>

    return ret;
}
    80006c7c:	00090513          	mv	a0,s2
    80006c80:	01813083          	ld	ra,24(sp)
    80006c84:	01013403          	ld	s0,16(sp)
    80006c88:	00813483          	ld	s1,8(sp)
    80006c8c:	00013903          	ld	s2,0(sp)
    80006c90:	02010113          	addi	sp,sp,32
    80006c94:	00008067          	ret
        ret = cap - head + tail;
    80006c98:	0004a703          	lw	a4,0(s1)
    80006c9c:	4127093b          	subw	s2,a4,s2
    80006ca0:	00f9093b          	addw	s2,s2,a5
    80006ca4:	fc1ff06f          	j	80006c64 <_ZN6Buffer6getCntEv+0x44>

0000000080006ca8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006ca8:	fe010113          	addi	sp,sp,-32
    80006cac:	00113c23          	sd	ra,24(sp)
    80006cb0:	00813823          	sd	s0,16(sp)
    80006cb4:	00913423          	sd	s1,8(sp)
    80006cb8:	02010413          	addi	s0,sp,32
    80006cbc:	00050493          	mv	s1,a0
    putc('\n');
    80006cc0:	00a00513          	li	a0,10
    80006cc4:	ffffb097          	auipc	ra,0xffffb
    80006cc8:	874080e7          	jalr	-1932(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    80006ccc:	00003517          	auipc	a0,0x3
    80006cd0:	84450513          	addi	a0,a0,-1980 # 80009510 <CONSOLE_STATUS+0x500>
    80006cd4:	fffff097          	auipc	ra,0xfffff
    80006cd8:	59c080e7          	jalr	1436(ra) # 80006270 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006cdc:	00048513          	mv	a0,s1
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	f40080e7          	jalr	-192(ra) # 80006c20 <_ZN6Buffer6getCntEv>
    80006ce8:	02a05c63          	blez	a0,80006d20 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006cec:	0084b783          	ld	a5,8(s1)
    80006cf0:	0104a703          	lw	a4,16(s1)
    80006cf4:	00271713          	slli	a4,a4,0x2
    80006cf8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006cfc:	0007c503          	lbu	a0,0(a5)
    80006d00:	ffffb097          	auipc	ra,0xffffb
    80006d04:	838080e7          	jalr	-1992(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    80006d08:	0104a783          	lw	a5,16(s1)
    80006d0c:	0017879b          	addiw	a5,a5,1
    80006d10:	0004a703          	lw	a4,0(s1)
    80006d14:	02e7e7bb          	remw	a5,a5,a4
    80006d18:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006d1c:	fc1ff06f          	j	80006cdc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006d20:	02100513          	li	a0,33
    80006d24:	ffffb097          	auipc	ra,0xffffb
    80006d28:	814080e7          	jalr	-2028(ra) # 80001538 <putc>
    putc('\n');
    80006d2c:	00a00513          	li	a0,10
    80006d30:	ffffb097          	auipc	ra,0xffffb
    80006d34:	808080e7          	jalr	-2040(ra) # 80001538 <putc>
    mem_free(buffer);
    80006d38:	0084b503          	ld	a0,8(s1)
    80006d3c:	ffffa097          	auipc	ra,0xffffa
    80006d40:	54c080e7          	jalr	1356(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    80006d44:	0204b503          	ld	a0,32(s1)
    80006d48:	ffffa097          	auipc	ra,0xffffa
    80006d4c:	66c080e7          	jalr	1644(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80006d50:	0184b503          	ld	a0,24(s1)
    80006d54:	ffffa097          	auipc	ra,0xffffa
    80006d58:	660080e7          	jalr	1632(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80006d5c:	0304b503          	ld	a0,48(s1)
    80006d60:	ffffa097          	auipc	ra,0xffffa
    80006d64:	654080e7          	jalr	1620(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80006d68:	0284b503          	ld	a0,40(s1)
    80006d6c:	ffffa097          	auipc	ra,0xffffa
    80006d70:	648080e7          	jalr	1608(ra) # 800013b4 <sem_close>
}
    80006d74:	01813083          	ld	ra,24(sp)
    80006d78:	01013403          	ld	s0,16(sp)
    80006d7c:	00813483          	ld	s1,8(sp)
    80006d80:	02010113          	addi	sp,sp,32
    80006d84:	00008067          	ret

0000000080006d88 <start>:
    80006d88:	ff010113          	addi	sp,sp,-16
    80006d8c:	00813423          	sd	s0,8(sp)
    80006d90:	01010413          	addi	s0,sp,16
    80006d94:	300027f3          	csrr	a5,mstatus
    80006d98:	ffffe737          	lui	a4,0xffffe
    80006d9c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed6ff>
    80006da0:	00e7f7b3          	and	a5,a5,a4
    80006da4:	00001737          	lui	a4,0x1
    80006da8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006dac:	00e7e7b3          	or	a5,a5,a4
    80006db0:	30079073          	csrw	mstatus,a5
    80006db4:	00000797          	auipc	a5,0x0
    80006db8:	16078793          	addi	a5,a5,352 # 80006f14 <system_main>
    80006dbc:	34179073          	csrw	mepc,a5
    80006dc0:	00000793          	li	a5,0
    80006dc4:	18079073          	csrw	satp,a5
    80006dc8:	000107b7          	lui	a5,0x10
    80006dcc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006dd0:	30279073          	csrw	medeleg,a5
    80006dd4:	30379073          	csrw	mideleg,a5
    80006dd8:	104027f3          	csrr	a5,sie
    80006ddc:	2227e793          	ori	a5,a5,546
    80006de0:	10479073          	csrw	sie,a5
    80006de4:	fff00793          	li	a5,-1
    80006de8:	00a7d793          	srli	a5,a5,0xa
    80006dec:	3b079073          	csrw	pmpaddr0,a5
    80006df0:	00f00793          	li	a5,15
    80006df4:	3a079073          	csrw	pmpcfg0,a5
    80006df8:	f14027f3          	csrr	a5,mhartid
    80006dfc:	0200c737          	lui	a4,0x200c
    80006e00:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006e04:	0007869b          	sext.w	a3,a5
    80006e08:	00269713          	slli	a4,a3,0x2
    80006e0c:	000f4637          	lui	a2,0xf4
    80006e10:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006e14:	00d70733          	add	a4,a4,a3
    80006e18:	0037979b          	slliw	a5,a5,0x3
    80006e1c:	020046b7          	lui	a3,0x2004
    80006e20:	00d787b3          	add	a5,a5,a3
    80006e24:	00c585b3          	add	a1,a1,a2
    80006e28:	00371693          	slli	a3,a4,0x3
    80006e2c:	00009717          	auipc	a4,0x9
    80006e30:	07470713          	addi	a4,a4,116 # 8000fea0 <timer_scratch>
    80006e34:	00b7b023          	sd	a1,0(a5)
    80006e38:	00d70733          	add	a4,a4,a3
    80006e3c:	00f73c23          	sd	a5,24(a4)
    80006e40:	02c73023          	sd	a2,32(a4)
    80006e44:	34071073          	csrw	mscratch,a4
    80006e48:	00000797          	auipc	a5,0x0
    80006e4c:	6e878793          	addi	a5,a5,1768 # 80007530 <timervec>
    80006e50:	30579073          	csrw	mtvec,a5
    80006e54:	300027f3          	csrr	a5,mstatus
    80006e58:	0087e793          	ori	a5,a5,8
    80006e5c:	30079073          	csrw	mstatus,a5
    80006e60:	304027f3          	csrr	a5,mie
    80006e64:	0807e793          	ori	a5,a5,128
    80006e68:	30479073          	csrw	mie,a5
    80006e6c:	f14027f3          	csrr	a5,mhartid
    80006e70:	0007879b          	sext.w	a5,a5
    80006e74:	00078213          	mv	tp,a5
    80006e78:	30200073          	mret
    80006e7c:	00813403          	ld	s0,8(sp)
    80006e80:	01010113          	addi	sp,sp,16
    80006e84:	00008067          	ret

0000000080006e88 <timerinit>:
    80006e88:	ff010113          	addi	sp,sp,-16
    80006e8c:	00813423          	sd	s0,8(sp)
    80006e90:	01010413          	addi	s0,sp,16
    80006e94:	f14027f3          	csrr	a5,mhartid
    80006e98:	0200c737          	lui	a4,0x200c
    80006e9c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006ea0:	0007869b          	sext.w	a3,a5
    80006ea4:	00269713          	slli	a4,a3,0x2
    80006ea8:	000f4637          	lui	a2,0xf4
    80006eac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006eb0:	00d70733          	add	a4,a4,a3
    80006eb4:	0037979b          	slliw	a5,a5,0x3
    80006eb8:	020046b7          	lui	a3,0x2004
    80006ebc:	00d787b3          	add	a5,a5,a3
    80006ec0:	00c585b3          	add	a1,a1,a2
    80006ec4:	00371693          	slli	a3,a4,0x3
    80006ec8:	00009717          	auipc	a4,0x9
    80006ecc:	fd870713          	addi	a4,a4,-40 # 8000fea0 <timer_scratch>
    80006ed0:	00b7b023          	sd	a1,0(a5)
    80006ed4:	00d70733          	add	a4,a4,a3
    80006ed8:	00f73c23          	sd	a5,24(a4)
    80006edc:	02c73023          	sd	a2,32(a4)
    80006ee0:	34071073          	csrw	mscratch,a4
    80006ee4:	00000797          	auipc	a5,0x0
    80006ee8:	64c78793          	addi	a5,a5,1612 # 80007530 <timervec>
    80006eec:	30579073          	csrw	mtvec,a5
    80006ef0:	300027f3          	csrr	a5,mstatus
    80006ef4:	0087e793          	ori	a5,a5,8
    80006ef8:	30079073          	csrw	mstatus,a5
    80006efc:	304027f3          	csrr	a5,mie
    80006f00:	0807e793          	ori	a5,a5,128
    80006f04:	30479073          	csrw	mie,a5
    80006f08:	00813403          	ld	s0,8(sp)
    80006f0c:	01010113          	addi	sp,sp,16
    80006f10:	00008067          	ret

0000000080006f14 <system_main>:
    80006f14:	fe010113          	addi	sp,sp,-32
    80006f18:	00813823          	sd	s0,16(sp)
    80006f1c:	00913423          	sd	s1,8(sp)
    80006f20:	00113c23          	sd	ra,24(sp)
    80006f24:	02010413          	addi	s0,sp,32
    80006f28:	00000097          	auipc	ra,0x0
    80006f2c:	0c4080e7          	jalr	196(ra) # 80006fec <cpuid>
    80006f30:	00005497          	auipc	s1,0x5
    80006f34:	e4048493          	addi	s1,s1,-448 # 8000bd70 <started>
    80006f38:	02050263          	beqz	a0,80006f5c <system_main+0x48>
    80006f3c:	0004a783          	lw	a5,0(s1)
    80006f40:	0007879b          	sext.w	a5,a5
    80006f44:	fe078ce3          	beqz	a5,80006f3c <system_main+0x28>
    80006f48:	0ff0000f          	fence
    80006f4c:	00002517          	auipc	a0,0x2
    80006f50:	61c50513          	addi	a0,a0,1564 # 80009568 <CONSOLE_STATUS+0x558>
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	a78080e7          	jalr	-1416(ra) # 800079cc <panic>
    80006f5c:	00001097          	auipc	ra,0x1
    80006f60:	9cc080e7          	jalr	-1588(ra) # 80007928 <consoleinit>
    80006f64:	00001097          	auipc	ra,0x1
    80006f68:	158080e7          	jalr	344(ra) # 800080bc <printfinit>
    80006f6c:	00002517          	auipc	a0,0x2
    80006f70:	18c50513          	addi	a0,a0,396 # 800090f8 <CONSOLE_STATUS+0xe8>
    80006f74:	00001097          	auipc	ra,0x1
    80006f78:	ab4080e7          	jalr	-1356(ra) # 80007a28 <__printf>
    80006f7c:	00002517          	auipc	a0,0x2
    80006f80:	5bc50513          	addi	a0,a0,1468 # 80009538 <CONSOLE_STATUS+0x528>
    80006f84:	00001097          	auipc	ra,0x1
    80006f88:	aa4080e7          	jalr	-1372(ra) # 80007a28 <__printf>
    80006f8c:	00002517          	auipc	a0,0x2
    80006f90:	16c50513          	addi	a0,a0,364 # 800090f8 <CONSOLE_STATUS+0xe8>
    80006f94:	00001097          	auipc	ra,0x1
    80006f98:	a94080e7          	jalr	-1388(ra) # 80007a28 <__printf>
    80006f9c:	00001097          	auipc	ra,0x1
    80006fa0:	4ac080e7          	jalr	1196(ra) # 80008448 <kinit>
    80006fa4:	00000097          	auipc	ra,0x0
    80006fa8:	148080e7          	jalr	328(ra) # 800070ec <trapinit>
    80006fac:	00000097          	auipc	ra,0x0
    80006fb0:	16c080e7          	jalr	364(ra) # 80007118 <trapinithart>
    80006fb4:	00000097          	auipc	ra,0x0
    80006fb8:	5bc080e7          	jalr	1468(ra) # 80007570 <plicinit>
    80006fbc:	00000097          	auipc	ra,0x0
    80006fc0:	5dc080e7          	jalr	1500(ra) # 80007598 <plicinithart>
    80006fc4:	00000097          	auipc	ra,0x0
    80006fc8:	078080e7          	jalr	120(ra) # 8000703c <userinit>
    80006fcc:	0ff0000f          	fence
    80006fd0:	00100793          	li	a5,1
    80006fd4:	00002517          	auipc	a0,0x2
    80006fd8:	57c50513          	addi	a0,a0,1404 # 80009550 <CONSOLE_STATUS+0x540>
    80006fdc:	00f4a023          	sw	a5,0(s1)
    80006fe0:	00001097          	auipc	ra,0x1
    80006fe4:	a48080e7          	jalr	-1464(ra) # 80007a28 <__printf>
    80006fe8:	0000006f          	j	80006fe8 <system_main+0xd4>

0000000080006fec <cpuid>:
    80006fec:	ff010113          	addi	sp,sp,-16
    80006ff0:	00813423          	sd	s0,8(sp)
    80006ff4:	01010413          	addi	s0,sp,16
    80006ff8:	00020513          	mv	a0,tp
    80006ffc:	00813403          	ld	s0,8(sp)
    80007000:	0005051b          	sext.w	a0,a0
    80007004:	01010113          	addi	sp,sp,16
    80007008:	00008067          	ret

000000008000700c <mycpu>:
    8000700c:	ff010113          	addi	sp,sp,-16
    80007010:	00813423          	sd	s0,8(sp)
    80007014:	01010413          	addi	s0,sp,16
    80007018:	00020793          	mv	a5,tp
    8000701c:	00813403          	ld	s0,8(sp)
    80007020:	0007879b          	sext.w	a5,a5
    80007024:	00779793          	slli	a5,a5,0x7
    80007028:	0000a517          	auipc	a0,0xa
    8000702c:	ea850513          	addi	a0,a0,-344 # 80010ed0 <cpus>
    80007030:	00f50533          	add	a0,a0,a5
    80007034:	01010113          	addi	sp,sp,16
    80007038:	00008067          	ret

000000008000703c <userinit>:
    8000703c:	ff010113          	addi	sp,sp,-16
    80007040:	00813423          	sd	s0,8(sp)
    80007044:	01010413          	addi	s0,sp,16
    80007048:	00813403          	ld	s0,8(sp)
    8000704c:	01010113          	addi	sp,sp,16
    80007050:	ffffc317          	auipc	t1,0xffffc
    80007054:	27430067          	jr	628(t1) # 800032c4 <main>

0000000080007058 <either_copyout>:
    80007058:	ff010113          	addi	sp,sp,-16
    8000705c:	00813023          	sd	s0,0(sp)
    80007060:	00113423          	sd	ra,8(sp)
    80007064:	01010413          	addi	s0,sp,16
    80007068:	02051663          	bnez	a0,80007094 <either_copyout+0x3c>
    8000706c:	00058513          	mv	a0,a1
    80007070:	00060593          	mv	a1,a2
    80007074:	0006861b          	sext.w	a2,a3
    80007078:	00002097          	auipc	ra,0x2
    8000707c:	c5c080e7          	jalr	-932(ra) # 80008cd4 <__memmove>
    80007080:	00813083          	ld	ra,8(sp)
    80007084:	00013403          	ld	s0,0(sp)
    80007088:	00000513          	li	a0,0
    8000708c:	01010113          	addi	sp,sp,16
    80007090:	00008067          	ret
    80007094:	00002517          	auipc	a0,0x2
    80007098:	4fc50513          	addi	a0,a0,1276 # 80009590 <CONSOLE_STATUS+0x580>
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	930080e7          	jalr	-1744(ra) # 800079cc <panic>

00000000800070a4 <either_copyin>:
    800070a4:	ff010113          	addi	sp,sp,-16
    800070a8:	00813023          	sd	s0,0(sp)
    800070ac:	00113423          	sd	ra,8(sp)
    800070b0:	01010413          	addi	s0,sp,16
    800070b4:	02059463          	bnez	a1,800070dc <either_copyin+0x38>
    800070b8:	00060593          	mv	a1,a2
    800070bc:	0006861b          	sext.w	a2,a3
    800070c0:	00002097          	auipc	ra,0x2
    800070c4:	c14080e7          	jalr	-1004(ra) # 80008cd4 <__memmove>
    800070c8:	00813083          	ld	ra,8(sp)
    800070cc:	00013403          	ld	s0,0(sp)
    800070d0:	00000513          	li	a0,0
    800070d4:	01010113          	addi	sp,sp,16
    800070d8:	00008067          	ret
    800070dc:	00002517          	auipc	a0,0x2
    800070e0:	4dc50513          	addi	a0,a0,1244 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800070e4:	00001097          	auipc	ra,0x1
    800070e8:	8e8080e7          	jalr	-1816(ra) # 800079cc <panic>

00000000800070ec <trapinit>:
    800070ec:	ff010113          	addi	sp,sp,-16
    800070f0:	00813423          	sd	s0,8(sp)
    800070f4:	01010413          	addi	s0,sp,16
    800070f8:	00813403          	ld	s0,8(sp)
    800070fc:	00002597          	auipc	a1,0x2
    80007100:	4e458593          	addi	a1,a1,1252 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80007104:	0000a517          	auipc	a0,0xa
    80007108:	e4c50513          	addi	a0,a0,-436 # 80010f50 <tickslock>
    8000710c:	01010113          	addi	sp,sp,16
    80007110:	00001317          	auipc	t1,0x1
    80007114:	5c830067          	jr	1480(t1) # 800086d8 <initlock>

0000000080007118 <trapinithart>:
    80007118:	ff010113          	addi	sp,sp,-16
    8000711c:	00813423          	sd	s0,8(sp)
    80007120:	01010413          	addi	s0,sp,16
    80007124:	00000797          	auipc	a5,0x0
    80007128:	2fc78793          	addi	a5,a5,764 # 80007420 <kernelvec>
    8000712c:	10579073          	csrw	stvec,a5
    80007130:	00813403          	ld	s0,8(sp)
    80007134:	01010113          	addi	sp,sp,16
    80007138:	00008067          	ret

000000008000713c <usertrap>:
    8000713c:	ff010113          	addi	sp,sp,-16
    80007140:	00813423          	sd	s0,8(sp)
    80007144:	01010413          	addi	s0,sp,16
    80007148:	00813403          	ld	s0,8(sp)
    8000714c:	01010113          	addi	sp,sp,16
    80007150:	00008067          	ret

0000000080007154 <usertrapret>:
    80007154:	ff010113          	addi	sp,sp,-16
    80007158:	00813423          	sd	s0,8(sp)
    8000715c:	01010413          	addi	s0,sp,16
    80007160:	00813403          	ld	s0,8(sp)
    80007164:	01010113          	addi	sp,sp,16
    80007168:	00008067          	ret

000000008000716c <kerneltrap>:
    8000716c:	fe010113          	addi	sp,sp,-32
    80007170:	00813823          	sd	s0,16(sp)
    80007174:	00113c23          	sd	ra,24(sp)
    80007178:	00913423          	sd	s1,8(sp)
    8000717c:	02010413          	addi	s0,sp,32
    80007180:	142025f3          	csrr	a1,scause
    80007184:	100027f3          	csrr	a5,sstatus
    80007188:	0027f793          	andi	a5,a5,2
    8000718c:	10079c63          	bnez	a5,800072a4 <kerneltrap+0x138>
    80007190:	142027f3          	csrr	a5,scause
    80007194:	0207ce63          	bltz	a5,800071d0 <kerneltrap+0x64>
    80007198:	00002517          	auipc	a0,0x2
    8000719c:	49050513          	addi	a0,a0,1168 # 80009628 <CONSOLE_STATUS+0x618>
    800071a0:	00001097          	auipc	ra,0x1
    800071a4:	888080e7          	jalr	-1912(ra) # 80007a28 <__printf>
    800071a8:	141025f3          	csrr	a1,sepc
    800071ac:	14302673          	csrr	a2,stval
    800071b0:	00002517          	auipc	a0,0x2
    800071b4:	48850513          	addi	a0,a0,1160 # 80009638 <CONSOLE_STATUS+0x628>
    800071b8:	00001097          	auipc	ra,0x1
    800071bc:	870080e7          	jalr	-1936(ra) # 80007a28 <__printf>
    800071c0:	00002517          	auipc	a0,0x2
    800071c4:	49050513          	addi	a0,a0,1168 # 80009650 <CONSOLE_STATUS+0x640>
    800071c8:	00001097          	auipc	ra,0x1
    800071cc:	804080e7          	jalr	-2044(ra) # 800079cc <panic>
    800071d0:	0ff7f713          	andi	a4,a5,255
    800071d4:	00900693          	li	a3,9
    800071d8:	04d70063          	beq	a4,a3,80007218 <kerneltrap+0xac>
    800071dc:	fff00713          	li	a4,-1
    800071e0:	03f71713          	slli	a4,a4,0x3f
    800071e4:	00170713          	addi	a4,a4,1
    800071e8:	fae798e3          	bne	a5,a4,80007198 <kerneltrap+0x2c>
    800071ec:	00000097          	auipc	ra,0x0
    800071f0:	e00080e7          	jalr	-512(ra) # 80006fec <cpuid>
    800071f4:	06050663          	beqz	a0,80007260 <kerneltrap+0xf4>
    800071f8:	144027f3          	csrr	a5,sip
    800071fc:	ffd7f793          	andi	a5,a5,-3
    80007200:	14479073          	csrw	sip,a5
    80007204:	01813083          	ld	ra,24(sp)
    80007208:	01013403          	ld	s0,16(sp)
    8000720c:	00813483          	ld	s1,8(sp)
    80007210:	02010113          	addi	sp,sp,32
    80007214:	00008067          	ret
    80007218:	00000097          	auipc	ra,0x0
    8000721c:	3cc080e7          	jalr	972(ra) # 800075e4 <plic_claim>
    80007220:	00a00793          	li	a5,10
    80007224:	00050493          	mv	s1,a0
    80007228:	06f50863          	beq	a0,a5,80007298 <kerneltrap+0x12c>
    8000722c:	fc050ce3          	beqz	a0,80007204 <kerneltrap+0x98>
    80007230:	00050593          	mv	a1,a0
    80007234:	00002517          	auipc	a0,0x2
    80007238:	3d450513          	addi	a0,a0,980 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000723c:	00000097          	auipc	ra,0x0
    80007240:	7ec080e7          	jalr	2028(ra) # 80007a28 <__printf>
    80007244:	01013403          	ld	s0,16(sp)
    80007248:	01813083          	ld	ra,24(sp)
    8000724c:	00048513          	mv	a0,s1
    80007250:	00813483          	ld	s1,8(sp)
    80007254:	02010113          	addi	sp,sp,32
    80007258:	00000317          	auipc	t1,0x0
    8000725c:	3c430067          	jr	964(t1) # 8000761c <plic_complete>
    80007260:	0000a517          	auipc	a0,0xa
    80007264:	cf050513          	addi	a0,a0,-784 # 80010f50 <tickslock>
    80007268:	00001097          	auipc	ra,0x1
    8000726c:	494080e7          	jalr	1172(ra) # 800086fc <acquire>
    80007270:	00005717          	auipc	a4,0x5
    80007274:	b0470713          	addi	a4,a4,-1276 # 8000bd74 <ticks>
    80007278:	00072783          	lw	a5,0(a4)
    8000727c:	0000a517          	auipc	a0,0xa
    80007280:	cd450513          	addi	a0,a0,-812 # 80010f50 <tickslock>
    80007284:	0017879b          	addiw	a5,a5,1
    80007288:	00f72023          	sw	a5,0(a4)
    8000728c:	00001097          	auipc	ra,0x1
    80007290:	53c080e7          	jalr	1340(ra) # 800087c8 <release>
    80007294:	f65ff06f          	j	800071f8 <kerneltrap+0x8c>
    80007298:	00001097          	auipc	ra,0x1
    8000729c:	098080e7          	jalr	152(ra) # 80008330 <uartintr>
    800072a0:	fa5ff06f          	j	80007244 <kerneltrap+0xd8>
    800072a4:	00002517          	auipc	a0,0x2
    800072a8:	34450513          	addi	a0,a0,836 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800072ac:	00000097          	auipc	ra,0x0
    800072b0:	720080e7          	jalr	1824(ra) # 800079cc <panic>

00000000800072b4 <clockintr>:
    800072b4:	fe010113          	addi	sp,sp,-32
    800072b8:	00813823          	sd	s0,16(sp)
    800072bc:	00913423          	sd	s1,8(sp)
    800072c0:	00113c23          	sd	ra,24(sp)
    800072c4:	02010413          	addi	s0,sp,32
    800072c8:	0000a497          	auipc	s1,0xa
    800072cc:	c8848493          	addi	s1,s1,-888 # 80010f50 <tickslock>
    800072d0:	00048513          	mv	a0,s1
    800072d4:	00001097          	auipc	ra,0x1
    800072d8:	428080e7          	jalr	1064(ra) # 800086fc <acquire>
    800072dc:	00005717          	auipc	a4,0x5
    800072e0:	a9870713          	addi	a4,a4,-1384 # 8000bd74 <ticks>
    800072e4:	00072783          	lw	a5,0(a4)
    800072e8:	01013403          	ld	s0,16(sp)
    800072ec:	01813083          	ld	ra,24(sp)
    800072f0:	00048513          	mv	a0,s1
    800072f4:	0017879b          	addiw	a5,a5,1
    800072f8:	00813483          	ld	s1,8(sp)
    800072fc:	00f72023          	sw	a5,0(a4)
    80007300:	02010113          	addi	sp,sp,32
    80007304:	00001317          	auipc	t1,0x1
    80007308:	4c430067          	jr	1220(t1) # 800087c8 <release>

000000008000730c <devintr>:
    8000730c:	142027f3          	csrr	a5,scause
    80007310:	00000513          	li	a0,0
    80007314:	0007c463          	bltz	a5,8000731c <devintr+0x10>
    80007318:	00008067          	ret
    8000731c:	fe010113          	addi	sp,sp,-32
    80007320:	00813823          	sd	s0,16(sp)
    80007324:	00113c23          	sd	ra,24(sp)
    80007328:	00913423          	sd	s1,8(sp)
    8000732c:	02010413          	addi	s0,sp,32
    80007330:	0ff7f713          	andi	a4,a5,255
    80007334:	00900693          	li	a3,9
    80007338:	04d70c63          	beq	a4,a3,80007390 <devintr+0x84>
    8000733c:	fff00713          	li	a4,-1
    80007340:	03f71713          	slli	a4,a4,0x3f
    80007344:	00170713          	addi	a4,a4,1
    80007348:	00e78c63          	beq	a5,a4,80007360 <devintr+0x54>
    8000734c:	01813083          	ld	ra,24(sp)
    80007350:	01013403          	ld	s0,16(sp)
    80007354:	00813483          	ld	s1,8(sp)
    80007358:	02010113          	addi	sp,sp,32
    8000735c:	00008067          	ret
    80007360:	00000097          	auipc	ra,0x0
    80007364:	c8c080e7          	jalr	-884(ra) # 80006fec <cpuid>
    80007368:	06050663          	beqz	a0,800073d4 <devintr+0xc8>
    8000736c:	144027f3          	csrr	a5,sip
    80007370:	ffd7f793          	andi	a5,a5,-3
    80007374:	14479073          	csrw	sip,a5
    80007378:	01813083          	ld	ra,24(sp)
    8000737c:	01013403          	ld	s0,16(sp)
    80007380:	00813483          	ld	s1,8(sp)
    80007384:	00200513          	li	a0,2
    80007388:	02010113          	addi	sp,sp,32
    8000738c:	00008067          	ret
    80007390:	00000097          	auipc	ra,0x0
    80007394:	254080e7          	jalr	596(ra) # 800075e4 <plic_claim>
    80007398:	00a00793          	li	a5,10
    8000739c:	00050493          	mv	s1,a0
    800073a0:	06f50663          	beq	a0,a5,8000740c <devintr+0x100>
    800073a4:	00100513          	li	a0,1
    800073a8:	fa0482e3          	beqz	s1,8000734c <devintr+0x40>
    800073ac:	00048593          	mv	a1,s1
    800073b0:	00002517          	auipc	a0,0x2
    800073b4:	25850513          	addi	a0,a0,600 # 80009608 <CONSOLE_STATUS+0x5f8>
    800073b8:	00000097          	auipc	ra,0x0
    800073bc:	670080e7          	jalr	1648(ra) # 80007a28 <__printf>
    800073c0:	00048513          	mv	a0,s1
    800073c4:	00000097          	auipc	ra,0x0
    800073c8:	258080e7          	jalr	600(ra) # 8000761c <plic_complete>
    800073cc:	00100513          	li	a0,1
    800073d0:	f7dff06f          	j	8000734c <devintr+0x40>
    800073d4:	0000a517          	auipc	a0,0xa
    800073d8:	b7c50513          	addi	a0,a0,-1156 # 80010f50 <tickslock>
    800073dc:	00001097          	auipc	ra,0x1
    800073e0:	320080e7          	jalr	800(ra) # 800086fc <acquire>
    800073e4:	00005717          	auipc	a4,0x5
    800073e8:	99070713          	addi	a4,a4,-1648 # 8000bd74 <ticks>
    800073ec:	00072783          	lw	a5,0(a4)
    800073f0:	0000a517          	auipc	a0,0xa
    800073f4:	b6050513          	addi	a0,a0,-1184 # 80010f50 <tickslock>
    800073f8:	0017879b          	addiw	a5,a5,1
    800073fc:	00f72023          	sw	a5,0(a4)
    80007400:	00001097          	auipc	ra,0x1
    80007404:	3c8080e7          	jalr	968(ra) # 800087c8 <release>
    80007408:	f65ff06f          	j	8000736c <devintr+0x60>
    8000740c:	00001097          	auipc	ra,0x1
    80007410:	f24080e7          	jalr	-220(ra) # 80008330 <uartintr>
    80007414:	fadff06f          	j	800073c0 <devintr+0xb4>
	...

0000000080007420 <kernelvec>:
    80007420:	f0010113          	addi	sp,sp,-256
    80007424:	00113023          	sd	ra,0(sp)
    80007428:	00213423          	sd	sp,8(sp)
    8000742c:	00313823          	sd	gp,16(sp)
    80007430:	00413c23          	sd	tp,24(sp)
    80007434:	02513023          	sd	t0,32(sp)
    80007438:	02613423          	sd	t1,40(sp)
    8000743c:	02713823          	sd	t2,48(sp)
    80007440:	02813c23          	sd	s0,56(sp)
    80007444:	04913023          	sd	s1,64(sp)
    80007448:	04a13423          	sd	a0,72(sp)
    8000744c:	04b13823          	sd	a1,80(sp)
    80007450:	04c13c23          	sd	a2,88(sp)
    80007454:	06d13023          	sd	a3,96(sp)
    80007458:	06e13423          	sd	a4,104(sp)
    8000745c:	06f13823          	sd	a5,112(sp)
    80007460:	07013c23          	sd	a6,120(sp)
    80007464:	09113023          	sd	a7,128(sp)
    80007468:	09213423          	sd	s2,136(sp)
    8000746c:	09313823          	sd	s3,144(sp)
    80007470:	09413c23          	sd	s4,152(sp)
    80007474:	0b513023          	sd	s5,160(sp)
    80007478:	0b613423          	sd	s6,168(sp)
    8000747c:	0b713823          	sd	s7,176(sp)
    80007480:	0b813c23          	sd	s8,184(sp)
    80007484:	0d913023          	sd	s9,192(sp)
    80007488:	0da13423          	sd	s10,200(sp)
    8000748c:	0db13823          	sd	s11,208(sp)
    80007490:	0dc13c23          	sd	t3,216(sp)
    80007494:	0fd13023          	sd	t4,224(sp)
    80007498:	0fe13423          	sd	t5,232(sp)
    8000749c:	0ff13823          	sd	t6,240(sp)
    800074a0:	ccdff0ef          	jal	ra,8000716c <kerneltrap>
    800074a4:	00013083          	ld	ra,0(sp)
    800074a8:	00813103          	ld	sp,8(sp)
    800074ac:	01013183          	ld	gp,16(sp)
    800074b0:	02013283          	ld	t0,32(sp)
    800074b4:	02813303          	ld	t1,40(sp)
    800074b8:	03013383          	ld	t2,48(sp)
    800074bc:	03813403          	ld	s0,56(sp)
    800074c0:	04013483          	ld	s1,64(sp)
    800074c4:	04813503          	ld	a0,72(sp)
    800074c8:	05013583          	ld	a1,80(sp)
    800074cc:	05813603          	ld	a2,88(sp)
    800074d0:	06013683          	ld	a3,96(sp)
    800074d4:	06813703          	ld	a4,104(sp)
    800074d8:	07013783          	ld	a5,112(sp)
    800074dc:	07813803          	ld	a6,120(sp)
    800074e0:	08013883          	ld	a7,128(sp)
    800074e4:	08813903          	ld	s2,136(sp)
    800074e8:	09013983          	ld	s3,144(sp)
    800074ec:	09813a03          	ld	s4,152(sp)
    800074f0:	0a013a83          	ld	s5,160(sp)
    800074f4:	0a813b03          	ld	s6,168(sp)
    800074f8:	0b013b83          	ld	s7,176(sp)
    800074fc:	0b813c03          	ld	s8,184(sp)
    80007500:	0c013c83          	ld	s9,192(sp)
    80007504:	0c813d03          	ld	s10,200(sp)
    80007508:	0d013d83          	ld	s11,208(sp)
    8000750c:	0d813e03          	ld	t3,216(sp)
    80007510:	0e013e83          	ld	t4,224(sp)
    80007514:	0e813f03          	ld	t5,232(sp)
    80007518:	0f013f83          	ld	t6,240(sp)
    8000751c:	10010113          	addi	sp,sp,256
    80007520:	10200073          	sret
    80007524:	00000013          	nop
    80007528:	00000013          	nop
    8000752c:	00000013          	nop

0000000080007530 <timervec>:
    80007530:	34051573          	csrrw	a0,mscratch,a0
    80007534:	00b53023          	sd	a1,0(a0)
    80007538:	00c53423          	sd	a2,8(a0)
    8000753c:	00d53823          	sd	a3,16(a0)
    80007540:	01853583          	ld	a1,24(a0)
    80007544:	02053603          	ld	a2,32(a0)
    80007548:	0005b683          	ld	a3,0(a1)
    8000754c:	00c686b3          	add	a3,a3,a2
    80007550:	00d5b023          	sd	a3,0(a1)
    80007554:	00200593          	li	a1,2
    80007558:	14459073          	csrw	sip,a1
    8000755c:	01053683          	ld	a3,16(a0)
    80007560:	00853603          	ld	a2,8(a0)
    80007564:	00053583          	ld	a1,0(a0)
    80007568:	34051573          	csrrw	a0,mscratch,a0
    8000756c:	30200073          	mret

0000000080007570 <plicinit>:
    80007570:	ff010113          	addi	sp,sp,-16
    80007574:	00813423          	sd	s0,8(sp)
    80007578:	01010413          	addi	s0,sp,16
    8000757c:	00813403          	ld	s0,8(sp)
    80007580:	0c0007b7          	lui	a5,0xc000
    80007584:	00100713          	li	a4,1
    80007588:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000758c:	00e7a223          	sw	a4,4(a5)
    80007590:	01010113          	addi	sp,sp,16
    80007594:	00008067          	ret

0000000080007598 <plicinithart>:
    80007598:	ff010113          	addi	sp,sp,-16
    8000759c:	00813023          	sd	s0,0(sp)
    800075a0:	00113423          	sd	ra,8(sp)
    800075a4:	01010413          	addi	s0,sp,16
    800075a8:	00000097          	auipc	ra,0x0
    800075ac:	a44080e7          	jalr	-1468(ra) # 80006fec <cpuid>
    800075b0:	0085171b          	slliw	a4,a0,0x8
    800075b4:	0c0027b7          	lui	a5,0xc002
    800075b8:	00e787b3          	add	a5,a5,a4
    800075bc:	40200713          	li	a4,1026
    800075c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800075c4:	00813083          	ld	ra,8(sp)
    800075c8:	00013403          	ld	s0,0(sp)
    800075cc:	00d5151b          	slliw	a0,a0,0xd
    800075d0:	0c2017b7          	lui	a5,0xc201
    800075d4:	00a78533          	add	a0,a5,a0
    800075d8:	00052023          	sw	zero,0(a0)
    800075dc:	01010113          	addi	sp,sp,16
    800075e0:	00008067          	ret

00000000800075e4 <plic_claim>:
    800075e4:	ff010113          	addi	sp,sp,-16
    800075e8:	00813023          	sd	s0,0(sp)
    800075ec:	00113423          	sd	ra,8(sp)
    800075f0:	01010413          	addi	s0,sp,16
    800075f4:	00000097          	auipc	ra,0x0
    800075f8:	9f8080e7          	jalr	-1544(ra) # 80006fec <cpuid>
    800075fc:	00813083          	ld	ra,8(sp)
    80007600:	00013403          	ld	s0,0(sp)
    80007604:	00d5151b          	slliw	a0,a0,0xd
    80007608:	0c2017b7          	lui	a5,0xc201
    8000760c:	00a78533          	add	a0,a5,a0
    80007610:	00452503          	lw	a0,4(a0)
    80007614:	01010113          	addi	sp,sp,16
    80007618:	00008067          	ret

000000008000761c <plic_complete>:
    8000761c:	fe010113          	addi	sp,sp,-32
    80007620:	00813823          	sd	s0,16(sp)
    80007624:	00913423          	sd	s1,8(sp)
    80007628:	00113c23          	sd	ra,24(sp)
    8000762c:	02010413          	addi	s0,sp,32
    80007630:	00050493          	mv	s1,a0
    80007634:	00000097          	auipc	ra,0x0
    80007638:	9b8080e7          	jalr	-1608(ra) # 80006fec <cpuid>
    8000763c:	01813083          	ld	ra,24(sp)
    80007640:	01013403          	ld	s0,16(sp)
    80007644:	00d5179b          	slliw	a5,a0,0xd
    80007648:	0c201737          	lui	a4,0xc201
    8000764c:	00f707b3          	add	a5,a4,a5
    80007650:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007654:	00813483          	ld	s1,8(sp)
    80007658:	02010113          	addi	sp,sp,32
    8000765c:	00008067          	ret

0000000080007660 <consolewrite>:
    80007660:	fb010113          	addi	sp,sp,-80
    80007664:	04813023          	sd	s0,64(sp)
    80007668:	04113423          	sd	ra,72(sp)
    8000766c:	02913c23          	sd	s1,56(sp)
    80007670:	03213823          	sd	s2,48(sp)
    80007674:	03313423          	sd	s3,40(sp)
    80007678:	03413023          	sd	s4,32(sp)
    8000767c:	01513c23          	sd	s5,24(sp)
    80007680:	05010413          	addi	s0,sp,80
    80007684:	06c05c63          	blez	a2,800076fc <consolewrite+0x9c>
    80007688:	00060993          	mv	s3,a2
    8000768c:	00050a13          	mv	s4,a0
    80007690:	00058493          	mv	s1,a1
    80007694:	00000913          	li	s2,0
    80007698:	fff00a93          	li	s5,-1
    8000769c:	01c0006f          	j	800076b8 <consolewrite+0x58>
    800076a0:	fbf44503          	lbu	a0,-65(s0)
    800076a4:	0019091b          	addiw	s2,s2,1
    800076a8:	00148493          	addi	s1,s1,1
    800076ac:	00001097          	auipc	ra,0x1
    800076b0:	a9c080e7          	jalr	-1380(ra) # 80008148 <uartputc>
    800076b4:	03298063          	beq	s3,s2,800076d4 <consolewrite+0x74>
    800076b8:	00048613          	mv	a2,s1
    800076bc:	00100693          	li	a3,1
    800076c0:	000a0593          	mv	a1,s4
    800076c4:	fbf40513          	addi	a0,s0,-65
    800076c8:	00000097          	auipc	ra,0x0
    800076cc:	9dc080e7          	jalr	-1572(ra) # 800070a4 <either_copyin>
    800076d0:	fd5518e3          	bne	a0,s5,800076a0 <consolewrite+0x40>
    800076d4:	04813083          	ld	ra,72(sp)
    800076d8:	04013403          	ld	s0,64(sp)
    800076dc:	03813483          	ld	s1,56(sp)
    800076e0:	02813983          	ld	s3,40(sp)
    800076e4:	02013a03          	ld	s4,32(sp)
    800076e8:	01813a83          	ld	s5,24(sp)
    800076ec:	00090513          	mv	a0,s2
    800076f0:	03013903          	ld	s2,48(sp)
    800076f4:	05010113          	addi	sp,sp,80
    800076f8:	00008067          	ret
    800076fc:	00000913          	li	s2,0
    80007700:	fd5ff06f          	j	800076d4 <consolewrite+0x74>

0000000080007704 <consoleread>:
    80007704:	f9010113          	addi	sp,sp,-112
    80007708:	06813023          	sd	s0,96(sp)
    8000770c:	04913c23          	sd	s1,88(sp)
    80007710:	05213823          	sd	s2,80(sp)
    80007714:	05313423          	sd	s3,72(sp)
    80007718:	05413023          	sd	s4,64(sp)
    8000771c:	03513c23          	sd	s5,56(sp)
    80007720:	03613823          	sd	s6,48(sp)
    80007724:	03713423          	sd	s7,40(sp)
    80007728:	03813023          	sd	s8,32(sp)
    8000772c:	06113423          	sd	ra,104(sp)
    80007730:	01913c23          	sd	s9,24(sp)
    80007734:	07010413          	addi	s0,sp,112
    80007738:	00060b93          	mv	s7,a2
    8000773c:	00050913          	mv	s2,a0
    80007740:	00058c13          	mv	s8,a1
    80007744:	00060b1b          	sext.w	s6,a2
    80007748:	0000a497          	auipc	s1,0xa
    8000774c:	83048493          	addi	s1,s1,-2000 # 80010f78 <cons>
    80007750:	00400993          	li	s3,4
    80007754:	fff00a13          	li	s4,-1
    80007758:	00a00a93          	li	s5,10
    8000775c:	05705e63          	blez	s7,800077b8 <consoleread+0xb4>
    80007760:	09c4a703          	lw	a4,156(s1)
    80007764:	0984a783          	lw	a5,152(s1)
    80007768:	0007071b          	sext.w	a4,a4
    8000776c:	08e78463          	beq	a5,a4,800077f4 <consoleread+0xf0>
    80007770:	07f7f713          	andi	a4,a5,127
    80007774:	00e48733          	add	a4,s1,a4
    80007778:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000777c:	0017869b          	addiw	a3,a5,1
    80007780:	08d4ac23          	sw	a3,152(s1)
    80007784:	00070c9b          	sext.w	s9,a4
    80007788:	0b370663          	beq	a4,s3,80007834 <consoleread+0x130>
    8000778c:	00100693          	li	a3,1
    80007790:	f9f40613          	addi	a2,s0,-97
    80007794:	000c0593          	mv	a1,s8
    80007798:	00090513          	mv	a0,s2
    8000779c:	f8e40fa3          	sb	a4,-97(s0)
    800077a0:	00000097          	auipc	ra,0x0
    800077a4:	8b8080e7          	jalr	-1864(ra) # 80007058 <either_copyout>
    800077a8:	01450863          	beq	a0,s4,800077b8 <consoleread+0xb4>
    800077ac:	001c0c13          	addi	s8,s8,1
    800077b0:	fffb8b9b          	addiw	s7,s7,-1
    800077b4:	fb5c94e3          	bne	s9,s5,8000775c <consoleread+0x58>
    800077b8:	000b851b          	sext.w	a0,s7
    800077bc:	06813083          	ld	ra,104(sp)
    800077c0:	06013403          	ld	s0,96(sp)
    800077c4:	05813483          	ld	s1,88(sp)
    800077c8:	05013903          	ld	s2,80(sp)
    800077cc:	04813983          	ld	s3,72(sp)
    800077d0:	04013a03          	ld	s4,64(sp)
    800077d4:	03813a83          	ld	s5,56(sp)
    800077d8:	02813b83          	ld	s7,40(sp)
    800077dc:	02013c03          	ld	s8,32(sp)
    800077e0:	01813c83          	ld	s9,24(sp)
    800077e4:	40ab053b          	subw	a0,s6,a0
    800077e8:	03013b03          	ld	s6,48(sp)
    800077ec:	07010113          	addi	sp,sp,112
    800077f0:	00008067          	ret
    800077f4:	00001097          	auipc	ra,0x1
    800077f8:	1d8080e7          	jalr	472(ra) # 800089cc <push_on>
    800077fc:	0984a703          	lw	a4,152(s1)
    80007800:	09c4a783          	lw	a5,156(s1)
    80007804:	0007879b          	sext.w	a5,a5
    80007808:	fef70ce3          	beq	a4,a5,80007800 <consoleread+0xfc>
    8000780c:	00001097          	auipc	ra,0x1
    80007810:	234080e7          	jalr	564(ra) # 80008a40 <pop_on>
    80007814:	0984a783          	lw	a5,152(s1)
    80007818:	07f7f713          	andi	a4,a5,127
    8000781c:	00e48733          	add	a4,s1,a4
    80007820:	01874703          	lbu	a4,24(a4)
    80007824:	0017869b          	addiw	a3,a5,1
    80007828:	08d4ac23          	sw	a3,152(s1)
    8000782c:	00070c9b          	sext.w	s9,a4
    80007830:	f5371ee3          	bne	a4,s3,8000778c <consoleread+0x88>
    80007834:	000b851b          	sext.w	a0,s7
    80007838:	f96bf2e3          	bgeu	s7,s6,800077bc <consoleread+0xb8>
    8000783c:	08f4ac23          	sw	a5,152(s1)
    80007840:	f7dff06f          	j	800077bc <consoleread+0xb8>

0000000080007844 <consputc>:
    80007844:	10000793          	li	a5,256
    80007848:	00f50663          	beq	a0,a5,80007854 <consputc+0x10>
    8000784c:	00001317          	auipc	t1,0x1
    80007850:	9f430067          	jr	-1548(t1) # 80008240 <uartputc_sync>
    80007854:	ff010113          	addi	sp,sp,-16
    80007858:	00113423          	sd	ra,8(sp)
    8000785c:	00813023          	sd	s0,0(sp)
    80007860:	01010413          	addi	s0,sp,16
    80007864:	00800513          	li	a0,8
    80007868:	00001097          	auipc	ra,0x1
    8000786c:	9d8080e7          	jalr	-1576(ra) # 80008240 <uartputc_sync>
    80007870:	02000513          	li	a0,32
    80007874:	00001097          	auipc	ra,0x1
    80007878:	9cc080e7          	jalr	-1588(ra) # 80008240 <uartputc_sync>
    8000787c:	00013403          	ld	s0,0(sp)
    80007880:	00813083          	ld	ra,8(sp)
    80007884:	00800513          	li	a0,8
    80007888:	01010113          	addi	sp,sp,16
    8000788c:	00001317          	auipc	t1,0x1
    80007890:	9b430067          	jr	-1612(t1) # 80008240 <uartputc_sync>

0000000080007894 <consoleintr>:
    80007894:	fe010113          	addi	sp,sp,-32
    80007898:	00813823          	sd	s0,16(sp)
    8000789c:	00913423          	sd	s1,8(sp)
    800078a0:	01213023          	sd	s2,0(sp)
    800078a4:	00113c23          	sd	ra,24(sp)
    800078a8:	02010413          	addi	s0,sp,32
    800078ac:	00009917          	auipc	s2,0x9
    800078b0:	6cc90913          	addi	s2,s2,1740 # 80010f78 <cons>
    800078b4:	00050493          	mv	s1,a0
    800078b8:	00090513          	mv	a0,s2
    800078bc:	00001097          	auipc	ra,0x1
    800078c0:	e40080e7          	jalr	-448(ra) # 800086fc <acquire>
    800078c4:	02048c63          	beqz	s1,800078fc <consoleintr+0x68>
    800078c8:	0a092783          	lw	a5,160(s2)
    800078cc:	09892703          	lw	a4,152(s2)
    800078d0:	07f00693          	li	a3,127
    800078d4:	40e7873b          	subw	a4,a5,a4
    800078d8:	02e6e263          	bltu	a3,a4,800078fc <consoleintr+0x68>
    800078dc:	00d00713          	li	a4,13
    800078e0:	04e48063          	beq	s1,a4,80007920 <consoleintr+0x8c>
    800078e4:	07f7f713          	andi	a4,a5,127
    800078e8:	00e90733          	add	a4,s2,a4
    800078ec:	0017879b          	addiw	a5,a5,1
    800078f0:	0af92023          	sw	a5,160(s2)
    800078f4:	00970c23          	sb	s1,24(a4)
    800078f8:	08f92e23          	sw	a5,156(s2)
    800078fc:	01013403          	ld	s0,16(sp)
    80007900:	01813083          	ld	ra,24(sp)
    80007904:	00813483          	ld	s1,8(sp)
    80007908:	00013903          	ld	s2,0(sp)
    8000790c:	00009517          	auipc	a0,0x9
    80007910:	66c50513          	addi	a0,a0,1644 # 80010f78 <cons>
    80007914:	02010113          	addi	sp,sp,32
    80007918:	00001317          	auipc	t1,0x1
    8000791c:	eb030067          	jr	-336(t1) # 800087c8 <release>
    80007920:	00a00493          	li	s1,10
    80007924:	fc1ff06f          	j	800078e4 <consoleintr+0x50>

0000000080007928 <consoleinit>:
    80007928:	fe010113          	addi	sp,sp,-32
    8000792c:	00113c23          	sd	ra,24(sp)
    80007930:	00813823          	sd	s0,16(sp)
    80007934:	00913423          	sd	s1,8(sp)
    80007938:	02010413          	addi	s0,sp,32
    8000793c:	00009497          	auipc	s1,0x9
    80007940:	63c48493          	addi	s1,s1,1596 # 80010f78 <cons>
    80007944:	00048513          	mv	a0,s1
    80007948:	00002597          	auipc	a1,0x2
    8000794c:	d1858593          	addi	a1,a1,-744 # 80009660 <CONSOLE_STATUS+0x650>
    80007950:	00001097          	auipc	ra,0x1
    80007954:	d88080e7          	jalr	-632(ra) # 800086d8 <initlock>
    80007958:	00000097          	auipc	ra,0x0
    8000795c:	7ac080e7          	jalr	1964(ra) # 80008104 <uartinit>
    80007960:	01813083          	ld	ra,24(sp)
    80007964:	01013403          	ld	s0,16(sp)
    80007968:	00000797          	auipc	a5,0x0
    8000796c:	d9c78793          	addi	a5,a5,-612 # 80007704 <consoleread>
    80007970:	0af4bc23          	sd	a5,184(s1)
    80007974:	00000797          	auipc	a5,0x0
    80007978:	cec78793          	addi	a5,a5,-788 # 80007660 <consolewrite>
    8000797c:	0cf4b023          	sd	a5,192(s1)
    80007980:	00813483          	ld	s1,8(sp)
    80007984:	02010113          	addi	sp,sp,32
    80007988:	00008067          	ret

000000008000798c <console_read>:
    8000798c:	ff010113          	addi	sp,sp,-16
    80007990:	00813423          	sd	s0,8(sp)
    80007994:	01010413          	addi	s0,sp,16
    80007998:	00813403          	ld	s0,8(sp)
    8000799c:	00009317          	auipc	t1,0x9
    800079a0:	69433303          	ld	t1,1684(t1) # 80011030 <devsw+0x10>
    800079a4:	01010113          	addi	sp,sp,16
    800079a8:	00030067          	jr	t1

00000000800079ac <console_write>:
    800079ac:	ff010113          	addi	sp,sp,-16
    800079b0:	00813423          	sd	s0,8(sp)
    800079b4:	01010413          	addi	s0,sp,16
    800079b8:	00813403          	ld	s0,8(sp)
    800079bc:	00009317          	auipc	t1,0x9
    800079c0:	67c33303          	ld	t1,1660(t1) # 80011038 <devsw+0x18>
    800079c4:	01010113          	addi	sp,sp,16
    800079c8:	00030067          	jr	t1

00000000800079cc <panic>:
    800079cc:	fe010113          	addi	sp,sp,-32
    800079d0:	00113c23          	sd	ra,24(sp)
    800079d4:	00813823          	sd	s0,16(sp)
    800079d8:	00913423          	sd	s1,8(sp)
    800079dc:	02010413          	addi	s0,sp,32
    800079e0:	00050493          	mv	s1,a0
    800079e4:	00002517          	auipc	a0,0x2
    800079e8:	c8450513          	addi	a0,a0,-892 # 80009668 <CONSOLE_STATUS+0x658>
    800079ec:	00009797          	auipc	a5,0x9
    800079f0:	6e07a623          	sw	zero,1772(a5) # 800110d8 <pr+0x18>
    800079f4:	00000097          	auipc	ra,0x0
    800079f8:	034080e7          	jalr	52(ra) # 80007a28 <__printf>
    800079fc:	00048513          	mv	a0,s1
    80007a00:	00000097          	auipc	ra,0x0
    80007a04:	028080e7          	jalr	40(ra) # 80007a28 <__printf>
    80007a08:	00001517          	auipc	a0,0x1
    80007a0c:	6f050513          	addi	a0,a0,1776 # 800090f8 <CONSOLE_STATUS+0xe8>
    80007a10:	00000097          	auipc	ra,0x0
    80007a14:	018080e7          	jalr	24(ra) # 80007a28 <__printf>
    80007a18:	00100793          	li	a5,1
    80007a1c:	00004717          	auipc	a4,0x4
    80007a20:	34f72e23          	sw	a5,860(a4) # 8000bd78 <panicked>
    80007a24:	0000006f          	j	80007a24 <panic+0x58>

0000000080007a28 <__printf>:
    80007a28:	f3010113          	addi	sp,sp,-208
    80007a2c:	08813023          	sd	s0,128(sp)
    80007a30:	07313423          	sd	s3,104(sp)
    80007a34:	09010413          	addi	s0,sp,144
    80007a38:	05813023          	sd	s8,64(sp)
    80007a3c:	08113423          	sd	ra,136(sp)
    80007a40:	06913c23          	sd	s1,120(sp)
    80007a44:	07213823          	sd	s2,112(sp)
    80007a48:	07413023          	sd	s4,96(sp)
    80007a4c:	05513c23          	sd	s5,88(sp)
    80007a50:	05613823          	sd	s6,80(sp)
    80007a54:	05713423          	sd	s7,72(sp)
    80007a58:	03913c23          	sd	s9,56(sp)
    80007a5c:	03a13823          	sd	s10,48(sp)
    80007a60:	03b13423          	sd	s11,40(sp)
    80007a64:	00009317          	auipc	t1,0x9
    80007a68:	65c30313          	addi	t1,t1,1628 # 800110c0 <pr>
    80007a6c:	01832c03          	lw	s8,24(t1)
    80007a70:	00b43423          	sd	a1,8(s0)
    80007a74:	00c43823          	sd	a2,16(s0)
    80007a78:	00d43c23          	sd	a3,24(s0)
    80007a7c:	02e43023          	sd	a4,32(s0)
    80007a80:	02f43423          	sd	a5,40(s0)
    80007a84:	03043823          	sd	a6,48(s0)
    80007a88:	03143c23          	sd	a7,56(s0)
    80007a8c:	00050993          	mv	s3,a0
    80007a90:	4a0c1663          	bnez	s8,80007f3c <__printf+0x514>
    80007a94:	60098c63          	beqz	s3,800080ac <__printf+0x684>
    80007a98:	0009c503          	lbu	a0,0(s3)
    80007a9c:	00840793          	addi	a5,s0,8
    80007aa0:	f6f43c23          	sd	a5,-136(s0)
    80007aa4:	00000493          	li	s1,0
    80007aa8:	22050063          	beqz	a0,80007cc8 <__printf+0x2a0>
    80007aac:	00002a37          	lui	s4,0x2
    80007ab0:	00018ab7          	lui	s5,0x18
    80007ab4:	000f4b37          	lui	s6,0xf4
    80007ab8:	00989bb7          	lui	s7,0x989
    80007abc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007ac0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007ac4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007ac8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007acc:	00148c9b          	addiw	s9,s1,1
    80007ad0:	02500793          	li	a5,37
    80007ad4:	01998933          	add	s2,s3,s9
    80007ad8:	38f51263          	bne	a0,a5,80007e5c <__printf+0x434>
    80007adc:	00094783          	lbu	a5,0(s2)
    80007ae0:	00078c9b          	sext.w	s9,a5
    80007ae4:	1e078263          	beqz	a5,80007cc8 <__printf+0x2a0>
    80007ae8:	0024849b          	addiw	s1,s1,2
    80007aec:	07000713          	li	a4,112
    80007af0:	00998933          	add	s2,s3,s1
    80007af4:	38e78a63          	beq	a5,a4,80007e88 <__printf+0x460>
    80007af8:	20f76863          	bltu	a4,a5,80007d08 <__printf+0x2e0>
    80007afc:	42a78863          	beq	a5,a0,80007f2c <__printf+0x504>
    80007b00:	06400713          	li	a4,100
    80007b04:	40e79663          	bne	a5,a4,80007f10 <__printf+0x4e8>
    80007b08:	f7843783          	ld	a5,-136(s0)
    80007b0c:	0007a603          	lw	a2,0(a5)
    80007b10:	00878793          	addi	a5,a5,8
    80007b14:	f6f43c23          	sd	a5,-136(s0)
    80007b18:	42064a63          	bltz	a2,80007f4c <__printf+0x524>
    80007b1c:	00a00713          	li	a4,10
    80007b20:	02e677bb          	remuw	a5,a2,a4
    80007b24:	00002d97          	auipc	s11,0x2
    80007b28:	b6cd8d93          	addi	s11,s11,-1172 # 80009690 <digits>
    80007b2c:	00900593          	li	a1,9
    80007b30:	0006051b          	sext.w	a0,a2
    80007b34:	00000c93          	li	s9,0
    80007b38:	02079793          	slli	a5,a5,0x20
    80007b3c:	0207d793          	srli	a5,a5,0x20
    80007b40:	00fd87b3          	add	a5,s11,a5
    80007b44:	0007c783          	lbu	a5,0(a5)
    80007b48:	02e656bb          	divuw	a3,a2,a4
    80007b4c:	f8f40023          	sb	a5,-128(s0)
    80007b50:	14c5d863          	bge	a1,a2,80007ca0 <__printf+0x278>
    80007b54:	06300593          	li	a1,99
    80007b58:	00100c93          	li	s9,1
    80007b5c:	02e6f7bb          	remuw	a5,a3,a4
    80007b60:	02079793          	slli	a5,a5,0x20
    80007b64:	0207d793          	srli	a5,a5,0x20
    80007b68:	00fd87b3          	add	a5,s11,a5
    80007b6c:	0007c783          	lbu	a5,0(a5)
    80007b70:	02e6d73b          	divuw	a4,a3,a4
    80007b74:	f8f400a3          	sb	a5,-127(s0)
    80007b78:	12a5f463          	bgeu	a1,a0,80007ca0 <__printf+0x278>
    80007b7c:	00a00693          	li	a3,10
    80007b80:	00900593          	li	a1,9
    80007b84:	02d777bb          	remuw	a5,a4,a3
    80007b88:	02079793          	slli	a5,a5,0x20
    80007b8c:	0207d793          	srli	a5,a5,0x20
    80007b90:	00fd87b3          	add	a5,s11,a5
    80007b94:	0007c503          	lbu	a0,0(a5)
    80007b98:	02d757bb          	divuw	a5,a4,a3
    80007b9c:	f8a40123          	sb	a0,-126(s0)
    80007ba0:	48e5f263          	bgeu	a1,a4,80008024 <__printf+0x5fc>
    80007ba4:	06300513          	li	a0,99
    80007ba8:	02d7f5bb          	remuw	a1,a5,a3
    80007bac:	02059593          	slli	a1,a1,0x20
    80007bb0:	0205d593          	srli	a1,a1,0x20
    80007bb4:	00bd85b3          	add	a1,s11,a1
    80007bb8:	0005c583          	lbu	a1,0(a1)
    80007bbc:	02d7d7bb          	divuw	a5,a5,a3
    80007bc0:	f8b401a3          	sb	a1,-125(s0)
    80007bc4:	48e57263          	bgeu	a0,a4,80008048 <__printf+0x620>
    80007bc8:	3e700513          	li	a0,999
    80007bcc:	02d7f5bb          	remuw	a1,a5,a3
    80007bd0:	02059593          	slli	a1,a1,0x20
    80007bd4:	0205d593          	srli	a1,a1,0x20
    80007bd8:	00bd85b3          	add	a1,s11,a1
    80007bdc:	0005c583          	lbu	a1,0(a1)
    80007be0:	02d7d7bb          	divuw	a5,a5,a3
    80007be4:	f8b40223          	sb	a1,-124(s0)
    80007be8:	46e57663          	bgeu	a0,a4,80008054 <__printf+0x62c>
    80007bec:	02d7f5bb          	remuw	a1,a5,a3
    80007bf0:	02059593          	slli	a1,a1,0x20
    80007bf4:	0205d593          	srli	a1,a1,0x20
    80007bf8:	00bd85b3          	add	a1,s11,a1
    80007bfc:	0005c583          	lbu	a1,0(a1)
    80007c00:	02d7d7bb          	divuw	a5,a5,a3
    80007c04:	f8b402a3          	sb	a1,-123(s0)
    80007c08:	46ea7863          	bgeu	s4,a4,80008078 <__printf+0x650>
    80007c0c:	02d7f5bb          	remuw	a1,a5,a3
    80007c10:	02059593          	slli	a1,a1,0x20
    80007c14:	0205d593          	srli	a1,a1,0x20
    80007c18:	00bd85b3          	add	a1,s11,a1
    80007c1c:	0005c583          	lbu	a1,0(a1)
    80007c20:	02d7d7bb          	divuw	a5,a5,a3
    80007c24:	f8b40323          	sb	a1,-122(s0)
    80007c28:	3eeaf863          	bgeu	s5,a4,80008018 <__printf+0x5f0>
    80007c2c:	02d7f5bb          	remuw	a1,a5,a3
    80007c30:	02059593          	slli	a1,a1,0x20
    80007c34:	0205d593          	srli	a1,a1,0x20
    80007c38:	00bd85b3          	add	a1,s11,a1
    80007c3c:	0005c583          	lbu	a1,0(a1)
    80007c40:	02d7d7bb          	divuw	a5,a5,a3
    80007c44:	f8b403a3          	sb	a1,-121(s0)
    80007c48:	42eb7e63          	bgeu	s6,a4,80008084 <__printf+0x65c>
    80007c4c:	02d7f5bb          	remuw	a1,a5,a3
    80007c50:	02059593          	slli	a1,a1,0x20
    80007c54:	0205d593          	srli	a1,a1,0x20
    80007c58:	00bd85b3          	add	a1,s11,a1
    80007c5c:	0005c583          	lbu	a1,0(a1)
    80007c60:	02d7d7bb          	divuw	a5,a5,a3
    80007c64:	f8b40423          	sb	a1,-120(s0)
    80007c68:	42ebfc63          	bgeu	s7,a4,800080a0 <__printf+0x678>
    80007c6c:	02079793          	slli	a5,a5,0x20
    80007c70:	0207d793          	srli	a5,a5,0x20
    80007c74:	00fd8db3          	add	s11,s11,a5
    80007c78:	000dc703          	lbu	a4,0(s11)
    80007c7c:	00a00793          	li	a5,10
    80007c80:	00900c93          	li	s9,9
    80007c84:	f8e404a3          	sb	a4,-119(s0)
    80007c88:	00065c63          	bgez	a2,80007ca0 <__printf+0x278>
    80007c8c:	f9040713          	addi	a4,s0,-112
    80007c90:	00f70733          	add	a4,a4,a5
    80007c94:	02d00693          	li	a3,45
    80007c98:	fed70823          	sb	a3,-16(a4)
    80007c9c:	00078c93          	mv	s9,a5
    80007ca0:	f8040793          	addi	a5,s0,-128
    80007ca4:	01978cb3          	add	s9,a5,s9
    80007ca8:	f7f40d13          	addi	s10,s0,-129
    80007cac:	000cc503          	lbu	a0,0(s9)
    80007cb0:	fffc8c93          	addi	s9,s9,-1
    80007cb4:	00000097          	auipc	ra,0x0
    80007cb8:	b90080e7          	jalr	-1136(ra) # 80007844 <consputc>
    80007cbc:	ffac98e3          	bne	s9,s10,80007cac <__printf+0x284>
    80007cc0:	00094503          	lbu	a0,0(s2)
    80007cc4:	e00514e3          	bnez	a0,80007acc <__printf+0xa4>
    80007cc8:	1a0c1663          	bnez	s8,80007e74 <__printf+0x44c>
    80007ccc:	08813083          	ld	ra,136(sp)
    80007cd0:	08013403          	ld	s0,128(sp)
    80007cd4:	07813483          	ld	s1,120(sp)
    80007cd8:	07013903          	ld	s2,112(sp)
    80007cdc:	06813983          	ld	s3,104(sp)
    80007ce0:	06013a03          	ld	s4,96(sp)
    80007ce4:	05813a83          	ld	s5,88(sp)
    80007ce8:	05013b03          	ld	s6,80(sp)
    80007cec:	04813b83          	ld	s7,72(sp)
    80007cf0:	04013c03          	ld	s8,64(sp)
    80007cf4:	03813c83          	ld	s9,56(sp)
    80007cf8:	03013d03          	ld	s10,48(sp)
    80007cfc:	02813d83          	ld	s11,40(sp)
    80007d00:	0d010113          	addi	sp,sp,208
    80007d04:	00008067          	ret
    80007d08:	07300713          	li	a4,115
    80007d0c:	1ce78a63          	beq	a5,a4,80007ee0 <__printf+0x4b8>
    80007d10:	07800713          	li	a4,120
    80007d14:	1ee79e63          	bne	a5,a4,80007f10 <__printf+0x4e8>
    80007d18:	f7843783          	ld	a5,-136(s0)
    80007d1c:	0007a703          	lw	a4,0(a5)
    80007d20:	00878793          	addi	a5,a5,8
    80007d24:	f6f43c23          	sd	a5,-136(s0)
    80007d28:	28074263          	bltz	a4,80007fac <__printf+0x584>
    80007d2c:	00002d97          	auipc	s11,0x2
    80007d30:	964d8d93          	addi	s11,s11,-1692 # 80009690 <digits>
    80007d34:	00f77793          	andi	a5,a4,15
    80007d38:	00fd87b3          	add	a5,s11,a5
    80007d3c:	0007c683          	lbu	a3,0(a5)
    80007d40:	00f00613          	li	a2,15
    80007d44:	0007079b          	sext.w	a5,a4
    80007d48:	f8d40023          	sb	a3,-128(s0)
    80007d4c:	0047559b          	srliw	a1,a4,0x4
    80007d50:	0047569b          	srliw	a3,a4,0x4
    80007d54:	00000c93          	li	s9,0
    80007d58:	0ee65063          	bge	a2,a4,80007e38 <__printf+0x410>
    80007d5c:	00f6f693          	andi	a3,a3,15
    80007d60:	00dd86b3          	add	a3,s11,a3
    80007d64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007d68:	0087d79b          	srliw	a5,a5,0x8
    80007d6c:	00100c93          	li	s9,1
    80007d70:	f8d400a3          	sb	a3,-127(s0)
    80007d74:	0cb67263          	bgeu	a2,a1,80007e38 <__printf+0x410>
    80007d78:	00f7f693          	andi	a3,a5,15
    80007d7c:	00dd86b3          	add	a3,s11,a3
    80007d80:	0006c583          	lbu	a1,0(a3)
    80007d84:	00f00613          	li	a2,15
    80007d88:	0047d69b          	srliw	a3,a5,0x4
    80007d8c:	f8b40123          	sb	a1,-126(s0)
    80007d90:	0047d593          	srli	a1,a5,0x4
    80007d94:	28f67e63          	bgeu	a2,a5,80008030 <__printf+0x608>
    80007d98:	00f6f693          	andi	a3,a3,15
    80007d9c:	00dd86b3          	add	a3,s11,a3
    80007da0:	0006c503          	lbu	a0,0(a3)
    80007da4:	0087d813          	srli	a6,a5,0x8
    80007da8:	0087d69b          	srliw	a3,a5,0x8
    80007dac:	f8a401a3          	sb	a0,-125(s0)
    80007db0:	28b67663          	bgeu	a2,a1,8000803c <__printf+0x614>
    80007db4:	00f6f693          	andi	a3,a3,15
    80007db8:	00dd86b3          	add	a3,s11,a3
    80007dbc:	0006c583          	lbu	a1,0(a3)
    80007dc0:	00c7d513          	srli	a0,a5,0xc
    80007dc4:	00c7d69b          	srliw	a3,a5,0xc
    80007dc8:	f8b40223          	sb	a1,-124(s0)
    80007dcc:	29067a63          	bgeu	a2,a6,80008060 <__printf+0x638>
    80007dd0:	00f6f693          	andi	a3,a3,15
    80007dd4:	00dd86b3          	add	a3,s11,a3
    80007dd8:	0006c583          	lbu	a1,0(a3)
    80007ddc:	0107d813          	srli	a6,a5,0x10
    80007de0:	0107d69b          	srliw	a3,a5,0x10
    80007de4:	f8b402a3          	sb	a1,-123(s0)
    80007de8:	28a67263          	bgeu	a2,a0,8000806c <__printf+0x644>
    80007dec:	00f6f693          	andi	a3,a3,15
    80007df0:	00dd86b3          	add	a3,s11,a3
    80007df4:	0006c683          	lbu	a3,0(a3)
    80007df8:	0147d79b          	srliw	a5,a5,0x14
    80007dfc:	f8d40323          	sb	a3,-122(s0)
    80007e00:	21067663          	bgeu	a2,a6,8000800c <__printf+0x5e4>
    80007e04:	02079793          	slli	a5,a5,0x20
    80007e08:	0207d793          	srli	a5,a5,0x20
    80007e0c:	00fd8db3          	add	s11,s11,a5
    80007e10:	000dc683          	lbu	a3,0(s11)
    80007e14:	00800793          	li	a5,8
    80007e18:	00700c93          	li	s9,7
    80007e1c:	f8d403a3          	sb	a3,-121(s0)
    80007e20:	00075c63          	bgez	a4,80007e38 <__printf+0x410>
    80007e24:	f9040713          	addi	a4,s0,-112
    80007e28:	00f70733          	add	a4,a4,a5
    80007e2c:	02d00693          	li	a3,45
    80007e30:	fed70823          	sb	a3,-16(a4)
    80007e34:	00078c93          	mv	s9,a5
    80007e38:	f8040793          	addi	a5,s0,-128
    80007e3c:	01978cb3          	add	s9,a5,s9
    80007e40:	f7f40d13          	addi	s10,s0,-129
    80007e44:	000cc503          	lbu	a0,0(s9)
    80007e48:	fffc8c93          	addi	s9,s9,-1
    80007e4c:	00000097          	auipc	ra,0x0
    80007e50:	9f8080e7          	jalr	-1544(ra) # 80007844 <consputc>
    80007e54:	ff9d18e3          	bne	s10,s9,80007e44 <__printf+0x41c>
    80007e58:	0100006f          	j	80007e68 <__printf+0x440>
    80007e5c:	00000097          	auipc	ra,0x0
    80007e60:	9e8080e7          	jalr	-1560(ra) # 80007844 <consputc>
    80007e64:	000c8493          	mv	s1,s9
    80007e68:	00094503          	lbu	a0,0(s2)
    80007e6c:	c60510e3          	bnez	a0,80007acc <__printf+0xa4>
    80007e70:	e40c0ee3          	beqz	s8,80007ccc <__printf+0x2a4>
    80007e74:	00009517          	auipc	a0,0x9
    80007e78:	24c50513          	addi	a0,a0,588 # 800110c0 <pr>
    80007e7c:	00001097          	auipc	ra,0x1
    80007e80:	94c080e7          	jalr	-1716(ra) # 800087c8 <release>
    80007e84:	e49ff06f          	j	80007ccc <__printf+0x2a4>
    80007e88:	f7843783          	ld	a5,-136(s0)
    80007e8c:	03000513          	li	a0,48
    80007e90:	01000d13          	li	s10,16
    80007e94:	00878713          	addi	a4,a5,8
    80007e98:	0007bc83          	ld	s9,0(a5)
    80007e9c:	f6e43c23          	sd	a4,-136(s0)
    80007ea0:	00000097          	auipc	ra,0x0
    80007ea4:	9a4080e7          	jalr	-1628(ra) # 80007844 <consputc>
    80007ea8:	07800513          	li	a0,120
    80007eac:	00000097          	auipc	ra,0x0
    80007eb0:	998080e7          	jalr	-1640(ra) # 80007844 <consputc>
    80007eb4:	00001d97          	auipc	s11,0x1
    80007eb8:	7dcd8d93          	addi	s11,s11,2012 # 80009690 <digits>
    80007ebc:	03ccd793          	srli	a5,s9,0x3c
    80007ec0:	00fd87b3          	add	a5,s11,a5
    80007ec4:	0007c503          	lbu	a0,0(a5)
    80007ec8:	fffd0d1b          	addiw	s10,s10,-1
    80007ecc:	004c9c93          	slli	s9,s9,0x4
    80007ed0:	00000097          	auipc	ra,0x0
    80007ed4:	974080e7          	jalr	-1676(ra) # 80007844 <consputc>
    80007ed8:	fe0d12e3          	bnez	s10,80007ebc <__printf+0x494>
    80007edc:	f8dff06f          	j	80007e68 <__printf+0x440>
    80007ee0:	f7843783          	ld	a5,-136(s0)
    80007ee4:	0007bc83          	ld	s9,0(a5)
    80007ee8:	00878793          	addi	a5,a5,8
    80007eec:	f6f43c23          	sd	a5,-136(s0)
    80007ef0:	000c9a63          	bnez	s9,80007f04 <__printf+0x4dc>
    80007ef4:	1080006f          	j	80007ffc <__printf+0x5d4>
    80007ef8:	001c8c93          	addi	s9,s9,1
    80007efc:	00000097          	auipc	ra,0x0
    80007f00:	948080e7          	jalr	-1720(ra) # 80007844 <consputc>
    80007f04:	000cc503          	lbu	a0,0(s9)
    80007f08:	fe0518e3          	bnez	a0,80007ef8 <__printf+0x4d0>
    80007f0c:	f5dff06f          	j	80007e68 <__printf+0x440>
    80007f10:	02500513          	li	a0,37
    80007f14:	00000097          	auipc	ra,0x0
    80007f18:	930080e7          	jalr	-1744(ra) # 80007844 <consputc>
    80007f1c:	000c8513          	mv	a0,s9
    80007f20:	00000097          	auipc	ra,0x0
    80007f24:	924080e7          	jalr	-1756(ra) # 80007844 <consputc>
    80007f28:	f41ff06f          	j	80007e68 <__printf+0x440>
    80007f2c:	02500513          	li	a0,37
    80007f30:	00000097          	auipc	ra,0x0
    80007f34:	914080e7          	jalr	-1772(ra) # 80007844 <consputc>
    80007f38:	f31ff06f          	j	80007e68 <__printf+0x440>
    80007f3c:	00030513          	mv	a0,t1
    80007f40:	00000097          	auipc	ra,0x0
    80007f44:	7bc080e7          	jalr	1980(ra) # 800086fc <acquire>
    80007f48:	b4dff06f          	j	80007a94 <__printf+0x6c>
    80007f4c:	40c0053b          	negw	a0,a2
    80007f50:	00a00713          	li	a4,10
    80007f54:	02e576bb          	remuw	a3,a0,a4
    80007f58:	00001d97          	auipc	s11,0x1
    80007f5c:	738d8d93          	addi	s11,s11,1848 # 80009690 <digits>
    80007f60:	ff700593          	li	a1,-9
    80007f64:	02069693          	slli	a3,a3,0x20
    80007f68:	0206d693          	srli	a3,a3,0x20
    80007f6c:	00dd86b3          	add	a3,s11,a3
    80007f70:	0006c683          	lbu	a3,0(a3)
    80007f74:	02e557bb          	divuw	a5,a0,a4
    80007f78:	f8d40023          	sb	a3,-128(s0)
    80007f7c:	10b65e63          	bge	a2,a1,80008098 <__printf+0x670>
    80007f80:	06300593          	li	a1,99
    80007f84:	02e7f6bb          	remuw	a3,a5,a4
    80007f88:	02069693          	slli	a3,a3,0x20
    80007f8c:	0206d693          	srli	a3,a3,0x20
    80007f90:	00dd86b3          	add	a3,s11,a3
    80007f94:	0006c683          	lbu	a3,0(a3)
    80007f98:	02e7d73b          	divuw	a4,a5,a4
    80007f9c:	00200793          	li	a5,2
    80007fa0:	f8d400a3          	sb	a3,-127(s0)
    80007fa4:	bca5ece3          	bltu	a1,a0,80007b7c <__printf+0x154>
    80007fa8:	ce5ff06f          	j	80007c8c <__printf+0x264>
    80007fac:	40e007bb          	negw	a5,a4
    80007fb0:	00001d97          	auipc	s11,0x1
    80007fb4:	6e0d8d93          	addi	s11,s11,1760 # 80009690 <digits>
    80007fb8:	00f7f693          	andi	a3,a5,15
    80007fbc:	00dd86b3          	add	a3,s11,a3
    80007fc0:	0006c583          	lbu	a1,0(a3)
    80007fc4:	ff100613          	li	a2,-15
    80007fc8:	0047d69b          	srliw	a3,a5,0x4
    80007fcc:	f8b40023          	sb	a1,-128(s0)
    80007fd0:	0047d59b          	srliw	a1,a5,0x4
    80007fd4:	0ac75e63          	bge	a4,a2,80008090 <__printf+0x668>
    80007fd8:	00f6f693          	andi	a3,a3,15
    80007fdc:	00dd86b3          	add	a3,s11,a3
    80007fe0:	0006c603          	lbu	a2,0(a3)
    80007fe4:	00f00693          	li	a3,15
    80007fe8:	0087d79b          	srliw	a5,a5,0x8
    80007fec:	f8c400a3          	sb	a2,-127(s0)
    80007ff0:	d8b6e4e3          	bltu	a3,a1,80007d78 <__printf+0x350>
    80007ff4:	00200793          	li	a5,2
    80007ff8:	e2dff06f          	j	80007e24 <__printf+0x3fc>
    80007ffc:	00001c97          	auipc	s9,0x1
    80008000:	674c8c93          	addi	s9,s9,1652 # 80009670 <CONSOLE_STATUS+0x660>
    80008004:	02800513          	li	a0,40
    80008008:	ef1ff06f          	j	80007ef8 <__printf+0x4d0>
    8000800c:	00700793          	li	a5,7
    80008010:	00600c93          	li	s9,6
    80008014:	e0dff06f          	j	80007e20 <__printf+0x3f8>
    80008018:	00700793          	li	a5,7
    8000801c:	00600c93          	li	s9,6
    80008020:	c69ff06f          	j	80007c88 <__printf+0x260>
    80008024:	00300793          	li	a5,3
    80008028:	00200c93          	li	s9,2
    8000802c:	c5dff06f          	j	80007c88 <__printf+0x260>
    80008030:	00300793          	li	a5,3
    80008034:	00200c93          	li	s9,2
    80008038:	de9ff06f          	j	80007e20 <__printf+0x3f8>
    8000803c:	00400793          	li	a5,4
    80008040:	00300c93          	li	s9,3
    80008044:	dddff06f          	j	80007e20 <__printf+0x3f8>
    80008048:	00400793          	li	a5,4
    8000804c:	00300c93          	li	s9,3
    80008050:	c39ff06f          	j	80007c88 <__printf+0x260>
    80008054:	00500793          	li	a5,5
    80008058:	00400c93          	li	s9,4
    8000805c:	c2dff06f          	j	80007c88 <__printf+0x260>
    80008060:	00500793          	li	a5,5
    80008064:	00400c93          	li	s9,4
    80008068:	db9ff06f          	j	80007e20 <__printf+0x3f8>
    8000806c:	00600793          	li	a5,6
    80008070:	00500c93          	li	s9,5
    80008074:	dadff06f          	j	80007e20 <__printf+0x3f8>
    80008078:	00600793          	li	a5,6
    8000807c:	00500c93          	li	s9,5
    80008080:	c09ff06f          	j	80007c88 <__printf+0x260>
    80008084:	00800793          	li	a5,8
    80008088:	00700c93          	li	s9,7
    8000808c:	bfdff06f          	j	80007c88 <__printf+0x260>
    80008090:	00100793          	li	a5,1
    80008094:	d91ff06f          	j	80007e24 <__printf+0x3fc>
    80008098:	00100793          	li	a5,1
    8000809c:	bf1ff06f          	j	80007c8c <__printf+0x264>
    800080a0:	00900793          	li	a5,9
    800080a4:	00800c93          	li	s9,8
    800080a8:	be1ff06f          	j	80007c88 <__printf+0x260>
    800080ac:	00001517          	auipc	a0,0x1
    800080b0:	5cc50513          	addi	a0,a0,1484 # 80009678 <CONSOLE_STATUS+0x668>
    800080b4:	00000097          	auipc	ra,0x0
    800080b8:	918080e7          	jalr	-1768(ra) # 800079cc <panic>

00000000800080bc <printfinit>:
    800080bc:	fe010113          	addi	sp,sp,-32
    800080c0:	00813823          	sd	s0,16(sp)
    800080c4:	00913423          	sd	s1,8(sp)
    800080c8:	00113c23          	sd	ra,24(sp)
    800080cc:	02010413          	addi	s0,sp,32
    800080d0:	00009497          	auipc	s1,0x9
    800080d4:	ff048493          	addi	s1,s1,-16 # 800110c0 <pr>
    800080d8:	00048513          	mv	a0,s1
    800080dc:	00001597          	auipc	a1,0x1
    800080e0:	5ac58593          	addi	a1,a1,1452 # 80009688 <CONSOLE_STATUS+0x678>
    800080e4:	00000097          	auipc	ra,0x0
    800080e8:	5f4080e7          	jalr	1524(ra) # 800086d8 <initlock>
    800080ec:	01813083          	ld	ra,24(sp)
    800080f0:	01013403          	ld	s0,16(sp)
    800080f4:	0004ac23          	sw	zero,24(s1)
    800080f8:	00813483          	ld	s1,8(sp)
    800080fc:	02010113          	addi	sp,sp,32
    80008100:	00008067          	ret

0000000080008104 <uartinit>:
    80008104:	ff010113          	addi	sp,sp,-16
    80008108:	00813423          	sd	s0,8(sp)
    8000810c:	01010413          	addi	s0,sp,16
    80008110:	100007b7          	lui	a5,0x10000
    80008114:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008118:	f8000713          	li	a4,-128
    8000811c:	00e781a3          	sb	a4,3(a5)
    80008120:	00300713          	li	a4,3
    80008124:	00e78023          	sb	a4,0(a5)
    80008128:	000780a3          	sb	zero,1(a5)
    8000812c:	00e781a3          	sb	a4,3(a5)
    80008130:	00700693          	li	a3,7
    80008134:	00d78123          	sb	a3,2(a5)
    80008138:	00e780a3          	sb	a4,1(a5)
    8000813c:	00813403          	ld	s0,8(sp)
    80008140:	01010113          	addi	sp,sp,16
    80008144:	00008067          	ret

0000000080008148 <uartputc>:
    80008148:	00004797          	auipc	a5,0x4
    8000814c:	c307a783          	lw	a5,-976(a5) # 8000bd78 <panicked>
    80008150:	00078463          	beqz	a5,80008158 <uartputc+0x10>
    80008154:	0000006f          	j	80008154 <uartputc+0xc>
    80008158:	fd010113          	addi	sp,sp,-48
    8000815c:	02813023          	sd	s0,32(sp)
    80008160:	00913c23          	sd	s1,24(sp)
    80008164:	01213823          	sd	s2,16(sp)
    80008168:	01313423          	sd	s3,8(sp)
    8000816c:	02113423          	sd	ra,40(sp)
    80008170:	03010413          	addi	s0,sp,48
    80008174:	00004917          	auipc	s2,0x4
    80008178:	c0c90913          	addi	s2,s2,-1012 # 8000bd80 <uart_tx_r>
    8000817c:	00093783          	ld	a5,0(s2)
    80008180:	00004497          	auipc	s1,0x4
    80008184:	c0848493          	addi	s1,s1,-1016 # 8000bd88 <uart_tx_w>
    80008188:	0004b703          	ld	a4,0(s1)
    8000818c:	02078693          	addi	a3,a5,32
    80008190:	00050993          	mv	s3,a0
    80008194:	02e69c63          	bne	a3,a4,800081cc <uartputc+0x84>
    80008198:	00001097          	auipc	ra,0x1
    8000819c:	834080e7          	jalr	-1996(ra) # 800089cc <push_on>
    800081a0:	00093783          	ld	a5,0(s2)
    800081a4:	0004b703          	ld	a4,0(s1)
    800081a8:	02078793          	addi	a5,a5,32
    800081ac:	00e79463          	bne	a5,a4,800081b4 <uartputc+0x6c>
    800081b0:	0000006f          	j	800081b0 <uartputc+0x68>
    800081b4:	00001097          	auipc	ra,0x1
    800081b8:	88c080e7          	jalr	-1908(ra) # 80008a40 <pop_on>
    800081bc:	00093783          	ld	a5,0(s2)
    800081c0:	0004b703          	ld	a4,0(s1)
    800081c4:	02078693          	addi	a3,a5,32
    800081c8:	fce688e3          	beq	a3,a4,80008198 <uartputc+0x50>
    800081cc:	01f77693          	andi	a3,a4,31
    800081d0:	00009597          	auipc	a1,0x9
    800081d4:	f1058593          	addi	a1,a1,-240 # 800110e0 <uart_tx_buf>
    800081d8:	00d586b3          	add	a3,a1,a3
    800081dc:	00170713          	addi	a4,a4,1
    800081e0:	01368023          	sb	s3,0(a3)
    800081e4:	00e4b023          	sd	a4,0(s1)
    800081e8:	10000637          	lui	a2,0x10000
    800081ec:	02f71063          	bne	a4,a5,8000820c <uartputc+0xc4>
    800081f0:	0340006f          	j	80008224 <uartputc+0xdc>
    800081f4:	00074703          	lbu	a4,0(a4)
    800081f8:	00f93023          	sd	a5,0(s2)
    800081fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008200:	00093783          	ld	a5,0(s2)
    80008204:	0004b703          	ld	a4,0(s1)
    80008208:	00f70e63          	beq	a4,a5,80008224 <uartputc+0xdc>
    8000820c:	00564683          	lbu	a3,5(a2)
    80008210:	01f7f713          	andi	a4,a5,31
    80008214:	00e58733          	add	a4,a1,a4
    80008218:	0206f693          	andi	a3,a3,32
    8000821c:	00178793          	addi	a5,a5,1
    80008220:	fc069ae3          	bnez	a3,800081f4 <uartputc+0xac>
    80008224:	02813083          	ld	ra,40(sp)
    80008228:	02013403          	ld	s0,32(sp)
    8000822c:	01813483          	ld	s1,24(sp)
    80008230:	01013903          	ld	s2,16(sp)
    80008234:	00813983          	ld	s3,8(sp)
    80008238:	03010113          	addi	sp,sp,48
    8000823c:	00008067          	ret

0000000080008240 <uartputc_sync>:
    80008240:	ff010113          	addi	sp,sp,-16
    80008244:	00813423          	sd	s0,8(sp)
    80008248:	01010413          	addi	s0,sp,16
    8000824c:	00004717          	auipc	a4,0x4
    80008250:	b2c72703          	lw	a4,-1236(a4) # 8000bd78 <panicked>
    80008254:	02071663          	bnez	a4,80008280 <uartputc_sync+0x40>
    80008258:	00050793          	mv	a5,a0
    8000825c:	100006b7          	lui	a3,0x10000
    80008260:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008264:	02077713          	andi	a4,a4,32
    80008268:	fe070ce3          	beqz	a4,80008260 <uartputc_sync+0x20>
    8000826c:	0ff7f793          	andi	a5,a5,255
    80008270:	00f68023          	sb	a5,0(a3)
    80008274:	00813403          	ld	s0,8(sp)
    80008278:	01010113          	addi	sp,sp,16
    8000827c:	00008067          	ret
    80008280:	0000006f          	j	80008280 <uartputc_sync+0x40>

0000000080008284 <uartstart>:
    80008284:	ff010113          	addi	sp,sp,-16
    80008288:	00813423          	sd	s0,8(sp)
    8000828c:	01010413          	addi	s0,sp,16
    80008290:	00004617          	auipc	a2,0x4
    80008294:	af060613          	addi	a2,a2,-1296 # 8000bd80 <uart_tx_r>
    80008298:	00004517          	auipc	a0,0x4
    8000829c:	af050513          	addi	a0,a0,-1296 # 8000bd88 <uart_tx_w>
    800082a0:	00063783          	ld	a5,0(a2)
    800082a4:	00053703          	ld	a4,0(a0)
    800082a8:	04f70263          	beq	a4,a5,800082ec <uartstart+0x68>
    800082ac:	100005b7          	lui	a1,0x10000
    800082b0:	00009817          	auipc	a6,0x9
    800082b4:	e3080813          	addi	a6,a6,-464 # 800110e0 <uart_tx_buf>
    800082b8:	01c0006f          	j	800082d4 <uartstart+0x50>
    800082bc:	0006c703          	lbu	a4,0(a3)
    800082c0:	00f63023          	sd	a5,0(a2)
    800082c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082c8:	00063783          	ld	a5,0(a2)
    800082cc:	00053703          	ld	a4,0(a0)
    800082d0:	00f70e63          	beq	a4,a5,800082ec <uartstart+0x68>
    800082d4:	01f7f713          	andi	a4,a5,31
    800082d8:	00e806b3          	add	a3,a6,a4
    800082dc:	0055c703          	lbu	a4,5(a1)
    800082e0:	00178793          	addi	a5,a5,1
    800082e4:	02077713          	andi	a4,a4,32
    800082e8:	fc071ae3          	bnez	a4,800082bc <uartstart+0x38>
    800082ec:	00813403          	ld	s0,8(sp)
    800082f0:	01010113          	addi	sp,sp,16
    800082f4:	00008067          	ret

00000000800082f8 <uartgetc>:
    800082f8:	ff010113          	addi	sp,sp,-16
    800082fc:	00813423          	sd	s0,8(sp)
    80008300:	01010413          	addi	s0,sp,16
    80008304:	10000737          	lui	a4,0x10000
    80008308:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000830c:	0017f793          	andi	a5,a5,1
    80008310:	00078c63          	beqz	a5,80008328 <uartgetc+0x30>
    80008314:	00074503          	lbu	a0,0(a4)
    80008318:	0ff57513          	andi	a0,a0,255
    8000831c:	00813403          	ld	s0,8(sp)
    80008320:	01010113          	addi	sp,sp,16
    80008324:	00008067          	ret
    80008328:	fff00513          	li	a0,-1
    8000832c:	ff1ff06f          	j	8000831c <uartgetc+0x24>

0000000080008330 <uartintr>:
    80008330:	100007b7          	lui	a5,0x10000
    80008334:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008338:	0017f793          	andi	a5,a5,1
    8000833c:	0a078463          	beqz	a5,800083e4 <uartintr+0xb4>
    80008340:	fe010113          	addi	sp,sp,-32
    80008344:	00813823          	sd	s0,16(sp)
    80008348:	00913423          	sd	s1,8(sp)
    8000834c:	00113c23          	sd	ra,24(sp)
    80008350:	02010413          	addi	s0,sp,32
    80008354:	100004b7          	lui	s1,0x10000
    80008358:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000835c:	0ff57513          	andi	a0,a0,255
    80008360:	fffff097          	auipc	ra,0xfffff
    80008364:	534080e7          	jalr	1332(ra) # 80007894 <consoleintr>
    80008368:	0054c783          	lbu	a5,5(s1)
    8000836c:	0017f793          	andi	a5,a5,1
    80008370:	fe0794e3          	bnez	a5,80008358 <uartintr+0x28>
    80008374:	00004617          	auipc	a2,0x4
    80008378:	a0c60613          	addi	a2,a2,-1524 # 8000bd80 <uart_tx_r>
    8000837c:	00004517          	auipc	a0,0x4
    80008380:	a0c50513          	addi	a0,a0,-1524 # 8000bd88 <uart_tx_w>
    80008384:	00063783          	ld	a5,0(a2)
    80008388:	00053703          	ld	a4,0(a0)
    8000838c:	04f70263          	beq	a4,a5,800083d0 <uartintr+0xa0>
    80008390:	100005b7          	lui	a1,0x10000
    80008394:	00009817          	auipc	a6,0x9
    80008398:	d4c80813          	addi	a6,a6,-692 # 800110e0 <uart_tx_buf>
    8000839c:	01c0006f          	j	800083b8 <uartintr+0x88>
    800083a0:	0006c703          	lbu	a4,0(a3)
    800083a4:	00f63023          	sd	a5,0(a2)
    800083a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800083ac:	00063783          	ld	a5,0(a2)
    800083b0:	00053703          	ld	a4,0(a0)
    800083b4:	00f70e63          	beq	a4,a5,800083d0 <uartintr+0xa0>
    800083b8:	01f7f713          	andi	a4,a5,31
    800083bc:	00e806b3          	add	a3,a6,a4
    800083c0:	0055c703          	lbu	a4,5(a1)
    800083c4:	00178793          	addi	a5,a5,1
    800083c8:	02077713          	andi	a4,a4,32
    800083cc:	fc071ae3          	bnez	a4,800083a0 <uartintr+0x70>
    800083d0:	01813083          	ld	ra,24(sp)
    800083d4:	01013403          	ld	s0,16(sp)
    800083d8:	00813483          	ld	s1,8(sp)
    800083dc:	02010113          	addi	sp,sp,32
    800083e0:	00008067          	ret
    800083e4:	00004617          	auipc	a2,0x4
    800083e8:	99c60613          	addi	a2,a2,-1636 # 8000bd80 <uart_tx_r>
    800083ec:	00004517          	auipc	a0,0x4
    800083f0:	99c50513          	addi	a0,a0,-1636 # 8000bd88 <uart_tx_w>
    800083f4:	00063783          	ld	a5,0(a2)
    800083f8:	00053703          	ld	a4,0(a0)
    800083fc:	04f70263          	beq	a4,a5,80008440 <uartintr+0x110>
    80008400:	100005b7          	lui	a1,0x10000
    80008404:	00009817          	auipc	a6,0x9
    80008408:	cdc80813          	addi	a6,a6,-804 # 800110e0 <uart_tx_buf>
    8000840c:	01c0006f          	j	80008428 <uartintr+0xf8>
    80008410:	0006c703          	lbu	a4,0(a3)
    80008414:	00f63023          	sd	a5,0(a2)
    80008418:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000841c:	00063783          	ld	a5,0(a2)
    80008420:	00053703          	ld	a4,0(a0)
    80008424:	02f70063          	beq	a4,a5,80008444 <uartintr+0x114>
    80008428:	01f7f713          	andi	a4,a5,31
    8000842c:	00e806b3          	add	a3,a6,a4
    80008430:	0055c703          	lbu	a4,5(a1)
    80008434:	00178793          	addi	a5,a5,1
    80008438:	02077713          	andi	a4,a4,32
    8000843c:	fc071ae3          	bnez	a4,80008410 <uartintr+0xe0>
    80008440:	00008067          	ret
    80008444:	00008067          	ret

0000000080008448 <kinit>:
    80008448:	fc010113          	addi	sp,sp,-64
    8000844c:	02913423          	sd	s1,40(sp)
    80008450:	fffff7b7          	lui	a5,0xfffff
    80008454:	0000a497          	auipc	s1,0xa
    80008458:	cab48493          	addi	s1,s1,-853 # 800120ff <end+0xfff>
    8000845c:	02813823          	sd	s0,48(sp)
    80008460:	01313c23          	sd	s3,24(sp)
    80008464:	00f4f4b3          	and	s1,s1,a5
    80008468:	02113c23          	sd	ra,56(sp)
    8000846c:	03213023          	sd	s2,32(sp)
    80008470:	01413823          	sd	s4,16(sp)
    80008474:	01513423          	sd	s5,8(sp)
    80008478:	04010413          	addi	s0,sp,64
    8000847c:	000017b7          	lui	a5,0x1
    80008480:	01100993          	li	s3,17
    80008484:	00f487b3          	add	a5,s1,a5
    80008488:	01b99993          	slli	s3,s3,0x1b
    8000848c:	06f9e063          	bltu	s3,a5,800084ec <kinit+0xa4>
    80008490:	00009a97          	auipc	s5,0x9
    80008494:	c70a8a93          	addi	s5,s5,-912 # 80011100 <end>
    80008498:	0754ec63          	bltu	s1,s5,80008510 <kinit+0xc8>
    8000849c:	0734fa63          	bgeu	s1,s3,80008510 <kinit+0xc8>
    800084a0:	00088a37          	lui	s4,0x88
    800084a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800084a8:	00004917          	auipc	s2,0x4
    800084ac:	8e890913          	addi	s2,s2,-1816 # 8000bd90 <kmem>
    800084b0:	00ca1a13          	slli	s4,s4,0xc
    800084b4:	0140006f          	j	800084c8 <kinit+0x80>
    800084b8:	000017b7          	lui	a5,0x1
    800084bc:	00f484b3          	add	s1,s1,a5
    800084c0:	0554e863          	bltu	s1,s5,80008510 <kinit+0xc8>
    800084c4:	0534f663          	bgeu	s1,s3,80008510 <kinit+0xc8>
    800084c8:	00001637          	lui	a2,0x1
    800084cc:	00100593          	li	a1,1
    800084d0:	00048513          	mv	a0,s1
    800084d4:	00000097          	auipc	ra,0x0
    800084d8:	5e4080e7          	jalr	1508(ra) # 80008ab8 <__memset>
    800084dc:	00093783          	ld	a5,0(s2)
    800084e0:	00f4b023          	sd	a5,0(s1)
    800084e4:	00993023          	sd	s1,0(s2)
    800084e8:	fd4498e3          	bne	s1,s4,800084b8 <kinit+0x70>
    800084ec:	03813083          	ld	ra,56(sp)
    800084f0:	03013403          	ld	s0,48(sp)
    800084f4:	02813483          	ld	s1,40(sp)
    800084f8:	02013903          	ld	s2,32(sp)
    800084fc:	01813983          	ld	s3,24(sp)
    80008500:	01013a03          	ld	s4,16(sp)
    80008504:	00813a83          	ld	s5,8(sp)
    80008508:	04010113          	addi	sp,sp,64
    8000850c:	00008067          	ret
    80008510:	00001517          	auipc	a0,0x1
    80008514:	19850513          	addi	a0,a0,408 # 800096a8 <digits+0x18>
    80008518:	fffff097          	auipc	ra,0xfffff
    8000851c:	4b4080e7          	jalr	1204(ra) # 800079cc <panic>

0000000080008520 <freerange>:
    80008520:	fc010113          	addi	sp,sp,-64
    80008524:	000017b7          	lui	a5,0x1
    80008528:	02913423          	sd	s1,40(sp)
    8000852c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008530:	009504b3          	add	s1,a0,s1
    80008534:	fffff537          	lui	a0,0xfffff
    80008538:	02813823          	sd	s0,48(sp)
    8000853c:	02113c23          	sd	ra,56(sp)
    80008540:	03213023          	sd	s2,32(sp)
    80008544:	01313c23          	sd	s3,24(sp)
    80008548:	01413823          	sd	s4,16(sp)
    8000854c:	01513423          	sd	s5,8(sp)
    80008550:	01613023          	sd	s6,0(sp)
    80008554:	04010413          	addi	s0,sp,64
    80008558:	00a4f4b3          	and	s1,s1,a0
    8000855c:	00f487b3          	add	a5,s1,a5
    80008560:	06f5e463          	bltu	a1,a5,800085c8 <freerange+0xa8>
    80008564:	00009a97          	auipc	s5,0x9
    80008568:	b9ca8a93          	addi	s5,s5,-1124 # 80011100 <end>
    8000856c:	0954e263          	bltu	s1,s5,800085f0 <freerange+0xd0>
    80008570:	01100993          	li	s3,17
    80008574:	01b99993          	slli	s3,s3,0x1b
    80008578:	0734fc63          	bgeu	s1,s3,800085f0 <freerange+0xd0>
    8000857c:	00058a13          	mv	s4,a1
    80008580:	00004917          	auipc	s2,0x4
    80008584:	81090913          	addi	s2,s2,-2032 # 8000bd90 <kmem>
    80008588:	00002b37          	lui	s6,0x2
    8000858c:	0140006f          	j	800085a0 <freerange+0x80>
    80008590:	000017b7          	lui	a5,0x1
    80008594:	00f484b3          	add	s1,s1,a5
    80008598:	0554ec63          	bltu	s1,s5,800085f0 <freerange+0xd0>
    8000859c:	0534fa63          	bgeu	s1,s3,800085f0 <freerange+0xd0>
    800085a0:	00001637          	lui	a2,0x1
    800085a4:	00100593          	li	a1,1
    800085a8:	00048513          	mv	a0,s1
    800085ac:	00000097          	auipc	ra,0x0
    800085b0:	50c080e7          	jalr	1292(ra) # 80008ab8 <__memset>
    800085b4:	00093703          	ld	a4,0(s2)
    800085b8:	016487b3          	add	a5,s1,s6
    800085bc:	00e4b023          	sd	a4,0(s1)
    800085c0:	00993023          	sd	s1,0(s2)
    800085c4:	fcfa76e3          	bgeu	s4,a5,80008590 <freerange+0x70>
    800085c8:	03813083          	ld	ra,56(sp)
    800085cc:	03013403          	ld	s0,48(sp)
    800085d0:	02813483          	ld	s1,40(sp)
    800085d4:	02013903          	ld	s2,32(sp)
    800085d8:	01813983          	ld	s3,24(sp)
    800085dc:	01013a03          	ld	s4,16(sp)
    800085e0:	00813a83          	ld	s5,8(sp)
    800085e4:	00013b03          	ld	s6,0(sp)
    800085e8:	04010113          	addi	sp,sp,64
    800085ec:	00008067          	ret
    800085f0:	00001517          	auipc	a0,0x1
    800085f4:	0b850513          	addi	a0,a0,184 # 800096a8 <digits+0x18>
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	3d4080e7          	jalr	980(ra) # 800079cc <panic>

0000000080008600 <kfree>:
    80008600:	fe010113          	addi	sp,sp,-32
    80008604:	00813823          	sd	s0,16(sp)
    80008608:	00113c23          	sd	ra,24(sp)
    8000860c:	00913423          	sd	s1,8(sp)
    80008610:	02010413          	addi	s0,sp,32
    80008614:	03451793          	slli	a5,a0,0x34
    80008618:	04079c63          	bnez	a5,80008670 <kfree+0x70>
    8000861c:	00009797          	auipc	a5,0x9
    80008620:	ae478793          	addi	a5,a5,-1308 # 80011100 <end>
    80008624:	00050493          	mv	s1,a0
    80008628:	04f56463          	bltu	a0,a5,80008670 <kfree+0x70>
    8000862c:	01100793          	li	a5,17
    80008630:	01b79793          	slli	a5,a5,0x1b
    80008634:	02f57e63          	bgeu	a0,a5,80008670 <kfree+0x70>
    80008638:	00001637          	lui	a2,0x1
    8000863c:	00100593          	li	a1,1
    80008640:	00000097          	auipc	ra,0x0
    80008644:	478080e7          	jalr	1144(ra) # 80008ab8 <__memset>
    80008648:	00003797          	auipc	a5,0x3
    8000864c:	74878793          	addi	a5,a5,1864 # 8000bd90 <kmem>
    80008650:	0007b703          	ld	a4,0(a5)
    80008654:	01813083          	ld	ra,24(sp)
    80008658:	01013403          	ld	s0,16(sp)
    8000865c:	00e4b023          	sd	a4,0(s1)
    80008660:	0097b023          	sd	s1,0(a5)
    80008664:	00813483          	ld	s1,8(sp)
    80008668:	02010113          	addi	sp,sp,32
    8000866c:	00008067          	ret
    80008670:	00001517          	auipc	a0,0x1
    80008674:	03850513          	addi	a0,a0,56 # 800096a8 <digits+0x18>
    80008678:	fffff097          	auipc	ra,0xfffff
    8000867c:	354080e7          	jalr	852(ra) # 800079cc <panic>

0000000080008680 <kalloc>:
    80008680:	fe010113          	addi	sp,sp,-32
    80008684:	00813823          	sd	s0,16(sp)
    80008688:	00913423          	sd	s1,8(sp)
    8000868c:	00113c23          	sd	ra,24(sp)
    80008690:	02010413          	addi	s0,sp,32
    80008694:	00003797          	auipc	a5,0x3
    80008698:	6fc78793          	addi	a5,a5,1788 # 8000bd90 <kmem>
    8000869c:	0007b483          	ld	s1,0(a5)
    800086a0:	02048063          	beqz	s1,800086c0 <kalloc+0x40>
    800086a4:	0004b703          	ld	a4,0(s1)
    800086a8:	00001637          	lui	a2,0x1
    800086ac:	00500593          	li	a1,5
    800086b0:	00048513          	mv	a0,s1
    800086b4:	00e7b023          	sd	a4,0(a5)
    800086b8:	00000097          	auipc	ra,0x0
    800086bc:	400080e7          	jalr	1024(ra) # 80008ab8 <__memset>
    800086c0:	01813083          	ld	ra,24(sp)
    800086c4:	01013403          	ld	s0,16(sp)
    800086c8:	00048513          	mv	a0,s1
    800086cc:	00813483          	ld	s1,8(sp)
    800086d0:	02010113          	addi	sp,sp,32
    800086d4:	00008067          	ret

00000000800086d8 <initlock>:
    800086d8:	ff010113          	addi	sp,sp,-16
    800086dc:	00813423          	sd	s0,8(sp)
    800086e0:	01010413          	addi	s0,sp,16
    800086e4:	00813403          	ld	s0,8(sp)
    800086e8:	00b53423          	sd	a1,8(a0)
    800086ec:	00052023          	sw	zero,0(a0)
    800086f0:	00053823          	sd	zero,16(a0)
    800086f4:	01010113          	addi	sp,sp,16
    800086f8:	00008067          	ret

00000000800086fc <acquire>:
    800086fc:	fe010113          	addi	sp,sp,-32
    80008700:	00813823          	sd	s0,16(sp)
    80008704:	00913423          	sd	s1,8(sp)
    80008708:	00113c23          	sd	ra,24(sp)
    8000870c:	01213023          	sd	s2,0(sp)
    80008710:	02010413          	addi	s0,sp,32
    80008714:	00050493          	mv	s1,a0
    80008718:	10002973          	csrr	s2,sstatus
    8000871c:	100027f3          	csrr	a5,sstatus
    80008720:	ffd7f793          	andi	a5,a5,-3
    80008724:	10079073          	csrw	sstatus,a5
    80008728:	fffff097          	auipc	ra,0xfffff
    8000872c:	8e4080e7          	jalr	-1820(ra) # 8000700c <mycpu>
    80008730:	07852783          	lw	a5,120(a0)
    80008734:	06078e63          	beqz	a5,800087b0 <acquire+0xb4>
    80008738:	fffff097          	auipc	ra,0xfffff
    8000873c:	8d4080e7          	jalr	-1836(ra) # 8000700c <mycpu>
    80008740:	07852783          	lw	a5,120(a0)
    80008744:	0004a703          	lw	a4,0(s1)
    80008748:	0017879b          	addiw	a5,a5,1
    8000874c:	06f52c23          	sw	a5,120(a0)
    80008750:	04071063          	bnez	a4,80008790 <acquire+0x94>
    80008754:	00100713          	li	a4,1
    80008758:	00070793          	mv	a5,a4
    8000875c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008760:	0007879b          	sext.w	a5,a5
    80008764:	fe079ae3          	bnez	a5,80008758 <acquire+0x5c>
    80008768:	0ff0000f          	fence
    8000876c:	fffff097          	auipc	ra,0xfffff
    80008770:	8a0080e7          	jalr	-1888(ra) # 8000700c <mycpu>
    80008774:	01813083          	ld	ra,24(sp)
    80008778:	01013403          	ld	s0,16(sp)
    8000877c:	00a4b823          	sd	a0,16(s1)
    80008780:	00013903          	ld	s2,0(sp)
    80008784:	00813483          	ld	s1,8(sp)
    80008788:	02010113          	addi	sp,sp,32
    8000878c:	00008067          	ret
    80008790:	0104b903          	ld	s2,16(s1)
    80008794:	fffff097          	auipc	ra,0xfffff
    80008798:	878080e7          	jalr	-1928(ra) # 8000700c <mycpu>
    8000879c:	faa91ce3          	bne	s2,a0,80008754 <acquire+0x58>
    800087a0:	00001517          	auipc	a0,0x1
    800087a4:	f1050513          	addi	a0,a0,-240 # 800096b0 <digits+0x20>
    800087a8:	fffff097          	auipc	ra,0xfffff
    800087ac:	224080e7          	jalr	548(ra) # 800079cc <panic>
    800087b0:	00195913          	srli	s2,s2,0x1
    800087b4:	fffff097          	auipc	ra,0xfffff
    800087b8:	858080e7          	jalr	-1960(ra) # 8000700c <mycpu>
    800087bc:	00197913          	andi	s2,s2,1
    800087c0:	07252e23          	sw	s2,124(a0)
    800087c4:	f75ff06f          	j	80008738 <acquire+0x3c>

00000000800087c8 <release>:
    800087c8:	fe010113          	addi	sp,sp,-32
    800087cc:	00813823          	sd	s0,16(sp)
    800087d0:	00113c23          	sd	ra,24(sp)
    800087d4:	00913423          	sd	s1,8(sp)
    800087d8:	01213023          	sd	s2,0(sp)
    800087dc:	02010413          	addi	s0,sp,32
    800087e0:	00052783          	lw	a5,0(a0)
    800087e4:	00079a63          	bnez	a5,800087f8 <release+0x30>
    800087e8:	00001517          	auipc	a0,0x1
    800087ec:	ed050513          	addi	a0,a0,-304 # 800096b8 <digits+0x28>
    800087f0:	fffff097          	auipc	ra,0xfffff
    800087f4:	1dc080e7          	jalr	476(ra) # 800079cc <panic>
    800087f8:	01053903          	ld	s2,16(a0)
    800087fc:	00050493          	mv	s1,a0
    80008800:	fffff097          	auipc	ra,0xfffff
    80008804:	80c080e7          	jalr	-2036(ra) # 8000700c <mycpu>
    80008808:	fea910e3          	bne	s2,a0,800087e8 <release+0x20>
    8000880c:	0004b823          	sd	zero,16(s1)
    80008810:	0ff0000f          	fence
    80008814:	0f50000f          	fence	iorw,ow
    80008818:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000881c:	ffffe097          	auipc	ra,0xffffe
    80008820:	7f0080e7          	jalr	2032(ra) # 8000700c <mycpu>
    80008824:	100027f3          	csrr	a5,sstatus
    80008828:	0027f793          	andi	a5,a5,2
    8000882c:	04079a63          	bnez	a5,80008880 <release+0xb8>
    80008830:	07852783          	lw	a5,120(a0)
    80008834:	02f05e63          	blez	a5,80008870 <release+0xa8>
    80008838:	fff7871b          	addiw	a4,a5,-1
    8000883c:	06e52c23          	sw	a4,120(a0)
    80008840:	00071c63          	bnez	a4,80008858 <release+0x90>
    80008844:	07c52783          	lw	a5,124(a0)
    80008848:	00078863          	beqz	a5,80008858 <release+0x90>
    8000884c:	100027f3          	csrr	a5,sstatus
    80008850:	0027e793          	ori	a5,a5,2
    80008854:	10079073          	csrw	sstatus,a5
    80008858:	01813083          	ld	ra,24(sp)
    8000885c:	01013403          	ld	s0,16(sp)
    80008860:	00813483          	ld	s1,8(sp)
    80008864:	00013903          	ld	s2,0(sp)
    80008868:	02010113          	addi	sp,sp,32
    8000886c:	00008067          	ret
    80008870:	00001517          	auipc	a0,0x1
    80008874:	e6850513          	addi	a0,a0,-408 # 800096d8 <digits+0x48>
    80008878:	fffff097          	auipc	ra,0xfffff
    8000887c:	154080e7          	jalr	340(ra) # 800079cc <panic>
    80008880:	00001517          	auipc	a0,0x1
    80008884:	e4050513          	addi	a0,a0,-448 # 800096c0 <digits+0x30>
    80008888:	fffff097          	auipc	ra,0xfffff
    8000888c:	144080e7          	jalr	324(ra) # 800079cc <panic>

0000000080008890 <holding>:
    80008890:	00052783          	lw	a5,0(a0)
    80008894:	00079663          	bnez	a5,800088a0 <holding+0x10>
    80008898:	00000513          	li	a0,0
    8000889c:	00008067          	ret
    800088a0:	fe010113          	addi	sp,sp,-32
    800088a4:	00813823          	sd	s0,16(sp)
    800088a8:	00913423          	sd	s1,8(sp)
    800088ac:	00113c23          	sd	ra,24(sp)
    800088b0:	02010413          	addi	s0,sp,32
    800088b4:	01053483          	ld	s1,16(a0)
    800088b8:	ffffe097          	auipc	ra,0xffffe
    800088bc:	754080e7          	jalr	1876(ra) # 8000700c <mycpu>
    800088c0:	01813083          	ld	ra,24(sp)
    800088c4:	01013403          	ld	s0,16(sp)
    800088c8:	40a48533          	sub	a0,s1,a0
    800088cc:	00153513          	seqz	a0,a0
    800088d0:	00813483          	ld	s1,8(sp)
    800088d4:	02010113          	addi	sp,sp,32
    800088d8:	00008067          	ret

00000000800088dc <push_off>:
    800088dc:	fe010113          	addi	sp,sp,-32
    800088e0:	00813823          	sd	s0,16(sp)
    800088e4:	00113c23          	sd	ra,24(sp)
    800088e8:	00913423          	sd	s1,8(sp)
    800088ec:	02010413          	addi	s0,sp,32
    800088f0:	100024f3          	csrr	s1,sstatus
    800088f4:	100027f3          	csrr	a5,sstatus
    800088f8:	ffd7f793          	andi	a5,a5,-3
    800088fc:	10079073          	csrw	sstatus,a5
    80008900:	ffffe097          	auipc	ra,0xffffe
    80008904:	70c080e7          	jalr	1804(ra) # 8000700c <mycpu>
    80008908:	07852783          	lw	a5,120(a0)
    8000890c:	02078663          	beqz	a5,80008938 <push_off+0x5c>
    80008910:	ffffe097          	auipc	ra,0xffffe
    80008914:	6fc080e7          	jalr	1788(ra) # 8000700c <mycpu>
    80008918:	07852783          	lw	a5,120(a0)
    8000891c:	01813083          	ld	ra,24(sp)
    80008920:	01013403          	ld	s0,16(sp)
    80008924:	0017879b          	addiw	a5,a5,1
    80008928:	06f52c23          	sw	a5,120(a0)
    8000892c:	00813483          	ld	s1,8(sp)
    80008930:	02010113          	addi	sp,sp,32
    80008934:	00008067          	ret
    80008938:	0014d493          	srli	s1,s1,0x1
    8000893c:	ffffe097          	auipc	ra,0xffffe
    80008940:	6d0080e7          	jalr	1744(ra) # 8000700c <mycpu>
    80008944:	0014f493          	andi	s1,s1,1
    80008948:	06952e23          	sw	s1,124(a0)
    8000894c:	fc5ff06f          	j	80008910 <push_off+0x34>

0000000080008950 <pop_off>:
    80008950:	ff010113          	addi	sp,sp,-16
    80008954:	00813023          	sd	s0,0(sp)
    80008958:	00113423          	sd	ra,8(sp)
    8000895c:	01010413          	addi	s0,sp,16
    80008960:	ffffe097          	auipc	ra,0xffffe
    80008964:	6ac080e7          	jalr	1708(ra) # 8000700c <mycpu>
    80008968:	100027f3          	csrr	a5,sstatus
    8000896c:	0027f793          	andi	a5,a5,2
    80008970:	04079663          	bnez	a5,800089bc <pop_off+0x6c>
    80008974:	07852783          	lw	a5,120(a0)
    80008978:	02f05a63          	blez	a5,800089ac <pop_off+0x5c>
    8000897c:	fff7871b          	addiw	a4,a5,-1
    80008980:	06e52c23          	sw	a4,120(a0)
    80008984:	00071c63          	bnez	a4,8000899c <pop_off+0x4c>
    80008988:	07c52783          	lw	a5,124(a0)
    8000898c:	00078863          	beqz	a5,8000899c <pop_off+0x4c>
    80008990:	100027f3          	csrr	a5,sstatus
    80008994:	0027e793          	ori	a5,a5,2
    80008998:	10079073          	csrw	sstatus,a5
    8000899c:	00813083          	ld	ra,8(sp)
    800089a0:	00013403          	ld	s0,0(sp)
    800089a4:	01010113          	addi	sp,sp,16
    800089a8:	00008067          	ret
    800089ac:	00001517          	auipc	a0,0x1
    800089b0:	d2c50513          	addi	a0,a0,-724 # 800096d8 <digits+0x48>
    800089b4:	fffff097          	auipc	ra,0xfffff
    800089b8:	018080e7          	jalr	24(ra) # 800079cc <panic>
    800089bc:	00001517          	auipc	a0,0x1
    800089c0:	d0450513          	addi	a0,a0,-764 # 800096c0 <digits+0x30>
    800089c4:	fffff097          	auipc	ra,0xfffff
    800089c8:	008080e7          	jalr	8(ra) # 800079cc <panic>

00000000800089cc <push_on>:
    800089cc:	fe010113          	addi	sp,sp,-32
    800089d0:	00813823          	sd	s0,16(sp)
    800089d4:	00113c23          	sd	ra,24(sp)
    800089d8:	00913423          	sd	s1,8(sp)
    800089dc:	02010413          	addi	s0,sp,32
    800089e0:	100024f3          	csrr	s1,sstatus
    800089e4:	100027f3          	csrr	a5,sstatus
    800089e8:	0027e793          	ori	a5,a5,2
    800089ec:	10079073          	csrw	sstatus,a5
    800089f0:	ffffe097          	auipc	ra,0xffffe
    800089f4:	61c080e7          	jalr	1564(ra) # 8000700c <mycpu>
    800089f8:	07852783          	lw	a5,120(a0)
    800089fc:	02078663          	beqz	a5,80008a28 <push_on+0x5c>
    80008a00:	ffffe097          	auipc	ra,0xffffe
    80008a04:	60c080e7          	jalr	1548(ra) # 8000700c <mycpu>
    80008a08:	07852783          	lw	a5,120(a0)
    80008a0c:	01813083          	ld	ra,24(sp)
    80008a10:	01013403          	ld	s0,16(sp)
    80008a14:	0017879b          	addiw	a5,a5,1
    80008a18:	06f52c23          	sw	a5,120(a0)
    80008a1c:	00813483          	ld	s1,8(sp)
    80008a20:	02010113          	addi	sp,sp,32
    80008a24:	00008067          	ret
    80008a28:	0014d493          	srli	s1,s1,0x1
    80008a2c:	ffffe097          	auipc	ra,0xffffe
    80008a30:	5e0080e7          	jalr	1504(ra) # 8000700c <mycpu>
    80008a34:	0014f493          	andi	s1,s1,1
    80008a38:	06952e23          	sw	s1,124(a0)
    80008a3c:	fc5ff06f          	j	80008a00 <push_on+0x34>

0000000080008a40 <pop_on>:
    80008a40:	ff010113          	addi	sp,sp,-16
    80008a44:	00813023          	sd	s0,0(sp)
    80008a48:	00113423          	sd	ra,8(sp)
    80008a4c:	01010413          	addi	s0,sp,16
    80008a50:	ffffe097          	auipc	ra,0xffffe
    80008a54:	5bc080e7          	jalr	1468(ra) # 8000700c <mycpu>
    80008a58:	100027f3          	csrr	a5,sstatus
    80008a5c:	0027f793          	andi	a5,a5,2
    80008a60:	04078463          	beqz	a5,80008aa8 <pop_on+0x68>
    80008a64:	07852783          	lw	a5,120(a0)
    80008a68:	02f05863          	blez	a5,80008a98 <pop_on+0x58>
    80008a6c:	fff7879b          	addiw	a5,a5,-1
    80008a70:	06f52c23          	sw	a5,120(a0)
    80008a74:	07853783          	ld	a5,120(a0)
    80008a78:	00079863          	bnez	a5,80008a88 <pop_on+0x48>
    80008a7c:	100027f3          	csrr	a5,sstatus
    80008a80:	ffd7f793          	andi	a5,a5,-3
    80008a84:	10079073          	csrw	sstatus,a5
    80008a88:	00813083          	ld	ra,8(sp)
    80008a8c:	00013403          	ld	s0,0(sp)
    80008a90:	01010113          	addi	sp,sp,16
    80008a94:	00008067          	ret
    80008a98:	00001517          	auipc	a0,0x1
    80008a9c:	c6850513          	addi	a0,a0,-920 # 80009700 <digits+0x70>
    80008aa0:	fffff097          	auipc	ra,0xfffff
    80008aa4:	f2c080e7          	jalr	-212(ra) # 800079cc <panic>
    80008aa8:	00001517          	auipc	a0,0x1
    80008aac:	c3850513          	addi	a0,a0,-968 # 800096e0 <digits+0x50>
    80008ab0:	fffff097          	auipc	ra,0xfffff
    80008ab4:	f1c080e7          	jalr	-228(ra) # 800079cc <panic>

0000000080008ab8 <__memset>:
    80008ab8:	ff010113          	addi	sp,sp,-16
    80008abc:	00813423          	sd	s0,8(sp)
    80008ac0:	01010413          	addi	s0,sp,16
    80008ac4:	1a060e63          	beqz	a2,80008c80 <__memset+0x1c8>
    80008ac8:	40a007b3          	neg	a5,a0
    80008acc:	0077f793          	andi	a5,a5,7
    80008ad0:	00778693          	addi	a3,a5,7
    80008ad4:	00b00813          	li	a6,11
    80008ad8:	0ff5f593          	andi	a1,a1,255
    80008adc:	fff6071b          	addiw	a4,a2,-1
    80008ae0:	1b06e663          	bltu	a3,a6,80008c8c <__memset+0x1d4>
    80008ae4:	1cd76463          	bltu	a4,a3,80008cac <__memset+0x1f4>
    80008ae8:	1a078e63          	beqz	a5,80008ca4 <__memset+0x1ec>
    80008aec:	00b50023          	sb	a1,0(a0)
    80008af0:	00100713          	li	a4,1
    80008af4:	1ae78463          	beq	a5,a4,80008c9c <__memset+0x1e4>
    80008af8:	00b500a3          	sb	a1,1(a0)
    80008afc:	00200713          	li	a4,2
    80008b00:	1ae78a63          	beq	a5,a4,80008cb4 <__memset+0x1fc>
    80008b04:	00b50123          	sb	a1,2(a0)
    80008b08:	00300713          	li	a4,3
    80008b0c:	18e78463          	beq	a5,a4,80008c94 <__memset+0x1dc>
    80008b10:	00b501a3          	sb	a1,3(a0)
    80008b14:	00400713          	li	a4,4
    80008b18:	1ae78263          	beq	a5,a4,80008cbc <__memset+0x204>
    80008b1c:	00b50223          	sb	a1,4(a0)
    80008b20:	00500713          	li	a4,5
    80008b24:	1ae78063          	beq	a5,a4,80008cc4 <__memset+0x20c>
    80008b28:	00b502a3          	sb	a1,5(a0)
    80008b2c:	00700713          	li	a4,7
    80008b30:	18e79e63          	bne	a5,a4,80008ccc <__memset+0x214>
    80008b34:	00b50323          	sb	a1,6(a0)
    80008b38:	00700e93          	li	t4,7
    80008b3c:	00859713          	slli	a4,a1,0x8
    80008b40:	00e5e733          	or	a4,a1,a4
    80008b44:	01059e13          	slli	t3,a1,0x10
    80008b48:	01c76e33          	or	t3,a4,t3
    80008b4c:	01859313          	slli	t1,a1,0x18
    80008b50:	006e6333          	or	t1,t3,t1
    80008b54:	02059893          	slli	a7,a1,0x20
    80008b58:	40f60e3b          	subw	t3,a2,a5
    80008b5c:	011368b3          	or	a7,t1,a7
    80008b60:	02859813          	slli	a6,a1,0x28
    80008b64:	0108e833          	or	a6,a7,a6
    80008b68:	03059693          	slli	a3,a1,0x30
    80008b6c:	003e589b          	srliw	a7,t3,0x3
    80008b70:	00d866b3          	or	a3,a6,a3
    80008b74:	03859713          	slli	a4,a1,0x38
    80008b78:	00389813          	slli	a6,a7,0x3
    80008b7c:	00f507b3          	add	a5,a0,a5
    80008b80:	00e6e733          	or	a4,a3,a4
    80008b84:	000e089b          	sext.w	a7,t3
    80008b88:	00f806b3          	add	a3,a6,a5
    80008b8c:	00e7b023          	sd	a4,0(a5)
    80008b90:	00878793          	addi	a5,a5,8
    80008b94:	fed79ce3          	bne	a5,a3,80008b8c <__memset+0xd4>
    80008b98:	ff8e7793          	andi	a5,t3,-8
    80008b9c:	0007871b          	sext.w	a4,a5
    80008ba0:	01d787bb          	addw	a5,a5,t4
    80008ba4:	0ce88e63          	beq	a7,a4,80008c80 <__memset+0x1c8>
    80008ba8:	00f50733          	add	a4,a0,a5
    80008bac:	00b70023          	sb	a1,0(a4)
    80008bb0:	0017871b          	addiw	a4,a5,1
    80008bb4:	0cc77663          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008bb8:	00e50733          	add	a4,a0,a4
    80008bbc:	00b70023          	sb	a1,0(a4)
    80008bc0:	0027871b          	addiw	a4,a5,2
    80008bc4:	0ac77e63          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008bc8:	00e50733          	add	a4,a0,a4
    80008bcc:	00b70023          	sb	a1,0(a4)
    80008bd0:	0037871b          	addiw	a4,a5,3
    80008bd4:	0ac77663          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008bd8:	00e50733          	add	a4,a0,a4
    80008bdc:	00b70023          	sb	a1,0(a4)
    80008be0:	0047871b          	addiw	a4,a5,4
    80008be4:	08c77e63          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008be8:	00e50733          	add	a4,a0,a4
    80008bec:	00b70023          	sb	a1,0(a4)
    80008bf0:	0057871b          	addiw	a4,a5,5
    80008bf4:	08c77663          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008bf8:	00e50733          	add	a4,a0,a4
    80008bfc:	00b70023          	sb	a1,0(a4)
    80008c00:	0067871b          	addiw	a4,a5,6
    80008c04:	06c77e63          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008c08:	00e50733          	add	a4,a0,a4
    80008c0c:	00b70023          	sb	a1,0(a4)
    80008c10:	0077871b          	addiw	a4,a5,7
    80008c14:	06c77663          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008c18:	00e50733          	add	a4,a0,a4
    80008c1c:	00b70023          	sb	a1,0(a4)
    80008c20:	0087871b          	addiw	a4,a5,8
    80008c24:	04c77e63          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008c28:	00e50733          	add	a4,a0,a4
    80008c2c:	00b70023          	sb	a1,0(a4)
    80008c30:	0097871b          	addiw	a4,a5,9
    80008c34:	04c77663          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008c38:	00e50733          	add	a4,a0,a4
    80008c3c:	00b70023          	sb	a1,0(a4)
    80008c40:	00a7871b          	addiw	a4,a5,10
    80008c44:	02c77e63          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008c48:	00e50733          	add	a4,a0,a4
    80008c4c:	00b70023          	sb	a1,0(a4)
    80008c50:	00b7871b          	addiw	a4,a5,11
    80008c54:	02c77663          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008c58:	00e50733          	add	a4,a0,a4
    80008c5c:	00b70023          	sb	a1,0(a4)
    80008c60:	00c7871b          	addiw	a4,a5,12
    80008c64:	00c77e63          	bgeu	a4,a2,80008c80 <__memset+0x1c8>
    80008c68:	00e50733          	add	a4,a0,a4
    80008c6c:	00b70023          	sb	a1,0(a4)
    80008c70:	00d7879b          	addiw	a5,a5,13
    80008c74:	00c7f663          	bgeu	a5,a2,80008c80 <__memset+0x1c8>
    80008c78:	00f507b3          	add	a5,a0,a5
    80008c7c:	00b78023          	sb	a1,0(a5)
    80008c80:	00813403          	ld	s0,8(sp)
    80008c84:	01010113          	addi	sp,sp,16
    80008c88:	00008067          	ret
    80008c8c:	00b00693          	li	a3,11
    80008c90:	e55ff06f          	j	80008ae4 <__memset+0x2c>
    80008c94:	00300e93          	li	t4,3
    80008c98:	ea5ff06f          	j	80008b3c <__memset+0x84>
    80008c9c:	00100e93          	li	t4,1
    80008ca0:	e9dff06f          	j	80008b3c <__memset+0x84>
    80008ca4:	00000e93          	li	t4,0
    80008ca8:	e95ff06f          	j	80008b3c <__memset+0x84>
    80008cac:	00000793          	li	a5,0
    80008cb0:	ef9ff06f          	j	80008ba8 <__memset+0xf0>
    80008cb4:	00200e93          	li	t4,2
    80008cb8:	e85ff06f          	j	80008b3c <__memset+0x84>
    80008cbc:	00400e93          	li	t4,4
    80008cc0:	e7dff06f          	j	80008b3c <__memset+0x84>
    80008cc4:	00500e93          	li	t4,5
    80008cc8:	e75ff06f          	j	80008b3c <__memset+0x84>
    80008ccc:	00600e93          	li	t4,6
    80008cd0:	e6dff06f          	j	80008b3c <__memset+0x84>

0000000080008cd4 <__memmove>:
    80008cd4:	ff010113          	addi	sp,sp,-16
    80008cd8:	00813423          	sd	s0,8(sp)
    80008cdc:	01010413          	addi	s0,sp,16
    80008ce0:	0e060863          	beqz	a2,80008dd0 <__memmove+0xfc>
    80008ce4:	fff6069b          	addiw	a3,a2,-1
    80008ce8:	0006881b          	sext.w	a6,a3
    80008cec:	0ea5e863          	bltu	a1,a0,80008ddc <__memmove+0x108>
    80008cf0:	00758713          	addi	a4,a1,7
    80008cf4:	00a5e7b3          	or	a5,a1,a0
    80008cf8:	40a70733          	sub	a4,a4,a0
    80008cfc:	0077f793          	andi	a5,a5,7
    80008d00:	00f73713          	sltiu	a4,a4,15
    80008d04:	00174713          	xori	a4,a4,1
    80008d08:	0017b793          	seqz	a5,a5
    80008d0c:	00e7f7b3          	and	a5,a5,a4
    80008d10:	10078863          	beqz	a5,80008e20 <__memmove+0x14c>
    80008d14:	00900793          	li	a5,9
    80008d18:	1107f463          	bgeu	a5,a6,80008e20 <__memmove+0x14c>
    80008d1c:	0036581b          	srliw	a6,a2,0x3
    80008d20:	fff8081b          	addiw	a6,a6,-1
    80008d24:	02081813          	slli	a6,a6,0x20
    80008d28:	01d85893          	srli	a7,a6,0x1d
    80008d2c:	00858813          	addi	a6,a1,8
    80008d30:	00058793          	mv	a5,a1
    80008d34:	00050713          	mv	a4,a0
    80008d38:	01088833          	add	a6,a7,a6
    80008d3c:	0007b883          	ld	a7,0(a5)
    80008d40:	00878793          	addi	a5,a5,8
    80008d44:	00870713          	addi	a4,a4,8
    80008d48:	ff173c23          	sd	a7,-8(a4)
    80008d4c:	ff0798e3          	bne	a5,a6,80008d3c <__memmove+0x68>
    80008d50:	ff867713          	andi	a4,a2,-8
    80008d54:	02071793          	slli	a5,a4,0x20
    80008d58:	0207d793          	srli	a5,a5,0x20
    80008d5c:	00f585b3          	add	a1,a1,a5
    80008d60:	40e686bb          	subw	a3,a3,a4
    80008d64:	00f507b3          	add	a5,a0,a5
    80008d68:	06e60463          	beq	a2,a4,80008dd0 <__memmove+0xfc>
    80008d6c:	0005c703          	lbu	a4,0(a1)
    80008d70:	00e78023          	sb	a4,0(a5)
    80008d74:	04068e63          	beqz	a3,80008dd0 <__memmove+0xfc>
    80008d78:	0015c603          	lbu	a2,1(a1)
    80008d7c:	00100713          	li	a4,1
    80008d80:	00c780a3          	sb	a2,1(a5)
    80008d84:	04e68663          	beq	a3,a4,80008dd0 <__memmove+0xfc>
    80008d88:	0025c603          	lbu	a2,2(a1)
    80008d8c:	00200713          	li	a4,2
    80008d90:	00c78123          	sb	a2,2(a5)
    80008d94:	02e68e63          	beq	a3,a4,80008dd0 <__memmove+0xfc>
    80008d98:	0035c603          	lbu	a2,3(a1)
    80008d9c:	00300713          	li	a4,3
    80008da0:	00c781a3          	sb	a2,3(a5)
    80008da4:	02e68663          	beq	a3,a4,80008dd0 <__memmove+0xfc>
    80008da8:	0045c603          	lbu	a2,4(a1)
    80008dac:	00400713          	li	a4,4
    80008db0:	00c78223          	sb	a2,4(a5)
    80008db4:	00e68e63          	beq	a3,a4,80008dd0 <__memmove+0xfc>
    80008db8:	0055c603          	lbu	a2,5(a1)
    80008dbc:	00500713          	li	a4,5
    80008dc0:	00c782a3          	sb	a2,5(a5)
    80008dc4:	00e68663          	beq	a3,a4,80008dd0 <__memmove+0xfc>
    80008dc8:	0065c703          	lbu	a4,6(a1)
    80008dcc:	00e78323          	sb	a4,6(a5)
    80008dd0:	00813403          	ld	s0,8(sp)
    80008dd4:	01010113          	addi	sp,sp,16
    80008dd8:	00008067          	ret
    80008ddc:	02061713          	slli	a4,a2,0x20
    80008de0:	02075713          	srli	a4,a4,0x20
    80008de4:	00e587b3          	add	a5,a1,a4
    80008de8:	f0f574e3          	bgeu	a0,a5,80008cf0 <__memmove+0x1c>
    80008dec:	02069613          	slli	a2,a3,0x20
    80008df0:	02065613          	srli	a2,a2,0x20
    80008df4:	fff64613          	not	a2,a2
    80008df8:	00e50733          	add	a4,a0,a4
    80008dfc:	00c78633          	add	a2,a5,a2
    80008e00:	fff7c683          	lbu	a3,-1(a5)
    80008e04:	fff78793          	addi	a5,a5,-1
    80008e08:	fff70713          	addi	a4,a4,-1
    80008e0c:	00d70023          	sb	a3,0(a4)
    80008e10:	fec798e3          	bne	a5,a2,80008e00 <__memmove+0x12c>
    80008e14:	00813403          	ld	s0,8(sp)
    80008e18:	01010113          	addi	sp,sp,16
    80008e1c:	00008067          	ret
    80008e20:	02069713          	slli	a4,a3,0x20
    80008e24:	02075713          	srli	a4,a4,0x20
    80008e28:	00170713          	addi	a4,a4,1
    80008e2c:	00e50733          	add	a4,a0,a4
    80008e30:	00050793          	mv	a5,a0
    80008e34:	0005c683          	lbu	a3,0(a1)
    80008e38:	00178793          	addi	a5,a5,1
    80008e3c:	00158593          	addi	a1,a1,1
    80008e40:	fed78fa3          	sb	a3,-1(a5)
    80008e44:	fee798e3          	bne	a5,a4,80008e34 <__memmove+0x160>
    80008e48:	f89ff06f          	j	80008dd0 <__memmove+0xfc>
	...
