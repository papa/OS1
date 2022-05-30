
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ab013103          	ld	sp,-1360(sp) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	71c060ef          	jal	ra,80006738 <start>

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
    80001088:	295020ef          	jal	ra,80003b1c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001578:	6ac080e7          	jalr	1708(ra) # 80005c20 <_Z11printStringPKc>
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
    800015a8:	67c080e7          	jalr	1660(ra) # 80005c20 <_Z11printStringPKc>
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
    800015c8:	65c080e7          	jalr	1628(ra) # 80005c20 <_Z11printStringPKc>
        printInt(i);
    800015cc:	00000613          	li	a2,0
    800015d0:	00a00593          	li	a1,10
    800015d4:	0004851b          	sext.w	a0,s1
    800015d8:	00004097          	auipc	ra,0x4
    800015dc:	7e0080e7          	jalr	2016(ra) # 80005db8 <_Z8printIntiii>
        printString("\n");
    800015e0:	00008517          	auipc	a0,0x8
    800015e4:	b2050513          	addi	a0,a0,-1248 # 80009100 <CONSOLE_STATUS+0xf0>
    800015e8:	00004097          	auipc	ra,0x4
    800015ec:	638080e7          	jalr	1592(ra) # 80005c20 <_Z11printStringPKc>
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
    80001648:	5dc080e7          	jalr	1500(ra) # 80005c20 <_Z11printStringPKc>
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
    80001668:	5bc080e7          	jalr	1468(ra) # 80005c20 <_Z11printStringPKc>
        printInt(j);
    8000166c:	00000613          	li	a2,0
    80001670:	00a00593          	li	a1,10
    80001674:	0004851b          	sext.w	a0,s1
    80001678:	00004097          	auipc	ra,0x4
    8000167c:	740080e7          	jalr	1856(ra) # 80005db8 <_Z8printIntiii>
        printString("\n");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	a8050513          	addi	a0,a0,-1408 # 80009100 <CONSOLE_STATUS+0xf0>
    80001688:	00004097          	auipc	ra,0x4
    8000168c:	598080e7          	jalr	1432(ra) # 80005c20 <_Z11printStringPKc>
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
    800016f8:	52c080e7          	jalr	1324(ra) # 80005c20 <_Z11printStringPKc>
        printInt(i);
    800016fc:	00000613          	li	a2,0
    80001700:	00a00593          	li	a1,10
    80001704:	00048513          	mv	a0,s1
    80001708:	00004097          	auipc	ra,0x4
    8000170c:	6b0080e7          	jalr	1712(ra) # 80005db8 <_Z8printIntiii>
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
    8000174c:	4d8080e7          	jalr	1240(ra) # 80005c20 <_Z11printStringPKc>
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
    80001778:	4ac080e7          	jalr	1196(ra) # 80005c20 <_Z11printStringPKc>
        printInt(j);
    8000177c:	00000613          	li	a2,0
    80001780:	00a00593          	li	a1,10
    80001784:	0004851b          	sext.w	a0,s1
    80001788:	00004097          	auipc	ra,0x4
    8000178c:	630080e7          	jalr	1584(ra) # 80005db8 <_Z8printIntiii>
        printString("\n");
    80001790:	00008517          	auipc	a0,0x8
    80001794:	97050513          	addi	a0,a0,-1680 # 80009100 <CONSOLE_STATUS+0xf0>
    80001798:	00004097          	auipc	ra,0x4
    8000179c:	488080e7          	jalr	1160(ra) # 80005c20 <_Z11printStringPKc>
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
    800017e4:	35072703          	lw	a4,848(a4) # 8000bb30 <head>
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
    80001808:	32c48493          	addi	s1,s1,812 # 8000bb30 <head>
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
    80001830:	fd0080e7          	jalr	-48(ra) # 800087fc <__putc>
        sem_signal(spaceAvailable);
    80001834:	0204b503          	ld	a0,32(s1)
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	bd4080e7          	jalr	-1068(ra) # 8000140c <sem_signal>
    while(head!=10)
    80001840:	0000a717          	auipc	a4,0xa
    80001844:	2f072703          	lw	a4,752(a4) # 8000bb30 <head>
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
    8000186c:	2f072703          	lw	a4,752(a4) # 8000bb58 <tail>
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
    80001890:	2a448493          	addi	s1,s1,676 # 8000bb30 <head>
    80001894:	0204b503          	ld	a0,32(s1)
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	b48080e7          	jalr	-1208(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    800018a0:	0284a783          	lw	a5,40(s1)
    800018a4:	0000a717          	auipc	a4,0xa
    800018a8:	06c70713          	addi	a4,a4,108 # 8000b910 <string>
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
    800018d4:	28872703          	lw	a4,648(a4) # 8000bb58 <tail>
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
    80001918:	da8080e7          	jalr	-600(ra) # 800036bc <_Znwm>
    8000191c:	00050493          	mv	s1,a0
    80001920:	00000613          	li	a2,0
    80001924:	00000597          	auipc	a1,0x0
    80001928:	c6458593          	addi	a1,a1,-924 # 80001588 <_Z15thread1FunctionPv>
    8000192c:	00002097          	auipc	ra,0x2
    80001930:	f28080e7          	jalr	-216(ra) # 80003854 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001934:	00048513          	mv	a0,s1
    80001938:	00002097          	auipc	ra,0x2
    8000193c:	e54080e7          	jalr	-428(ra) # 8000378c <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001940:	01000513          	li	a0,16
    80001944:	00002097          	auipc	ra,0x2
    80001948:	d78080e7          	jalr	-648(ra) # 800036bc <_Znwm>
    8000194c:	00050493          	mv	s1,a0
    80001950:	00000613          	li	a2,0
    80001954:	00000597          	auipc	a1,0x0
    80001958:	cd458593          	addi	a1,a1,-812 # 80001628 <_Z15thread2FunctionPv>
    8000195c:	00002097          	auipc	ra,0x2
    80001960:	ef8080e7          	jalr	-264(ra) # 80003854 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001964:	00048513          	mv	a0,s1
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	e24080e7          	jalr	-476(ra) # 8000378c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001970:	00002097          	auipc	ra,0x2
    80001974:	124080e7          	jalr	292(ra) # 80003a94 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001978:	00007517          	auipc	a0,0x7
    8000197c:	6f050513          	addi	a0,a0,1776 # 80009068 <CONSOLE_STATUS+0x58>
    80001980:	00004097          	auipc	ra,0x4
    80001984:	2a0080e7          	jalr	672(ra) # 80005c20 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	12c080e7          	jalr	300(ra) # 80003ab4 <_ZN5Riscv17disableInterruptsEv>
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
    800019b4:	d34080e7          	jalr	-716(ra) # 800036e4 <_ZdlPv>
    800019b8:	00090513          	mv	a0,s2
    800019bc:	0000f097          	auipc	ra,0xf
    800019c0:	33c080e7          	jalr	828(ra) # 80010cf8 <_Unwind_Resume>
    800019c4:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019c8:	00048513          	mv	a0,s1
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	d18080e7          	jalr	-744(ra) # 800036e4 <_ZdlPv>
    800019d4:	00090513          	mv	a0,s2
    800019d8:	0000f097          	auipc	ra,0xf
    800019dc:	320080e7          	jalr	800(ra) # 80010cf8 <_Unwind_Resume>

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
    80001a00:	cc0080e7          	jalr	-832(ra) # 800036bc <_Znwm>
    80001a04:	00050493          	mv	s1,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	b5058593          	addi	a1,a1,-1200 # 8000155c <_Z4idlePv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	e40080e7          	jalr	-448(ra) # 80003854 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	d6c080e7          	jalr	-660(ra) # 8000378c <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a28:	01000513          	li	a0,16
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	c90080e7          	jalr	-880(ra) # 800036bc <_Znwm>
    80001a34:	00050493          	mv	s1,a0
    80001a38:	00000613          	li	a2,0
    80001a3c:	00000597          	auipc	a1,0x0
    80001a40:	b4c58593          	addi	a1,a1,-1204 # 80001588 <_Z15thread1FunctionPv>
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	e10080e7          	jalr	-496(ra) # 80003854 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	d3c080e7          	jalr	-708(ra) # 8000378c <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a58:	01000513          	li	a0,16
    80001a5c:	00002097          	auipc	ra,0x2
    80001a60:	c60080e7          	jalr	-928(ra) # 800036bc <_Znwm>
    80001a64:	00050493          	mv	s1,a0
    80001a68:	00000613          	li	a2,0
    80001a6c:	00000597          	auipc	a1,0x0
    80001a70:	cc058593          	addi	a1,a1,-832 # 8000172c <_Z20thread2FunctionTest2Pv>
    80001a74:	00002097          	auipc	ra,0x2
    80001a78:	de0080e7          	jalr	-544(ra) # 80003854 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00002097          	auipc	ra,0x2
    80001a84:	d0c080e7          	jalr	-756(ra) # 8000378c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a88:	00002097          	auipc	ra,0x2
    80001a8c:	00c080e7          	jalr	12(ra) # 80003a94 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001a90:	00007517          	auipc	a0,0x7
    80001a94:	5d850513          	addi	a0,a0,1496 # 80009068 <CONSOLE_STATUS+0x58>
    80001a98:	00004097          	auipc	ra,0x4
    80001a9c:	188080e7          	jalr	392(ra) # 80005c20 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001aa0:	00002097          	auipc	ra,0x2
    80001aa4:	014080e7          	jalr	20(ra) # 80003ab4 <_ZN5Riscv17disableInterruptsEv>
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
    80001acc:	c1c080e7          	jalr	-996(ra) # 800036e4 <_ZdlPv>
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	0000f097          	auipc	ra,0xf
    80001ad8:	224080e7          	jalr	548(ra) # 80010cf8 <_Unwind_Resume>
    80001adc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00002097          	auipc	ra,0x2
    80001ae8:	c00080e7          	jalr	-1024(ra) # 800036e4 <_ZdlPv>
    80001aec:	00090513          	mv	a0,s2
    80001af0:	0000f097          	auipc	ra,0xf
    80001af4:	208080e7          	jalr	520(ra) # 80010cf8 <_Unwind_Resume>
    80001af8:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00002097          	auipc	ra,0x2
    80001b04:	be4080e7          	jalr	-1052(ra) # 800036e4 <_ZdlPv>
    80001b08:	00090513          	mv	a0,s2
    80001b0c:	0000f097          	auipc	ra,0xf
    80001b10:	1ec080e7          	jalr	492(ra) # 80010cf8 <_Unwind_Resume>

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
    80001b34:	0f0080e7          	jalr	240(ra) # 80005c20 <_Z11printStringPKc>
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
    80001b78:	0ac080e7          	jalr	172(ra) # 80005c20 <_Z11printStringPKc>
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
    80001bcc:	058080e7          	jalr	88(ra) # 80005c20 <_Z11printStringPKc>
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
    80001c14:	010080e7          	jalr	16(ra) # 80005c20 <_Z11printStringPKc>
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
    80001c58:	fcc080e7          	jalr	-52(ra) # 80005c20 <_Z11printStringPKc>
            return;
    80001c5c:	f21ff06f          	j	80001b7c <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001c60:	00007517          	auipc	a0,0x7
    80001c64:	42850513          	addi	a0,a0,1064 # 80009088 <CONSOLE_STATUS+0x78>
    80001c68:	00004097          	auipc	ra,0x4
    80001c6c:	fb8080e7          	jalr	-72(ra) # 80005c20 <_Z11printStringPKc>
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
    80001c90:	f94080e7          	jalr	-108(ra) # 80005c20 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c94:	0000a797          	auipc	a5,0xa
    80001c98:	e4c7b783          	ld	a5,-436(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001c9c:	0007b503          	ld	a0,0(a5)
    80001ca0:	0000a797          	auipc	a5,0xa
    80001ca4:	de87b783          	ld	a5,-536(a5) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001ccc:	f58080e7          	jalr	-168(ra) # 80005c20 <_Z11printStringPKc>
}
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret
        printString("OK\n");
    80001ce0:	00007517          	auipc	a0,0x7
    80001ce4:	3a850513          	addi	a0,a0,936 # 80009088 <CONSOLE_STATUS+0x78>
    80001ce8:	00004097          	auipc	ra,0x4
    80001cec:	f38080e7          	jalr	-200(ra) # 80005c20 <_Z11printStringPKc>
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
    80001d1c:	f08080e7          	jalr	-248(ra) # 80005c20 <_Z11printStringPKc>
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
    80001d70:	04c080e7          	jalr	76(ra) # 80005db8 <_Z8printIntiii>
    printString("\n");
    80001d74:	00007517          	auipc	a0,0x7
    80001d78:	38c50513          	addi	a0,a0,908 # 80009100 <CONSOLE_STATUS+0xf0>
    80001d7c:	00004097          	auipc	ra,0x4
    80001d80:	ea4080e7          	jalr	-348(ra) # 80005c20 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001d84:	00291793          	slli	a5,s2,0x2
    80001d88:	01278933          	add	s2,a5,s2
    80001d8c:	00191913          	slli	s2,s2,0x1
    80001d90:	03390863          	beq	s2,s3,80001dc0 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001d94:	00007517          	auipc	a0,0x7
    80001d98:	2ec50513          	addi	a0,a0,748 # 80009080 <CONSOLE_STATUS+0x70>
    80001d9c:	00004097          	auipc	ra,0x4
    80001da0:	e84080e7          	jalr	-380(ra) # 80005c20 <_Z11printStringPKc>
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
    80001dcc:	e58080e7          	jalr	-424(ra) # 80005c20 <_Z11printStringPKc>
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
    80001df0:	e34080e7          	jalr	-460(ra) # 80005c20 <_Z11printStringPKc>
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
    80001e1c:	e08080e7          	jalr	-504(ra) # 80005c20 <_Z11printStringPKc>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret
         printString("OK\n");
    80001e30:	00007517          	auipc	a0,0x7
    80001e34:	25850513          	addi	a0,a0,600 # 80009088 <CONSOLE_STATUS+0x78>
    80001e38:	00004097          	auipc	ra,0x4
    80001e3c:	de8080e7          	jalr	-536(ra) # 80005c20 <_Z11printStringPKc>
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
    80001e68:	dbc080e7          	jalr	-580(ra) # 80005c20 <_Z11printStringPKc>
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
    80001eac:	d78080e7          	jalr	-648(ra) # 80005c20 <_Z11printStringPKc>
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
    80001f34:	cf0080e7          	jalr	-784(ra) # 80005c20 <_Z11printStringPKc>
                return;
    80001f38:	f79ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	19c50513          	addi	a0,a0,412 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f44:	00004097          	auipc	ra,0x4
    80001f48:	cdc080e7          	jalr	-804(ra) # 80005c20 <_Z11printStringPKc>
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
    80001fac:	c78080e7          	jalr	-904(ra) # 80005c20 <_Z11printStringPKc>
                return;
    80001fb0:	f01ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	12450513          	addi	a0,a0,292 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001fbc:	00004097          	auipc	ra,0x4
    80001fc0:	c64080e7          	jalr	-924(ra) # 80005c20 <_Z11printStringPKc>
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
    80001fdc:	c48080e7          	jalr	-952(ra) # 80005c20 <_Z11printStringPKc>
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
    80002000:	9c4080e7          	jalr	-1596(ra) # 800039c0 <_ZN14PeriodicThreadC1Em>
    80002004:	0000a797          	auipc	a5,0xa
    80002008:	95c78793          	addi	a5,a5,-1700 # 8000b960 <_ZTV12TestPeriodic+0x10>
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
    80002044:	67c080e7          	jalr	1660(ra) # 800036bc <_Znwm>
    80002048:	00050913          	mv	s2,a0
    8000204c:	03200593          	li	a1,50
    80002050:	00000097          	auipc	ra,0x0
    80002054:	f94080e7          	jalr	-108(ra) # 80001fe4 <_ZN12TestPeriodicC1Em>
    t->start();
    80002058:	00090513          	mv	a0,s2
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	730080e7          	jalr	1840(ra) # 8000378c <_ZN6Thread5startEv>
    while(true)
    80002064:	0000006f          	j	80002064 <_Z11threadTest3v+0x40>
    80002068:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    8000206c:	00090513          	mv	a0,s2
    80002070:	00001097          	auipc	ra,0x1
    80002074:	674080e7          	jalr	1652(ra) # 800036e4 <_ZdlPv>
    80002078:	00048513          	mv	a0,s1
    8000207c:	0000f097          	auipc	ra,0xf
    80002080:	c7c080e7          	jalr	-900(ra) # 80010cf8 <_Unwind_Resume>

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
    800020d0:	b54080e7          	jalr	-1196(ra) # 80005c20 <_Z11printStringPKc>
    object* o = new object;
    800020d4:	02c00513          	li	a0,44
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	5e4080e7          	jalr	1508(ra) # 800036bc <_Znwm>
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
    8000215c:	58c080e7          	jalr	1420(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)m3;
    80002160:	000a0513          	mv	a0,s4
    80002164:	00001097          	auipc	ra,0x1
    80002168:	580080e7          	jalr	1408(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)m4;
    8000216c:	000a8513          	mv	a0,s5
    80002170:	00001097          	auipc	ra,0x1
    80002174:	574080e7          	jalr	1396(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)m2;
    80002178:	00098513          	mv	a0,s3
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	568080e7          	jalr	1384(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)m5;
    80002184:	000b0513          	mv	a0,s6
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	55c080e7          	jalr	1372(ra) # 800036e4 <_ZdlPv>
    delete o;
    80002190:	00048863          	beqz	s1,800021a0 <_Z10mallocTestv+0x104>
    80002194:	00048513          	mv	a0,s1
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	54c080e7          	jalr	1356(ra) # 800036e4 <_ZdlPv>
    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800021a0:	00007517          	auipc	a0,0x7
    800021a4:	f6850513          	addi	a0,a0,-152 # 80009108 <CONSOLE_STATUS+0xf8>
    800021a8:	00004097          	auipc	ra,0x4
    800021ac:	a78080e7          	jalr	-1416(ra) # 80005c20 <_Z11printStringPKc>
    800021b0:	0140006f          	j	800021c4 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    800021b4:	00007517          	auipc	a0,0x7
    800021b8:	ecc50513          	addi	a0,a0,-308 # 80009080 <CONSOLE_STATUS+0x70>
    800021bc:	00004097          	auipc	ra,0x4
    800021c0:	a64080e7          	jalr	-1436(ra) # 80005c20 <_Z11printStringPKc>
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
    8000220c:	a18080e7          	jalr	-1512(ra) # 80005c20 <_Z11printStringPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    80002210:	0000a797          	auipc	a5,0xa
    80002214:	8787b783          	ld	a5,-1928(a5) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002218:	0007b503          	ld	a0,0(a5)
    8000221c:	0000a797          	auipc	a5,0xa
    80002220:	8c47b783          	ld	a5,-1852(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80002248:	9dc080e7          	jalr	-1572(ra) # 80005c20 <_Z11printStringPKc>
}
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00813483          	ld	s1,8(sp)
    80002258:	02010113          	addi	sp,sp,32
    8000225c:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002260:	0000a797          	auipc	a5,0xa
    80002264:	8807b783          	ld	a5,-1920(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002268:	0007b503          	ld	a0,0(a5)
    8000226c:	0000a797          	auipc	a5,0xa
    80002270:	81c7b783          	ld	a5,-2020(a5) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    800022b4:	434080e7          	jalr	1076(ra) # 800036e4 <_ZdlPv>
    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	eb050513          	addi	a0,a0,-336 # 80009168 <CONSOLE_STATUS+0x158>
    800022c0:	00004097          	auipc	ra,0x4
    800022c4:	960080e7          	jalr	-1696(ra) # 80005c20 <_Z11printStringPKc>
    800022c8:	f85ff06f          	j	8000224c <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022cc:	00007517          	auipc	a0,0x7
    800022d0:	db450513          	addi	a0,a0,-588 # 80009080 <CONSOLE_STATUS+0x70>
    800022d4:	00004097          	auipc	ra,0x4
    800022d8:	94c080e7          	jalr	-1716(ra) # 80005c20 <_Z11printStringPKc>
        return;
    800022dc:	f71ff06f          	j	8000224c <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022e0:	00007517          	auipc	a0,0x7
    800022e4:	da050513          	addi	a0,a0,-608 # 80009080 <CONSOLE_STATUS+0x70>
    800022e8:	00004097          	auipc	ra,0x4
    800022ec:	938080e7          	jalr	-1736(ra) # 80005c20 <_Z11printStringPKc>
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
    80002330:	8f4080e7          	jalr	-1804(ra) # 80005c20 <_Z11printStringPKc>
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
    80002374:	00004097          	auipc	ra,0x4
    80002378:	8ac080e7          	jalr	-1876(ra) # 80005c20 <_Z11printStringPKc>
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
    800023b8:	330080e7          	jalr	816(ra) # 800036e4 <_ZdlPv>
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
    8000242c:	2bc080e7          	jalr	700(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)m[4];
    80002430:	f8043503          	ld	a0,-128(s0)
    80002434:	00050663          	beqz	a0,80002440 <_Z17mallocGapFillTestv+0x14c>
    80002438:	00001097          	auipc	ra,0x1
    8000243c:	2ac080e7          	jalr	684(ra) # 800036e4 <_ZdlPv>
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
    80002488:	79c080e7          	jalr	1948(ra) # 80005c20 <_Z11printStringPKc>
        return;
    8000248c:	ef1ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002490:	00007517          	auipc	a0,0x7
    80002494:	bf050513          	addi	a0,a0,-1040 # 80009080 <CONSOLE_STATUS+0x70>
    80002498:	00003097          	auipc	ra,0x3
    8000249c:	788080e7          	jalr	1928(ra) # 80005c20 <_Z11printStringPKc>
        return;
    800024a0:	eddff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024a4:	00007517          	auipc	a0,0x7
    800024a8:	bdc50513          	addi	a0,a0,-1060 # 80009080 <CONSOLE_STATUS+0x70>
    800024ac:	00003097          	auipc	ra,0x3
    800024b0:	774080e7          	jalr	1908(ra) # 80005c20 <_Z11printStringPKc>
        return;
    800024b4:	ec9ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024b8:	00007517          	auipc	a0,0x7
    800024bc:	bc850513          	addi	a0,a0,-1080 # 80009080 <CONSOLE_STATUS+0x70>
    800024c0:	00003097          	auipc	ra,0x3
    800024c4:	760080e7          	jalr	1888(ra) # 80005c20 <_Z11printStringPKc>
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
    800024f0:	1f8080e7          	jalr	504(ra) # 800036e4 <_ZdlPv>
    800024f4:	fd9ff06f          	j	800024cc <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800024f8:	00048513          	mv	a0,s1
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	1e8080e7          	jalr	488(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)tmp2;
    80002504:	00090513          	mv	a0,s2
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	1dc080e7          	jalr	476(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)tmp3;
    80002510:	00098513          	mv	a0,s3
    80002514:	00001097          	auipc	ra,0x1
    80002518:	1d0080e7          	jalr	464(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)tmp4;
    8000251c:	000c0513          	mv	a0,s8
    80002520:	00001097          	auipc	ra,0x1
    80002524:	1c4080e7          	jalr	452(ra) # 800036e4 <_ZdlPv>
    delete (uint64*)tmp5;
    80002528:	000b8513          	mv	a0,s7
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	1b8080e7          	jalr	440(ra) # 800036e4 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002534:	00007517          	auipc	a0,0x7
    80002538:	cb450513          	addi	a0,a0,-844 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000253c:	00003097          	auipc	ra,0x3
    80002540:	6e4080e7          	jalr	1764(ra) # 80005c20 <_Z11printStringPKc>
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
    80002588:	5cc50513          	addi	a0,a0,1484 # 8000bb50 <spaceAvailable>
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	df0080e7          	jalr	-528(ra) # 8000137c <sem_open>

    sem_open(&itemAvailable, 0);
    80002594:	00000593          	li	a1,0
    80002598:	00009517          	auipc	a0,0x9
    8000259c:	5a050513          	addi	a0,a0,1440 # 8000bb38 <itemAvailable>
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
    800025ec:	4d8080e7          	jalr	1240(ra) # 80002ac0 <_ZN3PCB10isFinishedEv>
    800025f0:	fe0506e3          	beqz	a0,800025dc <_Z8semTest1v+0x6c>
    800025f4:	fe843503          	ld	a0,-24(s0)
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	4c8080e7          	jalr	1224(ra) # 80002ac0 <_ZN3PCB10isFinishedEv>
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
    80002714:	22078793          	addi	a5,a5,544 # 8000b930 <_ZTV14PeriodicThread+0x10>
    80002718:	00f53023          	sd	a5,0(a0)
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	f30080e7          	jalr	-208(ra) # 8000364c <_ZN6ThreadD1Ev>
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
    80002750:	1e478793          	addi	a5,a5,484 # 8000b930 <_ZTV14PeriodicThread+0x10>
    80002754:	00f53023          	sd	a5,0(a0)
    80002758:	00001097          	auipc	ra,0x1
    8000275c:	ef4080e7          	jalr	-268(ra) # 8000364c <_ZN6ThreadD1Ev>
    80002760:	00048513          	mv	a0,s1
    80002764:	00001097          	auipc	ra,0x1
    80002768:	f80080e7          	jalr	-128(ra) # 800036e4 <_ZdlPv>
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
    80002794:	1a078793          	addi	a5,a5,416 # 8000b930 <_ZTV14PeriodicThread+0x10>
    80002798:	00f53023          	sd	a5,0(a0)
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	eb0080e7          	jalr	-336(ra) # 8000364c <_ZN6ThreadD1Ev>
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
    800027d0:	16478793          	addi	a5,a5,356 # 8000b930 <_ZTV14PeriodicThread+0x10>
    800027d4:	00f53023          	sd	a5,0(a0)
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	e74080e7          	jalr	-396(ra) # 8000364c <_ZN6ThreadD1Ev>
    800027e0:	00048513          	mv	a0,s1
    800027e4:	00001097          	auipc	ra,0x1
    800027e8:	f00080e7          	jalr	-256(ra) # 800036e4 <_ZdlPv>
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
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    80002810:	00001097          	auipc	ra,0x1
    80002814:	2ec080e7          	jalr	748(ra) # 80003afc <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002818:	00009797          	auipc	a5,0x9
    8000281c:	3487b783          	ld	a5,840(a5) # 8000bb60 <_ZN3PCB7runningE>
    80002820:	0287b703          	ld	a4,40(a5)
    80002824:	0307b503          	ld	a0,48(a5)
    80002828:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

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
    80002854:	00e53c23          	sd	a4,24(a0)
    80002858:	02053023          	sd	zero,32(a0)
    8000285c:	02b53423          	sd	a1,40(a0)
    80002860:	02c53823          	sd	a2,48(a0)
    80002864:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002868:	000017b7          	lui	a5,0x1
    8000286c:	00f686b3          	add	a3,a3,a5
    })
    80002870:	04d53423          	sd	a3,72(a0)
    80002874:	00000797          	auipc	a5,0x0
    80002878:	f8c78793          	addi	a5,a5,-116 # 80002800 <_ZN3PCB6runnerEv>
    8000287c:	04f53823          	sd	a5,80(a0)
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
    800028bc:	c30080e7          	jalr	-976(ra) # 800034e8 <_ZN9Scheduler3putEP3PCB>
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
    800028e0:	01213023          	sd	s2,0(sp)
    800028e4:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    800028e8:	00009497          	auipc	s1,0x9
    800028ec:	2784b483          	ld	s1,632(s1) # 8000bb60 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800028f0:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800028f4:	00100793          	li	a5,1
    800028f8:	04f70a63          	beq	a4,a5,8000294c <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800028fc:	00001097          	auipc	ra,0x1
    80002900:	c40080e7          	jalr	-960(ra) # 8000353c <_ZN9Scheduler3getEv>
    80002904:	00009917          	auipc	s2,0x9
    80002908:	25c90913          	addi	s2,s2,604 # 8000bb60 <_ZN3PCB7runningE>
    8000290c:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002910:	00100793          	li	a5,1
    80002914:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002918:	00001097          	auipc	ra,0x1
    8000291c:	658080e7          	jalr	1624(ra) # 80003f70 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002920:	00093583          	ld	a1,0(s2)
    80002924:	04858593          	addi	a1,a1,72
    80002928:	04848513          	addi	a0,s1,72
    8000292c:	fffff097          	auipc	ra,0xfffff
    80002930:	90c080e7          	jalr	-1780(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002934:	01813083          	ld	ra,24(sp)
    80002938:	01013403          	ld	s0,16(sp)
    8000293c:	00813483          	ld	s1,8(sp)
    80002940:	00013903          	ld	s2,0(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret
        Scheduler::put(old);
    8000294c:	00048513          	mv	a0,s1
    80002950:	00001097          	auipc	ra,0x1
    80002954:	b98080e7          	jalr	-1128(ra) # 800034e8 <_ZN9Scheduler3putEP3PCB>
    80002958:	fa5ff06f          	j	800028fc <_ZN3PCB8dispatchEv+0x2c>

000000008000295c <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000296c:	00002097          	auipc	ra,0x2
    80002970:	9d0080e7          	jalr	-1584(ra) # 8000433c <_Z7kmallocm>
}
    80002974:	00813083          	ld	ra,8(sp)
    80002978:	00013403          	ld	s0,0(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    kfree(p);
    80002994:	00002097          	auipc	ra,0x2
    80002998:	a0c080e7          	jalr	-1524(ra) # 800043a0 <_Z5kfreePv>
}
    8000299c:	00813083          	ld	ra,8(sp)
    800029a0:	00013403          	ld	s0,0(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_ZN3PCBD1Ev>:

PCB::~PCB()
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00113423          	sd	ra,8(sp)
    800029b4:	00813023          	sd	s0,0(sp)
    800029b8:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    800029bc:	03853503          	ld	a0,56(a0)
    800029c0:	00002097          	auipc	ra,0x2
    800029c4:	9e0080e7          	jalr	-1568(ra) # 800043a0 <_Z5kfreePv>
}
    800029c8:	00813083          	ld	ra,8(sp)
    800029cc:	00013403          	ld	s0,0(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	00008067          	ret

00000000800029d8 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800029d8:	fd010113          	addi	sp,sp,-48
    800029dc:	02113423          	sd	ra,40(sp)
    800029e0:	02813023          	sd	s0,32(sp)
    800029e4:	00913c23          	sd	s1,24(sp)
    800029e8:	01213823          	sd	s2,16(sp)
    800029ec:	01313423          	sd	s3,8(sp)
    800029f0:	01413023          	sd	s4,0(sp)
    800029f4:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800029f8:	05800513          	li	a0,88
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	f60080e7          	jalr	-160(ra) # 8000295c <_ZN3PCBnwEm>
    80002a04:	00050493          	mv	s1,a0
    80002a08:	00000713          	li	a4,0
    80002a0c:	00000693          	li	a3,0
    80002a10:	00000613          	li	a2,0
    80002a14:	00000593          	li	a1,0
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	e2c080e7          	jalr	-468(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002a20:	00048513          	mv	a0,s1
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	e84080e7          	jalr	-380(ra) # 800028a8 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002a2c:	00100793          	li	a5,1
    80002a30:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002a34:	00001097          	auipc	ra,0x1
    80002a38:	b08080e7          	jalr	-1272(ra) # 8000353c <_ZN9Scheduler3getEv>
    80002a3c:	00009917          	auipc	s2,0x9
    80002a40:	12490913          	addi	s2,s2,292 # 8000bb60 <_ZN3PCB7runningE>
    80002a44:	00a93023          	sd	a0,0(s2)
    80002a48:	00100a13          	li	s4,1
    80002a4c:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002a50:	00001537          	lui	a0,0x1
    80002a54:	00002097          	auipc	ra,0x2
    80002a58:	8e8080e7          	jalr	-1816(ra) # 8000433c <_Z7kmallocm>
    80002a5c:	00050993          	mv	s3,a0
    80002a60:	05800513          	li	a0,88
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	ef8080e7          	jalr	-264(ra) # 8000295c <_ZN3PCBnwEm>
    80002a6c:	00050493          	mv	s1,a0
    80002a70:	00200713          	li	a4,2
    80002a74:	00098693          	mv	a3,s3
    80002a78:	00000613          	li	a2,0
    80002a7c:	00009597          	auipc	a1,0x9
    80002a80:	0445b583          	ld	a1,68(a1) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	dc0080e7          	jalr	-576(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002a8c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002a90:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002a94:	00893503          	ld	a0,8(s2)
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	e10080e7          	jalr	-496(ra) # 800028a8 <_ZN3PCB5startEv>
}
    80002aa0:	02813083          	ld	ra,40(sp)
    80002aa4:	02013403          	ld	s0,32(sp)
    80002aa8:	01813483          	ld	s1,24(sp)
    80002aac:	01013903          	ld	s2,16(sp)
    80002ab0:	00813983          	ld	s3,8(sp)
    80002ab4:	00013a03          	ld	s4,0(sp)
    80002ab8:	03010113          	addi	sp,sp,48
    80002abc:	00008067          	ret

0000000080002ac0 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00813423          	sd	s0,8(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002acc:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002ad0:	ffd50513          	addi	a0,a0,-3
}
    80002ad4:	00153513          	seqz	a0,a0
    80002ad8:	00813403          	ld	s0,8(sp)
    80002adc:	01010113          	addi	sp,sp,16
    80002ae0:	00008067          	ret

0000000080002ae4 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002ae4:	ff010113          	addi	sp,sp,-16
    80002ae8:	00113423          	sd	ra,8(sp)
    80002aec:	00813023          	sd	s0,0(sp)
    80002af0:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    80002af4:	00009797          	auipc	a5,0x9
    80002af8:	06c78793          	addi	a5,a5,108 # 8000bb60 <_ZN3PCB7runningE>
    80002afc:	0007b823          	sd	zero,16(a5)
    PCB::running->setState(PCB::FINISHED);
    80002b00:	0007b783          	ld	a5,0(a5)
    80002b04:	00300713          	li	a4,3
    80002b08:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	dc4080e7          	jalr	-572(ra) # 800028d0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002b14:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b18:	00001097          	auipc	ra,0x1
    80002b1c:	420080e7          	jalr	1056(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b20:	00813083          	ld	ra,8(sp)
    80002b24:	00013403          	ld	s0,0(sp)
    80002b28:	01010113          	addi	sp,sp,16
    80002b2c:	00008067          	ret

0000000080002b30 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002b30:	ff010113          	addi	sp,sp,-16
    80002b34:	00113423          	sd	ra,8(sp)
    80002b38:	00813023          	sd	s0,0(sp)
    80002b3c:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002b40:	00009797          	auipc	a5,0x9
    80002b44:	0207b823          	sd	zero,48(a5) # 8000bb70 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	d88080e7          	jalr	-632(ra) # 800028d0 <_ZN3PCB8dispatchEv>
}
    80002b50:	00813083          	ld	ra,8(sp)
    80002b54:	00013403          	ld	s0,0(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret

0000000080002b60 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00113423          	sd	ra,8(sp)
    80002b68:	00813023          	sd	s0,0(sp)
    80002b6c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b70:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002b74:	00009717          	auipc	a4,0x9
    80002b78:	fec70713          	addi	a4,a4,-20 # 8000bb60 <_ZN3PCB7runningE>
    80002b7c:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002b80:	00073703          	ld	a4,0(a4)
    80002b84:	00009697          	auipc	a3,0x9
    80002b88:	f346b683          	ld	a3,-204(a3) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b8c:	0006b683          	ld	a3,0(a3)
    80002b90:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b94:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	648080e7          	jalr	1608(ra) # 800031e0 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	d30080e7          	jalr	-720(ra) # 800028d0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002ba8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002bac:	00001097          	auipc	ra,0x1
    80002bb0:	38c080e7          	jalr	908(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bb4:	00813083          	ld	ra,8(sp)
    80002bb8:	00013403          	ld	s0,0(sp)
    80002bbc:	01010113          	addi	sp,sp,16
    80002bc0:	00008067          	ret

0000000080002bc4 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002bc4:	fd010113          	addi	sp,sp,-48
    80002bc8:	02113423          	sd	ra,40(sp)
    80002bcc:	02813023          	sd	s0,32(sp)
    80002bd0:	00913c23          	sd	s1,24(sp)
    80002bd4:	01213823          	sd	s2,16(sp)
    80002bd8:	01313423          	sd	s3,8(sp)
    80002bdc:	01413023          	sd	s4,0(sp)
    80002be0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002be4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002be8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002bec:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002bf0:	05800513          	li	a0,88
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	d68080e7          	jalr	-664(ra) # 8000295c <_ZN3PCBnwEm>
    80002bfc:	00050493          	mv	s1,a0
    80002c00:	00200713          	li	a4,2
    80002c04:	00009697          	auipc	a3,0x9
    80002c08:	f746b683          	ld	a3,-140(a3) # 8000bb78 <_ZN3PCB10savedRegA4E>
    80002c0c:	000a0613          	mv	a2,s4
    80002c10:	00098593          	mv	a1,s3
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	c30080e7          	jalr	-976(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c1c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c20:	02048e63          	beqz	s1,80002c5c <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002c24:	00048513          	mv	a0,s1
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	c80080e7          	jalr	-896(ra) # 800028a8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c30:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002c34:	00001097          	auipc	ra,0x1
    80002c38:	304080e7          	jalr	772(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c3c:	02813083          	ld	ra,40(sp)
    80002c40:	02013403          	ld	s0,32(sp)
    80002c44:	01813483          	ld	s1,24(sp)
    80002c48:	01013903          	ld	s2,16(sp)
    80002c4c:	00813983          	ld	s3,8(sp)
    80002c50:	00013a03          	ld	s4,0(sp)
    80002c54:	03010113          	addi	sp,sp,48
    80002c58:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c5c:	fff00513          	li	a0,-1
    80002c60:	fd5ff06f          	j	80002c34 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002c64 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002c64:	ff010113          	addi	sp,sp,-16
    80002c68:	00113423          	sd	ra,8(sp)
    80002c6c:	00813023          	sd	s0,0(sp)
    80002c70:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c74:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002c78:	02050463          	beqz	a0,80002ca0 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	c2c080e7          	jalr	-980(ra) # 800028a8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c84:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002c88:	00001097          	auipc	ra,0x1
    80002c8c:	2b0080e7          	jalr	688(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c90:	00813083          	ld	ra,8(sp)
    80002c94:	00013403          	ld	s0,0(sp)
    80002c98:	01010113          	addi	sp,sp,16
    80002c9c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002ca0:	fff00513          	li	a0,-1
    80002ca4:	fe5ff06f          	j	80002c88 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002ca8 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002ca8:	fd010113          	addi	sp,sp,-48
    80002cac:	02113423          	sd	ra,40(sp)
    80002cb0:	02813023          	sd	s0,32(sp)
    80002cb4:	00913c23          	sd	s1,24(sp)
    80002cb8:	01213823          	sd	s2,16(sp)
    80002cbc:	01313423          	sd	s3,8(sp)
    80002cc0:	01413023          	sd	s4,0(sp)
    80002cc4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002cc8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002ccc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002cd0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002cd4:	05800513          	li	a0,88
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	c84080e7          	jalr	-892(ra) # 8000295c <_ZN3PCBnwEm>
    80002ce0:	00050493          	mv	s1,a0
    80002ce4:	00200713          	li	a4,2
    80002ce8:	00009697          	auipc	a3,0x9
    80002cec:	e906b683          	ld	a3,-368(a3) # 8000bb78 <_ZN3PCB10savedRegA4E>
    80002cf0:	000a0613          	mv	a2,s4
    80002cf4:	00098593          	mv	a1,s3
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	b4c080e7          	jalr	-1204(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002d00:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002d04:	02048863          	beqz	s1,80002d34 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002d08:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002d0c:	00001097          	auipc	ra,0x1
    80002d10:	22c080e7          	jalr	556(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d14:	02813083          	ld	ra,40(sp)
    80002d18:	02013403          	ld	s0,32(sp)
    80002d1c:	01813483          	ld	s1,24(sp)
    80002d20:	01013903          	ld	s2,16(sp)
    80002d24:	00813983          	ld	s3,8(sp)
    80002d28:	00013a03          	ld	s4,0(sp)
    80002d2c:	03010113          	addi	sp,sp,48
    80002d30:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d34:	fff00513          	li	a0,-1
    80002d38:	fd5ff06f          	j	80002d0c <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002d3c <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002d3c:	fe010113          	addi	sp,sp,-32
    80002d40:	00113c23          	sd	ra,24(sp)
    80002d44:	00813823          	sd	s0,16(sp)
    80002d48:	00913423          	sd	s1,8(sp)
    80002d4c:	01213023          	sd	s2,0(sp)
    80002d50:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002d54:	01800513          	li	a0,24
    80002d58:	00002097          	auipc	ra,0x2
    80002d5c:	8f8080e7          	jalr	-1800(ra) # 80004650 <_ZN10KSemaphorenwEm>
    80002d60:	00050493          	mv	s1,a0
    80002d64:	00000593          	li	a1,0
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	698080e7          	jalr	1688(ra) # 80004400 <_ZN10KSemaphoreC1Ei>
    80002d70:	00009797          	auipc	a5,0x9
    80002d74:	e097b823          	sd	s1,-496(a5) # 8000bb80 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002d78:	01800513          	li	a0,24
    80002d7c:	00002097          	auipc	ra,0x2
    80002d80:	8d4080e7          	jalr	-1836(ra) # 80004650 <_ZN10KSemaphorenwEm>
    80002d84:	00050493          	mv	s1,a0
    80002d88:	00000593          	li	a1,0
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	674080e7          	jalr	1652(ra) # 80004400 <_ZN10KSemaphoreC1Ei>
    80002d94:	00009797          	auipc	a5,0x9
    80002d98:	de97ba23          	sd	s1,-524(a5) # 8000bb88 <_ZN8KConsole19hasCharactersOutputE>
}
    80002d9c:	01813083          	ld	ra,24(sp)
    80002da0:	01013403          	ld	s0,16(sp)
    80002da4:	00813483          	ld	s1,8(sp)
    80002da8:	00013903          	ld	s2,0(sp)
    80002dac:	02010113          	addi	sp,sp,32
    80002db0:	00008067          	ret
    80002db4:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002db8:	00048513          	mv	a0,s1
    80002dbc:	00002097          	auipc	ra,0x2
    80002dc0:	92c080e7          	jalr	-1748(ra) # 800046e8 <_ZN10KSemaphoredlEPv>
    80002dc4:	00090513          	mv	a0,s2
    80002dc8:	0000e097          	auipc	ra,0xe
    80002dcc:	f30080e7          	jalr	-208(ra) # 80010cf8 <_Unwind_Resume>
    80002dd0:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002dd4:	00048513          	mv	a0,s1
    80002dd8:	00002097          	auipc	ra,0x2
    80002ddc:	910080e7          	jalr	-1776(ra) # 800046e8 <_ZN10KSemaphoredlEPv>
    80002de0:	00090513          	mv	a0,s2
    80002de4:	0000e097          	auipc	ra,0xe
    80002de8:	f14080e7          	jalr	-236(ra) # 80010cf8 <_Unwind_Resume>

0000000080002dec <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002dec:	00009697          	auipc	a3,0x9
    80002df0:	d9468693          	addi	a3,a3,-620 # 8000bb80 <_ZN8KConsole18hasCharactersInputE>
    80002df4:	0106b603          	ld	a2,16(a3)
    80002df8:	00160793          	addi	a5,a2,1
    80002dfc:	00002737          	lui	a4,0x2
    80002e00:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002e04:	00e7f7b3          	and	a5,a5,a4
    80002e08:	0186b703          	ld	a4,24(a3)
    80002e0c:	04e78263          	beq	a5,a4,80002e50 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002e10:	ff010113          	addi	sp,sp,-16
    80002e14:	00113423          	sd	ra,8(sp)
    80002e18:	00813023          	sd	s0,0(sp)
    80002e1c:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002e20:	0000b717          	auipc	a4,0xb
    80002e24:	da070713          	addi	a4,a4,-608 # 8000dbc0 <_ZN8KConsole11inputBufferE>
    80002e28:	00c70633          	add	a2,a4,a2
    80002e2c:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002e30:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002e34:	0006b503          	ld	a0,0(a3)
    80002e38:	00001097          	auipc	ra,0x1
    80002e3c:	7d0080e7          	jalr	2000(ra) # 80004608 <_ZN10KSemaphore6signalEv>
}
    80002e40:	00813083          	ld	ra,8(sp)
    80002e44:	00013403          	ld	s0,0(sp)
    80002e48:	01010113          	addi	sp,sp,16
    80002e4c:	00008067          	ret
    80002e50:	00008067          	ret

0000000080002e54 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002e54:	fe010113          	addi	sp,sp,-32
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00813823          	sd	s0,16(sp)
    80002e60:	00913423          	sd	s1,8(sp)
    80002e64:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002e68:	00009497          	auipc	s1,0x9
    80002e6c:	d1848493          	addi	s1,s1,-744 # 8000bb80 <_ZN8KConsole18hasCharactersInputE>
    80002e70:	0004b503          	ld	a0,0(s1)
    80002e74:	00001097          	auipc	ra,0x1
    80002e78:	634080e7          	jalr	1588(ra) # 800044a8 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002e7c:	0184b783          	ld	a5,24(s1)
    80002e80:	0104b703          	ld	a4,16(s1)
    80002e84:	04e78063          	beq	a5,a4,80002ec4 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002e88:	0000b717          	auipc	a4,0xb
    80002e8c:	d3870713          	addi	a4,a4,-712 # 8000dbc0 <_ZN8KConsole11inputBufferE>
    80002e90:	00f70733          	add	a4,a4,a5
    80002e94:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002e98:	00178793          	addi	a5,a5,1
    80002e9c:	00002737          	lui	a4,0x2
    80002ea0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002ea4:	00e7f7b3          	and	a5,a5,a4
    80002ea8:	00009717          	auipc	a4,0x9
    80002eac:	cef73823          	sd	a5,-784(a4) # 8000bb98 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002eb0:	01813083          	ld	ra,24(sp)
    80002eb4:	01013403          	ld	s0,16(sp)
    80002eb8:	00813483          	ld	s1,8(sp)
    80002ebc:	02010113          	addi	sp,sp,32
    80002ec0:	00008067          	ret
        return -1;
    80002ec4:	0ff00513          	li	a0,255
    80002ec8:	fe9ff06f          	j	80002eb0 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002ecc <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002ecc:	00009697          	auipc	a3,0x9
    80002ed0:	cb468693          	addi	a3,a3,-844 # 8000bb80 <_ZN8KConsole18hasCharactersInputE>
    80002ed4:	0206b603          	ld	a2,32(a3)
    80002ed8:	00160793          	addi	a5,a2,1
    80002edc:	00002737          	lui	a4,0x2
    80002ee0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002ee4:	00e7f7b3          	and	a5,a5,a4
    80002ee8:	0286b703          	ld	a4,40(a3)
    80002eec:	04e78a63          	beq	a5,a4,80002f40 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00113423          	sd	ra,8(sp)
    80002ef8:	00813023          	sd	s0,0(sp)
    80002efc:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002f00:	00068713          	mv	a4,a3
    80002f04:	0306b683          	ld	a3,48(a3)
    80002f08:	00168693          	addi	a3,a3,1
    80002f0c:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002f10:	00009697          	auipc	a3,0x9
    80002f14:	cb068693          	addi	a3,a3,-848 # 8000bbc0 <_ZN8KConsole12outputBufferE>
    80002f18:	00c68633          	add	a2,a3,a2
    80002f1c:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002f20:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002f24:	00873503          	ld	a0,8(a4)
    80002f28:	00001097          	auipc	ra,0x1
    80002f2c:	6e0080e7          	jalr	1760(ra) # 80004608 <_ZN10KSemaphore6signalEv>
}
    80002f30:	00813083          	ld	ra,8(sp)
    80002f34:	00013403          	ld	s0,0(sp)
    80002f38:	01010113          	addi	sp,sp,16
    80002f3c:	00008067          	ret
    80002f40:	00008067          	ret

0000000080002f44 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002f44:	00009797          	auipc	a5,0x9
    80002f48:	b3c7b783          	ld	a5,-1220(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f4c:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002f50:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002f54:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002f58:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002f5c:	0017f793          	andi	a5,a5,1
    80002f60:	08078063          	beqz	a5,80002fe0 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002f64:	fe010113          	addi	sp,sp,-32
    80002f68:	00113c23          	sd	ra,24(sp)
    80002f6c:	00813823          	sd	s0,16(sp)
    80002f70:	00913423          	sd	s1,8(sp)
    80002f74:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002f78:	00009797          	auipc	a5,0x9
    80002f7c:	b287b783          	ld	a5,-1240(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f80:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002f84:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002f88:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002f8c:	00058493          	mv	s1,a1
    80002f90:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002f94:	00048513          	mv	a0,s1
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	e54080e7          	jalr	-428(ra) # 80002dec <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002fa0:	00048513          	mv	a0,s1
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	f28080e7          	jalr	-216(ra) # 80002ecc <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002fac:	00009797          	auipc	a5,0x9
    80002fb0:	ad47b783          	ld	a5,-1324(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fb4:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002fb8:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fbc:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fc0:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fc4:	0017f793          	andi	a5,a5,1
    80002fc8:	fa0798e3          	bnez	a5,80002f78 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002fcc:	01813083          	ld	ra,24(sp)
    80002fd0:	01013403          	ld	s0,16(sp)
    80002fd4:	00813483          	ld	s1,8(sp)
    80002fd8:	02010113          	addi	sp,sp,32
    80002fdc:	00008067          	ret
    80002fe0:	00008067          	ret

0000000080002fe4 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002fe4:	fe010113          	addi	sp,sp,-32
    80002fe8:	00113c23          	sd	ra,24(sp)
    80002fec:	00813823          	sd	s0,16(sp)
    80002ff0:	00913423          	sd	s1,8(sp)
    80002ff4:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80002ff8:	00009497          	auipc	s1,0x9
    80002ffc:	b8848493          	addi	s1,s1,-1144 # 8000bb80 <_ZN8KConsole18hasCharactersInputE>
    80003000:	0084b503          	ld	a0,8(s1)
    80003004:	00001097          	auipc	ra,0x1
    80003008:	4a4080e7          	jalr	1188(ra) # 800044a8 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    8000300c:	0284b783          	ld	a5,40(s1)
    80003010:	0204b703          	ld	a4,32(s1)
    80003014:	04e78063          	beq	a5,a4,80003054 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80003018:	00009717          	auipc	a4,0x9
    8000301c:	ba870713          	addi	a4,a4,-1112 # 8000bbc0 <_ZN8KConsole12outputBufferE>
    80003020:	00f70733          	add	a4,a4,a5
    80003024:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80003028:	00178793          	addi	a5,a5,1
    8000302c:	00002737          	lui	a4,0x2
    80003030:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003034:	00e7f7b3          	and	a5,a5,a4
    80003038:	00009717          	auipc	a4,0x9
    8000303c:	b6f73823          	sd	a5,-1168(a4) # 8000bba8 <_ZN8KConsole10outputHeadE>

    return c;
}
    80003040:	01813083          	ld	ra,24(sp)
    80003044:	01013403          	ld	s0,16(sp)
    80003048:	00813483          	ld	s1,8(sp)
    8000304c:	02010113          	addi	sp,sp,32
    80003050:	00008067          	ret
        return -1;
    80003054:	0ff00513          	li	a0,255
    80003058:	fe9ff06f          	j	80003040 <_ZN8KConsole18getCharacterOutputEv+0x5c>

000000008000305c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    8000305c:	ff010113          	addi	sp,sp,-16
    80003060:	00113423          	sd	ra,8(sp)
    80003064:	00813023          	sd	s0,0(sp)
    80003068:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    8000306c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80003070:	0ff57513          	andi	a0,a0,255
    80003074:	00000097          	auipc	ra,0x0
    80003078:	e58080e7          	jalr	-424(ra) # 80002ecc <_ZN8KConsole18putCharacterOutputEc>
}
    8000307c:	00813083          	ld	ra,8(sp)
    80003080:	00013403          	ld	s0,0(sp)
    80003084:	01010113          	addi	sp,sp,16
    80003088:	00008067          	ret

000000008000308c <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    8000308c:	ff010113          	addi	sp,sp,-16
    80003090:	00113423          	sd	ra,8(sp)
    80003094:	00813023          	sd	s0,0(sp)
    80003098:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterInput();
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	db8080e7          	jalr	-584(ra) # 80002e54 <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800030a4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800030a8:	00001097          	auipc	ra,0x1
    800030ac:	e90080e7          	jalr	-368(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    800030b0:	00813083          	ld	ra,8(sp)
    800030b4:	00013403          	ld	s0,0(sp)
    800030b8:	01010113          	addi	sp,sp,16
    800030bc:	00008067          	ret

00000000800030c0 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800030c0:	ff010113          	addi	sp,sp,-16
    800030c4:	00813423          	sd	s0,8(sp)
    800030c8:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800030cc:	00009517          	auipc	a0,0x9
    800030d0:	ae453503          	ld	a0,-1308(a0) # 8000bbb0 <_ZN8KConsole11pendingPutcE>
    800030d4:	00153513          	seqz	a0,a0
    800030d8:	00813403          	ld	s0,8(sp)
    800030dc:	01010113          	addi	sp,sp,16
    800030e0:	00008067          	ret

00000000800030e4 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800030e4:	fc010113          	addi	sp,sp,-64
    800030e8:	02113c23          	sd	ra,56(sp)
    800030ec:	02813823          	sd	s0,48(sp)
    800030f0:	02913423          	sd	s1,40(sp)
    800030f4:	04010413          	addi	s0,sp,64
}

inline uint64 Riscv::r_sie()
{
    uint64 volatile sie;
    __asm__ volatile("csrr %0, sip" : "=r"(sie));
    800030f8:	144027f3          	csrr	a5,sip
    800030fc:	fcf43823          	sd	a5,-48(s0)
    return sie;
    80003100:	fd043483          	ld	s1,-48(s0)
    __asm__ volatile("csrc sie, %0" : :"r"(mask));
    80003104:	00200793          	li	a5,2
    80003108:	1047b073          	csrc	sie,a5
}
    8000310c:	03c0006f          	j	80003148 <_ZN8KConsole23sendCharactersToConsoleEPv+0x64>
                thread_exit();
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	244080e7          	jalr	580(ra) # 80001354 <thread_exit>
    80003118:	0580006f          	j	80003170 <_ZN8KConsole23sendCharactersToConsoleEPv+0x8c>
                Riscv::ms_sie(sie & Riscv::SIP_SSIP ? Riscv::SIP_SSIP : 0);
    8000311c:	0004849b          	sext.w	s1,s1
    80003120:	0024f493          	andi	s1,s1,2
    80003124:	0004849b          	sext.w	s1,s1
}

inline void Riscv::ms_sie(uint64 mask)
{
    __asm__ volatile("csrs sie, %0" : :"r"(mask));
    80003128:	1044a073          	csrs	sie,s1
                thread_dispatch();
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	208080e7          	jalr	520(ra) # 80001334 <thread_dispatch>
    __asm__ volatile("csrr %0, sip" : "=r"(sie));
    80003134:	144027f3          	csrr	a5,sip
    80003138:	fcf43c23          	sd	a5,-40(s0)
    return sie;
    8000313c:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrc sie, %0" : :"r"(mask));
    80003140:	00200793          	li	a5,2
    80003144:	1047b073          	csrc	sie,a5
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003148:	00009797          	auipc	a5,0x9
    8000314c:	9887b783          	ld	a5,-1656(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003150:	0007c783          	lbu	a5,0(a5)
    80003154:	00078e63          	beqz	a5,80003170 <_ZN8KConsole23sendCharactersToConsoleEPv+0x8c>
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	f68080e7          	jalr	-152(ra) # 800030c0 <_ZN8KConsole17outputBufferEmptyEv>
    80003160:	00050863          	beqz	a0,80003170 <_ZN8KConsole23sendCharactersToConsoleEPv+0x8c>
    80003164:	00009797          	auipc	a5,0x9
    80003168:	a547b783          	ld	a5,-1452(a5) # 8000bbb8 <_ZN8KConsole11pendingGetcE>
    8000316c:	fa0782e3          	beqz	a5,80003110 <_ZN8KConsole23sendCharactersToConsoleEPv+0x2c>
            uint64 x = CONSOLE_STATUS;
    80003170:	00009797          	auipc	a5,0x9
    80003174:	9107b783          	ld	a5,-1776(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003178:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    8000317c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003180:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003184:	00058793          	mv	a5,a1
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003188:	0207f793          	andi	a5,a5,32
    8000318c:	f80788e3          	beqz	a5,8000311c <_ZN8KConsole23sendCharactersToConsoleEPv+0x38>
    80003190:	00009797          	auipc	a5,0x9
    80003194:	a207b783          	ld	a5,-1504(a5) # 8000bbb0 <_ZN8KConsole11pendingPutcE>
    80003198:	f80782e3          	beqz	a5,8000311c <_ZN8KConsole23sendCharactersToConsoleEPv+0x38>
                char volatile c = getCharacterOutput();
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	e48080e7          	jalr	-440(ra) # 80002fe4 <_ZN8KConsole18getCharacterOutputEv>
    800031a4:	fca407a3          	sb	a0,-49(s0)
                pendingPutc--;
    800031a8:	00009717          	auipc	a4,0x9
    800031ac:	9d870713          	addi	a4,a4,-1576 # 8000bb80 <_ZN8KConsole18hasCharactersInputE>
    800031b0:	03073783          	ld	a5,48(a4)
    800031b4:	fff78793          	addi	a5,a5,-1
    800031b8:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    800031bc:	00009797          	auipc	a5,0x9
    800031c0:	8bc7b783          	ld	a5,-1860(a5) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x8>
    800031c4:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    800031c8:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    800031cc:	fcf44783          	lbu	a5,-49(s0)
    800031d0:	0ff7f793          	andi	a5,a5,255
    800031d4:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    800031d8:	00b50023          	sb	a1,0(a0)
    800031dc:	f6dff06f          	j	80003148 <_ZN8KConsole23sendCharactersToConsoleEPv+0x64>

00000000800031e0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800031e0:	ff010113          	addi	sp,sp,-16
    800031e4:	00813423          	sd	s0,8(sp)
    800031e8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800031ec:	00009797          	auipc	a5,0x9
    800031f0:	8ec7b783          	ld	a5,-1812(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800031f4:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800031f8:	00500793          	li	a5,5
    800031fc:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003200:	0000d797          	auipc	a5,0xd
    80003204:	9c07b783          	ld	a5,-1600(a5) # 8000fbc0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003208:	00000593          	li	a1,0
    while(curr != 0)
    8000320c:	02078063          	beqz	a5,8000322c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003210:	02063683          	ld	a3,32(a2)
    80003214:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003218:	00e6e863          	bltu	a3,a4,80003228 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000321c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003220:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003224:	fe9ff06f          	j	8000320c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003228:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000322c:	00058a63          	beqz	a1,80003240 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003230:	00c5b423          	sd	a2,8(a1)
}
    80003234:	00813403          	ld	s0,8(sp)
    80003238:	01010113          	addi	sp,sp,16
    8000323c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003240:	0000d797          	auipc	a5,0xd
    80003244:	98c7b023          	sd	a2,-1664(a5) # 8000fbc0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003248:	fedff06f          	j	80003234 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000324c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    8000324c:	0000d517          	auipc	a0,0xd
    80003250:	97453503          	ld	a0,-1676(a0) # 8000fbc0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003254:	06050e63          	beqz	a0,800032d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003258:	06050c63          	beqz	a0,800032d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000325c:	02053783          	ld	a5,32(a0)
    80003260:	00009717          	auipc	a4,0x9
    80003264:	85873703          	ld	a4,-1960(a4) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003268:	00073703          	ld	a4,0(a4)
    8000326c:	06f76263          	bltu	a4,a5,800032d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003270:	fe010113          	addi	sp,sp,-32
    80003274:	00113c23          	sd	ra,24(sp)
    80003278:	00813823          	sd	s0,16(sp)
    8000327c:	00913423          	sd	s1,8(sp)
    80003280:	02010413          	addi	s0,sp,32
    80003284:	0180006f          	j	8000329c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003288:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000328c:	00009717          	auipc	a4,0x9
    80003290:	82c73703          	ld	a4,-2004(a4) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003294:	00073703          	ld	a4,0(a4)
    80003298:	02f76263          	bltu	a4,a5,800032bc <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000329c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800032a0:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	244080e7          	jalr	580(ra) # 800034e8 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800032ac:	0000d797          	auipc	a5,0xd
    800032b0:	9097ba23          	sd	s1,-1772(a5) # 8000fbc0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800032b4:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032b8:	fc0498e3          	bnez	s1,80003288 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800032bc:	01813083          	ld	ra,24(sp)
    800032c0:	01013403          	ld	s0,16(sp)
    800032c4:	00813483          	ld	s1,8(sp)
    800032c8:	02010113          	addi	sp,sp,32
    800032cc:	00008067          	ret
    800032d0:	00008067          	ret

00000000800032d4 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    800032d4:	fe010113          	addi	sp,sp,-32
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	00813823          	sd	s0,16(sp)
    800032e0:	00913423          	sd	s1,8(sp)
    800032e4:	01213023          	sd	s2,0(sp)
    800032e8:	02010413          	addi	s0,sp,32
    800032ec:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800032f0:	00053503          	ld	a0,0(a0)
    800032f4:	00853903          	ld	s2,8(a0)
    kfree(first);
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	0a8080e7          	jalr	168(ra) # 800043a0 <_Z5kfreePv>
    first = newFirst;
    80003300:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80003304:	00090e63          	beqz	s2,80003320 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003308:	01813083          	ld	ra,24(sp)
    8000330c:	01013403          	ld	s0,16(sp)
    80003310:	00813483          	ld	s1,8(sp)
    80003314:	00013903          	ld	s2,0(sp)
    80003318:	02010113          	addi	sp,sp,32
    8000331c:	00008067          	ret
        first = last = 0;
    80003320:	0004b423          	sd	zero,8(s1)
    80003324:	0004b023          	sd	zero,0(s1)
}
    80003328:	fe1ff06f          	j	80003308 <_ZN5Queue3popEv+0x34>

000000008000332c <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    8000332c:	fe010113          	addi	sp,sp,-32
    80003330:	00113c23          	sd	ra,24(sp)
    80003334:	00813823          	sd	s0,16(sp)
    80003338:	00913423          	sd	s1,8(sp)
    8000333c:	01213023          	sd	s2,0(sp)
    80003340:	02010413          	addi	s0,sp,32
    80003344:	00050493          	mv	s1,a0
    80003348:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    8000334c:	01000513          	li	a0,16
    80003350:	00001097          	auipc	ra,0x1
    80003354:	fec080e7          	jalr	-20(ra) # 8000433c <_Z7kmallocm>
    newElem->data = t;
    80003358:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    8000335c:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80003360:	0004b783          	ld	a5,0(s1)
    80003364:	02078463          	beqz	a5,8000338c <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80003368:	0084b783          	ld	a5,8(s1)
    8000336c:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80003370:	00a4b423          	sd	a0,8(s1)
    }
}
    80003374:	01813083          	ld	ra,24(sp)
    80003378:	01013403          	ld	s0,16(sp)
    8000337c:	00813483          	ld	s1,8(sp)
    80003380:	00013903          	ld	s2,0(sp)
    80003384:	02010113          	addi	sp,sp,32
    80003388:	00008067          	ret
        first = newElem;
    8000338c:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80003390:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003394:	00053423          	sd	zero,8(a0)
    80003398:	0004b783          	ld	a5,0(s1)
    8000339c:	0007b423          	sd	zero,8(a5)
    800033a0:	fd5ff06f          	j	80003374 <_ZN5Queue4pushEP3PCB+0x48>

00000000800033a4 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813423          	sd	s0,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    if(first == 0)
    800033b0:	00053503          	ld	a0,0(a0)
    800033b4:	00050463          	beqz	a0,800033bc <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800033b8:	00053503          	ld	a0,0(a0)
}
    800033bc:	00813403          	ld	s0,8(sp)
    800033c0:	01010113          	addi	sp,sp,16
    800033c4:	00008067          	ret

00000000800033c8 <_ZN5QueueC1Ev>:

Queue::Queue()
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00813423          	sd	s0,8(sp)
    800033d0:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    800033d4:	00053423          	sd	zero,8(a0)
    800033d8:	00053023          	sd	zero,0(a0)
}
    800033dc:	00813403          	ld	s0,8(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    800033e8:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    800033ec:	04050063          	beqz	a0,8000342c <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    800033f0:	fe010113          	addi	sp,sp,-32
    800033f4:	00113c23          	sd	ra,24(sp)
    800033f8:	00813823          	sd	s0,16(sp)
    800033fc:	00913423          	sd	s1,8(sp)
    80003400:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003404:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003408:	00001097          	auipc	ra,0x1
    8000340c:	f98080e7          	jalr	-104(ra) # 800043a0 <_Z5kfreePv>
        curr = curr->next;
    80003410:	00048513          	mv	a0,s1
    while(curr != 0)
    80003414:	fe0498e3          	bnez	s1,80003404 <_ZN5QueueD1Ev+0x1c>
    }
}
    80003418:	01813083          	ld	ra,24(sp)
    8000341c:	01013403          	ld	s0,16(sp)
    80003420:	00813483          	ld	s1,8(sp)
    80003424:	02010113          	addi	sp,sp,32
    80003428:	00008067          	ret
    8000342c:	00008067          	ret

0000000080003430 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00813423          	sd	s0,8(sp)
    80003438:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    8000343c:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80003440:	00000513          	li	a0,0
    while(curr != 0)
    80003444:	00078863          	beqz	a5,80003454 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80003448:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    8000344c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003450:	ff5ff06f          	j	80003444 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80003454:	00813403          	ld	s0,8(sp)
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret

0000000080003460 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00113423          	sd	ra,8(sp)
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003470:	00001097          	auipc	ra,0x1
    80003474:	ecc080e7          	jalr	-308(ra) # 8000433c <_Z7kmallocm>
}
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003488:	ff010113          	addi	sp,sp,-16
    8000348c:	00113423          	sd	ra,8(sp)
    80003490:	00813023          	sd	s0,0(sp)
    80003494:	01010413          	addi	s0,sp,16
    kfree(p);
    80003498:	00001097          	auipc	ra,0x1
    8000349c:	f08080e7          	jalr	-248(ra) # 800043a0 <_Z5kfreePv>
}
    800034a0:	00813083          	ld	ra,8(sp)
    800034a4:	00013403          	ld	s0,0(sp)
    800034a8:	01010113          	addi	sp,sp,16
    800034ac:	00008067          	ret

00000000800034b0 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800034b0:	ff010113          	addi	sp,sp,-16
    800034b4:	00813423          	sd	s0,8(sp)
    800034b8:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800034bc:	0000c797          	auipc	a5,0xc
    800034c0:	70c7b783          	ld	a5,1804(a5) # 8000fbc8 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800034c4:	00000513          	li	a0,0
    while(curr != 0)
    800034c8:	00078863          	beqz	a5,800034d8 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800034cc:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800034d0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800034d4:	ff5ff06f          	j	800034c8 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800034d8:	0005051b          	sext.w	a0,a0
    800034dc:	00813403          	ld	s0,8(sp)
    800034e0:	01010113          	addi	sp,sp,16
    800034e4:	00008067          	ret

00000000800034e8 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00813423          	sd	s0,8(sp)
    800034f0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800034f4:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800034f8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800034fc:	0000c797          	auipc	a5,0xc
    80003500:	6cc7b783          	ld	a5,1740(a5) # 8000fbc8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003504:	02078263          	beqz	a5,80003528 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003508:	0000c797          	auipc	a5,0xc
    8000350c:	6c078793          	addi	a5,a5,1728 # 8000fbc8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003510:	0087b703          	ld	a4,8(a5)
    80003514:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003518:	00a7b423          	sd	a0,8(a5)
    }
}
    8000351c:	00813403          	ld	s0,8(sp)
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003528:	0000c797          	auipc	a5,0xc
    8000352c:	6a078793          	addi	a5,a5,1696 # 8000fbc8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003530:	00a7b423          	sd	a0,8(a5)
    80003534:	00a7b023          	sd	a0,0(a5)
    80003538:	fe5ff06f          	j	8000351c <_ZN9Scheduler3putEP3PCB+0x34>

000000008000353c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    8000353c:	ff010113          	addi	sp,sp,-16
    80003540:	00813423          	sd	s0,8(sp)
    80003544:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003548:	0000c517          	auipc	a0,0xc
    8000354c:	68053503          	ld	a0,1664(a0) # 8000fbc8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003550:	00050c63          	beqz	a0,80003568 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003554:	00853783          	ld	a5,8(a0)
    80003558:	00078e63          	beqz	a5,80003574 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000355c:	0000c717          	auipc	a4,0xc
    80003560:	66f73623          	sd	a5,1644(a4) # 8000fbc8 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003564:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003568:	00813403          	ld	s0,8(sp)
    8000356c:	01010113          	addi	sp,sp,16
    80003570:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003574:	0000c797          	auipc	a5,0xc
    80003578:	65478793          	addi	a5,a5,1620 # 8000fbc8 <_ZN9Scheduler16schedulerPCBHeadE>
    8000357c:	0007b423          	sd	zero,8(a5)
    80003580:	0007b023          	sd	zero,0(a5)
    80003584:	fe1ff06f          	j	80003564 <_ZN9Scheduler3getEv+0x28>

0000000080003588 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    80003588:	fe010113          	addi	sp,sp,-32
    8000358c:	00113c23          	sd	ra,24(sp)
    80003590:	00813823          	sd	s0,16(sp)
    80003594:	00913423          	sd	s1,8(sp)
    80003598:	02010413          	addi	s0,sp,32
    trapPrintString("Scheduler print\n");
    8000359c:	00006517          	auipc	a0,0x6
    800035a0:	ca450513          	addi	a0,a0,-860 # 80009240 <CONSOLE_STATUS+0x230>
    800035a4:	00003097          	auipc	ra,0x3
    800035a8:	928080e7          	jalr	-1752(ra) # 80005ecc <_Z15trapPrintStringPKc>
    PCB* curr = schedulerPCBHead;
    800035ac:	0000c497          	auipc	s1,0xc
    800035b0:	61c4b483          	ld	s1,1564(s1) # 8000fbc8 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800035b4:	02048863          	beqz	s1,800035e4 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    800035b8:	00000613          	li	a2,0
    800035bc:	01000593          	li	a1,16
    800035c0:	0004851b          	sext.w	a0,s1
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	7f4080e7          	jalr	2036(ra) # 80005db8 <_Z8printIntiii>
        printString("\n");
    800035cc:	00006517          	auipc	a0,0x6
    800035d0:	b3450513          	addi	a0,a0,-1228 # 80009100 <CONSOLE_STATUS+0xf0>
    800035d4:	00002097          	auipc	ra,0x2
    800035d8:	64c080e7          	jalr	1612(ra) # 80005c20 <_Z11printStringPKc>
        curr = curr->nextPCB;
    800035dc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800035e0:	fd5ff06f          	j	800035b4 <_ZN9Scheduler5printEv+0x2c>
    }
}
    800035e4:	01813083          	ld	ra,24(sp)
    800035e8:	01013403          	ld	s0,16(sp)
    800035ec:	00813483          	ld	s1,8(sp)
    800035f0:	02010113          	addi	sp,sp,32
    800035f4:	00008067          	ret

00000000800035f8 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    800035f8:	ff010113          	addi	sp,sp,-16
    800035fc:	00113423          	sd	ra,8(sp)
    80003600:	00813023          	sd	s0,0(sp)
    80003604:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	7c8080e7          	jalr	1992(ra) # 80003dd0 <_ZN5Riscv10kernelMainEv>
    80003610:	00813083          	ld	ra,8(sp)
    80003614:	00013403          	ld	s0,0(sp)
    80003618:	01010113          	addi	sp,sp,16
    8000361c:	00008067          	ret

0000000080003620 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003620:	ff010113          	addi	sp,sp,-16
    80003624:	00113423          	sd	ra,8(sp)
    80003628:	00813023          	sd	s0,0(sp)
    8000362c:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003630:	00053783          	ld	a5,0(a0)
    80003634:	0107b783          	ld	a5,16(a5)
    80003638:	000780e7          	jalr	a5
}
    8000363c:	00813083          	ld	ra,8(sp)
    80003640:	00013403          	ld	s0,0(sp)
    80003644:	01010113          	addi	sp,sp,16
    80003648:	00008067          	ret

000000008000364c <_ZN6ThreadD1Ev>:

Thread::~Thread()
    8000364c:	ff010113          	addi	sp,sp,-16
    80003650:	00113423          	sd	ra,8(sp)
    80003654:	00813023          	sd	s0,0(sp)
    80003658:	01010413          	addi	s0,sp,16
    8000365c:	00008797          	auipc	a5,0x8
    80003660:	33c78793          	addi	a5,a5,828 # 8000b998 <_ZTV6Thread+0x10>
    80003664:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    80003668:	00853503          	ld	a0,8(a0)
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	c1c080e7          	jalr	-996(ra) # 80001288 <mem_free>
}
    80003674:	00813083          	ld	ra,8(sp)
    80003678:	00013403          	ld	s0,0(sp)
    8000367c:	01010113          	addi	sp,sp,16
    80003680:	00008067          	ret

0000000080003684 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00113423          	sd	ra,8(sp)
    8000368c:	00813023          	sd	s0,0(sp)
    80003690:	01010413          	addi	s0,sp,16
    80003694:	00008797          	auipc	a5,0x8
    80003698:	32c78793          	addi	a5,a5,812 # 8000b9c0 <_ZTV9Semaphore+0x10>
    8000369c:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800036a0:	00853503          	ld	a0,8(a0)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	be4080e7          	jalr	-1052(ra) # 80001288 <mem_free>
}
    800036ac:	00813083          	ld	ra,8(sp)
    800036b0:	00013403          	ld	s0,0(sp)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <_Znwm>:
{
    800036bc:	ff010113          	addi	sp,sp,-16
    800036c0:	00113423          	sd	ra,8(sp)
    800036c4:	00813023          	sd	s0,0(sp)
    800036c8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	b8c080e7          	jalr	-1140(ra) # 80001258 <mem_alloc>
}
    800036d4:	00813083          	ld	ra,8(sp)
    800036d8:	00013403          	ld	s0,0(sp)
    800036dc:	01010113          	addi	sp,sp,16
    800036e0:	00008067          	ret

00000000800036e4 <_ZdlPv>:
{
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00113423          	sd	ra,8(sp)
    800036ec:	00813023          	sd	s0,0(sp)
    800036f0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	b94080e7          	jalr	-1132(ra) # 80001288 <mem_free>
}
    800036fc:	00813083          	ld	ra,8(sp)
    80003700:	00013403          	ld	s0,0(sp)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret

000000008000370c <_ZN6ThreadD0Ev>:
Thread::~Thread()
    8000370c:	fe010113          	addi	sp,sp,-32
    80003710:	00113c23          	sd	ra,24(sp)
    80003714:	00813823          	sd	s0,16(sp)
    80003718:	00913423          	sd	s1,8(sp)
    8000371c:	02010413          	addi	s0,sp,32
    80003720:	00050493          	mv	s1,a0
}
    80003724:	00000097          	auipc	ra,0x0
    80003728:	f28080e7          	jalr	-216(ra) # 8000364c <_ZN6ThreadD1Ev>
    8000372c:	00048513          	mv	a0,s1
    80003730:	00000097          	auipc	ra,0x0
    80003734:	fb4080e7          	jalr	-76(ra) # 800036e4 <_ZdlPv>
    80003738:	01813083          	ld	ra,24(sp)
    8000373c:	01013403          	ld	s0,16(sp)
    80003740:	00813483          	ld	s1,8(sp)
    80003744:	02010113          	addi	sp,sp,32
    80003748:	00008067          	ret

000000008000374c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000374c:	fe010113          	addi	sp,sp,-32
    80003750:	00113c23          	sd	ra,24(sp)
    80003754:	00813823          	sd	s0,16(sp)
    80003758:	00913423          	sd	s1,8(sp)
    8000375c:	02010413          	addi	s0,sp,32
    80003760:	00050493          	mv	s1,a0
}
    80003764:	00000097          	auipc	ra,0x0
    80003768:	f20080e7          	jalr	-224(ra) # 80003684 <_ZN9SemaphoreD1Ev>
    8000376c:	00048513          	mv	a0,s1
    80003770:	00000097          	auipc	ra,0x0
    80003774:	f74080e7          	jalr	-140(ra) # 800036e4 <_ZdlPv>
    80003778:	01813083          	ld	ra,24(sp)
    8000377c:	01013403          	ld	s0,16(sp)
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret

000000008000378c <_ZN6Thread5startEv>:
    if(myHandle != 0)
    8000378c:	00853503          	ld	a0,8(a0)
    80003790:	02050663          	beqz	a0,800037bc <_ZN6Thread5startEv+0x30>
{
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	00813023          	sd	s0,0(sp)
    800037a0:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	cc0080e7          	jalr	-832(ra) # 80001464 <thread_start>
}
    800037ac:	00813083          	ld	ra,8(sp)
    800037b0:	00013403          	ld	s0,0(sp)
    800037b4:	01010113          	addi	sp,sp,16
    800037b8:	00008067          	ret
        return -1;
    800037bc:	fff00513          	li	a0,-1
}
    800037c0:	00008067          	ret

00000000800037c4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800037c4:	ff010113          	addi	sp,sp,-16
    800037c8:	00113423          	sd	ra,8(sp)
    800037cc:	00813023          	sd	s0,0(sp)
    800037d0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	b60080e7          	jalr	-1184(ra) # 80001334 <thread_dispatch>
}
    800037dc:	00813083          	ld	ra,8(sp)
    800037e0:	00013403          	ld	s0,0(sp)
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00008067          	ret

00000000800037ec <_ZN6Thread5sleepEm>:
{
    800037ec:	ff010113          	addi	sp,sp,-16
    800037f0:	00113423          	sd	ra,8(sp)
    800037f4:	00813023          	sd	s0,0(sp)
    800037f8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	c3c080e7          	jalr	-964(ra) # 80001438 <time_sleep>
}
    80003804:	00813083          	ld	ra,8(sp)
    80003808:	00013403          	ld	s0,0(sp)
    8000380c:	01010113          	addi	sp,sp,16
    80003810:	00008067          	ret

0000000080003814 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003814:	fe010113          	addi	sp,sp,-32
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	00813823          	sd	s0,16(sp)
    80003820:	00913423          	sd	s1,8(sp)
    80003824:	01213023          	sd	s2,0(sp)
    80003828:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000382c:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003830:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003834:	0004b783          	ld	a5,0(s1)
    80003838:	0187b783          	ld	a5,24(a5)
    8000383c:	00048513          	mv	a0,s1
    80003840:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003844:	00090513          	mv	a0,s2
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	fa4080e7          	jalr	-92(ra) # 800037ec <_ZN6Thread5sleepEm>
    while(true)
    80003850:	fe5ff06f          	j	80003834 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003854 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00113423          	sd	ra,8(sp)
    8000385c:	00813023          	sd	s0,0(sp)
    80003860:	01010413          	addi	s0,sp,16
    80003864:	00008797          	auipc	a5,0x8
    80003868:	13478793          	addi	a5,a5,308 # 8000b998 <_ZTV6Thread+0x10>
    8000386c:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003870:	00850513          	addi	a0,a0,8
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	c1c080e7          	jalr	-996(ra) # 80001490 <thread_make_pcb>
}
    8000387c:	00813083          	ld	ra,8(sp)
    80003880:	00013403          	ld	s0,0(sp)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000388c:	ff010113          	addi	sp,sp,-16
    80003890:	00113423          	sd	ra,8(sp)
    80003894:	00813023          	sd	s0,0(sp)
    80003898:	01010413          	addi	s0,sp,16
    8000389c:	00008797          	auipc	a5,0x8
    800038a0:	0fc78793          	addi	a5,a5,252 # 8000b998 <_ZTV6Thread+0x10>
    800038a4:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    800038a8:	00050613          	mv	a2,a0
    800038ac:	00000597          	auipc	a1,0x0
    800038b0:	d7458593          	addi	a1,a1,-652 # 80003620 <_ZN6Thread6runnerEPv>
    800038b4:	00850513          	addi	a0,a0,8
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	bd8080e7          	jalr	-1064(ra) # 80001490 <thread_make_pcb>
}
    800038c0:	00813083          	ld	ra,8(sp)
    800038c4:	00013403          	ld	s0,0(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret

00000000800038d0 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    800038d0:	00853503          	ld	a0,8(a0)
    800038d4:	02050663          	beqz	a0,80003900 <_ZN9Semaphore4waitEv+0x30>
{
    800038d8:	ff010113          	addi	sp,sp,-16
    800038dc:	00113423          	sd	ra,8(sp)
    800038e0:	00813023          	sd	s0,0(sp)
    800038e4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	af8080e7          	jalr	-1288(ra) # 800013e0 <sem_wait>
}
    800038f0:	00813083          	ld	ra,8(sp)
    800038f4:	00013403          	ld	s0,0(sp)
    800038f8:	01010113          	addi	sp,sp,16
    800038fc:	00008067          	ret
        return -1;
    80003900:	fff00513          	li	a0,-1
}
    80003904:	00008067          	ret

0000000080003908 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003908:	fe010113          	addi	sp,sp,-32
    8000390c:	00113c23          	sd	ra,24(sp)
    80003910:	00813823          	sd	s0,16(sp)
    80003914:	00913423          	sd	s1,8(sp)
    80003918:	02010413          	addi	s0,sp,32
    8000391c:	00050493          	mv	s1,a0
    80003920:	00008797          	auipc	a5,0x8
    80003924:	0a078793          	addi	a5,a5,160 # 8000b9c0 <_ZTV9Semaphore+0x10>
    80003928:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000392c:	00850513          	addi	a0,a0,8
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	a4c080e7          	jalr	-1460(ra) # 8000137c <sem_open>
    if(retval != 0)
    80003938:	00050463          	beqz	a0,80003940 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    8000393c:	0004b423          	sd	zero,8(s1)
}
    80003940:	01813083          	ld	ra,24(sp)
    80003944:	01013403          	ld	s0,16(sp)
    80003948:	00813483          	ld	s1,8(sp)
    8000394c:	02010113          	addi	sp,sp,32
    80003950:	00008067          	ret

0000000080003954 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003954:	00853503          	ld	a0,8(a0)
    80003958:	02050663          	beqz	a0,80003984 <_ZN9Semaphore6signalEv+0x30>
{
    8000395c:	ff010113          	addi	sp,sp,-16
    80003960:	00113423          	sd	ra,8(sp)
    80003964:	00813023          	sd	s0,0(sp)
    80003968:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	aa0080e7          	jalr	-1376(ra) # 8000140c <sem_signal>
}
    80003974:	00813083          	ld	ra,8(sp)
    80003978:	00013403          	ld	s0,0(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret
        return -1;
    80003984:	fff00513          	li	a0,-1
}
    80003988:	00008067          	ret

000000008000398c <_ZN7Console4getcEv>:
{
    8000398c:	ff010113          	addi	sp,sp,-16
    80003990:	00813423          	sd	s0,8(sp)
    80003994:	01010413          	addi	s0,sp,16
}
    80003998:	00000513          	li	a0,0
    8000399c:	00813403          	ld	s0,8(sp)
    800039a0:	01010113          	addi	sp,sp,16
    800039a4:	00008067          	ret

00000000800039a8 <_ZN7Console4putcEc>:
{
    800039a8:	ff010113          	addi	sp,sp,-16
    800039ac:	00813423          	sd	s0,8(sp)
    800039b0:	01010413          	addi	s0,sp,16
}
    800039b4:	00813403          	ld	s0,8(sp)
    800039b8:	01010113          	addi	sp,sp,16
    800039bc:	00008067          	ret

00000000800039c0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800039c0:	fe010113          	addi	sp,sp,-32
    800039c4:	00113c23          	sd	ra,24(sp)
    800039c8:	00813823          	sd	s0,16(sp)
    800039cc:	00913423          	sd	s1,8(sp)
    800039d0:	01213023          	sd	s2,0(sp)
    800039d4:	02010413          	addi	s0,sp,32
    800039d8:	00050493          	mv	s1,a0
    800039dc:	00058913          	mv	s2,a1
    800039e0:	01000513          	li	a0,16
    800039e4:	00000097          	auipc	ra,0x0
    800039e8:	cd8080e7          	jalr	-808(ra) # 800036bc <_Znwm>
    800039ec:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800039f0:	00953023          	sd	s1,0(a0)
    800039f4:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800039f8:	00000597          	auipc	a1,0x0
    800039fc:	e1c58593          	addi	a1,a1,-484 # 80003814 <_ZN14PeriodicThread6runnerEPv>
    80003a00:	00048513          	mv	a0,s1
    80003a04:	00000097          	auipc	ra,0x0
    80003a08:	e50080e7          	jalr	-432(ra) # 80003854 <_ZN6ThreadC1EPFvPvES0_>
    80003a0c:	00008797          	auipc	a5,0x8
    80003a10:	f2478793          	addi	a5,a5,-220 # 8000b930 <_ZTV14PeriodicThread+0x10>
    80003a14:	00f4b023          	sd	a5,0(s1)
}
    80003a18:	01813083          	ld	ra,24(sp)
    80003a1c:	01013403          	ld	s0,16(sp)
    80003a20:	00813483          	ld	s1,8(sp)
    80003a24:	00013903          	ld	s2,0(sp)
    80003a28:	02010113          	addi	sp,sp,32
    80003a2c:	00008067          	ret

0000000080003a30 <_ZN5Riscv15userMainWrapperEPv>:
    disableInterrupts();
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    80003a30:	ff010113          	addi	sp,sp,-16
    80003a34:	00113423          	sd	ra,8(sp)
    80003a38:	00813023          	sd	s0,0(sp)
    80003a3c:	01010413          	addi	s0,sp,16
    userMain();
    80003a40:	00003097          	auipc	ra,0x3
    80003a44:	944080e7          	jalr	-1724(ra) # 80006384 <_Z8userMainv>
}
    80003a48:	00813083          	ld	ra,8(sp)
    80003a4c:	00013403          	ld	s0,0(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <_ZN5Riscv10initSystemEv>:
{
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003a68:	00008797          	auipc	a5,0x8
    80003a6c:	0287b783          	ld	a5,40(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003a70:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	f64080e7          	jalr	-156(ra) # 800029d8 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003a7c:	fffff097          	auipc	ra,0xfffff
    80003a80:	2c0080e7          	jalr	704(ra) # 80002d3c <_ZN8KConsole10initializeEv>
}
    80003a84:	00813083          	ld	ra,8(sp)
    80003a88:	00013403          	ld	s0,0(sp)
    80003a8c:	01010113          	addi	sp,sp,16
    80003a90:	00008067          	ret

0000000080003a94 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003a94:	ff010113          	addi	sp,sp,-16
    80003a98:	00813423          	sd	s0,8(sp)
    80003a9c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003aa0:	00200793          	li	a5,2
    80003aa4:	1007a073          	csrs	sstatus,a5
}
    80003aa8:	00813403          	ld	s0,8(sp)
    80003aac:	01010113          	addi	sp,sp,16
    80003ab0:	00008067          	ret

0000000080003ab4 <_ZN5Riscv17disableInterruptsEv>:
{
    80003ab4:	ff010113          	addi	sp,sp,-16
    80003ab8:	00813423          	sd	s0,8(sp)
    80003abc:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ac0:	00200793          	li	a5,2
    80003ac4:	1007b073          	csrc	sstatus,a5
}
    80003ac8:	00813403          	ld	s0,8(sp)
    80003acc:	01010113          	addi	sp,sp,16
    80003ad0:	00008067          	ret

0000000080003ad4 <_ZN5Riscv9endSystemEv>:
{
    80003ad4:	ff010113          	addi	sp,sp,-16
    80003ad8:	00113423          	sd	ra,8(sp)
    80003adc:	00813023          	sd	s0,0(sp)
    80003ae0:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003ae4:	00000097          	auipc	ra,0x0
    80003ae8:	fd0080e7          	jalr	-48(ra) # 80003ab4 <_ZN5Riscv17disableInterruptsEv>
}
    80003aec:	00813083          	ld	ra,8(sp)
    80003af0:	00013403          	ld	s0,0(sp)
    80003af4:	01010113          	addi	sp,sp,16
    80003af8:	00008067          	ret

0000000080003afc <_ZN5Riscv10popSppSpieEv>:
{
    80003afc:	ff010113          	addi	sp,sp,-16
    80003b00:	00813423          	sd	s0,8(sp)
    80003b04:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003b08:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003b0c:	10200073          	sret
}
    80003b10:	00813403          	ld	s0,8(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret

0000000080003b1c <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003b1c:	f9010113          	addi	sp,sp,-112
    80003b20:	06113423          	sd	ra,104(sp)
    80003b24:	06813023          	sd	s0,96(sp)
    80003b28:	04913c23          	sd	s1,88(sp)
    80003b2c:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003b30:	00070713          	mv	a4,a4
    80003b34:	00008797          	auipc	a5,0x8
    80003b38:	fb47b783          	ld	a5,-76(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003b3c:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003b40:	00008797          	auipc	a5,0x8
    80003b44:	f987b783          	ld	a5,-104(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003b48:	0007b783          	ld	a5,0(a5)
    80003b4c:	14002773          	csrr	a4,sscratch
    80003b50:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003b54:	142027f3          	csrr	a5,scause
    80003b58:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003b5c:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003b60:	fff00713          	li	a4,-1
    80003b64:	03f71713          	slli	a4,a4,0x3f
    80003b68:	00170713          	addi	a4,a4,1
    80003b6c:	0ce78e63          	beq	a5,a4,80003c48 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    80003b70:	fff00713          	li	a4,-1
    80003b74:	03f71713          	slli	a4,a4,0x3f
    80003b78:	00170713          	addi	a4,a4,1
    80003b7c:	04f76e63          	bltu	a4,a5,80003bd8 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    80003b80:	ff878793          	addi	a5,a5,-8
    80003b84:	00100713          	li	a4,1
    80003b88:	18f76c63          	bltu	a4,a5,80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003b8c:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003b90:	14102773          	csrr	a4,sepc
    80003b94:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003b98:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003b9c:	00470713          	addi	a4,a4,4
    80003ba0:	fae43423          	sd	a4,-88(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003ba4:	10002773          	csrr	a4,sstatus
    80003ba8:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003bac:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003bb0:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003bb4:	04200713          	li	a4,66
    80003bb8:	14f76c63          	bltu	a4,a5,80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
    80003bbc:	00279793          	slli	a5,a5,0x2
    80003bc0:	00005717          	auipc	a4,0x5
    80003bc4:	69470713          	addi	a4,a4,1684 # 80009254 <CONSOLE_STATUS+0x244>
    80003bc8:	00e787b3          	add	a5,a5,a4
    80003bcc:	0007a783          	lw	a5,0(a5)
    80003bd0:	00e787b3          	add	a5,a5,a4
    80003bd4:	00078067          	jr	a5
    switch(scause)
    80003bd8:	fff00713          	li	a4,-1
    80003bdc:	03f71713          	slli	a4,a4,0x3f
    80003be0:	00970713          	addi	a4,a4,9
    80003be4:	12e79e63          	bne	a5,a4,80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            uint64 x = CONSOLE_STATUS;
    80003be8:	00008797          	auipc	a5,0x8
    80003bec:	e987b783          	ld	a5,-360(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003bf0:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003bf4:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003bf8:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003bfc:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003c00:	0017f793          	andi	a5,a5,1
    80003c04:	02078863          	beqz	a5,80003c34 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                x = CONSOLE_TX_DATA;
    80003c08:	00008797          	auipc	a5,0x8
    80003c0c:	e987b783          	ld	a5,-360(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003c10:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003c14:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003c18:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003c1c:	00058513          	mv	a0,a1
    80003c20:	0ff57493          	andi	s1,a0,255
                if(KConsole::pendingGetc > 0)
    80003c24:	00008797          	auipc	a5,0x8
    80003c28:	e747b783          	ld	a5,-396(a5) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003c2c:	0007b783          	ld	a5,0(a5)
    80003c30:	0a079663          	bnez	a5,80003cdc <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            plic_complete(plic_claim());
    80003c34:	00003097          	auipc	ra,0x3
    80003c38:	360080e7          	jalr	864(ra) # 80006f94 <plic_claim>
    80003c3c:	00003097          	auipc	ra,0x3
    80003c40:	390080e7          	jalr	912(ra) # 80006fcc <plic_complete>
            break;
    80003c44:	0dc0006f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003c48:	141027f3          	csrr	a5,sepc
    80003c4c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003c50:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003c54:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c58:	100027f3          	csrr	a5,sstatus
    80003c5c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003c60:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003c64:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003c68:	00200793          	li	a5,2
    80003c6c:	1447b073          	csrc	sip,a5
            totalTime++;
    80003c70:	0000c717          	auipc	a4,0xc
    80003c74:	f6870713          	addi	a4,a4,-152 # 8000fbd8 <_ZN5Riscv9totalTimeE>
    80003c78:	00073783          	ld	a5,0(a4)
    80003c7c:	00178793          	addi	a5,a5,1
    80003c80:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003c84:	00008497          	auipc	s1,0x8
    80003c88:	e244b483          	ld	s1,-476(s1) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003c8c:	0004b783          	ld	a5,0(s1)
    80003c90:	00178793          	addi	a5,a5,1
    80003c94:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	5b4080e7          	jalr	1460(ra) # 8000324c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003ca0:	00008797          	auipc	a5,0x8
    80003ca4:	e387b783          	ld	a5,-456(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003ca8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003cac:	0187b783          	ld	a5,24(a5)
    80003cb0:	0004b703          	ld	a4,0(s1)
    80003cb4:	00f77c63          	bgeu	a4,a5,80003ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            Riscv::w_sstatus(sstatus);
    80003cb8:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003cbc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003cc0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003cc4:	14179073          	csrw	sepc,a5
            break;
    80003cc8:	0580006f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                PCB::timeSliceCounter = 0;
    80003ccc:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003cd0:	fffff097          	auipc	ra,0xfffff
    80003cd4:	c00080e7          	jalr	-1024(ra) # 800028d0 <_ZN3PCB8dispatchEv>
    80003cd8:	fe1ff06f          	j	80003cb8 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    KConsole::pendingGetc--;
    80003cdc:	fff78793          	addi	a5,a5,-1
    80003ce0:	00008717          	auipc	a4,0x8
    80003ce4:	db873703          	ld	a4,-584(a4) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003ce8:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003cec:	00048513          	mv	a0,s1
    80003cf0:	fffff097          	auipc	ra,0xfffff
    80003cf4:	0fc080e7          	jalr	252(ra) # 80002dec <_ZN8KConsole17putCharacterInputEc>
                    KConsole::putCharacterOutput(c);
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	fffff097          	auipc	ra,0xfffff
    80003d00:	1d0080e7          	jalr	464(ra) # 80002ecc <_ZN8KConsole18putCharacterOutputEc>
    80003d04:	f31ff06f          	j	80003c34 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                    MemoryAllocator::memAllocHandler();
    80003d08:	00000097          	auipc	ra,0x0
    80003d0c:	65c080e7          	jalr	1628(ra) # 80004364 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003d10:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d14:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d18:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d1c:	14179073          	csrw	sepc,a5
}
    80003d20:	06813083          	ld	ra,104(sp)
    80003d24:	06013403          	ld	s0,96(sp)
    80003d28:	05813483          	ld	s1,88(sp)
    80003d2c:	07010113          	addi	sp,sp,112
    80003d30:	00008067          	ret
                    MemoryAllocator::memFreeHandler();
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	694080e7          	jalr	1684(ra) # 800043c8 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003d3c:	fd5ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadMakePCBHandler();
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	f68080e7          	jalr	-152(ra) # 80002ca8 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003d48:	fc9ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadCreateHandler();
    80003d4c:	fffff097          	auipc	ra,0xfffff
    80003d50:	e78080e7          	jalr	-392(ra) # 80002bc4 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003d54:	fbdff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadStartHandler();
    80003d58:	fffff097          	auipc	ra,0xfffff
    80003d5c:	f0c080e7          	jalr	-244(ra) # 80002c64 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003d60:	fb1ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadDispatchHandler();
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	dcc080e7          	jalr	-564(ra) # 80002b30 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003d6c:	fa5ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadExitHandler();
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	d74080e7          	jalr	-652(ra) # 80002ae4 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003d78:	f99ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadSleepHandler();
    80003d7c:	fffff097          	auipc	ra,0xfffff
    80003d80:	de4080e7          	jalr	-540(ra) # 80002b60 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003d84:	f8dff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KSemaphore::semOpenHandler();
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	8f0080e7          	jalr	-1808(ra) # 80004678 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003d90:	f81ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KSemaphore::semWaitHandler();
    80003d94:	00001097          	auipc	ra,0x1
    80003d98:	97c080e7          	jalr	-1668(ra) # 80004710 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003d9c:	f75ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KSemaphore::semSignalHandler();
    80003da0:	00001097          	auipc	ra,0x1
    80003da4:	9b0080e7          	jalr	-1616(ra) # 80004750 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003da8:	f69ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KSemaphore::semCloseHandler();
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	9e4080e7          	jalr	-1564(ra) # 80004790 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003db4:	f5dff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KConsole::getcHandler();
    80003db8:	fffff097          	auipc	ra,0xfffff
    80003dbc:	2d4080e7          	jalr	724(ra) # 8000308c <_ZN8KConsole11getcHandlerEv>
                    break;
    80003dc0:	f51ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KConsole::putcHandler();
    80003dc4:	fffff097          	auipc	ra,0xfffff
    80003dc8:	298080e7          	jalr	664(ra) # 8000305c <_ZN8KConsole11putcHandlerEv>
                    break;
    80003dcc:	f45ff06f          	j	80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>

0000000080003dd0 <_ZN5Riscv10kernelMainEv>:
{
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00113c23          	sd	ra,24(sp)
    80003dd8:	00813823          	sd	s0,16(sp)
    80003ddc:	00913423          	sd	s1,8(sp)
    80003de0:	01213023          	sd	s2,0(sp)
    80003de4:	02010413          	addi	s0,sp,32
    initSystem();
    80003de8:	00000097          	auipc	ra,0x0
    80003dec:	c70080e7          	jalr	-912(ra) # 80003a58 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003df0:	00000097          	auipc	ra,0x0
    80003df4:	ca4080e7          	jalr	-860(ra) # 80003a94 <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003df8:	00001537          	lui	a0,0x1
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	540080e7          	jalr	1344(ra) # 8000433c <_Z7kmallocm>
    80003e04:	00050913          	mv	s2,a0
    80003e08:	05800513          	li	a0,88
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	b50080e7          	jalr	-1200(ra) # 8000295c <_ZN3PCBnwEm>
    80003e14:	00050493          	mv	s1,a0
    80003e18:	00200713          	li	a4,2
    80003e1c:	00090693          	mv	a3,s2
    80003e20:	00000613          	li	a2,0
    80003e24:	00000597          	auipc	a1,0x0
    80003e28:	c0c58593          	addi	a1,a1,-1012 # 80003a30 <_ZN5Riscv15userMainWrapperEPv>
    80003e2c:	fffff097          	auipc	ra,0xfffff
    80003e30:	a18080e7          	jalr	-1512(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003e34:	00048513          	mv	a0,s1
    80003e38:	fffff097          	auipc	ra,0xfffff
    80003e3c:	a70080e7          	jalr	-1424(ra) # 800028a8 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003e40:	00048513          	mv	a0,s1
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	c7c080e7          	jalr	-900(ra) # 80002ac0 <_ZN3PCB10isFinishedEv>
    80003e4c:	00051863          	bnez	a0,80003e5c <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003e50:	ffffd097          	auipc	ra,0xffffd
    80003e54:	4e4080e7          	jalr	1252(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003e58:	fe9ff06f          	j	80003e40 <_ZN5Riscv10kernelMainEv+0x70>
    finishSystem = true;
    80003e5c:	00100793          	li	a5,1
    80003e60:	0000c717          	auipc	a4,0xc
    80003e64:	d8f70023          	sb	a5,-640(a4) # 8000fbe0 <_ZN5Riscv12finishSystemE>
    ::printString("End...\n");
    80003e68:	00005517          	auipc	a0,0x5
    80003e6c:	20050513          	addi	a0,a0,512 # 80009068 <CONSOLE_STATUS+0x58>
    80003e70:	00002097          	auipc	ra,0x2
    80003e74:	db0080e7          	jalr	-592(ra) # 80005c20 <_Z11printStringPKc>
    while(!PCB::consolePCB->isFinished())
    80003e78:	00008797          	auipc	a5,0x8
    80003e7c:	c507b783          	ld	a5,-944(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003e80:	0007b503          	ld	a0,0(a5)
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	c3c080e7          	jalr	-964(ra) # 80002ac0 <_ZN3PCB10isFinishedEv>
    80003e8c:	00051863          	bnez	a0,80003e9c <_ZN5Riscv10kernelMainEv+0xcc>
        thread_dispatch();
    80003e90:	ffffd097          	auipc	ra,0xffffd
    80003e94:	4a4080e7          	jalr	1188(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    80003e98:	fe1ff06f          	j	80003e78 <_ZN5Riscv10kernelMainEv+0xa8>
    disableInterrupts();
    80003e9c:	00000097          	auipc	ra,0x0
    80003ea0:	c18080e7          	jalr	-1000(ra) # 80003ab4 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003ea4:	00000097          	auipc	ra,0x0
    80003ea8:	c30080e7          	jalr	-976(ra) # 80003ad4 <_ZN5Riscv9endSystemEv>
}
    80003eac:	01813083          	ld	ra,24(sp)
    80003eb0:	01013403          	ld	s0,16(sp)
    80003eb4:	00813483          	ld	s1,8(sp)
    80003eb8:	00013903          	ld	s2,0(sp)
    80003ebc:	02010113          	addi	sp,sp,32
    80003ec0:	00008067          	ret
    80003ec4:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003ec8:	00048513          	mv	a0,s1
    80003ecc:	fffff097          	auipc	ra,0xfffff
    80003ed0:	ab8080e7          	jalr	-1352(ra) # 80002984 <_ZN3PCBdlEPv>
    80003ed4:	00090513          	mv	a0,s2
    80003ed8:	0000d097          	auipc	ra,0xd
    80003edc:	e20080e7          	jalr	-480(ra) # 80010cf8 <_Unwind_Resume>

0000000080003ee0 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003ee0:	ff010113          	addi	sp,sp,-16
    80003ee4:	00113423          	sd	ra,8(sp)
    80003ee8:	00813023          	sd	s0,0(sp)
    80003eec:	01010413          	addi	s0,sp,16
    myTests();
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	7b8080e7          	jalr	1976(ra) # 800026a8 <_Z7myTestsv>
}
    80003ef8:	00813083          	ld	ra,8(sp)
    80003efc:	00013403          	ld	s0,0(sp)
    80003f00:	01010113          	addi	sp,sp,16
    80003f04:	00008067          	ret

0000000080003f08 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003f08:	ff010113          	addi	sp,sp,-16
    80003f0c:	00813423          	sd	s0,8(sp)
    80003f10:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003f14:	00200793          	li	a5,2
    80003f18:	1047b073          	csrc	sie,a5
}
    80003f1c:	00813403          	ld	s0,8(sp)
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret

0000000080003f28 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003f28:	ff010113          	addi	sp,sp,-16
    80003f2c:	00813423          	sd	s0,8(sp)
    80003f30:	01010413          	addi	s0,sp,16
    while(true)
    80003f34:	0000006f          	j	80003f34 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003f38 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003f38:	ff010113          	addi	sp,sp,-16
    80003f3c:	00813423          	sd	s0,8(sp)
    80003f40:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003f44:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003f48:	00008717          	auipc	a4,0x8
    80003f4c:	b9073703          	ld	a4,-1136(a4) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003f50:	00073703          	ld	a4,0(a4)
    80003f54:	01073703          	ld	a4,16(a4)
    80003f58:	00070593          	mv	a1,a4
    //__asm__ volatile("csrr a1, sscratch");
    __asm__ volatile("sd a0, 80(a1)");
    80003f5c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003f60:	00078593          	mv	a1,a5
}
    80003f64:	00813403          	ld	s0,8(sp)
    80003f68:	01010113          	addi	sp,sp,16
    80003f6c:	00008067          	ret

0000000080003f70 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003f70:	ff010113          	addi	sp,sp,-16
    80003f74:	00813423          	sd	s0,8(sp)
    80003f78:	01010413          	addi	s0,sp,16
    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003f7c:	00813403          	ld	s0,8(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret

0000000080003f88 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003f88:	ff010113          	addi	sp,sp,-16
    80003f8c:	00813423          	sd	s0,8(sp)
    80003f90:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003f94:	0000c717          	auipc	a4,0xc
    80003f98:	c5472703          	lw	a4,-940(a4) # 8000fbe8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003f9c:	00100793          	li	a5,1
    80003fa0:	04f70263          	beq	a4,a5,80003fe4 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003fa4:	0000c797          	auipc	a5,0xc
    80003fa8:	c4478793          	addi	a5,a5,-956 # 8000fbe8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003fac:	00100713          	li	a4,1
    80003fb0:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003fb4:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003fb8:	00008717          	auipc	a4,0x8
    80003fbc:	ad073703          	ld	a4,-1328(a4) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003fc0:	00073703          	ld	a4,0(a4)
    80003fc4:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003fc8:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003fcc:	00008797          	auipc	a5,0x8
    80003fd0:	b147b783          	ld	a5,-1260(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003fd4:	0007b783          	ld	a5,0(a5)
    80003fd8:	40e787b3          	sub	a5,a5,a4
    80003fdc:	ff178793          	addi	a5,a5,-15
    80003fe0:	00f73023          	sd	a5,0(a4)
}
    80003fe4:	00813403          	ld	s0,8(sp)
    80003fe8:	01010113          	addi	sp,sp,16
    80003fec:	00008067          	ret

0000000080003ff0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00113c23          	sd	ra,24(sp)
    80003ff8:	00813823          	sd	s0,16(sp)
    80003ffc:	00913423          	sd	s1,8(sp)
    80004000:	01213023          	sd	s2,0(sp)
    80004004:	02010413          	addi	s0,sp,32
    80004008:	00050493          	mv	s1,a0
    8000400c:	00058913          	mv	s2,a1
    initMemory();
    80004010:	00000097          	auipc	ra,0x0
    80004014:	f78080e7          	jalr	-136(ra) # 80003f88 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004018:	0000c797          	auipc	a5,0xc
    8000401c:	bd87b783          	ld	a5,-1064(a5) # 8000fbf0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004020:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004024:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80004028:	00000713          	li	a4,0
    while(curr != 0)
    8000402c:	00078c63          	beqz	a5,80004044 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004030:	00f4e863          	bltu	s1,a5,80004040 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004034:	00078713          	mv	a4,a5
        curr = curr->next;
    80004038:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000403c:	ff1ff06f          	j	8000402c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80004040:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004044:	02070063          	beqz	a4,80004064 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004048:	00973423          	sd	s1,8(a4)
}
    8000404c:	01813083          	ld	ra,24(sp)
    80004050:	01013403          	ld	s0,16(sp)
    80004054:	00813483          	ld	s1,8(sp)
    80004058:	00013903          	ld	s2,0(sp)
    8000405c:	02010113          	addi	sp,sp,32
    80004060:	00008067          	ret
        headAllocated = newAllocated;
    80004064:	0000c797          	auipc	a5,0xc
    80004068:	b897b623          	sd	s1,-1140(a5) # 8000fbf0 <_ZN15MemoryAllocator13headAllocatedE>
    8000406c:	fe1ff06f          	j	8000404c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004070 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004070:	fe010113          	addi	sp,sp,-32
    80004074:	00113c23          	sd	ra,24(sp)
    80004078:	00813823          	sd	s0,16(sp)
    8000407c:	00913423          	sd	s1,8(sp)
    80004080:	01213023          	sd	s2,0(sp)
    80004084:	02010413          	addi	s0,sp,32
    80004088:	00050913          	mv	s2,a0
    initMemory();
    8000408c:	00000097          	auipc	ra,0x0
    80004090:	efc080e7          	jalr	-260(ra) # 80003f88 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004094:	0000c497          	auipc	s1,0xc
    80004098:	b644b483          	ld	s1,-1180(s1) # 8000fbf8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    8000409c:	00000713          	li	a4,0
    while(curr != 0)
    800040a0:	0a048863          	beqz	s1,80004150 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800040a4:	0004b783          	ld	a5,0(s1)
    800040a8:	0127f863          	bgeu	a5,s2,800040b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800040ac:	00048713          	mv	a4,s1
        curr = curr->next;
    800040b0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800040b4:	fedff06f          	j	800040a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800040b8:	01090693          	addi	a3,s2,16
    800040bc:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800040c0:	00008617          	auipc	a2,0x8
    800040c4:	a2063603          	ld	a2,-1504(a2) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800040c8:	00063603          	ld	a2,0(a2)
    800040cc:	04d66c63          	bltu	a2,a3,80004124 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800040d0:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    800040d4:	01000613          	li	a2,16
    800040d8:	02f67663          	bgeu	a2,a5,80004104 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    800040dc:	0084b603          	ld	a2,8(s1)
    800040e0:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800040e4:	ff078793          	addi	a5,a5,-16
    800040e8:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    800040ec:	00070663          	beqz	a4,800040f8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    800040f0:	00d73423          	sd	a3,8(a4)
    800040f4:	0380006f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    800040f8:	0000c797          	auipc	a5,0xc
    800040fc:	b0d7b023          	sd	a3,-1280(a5) # 8000fbf8 <_ZN15MemoryAllocator8headFreeE>
    80004100:	02c0006f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80004104:	00070863          	beqz	a4,80004114 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80004108:	0084b783          	ld	a5,8(s1)
    8000410c:	00f73423          	sd	a5,8(a4)
    80004110:	01c0006f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80004114:	0084b783          	ld	a5,8(s1)
    80004118:	0000c717          	auipc	a4,0xc
    8000411c:	aef73023          	sd	a5,-1312(a4) # 8000fbf8 <_ZN15MemoryAllocator8headFreeE>
    80004120:	00c0006f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80004124:	02070063          	beqz	a4,80004144 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80004128:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    8000412c:	00090593          	mv	a1,s2
    80004130:	00048513          	mv	a0,s1
    80004134:	00000097          	auipc	ra,0x0
    80004138:	ebc080e7          	jalr	-324(ra) # 80003ff0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000413c:	01048513          	addi	a0,s1,16
            break;
    80004140:	0140006f          	j	80004154 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80004144:	0000c797          	auipc	a5,0xc
    80004148:	aa07ba23          	sd	zero,-1356(a5) # 8000fbf8 <_ZN15MemoryAllocator8headFreeE>
    8000414c:	fe1ff06f          	j	8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80004150:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004154:	01813083          	ld	ra,24(sp)
    80004158:	01013403          	ld	s0,16(sp)
    8000415c:	00813483          	ld	s1,8(sp)
    80004160:	00013903          	ld	s2,0(sp)
    80004164:	02010113          	addi	sp,sp,32
    80004168:	00008067          	ret

000000008000416c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000416c:	ff010113          	addi	sp,sp,-16
    80004170:	00113423          	sd	ra,8(sp)
    80004174:	00813023          	sd	s0,0(sp)
    80004178:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	ef4080e7          	jalr	-268(ra) # 80004070 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004184:	00813083          	ld	ra,8(sp)
    80004188:	00013403          	ld	s0,0(sp)
    8000418c:	01010113          	addi	sp,sp,16
    80004190:	00008067          	ret

0000000080004194 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004194:	fe010113          	addi	sp,sp,-32
    80004198:	00113c23          	sd	ra,24(sp)
    8000419c:	00813823          	sd	s0,16(sp)
    800041a0:	00913423          	sd	s1,8(sp)
    800041a4:	01213023          	sd	s2,0(sp)
    800041a8:	02010413          	addi	s0,sp,32
    800041ac:	00050493          	mv	s1,a0
    800041b0:	00058913          	mv	s2,a1
    initMemory();
    800041b4:	00000097          	auipc	ra,0x0
    800041b8:	dd4080e7          	jalr	-556(ra) # 80003f88 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800041bc:	0000c797          	auipc	a5,0xc
    800041c0:	a3c7b783          	ld	a5,-1476(a5) # 8000fbf8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800041c4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800041c8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800041cc:	00000713          	li	a4,0
    while(curr != 0)
    800041d0:	00078c63          	beqz	a5,800041e8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800041d4:	00f4e863          	bltu	s1,a5,800041e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800041d8:	00078713          	mv	a4,a5
        curr = curr->next;
    800041dc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800041e0:	ff1ff06f          	j	800041d0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800041e4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800041e8:	04070663          	beqz	a4,80004234 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800041ec:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800041f0:	0084b783          	ld	a5,8(s1)
    800041f4:	00078a63          	beqz	a5,80004208 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800041f8:	0004b603          	ld	a2,0(s1)
    800041fc:	01060693          	addi	a3,a2,16
    80004200:	00d486b3          	add	a3,s1,a3
    80004204:	02d78e63          	beq	a5,a3,80004240 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004208:	00070a63          	beqz	a4,8000421c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    8000420c:	00073683          	ld	a3,0(a4)
    80004210:	01068793          	addi	a5,a3,16
    80004214:	00f707b3          	add	a5,a4,a5
    80004218:	04978263          	beq	a5,s1,8000425c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	00013903          	ld	s2,0(sp)
    8000422c:	02010113          	addi	sp,sp,32
    80004230:	00008067          	ret
        headFree = newSegment;
    80004234:	0000c797          	auipc	a5,0xc
    80004238:	9c97b223          	sd	s1,-1596(a5) # 8000fbf8 <_ZN15MemoryAllocator8headFreeE>
    8000423c:	fb5ff06f          	j	800041f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004240:	0007b683          	ld	a3,0(a5)
    80004244:	00d60633          	add	a2,a2,a3
    80004248:	01060613          	addi	a2,a2,16
    8000424c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004250:	0087b783          	ld	a5,8(a5)
    80004254:	00f4b423          	sd	a5,8(s1)
    80004258:	fb1ff06f          	j	80004208 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000425c:	0004b783          	ld	a5,0(s1)
    80004260:	00f686b3          	add	a3,a3,a5
    80004264:	01068693          	addi	a3,a3,16
    80004268:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000426c:	0084b783          	ld	a5,8(s1)
    80004270:	00f73423          	sd	a5,8(a4)
}
    80004274:	fa9ff06f          	j	8000421c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004278 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004278:	fe010113          	addi	sp,sp,-32
    8000427c:	00113c23          	sd	ra,24(sp)
    80004280:	00813823          	sd	s0,16(sp)
    80004284:	00913423          	sd	s1,8(sp)
    80004288:	01213023          	sd	s2,0(sp)
    8000428c:	02010413          	addi	s0,sp,32
    80004290:	00050913          	mv	s2,a0
    initMemory();
    80004294:	00000097          	auipc	ra,0x0
    80004298:	cf4080e7          	jalr	-780(ra) # 80003f88 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    8000429c:	0000c497          	auipc	s1,0xc
    800042a0:	9544b483          	ld	s1,-1708(s1) # 8000fbf0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800042a4:	00000713          	li	a4,0
    while(curr != 0)
    800042a8:	02048a63          	beqz	s1,800042dc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800042ac:	01048793          	addi	a5,s1,16
    800042b0:	01278863          	beq	a5,s2,800042c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800042b4:	00048713          	mv	a4,s1
        curr = curr->next;
    800042b8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800042bc:	fedff06f          	j	800042a8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800042c0:	02070e63          	beqz	a4,800042fc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800042c4:	0084b783          	ld	a5,8(s1)
    800042c8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800042cc:	0004b583          	ld	a1,0(s1)
    800042d0:	00048513          	mv	a0,s1
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	ec0080e7          	jalr	-320(ra) # 80004194 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800042dc:	02048863          	beqz	s1,8000430c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800042e0:	00000513          	li	a0,0
    else
        return 1;
}
    800042e4:	01813083          	ld	ra,24(sp)
    800042e8:	01013403          	ld	s0,16(sp)
    800042ec:	00813483          	ld	s1,8(sp)
    800042f0:	00013903          	ld	s2,0(sp)
    800042f4:	02010113          	addi	sp,sp,32
    800042f8:	00008067          	ret
                headAllocated = curr->next;
    800042fc:	0084b783          	ld	a5,8(s1)
    80004300:	0000c717          	auipc	a4,0xc
    80004304:	8ef73823          	sd	a5,-1808(a4) # 8000fbf0 <_ZN15MemoryAllocator13headAllocatedE>
    80004308:	fc5ff06f          	j	800042cc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    8000430c:	00100513          	li	a0,1
    80004310:	fd5ff06f          	j	800042e4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004314 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004314:	ff010113          	addi	sp,sp,-16
    80004318:	00113423          	sd	ra,8(sp)
    8000431c:	00813023          	sd	s0,0(sp)
    80004320:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004324:	00000097          	auipc	ra,0x0
    80004328:	f54080e7          	jalr	-172(ra) # 80004278 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000432c:	00813083          	ld	ra,8(sp)
    80004330:	00013403          	ld	s0,0(sp)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret

000000008000433c <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    8000433c:	ff010113          	addi	sp,sp,-16
    80004340:	00113423          	sd	ra,8(sp)
    80004344:	00813023          	sd	s0,0(sp)
    80004348:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	e20080e7          	jalr	-480(ra) # 8000416c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004354:	00813083          	ld	ra,8(sp)
    80004358:	00013403          	ld	s0,0(sp)
    8000435c:	01010113          	addi	sp,sp,16
    80004360:	00008067          	ret

0000000080004364 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004364:	ff010113          	addi	sp,sp,-16
    80004368:	00113423          	sd	ra,8(sp)
    8000436c:	00813023          	sd	s0,0(sp)
    80004370:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004374:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004378:	00651513          	slli	a0,a0,0x6
    8000437c:	00000097          	auipc	ra,0x0
    80004380:	fc0080e7          	jalr	-64(ra) # 8000433c <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004384:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	bb0080e7          	jalr	-1104(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004390:	00813083          	ld	ra,8(sp)
    80004394:	00013403          	ld	s0,0(sp)
    80004398:	01010113          	addi	sp,sp,16
    8000439c:	00008067          	ret

00000000800043a0 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800043a0:	ff010113          	addi	sp,sp,-16
    800043a4:	00113423          	sd	ra,8(sp)
    800043a8:	00813023          	sd	s0,0(sp)
    800043ac:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800043b0:	00000097          	auipc	ra,0x0
    800043b4:	f64080e7          	jalr	-156(ra) # 80004314 <_ZN15MemoryAllocator8mem_freeEPv>
    800043b8:	00813083          	ld	ra,8(sp)
    800043bc:	00013403          	ld	s0,0(sp)
    800043c0:	01010113          	addi	sp,sp,16
    800043c4:	00008067          	ret

00000000800043c8 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800043c8:	ff010113          	addi	sp,sp,-16
    800043cc:	00113423          	sd	ra,8(sp)
    800043d0:	00813023          	sd	s0,0(sp)
    800043d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800043d8:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800043dc:	00000097          	auipc	ra,0x0
    800043e0:	fc4080e7          	jalr	-60(ra) # 800043a0 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800043e4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800043e8:	00000097          	auipc	ra,0x0
    800043ec:	b50080e7          	jalr	-1200(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    800043f0:	00813083          	ld	ra,8(sp)
    800043f4:	00013403          	ld	s0,0(sp)
    800043f8:	01010113          	addi	sp,sp,16
    800043fc:	00008067          	ret

0000000080004400 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004400:	ff010113          	addi	sp,sp,-16
    80004404:	00813423          	sd	s0,8(sp)
    80004408:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    8000440c:	00b52a23          	sw	a1,20(a0)
    80004410:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004414:	00053423          	sd	zero,8(a0)
    80004418:	00053023          	sd	zero,0(a0)
}
    8000441c:	00813403          	ld	s0,8(sp)
    80004420:	01010113          	addi	sp,sp,16
    80004424:	00008067          	ret

0000000080004428 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004428:	ff010113          	addi	sp,sp,-16
    8000442c:	00813423          	sd	s0,8(sp)
    80004430:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004434:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004438:	00053783          	ld	a5,0(a0)
    8000443c:	00078e63          	beqz	a5,80004458 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004440:	00853783          	ld	a5,8(a0)
    80004444:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004448:	00b53423          	sd	a1,8(a0)
    }
}
    8000444c:	00813403          	ld	s0,8(sp)
    80004450:	01010113          	addi	sp,sp,16
    80004454:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004458:	00b53423          	sd	a1,8(a0)
    8000445c:	00b53023          	sd	a1,0(a0)
    80004460:	fedff06f          	j	8000444c <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004464 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004464:	ff010113          	addi	sp,sp,-16
    80004468:	00113423          	sd	ra,8(sp)
    8000446c:	00813023          	sd	s0,0(sp)
    80004470:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004474:	00007797          	auipc	a5,0x7
    80004478:	6647b783          	ld	a5,1636(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000447c:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004480:	00200793          	li	a5,2
    80004484:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004488:	00000097          	auipc	ra,0x0
    8000448c:	fa0080e7          	jalr	-96(ra) # 80004428 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	440080e7          	jalr	1088(ra) # 800028d0 <_ZN3PCB8dispatchEv>
}
    80004498:	00813083          	ld	ra,8(sp)
    8000449c:	00013403          	ld	s0,0(sp)
    800044a0:	01010113          	addi	sp,sp,16
    800044a4:	00008067          	ret

00000000800044a8 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800044a8:	01052783          	lw	a5,16(a0)
    800044ac:	fff7879b          	addiw	a5,a5,-1
    800044b0:	00f52823          	sw	a5,16(a0)
    800044b4:	02079713          	slli	a4,a5,0x20
    800044b8:	00074663          	bltz	a4,800044c4 <_ZN10KSemaphore4waitEv+0x1c>
}
    800044bc:	00000513          	li	a0,0
    800044c0:	00008067          	ret
uint64 KSemaphore::wait() {
    800044c4:	ff010113          	addi	sp,sp,-16
    800044c8:	00113423          	sd	ra,8(sp)
    800044cc:	00813023          	sd	s0,0(sp)
    800044d0:	01010413          	addi	s0,sp,16
        block();
    800044d4:	00000097          	auipc	ra,0x0
    800044d8:	f90080e7          	jalr	-112(ra) # 80004464 <_ZN10KSemaphore5blockEv>
}
    800044dc:	00000513          	li	a0,0
    800044e0:	00813083          	ld	ra,8(sp)
    800044e4:	00013403          	ld	s0,0(sp)
    800044e8:	01010113          	addi	sp,sp,16
    800044ec:	00008067          	ret

00000000800044f0 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800044f0:	ff010113          	addi	sp,sp,-16
    800044f4:	00813423          	sd	s0,8(sp)
    800044f8:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800044fc:	00053503          	ld	a0,0(a0)
    80004500:	00813403          	ld	s0,8(sp)
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00008067          	ret

000000008000450c <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    8000450c:	ff010113          	addi	sp,sp,-16
    80004510:	00813423          	sd	s0,8(sp)
    80004514:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004518:	00053783          	ld	a5,0(a0)
    8000451c:	00078c63          	beqz	a5,80004534 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004520:	0087b703          	ld	a4,8(a5)
    80004524:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004528:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    8000452c:	00053783          	ld	a5,0(a0)
    80004530:	00078863          	beqz	a5,80004540 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004534:	00813403          	ld	s0,8(sp)
    80004538:	01010113          	addi	sp,sp,16
    8000453c:	00008067          	ret
        tailBlocked =0;
    80004540:	00053423          	sd	zero,8(a0)
    80004544:	ff1ff06f          	j	80004534 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004548 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004548:	fe010113          	addi	sp,sp,-32
    8000454c:	00113c23          	sd	ra,24(sp)
    80004550:	00813823          	sd	s0,16(sp)
    80004554:	00913423          	sd	s1,8(sp)
    80004558:	01213023          	sd	s2,0(sp)
    8000455c:	02010413          	addi	s0,sp,32
    80004560:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004564:	00090513          	mv	a0,s2
    80004568:	00000097          	auipc	ra,0x0
    8000456c:	f88080e7          	jalr	-120(ra) # 800044f0 <_ZN10KSemaphore15getFirstBlockedEv>
    80004570:	00050493          	mv	s1,a0
    80004574:	02050063          	beqz	a0,80004594 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80004578:	00090513          	mv	a0,s2
    8000457c:	00000097          	auipc	ra,0x0
    80004580:	f90080e7          	jalr	-112(ra) # 8000450c <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004584:	00048513          	mv	a0,s1
    80004588:	fffff097          	auipc	ra,0xfffff
    8000458c:	f60080e7          	jalr	-160(ra) # 800034e8 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004590:	fd5ff06f          	j	80004564 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004594:	01813083          	ld	ra,24(sp)
    80004598:	01013403          	ld	s0,16(sp)
    8000459c:	00813483          	ld	s1,8(sp)
    800045a0:	00013903          	ld	s2,0(sp)
    800045a4:	02010113          	addi	sp,sp,32
    800045a8:	00008067          	ret

00000000800045ac <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800045ac:	fe010113          	addi	sp,sp,-32
    800045b0:	00113c23          	sd	ra,24(sp)
    800045b4:	00813823          	sd	s0,16(sp)
    800045b8:	00913423          	sd	s1,8(sp)
    800045bc:	01213023          	sd	s2,0(sp)
    800045c0:	02010413          	addi	s0,sp,32
    800045c4:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800045c8:	00000097          	auipc	ra,0x0
    800045cc:	f28080e7          	jalr	-216(ra) # 800044f0 <_ZN10KSemaphore15getFirstBlockedEv>
    800045d0:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800045d4:	00090513          	mv	a0,s2
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	f34080e7          	jalr	-204(ra) # 8000450c <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800045e0:	00048863          	beqz	s1,800045f0 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    800045e4:	00048513          	mv	a0,s1
    800045e8:	fffff097          	auipc	ra,0xfffff
    800045ec:	f00080e7          	jalr	-256(ra) # 800034e8 <_ZN9Scheduler3putEP3PCB>
    }
}
    800045f0:	01813083          	ld	ra,24(sp)
    800045f4:	01013403          	ld	s0,16(sp)
    800045f8:	00813483          	ld	s1,8(sp)
    800045fc:	00013903          	ld	s2,0(sp)
    80004600:	02010113          	addi	sp,sp,32
    80004604:	00008067          	ret

0000000080004608 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004608:	01052783          	lw	a5,16(a0)
    8000460c:	0017879b          	addiw	a5,a5,1
    80004610:	0007871b          	sext.w	a4,a5
    80004614:	00f52823          	sw	a5,16(a0)
    80004618:	00e05663          	blez	a4,80004624 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000461c:	00000513          	li	a0,0
    80004620:	00008067          	ret
uint64 KSemaphore::signal() {
    80004624:	ff010113          	addi	sp,sp,-16
    80004628:	00113423          	sd	ra,8(sp)
    8000462c:	00813023          	sd	s0,0(sp)
    80004630:	01010413          	addi	s0,sp,16
        unblock();
    80004634:	00000097          	auipc	ra,0x0
    80004638:	f78080e7          	jalr	-136(ra) # 800045ac <_ZN10KSemaphore7unblockEv>
}
    8000463c:	00000513          	li	a0,0
    80004640:	00813083          	ld	ra,8(sp)
    80004644:	00013403          	ld	s0,0(sp)
    80004648:	01010113          	addi	sp,sp,16
    8000464c:	00008067          	ret

0000000080004650 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00113423          	sd	ra,8(sp)
    80004658:	00813023          	sd	s0,0(sp)
    8000465c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004660:	00000097          	auipc	ra,0x0
    80004664:	cdc080e7          	jalr	-804(ra) # 8000433c <_Z7kmallocm>
}
    80004668:	00813083          	ld	ra,8(sp)
    8000466c:	00013403          	ld	s0,0(sp)
    80004670:	01010113          	addi	sp,sp,16
    80004674:	00008067          	ret

0000000080004678 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004678:	fd010113          	addi	sp,sp,-48
    8000467c:	02113423          	sd	ra,40(sp)
    80004680:	02813023          	sd	s0,32(sp)
    80004684:	00913c23          	sd	s1,24(sp)
    80004688:	01213823          	sd	s2,16(sp)
    8000468c:	01313423          	sd	s3,8(sp)
    80004690:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004694:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004698:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    8000469c:	01800513          	li	a0,24
    800046a0:	00000097          	auipc	ra,0x0
    800046a4:	fb0080e7          	jalr	-80(ra) # 80004650 <_ZN10KSemaphorenwEm>
    800046a8:	00050493          	mv	s1,a0
    800046ac:	0009859b          	sext.w	a1,s3
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	d50080e7          	jalr	-688(ra) # 80004400 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800046b8:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800046bc:	02048263          	beqz	s1,800046e0 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800046c0:	00000513          	li	a0,0
}
    800046c4:	02813083          	ld	ra,40(sp)
    800046c8:	02013403          	ld	s0,32(sp)
    800046cc:	01813483          	ld	s1,24(sp)
    800046d0:	01013903          	ld	s2,16(sp)
    800046d4:	00813983          	ld	s3,8(sp)
    800046d8:	03010113          	addi	sp,sp,48
    800046dc:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800046e0:	fff00513          	li	a0,-1
    800046e4:	fe1ff06f          	j	800046c4 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

00000000800046e8 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800046e8:	ff010113          	addi	sp,sp,-16
    800046ec:	00113423          	sd	ra,8(sp)
    800046f0:	00813023          	sd	s0,0(sp)
    800046f4:	01010413          	addi	s0,sp,16
    kfree(p);
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	ca8080e7          	jalr	-856(ra) # 800043a0 <_Z5kfreePv>
}
    80004700:	00813083          	ld	ra,8(sp)
    80004704:	00013403          	ld	s0,0(sp)
    80004708:	01010113          	addi	sp,sp,16
    8000470c:	00008067          	ret

0000000080004710 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004710:	fe010113          	addi	sp,sp,-32
    80004714:	00113c23          	sd	ra,24(sp)
    80004718:	00813823          	sd	s0,16(sp)
    8000471c:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004720:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    80004724:	00000097          	auipc	ra,0x0
    80004728:	d84080e7          	jalr	-636(ra) # 800044a8 <_ZN10KSemaphore4waitEv>
    8000472c:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004730:	fe843783          	ld	a5,-24(s0)
    80004734:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004738:	00000097          	auipc	ra,0x0
    8000473c:	800080e7          	jalr	-2048(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004740:	01813083          	ld	ra,24(sp)
    80004744:	01013403          	ld	s0,16(sp)
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret

0000000080004750 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004750:	fe010113          	addi	sp,sp,-32
    80004754:	00113c23          	sd	ra,24(sp)
    80004758:	00813823          	sd	s0,16(sp)
    8000475c:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004760:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004764:	00000097          	auipc	ra,0x0
    80004768:	ea4080e7          	jalr	-348(ra) # 80004608 <_ZN10KSemaphore6signalEv>
    8000476c:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004770:	fe843783          	ld	a5,-24(s0)
    80004774:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004778:	fffff097          	auipc	ra,0xfffff
    8000477c:	7c0080e7          	jalr	1984(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004780:	01813083          	ld	ra,24(sp)
    80004784:	01013403          	ld	s0,16(sp)
    80004788:	02010113          	addi	sp,sp,32
    8000478c:	00008067          	ret

0000000080004790 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004790:	fe010113          	addi	sp,sp,-32
    80004794:	00113c23          	sd	ra,24(sp)
    80004798:	00813823          	sd	s0,16(sp)
    8000479c:	00913423          	sd	s1,8(sp)
    800047a0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047a4:	00058493          	mv	s1,a1
    delete kSem;
    800047a8:	00048e63          	beqz	s1,800047c4 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800047ac:	00048513          	mv	a0,s1
    800047b0:	00000097          	auipc	ra,0x0
    800047b4:	d98080e7          	jalr	-616(ra) # 80004548 <_ZN10KSemaphoreD1Ev>
    800047b8:	00048513          	mv	a0,s1
    800047bc:	00000097          	auipc	ra,0x0
    800047c0:	f2c080e7          	jalr	-212(ra) # 800046e8 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800047c4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800047c8:	fffff097          	auipc	ra,0xfffff
    800047cc:	770080e7          	jalr	1904(ra) # 80003f38 <_ZN5Riscv13w_a0_sscratchEv>
}
    800047d0:	01813083          	ld	ra,24(sp)
    800047d4:	01013403          	ld	s0,16(sp)
    800047d8:	00813483          	ld	s1,8(sp)
    800047dc:	02010113          	addi	sp,sp,32
    800047e0:	00008067          	ret

00000000800047e4 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800047e4:	fe010113          	addi	sp,sp,-32
    800047e8:	00113c23          	sd	ra,24(sp)
    800047ec:	00813823          	sd	s0,16(sp)
    800047f0:	00913423          	sd	s1,8(sp)
    800047f4:	01213023          	sd	s2,0(sp)
    800047f8:	02010413          	addi	s0,sp,32
    800047fc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004800:	00000913          	li	s2,0
    80004804:	00c0006f          	j	80004810 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004808:	ffffd097          	auipc	ra,0xffffd
    8000480c:	b2c080e7          	jalr	-1236(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	d00080e7          	jalr	-768(ra) # 80001510 <getc>
    80004818:	0005059b          	sext.w	a1,a0
    8000481c:	07100793          	li	a5,113
    80004820:	02f58a63          	beq	a1,a5,80004854 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004824:	0084b503          	ld	a0,8(s1)
    80004828:	00002097          	auipc	ra,0x2
    8000482c:	df4080e7          	jalr	-524(ra) # 8000661c <_ZN6Buffer3putEi>
        i++;
    80004830:	0019071b          	addiw	a4,s2,1
    80004834:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004838:	0004a683          	lw	a3,0(s1)
    8000483c:	0026979b          	slliw	a5,a3,0x2
    80004840:	00d787bb          	addw	a5,a5,a3
    80004844:	0017979b          	slliw	a5,a5,0x1
    80004848:	02f767bb          	remw	a5,a4,a5
    8000484c:	fc0792e3          	bnez	a5,80004810 <_Z16producerKeyboardPv+0x2c>
    80004850:	fb9ff06f          	j	80004808 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80004854:	00100793          	li	a5,1
    80004858:	0000b717          	auipc	a4,0xb
    8000485c:	3af72423          	sw	a5,936(a4) # 8000fc00 <threadEnd>

    delete data->buffer;
    80004860:	0084b903          	ld	s2,8(s1)
    80004864:	00090e63          	beqz	s2,80004880 <_Z16producerKeyboardPv+0x9c>
    80004868:	00090513          	mv	a0,s2
    8000486c:	00002097          	auipc	ra,0x2
    80004870:	cf4080e7          	jalr	-780(ra) # 80006560 <_ZN6BufferD1Ev>
    80004874:	00090513          	mv	a0,s2
    80004878:	fffff097          	auipc	ra,0xfffff
    8000487c:	e6c080e7          	jalr	-404(ra) # 800036e4 <_ZdlPv>

    sem_signal(data->wait);
    80004880:	0104b503          	ld	a0,16(s1)
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	b88080e7          	jalr	-1144(ra) # 8000140c <sem_signal>
}
    8000488c:	01813083          	ld	ra,24(sp)
    80004890:	01013403          	ld	s0,16(sp)
    80004894:	00813483          	ld	s1,8(sp)
    80004898:	00013903          	ld	s2,0(sp)
    8000489c:	02010113          	addi	sp,sp,32
    800048a0:	00008067          	ret

00000000800048a4 <_Z8producerPv>:

void producer(void *arg) {
    800048a4:	fe010113          	addi	sp,sp,-32
    800048a8:	00113c23          	sd	ra,24(sp)
    800048ac:	00813823          	sd	s0,16(sp)
    800048b0:	00913423          	sd	s1,8(sp)
    800048b4:	01213023          	sd	s2,0(sp)
    800048b8:	02010413          	addi	s0,sp,32
    800048bc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800048c0:	00000913          	li	s2,0
    800048c4:	00c0006f          	j	800048d0 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800048c8:	ffffd097          	auipc	ra,0xffffd
    800048cc:	a6c080e7          	jalr	-1428(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    800048d0:	0000b797          	auipc	a5,0xb
    800048d4:	3307a783          	lw	a5,816(a5) # 8000fc00 <threadEnd>
    800048d8:	02079e63          	bnez	a5,80004914 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800048dc:	0004a583          	lw	a1,0(s1)
    800048e0:	0305859b          	addiw	a1,a1,48
    800048e4:	0084b503          	ld	a0,8(s1)
    800048e8:	00002097          	auipc	ra,0x2
    800048ec:	d34080e7          	jalr	-716(ra) # 8000661c <_ZN6Buffer3putEi>
        i++;
    800048f0:	0019071b          	addiw	a4,s2,1
    800048f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048f8:	0004a683          	lw	a3,0(s1)
    800048fc:	0026979b          	slliw	a5,a3,0x2
    80004900:	00d787bb          	addw	a5,a5,a3
    80004904:	0017979b          	slliw	a5,a5,0x1
    80004908:	02f767bb          	remw	a5,a4,a5
    8000490c:	fc0792e3          	bnez	a5,800048d0 <_Z8producerPv+0x2c>
    80004910:	fb9ff06f          	j	800048c8 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004914:	0104b503          	ld	a0,16(s1)
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	af4080e7          	jalr	-1292(ra) # 8000140c <sem_signal>
}
    80004920:	01813083          	ld	ra,24(sp)
    80004924:	01013403          	ld	s0,16(sp)
    80004928:	00813483          	ld	s1,8(sp)
    8000492c:	00013903          	ld	s2,0(sp)
    80004930:	02010113          	addi	sp,sp,32
    80004934:	00008067          	ret

0000000080004938 <_Z8consumerPv>:

void consumer(void *arg) {
    80004938:	fd010113          	addi	sp,sp,-48
    8000493c:	02113423          	sd	ra,40(sp)
    80004940:	02813023          	sd	s0,32(sp)
    80004944:	00913c23          	sd	s1,24(sp)
    80004948:	01213823          	sd	s2,16(sp)
    8000494c:	01313423          	sd	s3,8(sp)
    80004950:	03010413          	addi	s0,sp,48
    80004954:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80004958:	00000993          	li	s3,0
    8000495c:	01c0006f          	j	80004978 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	9d4080e7          	jalr	-1580(ra) # 80001334 <thread_dispatch>
    80004968:	0500006f          	j	800049b8 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000496c:	00a00513          	li	a0,10
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	bc8080e7          	jalr	-1080(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004978:	0000b797          	auipc	a5,0xb
    8000497c:	2887a783          	lw	a5,648(a5) # 8000fc00 <threadEnd>
    80004980:	04079463          	bnez	a5,800049c8 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004984:	00893503          	ld	a0,8(s2)
    80004988:	00002097          	auipc	ra,0x2
    8000498c:	d24080e7          	jalr	-732(ra) # 800066ac <_ZN6Buffer3getEv>
        i++;
    80004990:	0019849b          	addiw	s1,s3,1
    80004994:	0004899b          	sext.w	s3,s1
        putc(key);
    80004998:	0ff57513          	andi	a0,a0,255
    8000499c:	ffffd097          	auipc	ra,0xffffd
    800049a0:	b9c080e7          	jalr	-1124(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    800049a4:	00092703          	lw	a4,0(s2)
    800049a8:	0027179b          	slliw	a5,a4,0x2
    800049ac:	00e787bb          	addw	a5,a5,a4
    800049b0:	02f4e7bb          	remw	a5,s1,a5
    800049b4:	fa0786e3          	beqz	a5,80004960 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    800049b8:	05000793          	li	a5,80
    800049bc:	02f4e4bb          	remw	s1,s1,a5
    800049c0:	fa049ce3          	bnez	s1,80004978 <_Z8consumerPv+0x40>
    800049c4:	fa9ff06f          	j	8000496c <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    800049c8:	01093503          	ld	a0,16(s2)
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	a40080e7          	jalr	-1472(ra) # 8000140c <sem_signal>
}
    800049d4:	02813083          	ld	ra,40(sp)
    800049d8:	02013403          	ld	s0,32(sp)
    800049dc:	01813483          	ld	s1,24(sp)
    800049e0:	01013903          	ld	s2,16(sp)
    800049e4:	00813983          	ld	s3,8(sp)
    800049e8:	03010113          	addi	sp,sp,48
    800049ec:	00008067          	ret

00000000800049f0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800049f0:	f9010113          	addi	sp,sp,-112
    800049f4:	06113423          	sd	ra,104(sp)
    800049f8:	06813023          	sd	s0,96(sp)
    800049fc:	04913c23          	sd	s1,88(sp)
    80004a00:	05213823          	sd	s2,80(sp)
    80004a04:	05313423          	sd	s3,72(sp)
    80004a08:	05413023          	sd	s4,64(sp)
    80004a0c:	03513c23          	sd	s5,56(sp)
    80004a10:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004a14:	00005517          	auipc	a0,0x5
    80004a18:	94c50513          	addi	a0,a0,-1716 # 80009360 <CONSOLE_STATUS+0x350>
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	204080e7          	jalr	516(ra) # 80005c20 <_Z11printStringPKc>
    getString(input, 30);
    80004a24:	01e00593          	li	a1,30
    80004a28:	fa040493          	addi	s1,s0,-96
    80004a2c:	00048513          	mv	a0,s1
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	26c080e7          	jalr	620(ra) # 80005c9c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004a38:	00048513          	mv	a0,s1
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	32c080e7          	jalr	812(ra) # 80005d68 <_Z11stringToIntPKc>
    80004a44:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004a48:	00005517          	auipc	a0,0x5
    80004a4c:	93850513          	addi	a0,a0,-1736 # 80009380 <CONSOLE_STATUS+0x370>
    80004a50:	00001097          	auipc	ra,0x1
    80004a54:	1d0080e7          	jalr	464(ra) # 80005c20 <_Z11printStringPKc>
    getString(input, 30);
    80004a58:	01e00593          	li	a1,30
    80004a5c:	00048513          	mv	a0,s1
    80004a60:	00001097          	auipc	ra,0x1
    80004a64:	23c080e7          	jalr	572(ra) # 80005c9c <_Z9getStringPci>
    n = stringToInt(input);
    80004a68:	00048513          	mv	a0,s1
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	2fc080e7          	jalr	764(ra) # 80005d68 <_Z11stringToIntPKc>
    80004a74:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004a78:	00005517          	auipc	a0,0x5
    80004a7c:	92850513          	addi	a0,a0,-1752 # 800093a0 <CONSOLE_STATUS+0x390>
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	1a0080e7          	jalr	416(ra) # 80005c20 <_Z11printStringPKc>
    80004a88:	00000613          	li	a2,0
    80004a8c:	00a00593          	li	a1,10
    80004a90:	00090513          	mv	a0,s2
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	324080e7          	jalr	804(ra) # 80005db8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004a9c:	00005517          	auipc	a0,0x5
    80004aa0:	91c50513          	addi	a0,a0,-1764 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004aa4:	00001097          	auipc	ra,0x1
    80004aa8:	17c080e7          	jalr	380(ra) # 80005c20 <_Z11printStringPKc>
    80004aac:	00000613          	li	a2,0
    80004ab0:	00a00593          	li	a1,10
    80004ab4:	00048513          	mv	a0,s1
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	300080e7          	jalr	768(ra) # 80005db8 <_Z8printIntiii>
    printString(".\n");
    80004ac0:	00005517          	auipc	a0,0x5
    80004ac4:	91050513          	addi	a0,a0,-1776 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80004ac8:	00001097          	auipc	ra,0x1
    80004acc:	158080e7          	jalr	344(ra) # 80005c20 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004ad0:	03800513          	li	a0,56
    80004ad4:	fffff097          	auipc	ra,0xfffff
    80004ad8:	be8080e7          	jalr	-1048(ra) # 800036bc <_Znwm>
    80004adc:	00050a13          	mv	s4,a0
    80004ae0:	00048593          	mv	a1,s1
    80004ae4:	00002097          	auipc	ra,0x2
    80004ae8:	9f4080e7          	jalr	-1548(ra) # 800064d8 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004aec:	00000593          	li	a1,0
    80004af0:	0000b517          	auipc	a0,0xb
    80004af4:	11850513          	addi	a0,a0,280 # 8000fc08 <waitForAll>
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	884080e7          	jalr	-1916(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004b00:	00391793          	slli	a5,s2,0x3
    80004b04:	00f78793          	addi	a5,a5,15
    80004b08:	ff07f793          	andi	a5,a5,-16
    80004b0c:	40f10133          	sub	sp,sp,a5
    80004b10:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004b14:	0019071b          	addiw	a4,s2,1
    80004b18:	00171793          	slli	a5,a4,0x1
    80004b1c:	00e787b3          	add	a5,a5,a4
    80004b20:	00379793          	slli	a5,a5,0x3
    80004b24:	00f78793          	addi	a5,a5,15
    80004b28:	ff07f793          	andi	a5,a5,-16
    80004b2c:	40f10133          	sub	sp,sp,a5
    80004b30:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004b34:	00191613          	slli	a2,s2,0x1
    80004b38:	012607b3          	add	a5,a2,s2
    80004b3c:	00379793          	slli	a5,a5,0x3
    80004b40:	00f987b3          	add	a5,s3,a5
    80004b44:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004b48:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004b4c:	0000b717          	auipc	a4,0xb
    80004b50:	0bc73703          	ld	a4,188(a4) # 8000fc08 <waitForAll>
    80004b54:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004b58:	00078613          	mv	a2,a5
    80004b5c:	00000597          	auipc	a1,0x0
    80004b60:	ddc58593          	addi	a1,a1,-548 # 80004938 <_Z8consumerPv>
    80004b64:	f9840513          	addi	a0,s0,-104
    80004b68:	ffffc097          	auipc	ra,0xffffc
    80004b6c:	74c080e7          	jalr	1868(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004b70:	00000493          	li	s1,0
    80004b74:	0280006f          	j	80004b9c <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004b78:	00000597          	auipc	a1,0x0
    80004b7c:	c6c58593          	addi	a1,a1,-916 # 800047e4 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004b80:	00179613          	slli	a2,a5,0x1
    80004b84:	00f60633          	add	a2,a2,a5
    80004b88:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004b8c:	00c98633          	add	a2,s3,a2
    80004b90:	ffffc097          	auipc	ra,0xffffc
    80004b94:	724080e7          	jalr	1828(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004b98:	0014849b          	addiw	s1,s1,1
    80004b9c:	0524d263          	bge	s1,s2,80004be0 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004ba0:	00149793          	slli	a5,s1,0x1
    80004ba4:	009787b3          	add	a5,a5,s1
    80004ba8:	00379793          	slli	a5,a5,0x3
    80004bac:	00f987b3          	add	a5,s3,a5
    80004bb0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004bb4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004bb8:	0000b717          	auipc	a4,0xb
    80004bbc:	05073703          	ld	a4,80(a4) # 8000fc08 <waitForAll>
    80004bc0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004bc4:	00048793          	mv	a5,s1
    80004bc8:	00349513          	slli	a0,s1,0x3
    80004bcc:	00aa8533          	add	a0,s5,a0
    80004bd0:	fa9054e3          	blez	s1,80004b78 <_Z22producerConsumer_C_APIv+0x188>
    80004bd4:	00000597          	auipc	a1,0x0
    80004bd8:	cd058593          	addi	a1,a1,-816 # 800048a4 <_Z8producerPv>
    80004bdc:	fa5ff06f          	j	80004b80 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004be0:	ffffc097          	auipc	ra,0xffffc
    80004be4:	754080e7          	jalr	1876(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004be8:	00000493          	li	s1,0
    80004bec:	00994e63          	blt	s2,s1,80004c08 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004bf0:	0000b517          	auipc	a0,0xb
    80004bf4:	01853503          	ld	a0,24(a0) # 8000fc08 <waitForAll>
    80004bf8:	ffffc097          	auipc	ra,0xffffc
    80004bfc:	7e8080e7          	jalr	2024(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004c00:	0014849b          	addiw	s1,s1,1
    80004c04:	fe9ff06f          	j	80004bec <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004c08:	0000b517          	auipc	a0,0xb
    80004c0c:	00053503          	ld	a0,0(a0) # 8000fc08 <waitForAll>
    80004c10:	ffffc097          	auipc	ra,0xffffc
    80004c14:	7a4080e7          	jalr	1956(ra) # 800013b4 <sem_close>
    80004c18:	f9040113          	addi	sp,s0,-112
    80004c1c:	06813083          	ld	ra,104(sp)
    80004c20:	06013403          	ld	s0,96(sp)
    80004c24:	05813483          	ld	s1,88(sp)
    80004c28:	05013903          	ld	s2,80(sp)
    80004c2c:	04813983          	ld	s3,72(sp)
    80004c30:	04013a03          	ld	s4,64(sp)
    80004c34:	03813a83          	ld	s5,56(sp)
    80004c38:	07010113          	addi	sp,sp,112
    80004c3c:	00008067          	ret
    80004c40:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004c44:	000a0513          	mv	a0,s4
    80004c48:	fffff097          	auipc	ra,0xfffff
    80004c4c:	a9c080e7          	jalr	-1380(ra) # 800036e4 <_ZdlPv>
    80004c50:	00048513          	mv	a0,s1
    80004c54:	0000c097          	auipc	ra,0xc
    80004c58:	0a4080e7          	jalr	164(ra) # 80010cf8 <_Unwind_Resume>

0000000080004c5c <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004c5c:	fe010113          	addi	sp,sp,-32
    80004c60:	00113c23          	sd	ra,24(sp)
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	01213023          	sd	s2,0(sp)
    80004c70:	02010413          	addi	s0,sp,32
    80004c74:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c78:	00100793          	li	a5,1
    80004c7c:	02a7f863          	bgeu	a5,a0,80004cac <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c80:	00a00793          	li	a5,10
    80004c84:	02f577b3          	remu	a5,a0,a5
    80004c88:	02078e63          	beqz	a5,80004cc4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c8c:	fff48513          	addi	a0,s1,-1
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	fcc080e7          	jalr	-52(ra) # 80004c5c <_ZL9fibonaccim>
    80004c98:	00050913          	mv	s2,a0
    80004c9c:	ffe48513          	addi	a0,s1,-2
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	fbc080e7          	jalr	-68(ra) # 80004c5c <_ZL9fibonaccim>
    80004ca8:	00a90533          	add	a0,s2,a0
}
    80004cac:	01813083          	ld	ra,24(sp)
    80004cb0:	01013403          	ld	s0,16(sp)
    80004cb4:	00813483          	ld	s1,8(sp)
    80004cb8:	00013903          	ld	s2,0(sp)
    80004cbc:	02010113          	addi	sp,sp,32
    80004cc0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004cc4:	ffffc097          	auipc	ra,0xffffc
    80004cc8:	670080e7          	jalr	1648(ra) # 80001334 <thread_dispatch>
    80004ccc:	fc1ff06f          	j	80004c8c <_ZL9fibonaccim+0x30>

0000000080004cd0 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004cd0:	fe010113          	addi	sp,sp,-32
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	00813823          	sd	s0,16(sp)
    80004cdc:	00913423          	sd	s1,8(sp)
    80004ce0:	01213023          	sd	s2,0(sp)
    80004ce4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ce8:	00000913          	li	s2,0
    80004cec:	0380006f          	j	80004d24 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004cf0:	ffffc097          	auipc	ra,0xffffc
    80004cf4:	644080e7          	jalr	1604(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004cf8:	00148493          	addi	s1,s1,1
    80004cfc:	000027b7          	lui	a5,0x2
    80004d00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d04:	0097ee63          	bltu	a5,s1,80004d20 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d08:	00000713          	li	a4,0
    80004d0c:	000077b7          	lui	a5,0x7
    80004d10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d14:	fce7eee3          	bltu	a5,a4,80004cf0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004d18:	00170713          	addi	a4,a4,1
    80004d1c:	ff1ff06f          	j	80004d0c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d20:	00190913          	addi	s2,s2,1
    80004d24:	00900793          	li	a5,9
    80004d28:	0527e063          	bltu	a5,s2,80004d68 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d2c:	00004517          	auipc	a0,0x4
    80004d30:	6ac50513          	addi	a0,a0,1708 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	eec080e7          	jalr	-276(ra) # 80005c20 <_Z11printStringPKc>
    80004d3c:	00000613          	li	a2,0
    80004d40:	00a00593          	li	a1,10
    80004d44:	0009051b          	sext.w	a0,s2
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	070080e7          	jalr	112(ra) # 80005db8 <_Z8printIntiii>
    80004d50:	00004517          	auipc	a0,0x4
    80004d54:	3b050513          	addi	a0,a0,944 # 80009100 <CONSOLE_STATUS+0xf0>
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	ec8080e7          	jalr	-312(ra) # 80005c20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d60:	00000493          	li	s1,0
    80004d64:	f99ff06f          	j	80004cfc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	67850513          	addi	a0,a0,1656 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	eb0080e7          	jalr	-336(ra) # 80005c20 <_Z11printStringPKc>
    finishedA = true;
    80004d78:	00100793          	li	a5,1
    80004d7c:	0000b717          	auipc	a4,0xb
    80004d80:	e8f70a23          	sb	a5,-364(a4) # 8000fc10 <_ZL9finishedA>
}
    80004d84:	01813083          	ld	ra,24(sp)
    80004d88:	01013403          	ld	s0,16(sp)
    80004d8c:	00813483          	ld	s1,8(sp)
    80004d90:	00013903          	ld	s2,0(sp)
    80004d94:	02010113          	addi	sp,sp,32
    80004d98:	00008067          	ret

0000000080004d9c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004d9c:	fe010113          	addi	sp,sp,-32
    80004da0:	00113c23          	sd	ra,24(sp)
    80004da4:	00813823          	sd	s0,16(sp)
    80004da8:	00913423          	sd	s1,8(sp)
    80004dac:	01213023          	sd	s2,0(sp)
    80004db0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004db4:	00000913          	li	s2,0
    80004db8:	0380006f          	j	80004df0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004dbc:	ffffc097          	auipc	ra,0xffffc
    80004dc0:	578080e7          	jalr	1400(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004dc4:	00148493          	addi	s1,s1,1
    80004dc8:	000027b7          	lui	a5,0x2
    80004dcc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004dd0:	0097ee63          	bltu	a5,s1,80004dec <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004dd4:	00000713          	li	a4,0
    80004dd8:	000077b7          	lui	a5,0x7
    80004ddc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004de0:	fce7eee3          	bltu	a5,a4,80004dbc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004de4:	00170713          	addi	a4,a4,1
    80004de8:	ff1ff06f          	j	80004dd8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004dec:	00190913          	addi	s2,s2,1
    80004df0:	00f00793          	li	a5,15
    80004df4:	0527e063          	bltu	a5,s2,80004e34 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004df8:	00004517          	auipc	a0,0x4
    80004dfc:	5f850513          	addi	a0,a0,1528 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80004e00:	00001097          	auipc	ra,0x1
    80004e04:	e20080e7          	jalr	-480(ra) # 80005c20 <_Z11printStringPKc>
    80004e08:	00000613          	li	a2,0
    80004e0c:	00a00593          	li	a1,10
    80004e10:	0009051b          	sext.w	a0,s2
    80004e14:	00001097          	auipc	ra,0x1
    80004e18:	fa4080e7          	jalr	-92(ra) # 80005db8 <_Z8printIntiii>
    80004e1c:	00004517          	auipc	a0,0x4
    80004e20:	2e450513          	addi	a0,a0,740 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	dfc080e7          	jalr	-516(ra) # 80005c20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e2c:	00000493          	li	s1,0
    80004e30:	f99ff06f          	j	80004dc8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	500080e7          	jalr	1280(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004e3c:	00004517          	auipc	a0,0x4
    80004e40:	5bc50513          	addi	a0,a0,1468 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	ddc080e7          	jalr	-548(ra) # 80005c20 <_Z11printStringPKc>
    finishedB = true;
    80004e4c:	00100793          	li	a5,1
    80004e50:	0000b717          	auipc	a4,0xb
    80004e54:	dcf700a3          	sb	a5,-575(a4) # 8000fc11 <_ZL9finishedB>
}
    80004e58:	01813083          	ld	ra,24(sp)
    80004e5c:	01013403          	ld	s0,16(sp)
    80004e60:	00813483          	ld	s1,8(sp)
    80004e64:	00013903          	ld	s2,0(sp)
    80004e68:	02010113          	addi	sp,sp,32
    80004e6c:	00008067          	ret

0000000080004e70 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004e70:	fe010113          	addi	sp,sp,-32
    80004e74:	00113c23          	sd	ra,24(sp)
    80004e78:	00813823          	sd	s0,16(sp)
    80004e7c:	00913423          	sd	s1,8(sp)
    80004e80:	01213023          	sd	s2,0(sp)
    80004e84:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004e88:	00000493          	li	s1,0
    80004e8c:	0400006f          	j	80004ecc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004e90:	00004517          	auipc	a0,0x4
    80004e94:	57850513          	addi	a0,a0,1400 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	d88080e7          	jalr	-632(ra) # 80005c20 <_Z11printStringPKc>
    80004ea0:	00000613          	li	a2,0
    80004ea4:	00a00593          	li	a1,10
    80004ea8:	00048513          	mv	a0,s1
    80004eac:	00001097          	auipc	ra,0x1
    80004eb0:	f0c080e7          	jalr	-244(ra) # 80005db8 <_Z8printIntiii>
    80004eb4:	00004517          	auipc	a0,0x4
    80004eb8:	24c50513          	addi	a0,a0,588 # 80009100 <CONSOLE_STATUS+0xf0>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	d64080e7          	jalr	-668(ra) # 80005c20 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ec4:	0014849b          	addiw	s1,s1,1
    80004ec8:	0ff4f493          	andi	s1,s1,255
    80004ecc:	00200793          	li	a5,2
    80004ed0:	fc97f0e3          	bgeu	a5,s1,80004e90 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004ed4:	00004517          	auipc	a0,0x4
    80004ed8:	53c50513          	addi	a0,a0,1340 # 80009410 <CONSOLE_STATUS+0x400>
    80004edc:	00001097          	auipc	ra,0x1
    80004ee0:	d44080e7          	jalr	-700(ra) # 80005c20 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004ee4:	00700313          	li	t1,7
    thread_dispatch();
    80004ee8:	ffffc097          	auipc	ra,0xffffc
    80004eec:	44c080e7          	jalr	1100(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004ef0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004ef4:	00004517          	auipc	a0,0x4
    80004ef8:	52c50513          	addi	a0,a0,1324 # 80009420 <CONSOLE_STATUS+0x410>
    80004efc:	00001097          	auipc	ra,0x1
    80004f00:	d24080e7          	jalr	-732(ra) # 80005c20 <_Z11printStringPKc>
    80004f04:	00000613          	li	a2,0
    80004f08:	00a00593          	li	a1,10
    80004f0c:	0009051b          	sext.w	a0,s2
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	ea8080e7          	jalr	-344(ra) # 80005db8 <_Z8printIntiii>
    80004f18:	00004517          	auipc	a0,0x4
    80004f1c:	1e850513          	addi	a0,a0,488 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	d00080e7          	jalr	-768(ra) # 80005c20 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004f28:	00c00513          	li	a0,12
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	d30080e7          	jalr	-720(ra) # 80004c5c <_ZL9fibonaccim>
    80004f34:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	4f050513          	addi	a0,a0,1264 # 80009428 <CONSOLE_STATUS+0x418>
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	ce0080e7          	jalr	-800(ra) # 80005c20 <_Z11printStringPKc>
    80004f48:	00000613          	li	a2,0
    80004f4c:	00a00593          	li	a1,10
    80004f50:	0009051b          	sext.w	a0,s2
    80004f54:	00001097          	auipc	ra,0x1
    80004f58:	e64080e7          	jalr	-412(ra) # 80005db8 <_Z8printIntiii>
    80004f5c:	00004517          	auipc	a0,0x4
    80004f60:	1a450513          	addi	a0,a0,420 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	cbc080e7          	jalr	-836(ra) # 80005c20 <_Z11printStringPKc>
    80004f6c:	0400006f          	j	80004fac <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004f70:	00004517          	auipc	a0,0x4
    80004f74:	49850513          	addi	a0,a0,1176 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	ca8080e7          	jalr	-856(ra) # 80005c20 <_Z11printStringPKc>
    80004f80:	00000613          	li	a2,0
    80004f84:	00a00593          	li	a1,10
    80004f88:	00048513          	mv	a0,s1
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	e2c080e7          	jalr	-468(ra) # 80005db8 <_Z8printIntiii>
    80004f94:	00004517          	auipc	a0,0x4
    80004f98:	16c50513          	addi	a0,a0,364 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	c84080e7          	jalr	-892(ra) # 80005c20 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004fa4:	0014849b          	addiw	s1,s1,1
    80004fa8:	0ff4f493          	andi	s1,s1,255
    80004fac:	00500793          	li	a5,5
    80004fb0:	fc97f0e3          	bgeu	a5,s1,80004f70 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    80004fb4:	ffffc097          	auipc	ra,0xffffc
    80004fb8:	380080e7          	jalr	896(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80004fbc:	00004517          	auipc	a0,0x4
    80004fc0:	47c50513          	addi	a0,a0,1148 # 80009438 <CONSOLE_STATUS+0x428>
    80004fc4:	00001097          	auipc	ra,0x1
    80004fc8:	c5c080e7          	jalr	-932(ra) # 80005c20 <_Z11printStringPKc>
    finishedC = true;
    80004fcc:	00100793          	li	a5,1
    80004fd0:	0000b717          	auipc	a4,0xb
    80004fd4:	c4f70123          	sb	a5,-958(a4) # 8000fc12 <_ZL9finishedC>
}
    80004fd8:	01813083          	ld	ra,24(sp)
    80004fdc:	01013403          	ld	s0,16(sp)
    80004fe0:	00813483          	ld	s1,8(sp)
    80004fe4:	00013903          	ld	s2,0(sp)
    80004fe8:	02010113          	addi	sp,sp,32
    80004fec:	00008067          	ret

0000000080004ff0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004ff0:	fe010113          	addi	sp,sp,-32
    80004ff4:	00113c23          	sd	ra,24(sp)
    80004ff8:	00813823          	sd	s0,16(sp)
    80004ffc:	00913423          	sd	s1,8(sp)
    80005000:	01213023          	sd	s2,0(sp)
    80005004:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005008:	00a00493          	li	s1,10
    8000500c:	0400006f          	j	8000504c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005010:	00004517          	auipc	a0,0x4
    80005014:	43850513          	addi	a0,a0,1080 # 80009448 <CONSOLE_STATUS+0x438>
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	c08080e7          	jalr	-1016(ra) # 80005c20 <_Z11printStringPKc>
    80005020:	00000613          	li	a2,0
    80005024:	00a00593          	li	a1,10
    80005028:	00048513          	mv	a0,s1
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	d8c080e7          	jalr	-628(ra) # 80005db8 <_Z8printIntiii>
    80005034:	00004517          	auipc	a0,0x4
    80005038:	0cc50513          	addi	a0,a0,204 # 80009100 <CONSOLE_STATUS+0xf0>
    8000503c:	00001097          	auipc	ra,0x1
    80005040:	be4080e7          	jalr	-1052(ra) # 80005c20 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005044:	0014849b          	addiw	s1,s1,1
    80005048:	0ff4f493          	andi	s1,s1,255
    8000504c:	00c00793          	li	a5,12
    80005050:	fc97f0e3          	bgeu	a5,s1,80005010 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80005054:	00004517          	auipc	a0,0x4
    80005058:	3fc50513          	addi	a0,a0,1020 # 80009450 <CONSOLE_STATUS+0x440>
    8000505c:	00001097          	auipc	ra,0x1
    80005060:	bc4080e7          	jalr	-1084(ra) # 80005c20 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005064:	00500313          	li	t1,5
    thread_dispatch();
    80005068:	ffffc097          	auipc	ra,0xffffc
    8000506c:	2cc080e7          	jalr	716(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005070:	01000513          	li	a0,16
    80005074:	00000097          	auipc	ra,0x0
    80005078:	be8080e7          	jalr	-1048(ra) # 80004c5c <_ZL9fibonaccim>
    8000507c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005080:	00004517          	auipc	a0,0x4
    80005084:	3e050513          	addi	a0,a0,992 # 80009460 <CONSOLE_STATUS+0x450>
    80005088:	00001097          	auipc	ra,0x1
    8000508c:	b98080e7          	jalr	-1128(ra) # 80005c20 <_Z11printStringPKc>
    80005090:	00000613          	li	a2,0
    80005094:	00a00593          	li	a1,10
    80005098:	0009051b          	sext.w	a0,s2
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	d1c080e7          	jalr	-740(ra) # 80005db8 <_Z8printIntiii>
    800050a4:	00004517          	auipc	a0,0x4
    800050a8:	05c50513          	addi	a0,a0,92 # 80009100 <CONSOLE_STATUS+0xf0>
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	b74080e7          	jalr	-1164(ra) # 80005c20 <_Z11printStringPKc>
    800050b4:	0400006f          	j	800050f4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050b8:	00004517          	auipc	a0,0x4
    800050bc:	39050513          	addi	a0,a0,912 # 80009448 <CONSOLE_STATUS+0x438>
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	b60080e7          	jalr	-1184(ra) # 80005c20 <_Z11printStringPKc>
    800050c8:	00000613          	li	a2,0
    800050cc:	00a00593          	li	a1,10
    800050d0:	00048513          	mv	a0,s1
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	ce4080e7          	jalr	-796(ra) # 80005db8 <_Z8printIntiii>
    800050dc:	00004517          	auipc	a0,0x4
    800050e0:	02450513          	addi	a0,a0,36 # 80009100 <CONSOLE_STATUS+0xf0>
    800050e4:	00001097          	auipc	ra,0x1
    800050e8:	b3c080e7          	jalr	-1220(ra) # 80005c20 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800050ec:	0014849b          	addiw	s1,s1,1
    800050f0:	0ff4f493          	andi	s1,s1,255
    800050f4:	00f00793          	li	a5,15
    800050f8:	fc97f0e3          	bgeu	a5,s1,800050b8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    800050fc:	ffffc097          	auipc	ra,0xffffc
    80005100:	238080e7          	jalr	568(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005104:	00004517          	auipc	a0,0x4
    80005108:	36c50513          	addi	a0,a0,876 # 80009470 <CONSOLE_STATUS+0x460>
    8000510c:	00001097          	auipc	ra,0x1
    80005110:	b14080e7          	jalr	-1260(ra) # 80005c20 <_Z11printStringPKc>
    finishedD = true;
    80005114:	00100793          	li	a5,1
    80005118:	0000b717          	auipc	a4,0xb
    8000511c:	aef70da3          	sb	a5,-1285(a4) # 8000fc13 <_ZL9finishedD>
}
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	00013903          	ld	s2,0(sp)
    80005130:	02010113          	addi	sp,sp,32
    80005134:	00008067          	ret

0000000080005138 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80005138:	fc010113          	addi	sp,sp,-64
    8000513c:	02113c23          	sd	ra,56(sp)
    80005140:	02813823          	sd	s0,48(sp)
    80005144:	02913423          	sd	s1,40(sp)
    80005148:	03213023          	sd	s2,32(sp)
    8000514c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    80005150:	01000513          	li	a0,16
    80005154:	ffffe097          	auipc	ra,0xffffe
    80005158:	568080e7          	jalr	1384(ra) # 800036bc <_Znwm>
    8000515c:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80005160:	ffffe097          	auipc	ra,0xffffe
    80005164:	72c080e7          	jalr	1836(ra) # 8000388c <_ZN6ThreadC1Ev>
    80005168:	00007797          	auipc	a5,0x7
    8000516c:	87878793          	addi	a5,a5,-1928 # 8000b9e0 <_ZTV7WorkerA+0x10>
    80005170:	00f4b023          	sd	a5,0(s1)
    80005174:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80005178:	00004517          	auipc	a0,0x4
    8000517c:	30850513          	addi	a0,a0,776 # 80009480 <CONSOLE_STATUS+0x470>
    80005180:	00001097          	auipc	ra,0x1
    80005184:	aa0080e7          	jalr	-1376(ra) # 80005c20 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80005188:	01000513          	li	a0,16
    8000518c:	ffffe097          	auipc	ra,0xffffe
    80005190:	530080e7          	jalr	1328(ra) # 800036bc <_Znwm>
    80005194:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80005198:	ffffe097          	auipc	ra,0xffffe
    8000519c:	6f4080e7          	jalr	1780(ra) # 8000388c <_ZN6ThreadC1Ev>
    800051a0:	00007797          	auipc	a5,0x7
    800051a4:	86878793          	addi	a5,a5,-1944 # 8000ba08 <_ZTV7WorkerB+0x10>
    800051a8:	00f4b023          	sd	a5,0(s1)
    800051ac:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800051b0:	00004517          	auipc	a0,0x4
    800051b4:	2e850513          	addi	a0,a0,744 # 80009498 <CONSOLE_STATUS+0x488>
    800051b8:	00001097          	auipc	ra,0x1
    800051bc:	a68080e7          	jalr	-1432(ra) # 80005c20 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800051c0:	01000513          	li	a0,16
    800051c4:	ffffe097          	auipc	ra,0xffffe
    800051c8:	4f8080e7          	jalr	1272(ra) # 800036bc <_Znwm>
    800051cc:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800051d0:	ffffe097          	auipc	ra,0xffffe
    800051d4:	6bc080e7          	jalr	1724(ra) # 8000388c <_ZN6ThreadC1Ev>
    800051d8:	00007797          	auipc	a5,0x7
    800051dc:	85878793          	addi	a5,a5,-1960 # 8000ba30 <_ZTV7WorkerC+0x10>
    800051e0:	00f4b023          	sd	a5,0(s1)
    800051e4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800051e8:	00004517          	auipc	a0,0x4
    800051ec:	2c850513          	addi	a0,a0,712 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800051f0:	00001097          	auipc	ra,0x1
    800051f4:	a30080e7          	jalr	-1488(ra) # 80005c20 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800051f8:	01000513          	li	a0,16
    800051fc:	ffffe097          	auipc	ra,0xffffe
    80005200:	4c0080e7          	jalr	1216(ra) # 800036bc <_Znwm>
    80005204:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80005208:	ffffe097          	auipc	ra,0xffffe
    8000520c:	684080e7          	jalr	1668(ra) # 8000388c <_ZN6ThreadC1Ev>
    80005210:	00007797          	auipc	a5,0x7
    80005214:	84878793          	addi	a5,a5,-1976 # 8000ba58 <_ZTV7WorkerD+0x10>
    80005218:	00f4b023          	sd	a5,0(s1)
    8000521c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005220:	00004517          	auipc	a0,0x4
    80005224:	2a850513          	addi	a0,a0,680 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005228:	00001097          	auipc	ra,0x1
    8000522c:	9f8080e7          	jalr	-1544(ra) # 80005c20 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005230:	00000493          	li	s1,0
    80005234:	00300793          	li	a5,3
    80005238:	0297c663          	blt	a5,s1,80005264 <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    8000523c:	00349793          	slli	a5,s1,0x3
    80005240:	fe040713          	addi	a4,s0,-32
    80005244:	00f707b3          	add	a5,a4,a5
    80005248:	fe07b503          	ld	a0,-32(a5)
    8000524c:	ffffe097          	auipc	ra,0xffffe
    80005250:	540080e7          	jalr	1344(ra) # 8000378c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005254:	0014849b          	addiw	s1,s1,1
    80005258:	fddff06f          	j	80005234 <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000525c:	ffffe097          	auipc	ra,0xffffe
    80005260:	568080e7          	jalr	1384(ra) # 800037c4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005264:	0000b797          	auipc	a5,0xb
    80005268:	9ac7c783          	lbu	a5,-1620(a5) # 8000fc10 <_ZL9finishedA>
    8000526c:	fe0788e3          	beqz	a5,8000525c <_Z20Threads_CPP_API_testv+0x124>
    80005270:	0000b797          	auipc	a5,0xb
    80005274:	9a17c783          	lbu	a5,-1631(a5) # 8000fc11 <_ZL9finishedB>
    80005278:	fe0782e3          	beqz	a5,8000525c <_Z20Threads_CPP_API_testv+0x124>
    8000527c:	0000b797          	auipc	a5,0xb
    80005280:	9967c783          	lbu	a5,-1642(a5) # 8000fc12 <_ZL9finishedC>
    80005284:	fc078ce3          	beqz	a5,8000525c <_Z20Threads_CPP_API_testv+0x124>
    80005288:	0000b797          	auipc	a5,0xb
    8000528c:	98b7c783          	lbu	a5,-1653(a5) # 8000fc13 <_ZL9finishedD>
    80005290:	fc0786e3          	beqz	a5,8000525c <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    80005294:	fc040493          	addi	s1,s0,-64
    80005298:	0080006f          	j	800052a0 <_Z20Threads_CPP_API_testv+0x168>
    8000529c:	00848493          	addi	s1,s1,8
    800052a0:	fe040793          	addi	a5,s0,-32
    800052a4:	08f48663          	beq	s1,a5,80005330 <_Z20Threads_CPP_API_testv+0x1f8>
    800052a8:	0004b503          	ld	a0,0(s1)
    800052ac:	fe0508e3          	beqz	a0,8000529c <_Z20Threads_CPP_API_testv+0x164>
    800052b0:	00053783          	ld	a5,0(a0)
    800052b4:	0087b783          	ld	a5,8(a5)
    800052b8:	000780e7          	jalr	a5
    800052bc:	fe1ff06f          	j	8000529c <_Z20Threads_CPP_API_testv+0x164>
    800052c0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800052c4:	00048513          	mv	a0,s1
    800052c8:	ffffe097          	auipc	ra,0xffffe
    800052cc:	41c080e7          	jalr	1052(ra) # 800036e4 <_ZdlPv>
    800052d0:	00090513          	mv	a0,s2
    800052d4:	0000c097          	auipc	ra,0xc
    800052d8:	a24080e7          	jalr	-1500(ra) # 80010cf8 <_Unwind_Resume>
    800052dc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800052e0:	00048513          	mv	a0,s1
    800052e4:	ffffe097          	auipc	ra,0xffffe
    800052e8:	400080e7          	jalr	1024(ra) # 800036e4 <_ZdlPv>
    800052ec:	00090513          	mv	a0,s2
    800052f0:	0000c097          	auipc	ra,0xc
    800052f4:	a08080e7          	jalr	-1528(ra) # 80010cf8 <_Unwind_Resume>
    800052f8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800052fc:	00048513          	mv	a0,s1
    80005300:	ffffe097          	auipc	ra,0xffffe
    80005304:	3e4080e7          	jalr	996(ra) # 800036e4 <_ZdlPv>
    80005308:	00090513          	mv	a0,s2
    8000530c:	0000c097          	auipc	ra,0xc
    80005310:	9ec080e7          	jalr	-1556(ra) # 80010cf8 <_Unwind_Resume>
    80005314:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005318:	00048513          	mv	a0,s1
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	3c8080e7          	jalr	968(ra) # 800036e4 <_ZdlPv>
    80005324:	00090513          	mv	a0,s2
    80005328:	0000c097          	auipc	ra,0xc
    8000532c:	9d0080e7          	jalr	-1584(ra) # 80010cf8 <_Unwind_Resume>
    80005330:	03813083          	ld	ra,56(sp)
    80005334:	03013403          	ld	s0,48(sp)
    80005338:	02813483          	ld	s1,40(sp)
    8000533c:	02013903          	ld	s2,32(sp)
    80005340:	04010113          	addi	sp,sp,64
    80005344:	00008067          	ret

0000000080005348 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005348:	ff010113          	addi	sp,sp,-16
    8000534c:	00113423          	sd	ra,8(sp)
    80005350:	00813023          	sd	s0,0(sp)
    80005354:	01010413          	addi	s0,sp,16
    80005358:	00006797          	auipc	a5,0x6
    8000535c:	68878793          	addi	a5,a5,1672 # 8000b9e0 <_ZTV7WorkerA+0x10>
    80005360:	00f53023          	sd	a5,0(a0)
    80005364:	ffffe097          	auipc	ra,0xffffe
    80005368:	2e8080e7          	jalr	744(ra) # 8000364c <_ZN6ThreadD1Ev>
    8000536c:	00813083          	ld	ra,8(sp)
    80005370:	00013403          	ld	s0,0(sp)
    80005374:	01010113          	addi	sp,sp,16
    80005378:	00008067          	ret

000000008000537c <_ZN7WorkerAD0Ev>:
    8000537c:	fe010113          	addi	sp,sp,-32
    80005380:	00113c23          	sd	ra,24(sp)
    80005384:	00813823          	sd	s0,16(sp)
    80005388:	00913423          	sd	s1,8(sp)
    8000538c:	02010413          	addi	s0,sp,32
    80005390:	00050493          	mv	s1,a0
    80005394:	00006797          	auipc	a5,0x6
    80005398:	64c78793          	addi	a5,a5,1612 # 8000b9e0 <_ZTV7WorkerA+0x10>
    8000539c:	00f53023          	sd	a5,0(a0)
    800053a0:	ffffe097          	auipc	ra,0xffffe
    800053a4:	2ac080e7          	jalr	684(ra) # 8000364c <_ZN6ThreadD1Ev>
    800053a8:	00048513          	mv	a0,s1
    800053ac:	ffffe097          	auipc	ra,0xffffe
    800053b0:	338080e7          	jalr	824(ra) # 800036e4 <_ZdlPv>
    800053b4:	01813083          	ld	ra,24(sp)
    800053b8:	01013403          	ld	s0,16(sp)
    800053bc:	00813483          	ld	s1,8(sp)
    800053c0:	02010113          	addi	sp,sp,32
    800053c4:	00008067          	ret

00000000800053c8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800053c8:	ff010113          	addi	sp,sp,-16
    800053cc:	00113423          	sd	ra,8(sp)
    800053d0:	00813023          	sd	s0,0(sp)
    800053d4:	01010413          	addi	s0,sp,16
    800053d8:	00006797          	auipc	a5,0x6
    800053dc:	63078793          	addi	a5,a5,1584 # 8000ba08 <_ZTV7WorkerB+0x10>
    800053e0:	00f53023          	sd	a5,0(a0)
    800053e4:	ffffe097          	auipc	ra,0xffffe
    800053e8:	268080e7          	jalr	616(ra) # 8000364c <_ZN6ThreadD1Ev>
    800053ec:	00813083          	ld	ra,8(sp)
    800053f0:	00013403          	ld	s0,0(sp)
    800053f4:	01010113          	addi	sp,sp,16
    800053f8:	00008067          	ret

00000000800053fc <_ZN7WorkerBD0Ev>:
    800053fc:	fe010113          	addi	sp,sp,-32
    80005400:	00113c23          	sd	ra,24(sp)
    80005404:	00813823          	sd	s0,16(sp)
    80005408:	00913423          	sd	s1,8(sp)
    8000540c:	02010413          	addi	s0,sp,32
    80005410:	00050493          	mv	s1,a0
    80005414:	00006797          	auipc	a5,0x6
    80005418:	5f478793          	addi	a5,a5,1524 # 8000ba08 <_ZTV7WorkerB+0x10>
    8000541c:	00f53023          	sd	a5,0(a0)
    80005420:	ffffe097          	auipc	ra,0xffffe
    80005424:	22c080e7          	jalr	556(ra) # 8000364c <_ZN6ThreadD1Ev>
    80005428:	00048513          	mv	a0,s1
    8000542c:	ffffe097          	auipc	ra,0xffffe
    80005430:	2b8080e7          	jalr	696(ra) # 800036e4 <_ZdlPv>
    80005434:	01813083          	ld	ra,24(sp)
    80005438:	01013403          	ld	s0,16(sp)
    8000543c:	00813483          	ld	s1,8(sp)
    80005440:	02010113          	addi	sp,sp,32
    80005444:	00008067          	ret

0000000080005448 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005448:	ff010113          	addi	sp,sp,-16
    8000544c:	00113423          	sd	ra,8(sp)
    80005450:	00813023          	sd	s0,0(sp)
    80005454:	01010413          	addi	s0,sp,16
    80005458:	00006797          	auipc	a5,0x6
    8000545c:	5d878793          	addi	a5,a5,1496 # 8000ba30 <_ZTV7WorkerC+0x10>
    80005460:	00f53023          	sd	a5,0(a0)
    80005464:	ffffe097          	auipc	ra,0xffffe
    80005468:	1e8080e7          	jalr	488(ra) # 8000364c <_ZN6ThreadD1Ev>
    8000546c:	00813083          	ld	ra,8(sp)
    80005470:	00013403          	ld	s0,0(sp)
    80005474:	01010113          	addi	sp,sp,16
    80005478:	00008067          	ret

000000008000547c <_ZN7WorkerCD0Ev>:
    8000547c:	fe010113          	addi	sp,sp,-32
    80005480:	00113c23          	sd	ra,24(sp)
    80005484:	00813823          	sd	s0,16(sp)
    80005488:	00913423          	sd	s1,8(sp)
    8000548c:	02010413          	addi	s0,sp,32
    80005490:	00050493          	mv	s1,a0
    80005494:	00006797          	auipc	a5,0x6
    80005498:	59c78793          	addi	a5,a5,1436 # 8000ba30 <_ZTV7WorkerC+0x10>
    8000549c:	00f53023          	sd	a5,0(a0)
    800054a0:	ffffe097          	auipc	ra,0xffffe
    800054a4:	1ac080e7          	jalr	428(ra) # 8000364c <_ZN6ThreadD1Ev>
    800054a8:	00048513          	mv	a0,s1
    800054ac:	ffffe097          	auipc	ra,0xffffe
    800054b0:	238080e7          	jalr	568(ra) # 800036e4 <_ZdlPv>
    800054b4:	01813083          	ld	ra,24(sp)
    800054b8:	01013403          	ld	s0,16(sp)
    800054bc:	00813483          	ld	s1,8(sp)
    800054c0:	02010113          	addi	sp,sp,32
    800054c4:	00008067          	ret

00000000800054c8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800054c8:	ff010113          	addi	sp,sp,-16
    800054cc:	00113423          	sd	ra,8(sp)
    800054d0:	00813023          	sd	s0,0(sp)
    800054d4:	01010413          	addi	s0,sp,16
    800054d8:	00006797          	auipc	a5,0x6
    800054dc:	58078793          	addi	a5,a5,1408 # 8000ba58 <_ZTV7WorkerD+0x10>
    800054e0:	00f53023          	sd	a5,0(a0)
    800054e4:	ffffe097          	auipc	ra,0xffffe
    800054e8:	168080e7          	jalr	360(ra) # 8000364c <_ZN6ThreadD1Ev>
    800054ec:	00813083          	ld	ra,8(sp)
    800054f0:	00013403          	ld	s0,0(sp)
    800054f4:	01010113          	addi	sp,sp,16
    800054f8:	00008067          	ret

00000000800054fc <_ZN7WorkerDD0Ev>:
    800054fc:	fe010113          	addi	sp,sp,-32
    80005500:	00113c23          	sd	ra,24(sp)
    80005504:	00813823          	sd	s0,16(sp)
    80005508:	00913423          	sd	s1,8(sp)
    8000550c:	02010413          	addi	s0,sp,32
    80005510:	00050493          	mv	s1,a0
    80005514:	00006797          	auipc	a5,0x6
    80005518:	54478793          	addi	a5,a5,1348 # 8000ba58 <_ZTV7WorkerD+0x10>
    8000551c:	00f53023          	sd	a5,0(a0)
    80005520:	ffffe097          	auipc	ra,0xffffe
    80005524:	12c080e7          	jalr	300(ra) # 8000364c <_ZN6ThreadD1Ev>
    80005528:	00048513          	mv	a0,s1
    8000552c:	ffffe097          	auipc	ra,0xffffe
    80005530:	1b8080e7          	jalr	440(ra) # 800036e4 <_ZdlPv>
    80005534:	01813083          	ld	ra,24(sp)
    80005538:	01013403          	ld	s0,16(sp)
    8000553c:	00813483          	ld	s1,8(sp)
    80005540:	02010113          	addi	sp,sp,32
    80005544:	00008067          	ret

0000000080005548 <_ZN7WorkerA3runEv>:
    void run() override {
    80005548:	ff010113          	addi	sp,sp,-16
    8000554c:	00113423          	sd	ra,8(sp)
    80005550:	00813023          	sd	s0,0(sp)
    80005554:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005558:	00000593          	li	a1,0
    8000555c:	fffff097          	auipc	ra,0xfffff
    80005560:	774080e7          	jalr	1908(ra) # 80004cd0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005564:	00813083          	ld	ra,8(sp)
    80005568:	00013403          	ld	s0,0(sp)
    8000556c:	01010113          	addi	sp,sp,16
    80005570:	00008067          	ret

0000000080005574 <_ZN7WorkerB3runEv>:
    void run() override {
    80005574:	ff010113          	addi	sp,sp,-16
    80005578:	00113423          	sd	ra,8(sp)
    8000557c:	00813023          	sd	s0,0(sp)
    80005580:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005584:	00000593          	li	a1,0
    80005588:	00000097          	auipc	ra,0x0
    8000558c:	814080e7          	jalr	-2028(ra) # 80004d9c <_ZN7WorkerB11workerBodyBEPv>
    }
    80005590:	00813083          	ld	ra,8(sp)
    80005594:	00013403          	ld	s0,0(sp)
    80005598:	01010113          	addi	sp,sp,16
    8000559c:	00008067          	ret

00000000800055a0 <_ZN7WorkerC3runEv>:
    void run() override {
    800055a0:	ff010113          	addi	sp,sp,-16
    800055a4:	00113423          	sd	ra,8(sp)
    800055a8:	00813023          	sd	s0,0(sp)
    800055ac:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800055b0:	00000593          	li	a1,0
    800055b4:	00000097          	auipc	ra,0x0
    800055b8:	8bc080e7          	jalr	-1860(ra) # 80004e70 <_ZN7WorkerC11workerBodyCEPv>
    }
    800055bc:	00813083          	ld	ra,8(sp)
    800055c0:	00013403          	ld	s0,0(sp)
    800055c4:	01010113          	addi	sp,sp,16
    800055c8:	00008067          	ret

00000000800055cc <_ZN7WorkerD3runEv>:

    void run() override {
    800055cc:	ff010113          	addi	sp,sp,-16
    800055d0:	00113423          	sd	ra,8(sp)
    800055d4:	00813023          	sd	s0,0(sp)
    800055d8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800055dc:	00000593          	li	a1,0
    800055e0:	00000097          	auipc	ra,0x0
    800055e4:	a10080e7          	jalr	-1520(ra) # 80004ff0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800055e8:	00813083          	ld	ra,8(sp)
    800055ec:	00013403          	ld	s0,0(sp)
    800055f0:	01010113          	addi	sp,sp,16
    800055f4:	00008067          	ret

00000000800055f8 <_Z11workerBodyAPv>:
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg)
{
    800055f8:	fe010113          	addi	sp,sp,-32
    800055fc:	00113c23          	sd	ra,24(sp)
    80005600:	00813823          	sd	s0,16(sp)
    80005604:	00913423          	sd	s1,8(sp)
    80005608:	01213023          	sd	s2,0(sp)
    8000560c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80005610:	00000913          	li	s2,0
    80005614:	0380006f          	j	8000564c <_Z11workerBodyAPv+0x54>
    {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005618:	ffffc097          	auipc	ra,0xffffc
    8000561c:	d1c080e7          	jalr	-740(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005620:	00148493          	addi	s1,s1,1
    80005624:	000027b7          	lui	a5,0x2
    80005628:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000562c:	0097ee63          	bltu	a5,s1,80005648 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005630:	00000713          	li	a4,0
    80005634:	000077b7          	lui	a5,0x7
    80005638:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000563c:	fce7eee3          	bltu	a5,a4,80005618 <_Z11workerBodyAPv+0x20>
    80005640:	00170713          	addi	a4,a4,1
    80005644:	ff1ff06f          	j	80005634 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80005648:	00190913          	addi	s2,s2,1
    8000564c:	00900793          	li	a5,9
    80005650:	0527e063          	bltu	a5,s2,80005690 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005654:	00004517          	auipc	a0,0x4
    80005658:	d8450513          	addi	a0,a0,-636 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000565c:	00000097          	auipc	ra,0x0
    80005660:	5c4080e7          	jalr	1476(ra) # 80005c20 <_Z11printStringPKc>
    80005664:	00000613          	li	a2,0
    80005668:	00a00593          	li	a1,10
    8000566c:	0009051b          	sext.w	a0,s2
    80005670:	00000097          	auipc	ra,0x0
    80005674:	748080e7          	jalr	1864(ra) # 80005db8 <_Z8printIntiii>
    80005678:	00004517          	auipc	a0,0x4
    8000567c:	a8850513          	addi	a0,a0,-1400 # 80009100 <CONSOLE_STATUS+0xf0>
    80005680:	00000097          	auipc	ra,0x0
    80005684:	5a0080e7          	jalr	1440(ra) # 80005c20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005688:	00000493          	li	s1,0
    8000568c:	f99ff06f          	j	80005624 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005690:	00004517          	auipc	a0,0x4
    80005694:	d5050513          	addi	a0,a0,-688 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80005698:	00000097          	auipc	ra,0x0
    8000569c:	588080e7          	jalr	1416(ra) # 80005c20 <_Z11printStringPKc>
    finishedA = true;
    800056a0:	00100793          	li	a5,1
    800056a4:	0000a717          	auipc	a4,0xa
    800056a8:	56f70823          	sb	a5,1392(a4) # 8000fc14 <_ZL9finishedA>
}
    800056ac:	01813083          	ld	ra,24(sp)
    800056b0:	01013403          	ld	s0,16(sp)
    800056b4:	00813483          	ld	s1,8(sp)
    800056b8:	00013903          	ld	s2,0(sp)
    800056bc:	02010113          	addi	sp,sp,32
    800056c0:	00008067          	ret

00000000800056c4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800056c4:	fe010113          	addi	sp,sp,-32
    800056c8:	00113c23          	sd	ra,24(sp)
    800056cc:	00813823          	sd	s0,16(sp)
    800056d0:	00913423          	sd	s1,8(sp)
    800056d4:	01213023          	sd	s2,0(sp)
    800056d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800056dc:	00000913          	li	s2,0
    800056e0:	0380006f          	j	80005718 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800056e4:	ffffc097          	auipc	ra,0xffffc
    800056e8:	c50080e7          	jalr	-944(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    800056ec:	00148493          	addi	s1,s1,1
    800056f0:	000027b7          	lui	a5,0x2
    800056f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056f8:	0097ee63          	bltu	a5,s1,80005714 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056fc:	00000713          	li	a4,0
    80005700:	000077b7          	lui	a5,0x7
    80005704:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005708:	fce7eee3          	bltu	a5,a4,800056e4 <_Z11workerBodyBPv+0x20>
    8000570c:	00170713          	addi	a4,a4,1
    80005710:	ff1ff06f          	j	80005700 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005714:	00190913          	addi	s2,s2,1
    80005718:	00f00793          	li	a5,15
    8000571c:	0527e063          	bltu	a5,s2,8000575c <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005720:	00004517          	auipc	a0,0x4
    80005724:	cd050513          	addi	a0,a0,-816 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005728:	00000097          	auipc	ra,0x0
    8000572c:	4f8080e7          	jalr	1272(ra) # 80005c20 <_Z11printStringPKc>
    80005730:	00000613          	li	a2,0
    80005734:	00a00593          	li	a1,10
    80005738:	0009051b          	sext.w	a0,s2
    8000573c:	00000097          	auipc	ra,0x0
    80005740:	67c080e7          	jalr	1660(ra) # 80005db8 <_Z8printIntiii>
    80005744:	00004517          	auipc	a0,0x4
    80005748:	9bc50513          	addi	a0,a0,-1604 # 80009100 <CONSOLE_STATUS+0xf0>
    8000574c:	00000097          	auipc	ra,0x0
    80005750:	4d4080e7          	jalr	1236(ra) # 80005c20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005754:	00000493          	li	s1,0
    80005758:	f99ff06f          	j	800056f0 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	bd8080e7          	jalr	-1064(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80005764:	00004517          	auipc	a0,0x4
    80005768:	c9450513          	addi	a0,a0,-876 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000576c:	00000097          	auipc	ra,0x0
    80005770:	4b4080e7          	jalr	1204(ra) # 80005c20 <_Z11printStringPKc>
    finishedB = true;
    80005774:	00100793          	li	a5,1
    80005778:	0000a717          	auipc	a4,0xa
    8000577c:	48f70ea3          	sb	a5,1181(a4) # 8000fc15 <_ZL9finishedB>
}
    80005780:	01813083          	ld	ra,24(sp)
    80005784:	01013403          	ld	s0,16(sp)
    80005788:	00813483          	ld	s1,8(sp)
    8000578c:	00013903          	ld	s2,0(sp)
    80005790:	02010113          	addi	sp,sp,32
    80005794:	00008067          	ret

0000000080005798 <_ZL9fibonaccim>:
{
    80005798:	fe010113          	addi	sp,sp,-32
    8000579c:	00113c23          	sd	ra,24(sp)
    800057a0:	00813823          	sd	s0,16(sp)
    800057a4:	00913423          	sd	s1,8(sp)
    800057a8:	01213023          	sd	s2,0(sp)
    800057ac:	02010413          	addi	s0,sp,32
    800057b0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    800057b4:	00100793          	li	a5,1
    800057b8:	02a7f863          	bgeu	a5,a0,800057e8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800057bc:	00a00793          	li	a5,10
    800057c0:	02f577b3          	remu	a5,a0,a5
    800057c4:	02078e63          	beqz	a5,80005800 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800057c8:	fff48513          	addi	a0,s1,-1
    800057cc:	00000097          	auipc	ra,0x0
    800057d0:	fcc080e7          	jalr	-52(ra) # 80005798 <_ZL9fibonaccim>
    800057d4:	00050913          	mv	s2,a0
    800057d8:	ffe48513          	addi	a0,s1,-2
    800057dc:	00000097          	auipc	ra,0x0
    800057e0:	fbc080e7          	jalr	-68(ra) # 80005798 <_ZL9fibonaccim>
    800057e4:	00a90533          	add	a0,s2,a0
}
    800057e8:	01813083          	ld	ra,24(sp)
    800057ec:	01013403          	ld	s0,16(sp)
    800057f0:	00813483          	ld	s1,8(sp)
    800057f4:	00013903          	ld	s2,0(sp)
    800057f8:	02010113          	addi	sp,sp,32
    800057fc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	b34080e7          	jalr	-1228(ra) # 80001334 <thread_dispatch>
    80005808:	fc1ff06f          	j	800057c8 <_ZL9fibonaccim+0x30>

000000008000580c <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    8000580c:	fe010113          	addi	sp,sp,-32
    80005810:	00113c23          	sd	ra,24(sp)
    80005814:	00813823          	sd	s0,16(sp)
    80005818:	00913423          	sd	s1,8(sp)
    8000581c:	01213023          	sd	s2,0(sp)
    80005820:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005824:	00000493          	li	s1,0
    80005828:	0400006f          	j	80005868 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    8000582c:	00004517          	auipc	a0,0x4
    80005830:	bdc50513          	addi	a0,a0,-1060 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005834:	00000097          	auipc	ra,0x0
    80005838:	3ec080e7          	jalr	1004(ra) # 80005c20 <_Z11printStringPKc>
    8000583c:	00000613          	li	a2,0
    80005840:	00a00593          	li	a1,10
    80005844:	00048513          	mv	a0,s1
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	570080e7          	jalr	1392(ra) # 80005db8 <_Z8printIntiii>
    80005850:	00004517          	auipc	a0,0x4
    80005854:	8b050513          	addi	a0,a0,-1872 # 80009100 <CONSOLE_STATUS+0xf0>
    80005858:	00000097          	auipc	ra,0x0
    8000585c:	3c8080e7          	jalr	968(ra) # 80005c20 <_Z11printStringPKc>
    for (; i < 3; i++)
    80005860:	0014849b          	addiw	s1,s1,1
    80005864:	0ff4f493          	andi	s1,s1,255
    80005868:	00200793          	li	a5,2
    8000586c:	fc97f0e3          	bgeu	a5,s1,8000582c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005870:	00004517          	auipc	a0,0x4
    80005874:	ba050513          	addi	a0,a0,-1120 # 80009410 <CONSOLE_STATUS+0x400>
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	3a8080e7          	jalr	936(ra) # 80005c20 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005880:	00700313          	li	t1,7
    thread_dispatch();
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	ab0080e7          	jalr	-1360(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    8000588c:	00004517          	auipc	a0,0x4
    80005890:	c5450513          	addi	a0,a0,-940 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005894:	00000097          	auipc	ra,0x0
    80005898:	38c080e7          	jalr	908(ra) # 80005c20 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000589c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800058a0:	00004517          	auipc	a0,0x4
    800058a4:	b8050513          	addi	a0,a0,-1152 # 80009420 <CONSOLE_STATUS+0x410>
    800058a8:	00000097          	auipc	ra,0x0
    800058ac:	378080e7          	jalr	888(ra) # 80005c20 <_Z11printStringPKc>
    800058b0:	00000613          	li	a2,0
    800058b4:	00a00593          	li	a1,10
    800058b8:	0009051b          	sext.w	a0,s2
    800058bc:	00000097          	auipc	ra,0x0
    800058c0:	4fc080e7          	jalr	1276(ra) # 80005db8 <_Z8printIntiii>
    800058c4:	00004517          	auipc	a0,0x4
    800058c8:	83c50513          	addi	a0,a0,-1988 # 80009100 <CONSOLE_STATUS+0xf0>
    800058cc:	00000097          	auipc	ra,0x0
    800058d0:	354080e7          	jalr	852(ra) # 80005c20 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800058d4:	00c00513          	li	a0,12
    800058d8:	00000097          	auipc	ra,0x0
    800058dc:	ec0080e7          	jalr	-320(ra) # 80005798 <_ZL9fibonaccim>
    800058e0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800058e4:	00004517          	auipc	a0,0x4
    800058e8:	b4450513          	addi	a0,a0,-1212 # 80009428 <CONSOLE_STATUS+0x418>
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	334080e7          	jalr	820(ra) # 80005c20 <_Z11printStringPKc>
    800058f4:	00000613          	li	a2,0
    800058f8:	00a00593          	li	a1,10
    800058fc:	0009051b          	sext.w	a0,s2
    80005900:	00000097          	auipc	ra,0x0
    80005904:	4b8080e7          	jalr	1208(ra) # 80005db8 <_Z8printIntiii>
    80005908:	00003517          	auipc	a0,0x3
    8000590c:	7f850513          	addi	a0,a0,2040 # 80009100 <CONSOLE_STATUS+0xf0>
    80005910:	00000097          	auipc	ra,0x0
    80005914:	310080e7          	jalr	784(ra) # 80005c20 <_Z11printStringPKc>
    80005918:	0400006f          	j	80005958 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000591c:	00004517          	auipc	a0,0x4
    80005920:	aec50513          	addi	a0,a0,-1300 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005924:	00000097          	auipc	ra,0x0
    80005928:	2fc080e7          	jalr	764(ra) # 80005c20 <_Z11printStringPKc>
    8000592c:	00000613          	li	a2,0
    80005930:	00a00593          	li	a1,10
    80005934:	00048513          	mv	a0,s1
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	480080e7          	jalr	1152(ra) # 80005db8 <_Z8printIntiii>
    80005940:	00003517          	auipc	a0,0x3
    80005944:	7c050513          	addi	a0,a0,1984 # 80009100 <CONSOLE_STATUS+0xf0>
    80005948:	00000097          	auipc	ra,0x0
    8000594c:	2d8080e7          	jalr	728(ra) # 80005c20 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005950:	0014849b          	addiw	s1,s1,1
    80005954:	0ff4f493          	andi	s1,s1,255
    80005958:	00500793          	li	a5,5
    8000595c:	fc97f0e3          	bgeu	a5,s1,8000591c <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	9d4080e7          	jalr	-1580(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005968:	00004517          	auipc	a0,0x4
    8000596c:	ad050513          	addi	a0,a0,-1328 # 80009438 <CONSOLE_STATUS+0x428>
    80005970:	00000097          	auipc	ra,0x0
    80005974:	2b0080e7          	jalr	688(ra) # 80005c20 <_Z11printStringPKc>
    finishedC = true;
    80005978:	00100793          	li	a5,1
    8000597c:	0000a717          	auipc	a4,0xa
    80005980:	28f70d23          	sb	a5,666(a4) # 8000fc16 <_ZL9finishedC>
}
    80005984:	01813083          	ld	ra,24(sp)
    80005988:	01013403          	ld	s0,16(sp)
    8000598c:	00813483          	ld	s1,8(sp)
    80005990:	00013903          	ld	s2,0(sp)
    80005994:	02010113          	addi	sp,sp,32
    80005998:	00008067          	ret

000000008000599c <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    8000599c:	fe010113          	addi	sp,sp,-32
    800059a0:	00113c23          	sd	ra,24(sp)
    800059a4:	00813823          	sd	s0,16(sp)
    800059a8:	00913423          	sd	s1,8(sp)
    800059ac:	01213023          	sd	s2,0(sp)
    800059b0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800059b4:	00a00493          	li	s1,10
    800059b8:	0400006f          	j	800059f8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800059bc:	00004517          	auipc	a0,0x4
    800059c0:	a8c50513          	addi	a0,a0,-1396 # 80009448 <CONSOLE_STATUS+0x438>
    800059c4:	00000097          	auipc	ra,0x0
    800059c8:	25c080e7          	jalr	604(ra) # 80005c20 <_Z11printStringPKc>
    800059cc:	00000613          	li	a2,0
    800059d0:	00a00593          	li	a1,10
    800059d4:	00048513          	mv	a0,s1
    800059d8:	00000097          	auipc	ra,0x0
    800059dc:	3e0080e7          	jalr	992(ra) # 80005db8 <_Z8printIntiii>
    800059e0:	00003517          	auipc	a0,0x3
    800059e4:	72050513          	addi	a0,a0,1824 # 80009100 <CONSOLE_STATUS+0xf0>
    800059e8:	00000097          	auipc	ra,0x0
    800059ec:	238080e7          	jalr	568(ra) # 80005c20 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800059f0:	0014849b          	addiw	s1,s1,1
    800059f4:	0ff4f493          	andi	s1,s1,255
    800059f8:	00c00793          	li	a5,12
    800059fc:	fc97f0e3          	bgeu	a5,s1,800059bc <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	a5050513          	addi	a0,a0,-1456 # 80009450 <CONSOLE_STATUS+0x440>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	218080e7          	jalr	536(ra) # 80005c20 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005a10:	00500313          	li	t1,5
    thread_dispatch();
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	920080e7          	jalr	-1760(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    80005a1c:	00004517          	auipc	a0,0x4
    80005a20:	ad450513          	addi	a0,a0,-1324 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	1fc080e7          	jalr	508(ra) # 80005c20 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005a2c:	01000513          	li	a0,16
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	d68080e7          	jalr	-664(ra) # 80005798 <_ZL9fibonaccim>
    80005a38:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005a3c:	00004517          	auipc	a0,0x4
    80005a40:	a2450513          	addi	a0,a0,-1500 # 80009460 <CONSOLE_STATUS+0x450>
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	1dc080e7          	jalr	476(ra) # 80005c20 <_Z11printStringPKc>
    80005a4c:	00000613          	li	a2,0
    80005a50:	00a00593          	li	a1,10
    80005a54:	0009051b          	sext.w	a0,s2
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	360080e7          	jalr	864(ra) # 80005db8 <_Z8printIntiii>
    80005a60:	00003517          	auipc	a0,0x3
    80005a64:	6a050513          	addi	a0,a0,1696 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a68:	00000097          	auipc	ra,0x0
    80005a6c:	1b8080e7          	jalr	440(ra) # 80005c20 <_Z11printStringPKc>
    80005a70:	0400006f          	j	80005ab0 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a74:	00004517          	auipc	a0,0x4
    80005a78:	9d450513          	addi	a0,a0,-1580 # 80009448 <CONSOLE_STATUS+0x438>
    80005a7c:	00000097          	auipc	ra,0x0
    80005a80:	1a4080e7          	jalr	420(ra) # 80005c20 <_Z11printStringPKc>
    80005a84:	00000613          	li	a2,0
    80005a88:	00a00593          	li	a1,10
    80005a8c:	00048513          	mv	a0,s1
    80005a90:	00000097          	auipc	ra,0x0
    80005a94:	328080e7          	jalr	808(ra) # 80005db8 <_Z8printIntiii>
    80005a98:	00003517          	auipc	a0,0x3
    80005a9c:	66850513          	addi	a0,a0,1640 # 80009100 <CONSOLE_STATUS+0xf0>
    80005aa0:	00000097          	auipc	ra,0x0
    80005aa4:	180080e7          	jalr	384(ra) # 80005c20 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005aa8:	0014849b          	addiw	s1,s1,1
    80005aac:	0ff4f493          	andi	s1,s1,255
    80005ab0:	00f00793          	li	a5,15
    80005ab4:	fc97f0e3          	bgeu	a5,s1,80005a74 <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	87c080e7          	jalr	-1924(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005ac0:	00004517          	auipc	a0,0x4
    80005ac4:	9b050513          	addi	a0,a0,-1616 # 80009470 <CONSOLE_STATUS+0x460>
    80005ac8:	00000097          	auipc	ra,0x0
    80005acc:	158080e7          	jalr	344(ra) # 80005c20 <_Z11printStringPKc>
    finishedD = true;
    80005ad0:	00100793          	li	a5,1
    80005ad4:	0000a717          	auipc	a4,0xa
    80005ad8:	14f701a3          	sb	a5,323(a4) # 8000fc17 <_ZL9finishedD>
}
    80005adc:	01813083          	ld	ra,24(sp)
    80005ae0:	01013403          	ld	s0,16(sp)
    80005ae4:	00813483          	ld	s1,8(sp)
    80005ae8:	00013903          	ld	s2,0(sp)
    80005aec:	02010113          	addi	sp,sp,32
    80005af0:	00008067          	ret

0000000080005af4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005af4:	fc010113          	addi	sp,sp,-64
    80005af8:	02113c23          	sd	ra,56(sp)
    80005afc:	02813823          	sd	s0,48(sp)
    80005b00:	02913423          	sd	s1,40(sp)
    80005b04:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005b08:	00000613          	li	a2,0
    80005b0c:	00000597          	auipc	a1,0x0
    80005b10:	aec58593          	addi	a1,a1,-1300 # 800055f8 <_Z11workerBodyAPv>
    80005b14:	fc040513          	addi	a0,s0,-64
    80005b18:	ffffb097          	auipc	ra,0xffffb
    80005b1c:	79c080e7          	jalr	1948(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005b20:	00004517          	auipc	a0,0x4
    80005b24:	96050513          	addi	a0,a0,-1696 # 80009480 <CONSOLE_STATUS+0x470>
    80005b28:	00000097          	auipc	ra,0x0
    80005b2c:	0f8080e7          	jalr	248(ra) # 80005c20 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005b30:	00000613          	li	a2,0
    80005b34:	00000597          	auipc	a1,0x0
    80005b38:	b9058593          	addi	a1,a1,-1136 # 800056c4 <_Z11workerBodyBPv>
    80005b3c:	fc840513          	addi	a0,s0,-56
    80005b40:	ffffb097          	auipc	ra,0xffffb
    80005b44:	774080e7          	jalr	1908(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005b48:	00004517          	auipc	a0,0x4
    80005b4c:	95050513          	addi	a0,a0,-1712 # 80009498 <CONSOLE_STATUS+0x488>
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	0d0080e7          	jalr	208(ra) # 80005c20 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005b58:	00000613          	li	a2,0
    80005b5c:	00000597          	auipc	a1,0x0
    80005b60:	cb058593          	addi	a1,a1,-848 # 8000580c <_Z11workerBodyCPv>
    80005b64:	fd040513          	addi	a0,s0,-48
    80005b68:	ffffb097          	auipc	ra,0xffffb
    80005b6c:	74c080e7          	jalr	1868(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005b70:	00004517          	auipc	a0,0x4
    80005b74:	94050513          	addi	a0,a0,-1728 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005b78:	00000097          	auipc	ra,0x0
    80005b7c:	0a8080e7          	jalr	168(ra) # 80005c20 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005b80:	00000613          	li	a2,0
    80005b84:	00000597          	auipc	a1,0x0
    80005b88:	e1858593          	addi	a1,a1,-488 # 8000599c <_Z11workerBodyDPv>
    80005b8c:	fd840513          	addi	a0,s0,-40
    80005b90:	ffffb097          	auipc	ra,0xffffb
    80005b94:	724080e7          	jalr	1828(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005b98:	00004517          	auipc	a0,0x4
    80005b9c:	93050513          	addi	a0,a0,-1744 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005ba0:	00000097          	auipc	ra,0x0
    80005ba4:	080080e7          	jalr	128(ra) # 80005c20 <_Z11printStringPKc>
    80005ba8:	00c0006f          	j	80005bb4 <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005bac:	ffffb097          	auipc	ra,0xffffb
    80005bb0:	788080e7          	jalr	1928(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005bb4:	0000a797          	auipc	a5,0xa
    80005bb8:	0607c783          	lbu	a5,96(a5) # 8000fc14 <_ZL9finishedA>
    80005bbc:	fe0788e3          	beqz	a5,80005bac <_Z18Threads_C_API_testv+0xb8>
    80005bc0:	0000a797          	auipc	a5,0xa
    80005bc4:	0557c783          	lbu	a5,85(a5) # 8000fc15 <_ZL9finishedB>
    80005bc8:	fe0782e3          	beqz	a5,80005bac <_Z18Threads_C_API_testv+0xb8>
    80005bcc:	0000a797          	auipc	a5,0xa
    80005bd0:	04a7c783          	lbu	a5,74(a5) # 8000fc16 <_ZL9finishedC>
    80005bd4:	fc078ce3          	beqz	a5,80005bac <_Z18Threads_C_API_testv+0xb8>
    80005bd8:	0000a797          	auipc	a5,0xa
    80005bdc:	03f7c783          	lbu	a5,63(a5) # 8000fc17 <_ZL9finishedD>
    80005be0:	fc0786e3          	beqz	a5,80005bac <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005be4:	fc040493          	addi	s1,s0,-64
    80005be8:	0080006f          	j	80005bf0 <_Z18Threads_C_API_testv+0xfc>
    80005bec:	00848493          	addi	s1,s1,8
    80005bf0:	fe040793          	addi	a5,s0,-32
    80005bf4:	00f48c63          	beq	s1,a5,80005c0c <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005bf8:	0004b503          	ld	a0,0(s1)
    80005bfc:	fe0508e3          	beqz	a0,80005bec <_Z18Threads_C_API_testv+0xf8>
    80005c00:	ffffe097          	auipc	ra,0xffffe
    80005c04:	ae4080e7          	jalr	-1308(ra) # 800036e4 <_ZdlPv>
    80005c08:	fe5ff06f          	j	80005bec <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005c0c:	03813083          	ld	ra,56(sp)
    80005c10:	03013403          	ld	s0,48(sp)
    80005c14:	02813483          	ld	s1,40(sp)
    80005c18:	04010113          	addi	sp,sp,64
    80005c1c:	00008067          	ret

0000000080005c20 <_Z11printStringPKc>:
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string)
{
    80005c20:	fe010113          	addi	sp,sp,-32
    80005c24:	00113c23          	sd	ra,24(sp)
    80005c28:	00813823          	sd	s0,16(sp)
    80005c2c:	00913423          	sd	s1,8(sp)
    80005c30:	02010413          	addi	s0,sp,32
    80005c34:	00050493          	mv	s1,a0
    LOCK();
    80005c38:	00100613          	li	a2,1
    80005c3c:	00000593          	li	a1,0
    80005c40:	0000a517          	auipc	a0,0xa
    80005c44:	fd850513          	addi	a0,a0,-40 # 8000fc18 <lockPrint>
    80005c48:	ffffb097          	auipc	ra,0xffffb
    80005c4c:	5d0080e7          	jalr	1488(ra) # 80001218 <copy_and_swap>
    80005c50:	fe0514e3          	bnez	a0,80005c38 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005c54:	0004c503          	lbu	a0,0(s1)
    80005c58:	00050a63          	beqz	a0,80005c6c <_Z11printStringPKc+0x4c>
        putc(*string);
    80005c5c:	ffffc097          	auipc	ra,0xffffc
    80005c60:	8dc080e7          	jalr	-1828(ra) # 80001538 <putc>
        string++;
    80005c64:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005c68:	fedff06f          	j	80005c54 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005c6c:	00000613          	li	a2,0
    80005c70:	00100593          	li	a1,1
    80005c74:	0000a517          	auipc	a0,0xa
    80005c78:	fa450513          	addi	a0,a0,-92 # 8000fc18 <lockPrint>
    80005c7c:	ffffb097          	auipc	ra,0xffffb
    80005c80:	59c080e7          	jalr	1436(ra) # 80001218 <copy_and_swap>
    80005c84:	fe0514e3          	bnez	a0,80005c6c <_Z11printStringPKc+0x4c>
}
    80005c88:	01813083          	ld	ra,24(sp)
    80005c8c:	01013403          	ld	s0,16(sp)
    80005c90:	00813483          	ld	s1,8(sp)
    80005c94:	02010113          	addi	sp,sp,32
    80005c98:	00008067          	ret

0000000080005c9c <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005c9c:	fd010113          	addi	sp,sp,-48
    80005ca0:	02113423          	sd	ra,40(sp)
    80005ca4:	02813023          	sd	s0,32(sp)
    80005ca8:	00913c23          	sd	s1,24(sp)
    80005cac:	01213823          	sd	s2,16(sp)
    80005cb0:	01313423          	sd	s3,8(sp)
    80005cb4:	01413023          	sd	s4,0(sp)
    80005cb8:	03010413          	addi	s0,sp,48
    80005cbc:	00050993          	mv	s3,a0
    80005cc0:	00058a13          	mv	s4,a1
    LOCK();
    80005cc4:	00100613          	li	a2,1
    80005cc8:	00000593          	li	a1,0
    80005ccc:	0000a517          	auipc	a0,0xa
    80005cd0:	f4c50513          	addi	a0,a0,-180 # 8000fc18 <lockPrint>
    80005cd4:	ffffb097          	auipc	ra,0xffffb
    80005cd8:	544080e7          	jalr	1348(ra) # 80001218 <copy_and_swap>
    80005cdc:	fe0514e3          	bnez	a0,80005cc4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005ce0:	00000913          	li	s2,0
    80005ce4:	00090493          	mv	s1,s2
    80005ce8:	0019091b          	addiw	s2,s2,1
    80005cec:	03495a63          	bge	s2,s4,80005d20 <_Z9getStringPci+0x84>
        cc = getc();
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	820080e7          	jalr	-2016(ra) # 80001510 <getc>
        if (cc < 1)
    80005cf8:	02050463          	beqz	a0,80005d20 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005cfc:	009984b3          	add	s1,s3,s1
    80005d00:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005d04:	00a00793          	li	a5,10
    80005d08:	00f50a63          	beq	a0,a5,80005d1c <_Z9getStringPci+0x80>
    80005d0c:	00d00793          	li	a5,13
    80005d10:	fcf51ae3          	bne	a0,a5,80005ce4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005d14:	00090493          	mv	s1,s2
    80005d18:	0080006f          	j	80005d20 <_Z9getStringPci+0x84>
    80005d1c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005d20:	009984b3          	add	s1,s3,s1
    80005d24:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005d28:	00000613          	li	a2,0
    80005d2c:	00100593          	li	a1,1
    80005d30:	0000a517          	auipc	a0,0xa
    80005d34:	ee850513          	addi	a0,a0,-280 # 8000fc18 <lockPrint>
    80005d38:	ffffb097          	auipc	ra,0xffffb
    80005d3c:	4e0080e7          	jalr	1248(ra) # 80001218 <copy_and_swap>
    80005d40:	fe0514e3          	bnez	a0,80005d28 <_Z9getStringPci+0x8c>
    return buf;
}
    80005d44:	00098513          	mv	a0,s3
    80005d48:	02813083          	ld	ra,40(sp)
    80005d4c:	02013403          	ld	s0,32(sp)
    80005d50:	01813483          	ld	s1,24(sp)
    80005d54:	01013903          	ld	s2,16(sp)
    80005d58:	00813983          	ld	s3,8(sp)
    80005d5c:	00013a03          	ld	s4,0(sp)
    80005d60:	03010113          	addi	sp,sp,48
    80005d64:	00008067          	ret

0000000080005d68 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005d68:	ff010113          	addi	sp,sp,-16
    80005d6c:	00813423          	sd	s0,8(sp)
    80005d70:	01010413          	addi	s0,sp,16
    80005d74:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005d78:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005d7c:	0006c603          	lbu	a2,0(a3)
    80005d80:	fd06071b          	addiw	a4,a2,-48
    80005d84:	0ff77713          	andi	a4,a4,255
    80005d88:	00900793          	li	a5,9
    80005d8c:	02e7e063          	bltu	a5,a4,80005dac <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005d90:	0025179b          	slliw	a5,a0,0x2
    80005d94:	00a787bb          	addw	a5,a5,a0
    80005d98:	0017979b          	slliw	a5,a5,0x1
    80005d9c:	00168693          	addi	a3,a3,1
    80005da0:	00c787bb          	addw	a5,a5,a2
    80005da4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005da8:	fd5ff06f          	j	80005d7c <_Z11stringToIntPKc+0x14>
    return n;
}
    80005dac:	00813403          	ld	s0,8(sp)
    80005db0:	01010113          	addi	sp,sp,16
    80005db4:	00008067          	ret

0000000080005db8 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005db8:	fc010113          	addi	sp,sp,-64
    80005dbc:	02113c23          	sd	ra,56(sp)
    80005dc0:	02813823          	sd	s0,48(sp)
    80005dc4:	02913423          	sd	s1,40(sp)
    80005dc8:	03213023          	sd	s2,32(sp)
    80005dcc:	01313c23          	sd	s3,24(sp)
    80005dd0:	04010413          	addi	s0,sp,64
    80005dd4:	00050493          	mv	s1,a0
    80005dd8:	00058913          	mv	s2,a1
    80005ddc:	00060993          	mv	s3,a2
    LOCK();
    80005de0:	00100613          	li	a2,1
    80005de4:	00000593          	li	a1,0
    80005de8:	0000a517          	auipc	a0,0xa
    80005dec:	e3050513          	addi	a0,a0,-464 # 8000fc18 <lockPrint>
    80005df0:	ffffb097          	auipc	ra,0xffffb
    80005df4:	428080e7          	jalr	1064(ra) # 80001218 <copy_and_swap>
    80005df8:	fe0514e3          	bnez	a0,80005de0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005dfc:	00098463          	beqz	s3,80005e04 <_Z8printIntiii+0x4c>
    80005e00:	0804c463          	bltz	s1,80005e88 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e04:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005e08:	00000593          	li	a1,0
    }

    i = 0;
    80005e0c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005e10:	0009079b          	sext.w	a5,s2
    80005e14:	0325773b          	remuw	a4,a0,s2
    80005e18:	00048613          	mv	a2,s1
    80005e1c:	0014849b          	addiw	s1,s1,1
    80005e20:	02071693          	slli	a3,a4,0x20
    80005e24:	0206d693          	srli	a3,a3,0x20
    80005e28:	00003717          	auipc	a4,0x3
    80005e2c:	6d870713          	addi	a4,a4,1752 # 80009500 <_ZL6digits>
    80005e30:	00d70733          	add	a4,a4,a3
    80005e34:	00074683          	lbu	a3,0(a4)
    80005e38:	fd040713          	addi	a4,s0,-48
    80005e3c:	00c70733          	add	a4,a4,a2
    80005e40:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005e44:	0005071b          	sext.w	a4,a0
    80005e48:	0325553b          	divuw	a0,a0,s2
    80005e4c:	fcf772e3          	bgeu	a4,a5,80005e10 <_Z8printIntiii+0x58>
    if (neg)
    80005e50:	00058c63          	beqz	a1,80005e68 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005e54:	fd040793          	addi	a5,s0,-48
    80005e58:	009784b3          	add	s1,a5,s1
    80005e5c:	02d00793          	li	a5,45
    80005e60:	fef48823          	sb	a5,-16(s1)
    80005e64:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005e68:	fff4849b          	addiw	s1,s1,-1
    80005e6c:	0204c463          	bltz	s1,80005e94 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005e70:	fd040793          	addi	a5,s0,-48
    80005e74:	009787b3          	add	a5,a5,s1
    80005e78:	ff07c503          	lbu	a0,-16(a5)
    80005e7c:	ffffb097          	auipc	ra,0xffffb
    80005e80:	6bc080e7          	jalr	1724(ra) # 80001538 <putc>
    80005e84:	fe5ff06f          	j	80005e68 <_Z8printIntiii+0xb0>
        x = -xx;
    80005e88:	4090053b          	negw	a0,s1
        neg = 1;
    80005e8c:	00100593          	li	a1,1
        x = -xx;
    80005e90:	f7dff06f          	j	80005e0c <_Z8printIntiii+0x54>
    UNLOCK();
    80005e94:	00000613          	li	a2,0
    80005e98:	00100593          	li	a1,1
    80005e9c:	0000a517          	auipc	a0,0xa
    80005ea0:	d7c50513          	addi	a0,a0,-644 # 8000fc18 <lockPrint>
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	374080e7          	jalr	884(ra) # 80001218 <copy_and_swap>
    80005eac:	fe0514e3          	bnez	a0,80005e94 <_Z8printIntiii+0xdc>
}
    80005eb0:	03813083          	ld	ra,56(sp)
    80005eb4:	03013403          	ld	s0,48(sp)
    80005eb8:	02813483          	ld	s1,40(sp)
    80005ebc:	02013903          	ld	s2,32(sp)
    80005ec0:	01813983          	ld	s3,24(sp)
    80005ec4:	04010113          	addi	sp,sp,64
    80005ec8:	00008067          	ret

0000000080005ecc <_Z15trapPrintStringPKc>:

void trapPrintString(char const* string)
{
    80005ecc:	fe010113          	addi	sp,sp,-32
    80005ed0:	00113c23          	sd	ra,24(sp)
    80005ed4:	00813823          	sd	s0,16(sp)
    80005ed8:	00913423          	sd	s1,8(sp)
    80005edc:	02010413          	addi	s0,sp,32
    80005ee0:	00050493          	mv	s1,a0
    LOCK();
    80005ee4:	00100613          	li	a2,1
    80005ee8:	00000593          	li	a1,0
    80005eec:	0000a517          	auipc	a0,0xa
    80005ef0:	d2c50513          	addi	a0,a0,-724 # 8000fc18 <lockPrint>
    80005ef4:	ffffb097          	auipc	ra,0xffffb
    80005ef8:	324080e7          	jalr	804(ra) # 80001218 <copy_and_swap>
    80005efc:	fe0514e3          	bnez	a0,80005ee4 <_Z15trapPrintStringPKc+0x18>
    while (*string != '\0') {
    80005f00:	0004c503          	lbu	a0,0(s1)
    80005f04:	00050a63          	beqz	a0,80005f18 <_Z15trapPrintStringPKc+0x4c>
        KConsole::putCharacterOutput(*string);
    80005f08:	ffffd097          	auipc	ra,0xffffd
    80005f0c:	fc4080e7          	jalr	-60(ra) # 80002ecc <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80005f10:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005f14:	fedff06f          	j	80005f00 <_Z15trapPrintStringPKc+0x34>
    }
    UNLOCK();
    80005f18:	00000613          	li	a2,0
    80005f1c:	00100593          	li	a1,1
    80005f20:	0000a517          	auipc	a0,0xa
    80005f24:	cf850513          	addi	a0,a0,-776 # 8000fc18 <lockPrint>
    80005f28:	ffffb097          	auipc	ra,0xffffb
    80005f2c:	2f0080e7          	jalr	752(ra) # 80001218 <copy_and_swap>
    80005f30:	fe0514e3          	bnez	a0,80005f18 <_Z15trapPrintStringPKc+0x4c>
}
    80005f34:	01813083          	ld	ra,24(sp)
    80005f38:	01013403          	ld	s0,16(sp)
    80005f3c:	00813483          	ld	s1,8(sp)
    80005f40:	02010113          	addi	sp,sp,32
    80005f44:	00008067          	ret

0000000080005f48 <_Z12trapPrintIntiii>:

void trapPrintInt(int xx, int base, int sgn)
{
    80005f48:	fc010113          	addi	sp,sp,-64
    80005f4c:	02113c23          	sd	ra,56(sp)
    80005f50:	02813823          	sd	s0,48(sp)
    80005f54:	02913423          	sd	s1,40(sp)
    80005f58:	03213023          	sd	s2,32(sp)
    80005f5c:	01313c23          	sd	s3,24(sp)
    80005f60:	04010413          	addi	s0,sp,64
    80005f64:	00050493          	mv	s1,a0
    80005f68:	00058913          	mv	s2,a1
    80005f6c:	00060993          	mv	s3,a2
    LOCK();
    80005f70:	00100613          	li	a2,1
    80005f74:	00000593          	li	a1,0
    80005f78:	0000a517          	auipc	a0,0xa
    80005f7c:	ca050513          	addi	a0,a0,-864 # 8000fc18 <lockPrint>
    80005f80:	ffffb097          	auipc	ra,0xffffb
    80005f84:	298080e7          	jalr	664(ra) # 80001218 <copy_and_swap>
    80005f88:	fe0514e3          	bnez	a0,80005f70 <_Z12trapPrintIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005f8c:	00098463          	beqz	s3,80005f94 <_Z12trapPrintIntiii+0x4c>
    80005f90:	0804c463          	bltz	s1,80006018 <_Z12trapPrintIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005f94:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005f98:	00000593          	li	a1,0
    }

    i = 0;
    80005f9c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005fa0:	0009079b          	sext.w	a5,s2
    80005fa4:	0325773b          	remuw	a4,a0,s2
    80005fa8:	00048613          	mv	a2,s1
    80005fac:	0014849b          	addiw	s1,s1,1
    80005fb0:	02071693          	slli	a3,a4,0x20
    80005fb4:	0206d693          	srli	a3,a3,0x20
    80005fb8:	00003717          	auipc	a4,0x3
    80005fbc:	54870713          	addi	a4,a4,1352 # 80009500 <_ZL6digits>
    80005fc0:	00d70733          	add	a4,a4,a3
    80005fc4:	00074683          	lbu	a3,0(a4)
    80005fc8:	fd040713          	addi	a4,s0,-48
    80005fcc:	00c70733          	add	a4,a4,a2
    80005fd0:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005fd4:	0005071b          	sext.w	a4,a0
    80005fd8:	0325553b          	divuw	a0,a0,s2
    80005fdc:	fcf772e3          	bgeu	a4,a5,80005fa0 <_Z12trapPrintIntiii+0x58>
    if (neg)
    80005fe0:	00058c63          	beqz	a1,80005ff8 <_Z12trapPrintIntiii+0xb0>
        buf[i++] = '-';
    80005fe4:	fd040793          	addi	a5,s0,-48
    80005fe8:	009784b3          	add	s1,a5,s1
    80005fec:	02d00793          	li	a5,45
    80005ff0:	fef48823          	sb	a5,-16(s1)
    80005ff4:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005ff8:	fff4849b          	addiw	s1,s1,-1
    80005ffc:	0204c463          	bltz	s1,80006024 <_Z12trapPrintIntiii+0xdc>
        KConsole::putCharacterOutput(buf[i]);
    80006000:	fd040793          	addi	a5,s0,-48
    80006004:	009787b3          	add	a5,a5,s1
    80006008:	ff07c503          	lbu	a0,-16(a5)
    8000600c:	ffffd097          	auipc	ra,0xffffd
    80006010:	ec0080e7          	jalr	-320(ra) # 80002ecc <_ZN8KConsole18putCharacterOutputEc>
    80006014:	fe5ff06f          	j	80005ff8 <_Z12trapPrintIntiii+0xb0>
        x = -xx;
    80006018:	4090053b          	negw	a0,s1
        neg = 1;
    8000601c:	00100593          	li	a1,1
        x = -xx;
    80006020:	f7dff06f          	j	80005f9c <_Z12trapPrintIntiii+0x54>
    UNLOCK();
    80006024:	00000613          	li	a2,0
    80006028:	00100593          	li	a1,1
    8000602c:	0000a517          	auipc	a0,0xa
    80006030:	bec50513          	addi	a0,a0,-1044 # 8000fc18 <lockPrint>
    80006034:	ffffb097          	auipc	ra,0xffffb
    80006038:	1e4080e7          	jalr	484(ra) # 80001218 <copy_and_swap>
    8000603c:	fe0514e3          	bnez	a0,80006024 <_Z12trapPrintIntiii+0xdc>
}
    80006040:	03813083          	ld	ra,56(sp)
    80006044:	03013403          	ld	s0,48(sp)
    80006048:	02813483          	ld	s1,40(sp)
    8000604c:	02013903          	ld	s2,32(sp)
    80006050:	01813983          	ld	s3,24(sp)
    80006054:	04010113          	addi	sp,sp,64
    80006058:	00008067          	ret

000000008000605c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    8000605c:	fe010113          	addi	sp,sp,-32
    80006060:	00113c23          	sd	ra,24(sp)
    80006064:	00813823          	sd	s0,16(sp)
    80006068:	00913423          	sd	s1,8(sp)
    8000606c:	01213023          	sd	s2,0(sp)
    80006070:	02010413          	addi	s0,sp,32
    80006074:	00050493          	mv	s1,a0
    80006078:	00b52023          	sw	a1,0(a0)
    8000607c:	00052823          	sw	zero,16(a0)
    80006080:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006084:	00259513          	slli	a0,a1,0x2
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	1d0080e7          	jalr	464(ra) # 80001258 <mem_alloc>
    80006090:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006094:	01000513          	li	a0,16
    80006098:	ffffd097          	auipc	ra,0xffffd
    8000609c:	624080e7          	jalr	1572(ra) # 800036bc <_Znwm>
    800060a0:	00050913          	mv	s2,a0
    800060a4:	00000593          	li	a1,0
    800060a8:	ffffe097          	auipc	ra,0xffffe
    800060ac:	860080e7          	jalr	-1952(ra) # 80003908 <_ZN9SemaphoreC1Ej>
    800060b0:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800060b4:	01000513          	li	a0,16
    800060b8:	ffffd097          	auipc	ra,0xffffd
    800060bc:	604080e7          	jalr	1540(ra) # 800036bc <_Znwm>
    800060c0:	00050913          	mv	s2,a0
    800060c4:	0004a583          	lw	a1,0(s1)
    800060c8:	ffffe097          	auipc	ra,0xffffe
    800060cc:	840080e7          	jalr	-1984(ra) # 80003908 <_ZN9SemaphoreC1Ej>
    800060d0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800060d4:	01000513          	li	a0,16
    800060d8:	ffffd097          	auipc	ra,0xffffd
    800060dc:	5e4080e7          	jalr	1508(ra) # 800036bc <_Znwm>
    800060e0:	00050913          	mv	s2,a0
    800060e4:	00100593          	li	a1,1
    800060e8:	ffffe097          	auipc	ra,0xffffe
    800060ec:	820080e7          	jalr	-2016(ra) # 80003908 <_ZN9SemaphoreC1Ej>
    800060f0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800060f4:	01000513          	li	a0,16
    800060f8:	ffffd097          	auipc	ra,0xffffd
    800060fc:	5c4080e7          	jalr	1476(ra) # 800036bc <_Znwm>
    80006100:	00050913          	mv	s2,a0
    80006104:	00100593          	li	a1,1
    80006108:	ffffe097          	auipc	ra,0xffffe
    8000610c:	800080e7          	jalr	-2048(ra) # 80003908 <_ZN9SemaphoreC1Ej>
    80006110:	0324b823          	sd	s2,48(s1)
}
    80006114:	01813083          	ld	ra,24(sp)
    80006118:	01013403          	ld	s0,16(sp)
    8000611c:	00813483          	ld	s1,8(sp)
    80006120:	00013903          	ld	s2,0(sp)
    80006124:	02010113          	addi	sp,sp,32
    80006128:	00008067          	ret
    8000612c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006130:	00090513          	mv	a0,s2
    80006134:	ffffd097          	auipc	ra,0xffffd
    80006138:	5b0080e7          	jalr	1456(ra) # 800036e4 <_ZdlPv>
    8000613c:	00048513          	mv	a0,s1
    80006140:	0000b097          	auipc	ra,0xb
    80006144:	bb8080e7          	jalr	-1096(ra) # 80010cf8 <_Unwind_Resume>
    80006148:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    8000614c:	00090513          	mv	a0,s2
    80006150:	ffffd097          	auipc	ra,0xffffd
    80006154:	594080e7          	jalr	1428(ra) # 800036e4 <_ZdlPv>
    80006158:	00048513          	mv	a0,s1
    8000615c:	0000b097          	auipc	ra,0xb
    80006160:	b9c080e7          	jalr	-1124(ra) # 80010cf8 <_Unwind_Resume>
    80006164:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006168:	00090513          	mv	a0,s2
    8000616c:	ffffd097          	auipc	ra,0xffffd
    80006170:	578080e7          	jalr	1400(ra) # 800036e4 <_ZdlPv>
    80006174:	00048513          	mv	a0,s1
    80006178:	0000b097          	auipc	ra,0xb
    8000617c:	b80080e7          	jalr	-1152(ra) # 80010cf8 <_Unwind_Resume>
    80006180:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006184:	00090513          	mv	a0,s2
    80006188:	ffffd097          	auipc	ra,0xffffd
    8000618c:	55c080e7          	jalr	1372(ra) # 800036e4 <_ZdlPv>
    80006190:	00048513          	mv	a0,s1
    80006194:	0000b097          	auipc	ra,0xb
    80006198:	b64080e7          	jalr	-1180(ra) # 80010cf8 <_Unwind_Resume>

000000008000619c <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    8000619c:	fe010113          	addi	sp,sp,-32
    800061a0:	00113c23          	sd	ra,24(sp)
    800061a4:	00813823          	sd	s0,16(sp)
    800061a8:	00913423          	sd	s1,8(sp)
    800061ac:	02010413          	addi	s0,sp,32
    800061b0:	00050493          	mv	s1,a0
    putc('\n');
    800061b4:	00a00513          	li	a0,10
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	380080e7          	jalr	896(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800061c0:	0104a783          	lw	a5,16(s1)
    800061c4:	0144a703          	lw	a4,20(s1)
    800061c8:	00e78c63          	beq	a5,a4,800061e0 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800061cc:	0017879b          	addiw	a5,a5,1
    800061d0:	0004a703          	lw	a4,0(s1)
    800061d4:	02e7e7bb          	remw	a5,a5,a4
    800061d8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800061dc:	fe5ff06f          	j	800061c0 <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    800061e0:	02100513          	li	a0,33
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	354080e7          	jalr	852(ra) # 80001538 <putc>
    putc('\n');
    800061ec:	00a00513          	li	a0,10
    800061f0:	ffffb097          	auipc	ra,0xffffb
    800061f4:	348080e7          	jalr	840(ra) # 80001538 <putc>

    mem_free(buffer);
    800061f8:	0084b503          	ld	a0,8(s1)
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	08c080e7          	jalr	140(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80006204:	0204b503          	ld	a0,32(s1)
    80006208:	00050863          	beqz	a0,80006218 <_ZN9BufferCPPD1Ev+0x7c>
    8000620c:	00053783          	ld	a5,0(a0)
    80006210:	0087b783          	ld	a5,8(a5)
    80006214:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006218:	0184b503          	ld	a0,24(s1)
    8000621c:	00050863          	beqz	a0,8000622c <_ZN9BufferCPPD1Ev+0x90>
    80006220:	00053783          	ld	a5,0(a0)
    80006224:	0087b783          	ld	a5,8(a5)
    80006228:	000780e7          	jalr	a5
    delete mutexTail;
    8000622c:	0304b503          	ld	a0,48(s1)
    80006230:	00050863          	beqz	a0,80006240 <_ZN9BufferCPPD1Ev+0xa4>
    80006234:	00053783          	ld	a5,0(a0)
    80006238:	0087b783          	ld	a5,8(a5)
    8000623c:	000780e7          	jalr	a5
    delete mutexHead;
    80006240:	0284b503          	ld	a0,40(s1)
    80006244:	00050863          	beqz	a0,80006254 <_ZN9BufferCPPD1Ev+0xb8>
    80006248:	00053783          	ld	a5,0(a0)
    8000624c:	0087b783          	ld	a5,8(a5)
    80006250:	000780e7          	jalr	a5

}
    80006254:	01813083          	ld	ra,24(sp)
    80006258:	01013403          	ld	s0,16(sp)
    8000625c:	00813483          	ld	s1,8(sp)
    80006260:	02010113          	addi	sp,sp,32
    80006264:	00008067          	ret

0000000080006268 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80006268:	fe010113          	addi	sp,sp,-32
    8000626c:	00113c23          	sd	ra,24(sp)
    80006270:	00813823          	sd	s0,16(sp)
    80006274:	00913423          	sd	s1,8(sp)
    80006278:	01213023          	sd	s2,0(sp)
    8000627c:	02010413          	addi	s0,sp,32
    80006280:	00050493          	mv	s1,a0
    80006284:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006288:	01853503          	ld	a0,24(a0)
    8000628c:	ffffd097          	auipc	ra,0xffffd
    80006290:	644080e7          	jalr	1604(ra) # 800038d0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006294:	0304b503          	ld	a0,48(s1)
    80006298:	ffffd097          	auipc	ra,0xffffd
    8000629c:	638080e7          	jalr	1592(ra) # 800038d0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800062a0:	0084b783          	ld	a5,8(s1)
    800062a4:	0144a703          	lw	a4,20(s1)
    800062a8:	00271713          	slli	a4,a4,0x2
    800062ac:	00e787b3          	add	a5,a5,a4
    800062b0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800062b4:	0144a783          	lw	a5,20(s1)
    800062b8:	0017879b          	addiw	a5,a5,1
    800062bc:	0004a703          	lw	a4,0(s1)
    800062c0:	02e7e7bb          	remw	a5,a5,a4
    800062c4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800062c8:	0304b503          	ld	a0,48(s1)
    800062cc:	ffffd097          	auipc	ra,0xffffd
    800062d0:	688080e7          	jalr	1672(ra) # 80003954 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800062d4:	0204b503          	ld	a0,32(s1)
    800062d8:	ffffd097          	auipc	ra,0xffffd
    800062dc:	67c080e7          	jalr	1660(ra) # 80003954 <_ZN9Semaphore6signalEv>

}
    800062e0:	01813083          	ld	ra,24(sp)
    800062e4:	01013403          	ld	s0,16(sp)
    800062e8:	00813483          	ld	s1,8(sp)
    800062ec:	00013903          	ld	s2,0(sp)
    800062f0:	02010113          	addi	sp,sp,32
    800062f4:	00008067          	ret

00000000800062f8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800062f8:	fe010113          	addi	sp,sp,-32
    800062fc:	00113c23          	sd	ra,24(sp)
    80006300:	00813823          	sd	s0,16(sp)
    80006304:	00913423          	sd	s1,8(sp)
    80006308:	01213023          	sd	s2,0(sp)
    8000630c:	02010413          	addi	s0,sp,32
    80006310:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006314:	02053503          	ld	a0,32(a0)
    80006318:	ffffd097          	auipc	ra,0xffffd
    8000631c:	5b8080e7          	jalr	1464(ra) # 800038d0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006320:	0284b503          	ld	a0,40(s1)
    80006324:	ffffd097          	auipc	ra,0xffffd
    80006328:	5ac080e7          	jalr	1452(ra) # 800038d0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000632c:	0084b703          	ld	a4,8(s1)
    80006330:	0104a783          	lw	a5,16(s1)
    80006334:	00279693          	slli	a3,a5,0x2
    80006338:	00d70733          	add	a4,a4,a3
    8000633c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006340:	0017879b          	addiw	a5,a5,1
    80006344:	0004a703          	lw	a4,0(s1)
    80006348:	02e7e7bb          	remw	a5,a5,a4
    8000634c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006350:	0284b503          	ld	a0,40(s1)
    80006354:	ffffd097          	auipc	ra,0xffffd
    80006358:	600080e7          	jalr	1536(ra) # 80003954 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000635c:	0184b503          	ld	a0,24(s1)
    80006360:	ffffd097          	auipc	ra,0xffffd
    80006364:	5f4080e7          	jalr	1524(ra) # 80003954 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006368:	00090513          	mv	a0,s2
    8000636c:	01813083          	ld	ra,24(sp)
    80006370:	01013403          	ld	s0,16(sp)
    80006374:	00813483          	ld	s1,8(sp)
    80006378:	00013903          	ld	s2,0(sp)
    8000637c:	02010113          	addi	sp,sp,32
    80006380:	00008067          	ret

0000000080006384 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80006384:	ff010113          	addi	sp,sp,-16
    80006388:	00113423          	sd	ra,8(sp)
    8000638c:	00813023          	sd	s0,0(sp)
    80006390:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80006394:	00000097          	auipc	ra,0x0
    80006398:	0bc080e7          	jalr	188(ra) # 80006450 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    8000639c:	00813083          	ld	ra,8(sp)
    800063a0:	00013403          	ld	s0,0(sp)
    800063a4:	01010113          	addi	sp,sp,16
    800063a8:	00008067          	ret

00000000800063ac <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800063ac:	fe010113          	addi	sp,sp,-32
    800063b0:	00113c23          	sd	ra,24(sp)
    800063b4:	00813823          	sd	s0,16(sp)
    800063b8:	00913423          	sd	s1,8(sp)
    800063bc:	01213023          	sd	s2,0(sp)
    800063c0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800063c4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800063c8:	00600493          	li	s1,6
    while (--i > 0) {
    800063cc:	fff4849b          	addiw	s1,s1,-1
    800063d0:	04905463          	blez	s1,80006418 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800063d4:	00003517          	auipc	a0,0x3
    800063d8:	14450513          	addi	a0,a0,324 # 80009518 <_ZL6digits+0x18>
    800063dc:	00000097          	auipc	ra,0x0
    800063e0:	844080e7          	jalr	-1980(ra) # 80005c20 <_Z11printStringPKc>
        printInt(sleep_time);
    800063e4:	00000613          	li	a2,0
    800063e8:	00a00593          	li	a1,10
    800063ec:	0009051b          	sext.w	a0,s2
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	9c8080e7          	jalr	-1592(ra) # 80005db8 <_Z8printIntiii>
        printString(" !\n");
    800063f8:	00003517          	auipc	a0,0x3
    800063fc:	12850513          	addi	a0,a0,296 # 80009520 <_ZL6digits+0x20>
    80006400:	00000097          	auipc	ra,0x0
    80006404:	820080e7          	jalr	-2016(ra) # 80005c20 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006408:	00090513          	mv	a0,s2
    8000640c:	ffffb097          	auipc	ra,0xffffb
    80006410:	02c080e7          	jalr	44(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    80006414:	fb9ff06f          	j	800063cc <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006418:	00a00793          	li	a5,10
    8000641c:	02f95933          	divu	s2,s2,a5
    80006420:	fff90913          	addi	s2,s2,-1
    80006424:	00009797          	auipc	a5,0x9
    80006428:	7fc78793          	addi	a5,a5,2044 # 8000fc20 <finished>
    8000642c:	01278933          	add	s2,a5,s2
    80006430:	00100793          	li	a5,1
    80006434:	00f90023          	sb	a5,0(s2)
}
    80006438:	01813083          	ld	ra,24(sp)
    8000643c:	01013403          	ld	s0,16(sp)
    80006440:	00813483          	ld	s1,8(sp)
    80006444:	00013903          	ld	s2,0(sp)
    80006448:	02010113          	addi	sp,sp,32
    8000644c:	00008067          	ret

0000000080006450 <_Z12testSleepingv>:

void testSleeping()
{
    80006450:	fc010113          	addi	sp,sp,-64
    80006454:	02113c23          	sd	ra,56(sp)
    80006458:	02813823          	sd	s0,48(sp)
    8000645c:	02913423          	sd	s1,40(sp)
    80006460:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006464:	00a00793          	li	a5,10
    80006468:	fcf43823          	sd	a5,-48(s0)
    8000646c:	01400793          	li	a5,20
    80006470:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006474:	00000493          	li	s1,0
    80006478:	02c0006f          	j	800064a4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000647c:	00349793          	slli	a5,s1,0x3
    80006480:	fd040613          	addi	a2,s0,-48
    80006484:	00f60633          	add	a2,a2,a5
    80006488:	00000597          	auipc	a1,0x0
    8000648c:	f2458593          	addi	a1,a1,-220 # 800063ac <_Z9sleepyRunPv>
    80006490:	fc040513          	addi	a0,s0,-64
    80006494:	00f50533          	add	a0,a0,a5
    80006498:	ffffb097          	auipc	ra,0xffffb
    8000649c:	e1c080e7          	jalr	-484(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800064a0:	0014849b          	addiw	s1,s1,1
    800064a4:	00100793          	li	a5,1
    800064a8:	fc97dae3          	bge	a5,s1,8000647c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {
    800064ac:	00009797          	auipc	a5,0x9
    800064b0:	7747c783          	lbu	a5,1908(a5) # 8000fc20 <finished>
    800064b4:	fe078ce3          	beqz	a5,800064ac <_Z12testSleepingv+0x5c>
    800064b8:	00009797          	auipc	a5,0x9
    800064bc:	7697c783          	lbu	a5,1897(a5) # 8000fc21 <finished+0x1>
    800064c0:	fe0786e3          	beqz	a5,800064ac <_Z12testSleepingv+0x5c>
        //thread_dispatch();
    }
}
    800064c4:	03813083          	ld	ra,56(sp)
    800064c8:	03013403          	ld	s0,48(sp)
    800064cc:	02813483          	ld	s1,40(sp)
    800064d0:	04010113          	addi	sp,sp,64
    800064d4:	00008067          	ret

00000000800064d8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800064d8:	fe010113          	addi	sp,sp,-32
    800064dc:	00113c23          	sd	ra,24(sp)
    800064e0:	00813823          	sd	s0,16(sp)
    800064e4:	00913423          	sd	s1,8(sp)
    800064e8:	02010413          	addi	s0,sp,32
    800064ec:	00050493          	mv	s1,a0
    800064f0:	00b52023          	sw	a1,0(a0)
    800064f4:	00052823          	sw	zero,16(a0)
    800064f8:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800064fc:	00259513          	slli	a0,a1,0x2
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	d58080e7          	jalr	-680(ra) # 80001258 <mem_alloc>
    80006508:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000650c:	00000593          	li	a1,0
    80006510:	02048513          	addi	a0,s1,32
    80006514:	ffffb097          	auipc	ra,0xffffb
    80006518:	e68080e7          	jalr	-408(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    8000651c:	0004a583          	lw	a1,0(s1)
    80006520:	01848513          	addi	a0,s1,24
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	e58080e7          	jalr	-424(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    8000652c:	00100593          	li	a1,1
    80006530:	02848513          	addi	a0,s1,40
    80006534:	ffffb097          	auipc	ra,0xffffb
    80006538:	e48080e7          	jalr	-440(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    8000653c:	00100593          	li	a1,1
    80006540:	03048513          	addi	a0,s1,48
    80006544:	ffffb097          	auipc	ra,0xffffb
    80006548:	e38080e7          	jalr	-456(ra) # 8000137c <sem_open>
}
    8000654c:	01813083          	ld	ra,24(sp)
    80006550:	01013403          	ld	s0,16(sp)
    80006554:	00813483          	ld	s1,8(sp)
    80006558:	02010113          	addi	sp,sp,32
    8000655c:	00008067          	ret

0000000080006560 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80006560:	fe010113          	addi	sp,sp,-32
    80006564:	00113c23          	sd	ra,24(sp)
    80006568:	00813823          	sd	s0,16(sp)
    8000656c:	00913423          	sd	s1,8(sp)
    80006570:	02010413          	addi	s0,sp,32
    80006574:	00050493          	mv	s1,a0
    putc('\n');
    80006578:	00a00513          	li	a0,10
    8000657c:	ffffb097          	auipc	ra,0xffffb
    80006580:	fbc080e7          	jalr	-68(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    80006584:	00003517          	auipc	a0,0x3
    80006588:	fa450513          	addi	a0,a0,-92 # 80009528 <_ZL6digits+0x28>
    8000658c:	fffff097          	auipc	ra,0xfffff
    80006590:	694080e7          	jalr	1684(ra) # 80005c20 <_Z11printStringPKc>
    while (head != tail) {
    80006594:	0104a783          	lw	a5,16(s1)
    80006598:	0144a703          	lw	a4,20(s1)
    8000659c:	00e78c63          	beq	a5,a4,800065b4 <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800065a0:	0017879b          	addiw	a5,a5,1
    800065a4:	0004a703          	lw	a4,0(s1)
    800065a8:	02e7e7bb          	remw	a5,a5,a4
    800065ac:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800065b0:	fe5ff06f          	j	80006594 <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    800065b4:	02100513          	li	a0,33
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	f80080e7          	jalr	-128(ra) # 80001538 <putc>
    putc('\n');
    800065c0:	00a00513          	li	a0,10
    800065c4:	ffffb097          	auipc	ra,0xffffb
    800065c8:	f74080e7          	jalr	-140(ra) # 80001538 <putc>

    mem_free(buffer);
    800065cc:	0084b503          	ld	a0,8(s1)
    800065d0:	ffffb097          	auipc	ra,0xffffb
    800065d4:	cb8080e7          	jalr	-840(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    800065d8:	0204b503          	ld	a0,32(s1)
    800065dc:	ffffb097          	auipc	ra,0xffffb
    800065e0:	dd8080e7          	jalr	-552(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    800065e4:	0184b503          	ld	a0,24(s1)
    800065e8:	ffffb097          	auipc	ra,0xffffb
    800065ec:	dcc080e7          	jalr	-564(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    800065f0:	0304b503          	ld	a0,48(s1)
    800065f4:	ffffb097          	auipc	ra,0xffffb
    800065f8:	dc0080e7          	jalr	-576(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    800065fc:	0284b503          	ld	a0,40(s1)
    80006600:	ffffb097          	auipc	ra,0xffffb
    80006604:	db4080e7          	jalr	-588(ra) # 800013b4 <sem_close>
}
    80006608:	01813083          	ld	ra,24(sp)
    8000660c:	01013403          	ld	s0,16(sp)
    80006610:	00813483          	ld	s1,8(sp)
    80006614:	02010113          	addi	sp,sp,32
    80006618:	00008067          	ret

000000008000661c <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    8000661c:	fe010113          	addi	sp,sp,-32
    80006620:	00113c23          	sd	ra,24(sp)
    80006624:	00813823          	sd	s0,16(sp)
    80006628:	00913423          	sd	s1,8(sp)
    8000662c:	01213023          	sd	s2,0(sp)
    80006630:	02010413          	addi	s0,sp,32
    80006634:	00050493          	mv	s1,a0
    80006638:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000663c:	01853503          	ld	a0,24(a0)
    80006640:	ffffb097          	auipc	ra,0xffffb
    80006644:	da0080e7          	jalr	-608(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80006648:	0304b503          	ld	a0,48(s1)
    8000664c:	ffffb097          	auipc	ra,0xffffb
    80006650:	d94080e7          	jalr	-620(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80006654:	0084b783          	ld	a5,8(s1)
    80006658:	0144a703          	lw	a4,20(s1)
    8000665c:	00271713          	slli	a4,a4,0x2
    80006660:	00e787b3          	add	a5,a5,a4
    80006664:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006668:	0144a783          	lw	a5,20(s1)
    8000666c:	0017879b          	addiw	a5,a5,1
    80006670:	0004a703          	lw	a4,0(s1)
    80006674:	02e7e7bb          	remw	a5,a5,a4
    80006678:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000667c:	0304b503          	ld	a0,48(s1)
    80006680:	ffffb097          	auipc	ra,0xffffb
    80006684:	d8c080e7          	jalr	-628(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80006688:	0204b503          	ld	a0,32(s1)
    8000668c:	ffffb097          	auipc	ra,0xffffb
    80006690:	d80080e7          	jalr	-640(ra) # 8000140c <sem_signal>

}
    80006694:	01813083          	ld	ra,24(sp)
    80006698:	01013403          	ld	s0,16(sp)
    8000669c:	00813483          	ld	s1,8(sp)
    800066a0:	00013903          	ld	s2,0(sp)
    800066a4:	02010113          	addi	sp,sp,32
    800066a8:	00008067          	ret

00000000800066ac <_ZN6Buffer3getEv>:

int Buffer::get() {
    800066ac:	fe010113          	addi	sp,sp,-32
    800066b0:	00113c23          	sd	ra,24(sp)
    800066b4:	00813823          	sd	s0,16(sp)
    800066b8:	00913423          	sd	s1,8(sp)
    800066bc:	01213023          	sd	s2,0(sp)
    800066c0:	02010413          	addi	s0,sp,32
    800066c4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800066c8:	02053503          	ld	a0,32(a0)
    800066cc:	ffffb097          	auipc	ra,0xffffb
    800066d0:	d14080e7          	jalr	-748(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    800066d4:	0284b503          	ld	a0,40(s1)
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	d08080e7          	jalr	-760(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    800066e0:	0084b703          	ld	a4,8(s1)
    800066e4:	0104a783          	lw	a5,16(s1)
    800066e8:	00279693          	slli	a3,a5,0x2
    800066ec:	00d70733          	add	a4,a4,a3
    800066f0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800066f4:	0017879b          	addiw	a5,a5,1
    800066f8:	0004a703          	lw	a4,0(s1)
    800066fc:	02e7e7bb          	remw	a5,a5,a4
    80006700:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006704:	0284b503          	ld	a0,40(s1)
    80006708:	ffffb097          	auipc	ra,0xffffb
    8000670c:	d04080e7          	jalr	-764(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80006710:	0184b503          	ld	a0,24(s1)
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	cf8080e7          	jalr	-776(ra) # 8000140c <sem_signal>

    return ret;
}
    8000671c:	00090513          	mv	a0,s2
    80006720:	01813083          	ld	ra,24(sp)
    80006724:	01013403          	ld	s0,16(sp)
    80006728:	00813483          	ld	s1,8(sp)
    8000672c:	00013903          	ld	s2,0(sp)
    80006730:	02010113          	addi	sp,sp,32
    80006734:	00008067          	ret

0000000080006738 <start>:
    80006738:	ff010113          	addi	sp,sp,-16
    8000673c:	00813423          	sd	s0,8(sp)
    80006740:	01010413          	addi	s0,sp,16
    80006744:	300027f3          	csrr	a5,mstatus
    80006748:	ffffe737          	lui	a4,0xffffe
    8000674c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed96f>
    80006750:	00e7f7b3          	and	a5,a5,a4
    80006754:	00001737          	lui	a4,0x1
    80006758:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000675c:	00e7e7b3          	or	a5,a5,a4
    80006760:	30079073          	csrw	mstatus,a5
    80006764:	00000797          	auipc	a5,0x0
    80006768:	16078793          	addi	a5,a5,352 # 800068c4 <system_main>
    8000676c:	34179073          	csrw	mepc,a5
    80006770:	00000793          	li	a5,0
    80006774:	18079073          	csrw	satp,a5
    80006778:	000107b7          	lui	a5,0x10
    8000677c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006780:	30279073          	csrw	medeleg,a5
    80006784:	30379073          	csrw	mideleg,a5
    80006788:	104027f3          	csrr	a5,sie
    8000678c:	2227e793          	ori	a5,a5,546
    80006790:	10479073          	csrw	sie,a5
    80006794:	fff00793          	li	a5,-1
    80006798:	00a7d793          	srli	a5,a5,0xa
    8000679c:	3b079073          	csrw	pmpaddr0,a5
    800067a0:	00f00793          	li	a5,15
    800067a4:	3a079073          	csrw	pmpcfg0,a5
    800067a8:	f14027f3          	csrr	a5,mhartid
    800067ac:	0200c737          	lui	a4,0x200c
    800067b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800067b4:	0007869b          	sext.w	a3,a5
    800067b8:	00269713          	slli	a4,a3,0x2
    800067bc:	000f4637          	lui	a2,0xf4
    800067c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067c4:	00d70733          	add	a4,a4,a3
    800067c8:	0037979b          	slliw	a5,a5,0x3
    800067cc:	020046b7          	lui	a3,0x2004
    800067d0:	00d787b3          	add	a5,a5,a3
    800067d4:	00c585b3          	add	a1,a1,a2
    800067d8:	00371693          	slli	a3,a4,0x3
    800067dc:	00009717          	auipc	a4,0x9
    800067e0:	45470713          	addi	a4,a4,1108 # 8000fc30 <timer_scratch>
    800067e4:	00b7b023          	sd	a1,0(a5)
    800067e8:	00d70733          	add	a4,a4,a3
    800067ec:	00f73c23          	sd	a5,24(a4)
    800067f0:	02c73023          	sd	a2,32(a4)
    800067f4:	34071073          	csrw	mscratch,a4
    800067f8:	00000797          	auipc	a5,0x0
    800067fc:	6e878793          	addi	a5,a5,1768 # 80006ee0 <timervec>
    80006800:	30579073          	csrw	mtvec,a5
    80006804:	300027f3          	csrr	a5,mstatus
    80006808:	0087e793          	ori	a5,a5,8
    8000680c:	30079073          	csrw	mstatus,a5
    80006810:	304027f3          	csrr	a5,mie
    80006814:	0807e793          	ori	a5,a5,128
    80006818:	30479073          	csrw	mie,a5
    8000681c:	f14027f3          	csrr	a5,mhartid
    80006820:	0007879b          	sext.w	a5,a5
    80006824:	00078213          	mv	tp,a5
    80006828:	30200073          	mret
    8000682c:	00813403          	ld	s0,8(sp)
    80006830:	01010113          	addi	sp,sp,16
    80006834:	00008067          	ret

0000000080006838 <timerinit>:
    80006838:	ff010113          	addi	sp,sp,-16
    8000683c:	00813423          	sd	s0,8(sp)
    80006840:	01010413          	addi	s0,sp,16
    80006844:	f14027f3          	csrr	a5,mhartid
    80006848:	0200c737          	lui	a4,0x200c
    8000684c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006850:	0007869b          	sext.w	a3,a5
    80006854:	00269713          	slli	a4,a3,0x2
    80006858:	000f4637          	lui	a2,0xf4
    8000685c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006860:	00d70733          	add	a4,a4,a3
    80006864:	0037979b          	slliw	a5,a5,0x3
    80006868:	020046b7          	lui	a3,0x2004
    8000686c:	00d787b3          	add	a5,a5,a3
    80006870:	00c585b3          	add	a1,a1,a2
    80006874:	00371693          	slli	a3,a4,0x3
    80006878:	00009717          	auipc	a4,0x9
    8000687c:	3b870713          	addi	a4,a4,952 # 8000fc30 <timer_scratch>
    80006880:	00b7b023          	sd	a1,0(a5)
    80006884:	00d70733          	add	a4,a4,a3
    80006888:	00f73c23          	sd	a5,24(a4)
    8000688c:	02c73023          	sd	a2,32(a4)
    80006890:	34071073          	csrw	mscratch,a4
    80006894:	00000797          	auipc	a5,0x0
    80006898:	64c78793          	addi	a5,a5,1612 # 80006ee0 <timervec>
    8000689c:	30579073          	csrw	mtvec,a5
    800068a0:	300027f3          	csrr	a5,mstatus
    800068a4:	0087e793          	ori	a5,a5,8
    800068a8:	30079073          	csrw	mstatus,a5
    800068ac:	304027f3          	csrr	a5,mie
    800068b0:	0807e793          	ori	a5,a5,128
    800068b4:	30479073          	csrw	mie,a5
    800068b8:	00813403          	ld	s0,8(sp)
    800068bc:	01010113          	addi	sp,sp,16
    800068c0:	00008067          	ret

00000000800068c4 <system_main>:
    800068c4:	fe010113          	addi	sp,sp,-32
    800068c8:	00813823          	sd	s0,16(sp)
    800068cc:	00913423          	sd	s1,8(sp)
    800068d0:	00113c23          	sd	ra,24(sp)
    800068d4:	02010413          	addi	s0,sp,32
    800068d8:	00000097          	auipc	ra,0x0
    800068dc:	0c4080e7          	jalr	196(ra) # 8000699c <cpuid>
    800068e0:	00005497          	auipc	s1,0x5
    800068e4:	22048493          	addi	s1,s1,544 # 8000bb00 <started>
    800068e8:	02050263          	beqz	a0,8000690c <system_main+0x48>
    800068ec:	0004a783          	lw	a5,0(s1)
    800068f0:	0007879b          	sext.w	a5,a5
    800068f4:	fe078ce3          	beqz	a5,800068ec <system_main+0x28>
    800068f8:	0ff0000f          	fence
    800068fc:	00003517          	auipc	a0,0x3
    80006900:	c7450513          	addi	a0,a0,-908 # 80009570 <_ZL6digits+0x70>
    80006904:	00001097          	auipc	ra,0x1
    80006908:	a78080e7          	jalr	-1416(ra) # 8000737c <panic>
    8000690c:	00001097          	auipc	ra,0x1
    80006910:	9cc080e7          	jalr	-1588(ra) # 800072d8 <consoleinit>
    80006914:	00001097          	auipc	ra,0x1
    80006918:	158080e7          	jalr	344(ra) # 80007a6c <printfinit>
    8000691c:	00002517          	auipc	a0,0x2
    80006920:	7e450513          	addi	a0,a0,2020 # 80009100 <CONSOLE_STATUS+0xf0>
    80006924:	00001097          	auipc	ra,0x1
    80006928:	ab4080e7          	jalr	-1356(ra) # 800073d8 <__printf>
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	c1450513          	addi	a0,a0,-1004 # 80009540 <_ZL6digits+0x40>
    80006934:	00001097          	auipc	ra,0x1
    80006938:	aa4080e7          	jalr	-1372(ra) # 800073d8 <__printf>
    8000693c:	00002517          	auipc	a0,0x2
    80006940:	7c450513          	addi	a0,a0,1988 # 80009100 <CONSOLE_STATUS+0xf0>
    80006944:	00001097          	auipc	ra,0x1
    80006948:	a94080e7          	jalr	-1388(ra) # 800073d8 <__printf>
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	4ac080e7          	jalr	1196(ra) # 80007df8 <kinit>
    80006954:	00000097          	auipc	ra,0x0
    80006958:	148080e7          	jalr	328(ra) # 80006a9c <trapinit>
    8000695c:	00000097          	auipc	ra,0x0
    80006960:	16c080e7          	jalr	364(ra) # 80006ac8 <trapinithart>
    80006964:	00000097          	auipc	ra,0x0
    80006968:	5bc080e7          	jalr	1468(ra) # 80006f20 <plicinit>
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	5dc080e7          	jalr	1500(ra) # 80006f48 <plicinithart>
    80006974:	00000097          	auipc	ra,0x0
    80006978:	078080e7          	jalr	120(ra) # 800069ec <userinit>
    8000697c:	0ff0000f          	fence
    80006980:	00100793          	li	a5,1
    80006984:	00003517          	auipc	a0,0x3
    80006988:	bd450513          	addi	a0,a0,-1068 # 80009558 <_ZL6digits+0x58>
    8000698c:	00f4a023          	sw	a5,0(s1)
    80006990:	00001097          	auipc	ra,0x1
    80006994:	a48080e7          	jalr	-1464(ra) # 800073d8 <__printf>
    80006998:	0000006f          	j	80006998 <system_main+0xd4>

000000008000699c <cpuid>:
    8000699c:	ff010113          	addi	sp,sp,-16
    800069a0:	00813423          	sd	s0,8(sp)
    800069a4:	01010413          	addi	s0,sp,16
    800069a8:	00020513          	mv	a0,tp
    800069ac:	00813403          	ld	s0,8(sp)
    800069b0:	0005051b          	sext.w	a0,a0
    800069b4:	01010113          	addi	sp,sp,16
    800069b8:	00008067          	ret

00000000800069bc <mycpu>:
    800069bc:	ff010113          	addi	sp,sp,-16
    800069c0:	00813423          	sd	s0,8(sp)
    800069c4:	01010413          	addi	s0,sp,16
    800069c8:	00020793          	mv	a5,tp
    800069cc:	00813403          	ld	s0,8(sp)
    800069d0:	0007879b          	sext.w	a5,a5
    800069d4:	00779793          	slli	a5,a5,0x7
    800069d8:	0000a517          	auipc	a0,0xa
    800069dc:	28850513          	addi	a0,a0,648 # 80010c60 <cpus>
    800069e0:	00f50533          	add	a0,a0,a5
    800069e4:	01010113          	addi	sp,sp,16
    800069e8:	00008067          	ret

00000000800069ec <userinit>:
    800069ec:	ff010113          	addi	sp,sp,-16
    800069f0:	00813423          	sd	s0,8(sp)
    800069f4:	01010413          	addi	s0,sp,16
    800069f8:	00813403          	ld	s0,8(sp)
    800069fc:	01010113          	addi	sp,sp,16
    80006a00:	ffffd317          	auipc	t1,0xffffd
    80006a04:	bf830067          	jr	-1032(t1) # 800035f8 <main>

0000000080006a08 <either_copyout>:
    80006a08:	ff010113          	addi	sp,sp,-16
    80006a0c:	00813023          	sd	s0,0(sp)
    80006a10:	00113423          	sd	ra,8(sp)
    80006a14:	01010413          	addi	s0,sp,16
    80006a18:	02051663          	bnez	a0,80006a44 <either_copyout+0x3c>
    80006a1c:	00058513          	mv	a0,a1
    80006a20:	00060593          	mv	a1,a2
    80006a24:	0006861b          	sext.w	a2,a3
    80006a28:	00002097          	auipc	ra,0x2
    80006a2c:	c5c080e7          	jalr	-932(ra) # 80008684 <__memmove>
    80006a30:	00813083          	ld	ra,8(sp)
    80006a34:	00013403          	ld	s0,0(sp)
    80006a38:	00000513          	li	a0,0
    80006a3c:	01010113          	addi	sp,sp,16
    80006a40:	00008067          	ret
    80006a44:	00003517          	auipc	a0,0x3
    80006a48:	b5450513          	addi	a0,a0,-1196 # 80009598 <_ZL6digits+0x98>
    80006a4c:	00001097          	auipc	ra,0x1
    80006a50:	930080e7          	jalr	-1744(ra) # 8000737c <panic>

0000000080006a54 <either_copyin>:
    80006a54:	ff010113          	addi	sp,sp,-16
    80006a58:	00813023          	sd	s0,0(sp)
    80006a5c:	00113423          	sd	ra,8(sp)
    80006a60:	01010413          	addi	s0,sp,16
    80006a64:	02059463          	bnez	a1,80006a8c <either_copyin+0x38>
    80006a68:	00060593          	mv	a1,a2
    80006a6c:	0006861b          	sext.w	a2,a3
    80006a70:	00002097          	auipc	ra,0x2
    80006a74:	c14080e7          	jalr	-1004(ra) # 80008684 <__memmove>
    80006a78:	00813083          	ld	ra,8(sp)
    80006a7c:	00013403          	ld	s0,0(sp)
    80006a80:	00000513          	li	a0,0
    80006a84:	01010113          	addi	sp,sp,16
    80006a88:	00008067          	ret
    80006a8c:	00003517          	auipc	a0,0x3
    80006a90:	b3450513          	addi	a0,a0,-1228 # 800095c0 <_ZL6digits+0xc0>
    80006a94:	00001097          	auipc	ra,0x1
    80006a98:	8e8080e7          	jalr	-1816(ra) # 8000737c <panic>

0000000080006a9c <trapinit>:
    80006a9c:	ff010113          	addi	sp,sp,-16
    80006aa0:	00813423          	sd	s0,8(sp)
    80006aa4:	01010413          	addi	s0,sp,16
    80006aa8:	00813403          	ld	s0,8(sp)
    80006aac:	00003597          	auipc	a1,0x3
    80006ab0:	b3c58593          	addi	a1,a1,-1220 # 800095e8 <_ZL6digits+0xe8>
    80006ab4:	0000a517          	auipc	a0,0xa
    80006ab8:	22c50513          	addi	a0,a0,556 # 80010ce0 <tickslock>
    80006abc:	01010113          	addi	sp,sp,16
    80006ac0:	00001317          	auipc	t1,0x1
    80006ac4:	5c830067          	jr	1480(t1) # 80008088 <initlock>

0000000080006ac8 <trapinithart>:
    80006ac8:	ff010113          	addi	sp,sp,-16
    80006acc:	00813423          	sd	s0,8(sp)
    80006ad0:	01010413          	addi	s0,sp,16
    80006ad4:	00000797          	auipc	a5,0x0
    80006ad8:	2fc78793          	addi	a5,a5,764 # 80006dd0 <kernelvec>
    80006adc:	10579073          	csrw	stvec,a5
    80006ae0:	00813403          	ld	s0,8(sp)
    80006ae4:	01010113          	addi	sp,sp,16
    80006ae8:	00008067          	ret

0000000080006aec <usertrap>:
    80006aec:	ff010113          	addi	sp,sp,-16
    80006af0:	00813423          	sd	s0,8(sp)
    80006af4:	01010413          	addi	s0,sp,16
    80006af8:	00813403          	ld	s0,8(sp)
    80006afc:	01010113          	addi	sp,sp,16
    80006b00:	00008067          	ret

0000000080006b04 <usertrapret>:
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00813423          	sd	s0,8(sp)
    80006b0c:	01010413          	addi	s0,sp,16
    80006b10:	00813403          	ld	s0,8(sp)
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <kerneltrap>:
    80006b1c:	fe010113          	addi	sp,sp,-32
    80006b20:	00813823          	sd	s0,16(sp)
    80006b24:	00113c23          	sd	ra,24(sp)
    80006b28:	00913423          	sd	s1,8(sp)
    80006b2c:	02010413          	addi	s0,sp,32
    80006b30:	142025f3          	csrr	a1,scause
    80006b34:	100027f3          	csrr	a5,sstatus
    80006b38:	0027f793          	andi	a5,a5,2
    80006b3c:	10079c63          	bnez	a5,80006c54 <kerneltrap+0x138>
    80006b40:	142027f3          	csrr	a5,scause
    80006b44:	0207ce63          	bltz	a5,80006b80 <kerneltrap+0x64>
    80006b48:	00003517          	auipc	a0,0x3
    80006b4c:	ae850513          	addi	a0,a0,-1304 # 80009630 <_ZL6digits+0x130>
    80006b50:	00001097          	auipc	ra,0x1
    80006b54:	888080e7          	jalr	-1912(ra) # 800073d8 <__printf>
    80006b58:	141025f3          	csrr	a1,sepc
    80006b5c:	14302673          	csrr	a2,stval
    80006b60:	00003517          	auipc	a0,0x3
    80006b64:	ae050513          	addi	a0,a0,-1312 # 80009640 <_ZL6digits+0x140>
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	870080e7          	jalr	-1936(ra) # 800073d8 <__printf>
    80006b70:	00003517          	auipc	a0,0x3
    80006b74:	ae850513          	addi	a0,a0,-1304 # 80009658 <_ZL6digits+0x158>
    80006b78:	00001097          	auipc	ra,0x1
    80006b7c:	804080e7          	jalr	-2044(ra) # 8000737c <panic>
    80006b80:	0ff7f713          	andi	a4,a5,255
    80006b84:	00900693          	li	a3,9
    80006b88:	04d70063          	beq	a4,a3,80006bc8 <kerneltrap+0xac>
    80006b8c:	fff00713          	li	a4,-1
    80006b90:	03f71713          	slli	a4,a4,0x3f
    80006b94:	00170713          	addi	a4,a4,1
    80006b98:	fae798e3          	bne	a5,a4,80006b48 <kerneltrap+0x2c>
    80006b9c:	00000097          	auipc	ra,0x0
    80006ba0:	e00080e7          	jalr	-512(ra) # 8000699c <cpuid>
    80006ba4:	06050663          	beqz	a0,80006c10 <kerneltrap+0xf4>
    80006ba8:	144027f3          	csrr	a5,sip
    80006bac:	ffd7f793          	andi	a5,a5,-3
    80006bb0:	14479073          	csrw	sip,a5
    80006bb4:	01813083          	ld	ra,24(sp)
    80006bb8:	01013403          	ld	s0,16(sp)
    80006bbc:	00813483          	ld	s1,8(sp)
    80006bc0:	02010113          	addi	sp,sp,32
    80006bc4:	00008067          	ret
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	3cc080e7          	jalr	972(ra) # 80006f94 <plic_claim>
    80006bd0:	00a00793          	li	a5,10
    80006bd4:	00050493          	mv	s1,a0
    80006bd8:	06f50863          	beq	a0,a5,80006c48 <kerneltrap+0x12c>
    80006bdc:	fc050ce3          	beqz	a0,80006bb4 <kerneltrap+0x98>
    80006be0:	00050593          	mv	a1,a0
    80006be4:	00003517          	auipc	a0,0x3
    80006be8:	a2c50513          	addi	a0,a0,-1492 # 80009610 <_ZL6digits+0x110>
    80006bec:	00000097          	auipc	ra,0x0
    80006bf0:	7ec080e7          	jalr	2028(ra) # 800073d8 <__printf>
    80006bf4:	01013403          	ld	s0,16(sp)
    80006bf8:	01813083          	ld	ra,24(sp)
    80006bfc:	00048513          	mv	a0,s1
    80006c00:	00813483          	ld	s1,8(sp)
    80006c04:	02010113          	addi	sp,sp,32
    80006c08:	00000317          	auipc	t1,0x0
    80006c0c:	3c430067          	jr	964(t1) # 80006fcc <plic_complete>
    80006c10:	0000a517          	auipc	a0,0xa
    80006c14:	0d050513          	addi	a0,a0,208 # 80010ce0 <tickslock>
    80006c18:	00001097          	auipc	ra,0x1
    80006c1c:	494080e7          	jalr	1172(ra) # 800080ac <acquire>
    80006c20:	00005717          	auipc	a4,0x5
    80006c24:	ee470713          	addi	a4,a4,-284 # 8000bb04 <ticks>
    80006c28:	00072783          	lw	a5,0(a4)
    80006c2c:	0000a517          	auipc	a0,0xa
    80006c30:	0b450513          	addi	a0,a0,180 # 80010ce0 <tickslock>
    80006c34:	0017879b          	addiw	a5,a5,1
    80006c38:	00f72023          	sw	a5,0(a4)
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	53c080e7          	jalr	1340(ra) # 80008178 <release>
    80006c44:	f65ff06f          	j	80006ba8 <kerneltrap+0x8c>
    80006c48:	00001097          	auipc	ra,0x1
    80006c4c:	098080e7          	jalr	152(ra) # 80007ce0 <uartintr>
    80006c50:	fa5ff06f          	j	80006bf4 <kerneltrap+0xd8>
    80006c54:	00003517          	auipc	a0,0x3
    80006c58:	99c50513          	addi	a0,a0,-1636 # 800095f0 <_ZL6digits+0xf0>
    80006c5c:	00000097          	auipc	ra,0x0
    80006c60:	720080e7          	jalr	1824(ra) # 8000737c <panic>

0000000080006c64 <clockintr>:
    80006c64:	fe010113          	addi	sp,sp,-32
    80006c68:	00813823          	sd	s0,16(sp)
    80006c6c:	00913423          	sd	s1,8(sp)
    80006c70:	00113c23          	sd	ra,24(sp)
    80006c74:	02010413          	addi	s0,sp,32
    80006c78:	0000a497          	auipc	s1,0xa
    80006c7c:	06848493          	addi	s1,s1,104 # 80010ce0 <tickslock>
    80006c80:	00048513          	mv	a0,s1
    80006c84:	00001097          	auipc	ra,0x1
    80006c88:	428080e7          	jalr	1064(ra) # 800080ac <acquire>
    80006c8c:	00005717          	auipc	a4,0x5
    80006c90:	e7870713          	addi	a4,a4,-392 # 8000bb04 <ticks>
    80006c94:	00072783          	lw	a5,0(a4)
    80006c98:	01013403          	ld	s0,16(sp)
    80006c9c:	01813083          	ld	ra,24(sp)
    80006ca0:	00048513          	mv	a0,s1
    80006ca4:	0017879b          	addiw	a5,a5,1
    80006ca8:	00813483          	ld	s1,8(sp)
    80006cac:	00f72023          	sw	a5,0(a4)
    80006cb0:	02010113          	addi	sp,sp,32
    80006cb4:	00001317          	auipc	t1,0x1
    80006cb8:	4c430067          	jr	1220(t1) # 80008178 <release>

0000000080006cbc <devintr>:
    80006cbc:	142027f3          	csrr	a5,scause
    80006cc0:	00000513          	li	a0,0
    80006cc4:	0007c463          	bltz	a5,80006ccc <devintr+0x10>
    80006cc8:	00008067          	ret
    80006ccc:	fe010113          	addi	sp,sp,-32
    80006cd0:	00813823          	sd	s0,16(sp)
    80006cd4:	00113c23          	sd	ra,24(sp)
    80006cd8:	00913423          	sd	s1,8(sp)
    80006cdc:	02010413          	addi	s0,sp,32
    80006ce0:	0ff7f713          	andi	a4,a5,255
    80006ce4:	00900693          	li	a3,9
    80006ce8:	04d70c63          	beq	a4,a3,80006d40 <devintr+0x84>
    80006cec:	fff00713          	li	a4,-1
    80006cf0:	03f71713          	slli	a4,a4,0x3f
    80006cf4:	00170713          	addi	a4,a4,1
    80006cf8:	00e78c63          	beq	a5,a4,80006d10 <devintr+0x54>
    80006cfc:	01813083          	ld	ra,24(sp)
    80006d00:	01013403          	ld	s0,16(sp)
    80006d04:	00813483          	ld	s1,8(sp)
    80006d08:	02010113          	addi	sp,sp,32
    80006d0c:	00008067          	ret
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	c8c080e7          	jalr	-884(ra) # 8000699c <cpuid>
    80006d18:	06050663          	beqz	a0,80006d84 <devintr+0xc8>
    80006d1c:	144027f3          	csrr	a5,sip
    80006d20:	ffd7f793          	andi	a5,a5,-3
    80006d24:	14479073          	csrw	sip,a5
    80006d28:	01813083          	ld	ra,24(sp)
    80006d2c:	01013403          	ld	s0,16(sp)
    80006d30:	00813483          	ld	s1,8(sp)
    80006d34:	00200513          	li	a0,2
    80006d38:	02010113          	addi	sp,sp,32
    80006d3c:	00008067          	ret
    80006d40:	00000097          	auipc	ra,0x0
    80006d44:	254080e7          	jalr	596(ra) # 80006f94 <plic_claim>
    80006d48:	00a00793          	li	a5,10
    80006d4c:	00050493          	mv	s1,a0
    80006d50:	06f50663          	beq	a0,a5,80006dbc <devintr+0x100>
    80006d54:	00100513          	li	a0,1
    80006d58:	fa0482e3          	beqz	s1,80006cfc <devintr+0x40>
    80006d5c:	00048593          	mv	a1,s1
    80006d60:	00003517          	auipc	a0,0x3
    80006d64:	8b050513          	addi	a0,a0,-1872 # 80009610 <_ZL6digits+0x110>
    80006d68:	00000097          	auipc	ra,0x0
    80006d6c:	670080e7          	jalr	1648(ra) # 800073d8 <__printf>
    80006d70:	00048513          	mv	a0,s1
    80006d74:	00000097          	auipc	ra,0x0
    80006d78:	258080e7          	jalr	600(ra) # 80006fcc <plic_complete>
    80006d7c:	00100513          	li	a0,1
    80006d80:	f7dff06f          	j	80006cfc <devintr+0x40>
    80006d84:	0000a517          	auipc	a0,0xa
    80006d88:	f5c50513          	addi	a0,a0,-164 # 80010ce0 <tickslock>
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	320080e7          	jalr	800(ra) # 800080ac <acquire>
    80006d94:	00005717          	auipc	a4,0x5
    80006d98:	d7070713          	addi	a4,a4,-656 # 8000bb04 <ticks>
    80006d9c:	00072783          	lw	a5,0(a4)
    80006da0:	0000a517          	auipc	a0,0xa
    80006da4:	f4050513          	addi	a0,a0,-192 # 80010ce0 <tickslock>
    80006da8:	0017879b          	addiw	a5,a5,1
    80006dac:	00f72023          	sw	a5,0(a4)
    80006db0:	00001097          	auipc	ra,0x1
    80006db4:	3c8080e7          	jalr	968(ra) # 80008178 <release>
    80006db8:	f65ff06f          	j	80006d1c <devintr+0x60>
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	f24080e7          	jalr	-220(ra) # 80007ce0 <uartintr>
    80006dc4:	fadff06f          	j	80006d70 <devintr+0xb4>
	...

0000000080006dd0 <kernelvec>:
    80006dd0:	f0010113          	addi	sp,sp,-256
    80006dd4:	00113023          	sd	ra,0(sp)
    80006dd8:	00213423          	sd	sp,8(sp)
    80006ddc:	00313823          	sd	gp,16(sp)
    80006de0:	00413c23          	sd	tp,24(sp)
    80006de4:	02513023          	sd	t0,32(sp)
    80006de8:	02613423          	sd	t1,40(sp)
    80006dec:	02713823          	sd	t2,48(sp)
    80006df0:	02813c23          	sd	s0,56(sp)
    80006df4:	04913023          	sd	s1,64(sp)
    80006df8:	04a13423          	sd	a0,72(sp)
    80006dfc:	04b13823          	sd	a1,80(sp)
    80006e00:	04c13c23          	sd	a2,88(sp)
    80006e04:	06d13023          	sd	a3,96(sp)
    80006e08:	06e13423          	sd	a4,104(sp)
    80006e0c:	06f13823          	sd	a5,112(sp)
    80006e10:	07013c23          	sd	a6,120(sp)
    80006e14:	09113023          	sd	a7,128(sp)
    80006e18:	09213423          	sd	s2,136(sp)
    80006e1c:	09313823          	sd	s3,144(sp)
    80006e20:	09413c23          	sd	s4,152(sp)
    80006e24:	0b513023          	sd	s5,160(sp)
    80006e28:	0b613423          	sd	s6,168(sp)
    80006e2c:	0b713823          	sd	s7,176(sp)
    80006e30:	0b813c23          	sd	s8,184(sp)
    80006e34:	0d913023          	sd	s9,192(sp)
    80006e38:	0da13423          	sd	s10,200(sp)
    80006e3c:	0db13823          	sd	s11,208(sp)
    80006e40:	0dc13c23          	sd	t3,216(sp)
    80006e44:	0fd13023          	sd	t4,224(sp)
    80006e48:	0fe13423          	sd	t5,232(sp)
    80006e4c:	0ff13823          	sd	t6,240(sp)
    80006e50:	ccdff0ef          	jal	ra,80006b1c <kerneltrap>
    80006e54:	00013083          	ld	ra,0(sp)
    80006e58:	00813103          	ld	sp,8(sp)
    80006e5c:	01013183          	ld	gp,16(sp)
    80006e60:	02013283          	ld	t0,32(sp)
    80006e64:	02813303          	ld	t1,40(sp)
    80006e68:	03013383          	ld	t2,48(sp)
    80006e6c:	03813403          	ld	s0,56(sp)
    80006e70:	04013483          	ld	s1,64(sp)
    80006e74:	04813503          	ld	a0,72(sp)
    80006e78:	05013583          	ld	a1,80(sp)
    80006e7c:	05813603          	ld	a2,88(sp)
    80006e80:	06013683          	ld	a3,96(sp)
    80006e84:	06813703          	ld	a4,104(sp)
    80006e88:	07013783          	ld	a5,112(sp)
    80006e8c:	07813803          	ld	a6,120(sp)
    80006e90:	08013883          	ld	a7,128(sp)
    80006e94:	08813903          	ld	s2,136(sp)
    80006e98:	09013983          	ld	s3,144(sp)
    80006e9c:	09813a03          	ld	s4,152(sp)
    80006ea0:	0a013a83          	ld	s5,160(sp)
    80006ea4:	0a813b03          	ld	s6,168(sp)
    80006ea8:	0b013b83          	ld	s7,176(sp)
    80006eac:	0b813c03          	ld	s8,184(sp)
    80006eb0:	0c013c83          	ld	s9,192(sp)
    80006eb4:	0c813d03          	ld	s10,200(sp)
    80006eb8:	0d013d83          	ld	s11,208(sp)
    80006ebc:	0d813e03          	ld	t3,216(sp)
    80006ec0:	0e013e83          	ld	t4,224(sp)
    80006ec4:	0e813f03          	ld	t5,232(sp)
    80006ec8:	0f013f83          	ld	t6,240(sp)
    80006ecc:	10010113          	addi	sp,sp,256
    80006ed0:	10200073          	sret
    80006ed4:	00000013          	nop
    80006ed8:	00000013          	nop
    80006edc:	00000013          	nop

0000000080006ee0 <timervec>:
    80006ee0:	34051573          	csrrw	a0,mscratch,a0
    80006ee4:	00b53023          	sd	a1,0(a0)
    80006ee8:	00c53423          	sd	a2,8(a0)
    80006eec:	00d53823          	sd	a3,16(a0)
    80006ef0:	01853583          	ld	a1,24(a0)
    80006ef4:	02053603          	ld	a2,32(a0)
    80006ef8:	0005b683          	ld	a3,0(a1)
    80006efc:	00c686b3          	add	a3,a3,a2
    80006f00:	00d5b023          	sd	a3,0(a1)
    80006f04:	00200593          	li	a1,2
    80006f08:	14459073          	csrw	sip,a1
    80006f0c:	01053683          	ld	a3,16(a0)
    80006f10:	00853603          	ld	a2,8(a0)
    80006f14:	00053583          	ld	a1,0(a0)
    80006f18:	34051573          	csrrw	a0,mscratch,a0
    80006f1c:	30200073          	mret

0000000080006f20 <plicinit>:
    80006f20:	ff010113          	addi	sp,sp,-16
    80006f24:	00813423          	sd	s0,8(sp)
    80006f28:	01010413          	addi	s0,sp,16
    80006f2c:	00813403          	ld	s0,8(sp)
    80006f30:	0c0007b7          	lui	a5,0xc000
    80006f34:	00100713          	li	a4,1
    80006f38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006f3c:	00e7a223          	sw	a4,4(a5)
    80006f40:	01010113          	addi	sp,sp,16
    80006f44:	00008067          	ret

0000000080006f48 <plicinithart>:
    80006f48:	ff010113          	addi	sp,sp,-16
    80006f4c:	00813023          	sd	s0,0(sp)
    80006f50:	00113423          	sd	ra,8(sp)
    80006f54:	01010413          	addi	s0,sp,16
    80006f58:	00000097          	auipc	ra,0x0
    80006f5c:	a44080e7          	jalr	-1468(ra) # 8000699c <cpuid>
    80006f60:	0085171b          	slliw	a4,a0,0x8
    80006f64:	0c0027b7          	lui	a5,0xc002
    80006f68:	00e787b3          	add	a5,a5,a4
    80006f6c:	40200713          	li	a4,1026
    80006f70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006f74:	00813083          	ld	ra,8(sp)
    80006f78:	00013403          	ld	s0,0(sp)
    80006f7c:	00d5151b          	slliw	a0,a0,0xd
    80006f80:	0c2017b7          	lui	a5,0xc201
    80006f84:	00a78533          	add	a0,a5,a0
    80006f88:	00052023          	sw	zero,0(a0)
    80006f8c:	01010113          	addi	sp,sp,16
    80006f90:	00008067          	ret

0000000080006f94 <plic_claim>:
    80006f94:	ff010113          	addi	sp,sp,-16
    80006f98:	00813023          	sd	s0,0(sp)
    80006f9c:	00113423          	sd	ra,8(sp)
    80006fa0:	01010413          	addi	s0,sp,16
    80006fa4:	00000097          	auipc	ra,0x0
    80006fa8:	9f8080e7          	jalr	-1544(ra) # 8000699c <cpuid>
    80006fac:	00813083          	ld	ra,8(sp)
    80006fb0:	00013403          	ld	s0,0(sp)
    80006fb4:	00d5151b          	slliw	a0,a0,0xd
    80006fb8:	0c2017b7          	lui	a5,0xc201
    80006fbc:	00a78533          	add	a0,a5,a0
    80006fc0:	00452503          	lw	a0,4(a0)
    80006fc4:	01010113          	addi	sp,sp,16
    80006fc8:	00008067          	ret

0000000080006fcc <plic_complete>:
    80006fcc:	fe010113          	addi	sp,sp,-32
    80006fd0:	00813823          	sd	s0,16(sp)
    80006fd4:	00913423          	sd	s1,8(sp)
    80006fd8:	00113c23          	sd	ra,24(sp)
    80006fdc:	02010413          	addi	s0,sp,32
    80006fe0:	00050493          	mv	s1,a0
    80006fe4:	00000097          	auipc	ra,0x0
    80006fe8:	9b8080e7          	jalr	-1608(ra) # 8000699c <cpuid>
    80006fec:	01813083          	ld	ra,24(sp)
    80006ff0:	01013403          	ld	s0,16(sp)
    80006ff4:	00d5179b          	slliw	a5,a0,0xd
    80006ff8:	0c201737          	lui	a4,0xc201
    80006ffc:	00f707b3          	add	a5,a4,a5
    80007000:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007004:	00813483          	ld	s1,8(sp)
    80007008:	02010113          	addi	sp,sp,32
    8000700c:	00008067          	ret

0000000080007010 <consolewrite>:
    80007010:	fb010113          	addi	sp,sp,-80
    80007014:	04813023          	sd	s0,64(sp)
    80007018:	04113423          	sd	ra,72(sp)
    8000701c:	02913c23          	sd	s1,56(sp)
    80007020:	03213823          	sd	s2,48(sp)
    80007024:	03313423          	sd	s3,40(sp)
    80007028:	03413023          	sd	s4,32(sp)
    8000702c:	01513c23          	sd	s5,24(sp)
    80007030:	05010413          	addi	s0,sp,80
    80007034:	06c05c63          	blez	a2,800070ac <consolewrite+0x9c>
    80007038:	00060993          	mv	s3,a2
    8000703c:	00050a13          	mv	s4,a0
    80007040:	00058493          	mv	s1,a1
    80007044:	00000913          	li	s2,0
    80007048:	fff00a93          	li	s5,-1
    8000704c:	01c0006f          	j	80007068 <consolewrite+0x58>
    80007050:	fbf44503          	lbu	a0,-65(s0)
    80007054:	0019091b          	addiw	s2,s2,1
    80007058:	00148493          	addi	s1,s1,1
    8000705c:	00001097          	auipc	ra,0x1
    80007060:	a9c080e7          	jalr	-1380(ra) # 80007af8 <uartputc>
    80007064:	03298063          	beq	s3,s2,80007084 <consolewrite+0x74>
    80007068:	00048613          	mv	a2,s1
    8000706c:	00100693          	li	a3,1
    80007070:	000a0593          	mv	a1,s4
    80007074:	fbf40513          	addi	a0,s0,-65
    80007078:	00000097          	auipc	ra,0x0
    8000707c:	9dc080e7          	jalr	-1572(ra) # 80006a54 <either_copyin>
    80007080:	fd5518e3          	bne	a0,s5,80007050 <consolewrite+0x40>
    80007084:	04813083          	ld	ra,72(sp)
    80007088:	04013403          	ld	s0,64(sp)
    8000708c:	03813483          	ld	s1,56(sp)
    80007090:	02813983          	ld	s3,40(sp)
    80007094:	02013a03          	ld	s4,32(sp)
    80007098:	01813a83          	ld	s5,24(sp)
    8000709c:	00090513          	mv	a0,s2
    800070a0:	03013903          	ld	s2,48(sp)
    800070a4:	05010113          	addi	sp,sp,80
    800070a8:	00008067          	ret
    800070ac:	00000913          	li	s2,0
    800070b0:	fd5ff06f          	j	80007084 <consolewrite+0x74>

00000000800070b4 <consoleread>:
    800070b4:	f9010113          	addi	sp,sp,-112
    800070b8:	06813023          	sd	s0,96(sp)
    800070bc:	04913c23          	sd	s1,88(sp)
    800070c0:	05213823          	sd	s2,80(sp)
    800070c4:	05313423          	sd	s3,72(sp)
    800070c8:	05413023          	sd	s4,64(sp)
    800070cc:	03513c23          	sd	s5,56(sp)
    800070d0:	03613823          	sd	s6,48(sp)
    800070d4:	03713423          	sd	s7,40(sp)
    800070d8:	03813023          	sd	s8,32(sp)
    800070dc:	06113423          	sd	ra,104(sp)
    800070e0:	01913c23          	sd	s9,24(sp)
    800070e4:	07010413          	addi	s0,sp,112
    800070e8:	00060b93          	mv	s7,a2
    800070ec:	00050913          	mv	s2,a0
    800070f0:	00058c13          	mv	s8,a1
    800070f4:	00060b1b          	sext.w	s6,a2
    800070f8:	0000a497          	auipc	s1,0xa
    800070fc:	c1048493          	addi	s1,s1,-1008 # 80010d08 <cons>
    80007100:	00400993          	li	s3,4
    80007104:	fff00a13          	li	s4,-1
    80007108:	00a00a93          	li	s5,10
    8000710c:	05705e63          	blez	s7,80007168 <consoleread+0xb4>
    80007110:	09c4a703          	lw	a4,156(s1)
    80007114:	0984a783          	lw	a5,152(s1)
    80007118:	0007071b          	sext.w	a4,a4
    8000711c:	08e78463          	beq	a5,a4,800071a4 <consoleread+0xf0>
    80007120:	07f7f713          	andi	a4,a5,127
    80007124:	00e48733          	add	a4,s1,a4
    80007128:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000712c:	0017869b          	addiw	a3,a5,1
    80007130:	08d4ac23          	sw	a3,152(s1)
    80007134:	00070c9b          	sext.w	s9,a4
    80007138:	0b370663          	beq	a4,s3,800071e4 <consoleread+0x130>
    8000713c:	00100693          	li	a3,1
    80007140:	f9f40613          	addi	a2,s0,-97
    80007144:	000c0593          	mv	a1,s8
    80007148:	00090513          	mv	a0,s2
    8000714c:	f8e40fa3          	sb	a4,-97(s0)
    80007150:	00000097          	auipc	ra,0x0
    80007154:	8b8080e7          	jalr	-1864(ra) # 80006a08 <either_copyout>
    80007158:	01450863          	beq	a0,s4,80007168 <consoleread+0xb4>
    8000715c:	001c0c13          	addi	s8,s8,1
    80007160:	fffb8b9b          	addiw	s7,s7,-1
    80007164:	fb5c94e3          	bne	s9,s5,8000710c <consoleread+0x58>
    80007168:	000b851b          	sext.w	a0,s7
    8000716c:	06813083          	ld	ra,104(sp)
    80007170:	06013403          	ld	s0,96(sp)
    80007174:	05813483          	ld	s1,88(sp)
    80007178:	05013903          	ld	s2,80(sp)
    8000717c:	04813983          	ld	s3,72(sp)
    80007180:	04013a03          	ld	s4,64(sp)
    80007184:	03813a83          	ld	s5,56(sp)
    80007188:	02813b83          	ld	s7,40(sp)
    8000718c:	02013c03          	ld	s8,32(sp)
    80007190:	01813c83          	ld	s9,24(sp)
    80007194:	40ab053b          	subw	a0,s6,a0
    80007198:	03013b03          	ld	s6,48(sp)
    8000719c:	07010113          	addi	sp,sp,112
    800071a0:	00008067          	ret
    800071a4:	00001097          	auipc	ra,0x1
    800071a8:	1d8080e7          	jalr	472(ra) # 8000837c <push_on>
    800071ac:	0984a703          	lw	a4,152(s1)
    800071b0:	09c4a783          	lw	a5,156(s1)
    800071b4:	0007879b          	sext.w	a5,a5
    800071b8:	fef70ce3          	beq	a4,a5,800071b0 <consoleread+0xfc>
    800071bc:	00001097          	auipc	ra,0x1
    800071c0:	234080e7          	jalr	564(ra) # 800083f0 <pop_on>
    800071c4:	0984a783          	lw	a5,152(s1)
    800071c8:	07f7f713          	andi	a4,a5,127
    800071cc:	00e48733          	add	a4,s1,a4
    800071d0:	01874703          	lbu	a4,24(a4)
    800071d4:	0017869b          	addiw	a3,a5,1
    800071d8:	08d4ac23          	sw	a3,152(s1)
    800071dc:	00070c9b          	sext.w	s9,a4
    800071e0:	f5371ee3          	bne	a4,s3,8000713c <consoleread+0x88>
    800071e4:	000b851b          	sext.w	a0,s7
    800071e8:	f96bf2e3          	bgeu	s7,s6,8000716c <consoleread+0xb8>
    800071ec:	08f4ac23          	sw	a5,152(s1)
    800071f0:	f7dff06f          	j	8000716c <consoleread+0xb8>

00000000800071f4 <consputc>:
    800071f4:	10000793          	li	a5,256
    800071f8:	00f50663          	beq	a0,a5,80007204 <consputc+0x10>
    800071fc:	00001317          	auipc	t1,0x1
    80007200:	9f430067          	jr	-1548(t1) # 80007bf0 <uartputc_sync>
    80007204:	ff010113          	addi	sp,sp,-16
    80007208:	00113423          	sd	ra,8(sp)
    8000720c:	00813023          	sd	s0,0(sp)
    80007210:	01010413          	addi	s0,sp,16
    80007214:	00800513          	li	a0,8
    80007218:	00001097          	auipc	ra,0x1
    8000721c:	9d8080e7          	jalr	-1576(ra) # 80007bf0 <uartputc_sync>
    80007220:	02000513          	li	a0,32
    80007224:	00001097          	auipc	ra,0x1
    80007228:	9cc080e7          	jalr	-1588(ra) # 80007bf0 <uartputc_sync>
    8000722c:	00013403          	ld	s0,0(sp)
    80007230:	00813083          	ld	ra,8(sp)
    80007234:	00800513          	li	a0,8
    80007238:	01010113          	addi	sp,sp,16
    8000723c:	00001317          	auipc	t1,0x1
    80007240:	9b430067          	jr	-1612(t1) # 80007bf0 <uartputc_sync>

0000000080007244 <consoleintr>:
    80007244:	fe010113          	addi	sp,sp,-32
    80007248:	00813823          	sd	s0,16(sp)
    8000724c:	00913423          	sd	s1,8(sp)
    80007250:	01213023          	sd	s2,0(sp)
    80007254:	00113c23          	sd	ra,24(sp)
    80007258:	02010413          	addi	s0,sp,32
    8000725c:	0000a917          	auipc	s2,0xa
    80007260:	aac90913          	addi	s2,s2,-1364 # 80010d08 <cons>
    80007264:	00050493          	mv	s1,a0
    80007268:	00090513          	mv	a0,s2
    8000726c:	00001097          	auipc	ra,0x1
    80007270:	e40080e7          	jalr	-448(ra) # 800080ac <acquire>
    80007274:	02048c63          	beqz	s1,800072ac <consoleintr+0x68>
    80007278:	0a092783          	lw	a5,160(s2)
    8000727c:	09892703          	lw	a4,152(s2)
    80007280:	07f00693          	li	a3,127
    80007284:	40e7873b          	subw	a4,a5,a4
    80007288:	02e6e263          	bltu	a3,a4,800072ac <consoleintr+0x68>
    8000728c:	00d00713          	li	a4,13
    80007290:	04e48063          	beq	s1,a4,800072d0 <consoleintr+0x8c>
    80007294:	07f7f713          	andi	a4,a5,127
    80007298:	00e90733          	add	a4,s2,a4
    8000729c:	0017879b          	addiw	a5,a5,1
    800072a0:	0af92023          	sw	a5,160(s2)
    800072a4:	00970c23          	sb	s1,24(a4)
    800072a8:	08f92e23          	sw	a5,156(s2)
    800072ac:	01013403          	ld	s0,16(sp)
    800072b0:	01813083          	ld	ra,24(sp)
    800072b4:	00813483          	ld	s1,8(sp)
    800072b8:	00013903          	ld	s2,0(sp)
    800072bc:	0000a517          	auipc	a0,0xa
    800072c0:	a4c50513          	addi	a0,a0,-1460 # 80010d08 <cons>
    800072c4:	02010113          	addi	sp,sp,32
    800072c8:	00001317          	auipc	t1,0x1
    800072cc:	eb030067          	jr	-336(t1) # 80008178 <release>
    800072d0:	00a00493          	li	s1,10
    800072d4:	fc1ff06f          	j	80007294 <consoleintr+0x50>

00000000800072d8 <consoleinit>:
    800072d8:	fe010113          	addi	sp,sp,-32
    800072dc:	00113c23          	sd	ra,24(sp)
    800072e0:	00813823          	sd	s0,16(sp)
    800072e4:	00913423          	sd	s1,8(sp)
    800072e8:	02010413          	addi	s0,sp,32
    800072ec:	0000a497          	auipc	s1,0xa
    800072f0:	a1c48493          	addi	s1,s1,-1508 # 80010d08 <cons>
    800072f4:	00048513          	mv	a0,s1
    800072f8:	00002597          	auipc	a1,0x2
    800072fc:	37058593          	addi	a1,a1,880 # 80009668 <_ZL6digits+0x168>
    80007300:	00001097          	auipc	ra,0x1
    80007304:	d88080e7          	jalr	-632(ra) # 80008088 <initlock>
    80007308:	00000097          	auipc	ra,0x0
    8000730c:	7ac080e7          	jalr	1964(ra) # 80007ab4 <uartinit>
    80007310:	01813083          	ld	ra,24(sp)
    80007314:	01013403          	ld	s0,16(sp)
    80007318:	00000797          	auipc	a5,0x0
    8000731c:	d9c78793          	addi	a5,a5,-612 # 800070b4 <consoleread>
    80007320:	0af4bc23          	sd	a5,184(s1)
    80007324:	00000797          	auipc	a5,0x0
    80007328:	cec78793          	addi	a5,a5,-788 # 80007010 <consolewrite>
    8000732c:	0cf4b023          	sd	a5,192(s1)
    80007330:	00813483          	ld	s1,8(sp)
    80007334:	02010113          	addi	sp,sp,32
    80007338:	00008067          	ret

000000008000733c <console_read>:
    8000733c:	ff010113          	addi	sp,sp,-16
    80007340:	00813423          	sd	s0,8(sp)
    80007344:	01010413          	addi	s0,sp,16
    80007348:	00813403          	ld	s0,8(sp)
    8000734c:	0000a317          	auipc	t1,0xa
    80007350:	a7433303          	ld	t1,-1420(t1) # 80010dc0 <devsw+0x10>
    80007354:	01010113          	addi	sp,sp,16
    80007358:	00030067          	jr	t1

000000008000735c <console_write>:
    8000735c:	ff010113          	addi	sp,sp,-16
    80007360:	00813423          	sd	s0,8(sp)
    80007364:	01010413          	addi	s0,sp,16
    80007368:	00813403          	ld	s0,8(sp)
    8000736c:	0000a317          	auipc	t1,0xa
    80007370:	a5c33303          	ld	t1,-1444(t1) # 80010dc8 <devsw+0x18>
    80007374:	01010113          	addi	sp,sp,16
    80007378:	00030067          	jr	t1

000000008000737c <panic>:
    8000737c:	fe010113          	addi	sp,sp,-32
    80007380:	00113c23          	sd	ra,24(sp)
    80007384:	00813823          	sd	s0,16(sp)
    80007388:	00913423          	sd	s1,8(sp)
    8000738c:	02010413          	addi	s0,sp,32
    80007390:	00050493          	mv	s1,a0
    80007394:	00002517          	auipc	a0,0x2
    80007398:	2dc50513          	addi	a0,a0,732 # 80009670 <_ZL6digits+0x170>
    8000739c:	0000a797          	auipc	a5,0xa
    800073a0:	ac07a623          	sw	zero,-1332(a5) # 80010e68 <pr+0x18>
    800073a4:	00000097          	auipc	ra,0x0
    800073a8:	034080e7          	jalr	52(ra) # 800073d8 <__printf>
    800073ac:	00048513          	mv	a0,s1
    800073b0:	00000097          	auipc	ra,0x0
    800073b4:	028080e7          	jalr	40(ra) # 800073d8 <__printf>
    800073b8:	00002517          	auipc	a0,0x2
    800073bc:	d4850513          	addi	a0,a0,-696 # 80009100 <CONSOLE_STATUS+0xf0>
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	018080e7          	jalr	24(ra) # 800073d8 <__printf>
    800073c8:	00100793          	li	a5,1
    800073cc:	00004717          	auipc	a4,0x4
    800073d0:	72f72e23          	sw	a5,1852(a4) # 8000bb08 <panicked>
    800073d4:	0000006f          	j	800073d4 <panic+0x58>

00000000800073d8 <__printf>:
    800073d8:	f3010113          	addi	sp,sp,-208
    800073dc:	08813023          	sd	s0,128(sp)
    800073e0:	07313423          	sd	s3,104(sp)
    800073e4:	09010413          	addi	s0,sp,144
    800073e8:	05813023          	sd	s8,64(sp)
    800073ec:	08113423          	sd	ra,136(sp)
    800073f0:	06913c23          	sd	s1,120(sp)
    800073f4:	07213823          	sd	s2,112(sp)
    800073f8:	07413023          	sd	s4,96(sp)
    800073fc:	05513c23          	sd	s5,88(sp)
    80007400:	05613823          	sd	s6,80(sp)
    80007404:	05713423          	sd	s7,72(sp)
    80007408:	03913c23          	sd	s9,56(sp)
    8000740c:	03a13823          	sd	s10,48(sp)
    80007410:	03b13423          	sd	s11,40(sp)
    80007414:	0000a317          	auipc	t1,0xa
    80007418:	a3c30313          	addi	t1,t1,-1476 # 80010e50 <pr>
    8000741c:	01832c03          	lw	s8,24(t1)
    80007420:	00b43423          	sd	a1,8(s0)
    80007424:	00c43823          	sd	a2,16(s0)
    80007428:	00d43c23          	sd	a3,24(s0)
    8000742c:	02e43023          	sd	a4,32(s0)
    80007430:	02f43423          	sd	a5,40(s0)
    80007434:	03043823          	sd	a6,48(s0)
    80007438:	03143c23          	sd	a7,56(s0)
    8000743c:	00050993          	mv	s3,a0
    80007440:	4a0c1663          	bnez	s8,800078ec <__printf+0x514>
    80007444:	60098c63          	beqz	s3,80007a5c <__printf+0x684>
    80007448:	0009c503          	lbu	a0,0(s3)
    8000744c:	00840793          	addi	a5,s0,8
    80007450:	f6f43c23          	sd	a5,-136(s0)
    80007454:	00000493          	li	s1,0
    80007458:	22050063          	beqz	a0,80007678 <__printf+0x2a0>
    8000745c:	00002a37          	lui	s4,0x2
    80007460:	00018ab7          	lui	s5,0x18
    80007464:	000f4b37          	lui	s6,0xf4
    80007468:	00989bb7          	lui	s7,0x989
    8000746c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007470:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007474:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007478:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000747c:	00148c9b          	addiw	s9,s1,1
    80007480:	02500793          	li	a5,37
    80007484:	01998933          	add	s2,s3,s9
    80007488:	38f51263          	bne	a0,a5,8000780c <__printf+0x434>
    8000748c:	00094783          	lbu	a5,0(s2)
    80007490:	00078c9b          	sext.w	s9,a5
    80007494:	1e078263          	beqz	a5,80007678 <__printf+0x2a0>
    80007498:	0024849b          	addiw	s1,s1,2
    8000749c:	07000713          	li	a4,112
    800074a0:	00998933          	add	s2,s3,s1
    800074a4:	38e78a63          	beq	a5,a4,80007838 <__printf+0x460>
    800074a8:	20f76863          	bltu	a4,a5,800076b8 <__printf+0x2e0>
    800074ac:	42a78863          	beq	a5,a0,800078dc <__printf+0x504>
    800074b0:	06400713          	li	a4,100
    800074b4:	40e79663          	bne	a5,a4,800078c0 <__printf+0x4e8>
    800074b8:	f7843783          	ld	a5,-136(s0)
    800074bc:	0007a603          	lw	a2,0(a5)
    800074c0:	00878793          	addi	a5,a5,8
    800074c4:	f6f43c23          	sd	a5,-136(s0)
    800074c8:	42064a63          	bltz	a2,800078fc <__printf+0x524>
    800074cc:	00a00713          	li	a4,10
    800074d0:	02e677bb          	remuw	a5,a2,a4
    800074d4:	00002d97          	auipc	s11,0x2
    800074d8:	1c4d8d93          	addi	s11,s11,452 # 80009698 <digits>
    800074dc:	00900593          	li	a1,9
    800074e0:	0006051b          	sext.w	a0,a2
    800074e4:	00000c93          	li	s9,0
    800074e8:	02079793          	slli	a5,a5,0x20
    800074ec:	0207d793          	srli	a5,a5,0x20
    800074f0:	00fd87b3          	add	a5,s11,a5
    800074f4:	0007c783          	lbu	a5,0(a5)
    800074f8:	02e656bb          	divuw	a3,a2,a4
    800074fc:	f8f40023          	sb	a5,-128(s0)
    80007500:	14c5d863          	bge	a1,a2,80007650 <__printf+0x278>
    80007504:	06300593          	li	a1,99
    80007508:	00100c93          	li	s9,1
    8000750c:	02e6f7bb          	remuw	a5,a3,a4
    80007510:	02079793          	slli	a5,a5,0x20
    80007514:	0207d793          	srli	a5,a5,0x20
    80007518:	00fd87b3          	add	a5,s11,a5
    8000751c:	0007c783          	lbu	a5,0(a5)
    80007520:	02e6d73b          	divuw	a4,a3,a4
    80007524:	f8f400a3          	sb	a5,-127(s0)
    80007528:	12a5f463          	bgeu	a1,a0,80007650 <__printf+0x278>
    8000752c:	00a00693          	li	a3,10
    80007530:	00900593          	li	a1,9
    80007534:	02d777bb          	remuw	a5,a4,a3
    80007538:	02079793          	slli	a5,a5,0x20
    8000753c:	0207d793          	srli	a5,a5,0x20
    80007540:	00fd87b3          	add	a5,s11,a5
    80007544:	0007c503          	lbu	a0,0(a5)
    80007548:	02d757bb          	divuw	a5,a4,a3
    8000754c:	f8a40123          	sb	a0,-126(s0)
    80007550:	48e5f263          	bgeu	a1,a4,800079d4 <__printf+0x5fc>
    80007554:	06300513          	li	a0,99
    80007558:	02d7f5bb          	remuw	a1,a5,a3
    8000755c:	02059593          	slli	a1,a1,0x20
    80007560:	0205d593          	srli	a1,a1,0x20
    80007564:	00bd85b3          	add	a1,s11,a1
    80007568:	0005c583          	lbu	a1,0(a1)
    8000756c:	02d7d7bb          	divuw	a5,a5,a3
    80007570:	f8b401a3          	sb	a1,-125(s0)
    80007574:	48e57263          	bgeu	a0,a4,800079f8 <__printf+0x620>
    80007578:	3e700513          	li	a0,999
    8000757c:	02d7f5bb          	remuw	a1,a5,a3
    80007580:	02059593          	slli	a1,a1,0x20
    80007584:	0205d593          	srli	a1,a1,0x20
    80007588:	00bd85b3          	add	a1,s11,a1
    8000758c:	0005c583          	lbu	a1,0(a1)
    80007590:	02d7d7bb          	divuw	a5,a5,a3
    80007594:	f8b40223          	sb	a1,-124(s0)
    80007598:	46e57663          	bgeu	a0,a4,80007a04 <__printf+0x62c>
    8000759c:	02d7f5bb          	remuw	a1,a5,a3
    800075a0:	02059593          	slli	a1,a1,0x20
    800075a4:	0205d593          	srli	a1,a1,0x20
    800075a8:	00bd85b3          	add	a1,s11,a1
    800075ac:	0005c583          	lbu	a1,0(a1)
    800075b0:	02d7d7bb          	divuw	a5,a5,a3
    800075b4:	f8b402a3          	sb	a1,-123(s0)
    800075b8:	46ea7863          	bgeu	s4,a4,80007a28 <__printf+0x650>
    800075bc:	02d7f5bb          	remuw	a1,a5,a3
    800075c0:	02059593          	slli	a1,a1,0x20
    800075c4:	0205d593          	srli	a1,a1,0x20
    800075c8:	00bd85b3          	add	a1,s11,a1
    800075cc:	0005c583          	lbu	a1,0(a1)
    800075d0:	02d7d7bb          	divuw	a5,a5,a3
    800075d4:	f8b40323          	sb	a1,-122(s0)
    800075d8:	3eeaf863          	bgeu	s5,a4,800079c8 <__printf+0x5f0>
    800075dc:	02d7f5bb          	remuw	a1,a5,a3
    800075e0:	02059593          	slli	a1,a1,0x20
    800075e4:	0205d593          	srli	a1,a1,0x20
    800075e8:	00bd85b3          	add	a1,s11,a1
    800075ec:	0005c583          	lbu	a1,0(a1)
    800075f0:	02d7d7bb          	divuw	a5,a5,a3
    800075f4:	f8b403a3          	sb	a1,-121(s0)
    800075f8:	42eb7e63          	bgeu	s6,a4,80007a34 <__printf+0x65c>
    800075fc:	02d7f5bb          	remuw	a1,a5,a3
    80007600:	02059593          	slli	a1,a1,0x20
    80007604:	0205d593          	srli	a1,a1,0x20
    80007608:	00bd85b3          	add	a1,s11,a1
    8000760c:	0005c583          	lbu	a1,0(a1)
    80007610:	02d7d7bb          	divuw	a5,a5,a3
    80007614:	f8b40423          	sb	a1,-120(s0)
    80007618:	42ebfc63          	bgeu	s7,a4,80007a50 <__printf+0x678>
    8000761c:	02079793          	slli	a5,a5,0x20
    80007620:	0207d793          	srli	a5,a5,0x20
    80007624:	00fd8db3          	add	s11,s11,a5
    80007628:	000dc703          	lbu	a4,0(s11)
    8000762c:	00a00793          	li	a5,10
    80007630:	00900c93          	li	s9,9
    80007634:	f8e404a3          	sb	a4,-119(s0)
    80007638:	00065c63          	bgez	a2,80007650 <__printf+0x278>
    8000763c:	f9040713          	addi	a4,s0,-112
    80007640:	00f70733          	add	a4,a4,a5
    80007644:	02d00693          	li	a3,45
    80007648:	fed70823          	sb	a3,-16(a4)
    8000764c:	00078c93          	mv	s9,a5
    80007650:	f8040793          	addi	a5,s0,-128
    80007654:	01978cb3          	add	s9,a5,s9
    80007658:	f7f40d13          	addi	s10,s0,-129
    8000765c:	000cc503          	lbu	a0,0(s9)
    80007660:	fffc8c93          	addi	s9,s9,-1
    80007664:	00000097          	auipc	ra,0x0
    80007668:	b90080e7          	jalr	-1136(ra) # 800071f4 <consputc>
    8000766c:	ffac98e3          	bne	s9,s10,8000765c <__printf+0x284>
    80007670:	00094503          	lbu	a0,0(s2)
    80007674:	e00514e3          	bnez	a0,8000747c <__printf+0xa4>
    80007678:	1a0c1663          	bnez	s8,80007824 <__printf+0x44c>
    8000767c:	08813083          	ld	ra,136(sp)
    80007680:	08013403          	ld	s0,128(sp)
    80007684:	07813483          	ld	s1,120(sp)
    80007688:	07013903          	ld	s2,112(sp)
    8000768c:	06813983          	ld	s3,104(sp)
    80007690:	06013a03          	ld	s4,96(sp)
    80007694:	05813a83          	ld	s5,88(sp)
    80007698:	05013b03          	ld	s6,80(sp)
    8000769c:	04813b83          	ld	s7,72(sp)
    800076a0:	04013c03          	ld	s8,64(sp)
    800076a4:	03813c83          	ld	s9,56(sp)
    800076a8:	03013d03          	ld	s10,48(sp)
    800076ac:	02813d83          	ld	s11,40(sp)
    800076b0:	0d010113          	addi	sp,sp,208
    800076b4:	00008067          	ret
    800076b8:	07300713          	li	a4,115
    800076bc:	1ce78a63          	beq	a5,a4,80007890 <__printf+0x4b8>
    800076c0:	07800713          	li	a4,120
    800076c4:	1ee79e63          	bne	a5,a4,800078c0 <__printf+0x4e8>
    800076c8:	f7843783          	ld	a5,-136(s0)
    800076cc:	0007a703          	lw	a4,0(a5)
    800076d0:	00878793          	addi	a5,a5,8
    800076d4:	f6f43c23          	sd	a5,-136(s0)
    800076d8:	28074263          	bltz	a4,8000795c <__printf+0x584>
    800076dc:	00002d97          	auipc	s11,0x2
    800076e0:	fbcd8d93          	addi	s11,s11,-68 # 80009698 <digits>
    800076e4:	00f77793          	andi	a5,a4,15
    800076e8:	00fd87b3          	add	a5,s11,a5
    800076ec:	0007c683          	lbu	a3,0(a5)
    800076f0:	00f00613          	li	a2,15
    800076f4:	0007079b          	sext.w	a5,a4
    800076f8:	f8d40023          	sb	a3,-128(s0)
    800076fc:	0047559b          	srliw	a1,a4,0x4
    80007700:	0047569b          	srliw	a3,a4,0x4
    80007704:	00000c93          	li	s9,0
    80007708:	0ee65063          	bge	a2,a4,800077e8 <__printf+0x410>
    8000770c:	00f6f693          	andi	a3,a3,15
    80007710:	00dd86b3          	add	a3,s11,a3
    80007714:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007718:	0087d79b          	srliw	a5,a5,0x8
    8000771c:	00100c93          	li	s9,1
    80007720:	f8d400a3          	sb	a3,-127(s0)
    80007724:	0cb67263          	bgeu	a2,a1,800077e8 <__printf+0x410>
    80007728:	00f7f693          	andi	a3,a5,15
    8000772c:	00dd86b3          	add	a3,s11,a3
    80007730:	0006c583          	lbu	a1,0(a3)
    80007734:	00f00613          	li	a2,15
    80007738:	0047d69b          	srliw	a3,a5,0x4
    8000773c:	f8b40123          	sb	a1,-126(s0)
    80007740:	0047d593          	srli	a1,a5,0x4
    80007744:	28f67e63          	bgeu	a2,a5,800079e0 <__printf+0x608>
    80007748:	00f6f693          	andi	a3,a3,15
    8000774c:	00dd86b3          	add	a3,s11,a3
    80007750:	0006c503          	lbu	a0,0(a3)
    80007754:	0087d813          	srli	a6,a5,0x8
    80007758:	0087d69b          	srliw	a3,a5,0x8
    8000775c:	f8a401a3          	sb	a0,-125(s0)
    80007760:	28b67663          	bgeu	a2,a1,800079ec <__printf+0x614>
    80007764:	00f6f693          	andi	a3,a3,15
    80007768:	00dd86b3          	add	a3,s11,a3
    8000776c:	0006c583          	lbu	a1,0(a3)
    80007770:	00c7d513          	srli	a0,a5,0xc
    80007774:	00c7d69b          	srliw	a3,a5,0xc
    80007778:	f8b40223          	sb	a1,-124(s0)
    8000777c:	29067a63          	bgeu	a2,a6,80007a10 <__printf+0x638>
    80007780:	00f6f693          	andi	a3,a3,15
    80007784:	00dd86b3          	add	a3,s11,a3
    80007788:	0006c583          	lbu	a1,0(a3)
    8000778c:	0107d813          	srli	a6,a5,0x10
    80007790:	0107d69b          	srliw	a3,a5,0x10
    80007794:	f8b402a3          	sb	a1,-123(s0)
    80007798:	28a67263          	bgeu	a2,a0,80007a1c <__printf+0x644>
    8000779c:	00f6f693          	andi	a3,a3,15
    800077a0:	00dd86b3          	add	a3,s11,a3
    800077a4:	0006c683          	lbu	a3,0(a3)
    800077a8:	0147d79b          	srliw	a5,a5,0x14
    800077ac:	f8d40323          	sb	a3,-122(s0)
    800077b0:	21067663          	bgeu	a2,a6,800079bc <__printf+0x5e4>
    800077b4:	02079793          	slli	a5,a5,0x20
    800077b8:	0207d793          	srli	a5,a5,0x20
    800077bc:	00fd8db3          	add	s11,s11,a5
    800077c0:	000dc683          	lbu	a3,0(s11)
    800077c4:	00800793          	li	a5,8
    800077c8:	00700c93          	li	s9,7
    800077cc:	f8d403a3          	sb	a3,-121(s0)
    800077d0:	00075c63          	bgez	a4,800077e8 <__printf+0x410>
    800077d4:	f9040713          	addi	a4,s0,-112
    800077d8:	00f70733          	add	a4,a4,a5
    800077dc:	02d00693          	li	a3,45
    800077e0:	fed70823          	sb	a3,-16(a4)
    800077e4:	00078c93          	mv	s9,a5
    800077e8:	f8040793          	addi	a5,s0,-128
    800077ec:	01978cb3          	add	s9,a5,s9
    800077f0:	f7f40d13          	addi	s10,s0,-129
    800077f4:	000cc503          	lbu	a0,0(s9)
    800077f8:	fffc8c93          	addi	s9,s9,-1
    800077fc:	00000097          	auipc	ra,0x0
    80007800:	9f8080e7          	jalr	-1544(ra) # 800071f4 <consputc>
    80007804:	ff9d18e3          	bne	s10,s9,800077f4 <__printf+0x41c>
    80007808:	0100006f          	j	80007818 <__printf+0x440>
    8000780c:	00000097          	auipc	ra,0x0
    80007810:	9e8080e7          	jalr	-1560(ra) # 800071f4 <consputc>
    80007814:	000c8493          	mv	s1,s9
    80007818:	00094503          	lbu	a0,0(s2)
    8000781c:	c60510e3          	bnez	a0,8000747c <__printf+0xa4>
    80007820:	e40c0ee3          	beqz	s8,8000767c <__printf+0x2a4>
    80007824:	00009517          	auipc	a0,0x9
    80007828:	62c50513          	addi	a0,a0,1580 # 80010e50 <pr>
    8000782c:	00001097          	auipc	ra,0x1
    80007830:	94c080e7          	jalr	-1716(ra) # 80008178 <release>
    80007834:	e49ff06f          	j	8000767c <__printf+0x2a4>
    80007838:	f7843783          	ld	a5,-136(s0)
    8000783c:	03000513          	li	a0,48
    80007840:	01000d13          	li	s10,16
    80007844:	00878713          	addi	a4,a5,8
    80007848:	0007bc83          	ld	s9,0(a5)
    8000784c:	f6e43c23          	sd	a4,-136(s0)
    80007850:	00000097          	auipc	ra,0x0
    80007854:	9a4080e7          	jalr	-1628(ra) # 800071f4 <consputc>
    80007858:	07800513          	li	a0,120
    8000785c:	00000097          	auipc	ra,0x0
    80007860:	998080e7          	jalr	-1640(ra) # 800071f4 <consputc>
    80007864:	00002d97          	auipc	s11,0x2
    80007868:	e34d8d93          	addi	s11,s11,-460 # 80009698 <digits>
    8000786c:	03ccd793          	srli	a5,s9,0x3c
    80007870:	00fd87b3          	add	a5,s11,a5
    80007874:	0007c503          	lbu	a0,0(a5)
    80007878:	fffd0d1b          	addiw	s10,s10,-1
    8000787c:	004c9c93          	slli	s9,s9,0x4
    80007880:	00000097          	auipc	ra,0x0
    80007884:	974080e7          	jalr	-1676(ra) # 800071f4 <consputc>
    80007888:	fe0d12e3          	bnez	s10,8000786c <__printf+0x494>
    8000788c:	f8dff06f          	j	80007818 <__printf+0x440>
    80007890:	f7843783          	ld	a5,-136(s0)
    80007894:	0007bc83          	ld	s9,0(a5)
    80007898:	00878793          	addi	a5,a5,8
    8000789c:	f6f43c23          	sd	a5,-136(s0)
    800078a0:	000c9a63          	bnez	s9,800078b4 <__printf+0x4dc>
    800078a4:	1080006f          	j	800079ac <__printf+0x5d4>
    800078a8:	001c8c93          	addi	s9,s9,1
    800078ac:	00000097          	auipc	ra,0x0
    800078b0:	948080e7          	jalr	-1720(ra) # 800071f4 <consputc>
    800078b4:	000cc503          	lbu	a0,0(s9)
    800078b8:	fe0518e3          	bnez	a0,800078a8 <__printf+0x4d0>
    800078bc:	f5dff06f          	j	80007818 <__printf+0x440>
    800078c0:	02500513          	li	a0,37
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	930080e7          	jalr	-1744(ra) # 800071f4 <consputc>
    800078cc:	000c8513          	mv	a0,s9
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	924080e7          	jalr	-1756(ra) # 800071f4 <consputc>
    800078d8:	f41ff06f          	j	80007818 <__printf+0x440>
    800078dc:	02500513          	li	a0,37
    800078e0:	00000097          	auipc	ra,0x0
    800078e4:	914080e7          	jalr	-1772(ra) # 800071f4 <consputc>
    800078e8:	f31ff06f          	j	80007818 <__printf+0x440>
    800078ec:	00030513          	mv	a0,t1
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	7bc080e7          	jalr	1980(ra) # 800080ac <acquire>
    800078f8:	b4dff06f          	j	80007444 <__printf+0x6c>
    800078fc:	40c0053b          	negw	a0,a2
    80007900:	00a00713          	li	a4,10
    80007904:	02e576bb          	remuw	a3,a0,a4
    80007908:	00002d97          	auipc	s11,0x2
    8000790c:	d90d8d93          	addi	s11,s11,-624 # 80009698 <digits>
    80007910:	ff700593          	li	a1,-9
    80007914:	02069693          	slli	a3,a3,0x20
    80007918:	0206d693          	srli	a3,a3,0x20
    8000791c:	00dd86b3          	add	a3,s11,a3
    80007920:	0006c683          	lbu	a3,0(a3)
    80007924:	02e557bb          	divuw	a5,a0,a4
    80007928:	f8d40023          	sb	a3,-128(s0)
    8000792c:	10b65e63          	bge	a2,a1,80007a48 <__printf+0x670>
    80007930:	06300593          	li	a1,99
    80007934:	02e7f6bb          	remuw	a3,a5,a4
    80007938:	02069693          	slli	a3,a3,0x20
    8000793c:	0206d693          	srli	a3,a3,0x20
    80007940:	00dd86b3          	add	a3,s11,a3
    80007944:	0006c683          	lbu	a3,0(a3)
    80007948:	02e7d73b          	divuw	a4,a5,a4
    8000794c:	00200793          	li	a5,2
    80007950:	f8d400a3          	sb	a3,-127(s0)
    80007954:	bca5ece3          	bltu	a1,a0,8000752c <__printf+0x154>
    80007958:	ce5ff06f          	j	8000763c <__printf+0x264>
    8000795c:	40e007bb          	negw	a5,a4
    80007960:	00002d97          	auipc	s11,0x2
    80007964:	d38d8d93          	addi	s11,s11,-712 # 80009698 <digits>
    80007968:	00f7f693          	andi	a3,a5,15
    8000796c:	00dd86b3          	add	a3,s11,a3
    80007970:	0006c583          	lbu	a1,0(a3)
    80007974:	ff100613          	li	a2,-15
    80007978:	0047d69b          	srliw	a3,a5,0x4
    8000797c:	f8b40023          	sb	a1,-128(s0)
    80007980:	0047d59b          	srliw	a1,a5,0x4
    80007984:	0ac75e63          	bge	a4,a2,80007a40 <__printf+0x668>
    80007988:	00f6f693          	andi	a3,a3,15
    8000798c:	00dd86b3          	add	a3,s11,a3
    80007990:	0006c603          	lbu	a2,0(a3)
    80007994:	00f00693          	li	a3,15
    80007998:	0087d79b          	srliw	a5,a5,0x8
    8000799c:	f8c400a3          	sb	a2,-127(s0)
    800079a0:	d8b6e4e3          	bltu	a3,a1,80007728 <__printf+0x350>
    800079a4:	00200793          	li	a5,2
    800079a8:	e2dff06f          	j	800077d4 <__printf+0x3fc>
    800079ac:	00002c97          	auipc	s9,0x2
    800079b0:	cccc8c93          	addi	s9,s9,-820 # 80009678 <_ZL6digits+0x178>
    800079b4:	02800513          	li	a0,40
    800079b8:	ef1ff06f          	j	800078a8 <__printf+0x4d0>
    800079bc:	00700793          	li	a5,7
    800079c0:	00600c93          	li	s9,6
    800079c4:	e0dff06f          	j	800077d0 <__printf+0x3f8>
    800079c8:	00700793          	li	a5,7
    800079cc:	00600c93          	li	s9,6
    800079d0:	c69ff06f          	j	80007638 <__printf+0x260>
    800079d4:	00300793          	li	a5,3
    800079d8:	00200c93          	li	s9,2
    800079dc:	c5dff06f          	j	80007638 <__printf+0x260>
    800079e0:	00300793          	li	a5,3
    800079e4:	00200c93          	li	s9,2
    800079e8:	de9ff06f          	j	800077d0 <__printf+0x3f8>
    800079ec:	00400793          	li	a5,4
    800079f0:	00300c93          	li	s9,3
    800079f4:	dddff06f          	j	800077d0 <__printf+0x3f8>
    800079f8:	00400793          	li	a5,4
    800079fc:	00300c93          	li	s9,3
    80007a00:	c39ff06f          	j	80007638 <__printf+0x260>
    80007a04:	00500793          	li	a5,5
    80007a08:	00400c93          	li	s9,4
    80007a0c:	c2dff06f          	j	80007638 <__printf+0x260>
    80007a10:	00500793          	li	a5,5
    80007a14:	00400c93          	li	s9,4
    80007a18:	db9ff06f          	j	800077d0 <__printf+0x3f8>
    80007a1c:	00600793          	li	a5,6
    80007a20:	00500c93          	li	s9,5
    80007a24:	dadff06f          	j	800077d0 <__printf+0x3f8>
    80007a28:	00600793          	li	a5,6
    80007a2c:	00500c93          	li	s9,5
    80007a30:	c09ff06f          	j	80007638 <__printf+0x260>
    80007a34:	00800793          	li	a5,8
    80007a38:	00700c93          	li	s9,7
    80007a3c:	bfdff06f          	j	80007638 <__printf+0x260>
    80007a40:	00100793          	li	a5,1
    80007a44:	d91ff06f          	j	800077d4 <__printf+0x3fc>
    80007a48:	00100793          	li	a5,1
    80007a4c:	bf1ff06f          	j	8000763c <__printf+0x264>
    80007a50:	00900793          	li	a5,9
    80007a54:	00800c93          	li	s9,8
    80007a58:	be1ff06f          	j	80007638 <__printf+0x260>
    80007a5c:	00002517          	auipc	a0,0x2
    80007a60:	c2450513          	addi	a0,a0,-988 # 80009680 <_ZL6digits+0x180>
    80007a64:	00000097          	auipc	ra,0x0
    80007a68:	918080e7          	jalr	-1768(ra) # 8000737c <panic>

0000000080007a6c <printfinit>:
    80007a6c:	fe010113          	addi	sp,sp,-32
    80007a70:	00813823          	sd	s0,16(sp)
    80007a74:	00913423          	sd	s1,8(sp)
    80007a78:	00113c23          	sd	ra,24(sp)
    80007a7c:	02010413          	addi	s0,sp,32
    80007a80:	00009497          	auipc	s1,0x9
    80007a84:	3d048493          	addi	s1,s1,976 # 80010e50 <pr>
    80007a88:	00048513          	mv	a0,s1
    80007a8c:	00002597          	auipc	a1,0x2
    80007a90:	c0458593          	addi	a1,a1,-1020 # 80009690 <_ZL6digits+0x190>
    80007a94:	00000097          	auipc	ra,0x0
    80007a98:	5f4080e7          	jalr	1524(ra) # 80008088 <initlock>
    80007a9c:	01813083          	ld	ra,24(sp)
    80007aa0:	01013403          	ld	s0,16(sp)
    80007aa4:	0004ac23          	sw	zero,24(s1)
    80007aa8:	00813483          	ld	s1,8(sp)
    80007aac:	02010113          	addi	sp,sp,32
    80007ab0:	00008067          	ret

0000000080007ab4 <uartinit>:
    80007ab4:	ff010113          	addi	sp,sp,-16
    80007ab8:	00813423          	sd	s0,8(sp)
    80007abc:	01010413          	addi	s0,sp,16
    80007ac0:	100007b7          	lui	a5,0x10000
    80007ac4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ac8:	f8000713          	li	a4,-128
    80007acc:	00e781a3          	sb	a4,3(a5)
    80007ad0:	00300713          	li	a4,3
    80007ad4:	00e78023          	sb	a4,0(a5)
    80007ad8:	000780a3          	sb	zero,1(a5)
    80007adc:	00e781a3          	sb	a4,3(a5)
    80007ae0:	00700693          	li	a3,7
    80007ae4:	00d78123          	sb	a3,2(a5)
    80007ae8:	00e780a3          	sb	a4,1(a5)
    80007aec:	00813403          	ld	s0,8(sp)
    80007af0:	01010113          	addi	sp,sp,16
    80007af4:	00008067          	ret

0000000080007af8 <uartputc>:
    80007af8:	00004797          	auipc	a5,0x4
    80007afc:	0107a783          	lw	a5,16(a5) # 8000bb08 <panicked>
    80007b00:	00078463          	beqz	a5,80007b08 <uartputc+0x10>
    80007b04:	0000006f          	j	80007b04 <uartputc+0xc>
    80007b08:	fd010113          	addi	sp,sp,-48
    80007b0c:	02813023          	sd	s0,32(sp)
    80007b10:	00913c23          	sd	s1,24(sp)
    80007b14:	01213823          	sd	s2,16(sp)
    80007b18:	01313423          	sd	s3,8(sp)
    80007b1c:	02113423          	sd	ra,40(sp)
    80007b20:	03010413          	addi	s0,sp,48
    80007b24:	00004917          	auipc	s2,0x4
    80007b28:	fec90913          	addi	s2,s2,-20 # 8000bb10 <uart_tx_r>
    80007b2c:	00093783          	ld	a5,0(s2)
    80007b30:	00004497          	auipc	s1,0x4
    80007b34:	fe848493          	addi	s1,s1,-24 # 8000bb18 <uart_tx_w>
    80007b38:	0004b703          	ld	a4,0(s1)
    80007b3c:	02078693          	addi	a3,a5,32
    80007b40:	00050993          	mv	s3,a0
    80007b44:	02e69c63          	bne	a3,a4,80007b7c <uartputc+0x84>
    80007b48:	00001097          	auipc	ra,0x1
    80007b4c:	834080e7          	jalr	-1996(ra) # 8000837c <push_on>
    80007b50:	00093783          	ld	a5,0(s2)
    80007b54:	0004b703          	ld	a4,0(s1)
    80007b58:	02078793          	addi	a5,a5,32
    80007b5c:	00e79463          	bne	a5,a4,80007b64 <uartputc+0x6c>
    80007b60:	0000006f          	j	80007b60 <uartputc+0x68>
    80007b64:	00001097          	auipc	ra,0x1
    80007b68:	88c080e7          	jalr	-1908(ra) # 800083f0 <pop_on>
    80007b6c:	00093783          	ld	a5,0(s2)
    80007b70:	0004b703          	ld	a4,0(s1)
    80007b74:	02078693          	addi	a3,a5,32
    80007b78:	fce688e3          	beq	a3,a4,80007b48 <uartputc+0x50>
    80007b7c:	01f77693          	andi	a3,a4,31
    80007b80:	00009597          	auipc	a1,0x9
    80007b84:	2f058593          	addi	a1,a1,752 # 80010e70 <uart_tx_buf>
    80007b88:	00d586b3          	add	a3,a1,a3
    80007b8c:	00170713          	addi	a4,a4,1
    80007b90:	01368023          	sb	s3,0(a3)
    80007b94:	00e4b023          	sd	a4,0(s1)
    80007b98:	10000637          	lui	a2,0x10000
    80007b9c:	02f71063          	bne	a4,a5,80007bbc <uartputc+0xc4>
    80007ba0:	0340006f          	j	80007bd4 <uartputc+0xdc>
    80007ba4:	00074703          	lbu	a4,0(a4)
    80007ba8:	00f93023          	sd	a5,0(s2)
    80007bac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007bb0:	00093783          	ld	a5,0(s2)
    80007bb4:	0004b703          	ld	a4,0(s1)
    80007bb8:	00f70e63          	beq	a4,a5,80007bd4 <uartputc+0xdc>
    80007bbc:	00564683          	lbu	a3,5(a2)
    80007bc0:	01f7f713          	andi	a4,a5,31
    80007bc4:	00e58733          	add	a4,a1,a4
    80007bc8:	0206f693          	andi	a3,a3,32
    80007bcc:	00178793          	addi	a5,a5,1
    80007bd0:	fc069ae3          	bnez	a3,80007ba4 <uartputc+0xac>
    80007bd4:	02813083          	ld	ra,40(sp)
    80007bd8:	02013403          	ld	s0,32(sp)
    80007bdc:	01813483          	ld	s1,24(sp)
    80007be0:	01013903          	ld	s2,16(sp)
    80007be4:	00813983          	ld	s3,8(sp)
    80007be8:	03010113          	addi	sp,sp,48
    80007bec:	00008067          	ret

0000000080007bf0 <uartputc_sync>:
    80007bf0:	ff010113          	addi	sp,sp,-16
    80007bf4:	00813423          	sd	s0,8(sp)
    80007bf8:	01010413          	addi	s0,sp,16
    80007bfc:	00004717          	auipc	a4,0x4
    80007c00:	f0c72703          	lw	a4,-244(a4) # 8000bb08 <panicked>
    80007c04:	02071663          	bnez	a4,80007c30 <uartputc_sync+0x40>
    80007c08:	00050793          	mv	a5,a0
    80007c0c:	100006b7          	lui	a3,0x10000
    80007c10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007c14:	02077713          	andi	a4,a4,32
    80007c18:	fe070ce3          	beqz	a4,80007c10 <uartputc_sync+0x20>
    80007c1c:	0ff7f793          	andi	a5,a5,255
    80007c20:	00f68023          	sb	a5,0(a3)
    80007c24:	00813403          	ld	s0,8(sp)
    80007c28:	01010113          	addi	sp,sp,16
    80007c2c:	00008067          	ret
    80007c30:	0000006f          	j	80007c30 <uartputc_sync+0x40>

0000000080007c34 <uartstart>:
    80007c34:	ff010113          	addi	sp,sp,-16
    80007c38:	00813423          	sd	s0,8(sp)
    80007c3c:	01010413          	addi	s0,sp,16
    80007c40:	00004617          	auipc	a2,0x4
    80007c44:	ed060613          	addi	a2,a2,-304 # 8000bb10 <uart_tx_r>
    80007c48:	00004517          	auipc	a0,0x4
    80007c4c:	ed050513          	addi	a0,a0,-304 # 8000bb18 <uart_tx_w>
    80007c50:	00063783          	ld	a5,0(a2)
    80007c54:	00053703          	ld	a4,0(a0)
    80007c58:	04f70263          	beq	a4,a5,80007c9c <uartstart+0x68>
    80007c5c:	100005b7          	lui	a1,0x10000
    80007c60:	00009817          	auipc	a6,0x9
    80007c64:	21080813          	addi	a6,a6,528 # 80010e70 <uart_tx_buf>
    80007c68:	01c0006f          	j	80007c84 <uartstart+0x50>
    80007c6c:	0006c703          	lbu	a4,0(a3)
    80007c70:	00f63023          	sd	a5,0(a2)
    80007c74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c78:	00063783          	ld	a5,0(a2)
    80007c7c:	00053703          	ld	a4,0(a0)
    80007c80:	00f70e63          	beq	a4,a5,80007c9c <uartstart+0x68>
    80007c84:	01f7f713          	andi	a4,a5,31
    80007c88:	00e806b3          	add	a3,a6,a4
    80007c8c:	0055c703          	lbu	a4,5(a1)
    80007c90:	00178793          	addi	a5,a5,1
    80007c94:	02077713          	andi	a4,a4,32
    80007c98:	fc071ae3          	bnez	a4,80007c6c <uartstart+0x38>
    80007c9c:	00813403          	ld	s0,8(sp)
    80007ca0:	01010113          	addi	sp,sp,16
    80007ca4:	00008067          	ret

0000000080007ca8 <uartgetc>:
    80007ca8:	ff010113          	addi	sp,sp,-16
    80007cac:	00813423          	sd	s0,8(sp)
    80007cb0:	01010413          	addi	s0,sp,16
    80007cb4:	10000737          	lui	a4,0x10000
    80007cb8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007cbc:	0017f793          	andi	a5,a5,1
    80007cc0:	00078c63          	beqz	a5,80007cd8 <uartgetc+0x30>
    80007cc4:	00074503          	lbu	a0,0(a4)
    80007cc8:	0ff57513          	andi	a0,a0,255
    80007ccc:	00813403          	ld	s0,8(sp)
    80007cd0:	01010113          	addi	sp,sp,16
    80007cd4:	00008067          	ret
    80007cd8:	fff00513          	li	a0,-1
    80007cdc:	ff1ff06f          	j	80007ccc <uartgetc+0x24>

0000000080007ce0 <uartintr>:
    80007ce0:	100007b7          	lui	a5,0x10000
    80007ce4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ce8:	0017f793          	andi	a5,a5,1
    80007cec:	0a078463          	beqz	a5,80007d94 <uartintr+0xb4>
    80007cf0:	fe010113          	addi	sp,sp,-32
    80007cf4:	00813823          	sd	s0,16(sp)
    80007cf8:	00913423          	sd	s1,8(sp)
    80007cfc:	00113c23          	sd	ra,24(sp)
    80007d00:	02010413          	addi	s0,sp,32
    80007d04:	100004b7          	lui	s1,0x10000
    80007d08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007d0c:	0ff57513          	andi	a0,a0,255
    80007d10:	fffff097          	auipc	ra,0xfffff
    80007d14:	534080e7          	jalr	1332(ra) # 80007244 <consoleintr>
    80007d18:	0054c783          	lbu	a5,5(s1)
    80007d1c:	0017f793          	andi	a5,a5,1
    80007d20:	fe0794e3          	bnez	a5,80007d08 <uartintr+0x28>
    80007d24:	00004617          	auipc	a2,0x4
    80007d28:	dec60613          	addi	a2,a2,-532 # 8000bb10 <uart_tx_r>
    80007d2c:	00004517          	auipc	a0,0x4
    80007d30:	dec50513          	addi	a0,a0,-532 # 8000bb18 <uart_tx_w>
    80007d34:	00063783          	ld	a5,0(a2)
    80007d38:	00053703          	ld	a4,0(a0)
    80007d3c:	04f70263          	beq	a4,a5,80007d80 <uartintr+0xa0>
    80007d40:	100005b7          	lui	a1,0x10000
    80007d44:	00009817          	auipc	a6,0x9
    80007d48:	12c80813          	addi	a6,a6,300 # 80010e70 <uart_tx_buf>
    80007d4c:	01c0006f          	j	80007d68 <uartintr+0x88>
    80007d50:	0006c703          	lbu	a4,0(a3)
    80007d54:	00f63023          	sd	a5,0(a2)
    80007d58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d5c:	00063783          	ld	a5,0(a2)
    80007d60:	00053703          	ld	a4,0(a0)
    80007d64:	00f70e63          	beq	a4,a5,80007d80 <uartintr+0xa0>
    80007d68:	01f7f713          	andi	a4,a5,31
    80007d6c:	00e806b3          	add	a3,a6,a4
    80007d70:	0055c703          	lbu	a4,5(a1)
    80007d74:	00178793          	addi	a5,a5,1
    80007d78:	02077713          	andi	a4,a4,32
    80007d7c:	fc071ae3          	bnez	a4,80007d50 <uartintr+0x70>
    80007d80:	01813083          	ld	ra,24(sp)
    80007d84:	01013403          	ld	s0,16(sp)
    80007d88:	00813483          	ld	s1,8(sp)
    80007d8c:	02010113          	addi	sp,sp,32
    80007d90:	00008067          	ret
    80007d94:	00004617          	auipc	a2,0x4
    80007d98:	d7c60613          	addi	a2,a2,-644 # 8000bb10 <uart_tx_r>
    80007d9c:	00004517          	auipc	a0,0x4
    80007da0:	d7c50513          	addi	a0,a0,-644 # 8000bb18 <uart_tx_w>
    80007da4:	00063783          	ld	a5,0(a2)
    80007da8:	00053703          	ld	a4,0(a0)
    80007dac:	04f70263          	beq	a4,a5,80007df0 <uartintr+0x110>
    80007db0:	100005b7          	lui	a1,0x10000
    80007db4:	00009817          	auipc	a6,0x9
    80007db8:	0bc80813          	addi	a6,a6,188 # 80010e70 <uart_tx_buf>
    80007dbc:	01c0006f          	j	80007dd8 <uartintr+0xf8>
    80007dc0:	0006c703          	lbu	a4,0(a3)
    80007dc4:	00f63023          	sd	a5,0(a2)
    80007dc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007dcc:	00063783          	ld	a5,0(a2)
    80007dd0:	00053703          	ld	a4,0(a0)
    80007dd4:	02f70063          	beq	a4,a5,80007df4 <uartintr+0x114>
    80007dd8:	01f7f713          	andi	a4,a5,31
    80007ddc:	00e806b3          	add	a3,a6,a4
    80007de0:	0055c703          	lbu	a4,5(a1)
    80007de4:	00178793          	addi	a5,a5,1
    80007de8:	02077713          	andi	a4,a4,32
    80007dec:	fc071ae3          	bnez	a4,80007dc0 <uartintr+0xe0>
    80007df0:	00008067          	ret
    80007df4:	00008067          	ret

0000000080007df8 <kinit>:
    80007df8:	fc010113          	addi	sp,sp,-64
    80007dfc:	02913423          	sd	s1,40(sp)
    80007e00:	fffff7b7          	lui	a5,0xfffff
    80007e04:	0000a497          	auipc	s1,0xa
    80007e08:	08b48493          	addi	s1,s1,139 # 80011e8f <end+0xfff>
    80007e0c:	02813823          	sd	s0,48(sp)
    80007e10:	01313c23          	sd	s3,24(sp)
    80007e14:	00f4f4b3          	and	s1,s1,a5
    80007e18:	02113c23          	sd	ra,56(sp)
    80007e1c:	03213023          	sd	s2,32(sp)
    80007e20:	01413823          	sd	s4,16(sp)
    80007e24:	01513423          	sd	s5,8(sp)
    80007e28:	04010413          	addi	s0,sp,64
    80007e2c:	000017b7          	lui	a5,0x1
    80007e30:	01100993          	li	s3,17
    80007e34:	00f487b3          	add	a5,s1,a5
    80007e38:	01b99993          	slli	s3,s3,0x1b
    80007e3c:	06f9e063          	bltu	s3,a5,80007e9c <kinit+0xa4>
    80007e40:	00009a97          	auipc	s5,0x9
    80007e44:	050a8a93          	addi	s5,s5,80 # 80010e90 <end>
    80007e48:	0754ec63          	bltu	s1,s5,80007ec0 <kinit+0xc8>
    80007e4c:	0734fa63          	bgeu	s1,s3,80007ec0 <kinit+0xc8>
    80007e50:	00088a37          	lui	s4,0x88
    80007e54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007e58:	00004917          	auipc	s2,0x4
    80007e5c:	cc890913          	addi	s2,s2,-824 # 8000bb20 <kmem>
    80007e60:	00ca1a13          	slli	s4,s4,0xc
    80007e64:	0140006f          	j	80007e78 <kinit+0x80>
    80007e68:	000017b7          	lui	a5,0x1
    80007e6c:	00f484b3          	add	s1,s1,a5
    80007e70:	0554e863          	bltu	s1,s5,80007ec0 <kinit+0xc8>
    80007e74:	0534f663          	bgeu	s1,s3,80007ec0 <kinit+0xc8>
    80007e78:	00001637          	lui	a2,0x1
    80007e7c:	00100593          	li	a1,1
    80007e80:	00048513          	mv	a0,s1
    80007e84:	00000097          	auipc	ra,0x0
    80007e88:	5e4080e7          	jalr	1508(ra) # 80008468 <__memset>
    80007e8c:	00093783          	ld	a5,0(s2)
    80007e90:	00f4b023          	sd	a5,0(s1)
    80007e94:	00993023          	sd	s1,0(s2)
    80007e98:	fd4498e3          	bne	s1,s4,80007e68 <kinit+0x70>
    80007e9c:	03813083          	ld	ra,56(sp)
    80007ea0:	03013403          	ld	s0,48(sp)
    80007ea4:	02813483          	ld	s1,40(sp)
    80007ea8:	02013903          	ld	s2,32(sp)
    80007eac:	01813983          	ld	s3,24(sp)
    80007eb0:	01013a03          	ld	s4,16(sp)
    80007eb4:	00813a83          	ld	s5,8(sp)
    80007eb8:	04010113          	addi	sp,sp,64
    80007ebc:	00008067          	ret
    80007ec0:	00001517          	auipc	a0,0x1
    80007ec4:	7f050513          	addi	a0,a0,2032 # 800096b0 <digits+0x18>
    80007ec8:	fffff097          	auipc	ra,0xfffff
    80007ecc:	4b4080e7          	jalr	1204(ra) # 8000737c <panic>

0000000080007ed0 <freerange>:
    80007ed0:	fc010113          	addi	sp,sp,-64
    80007ed4:	000017b7          	lui	a5,0x1
    80007ed8:	02913423          	sd	s1,40(sp)
    80007edc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ee0:	009504b3          	add	s1,a0,s1
    80007ee4:	fffff537          	lui	a0,0xfffff
    80007ee8:	02813823          	sd	s0,48(sp)
    80007eec:	02113c23          	sd	ra,56(sp)
    80007ef0:	03213023          	sd	s2,32(sp)
    80007ef4:	01313c23          	sd	s3,24(sp)
    80007ef8:	01413823          	sd	s4,16(sp)
    80007efc:	01513423          	sd	s5,8(sp)
    80007f00:	01613023          	sd	s6,0(sp)
    80007f04:	04010413          	addi	s0,sp,64
    80007f08:	00a4f4b3          	and	s1,s1,a0
    80007f0c:	00f487b3          	add	a5,s1,a5
    80007f10:	06f5e463          	bltu	a1,a5,80007f78 <freerange+0xa8>
    80007f14:	00009a97          	auipc	s5,0x9
    80007f18:	f7ca8a93          	addi	s5,s5,-132 # 80010e90 <end>
    80007f1c:	0954e263          	bltu	s1,s5,80007fa0 <freerange+0xd0>
    80007f20:	01100993          	li	s3,17
    80007f24:	01b99993          	slli	s3,s3,0x1b
    80007f28:	0734fc63          	bgeu	s1,s3,80007fa0 <freerange+0xd0>
    80007f2c:	00058a13          	mv	s4,a1
    80007f30:	00004917          	auipc	s2,0x4
    80007f34:	bf090913          	addi	s2,s2,-1040 # 8000bb20 <kmem>
    80007f38:	00002b37          	lui	s6,0x2
    80007f3c:	0140006f          	j	80007f50 <freerange+0x80>
    80007f40:	000017b7          	lui	a5,0x1
    80007f44:	00f484b3          	add	s1,s1,a5
    80007f48:	0554ec63          	bltu	s1,s5,80007fa0 <freerange+0xd0>
    80007f4c:	0534fa63          	bgeu	s1,s3,80007fa0 <freerange+0xd0>
    80007f50:	00001637          	lui	a2,0x1
    80007f54:	00100593          	li	a1,1
    80007f58:	00048513          	mv	a0,s1
    80007f5c:	00000097          	auipc	ra,0x0
    80007f60:	50c080e7          	jalr	1292(ra) # 80008468 <__memset>
    80007f64:	00093703          	ld	a4,0(s2)
    80007f68:	016487b3          	add	a5,s1,s6
    80007f6c:	00e4b023          	sd	a4,0(s1)
    80007f70:	00993023          	sd	s1,0(s2)
    80007f74:	fcfa76e3          	bgeu	s4,a5,80007f40 <freerange+0x70>
    80007f78:	03813083          	ld	ra,56(sp)
    80007f7c:	03013403          	ld	s0,48(sp)
    80007f80:	02813483          	ld	s1,40(sp)
    80007f84:	02013903          	ld	s2,32(sp)
    80007f88:	01813983          	ld	s3,24(sp)
    80007f8c:	01013a03          	ld	s4,16(sp)
    80007f90:	00813a83          	ld	s5,8(sp)
    80007f94:	00013b03          	ld	s6,0(sp)
    80007f98:	04010113          	addi	sp,sp,64
    80007f9c:	00008067          	ret
    80007fa0:	00001517          	auipc	a0,0x1
    80007fa4:	71050513          	addi	a0,a0,1808 # 800096b0 <digits+0x18>
    80007fa8:	fffff097          	auipc	ra,0xfffff
    80007fac:	3d4080e7          	jalr	980(ra) # 8000737c <panic>

0000000080007fb0 <kfree>:
    80007fb0:	fe010113          	addi	sp,sp,-32
    80007fb4:	00813823          	sd	s0,16(sp)
    80007fb8:	00113c23          	sd	ra,24(sp)
    80007fbc:	00913423          	sd	s1,8(sp)
    80007fc0:	02010413          	addi	s0,sp,32
    80007fc4:	03451793          	slli	a5,a0,0x34
    80007fc8:	04079c63          	bnez	a5,80008020 <kfree+0x70>
    80007fcc:	00009797          	auipc	a5,0x9
    80007fd0:	ec478793          	addi	a5,a5,-316 # 80010e90 <end>
    80007fd4:	00050493          	mv	s1,a0
    80007fd8:	04f56463          	bltu	a0,a5,80008020 <kfree+0x70>
    80007fdc:	01100793          	li	a5,17
    80007fe0:	01b79793          	slli	a5,a5,0x1b
    80007fe4:	02f57e63          	bgeu	a0,a5,80008020 <kfree+0x70>
    80007fe8:	00001637          	lui	a2,0x1
    80007fec:	00100593          	li	a1,1
    80007ff0:	00000097          	auipc	ra,0x0
    80007ff4:	478080e7          	jalr	1144(ra) # 80008468 <__memset>
    80007ff8:	00004797          	auipc	a5,0x4
    80007ffc:	b2878793          	addi	a5,a5,-1240 # 8000bb20 <kmem>
    80008000:	0007b703          	ld	a4,0(a5)
    80008004:	01813083          	ld	ra,24(sp)
    80008008:	01013403          	ld	s0,16(sp)
    8000800c:	00e4b023          	sd	a4,0(s1)
    80008010:	0097b023          	sd	s1,0(a5)
    80008014:	00813483          	ld	s1,8(sp)
    80008018:	02010113          	addi	sp,sp,32
    8000801c:	00008067          	ret
    80008020:	00001517          	auipc	a0,0x1
    80008024:	69050513          	addi	a0,a0,1680 # 800096b0 <digits+0x18>
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	354080e7          	jalr	852(ra) # 8000737c <panic>

0000000080008030 <kalloc>:
    80008030:	fe010113          	addi	sp,sp,-32
    80008034:	00813823          	sd	s0,16(sp)
    80008038:	00913423          	sd	s1,8(sp)
    8000803c:	00113c23          	sd	ra,24(sp)
    80008040:	02010413          	addi	s0,sp,32
    80008044:	00004797          	auipc	a5,0x4
    80008048:	adc78793          	addi	a5,a5,-1316 # 8000bb20 <kmem>
    8000804c:	0007b483          	ld	s1,0(a5)
    80008050:	02048063          	beqz	s1,80008070 <kalloc+0x40>
    80008054:	0004b703          	ld	a4,0(s1)
    80008058:	00001637          	lui	a2,0x1
    8000805c:	00500593          	li	a1,5
    80008060:	00048513          	mv	a0,s1
    80008064:	00e7b023          	sd	a4,0(a5)
    80008068:	00000097          	auipc	ra,0x0
    8000806c:	400080e7          	jalr	1024(ra) # 80008468 <__memset>
    80008070:	01813083          	ld	ra,24(sp)
    80008074:	01013403          	ld	s0,16(sp)
    80008078:	00048513          	mv	a0,s1
    8000807c:	00813483          	ld	s1,8(sp)
    80008080:	02010113          	addi	sp,sp,32
    80008084:	00008067          	ret

0000000080008088 <initlock>:
    80008088:	ff010113          	addi	sp,sp,-16
    8000808c:	00813423          	sd	s0,8(sp)
    80008090:	01010413          	addi	s0,sp,16
    80008094:	00813403          	ld	s0,8(sp)
    80008098:	00b53423          	sd	a1,8(a0)
    8000809c:	00052023          	sw	zero,0(a0)
    800080a0:	00053823          	sd	zero,16(a0)
    800080a4:	01010113          	addi	sp,sp,16
    800080a8:	00008067          	ret

00000000800080ac <acquire>:
    800080ac:	fe010113          	addi	sp,sp,-32
    800080b0:	00813823          	sd	s0,16(sp)
    800080b4:	00913423          	sd	s1,8(sp)
    800080b8:	00113c23          	sd	ra,24(sp)
    800080bc:	01213023          	sd	s2,0(sp)
    800080c0:	02010413          	addi	s0,sp,32
    800080c4:	00050493          	mv	s1,a0
    800080c8:	10002973          	csrr	s2,sstatus
    800080cc:	100027f3          	csrr	a5,sstatus
    800080d0:	ffd7f793          	andi	a5,a5,-3
    800080d4:	10079073          	csrw	sstatus,a5
    800080d8:	fffff097          	auipc	ra,0xfffff
    800080dc:	8e4080e7          	jalr	-1820(ra) # 800069bc <mycpu>
    800080e0:	07852783          	lw	a5,120(a0)
    800080e4:	06078e63          	beqz	a5,80008160 <acquire+0xb4>
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	8d4080e7          	jalr	-1836(ra) # 800069bc <mycpu>
    800080f0:	07852783          	lw	a5,120(a0)
    800080f4:	0004a703          	lw	a4,0(s1)
    800080f8:	0017879b          	addiw	a5,a5,1
    800080fc:	06f52c23          	sw	a5,120(a0)
    80008100:	04071063          	bnez	a4,80008140 <acquire+0x94>
    80008104:	00100713          	li	a4,1
    80008108:	00070793          	mv	a5,a4
    8000810c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008110:	0007879b          	sext.w	a5,a5
    80008114:	fe079ae3          	bnez	a5,80008108 <acquire+0x5c>
    80008118:	0ff0000f          	fence
    8000811c:	fffff097          	auipc	ra,0xfffff
    80008120:	8a0080e7          	jalr	-1888(ra) # 800069bc <mycpu>
    80008124:	01813083          	ld	ra,24(sp)
    80008128:	01013403          	ld	s0,16(sp)
    8000812c:	00a4b823          	sd	a0,16(s1)
    80008130:	00013903          	ld	s2,0(sp)
    80008134:	00813483          	ld	s1,8(sp)
    80008138:	02010113          	addi	sp,sp,32
    8000813c:	00008067          	ret
    80008140:	0104b903          	ld	s2,16(s1)
    80008144:	fffff097          	auipc	ra,0xfffff
    80008148:	878080e7          	jalr	-1928(ra) # 800069bc <mycpu>
    8000814c:	faa91ce3          	bne	s2,a0,80008104 <acquire+0x58>
    80008150:	00001517          	auipc	a0,0x1
    80008154:	56850513          	addi	a0,a0,1384 # 800096b8 <digits+0x20>
    80008158:	fffff097          	auipc	ra,0xfffff
    8000815c:	224080e7          	jalr	548(ra) # 8000737c <panic>
    80008160:	00195913          	srli	s2,s2,0x1
    80008164:	fffff097          	auipc	ra,0xfffff
    80008168:	858080e7          	jalr	-1960(ra) # 800069bc <mycpu>
    8000816c:	00197913          	andi	s2,s2,1
    80008170:	07252e23          	sw	s2,124(a0)
    80008174:	f75ff06f          	j	800080e8 <acquire+0x3c>

0000000080008178 <release>:
    80008178:	fe010113          	addi	sp,sp,-32
    8000817c:	00813823          	sd	s0,16(sp)
    80008180:	00113c23          	sd	ra,24(sp)
    80008184:	00913423          	sd	s1,8(sp)
    80008188:	01213023          	sd	s2,0(sp)
    8000818c:	02010413          	addi	s0,sp,32
    80008190:	00052783          	lw	a5,0(a0)
    80008194:	00079a63          	bnez	a5,800081a8 <release+0x30>
    80008198:	00001517          	auipc	a0,0x1
    8000819c:	52850513          	addi	a0,a0,1320 # 800096c0 <digits+0x28>
    800081a0:	fffff097          	auipc	ra,0xfffff
    800081a4:	1dc080e7          	jalr	476(ra) # 8000737c <panic>
    800081a8:	01053903          	ld	s2,16(a0)
    800081ac:	00050493          	mv	s1,a0
    800081b0:	fffff097          	auipc	ra,0xfffff
    800081b4:	80c080e7          	jalr	-2036(ra) # 800069bc <mycpu>
    800081b8:	fea910e3          	bne	s2,a0,80008198 <release+0x20>
    800081bc:	0004b823          	sd	zero,16(s1)
    800081c0:	0ff0000f          	fence
    800081c4:	0f50000f          	fence	iorw,ow
    800081c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800081cc:	ffffe097          	auipc	ra,0xffffe
    800081d0:	7f0080e7          	jalr	2032(ra) # 800069bc <mycpu>
    800081d4:	100027f3          	csrr	a5,sstatus
    800081d8:	0027f793          	andi	a5,a5,2
    800081dc:	04079a63          	bnez	a5,80008230 <release+0xb8>
    800081e0:	07852783          	lw	a5,120(a0)
    800081e4:	02f05e63          	blez	a5,80008220 <release+0xa8>
    800081e8:	fff7871b          	addiw	a4,a5,-1
    800081ec:	06e52c23          	sw	a4,120(a0)
    800081f0:	00071c63          	bnez	a4,80008208 <release+0x90>
    800081f4:	07c52783          	lw	a5,124(a0)
    800081f8:	00078863          	beqz	a5,80008208 <release+0x90>
    800081fc:	100027f3          	csrr	a5,sstatus
    80008200:	0027e793          	ori	a5,a5,2
    80008204:	10079073          	csrw	sstatus,a5
    80008208:	01813083          	ld	ra,24(sp)
    8000820c:	01013403          	ld	s0,16(sp)
    80008210:	00813483          	ld	s1,8(sp)
    80008214:	00013903          	ld	s2,0(sp)
    80008218:	02010113          	addi	sp,sp,32
    8000821c:	00008067          	ret
    80008220:	00001517          	auipc	a0,0x1
    80008224:	4c050513          	addi	a0,a0,1216 # 800096e0 <digits+0x48>
    80008228:	fffff097          	auipc	ra,0xfffff
    8000822c:	154080e7          	jalr	340(ra) # 8000737c <panic>
    80008230:	00001517          	auipc	a0,0x1
    80008234:	49850513          	addi	a0,a0,1176 # 800096c8 <digits+0x30>
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	144080e7          	jalr	324(ra) # 8000737c <panic>

0000000080008240 <holding>:
    80008240:	00052783          	lw	a5,0(a0)
    80008244:	00079663          	bnez	a5,80008250 <holding+0x10>
    80008248:	00000513          	li	a0,0
    8000824c:	00008067          	ret
    80008250:	fe010113          	addi	sp,sp,-32
    80008254:	00813823          	sd	s0,16(sp)
    80008258:	00913423          	sd	s1,8(sp)
    8000825c:	00113c23          	sd	ra,24(sp)
    80008260:	02010413          	addi	s0,sp,32
    80008264:	01053483          	ld	s1,16(a0)
    80008268:	ffffe097          	auipc	ra,0xffffe
    8000826c:	754080e7          	jalr	1876(ra) # 800069bc <mycpu>
    80008270:	01813083          	ld	ra,24(sp)
    80008274:	01013403          	ld	s0,16(sp)
    80008278:	40a48533          	sub	a0,s1,a0
    8000827c:	00153513          	seqz	a0,a0
    80008280:	00813483          	ld	s1,8(sp)
    80008284:	02010113          	addi	sp,sp,32
    80008288:	00008067          	ret

000000008000828c <push_off>:
    8000828c:	fe010113          	addi	sp,sp,-32
    80008290:	00813823          	sd	s0,16(sp)
    80008294:	00113c23          	sd	ra,24(sp)
    80008298:	00913423          	sd	s1,8(sp)
    8000829c:	02010413          	addi	s0,sp,32
    800082a0:	100024f3          	csrr	s1,sstatus
    800082a4:	100027f3          	csrr	a5,sstatus
    800082a8:	ffd7f793          	andi	a5,a5,-3
    800082ac:	10079073          	csrw	sstatus,a5
    800082b0:	ffffe097          	auipc	ra,0xffffe
    800082b4:	70c080e7          	jalr	1804(ra) # 800069bc <mycpu>
    800082b8:	07852783          	lw	a5,120(a0)
    800082bc:	02078663          	beqz	a5,800082e8 <push_off+0x5c>
    800082c0:	ffffe097          	auipc	ra,0xffffe
    800082c4:	6fc080e7          	jalr	1788(ra) # 800069bc <mycpu>
    800082c8:	07852783          	lw	a5,120(a0)
    800082cc:	01813083          	ld	ra,24(sp)
    800082d0:	01013403          	ld	s0,16(sp)
    800082d4:	0017879b          	addiw	a5,a5,1
    800082d8:	06f52c23          	sw	a5,120(a0)
    800082dc:	00813483          	ld	s1,8(sp)
    800082e0:	02010113          	addi	sp,sp,32
    800082e4:	00008067          	ret
    800082e8:	0014d493          	srli	s1,s1,0x1
    800082ec:	ffffe097          	auipc	ra,0xffffe
    800082f0:	6d0080e7          	jalr	1744(ra) # 800069bc <mycpu>
    800082f4:	0014f493          	andi	s1,s1,1
    800082f8:	06952e23          	sw	s1,124(a0)
    800082fc:	fc5ff06f          	j	800082c0 <push_off+0x34>

0000000080008300 <pop_off>:
    80008300:	ff010113          	addi	sp,sp,-16
    80008304:	00813023          	sd	s0,0(sp)
    80008308:	00113423          	sd	ra,8(sp)
    8000830c:	01010413          	addi	s0,sp,16
    80008310:	ffffe097          	auipc	ra,0xffffe
    80008314:	6ac080e7          	jalr	1708(ra) # 800069bc <mycpu>
    80008318:	100027f3          	csrr	a5,sstatus
    8000831c:	0027f793          	andi	a5,a5,2
    80008320:	04079663          	bnez	a5,8000836c <pop_off+0x6c>
    80008324:	07852783          	lw	a5,120(a0)
    80008328:	02f05a63          	blez	a5,8000835c <pop_off+0x5c>
    8000832c:	fff7871b          	addiw	a4,a5,-1
    80008330:	06e52c23          	sw	a4,120(a0)
    80008334:	00071c63          	bnez	a4,8000834c <pop_off+0x4c>
    80008338:	07c52783          	lw	a5,124(a0)
    8000833c:	00078863          	beqz	a5,8000834c <pop_off+0x4c>
    80008340:	100027f3          	csrr	a5,sstatus
    80008344:	0027e793          	ori	a5,a5,2
    80008348:	10079073          	csrw	sstatus,a5
    8000834c:	00813083          	ld	ra,8(sp)
    80008350:	00013403          	ld	s0,0(sp)
    80008354:	01010113          	addi	sp,sp,16
    80008358:	00008067          	ret
    8000835c:	00001517          	auipc	a0,0x1
    80008360:	38450513          	addi	a0,a0,900 # 800096e0 <digits+0x48>
    80008364:	fffff097          	auipc	ra,0xfffff
    80008368:	018080e7          	jalr	24(ra) # 8000737c <panic>
    8000836c:	00001517          	auipc	a0,0x1
    80008370:	35c50513          	addi	a0,a0,860 # 800096c8 <digits+0x30>
    80008374:	fffff097          	auipc	ra,0xfffff
    80008378:	008080e7          	jalr	8(ra) # 8000737c <panic>

000000008000837c <push_on>:
    8000837c:	fe010113          	addi	sp,sp,-32
    80008380:	00813823          	sd	s0,16(sp)
    80008384:	00113c23          	sd	ra,24(sp)
    80008388:	00913423          	sd	s1,8(sp)
    8000838c:	02010413          	addi	s0,sp,32
    80008390:	100024f3          	csrr	s1,sstatus
    80008394:	100027f3          	csrr	a5,sstatus
    80008398:	0027e793          	ori	a5,a5,2
    8000839c:	10079073          	csrw	sstatus,a5
    800083a0:	ffffe097          	auipc	ra,0xffffe
    800083a4:	61c080e7          	jalr	1564(ra) # 800069bc <mycpu>
    800083a8:	07852783          	lw	a5,120(a0)
    800083ac:	02078663          	beqz	a5,800083d8 <push_on+0x5c>
    800083b0:	ffffe097          	auipc	ra,0xffffe
    800083b4:	60c080e7          	jalr	1548(ra) # 800069bc <mycpu>
    800083b8:	07852783          	lw	a5,120(a0)
    800083bc:	01813083          	ld	ra,24(sp)
    800083c0:	01013403          	ld	s0,16(sp)
    800083c4:	0017879b          	addiw	a5,a5,1
    800083c8:	06f52c23          	sw	a5,120(a0)
    800083cc:	00813483          	ld	s1,8(sp)
    800083d0:	02010113          	addi	sp,sp,32
    800083d4:	00008067          	ret
    800083d8:	0014d493          	srli	s1,s1,0x1
    800083dc:	ffffe097          	auipc	ra,0xffffe
    800083e0:	5e0080e7          	jalr	1504(ra) # 800069bc <mycpu>
    800083e4:	0014f493          	andi	s1,s1,1
    800083e8:	06952e23          	sw	s1,124(a0)
    800083ec:	fc5ff06f          	j	800083b0 <push_on+0x34>

00000000800083f0 <pop_on>:
    800083f0:	ff010113          	addi	sp,sp,-16
    800083f4:	00813023          	sd	s0,0(sp)
    800083f8:	00113423          	sd	ra,8(sp)
    800083fc:	01010413          	addi	s0,sp,16
    80008400:	ffffe097          	auipc	ra,0xffffe
    80008404:	5bc080e7          	jalr	1468(ra) # 800069bc <mycpu>
    80008408:	100027f3          	csrr	a5,sstatus
    8000840c:	0027f793          	andi	a5,a5,2
    80008410:	04078463          	beqz	a5,80008458 <pop_on+0x68>
    80008414:	07852783          	lw	a5,120(a0)
    80008418:	02f05863          	blez	a5,80008448 <pop_on+0x58>
    8000841c:	fff7879b          	addiw	a5,a5,-1
    80008420:	06f52c23          	sw	a5,120(a0)
    80008424:	07853783          	ld	a5,120(a0)
    80008428:	00079863          	bnez	a5,80008438 <pop_on+0x48>
    8000842c:	100027f3          	csrr	a5,sstatus
    80008430:	ffd7f793          	andi	a5,a5,-3
    80008434:	10079073          	csrw	sstatus,a5
    80008438:	00813083          	ld	ra,8(sp)
    8000843c:	00013403          	ld	s0,0(sp)
    80008440:	01010113          	addi	sp,sp,16
    80008444:	00008067          	ret
    80008448:	00001517          	auipc	a0,0x1
    8000844c:	2c050513          	addi	a0,a0,704 # 80009708 <digits+0x70>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	f2c080e7          	jalr	-212(ra) # 8000737c <panic>
    80008458:	00001517          	auipc	a0,0x1
    8000845c:	29050513          	addi	a0,a0,656 # 800096e8 <digits+0x50>
    80008460:	fffff097          	auipc	ra,0xfffff
    80008464:	f1c080e7          	jalr	-228(ra) # 8000737c <panic>

0000000080008468 <__memset>:
    80008468:	ff010113          	addi	sp,sp,-16
    8000846c:	00813423          	sd	s0,8(sp)
    80008470:	01010413          	addi	s0,sp,16
    80008474:	1a060e63          	beqz	a2,80008630 <__memset+0x1c8>
    80008478:	40a007b3          	neg	a5,a0
    8000847c:	0077f793          	andi	a5,a5,7
    80008480:	00778693          	addi	a3,a5,7
    80008484:	00b00813          	li	a6,11
    80008488:	0ff5f593          	andi	a1,a1,255
    8000848c:	fff6071b          	addiw	a4,a2,-1
    80008490:	1b06e663          	bltu	a3,a6,8000863c <__memset+0x1d4>
    80008494:	1cd76463          	bltu	a4,a3,8000865c <__memset+0x1f4>
    80008498:	1a078e63          	beqz	a5,80008654 <__memset+0x1ec>
    8000849c:	00b50023          	sb	a1,0(a0)
    800084a0:	00100713          	li	a4,1
    800084a4:	1ae78463          	beq	a5,a4,8000864c <__memset+0x1e4>
    800084a8:	00b500a3          	sb	a1,1(a0)
    800084ac:	00200713          	li	a4,2
    800084b0:	1ae78a63          	beq	a5,a4,80008664 <__memset+0x1fc>
    800084b4:	00b50123          	sb	a1,2(a0)
    800084b8:	00300713          	li	a4,3
    800084bc:	18e78463          	beq	a5,a4,80008644 <__memset+0x1dc>
    800084c0:	00b501a3          	sb	a1,3(a0)
    800084c4:	00400713          	li	a4,4
    800084c8:	1ae78263          	beq	a5,a4,8000866c <__memset+0x204>
    800084cc:	00b50223          	sb	a1,4(a0)
    800084d0:	00500713          	li	a4,5
    800084d4:	1ae78063          	beq	a5,a4,80008674 <__memset+0x20c>
    800084d8:	00b502a3          	sb	a1,5(a0)
    800084dc:	00700713          	li	a4,7
    800084e0:	18e79e63          	bne	a5,a4,8000867c <__memset+0x214>
    800084e4:	00b50323          	sb	a1,6(a0)
    800084e8:	00700e93          	li	t4,7
    800084ec:	00859713          	slli	a4,a1,0x8
    800084f0:	00e5e733          	or	a4,a1,a4
    800084f4:	01059e13          	slli	t3,a1,0x10
    800084f8:	01c76e33          	or	t3,a4,t3
    800084fc:	01859313          	slli	t1,a1,0x18
    80008500:	006e6333          	or	t1,t3,t1
    80008504:	02059893          	slli	a7,a1,0x20
    80008508:	40f60e3b          	subw	t3,a2,a5
    8000850c:	011368b3          	or	a7,t1,a7
    80008510:	02859813          	slli	a6,a1,0x28
    80008514:	0108e833          	or	a6,a7,a6
    80008518:	03059693          	slli	a3,a1,0x30
    8000851c:	003e589b          	srliw	a7,t3,0x3
    80008520:	00d866b3          	or	a3,a6,a3
    80008524:	03859713          	slli	a4,a1,0x38
    80008528:	00389813          	slli	a6,a7,0x3
    8000852c:	00f507b3          	add	a5,a0,a5
    80008530:	00e6e733          	or	a4,a3,a4
    80008534:	000e089b          	sext.w	a7,t3
    80008538:	00f806b3          	add	a3,a6,a5
    8000853c:	00e7b023          	sd	a4,0(a5)
    80008540:	00878793          	addi	a5,a5,8
    80008544:	fed79ce3          	bne	a5,a3,8000853c <__memset+0xd4>
    80008548:	ff8e7793          	andi	a5,t3,-8
    8000854c:	0007871b          	sext.w	a4,a5
    80008550:	01d787bb          	addw	a5,a5,t4
    80008554:	0ce88e63          	beq	a7,a4,80008630 <__memset+0x1c8>
    80008558:	00f50733          	add	a4,a0,a5
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	0017871b          	addiw	a4,a5,1
    80008564:	0cc77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008568:	00e50733          	add	a4,a0,a4
    8000856c:	00b70023          	sb	a1,0(a4)
    80008570:	0027871b          	addiw	a4,a5,2
    80008574:	0ac77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008578:	00e50733          	add	a4,a0,a4
    8000857c:	00b70023          	sb	a1,0(a4)
    80008580:	0037871b          	addiw	a4,a5,3
    80008584:	0ac77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008588:	00e50733          	add	a4,a0,a4
    8000858c:	00b70023          	sb	a1,0(a4)
    80008590:	0047871b          	addiw	a4,a5,4
    80008594:	08c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008598:	00e50733          	add	a4,a0,a4
    8000859c:	00b70023          	sb	a1,0(a4)
    800085a0:	0057871b          	addiw	a4,a5,5
    800085a4:	08c77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085a8:	00e50733          	add	a4,a0,a4
    800085ac:	00b70023          	sb	a1,0(a4)
    800085b0:	0067871b          	addiw	a4,a5,6
    800085b4:	06c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085b8:	00e50733          	add	a4,a0,a4
    800085bc:	00b70023          	sb	a1,0(a4)
    800085c0:	0077871b          	addiw	a4,a5,7
    800085c4:	06c77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085c8:	00e50733          	add	a4,a0,a4
    800085cc:	00b70023          	sb	a1,0(a4)
    800085d0:	0087871b          	addiw	a4,a5,8
    800085d4:	04c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085d8:	00e50733          	add	a4,a0,a4
    800085dc:	00b70023          	sb	a1,0(a4)
    800085e0:	0097871b          	addiw	a4,a5,9
    800085e4:	04c77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085e8:	00e50733          	add	a4,a0,a4
    800085ec:	00b70023          	sb	a1,0(a4)
    800085f0:	00a7871b          	addiw	a4,a5,10
    800085f4:	02c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085f8:	00e50733          	add	a4,a0,a4
    800085fc:	00b70023          	sb	a1,0(a4)
    80008600:	00b7871b          	addiw	a4,a5,11
    80008604:	02c77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008608:	00e50733          	add	a4,a0,a4
    8000860c:	00b70023          	sb	a1,0(a4)
    80008610:	00c7871b          	addiw	a4,a5,12
    80008614:	00c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008618:	00e50733          	add	a4,a0,a4
    8000861c:	00b70023          	sb	a1,0(a4)
    80008620:	00d7879b          	addiw	a5,a5,13
    80008624:	00c7f663          	bgeu	a5,a2,80008630 <__memset+0x1c8>
    80008628:	00f507b3          	add	a5,a0,a5
    8000862c:	00b78023          	sb	a1,0(a5)
    80008630:	00813403          	ld	s0,8(sp)
    80008634:	01010113          	addi	sp,sp,16
    80008638:	00008067          	ret
    8000863c:	00b00693          	li	a3,11
    80008640:	e55ff06f          	j	80008494 <__memset+0x2c>
    80008644:	00300e93          	li	t4,3
    80008648:	ea5ff06f          	j	800084ec <__memset+0x84>
    8000864c:	00100e93          	li	t4,1
    80008650:	e9dff06f          	j	800084ec <__memset+0x84>
    80008654:	00000e93          	li	t4,0
    80008658:	e95ff06f          	j	800084ec <__memset+0x84>
    8000865c:	00000793          	li	a5,0
    80008660:	ef9ff06f          	j	80008558 <__memset+0xf0>
    80008664:	00200e93          	li	t4,2
    80008668:	e85ff06f          	j	800084ec <__memset+0x84>
    8000866c:	00400e93          	li	t4,4
    80008670:	e7dff06f          	j	800084ec <__memset+0x84>
    80008674:	00500e93          	li	t4,5
    80008678:	e75ff06f          	j	800084ec <__memset+0x84>
    8000867c:	00600e93          	li	t4,6
    80008680:	e6dff06f          	j	800084ec <__memset+0x84>

0000000080008684 <__memmove>:
    80008684:	ff010113          	addi	sp,sp,-16
    80008688:	00813423          	sd	s0,8(sp)
    8000868c:	01010413          	addi	s0,sp,16
    80008690:	0e060863          	beqz	a2,80008780 <__memmove+0xfc>
    80008694:	fff6069b          	addiw	a3,a2,-1
    80008698:	0006881b          	sext.w	a6,a3
    8000869c:	0ea5e863          	bltu	a1,a0,8000878c <__memmove+0x108>
    800086a0:	00758713          	addi	a4,a1,7
    800086a4:	00a5e7b3          	or	a5,a1,a0
    800086a8:	40a70733          	sub	a4,a4,a0
    800086ac:	0077f793          	andi	a5,a5,7
    800086b0:	00f73713          	sltiu	a4,a4,15
    800086b4:	00174713          	xori	a4,a4,1
    800086b8:	0017b793          	seqz	a5,a5
    800086bc:	00e7f7b3          	and	a5,a5,a4
    800086c0:	10078863          	beqz	a5,800087d0 <__memmove+0x14c>
    800086c4:	00900793          	li	a5,9
    800086c8:	1107f463          	bgeu	a5,a6,800087d0 <__memmove+0x14c>
    800086cc:	0036581b          	srliw	a6,a2,0x3
    800086d0:	fff8081b          	addiw	a6,a6,-1
    800086d4:	02081813          	slli	a6,a6,0x20
    800086d8:	01d85893          	srli	a7,a6,0x1d
    800086dc:	00858813          	addi	a6,a1,8
    800086e0:	00058793          	mv	a5,a1
    800086e4:	00050713          	mv	a4,a0
    800086e8:	01088833          	add	a6,a7,a6
    800086ec:	0007b883          	ld	a7,0(a5)
    800086f0:	00878793          	addi	a5,a5,8
    800086f4:	00870713          	addi	a4,a4,8
    800086f8:	ff173c23          	sd	a7,-8(a4)
    800086fc:	ff0798e3          	bne	a5,a6,800086ec <__memmove+0x68>
    80008700:	ff867713          	andi	a4,a2,-8
    80008704:	02071793          	slli	a5,a4,0x20
    80008708:	0207d793          	srli	a5,a5,0x20
    8000870c:	00f585b3          	add	a1,a1,a5
    80008710:	40e686bb          	subw	a3,a3,a4
    80008714:	00f507b3          	add	a5,a0,a5
    80008718:	06e60463          	beq	a2,a4,80008780 <__memmove+0xfc>
    8000871c:	0005c703          	lbu	a4,0(a1)
    80008720:	00e78023          	sb	a4,0(a5)
    80008724:	04068e63          	beqz	a3,80008780 <__memmove+0xfc>
    80008728:	0015c603          	lbu	a2,1(a1)
    8000872c:	00100713          	li	a4,1
    80008730:	00c780a3          	sb	a2,1(a5)
    80008734:	04e68663          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008738:	0025c603          	lbu	a2,2(a1)
    8000873c:	00200713          	li	a4,2
    80008740:	00c78123          	sb	a2,2(a5)
    80008744:	02e68e63          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008748:	0035c603          	lbu	a2,3(a1)
    8000874c:	00300713          	li	a4,3
    80008750:	00c781a3          	sb	a2,3(a5)
    80008754:	02e68663          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008758:	0045c603          	lbu	a2,4(a1)
    8000875c:	00400713          	li	a4,4
    80008760:	00c78223          	sb	a2,4(a5)
    80008764:	00e68e63          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008768:	0055c603          	lbu	a2,5(a1)
    8000876c:	00500713          	li	a4,5
    80008770:	00c782a3          	sb	a2,5(a5)
    80008774:	00e68663          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008778:	0065c703          	lbu	a4,6(a1)
    8000877c:	00e78323          	sb	a4,6(a5)
    80008780:	00813403          	ld	s0,8(sp)
    80008784:	01010113          	addi	sp,sp,16
    80008788:	00008067          	ret
    8000878c:	02061713          	slli	a4,a2,0x20
    80008790:	02075713          	srli	a4,a4,0x20
    80008794:	00e587b3          	add	a5,a1,a4
    80008798:	f0f574e3          	bgeu	a0,a5,800086a0 <__memmove+0x1c>
    8000879c:	02069613          	slli	a2,a3,0x20
    800087a0:	02065613          	srli	a2,a2,0x20
    800087a4:	fff64613          	not	a2,a2
    800087a8:	00e50733          	add	a4,a0,a4
    800087ac:	00c78633          	add	a2,a5,a2
    800087b0:	fff7c683          	lbu	a3,-1(a5)
    800087b4:	fff78793          	addi	a5,a5,-1
    800087b8:	fff70713          	addi	a4,a4,-1
    800087bc:	00d70023          	sb	a3,0(a4)
    800087c0:	fec798e3          	bne	a5,a2,800087b0 <__memmove+0x12c>
    800087c4:	00813403          	ld	s0,8(sp)
    800087c8:	01010113          	addi	sp,sp,16
    800087cc:	00008067          	ret
    800087d0:	02069713          	slli	a4,a3,0x20
    800087d4:	02075713          	srli	a4,a4,0x20
    800087d8:	00170713          	addi	a4,a4,1
    800087dc:	00e50733          	add	a4,a0,a4
    800087e0:	00050793          	mv	a5,a0
    800087e4:	0005c683          	lbu	a3,0(a1)
    800087e8:	00178793          	addi	a5,a5,1
    800087ec:	00158593          	addi	a1,a1,1
    800087f0:	fed78fa3          	sb	a3,-1(a5)
    800087f4:	fee798e3          	bne	a5,a4,800087e4 <__memmove+0x160>
    800087f8:	f89ff06f          	j	80008780 <__memmove+0xfc>

00000000800087fc <__putc>:
    800087fc:	fe010113          	addi	sp,sp,-32
    80008800:	00813823          	sd	s0,16(sp)
    80008804:	00113c23          	sd	ra,24(sp)
    80008808:	02010413          	addi	s0,sp,32
    8000880c:	00050793          	mv	a5,a0
    80008810:	fef40593          	addi	a1,s0,-17
    80008814:	00100613          	li	a2,1
    80008818:	00000513          	li	a0,0
    8000881c:	fef407a3          	sb	a5,-17(s0)
    80008820:	fffff097          	auipc	ra,0xfffff
    80008824:	b3c080e7          	jalr	-1220(ra) # 8000735c <console_write>
    80008828:	01813083          	ld	ra,24(sp)
    8000882c:	01013403          	ld	s0,16(sp)
    80008830:	02010113          	addi	sp,sp,32
    80008834:	00008067          	ret

0000000080008838 <__getc>:
    80008838:	fe010113          	addi	sp,sp,-32
    8000883c:	00813823          	sd	s0,16(sp)
    80008840:	00113c23          	sd	ra,24(sp)
    80008844:	02010413          	addi	s0,sp,32
    80008848:	fe840593          	addi	a1,s0,-24
    8000884c:	00100613          	li	a2,1
    80008850:	00000513          	li	a0,0
    80008854:	fffff097          	auipc	ra,0xfffff
    80008858:	ae8080e7          	jalr	-1304(ra) # 8000733c <console_read>
    8000885c:	fe844503          	lbu	a0,-24(s0)
    80008860:	01813083          	ld	ra,24(sp)
    80008864:	01013403          	ld	s0,16(sp)
    80008868:	02010113          	addi	sp,sp,32
    8000886c:	00008067          	ret

0000000080008870 <console_handler>:
    80008870:	fe010113          	addi	sp,sp,-32
    80008874:	00813823          	sd	s0,16(sp)
    80008878:	00113c23          	sd	ra,24(sp)
    8000887c:	00913423          	sd	s1,8(sp)
    80008880:	02010413          	addi	s0,sp,32
    80008884:	14202773          	csrr	a4,scause
    80008888:	100027f3          	csrr	a5,sstatus
    8000888c:	0027f793          	andi	a5,a5,2
    80008890:	06079e63          	bnez	a5,8000890c <console_handler+0x9c>
    80008894:	00074c63          	bltz	a4,800088ac <console_handler+0x3c>
    80008898:	01813083          	ld	ra,24(sp)
    8000889c:	01013403          	ld	s0,16(sp)
    800088a0:	00813483          	ld	s1,8(sp)
    800088a4:	02010113          	addi	sp,sp,32
    800088a8:	00008067          	ret
    800088ac:	0ff77713          	andi	a4,a4,255
    800088b0:	00900793          	li	a5,9
    800088b4:	fef712e3          	bne	a4,a5,80008898 <console_handler+0x28>
    800088b8:	ffffe097          	auipc	ra,0xffffe
    800088bc:	6dc080e7          	jalr	1756(ra) # 80006f94 <plic_claim>
    800088c0:	00a00793          	li	a5,10
    800088c4:	00050493          	mv	s1,a0
    800088c8:	02f50c63          	beq	a0,a5,80008900 <console_handler+0x90>
    800088cc:	fc0506e3          	beqz	a0,80008898 <console_handler+0x28>
    800088d0:	00050593          	mv	a1,a0
    800088d4:	00001517          	auipc	a0,0x1
    800088d8:	d3c50513          	addi	a0,a0,-708 # 80009610 <_ZL6digits+0x110>
    800088dc:	fffff097          	auipc	ra,0xfffff
    800088e0:	afc080e7          	jalr	-1284(ra) # 800073d8 <__printf>
    800088e4:	01013403          	ld	s0,16(sp)
    800088e8:	01813083          	ld	ra,24(sp)
    800088ec:	00048513          	mv	a0,s1
    800088f0:	00813483          	ld	s1,8(sp)
    800088f4:	02010113          	addi	sp,sp,32
    800088f8:	ffffe317          	auipc	t1,0xffffe
    800088fc:	6d430067          	jr	1748(t1) # 80006fcc <plic_complete>
    80008900:	fffff097          	auipc	ra,0xfffff
    80008904:	3e0080e7          	jalr	992(ra) # 80007ce0 <uartintr>
    80008908:	fddff06f          	j	800088e4 <console_handler+0x74>
    8000890c:	00001517          	auipc	a0,0x1
    80008910:	e0450513          	addi	a0,a0,-508 # 80009710 <digits+0x78>
    80008914:	fffff097          	auipc	ra,0xfffff
    80008918:	a68080e7          	jalr	-1432(ra) # 8000737c <panic>
	...
