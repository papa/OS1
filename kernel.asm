
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ae013103          	ld	sp,-1312(sp) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	734060ef          	jal	ra,80006750 <start>

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
    80001088:	2a9020ef          	jal	ra,80003b30 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800015a0:	69c080e7          	jalr	1692(ra) # 80005c38 <_Z11printStringPKc>
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
    800015d0:	66c080e7          	jalr	1644(ra) # 80005c38 <_Z11printStringPKc>
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
    800015f0:	64c080e7          	jalr	1612(ra) # 80005c38 <_Z11printStringPKc>
        printInt(i);
    800015f4:	00000613          	li	a2,0
    800015f8:	00a00593          	li	a1,10
    800015fc:	0004851b          	sext.w	a0,s1
    80001600:	00004097          	auipc	ra,0x4
    80001604:	7d0080e7          	jalr	2000(ra) # 80005dd0 <_Z8printIntiii>
        printString("\n");
    80001608:	00008517          	auipc	a0,0x8
    8000160c:	af850513          	addi	a0,a0,-1288 # 80009100 <CONSOLE_STATUS+0xf0>
    80001610:	00004097          	auipc	ra,0x4
    80001614:	628080e7          	jalr	1576(ra) # 80005c38 <_Z11printStringPKc>
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
    80001670:	5cc080e7          	jalr	1484(ra) # 80005c38 <_Z11printStringPKc>
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
    80001690:	5ac080e7          	jalr	1452(ra) # 80005c38 <_Z11printStringPKc>
        printInt(j);
    80001694:	00000613          	li	a2,0
    80001698:	00a00593          	li	a1,10
    8000169c:	0004851b          	sext.w	a0,s1
    800016a0:	00004097          	auipc	ra,0x4
    800016a4:	730080e7          	jalr	1840(ra) # 80005dd0 <_Z8printIntiii>
        printString("\n");
    800016a8:	00008517          	auipc	a0,0x8
    800016ac:	a5850513          	addi	a0,a0,-1448 # 80009100 <CONSOLE_STATUS+0xf0>
    800016b0:	00004097          	auipc	ra,0x4
    800016b4:	588080e7          	jalr	1416(ra) # 80005c38 <_Z11printStringPKc>
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
    80001720:	51c080e7          	jalr	1308(ra) # 80005c38 <_Z11printStringPKc>
        printInt(i);
    80001724:	00000613          	li	a2,0
    80001728:	00a00593          	li	a1,10
    8000172c:	00048513          	mv	a0,s1
    80001730:	00004097          	auipc	ra,0x4
    80001734:	6a0080e7          	jalr	1696(ra) # 80005dd0 <_Z8printIntiii>
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
    80001774:	4c8080e7          	jalr	1224(ra) # 80005c38 <_Z11printStringPKc>
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
    800017a0:	49c080e7          	jalr	1180(ra) # 80005c38 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00004097          	auipc	ra,0x4
    800017b4:	620080e7          	jalr	1568(ra) # 80005dd0 <_Z8printIntiii>
        printString("\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	94850513          	addi	a0,a0,-1720 # 80009100 <CONSOLE_STATUS+0xf0>
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	478080e7          	jalr	1144(ra) # 80005c38 <_Z11printStringPKc>
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
    8000180c:	35872703          	lw	a4,856(a4) # 8000bb60 <head>
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
    80001830:	33448493          	addi	s1,s1,820 # 8000bb60 <head>
    80001834:	0084b503          	ld	a0,8(s1)
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	ba8080e7          	jalr	-1112(ra) # 800013e0 <sem_wait>
        __putc(buffer[head++]);
    80001840:	0004a783          	lw	a5,0(s1)
    80001844:	0017871b          	addiw	a4,a5,1
    80001848:	00e4a023          	sw	a4,0(s1)
    8000184c:	00f487b3          	add	a5,s1,a5
    80001850:	0107c503          	lbu	a0,16(a5)
    80001854:	00007097          	auipc	ra,0x7
    80001858:	fb8080e7          	jalr	-72(ra) # 8000880c <__putc>
        sem_signal(spaceAvailable);
    8000185c:	0204b503          	ld	a0,32(s1)
    80001860:	00000097          	auipc	ra,0x0
    80001864:	bac080e7          	jalr	-1108(ra) # 8000140c <sem_signal>
    while(head!=10)
    80001868:	0000a717          	auipc	a4,0xa
    8000186c:	2f872703          	lw	a4,760(a4) # 8000bb60 <head>
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
    80001894:	2f872703          	lw	a4,760(a4) # 8000bb88 <tail>
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
    800018b8:	2ac48493          	addi	s1,s1,684 # 8000bb60 <head>
    800018bc:	0204b503          	ld	a0,32(s1)
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	b20080e7          	jalr	-1248(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    800018c8:	0284a783          	lw	a5,40(s1)
    800018cc:	0000a717          	auipc	a4,0xa
    800018d0:	07470713          	addi	a4,a4,116 # 8000b940 <string>
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
    800018fc:	29072703          	lw	a4,656(a4) # 8000bb88 <tail>
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
    80001940:	d94080e7          	jalr	-620(ra) # 800036d0 <_Znwm>
    80001944:	00050493          	mv	s1,a0
    80001948:	00000613          	li	a2,0
    8000194c:	00000597          	auipc	a1,0x0
    80001950:	c6458593          	addi	a1,a1,-924 # 800015b0 <_Z15thread1FunctionPv>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	f14080e7          	jalr	-236(ra) # 80003868 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000195c:	00048513          	mv	a0,s1
    80001960:	00002097          	auipc	ra,0x2
    80001964:	e40080e7          	jalr	-448(ra) # 800037a0 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	01000513          	li	a0,16
    8000196c:	00002097          	auipc	ra,0x2
    80001970:	d64080e7          	jalr	-668(ra) # 800036d0 <_Znwm>
    80001974:	00050493          	mv	s1,a0
    80001978:	00000613          	li	a2,0
    8000197c:	00000597          	auipc	a1,0x0
    80001980:	cd458593          	addi	a1,a1,-812 # 80001650 <_Z15thread2FunctionPv>
    80001984:	00002097          	auipc	ra,0x2
    80001988:	ee4080e7          	jalr	-284(ra) # 80003868 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000198c:	00048513          	mv	a0,s1
    80001990:	00002097          	auipc	ra,0x2
    80001994:	e10080e7          	jalr	-496(ra) # 800037a0 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	110080e7          	jalr	272(ra) # 80003aa8 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    800019a0:	00007517          	auipc	a0,0x7
    800019a4:	6c850513          	addi	a0,a0,1736 # 80009068 <CONSOLE_STATUS+0x58>
    800019a8:	00004097          	auipc	ra,0x4
    800019ac:	290080e7          	jalr	656(ra) # 80005c38 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    800019b0:	00002097          	auipc	ra,0x2
    800019b4:	118080e7          	jalr	280(ra) # 80003ac8 <_ZN5Riscv17disableInterruptsEv>
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
    800019dc:	d20080e7          	jalr	-736(ra) # 800036f8 <_ZdlPv>
    800019e0:	00090513          	mv	a0,s2
    800019e4:	0000f097          	auipc	ra,0xf
    800019e8:	344080e7          	jalr	836(ra) # 80010d28 <_Unwind_Resume>
    800019ec:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00002097          	auipc	ra,0x2
    800019f8:	d04080e7          	jalr	-764(ra) # 800036f8 <_ZdlPv>
    800019fc:	00090513          	mv	a0,s2
    80001a00:	0000f097          	auipc	ra,0xf
    80001a04:	328080e7          	jalr	808(ra) # 80010d28 <_Unwind_Resume>

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
    80001a28:	cac080e7          	jalr	-852(ra) # 800036d0 <_Znwm>
    80001a2c:	00050493          	mv	s1,a0
    80001a30:	00000613          	li	a2,0
    80001a34:	00000597          	auipc	a1,0x0
    80001a38:	b5058593          	addi	a1,a1,-1200 # 80001584 <_Z4idlePv>
    80001a3c:	00002097          	auipc	ra,0x2
    80001a40:	e2c080e7          	jalr	-468(ra) # 80003868 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	d58080e7          	jalr	-680(ra) # 800037a0 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a50:	01000513          	li	a0,16
    80001a54:	00002097          	auipc	ra,0x2
    80001a58:	c7c080e7          	jalr	-900(ra) # 800036d0 <_Znwm>
    80001a5c:	00050493          	mv	s1,a0
    80001a60:	00000613          	li	a2,0
    80001a64:	00000597          	auipc	a1,0x0
    80001a68:	b4c58593          	addi	a1,a1,-1204 # 800015b0 <_Z15thread1FunctionPv>
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	dfc080e7          	jalr	-516(ra) # 80003868 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	d28080e7          	jalr	-728(ra) # 800037a0 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a80:	01000513          	li	a0,16
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	c4c080e7          	jalr	-948(ra) # 800036d0 <_Znwm>
    80001a8c:	00050493          	mv	s1,a0
    80001a90:	00000613          	li	a2,0
    80001a94:	00000597          	auipc	a1,0x0
    80001a98:	cc058593          	addi	a1,a1,-832 # 80001754 <_Z20thread2FunctionTest2Pv>
    80001a9c:	00002097          	auipc	ra,0x2
    80001aa0:	dcc080e7          	jalr	-564(ra) # 80003868 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00002097          	auipc	ra,0x2
    80001aac:	cf8080e7          	jalr	-776(ra) # 800037a0 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	ff8080e7          	jalr	-8(ra) # 80003aa8 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	5b050513          	addi	a0,a0,1456 # 80009068 <CONSOLE_STATUS+0x58>
    80001ac0:	00004097          	auipc	ra,0x4
    80001ac4:	178080e7          	jalr	376(ra) # 80005c38 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001ac8:	00002097          	auipc	ra,0x2
    80001acc:	000080e7          	jalr	ra # 80003ac8 <_ZN5Riscv17disableInterruptsEv>
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
    80001af4:	c08080e7          	jalr	-1016(ra) # 800036f8 <_ZdlPv>
    80001af8:	00090513          	mv	a0,s2
    80001afc:	0000f097          	auipc	ra,0xf
    80001b00:	22c080e7          	jalr	556(ra) # 80010d28 <_Unwind_Resume>
    80001b04:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00002097          	auipc	ra,0x2
    80001b10:	bec080e7          	jalr	-1044(ra) # 800036f8 <_ZdlPv>
    80001b14:	00090513          	mv	a0,s2
    80001b18:	0000f097          	auipc	ra,0xf
    80001b1c:	210080e7          	jalr	528(ra) # 80010d28 <_Unwind_Resume>
    80001b20:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00002097          	auipc	ra,0x2
    80001b2c:	bd0080e7          	jalr	-1072(ra) # 800036f8 <_ZdlPv>
    80001b30:	00090513          	mv	a0,s2
    80001b34:	0000f097          	auipc	ra,0xf
    80001b38:	1f4080e7          	jalr	500(ra) # 80010d28 <_Unwind_Resume>

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
    80001b5c:	0e0080e7          	jalr	224(ra) # 80005c38 <_Z11printStringPKc>
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
    80001ba0:	09c080e7          	jalr	156(ra) # 80005c38 <_Z11printStringPKc>
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
    80001bf4:	048080e7          	jalr	72(ra) # 80005c38 <_Z11printStringPKc>
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
    80001c3c:	000080e7          	jalr	ra # 80005c38 <_Z11printStringPKc>
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
    80001c80:	fbc080e7          	jalr	-68(ra) # 80005c38 <_Z11printStringPKc>
            return;
    80001c84:	f21ff06f          	j	80001ba4 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001c88:	00007517          	auipc	a0,0x7
    80001c8c:	40050513          	addi	a0,a0,1024 # 80009088 <CONSOLE_STATUS+0x78>
    80001c90:	00004097          	auipc	ra,0x4
    80001c94:	fa8080e7          	jalr	-88(ra) # 80005c38 <_Z11printStringPKc>
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
    80001cb8:	f84080e7          	jalr	-124(ra) # 80005c38 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001cbc:	0000a797          	auipc	a5,0xa
    80001cc0:	e547b783          	ld	a5,-428(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001cc4:	0007b503          	ld	a0,0(a5)
    80001cc8:	0000a797          	auipc	a5,0xa
    80001ccc:	df07b783          	ld	a5,-528(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001cf4:	f48080e7          	jalr	-184(ra) # 80005c38 <_Z11printStringPKc>
}
    80001cf8:	00813083          	ld	ra,8(sp)
    80001cfc:	00013403          	ld	s0,0(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret
        printString("OK\n");
    80001d08:	00007517          	auipc	a0,0x7
    80001d0c:	38050513          	addi	a0,a0,896 # 80009088 <CONSOLE_STATUS+0x78>
    80001d10:	00004097          	auipc	ra,0x4
    80001d14:	f28080e7          	jalr	-216(ra) # 80005c38 <_Z11printStringPKc>
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
    80001d44:	ef8080e7          	jalr	-264(ra) # 80005c38 <_Z11printStringPKc>
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
    80001d98:	03c080e7          	jalr	60(ra) # 80005dd0 <_Z8printIntiii>
    printString("\n");
    80001d9c:	00007517          	auipc	a0,0x7
    80001da0:	36450513          	addi	a0,a0,868 # 80009100 <CONSOLE_STATUS+0xf0>
    80001da4:	00004097          	auipc	ra,0x4
    80001da8:	e94080e7          	jalr	-364(ra) # 80005c38 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001dac:	00291793          	slli	a5,s2,0x2
    80001db0:	01278933          	add	s2,a5,s2
    80001db4:	00191913          	slli	s2,s2,0x1
    80001db8:	03390863          	beq	s2,s3,80001de8 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001dbc:	00007517          	auipc	a0,0x7
    80001dc0:	2c450513          	addi	a0,a0,708 # 80009080 <CONSOLE_STATUS+0x70>
    80001dc4:	00004097          	auipc	ra,0x4
    80001dc8:	e74080e7          	jalr	-396(ra) # 80005c38 <_Z11printStringPKc>
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
    80001df4:	e48080e7          	jalr	-440(ra) # 80005c38 <_Z11printStringPKc>
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
    80001e18:	e24080e7          	jalr	-476(ra) # 80005c38 <_Z11printStringPKc>
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
    80001e44:	df8080e7          	jalr	-520(ra) # 80005c38 <_Z11printStringPKc>
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
         printString("OK\n");
    80001e58:	00007517          	auipc	a0,0x7
    80001e5c:	23050513          	addi	a0,a0,560 # 80009088 <CONSOLE_STATUS+0x78>
    80001e60:	00004097          	auipc	ra,0x4
    80001e64:	dd8080e7          	jalr	-552(ra) # 80005c38 <_Z11printStringPKc>
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
    80001e90:	dac080e7          	jalr	-596(ra) # 80005c38 <_Z11printStringPKc>
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
    80001ed4:	d68080e7          	jalr	-664(ra) # 80005c38 <_Z11printStringPKc>
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
    80001f5c:	ce0080e7          	jalr	-800(ra) # 80005c38 <_Z11printStringPKc>
                return;
    80001f60:	f79ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001f64:	00007517          	auipc	a0,0x7
    80001f68:	17450513          	addi	a0,a0,372 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f6c:	00004097          	auipc	ra,0x4
    80001f70:	ccc080e7          	jalr	-820(ra) # 80005c38 <_Z11printStringPKc>
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
    80001fd4:	c68080e7          	jalr	-920(ra) # 80005c38 <_Z11printStringPKc>
                return;
    80001fd8:	f01ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001fdc:	00007517          	auipc	a0,0x7
    80001fe0:	0fc50513          	addi	a0,a0,252 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001fe4:	00004097          	auipc	ra,0x4
    80001fe8:	c54080e7          	jalr	-940(ra) # 80005c38 <_Z11printStringPKc>
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
    80002004:	c38080e7          	jalr	-968(ra) # 80005c38 <_Z11printStringPKc>
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
    80002028:	9b0080e7          	jalr	-1616(ra) # 800039d4 <_ZN14PeriodicThreadC1Em>
    8000202c:	0000a797          	auipc	a5,0xa
    80002030:	96478793          	addi	a5,a5,-1692 # 8000b990 <_ZTV12TestPeriodic+0x10>
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
    8000206c:	668080e7          	jalr	1640(ra) # 800036d0 <_Znwm>
    80002070:	00050913          	mv	s2,a0
    80002074:	03200593          	li	a1,50
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	f94080e7          	jalr	-108(ra) # 8000200c <_ZN12TestPeriodicC1Em>
    t->start();
    80002080:	00090513          	mv	a0,s2
    80002084:	00001097          	auipc	ra,0x1
    80002088:	71c080e7          	jalr	1820(ra) # 800037a0 <_ZN6Thread5startEv>
    while(true)
    8000208c:	0000006f          	j	8000208c <_Z11threadTest3v+0x40>
    80002090:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002094:	00090513          	mv	a0,s2
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	660080e7          	jalr	1632(ra) # 800036f8 <_ZdlPv>
    800020a0:	00048513          	mv	a0,s1
    800020a4:	0000f097          	auipc	ra,0xf
    800020a8:	c84080e7          	jalr	-892(ra) # 80010d28 <_Unwind_Resume>

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
    800020f8:	b44080e7          	jalr	-1212(ra) # 80005c38 <_Z11printStringPKc>
    object* o = new object;
    800020fc:	02c00513          	li	a0,44
    80002100:	00001097          	auipc	ra,0x1
    80002104:	5d0080e7          	jalr	1488(ra) # 800036d0 <_Znwm>
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
    80002184:	578080e7          	jalr	1400(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)m3;
    80002188:	000a0513          	mv	a0,s4
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	56c080e7          	jalr	1388(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)m4;
    80002194:	000a8513          	mv	a0,s5
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	560080e7          	jalr	1376(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)m2;
    800021a0:	00098513          	mv	a0,s3
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	554080e7          	jalr	1364(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)m5;
    800021ac:	000b0513          	mv	a0,s6
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	548080e7          	jalr	1352(ra) # 800036f8 <_ZdlPv>
    delete o;
    800021b8:	00048863          	beqz	s1,800021c8 <_Z10mallocTestv+0x104>
    800021bc:	00048513          	mv	a0,s1
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	538080e7          	jalr	1336(ra) # 800036f8 <_ZdlPv>
    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800021c8:	00007517          	auipc	a0,0x7
    800021cc:	f4050513          	addi	a0,a0,-192 # 80009108 <CONSOLE_STATUS+0xf8>
    800021d0:	00004097          	auipc	ra,0x4
    800021d4:	a68080e7          	jalr	-1432(ra) # 80005c38 <_Z11printStringPKc>
    800021d8:	0140006f          	j	800021ec <_Z10mallocTestv+0x128>
        printString("not OK\n");
    800021dc:	00007517          	auipc	a0,0x7
    800021e0:	ea450513          	addi	a0,a0,-348 # 80009080 <CONSOLE_STATUS+0x70>
    800021e4:	00004097          	auipc	ra,0x4
    800021e8:	a54080e7          	jalr	-1452(ra) # 80005c38 <_Z11printStringPKc>
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
    80002234:	a08080e7          	jalr	-1528(ra) # 80005c38 <_Z11printStringPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    80002238:	0000a797          	auipc	a5,0xa
    8000223c:	8807b783          	ld	a5,-1920(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002240:	0007b503          	ld	a0,0(a5)
    80002244:	0000a797          	auipc	a5,0xa
    80002248:	8cc7b783          	ld	a5,-1844(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80002270:	9cc080e7          	jalr	-1588(ra) # 80005c38 <_Z11printStringPKc>
}
    80002274:	01813083          	ld	ra,24(sp)
    80002278:	01013403          	ld	s0,16(sp)
    8000227c:	00813483          	ld	s1,8(sp)
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002288:	0000a797          	auipc	a5,0xa
    8000228c:	8887b783          	ld	a5,-1912(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002290:	0007b503          	ld	a0,0(a5)
    80002294:	0000a797          	auipc	a5,0xa
    80002298:	8247b783          	ld	a5,-2012(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    800022dc:	420080e7          	jalr	1056(ra) # 800036f8 <_ZdlPv>
    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800022e0:	00007517          	auipc	a0,0x7
    800022e4:	e8850513          	addi	a0,a0,-376 # 80009168 <CONSOLE_STATUS+0x158>
    800022e8:	00004097          	auipc	ra,0x4
    800022ec:	950080e7          	jalr	-1712(ra) # 80005c38 <_Z11printStringPKc>
    800022f0:	f85ff06f          	j	80002274 <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022f4:	00007517          	auipc	a0,0x7
    800022f8:	d8c50513          	addi	a0,a0,-628 # 80009080 <CONSOLE_STATUS+0x70>
    800022fc:	00004097          	auipc	ra,0x4
    80002300:	93c080e7          	jalr	-1732(ra) # 80005c38 <_Z11printStringPKc>
        return;
    80002304:	f71ff06f          	j	80002274 <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    80002308:	00007517          	auipc	a0,0x7
    8000230c:	d7850513          	addi	a0,a0,-648 # 80009080 <CONSOLE_STATUS+0x70>
    80002310:	00004097          	auipc	ra,0x4
    80002314:	928080e7          	jalr	-1752(ra) # 80005c38 <_Z11printStringPKc>
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
    80002358:	8e4080e7          	jalr	-1820(ra) # 80005c38 <_Z11printStringPKc>
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
    800023a0:	89c080e7          	jalr	-1892(ra) # 80005c38 <_Z11printStringPKc>
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
    800023e0:	31c080e7          	jalr	796(ra) # 800036f8 <_ZdlPv>
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
    80002454:	2a8080e7          	jalr	680(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)m[4];
    80002458:	f8043503          	ld	a0,-128(s0)
    8000245c:	00050663          	beqz	a0,80002468 <_Z17mallocGapFillTestv+0x14c>
    80002460:	00001097          	auipc	ra,0x1
    80002464:	298080e7          	jalr	664(ra) # 800036f8 <_ZdlPv>
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
    800024ac:	00003097          	auipc	ra,0x3
    800024b0:	78c080e7          	jalr	1932(ra) # 80005c38 <_Z11printStringPKc>
        return;
    800024b4:	ef1ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024b8:	00007517          	auipc	a0,0x7
    800024bc:	bc850513          	addi	a0,a0,-1080 # 80009080 <CONSOLE_STATUS+0x70>
    800024c0:	00003097          	auipc	ra,0x3
    800024c4:	778080e7          	jalr	1912(ra) # 80005c38 <_Z11printStringPKc>
        return;
    800024c8:	eddff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024cc:	00007517          	auipc	a0,0x7
    800024d0:	bb450513          	addi	a0,a0,-1100 # 80009080 <CONSOLE_STATUS+0x70>
    800024d4:	00003097          	auipc	ra,0x3
    800024d8:	764080e7          	jalr	1892(ra) # 80005c38 <_Z11printStringPKc>
        return;
    800024dc:	ec9ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024e0:	00007517          	auipc	a0,0x7
    800024e4:	ba050513          	addi	a0,a0,-1120 # 80009080 <CONSOLE_STATUS+0x70>
    800024e8:	00003097          	auipc	ra,0x3
    800024ec:	750080e7          	jalr	1872(ra) # 80005c38 <_Z11printStringPKc>
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
    80002518:	1e4080e7          	jalr	484(ra) # 800036f8 <_ZdlPv>
    8000251c:	fd9ff06f          	j	800024f4 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002520:	00048513          	mv	a0,s1
    80002524:	00001097          	auipc	ra,0x1
    80002528:	1d4080e7          	jalr	468(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)tmp2;
    8000252c:	00090513          	mv	a0,s2
    80002530:	00001097          	auipc	ra,0x1
    80002534:	1c8080e7          	jalr	456(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)tmp3;
    80002538:	00098513          	mv	a0,s3
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	1bc080e7          	jalr	444(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)tmp4;
    80002544:	000c0513          	mv	a0,s8
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	1b0080e7          	jalr	432(ra) # 800036f8 <_ZdlPv>
    delete (uint64*)tmp5;
    80002550:	000b8513          	mv	a0,s7
    80002554:	00001097          	auipc	ra,0x1
    80002558:	1a4080e7          	jalr	420(ra) # 800036f8 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	c8c50513          	addi	a0,a0,-884 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002564:	00003097          	auipc	ra,0x3
    80002568:	6d4080e7          	jalr	1748(ra) # 80005c38 <_Z11printStringPKc>
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
    800025b0:	5d450513          	addi	a0,a0,1492 # 8000bb80 <spaceAvailable>
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	dc8080e7          	jalr	-568(ra) # 8000137c <sem_open>

    sem_open(&itemAvailable, 0);
    800025bc:	00000593          	li	a1,0
    800025c0:	00009517          	auipc	a0,0x9
    800025c4:	5a850513          	addi	a0,a0,1448 # 8000bb68 <itemAvailable>
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
    80002614:	4d8080e7          	jalr	1240(ra) # 80002ae8 <_ZN3PCB10isFinishedEv>
    80002618:	fe0506e3          	beqz	a0,80002604 <_Z8semTest1v+0x6c>
    8000261c:	fe843503          	ld	a0,-24(s0)
    80002620:	00000097          	auipc	ra,0x0
    80002624:	4c8080e7          	jalr	1224(ra) # 80002ae8 <_ZN3PCB10isFinishedEv>
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

00000000800026f8 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800026f8:	ff010113          	addi	sp,sp,-16
    800026fc:	00813423          	sd	s0,8(sp)
    80002700:	01010413          	addi	s0,sp,16
    80002704:	00813403          	ld	s0,8(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret

0000000080002710 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00813423          	sd	s0,8(sp)
    80002718:	01010413          	addi	s0,sp,16
    8000271c:	00813403          	ld	s0,8(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00113423          	sd	ra,8(sp)
    80002730:	00813023          	sd	s0,0(sp)
    80002734:	01010413          	addi	s0,sp,16
    80002738:	00009797          	auipc	a5,0x9
    8000273c:	22878793          	addi	a5,a5,552 # 8000b960 <_ZTV14PeriodicThread+0x10>
    80002740:	00f53023          	sd	a5,0(a0)
    80002744:	00001097          	auipc	ra,0x1
    80002748:	f1c080e7          	jalr	-228(ra) # 80003660 <_ZN6ThreadD1Ev>
    8000274c:	00813083          	ld	ra,8(sp)
    80002750:	00013403          	ld	s0,0(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <_ZN14PeriodicThreadD0Ev>:
    8000275c:	fe010113          	addi	sp,sp,-32
    80002760:	00113c23          	sd	ra,24(sp)
    80002764:	00813823          	sd	s0,16(sp)
    80002768:	00913423          	sd	s1,8(sp)
    8000276c:	02010413          	addi	s0,sp,32
    80002770:	00050493          	mv	s1,a0
    80002774:	00009797          	auipc	a5,0x9
    80002778:	1ec78793          	addi	a5,a5,492 # 8000b960 <_ZTV14PeriodicThread+0x10>
    8000277c:	00f53023          	sd	a5,0(a0)
    80002780:	00001097          	auipc	ra,0x1
    80002784:	ee0080e7          	jalr	-288(ra) # 80003660 <_ZN6ThreadD1Ev>
    80002788:	00048513          	mv	a0,s1
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	f6c080e7          	jalr	-148(ra) # 800036f8 <_ZdlPv>
    80002794:	01813083          	ld	ra,24(sp)
    80002798:	01013403          	ld	s0,16(sp)
    8000279c:	00813483          	ld	s1,8(sp)
    800027a0:	02010113          	addi	sp,sp,32
    800027a4:	00008067          	ret

00000000800027a8 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	00813023          	sd	s0,0(sp)
    800027b4:	01010413          	addi	s0,sp,16
    800027b8:	00009797          	auipc	a5,0x9
    800027bc:	1a878793          	addi	a5,a5,424 # 8000b960 <_ZTV14PeriodicThread+0x10>
    800027c0:	00f53023          	sd	a5,0(a0)
    800027c4:	00001097          	auipc	ra,0x1
    800027c8:	e9c080e7          	jalr	-356(ra) # 80003660 <_ZN6ThreadD1Ev>
    800027cc:	00813083          	ld	ra,8(sp)
    800027d0:	00013403          	ld	s0,0(sp)
    800027d4:	01010113          	addi	sp,sp,16
    800027d8:	00008067          	ret

00000000800027dc <_ZN12TestPeriodicD0Ev>:
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00113c23          	sd	ra,24(sp)
    800027e4:	00813823          	sd	s0,16(sp)
    800027e8:	00913423          	sd	s1,8(sp)
    800027ec:	02010413          	addi	s0,sp,32
    800027f0:	00050493          	mv	s1,a0
    800027f4:	00009797          	auipc	a5,0x9
    800027f8:	16c78793          	addi	a5,a5,364 # 8000b960 <_ZTV14PeriodicThread+0x10>
    800027fc:	00f53023          	sd	a5,0(a0)
    80002800:	00001097          	auipc	ra,0x1
    80002804:	e60080e7          	jalr	-416(ra) # 80003660 <_ZN6ThreadD1Ev>
    80002808:	00048513          	mv	a0,s1
    8000280c:	00001097          	auipc	ra,0x1
    80002810:	eec080e7          	jalr	-276(ra) # 800036f8 <_ZdlPv>
    80002814:	01813083          	ld	ra,24(sp)
    80002818:	01013403          	ld	s0,16(sp)
    8000281c:	00813483          	ld	s1,8(sp)
    80002820:	02010113          	addi	sp,sp,32
    80002824:	00008067          	ret

0000000080002828 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002828:	ff010113          	addi	sp,sp,-16
    8000282c:	00113423          	sd	ra,8(sp)
    80002830:	00813023          	sd	s0,0(sp)
    80002834:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    80002838:	00001097          	auipc	ra,0x1
    8000283c:	2d8080e7          	jalr	728(ra) # 80003b10 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002840:	00009797          	auipc	a5,0x9
    80002844:	3507b783          	ld	a5,848(a5) # 8000bb90 <_ZN3PCB7runningE>
    80002848:	0287b703          	ld	a4,40(a5)
    8000284c:	0307b503          	ld	a0,48(a5)
    80002850:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	b00080e7          	jalr	-1280(ra) # 80001354 <thread_exit>
}
    8000285c:	00813083          	ld	ra,8(sp)
    80002860:	00013403          	ld	s0,0(sp)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000286c:	ff010113          	addi	sp,sp,-16
    80002870:	00813423          	sd	s0,8(sp)
    80002874:	01010413          	addi	s0,sp,16
    })
    80002878:	00050023          	sb	zero,0(a0)
    8000287c:	00e53c23          	sd	a4,24(a0)
    80002880:	02053023          	sd	zero,32(a0)
    80002884:	02b53423          	sd	a1,40(a0)
    80002888:	02c53823          	sd	a2,48(a0)
    8000288c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002890:	000017b7          	lui	a5,0x1
    80002894:	00f686b3          	add	a3,a3,a5
    })
    80002898:	04d53423          	sd	a3,72(a0)
    8000289c:	00000797          	auipc	a5,0x0
    800028a0:	f8c78793          	addi	a5,a5,-116 # 80002828 <_ZN3PCB6runnerEv>
    800028a4:	04f53823          	sd	a5,80(a0)
    nextPCB = 0;
    800028a8:	00053423          	sd	zero,8(a0)
}
    800028ac:	00813403          	ld	s0,8(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN3PCB5sleepEm>:
{
    800028b8:	ff010113          	addi	sp,sp,-16
    800028bc:	00813423          	sd	s0,8(sp)
    800028c0:	01010413          	addi	s0,sp,16
}
    800028c4:	00813403          	ld	s0,8(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret

00000000800028d0 <_ZN3PCB5startEv>:
{
    800028d0:	ff010113          	addi	sp,sp,-16
    800028d4:	00113423          	sd	ra,8(sp)
    800028d8:	00813023          	sd	s0,0(sp)
    800028dc:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800028e0:	00001097          	auipc	ra,0x1
    800028e4:	c1c080e7          	jalr	-996(ra) # 800034fc <_ZN9Scheduler3putEP3PCB>
}
    800028e8:	00813083          	ld	ra,8(sp)
    800028ec:	00013403          	ld	s0,0(sp)
    800028f0:	01010113          	addi	sp,sp,16
    800028f4:	00008067          	ret

00000000800028f8 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800028f8:	fe010113          	addi	sp,sp,-32
    800028fc:	00113c23          	sd	ra,24(sp)
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	01213023          	sd	s2,0(sp)
    8000290c:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    80002910:	00009497          	auipc	s1,0x9
    80002914:	2804b483          	ld	s1,640(s1) # 8000bb90 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002918:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    8000291c:	00100793          	li	a5,1
    80002920:	04f70a63          	beq	a4,a5,80002974 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002924:	00001097          	auipc	ra,0x1
    80002928:	c2c080e7          	jalr	-980(ra) # 80003550 <_ZN9Scheduler3getEv>
    8000292c:	00009917          	auipc	s2,0x9
    80002930:	26490913          	addi	s2,s2,612 # 8000bb90 <_ZN3PCB7runningE>
    80002934:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002938:	00100793          	li	a5,1
    8000293c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002940:	00001097          	auipc	ra,0x1
    80002944:	648080e7          	jalr	1608(ra) # 80003f88 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002948:	00093583          	ld	a1,0(s2)
    8000294c:	04858593          	addi	a1,a1,72
    80002950:	04848513          	addi	a0,s1,72
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	8e4080e7          	jalr	-1820(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    8000295c:	01813083          	ld	ra,24(sp)
    80002960:	01013403          	ld	s0,16(sp)
    80002964:	00813483          	ld	s1,8(sp)
    80002968:	00013903          	ld	s2,0(sp)
    8000296c:	02010113          	addi	sp,sp,32
    80002970:	00008067          	ret
        Scheduler::put(old);
    80002974:	00048513          	mv	a0,s1
    80002978:	00001097          	auipc	ra,0x1
    8000297c:	b84080e7          	jalr	-1148(ra) # 800034fc <_ZN9Scheduler3putEP3PCB>
    80002980:	fa5ff06f          	j	80002924 <_ZN3PCB8dispatchEv+0x2c>

0000000080002984 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002994:	00002097          	auipc	ra,0x2
    80002998:	9c0080e7          	jalr	-1600(ra) # 80004354 <_Z7kmallocm>
}
    8000299c:	00813083          	ld	ra,8(sp)
    800029a0:	00013403          	ld	s0,0(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00113423          	sd	ra,8(sp)
    800029b4:	00813023          	sd	s0,0(sp)
    800029b8:	01010413          	addi	s0,sp,16
    kfree(p);
    800029bc:	00002097          	auipc	ra,0x2
    800029c0:	9fc080e7          	jalr	-1540(ra) # 800043b8 <_Z5kfreePv>
}
    800029c4:	00813083          	ld	ra,8(sp)
    800029c8:	00013403          	ld	s0,0(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00113423          	sd	ra,8(sp)
    800029dc:	00813023          	sd	s0,0(sp)
    800029e0:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    800029e4:	03853503          	ld	a0,56(a0)
    800029e8:	00002097          	auipc	ra,0x2
    800029ec:	9d0080e7          	jalr	-1584(ra) # 800043b8 <_Z5kfreePv>
}
    800029f0:	00813083          	ld	ra,8(sp)
    800029f4:	00013403          	ld	s0,0(sp)
    800029f8:	01010113          	addi	sp,sp,16
    800029fc:	00008067          	ret

0000000080002a00 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002a00:	fd010113          	addi	sp,sp,-48
    80002a04:	02113423          	sd	ra,40(sp)
    80002a08:	02813023          	sd	s0,32(sp)
    80002a0c:	00913c23          	sd	s1,24(sp)
    80002a10:	01213823          	sd	s2,16(sp)
    80002a14:	01313423          	sd	s3,8(sp)
    80002a18:	01413023          	sd	s4,0(sp)
    80002a1c:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002a20:	05800513          	li	a0,88
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	f60080e7          	jalr	-160(ra) # 80002984 <_ZN3PCBnwEm>
    80002a2c:	00050493          	mv	s1,a0
    80002a30:	00000713          	li	a4,0
    80002a34:	00000693          	li	a3,0
    80002a38:	00000613          	li	a2,0
    80002a3c:	00000593          	li	a1,0
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	e2c080e7          	jalr	-468(ra) # 8000286c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002a48:	00048513          	mv	a0,s1
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	e84080e7          	jalr	-380(ra) # 800028d0 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002a54:	00100793          	li	a5,1
    80002a58:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002a5c:	00001097          	auipc	ra,0x1
    80002a60:	af4080e7          	jalr	-1292(ra) # 80003550 <_ZN9Scheduler3getEv>
    80002a64:	00009917          	auipc	s2,0x9
    80002a68:	12c90913          	addi	s2,s2,300 # 8000bb90 <_ZN3PCB7runningE>
    80002a6c:	00a93023          	sd	a0,0(s2)
    80002a70:	00100a13          	li	s4,1
    80002a74:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002a78:	00001537          	lui	a0,0x1
    80002a7c:	00002097          	auipc	ra,0x2
    80002a80:	8d8080e7          	jalr	-1832(ra) # 80004354 <_Z7kmallocm>
    80002a84:	00050993          	mv	s3,a0
    80002a88:	05800513          	li	a0,88
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	ef8080e7          	jalr	-264(ra) # 80002984 <_ZN3PCBnwEm>
    80002a94:	00050493          	mv	s1,a0
    80002a98:	00200713          	li	a4,2
    80002a9c:	00098693          	mv	a3,s3
    80002aa0:	00000613          	li	a2,0
    80002aa4:	00009597          	auipc	a1,0x9
    80002aa8:	04c5b583          	ld	a1,76(a1) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	dc0080e7          	jalr	-576(ra) # 8000286c <_ZN3PCBC1EPFvPvES0_S0_m>
    80002ab4:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002ab8:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002abc:	00893503          	ld	a0,8(s2)
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	e10080e7          	jalr	-496(ra) # 800028d0 <_ZN3PCB5startEv>
}
    80002ac8:	02813083          	ld	ra,40(sp)
    80002acc:	02013403          	ld	s0,32(sp)
    80002ad0:	01813483          	ld	s1,24(sp)
    80002ad4:	01013903          	ld	s2,16(sp)
    80002ad8:	00813983          	ld	s3,8(sp)
    80002adc:	00013a03          	ld	s4,0(sp)
    80002ae0:	03010113          	addi	sp,sp,48
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002ae8:	ff010113          	addi	sp,sp,-16
    80002aec:	00813423          	sd	s0,8(sp)
    80002af0:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002af4:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002af8:	ffd50513          	addi	a0,a0,-3
}
    80002afc:	00153513          	seqz	a0,a0
    80002b00:	00813403          	ld	s0,8(sp)
    80002b04:	01010113          	addi	sp,sp,16
    80002b08:	00008067          	ret

0000000080002b0c <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002b0c:	ff010113          	addi	sp,sp,-16
    80002b10:	00113423          	sd	ra,8(sp)
    80002b14:	00813023          	sd	s0,0(sp)
    80002b18:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    80002b1c:	00009797          	auipc	a5,0x9
    80002b20:	07478793          	addi	a5,a5,116 # 8000bb90 <_ZN3PCB7runningE>
    80002b24:	0007b823          	sd	zero,16(a5)
    PCB::running->setState(PCB::FINISHED);
    80002b28:	0007b783          	ld	a5,0(a5)
    80002b2c:	00300713          	li	a4,3
    80002b30:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	dc4080e7          	jalr	-572(ra) # 800028f8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002b3c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b40:	00001097          	auipc	ra,0x1
    80002b44:	410080e7          	jalr	1040(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b48:	00813083          	ld	ra,8(sp)
    80002b4c:	00013403          	ld	s0,0(sp)
    80002b50:	01010113          	addi	sp,sp,16
    80002b54:	00008067          	ret

0000000080002b58 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00113423          	sd	ra,8(sp)
    80002b60:	00813023          	sd	s0,0(sp)
    80002b64:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002b68:	00009797          	auipc	a5,0x9
    80002b6c:	0207bc23          	sd	zero,56(a5) # 8000bba0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	d88080e7          	jalr	-632(ra) # 800028f8 <_ZN3PCB8dispatchEv>
}
    80002b78:	00813083          	ld	ra,8(sp)
    80002b7c:	00013403          	ld	s0,0(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00113423          	sd	ra,8(sp)
    80002b90:	00813023          	sd	s0,0(sp)
    80002b94:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b98:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002b9c:	00009717          	auipc	a4,0x9
    80002ba0:	ff470713          	addi	a4,a4,-12 # 8000bb90 <_ZN3PCB7runningE>
    80002ba4:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002ba8:	00073703          	ld	a4,0(a4)
    80002bac:	00009697          	auipc	a3,0x9
    80002bb0:	f3c6b683          	ld	a3,-196(a3) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bb4:	0006b683          	ld	a3,0(a3)
    80002bb8:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002bbc:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	634080e7          	jalr	1588(ra) # 800031f4 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	d30080e7          	jalr	-720(ra) # 800028f8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002bd0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	37c080e7          	jalr	892(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bdc:	00813083          	ld	ra,8(sp)
    80002be0:	00013403          	ld	s0,0(sp)
    80002be4:	01010113          	addi	sp,sp,16
    80002be8:	00008067          	ret

0000000080002bec <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002bec:	fd010113          	addi	sp,sp,-48
    80002bf0:	02113423          	sd	ra,40(sp)
    80002bf4:	02813023          	sd	s0,32(sp)
    80002bf8:	00913c23          	sd	s1,24(sp)
    80002bfc:	01213823          	sd	s2,16(sp)
    80002c00:	01313423          	sd	s3,8(sp)
    80002c04:	01413023          	sd	s4,0(sp)
    80002c08:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c0c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c10:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c14:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c18:	05800513          	li	a0,88
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	d68080e7          	jalr	-664(ra) # 80002984 <_ZN3PCBnwEm>
    80002c24:	00050493          	mv	s1,a0
    80002c28:	00200713          	li	a4,2
    80002c2c:	00009697          	auipc	a3,0x9
    80002c30:	f7c6b683          	ld	a3,-132(a3) # 8000bba8 <_ZN3PCB10savedRegA4E>
    80002c34:	000a0613          	mv	a2,s4
    80002c38:	00098593          	mv	a1,s3
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	c30080e7          	jalr	-976(ra) # 8000286c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c44:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c48:	02048e63          	beqz	s1,80002c84 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	c80080e7          	jalr	-896(ra) # 800028d0 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c58:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002c5c:	00001097          	auipc	ra,0x1
    80002c60:	2f4080e7          	jalr	756(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c64:	02813083          	ld	ra,40(sp)
    80002c68:	02013403          	ld	s0,32(sp)
    80002c6c:	01813483          	ld	s1,24(sp)
    80002c70:	01013903          	ld	s2,16(sp)
    80002c74:	00813983          	ld	s3,8(sp)
    80002c78:	00013a03          	ld	s4,0(sp)
    80002c7c:	03010113          	addi	sp,sp,48
    80002c80:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c84:	fff00513          	li	a0,-1
    80002c88:	fd5ff06f          	j	80002c5c <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002c8c <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002c8c:	ff010113          	addi	sp,sp,-16
    80002c90:	00113423          	sd	ra,8(sp)
    80002c94:	00813023          	sd	s0,0(sp)
    80002c98:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c9c:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002ca0:	02050463          	beqz	a0,80002cc8 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	c2c080e7          	jalr	-980(ra) # 800028d0 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002cac:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002cb0:	00001097          	auipc	ra,0x1
    80002cb4:	2a0080e7          	jalr	672(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002cb8:	00813083          	ld	ra,8(sp)
    80002cbc:	00013403          	ld	s0,0(sp)
    80002cc0:	01010113          	addi	sp,sp,16
    80002cc4:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002cc8:	fff00513          	li	a0,-1
    80002ccc:	fe5ff06f          	j	80002cb0 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002cd0 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002cd0:	fd010113          	addi	sp,sp,-48
    80002cd4:	02113423          	sd	ra,40(sp)
    80002cd8:	02813023          	sd	s0,32(sp)
    80002cdc:	00913c23          	sd	s1,24(sp)
    80002ce0:	01213823          	sd	s2,16(sp)
    80002ce4:	01313423          	sd	s3,8(sp)
    80002ce8:	01413023          	sd	s4,0(sp)
    80002cec:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002cf0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002cf4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002cf8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002cfc:	05800513          	li	a0,88
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	c84080e7          	jalr	-892(ra) # 80002984 <_ZN3PCBnwEm>
    80002d08:	00050493          	mv	s1,a0
    80002d0c:	00200713          	li	a4,2
    80002d10:	00009697          	auipc	a3,0x9
    80002d14:	e986b683          	ld	a3,-360(a3) # 8000bba8 <_ZN3PCB10savedRegA4E>
    80002d18:	000a0613          	mv	a2,s4
    80002d1c:	00098593          	mv	a1,s3
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	b4c080e7          	jalr	-1204(ra) # 8000286c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002d28:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002d2c:	02048863          	beqz	s1,80002d5c <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002d30:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	21c080e7          	jalr	540(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d3c:	02813083          	ld	ra,40(sp)
    80002d40:	02013403          	ld	s0,32(sp)
    80002d44:	01813483          	ld	s1,24(sp)
    80002d48:	01013903          	ld	s2,16(sp)
    80002d4c:	00813983          	ld	s3,8(sp)
    80002d50:	00013a03          	ld	s4,0(sp)
    80002d54:	03010113          	addi	sp,sp,48
    80002d58:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d5c:	fff00513          	li	a0,-1
    80002d60:	fd5ff06f          	j	80002d34 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002d64 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002d64:	fe010113          	addi	sp,sp,-32
    80002d68:	00113c23          	sd	ra,24(sp)
    80002d6c:	00813823          	sd	s0,16(sp)
    80002d70:	00913423          	sd	s1,8(sp)
    80002d74:	01213023          	sd	s2,0(sp)
    80002d78:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002d7c:	01800513          	li	a0,24
    80002d80:	00002097          	auipc	ra,0x2
    80002d84:	8e8080e7          	jalr	-1816(ra) # 80004668 <_ZN10KSemaphorenwEm>
    80002d88:	00050493          	mv	s1,a0
    80002d8c:	00000593          	li	a1,0
    80002d90:	00001097          	auipc	ra,0x1
    80002d94:	688080e7          	jalr	1672(ra) # 80004418 <_ZN10KSemaphoreC1Ei>
    80002d98:	00009797          	auipc	a5,0x9
    80002d9c:	e097bc23          	sd	s1,-488(a5) # 8000bbb0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002da0:	01800513          	li	a0,24
    80002da4:	00002097          	auipc	ra,0x2
    80002da8:	8c4080e7          	jalr	-1852(ra) # 80004668 <_ZN10KSemaphorenwEm>
    80002dac:	00050493          	mv	s1,a0
    80002db0:	00000593          	li	a1,0
    80002db4:	00001097          	auipc	ra,0x1
    80002db8:	664080e7          	jalr	1636(ra) # 80004418 <_ZN10KSemaphoreC1Ei>
    80002dbc:	00009797          	auipc	a5,0x9
    80002dc0:	de97be23          	sd	s1,-516(a5) # 8000bbb8 <_ZN8KConsole19hasCharactersOutputE>
}
    80002dc4:	01813083          	ld	ra,24(sp)
    80002dc8:	01013403          	ld	s0,16(sp)
    80002dcc:	00813483          	ld	s1,8(sp)
    80002dd0:	00013903          	ld	s2,0(sp)
    80002dd4:	02010113          	addi	sp,sp,32
    80002dd8:	00008067          	ret
    80002ddc:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002de0:	00048513          	mv	a0,s1
    80002de4:	00002097          	auipc	ra,0x2
    80002de8:	91c080e7          	jalr	-1764(ra) # 80004700 <_ZN10KSemaphoredlEPv>
    80002dec:	00090513          	mv	a0,s2
    80002df0:	0000e097          	auipc	ra,0xe
    80002df4:	f38080e7          	jalr	-200(ra) # 80010d28 <_Unwind_Resume>
    80002df8:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002dfc:	00048513          	mv	a0,s1
    80002e00:	00002097          	auipc	ra,0x2
    80002e04:	900080e7          	jalr	-1792(ra) # 80004700 <_ZN10KSemaphoredlEPv>
    80002e08:	00090513          	mv	a0,s2
    80002e0c:	0000e097          	auipc	ra,0xe
    80002e10:	f1c080e7          	jalr	-228(ra) # 80010d28 <_Unwind_Resume>

0000000080002e14 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002e14:	00009697          	auipc	a3,0x9
    80002e18:	d9c68693          	addi	a3,a3,-612 # 8000bbb0 <_ZN8KConsole18hasCharactersInputE>
    80002e1c:	0106b603          	ld	a2,16(a3)
    80002e20:	00160793          	addi	a5,a2,1
    80002e24:	00002737          	lui	a4,0x2
    80002e28:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002e2c:	00e7f7b3          	and	a5,a5,a4
    80002e30:	0186b703          	ld	a4,24(a3)
    80002e34:	04e78263          	beq	a5,a4,80002e78 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002e38:	ff010113          	addi	sp,sp,-16
    80002e3c:	00113423          	sd	ra,8(sp)
    80002e40:	00813023          	sd	s0,0(sp)
    80002e44:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002e48:	0000b717          	auipc	a4,0xb
    80002e4c:	da870713          	addi	a4,a4,-600 # 8000dbf0 <_ZN8KConsole11inputBufferE>
    80002e50:	00c70633          	add	a2,a4,a2
    80002e54:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002e58:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002e5c:	0006b503          	ld	a0,0(a3)
    80002e60:	00001097          	auipc	ra,0x1
    80002e64:	7c0080e7          	jalr	1984(ra) # 80004620 <_ZN10KSemaphore6signalEv>
}
    80002e68:	00813083          	ld	ra,8(sp)
    80002e6c:	00013403          	ld	s0,0(sp)
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	00008067          	ret
    80002e78:	00008067          	ret

0000000080002e7c <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00113c23          	sd	ra,24(sp)
    80002e84:	00813823          	sd	s0,16(sp)
    80002e88:	00913423          	sd	s1,8(sp)
    80002e8c:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002e90:	00009497          	auipc	s1,0x9
    80002e94:	d2048493          	addi	s1,s1,-736 # 8000bbb0 <_ZN8KConsole18hasCharactersInputE>
    80002e98:	0004b503          	ld	a0,0(s1)
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	624080e7          	jalr	1572(ra) # 800044c0 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002ea4:	0184b783          	ld	a5,24(s1)
    80002ea8:	0104b703          	ld	a4,16(s1)
    80002eac:	04e78063          	beq	a5,a4,80002eec <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002eb0:	0000b717          	auipc	a4,0xb
    80002eb4:	d4070713          	addi	a4,a4,-704 # 8000dbf0 <_ZN8KConsole11inputBufferE>
    80002eb8:	00f70733          	add	a4,a4,a5
    80002ebc:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002ec0:	00178793          	addi	a5,a5,1
    80002ec4:	00002737          	lui	a4,0x2
    80002ec8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002ecc:	00e7f7b3          	and	a5,a5,a4
    80002ed0:	00009717          	auipc	a4,0x9
    80002ed4:	cef73c23          	sd	a5,-776(a4) # 8000bbc8 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002ed8:	01813083          	ld	ra,24(sp)
    80002edc:	01013403          	ld	s0,16(sp)
    80002ee0:	00813483          	ld	s1,8(sp)
    80002ee4:	02010113          	addi	sp,sp,32
    80002ee8:	00008067          	ret
        return -1;
    80002eec:	0ff00513          	li	a0,255
    80002ef0:	fe9ff06f          	j	80002ed8 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002ef4 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002ef4:	00009697          	auipc	a3,0x9
    80002ef8:	cbc68693          	addi	a3,a3,-836 # 8000bbb0 <_ZN8KConsole18hasCharactersInputE>
    80002efc:	0206b603          	ld	a2,32(a3)
    80002f00:	00160793          	addi	a5,a2,1
    80002f04:	00002737          	lui	a4,0x2
    80002f08:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002f0c:	00e7f7b3          	and	a5,a5,a4
    80002f10:	0286b703          	ld	a4,40(a3)
    80002f14:	04e78a63          	beq	a5,a4,80002f68 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002f18:	ff010113          	addi	sp,sp,-16
    80002f1c:	00113423          	sd	ra,8(sp)
    80002f20:	00813023          	sd	s0,0(sp)
    80002f24:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002f28:	00068713          	mv	a4,a3
    80002f2c:	0306b683          	ld	a3,48(a3)
    80002f30:	00168693          	addi	a3,a3,1
    80002f34:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002f38:	00009697          	auipc	a3,0x9
    80002f3c:	cb868693          	addi	a3,a3,-840 # 8000bbf0 <_ZN8KConsole12outputBufferE>
    80002f40:	00c68633          	add	a2,a3,a2
    80002f44:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002f48:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002f4c:	00873503          	ld	a0,8(a4)
    80002f50:	00001097          	auipc	ra,0x1
    80002f54:	6d0080e7          	jalr	1744(ra) # 80004620 <_ZN10KSemaphore6signalEv>
}
    80002f58:	00813083          	ld	ra,8(sp)
    80002f5c:	00013403          	ld	s0,0(sp)
    80002f60:	01010113          	addi	sp,sp,16
    80002f64:	00008067          	ret
    80002f68:	00008067          	ret

0000000080002f6c <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002f6c:	00009797          	auipc	a5,0x9
    80002f70:	b447b783          	ld	a5,-1212(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f74:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002f78:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002f7c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002f80:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002f84:	0017f793          	andi	a5,a5,1
    80002f88:	08078063          	beqz	a5,80003008 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002f8c:	fe010113          	addi	sp,sp,-32
    80002f90:	00113c23          	sd	ra,24(sp)
    80002f94:	00813823          	sd	s0,16(sp)
    80002f98:	00913423          	sd	s1,8(sp)
    80002f9c:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002fa0:	00009797          	auipc	a5,0x9
    80002fa4:	b307b783          	ld	a5,-1232(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002fa8:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002fac:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002fb0:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002fb4:	00058493          	mv	s1,a1
    80002fb8:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002fbc:	00048513          	mv	a0,s1
    80002fc0:	00000097          	auipc	ra,0x0
    80002fc4:	e54080e7          	jalr	-428(ra) # 80002e14 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002fc8:	00048513          	mv	a0,s1
    80002fcc:	00000097          	auipc	ra,0x0
    80002fd0:	f28080e7          	jalr	-216(ra) # 80002ef4 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002fd4:	00009797          	auipc	a5,0x9
    80002fd8:	adc7b783          	ld	a5,-1316(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fdc:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002fe0:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fe4:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fe8:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fec:	0017f793          	andi	a5,a5,1
    80002ff0:	fa0798e3          	bnez	a5,80002fa0 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002ff4:	01813083          	ld	ra,24(sp)
    80002ff8:	01013403          	ld	s0,16(sp)
    80002ffc:	00813483          	ld	s1,8(sp)
    80003000:	02010113          	addi	sp,sp,32
    80003004:	00008067          	ret
    80003008:	00008067          	ret

000000008000300c <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    8000300c:	fe010113          	addi	sp,sp,-32
    80003010:	00113c23          	sd	ra,24(sp)
    80003014:	00813823          	sd	s0,16(sp)
    80003018:	00913423          	sd	s1,8(sp)
    8000301c:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003020:	00009497          	auipc	s1,0x9
    80003024:	b9048493          	addi	s1,s1,-1136 # 8000bbb0 <_ZN8KConsole18hasCharactersInputE>
    80003028:	0084b503          	ld	a0,8(s1)
    8000302c:	00001097          	auipc	ra,0x1
    80003030:	494080e7          	jalr	1172(ra) # 800044c0 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003034:	0284b783          	ld	a5,40(s1)
    80003038:	0204b703          	ld	a4,32(s1)
    8000303c:	04e78063          	beq	a5,a4,8000307c <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80003040:	00009717          	auipc	a4,0x9
    80003044:	bb070713          	addi	a4,a4,-1104 # 8000bbf0 <_ZN8KConsole12outputBufferE>
    80003048:	00f70733          	add	a4,a4,a5
    8000304c:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80003050:	00178793          	addi	a5,a5,1
    80003054:	00002737          	lui	a4,0x2
    80003058:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    8000305c:	00e7f7b3          	and	a5,a5,a4
    80003060:	00009717          	auipc	a4,0x9
    80003064:	b6f73c23          	sd	a5,-1160(a4) # 8000bbd8 <_ZN8KConsole10outputHeadE>

    return c;
}
    80003068:	01813083          	ld	ra,24(sp)
    8000306c:	01013403          	ld	s0,16(sp)
    80003070:	00813483          	ld	s1,8(sp)
    80003074:	02010113          	addi	sp,sp,32
    80003078:	00008067          	ret
        return -1;
    8000307c:	0ff00513          	li	a0,255
    80003080:	fe9ff06f          	j	80003068 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080003084 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00113423          	sd	ra,8(sp)
    8000308c:	00813023          	sd	s0,0(sp)
    80003090:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80003094:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80003098:	0ff57513          	andi	a0,a0,255
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	e58080e7          	jalr	-424(ra) # 80002ef4 <_ZN8KConsole18putCharacterOutputEc>
}
    800030a4:	00813083          	ld	ra,8(sp)
    800030a8:	00013403          	ld	s0,0(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00113423          	sd	ra,8(sp)
    800030bc:	00813023          	sd	s0,0(sp)
    800030c0:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterInput();
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	db8080e7          	jalr	-584(ra) # 80002e7c <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800030cc:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800030d0:	00001097          	auipc	ra,0x1
    800030d4:	e80080e7          	jalr	-384(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    800030d8:	00813083          	ld	ra,8(sp)
    800030dc:	00013403          	ld	s0,0(sp)
    800030e0:	01010113          	addi	sp,sp,16
    800030e4:	00008067          	ret

00000000800030e8 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800030e8:	ff010113          	addi	sp,sp,-16
    800030ec:	00813423          	sd	s0,8(sp)
    800030f0:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800030f4:	00009517          	auipc	a0,0x9
    800030f8:	aec53503          	ld	a0,-1300(a0) # 8000bbe0 <_ZN8KConsole11pendingPutcE>
    800030fc:	00153513          	seqz	a0,a0
    80003100:	00813403          	ld	s0,8(sp)
    80003104:	01010113          	addi	sp,sp,16
    80003108:	00008067          	ret

000000008000310c <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    8000310c:	fe010113          	addi	sp,sp,-32
    80003110:	00113c23          	sd	ra,24(sp)
    80003114:	00813823          	sd	s0,16(sp)
    80003118:	02010413          	addi	s0,sp,32
    8000311c:	0640006f          	j	80003180 <_ZN8KConsole23sendCharactersToConsoleEPv+0x74>
            uint64 x = CONSOLE_STATUS;
    80003120:	00009797          	auipc	a5,0x9
    80003124:	9907b783          	ld	a5,-1648(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003128:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    8000312c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003130:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003134:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    80003138:	0207f793          	andi	a5,a5,32
    8000313c:	06078c63          	beqz	a5,800031b4 <_ZN8KConsole23sendCharactersToConsoleEPv+0xa8>
                char volatile c = sysCallGetCharOutput();
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	41c080e7          	jalr	1052(ra) # 8000155c <sysCallGetCharOutput>
    80003148:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    8000314c:	00009717          	auipc	a4,0x9
    80003150:	a6470713          	addi	a4,a4,-1436 # 8000bbb0 <_ZN8KConsole18hasCharactersInputE>
    80003154:	03073783          	ld	a5,48(a4)
    80003158:	fff78793          	addi	a5,a5,-1
    8000315c:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80003160:	00009797          	auipc	a5,0x9
    80003164:	9487b783          	ld	a5,-1720(a5) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003168:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    8000316c:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80003170:	fef44783          	lbu	a5,-17(s0)
    80003174:	0ff7f793          	andi	a5,a5,255
    80003178:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    8000317c:	00b50023          	sb	a1,0(a0)
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003180:	00009797          	auipc	a5,0x9
    80003184:	9807b783          	ld	a5,-1664(a5) # 8000bb00 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003188:	0007c783          	lbu	a5,0(a5)
    8000318c:	f8078ae3          	beqz	a5,80003120 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    80003190:	00000097          	auipc	ra,0x0
    80003194:	f58080e7          	jalr	-168(ra) # 800030e8 <_ZN8KConsole17outputBufferEmptyEv>
    80003198:	f80504e3          	beqz	a0,80003120 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    8000319c:	00009797          	auipc	a5,0x9
    800031a0:	a4c7b783          	ld	a5,-1460(a5) # 8000bbe8 <_ZN8KConsole11pendingGetcE>
    800031a4:	f6079ee3          	bnez	a5,80003120 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_exit();
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	1ac080e7          	jalr	428(ra) # 80001354 <thread_exit>
    800031b0:	f71ff06f          	j	80003120 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_dispatch();
    800031b4:	ffffe097          	auipc	ra,0xffffe
    800031b8:	180080e7          	jalr	384(ra) # 80001334 <thread_dispatch>
    800031bc:	fc5ff06f          	j	80003180 <_ZN8KConsole23sendCharactersToConsoleEPv+0x74>

00000000800031c0 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00113423          	sd	ra,8(sp)
    800031c8:	00813023          	sd	s0,0(sp)
    800031cc:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	e3c080e7          	jalr	-452(ra) # 8000300c <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800031d8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800031dc:	00001097          	auipc	ra,0x1
    800031e0:	d74080e7          	jalr	-652(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    800031e4:	00813083          	ld	ra,8(sp)
    800031e8:	00013403          	ld	s0,0(sp)
    800031ec:	01010113          	addi	sp,sp,16
    800031f0:	00008067          	ret

00000000800031f4 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800031f4:	ff010113          	addi	sp,sp,-16
    800031f8:	00813423          	sd	s0,8(sp)
    800031fc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003200:	00009797          	auipc	a5,0x9
    80003204:	9087b783          	ld	a5,-1784(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003208:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    8000320c:	00500793          	li	a5,5
    80003210:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003214:	0000d797          	auipc	a5,0xd
    80003218:	9dc7b783          	ld	a5,-1572(a5) # 8000fbf0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    8000321c:	00000593          	li	a1,0
    while(curr != 0)
    80003220:	02078063          	beqz	a5,80003240 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003224:	02063683          	ld	a3,32(a2)
    80003228:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    8000322c:	00e6e863          	bltu	a3,a4,8000323c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003230:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003234:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003238:	fe9ff06f          	j	80003220 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000323c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003240:	00058a63          	beqz	a1,80003254 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003244:	00c5b423          	sd	a2,8(a1)
}
    80003248:	00813403          	ld	s0,8(sp)
    8000324c:	01010113          	addi	sp,sp,16
    80003250:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003254:	0000d797          	auipc	a5,0xd
    80003258:	98c7be23          	sd	a2,-1636(a5) # 8000fbf0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    8000325c:	fedff06f          	j	80003248 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003260 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80003260:	0000d517          	auipc	a0,0xd
    80003264:	99053503          	ld	a0,-1648(a0) # 8000fbf0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003268:	06050e63          	beqz	a0,800032e4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000326c:	06050c63          	beqz	a0,800032e4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003270:	02053783          	ld	a5,32(a0)
    80003274:	00009717          	auipc	a4,0x9
    80003278:	87473703          	ld	a4,-1932(a4) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000327c:	00073703          	ld	a4,0(a4)
    80003280:	06f76263          	bltu	a4,a5,800032e4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003284:	fe010113          	addi	sp,sp,-32
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00913423          	sd	s1,8(sp)
    80003294:	02010413          	addi	s0,sp,32
    80003298:	0180006f          	j	800032b0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    8000329c:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032a0:	00009717          	auipc	a4,0x9
    800032a4:	84873703          	ld	a4,-1976(a4) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032a8:	00073703          	ld	a4,0(a4)
    800032ac:	02f76263          	bltu	a4,a5,800032d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800032b0:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800032b4:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800032b8:	00000097          	auipc	ra,0x0
    800032bc:	244080e7          	jalr	580(ra) # 800034fc <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800032c0:	0000d797          	auipc	a5,0xd
    800032c4:	9297b823          	sd	s1,-1744(a5) # 8000fbf0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800032c8:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800032cc:	fc0498e3          	bnez	s1,8000329c <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	02010113          	addi	sp,sp,32
    800032e0:	00008067          	ret
    800032e4:	00008067          	ret

00000000800032e8 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    800032e8:	fe010113          	addi	sp,sp,-32
    800032ec:	00113c23          	sd	ra,24(sp)
    800032f0:	00813823          	sd	s0,16(sp)
    800032f4:	00913423          	sd	s1,8(sp)
    800032f8:	01213023          	sd	s2,0(sp)
    800032fc:	02010413          	addi	s0,sp,32
    80003300:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80003304:	00053503          	ld	a0,0(a0)
    80003308:	00853903          	ld	s2,8(a0)
    kfree(first);
    8000330c:	00001097          	auipc	ra,0x1
    80003310:	0ac080e7          	jalr	172(ra) # 800043b8 <_Z5kfreePv>
    first = newFirst;
    80003314:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80003318:	00090e63          	beqz	s2,80003334 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    8000331c:	01813083          	ld	ra,24(sp)
    80003320:	01013403          	ld	s0,16(sp)
    80003324:	00813483          	ld	s1,8(sp)
    80003328:	00013903          	ld	s2,0(sp)
    8000332c:	02010113          	addi	sp,sp,32
    80003330:	00008067          	ret
        first = last = 0;
    80003334:	0004b423          	sd	zero,8(s1)
    80003338:	0004b023          	sd	zero,0(s1)
}
    8000333c:	fe1ff06f          	j	8000331c <_ZN5Queue3popEv+0x34>

0000000080003340 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    80003340:	fe010113          	addi	sp,sp,-32
    80003344:	00113c23          	sd	ra,24(sp)
    80003348:	00813823          	sd	s0,16(sp)
    8000334c:	00913423          	sd	s1,8(sp)
    80003350:	01213023          	sd	s2,0(sp)
    80003354:	02010413          	addi	s0,sp,32
    80003358:	00050493          	mv	s1,a0
    8000335c:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80003360:	01000513          	li	a0,16
    80003364:	00001097          	auipc	ra,0x1
    80003368:	ff0080e7          	jalr	-16(ra) # 80004354 <_Z7kmallocm>
    newElem->data = t;
    8000336c:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80003370:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80003374:	0004b783          	ld	a5,0(s1)
    80003378:	02078463          	beqz	a5,800033a0 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    8000337c:	0084b783          	ld	a5,8(s1)
    80003380:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80003384:	00a4b423          	sd	a0,8(s1)
    }
}
    80003388:	01813083          	ld	ra,24(sp)
    8000338c:	01013403          	ld	s0,16(sp)
    80003390:	00813483          	ld	s1,8(sp)
    80003394:	00013903          	ld	s2,0(sp)
    80003398:	02010113          	addi	sp,sp,32
    8000339c:	00008067          	ret
        first = newElem;
    800033a0:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800033a4:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800033a8:	00053423          	sd	zero,8(a0)
    800033ac:	0004b783          	ld	a5,0(s1)
    800033b0:	0007b423          	sd	zero,8(a5)
    800033b4:	fd5ff06f          	j	80003388 <_ZN5Queue4pushEP3PCB+0x48>

00000000800033b8 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00813423          	sd	s0,8(sp)
    800033c0:	01010413          	addi	s0,sp,16
    if(first == 0)
    800033c4:	00053503          	ld	a0,0(a0)
    800033c8:	00050463          	beqz	a0,800033d0 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800033cc:	00053503          	ld	a0,0(a0)
}
    800033d0:	00813403          	ld	s0,8(sp)
    800033d4:	01010113          	addi	sp,sp,16
    800033d8:	00008067          	ret

00000000800033dc <_ZN5QueueC1Ev>:

Queue::Queue()
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00813423          	sd	s0,8(sp)
    800033e4:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    800033e8:	00053423          	sd	zero,8(a0)
    800033ec:	00053023          	sd	zero,0(a0)
}
    800033f0:	00813403          	ld	s0,8(sp)
    800033f4:	01010113          	addi	sp,sp,16
    800033f8:	00008067          	ret

00000000800033fc <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    800033fc:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80003400:	04050063          	beqz	a0,80003440 <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    80003404:	fe010113          	addi	sp,sp,-32
    80003408:	00113c23          	sd	ra,24(sp)
    8000340c:	00813823          	sd	s0,16(sp)
    80003410:	00913423          	sd	s1,8(sp)
    80003414:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003418:	00853483          	ld	s1,8(a0)
        kfree(old);
    8000341c:	00001097          	auipc	ra,0x1
    80003420:	f9c080e7          	jalr	-100(ra) # 800043b8 <_Z5kfreePv>
        curr = curr->next;
    80003424:	00048513          	mv	a0,s1
    while(curr != 0)
    80003428:	fe0498e3          	bnez	s1,80003418 <_ZN5QueueD1Ev+0x1c>
    }
}
    8000342c:	01813083          	ld	ra,24(sp)
    80003430:	01013403          	ld	s0,16(sp)
    80003434:	00813483          	ld	s1,8(sp)
    80003438:	02010113          	addi	sp,sp,32
    8000343c:	00008067          	ret
    80003440:	00008067          	ret

0000000080003444 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    80003444:	ff010113          	addi	sp,sp,-16
    80003448:	00813423          	sd	s0,8(sp)
    8000344c:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80003450:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80003454:	00000513          	li	a0,0
    while(curr != 0)
    80003458:	00078863          	beqz	a5,80003468 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    8000345c:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80003460:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003464:	ff5ff06f          	j	80003458 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80003468:	00813403          	ld	s0,8(sp)
    8000346c:	01010113          	addi	sp,sp,16
    80003470:	00008067          	ret

0000000080003474 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003474:	ff010113          	addi	sp,sp,-16
    80003478:	00113423          	sd	ra,8(sp)
    8000347c:	00813023          	sd	s0,0(sp)
    80003480:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003484:	00001097          	auipc	ra,0x1
    80003488:	ed0080e7          	jalr	-304(ra) # 80004354 <_Z7kmallocm>
}
    8000348c:	00813083          	ld	ra,8(sp)
    80003490:	00013403          	ld	s0,0(sp)
    80003494:	01010113          	addi	sp,sp,16
    80003498:	00008067          	ret

000000008000349c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    8000349c:	ff010113          	addi	sp,sp,-16
    800034a0:	00113423          	sd	ra,8(sp)
    800034a4:	00813023          	sd	s0,0(sp)
    800034a8:	01010413          	addi	s0,sp,16
    kfree(p);
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	f0c080e7          	jalr	-244(ra) # 800043b8 <_Z5kfreePv>
}
    800034b4:	00813083          	ld	ra,8(sp)
    800034b8:	00013403          	ld	s0,0(sp)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret

00000000800034c4 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800034c4:	ff010113          	addi	sp,sp,-16
    800034c8:	00813423          	sd	s0,8(sp)
    800034cc:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800034d0:	0000c797          	auipc	a5,0xc
    800034d4:	7287b783          	ld	a5,1832(a5) # 8000fbf8 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800034d8:	00000513          	li	a0,0
    while(curr != 0)
    800034dc:	00078863          	beqz	a5,800034ec <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800034e0:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800034e4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800034e8:	ff5ff06f          	j	800034dc <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800034ec:	0005051b          	sext.w	a0,a0
    800034f0:	00813403          	ld	s0,8(sp)
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret

00000000800034fc <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800034fc:	ff010113          	addi	sp,sp,-16
    80003500:	00813423          	sd	s0,8(sp)
    80003504:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003508:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000350c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003510:	0000c797          	auipc	a5,0xc
    80003514:	6e87b783          	ld	a5,1768(a5) # 8000fbf8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003518:	02078263          	beqz	a5,8000353c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    8000351c:	0000c797          	auipc	a5,0xc
    80003520:	6dc78793          	addi	a5,a5,1756 # 8000fbf8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003524:	0087b703          	ld	a4,8(a5)
    80003528:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    8000352c:	00a7b423          	sd	a0,8(a5)
    }
}
    80003530:	00813403          	ld	s0,8(sp)
    80003534:	01010113          	addi	sp,sp,16
    80003538:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    8000353c:	0000c797          	auipc	a5,0xc
    80003540:	6bc78793          	addi	a5,a5,1724 # 8000fbf8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003544:	00a7b423          	sd	a0,8(a5)
    80003548:	00a7b023          	sd	a0,0(a5)
    8000354c:	fe5ff06f          	j	80003530 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003550 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003550:	ff010113          	addi	sp,sp,-16
    80003554:	00813423          	sd	s0,8(sp)
    80003558:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    8000355c:	0000c517          	auipc	a0,0xc
    80003560:	69c53503          	ld	a0,1692(a0) # 8000fbf8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003564:	00050c63          	beqz	a0,8000357c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003568:	00853783          	ld	a5,8(a0)
    8000356c:	00078e63          	beqz	a5,80003588 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003570:	0000c717          	auipc	a4,0xc
    80003574:	68f73423          	sd	a5,1672(a4) # 8000fbf8 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003578:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000357c:	00813403          	ld	s0,8(sp)
    80003580:	01010113          	addi	sp,sp,16
    80003584:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003588:	0000c797          	auipc	a5,0xc
    8000358c:	67078793          	addi	a5,a5,1648 # 8000fbf8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003590:	0007b423          	sd	zero,8(a5)
    80003594:	0007b023          	sd	zero,0(a5)
    80003598:	fe1ff06f          	j	80003578 <_ZN9Scheduler3getEv+0x28>

000000008000359c <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00113c23          	sd	ra,24(sp)
    800035a4:	00813823          	sd	s0,16(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	02010413          	addi	s0,sp,32
    trapPrintString("Scheduler print\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	c9050513          	addi	a0,a0,-880 # 80009240 <CONSOLE_STATUS+0x230>
    800035b8:	00003097          	auipc	ra,0x3
    800035bc:	92c080e7          	jalr	-1748(ra) # 80005ee4 <_Z15trapPrintStringPKc>
    PCB* curr = schedulerPCBHead;
    800035c0:	0000c497          	auipc	s1,0xc
    800035c4:	6384b483          	ld	s1,1592(s1) # 8000fbf8 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800035c8:	02048863          	beqz	s1,800035f8 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    800035cc:	00000613          	li	a2,0
    800035d0:	01000593          	li	a1,16
    800035d4:	0004851b          	sext.w	a0,s1
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	7f8080e7          	jalr	2040(ra) # 80005dd0 <_Z8printIntiii>
        printString("\n");
    800035e0:	00006517          	auipc	a0,0x6
    800035e4:	b2050513          	addi	a0,a0,-1248 # 80009100 <CONSOLE_STATUS+0xf0>
    800035e8:	00002097          	auipc	ra,0x2
    800035ec:	650080e7          	jalr	1616(ra) # 80005c38 <_Z11printStringPKc>
        curr = curr->nextPCB;
    800035f0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800035f4:	fd5ff06f          	j	800035c8 <_ZN9Scheduler5printEv+0x2c>
    }
}
    800035f8:	01813083          	ld	ra,24(sp)
    800035fc:	01013403          	ld	s0,16(sp)
    80003600:	00813483          	ld	s1,8(sp)
    80003604:	02010113          	addi	sp,sp,32
    80003608:	00008067          	ret

000000008000360c <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    8000360c:	ff010113          	addi	sp,sp,-16
    80003610:	00113423          	sd	ra,8(sp)
    80003614:	00813023          	sd	s0,0(sp)
    80003618:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000361c:	00000097          	auipc	ra,0x0
    80003620:	7d4080e7          	jalr	2004(ra) # 80003df0 <_ZN5Riscv10kernelMainEv>
    80003624:	00813083          	ld	ra,8(sp)
    80003628:	00013403          	ld	s0,0(sp)
    8000362c:	01010113          	addi	sp,sp,16
    80003630:	00008067          	ret

0000000080003634 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003634:	ff010113          	addi	sp,sp,-16
    80003638:	00113423          	sd	ra,8(sp)
    8000363c:	00813023          	sd	s0,0(sp)
    80003640:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003644:	00053783          	ld	a5,0(a0)
    80003648:	0107b783          	ld	a5,16(a5)
    8000364c:	000780e7          	jalr	a5
}
    80003650:	00813083          	ld	ra,8(sp)
    80003654:	00013403          	ld	s0,0(sp)
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret

0000000080003660 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00113423          	sd	ra,8(sp)
    80003668:	00813023          	sd	s0,0(sp)
    8000366c:	01010413          	addi	s0,sp,16
    80003670:	00008797          	auipc	a5,0x8
    80003674:	35878793          	addi	a5,a5,856 # 8000b9c8 <_ZTV6Thread+0x10>
    80003678:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    8000367c:	00853503          	ld	a0,8(a0)
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	c08080e7          	jalr	-1016(ra) # 80001288 <mem_free>
}
    80003688:	00813083          	ld	ra,8(sp)
    8000368c:	00013403          	ld	s0,0(sp)
    80003690:	01010113          	addi	sp,sp,16
    80003694:	00008067          	ret

0000000080003698 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003698:	ff010113          	addi	sp,sp,-16
    8000369c:	00113423          	sd	ra,8(sp)
    800036a0:	00813023          	sd	s0,0(sp)
    800036a4:	01010413          	addi	s0,sp,16
    800036a8:	00008797          	auipc	a5,0x8
    800036ac:	34878793          	addi	a5,a5,840 # 8000b9f0 <_ZTV9Semaphore+0x10>
    800036b0:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800036b4:	00853503          	ld	a0,8(a0)
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	bd0080e7          	jalr	-1072(ra) # 80001288 <mem_free>
}
    800036c0:	00813083          	ld	ra,8(sp)
    800036c4:	00013403          	ld	s0,0(sp)
    800036c8:	01010113          	addi	sp,sp,16
    800036cc:	00008067          	ret

00000000800036d0 <_Znwm>:
{
    800036d0:	ff010113          	addi	sp,sp,-16
    800036d4:	00113423          	sd	ra,8(sp)
    800036d8:	00813023          	sd	s0,0(sp)
    800036dc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	b78080e7          	jalr	-1160(ra) # 80001258 <mem_alloc>
}
    800036e8:	00813083          	ld	ra,8(sp)
    800036ec:	00013403          	ld	s0,0(sp)
    800036f0:	01010113          	addi	sp,sp,16
    800036f4:	00008067          	ret

00000000800036f8 <_ZdlPv>:
{
    800036f8:	ff010113          	addi	sp,sp,-16
    800036fc:	00113423          	sd	ra,8(sp)
    80003700:	00813023          	sd	s0,0(sp)
    80003704:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	b80080e7          	jalr	-1152(ra) # 80001288 <mem_free>
}
    80003710:	00813083          	ld	ra,8(sp)
    80003714:	00013403          	ld	s0,0(sp)
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret

0000000080003720 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00813823          	sd	s0,16(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	00050493          	mv	s1,a0
}
    80003738:	00000097          	auipc	ra,0x0
    8000373c:	f28080e7          	jalr	-216(ra) # 80003660 <_ZN6ThreadD1Ev>
    80003740:	00048513          	mv	a0,s1
    80003744:	00000097          	auipc	ra,0x0
    80003748:	fb4080e7          	jalr	-76(ra) # 800036f8 <_ZdlPv>
    8000374c:	01813083          	ld	ra,24(sp)
    80003750:	01013403          	ld	s0,16(sp)
    80003754:	00813483          	ld	s1,8(sp)
    80003758:	02010113          	addi	sp,sp,32
    8000375c:	00008067          	ret

0000000080003760 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003760:	fe010113          	addi	sp,sp,-32
    80003764:	00113c23          	sd	ra,24(sp)
    80003768:	00813823          	sd	s0,16(sp)
    8000376c:	00913423          	sd	s1,8(sp)
    80003770:	02010413          	addi	s0,sp,32
    80003774:	00050493          	mv	s1,a0
}
    80003778:	00000097          	auipc	ra,0x0
    8000377c:	f20080e7          	jalr	-224(ra) # 80003698 <_ZN9SemaphoreD1Ev>
    80003780:	00048513          	mv	a0,s1
    80003784:	00000097          	auipc	ra,0x0
    80003788:	f74080e7          	jalr	-140(ra) # 800036f8 <_ZdlPv>
    8000378c:	01813083          	ld	ra,24(sp)
    80003790:	01013403          	ld	s0,16(sp)
    80003794:	00813483          	ld	s1,8(sp)
    80003798:	02010113          	addi	sp,sp,32
    8000379c:	00008067          	ret

00000000800037a0 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800037a0:	00853503          	ld	a0,8(a0)
    800037a4:	02050663          	beqz	a0,800037d0 <_ZN6Thread5startEv+0x30>
{
    800037a8:	ff010113          	addi	sp,sp,-16
    800037ac:	00113423          	sd	ra,8(sp)
    800037b0:	00813023          	sd	s0,0(sp)
    800037b4:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	cac080e7          	jalr	-852(ra) # 80001464 <thread_start>
}
    800037c0:	00813083          	ld	ra,8(sp)
    800037c4:	00013403          	ld	s0,0(sp)
    800037c8:	01010113          	addi	sp,sp,16
    800037cc:	00008067          	ret
        return -1;
    800037d0:	fff00513          	li	a0,-1
}
    800037d4:	00008067          	ret

00000000800037d8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800037d8:	ff010113          	addi	sp,sp,-16
    800037dc:	00113423          	sd	ra,8(sp)
    800037e0:	00813023          	sd	s0,0(sp)
    800037e4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	b4c080e7          	jalr	-1204(ra) # 80001334 <thread_dispatch>
}
    800037f0:	00813083          	ld	ra,8(sp)
    800037f4:	00013403          	ld	s0,0(sp)
    800037f8:	01010113          	addi	sp,sp,16
    800037fc:	00008067          	ret

0000000080003800 <_ZN6Thread5sleepEm>:
{
    80003800:	ff010113          	addi	sp,sp,-16
    80003804:	00113423          	sd	ra,8(sp)
    80003808:	00813023          	sd	s0,0(sp)
    8000380c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	c28080e7          	jalr	-984(ra) # 80001438 <time_sleep>
}
    80003818:	00813083          	ld	ra,8(sp)
    8000381c:	00013403          	ld	s0,0(sp)
    80003820:	01010113          	addi	sp,sp,16
    80003824:	00008067          	ret

0000000080003828 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003828:	fe010113          	addi	sp,sp,-32
    8000382c:	00113c23          	sd	ra,24(sp)
    80003830:	00813823          	sd	s0,16(sp)
    80003834:	00913423          	sd	s1,8(sp)
    80003838:	01213023          	sd	s2,0(sp)
    8000383c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003840:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003844:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003848:	0004b783          	ld	a5,0(s1)
    8000384c:	0187b783          	ld	a5,24(a5)
    80003850:	00048513          	mv	a0,s1
    80003854:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003858:	00090513          	mv	a0,s2
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	fa4080e7          	jalr	-92(ra) # 80003800 <_ZN6Thread5sleepEm>
    while(true)
    80003864:	fe5ff06f          	j	80003848 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003868 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00113423          	sd	ra,8(sp)
    80003870:	00813023          	sd	s0,0(sp)
    80003874:	01010413          	addi	s0,sp,16
    80003878:	00008797          	auipc	a5,0x8
    8000387c:	15078793          	addi	a5,a5,336 # 8000b9c8 <_ZTV6Thread+0x10>
    80003880:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003884:	00850513          	addi	a0,a0,8
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	c08080e7          	jalr	-1016(ra) # 80001490 <thread_make_pcb>
}
    80003890:	00813083          	ld	ra,8(sp)
    80003894:	00013403          	ld	s0,0(sp)
    80003898:	01010113          	addi	sp,sp,16
    8000389c:	00008067          	ret

00000000800038a0 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800038a0:	ff010113          	addi	sp,sp,-16
    800038a4:	00113423          	sd	ra,8(sp)
    800038a8:	00813023          	sd	s0,0(sp)
    800038ac:	01010413          	addi	s0,sp,16
    800038b0:	00008797          	auipc	a5,0x8
    800038b4:	11878793          	addi	a5,a5,280 # 8000b9c8 <_ZTV6Thread+0x10>
    800038b8:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    800038bc:	00050613          	mv	a2,a0
    800038c0:	00000597          	auipc	a1,0x0
    800038c4:	d7458593          	addi	a1,a1,-652 # 80003634 <_ZN6Thread6runnerEPv>
    800038c8:	00850513          	addi	a0,a0,8
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	bc4080e7          	jalr	-1084(ra) # 80001490 <thread_make_pcb>
}
    800038d4:	00813083          	ld	ra,8(sp)
    800038d8:	00013403          	ld	s0,0(sp)
    800038dc:	01010113          	addi	sp,sp,16
    800038e0:	00008067          	ret

00000000800038e4 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    800038e4:	00853503          	ld	a0,8(a0)
    800038e8:	02050663          	beqz	a0,80003914 <_ZN9Semaphore4waitEv+0x30>
{
    800038ec:	ff010113          	addi	sp,sp,-16
    800038f0:	00113423          	sd	ra,8(sp)
    800038f4:	00813023          	sd	s0,0(sp)
    800038f8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	ae4080e7          	jalr	-1308(ra) # 800013e0 <sem_wait>
}
    80003904:	00813083          	ld	ra,8(sp)
    80003908:	00013403          	ld	s0,0(sp)
    8000390c:	01010113          	addi	sp,sp,16
    80003910:	00008067          	ret
        return -1;
    80003914:	fff00513          	li	a0,-1
}
    80003918:	00008067          	ret

000000008000391c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00113c23          	sd	ra,24(sp)
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	02010413          	addi	s0,sp,32
    80003930:	00050493          	mv	s1,a0
    80003934:	00008797          	auipc	a5,0x8
    80003938:	0bc78793          	addi	a5,a5,188 # 8000b9f0 <_ZTV9Semaphore+0x10>
    8000393c:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003940:	00850513          	addi	a0,a0,8
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	a38080e7          	jalr	-1480(ra) # 8000137c <sem_open>
    if(retval != 0)
    8000394c:	00050463          	beqz	a0,80003954 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003950:	0004b423          	sd	zero,8(s1)
}
    80003954:	01813083          	ld	ra,24(sp)
    80003958:	01013403          	ld	s0,16(sp)
    8000395c:	00813483          	ld	s1,8(sp)
    80003960:	02010113          	addi	sp,sp,32
    80003964:	00008067          	ret

0000000080003968 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003968:	00853503          	ld	a0,8(a0)
    8000396c:	02050663          	beqz	a0,80003998 <_ZN9Semaphore6signalEv+0x30>
{
    80003970:	ff010113          	addi	sp,sp,-16
    80003974:	00113423          	sd	ra,8(sp)
    80003978:	00813023          	sd	s0,0(sp)
    8000397c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	a8c080e7          	jalr	-1396(ra) # 8000140c <sem_signal>
}
    80003988:	00813083          	ld	ra,8(sp)
    8000398c:	00013403          	ld	s0,0(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret
        return -1;
    80003998:	fff00513          	li	a0,-1
}
    8000399c:	00008067          	ret

00000000800039a0 <_ZN7Console4getcEv>:
{
    800039a0:	ff010113          	addi	sp,sp,-16
    800039a4:	00813423          	sd	s0,8(sp)
    800039a8:	01010413          	addi	s0,sp,16
}
    800039ac:	00000513          	li	a0,0
    800039b0:	00813403          	ld	s0,8(sp)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret

00000000800039bc <_ZN7Console4putcEc>:
{
    800039bc:	ff010113          	addi	sp,sp,-16
    800039c0:	00813423          	sd	s0,8(sp)
    800039c4:	01010413          	addi	s0,sp,16
}
    800039c8:	00813403          	ld	s0,8(sp)
    800039cc:	01010113          	addi	sp,sp,16
    800039d0:	00008067          	ret

00000000800039d4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800039d4:	fe010113          	addi	sp,sp,-32
    800039d8:	00113c23          	sd	ra,24(sp)
    800039dc:	00813823          	sd	s0,16(sp)
    800039e0:	00913423          	sd	s1,8(sp)
    800039e4:	01213023          	sd	s2,0(sp)
    800039e8:	02010413          	addi	s0,sp,32
    800039ec:	00050493          	mv	s1,a0
    800039f0:	00058913          	mv	s2,a1
    800039f4:	01000513          	li	a0,16
    800039f8:	00000097          	auipc	ra,0x0
    800039fc:	cd8080e7          	jalr	-808(ra) # 800036d0 <_Znwm>
    80003a00:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003a04:	00953023          	sd	s1,0(a0)
    80003a08:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a0c:	00000597          	auipc	a1,0x0
    80003a10:	e1c58593          	addi	a1,a1,-484 # 80003828 <_ZN14PeriodicThread6runnerEPv>
    80003a14:	00048513          	mv	a0,s1
    80003a18:	00000097          	auipc	ra,0x0
    80003a1c:	e50080e7          	jalr	-432(ra) # 80003868 <_ZN6ThreadC1EPFvPvES0_>
    80003a20:	00008797          	auipc	a5,0x8
    80003a24:	f4078793          	addi	a5,a5,-192 # 8000b960 <_ZTV14PeriodicThread+0x10>
    80003a28:	00f4b023          	sd	a5,0(s1)
}
    80003a2c:	01813083          	ld	ra,24(sp)
    80003a30:	01013403          	ld	s0,16(sp)
    80003a34:	00813483          	ld	s1,8(sp)
    80003a38:	00013903          	ld	s2,0(sp)
    80003a3c:	02010113          	addi	sp,sp,32
    80003a40:	00008067          	ret

0000000080003a44 <_ZN5Riscv15userMainWrapperEPv>:
    disableInterrupts();
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    80003a44:	ff010113          	addi	sp,sp,-16
    80003a48:	00113423          	sd	ra,8(sp)
    80003a4c:	00813023          	sd	s0,0(sp)
    80003a50:	01010413          	addi	s0,sp,16
    userMain();
    80003a54:	00003097          	auipc	ra,0x3
    80003a58:	948080e7          	jalr	-1720(ra) # 8000639c <_Z8userMainv>
}
    80003a5c:	00813083          	ld	ra,8(sp)
    80003a60:	00013403          	ld	s0,0(sp)
    80003a64:	01010113          	addi	sp,sp,16
    80003a68:	00008067          	ret

0000000080003a6c <_ZN5Riscv10initSystemEv>:
{
    80003a6c:	ff010113          	addi	sp,sp,-16
    80003a70:	00113423          	sd	ra,8(sp)
    80003a74:	00813023          	sd	s0,0(sp)
    80003a78:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003a7c:	00008797          	auipc	a5,0x8
    80003a80:	0447b783          	ld	a5,68(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003a84:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	f78080e7          	jalr	-136(ra) # 80002a00 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	2d4080e7          	jalr	724(ra) # 80002d64 <_ZN8KConsole10initializeEv>
}
    80003a98:	00813083          	ld	ra,8(sp)
    80003a9c:	00013403          	ld	s0,0(sp)
    80003aa0:	01010113          	addi	sp,sp,16
    80003aa4:	00008067          	ret

0000000080003aa8 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003aa8:	ff010113          	addi	sp,sp,-16
    80003aac:	00813423          	sd	s0,8(sp)
    80003ab0:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003ab4:	00200793          	li	a5,2
    80003ab8:	1007a073          	csrs	sstatus,a5
}
    80003abc:	00813403          	ld	s0,8(sp)
    80003ac0:	01010113          	addi	sp,sp,16
    80003ac4:	00008067          	ret

0000000080003ac8 <_ZN5Riscv17disableInterruptsEv>:
{
    80003ac8:	ff010113          	addi	sp,sp,-16
    80003acc:	00813423          	sd	s0,8(sp)
    80003ad0:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ad4:	00200793          	li	a5,2
    80003ad8:	1007b073          	csrc	sstatus,a5
}
    80003adc:	00813403          	ld	s0,8(sp)
    80003ae0:	01010113          	addi	sp,sp,16
    80003ae4:	00008067          	ret

0000000080003ae8 <_ZN5Riscv9endSystemEv>:
{
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00113423          	sd	ra,8(sp)
    80003af0:	00813023          	sd	s0,0(sp)
    80003af4:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003af8:	00000097          	auipc	ra,0x0
    80003afc:	fd0080e7          	jalr	-48(ra) # 80003ac8 <_ZN5Riscv17disableInterruptsEv>
}
    80003b00:	00813083          	ld	ra,8(sp)
    80003b04:	00013403          	ld	s0,0(sp)
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret

0000000080003b10 <_ZN5Riscv10popSppSpieEv>:
{
    80003b10:	ff010113          	addi	sp,sp,-16
    80003b14:	00813423          	sd	s0,8(sp)
    80003b18:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003b1c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003b20:	10200073          	sret
}
    80003b24:	00813403          	ld	s0,8(sp)
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret

0000000080003b30 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003b30:	f9010113          	addi	sp,sp,-112
    80003b34:	06113423          	sd	ra,104(sp)
    80003b38:	06813023          	sd	s0,96(sp)
    80003b3c:	04913c23          	sd	s1,88(sp)
    80003b40:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003b44:	00070713          	mv	a4,a4
    80003b48:	00008797          	auipc	a5,0x8
    80003b4c:	fd07b783          	ld	a5,-48(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003b50:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003b54:	00008797          	auipc	a5,0x8
    80003b58:	fb47b783          	ld	a5,-76(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003b5c:	0007b783          	ld	a5,0(a5)
    80003b60:	14002773          	csrr	a4,sscratch
    80003b64:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003b68:	142027f3          	csrr	a5,scause
    80003b6c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003b70:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003b74:	fff00713          	li	a4,-1
    80003b78:	03f71713          	slli	a4,a4,0x3f
    80003b7c:	00170713          	addi	a4,a4,1
    80003b80:	0ce78e63          	beq	a5,a4,80003c5c <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    80003b84:	fff00713          	li	a4,-1
    80003b88:	03f71713          	slli	a4,a4,0x3f
    80003b8c:	00170713          	addi	a4,a4,1
    80003b90:	04f76e63          	bltu	a4,a5,80003bec <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    80003b94:	ff878793          	addi	a5,a5,-8
    80003b98:	00100713          	li	a4,1
    80003b9c:	14f76063          	bltu	a4,a5,80003cdc <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003ba0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003ba4:	14102773          	csrr	a4,sepc
    80003ba8:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003bac:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003bb0:	00470713          	addi	a4,a4,4
    80003bb4:	fae43423          	sd	a4,-88(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003bb8:	10002773          	csrr	a4,sstatus
    80003bbc:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003bc0:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003bc4:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003bc8:	04300713          	li	a4,67
    80003bcc:	16f76463          	bltu	a4,a5,80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
    80003bd0:	00279793          	slli	a5,a5,0x2
    80003bd4:	00005717          	auipc	a4,0x5
    80003bd8:	68070713          	addi	a4,a4,1664 # 80009254 <CONSOLE_STATUS+0x244>
    80003bdc:	00e787b3          	add	a5,a5,a4
    80003be0:	0007a783          	lw	a5,0(a5)
    80003be4:	00e787b3          	add	a5,a5,a4
    80003be8:	00078067          	jr	a5
    switch(scause)
    80003bec:	fff00713          	li	a4,-1
    80003bf0:	03f71713          	slli	a4,a4,0x3f
    80003bf4:	00970713          	addi	a4,a4,9
    80003bf8:	0ee79263          	bne	a5,a4,80003cdc <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            uint64 x = CONSOLE_STATUS;
    80003bfc:	00008797          	auipc	a5,0x8
    80003c00:	eb47b783          	ld	a5,-332(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003c04:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003c08:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003c0c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003c10:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003c14:	0017f793          	andi	a5,a5,1
    80003c18:	02078863          	beqz	a5,80003c48 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                x = CONSOLE_TX_DATA;
    80003c1c:	00008797          	auipc	a5,0x8
    80003c20:	eb47b783          	ld	a5,-332(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003c24:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003c28:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003c2c:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003c30:	00058513          	mv	a0,a1
    80003c34:	0ff57493          	andi	s1,a0,255
                if(KConsole::pendingGetc > 0)
    80003c38:	00008797          	auipc	a5,0x8
    80003c3c:	e907b783          	ld	a5,-368(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003c40:	0007b783          	ld	a5,0(a5)
    80003c44:	0a079e63          	bnez	a5,80003d00 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
            plic_complete(plic_claim());
    80003c48:	00003097          	auipc	ra,0x3
    80003c4c:	35c080e7          	jalr	860(ra) # 80006fa4 <plic_claim>
    80003c50:	00003097          	auipc	ra,0x3
    80003c54:	38c080e7          	jalr	908(ra) # 80006fdc <plic_complete>
            break;
    80003c58:	0840006f          	j	80003cdc <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003c5c:	141027f3          	csrr	a5,sepc
    80003c60:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003c64:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003c68:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c6c:	100027f3          	csrr	a5,sstatus
    80003c70:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003c74:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003c78:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003c7c:	00200793          	li	a5,2
    80003c80:	1447b073          	csrc	sip,a5
            totalTime++;
    80003c84:	0000c717          	auipc	a4,0xc
    80003c88:	f8470713          	addi	a4,a4,-124 # 8000fc08 <_ZN5Riscv9totalTimeE>
    80003c8c:	00073783          	ld	a5,0(a4)
    80003c90:	00178793          	addi	a5,a5,1
    80003c94:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003c98:	00008497          	auipc	s1,0x8
    80003c9c:	e404b483          	ld	s1,-448(s1) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003ca0:	0004b783          	ld	a5,0(s1)
    80003ca4:	00178793          	addi	a5,a5,1
    80003ca8:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003cac:	fffff097          	auipc	ra,0xfffff
    80003cb0:	5b4080e7          	jalr	1460(ra) # 80003260 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003cb4:	00008797          	auipc	a5,0x8
    80003cb8:	e547b783          	ld	a5,-428(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003cbc:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003cc0:	0187b783          	ld	a5,24(a5)
    80003cc4:	0004b703          	ld	a4,0(s1)
    80003cc8:	02f77463          	bgeu	a4,a5,80003cf0 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            Riscv::w_sstatus(sstatus);
    80003ccc:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003cd0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003cd4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003cd8:	14179073          	csrw	sepc,a5
}
    80003cdc:	06813083          	ld	ra,104(sp)
    80003ce0:	06013403          	ld	s0,96(sp)
    80003ce4:	05813483          	ld	s1,88(sp)
    80003ce8:	07010113          	addi	sp,sp,112
    80003cec:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003cf0:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003cf4:	fffff097          	auipc	ra,0xfffff
    80003cf8:	c04080e7          	jalr	-1020(ra) # 800028f8 <_ZN3PCB8dispatchEv>
    80003cfc:	fd1ff06f          	j	80003ccc <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    KConsole::pendingGetc--;
    80003d00:	fff78793          	addi	a5,a5,-1
    80003d04:	00008717          	auipc	a4,0x8
    80003d08:	dc473703          	ld	a4,-572(a4) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003d0c:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003d10:	00048513          	mv	a0,s1
    80003d14:	fffff097          	auipc	ra,0xfffff
    80003d18:	100080e7          	jalr	256(ra) # 80002e14 <_ZN8KConsole17putCharacterInputEc>
                    KConsole::putCharacterOutput(c);
    80003d1c:	00048513          	mv	a0,s1
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	1d4080e7          	jalr	468(ra) # 80002ef4 <_ZN8KConsole18putCharacterOutputEc>
    80003d28:	f21ff06f          	j	80003c48 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                    MemoryAllocator::memAllocHandler();
    80003d2c:	00000097          	auipc	ra,0x0
    80003d30:	650080e7          	jalr	1616(ra) # 8000437c <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003d34:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d38:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d3c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d40:	14179073          	csrw	sepc,a5
}
    80003d44:	f99ff06f          	j	80003cdc <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                    MemoryAllocator::memFreeHandler();
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	698080e7          	jalr	1688(ra) # 800043e0 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003d50:	fe5ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    PCB::threadMakePCBHandler();
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	f7c080e7          	jalr	-132(ra) # 80002cd0 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003d5c:	fd9ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    PCB::threadCreateHandler();
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	e8c080e7          	jalr	-372(ra) # 80002bec <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003d68:	fcdff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    PCB::threadStartHandler();
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	f20080e7          	jalr	-224(ra) # 80002c8c <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003d74:	fc1ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    PCB::threadDispatchHandler();
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	de0080e7          	jalr	-544(ra) # 80002b58 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003d80:	fb5ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    PCB::threadExitHandler();
    80003d84:	fffff097          	auipc	ra,0xfffff
    80003d88:	d88080e7          	jalr	-632(ra) # 80002b0c <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003d8c:	fa9ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    PCB::threadSleepHandler();
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	df8080e7          	jalr	-520(ra) # 80002b88 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003d98:	f9dff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    KSemaphore::semOpenHandler();
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	8f4080e7          	jalr	-1804(ra) # 80004690 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003da4:	f91ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    KSemaphore::semWaitHandler();
    80003da8:	00001097          	auipc	ra,0x1
    80003dac:	980080e7          	jalr	-1664(ra) # 80004728 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003db0:	f85ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    KSemaphore::semSignalHandler();
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	9b4080e7          	jalr	-1612(ra) # 80004768 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003dbc:	f79ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    KSemaphore::semCloseHandler();
    80003dc0:	00001097          	auipc	ra,0x1
    80003dc4:	9e8080e7          	jalr	-1560(ra) # 800047a8 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003dc8:	f6dff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    KConsole::getcHandler();
    80003dcc:	fffff097          	auipc	ra,0xfffff
    80003dd0:	2e8080e7          	jalr	744(ra) # 800030b4 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003dd4:	f61ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    KConsole::putcHandler();
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	2ac080e7          	jalr	684(ra) # 80003084 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003de0:	f55ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                    KConsole::getCharHandler();
    80003de4:	fffff097          	auipc	ra,0xfffff
    80003de8:	3dc080e7          	jalr	988(ra) # 800031c0 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003dec:	f49ff06f          	j	80003d34 <_ZN5Riscv20handleSupervisorTrapEv+0x204>

0000000080003df0 <_ZN5Riscv10kernelMainEv>:
{
    80003df0:	fe010113          	addi	sp,sp,-32
    80003df4:	00113c23          	sd	ra,24(sp)
    80003df8:	00813823          	sd	s0,16(sp)
    80003dfc:	00913423          	sd	s1,8(sp)
    80003e00:	01213023          	sd	s2,0(sp)
    80003e04:	02010413          	addi	s0,sp,32
    initSystem();
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	c64080e7          	jalr	-924(ra) # 80003a6c <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003e10:	00001537          	lui	a0,0x1
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	540080e7          	jalr	1344(ra) # 80004354 <_Z7kmallocm>
    80003e1c:	00050913          	mv	s2,a0
    80003e20:	05800513          	li	a0,88
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	b60080e7          	jalr	-1184(ra) # 80002984 <_ZN3PCBnwEm>
    80003e2c:	00050493          	mv	s1,a0
    80003e30:	00200713          	li	a4,2
    80003e34:	00090693          	mv	a3,s2
    80003e38:	00000613          	li	a2,0
    80003e3c:	00000597          	auipc	a1,0x0
    80003e40:	c0858593          	addi	a1,a1,-1016 # 80003a44 <_ZN5Riscv15userMainWrapperEPv>
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	a28080e7          	jalr	-1496(ra) # 8000286c <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003e4c:	00048513          	mv	a0,s1
    80003e50:	fffff097          	auipc	ra,0xfffff
    80003e54:	a80080e7          	jalr	-1408(ra) # 800028d0 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003e58:	00048513          	mv	a0,s1
    80003e5c:	fffff097          	auipc	ra,0xfffff
    80003e60:	c8c080e7          	jalr	-884(ra) # 80002ae8 <_ZN3PCB10isFinishedEv>
    80003e64:	00051863          	bnez	a0,80003e74 <_ZN5Riscv10kernelMainEv+0x84>
        thread_dispatch();
    80003e68:	ffffd097          	auipc	ra,0xffffd
    80003e6c:	4cc080e7          	jalr	1228(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003e70:	fe9ff06f          	j	80003e58 <_ZN5Riscv10kernelMainEv+0x68>
    finishSystem = true;
    80003e74:	00100793          	li	a5,1
    80003e78:	0000c717          	auipc	a4,0xc
    80003e7c:	d8f70c23          	sb	a5,-616(a4) # 8000fc10 <_ZN5Riscv12finishSystemE>
    ::printString("End...\n");
    80003e80:	00005517          	auipc	a0,0x5
    80003e84:	1e850513          	addi	a0,a0,488 # 80009068 <CONSOLE_STATUS+0x58>
    80003e88:	00002097          	auipc	ra,0x2
    80003e8c:	db0080e7          	jalr	-592(ra) # 80005c38 <_Z11printStringPKc>
    while(!PCB::consolePCB->isFinished())
    80003e90:	00008797          	auipc	a5,0x8
    80003e94:	c687b783          	ld	a5,-920(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003e98:	0007b503          	ld	a0,0(a5)
    80003e9c:	fffff097          	auipc	ra,0xfffff
    80003ea0:	c4c080e7          	jalr	-948(ra) # 80002ae8 <_ZN3PCB10isFinishedEv>
    80003ea4:	00051863          	bnez	a0,80003eb4 <_ZN5Riscv10kernelMainEv+0xc4>
        thread_dispatch();
    80003ea8:	ffffd097          	auipc	ra,0xffffd
    80003eac:	48c080e7          	jalr	1164(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    80003eb0:	fe1ff06f          	j	80003e90 <_ZN5Riscv10kernelMainEv+0xa0>
    disableInterrupts();
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	c14080e7          	jalr	-1004(ra) # 80003ac8 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	c2c080e7          	jalr	-980(ra) # 80003ae8 <_ZN5Riscv9endSystemEv>
}
    80003ec4:	01813083          	ld	ra,24(sp)
    80003ec8:	01013403          	ld	s0,16(sp)
    80003ecc:	00813483          	ld	s1,8(sp)
    80003ed0:	00013903          	ld	s2,0(sp)
    80003ed4:	02010113          	addi	sp,sp,32
    80003ed8:	00008067          	ret
    80003edc:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003ee0:	00048513          	mv	a0,s1
    80003ee4:	fffff097          	auipc	ra,0xfffff
    80003ee8:	ac8080e7          	jalr	-1336(ra) # 800029ac <_ZN3PCBdlEPv>
    80003eec:	00090513          	mv	a0,s2
    80003ef0:	0000d097          	auipc	ra,0xd
    80003ef4:	e38080e7          	jalr	-456(ra) # 80010d28 <_Unwind_Resume>

0000000080003ef8 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003ef8:	ff010113          	addi	sp,sp,-16
    80003efc:	00113423          	sd	ra,8(sp)
    80003f00:	00813023          	sd	s0,0(sp)
    80003f04:	01010413          	addi	s0,sp,16
    myTests();
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	7c8080e7          	jalr	1992(ra) # 800026d0 <_Z7myTestsv>
}
    80003f10:	00813083          	ld	ra,8(sp)
    80003f14:	00013403          	ld	s0,0(sp)
    80003f18:	01010113          	addi	sp,sp,16
    80003f1c:	00008067          	ret

0000000080003f20 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003f20:	ff010113          	addi	sp,sp,-16
    80003f24:	00813423          	sd	s0,8(sp)
    80003f28:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003f2c:	00200793          	li	a5,2
    80003f30:	1047b073          	csrc	sie,a5
}
    80003f34:	00813403          	ld	s0,8(sp)
    80003f38:	01010113          	addi	sp,sp,16
    80003f3c:	00008067          	ret

0000000080003f40 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00813423          	sd	s0,8(sp)
    80003f48:	01010413          	addi	s0,sp,16
    while(true)
    80003f4c:	0000006f          	j	80003f4c <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003f50 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003f50:	ff010113          	addi	sp,sp,-16
    80003f54:	00813423          	sd	s0,8(sp)
    80003f58:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003f5c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003f60:	00008717          	auipc	a4,0x8
    80003f64:	ba873703          	ld	a4,-1112(a4) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003f68:	00073703          	ld	a4,0(a4)
    80003f6c:	01073703          	ld	a4,16(a4)
    80003f70:	00070593          	mv	a1,a4
    //__asm__ volatile("csrr a1, sscratch");
    __asm__ volatile("sd a0, 80(a1)");
    80003f74:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003f78:	00078593          	mv	a1,a5
}
    80003f7c:	00813403          	ld	s0,8(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret

0000000080003f88 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003f88:	ff010113          	addi	sp,sp,-16
    80003f8c:	00813423          	sd	s0,8(sp)
    80003f90:	01010413          	addi	s0,sp,16
    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003f94:	00813403          	ld	s0,8(sp)
    80003f98:	01010113          	addi	sp,sp,16
    80003f9c:	00008067          	ret

0000000080003fa0 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003fa0:	ff010113          	addi	sp,sp,-16
    80003fa4:	00813423          	sd	s0,8(sp)
    80003fa8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003fac:	0000c717          	auipc	a4,0xc
    80003fb0:	c6c72703          	lw	a4,-916(a4) # 8000fc18 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003fb4:	00100793          	li	a5,1
    80003fb8:	04f70263          	beq	a4,a5,80003ffc <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003fbc:	0000c797          	auipc	a5,0xc
    80003fc0:	c5c78793          	addi	a5,a5,-932 # 8000fc18 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003fc4:	00100713          	li	a4,1
    80003fc8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003fcc:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003fd0:	00008717          	auipc	a4,0x8
    80003fd4:	ae873703          	ld	a4,-1304(a4) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003fd8:	00073703          	ld	a4,0(a4)
    80003fdc:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003fe0:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003fe4:	00008797          	auipc	a5,0x8
    80003fe8:	b2c7b783          	ld	a5,-1236(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003fec:	0007b783          	ld	a5,0(a5)
    80003ff0:	40e787b3          	sub	a5,a5,a4
    80003ff4:	ff178793          	addi	a5,a5,-15
    80003ff8:	00f73023          	sd	a5,0(a4)
}
    80003ffc:	00813403          	ld	s0,8(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004008:	fe010113          	addi	sp,sp,-32
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	01213023          	sd	s2,0(sp)
    8000401c:	02010413          	addi	s0,sp,32
    80004020:	00050493          	mv	s1,a0
    80004024:	00058913          	mv	s2,a1
    initMemory();
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	f78080e7          	jalr	-136(ra) # 80003fa0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004030:	0000c797          	auipc	a5,0xc
    80004034:	bf07b783          	ld	a5,-1040(a5) # 8000fc20 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004038:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    8000403c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80004040:	00000713          	li	a4,0
    while(curr != 0)
    80004044:	00078c63          	beqz	a5,8000405c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004048:	00f4e863          	bltu	s1,a5,80004058 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    8000404c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004050:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004054:	ff1ff06f          	j	80004044 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80004058:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000405c:	02070063          	beqz	a4,8000407c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004060:	00973423          	sd	s1,8(a4)
}
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	01013403          	ld	s0,16(sp)
    8000406c:	00813483          	ld	s1,8(sp)
    80004070:	00013903          	ld	s2,0(sp)
    80004074:	02010113          	addi	sp,sp,32
    80004078:	00008067          	ret
        headAllocated = newAllocated;
    8000407c:	0000c797          	auipc	a5,0xc
    80004080:	ba97b223          	sd	s1,-1116(a5) # 8000fc20 <_ZN15MemoryAllocator13headAllocatedE>
    80004084:	fe1ff06f          	j	80004064 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004088 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004088:	fe010113          	addi	sp,sp,-32
    8000408c:	00113c23          	sd	ra,24(sp)
    80004090:	00813823          	sd	s0,16(sp)
    80004094:	00913423          	sd	s1,8(sp)
    80004098:	01213023          	sd	s2,0(sp)
    8000409c:	02010413          	addi	s0,sp,32
    800040a0:	00050913          	mv	s2,a0
    initMemory();
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	efc080e7          	jalr	-260(ra) # 80003fa0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800040ac:	0000c497          	auipc	s1,0xc
    800040b0:	b7c4b483          	ld	s1,-1156(s1) # 8000fc28 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800040b4:	00000713          	li	a4,0
    while(curr != 0)
    800040b8:	0a048863          	beqz	s1,80004168 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800040bc:	0004b783          	ld	a5,0(s1)
    800040c0:	0127f863          	bgeu	a5,s2,800040d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800040c4:	00048713          	mv	a4,s1
        curr = curr->next;
    800040c8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800040cc:	fedff06f          	j	800040b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800040d0:	01090693          	addi	a3,s2,16
    800040d4:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800040d8:	00008617          	auipc	a2,0x8
    800040dc:	a3863603          	ld	a2,-1480(a2) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x70>
    800040e0:	00063603          	ld	a2,0(a2)
    800040e4:	04d66c63          	bltu	a2,a3,8000413c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800040e8:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    800040ec:	01000613          	li	a2,16
    800040f0:	02f67663          	bgeu	a2,a5,8000411c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    800040f4:	0084b603          	ld	a2,8(s1)
    800040f8:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800040fc:	ff078793          	addi	a5,a5,-16
    80004100:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80004104:	00070663          	beqz	a4,80004110 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80004108:	00d73423          	sd	a3,8(a4)
    8000410c:	0380006f          	j	80004144 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80004110:	0000c797          	auipc	a5,0xc
    80004114:	b0d7bc23          	sd	a3,-1256(a5) # 8000fc28 <_ZN15MemoryAllocator8headFreeE>
    80004118:	02c0006f          	j	80004144 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    8000411c:	00070863          	beqz	a4,8000412c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80004120:	0084b783          	ld	a5,8(s1)
    80004124:	00f73423          	sd	a5,8(a4)
    80004128:	01c0006f          	j	80004144 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    8000412c:	0084b783          	ld	a5,8(s1)
    80004130:	0000c717          	auipc	a4,0xc
    80004134:	aef73c23          	sd	a5,-1288(a4) # 8000fc28 <_ZN15MemoryAllocator8headFreeE>
    80004138:	00c0006f          	j	80004144 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    8000413c:	02070063          	beqz	a4,8000415c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80004140:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80004144:	00090593          	mv	a1,s2
    80004148:	00048513          	mv	a0,s1
    8000414c:	00000097          	auipc	ra,0x0
    80004150:	ebc080e7          	jalr	-324(ra) # 80004008 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004154:	01048513          	addi	a0,s1,16
            break;
    80004158:	0140006f          	j	8000416c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    8000415c:	0000c797          	auipc	a5,0xc
    80004160:	ac07b623          	sd	zero,-1332(a5) # 8000fc28 <_ZN15MemoryAllocator8headFreeE>
    80004164:	fe1ff06f          	j	80004144 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80004168:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000416c:	01813083          	ld	ra,24(sp)
    80004170:	01013403          	ld	s0,16(sp)
    80004174:	00813483          	ld	s1,8(sp)
    80004178:	00013903          	ld	s2,0(sp)
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00008067          	ret

0000000080004184 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	00813023          	sd	s0,0(sp)
    80004190:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004194:	00000097          	auipc	ra,0x0
    80004198:	ef4080e7          	jalr	-268(ra) # 80004088 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    8000419c:	00813083          	ld	ra,8(sp)
    800041a0:	00013403          	ld	s0,0(sp)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret

00000000800041ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800041ac:	fe010113          	addi	sp,sp,-32
    800041b0:	00113c23          	sd	ra,24(sp)
    800041b4:	00813823          	sd	s0,16(sp)
    800041b8:	00913423          	sd	s1,8(sp)
    800041bc:	01213023          	sd	s2,0(sp)
    800041c0:	02010413          	addi	s0,sp,32
    800041c4:	00050493          	mv	s1,a0
    800041c8:	00058913          	mv	s2,a1
    initMemory();
    800041cc:	00000097          	auipc	ra,0x0
    800041d0:	dd4080e7          	jalr	-556(ra) # 80003fa0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800041d4:	0000c797          	auipc	a5,0xc
    800041d8:	a547b783          	ld	a5,-1452(a5) # 8000fc28 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800041dc:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800041e0:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800041e4:	00000713          	li	a4,0
    while(curr != 0)
    800041e8:	00078c63          	beqz	a5,80004200 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800041ec:	00f4e863          	bltu	s1,a5,800041fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800041f0:	00078713          	mv	a4,a5
        curr = curr->next;
    800041f4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800041f8:	ff1ff06f          	j	800041e8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800041fc:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004200:	04070663          	beqz	a4,8000424c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004204:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004208:	0084b783          	ld	a5,8(s1)
    8000420c:	00078a63          	beqz	a5,80004220 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004210:	0004b603          	ld	a2,0(s1)
    80004214:	01060693          	addi	a3,a2,16
    80004218:	00d486b3          	add	a3,s1,a3
    8000421c:	02d78e63          	beq	a5,a3,80004258 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004220:	00070a63          	beqz	a4,80004234 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80004224:	00073683          	ld	a3,0(a4)
    80004228:	01068793          	addi	a5,a3,16
    8000422c:	00f707b3          	add	a5,a4,a5
    80004230:	04978263          	beq	a5,s1,80004274 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004234:	01813083          	ld	ra,24(sp)
    80004238:	01013403          	ld	s0,16(sp)
    8000423c:	00813483          	ld	s1,8(sp)
    80004240:	00013903          	ld	s2,0(sp)
    80004244:	02010113          	addi	sp,sp,32
    80004248:	00008067          	ret
        headFree = newSegment;
    8000424c:	0000c797          	auipc	a5,0xc
    80004250:	9c97be23          	sd	s1,-1572(a5) # 8000fc28 <_ZN15MemoryAllocator8headFreeE>
    80004254:	fb5ff06f          	j	80004208 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004258:	0007b683          	ld	a3,0(a5)
    8000425c:	00d60633          	add	a2,a2,a3
    80004260:	01060613          	addi	a2,a2,16
    80004264:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004268:	0087b783          	ld	a5,8(a5)
    8000426c:	00f4b423          	sd	a5,8(s1)
    80004270:	fb1ff06f          	j	80004220 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004274:	0004b783          	ld	a5,0(s1)
    80004278:	00f686b3          	add	a3,a3,a5
    8000427c:	01068693          	addi	a3,a3,16
    80004280:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004284:	0084b783          	ld	a5,8(s1)
    80004288:	00f73423          	sd	a5,8(a4)
}
    8000428c:	fa9ff06f          	j	80004234 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004290 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004290:	fe010113          	addi	sp,sp,-32
    80004294:	00113c23          	sd	ra,24(sp)
    80004298:	00813823          	sd	s0,16(sp)
    8000429c:	00913423          	sd	s1,8(sp)
    800042a0:	01213023          	sd	s2,0(sp)
    800042a4:	02010413          	addi	s0,sp,32
    800042a8:	00050913          	mv	s2,a0
    initMemory();
    800042ac:	00000097          	auipc	ra,0x0
    800042b0:	cf4080e7          	jalr	-780(ra) # 80003fa0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800042b4:	0000c497          	auipc	s1,0xc
    800042b8:	96c4b483          	ld	s1,-1684(s1) # 8000fc20 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800042bc:	00000713          	li	a4,0
    while(curr != 0)
    800042c0:	02048a63          	beqz	s1,800042f4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800042c4:	01048793          	addi	a5,s1,16
    800042c8:	01278863          	beq	a5,s2,800042d8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800042cc:	00048713          	mv	a4,s1
        curr = curr->next;
    800042d0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800042d4:	fedff06f          	j	800042c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800042d8:	02070e63          	beqz	a4,80004314 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800042dc:	0084b783          	ld	a5,8(s1)
    800042e0:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800042e4:	0004b583          	ld	a1,0(s1)
    800042e8:	00048513          	mv	a0,s1
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	ec0080e7          	jalr	-320(ra) # 800041ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800042f4:	02048863          	beqz	s1,80004324 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800042f8:	00000513          	li	a0,0
    else
        return 1;
}
    800042fc:	01813083          	ld	ra,24(sp)
    80004300:	01013403          	ld	s0,16(sp)
    80004304:	00813483          	ld	s1,8(sp)
    80004308:	00013903          	ld	s2,0(sp)
    8000430c:	02010113          	addi	sp,sp,32
    80004310:	00008067          	ret
                headAllocated = curr->next;
    80004314:	0084b783          	ld	a5,8(s1)
    80004318:	0000c717          	auipc	a4,0xc
    8000431c:	90f73423          	sd	a5,-1784(a4) # 8000fc20 <_ZN15MemoryAllocator13headAllocatedE>
    80004320:	fc5ff06f          	j	800042e4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004324:	00100513          	li	a0,1
    80004328:	fd5ff06f          	j	800042fc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

000000008000432c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    8000432c:	ff010113          	addi	sp,sp,-16
    80004330:	00113423          	sd	ra,8(sp)
    80004334:	00813023          	sd	s0,0(sp)
    80004338:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000433c:	00000097          	auipc	ra,0x0
    80004340:	f54080e7          	jalr	-172(ra) # 80004290 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004344:	00813083          	ld	ra,8(sp)
    80004348:	00013403          	ld	s0,0(sp)
    8000434c:	01010113          	addi	sp,sp,16
    80004350:	00008067          	ret

0000000080004354 <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    80004354:	ff010113          	addi	sp,sp,-16
    80004358:	00113423          	sd	ra,8(sp)
    8000435c:	00813023          	sd	s0,0(sp)
    80004360:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004364:	00000097          	auipc	ra,0x0
    80004368:	e20080e7          	jalr	-480(ra) # 80004184 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000436c:	00813083          	ld	ra,8(sp)
    80004370:	00013403          	ld	s0,0(sp)
    80004374:	01010113          	addi	sp,sp,16
    80004378:	00008067          	ret

000000008000437c <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    8000437c:	ff010113          	addi	sp,sp,-16
    80004380:	00113423          	sd	ra,8(sp)
    80004384:	00813023          	sd	s0,0(sp)
    80004388:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    8000438c:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004390:	00651513          	slli	a0,a0,0x6
    80004394:	00000097          	auipc	ra,0x0
    80004398:	fc0080e7          	jalr	-64(ra) # 80004354 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    8000439c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800043a0:	00000097          	auipc	ra,0x0
    800043a4:	bb0080e7          	jalr	-1104(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    800043a8:	00813083          	ld	ra,8(sp)
    800043ac:	00013403          	ld	s0,0(sp)
    800043b0:	01010113          	addi	sp,sp,16
    800043b4:	00008067          	ret

00000000800043b8 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800043b8:	ff010113          	addi	sp,sp,-16
    800043bc:	00113423          	sd	ra,8(sp)
    800043c0:	00813023          	sd	s0,0(sp)
    800043c4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800043c8:	00000097          	auipc	ra,0x0
    800043cc:	f64080e7          	jalr	-156(ra) # 8000432c <_ZN15MemoryAllocator8mem_freeEPv>
    800043d0:	00813083          	ld	ra,8(sp)
    800043d4:	00013403          	ld	s0,0(sp)
    800043d8:	01010113          	addi	sp,sp,16
    800043dc:	00008067          	ret

00000000800043e0 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800043e0:	ff010113          	addi	sp,sp,-16
    800043e4:	00113423          	sd	ra,8(sp)
    800043e8:	00813023          	sd	s0,0(sp)
    800043ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800043f0:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	fc4080e7          	jalr	-60(ra) # 800043b8 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800043fc:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004400:	00000097          	auipc	ra,0x0
    80004404:	b50080e7          	jalr	-1200(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004408:	00813083          	ld	ra,8(sp)
    8000440c:	00013403          	ld	s0,0(sp)
    80004410:	01010113          	addi	sp,sp,16
    80004414:	00008067          	ret

0000000080004418 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004418:	ff010113          	addi	sp,sp,-16
    8000441c:	00813423          	sd	s0,8(sp)
    80004420:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004424:	00b52a23          	sw	a1,20(a0)
    80004428:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000442c:	00053423          	sd	zero,8(a0)
    80004430:	00053023          	sd	zero,0(a0)
}
    80004434:	00813403          	ld	s0,8(sp)
    80004438:	01010113          	addi	sp,sp,16
    8000443c:	00008067          	ret

0000000080004440 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004440:	ff010113          	addi	sp,sp,-16
    80004444:	00813423          	sd	s0,8(sp)
    80004448:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000444c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004450:	00053783          	ld	a5,0(a0)
    80004454:	00078e63          	beqz	a5,80004470 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004458:	00853783          	ld	a5,8(a0)
    8000445c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004460:	00b53423          	sd	a1,8(a0)
    }
}
    80004464:	00813403          	ld	s0,8(sp)
    80004468:	01010113          	addi	sp,sp,16
    8000446c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004470:	00b53423          	sd	a1,8(a0)
    80004474:	00b53023          	sd	a1,0(a0)
    80004478:	fedff06f          	j	80004464 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000447c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    8000447c:	ff010113          	addi	sp,sp,-16
    80004480:	00113423          	sd	ra,8(sp)
    80004484:	00813023          	sd	s0,0(sp)
    80004488:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    8000448c:	00007797          	auipc	a5,0x7
    80004490:	67c7b783          	ld	a5,1660(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004494:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004498:	00200793          	li	a5,2
    8000449c:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	fa0080e7          	jalr	-96(ra) # 80004440 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800044a8:	ffffe097          	auipc	ra,0xffffe
    800044ac:	450080e7          	jalr	1104(ra) # 800028f8 <_ZN3PCB8dispatchEv>
}
    800044b0:	00813083          	ld	ra,8(sp)
    800044b4:	00013403          	ld	s0,0(sp)
    800044b8:	01010113          	addi	sp,sp,16
    800044bc:	00008067          	ret

00000000800044c0 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800044c0:	01052783          	lw	a5,16(a0)
    800044c4:	fff7879b          	addiw	a5,a5,-1
    800044c8:	00f52823          	sw	a5,16(a0)
    800044cc:	02079713          	slli	a4,a5,0x20
    800044d0:	00074663          	bltz	a4,800044dc <_ZN10KSemaphore4waitEv+0x1c>
}
    800044d4:	00000513          	li	a0,0
    800044d8:	00008067          	ret
uint64 KSemaphore::wait() {
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00113423          	sd	ra,8(sp)
    800044e4:	00813023          	sd	s0,0(sp)
    800044e8:	01010413          	addi	s0,sp,16
        block();
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	f90080e7          	jalr	-112(ra) # 8000447c <_ZN10KSemaphore5blockEv>
}
    800044f4:	00000513          	li	a0,0
    800044f8:	00813083          	ld	ra,8(sp)
    800044fc:	00013403          	ld	s0,0(sp)
    80004500:	01010113          	addi	sp,sp,16
    80004504:	00008067          	ret

0000000080004508 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004508:	ff010113          	addi	sp,sp,-16
    8000450c:	00813423          	sd	s0,8(sp)
    80004510:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004514:	00053503          	ld	a0,0(a0)
    80004518:	00813403          	ld	s0,8(sp)
    8000451c:	01010113          	addi	sp,sp,16
    80004520:	00008067          	ret

0000000080004524 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004524:	ff010113          	addi	sp,sp,-16
    80004528:	00813423          	sd	s0,8(sp)
    8000452c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004530:	00053783          	ld	a5,0(a0)
    80004534:	00078c63          	beqz	a5,8000454c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004538:	0087b703          	ld	a4,8(a5)
    8000453c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004540:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004544:	00053783          	ld	a5,0(a0)
    80004548:	00078863          	beqz	a5,80004558 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000454c:	00813403          	ld	s0,8(sp)
    80004550:	01010113          	addi	sp,sp,16
    80004554:	00008067          	ret
        tailBlocked =0;
    80004558:	00053423          	sd	zero,8(a0)
    8000455c:	ff1ff06f          	j	8000454c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004560 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004560:	fe010113          	addi	sp,sp,-32
    80004564:	00113c23          	sd	ra,24(sp)
    80004568:	00813823          	sd	s0,16(sp)
    8000456c:	00913423          	sd	s1,8(sp)
    80004570:	01213023          	sd	s2,0(sp)
    80004574:	02010413          	addi	s0,sp,32
    80004578:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    8000457c:	00090513          	mv	a0,s2
    80004580:	00000097          	auipc	ra,0x0
    80004584:	f88080e7          	jalr	-120(ra) # 80004508 <_ZN10KSemaphore15getFirstBlockedEv>
    80004588:	00050493          	mv	s1,a0
    8000458c:	02050063          	beqz	a0,800045ac <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80004590:	00090513          	mv	a0,s2
    80004594:	00000097          	auipc	ra,0x0
    80004598:	f90080e7          	jalr	-112(ra) # 80004524 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    8000459c:	00048513          	mv	a0,s1
    800045a0:	fffff097          	auipc	ra,0xfffff
    800045a4:	f5c080e7          	jalr	-164(ra) # 800034fc <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800045a8:	fd5ff06f          	j	8000457c <_ZN10KSemaphoreD1Ev+0x1c>
}
    800045ac:	01813083          	ld	ra,24(sp)
    800045b0:	01013403          	ld	s0,16(sp)
    800045b4:	00813483          	ld	s1,8(sp)
    800045b8:	00013903          	ld	s2,0(sp)
    800045bc:	02010113          	addi	sp,sp,32
    800045c0:	00008067          	ret

00000000800045c4 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800045c4:	fe010113          	addi	sp,sp,-32
    800045c8:	00113c23          	sd	ra,24(sp)
    800045cc:	00813823          	sd	s0,16(sp)
    800045d0:	00913423          	sd	s1,8(sp)
    800045d4:	01213023          	sd	s2,0(sp)
    800045d8:	02010413          	addi	s0,sp,32
    800045dc:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	f28080e7          	jalr	-216(ra) # 80004508 <_ZN10KSemaphore15getFirstBlockedEv>
    800045e8:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800045ec:	00090513          	mv	a0,s2
    800045f0:	00000097          	auipc	ra,0x0
    800045f4:	f34080e7          	jalr	-204(ra) # 80004524 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800045f8:	00048863          	beqz	s1,80004608 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    800045fc:	00048513          	mv	a0,s1
    80004600:	fffff097          	auipc	ra,0xfffff
    80004604:	efc080e7          	jalr	-260(ra) # 800034fc <_ZN9Scheduler3putEP3PCB>
    }
}
    80004608:	01813083          	ld	ra,24(sp)
    8000460c:	01013403          	ld	s0,16(sp)
    80004610:	00813483          	ld	s1,8(sp)
    80004614:	00013903          	ld	s2,0(sp)
    80004618:	02010113          	addi	sp,sp,32
    8000461c:	00008067          	ret

0000000080004620 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004620:	01052783          	lw	a5,16(a0)
    80004624:	0017879b          	addiw	a5,a5,1
    80004628:	0007871b          	sext.w	a4,a5
    8000462c:	00f52823          	sw	a5,16(a0)
    80004630:	00e05663          	blez	a4,8000463c <_ZN10KSemaphore6signalEv+0x1c>
}
    80004634:	00000513          	li	a0,0
    80004638:	00008067          	ret
uint64 KSemaphore::signal() {
    8000463c:	ff010113          	addi	sp,sp,-16
    80004640:	00113423          	sd	ra,8(sp)
    80004644:	00813023          	sd	s0,0(sp)
    80004648:	01010413          	addi	s0,sp,16
        unblock();
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	f78080e7          	jalr	-136(ra) # 800045c4 <_ZN10KSemaphore7unblockEv>
}
    80004654:	00000513          	li	a0,0
    80004658:	00813083          	ld	ra,8(sp)
    8000465c:	00013403          	ld	s0,0(sp)
    80004660:	01010113          	addi	sp,sp,16
    80004664:	00008067          	ret

0000000080004668 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004668:	ff010113          	addi	sp,sp,-16
    8000466c:	00113423          	sd	ra,8(sp)
    80004670:	00813023          	sd	s0,0(sp)
    80004674:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004678:	00000097          	auipc	ra,0x0
    8000467c:	cdc080e7          	jalr	-804(ra) # 80004354 <_Z7kmallocm>
}
    80004680:	00813083          	ld	ra,8(sp)
    80004684:	00013403          	ld	s0,0(sp)
    80004688:	01010113          	addi	sp,sp,16
    8000468c:	00008067          	ret

0000000080004690 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004690:	fd010113          	addi	sp,sp,-48
    80004694:	02113423          	sd	ra,40(sp)
    80004698:	02813023          	sd	s0,32(sp)
    8000469c:	00913c23          	sd	s1,24(sp)
    800046a0:	01213823          	sd	s2,16(sp)
    800046a4:	01313423          	sd	s3,8(sp)
    800046a8:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800046ac:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800046b0:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800046b4:	01800513          	li	a0,24
    800046b8:	00000097          	auipc	ra,0x0
    800046bc:	fb0080e7          	jalr	-80(ra) # 80004668 <_ZN10KSemaphorenwEm>
    800046c0:	00050493          	mv	s1,a0
    800046c4:	0009859b          	sext.w	a1,s3
    800046c8:	00000097          	auipc	ra,0x0
    800046cc:	d50080e7          	jalr	-688(ra) # 80004418 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800046d0:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800046d4:	02048263          	beqz	s1,800046f8 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800046d8:	00000513          	li	a0,0
}
    800046dc:	02813083          	ld	ra,40(sp)
    800046e0:	02013403          	ld	s0,32(sp)
    800046e4:	01813483          	ld	s1,24(sp)
    800046e8:	01013903          	ld	s2,16(sp)
    800046ec:	00813983          	ld	s3,8(sp)
    800046f0:	03010113          	addi	sp,sp,48
    800046f4:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800046f8:	fff00513          	li	a0,-1
    800046fc:	fe1ff06f          	j	800046dc <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004700 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004700:	ff010113          	addi	sp,sp,-16
    80004704:	00113423          	sd	ra,8(sp)
    80004708:	00813023          	sd	s0,0(sp)
    8000470c:	01010413          	addi	s0,sp,16
    kfree(p);
    80004710:	00000097          	auipc	ra,0x0
    80004714:	ca8080e7          	jalr	-856(ra) # 800043b8 <_Z5kfreePv>
}
    80004718:	00813083          	ld	ra,8(sp)
    8000471c:	00013403          	ld	s0,0(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret

0000000080004728 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004728:	fe010113          	addi	sp,sp,-32
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004738:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	d84080e7          	jalr	-636(ra) # 800044c0 <_ZN10KSemaphore4waitEv>
    80004744:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004748:	fe843783          	ld	a5,-24(s0)
    8000474c:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004750:	00000097          	auipc	ra,0x0
    80004754:	800080e7          	jalr	-2048(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004758:	01813083          	ld	ra,24(sp)
    8000475c:	01013403          	ld	s0,16(sp)
    80004760:	02010113          	addi	sp,sp,32
    80004764:	00008067          	ret

0000000080004768 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004768:	fe010113          	addi	sp,sp,-32
    8000476c:	00113c23          	sd	ra,24(sp)
    80004770:	00813823          	sd	s0,16(sp)
    80004774:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004778:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    8000477c:	00000097          	auipc	ra,0x0
    80004780:	ea4080e7          	jalr	-348(ra) # 80004620 <_ZN10KSemaphore6signalEv>
    80004784:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004788:	fe843783          	ld	a5,-24(s0)
    8000478c:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004790:	fffff097          	auipc	ra,0xfffff
    80004794:	7c0080e7          	jalr	1984(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004798:	01813083          	ld	ra,24(sp)
    8000479c:	01013403          	ld	s0,16(sp)
    800047a0:	02010113          	addi	sp,sp,32
    800047a4:	00008067          	ret

00000000800047a8 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800047a8:	fe010113          	addi	sp,sp,-32
    800047ac:	00113c23          	sd	ra,24(sp)
    800047b0:	00813823          	sd	s0,16(sp)
    800047b4:	00913423          	sd	s1,8(sp)
    800047b8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047bc:	00058493          	mv	s1,a1
    delete kSem;
    800047c0:	00048e63          	beqz	s1,800047dc <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800047c4:	00048513          	mv	a0,s1
    800047c8:	00000097          	auipc	ra,0x0
    800047cc:	d98080e7          	jalr	-616(ra) # 80004560 <_ZN10KSemaphoreD1Ev>
    800047d0:	00048513          	mv	a0,s1
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	f2c080e7          	jalr	-212(ra) # 80004700 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800047dc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800047e0:	fffff097          	auipc	ra,0xfffff
    800047e4:	770080e7          	jalr	1904(ra) # 80003f50 <_ZN5Riscv13w_a0_sscratchEv>
}
    800047e8:	01813083          	ld	ra,24(sp)
    800047ec:	01013403          	ld	s0,16(sp)
    800047f0:	00813483          	ld	s1,8(sp)
    800047f4:	02010113          	addi	sp,sp,32
    800047f8:	00008067          	ret

00000000800047fc <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800047fc:	fe010113          	addi	sp,sp,-32
    80004800:	00113c23          	sd	ra,24(sp)
    80004804:	00813823          	sd	s0,16(sp)
    80004808:	00913423          	sd	s1,8(sp)
    8000480c:	01213023          	sd	s2,0(sp)
    80004810:	02010413          	addi	s0,sp,32
    80004814:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004818:	00000913          	li	s2,0
    8000481c:	00c0006f          	j	80004828 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004820:	ffffd097          	auipc	ra,0xffffd
    80004824:	b14080e7          	jalr	-1260(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	ce8080e7          	jalr	-792(ra) # 80001510 <getc>
    80004830:	0005059b          	sext.w	a1,a0
    80004834:	07100793          	li	a5,113
    80004838:	02f58a63          	beq	a1,a5,8000486c <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000483c:	0084b503          	ld	a0,8(s1)
    80004840:	00002097          	auipc	ra,0x2
    80004844:	df4080e7          	jalr	-524(ra) # 80006634 <_ZN6Buffer3putEi>
        i++;
    80004848:	0019071b          	addiw	a4,s2,1
    8000484c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004850:	0004a683          	lw	a3,0(s1)
    80004854:	0026979b          	slliw	a5,a3,0x2
    80004858:	00d787bb          	addw	a5,a5,a3
    8000485c:	0017979b          	slliw	a5,a5,0x1
    80004860:	02f767bb          	remw	a5,a4,a5
    80004864:	fc0792e3          	bnez	a5,80004828 <_Z16producerKeyboardPv+0x2c>
    80004868:	fb9ff06f          	j	80004820 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000486c:	00100793          	li	a5,1
    80004870:	0000b717          	auipc	a4,0xb
    80004874:	3cf72023          	sw	a5,960(a4) # 8000fc30 <threadEnd>

    delete data->buffer;
    80004878:	0084b903          	ld	s2,8(s1)
    8000487c:	00090e63          	beqz	s2,80004898 <_Z16producerKeyboardPv+0x9c>
    80004880:	00090513          	mv	a0,s2
    80004884:	00002097          	auipc	ra,0x2
    80004888:	cf4080e7          	jalr	-780(ra) # 80006578 <_ZN6BufferD1Ev>
    8000488c:	00090513          	mv	a0,s2
    80004890:	fffff097          	auipc	ra,0xfffff
    80004894:	e68080e7          	jalr	-408(ra) # 800036f8 <_ZdlPv>

    sem_signal(data->wait);
    80004898:	0104b503          	ld	a0,16(s1)
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	b70080e7          	jalr	-1168(ra) # 8000140c <sem_signal>
}
    800048a4:	01813083          	ld	ra,24(sp)
    800048a8:	01013403          	ld	s0,16(sp)
    800048ac:	00813483          	ld	s1,8(sp)
    800048b0:	00013903          	ld	s2,0(sp)
    800048b4:	02010113          	addi	sp,sp,32
    800048b8:	00008067          	ret

00000000800048bc <_Z8producerPv>:

void producer(void *arg) {
    800048bc:	fe010113          	addi	sp,sp,-32
    800048c0:	00113c23          	sd	ra,24(sp)
    800048c4:	00813823          	sd	s0,16(sp)
    800048c8:	00913423          	sd	s1,8(sp)
    800048cc:	01213023          	sd	s2,0(sp)
    800048d0:	02010413          	addi	s0,sp,32
    800048d4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800048d8:	00000913          	li	s2,0
    800048dc:	00c0006f          	j	800048e8 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	a54080e7          	jalr	-1452(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    800048e8:	0000b797          	auipc	a5,0xb
    800048ec:	3487a783          	lw	a5,840(a5) # 8000fc30 <threadEnd>
    800048f0:	02079e63          	bnez	a5,8000492c <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800048f4:	0004a583          	lw	a1,0(s1)
    800048f8:	0305859b          	addiw	a1,a1,48
    800048fc:	0084b503          	ld	a0,8(s1)
    80004900:	00002097          	auipc	ra,0x2
    80004904:	d34080e7          	jalr	-716(ra) # 80006634 <_ZN6Buffer3putEi>
        i++;
    80004908:	0019071b          	addiw	a4,s2,1
    8000490c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004910:	0004a683          	lw	a3,0(s1)
    80004914:	0026979b          	slliw	a5,a3,0x2
    80004918:	00d787bb          	addw	a5,a5,a3
    8000491c:	0017979b          	slliw	a5,a5,0x1
    80004920:	02f767bb          	remw	a5,a4,a5
    80004924:	fc0792e3          	bnez	a5,800048e8 <_Z8producerPv+0x2c>
    80004928:	fb9ff06f          	j	800048e0 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000492c:	0104b503          	ld	a0,16(s1)
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	adc080e7          	jalr	-1316(ra) # 8000140c <sem_signal>
}
    80004938:	01813083          	ld	ra,24(sp)
    8000493c:	01013403          	ld	s0,16(sp)
    80004940:	00813483          	ld	s1,8(sp)
    80004944:	00013903          	ld	s2,0(sp)
    80004948:	02010113          	addi	sp,sp,32
    8000494c:	00008067          	ret

0000000080004950 <_Z8consumerPv>:

void consumer(void *arg) {
    80004950:	fd010113          	addi	sp,sp,-48
    80004954:	02113423          	sd	ra,40(sp)
    80004958:	02813023          	sd	s0,32(sp)
    8000495c:	00913c23          	sd	s1,24(sp)
    80004960:	01213823          	sd	s2,16(sp)
    80004964:	01313423          	sd	s3,8(sp)
    80004968:	03010413          	addi	s0,sp,48
    8000496c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80004970:	00000993          	li	s3,0
    80004974:	01c0006f          	j	80004990 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	9bc080e7          	jalr	-1604(ra) # 80001334 <thread_dispatch>
    80004980:	0500006f          	j	800049d0 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004984:	00a00513          	li	a0,10
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	bb0080e7          	jalr	-1104(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004990:	0000b797          	auipc	a5,0xb
    80004994:	2a07a783          	lw	a5,672(a5) # 8000fc30 <threadEnd>
    80004998:	04079463          	bnez	a5,800049e0 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    8000499c:	00893503          	ld	a0,8(s2)
    800049a0:	00002097          	auipc	ra,0x2
    800049a4:	d24080e7          	jalr	-732(ra) # 800066c4 <_ZN6Buffer3getEv>
        i++;
    800049a8:	0019849b          	addiw	s1,s3,1
    800049ac:	0004899b          	sext.w	s3,s1
        putc(key);
    800049b0:	0ff57513          	andi	a0,a0,255
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	b84080e7          	jalr	-1148(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    800049bc:	00092703          	lw	a4,0(s2)
    800049c0:	0027179b          	slliw	a5,a4,0x2
    800049c4:	00e787bb          	addw	a5,a5,a4
    800049c8:	02f4e7bb          	remw	a5,s1,a5
    800049cc:	fa0786e3          	beqz	a5,80004978 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    800049d0:	05000793          	li	a5,80
    800049d4:	02f4e4bb          	remw	s1,s1,a5
    800049d8:	fa049ce3          	bnez	s1,80004990 <_Z8consumerPv+0x40>
    800049dc:	fa9ff06f          	j	80004984 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    800049e0:	01093503          	ld	a0,16(s2)
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	a28080e7          	jalr	-1496(ra) # 8000140c <sem_signal>
}
    800049ec:	02813083          	ld	ra,40(sp)
    800049f0:	02013403          	ld	s0,32(sp)
    800049f4:	01813483          	ld	s1,24(sp)
    800049f8:	01013903          	ld	s2,16(sp)
    800049fc:	00813983          	ld	s3,8(sp)
    80004a00:	03010113          	addi	sp,sp,48
    80004a04:	00008067          	ret

0000000080004a08 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004a08:	f9010113          	addi	sp,sp,-112
    80004a0c:	06113423          	sd	ra,104(sp)
    80004a10:	06813023          	sd	s0,96(sp)
    80004a14:	04913c23          	sd	s1,88(sp)
    80004a18:	05213823          	sd	s2,80(sp)
    80004a1c:	05313423          	sd	s3,72(sp)
    80004a20:	05413023          	sd	s4,64(sp)
    80004a24:	03513c23          	sd	s5,56(sp)
    80004a28:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004a2c:	00005517          	auipc	a0,0x5
    80004a30:	93c50513          	addi	a0,a0,-1732 # 80009368 <CONSOLE_STATUS+0x358>
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	204080e7          	jalr	516(ra) # 80005c38 <_Z11printStringPKc>
    getString(input, 30);
    80004a3c:	01e00593          	li	a1,30
    80004a40:	fa040493          	addi	s1,s0,-96
    80004a44:	00048513          	mv	a0,s1
    80004a48:	00001097          	auipc	ra,0x1
    80004a4c:	26c080e7          	jalr	620(ra) # 80005cb4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004a50:	00048513          	mv	a0,s1
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	32c080e7          	jalr	812(ra) # 80005d80 <_Z11stringToIntPKc>
    80004a5c:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004a60:	00005517          	auipc	a0,0x5
    80004a64:	92850513          	addi	a0,a0,-1752 # 80009388 <CONSOLE_STATUS+0x378>
    80004a68:	00001097          	auipc	ra,0x1
    80004a6c:	1d0080e7          	jalr	464(ra) # 80005c38 <_Z11printStringPKc>
    getString(input, 30);
    80004a70:	01e00593          	li	a1,30
    80004a74:	00048513          	mv	a0,s1
    80004a78:	00001097          	auipc	ra,0x1
    80004a7c:	23c080e7          	jalr	572(ra) # 80005cb4 <_Z9getStringPci>
    n = stringToInt(input);
    80004a80:	00048513          	mv	a0,s1
    80004a84:	00001097          	auipc	ra,0x1
    80004a88:	2fc080e7          	jalr	764(ra) # 80005d80 <_Z11stringToIntPKc>
    80004a8c:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004a90:	00005517          	auipc	a0,0x5
    80004a94:	91850513          	addi	a0,a0,-1768 # 800093a8 <CONSOLE_STATUS+0x398>
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	1a0080e7          	jalr	416(ra) # 80005c38 <_Z11printStringPKc>
    80004aa0:	00000613          	li	a2,0
    80004aa4:	00a00593          	li	a1,10
    80004aa8:	00090513          	mv	a0,s2
    80004aac:	00001097          	auipc	ra,0x1
    80004ab0:	324080e7          	jalr	804(ra) # 80005dd0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004ab4:	00005517          	auipc	a0,0x5
    80004ab8:	90c50513          	addi	a0,a0,-1780 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	17c080e7          	jalr	380(ra) # 80005c38 <_Z11printStringPKc>
    80004ac4:	00000613          	li	a2,0
    80004ac8:	00a00593          	li	a1,10
    80004acc:	00048513          	mv	a0,s1
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	300080e7          	jalr	768(ra) # 80005dd0 <_Z8printIntiii>
    printString(".\n");
    80004ad8:	00005517          	auipc	a0,0x5
    80004adc:	90050513          	addi	a0,a0,-1792 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	158080e7          	jalr	344(ra) # 80005c38 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004ae8:	03800513          	li	a0,56
    80004aec:	fffff097          	auipc	ra,0xfffff
    80004af0:	be4080e7          	jalr	-1052(ra) # 800036d0 <_Znwm>
    80004af4:	00050a13          	mv	s4,a0
    80004af8:	00048593          	mv	a1,s1
    80004afc:	00002097          	auipc	ra,0x2
    80004b00:	9f4080e7          	jalr	-1548(ra) # 800064f0 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004b04:	00000593          	li	a1,0
    80004b08:	0000b517          	auipc	a0,0xb
    80004b0c:	13050513          	addi	a0,a0,304 # 8000fc38 <waitForAll>
    80004b10:	ffffd097          	auipc	ra,0xffffd
    80004b14:	86c080e7          	jalr	-1940(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004b18:	00391793          	slli	a5,s2,0x3
    80004b1c:	00f78793          	addi	a5,a5,15
    80004b20:	ff07f793          	andi	a5,a5,-16
    80004b24:	40f10133          	sub	sp,sp,a5
    80004b28:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004b2c:	0019071b          	addiw	a4,s2,1
    80004b30:	00171793          	slli	a5,a4,0x1
    80004b34:	00e787b3          	add	a5,a5,a4
    80004b38:	00379793          	slli	a5,a5,0x3
    80004b3c:	00f78793          	addi	a5,a5,15
    80004b40:	ff07f793          	andi	a5,a5,-16
    80004b44:	40f10133          	sub	sp,sp,a5
    80004b48:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004b4c:	00191613          	slli	a2,s2,0x1
    80004b50:	012607b3          	add	a5,a2,s2
    80004b54:	00379793          	slli	a5,a5,0x3
    80004b58:	00f987b3          	add	a5,s3,a5
    80004b5c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004b60:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004b64:	0000b717          	auipc	a4,0xb
    80004b68:	0d473703          	ld	a4,212(a4) # 8000fc38 <waitForAll>
    80004b6c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004b70:	00078613          	mv	a2,a5
    80004b74:	00000597          	auipc	a1,0x0
    80004b78:	ddc58593          	addi	a1,a1,-548 # 80004950 <_Z8consumerPv>
    80004b7c:	f9840513          	addi	a0,s0,-104
    80004b80:	ffffc097          	auipc	ra,0xffffc
    80004b84:	734080e7          	jalr	1844(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004b88:	00000493          	li	s1,0
    80004b8c:	0280006f          	j	80004bb4 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004b90:	00000597          	auipc	a1,0x0
    80004b94:	c6c58593          	addi	a1,a1,-916 # 800047fc <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004b98:	00179613          	slli	a2,a5,0x1
    80004b9c:	00f60633          	add	a2,a2,a5
    80004ba0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004ba4:	00c98633          	add	a2,s3,a2
    80004ba8:	ffffc097          	auipc	ra,0xffffc
    80004bac:	70c080e7          	jalr	1804(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004bb0:	0014849b          	addiw	s1,s1,1
    80004bb4:	0524d263          	bge	s1,s2,80004bf8 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004bb8:	00149793          	slli	a5,s1,0x1
    80004bbc:	009787b3          	add	a5,a5,s1
    80004bc0:	00379793          	slli	a5,a5,0x3
    80004bc4:	00f987b3          	add	a5,s3,a5
    80004bc8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004bcc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004bd0:	0000b717          	auipc	a4,0xb
    80004bd4:	06873703          	ld	a4,104(a4) # 8000fc38 <waitForAll>
    80004bd8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004bdc:	00048793          	mv	a5,s1
    80004be0:	00349513          	slli	a0,s1,0x3
    80004be4:	00aa8533          	add	a0,s5,a0
    80004be8:	fa9054e3          	blez	s1,80004b90 <_Z22producerConsumer_C_APIv+0x188>
    80004bec:	00000597          	auipc	a1,0x0
    80004bf0:	cd058593          	addi	a1,a1,-816 # 800048bc <_Z8producerPv>
    80004bf4:	fa5ff06f          	j	80004b98 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004bf8:	ffffc097          	auipc	ra,0xffffc
    80004bfc:	73c080e7          	jalr	1852(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004c00:	00000493          	li	s1,0
    80004c04:	00994e63          	blt	s2,s1,80004c20 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004c08:	0000b517          	auipc	a0,0xb
    80004c0c:	03053503          	ld	a0,48(a0) # 8000fc38 <waitForAll>
    80004c10:	ffffc097          	auipc	ra,0xffffc
    80004c14:	7d0080e7          	jalr	2000(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004c18:	0014849b          	addiw	s1,s1,1
    80004c1c:	fe9ff06f          	j	80004c04 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004c20:	0000b517          	auipc	a0,0xb
    80004c24:	01853503          	ld	a0,24(a0) # 8000fc38 <waitForAll>
    80004c28:	ffffc097          	auipc	ra,0xffffc
    80004c2c:	78c080e7          	jalr	1932(ra) # 800013b4 <sem_close>
    80004c30:	f9040113          	addi	sp,s0,-112
    80004c34:	06813083          	ld	ra,104(sp)
    80004c38:	06013403          	ld	s0,96(sp)
    80004c3c:	05813483          	ld	s1,88(sp)
    80004c40:	05013903          	ld	s2,80(sp)
    80004c44:	04813983          	ld	s3,72(sp)
    80004c48:	04013a03          	ld	s4,64(sp)
    80004c4c:	03813a83          	ld	s5,56(sp)
    80004c50:	07010113          	addi	sp,sp,112
    80004c54:	00008067          	ret
    80004c58:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004c5c:	000a0513          	mv	a0,s4
    80004c60:	fffff097          	auipc	ra,0xfffff
    80004c64:	a98080e7          	jalr	-1384(ra) # 800036f8 <_ZdlPv>
    80004c68:	00048513          	mv	a0,s1
    80004c6c:	0000c097          	auipc	ra,0xc
    80004c70:	0bc080e7          	jalr	188(ra) # 80010d28 <_Unwind_Resume>

0000000080004c74 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004c74:	fe010113          	addi	sp,sp,-32
    80004c78:	00113c23          	sd	ra,24(sp)
    80004c7c:	00813823          	sd	s0,16(sp)
    80004c80:	00913423          	sd	s1,8(sp)
    80004c84:	01213023          	sd	s2,0(sp)
    80004c88:	02010413          	addi	s0,sp,32
    80004c8c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c90:	00100793          	li	a5,1
    80004c94:	02a7f863          	bgeu	a5,a0,80004cc4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c98:	00a00793          	li	a5,10
    80004c9c:	02f577b3          	remu	a5,a0,a5
    80004ca0:	02078e63          	beqz	a5,80004cdc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004ca4:	fff48513          	addi	a0,s1,-1
    80004ca8:	00000097          	auipc	ra,0x0
    80004cac:	fcc080e7          	jalr	-52(ra) # 80004c74 <_ZL9fibonaccim>
    80004cb0:	00050913          	mv	s2,a0
    80004cb4:	ffe48513          	addi	a0,s1,-2
    80004cb8:	00000097          	auipc	ra,0x0
    80004cbc:	fbc080e7          	jalr	-68(ra) # 80004c74 <_ZL9fibonaccim>
    80004cc0:	00a90533          	add	a0,s2,a0
}
    80004cc4:	01813083          	ld	ra,24(sp)
    80004cc8:	01013403          	ld	s0,16(sp)
    80004ccc:	00813483          	ld	s1,8(sp)
    80004cd0:	00013903          	ld	s2,0(sp)
    80004cd4:	02010113          	addi	sp,sp,32
    80004cd8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004cdc:	ffffc097          	auipc	ra,0xffffc
    80004ce0:	658080e7          	jalr	1624(ra) # 80001334 <thread_dispatch>
    80004ce4:	fc1ff06f          	j	80004ca4 <_ZL9fibonaccim+0x30>

0000000080004ce8 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004ce8:	fe010113          	addi	sp,sp,-32
    80004cec:	00113c23          	sd	ra,24(sp)
    80004cf0:	00813823          	sd	s0,16(sp)
    80004cf4:	00913423          	sd	s1,8(sp)
    80004cf8:	01213023          	sd	s2,0(sp)
    80004cfc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d00:	00000913          	li	s2,0
    80004d04:	0380006f          	j	80004d3c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004d08:	ffffc097          	auipc	ra,0xffffc
    80004d0c:	62c080e7          	jalr	1580(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004d10:	00148493          	addi	s1,s1,1
    80004d14:	000027b7          	lui	a5,0x2
    80004d18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d1c:	0097ee63          	bltu	a5,s1,80004d38 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d20:	00000713          	li	a4,0
    80004d24:	000077b7          	lui	a5,0x7
    80004d28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d2c:	fce7eee3          	bltu	a5,a4,80004d08 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004d30:	00170713          	addi	a4,a4,1
    80004d34:	ff1ff06f          	j	80004d24 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d38:	00190913          	addi	s2,s2,1
    80004d3c:	00900793          	li	a5,9
    80004d40:	0527e063          	bltu	a5,s2,80004d80 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d44:	00004517          	auipc	a0,0x4
    80004d48:	69c50513          	addi	a0,a0,1692 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	eec080e7          	jalr	-276(ra) # 80005c38 <_Z11printStringPKc>
    80004d54:	00000613          	li	a2,0
    80004d58:	00a00593          	li	a1,10
    80004d5c:	0009051b          	sext.w	a0,s2
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	070080e7          	jalr	112(ra) # 80005dd0 <_Z8printIntiii>
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	39850513          	addi	a0,a0,920 # 80009100 <CONSOLE_STATUS+0xf0>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	ec8080e7          	jalr	-312(ra) # 80005c38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d78:	00000493          	li	s1,0
    80004d7c:	f99ff06f          	j	80004d14 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004d80:	00004517          	auipc	a0,0x4
    80004d84:	66850513          	addi	a0,a0,1640 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004d88:	00001097          	auipc	ra,0x1
    80004d8c:	eb0080e7          	jalr	-336(ra) # 80005c38 <_Z11printStringPKc>
    finishedA = true;
    80004d90:	00100793          	li	a5,1
    80004d94:	0000b717          	auipc	a4,0xb
    80004d98:	eaf70623          	sb	a5,-340(a4) # 8000fc40 <_ZL9finishedA>
}
    80004d9c:	01813083          	ld	ra,24(sp)
    80004da0:	01013403          	ld	s0,16(sp)
    80004da4:	00813483          	ld	s1,8(sp)
    80004da8:	00013903          	ld	s2,0(sp)
    80004dac:	02010113          	addi	sp,sp,32
    80004db0:	00008067          	ret

0000000080004db4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004db4:	fe010113          	addi	sp,sp,-32
    80004db8:	00113c23          	sd	ra,24(sp)
    80004dbc:	00813823          	sd	s0,16(sp)
    80004dc0:	00913423          	sd	s1,8(sp)
    80004dc4:	01213023          	sd	s2,0(sp)
    80004dc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004dcc:	00000913          	li	s2,0
    80004dd0:	0380006f          	j	80004e08 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004dd4:	ffffc097          	auipc	ra,0xffffc
    80004dd8:	560080e7          	jalr	1376(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004ddc:	00148493          	addi	s1,s1,1
    80004de0:	000027b7          	lui	a5,0x2
    80004de4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004de8:	0097ee63          	bltu	a5,s1,80004e04 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004dec:	00000713          	li	a4,0
    80004df0:	000077b7          	lui	a5,0x7
    80004df4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004df8:	fce7eee3          	bltu	a5,a4,80004dd4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004dfc:	00170713          	addi	a4,a4,1
    80004e00:	ff1ff06f          	j	80004df0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e04:	00190913          	addi	s2,s2,1
    80004e08:	00f00793          	li	a5,15
    80004e0c:	0527e063          	bltu	a5,s2,80004e4c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e10:	00004517          	auipc	a0,0x4
    80004e14:	5e850513          	addi	a0,a0,1512 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	e20080e7          	jalr	-480(ra) # 80005c38 <_Z11printStringPKc>
    80004e20:	00000613          	li	a2,0
    80004e24:	00a00593          	li	a1,10
    80004e28:	0009051b          	sext.w	a0,s2
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	fa4080e7          	jalr	-92(ra) # 80005dd0 <_Z8printIntiii>
    80004e34:	00004517          	auipc	a0,0x4
    80004e38:	2cc50513          	addi	a0,a0,716 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	dfc080e7          	jalr	-516(ra) # 80005c38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e44:	00000493          	li	s1,0
    80004e48:	f99ff06f          	j	80004de0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004e4c:	ffffc097          	auipc	ra,0xffffc
    80004e50:	4e8080e7          	jalr	1256(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004e54:	00004517          	auipc	a0,0x4
    80004e58:	5ac50513          	addi	a0,a0,1452 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004e5c:	00001097          	auipc	ra,0x1
    80004e60:	ddc080e7          	jalr	-548(ra) # 80005c38 <_Z11printStringPKc>
    finishedB = true;
    80004e64:	00100793          	li	a5,1
    80004e68:	0000b717          	auipc	a4,0xb
    80004e6c:	dcf70ca3          	sb	a5,-551(a4) # 8000fc41 <_ZL9finishedB>
}
    80004e70:	01813083          	ld	ra,24(sp)
    80004e74:	01013403          	ld	s0,16(sp)
    80004e78:	00813483          	ld	s1,8(sp)
    80004e7c:	00013903          	ld	s2,0(sp)
    80004e80:	02010113          	addi	sp,sp,32
    80004e84:	00008067          	ret

0000000080004e88 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004e88:	fe010113          	addi	sp,sp,-32
    80004e8c:	00113c23          	sd	ra,24(sp)
    80004e90:	00813823          	sd	s0,16(sp)
    80004e94:	00913423          	sd	s1,8(sp)
    80004e98:	01213023          	sd	s2,0(sp)
    80004e9c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ea0:	00000493          	li	s1,0
    80004ea4:	0400006f          	j	80004ee4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004ea8:	00004517          	auipc	a0,0x4
    80004eac:	56850513          	addi	a0,a0,1384 # 80009410 <CONSOLE_STATUS+0x400>
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	d88080e7          	jalr	-632(ra) # 80005c38 <_Z11printStringPKc>
    80004eb8:	00000613          	li	a2,0
    80004ebc:	00a00593          	li	a1,10
    80004ec0:	00048513          	mv	a0,s1
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	f0c080e7          	jalr	-244(ra) # 80005dd0 <_Z8printIntiii>
    80004ecc:	00004517          	auipc	a0,0x4
    80004ed0:	23450513          	addi	a0,a0,564 # 80009100 <CONSOLE_STATUS+0xf0>
    80004ed4:	00001097          	auipc	ra,0x1
    80004ed8:	d64080e7          	jalr	-668(ra) # 80005c38 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004edc:	0014849b          	addiw	s1,s1,1
    80004ee0:	0ff4f493          	andi	s1,s1,255
    80004ee4:	00200793          	li	a5,2
    80004ee8:	fc97f0e3          	bgeu	a5,s1,80004ea8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004eec:	00004517          	auipc	a0,0x4
    80004ef0:	52c50513          	addi	a0,a0,1324 # 80009418 <CONSOLE_STATUS+0x408>
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	d44080e7          	jalr	-700(ra) # 80005c38 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004efc:	00700313          	li	t1,7
    thread_dispatch();
    80004f00:	ffffc097          	auipc	ra,0xffffc
    80004f04:	434080e7          	jalr	1076(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f08:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004f0c:	00004517          	auipc	a0,0x4
    80004f10:	51c50513          	addi	a0,a0,1308 # 80009428 <CONSOLE_STATUS+0x418>
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	d24080e7          	jalr	-732(ra) # 80005c38 <_Z11printStringPKc>
    80004f1c:	00000613          	li	a2,0
    80004f20:	00a00593          	li	a1,10
    80004f24:	0009051b          	sext.w	a0,s2
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	ea8080e7          	jalr	-344(ra) # 80005dd0 <_Z8printIntiii>
    80004f30:	00004517          	auipc	a0,0x4
    80004f34:	1d050513          	addi	a0,a0,464 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f38:	00001097          	auipc	ra,0x1
    80004f3c:	d00080e7          	jalr	-768(ra) # 80005c38 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004f40:	00c00513          	li	a0,12
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	d30080e7          	jalr	-720(ra) # 80004c74 <_ZL9fibonaccim>
    80004f4c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004f50:	00004517          	auipc	a0,0x4
    80004f54:	4e050513          	addi	a0,a0,1248 # 80009430 <CONSOLE_STATUS+0x420>
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	ce0080e7          	jalr	-800(ra) # 80005c38 <_Z11printStringPKc>
    80004f60:	00000613          	li	a2,0
    80004f64:	00a00593          	li	a1,10
    80004f68:	0009051b          	sext.w	a0,s2
    80004f6c:	00001097          	auipc	ra,0x1
    80004f70:	e64080e7          	jalr	-412(ra) # 80005dd0 <_Z8printIntiii>
    80004f74:	00004517          	auipc	a0,0x4
    80004f78:	18c50513          	addi	a0,a0,396 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f7c:	00001097          	auipc	ra,0x1
    80004f80:	cbc080e7          	jalr	-836(ra) # 80005c38 <_Z11printStringPKc>
    80004f84:	0400006f          	j	80004fc4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004f88:	00004517          	auipc	a0,0x4
    80004f8c:	48850513          	addi	a0,a0,1160 # 80009410 <CONSOLE_STATUS+0x400>
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	ca8080e7          	jalr	-856(ra) # 80005c38 <_Z11printStringPKc>
    80004f98:	00000613          	li	a2,0
    80004f9c:	00a00593          	li	a1,10
    80004fa0:	00048513          	mv	a0,s1
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	e2c080e7          	jalr	-468(ra) # 80005dd0 <_Z8printIntiii>
    80004fac:	00004517          	auipc	a0,0x4
    80004fb0:	15450513          	addi	a0,a0,340 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fb4:	00001097          	auipc	ra,0x1
    80004fb8:	c84080e7          	jalr	-892(ra) # 80005c38 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004fbc:	0014849b          	addiw	s1,s1,1
    80004fc0:	0ff4f493          	andi	s1,s1,255
    80004fc4:	00500793          	li	a5,5
    80004fc8:	fc97f0e3          	bgeu	a5,s1,80004f88 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    80004fcc:	ffffc097          	auipc	ra,0xffffc
    80004fd0:	368080e7          	jalr	872(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80004fd4:	00004517          	auipc	a0,0x4
    80004fd8:	46c50513          	addi	a0,a0,1132 # 80009440 <CONSOLE_STATUS+0x430>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	c5c080e7          	jalr	-932(ra) # 80005c38 <_Z11printStringPKc>
    finishedC = true;
    80004fe4:	00100793          	li	a5,1
    80004fe8:	0000b717          	auipc	a4,0xb
    80004fec:	c4f70d23          	sb	a5,-934(a4) # 8000fc42 <_ZL9finishedC>
}
    80004ff0:	01813083          	ld	ra,24(sp)
    80004ff4:	01013403          	ld	s0,16(sp)
    80004ff8:	00813483          	ld	s1,8(sp)
    80004ffc:	00013903          	ld	s2,0(sp)
    80005000:	02010113          	addi	sp,sp,32
    80005004:	00008067          	ret

0000000080005008 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005008:	fe010113          	addi	sp,sp,-32
    8000500c:	00113c23          	sd	ra,24(sp)
    80005010:	00813823          	sd	s0,16(sp)
    80005014:	00913423          	sd	s1,8(sp)
    80005018:	01213023          	sd	s2,0(sp)
    8000501c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005020:	00a00493          	li	s1,10
    80005024:	0400006f          	j	80005064 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005028:	00004517          	auipc	a0,0x4
    8000502c:	42850513          	addi	a0,a0,1064 # 80009450 <CONSOLE_STATUS+0x440>
    80005030:	00001097          	auipc	ra,0x1
    80005034:	c08080e7          	jalr	-1016(ra) # 80005c38 <_Z11printStringPKc>
    80005038:	00000613          	li	a2,0
    8000503c:	00a00593          	li	a1,10
    80005040:	00048513          	mv	a0,s1
    80005044:	00001097          	auipc	ra,0x1
    80005048:	d8c080e7          	jalr	-628(ra) # 80005dd0 <_Z8printIntiii>
    8000504c:	00004517          	auipc	a0,0x4
    80005050:	0b450513          	addi	a0,a0,180 # 80009100 <CONSOLE_STATUS+0xf0>
    80005054:	00001097          	auipc	ra,0x1
    80005058:	be4080e7          	jalr	-1052(ra) # 80005c38 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000505c:	0014849b          	addiw	s1,s1,1
    80005060:	0ff4f493          	andi	s1,s1,255
    80005064:	00c00793          	li	a5,12
    80005068:	fc97f0e3          	bgeu	a5,s1,80005028 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000506c:	00004517          	auipc	a0,0x4
    80005070:	3ec50513          	addi	a0,a0,1004 # 80009458 <CONSOLE_STATUS+0x448>
    80005074:	00001097          	auipc	ra,0x1
    80005078:	bc4080e7          	jalr	-1084(ra) # 80005c38 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000507c:	00500313          	li	t1,5
    thread_dispatch();
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	2b4080e7          	jalr	692(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005088:	01000513          	li	a0,16
    8000508c:	00000097          	auipc	ra,0x0
    80005090:	be8080e7          	jalr	-1048(ra) # 80004c74 <_ZL9fibonaccim>
    80005094:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005098:	00004517          	auipc	a0,0x4
    8000509c:	3d050513          	addi	a0,a0,976 # 80009468 <CONSOLE_STATUS+0x458>
    800050a0:	00001097          	auipc	ra,0x1
    800050a4:	b98080e7          	jalr	-1128(ra) # 80005c38 <_Z11printStringPKc>
    800050a8:	00000613          	li	a2,0
    800050ac:	00a00593          	li	a1,10
    800050b0:	0009051b          	sext.w	a0,s2
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	d1c080e7          	jalr	-740(ra) # 80005dd0 <_Z8printIntiii>
    800050bc:	00004517          	auipc	a0,0x4
    800050c0:	04450513          	addi	a0,a0,68 # 80009100 <CONSOLE_STATUS+0xf0>
    800050c4:	00001097          	auipc	ra,0x1
    800050c8:	b74080e7          	jalr	-1164(ra) # 80005c38 <_Z11printStringPKc>
    800050cc:	0400006f          	j	8000510c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050d0:	00004517          	auipc	a0,0x4
    800050d4:	38050513          	addi	a0,a0,896 # 80009450 <CONSOLE_STATUS+0x440>
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	b60080e7          	jalr	-1184(ra) # 80005c38 <_Z11printStringPKc>
    800050e0:	00000613          	li	a2,0
    800050e4:	00a00593          	li	a1,10
    800050e8:	00048513          	mv	a0,s1
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	ce4080e7          	jalr	-796(ra) # 80005dd0 <_Z8printIntiii>
    800050f4:	00004517          	auipc	a0,0x4
    800050f8:	00c50513          	addi	a0,a0,12 # 80009100 <CONSOLE_STATUS+0xf0>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	b3c080e7          	jalr	-1220(ra) # 80005c38 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005104:	0014849b          	addiw	s1,s1,1
    80005108:	0ff4f493          	andi	s1,s1,255
    8000510c:	00f00793          	li	a5,15
    80005110:	fc97f0e3          	bgeu	a5,s1,800050d0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	220080e7          	jalr	544(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    8000511c:	00004517          	auipc	a0,0x4
    80005120:	35c50513          	addi	a0,a0,860 # 80009478 <CONSOLE_STATUS+0x468>
    80005124:	00001097          	auipc	ra,0x1
    80005128:	b14080e7          	jalr	-1260(ra) # 80005c38 <_Z11printStringPKc>
    finishedD = true;
    8000512c:	00100793          	li	a5,1
    80005130:	0000b717          	auipc	a4,0xb
    80005134:	b0f709a3          	sb	a5,-1261(a4) # 8000fc43 <_ZL9finishedD>
}
    80005138:	01813083          	ld	ra,24(sp)
    8000513c:	01013403          	ld	s0,16(sp)
    80005140:	00813483          	ld	s1,8(sp)
    80005144:	00013903          	ld	s2,0(sp)
    80005148:	02010113          	addi	sp,sp,32
    8000514c:	00008067          	ret

0000000080005150 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80005150:	fc010113          	addi	sp,sp,-64
    80005154:	02113c23          	sd	ra,56(sp)
    80005158:	02813823          	sd	s0,48(sp)
    8000515c:	02913423          	sd	s1,40(sp)
    80005160:	03213023          	sd	s2,32(sp)
    80005164:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    80005168:	01000513          	li	a0,16
    8000516c:	ffffe097          	auipc	ra,0xffffe
    80005170:	564080e7          	jalr	1380(ra) # 800036d0 <_Znwm>
    80005174:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80005178:	ffffe097          	auipc	ra,0xffffe
    8000517c:	728080e7          	jalr	1832(ra) # 800038a0 <_ZN6ThreadC1Ev>
    80005180:	00007797          	auipc	a5,0x7
    80005184:	89078793          	addi	a5,a5,-1904 # 8000ba10 <_ZTV7WorkerA+0x10>
    80005188:	00f4b023          	sd	a5,0(s1)
    8000518c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80005190:	00004517          	auipc	a0,0x4
    80005194:	2f850513          	addi	a0,a0,760 # 80009488 <CONSOLE_STATUS+0x478>
    80005198:	00001097          	auipc	ra,0x1
    8000519c:	aa0080e7          	jalr	-1376(ra) # 80005c38 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800051a0:	01000513          	li	a0,16
    800051a4:	ffffe097          	auipc	ra,0xffffe
    800051a8:	52c080e7          	jalr	1324(ra) # 800036d0 <_Znwm>
    800051ac:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800051b0:	ffffe097          	auipc	ra,0xffffe
    800051b4:	6f0080e7          	jalr	1776(ra) # 800038a0 <_ZN6ThreadC1Ev>
    800051b8:	00007797          	auipc	a5,0x7
    800051bc:	88078793          	addi	a5,a5,-1920 # 8000ba38 <_ZTV7WorkerB+0x10>
    800051c0:	00f4b023          	sd	a5,0(s1)
    800051c4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800051c8:	00004517          	auipc	a0,0x4
    800051cc:	2d850513          	addi	a0,a0,728 # 800094a0 <CONSOLE_STATUS+0x490>
    800051d0:	00001097          	auipc	ra,0x1
    800051d4:	a68080e7          	jalr	-1432(ra) # 80005c38 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800051d8:	01000513          	li	a0,16
    800051dc:	ffffe097          	auipc	ra,0xffffe
    800051e0:	4f4080e7          	jalr	1268(ra) # 800036d0 <_Znwm>
    800051e4:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800051e8:	ffffe097          	auipc	ra,0xffffe
    800051ec:	6b8080e7          	jalr	1720(ra) # 800038a0 <_ZN6ThreadC1Ev>
    800051f0:	00007797          	auipc	a5,0x7
    800051f4:	87078793          	addi	a5,a5,-1936 # 8000ba60 <_ZTV7WorkerC+0x10>
    800051f8:	00f4b023          	sd	a5,0(s1)
    800051fc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005200:	00004517          	auipc	a0,0x4
    80005204:	2b850513          	addi	a0,a0,696 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005208:	00001097          	auipc	ra,0x1
    8000520c:	a30080e7          	jalr	-1488(ra) # 80005c38 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005210:	01000513          	li	a0,16
    80005214:	ffffe097          	auipc	ra,0xffffe
    80005218:	4bc080e7          	jalr	1212(ra) # 800036d0 <_Znwm>
    8000521c:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80005220:	ffffe097          	auipc	ra,0xffffe
    80005224:	680080e7          	jalr	1664(ra) # 800038a0 <_ZN6ThreadC1Ev>
    80005228:	00007797          	auipc	a5,0x7
    8000522c:	86078793          	addi	a5,a5,-1952 # 8000ba88 <_ZTV7WorkerD+0x10>
    80005230:	00f4b023          	sd	a5,0(s1)
    80005234:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005238:	00004517          	auipc	a0,0x4
    8000523c:	29850513          	addi	a0,a0,664 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80005240:	00001097          	auipc	ra,0x1
    80005244:	9f8080e7          	jalr	-1544(ra) # 80005c38 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005248:	00000493          	li	s1,0
    8000524c:	00300793          	li	a5,3
    80005250:	0297c663          	blt	a5,s1,8000527c <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    80005254:	00349793          	slli	a5,s1,0x3
    80005258:	fe040713          	addi	a4,s0,-32
    8000525c:	00f707b3          	add	a5,a4,a5
    80005260:	fe07b503          	ld	a0,-32(a5)
    80005264:	ffffe097          	auipc	ra,0xffffe
    80005268:	53c080e7          	jalr	1340(ra) # 800037a0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000526c:	0014849b          	addiw	s1,s1,1
    80005270:	fddff06f          	j	8000524c <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80005274:	ffffe097          	auipc	ra,0xffffe
    80005278:	564080e7          	jalr	1380(ra) # 800037d8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000527c:	0000b797          	auipc	a5,0xb
    80005280:	9c47c783          	lbu	a5,-1596(a5) # 8000fc40 <_ZL9finishedA>
    80005284:	fe0788e3          	beqz	a5,80005274 <_Z20Threads_CPP_API_testv+0x124>
    80005288:	0000b797          	auipc	a5,0xb
    8000528c:	9b97c783          	lbu	a5,-1607(a5) # 8000fc41 <_ZL9finishedB>
    80005290:	fe0782e3          	beqz	a5,80005274 <_Z20Threads_CPP_API_testv+0x124>
    80005294:	0000b797          	auipc	a5,0xb
    80005298:	9ae7c783          	lbu	a5,-1618(a5) # 8000fc42 <_ZL9finishedC>
    8000529c:	fc078ce3          	beqz	a5,80005274 <_Z20Threads_CPP_API_testv+0x124>
    800052a0:	0000b797          	auipc	a5,0xb
    800052a4:	9a37c783          	lbu	a5,-1629(a5) # 8000fc43 <_ZL9finishedD>
    800052a8:	fc0786e3          	beqz	a5,80005274 <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    800052ac:	fc040493          	addi	s1,s0,-64
    800052b0:	0080006f          	j	800052b8 <_Z20Threads_CPP_API_testv+0x168>
    800052b4:	00848493          	addi	s1,s1,8
    800052b8:	fe040793          	addi	a5,s0,-32
    800052bc:	08f48663          	beq	s1,a5,80005348 <_Z20Threads_CPP_API_testv+0x1f8>
    800052c0:	0004b503          	ld	a0,0(s1)
    800052c4:	fe0508e3          	beqz	a0,800052b4 <_Z20Threads_CPP_API_testv+0x164>
    800052c8:	00053783          	ld	a5,0(a0)
    800052cc:	0087b783          	ld	a5,8(a5)
    800052d0:	000780e7          	jalr	a5
    800052d4:	fe1ff06f          	j	800052b4 <_Z20Threads_CPP_API_testv+0x164>
    800052d8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800052dc:	00048513          	mv	a0,s1
    800052e0:	ffffe097          	auipc	ra,0xffffe
    800052e4:	418080e7          	jalr	1048(ra) # 800036f8 <_ZdlPv>
    800052e8:	00090513          	mv	a0,s2
    800052ec:	0000c097          	auipc	ra,0xc
    800052f0:	a3c080e7          	jalr	-1476(ra) # 80010d28 <_Unwind_Resume>
    800052f4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800052f8:	00048513          	mv	a0,s1
    800052fc:	ffffe097          	auipc	ra,0xffffe
    80005300:	3fc080e7          	jalr	1020(ra) # 800036f8 <_ZdlPv>
    80005304:	00090513          	mv	a0,s2
    80005308:	0000c097          	auipc	ra,0xc
    8000530c:	a20080e7          	jalr	-1504(ra) # 80010d28 <_Unwind_Resume>
    80005310:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005314:	00048513          	mv	a0,s1
    80005318:	ffffe097          	auipc	ra,0xffffe
    8000531c:	3e0080e7          	jalr	992(ra) # 800036f8 <_ZdlPv>
    80005320:	00090513          	mv	a0,s2
    80005324:	0000c097          	auipc	ra,0xc
    80005328:	a04080e7          	jalr	-1532(ra) # 80010d28 <_Unwind_Resume>
    8000532c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005330:	00048513          	mv	a0,s1
    80005334:	ffffe097          	auipc	ra,0xffffe
    80005338:	3c4080e7          	jalr	964(ra) # 800036f8 <_ZdlPv>
    8000533c:	00090513          	mv	a0,s2
    80005340:	0000c097          	auipc	ra,0xc
    80005344:	9e8080e7          	jalr	-1560(ra) # 80010d28 <_Unwind_Resume>
    80005348:	03813083          	ld	ra,56(sp)
    8000534c:	03013403          	ld	s0,48(sp)
    80005350:	02813483          	ld	s1,40(sp)
    80005354:	02013903          	ld	s2,32(sp)
    80005358:	04010113          	addi	sp,sp,64
    8000535c:	00008067          	ret

0000000080005360 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005360:	ff010113          	addi	sp,sp,-16
    80005364:	00113423          	sd	ra,8(sp)
    80005368:	00813023          	sd	s0,0(sp)
    8000536c:	01010413          	addi	s0,sp,16
    80005370:	00006797          	auipc	a5,0x6
    80005374:	6a078793          	addi	a5,a5,1696 # 8000ba10 <_ZTV7WorkerA+0x10>
    80005378:	00f53023          	sd	a5,0(a0)
    8000537c:	ffffe097          	auipc	ra,0xffffe
    80005380:	2e4080e7          	jalr	740(ra) # 80003660 <_ZN6ThreadD1Ev>
    80005384:	00813083          	ld	ra,8(sp)
    80005388:	00013403          	ld	s0,0(sp)
    8000538c:	01010113          	addi	sp,sp,16
    80005390:	00008067          	ret

0000000080005394 <_ZN7WorkerAD0Ev>:
    80005394:	fe010113          	addi	sp,sp,-32
    80005398:	00113c23          	sd	ra,24(sp)
    8000539c:	00813823          	sd	s0,16(sp)
    800053a0:	00913423          	sd	s1,8(sp)
    800053a4:	02010413          	addi	s0,sp,32
    800053a8:	00050493          	mv	s1,a0
    800053ac:	00006797          	auipc	a5,0x6
    800053b0:	66478793          	addi	a5,a5,1636 # 8000ba10 <_ZTV7WorkerA+0x10>
    800053b4:	00f53023          	sd	a5,0(a0)
    800053b8:	ffffe097          	auipc	ra,0xffffe
    800053bc:	2a8080e7          	jalr	680(ra) # 80003660 <_ZN6ThreadD1Ev>
    800053c0:	00048513          	mv	a0,s1
    800053c4:	ffffe097          	auipc	ra,0xffffe
    800053c8:	334080e7          	jalr	820(ra) # 800036f8 <_ZdlPv>
    800053cc:	01813083          	ld	ra,24(sp)
    800053d0:	01013403          	ld	s0,16(sp)
    800053d4:	00813483          	ld	s1,8(sp)
    800053d8:	02010113          	addi	sp,sp,32
    800053dc:	00008067          	ret

00000000800053e0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800053e0:	ff010113          	addi	sp,sp,-16
    800053e4:	00113423          	sd	ra,8(sp)
    800053e8:	00813023          	sd	s0,0(sp)
    800053ec:	01010413          	addi	s0,sp,16
    800053f0:	00006797          	auipc	a5,0x6
    800053f4:	64878793          	addi	a5,a5,1608 # 8000ba38 <_ZTV7WorkerB+0x10>
    800053f8:	00f53023          	sd	a5,0(a0)
    800053fc:	ffffe097          	auipc	ra,0xffffe
    80005400:	264080e7          	jalr	612(ra) # 80003660 <_ZN6ThreadD1Ev>
    80005404:	00813083          	ld	ra,8(sp)
    80005408:	00013403          	ld	s0,0(sp)
    8000540c:	01010113          	addi	sp,sp,16
    80005410:	00008067          	ret

0000000080005414 <_ZN7WorkerBD0Ev>:
    80005414:	fe010113          	addi	sp,sp,-32
    80005418:	00113c23          	sd	ra,24(sp)
    8000541c:	00813823          	sd	s0,16(sp)
    80005420:	00913423          	sd	s1,8(sp)
    80005424:	02010413          	addi	s0,sp,32
    80005428:	00050493          	mv	s1,a0
    8000542c:	00006797          	auipc	a5,0x6
    80005430:	60c78793          	addi	a5,a5,1548 # 8000ba38 <_ZTV7WorkerB+0x10>
    80005434:	00f53023          	sd	a5,0(a0)
    80005438:	ffffe097          	auipc	ra,0xffffe
    8000543c:	228080e7          	jalr	552(ra) # 80003660 <_ZN6ThreadD1Ev>
    80005440:	00048513          	mv	a0,s1
    80005444:	ffffe097          	auipc	ra,0xffffe
    80005448:	2b4080e7          	jalr	692(ra) # 800036f8 <_ZdlPv>
    8000544c:	01813083          	ld	ra,24(sp)
    80005450:	01013403          	ld	s0,16(sp)
    80005454:	00813483          	ld	s1,8(sp)
    80005458:	02010113          	addi	sp,sp,32
    8000545c:	00008067          	ret

0000000080005460 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005460:	ff010113          	addi	sp,sp,-16
    80005464:	00113423          	sd	ra,8(sp)
    80005468:	00813023          	sd	s0,0(sp)
    8000546c:	01010413          	addi	s0,sp,16
    80005470:	00006797          	auipc	a5,0x6
    80005474:	5f078793          	addi	a5,a5,1520 # 8000ba60 <_ZTV7WorkerC+0x10>
    80005478:	00f53023          	sd	a5,0(a0)
    8000547c:	ffffe097          	auipc	ra,0xffffe
    80005480:	1e4080e7          	jalr	484(ra) # 80003660 <_ZN6ThreadD1Ev>
    80005484:	00813083          	ld	ra,8(sp)
    80005488:	00013403          	ld	s0,0(sp)
    8000548c:	01010113          	addi	sp,sp,16
    80005490:	00008067          	ret

0000000080005494 <_ZN7WorkerCD0Ev>:
    80005494:	fe010113          	addi	sp,sp,-32
    80005498:	00113c23          	sd	ra,24(sp)
    8000549c:	00813823          	sd	s0,16(sp)
    800054a0:	00913423          	sd	s1,8(sp)
    800054a4:	02010413          	addi	s0,sp,32
    800054a8:	00050493          	mv	s1,a0
    800054ac:	00006797          	auipc	a5,0x6
    800054b0:	5b478793          	addi	a5,a5,1460 # 8000ba60 <_ZTV7WorkerC+0x10>
    800054b4:	00f53023          	sd	a5,0(a0)
    800054b8:	ffffe097          	auipc	ra,0xffffe
    800054bc:	1a8080e7          	jalr	424(ra) # 80003660 <_ZN6ThreadD1Ev>
    800054c0:	00048513          	mv	a0,s1
    800054c4:	ffffe097          	auipc	ra,0xffffe
    800054c8:	234080e7          	jalr	564(ra) # 800036f8 <_ZdlPv>
    800054cc:	01813083          	ld	ra,24(sp)
    800054d0:	01013403          	ld	s0,16(sp)
    800054d4:	00813483          	ld	s1,8(sp)
    800054d8:	02010113          	addi	sp,sp,32
    800054dc:	00008067          	ret

00000000800054e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800054e0:	ff010113          	addi	sp,sp,-16
    800054e4:	00113423          	sd	ra,8(sp)
    800054e8:	00813023          	sd	s0,0(sp)
    800054ec:	01010413          	addi	s0,sp,16
    800054f0:	00006797          	auipc	a5,0x6
    800054f4:	59878793          	addi	a5,a5,1432 # 8000ba88 <_ZTV7WorkerD+0x10>
    800054f8:	00f53023          	sd	a5,0(a0)
    800054fc:	ffffe097          	auipc	ra,0xffffe
    80005500:	164080e7          	jalr	356(ra) # 80003660 <_ZN6ThreadD1Ev>
    80005504:	00813083          	ld	ra,8(sp)
    80005508:	00013403          	ld	s0,0(sp)
    8000550c:	01010113          	addi	sp,sp,16
    80005510:	00008067          	ret

0000000080005514 <_ZN7WorkerDD0Ev>:
    80005514:	fe010113          	addi	sp,sp,-32
    80005518:	00113c23          	sd	ra,24(sp)
    8000551c:	00813823          	sd	s0,16(sp)
    80005520:	00913423          	sd	s1,8(sp)
    80005524:	02010413          	addi	s0,sp,32
    80005528:	00050493          	mv	s1,a0
    8000552c:	00006797          	auipc	a5,0x6
    80005530:	55c78793          	addi	a5,a5,1372 # 8000ba88 <_ZTV7WorkerD+0x10>
    80005534:	00f53023          	sd	a5,0(a0)
    80005538:	ffffe097          	auipc	ra,0xffffe
    8000553c:	128080e7          	jalr	296(ra) # 80003660 <_ZN6ThreadD1Ev>
    80005540:	00048513          	mv	a0,s1
    80005544:	ffffe097          	auipc	ra,0xffffe
    80005548:	1b4080e7          	jalr	436(ra) # 800036f8 <_ZdlPv>
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	00813483          	ld	s1,8(sp)
    80005558:	02010113          	addi	sp,sp,32
    8000555c:	00008067          	ret

0000000080005560 <_ZN7WorkerA3runEv>:
    void run() override {
    80005560:	ff010113          	addi	sp,sp,-16
    80005564:	00113423          	sd	ra,8(sp)
    80005568:	00813023          	sd	s0,0(sp)
    8000556c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005570:	00000593          	li	a1,0
    80005574:	fffff097          	auipc	ra,0xfffff
    80005578:	774080e7          	jalr	1908(ra) # 80004ce8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000557c:	00813083          	ld	ra,8(sp)
    80005580:	00013403          	ld	s0,0(sp)
    80005584:	01010113          	addi	sp,sp,16
    80005588:	00008067          	ret

000000008000558c <_ZN7WorkerB3runEv>:
    void run() override {
    8000558c:	ff010113          	addi	sp,sp,-16
    80005590:	00113423          	sd	ra,8(sp)
    80005594:	00813023          	sd	s0,0(sp)
    80005598:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000559c:	00000593          	li	a1,0
    800055a0:	00000097          	auipc	ra,0x0
    800055a4:	814080e7          	jalr	-2028(ra) # 80004db4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800055a8:	00813083          	ld	ra,8(sp)
    800055ac:	00013403          	ld	s0,0(sp)
    800055b0:	01010113          	addi	sp,sp,16
    800055b4:	00008067          	ret

00000000800055b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800055b8:	ff010113          	addi	sp,sp,-16
    800055bc:	00113423          	sd	ra,8(sp)
    800055c0:	00813023          	sd	s0,0(sp)
    800055c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800055c8:	00000593          	li	a1,0
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	8bc080e7          	jalr	-1860(ra) # 80004e88 <_ZN7WorkerC11workerBodyCEPv>
    }
    800055d4:	00813083          	ld	ra,8(sp)
    800055d8:	00013403          	ld	s0,0(sp)
    800055dc:	01010113          	addi	sp,sp,16
    800055e0:	00008067          	ret

00000000800055e4 <_ZN7WorkerD3runEv>:

    void run() override {
    800055e4:	ff010113          	addi	sp,sp,-16
    800055e8:	00113423          	sd	ra,8(sp)
    800055ec:	00813023          	sd	s0,0(sp)
    800055f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800055f4:	00000593          	li	a1,0
    800055f8:	00000097          	auipc	ra,0x0
    800055fc:	a10080e7          	jalr	-1520(ra) # 80005008 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005600:	00813083          	ld	ra,8(sp)
    80005604:	00013403          	ld	s0,0(sp)
    80005608:	01010113          	addi	sp,sp,16
    8000560c:	00008067          	ret

0000000080005610 <_Z11workerBodyAPv>:
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg)
{
    80005610:	fe010113          	addi	sp,sp,-32
    80005614:	00113c23          	sd	ra,24(sp)
    80005618:	00813823          	sd	s0,16(sp)
    8000561c:	00913423          	sd	s1,8(sp)
    80005620:	01213023          	sd	s2,0(sp)
    80005624:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80005628:	00000913          	li	s2,0
    8000562c:	0380006f          	j	80005664 <_Z11workerBodyAPv+0x54>
    {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005630:	ffffc097          	auipc	ra,0xffffc
    80005634:	d04080e7          	jalr	-764(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005638:	00148493          	addi	s1,s1,1
    8000563c:	000027b7          	lui	a5,0x2
    80005640:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005644:	0097ee63          	bltu	a5,s1,80005660 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005648:	00000713          	li	a4,0
    8000564c:	000077b7          	lui	a5,0x7
    80005650:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005654:	fce7eee3          	bltu	a5,a4,80005630 <_Z11workerBodyAPv+0x20>
    80005658:	00170713          	addi	a4,a4,1
    8000565c:	ff1ff06f          	j	8000564c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80005660:	00190913          	addi	s2,s2,1
    80005664:	00900793          	li	a5,9
    80005668:	0527e063          	bltu	a5,s2,800056a8 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000566c:	00004517          	auipc	a0,0x4
    80005670:	d7450513          	addi	a0,a0,-652 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80005674:	00000097          	auipc	ra,0x0
    80005678:	5c4080e7          	jalr	1476(ra) # 80005c38 <_Z11printStringPKc>
    8000567c:	00000613          	li	a2,0
    80005680:	00a00593          	li	a1,10
    80005684:	0009051b          	sext.w	a0,s2
    80005688:	00000097          	auipc	ra,0x0
    8000568c:	748080e7          	jalr	1864(ra) # 80005dd0 <_Z8printIntiii>
    80005690:	00004517          	auipc	a0,0x4
    80005694:	a7050513          	addi	a0,a0,-1424 # 80009100 <CONSOLE_STATUS+0xf0>
    80005698:	00000097          	auipc	ra,0x0
    8000569c:	5a0080e7          	jalr	1440(ra) # 80005c38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800056a0:	00000493          	li	s1,0
    800056a4:	f99ff06f          	j	8000563c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800056a8:	00004517          	auipc	a0,0x4
    800056ac:	d4050513          	addi	a0,a0,-704 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	588080e7          	jalr	1416(ra) # 80005c38 <_Z11printStringPKc>
    finishedA = true;
    800056b8:	00100793          	li	a5,1
    800056bc:	0000a717          	auipc	a4,0xa
    800056c0:	58f70423          	sb	a5,1416(a4) # 8000fc44 <_ZL9finishedA>
}
    800056c4:	01813083          	ld	ra,24(sp)
    800056c8:	01013403          	ld	s0,16(sp)
    800056cc:	00813483          	ld	s1,8(sp)
    800056d0:	00013903          	ld	s2,0(sp)
    800056d4:	02010113          	addi	sp,sp,32
    800056d8:	00008067          	ret

00000000800056dc <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800056dc:	fe010113          	addi	sp,sp,-32
    800056e0:	00113c23          	sd	ra,24(sp)
    800056e4:	00813823          	sd	s0,16(sp)
    800056e8:	00913423          	sd	s1,8(sp)
    800056ec:	01213023          	sd	s2,0(sp)
    800056f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800056f4:	00000913          	li	s2,0
    800056f8:	0380006f          	j	80005730 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800056fc:	ffffc097          	auipc	ra,0xffffc
    80005700:	c38080e7          	jalr	-968(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005704:	00148493          	addi	s1,s1,1
    80005708:	000027b7          	lui	a5,0x2
    8000570c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005710:	0097ee63          	bltu	a5,s1,8000572c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005714:	00000713          	li	a4,0
    80005718:	000077b7          	lui	a5,0x7
    8000571c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005720:	fce7eee3          	bltu	a5,a4,800056fc <_Z11workerBodyBPv+0x20>
    80005724:	00170713          	addi	a4,a4,1
    80005728:	ff1ff06f          	j	80005718 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000572c:	00190913          	addi	s2,s2,1
    80005730:	00f00793          	li	a5,15
    80005734:	0527e063          	bltu	a5,s2,80005774 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005738:	00004517          	auipc	a0,0x4
    8000573c:	cc050513          	addi	a0,a0,-832 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005740:	00000097          	auipc	ra,0x0
    80005744:	4f8080e7          	jalr	1272(ra) # 80005c38 <_Z11printStringPKc>
    80005748:	00000613          	li	a2,0
    8000574c:	00a00593          	li	a1,10
    80005750:	0009051b          	sext.w	a0,s2
    80005754:	00000097          	auipc	ra,0x0
    80005758:	67c080e7          	jalr	1660(ra) # 80005dd0 <_Z8printIntiii>
    8000575c:	00004517          	auipc	a0,0x4
    80005760:	9a450513          	addi	a0,a0,-1628 # 80009100 <CONSOLE_STATUS+0xf0>
    80005764:	00000097          	auipc	ra,0x0
    80005768:	4d4080e7          	jalr	1236(ra) # 80005c38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000576c:	00000493          	li	s1,0
    80005770:	f99ff06f          	j	80005708 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	bc0080e7          	jalr	-1088(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    8000577c:	00004517          	auipc	a0,0x4
    80005780:	c8450513          	addi	a0,a0,-892 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005784:	00000097          	auipc	ra,0x0
    80005788:	4b4080e7          	jalr	1204(ra) # 80005c38 <_Z11printStringPKc>
    finishedB = true;
    8000578c:	00100793          	li	a5,1
    80005790:	0000a717          	auipc	a4,0xa
    80005794:	4af70aa3          	sb	a5,1205(a4) # 8000fc45 <_ZL9finishedB>
}
    80005798:	01813083          	ld	ra,24(sp)
    8000579c:	01013403          	ld	s0,16(sp)
    800057a0:	00813483          	ld	s1,8(sp)
    800057a4:	00013903          	ld	s2,0(sp)
    800057a8:	02010113          	addi	sp,sp,32
    800057ac:	00008067          	ret

00000000800057b0 <_ZL9fibonaccim>:
{
    800057b0:	fe010113          	addi	sp,sp,-32
    800057b4:	00113c23          	sd	ra,24(sp)
    800057b8:	00813823          	sd	s0,16(sp)
    800057bc:	00913423          	sd	s1,8(sp)
    800057c0:	01213023          	sd	s2,0(sp)
    800057c4:	02010413          	addi	s0,sp,32
    800057c8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    800057cc:	00100793          	li	a5,1
    800057d0:	02a7f863          	bgeu	a5,a0,80005800 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800057d4:	00a00793          	li	a5,10
    800057d8:	02f577b3          	remu	a5,a0,a5
    800057dc:	02078e63          	beqz	a5,80005818 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800057e0:	fff48513          	addi	a0,s1,-1
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	fcc080e7          	jalr	-52(ra) # 800057b0 <_ZL9fibonaccim>
    800057ec:	00050913          	mv	s2,a0
    800057f0:	ffe48513          	addi	a0,s1,-2
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	fbc080e7          	jalr	-68(ra) # 800057b0 <_ZL9fibonaccim>
    800057fc:	00a90533          	add	a0,s2,a0
}
    80005800:	01813083          	ld	ra,24(sp)
    80005804:	01013403          	ld	s0,16(sp)
    80005808:	00813483          	ld	s1,8(sp)
    8000580c:	00013903          	ld	s2,0(sp)
    80005810:	02010113          	addi	sp,sp,32
    80005814:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005818:	ffffc097          	auipc	ra,0xffffc
    8000581c:	b1c080e7          	jalr	-1252(ra) # 80001334 <thread_dispatch>
    80005820:	fc1ff06f          	j	800057e0 <_ZL9fibonaccim+0x30>

0000000080005824 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    80005824:	fe010113          	addi	sp,sp,-32
    80005828:	00113c23          	sd	ra,24(sp)
    8000582c:	00813823          	sd	s0,16(sp)
    80005830:	00913423          	sd	s1,8(sp)
    80005834:	01213023          	sd	s2,0(sp)
    80005838:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000583c:	00000493          	li	s1,0
    80005840:	0400006f          	j	80005880 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    80005844:	00004517          	auipc	a0,0x4
    80005848:	bcc50513          	addi	a0,a0,-1076 # 80009410 <CONSOLE_STATUS+0x400>
    8000584c:	00000097          	auipc	ra,0x0
    80005850:	3ec080e7          	jalr	1004(ra) # 80005c38 <_Z11printStringPKc>
    80005854:	00000613          	li	a2,0
    80005858:	00a00593          	li	a1,10
    8000585c:	00048513          	mv	a0,s1
    80005860:	00000097          	auipc	ra,0x0
    80005864:	570080e7          	jalr	1392(ra) # 80005dd0 <_Z8printIntiii>
    80005868:	00004517          	auipc	a0,0x4
    8000586c:	89850513          	addi	a0,a0,-1896 # 80009100 <CONSOLE_STATUS+0xf0>
    80005870:	00000097          	auipc	ra,0x0
    80005874:	3c8080e7          	jalr	968(ra) # 80005c38 <_Z11printStringPKc>
    for (; i < 3; i++)
    80005878:	0014849b          	addiw	s1,s1,1
    8000587c:	0ff4f493          	andi	s1,s1,255
    80005880:	00200793          	li	a5,2
    80005884:	fc97f0e3          	bgeu	a5,s1,80005844 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005888:	00004517          	auipc	a0,0x4
    8000588c:	b9050513          	addi	a0,a0,-1136 # 80009418 <CONSOLE_STATUS+0x408>
    80005890:	00000097          	auipc	ra,0x0
    80005894:	3a8080e7          	jalr	936(ra) # 80005c38 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005898:	00700313          	li	t1,7
    thread_dispatch();
    8000589c:	ffffc097          	auipc	ra,0xffffc
    800058a0:	a98080e7          	jalr	-1384(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    800058a4:	00004517          	auipc	a0,0x4
    800058a8:	c4450513          	addi	a0,a0,-956 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800058ac:	00000097          	auipc	ra,0x0
    800058b0:	38c080e7          	jalr	908(ra) # 80005c38 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800058b4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800058b8:	00004517          	auipc	a0,0x4
    800058bc:	b7050513          	addi	a0,a0,-1168 # 80009428 <CONSOLE_STATUS+0x418>
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	378080e7          	jalr	888(ra) # 80005c38 <_Z11printStringPKc>
    800058c8:	00000613          	li	a2,0
    800058cc:	00a00593          	li	a1,10
    800058d0:	0009051b          	sext.w	a0,s2
    800058d4:	00000097          	auipc	ra,0x0
    800058d8:	4fc080e7          	jalr	1276(ra) # 80005dd0 <_Z8printIntiii>
    800058dc:	00004517          	auipc	a0,0x4
    800058e0:	82450513          	addi	a0,a0,-2012 # 80009100 <CONSOLE_STATUS+0xf0>
    800058e4:	00000097          	auipc	ra,0x0
    800058e8:	354080e7          	jalr	852(ra) # 80005c38 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800058ec:	00c00513          	li	a0,12
    800058f0:	00000097          	auipc	ra,0x0
    800058f4:	ec0080e7          	jalr	-320(ra) # 800057b0 <_ZL9fibonaccim>
    800058f8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800058fc:	00004517          	auipc	a0,0x4
    80005900:	b3450513          	addi	a0,a0,-1228 # 80009430 <CONSOLE_STATUS+0x420>
    80005904:	00000097          	auipc	ra,0x0
    80005908:	334080e7          	jalr	820(ra) # 80005c38 <_Z11printStringPKc>
    8000590c:	00000613          	li	a2,0
    80005910:	00a00593          	li	a1,10
    80005914:	0009051b          	sext.w	a0,s2
    80005918:	00000097          	auipc	ra,0x0
    8000591c:	4b8080e7          	jalr	1208(ra) # 80005dd0 <_Z8printIntiii>
    80005920:	00003517          	auipc	a0,0x3
    80005924:	7e050513          	addi	a0,a0,2016 # 80009100 <CONSOLE_STATUS+0xf0>
    80005928:	00000097          	auipc	ra,0x0
    8000592c:	310080e7          	jalr	784(ra) # 80005c38 <_Z11printStringPKc>
    80005930:	0400006f          	j	80005970 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005934:	00004517          	auipc	a0,0x4
    80005938:	adc50513          	addi	a0,a0,-1316 # 80009410 <CONSOLE_STATUS+0x400>
    8000593c:	00000097          	auipc	ra,0x0
    80005940:	2fc080e7          	jalr	764(ra) # 80005c38 <_Z11printStringPKc>
    80005944:	00000613          	li	a2,0
    80005948:	00a00593          	li	a1,10
    8000594c:	00048513          	mv	a0,s1
    80005950:	00000097          	auipc	ra,0x0
    80005954:	480080e7          	jalr	1152(ra) # 80005dd0 <_Z8printIntiii>
    80005958:	00003517          	auipc	a0,0x3
    8000595c:	7a850513          	addi	a0,a0,1960 # 80009100 <CONSOLE_STATUS+0xf0>
    80005960:	00000097          	auipc	ra,0x0
    80005964:	2d8080e7          	jalr	728(ra) # 80005c38 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005968:	0014849b          	addiw	s1,s1,1
    8000596c:	0ff4f493          	andi	s1,s1,255
    80005970:	00500793          	li	a5,5
    80005974:	fc97f0e3          	bgeu	a5,s1,80005934 <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	9bc080e7          	jalr	-1604(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005980:	00004517          	auipc	a0,0x4
    80005984:	ac050513          	addi	a0,a0,-1344 # 80009440 <CONSOLE_STATUS+0x430>
    80005988:	00000097          	auipc	ra,0x0
    8000598c:	2b0080e7          	jalr	688(ra) # 80005c38 <_Z11printStringPKc>
    finishedC = true;
    80005990:	00100793          	li	a5,1
    80005994:	0000a717          	auipc	a4,0xa
    80005998:	2af70923          	sb	a5,690(a4) # 8000fc46 <_ZL9finishedC>
}
    8000599c:	01813083          	ld	ra,24(sp)
    800059a0:	01013403          	ld	s0,16(sp)
    800059a4:	00813483          	ld	s1,8(sp)
    800059a8:	00013903          	ld	s2,0(sp)
    800059ac:	02010113          	addi	sp,sp,32
    800059b0:	00008067          	ret

00000000800059b4 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    800059b4:	fe010113          	addi	sp,sp,-32
    800059b8:	00113c23          	sd	ra,24(sp)
    800059bc:	00813823          	sd	s0,16(sp)
    800059c0:	00913423          	sd	s1,8(sp)
    800059c4:	01213023          	sd	s2,0(sp)
    800059c8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800059cc:	00a00493          	li	s1,10
    800059d0:	0400006f          	j	80005a10 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800059d4:	00004517          	auipc	a0,0x4
    800059d8:	a7c50513          	addi	a0,a0,-1412 # 80009450 <CONSOLE_STATUS+0x440>
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	25c080e7          	jalr	604(ra) # 80005c38 <_Z11printStringPKc>
    800059e4:	00000613          	li	a2,0
    800059e8:	00a00593          	li	a1,10
    800059ec:	00048513          	mv	a0,s1
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	3e0080e7          	jalr	992(ra) # 80005dd0 <_Z8printIntiii>
    800059f8:	00003517          	auipc	a0,0x3
    800059fc:	70850513          	addi	a0,a0,1800 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	238080e7          	jalr	568(ra) # 80005c38 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a08:	0014849b          	addiw	s1,s1,1
    80005a0c:	0ff4f493          	andi	s1,s1,255
    80005a10:	00c00793          	li	a5,12
    80005a14:	fc97f0e3          	bgeu	a5,s1,800059d4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a18:	00004517          	auipc	a0,0x4
    80005a1c:	a4050513          	addi	a0,a0,-1472 # 80009458 <CONSOLE_STATUS+0x448>
    80005a20:	00000097          	auipc	ra,0x0
    80005a24:	218080e7          	jalr	536(ra) # 80005c38 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005a28:	00500313          	li	t1,5
    thread_dispatch();
    80005a2c:	ffffc097          	auipc	ra,0xffffc
    80005a30:	908080e7          	jalr	-1784(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    80005a34:	00004517          	auipc	a0,0x4
    80005a38:	ac450513          	addi	a0,a0,-1340 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80005a3c:	00000097          	auipc	ra,0x0
    80005a40:	1fc080e7          	jalr	508(ra) # 80005c38 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005a44:	01000513          	li	a0,16
    80005a48:	00000097          	auipc	ra,0x0
    80005a4c:	d68080e7          	jalr	-664(ra) # 800057b0 <_ZL9fibonaccim>
    80005a50:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005a54:	00004517          	auipc	a0,0x4
    80005a58:	a1450513          	addi	a0,a0,-1516 # 80009468 <CONSOLE_STATUS+0x458>
    80005a5c:	00000097          	auipc	ra,0x0
    80005a60:	1dc080e7          	jalr	476(ra) # 80005c38 <_Z11printStringPKc>
    80005a64:	00000613          	li	a2,0
    80005a68:	00a00593          	li	a1,10
    80005a6c:	0009051b          	sext.w	a0,s2
    80005a70:	00000097          	auipc	ra,0x0
    80005a74:	360080e7          	jalr	864(ra) # 80005dd0 <_Z8printIntiii>
    80005a78:	00003517          	auipc	a0,0x3
    80005a7c:	68850513          	addi	a0,a0,1672 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a80:	00000097          	auipc	ra,0x0
    80005a84:	1b8080e7          	jalr	440(ra) # 80005c38 <_Z11printStringPKc>
    80005a88:	0400006f          	j	80005ac8 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a8c:	00004517          	auipc	a0,0x4
    80005a90:	9c450513          	addi	a0,a0,-1596 # 80009450 <CONSOLE_STATUS+0x440>
    80005a94:	00000097          	auipc	ra,0x0
    80005a98:	1a4080e7          	jalr	420(ra) # 80005c38 <_Z11printStringPKc>
    80005a9c:	00000613          	li	a2,0
    80005aa0:	00a00593          	li	a1,10
    80005aa4:	00048513          	mv	a0,s1
    80005aa8:	00000097          	auipc	ra,0x0
    80005aac:	328080e7          	jalr	808(ra) # 80005dd0 <_Z8printIntiii>
    80005ab0:	00003517          	auipc	a0,0x3
    80005ab4:	65050513          	addi	a0,a0,1616 # 80009100 <CONSOLE_STATUS+0xf0>
    80005ab8:	00000097          	auipc	ra,0x0
    80005abc:	180080e7          	jalr	384(ra) # 80005c38 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ac0:	0014849b          	addiw	s1,s1,1
    80005ac4:	0ff4f493          	andi	s1,s1,255
    80005ac8:	00f00793          	li	a5,15
    80005acc:	fc97f0e3          	bgeu	a5,s1,80005a8c <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005ad0:	ffffc097          	auipc	ra,0xffffc
    80005ad4:	864080e7          	jalr	-1948(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	9a050513          	addi	a0,a0,-1632 # 80009478 <CONSOLE_STATUS+0x468>
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	158080e7          	jalr	344(ra) # 80005c38 <_Z11printStringPKc>
    finishedD = true;
    80005ae8:	00100793          	li	a5,1
    80005aec:	0000a717          	auipc	a4,0xa
    80005af0:	14f70da3          	sb	a5,347(a4) # 8000fc47 <_ZL9finishedD>
}
    80005af4:	01813083          	ld	ra,24(sp)
    80005af8:	01013403          	ld	s0,16(sp)
    80005afc:	00813483          	ld	s1,8(sp)
    80005b00:	00013903          	ld	s2,0(sp)
    80005b04:	02010113          	addi	sp,sp,32
    80005b08:	00008067          	ret

0000000080005b0c <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005b0c:	fc010113          	addi	sp,sp,-64
    80005b10:	02113c23          	sd	ra,56(sp)
    80005b14:	02813823          	sd	s0,48(sp)
    80005b18:	02913423          	sd	s1,40(sp)
    80005b1c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005b20:	00000613          	li	a2,0
    80005b24:	00000597          	auipc	a1,0x0
    80005b28:	aec58593          	addi	a1,a1,-1300 # 80005610 <_Z11workerBodyAPv>
    80005b2c:	fc040513          	addi	a0,s0,-64
    80005b30:	ffffb097          	auipc	ra,0xffffb
    80005b34:	784080e7          	jalr	1924(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005b38:	00004517          	auipc	a0,0x4
    80005b3c:	95050513          	addi	a0,a0,-1712 # 80009488 <CONSOLE_STATUS+0x478>
    80005b40:	00000097          	auipc	ra,0x0
    80005b44:	0f8080e7          	jalr	248(ra) # 80005c38 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005b48:	00000613          	li	a2,0
    80005b4c:	00000597          	auipc	a1,0x0
    80005b50:	b9058593          	addi	a1,a1,-1136 # 800056dc <_Z11workerBodyBPv>
    80005b54:	fc840513          	addi	a0,s0,-56
    80005b58:	ffffb097          	auipc	ra,0xffffb
    80005b5c:	75c080e7          	jalr	1884(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005b60:	00004517          	auipc	a0,0x4
    80005b64:	94050513          	addi	a0,a0,-1728 # 800094a0 <CONSOLE_STATUS+0x490>
    80005b68:	00000097          	auipc	ra,0x0
    80005b6c:	0d0080e7          	jalr	208(ra) # 80005c38 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005b70:	00000613          	li	a2,0
    80005b74:	00000597          	auipc	a1,0x0
    80005b78:	cb058593          	addi	a1,a1,-848 # 80005824 <_Z11workerBodyCPv>
    80005b7c:	fd040513          	addi	a0,s0,-48
    80005b80:	ffffb097          	auipc	ra,0xffffb
    80005b84:	734080e7          	jalr	1844(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005b88:	00004517          	auipc	a0,0x4
    80005b8c:	93050513          	addi	a0,a0,-1744 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005b90:	00000097          	auipc	ra,0x0
    80005b94:	0a8080e7          	jalr	168(ra) # 80005c38 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005b98:	00000613          	li	a2,0
    80005b9c:	00000597          	auipc	a1,0x0
    80005ba0:	e1858593          	addi	a1,a1,-488 # 800059b4 <_Z11workerBodyDPv>
    80005ba4:	fd840513          	addi	a0,s0,-40
    80005ba8:	ffffb097          	auipc	ra,0xffffb
    80005bac:	70c080e7          	jalr	1804(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005bb0:	00004517          	auipc	a0,0x4
    80005bb4:	92050513          	addi	a0,a0,-1760 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80005bb8:	00000097          	auipc	ra,0x0
    80005bbc:	080080e7          	jalr	128(ra) # 80005c38 <_Z11printStringPKc>
    80005bc0:	00c0006f          	j	80005bcc <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005bc4:	ffffb097          	auipc	ra,0xffffb
    80005bc8:	770080e7          	jalr	1904(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005bcc:	0000a797          	auipc	a5,0xa
    80005bd0:	0787c783          	lbu	a5,120(a5) # 8000fc44 <_ZL9finishedA>
    80005bd4:	fe0788e3          	beqz	a5,80005bc4 <_Z18Threads_C_API_testv+0xb8>
    80005bd8:	0000a797          	auipc	a5,0xa
    80005bdc:	06d7c783          	lbu	a5,109(a5) # 8000fc45 <_ZL9finishedB>
    80005be0:	fe0782e3          	beqz	a5,80005bc4 <_Z18Threads_C_API_testv+0xb8>
    80005be4:	0000a797          	auipc	a5,0xa
    80005be8:	0627c783          	lbu	a5,98(a5) # 8000fc46 <_ZL9finishedC>
    80005bec:	fc078ce3          	beqz	a5,80005bc4 <_Z18Threads_C_API_testv+0xb8>
    80005bf0:	0000a797          	auipc	a5,0xa
    80005bf4:	0577c783          	lbu	a5,87(a5) # 8000fc47 <_ZL9finishedD>
    80005bf8:	fc0786e3          	beqz	a5,80005bc4 <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005bfc:	fc040493          	addi	s1,s0,-64
    80005c00:	0080006f          	j	80005c08 <_Z18Threads_C_API_testv+0xfc>
    80005c04:	00848493          	addi	s1,s1,8
    80005c08:	fe040793          	addi	a5,s0,-32
    80005c0c:	00f48c63          	beq	s1,a5,80005c24 <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005c10:	0004b503          	ld	a0,0(s1)
    80005c14:	fe0508e3          	beqz	a0,80005c04 <_Z18Threads_C_API_testv+0xf8>
    80005c18:	ffffe097          	auipc	ra,0xffffe
    80005c1c:	ae0080e7          	jalr	-1312(ra) # 800036f8 <_ZdlPv>
    80005c20:	fe5ff06f          	j	80005c04 <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005c24:	03813083          	ld	ra,56(sp)
    80005c28:	03013403          	ld	s0,48(sp)
    80005c2c:	02813483          	ld	s1,40(sp)
    80005c30:	04010113          	addi	sp,sp,64
    80005c34:	00008067          	ret

0000000080005c38 <_Z11printStringPKc>:
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string)
{
    80005c38:	fe010113          	addi	sp,sp,-32
    80005c3c:	00113c23          	sd	ra,24(sp)
    80005c40:	00813823          	sd	s0,16(sp)
    80005c44:	00913423          	sd	s1,8(sp)
    80005c48:	02010413          	addi	s0,sp,32
    80005c4c:	00050493          	mv	s1,a0
    LOCK();
    80005c50:	00100613          	li	a2,1
    80005c54:	00000593          	li	a1,0
    80005c58:	0000a517          	auipc	a0,0xa
    80005c5c:	ff050513          	addi	a0,a0,-16 # 8000fc48 <lockPrint>
    80005c60:	ffffb097          	auipc	ra,0xffffb
    80005c64:	5b8080e7          	jalr	1464(ra) # 80001218 <copy_and_swap>
    80005c68:	fe0514e3          	bnez	a0,80005c50 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005c6c:	0004c503          	lbu	a0,0(s1)
    80005c70:	00050a63          	beqz	a0,80005c84 <_Z11printStringPKc+0x4c>
        putc(*string);
    80005c74:	ffffc097          	auipc	ra,0xffffc
    80005c78:	8c4080e7          	jalr	-1852(ra) # 80001538 <putc>
        string++;
    80005c7c:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005c80:	fedff06f          	j	80005c6c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005c84:	00000613          	li	a2,0
    80005c88:	00100593          	li	a1,1
    80005c8c:	0000a517          	auipc	a0,0xa
    80005c90:	fbc50513          	addi	a0,a0,-68 # 8000fc48 <lockPrint>
    80005c94:	ffffb097          	auipc	ra,0xffffb
    80005c98:	584080e7          	jalr	1412(ra) # 80001218 <copy_and_swap>
    80005c9c:	fe0514e3          	bnez	a0,80005c84 <_Z11printStringPKc+0x4c>
}
    80005ca0:	01813083          	ld	ra,24(sp)
    80005ca4:	01013403          	ld	s0,16(sp)
    80005ca8:	00813483          	ld	s1,8(sp)
    80005cac:	02010113          	addi	sp,sp,32
    80005cb0:	00008067          	ret

0000000080005cb4 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005cb4:	fd010113          	addi	sp,sp,-48
    80005cb8:	02113423          	sd	ra,40(sp)
    80005cbc:	02813023          	sd	s0,32(sp)
    80005cc0:	00913c23          	sd	s1,24(sp)
    80005cc4:	01213823          	sd	s2,16(sp)
    80005cc8:	01313423          	sd	s3,8(sp)
    80005ccc:	01413023          	sd	s4,0(sp)
    80005cd0:	03010413          	addi	s0,sp,48
    80005cd4:	00050993          	mv	s3,a0
    80005cd8:	00058a13          	mv	s4,a1
    LOCK();
    80005cdc:	00100613          	li	a2,1
    80005ce0:	00000593          	li	a1,0
    80005ce4:	0000a517          	auipc	a0,0xa
    80005ce8:	f6450513          	addi	a0,a0,-156 # 8000fc48 <lockPrint>
    80005cec:	ffffb097          	auipc	ra,0xffffb
    80005cf0:	52c080e7          	jalr	1324(ra) # 80001218 <copy_and_swap>
    80005cf4:	fe0514e3          	bnez	a0,80005cdc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005cf8:	00000913          	li	s2,0
    80005cfc:	00090493          	mv	s1,s2
    80005d00:	0019091b          	addiw	s2,s2,1
    80005d04:	03495a63          	bge	s2,s4,80005d38 <_Z9getStringPci+0x84>
        cc = getc();
    80005d08:	ffffc097          	auipc	ra,0xffffc
    80005d0c:	808080e7          	jalr	-2040(ra) # 80001510 <getc>
        if (cc < 1)
    80005d10:	02050463          	beqz	a0,80005d38 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005d14:	009984b3          	add	s1,s3,s1
    80005d18:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005d1c:	00a00793          	li	a5,10
    80005d20:	00f50a63          	beq	a0,a5,80005d34 <_Z9getStringPci+0x80>
    80005d24:	00d00793          	li	a5,13
    80005d28:	fcf51ae3          	bne	a0,a5,80005cfc <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005d2c:	00090493          	mv	s1,s2
    80005d30:	0080006f          	j	80005d38 <_Z9getStringPci+0x84>
    80005d34:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005d38:	009984b3          	add	s1,s3,s1
    80005d3c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005d40:	00000613          	li	a2,0
    80005d44:	00100593          	li	a1,1
    80005d48:	0000a517          	auipc	a0,0xa
    80005d4c:	f0050513          	addi	a0,a0,-256 # 8000fc48 <lockPrint>
    80005d50:	ffffb097          	auipc	ra,0xffffb
    80005d54:	4c8080e7          	jalr	1224(ra) # 80001218 <copy_and_swap>
    80005d58:	fe0514e3          	bnez	a0,80005d40 <_Z9getStringPci+0x8c>
    return buf;
}
    80005d5c:	00098513          	mv	a0,s3
    80005d60:	02813083          	ld	ra,40(sp)
    80005d64:	02013403          	ld	s0,32(sp)
    80005d68:	01813483          	ld	s1,24(sp)
    80005d6c:	01013903          	ld	s2,16(sp)
    80005d70:	00813983          	ld	s3,8(sp)
    80005d74:	00013a03          	ld	s4,0(sp)
    80005d78:	03010113          	addi	sp,sp,48
    80005d7c:	00008067          	ret

0000000080005d80 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005d80:	ff010113          	addi	sp,sp,-16
    80005d84:	00813423          	sd	s0,8(sp)
    80005d88:	01010413          	addi	s0,sp,16
    80005d8c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005d90:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005d94:	0006c603          	lbu	a2,0(a3)
    80005d98:	fd06071b          	addiw	a4,a2,-48
    80005d9c:	0ff77713          	andi	a4,a4,255
    80005da0:	00900793          	li	a5,9
    80005da4:	02e7e063          	bltu	a5,a4,80005dc4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005da8:	0025179b          	slliw	a5,a0,0x2
    80005dac:	00a787bb          	addw	a5,a5,a0
    80005db0:	0017979b          	slliw	a5,a5,0x1
    80005db4:	00168693          	addi	a3,a3,1
    80005db8:	00c787bb          	addw	a5,a5,a2
    80005dbc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005dc0:	fd5ff06f          	j	80005d94 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005dc4:	00813403          	ld	s0,8(sp)
    80005dc8:	01010113          	addi	sp,sp,16
    80005dcc:	00008067          	ret

0000000080005dd0 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005dd0:	fc010113          	addi	sp,sp,-64
    80005dd4:	02113c23          	sd	ra,56(sp)
    80005dd8:	02813823          	sd	s0,48(sp)
    80005ddc:	02913423          	sd	s1,40(sp)
    80005de0:	03213023          	sd	s2,32(sp)
    80005de4:	01313c23          	sd	s3,24(sp)
    80005de8:	04010413          	addi	s0,sp,64
    80005dec:	00050493          	mv	s1,a0
    80005df0:	00058913          	mv	s2,a1
    80005df4:	00060993          	mv	s3,a2
    LOCK();
    80005df8:	00100613          	li	a2,1
    80005dfc:	00000593          	li	a1,0
    80005e00:	0000a517          	auipc	a0,0xa
    80005e04:	e4850513          	addi	a0,a0,-440 # 8000fc48 <lockPrint>
    80005e08:	ffffb097          	auipc	ra,0xffffb
    80005e0c:	410080e7          	jalr	1040(ra) # 80001218 <copy_and_swap>
    80005e10:	fe0514e3          	bnez	a0,80005df8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005e14:	00098463          	beqz	s3,80005e1c <_Z8printIntiii+0x4c>
    80005e18:	0804c463          	bltz	s1,80005ea0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e1c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005e20:	00000593          	li	a1,0
    }

    i = 0;
    80005e24:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005e28:	0009079b          	sext.w	a5,s2
    80005e2c:	0325773b          	remuw	a4,a0,s2
    80005e30:	00048613          	mv	a2,s1
    80005e34:	0014849b          	addiw	s1,s1,1
    80005e38:	02071693          	slli	a3,a4,0x20
    80005e3c:	0206d693          	srli	a3,a3,0x20
    80005e40:	00003717          	auipc	a4,0x3
    80005e44:	6c870713          	addi	a4,a4,1736 # 80009508 <_ZL6digits>
    80005e48:	00d70733          	add	a4,a4,a3
    80005e4c:	00074683          	lbu	a3,0(a4)
    80005e50:	fd040713          	addi	a4,s0,-48
    80005e54:	00c70733          	add	a4,a4,a2
    80005e58:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005e5c:	0005071b          	sext.w	a4,a0
    80005e60:	0325553b          	divuw	a0,a0,s2
    80005e64:	fcf772e3          	bgeu	a4,a5,80005e28 <_Z8printIntiii+0x58>
    if (neg)
    80005e68:	00058c63          	beqz	a1,80005e80 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005e6c:	fd040793          	addi	a5,s0,-48
    80005e70:	009784b3          	add	s1,a5,s1
    80005e74:	02d00793          	li	a5,45
    80005e78:	fef48823          	sb	a5,-16(s1)
    80005e7c:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005e80:	fff4849b          	addiw	s1,s1,-1
    80005e84:	0204c463          	bltz	s1,80005eac <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005e88:	fd040793          	addi	a5,s0,-48
    80005e8c:	009787b3          	add	a5,a5,s1
    80005e90:	ff07c503          	lbu	a0,-16(a5)
    80005e94:	ffffb097          	auipc	ra,0xffffb
    80005e98:	6a4080e7          	jalr	1700(ra) # 80001538 <putc>
    80005e9c:	fe5ff06f          	j	80005e80 <_Z8printIntiii+0xb0>
        x = -xx;
    80005ea0:	4090053b          	negw	a0,s1
        neg = 1;
    80005ea4:	00100593          	li	a1,1
        x = -xx;
    80005ea8:	f7dff06f          	j	80005e24 <_Z8printIntiii+0x54>
    UNLOCK();
    80005eac:	00000613          	li	a2,0
    80005eb0:	00100593          	li	a1,1
    80005eb4:	0000a517          	auipc	a0,0xa
    80005eb8:	d9450513          	addi	a0,a0,-620 # 8000fc48 <lockPrint>
    80005ebc:	ffffb097          	auipc	ra,0xffffb
    80005ec0:	35c080e7          	jalr	860(ra) # 80001218 <copy_and_swap>
    80005ec4:	fe0514e3          	bnez	a0,80005eac <_Z8printIntiii+0xdc>
}
    80005ec8:	03813083          	ld	ra,56(sp)
    80005ecc:	03013403          	ld	s0,48(sp)
    80005ed0:	02813483          	ld	s1,40(sp)
    80005ed4:	02013903          	ld	s2,32(sp)
    80005ed8:	01813983          	ld	s3,24(sp)
    80005edc:	04010113          	addi	sp,sp,64
    80005ee0:	00008067          	ret

0000000080005ee4 <_Z15trapPrintStringPKc>:

void trapPrintString(char const* string)
{
    80005ee4:	fe010113          	addi	sp,sp,-32
    80005ee8:	00113c23          	sd	ra,24(sp)
    80005eec:	00813823          	sd	s0,16(sp)
    80005ef0:	00913423          	sd	s1,8(sp)
    80005ef4:	02010413          	addi	s0,sp,32
    80005ef8:	00050493          	mv	s1,a0
    LOCK();
    80005efc:	00100613          	li	a2,1
    80005f00:	00000593          	li	a1,0
    80005f04:	0000a517          	auipc	a0,0xa
    80005f08:	d4450513          	addi	a0,a0,-700 # 8000fc48 <lockPrint>
    80005f0c:	ffffb097          	auipc	ra,0xffffb
    80005f10:	30c080e7          	jalr	780(ra) # 80001218 <copy_and_swap>
    80005f14:	fe0514e3          	bnez	a0,80005efc <_Z15trapPrintStringPKc+0x18>
    while (*string != '\0') {
    80005f18:	0004c503          	lbu	a0,0(s1)
    80005f1c:	00050a63          	beqz	a0,80005f30 <_Z15trapPrintStringPKc+0x4c>
        KConsole::putCharacterOutput(*string);
    80005f20:	ffffd097          	auipc	ra,0xffffd
    80005f24:	fd4080e7          	jalr	-44(ra) # 80002ef4 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80005f28:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005f2c:	fedff06f          	j	80005f18 <_Z15trapPrintStringPKc+0x34>
    }
    UNLOCK();
    80005f30:	00000613          	li	a2,0
    80005f34:	00100593          	li	a1,1
    80005f38:	0000a517          	auipc	a0,0xa
    80005f3c:	d1050513          	addi	a0,a0,-752 # 8000fc48 <lockPrint>
    80005f40:	ffffb097          	auipc	ra,0xffffb
    80005f44:	2d8080e7          	jalr	728(ra) # 80001218 <copy_and_swap>
    80005f48:	fe0514e3          	bnez	a0,80005f30 <_Z15trapPrintStringPKc+0x4c>
}
    80005f4c:	01813083          	ld	ra,24(sp)
    80005f50:	01013403          	ld	s0,16(sp)
    80005f54:	00813483          	ld	s1,8(sp)
    80005f58:	02010113          	addi	sp,sp,32
    80005f5c:	00008067          	ret

0000000080005f60 <_Z12trapPrintIntiii>:

void trapPrintInt(int xx, int base, int sgn)
{
    80005f60:	fc010113          	addi	sp,sp,-64
    80005f64:	02113c23          	sd	ra,56(sp)
    80005f68:	02813823          	sd	s0,48(sp)
    80005f6c:	02913423          	sd	s1,40(sp)
    80005f70:	03213023          	sd	s2,32(sp)
    80005f74:	01313c23          	sd	s3,24(sp)
    80005f78:	04010413          	addi	s0,sp,64
    80005f7c:	00050493          	mv	s1,a0
    80005f80:	00058913          	mv	s2,a1
    80005f84:	00060993          	mv	s3,a2
    LOCK();
    80005f88:	00100613          	li	a2,1
    80005f8c:	00000593          	li	a1,0
    80005f90:	0000a517          	auipc	a0,0xa
    80005f94:	cb850513          	addi	a0,a0,-840 # 8000fc48 <lockPrint>
    80005f98:	ffffb097          	auipc	ra,0xffffb
    80005f9c:	280080e7          	jalr	640(ra) # 80001218 <copy_and_swap>
    80005fa0:	fe0514e3          	bnez	a0,80005f88 <_Z12trapPrintIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005fa4:	00098463          	beqz	s3,80005fac <_Z12trapPrintIntiii+0x4c>
    80005fa8:	0804c463          	bltz	s1,80006030 <_Z12trapPrintIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005fac:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005fb0:	00000593          	li	a1,0
    }

    i = 0;
    80005fb4:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005fb8:	0009079b          	sext.w	a5,s2
    80005fbc:	0325773b          	remuw	a4,a0,s2
    80005fc0:	00048613          	mv	a2,s1
    80005fc4:	0014849b          	addiw	s1,s1,1
    80005fc8:	02071693          	slli	a3,a4,0x20
    80005fcc:	0206d693          	srli	a3,a3,0x20
    80005fd0:	00003717          	auipc	a4,0x3
    80005fd4:	53870713          	addi	a4,a4,1336 # 80009508 <_ZL6digits>
    80005fd8:	00d70733          	add	a4,a4,a3
    80005fdc:	00074683          	lbu	a3,0(a4)
    80005fe0:	fd040713          	addi	a4,s0,-48
    80005fe4:	00c70733          	add	a4,a4,a2
    80005fe8:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005fec:	0005071b          	sext.w	a4,a0
    80005ff0:	0325553b          	divuw	a0,a0,s2
    80005ff4:	fcf772e3          	bgeu	a4,a5,80005fb8 <_Z12trapPrintIntiii+0x58>
    if (neg)
    80005ff8:	00058c63          	beqz	a1,80006010 <_Z12trapPrintIntiii+0xb0>
        buf[i++] = '-';
    80005ffc:	fd040793          	addi	a5,s0,-48
    80006000:	009784b3          	add	s1,a5,s1
    80006004:	02d00793          	li	a5,45
    80006008:	fef48823          	sb	a5,-16(s1)
    8000600c:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80006010:	fff4849b          	addiw	s1,s1,-1
    80006014:	0204c463          	bltz	s1,8000603c <_Z12trapPrintIntiii+0xdc>
        KConsole::putCharacterOutput(buf[i]);
    80006018:	fd040793          	addi	a5,s0,-48
    8000601c:	009787b3          	add	a5,a5,s1
    80006020:	ff07c503          	lbu	a0,-16(a5)
    80006024:	ffffd097          	auipc	ra,0xffffd
    80006028:	ed0080e7          	jalr	-304(ra) # 80002ef4 <_ZN8KConsole18putCharacterOutputEc>
    8000602c:	fe5ff06f          	j	80006010 <_Z12trapPrintIntiii+0xb0>
        x = -xx;
    80006030:	4090053b          	negw	a0,s1
        neg = 1;
    80006034:	00100593          	li	a1,1
        x = -xx;
    80006038:	f7dff06f          	j	80005fb4 <_Z12trapPrintIntiii+0x54>
    UNLOCK();
    8000603c:	00000613          	li	a2,0
    80006040:	00100593          	li	a1,1
    80006044:	0000a517          	auipc	a0,0xa
    80006048:	c0450513          	addi	a0,a0,-1020 # 8000fc48 <lockPrint>
    8000604c:	ffffb097          	auipc	ra,0xffffb
    80006050:	1cc080e7          	jalr	460(ra) # 80001218 <copy_and_swap>
    80006054:	fe0514e3          	bnez	a0,8000603c <_Z12trapPrintIntiii+0xdc>
}
    80006058:	03813083          	ld	ra,56(sp)
    8000605c:	03013403          	ld	s0,48(sp)
    80006060:	02813483          	ld	s1,40(sp)
    80006064:	02013903          	ld	s2,32(sp)
    80006068:	01813983          	ld	s3,24(sp)
    8000606c:	04010113          	addi	sp,sp,64
    80006070:	00008067          	ret

0000000080006074 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80006074:	fe010113          	addi	sp,sp,-32
    80006078:	00113c23          	sd	ra,24(sp)
    8000607c:	00813823          	sd	s0,16(sp)
    80006080:	00913423          	sd	s1,8(sp)
    80006084:	01213023          	sd	s2,0(sp)
    80006088:	02010413          	addi	s0,sp,32
    8000608c:	00050493          	mv	s1,a0
    80006090:	00b52023          	sw	a1,0(a0)
    80006094:	00052823          	sw	zero,16(a0)
    80006098:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000609c:	00259513          	slli	a0,a1,0x2
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	1b8080e7          	jalr	440(ra) # 80001258 <mem_alloc>
    800060a8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800060ac:	01000513          	li	a0,16
    800060b0:	ffffd097          	auipc	ra,0xffffd
    800060b4:	620080e7          	jalr	1568(ra) # 800036d0 <_Znwm>
    800060b8:	00050913          	mv	s2,a0
    800060bc:	00000593          	li	a1,0
    800060c0:	ffffe097          	auipc	ra,0xffffe
    800060c4:	85c080e7          	jalr	-1956(ra) # 8000391c <_ZN9SemaphoreC1Ej>
    800060c8:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800060cc:	01000513          	li	a0,16
    800060d0:	ffffd097          	auipc	ra,0xffffd
    800060d4:	600080e7          	jalr	1536(ra) # 800036d0 <_Znwm>
    800060d8:	00050913          	mv	s2,a0
    800060dc:	0004a583          	lw	a1,0(s1)
    800060e0:	ffffe097          	auipc	ra,0xffffe
    800060e4:	83c080e7          	jalr	-1988(ra) # 8000391c <_ZN9SemaphoreC1Ej>
    800060e8:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800060ec:	01000513          	li	a0,16
    800060f0:	ffffd097          	auipc	ra,0xffffd
    800060f4:	5e0080e7          	jalr	1504(ra) # 800036d0 <_Znwm>
    800060f8:	00050913          	mv	s2,a0
    800060fc:	00100593          	li	a1,1
    80006100:	ffffe097          	auipc	ra,0xffffe
    80006104:	81c080e7          	jalr	-2020(ra) # 8000391c <_ZN9SemaphoreC1Ej>
    80006108:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000610c:	01000513          	li	a0,16
    80006110:	ffffd097          	auipc	ra,0xffffd
    80006114:	5c0080e7          	jalr	1472(ra) # 800036d0 <_Znwm>
    80006118:	00050913          	mv	s2,a0
    8000611c:	00100593          	li	a1,1
    80006120:	ffffd097          	auipc	ra,0xffffd
    80006124:	7fc080e7          	jalr	2044(ra) # 8000391c <_ZN9SemaphoreC1Ej>
    80006128:	0324b823          	sd	s2,48(s1)
}
    8000612c:	01813083          	ld	ra,24(sp)
    80006130:	01013403          	ld	s0,16(sp)
    80006134:	00813483          	ld	s1,8(sp)
    80006138:	00013903          	ld	s2,0(sp)
    8000613c:	02010113          	addi	sp,sp,32
    80006140:	00008067          	ret
    80006144:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006148:	00090513          	mv	a0,s2
    8000614c:	ffffd097          	auipc	ra,0xffffd
    80006150:	5ac080e7          	jalr	1452(ra) # 800036f8 <_ZdlPv>
    80006154:	00048513          	mv	a0,s1
    80006158:	0000b097          	auipc	ra,0xb
    8000615c:	bd0080e7          	jalr	-1072(ra) # 80010d28 <_Unwind_Resume>
    80006160:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80006164:	00090513          	mv	a0,s2
    80006168:	ffffd097          	auipc	ra,0xffffd
    8000616c:	590080e7          	jalr	1424(ra) # 800036f8 <_ZdlPv>
    80006170:	00048513          	mv	a0,s1
    80006174:	0000b097          	auipc	ra,0xb
    80006178:	bb4080e7          	jalr	-1100(ra) # 80010d28 <_Unwind_Resume>
    8000617c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006180:	00090513          	mv	a0,s2
    80006184:	ffffd097          	auipc	ra,0xffffd
    80006188:	574080e7          	jalr	1396(ra) # 800036f8 <_ZdlPv>
    8000618c:	00048513          	mv	a0,s1
    80006190:	0000b097          	auipc	ra,0xb
    80006194:	b98080e7          	jalr	-1128(ra) # 80010d28 <_Unwind_Resume>
    80006198:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000619c:	00090513          	mv	a0,s2
    800061a0:	ffffd097          	auipc	ra,0xffffd
    800061a4:	558080e7          	jalr	1368(ra) # 800036f8 <_ZdlPv>
    800061a8:	00048513          	mv	a0,s1
    800061ac:	0000b097          	auipc	ra,0xb
    800061b0:	b7c080e7          	jalr	-1156(ra) # 80010d28 <_Unwind_Resume>

00000000800061b4 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800061b4:	fe010113          	addi	sp,sp,-32
    800061b8:	00113c23          	sd	ra,24(sp)
    800061bc:	00813823          	sd	s0,16(sp)
    800061c0:	00913423          	sd	s1,8(sp)
    800061c4:	02010413          	addi	s0,sp,32
    800061c8:	00050493          	mv	s1,a0
    putc('\n');
    800061cc:	00a00513          	li	a0,10
    800061d0:	ffffb097          	auipc	ra,0xffffb
    800061d4:	368080e7          	jalr	872(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800061d8:	0104a783          	lw	a5,16(s1)
    800061dc:	0144a703          	lw	a4,20(s1)
    800061e0:	00e78c63          	beq	a5,a4,800061f8 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800061e4:	0017879b          	addiw	a5,a5,1
    800061e8:	0004a703          	lw	a4,0(s1)
    800061ec:	02e7e7bb          	remw	a5,a5,a4
    800061f0:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800061f4:	fe5ff06f          	j	800061d8 <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    800061f8:	02100513          	li	a0,33
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	33c080e7          	jalr	828(ra) # 80001538 <putc>
    putc('\n');
    80006204:	00a00513          	li	a0,10
    80006208:	ffffb097          	auipc	ra,0xffffb
    8000620c:	330080e7          	jalr	816(ra) # 80001538 <putc>

    mem_free(buffer);
    80006210:	0084b503          	ld	a0,8(s1)
    80006214:	ffffb097          	auipc	ra,0xffffb
    80006218:	074080e7          	jalr	116(ra) # 80001288 <mem_free>
    delete itemAvailable;
    8000621c:	0204b503          	ld	a0,32(s1)
    80006220:	00050863          	beqz	a0,80006230 <_ZN9BufferCPPD1Ev+0x7c>
    80006224:	00053783          	ld	a5,0(a0)
    80006228:	0087b783          	ld	a5,8(a5)
    8000622c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006230:	0184b503          	ld	a0,24(s1)
    80006234:	00050863          	beqz	a0,80006244 <_ZN9BufferCPPD1Ev+0x90>
    80006238:	00053783          	ld	a5,0(a0)
    8000623c:	0087b783          	ld	a5,8(a5)
    80006240:	000780e7          	jalr	a5
    delete mutexTail;
    80006244:	0304b503          	ld	a0,48(s1)
    80006248:	00050863          	beqz	a0,80006258 <_ZN9BufferCPPD1Ev+0xa4>
    8000624c:	00053783          	ld	a5,0(a0)
    80006250:	0087b783          	ld	a5,8(a5)
    80006254:	000780e7          	jalr	a5
    delete mutexHead;
    80006258:	0284b503          	ld	a0,40(s1)
    8000625c:	00050863          	beqz	a0,8000626c <_ZN9BufferCPPD1Ev+0xb8>
    80006260:	00053783          	ld	a5,0(a0)
    80006264:	0087b783          	ld	a5,8(a5)
    80006268:	000780e7          	jalr	a5

}
    8000626c:	01813083          	ld	ra,24(sp)
    80006270:	01013403          	ld	s0,16(sp)
    80006274:	00813483          	ld	s1,8(sp)
    80006278:	02010113          	addi	sp,sp,32
    8000627c:	00008067          	ret

0000000080006280 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80006280:	fe010113          	addi	sp,sp,-32
    80006284:	00113c23          	sd	ra,24(sp)
    80006288:	00813823          	sd	s0,16(sp)
    8000628c:	00913423          	sd	s1,8(sp)
    80006290:	01213023          	sd	s2,0(sp)
    80006294:	02010413          	addi	s0,sp,32
    80006298:	00050493          	mv	s1,a0
    8000629c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800062a0:	01853503          	ld	a0,24(a0)
    800062a4:	ffffd097          	auipc	ra,0xffffd
    800062a8:	640080e7          	jalr	1600(ra) # 800038e4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800062ac:	0304b503          	ld	a0,48(s1)
    800062b0:	ffffd097          	auipc	ra,0xffffd
    800062b4:	634080e7          	jalr	1588(ra) # 800038e4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800062b8:	0084b783          	ld	a5,8(s1)
    800062bc:	0144a703          	lw	a4,20(s1)
    800062c0:	00271713          	slli	a4,a4,0x2
    800062c4:	00e787b3          	add	a5,a5,a4
    800062c8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800062cc:	0144a783          	lw	a5,20(s1)
    800062d0:	0017879b          	addiw	a5,a5,1
    800062d4:	0004a703          	lw	a4,0(s1)
    800062d8:	02e7e7bb          	remw	a5,a5,a4
    800062dc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800062e0:	0304b503          	ld	a0,48(s1)
    800062e4:	ffffd097          	auipc	ra,0xffffd
    800062e8:	684080e7          	jalr	1668(ra) # 80003968 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800062ec:	0204b503          	ld	a0,32(s1)
    800062f0:	ffffd097          	auipc	ra,0xffffd
    800062f4:	678080e7          	jalr	1656(ra) # 80003968 <_ZN9Semaphore6signalEv>

}
    800062f8:	01813083          	ld	ra,24(sp)
    800062fc:	01013403          	ld	s0,16(sp)
    80006300:	00813483          	ld	s1,8(sp)
    80006304:	00013903          	ld	s2,0(sp)
    80006308:	02010113          	addi	sp,sp,32
    8000630c:	00008067          	ret

0000000080006310 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006310:	fe010113          	addi	sp,sp,-32
    80006314:	00113c23          	sd	ra,24(sp)
    80006318:	00813823          	sd	s0,16(sp)
    8000631c:	00913423          	sd	s1,8(sp)
    80006320:	01213023          	sd	s2,0(sp)
    80006324:	02010413          	addi	s0,sp,32
    80006328:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000632c:	02053503          	ld	a0,32(a0)
    80006330:	ffffd097          	auipc	ra,0xffffd
    80006334:	5b4080e7          	jalr	1460(ra) # 800038e4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006338:	0284b503          	ld	a0,40(s1)
    8000633c:	ffffd097          	auipc	ra,0xffffd
    80006340:	5a8080e7          	jalr	1448(ra) # 800038e4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006344:	0084b703          	ld	a4,8(s1)
    80006348:	0104a783          	lw	a5,16(s1)
    8000634c:	00279693          	slli	a3,a5,0x2
    80006350:	00d70733          	add	a4,a4,a3
    80006354:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006358:	0017879b          	addiw	a5,a5,1
    8000635c:	0004a703          	lw	a4,0(s1)
    80006360:	02e7e7bb          	remw	a5,a5,a4
    80006364:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006368:	0284b503          	ld	a0,40(s1)
    8000636c:	ffffd097          	auipc	ra,0xffffd
    80006370:	5fc080e7          	jalr	1532(ra) # 80003968 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006374:	0184b503          	ld	a0,24(s1)
    80006378:	ffffd097          	auipc	ra,0xffffd
    8000637c:	5f0080e7          	jalr	1520(ra) # 80003968 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006380:	00090513          	mv	a0,s2
    80006384:	01813083          	ld	ra,24(sp)
    80006388:	01013403          	ld	s0,16(sp)
    8000638c:	00813483          	ld	s1,8(sp)
    80006390:	00013903          	ld	s2,0(sp)
    80006394:	02010113          	addi	sp,sp,32
    80006398:	00008067          	ret

000000008000639c <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    8000639c:	ff010113          	addi	sp,sp,-16
    800063a0:	00113423          	sd	ra,8(sp)
    800063a4:	00813023          	sd	s0,0(sp)
    800063a8:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    800063ac:	00000097          	auipc	ra,0x0
    800063b0:	0bc080e7          	jalr	188(ra) # 80006468 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800063b4:	00813083          	ld	ra,8(sp)
    800063b8:	00013403          	ld	s0,0(sp)
    800063bc:	01010113          	addi	sp,sp,16
    800063c0:	00008067          	ret

00000000800063c4 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800063c4:	fe010113          	addi	sp,sp,-32
    800063c8:	00113c23          	sd	ra,24(sp)
    800063cc:	00813823          	sd	s0,16(sp)
    800063d0:	00913423          	sd	s1,8(sp)
    800063d4:	01213023          	sd	s2,0(sp)
    800063d8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800063dc:	00053903          	ld	s2,0(a0)
    int i = 6;
    800063e0:	00600493          	li	s1,6
    while (--i > 0) {
    800063e4:	fff4849b          	addiw	s1,s1,-1
    800063e8:	04905463          	blez	s1,80006430 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800063ec:	00003517          	auipc	a0,0x3
    800063f0:	13450513          	addi	a0,a0,308 # 80009520 <_ZL6digits+0x18>
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	844080e7          	jalr	-1980(ra) # 80005c38 <_Z11printStringPKc>
        printInt(sleep_time);
    800063fc:	00000613          	li	a2,0
    80006400:	00a00593          	li	a1,10
    80006404:	0009051b          	sext.w	a0,s2
    80006408:	00000097          	auipc	ra,0x0
    8000640c:	9c8080e7          	jalr	-1592(ra) # 80005dd0 <_Z8printIntiii>
        printString(" !\n");
    80006410:	00003517          	auipc	a0,0x3
    80006414:	11850513          	addi	a0,a0,280 # 80009528 <_ZL6digits+0x20>
    80006418:	00000097          	auipc	ra,0x0
    8000641c:	820080e7          	jalr	-2016(ra) # 80005c38 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006420:	00090513          	mv	a0,s2
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	014080e7          	jalr	20(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    8000642c:	fb9ff06f          	j	800063e4 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006430:	00a00793          	li	a5,10
    80006434:	02f95933          	divu	s2,s2,a5
    80006438:	fff90913          	addi	s2,s2,-1
    8000643c:	0000a797          	auipc	a5,0xa
    80006440:	81478793          	addi	a5,a5,-2028 # 8000fc50 <finished>
    80006444:	01278933          	add	s2,a5,s2
    80006448:	00100793          	li	a5,1
    8000644c:	00f90023          	sb	a5,0(s2)
}
    80006450:	01813083          	ld	ra,24(sp)
    80006454:	01013403          	ld	s0,16(sp)
    80006458:	00813483          	ld	s1,8(sp)
    8000645c:	00013903          	ld	s2,0(sp)
    80006460:	02010113          	addi	sp,sp,32
    80006464:	00008067          	ret

0000000080006468 <_Z12testSleepingv>:

void testSleeping()
{
    80006468:	fc010113          	addi	sp,sp,-64
    8000646c:	02113c23          	sd	ra,56(sp)
    80006470:	02813823          	sd	s0,48(sp)
    80006474:	02913423          	sd	s1,40(sp)
    80006478:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000647c:	00a00793          	li	a5,10
    80006480:	fcf43823          	sd	a5,-48(s0)
    80006484:	01400793          	li	a5,20
    80006488:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000648c:	00000493          	li	s1,0
    80006490:	02c0006f          	j	800064bc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006494:	00349793          	slli	a5,s1,0x3
    80006498:	fd040613          	addi	a2,s0,-48
    8000649c:	00f60633          	add	a2,a2,a5
    800064a0:	00000597          	auipc	a1,0x0
    800064a4:	f2458593          	addi	a1,a1,-220 # 800063c4 <_Z9sleepyRunPv>
    800064a8:	fc040513          	addi	a0,s0,-64
    800064ac:	00f50533          	add	a0,a0,a5
    800064b0:	ffffb097          	auipc	ra,0xffffb
    800064b4:	e04080e7          	jalr	-508(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800064b8:	0014849b          	addiw	s1,s1,1
    800064bc:	00100793          	li	a5,1
    800064c0:	fc97dae3          	bge	a5,s1,80006494 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {
    800064c4:	00009797          	auipc	a5,0x9
    800064c8:	78c7c783          	lbu	a5,1932(a5) # 8000fc50 <finished>
    800064cc:	fe078ce3          	beqz	a5,800064c4 <_Z12testSleepingv+0x5c>
    800064d0:	00009797          	auipc	a5,0x9
    800064d4:	7817c783          	lbu	a5,1921(a5) # 8000fc51 <finished+0x1>
    800064d8:	fe0786e3          	beqz	a5,800064c4 <_Z12testSleepingv+0x5c>
        //thread_dispatch();
    }
}
    800064dc:	03813083          	ld	ra,56(sp)
    800064e0:	03013403          	ld	s0,48(sp)
    800064e4:	02813483          	ld	s1,40(sp)
    800064e8:	04010113          	addi	sp,sp,64
    800064ec:	00008067          	ret

00000000800064f0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800064f0:	fe010113          	addi	sp,sp,-32
    800064f4:	00113c23          	sd	ra,24(sp)
    800064f8:	00813823          	sd	s0,16(sp)
    800064fc:	00913423          	sd	s1,8(sp)
    80006500:	02010413          	addi	s0,sp,32
    80006504:	00050493          	mv	s1,a0
    80006508:	00b52023          	sw	a1,0(a0)
    8000650c:	00052823          	sw	zero,16(a0)
    80006510:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006514:	00259513          	slli	a0,a1,0x2
    80006518:	ffffb097          	auipc	ra,0xffffb
    8000651c:	d40080e7          	jalr	-704(ra) # 80001258 <mem_alloc>
    80006520:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006524:	00000593          	li	a1,0
    80006528:	02048513          	addi	a0,s1,32
    8000652c:	ffffb097          	auipc	ra,0xffffb
    80006530:	e50080e7          	jalr	-432(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    80006534:	0004a583          	lw	a1,0(s1)
    80006538:	01848513          	addi	a0,s1,24
    8000653c:	ffffb097          	auipc	ra,0xffffb
    80006540:	e40080e7          	jalr	-448(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80006544:	00100593          	li	a1,1
    80006548:	02848513          	addi	a0,s1,40
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	e30080e7          	jalr	-464(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80006554:	00100593          	li	a1,1
    80006558:	03048513          	addi	a0,s1,48
    8000655c:	ffffb097          	auipc	ra,0xffffb
    80006560:	e20080e7          	jalr	-480(ra) # 8000137c <sem_open>
}
    80006564:	01813083          	ld	ra,24(sp)
    80006568:	01013403          	ld	s0,16(sp)
    8000656c:	00813483          	ld	s1,8(sp)
    80006570:	02010113          	addi	sp,sp,32
    80006574:	00008067          	ret

0000000080006578 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80006578:	fe010113          	addi	sp,sp,-32
    8000657c:	00113c23          	sd	ra,24(sp)
    80006580:	00813823          	sd	s0,16(sp)
    80006584:	00913423          	sd	s1,8(sp)
    80006588:	02010413          	addi	s0,sp,32
    8000658c:	00050493          	mv	s1,a0
    putc('\n');
    80006590:	00a00513          	li	a0,10
    80006594:	ffffb097          	auipc	ra,0xffffb
    80006598:	fa4080e7          	jalr	-92(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    8000659c:	00003517          	auipc	a0,0x3
    800065a0:	f9450513          	addi	a0,a0,-108 # 80009530 <_ZL6digits+0x28>
    800065a4:	fffff097          	auipc	ra,0xfffff
    800065a8:	694080e7          	jalr	1684(ra) # 80005c38 <_Z11printStringPKc>
    while (head != tail) {
    800065ac:	0104a783          	lw	a5,16(s1)
    800065b0:	0144a703          	lw	a4,20(s1)
    800065b4:	00e78c63          	beq	a5,a4,800065cc <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800065b8:	0017879b          	addiw	a5,a5,1
    800065bc:	0004a703          	lw	a4,0(s1)
    800065c0:	02e7e7bb          	remw	a5,a5,a4
    800065c4:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800065c8:	fe5ff06f          	j	800065ac <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    800065cc:	02100513          	li	a0,33
    800065d0:	ffffb097          	auipc	ra,0xffffb
    800065d4:	f68080e7          	jalr	-152(ra) # 80001538 <putc>
    putc('\n');
    800065d8:	00a00513          	li	a0,10
    800065dc:	ffffb097          	auipc	ra,0xffffb
    800065e0:	f5c080e7          	jalr	-164(ra) # 80001538 <putc>

    mem_free(buffer);
    800065e4:	0084b503          	ld	a0,8(s1)
    800065e8:	ffffb097          	auipc	ra,0xffffb
    800065ec:	ca0080e7          	jalr	-864(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    800065f0:	0204b503          	ld	a0,32(s1)
    800065f4:	ffffb097          	auipc	ra,0xffffb
    800065f8:	dc0080e7          	jalr	-576(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    800065fc:	0184b503          	ld	a0,24(s1)
    80006600:	ffffb097          	auipc	ra,0xffffb
    80006604:	db4080e7          	jalr	-588(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80006608:	0304b503          	ld	a0,48(s1)
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	da8080e7          	jalr	-600(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80006614:	0284b503          	ld	a0,40(s1)
    80006618:	ffffb097          	auipc	ra,0xffffb
    8000661c:	d9c080e7          	jalr	-612(ra) # 800013b4 <sem_close>
}
    80006620:	01813083          	ld	ra,24(sp)
    80006624:	01013403          	ld	s0,16(sp)
    80006628:	00813483          	ld	s1,8(sp)
    8000662c:	02010113          	addi	sp,sp,32
    80006630:	00008067          	ret

0000000080006634 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80006634:	fe010113          	addi	sp,sp,-32
    80006638:	00113c23          	sd	ra,24(sp)
    8000663c:	00813823          	sd	s0,16(sp)
    80006640:	00913423          	sd	s1,8(sp)
    80006644:	01213023          	sd	s2,0(sp)
    80006648:	02010413          	addi	s0,sp,32
    8000664c:	00050493          	mv	s1,a0
    80006650:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006654:	01853503          	ld	a0,24(a0)
    80006658:	ffffb097          	auipc	ra,0xffffb
    8000665c:	d88080e7          	jalr	-632(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80006660:	0304b503          	ld	a0,48(s1)
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	d7c080e7          	jalr	-644(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    8000666c:	0084b783          	ld	a5,8(s1)
    80006670:	0144a703          	lw	a4,20(s1)
    80006674:	00271713          	slli	a4,a4,0x2
    80006678:	00e787b3          	add	a5,a5,a4
    8000667c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006680:	0144a783          	lw	a5,20(s1)
    80006684:	0017879b          	addiw	a5,a5,1
    80006688:	0004a703          	lw	a4,0(s1)
    8000668c:	02e7e7bb          	remw	a5,a5,a4
    80006690:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006694:	0304b503          	ld	a0,48(s1)
    80006698:	ffffb097          	auipc	ra,0xffffb
    8000669c:	d74080e7          	jalr	-652(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    800066a0:	0204b503          	ld	a0,32(s1)
    800066a4:	ffffb097          	auipc	ra,0xffffb
    800066a8:	d68080e7          	jalr	-664(ra) # 8000140c <sem_signal>

}
    800066ac:	01813083          	ld	ra,24(sp)
    800066b0:	01013403          	ld	s0,16(sp)
    800066b4:	00813483          	ld	s1,8(sp)
    800066b8:	00013903          	ld	s2,0(sp)
    800066bc:	02010113          	addi	sp,sp,32
    800066c0:	00008067          	ret

00000000800066c4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800066c4:	fe010113          	addi	sp,sp,-32
    800066c8:	00113c23          	sd	ra,24(sp)
    800066cc:	00813823          	sd	s0,16(sp)
    800066d0:	00913423          	sd	s1,8(sp)
    800066d4:	01213023          	sd	s2,0(sp)
    800066d8:	02010413          	addi	s0,sp,32
    800066dc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800066e0:	02053503          	ld	a0,32(a0)
    800066e4:	ffffb097          	auipc	ra,0xffffb
    800066e8:	cfc080e7          	jalr	-772(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    800066ec:	0284b503          	ld	a0,40(s1)
    800066f0:	ffffb097          	auipc	ra,0xffffb
    800066f4:	cf0080e7          	jalr	-784(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    800066f8:	0084b703          	ld	a4,8(s1)
    800066fc:	0104a783          	lw	a5,16(s1)
    80006700:	00279693          	slli	a3,a5,0x2
    80006704:	00d70733          	add	a4,a4,a3
    80006708:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000670c:	0017879b          	addiw	a5,a5,1
    80006710:	0004a703          	lw	a4,0(s1)
    80006714:	02e7e7bb          	remw	a5,a5,a4
    80006718:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000671c:	0284b503          	ld	a0,40(s1)
    80006720:	ffffb097          	auipc	ra,0xffffb
    80006724:	cec080e7          	jalr	-788(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80006728:	0184b503          	ld	a0,24(s1)
    8000672c:	ffffb097          	auipc	ra,0xffffb
    80006730:	ce0080e7          	jalr	-800(ra) # 8000140c <sem_signal>

    return ret;
}
    80006734:	00090513          	mv	a0,s2
    80006738:	01813083          	ld	ra,24(sp)
    8000673c:	01013403          	ld	s0,16(sp)
    80006740:	00813483          	ld	s1,8(sp)
    80006744:	00013903          	ld	s2,0(sp)
    80006748:	02010113          	addi	sp,sp,32
    8000674c:	00008067          	ret

0000000080006750 <start>:
    80006750:	ff010113          	addi	sp,sp,-16
    80006754:	00813423          	sd	s0,8(sp)
    80006758:	01010413          	addi	s0,sp,16
    8000675c:	300027f3          	csrr	a5,mstatus
    80006760:	ffffe737          	lui	a4,0xffffe
    80006764:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed93f>
    80006768:	00e7f7b3          	and	a5,a5,a4
    8000676c:	00001737          	lui	a4,0x1
    80006770:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006774:	00e7e7b3          	or	a5,a5,a4
    80006778:	30079073          	csrw	mstatus,a5
    8000677c:	00000797          	auipc	a5,0x0
    80006780:	16078793          	addi	a5,a5,352 # 800068dc <system_main>
    80006784:	34179073          	csrw	mepc,a5
    80006788:	00000793          	li	a5,0
    8000678c:	18079073          	csrw	satp,a5
    80006790:	000107b7          	lui	a5,0x10
    80006794:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006798:	30279073          	csrw	medeleg,a5
    8000679c:	30379073          	csrw	mideleg,a5
    800067a0:	104027f3          	csrr	a5,sie
    800067a4:	2227e793          	ori	a5,a5,546
    800067a8:	10479073          	csrw	sie,a5
    800067ac:	fff00793          	li	a5,-1
    800067b0:	00a7d793          	srli	a5,a5,0xa
    800067b4:	3b079073          	csrw	pmpaddr0,a5
    800067b8:	00f00793          	li	a5,15
    800067bc:	3a079073          	csrw	pmpcfg0,a5
    800067c0:	f14027f3          	csrr	a5,mhartid
    800067c4:	0200c737          	lui	a4,0x200c
    800067c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800067cc:	0007869b          	sext.w	a3,a5
    800067d0:	00269713          	slli	a4,a3,0x2
    800067d4:	000f4637          	lui	a2,0xf4
    800067d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067dc:	00d70733          	add	a4,a4,a3
    800067e0:	0037979b          	slliw	a5,a5,0x3
    800067e4:	020046b7          	lui	a3,0x2004
    800067e8:	00d787b3          	add	a5,a5,a3
    800067ec:	00c585b3          	add	a1,a1,a2
    800067f0:	00371693          	slli	a3,a4,0x3
    800067f4:	00009717          	auipc	a4,0x9
    800067f8:	46c70713          	addi	a4,a4,1132 # 8000fc60 <timer_scratch>
    800067fc:	00b7b023          	sd	a1,0(a5)
    80006800:	00d70733          	add	a4,a4,a3
    80006804:	00f73c23          	sd	a5,24(a4)
    80006808:	02c73023          	sd	a2,32(a4)
    8000680c:	34071073          	csrw	mscratch,a4
    80006810:	00000797          	auipc	a5,0x0
    80006814:	6e078793          	addi	a5,a5,1760 # 80006ef0 <timervec>
    80006818:	30579073          	csrw	mtvec,a5
    8000681c:	300027f3          	csrr	a5,mstatus
    80006820:	0087e793          	ori	a5,a5,8
    80006824:	30079073          	csrw	mstatus,a5
    80006828:	304027f3          	csrr	a5,mie
    8000682c:	0807e793          	ori	a5,a5,128
    80006830:	30479073          	csrw	mie,a5
    80006834:	f14027f3          	csrr	a5,mhartid
    80006838:	0007879b          	sext.w	a5,a5
    8000683c:	00078213          	mv	tp,a5
    80006840:	30200073          	mret
    80006844:	00813403          	ld	s0,8(sp)
    80006848:	01010113          	addi	sp,sp,16
    8000684c:	00008067          	ret

0000000080006850 <timerinit>:
    80006850:	ff010113          	addi	sp,sp,-16
    80006854:	00813423          	sd	s0,8(sp)
    80006858:	01010413          	addi	s0,sp,16
    8000685c:	f14027f3          	csrr	a5,mhartid
    80006860:	0200c737          	lui	a4,0x200c
    80006864:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006868:	0007869b          	sext.w	a3,a5
    8000686c:	00269713          	slli	a4,a3,0x2
    80006870:	000f4637          	lui	a2,0xf4
    80006874:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006878:	00d70733          	add	a4,a4,a3
    8000687c:	0037979b          	slliw	a5,a5,0x3
    80006880:	020046b7          	lui	a3,0x2004
    80006884:	00d787b3          	add	a5,a5,a3
    80006888:	00c585b3          	add	a1,a1,a2
    8000688c:	00371693          	slli	a3,a4,0x3
    80006890:	00009717          	auipc	a4,0x9
    80006894:	3d070713          	addi	a4,a4,976 # 8000fc60 <timer_scratch>
    80006898:	00b7b023          	sd	a1,0(a5)
    8000689c:	00d70733          	add	a4,a4,a3
    800068a0:	00f73c23          	sd	a5,24(a4)
    800068a4:	02c73023          	sd	a2,32(a4)
    800068a8:	34071073          	csrw	mscratch,a4
    800068ac:	00000797          	auipc	a5,0x0
    800068b0:	64478793          	addi	a5,a5,1604 # 80006ef0 <timervec>
    800068b4:	30579073          	csrw	mtvec,a5
    800068b8:	300027f3          	csrr	a5,mstatus
    800068bc:	0087e793          	ori	a5,a5,8
    800068c0:	30079073          	csrw	mstatus,a5
    800068c4:	304027f3          	csrr	a5,mie
    800068c8:	0807e793          	ori	a5,a5,128
    800068cc:	30479073          	csrw	mie,a5
    800068d0:	00813403          	ld	s0,8(sp)
    800068d4:	01010113          	addi	sp,sp,16
    800068d8:	00008067          	ret

00000000800068dc <system_main>:
    800068dc:	fe010113          	addi	sp,sp,-32
    800068e0:	00813823          	sd	s0,16(sp)
    800068e4:	00913423          	sd	s1,8(sp)
    800068e8:	00113c23          	sd	ra,24(sp)
    800068ec:	02010413          	addi	s0,sp,32
    800068f0:	00000097          	auipc	ra,0x0
    800068f4:	0c4080e7          	jalr	196(ra) # 800069b4 <cpuid>
    800068f8:	00005497          	auipc	s1,0x5
    800068fc:	23848493          	addi	s1,s1,568 # 8000bb30 <started>
    80006900:	02050263          	beqz	a0,80006924 <system_main+0x48>
    80006904:	0004a783          	lw	a5,0(s1)
    80006908:	0007879b          	sext.w	a5,a5
    8000690c:	fe078ce3          	beqz	a5,80006904 <system_main+0x28>
    80006910:	0ff0000f          	fence
    80006914:	00003517          	auipc	a0,0x3
    80006918:	c6450513          	addi	a0,a0,-924 # 80009578 <_ZL6digits+0x70>
    8000691c:	00001097          	auipc	ra,0x1
    80006920:	a70080e7          	jalr	-1424(ra) # 8000738c <panic>
    80006924:	00001097          	auipc	ra,0x1
    80006928:	9c4080e7          	jalr	-1596(ra) # 800072e8 <consoleinit>
    8000692c:	00001097          	auipc	ra,0x1
    80006930:	150080e7          	jalr	336(ra) # 80007a7c <printfinit>
    80006934:	00002517          	auipc	a0,0x2
    80006938:	7cc50513          	addi	a0,a0,1996 # 80009100 <CONSOLE_STATUS+0xf0>
    8000693c:	00001097          	auipc	ra,0x1
    80006940:	aac080e7          	jalr	-1364(ra) # 800073e8 <__printf>
    80006944:	00003517          	auipc	a0,0x3
    80006948:	c0450513          	addi	a0,a0,-1020 # 80009548 <_ZL6digits+0x40>
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	a9c080e7          	jalr	-1380(ra) # 800073e8 <__printf>
    80006954:	00002517          	auipc	a0,0x2
    80006958:	7ac50513          	addi	a0,a0,1964 # 80009100 <CONSOLE_STATUS+0xf0>
    8000695c:	00001097          	auipc	ra,0x1
    80006960:	a8c080e7          	jalr	-1396(ra) # 800073e8 <__printf>
    80006964:	00001097          	auipc	ra,0x1
    80006968:	4a4080e7          	jalr	1188(ra) # 80007e08 <kinit>
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	148080e7          	jalr	328(ra) # 80006ab4 <trapinit>
    80006974:	00000097          	auipc	ra,0x0
    80006978:	16c080e7          	jalr	364(ra) # 80006ae0 <trapinithart>
    8000697c:	00000097          	auipc	ra,0x0
    80006980:	5b4080e7          	jalr	1460(ra) # 80006f30 <plicinit>
    80006984:	00000097          	auipc	ra,0x0
    80006988:	5d4080e7          	jalr	1492(ra) # 80006f58 <plicinithart>
    8000698c:	00000097          	auipc	ra,0x0
    80006990:	078080e7          	jalr	120(ra) # 80006a04 <userinit>
    80006994:	0ff0000f          	fence
    80006998:	00100793          	li	a5,1
    8000699c:	00003517          	auipc	a0,0x3
    800069a0:	bc450513          	addi	a0,a0,-1084 # 80009560 <_ZL6digits+0x58>
    800069a4:	00f4a023          	sw	a5,0(s1)
    800069a8:	00001097          	auipc	ra,0x1
    800069ac:	a40080e7          	jalr	-1472(ra) # 800073e8 <__printf>
    800069b0:	0000006f          	j	800069b0 <system_main+0xd4>

00000000800069b4 <cpuid>:
    800069b4:	ff010113          	addi	sp,sp,-16
    800069b8:	00813423          	sd	s0,8(sp)
    800069bc:	01010413          	addi	s0,sp,16
    800069c0:	00020513          	mv	a0,tp
    800069c4:	00813403          	ld	s0,8(sp)
    800069c8:	0005051b          	sext.w	a0,a0
    800069cc:	01010113          	addi	sp,sp,16
    800069d0:	00008067          	ret

00000000800069d4 <mycpu>:
    800069d4:	ff010113          	addi	sp,sp,-16
    800069d8:	00813423          	sd	s0,8(sp)
    800069dc:	01010413          	addi	s0,sp,16
    800069e0:	00020793          	mv	a5,tp
    800069e4:	00813403          	ld	s0,8(sp)
    800069e8:	0007879b          	sext.w	a5,a5
    800069ec:	00779793          	slli	a5,a5,0x7
    800069f0:	0000a517          	auipc	a0,0xa
    800069f4:	2a050513          	addi	a0,a0,672 # 80010c90 <cpus>
    800069f8:	00f50533          	add	a0,a0,a5
    800069fc:	01010113          	addi	sp,sp,16
    80006a00:	00008067          	ret

0000000080006a04 <userinit>:
    80006a04:	ff010113          	addi	sp,sp,-16
    80006a08:	00813423          	sd	s0,8(sp)
    80006a0c:	01010413          	addi	s0,sp,16
    80006a10:	00813403          	ld	s0,8(sp)
    80006a14:	01010113          	addi	sp,sp,16
    80006a18:	ffffd317          	auipc	t1,0xffffd
    80006a1c:	bf430067          	jr	-1036(t1) # 8000360c <main>

0000000080006a20 <either_copyout>:
    80006a20:	ff010113          	addi	sp,sp,-16
    80006a24:	00813023          	sd	s0,0(sp)
    80006a28:	00113423          	sd	ra,8(sp)
    80006a2c:	01010413          	addi	s0,sp,16
    80006a30:	02051663          	bnez	a0,80006a5c <either_copyout+0x3c>
    80006a34:	00058513          	mv	a0,a1
    80006a38:	00060593          	mv	a1,a2
    80006a3c:	0006861b          	sext.w	a2,a3
    80006a40:	00002097          	auipc	ra,0x2
    80006a44:	c54080e7          	jalr	-940(ra) # 80008694 <__memmove>
    80006a48:	00813083          	ld	ra,8(sp)
    80006a4c:	00013403          	ld	s0,0(sp)
    80006a50:	00000513          	li	a0,0
    80006a54:	01010113          	addi	sp,sp,16
    80006a58:	00008067          	ret
    80006a5c:	00003517          	auipc	a0,0x3
    80006a60:	b4450513          	addi	a0,a0,-1212 # 800095a0 <_ZL6digits+0x98>
    80006a64:	00001097          	auipc	ra,0x1
    80006a68:	928080e7          	jalr	-1752(ra) # 8000738c <panic>

0000000080006a6c <either_copyin>:
    80006a6c:	ff010113          	addi	sp,sp,-16
    80006a70:	00813023          	sd	s0,0(sp)
    80006a74:	00113423          	sd	ra,8(sp)
    80006a78:	01010413          	addi	s0,sp,16
    80006a7c:	02059463          	bnez	a1,80006aa4 <either_copyin+0x38>
    80006a80:	00060593          	mv	a1,a2
    80006a84:	0006861b          	sext.w	a2,a3
    80006a88:	00002097          	auipc	ra,0x2
    80006a8c:	c0c080e7          	jalr	-1012(ra) # 80008694 <__memmove>
    80006a90:	00813083          	ld	ra,8(sp)
    80006a94:	00013403          	ld	s0,0(sp)
    80006a98:	00000513          	li	a0,0
    80006a9c:	01010113          	addi	sp,sp,16
    80006aa0:	00008067          	ret
    80006aa4:	00003517          	auipc	a0,0x3
    80006aa8:	b2450513          	addi	a0,a0,-1244 # 800095c8 <_ZL6digits+0xc0>
    80006aac:	00001097          	auipc	ra,0x1
    80006ab0:	8e0080e7          	jalr	-1824(ra) # 8000738c <panic>

0000000080006ab4 <trapinit>:
    80006ab4:	ff010113          	addi	sp,sp,-16
    80006ab8:	00813423          	sd	s0,8(sp)
    80006abc:	01010413          	addi	s0,sp,16
    80006ac0:	00813403          	ld	s0,8(sp)
    80006ac4:	00003597          	auipc	a1,0x3
    80006ac8:	b2c58593          	addi	a1,a1,-1236 # 800095f0 <_ZL6digits+0xe8>
    80006acc:	0000a517          	auipc	a0,0xa
    80006ad0:	24450513          	addi	a0,a0,580 # 80010d10 <tickslock>
    80006ad4:	01010113          	addi	sp,sp,16
    80006ad8:	00001317          	auipc	t1,0x1
    80006adc:	5c030067          	jr	1472(t1) # 80008098 <initlock>

0000000080006ae0 <trapinithart>:
    80006ae0:	ff010113          	addi	sp,sp,-16
    80006ae4:	00813423          	sd	s0,8(sp)
    80006ae8:	01010413          	addi	s0,sp,16
    80006aec:	00000797          	auipc	a5,0x0
    80006af0:	2f478793          	addi	a5,a5,756 # 80006de0 <kernelvec>
    80006af4:	10579073          	csrw	stvec,a5
    80006af8:	00813403          	ld	s0,8(sp)
    80006afc:	01010113          	addi	sp,sp,16
    80006b00:	00008067          	ret

0000000080006b04 <usertrap>:
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00813423          	sd	s0,8(sp)
    80006b0c:	01010413          	addi	s0,sp,16
    80006b10:	00813403          	ld	s0,8(sp)
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <usertrapret>:
    80006b1c:	ff010113          	addi	sp,sp,-16
    80006b20:	00813423          	sd	s0,8(sp)
    80006b24:	01010413          	addi	s0,sp,16
    80006b28:	00813403          	ld	s0,8(sp)
    80006b2c:	01010113          	addi	sp,sp,16
    80006b30:	00008067          	ret

0000000080006b34 <kerneltrap>:
    80006b34:	fe010113          	addi	sp,sp,-32
    80006b38:	00813823          	sd	s0,16(sp)
    80006b3c:	00113c23          	sd	ra,24(sp)
    80006b40:	00913423          	sd	s1,8(sp)
    80006b44:	02010413          	addi	s0,sp,32
    80006b48:	142025f3          	csrr	a1,scause
    80006b4c:	100027f3          	csrr	a5,sstatus
    80006b50:	0027f793          	andi	a5,a5,2
    80006b54:	10079c63          	bnez	a5,80006c6c <kerneltrap+0x138>
    80006b58:	142027f3          	csrr	a5,scause
    80006b5c:	0207ce63          	bltz	a5,80006b98 <kerneltrap+0x64>
    80006b60:	00003517          	auipc	a0,0x3
    80006b64:	ad850513          	addi	a0,a0,-1320 # 80009638 <_ZL6digits+0x130>
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	880080e7          	jalr	-1920(ra) # 800073e8 <__printf>
    80006b70:	141025f3          	csrr	a1,sepc
    80006b74:	14302673          	csrr	a2,stval
    80006b78:	00003517          	auipc	a0,0x3
    80006b7c:	ad050513          	addi	a0,a0,-1328 # 80009648 <_ZL6digits+0x140>
    80006b80:	00001097          	auipc	ra,0x1
    80006b84:	868080e7          	jalr	-1944(ra) # 800073e8 <__printf>
    80006b88:	00003517          	auipc	a0,0x3
    80006b8c:	ad850513          	addi	a0,a0,-1320 # 80009660 <_ZL6digits+0x158>
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	7fc080e7          	jalr	2044(ra) # 8000738c <panic>
    80006b98:	0ff7f713          	andi	a4,a5,255
    80006b9c:	00900693          	li	a3,9
    80006ba0:	04d70063          	beq	a4,a3,80006be0 <kerneltrap+0xac>
    80006ba4:	fff00713          	li	a4,-1
    80006ba8:	03f71713          	slli	a4,a4,0x3f
    80006bac:	00170713          	addi	a4,a4,1
    80006bb0:	fae798e3          	bne	a5,a4,80006b60 <kerneltrap+0x2c>
    80006bb4:	00000097          	auipc	ra,0x0
    80006bb8:	e00080e7          	jalr	-512(ra) # 800069b4 <cpuid>
    80006bbc:	06050663          	beqz	a0,80006c28 <kerneltrap+0xf4>
    80006bc0:	144027f3          	csrr	a5,sip
    80006bc4:	ffd7f793          	andi	a5,a5,-3
    80006bc8:	14479073          	csrw	sip,a5
    80006bcc:	01813083          	ld	ra,24(sp)
    80006bd0:	01013403          	ld	s0,16(sp)
    80006bd4:	00813483          	ld	s1,8(sp)
    80006bd8:	02010113          	addi	sp,sp,32
    80006bdc:	00008067          	ret
    80006be0:	00000097          	auipc	ra,0x0
    80006be4:	3c4080e7          	jalr	964(ra) # 80006fa4 <plic_claim>
    80006be8:	00a00793          	li	a5,10
    80006bec:	00050493          	mv	s1,a0
    80006bf0:	06f50863          	beq	a0,a5,80006c60 <kerneltrap+0x12c>
    80006bf4:	fc050ce3          	beqz	a0,80006bcc <kerneltrap+0x98>
    80006bf8:	00050593          	mv	a1,a0
    80006bfc:	00003517          	auipc	a0,0x3
    80006c00:	a1c50513          	addi	a0,a0,-1508 # 80009618 <_ZL6digits+0x110>
    80006c04:	00000097          	auipc	ra,0x0
    80006c08:	7e4080e7          	jalr	2020(ra) # 800073e8 <__printf>
    80006c0c:	01013403          	ld	s0,16(sp)
    80006c10:	01813083          	ld	ra,24(sp)
    80006c14:	00048513          	mv	a0,s1
    80006c18:	00813483          	ld	s1,8(sp)
    80006c1c:	02010113          	addi	sp,sp,32
    80006c20:	00000317          	auipc	t1,0x0
    80006c24:	3bc30067          	jr	956(t1) # 80006fdc <plic_complete>
    80006c28:	0000a517          	auipc	a0,0xa
    80006c2c:	0e850513          	addi	a0,a0,232 # 80010d10 <tickslock>
    80006c30:	00001097          	auipc	ra,0x1
    80006c34:	48c080e7          	jalr	1164(ra) # 800080bc <acquire>
    80006c38:	00005717          	auipc	a4,0x5
    80006c3c:	efc70713          	addi	a4,a4,-260 # 8000bb34 <ticks>
    80006c40:	00072783          	lw	a5,0(a4)
    80006c44:	0000a517          	auipc	a0,0xa
    80006c48:	0cc50513          	addi	a0,a0,204 # 80010d10 <tickslock>
    80006c4c:	0017879b          	addiw	a5,a5,1
    80006c50:	00f72023          	sw	a5,0(a4)
    80006c54:	00001097          	auipc	ra,0x1
    80006c58:	534080e7          	jalr	1332(ra) # 80008188 <release>
    80006c5c:	f65ff06f          	j	80006bc0 <kerneltrap+0x8c>
    80006c60:	00001097          	auipc	ra,0x1
    80006c64:	090080e7          	jalr	144(ra) # 80007cf0 <uartintr>
    80006c68:	fa5ff06f          	j	80006c0c <kerneltrap+0xd8>
    80006c6c:	00003517          	auipc	a0,0x3
    80006c70:	98c50513          	addi	a0,a0,-1652 # 800095f8 <_ZL6digits+0xf0>
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	718080e7          	jalr	1816(ra) # 8000738c <panic>

0000000080006c7c <clockintr>:
    80006c7c:	fe010113          	addi	sp,sp,-32
    80006c80:	00813823          	sd	s0,16(sp)
    80006c84:	00913423          	sd	s1,8(sp)
    80006c88:	00113c23          	sd	ra,24(sp)
    80006c8c:	02010413          	addi	s0,sp,32
    80006c90:	0000a497          	auipc	s1,0xa
    80006c94:	08048493          	addi	s1,s1,128 # 80010d10 <tickslock>
    80006c98:	00048513          	mv	a0,s1
    80006c9c:	00001097          	auipc	ra,0x1
    80006ca0:	420080e7          	jalr	1056(ra) # 800080bc <acquire>
    80006ca4:	00005717          	auipc	a4,0x5
    80006ca8:	e9070713          	addi	a4,a4,-368 # 8000bb34 <ticks>
    80006cac:	00072783          	lw	a5,0(a4)
    80006cb0:	01013403          	ld	s0,16(sp)
    80006cb4:	01813083          	ld	ra,24(sp)
    80006cb8:	00048513          	mv	a0,s1
    80006cbc:	0017879b          	addiw	a5,a5,1
    80006cc0:	00813483          	ld	s1,8(sp)
    80006cc4:	00f72023          	sw	a5,0(a4)
    80006cc8:	02010113          	addi	sp,sp,32
    80006ccc:	00001317          	auipc	t1,0x1
    80006cd0:	4bc30067          	jr	1212(t1) # 80008188 <release>

0000000080006cd4 <devintr>:
    80006cd4:	142027f3          	csrr	a5,scause
    80006cd8:	00000513          	li	a0,0
    80006cdc:	0007c463          	bltz	a5,80006ce4 <devintr+0x10>
    80006ce0:	00008067          	ret
    80006ce4:	fe010113          	addi	sp,sp,-32
    80006ce8:	00813823          	sd	s0,16(sp)
    80006cec:	00113c23          	sd	ra,24(sp)
    80006cf0:	00913423          	sd	s1,8(sp)
    80006cf4:	02010413          	addi	s0,sp,32
    80006cf8:	0ff7f713          	andi	a4,a5,255
    80006cfc:	00900693          	li	a3,9
    80006d00:	04d70c63          	beq	a4,a3,80006d58 <devintr+0x84>
    80006d04:	fff00713          	li	a4,-1
    80006d08:	03f71713          	slli	a4,a4,0x3f
    80006d0c:	00170713          	addi	a4,a4,1
    80006d10:	00e78c63          	beq	a5,a4,80006d28 <devintr+0x54>
    80006d14:	01813083          	ld	ra,24(sp)
    80006d18:	01013403          	ld	s0,16(sp)
    80006d1c:	00813483          	ld	s1,8(sp)
    80006d20:	02010113          	addi	sp,sp,32
    80006d24:	00008067          	ret
    80006d28:	00000097          	auipc	ra,0x0
    80006d2c:	c8c080e7          	jalr	-884(ra) # 800069b4 <cpuid>
    80006d30:	06050663          	beqz	a0,80006d9c <devintr+0xc8>
    80006d34:	144027f3          	csrr	a5,sip
    80006d38:	ffd7f793          	andi	a5,a5,-3
    80006d3c:	14479073          	csrw	sip,a5
    80006d40:	01813083          	ld	ra,24(sp)
    80006d44:	01013403          	ld	s0,16(sp)
    80006d48:	00813483          	ld	s1,8(sp)
    80006d4c:	00200513          	li	a0,2
    80006d50:	02010113          	addi	sp,sp,32
    80006d54:	00008067          	ret
    80006d58:	00000097          	auipc	ra,0x0
    80006d5c:	24c080e7          	jalr	588(ra) # 80006fa4 <plic_claim>
    80006d60:	00a00793          	li	a5,10
    80006d64:	00050493          	mv	s1,a0
    80006d68:	06f50663          	beq	a0,a5,80006dd4 <devintr+0x100>
    80006d6c:	00100513          	li	a0,1
    80006d70:	fa0482e3          	beqz	s1,80006d14 <devintr+0x40>
    80006d74:	00048593          	mv	a1,s1
    80006d78:	00003517          	auipc	a0,0x3
    80006d7c:	8a050513          	addi	a0,a0,-1888 # 80009618 <_ZL6digits+0x110>
    80006d80:	00000097          	auipc	ra,0x0
    80006d84:	668080e7          	jalr	1640(ra) # 800073e8 <__printf>
    80006d88:	00048513          	mv	a0,s1
    80006d8c:	00000097          	auipc	ra,0x0
    80006d90:	250080e7          	jalr	592(ra) # 80006fdc <plic_complete>
    80006d94:	00100513          	li	a0,1
    80006d98:	f7dff06f          	j	80006d14 <devintr+0x40>
    80006d9c:	0000a517          	auipc	a0,0xa
    80006da0:	f7450513          	addi	a0,a0,-140 # 80010d10 <tickslock>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	318080e7          	jalr	792(ra) # 800080bc <acquire>
    80006dac:	00005717          	auipc	a4,0x5
    80006db0:	d8870713          	addi	a4,a4,-632 # 8000bb34 <ticks>
    80006db4:	00072783          	lw	a5,0(a4)
    80006db8:	0000a517          	auipc	a0,0xa
    80006dbc:	f5850513          	addi	a0,a0,-168 # 80010d10 <tickslock>
    80006dc0:	0017879b          	addiw	a5,a5,1
    80006dc4:	00f72023          	sw	a5,0(a4)
    80006dc8:	00001097          	auipc	ra,0x1
    80006dcc:	3c0080e7          	jalr	960(ra) # 80008188 <release>
    80006dd0:	f65ff06f          	j	80006d34 <devintr+0x60>
    80006dd4:	00001097          	auipc	ra,0x1
    80006dd8:	f1c080e7          	jalr	-228(ra) # 80007cf0 <uartintr>
    80006ddc:	fadff06f          	j	80006d88 <devintr+0xb4>

0000000080006de0 <kernelvec>:
    80006de0:	f0010113          	addi	sp,sp,-256
    80006de4:	00113023          	sd	ra,0(sp)
    80006de8:	00213423          	sd	sp,8(sp)
    80006dec:	00313823          	sd	gp,16(sp)
    80006df0:	00413c23          	sd	tp,24(sp)
    80006df4:	02513023          	sd	t0,32(sp)
    80006df8:	02613423          	sd	t1,40(sp)
    80006dfc:	02713823          	sd	t2,48(sp)
    80006e00:	02813c23          	sd	s0,56(sp)
    80006e04:	04913023          	sd	s1,64(sp)
    80006e08:	04a13423          	sd	a0,72(sp)
    80006e0c:	04b13823          	sd	a1,80(sp)
    80006e10:	04c13c23          	sd	a2,88(sp)
    80006e14:	06d13023          	sd	a3,96(sp)
    80006e18:	06e13423          	sd	a4,104(sp)
    80006e1c:	06f13823          	sd	a5,112(sp)
    80006e20:	07013c23          	sd	a6,120(sp)
    80006e24:	09113023          	sd	a7,128(sp)
    80006e28:	09213423          	sd	s2,136(sp)
    80006e2c:	09313823          	sd	s3,144(sp)
    80006e30:	09413c23          	sd	s4,152(sp)
    80006e34:	0b513023          	sd	s5,160(sp)
    80006e38:	0b613423          	sd	s6,168(sp)
    80006e3c:	0b713823          	sd	s7,176(sp)
    80006e40:	0b813c23          	sd	s8,184(sp)
    80006e44:	0d913023          	sd	s9,192(sp)
    80006e48:	0da13423          	sd	s10,200(sp)
    80006e4c:	0db13823          	sd	s11,208(sp)
    80006e50:	0dc13c23          	sd	t3,216(sp)
    80006e54:	0fd13023          	sd	t4,224(sp)
    80006e58:	0fe13423          	sd	t5,232(sp)
    80006e5c:	0ff13823          	sd	t6,240(sp)
    80006e60:	cd5ff0ef          	jal	ra,80006b34 <kerneltrap>
    80006e64:	00013083          	ld	ra,0(sp)
    80006e68:	00813103          	ld	sp,8(sp)
    80006e6c:	01013183          	ld	gp,16(sp)
    80006e70:	02013283          	ld	t0,32(sp)
    80006e74:	02813303          	ld	t1,40(sp)
    80006e78:	03013383          	ld	t2,48(sp)
    80006e7c:	03813403          	ld	s0,56(sp)
    80006e80:	04013483          	ld	s1,64(sp)
    80006e84:	04813503          	ld	a0,72(sp)
    80006e88:	05013583          	ld	a1,80(sp)
    80006e8c:	05813603          	ld	a2,88(sp)
    80006e90:	06013683          	ld	a3,96(sp)
    80006e94:	06813703          	ld	a4,104(sp)
    80006e98:	07013783          	ld	a5,112(sp)
    80006e9c:	07813803          	ld	a6,120(sp)
    80006ea0:	08013883          	ld	a7,128(sp)
    80006ea4:	08813903          	ld	s2,136(sp)
    80006ea8:	09013983          	ld	s3,144(sp)
    80006eac:	09813a03          	ld	s4,152(sp)
    80006eb0:	0a013a83          	ld	s5,160(sp)
    80006eb4:	0a813b03          	ld	s6,168(sp)
    80006eb8:	0b013b83          	ld	s7,176(sp)
    80006ebc:	0b813c03          	ld	s8,184(sp)
    80006ec0:	0c013c83          	ld	s9,192(sp)
    80006ec4:	0c813d03          	ld	s10,200(sp)
    80006ec8:	0d013d83          	ld	s11,208(sp)
    80006ecc:	0d813e03          	ld	t3,216(sp)
    80006ed0:	0e013e83          	ld	t4,224(sp)
    80006ed4:	0e813f03          	ld	t5,232(sp)
    80006ed8:	0f013f83          	ld	t6,240(sp)
    80006edc:	10010113          	addi	sp,sp,256
    80006ee0:	10200073          	sret
    80006ee4:	00000013          	nop
    80006ee8:	00000013          	nop
    80006eec:	00000013          	nop

0000000080006ef0 <timervec>:
    80006ef0:	34051573          	csrrw	a0,mscratch,a0
    80006ef4:	00b53023          	sd	a1,0(a0)
    80006ef8:	00c53423          	sd	a2,8(a0)
    80006efc:	00d53823          	sd	a3,16(a0)
    80006f00:	01853583          	ld	a1,24(a0)
    80006f04:	02053603          	ld	a2,32(a0)
    80006f08:	0005b683          	ld	a3,0(a1)
    80006f0c:	00c686b3          	add	a3,a3,a2
    80006f10:	00d5b023          	sd	a3,0(a1)
    80006f14:	00200593          	li	a1,2
    80006f18:	14459073          	csrw	sip,a1
    80006f1c:	01053683          	ld	a3,16(a0)
    80006f20:	00853603          	ld	a2,8(a0)
    80006f24:	00053583          	ld	a1,0(a0)
    80006f28:	34051573          	csrrw	a0,mscratch,a0
    80006f2c:	30200073          	mret

0000000080006f30 <plicinit>:
    80006f30:	ff010113          	addi	sp,sp,-16
    80006f34:	00813423          	sd	s0,8(sp)
    80006f38:	01010413          	addi	s0,sp,16
    80006f3c:	00813403          	ld	s0,8(sp)
    80006f40:	0c0007b7          	lui	a5,0xc000
    80006f44:	00100713          	li	a4,1
    80006f48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006f4c:	00e7a223          	sw	a4,4(a5)
    80006f50:	01010113          	addi	sp,sp,16
    80006f54:	00008067          	ret

0000000080006f58 <plicinithart>:
    80006f58:	ff010113          	addi	sp,sp,-16
    80006f5c:	00813023          	sd	s0,0(sp)
    80006f60:	00113423          	sd	ra,8(sp)
    80006f64:	01010413          	addi	s0,sp,16
    80006f68:	00000097          	auipc	ra,0x0
    80006f6c:	a4c080e7          	jalr	-1460(ra) # 800069b4 <cpuid>
    80006f70:	0085171b          	slliw	a4,a0,0x8
    80006f74:	0c0027b7          	lui	a5,0xc002
    80006f78:	00e787b3          	add	a5,a5,a4
    80006f7c:	40200713          	li	a4,1026
    80006f80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006f84:	00813083          	ld	ra,8(sp)
    80006f88:	00013403          	ld	s0,0(sp)
    80006f8c:	00d5151b          	slliw	a0,a0,0xd
    80006f90:	0c2017b7          	lui	a5,0xc201
    80006f94:	00a78533          	add	a0,a5,a0
    80006f98:	00052023          	sw	zero,0(a0)
    80006f9c:	01010113          	addi	sp,sp,16
    80006fa0:	00008067          	ret

0000000080006fa4 <plic_claim>:
    80006fa4:	ff010113          	addi	sp,sp,-16
    80006fa8:	00813023          	sd	s0,0(sp)
    80006fac:	00113423          	sd	ra,8(sp)
    80006fb0:	01010413          	addi	s0,sp,16
    80006fb4:	00000097          	auipc	ra,0x0
    80006fb8:	a00080e7          	jalr	-1536(ra) # 800069b4 <cpuid>
    80006fbc:	00813083          	ld	ra,8(sp)
    80006fc0:	00013403          	ld	s0,0(sp)
    80006fc4:	00d5151b          	slliw	a0,a0,0xd
    80006fc8:	0c2017b7          	lui	a5,0xc201
    80006fcc:	00a78533          	add	a0,a5,a0
    80006fd0:	00452503          	lw	a0,4(a0)
    80006fd4:	01010113          	addi	sp,sp,16
    80006fd8:	00008067          	ret

0000000080006fdc <plic_complete>:
    80006fdc:	fe010113          	addi	sp,sp,-32
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	00113c23          	sd	ra,24(sp)
    80006fec:	02010413          	addi	s0,sp,32
    80006ff0:	00050493          	mv	s1,a0
    80006ff4:	00000097          	auipc	ra,0x0
    80006ff8:	9c0080e7          	jalr	-1600(ra) # 800069b4 <cpuid>
    80006ffc:	01813083          	ld	ra,24(sp)
    80007000:	01013403          	ld	s0,16(sp)
    80007004:	00d5179b          	slliw	a5,a0,0xd
    80007008:	0c201737          	lui	a4,0xc201
    8000700c:	00f707b3          	add	a5,a4,a5
    80007010:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007014:	00813483          	ld	s1,8(sp)
    80007018:	02010113          	addi	sp,sp,32
    8000701c:	00008067          	ret

0000000080007020 <consolewrite>:
    80007020:	fb010113          	addi	sp,sp,-80
    80007024:	04813023          	sd	s0,64(sp)
    80007028:	04113423          	sd	ra,72(sp)
    8000702c:	02913c23          	sd	s1,56(sp)
    80007030:	03213823          	sd	s2,48(sp)
    80007034:	03313423          	sd	s3,40(sp)
    80007038:	03413023          	sd	s4,32(sp)
    8000703c:	01513c23          	sd	s5,24(sp)
    80007040:	05010413          	addi	s0,sp,80
    80007044:	06c05c63          	blez	a2,800070bc <consolewrite+0x9c>
    80007048:	00060993          	mv	s3,a2
    8000704c:	00050a13          	mv	s4,a0
    80007050:	00058493          	mv	s1,a1
    80007054:	00000913          	li	s2,0
    80007058:	fff00a93          	li	s5,-1
    8000705c:	01c0006f          	j	80007078 <consolewrite+0x58>
    80007060:	fbf44503          	lbu	a0,-65(s0)
    80007064:	0019091b          	addiw	s2,s2,1
    80007068:	00148493          	addi	s1,s1,1
    8000706c:	00001097          	auipc	ra,0x1
    80007070:	a9c080e7          	jalr	-1380(ra) # 80007b08 <uartputc>
    80007074:	03298063          	beq	s3,s2,80007094 <consolewrite+0x74>
    80007078:	00048613          	mv	a2,s1
    8000707c:	00100693          	li	a3,1
    80007080:	000a0593          	mv	a1,s4
    80007084:	fbf40513          	addi	a0,s0,-65
    80007088:	00000097          	auipc	ra,0x0
    8000708c:	9e4080e7          	jalr	-1564(ra) # 80006a6c <either_copyin>
    80007090:	fd5518e3          	bne	a0,s5,80007060 <consolewrite+0x40>
    80007094:	04813083          	ld	ra,72(sp)
    80007098:	04013403          	ld	s0,64(sp)
    8000709c:	03813483          	ld	s1,56(sp)
    800070a0:	02813983          	ld	s3,40(sp)
    800070a4:	02013a03          	ld	s4,32(sp)
    800070a8:	01813a83          	ld	s5,24(sp)
    800070ac:	00090513          	mv	a0,s2
    800070b0:	03013903          	ld	s2,48(sp)
    800070b4:	05010113          	addi	sp,sp,80
    800070b8:	00008067          	ret
    800070bc:	00000913          	li	s2,0
    800070c0:	fd5ff06f          	j	80007094 <consolewrite+0x74>

00000000800070c4 <consoleread>:
    800070c4:	f9010113          	addi	sp,sp,-112
    800070c8:	06813023          	sd	s0,96(sp)
    800070cc:	04913c23          	sd	s1,88(sp)
    800070d0:	05213823          	sd	s2,80(sp)
    800070d4:	05313423          	sd	s3,72(sp)
    800070d8:	05413023          	sd	s4,64(sp)
    800070dc:	03513c23          	sd	s5,56(sp)
    800070e0:	03613823          	sd	s6,48(sp)
    800070e4:	03713423          	sd	s7,40(sp)
    800070e8:	03813023          	sd	s8,32(sp)
    800070ec:	06113423          	sd	ra,104(sp)
    800070f0:	01913c23          	sd	s9,24(sp)
    800070f4:	07010413          	addi	s0,sp,112
    800070f8:	00060b93          	mv	s7,a2
    800070fc:	00050913          	mv	s2,a0
    80007100:	00058c13          	mv	s8,a1
    80007104:	00060b1b          	sext.w	s6,a2
    80007108:	0000a497          	auipc	s1,0xa
    8000710c:	c3048493          	addi	s1,s1,-976 # 80010d38 <cons>
    80007110:	00400993          	li	s3,4
    80007114:	fff00a13          	li	s4,-1
    80007118:	00a00a93          	li	s5,10
    8000711c:	05705e63          	blez	s7,80007178 <consoleread+0xb4>
    80007120:	09c4a703          	lw	a4,156(s1)
    80007124:	0984a783          	lw	a5,152(s1)
    80007128:	0007071b          	sext.w	a4,a4
    8000712c:	08e78463          	beq	a5,a4,800071b4 <consoleread+0xf0>
    80007130:	07f7f713          	andi	a4,a5,127
    80007134:	00e48733          	add	a4,s1,a4
    80007138:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000713c:	0017869b          	addiw	a3,a5,1
    80007140:	08d4ac23          	sw	a3,152(s1)
    80007144:	00070c9b          	sext.w	s9,a4
    80007148:	0b370663          	beq	a4,s3,800071f4 <consoleread+0x130>
    8000714c:	00100693          	li	a3,1
    80007150:	f9f40613          	addi	a2,s0,-97
    80007154:	000c0593          	mv	a1,s8
    80007158:	00090513          	mv	a0,s2
    8000715c:	f8e40fa3          	sb	a4,-97(s0)
    80007160:	00000097          	auipc	ra,0x0
    80007164:	8c0080e7          	jalr	-1856(ra) # 80006a20 <either_copyout>
    80007168:	01450863          	beq	a0,s4,80007178 <consoleread+0xb4>
    8000716c:	001c0c13          	addi	s8,s8,1
    80007170:	fffb8b9b          	addiw	s7,s7,-1
    80007174:	fb5c94e3          	bne	s9,s5,8000711c <consoleread+0x58>
    80007178:	000b851b          	sext.w	a0,s7
    8000717c:	06813083          	ld	ra,104(sp)
    80007180:	06013403          	ld	s0,96(sp)
    80007184:	05813483          	ld	s1,88(sp)
    80007188:	05013903          	ld	s2,80(sp)
    8000718c:	04813983          	ld	s3,72(sp)
    80007190:	04013a03          	ld	s4,64(sp)
    80007194:	03813a83          	ld	s5,56(sp)
    80007198:	02813b83          	ld	s7,40(sp)
    8000719c:	02013c03          	ld	s8,32(sp)
    800071a0:	01813c83          	ld	s9,24(sp)
    800071a4:	40ab053b          	subw	a0,s6,a0
    800071a8:	03013b03          	ld	s6,48(sp)
    800071ac:	07010113          	addi	sp,sp,112
    800071b0:	00008067          	ret
    800071b4:	00001097          	auipc	ra,0x1
    800071b8:	1d8080e7          	jalr	472(ra) # 8000838c <push_on>
    800071bc:	0984a703          	lw	a4,152(s1)
    800071c0:	09c4a783          	lw	a5,156(s1)
    800071c4:	0007879b          	sext.w	a5,a5
    800071c8:	fef70ce3          	beq	a4,a5,800071c0 <consoleread+0xfc>
    800071cc:	00001097          	auipc	ra,0x1
    800071d0:	234080e7          	jalr	564(ra) # 80008400 <pop_on>
    800071d4:	0984a783          	lw	a5,152(s1)
    800071d8:	07f7f713          	andi	a4,a5,127
    800071dc:	00e48733          	add	a4,s1,a4
    800071e0:	01874703          	lbu	a4,24(a4)
    800071e4:	0017869b          	addiw	a3,a5,1
    800071e8:	08d4ac23          	sw	a3,152(s1)
    800071ec:	00070c9b          	sext.w	s9,a4
    800071f0:	f5371ee3          	bne	a4,s3,8000714c <consoleread+0x88>
    800071f4:	000b851b          	sext.w	a0,s7
    800071f8:	f96bf2e3          	bgeu	s7,s6,8000717c <consoleread+0xb8>
    800071fc:	08f4ac23          	sw	a5,152(s1)
    80007200:	f7dff06f          	j	8000717c <consoleread+0xb8>

0000000080007204 <consputc>:
    80007204:	10000793          	li	a5,256
    80007208:	00f50663          	beq	a0,a5,80007214 <consputc+0x10>
    8000720c:	00001317          	auipc	t1,0x1
    80007210:	9f430067          	jr	-1548(t1) # 80007c00 <uartputc_sync>
    80007214:	ff010113          	addi	sp,sp,-16
    80007218:	00113423          	sd	ra,8(sp)
    8000721c:	00813023          	sd	s0,0(sp)
    80007220:	01010413          	addi	s0,sp,16
    80007224:	00800513          	li	a0,8
    80007228:	00001097          	auipc	ra,0x1
    8000722c:	9d8080e7          	jalr	-1576(ra) # 80007c00 <uartputc_sync>
    80007230:	02000513          	li	a0,32
    80007234:	00001097          	auipc	ra,0x1
    80007238:	9cc080e7          	jalr	-1588(ra) # 80007c00 <uartputc_sync>
    8000723c:	00013403          	ld	s0,0(sp)
    80007240:	00813083          	ld	ra,8(sp)
    80007244:	00800513          	li	a0,8
    80007248:	01010113          	addi	sp,sp,16
    8000724c:	00001317          	auipc	t1,0x1
    80007250:	9b430067          	jr	-1612(t1) # 80007c00 <uartputc_sync>

0000000080007254 <consoleintr>:
    80007254:	fe010113          	addi	sp,sp,-32
    80007258:	00813823          	sd	s0,16(sp)
    8000725c:	00913423          	sd	s1,8(sp)
    80007260:	01213023          	sd	s2,0(sp)
    80007264:	00113c23          	sd	ra,24(sp)
    80007268:	02010413          	addi	s0,sp,32
    8000726c:	0000a917          	auipc	s2,0xa
    80007270:	acc90913          	addi	s2,s2,-1332 # 80010d38 <cons>
    80007274:	00050493          	mv	s1,a0
    80007278:	00090513          	mv	a0,s2
    8000727c:	00001097          	auipc	ra,0x1
    80007280:	e40080e7          	jalr	-448(ra) # 800080bc <acquire>
    80007284:	02048c63          	beqz	s1,800072bc <consoleintr+0x68>
    80007288:	0a092783          	lw	a5,160(s2)
    8000728c:	09892703          	lw	a4,152(s2)
    80007290:	07f00693          	li	a3,127
    80007294:	40e7873b          	subw	a4,a5,a4
    80007298:	02e6e263          	bltu	a3,a4,800072bc <consoleintr+0x68>
    8000729c:	00d00713          	li	a4,13
    800072a0:	04e48063          	beq	s1,a4,800072e0 <consoleintr+0x8c>
    800072a4:	07f7f713          	andi	a4,a5,127
    800072a8:	00e90733          	add	a4,s2,a4
    800072ac:	0017879b          	addiw	a5,a5,1
    800072b0:	0af92023          	sw	a5,160(s2)
    800072b4:	00970c23          	sb	s1,24(a4)
    800072b8:	08f92e23          	sw	a5,156(s2)
    800072bc:	01013403          	ld	s0,16(sp)
    800072c0:	01813083          	ld	ra,24(sp)
    800072c4:	00813483          	ld	s1,8(sp)
    800072c8:	00013903          	ld	s2,0(sp)
    800072cc:	0000a517          	auipc	a0,0xa
    800072d0:	a6c50513          	addi	a0,a0,-1428 # 80010d38 <cons>
    800072d4:	02010113          	addi	sp,sp,32
    800072d8:	00001317          	auipc	t1,0x1
    800072dc:	eb030067          	jr	-336(t1) # 80008188 <release>
    800072e0:	00a00493          	li	s1,10
    800072e4:	fc1ff06f          	j	800072a4 <consoleintr+0x50>

00000000800072e8 <consoleinit>:
    800072e8:	fe010113          	addi	sp,sp,-32
    800072ec:	00113c23          	sd	ra,24(sp)
    800072f0:	00813823          	sd	s0,16(sp)
    800072f4:	00913423          	sd	s1,8(sp)
    800072f8:	02010413          	addi	s0,sp,32
    800072fc:	0000a497          	auipc	s1,0xa
    80007300:	a3c48493          	addi	s1,s1,-1476 # 80010d38 <cons>
    80007304:	00048513          	mv	a0,s1
    80007308:	00002597          	auipc	a1,0x2
    8000730c:	36858593          	addi	a1,a1,872 # 80009670 <_ZL6digits+0x168>
    80007310:	00001097          	auipc	ra,0x1
    80007314:	d88080e7          	jalr	-632(ra) # 80008098 <initlock>
    80007318:	00000097          	auipc	ra,0x0
    8000731c:	7ac080e7          	jalr	1964(ra) # 80007ac4 <uartinit>
    80007320:	01813083          	ld	ra,24(sp)
    80007324:	01013403          	ld	s0,16(sp)
    80007328:	00000797          	auipc	a5,0x0
    8000732c:	d9c78793          	addi	a5,a5,-612 # 800070c4 <consoleread>
    80007330:	0af4bc23          	sd	a5,184(s1)
    80007334:	00000797          	auipc	a5,0x0
    80007338:	cec78793          	addi	a5,a5,-788 # 80007020 <consolewrite>
    8000733c:	0cf4b023          	sd	a5,192(s1)
    80007340:	00813483          	ld	s1,8(sp)
    80007344:	02010113          	addi	sp,sp,32
    80007348:	00008067          	ret

000000008000734c <console_read>:
    8000734c:	ff010113          	addi	sp,sp,-16
    80007350:	00813423          	sd	s0,8(sp)
    80007354:	01010413          	addi	s0,sp,16
    80007358:	00813403          	ld	s0,8(sp)
    8000735c:	0000a317          	auipc	t1,0xa
    80007360:	a9433303          	ld	t1,-1388(t1) # 80010df0 <devsw+0x10>
    80007364:	01010113          	addi	sp,sp,16
    80007368:	00030067          	jr	t1

000000008000736c <console_write>:
    8000736c:	ff010113          	addi	sp,sp,-16
    80007370:	00813423          	sd	s0,8(sp)
    80007374:	01010413          	addi	s0,sp,16
    80007378:	00813403          	ld	s0,8(sp)
    8000737c:	0000a317          	auipc	t1,0xa
    80007380:	a7c33303          	ld	t1,-1412(t1) # 80010df8 <devsw+0x18>
    80007384:	01010113          	addi	sp,sp,16
    80007388:	00030067          	jr	t1

000000008000738c <panic>:
    8000738c:	fe010113          	addi	sp,sp,-32
    80007390:	00113c23          	sd	ra,24(sp)
    80007394:	00813823          	sd	s0,16(sp)
    80007398:	00913423          	sd	s1,8(sp)
    8000739c:	02010413          	addi	s0,sp,32
    800073a0:	00050493          	mv	s1,a0
    800073a4:	00002517          	auipc	a0,0x2
    800073a8:	2d450513          	addi	a0,a0,724 # 80009678 <_ZL6digits+0x170>
    800073ac:	0000a797          	auipc	a5,0xa
    800073b0:	ae07a623          	sw	zero,-1300(a5) # 80010e98 <pr+0x18>
    800073b4:	00000097          	auipc	ra,0x0
    800073b8:	034080e7          	jalr	52(ra) # 800073e8 <__printf>
    800073bc:	00048513          	mv	a0,s1
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	028080e7          	jalr	40(ra) # 800073e8 <__printf>
    800073c8:	00002517          	auipc	a0,0x2
    800073cc:	d3850513          	addi	a0,a0,-712 # 80009100 <CONSOLE_STATUS+0xf0>
    800073d0:	00000097          	auipc	ra,0x0
    800073d4:	018080e7          	jalr	24(ra) # 800073e8 <__printf>
    800073d8:	00100793          	li	a5,1
    800073dc:	00004717          	auipc	a4,0x4
    800073e0:	74f72e23          	sw	a5,1884(a4) # 8000bb38 <panicked>
    800073e4:	0000006f          	j	800073e4 <panic+0x58>

00000000800073e8 <__printf>:
    800073e8:	f3010113          	addi	sp,sp,-208
    800073ec:	08813023          	sd	s0,128(sp)
    800073f0:	07313423          	sd	s3,104(sp)
    800073f4:	09010413          	addi	s0,sp,144
    800073f8:	05813023          	sd	s8,64(sp)
    800073fc:	08113423          	sd	ra,136(sp)
    80007400:	06913c23          	sd	s1,120(sp)
    80007404:	07213823          	sd	s2,112(sp)
    80007408:	07413023          	sd	s4,96(sp)
    8000740c:	05513c23          	sd	s5,88(sp)
    80007410:	05613823          	sd	s6,80(sp)
    80007414:	05713423          	sd	s7,72(sp)
    80007418:	03913c23          	sd	s9,56(sp)
    8000741c:	03a13823          	sd	s10,48(sp)
    80007420:	03b13423          	sd	s11,40(sp)
    80007424:	0000a317          	auipc	t1,0xa
    80007428:	a5c30313          	addi	t1,t1,-1444 # 80010e80 <pr>
    8000742c:	01832c03          	lw	s8,24(t1)
    80007430:	00b43423          	sd	a1,8(s0)
    80007434:	00c43823          	sd	a2,16(s0)
    80007438:	00d43c23          	sd	a3,24(s0)
    8000743c:	02e43023          	sd	a4,32(s0)
    80007440:	02f43423          	sd	a5,40(s0)
    80007444:	03043823          	sd	a6,48(s0)
    80007448:	03143c23          	sd	a7,56(s0)
    8000744c:	00050993          	mv	s3,a0
    80007450:	4a0c1663          	bnez	s8,800078fc <__printf+0x514>
    80007454:	60098c63          	beqz	s3,80007a6c <__printf+0x684>
    80007458:	0009c503          	lbu	a0,0(s3)
    8000745c:	00840793          	addi	a5,s0,8
    80007460:	f6f43c23          	sd	a5,-136(s0)
    80007464:	00000493          	li	s1,0
    80007468:	22050063          	beqz	a0,80007688 <__printf+0x2a0>
    8000746c:	00002a37          	lui	s4,0x2
    80007470:	00018ab7          	lui	s5,0x18
    80007474:	000f4b37          	lui	s6,0xf4
    80007478:	00989bb7          	lui	s7,0x989
    8000747c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007480:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007484:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007488:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000748c:	00148c9b          	addiw	s9,s1,1
    80007490:	02500793          	li	a5,37
    80007494:	01998933          	add	s2,s3,s9
    80007498:	38f51263          	bne	a0,a5,8000781c <__printf+0x434>
    8000749c:	00094783          	lbu	a5,0(s2)
    800074a0:	00078c9b          	sext.w	s9,a5
    800074a4:	1e078263          	beqz	a5,80007688 <__printf+0x2a0>
    800074a8:	0024849b          	addiw	s1,s1,2
    800074ac:	07000713          	li	a4,112
    800074b0:	00998933          	add	s2,s3,s1
    800074b4:	38e78a63          	beq	a5,a4,80007848 <__printf+0x460>
    800074b8:	20f76863          	bltu	a4,a5,800076c8 <__printf+0x2e0>
    800074bc:	42a78863          	beq	a5,a0,800078ec <__printf+0x504>
    800074c0:	06400713          	li	a4,100
    800074c4:	40e79663          	bne	a5,a4,800078d0 <__printf+0x4e8>
    800074c8:	f7843783          	ld	a5,-136(s0)
    800074cc:	0007a603          	lw	a2,0(a5)
    800074d0:	00878793          	addi	a5,a5,8
    800074d4:	f6f43c23          	sd	a5,-136(s0)
    800074d8:	42064a63          	bltz	a2,8000790c <__printf+0x524>
    800074dc:	00a00713          	li	a4,10
    800074e0:	02e677bb          	remuw	a5,a2,a4
    800074e4:	00002d97          	auipc	s11,0x2
    800074e8:	1bcd8d93          	addi	s11,s11,444 # 800096a0 <digits>
    800074ec:	00900593          	li	a1,9
    800074f0:	0006051b          	sext.w	a0,a2
    800074f4:	00000c93          	li	s9,0
    800074f8:	02079793          	slli	a5,a5,0x20
    800074fc:	0207d793          	srli	a5,a5,0x20
    80007500:	00fd87b3          	add	a5,s11,a5
    80007504:	0007c783          	lbu	a5,0(a5)
    80007508:	02e656bb          	divuw	a3,a2,a4
    8000750c:	f8f40023          	sb	a5,-128(s0)
    80007510:	14c5d863          	bge	a1,a2,80007660 <__printf+0x278>
    80007514:	06300593          	li	a1,99
    80007518:	00100c93          	li	s9,1
    8000751c:	02e6f7bb          	remuw	a5,a3,a4
    80007520:	02079793          	slli	a5,a5,0x20
    80007524:	0207d793          	srli	a5,a5,0x20
    80007528:	00fd87b3          	add	a5,s11,a5
    8000752c:	0007c783          	lbu	a5,0(a5)
    80007530:	02e6d73b          	divuw	a4,a3,a4
    80007534:	f8f400a3          	sb	a5,-127(s0)
    80007538:	12a5f463          	bgeu	a1,a0,80007660 <__printf+0x278>
    8000753c:	00a00693          	li	a3,10
    80007540:	00900593          	li	a1,9
    80007544:	02d777bb          	remuw	a5,a4,a3
    80007548:	02079793          	slli	a5,a5,0x20
    8000754c:	0207d793          	srli	a5,a5,0x20
    80007550:	00fd87b3          	add	a5,s11,a5
    80007554:	0007c503          	lbu	a0,0(a5)
    80007558:	02d757bb          	divuw	a5,a4,a3
    8000755c:	f8a40123          	sb	a0,-126(s0)
    80007560:	48e5f263          	bgeu	a1,a4,800079e4 <__printf+0x5fc>
    80007564:	06300513          	li	a0,99
    80007568:	02d7f5bb          	remuw	a1,a5,a3
    8000756c:	02059593          	slli	a1,a1,0x20
    80007570:	0205d593          	srli	a1,a1,0x20
    80007574:	00bd85b3          	add	a1,s11,a1
    80007578:	0005c583          	lbu	a1,0(a1)
    8000757c:	02d7d7bb          	divuw	a5,a5,a3
    80007580:	f8b401a3          	sb	a1,-125(s0)
    80007584:	48e57263          	bgeu	a0,a4,80007a08 <__printf+0x620>
    80007588:	3e700513          	li	a0,999
    8000758c:	02d7f5bb          	remuw	a1,a5,a3
    80007590:	02059593          	slli	a1,a1,0x20
    80007594:	0205d593          	srli	a1,a1,0x20
    80007598:	00bd85b3          	add	a1,s11,a1
    8000759c:	0005c583          	lbu	a1,0(a1)
    800075a0:	02d7d7bb          	divuw	a5,a5,a3
    800075a4:	f8b40223          	sb	a1,-124(s0)
    800075a8:	46e57663          	bgeu	a0,a4,80007a14 <__printf+0x62c>
    800075ac:	02d7f5bb          	remuw	a1,a5,a3
    800075b0:	02059593          	slli	a1,a1,0x20
    800075b4:	0205d593          	srli	a1,a1,0x20
    800075b8:	00bd85b3          	add	a1,s11,a1
    800075bc:	0005c583          	lbu	a1,0(a1)
    800075c0:	02d7d7bb          	divuw	a5,a5,a3
    800075c4:	f8b402a3          	sb	a1,-123(s0)
    800075c8:	46ea7863          	bgeu	s4,a4,80007a38 <__printf+0x650>
    800075cc:	02d7f5bb          	remuw	a1,a5,a3
    800075d0:	02059593          	slli	a1,a1,0x20
    800075d4:	0205d593          	srli	a1,a1,0x20
    800075d8:	00bd85b3          	add	a1,s11,a1
    800075dc:	0005c583          	lbu	a1,0(a1)
    800075e0:	02d7d7bb          	divuw	a5,a5,a3
    800075e4:	f8b40323          	sb	a1,-122(s0)
    800075e8:	3eeaf863          	bgeu	s5,a4,800079d8 <__printf+0x5f0>
    800075ec:	02d7f5bb          	remuw	a1,a5,a3
    800075f0:	02059593          	slli	a1,a1,0x20
    800075f4:	0205d593          	srli	a1,a1,0x20
    800075f8:	00bd85b3          	add	a1,s11,a1
    800075fc:	0005c583          	lbu	a1,0(a1)
    80007600:	02d7d7bb          	divuw	a5,a5,a3
    80007604:	f8b403a3          	sb	a1,-121(s0)
    80007608:	42eb7e63          	bgeu	s6,a4,80007a44 <__printf+0x65c>
    8000760c:	02d7f5bb          	remuw	a1,a5,a3
    80007610:	02059593          	slli	a1,a1,0x20
    80007614:	0205d593          	srli	a1,a1,0x20
    80007618:	00bd85b3          	add	a1,s11,a1
    8000761c:	0005c583          	lbu	a1,0(a1)
    80007620:	02d7d7bb          	divuw	a5,a5,a3
    80007624:	f8b40423          	sb	a1,-120(s0)
    80007628:	42ebfc63          	bgeu	s7,a4,80007a60 <__printf+0x678>
    8000762c:	02079793          	slli	a5,a5,0x20
    80007630:	0207d793          	srli	a5,a5,0x20
    80007634:	00fd8db3          	add	s11,s11,a5
    80007638:	000dc703          	lbu	a4,0(s11)
    8000763c:	00a00793          	li	a5,10
    80007640:	00900c93          	li	s9,9
    80007644:	f8e404a3          	sb	a4,-119(s0)
    80007648:	00065c63          	bgez	a2,80007660 <__printf+0x278>
    8000764c:	f9040713          	addi	a4,s0,-112
    80007650:	00f70733          	add	a4,a4,a5
    80007654:	02d00693          	li	a3,45
    80007658:	fed70823          	sb	a3,-16(a4)
    8000765c:	00078c93          	mv	s9,a5
    80007660:	f8040793          	addi	a5,s0,-128
    80007664:	01978cb3          	add	s9,a5,s9
    80007668:	f7f40d13          	addi	s10,s0,-129
    8000766c:	000cc503          	lbu	a0,0(s9)
    80007670:	fffc8c93          	addi	s9,s9,-1
    80007674:	00000097          	auipc	ra,0x0
    80007678:	b90080e7          	jalr	-1136(ra) # 80007204 <consputc>
    8000767c:	ffac98e3          	bne	s9,s10,8000766c <__printf+0x284>
    80007680:	00094503          	lbu	a0,0(s2)
    80007684:	e00514e3          	bnez	a0,8000748c <__printf+0xa4>
    80007688:	1a0c1663          	bnez	s8,80007834 <__printf+0x44c>
    8000768c:	08813083          	ld	ra,136(sp)
    80007690:	08013403          	ld	s0,128(sp)
    80007694:	07813483          	ld	s1,120(sp)
    80007698:	07013903          	ld	s2,112(sp)
    8000769c:	06813983          	ld	s3,104(sp)
    800076a0:	06013a03          	ld	s4,96(sp)
    800076a4:	05813a83          	ld	s5,88(sp)
    800076a8:	05013b03          	ld	s6,80(sp)
    800076ac:	04813b83          	ld	s7,72(sp)
    800076b0:	04013c03          	ld	s8,64(sp)
    800076b4:	03813c83          	ld	s9,56(sp)
    800076b8:	03013d03          	ld	s10,48(sp)
    800076bc:	02813d83          	ld	s11,40(sp)
    800076c0:	0d010113          	addi	sp,sp,208
    800076c4:	00008067          	ret
    800076c8:	07300713          	li	a4,115
    800076cc:	1ce78a63          	beq	a5,a4,800078a0 <__printf+0x4b8>
    800076d0:	07800713          	li	a4,120
    800076d4:	1ee79e63          	bne	a5,a4,800078d0 <__printf+0x4e8>
    800076d8:	f7843783          	ld	a5,-136(s0)
    800076dc:	0007a703          	lw	a4,0(a5)
    800076e0:	00878793          	addi	a5,a5,8
    800076e4:	f6f43c23          	sd	a5,-136(s0)
    800076e8:	28074263          	bltz	a4,8000796c <__printf+0x584>
    800076ec:	00002d97          	auipc	s11,0x2
    800076f0:	fb4d8d93          	addi	s11,s11,-76 # 800096a0 <digits>
    800076f4:	00f77793          	andi	a5,a4,15
    800076f8:	00fd87b3          	add	a5,s11,a5
    800076fc:	0007c683          	lbu	a3,0(a5)
    80007700:	00f00613          	li	a2,15
    80007704:	0007079b          	sext.w	a5,a4
    80007708:	f8d40023          	sb	a3,-128(s0)
    8000770c:	0047559b          	srliw	a1,a4,0x4
    80007710:	0047569b          	srliw	a3,a4,0x4
    80007714:	00000c93          	li	s9,0
    80007718:	0ee65063          	bge	a2,a4,800077f8 <__printf+0x410>
    8000771c:	00f6f693          	andi	a3,a3,15
    80007720:	00dd86b3          	add	a3,s11,a3
    80007724:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007728:	0087d79b          	srliw	a5,a5,0x8
    8000772c:	00100c93          	li	s9,1
    80007730:	f8d400a3          	sb	a3,-127(s0)
    80007734:	0cb67263          	bgeu	a2,a1,800077f8 <__printf+0x410>
    80007738:	00f7f693          	andi	a3,a5,15
    8000773c:	00dd86b3          	add	a3,s11,a3
    80007740:	0006c583          	lbu	a1,0(a3)
    80007744:	00f00613          	li	a2,15
    80007748:	0047d69b          	srliw	a3,a5,0x4
    8000774c:	f8b40123          	sb	a1,-126(s0)
    80007750:	0047d593          	srli	a1,a5,0x4
    80007754:	28f67e63          	bgeu	a2,a5,800079f0 <__printf+0x608>
    80007758:	00f6f693          	andi	a3,a3,15
    8000775c:	00dd86b3          	add	a3,s11,a3
    80007760:	0006c503          	lbu	a0,0(a3)
    80007764:	0087d813          	srli	a6,a5,0x8
    80007768:	0087d69b          	srliw	a3,a5,0x8
    8000776c:	f8a401a3          	sb	a0,-125(s0)
    80007770:	28b67663          	bgeu	a2,a1,800079fc <__printf+0x614>
    80007774:	00f6f693          	andi	a3,a3,15
    80007778:	00dd86b3          	add	a3,s11,a3
    8000777c:	0006c583          	lbu	a1,0(a3)
    80007780:	00c7d513          	srli	a0,a5,0xc
    80007784:	00c7d69b          	srliw	a3,a5,0xc
    80007788:	f8b40223          	sb	a1,-124(s0)
    8000778c:	29067a63          	bgeu	a2,a6,80007a20 <__printf+0x638>
    80007790:	00f6f693          	andi	a3,a3,15
    80007794:	00dd86b3          	add	a3,s11,a3
    80007798:	0006c583          	lbu	a1,0(a3)
    8000779c:	0107d813          	srli	a6,a5,0x10
    800077a0:	0107d69b          	srliw	a3,a5,0x10
    800077a4:	f8b402a3          	sb	a1,-123(s0)
    800077a8:	28a67263          	bgeu	a2,a0,80007a2c <__printf+0x644>
    800077ac:	00f6f693          	andi	a3,a3,15
    800077b0:	00dd86b3          	add	a3,s11,a3
    800077b4:	0006c683          	lbu	a3,0(a3)
    800077b8:	0147d79b          	srliw	a5,a5,0x14
    800077bc:	f8d40323          	sb	a3,-122(s0)
    800077c0:	21067663          	bgeu	a2,a6,800079cc <__printf+0x5e4>
    800077c4:	02079793          	slli	a5,a5,0x20
    800077c8:	0207d793          	srli	a5,a5,0x20
    800077cc:	00fd8db3          	add	s11,s11,a5
    800077d0:	000dc683          	lbu	a3,0(s11)
    800077d4:	00800793          	li	a5,8
    800077d8:	00700c93          	li	s9,7
    800077dc:	f8d403a3          	sb	a3,-121(s0)
    800077e0:	00075c63          	bgez	a4,800077f8 <__printf+0x410>
    800077e4:	f9040713          	addi	a4,s0,-112
    800077e8:	00f70733          	add	a4,a4,a5
    800077ec:	02d00693          	li	a3,45
    800077f0:	fed70823          	sb	a3,-16(a4)
    800077f4:	00078c93          	mv	s9,a5
    800077f8:	f8040793          	addi	a5,s0,-128
    800077fc:	01978cb3          	add	s9,a5,s9
    80007800:	f7f40d13          	addi	s10,s0,-129
    80007804:	000cc503          	lbu	a0,0(s9)
    80007808:	fffc8c93          	addi	s9,s9,-1
    8000780c:	00000097          	auipc	ra,0x0
    80007810:	9f8080e7          	jalr	-1544(ra) # 80007204 <consputc>
    80007814:	ff9d18e3          	bne	s10,s9,80007804 <__printf+0x41c>
    80007818:	0100006f          	j	80007828 <__printf+0x440>
    8000781c:	00000097          	auipc	ra,0x0
    80007820:	9e8080e7          	jalr	-1560(ra) # 80007204 <consputc>
    80007824:	000c8493          	mv	s1,s9
    80007828:	00094503          	lbu	a0,0(s2)
    8000782c:	c60510e3          	bnez	a0,8000748c <__printf+0xa4>
    80007830:	e40c0ee3          	beqz	s8,8000768c <__printf+0x2a4>
    80007834:	00009517          	auipc	a0,0x9
    80007838:	64c50513          	addi	a0,a0,1612 # 80010e80 <pr>
    8000783c:	00001097          	auipc	ra,0x1
    80007840:	94c080e7          	jalr	-1716(ra) # 80008188 <release>
    80007844:	e49ff06f          	j	8000768c <__printf+0x2a4>
    80007848:	f7843783          	ld	a5,-136(s0)
    8000784c:	03000513          	li	a0,48
    80007850:	01000d13          	li	s10,16
    80007854:	00878713          	addi	a4,a5,8
    80007858:	0007bc83          	ld	s9,0(a5)
    8000785c:	f6e43c23          	sd	a4,-136(s0)
    80007860:	00000097          	auipc	ra,0x0
    80007864:	9a4080e7          	jalr	-1628(ra) # 80007204 <consputc>
    80007868:	07800513          	li	a0,120
    8000786c:	00000097          	auipc	ra,0x0
    80007870:	998080e7          	jalr	-1640(ra) # 80007204 <consputc>
    80007874:	00002d97          	auipc	s11,0x2
    80007878:	e2cd8d93          	addi	s11,s11,-468 # 800096a0 <digits>
    8000787c:	03ccd793          	srli	a5,s9,0x3c
    80007880:	00fd87b3          	add	a5,s11,a5
    80007884:	0007c503          	lbu	a0,0(a5)
    80007888:	fffd0d1b          	addiw	s10,s10,-1
    8000788c:	004c9c93          	slli	s9,s9,0x4
    80007890:	00000097          	auipc	ra,0x0
    80007894:	974080e7          	jalr	-1676(ra) # 80007204 <consputc>
    80007898:	fe0d12e3          	bnez	s10,8000787c <__printf+0x494>
    8000789c:	f8dff06f          	j	80007828 <__printf+0x440>
    800078a0:	f7843783          	ld	a5,-136(s0)
    800078a4:	0007bc83          	ld	s9,0(a5)
    800078a8:	00878793          	addi	a5,a5,8
    800078ac:	f6f43c23          	sd	a5,-136(s0)
    800078b0:	000c9a63          	bnez	s9,800078c4 <__printf+0x4dc>
    800078b4:	1080006f          	j	800079bc <__printf+0x5d4>
    800078b8:	001c8c93          	addi	s9,s9,1
    800078bc:	00000097          	auipc	ra,0x0
    800078c0:	948080e7          	jalr	-1720(ra) # 80007204 <consputc>
    800078c4:	000cc503          	lbu	a0,0(s9)
    800078c8:	fe0518e3          	bnez	a0,800078b8 <__printf+0x4d0>
    800078cc:	f5dff06f          	j	80007828 <__printf+0x440>
    800078d0:	02500513          	li	a0,37
    800078d4:	00000097          	auipc	ra,0x0
    800078d8:	930080e7          	jalr	-1744(ra) # 80007204 <consputc>
    800078dc:	000c8513          	mv	a0,s9
    800078e0:	00000097          	auipc	ra,0x0
    800078e4:	924080e7          	jalr	-1756(ra) # 80007204 <consputc>
    800078e8:	f41ff06f          	j	80007828 <__printf+0x440>
    800078ec:	02500513          	li	a0,37
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	914080e7          	jalr	-1772(ra) # 80007204 <consputc>
    800078f8:	f31ff06f          	j	80007828 <__printf+0x440>
    800078fc:	00030513          	mv	a0,t1
    80007900:	00000097          	auipc	ra,0x0
    80007904:	7bc080e7          	jalr	1980(ra) # 800080bc <acquire>
    80007908:	b4dff06f          	j	80007454 <__printf+0x6c>
    8000790c:	40c0053b          	negw	a0,a2
    80007910:	00a00713          	li	a4,10
    80007914:	02e576bb          	remuw	a3,a0,a4
    80007918:	00002d97          	auipc	s11,0x2
    8000791c:	d88d8d93          	addi	s11,s11,-632 # 800096a0 <digits>
    80007920:	ff700593          	li	a1,-9
    80007924:	02069693          	slli	a3,a3,0x20
    80007928:	0206d693          	srli	a3,a3,0x20
    8000792c:	00dd86b3          	add	a3,s11,a3
    80007930:	0006c683          	lbu	a3,0(a3)
    80007934:	02e557bb          	divuw	a5,a0,a4
    80007938:	f8d40023          	sb	a3,-128(s0)
    8000793c:	10b65e63          	bge	a2,a1,80007a58 <__printf+0x670>
    80007940:	06300593          	li	a1,99
    80007944:	02e7f6bb          	remuw	a3,a5,a4
    80007948:	02069693          	slli	a3,a3,0x20
    8000794c:	0206d693          	srli	a3,a3,0x20
    80007950:	00dd86b3          	add	a3,s11,a3
    80007954:	0006c683          	lbu	a3,0(a3)
    80007958:	02e7d73b          	divuw	a4,a5,a4
    8000795c:	00200793          	li	a5,2
    80007960:	f8d400a3          	sb	a3,-127(s0)
    80007964:	bca5ece3          	bltu	a1,a0,8000753c <__printf+0x154>
    80007968:	ce5ff06f          	j	8000764c <__printf+0x264>
    8000796c:	40e007bb          	negw	a5,a4
    80007970:	00002d97          	auipc	s11,0x2
    80007974:	d30d8d93          	addi	s11,s11,-720 # 800096a0 <digits>
    80007978:	00f7f693          	andi	a3,a5,15
    8000797c:	00dd86b3          	add	a3,s11,a3
    80007980:	0006c583          	lbu	a1,0(a3)
    80007984:	ff100613          	li	a2,-15
    80007988:	0047d69b          	srliw	a3,a5,0x4
    8000798c:	f8b40023          	sb	a1,-128(s0)
    80007990:	0047d59b          	srliw	a1,a5,0x4
    80007994:	0ac75e63          	bge	a4,a2,80007a50 <__printf+0x668>
    80007998:	00f6f693          	andi	a3,a3,15
    8000799c:	00dd86b3          	add	a3,s11,a3
    800079a0:	0006c603          	lbu	a2,0(a3)
    800079a4:	00f00693          	li	a3,15
    800079a8:	0087d79b          	srliw	a5,a5,0x8
    800079ac:	f8c400a3          	sb	a2,-127(s0)
    800079b0:	d8b6e4e3          	bltu	a3,a1,80007738 <__printf+0x350>
    800079b4:	00200793          	li	a5,2
    800079b8:	e2dff06f          	j	800077e4 <__printf+0x3fc>
    800079bc:	00002c97          	auipc	s9,0x2
    800079c0:	cc4c8c93          	addi	s9,s9,-828 # 80009680 <_ZL6digits+0x178>
    800079c4:	02800513          	li	a0,40
    800079c8:	ef1ff06f          	j	800078b8 <__printf+0x4d0>
    800079cc:	00700793          	li	a5,7
    800079d0:	00600c93          	li	s9,6
    800079d4:	e0dff06f          	j	800077e0 <__printf+0x3f8>
    800079d8:	00700793          	li	a5,7
    800079dc:	00600c93          	li	s9,6
    800079e0:	c69ff06f          	j	80007648 <__printf+0x260>
    800079e4:	00300793          	li	a5,3
    800079e8:	00200c93          	li	s9,2
    800079ec:	c5dff06f          	j	80007648 <__printf+0x260>
    800079f0:	00300793          	li	a5,3
    800079f4:	00200c93          	li	s9,2
    800079f8:	de9ff06f          	j	800077e0 <__printf+0x3f8>
    800079fc:	00400793          	li	a5,4
    80007a00:	00300c93          	li	s9,3
    80007a04:	dddff06f          	j	800077e0 <__printf+0x3f8>
    80007a08:	00400793          	li	a5,4
    80007a0c:	00300c93          	li	s9,3
    80007a10:	c39ff06f          	j	80007648 <__printf+0x260>
    80007a14:	00500793          	li	a5,5
    80007a18:	00400c93          	li	s9,4
    80007a1c:	c2dff06f          	j	80007648 <__printf+0x260>
    80007a20:	00500793          	li	a5,5
    80007a24:	00400c93          	li	s9,4
    80007a28:	db9ff06f          	j	800077e0 <__printf+0x3f8>
    80007a2c:	00600793          	li	a5,6
    80007a30:	00500c93          	li	s9,5
    80007a34:	dadff06f          	j	800077e0 <__printf+0x3f8>
    80007a38:	00600793          	li	a5,6
    80007a3c:	00500c93          	li	s9,5
    80007a40:	c09ff06f          	j	80007648 <__printf+0x260>
    80007a44:	00800793          	li	a5,8
    80007a48:	00700c93          	li	s9,7
    80007a4c:	bfdff06f          	j	80007648 <__printf+0x260>
    80007a50:	00100793          	li	a5,1
    80007a54:	d91ff06f          	j	800077e4 <__printf+0x3fc>
    80007a58:	00100793          	li	a5,1
    80007a5c:	bf1ff06f          	j	8000764c <__printf+0x264>
    80007a60:	00900793          	li	a5,9
    80007a64:	00800c93          	li	s9,8
    80007a68:	be1ff06f          	j	80007648 <__printf+0x260>
    80007a6c:	00002517          	auipc	a0,0x2
    80007a70:	c1c50513          	addi	a0,a0,-996 # 80009688 <_ZL6digits+0x180>
    80007a74:	00000097          	auipc	ra,0x0
    80007a78:	918080e7          	jalr	-1768(ra) # 8000738c <panic>

0000000080007a7c <printfinit>:
    80007a7c:	fe010113          	addi	sp,sp,-32
    80007a80:	00813823          	sd	s0,16(sp)
    80007a84:	00913423          	sd	s1,8(sp)
    80007a88:	00113c23          	sd	ra,24(sp)
    80007a8c:	02010413          	addi	s0,sp,32
    80007a90:	00009497          	auipc	s1,0x9
    80007a94:	3f048493          	addi	s1,s1,1008 # 80010e80 <pr>
    80007a98:	00048513          	mv	a0,s1
    80007a9c:	00002597          	auipc	a1,0x2
    80007aa0:	bfc58593          	addi	a1,a1,-1028 # 80009698 <_ZL6digits+0x190>
    80007aa4:	00000097          	auipc	ra,0x0
    80007aa8:	5f4080e7          	jalr	1524(ra) # 80008098 <initlock>
    80007aac:	01813083          	ld	ra,24(sp)
    80007ab0:	01013403          	ld	s0,16(sp)
    80007ab4:	0004ac23          	sw	zero,24(s1)
    80007ab8:	00813483          	ld	s1,8(sp)
    80007abc:	02010113          	addi	sp,sp,32
    80007ac0:	00008067          	ret

0000000080007ac4 <uartinit>:
    80007ac4:	ff010113          	addi	sp,sp,-16
    80007ac8:	00813423          	sd	s0,8(sp)
    80007acc:	01010413          	addi	s0,sp,16
    80007ad0:	100007b7          	lui	a5,0x10000
    80007ad4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ad8:	f8000713          	li	a4,-128
    80007adc:	00e781a3          	sb	a4,3(a5)
    80007ae0:	00300713          	li	a4,3
    80007ae4:	00e78023          	sb	a4,0(a5)
    80007ae8:	000780a3          	sb	zero,1(a5)
    80007aec:	00e781a3          	sb	a4,3(a5)
    80007af0:	00700693          	li	a3,7
    80007af4:	00d78123          	sb	a3,2(a5)
    80007af8:	00e780a3          	sb	a4,1(a5)
    80007afc:	00813403          	ld	s0,8(sp)
    80007b00:	01010113          	addi	sp,sp,16
    80007b04:	00008067          	ret

0000000080007b08 <uartputc>:
    80007b08:	00004797          	auipc	a5,0x4
    80007b0c:	0307a783          	lw	a5,48(a5) # 8000bb38 <panicked>
    80007b10:	00078463          	beqz	a5,80007b18 <uartputc+0x10>
    80007b14:	0000006f          	j	80007b14 <uartputc+0xc>
    80007b18:	fd010113          	addi	sp,sp,-48
    80007b1c:	02813023          	sd	s0,32(sp)
    80007b20:	00913c23          	sd	s1,24(sp)
    80007b24:	01213823          	sd	s2,16(sp)
    80007b28:	01313423          	sd	s3,8(sp)
    80007b2c:	02113423          	sd	ra,40(sp)
    80007b30:	03010413          	addi	s0,sp,48
    80007b34:	00004917          	auipc	s2,0x4
    80007b38:	00c90913          	addi	s2,s2,12 # 8000bb40 <uart_tx_r>
    80007b3c:	00093783          	ld	a5,0(s2)
    80007b40:	00004497          	auipc	s1,0x4
    80007b44:	00848493          	addi	s1,s1,8 # 8000bb48 <uart_tx_w>
    80007b48:	0004b703          	ld	a4,0(s1)
    80007b4c:	02078693          	addi	a3,a5,32
    80007b50:	00050993          	mv	s3,a0
    80007b54:	02e69c63          	bne	a3,a4,80007b8c <uartputc+0x84>
    80007b58:	00001097          	auipc	ra,0x1
    80007b5c:	834080e7          	jalr	-1996(ra) # 8000838c <push_on>
    80007b60:	00093783          	ld	a5,0(s2)
    80007b64:	0004b703          	ld	a4,0(s1)
    80007b68:	02078793          	addi	a5,a5,32
    80007b6c:	00e79463          	bne	a5,a4,80007b74 <uartputc+0x6c>
    80007b70:	0000006f          	j	80007b70 <uartputc+0x68>
    80007b74:	00001097          	auipc	ra,0x1
    80007b78:	88c080e7          	jalr	-1908(ra) # 80008400 <pop_on>
    80007b7c:	00093783          	ld	a5,0(s2)
    80007b80:	0004b703          	ld	a4,0(s1)
    80007b84:	02078693          	addi	a3,a5,32
    80007b88:	fce688e3          	beq	a3,a4,80007b58 <uartputc+0x50>
    80007b8c:	01f77693          	andi	a3,a4,31
    80007b90:	00009597          	auipc	a1,0x9
    80007b94:	31058593          	addi	a1,a1,784 # 80010ea0 <uart_tx_buf>
    80007b98:	00d586b3          	add	a3,a1,a3
    80007b9c:	00170713          	addi	a4,a4,1
    80007ba0:	01368023          	sb	s3,0(a3)
    80007ba4:	00e4b023          	sd	a4,0(s1)
    80007ba8:	10000637          	lui	a2,0x10000
    80007bac:	02f71063          	bne	a4,a5,80007bcc <uartputc+0xc4>
    80007bb0:	0340006f          	j	80007be4 <uartputc+0xdc>
    80007bb4:	00074703          	lbu	a4,0(a4)
    80007bb8:	00f93023          	sd	a5,0(s2)
    80007bbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007bc0:	00093783          	ld	a5,0(s2)
    80007bc4:	0004b703          	ld	a4,0(s1)
    80007bc8:	00f70e63          	beq	a4,a5,80007be4 <uartputc+0xdc>
    80007bcc:	00564683          	lbu	a3,5(a2)
    80007bd0:	01f7f713          	andi	a4,a5,31
    80007bd4:	00e58733          	add	a4,a1,a4
    80007bd8:	0206f693          	andi	a3,a3,32
    80007bdc:	00178793          	addi	a5,a5,1
    80007be0:	fc069ae3          	bnez	a3,80007bb4 <uartputc+0xac>
    80007be4:	02813083          	ld	ra,40(sp)
    80007be8:	02013403          	ld	s0,32(sp)
    80007bec:	01813483          	ld	s1,24(sp)
    80007bf0:	01013903          	ld	s2,16(sp)
    80007bf4:	00813983          	ld	s3,8(sp)
    80007bf8:	03010113          	addi	sp,sp,48
    80007bfc:	00008067          	ret

0000000080007c00 <uartputc_sync>:
    80007c00:	ff010113          	addi	sp,sp,-16
    80007c04:	00813423          	sd	s0,8(sp)
    80007c08:	01010413          	addi	s0,sp,16
    80007c0c:	00004717          	auipc	a4,0x4
    80007c10:	f2c72703          	lw	a4,-212(a4) # 8000bb38 <panicked>
    80007c14:	02071663          	bnez	a4,80007c40 <uartputc_sync+0x40>
    80007c18:	00050793          	mv	a5,a0
    80007c1c:	100006b7          	lui	a3,0x10000
    80007c20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007c24:	02077713          	andi	a4,a4,32
    80007c28:	fe070ce3          	beqz	a4,80007c20 <uartputc_sync+0x20>
    80007c2c:	0ff7f793          	andi	a5,a5,255
    80007c30:	00f68023          	sb	a5,0(a3)
    80007c34:	00813403          	ld	s0,8(sp)
    80007c38:	01010113          	addi	sp,sp,16
    80007c3c:	00008067          	ret
    80007c40:	0000006f          	j	80007c40 <uartputc_sync+0x40>

0000000080007c44 <uartstart>:
    80007c44:	ff010113          	addi	sp,sp,-16
    80007c48:	00813423          	sd	s0,8(sp)
    80007c4c:	01010413          	addi	s0,sp,16
    80007c50:	00004617          	auipc	a2,0x4
    80007c54:	ef060613          	addi	a2,a2,-272 # 8000bb40 <uart_tx_r>
    80007c58:	00004517          	auipc	a0,0x4
    80007c5c:	ef050513          	addi	a0,a0,-272 # 8000bb48 <uart_tx_w>
    80007c60:	00063783          	ld	a5,0(a2)
    80007c64:	00053703          	ld	a4,0(a0)
    80007c68:	04f70263          	beq	a4,a5,80007cac <uartstart+0x68>
    80007c6c:	100005b7          	lui	a1,0x10000
    80007c70:	00009817          	auipc	a6,0x9
    80007c74:	23080813          	addi	a6,a6,560 # 80010ea0 <uart_tx_buf>
    80007c78:	01c0006f          	j	80007c94 <uartstart+0x50>
    80007c7c:	0006c703          	lbu	a4,0(a3)
    80007c80:	00f63023          	sd	a5,0(a2)
    80007c84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c88:	00063783          	ld	a5,0(a2)
    80007c8c:	00053703          	ld	a4,0(a0)
    80007c90:	00f70e63          	beq	a4,a5,80007cac <uartstart+0x68>
    80007c94:	01f7f713          	andi	a4,a5,31
    80007c98:	00e806b3          	add	a3,a6,a4
    80007c9c:	0055c703          	lbu	a4,5(a1)
    80007ca0:	00178793          	addi	a5,a5,1
    80007ca4:	02077713          	andi	a4,a4,32
    80007ca8:	fc071ae3          	bnez	a4,80007c7c <uartstart+0x38>
    80007cac:	00813403          	ld	s0,8(sp)
    80007cb0:	01010113          	addi	sp,sp,16
    80007cb4:	00008067          	ret

0000000080007cb8 <uartgetc>:
    80007cb8:	ff010113          	addi	sp,sp,-16
    80007cbc:	00813423          	sd	s0,8(sp)
    80007cc0:	01010413          	addi	s0,sp,16
    80007cc4:	10000737          	lui	a4,0x10000
    80007cc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007ccc:	0017f793          	andi	a5,a5,1
    80007cd0:	00078c63          	beqz	a5,80007ce8 <uartgetc+0x30>
    80007cd4:	00074503          	lbu	a0,0(a4)
    80007cd8:	0ff57513          	andi	a0,a0,255
    80007cdc:	00813403          	ld	s0,8(sp)
    80007ce0:	01010113          	addi	sp,sp,16
    80007ce4:	00008067          	ret
    80007ce8:	fff00513          	li	a0,-1
    80007cec:	ff1ff06f          	j	80007cdc <uartgetc+0x24>

0000000080007cf0 <uartintr>:
    80007cf0:	100007b7          	lui	a5,0x10000
    80007cf4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007cf8:	0017f793          	andi	a5,a5,1
    80007cfc:	0a078463          	beqz	a5,80007da4 <uartintr+0xb4>
    80007d00:	fe010113          	addi	sp,sp,-32
    80007d04:	00813823          	sd	s0,16(sp)
    80007d08:	00913423          	sd	s1,8(sp)
    80007d0c:	00113c23          	sd	ra,24(sp)
    80007d10:	02010413          	addi	s0,sp,32
    80007d14:	100004b7          	lui	s1,0x10000
    80007d18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007d1c:	0ff57513          	andi	a0,a0,255
    80007d20:	fffff097          	auipc	ra,0xfffff
    80007d24:	534080e7          	jalr	1332(ra) # 80007254 <consoleintr>
    80007d28:	0054c783          	lbu	a5,5(s1)
    80007d2c:	0017f793          	andi	a5,a5,1
    80007d30:	fe0794e3          	bnez	a5,80007d18 <uartintr+0x28>
    80007d34:	00004617          	auipc	a2,0x4
    80007d38:	e0c60613          	addi	a2,a2,-500 # 8000bb40 <uart_tx_r>
    80007d3c:	00004517          	auipc	a0,0x4
    80007d40:	e0c50513          	addi	a0,a0,-500 # 8000bb48 <uart_tx_w>
    80007d44:	00063783          	ld	a5,0(a2)
    80007d48:	00053703          	ld	a4,0(a0)
    80007d4c:	04f70263          	beq	a4,a5,80007d90 <uartintr+0xa0>
    80007d50:	100005b7          	lui	a1,0x10000
    80007d54:	00009817          	auipc	a6,0x9
    80007d58:	14c80813          	addi	a6,a6,332 # 80010ea0 <uart_tx_buf>
    80007d5c:	01c0006f          	j	80007d78 <uartintr+0x88>
    80007d60:	0006c703          	lbu	a4,0(a3)
    80007d64:	00f63023          	sd	a5,0(a2)
    80007d68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d6c:	00063783          	ld	a5,0(a2)
    80007d70:	00053703          	ld	a4,0(a0)
    80007d74:	00f70e63          	beq	a4,a5,80007d90 <uartintr+0xa0>
    80007d78:	01f7f713          	andi	a4,a5,31
    80007d7c:	00e806b3          	add	a3,a6,a4
    80007d80:	0055c703          	lbu	a4,5(a1)
    80007d84:	00178793          	addi	a5,a5,1
    80007d88:	02077713          	andi	a4,a4,32
    80007d8c:	fc071ae3          	bnez	a4,80007d60 <uartintr+0x70>
    80007d90:	01813083          	ld	ra,24(sp)
    80007d94:	01013403          	ld	s0,16(sp)
    80007d98:	00813483          	ld	s1,8(sp)
    80007d9c:	02010113          	addi	sp,sp,32
    80007da0:	00008067          	ret
    80007da4:	00004617          	auipc	a2,0x4
    80007da8:	d9c60613          	addi	a2,a2,-612 # 8000bb40 <uart_tx_r>
    80007dac:	00004517          	auipc	a0,0x4
    80007db0:	d9c50513          	addi	a0,a0,-612 # 8000bb48 <uart_tx_w>
    80007db4:	00063783          	ld	a5,0(a2)
    80007db8:	00053703          	ld	a4,0(a0)
    80007dbc:	04f70263          	beq	a4,a5,80007e00 <uartintr+0x110>
    80007dc0:	100005b7          	lui	a1,0x10000
    80007dc4:	00009817          	auipc	a6,0x9
    80007dc8:	0dc80813          	addi	a6,a6,220 # 80010ea0 <uart_tx_buf>
    80007dcc:	01c0006f          	j	80007de8 <uartintr+0xf8>
    80007dd0:	0006c703          	lbu	a4,0(a3)
    80007dd4:	00f63023          	sd	a5,0(a2)
    80007dd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ddc:	00063783          	ld	a5,0(a2)
    80007de0:	00053703          	ld	a4,0(a0)
    80007de4:	02f70063          	beq	a4,a5,80007e04 <uartintr+0x114>
    80007de8:	01f7f713          	andi	a4,a5,31
    80007dec:	00e806b3          	add	a3,a6,a4
    80007df0:	0055c703          	lbu	a4,5(a1)
    80007df4:	00178793          	addi	a5,a5,1
    80007df8:	02077713          	andi	a4,a4,32
    80007dfc:	fc071ae3          	bnez	a4,80007dd0 <uartintr+0xe0>
    80007e00:	00008067          	ret
    80007e04:	00008067          	ret

0000000080007e08 <kinit>:
    80007e08:	fc010113          	addi	sp,sp,-64
    80007e0c:	02913423          	sd	s1,40(sp)
    80007e10:	fffff7b7          	lui	a5,0xfffff
    80007e14:	0000a497          	auipc	s1,0xa
    80007e18:	0ab48493          	addi	s1,s1,171 # 80011ebf <end+0xfff>
    80007e1c:	02813823          	sd	s0,48(sp)
    80007e20:	01313c23          	sd	s3,24(sp)
    80007e24:	00f4f4b3          	and	s1,s1,a5
    80007e28:	02113c23          	sd	ra,56(sp)
    80007e2c:	03213023          	sd	s2,32(sp)
    80007e30:	01413823          	sd	s4,16(sp)
    80007e34:	01513423          	sd	s5,8(sp)
    80007e38:	04010413          	addi	s0,sp,64
    80007e3c:	000017b7          	lui	a5,0x1
    80007e40:	01100993          	li	s3,17
    80007e44:	00f487b3          	add	a5,s1,a5
    80007e48:	01b99993          	slli	s3,s3,0x1b
    80007e4c:	06f9e063          	bltu	s3,a5,80007eac <kinit+0xa4>
    80007e50:	00009a97          	auipc	s5,0x9
    80007e54:	070a8a93          	addi	s5,s5,112 # 80010ec0 <end>
    80007e58:	0754ec63          	bltu	s1,s5,80007ed0 <kinit+0xc8>
    80007e5c:	0734fa63          	bgeu	s1,s3,80007ed0 <kinit+0xc8>
    80007e60:	00088a37          	lui	s4,0x88
    80007e64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007e68:	00004917          	auipc	s2,0x4
    80007e6c:	ce890913          	addi	s2,s2,-792 # 8000bb50 <kmem>
    80007e70:	00ca1a13          	slli	s4,s4,0xc
    80007e74:	0140006f          	j	80007e88 <kinit+0x80>
    80007e78:	000017b7          	lui	a5,0x1
    80007e7c:	00f484b3          	add	s1,s1,a5
    80007e80:	0554e863          	bltu	s1,s5,80007ed0 <kinit+0xc8>
    80007e84:	0534f663          	bgeu	s1,s3,80007ed0 <kinit+0xc8>
    80007e88:	00001637          	lui	a2,0x1
    80007e8c:	00100593          	li	a1,1
    80007e90:	00048513          	mv	a0,s1
    80007e94:	00000097          	auipc	ra,0x0
    80007e98:	5e4080e7          	jalr	1508(ra) # 80008478 <__memset>
    80007e9c:	00093783          	ld	a5,0(s2)
    80007ea0:	00f4b023          	sd	a5,0(s1)
    80007ea4:	00993023          	sd	s1,0(s2)
    80007ea8:	fd4498e3          	bne	s1,s4,80007e78 <kinit+0x70>
    80007eac:	03813083          	ld	ra,56(sp)
    80007eb0:	03013403          	ld	s0,48(sp)
    80007eb4:	02813483          	ld	s1,40(sp)
    80007eb8:	02013903          	ld	s2,32(sp)
    80007ebc:	01813983          	ld	s3,24(sp)
    80007ec0:	01013a03          	ld	s4,16(sp)
    80007ec4:	00813a83          	ld	s5,8(sp)
    80007ec8:	04010113          	addi	sp,sp,64
    80007ecc:	00008067          	ret
    80007ed0:	00001517          	auipc	a0,0x1
    80007ed4:	7e850513          	addi	a0,a0,2024 # 800096b8 <digits+0x18>
    80007ed8:	fffff097          	auipc	ra,0xfffff
    80007edc:	4b4080e7          	jalr	1204(ra) # 8000738c <panic>

0000000080007ee0 <freerange>:
    80007ee0:	fc010113          	addi	sp,sp,-64
    80007ee4:	000017b7          	lui	a5,0x1
    80007ee8:	02913423          	sd	s1,40(sp)
    80007eec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ef0:	009504b3          	add	s1,a0,s1
    80007ef4:	fffff537          	lui	a0,0xfffff
    80007ef8:	02813823          	sd	s0,48(sp)
    80007efc:	02113c23          	sd	ra,56(sp)
    80007f00:	03213023          	sd	s2,32(sp)
    80007f04:	01313c23          	sd	s3,24(sp)
    80007f08:	01413823          	sd	s4,16(sp)
    80007f0c:	01513423          	sd	s5,8(sp)
    80007f10:	01613023          	sd	s6,0(sp)
    80007f14:	04010413          	addi	s0,sp,64
    80007f18:	00a4f4b3          	and	s1,s1,a0
    80007f1c:	00f487b3          	add	a5,s1,a5
    80007f20:	06f5e463          	bltu	a1,a5,80007f88 <freerange+0xa8>
    80007f24:	00009a97          	auipc	s5,0x9
    80007f28:	f9ca8a93          	addi	s5,s5,-100 # 80010ec0 <end>
    80007f2c:	0954e263          	bltu	s1,s5,80007fb0 <freerange+0xd0>
    80007f30:	01100993          	li	s3,17
    80007f34:	01b99993          	slli	s3,s3,0x1b
    80007f38:	0734fc63          	bgeu	s1,s3,80007fb0 <freerange+0xd0>
    80007f3c:	00058a13          	mv	s4,a1
    80007f40:	00004917          	auipc	s2,0x4
    80007f44:	c1090913          	addi	s2,s2,-1008 # 8000bb50 <kmem>
    80007f48:	00002b37          	lui	s6,0x2
    80007f4c:	0140006f          	j	80007f60 <freerange+0x80>
    80007f50:	000017b7          	lui	a5,0x1
    80007f54:	00f484b3          	add	s1,s1,a5
    80007f58:	0554ec63          	bltu	s1,s5,80007fb0 <freerange+0xd0>
    80007f5c:	0534fa63          	bgeu	s1,s3,80007fb0 <freerange+0xd0>
    80007f60:	00001637          	lui	a2,0x1
    80007f64:	00100593          	li	a1,1
    80007f68:	00048513          	mv	a0,s1
    80007f6c:	00000097          	auipc	ra,0x0
    80007f70:	50c080e7          	jalr	1292(ra) # 80008478 <__memset>
    80007f74:	00093703          	ld	a4,0(s2)
    80007f78:	016487b3          	add	a5,s1,s6
    80007f7c:	00e4b023          	sd	a4,0(s1)
    80007f80:	00993023          	sd	s1,0(s2)
    80007f84:	fcfa76e3          	bgeu	s4,a5,80007f50 <freerange+0x70>
    80007f88:	03813083          	ld	ra,56(sp)
    80007f8c:	03013403          	ld	s0,48(sp)
    80007f90:	02813483          	ld	s1,40(sp)
    80007f94:	02013903          	ld	s2,32(sp)
    80007f98:	01813983          	ld	s3,24(sp)
    80007f9c:	01013a03          	ld	s4,16(sp)
    80007fa0:	00813a83          	ld	s5,8(sp)
    80007fa4:	00013b03          	ld	s6,0(sp)
    80007fa8:	04010113          	addi	sp,sp,64
    80007fac:	00008067          	ret
    80007fb0:	00001517          	auipc	a0,0x1
    80007fb4:	70850513          	addi	a0,a0,1800 # 800096b8 <digits+0x18>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	3d4080e7          	jalr	980(ra) # 8000738c <panic>

0000000080007fc0 <kfree>:
    80007fc0:	fe010113          	addi	sp,sp,-32
    80007fc4:	00813823          	sd	s0,16(sp)
    80007fc8:	00113c23          	sd	ra,24(sp)
    80007fcc:	00913423          	sd	s1,8(sp)
    80007fd0:	02010413          	addi	s0,sp,32
    80007fd4:	03451793          	slli	a5,a0,0x34
    80007fd8:	04079c63          	bnez	a5,80008030 <kfree+0x70>
    80007fdc:	00009797          	auipc	a5,0x9
    80007fe0:	ee478793          	addi	a5,a5,-284 # 80010ec0 <end>
    80007fe4:	00050493          	mv	s1,a0
    80007fe8:	04f56463          	bltu	a0,a5,80008030 <kfree+0x70>
    80007fec:	01100793          	li	a5,17
    80007ff0:	01b79793          	slli	a5,a5,0x1b
    80007ff4:	02f57e63          	bgeu	a0,a5,80008030 <kfree+0x70>
    80007ff8:	00001637          	lui	a2,0x1
    80007ffc:	00100593          	li	a1,1
    80008000:	00000097          	auipc	ra,0x0
    80008004:	478080e7          	jalr	1144(ra) # 80008478 <__memset>
    80008008:	00004797          	auipc	a5,0x4
    8000800c:	b4878793          	addi	a5,a5,-1208 # 8000bb50 <kmem>
    80008010:	0007b703          	ld	a4,0(a5)
    80008014:	01813083          	ld	ra,24(sp)
    80008018:	01013403          	ld	s0,16(sp)
    8000801c:	00e4b023          	sd	a4,0(s1)
    80008020:	0097b023          	sd	s1,0(a5)
    80008024:	00813483          	ld	s1,8(sp)
    80008028:	02010113          	addi	sp,sp,32
    8000802c:	00008067          	ret
    80008030:	00001517          	auipc	a0,0x1
    80008034:	68850513          	addi	a0,a0,1672 # 800096b8 <digits+0x18>
    80008038:	fffff097          	auipc	ra,0xfffff
    8000803c:	354080e7          	jalr	852(ra) # 8000738c <panic>

0000000080008040 <kalloc>:
    80008040:	fe010113          	addi	sp,sp,-32
    80008044:	00813823          	sd	s0,16(sp)
    80008048:	00913423          	sd	s1,8(sp)
    8000804c:	00113c23          	sd	ra,24(sp)
    80008050:	02010413          	addi	s0,sp,32
    80008054:	00004797          	auipc	a5,0x4
    80008058:	afc78793          	addi	a5,a5,-1284 # 8000bb50 <kmem>
    8000805c:	0007b483          	ld	s1,0(a5)
    80008060:	02048063          	beqz	s1,80008080 <kalloc+0x40>
    80008064:	0004b703          	ld	a4,0(s1)
    80008068:	00001637          	lui	a2,0x1
    8000806c:	00500593          	li	a1,5
    80008070:	00048513          	mv	a0,s1
    80008074:	00e7b023          	sd	a4,0(a5)
    80008078:	00000097          	auipc	ra,0x0
    8000807c:	400080e7          	jalr	1024(ra) # 80008478 <__memset>
    80008080:	01813083          	ld	ra,24(sp)
    80008084:	01013403          	ld	s0,16(sp)
    80008088:	00048513          	mv	a0,s1
    8000808c:	00813483          	ld	s1,8(sp)
    80008090:	02010113          	addi	sp,sp,32
    80008094:	00008067          	ret

0000000080008098 <initlock>:
    80008098:	ff010113          	addi	sp,sp,-16
    8000809c:	00813423          	sd	s0,8(sp)
    800080a0:	01010413          	addi	s0,sp,16
    800080a4:	00813403          	ld	s0,8(sp)
    800080a8:	00b53423          	sd	a1,8(a0)
    800080ac:	00052023          	sw	zero,0(a0)
    800080b0:	00053823          	sd	zero,16(a0)
    800080b4:	01010113          	addi	sp,sp,16
    800080b8:	00008067          	ret

00000000800080bc <acquire>:
    800080bc:	fe010113          	addi	sp,sp,-32
    800080c0:	00813823          	sd	s0,16(sp)
    800080c4:	00913423          	sd	s1,8(sp)
    800080c8:	00113c23          	sd	ra,24(sp)
    800080cc:	01213023          	sd	s2,0(sp)
    800080d0:	02010413          	addi	s0,sp,32
    800080d4:	00050493          	mv	s1,a0
    800080d8:	10002973          	csrr	s2,sstatus
    800080dc:	100027f3          	csrr	a5,sstatus
    800080e0:	ffd7f793          	andi	a5,a5,-3
    800080e4:	10079073          	csrw	sstatus,a5
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	8ec080e7          	jalr	-1812(ra) # 800069d4 <mycpu>
    800080f0:	07852783          	lw	a5,120(a0)
    800080f4:	06078e63          	beqz	a5,80008170 <acquire+0xb4>
    800080f8:	fffff097          	auipc	ra,0xfffff
    800080fc:	8dc080e7          	jalr	-1828(ra) # 800069d4 <mycpu>
    80008100:	07852783          	lw	a5,120(a0)
    80008104:	0004a703          	lw	a4,0(s1)
    80008108:	0017879b          	addiw	a5,a5,1
    8000810c:	06f52c23          	sw	a5,120(a0)
    80008110:	04071063          	bnez	a4,80008150 <acquire+0x94>
    80008114:	00100713          	li	a4,1
    80008118:	00070793          	mv	a5,a4
    8000811c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008120:	0007879b          	sext.w	a5,a5
    80008124:	fe079ae3          	bnez	a5,80008118 <acquire+0x5c>
    80008128:	0ff0000f          	fence
    8000812c:	fffff097          	auipc	ra,0xfffff
    80008130:	8a8080e7          	jalr	-1880(ra) # 800069d4 <mycpu>
    80008134:	01813083          	ld	ra,24(sp)
    80008138:	01013403          	ld	s0,16(sp)
    8000813c:	00a4b823          	sd	a0,16(s1)
    80008140:	00013903          	ld	s2,0(sp)
    80008144:	00813483          	ld	s1,8(sp)
    80008148:	02010113          	addi	sp,sp,32
    8000814c:	00008067          	ret
    80008150:	0104b903          	ld	s2,16(s1)
    80008154:	fffff097          	auipc	ra,0xfffff
    80008158:	880080e7          	jalr	-1920(ra) # 800069d4 <mycpu>
    8000815c:	faa91ce3          	bne	s2,a0,80008114 <acquire+0x58>
    80008160:	00001517          	auipc	a0,0x1
    80008164:	56050513          	addi	a0,a0,1376 # 800096c0 <digits+0x20>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	224080e7          	jalr	548(ra) # 8000738c <panic>
    80008170:	00195913          	srli	s2,s2,0x1
    80008174:	fffff097          	auipc	ra,0xfffff
    80008178:	860080e7          	jalr	-1952(ra) # 800069d4 <mycpu>
    8000817c:	00197913          	andi	s2,s2,1
    80008180:	07252e23          	sw	s2,124(a0)
    80008184:	f75ff06f          	j	800080f8 <acquire+0x3c>

0000000080008188 <release>:
    80008188:	fe010113          	addi	sp,sp,-32
    8000818c:	00813823          	sd	s0,16(sp)
    80008190:	00113c23          	sd	ra,24(sp)
    80008194:	00913423          	sd	s1,8(sp)
    80008198:	01213023          	sd	s2,0(sp)
    8000819c:	02010413          	addi	s0,sp,32
    800081a0:	00052783          	lw	a5,0(a0)
    800081a4:	00079a63          	bnez	a5,800081b8 <release+0x30>
    800081a8:	00001517          	auipc	a0,0x1
    800081ac:	52050513          	addi	a0,a0,1312 # 800096c8 <digits+0x28>
    800081b0:	fffff097          	auipc	ra,0xfffff
    800081b4:	1dc080e7          	jalr	476(ra) # 8000738c <panic>
    800081b8:	01053903          	ld	s2,16(a0)
    800081bc:	00050493          	mv	s1,a0
    800081c0:	fffff097          	auipc	ra,0xfffff
    800081c4:	814080e7          	jalr	-2028(ra) # 800069d4 <mycpu>
    800081c8:	fea910e3          	bne	s2,a0,800081a8 <release+0x20>
    800081cc:	0004b823          	sd	zero,16(s1)
    800081d0:	0ff0000f          	fence
    800081d4:	0f50000f          	fence	iorw,ow
    800081d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800081dc:	ffffe097          	auipc	ra,0xffffe
    800081e0:	7f8080e7          	jalr	2040(ra) # 800069d4 <mycpu>
    800081e4:	100027f3          	csrr	a5,sstatus
    800081e8:	0027f793          	andi	a5,a5,2
    800081ec:	04079a63          	bnez	a5,80008240 <release+0xb8>
    800081f0:	07852783          	lw	a5,120(a0)
    800081f4:	02f05e63          	blez	a5,80008230 <release+0xa8>
    800081f8:	fff7871b          	addiw	a4,a5,-1
    800081fc:	06e52c23          	sw	a4,120(a0)
    80008200:	00071c63          	bnez	a4,80008218 <release+0x90>
    80008204:	07c52783          	lw	a5,124(a0)
    80008208:	00078863          	beqz	a5,80008218 <release+0x90>
    8000820c:	100027f3          	csrr	a5,sstatus
    80008210:	0027e793          	ori	a5,a5,2
    80008214:	10079073          	csrw	sstatus,a5
    80008218:	01813083          	ld	ra,24(sp)
    8000821c:	01013403          	ld	s0,16(sp)
    80008220:	00813483          	ld	s1,8(sp)
    80008224:	00013903          	ld	s2,0(sp)
    80008228:	02010113          	addi	sp,sp,32
    8000822c:	00008067          	ret
    80008230:	00001517          	auipc	a0,0x1
    80008234:	4b850513          	addi	a0,a0,1208 # 800096e8 <digits+0x48>
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	154080e7          	jalr	340(ra) # 8000738c <panic>
    80008240:	00001517          	auipc	a0,0x1
    80008244:	49050513          	addi	a0,a0,1168 # 800096d0 <digits+0x30>
    80008248:	fffff097          	auipc	ra,0xfffff
    8000824c:	144080e7          	jalr	324(ra) # 8000738c <panic>

0000000080008250 <holding>:
    80008250:	00052783          	lw	a5,0(a0)
    80008254:	00079663          	bnez	a5,80008260 <holding+0x10>
    80008258:	00000513          	li	a0,0
    8000825c:	00008067          	ret
    80008260:	fe010113          	addi	sp,sp,-32
    80008264:	00813823          	sd	s0,16(sp)
    80008268:	00913423          	sd	s1,8(sp)
    8000826c:	00113c23          	sd	ra,24(sp)
    80008270:	02010413          	addi	s0,sp,32
    80008274:	01053483          	ld	s1,16(a0)
    80008278:	ffffe097          	auipc	ra,0xffffe
    8000827c:	75c080e7          	jalr	1884(ra) # 800069d4 <mycpu>
    80008280:	01813083          	ld	ra,24(sp)
    80008284:	01013403          	ld	s0,16(sp)
    80008288:	40a48533          	sub	a0,s1,a0
    8000828c:	00153513          	seqz	a0,a0
    80008290:	00813483          	ld	s1,8(sp)
    80008294:	02010113          	addi	sp,sp,32
    80008298:	00008067          	ret

000000008000829c <push_off>:
    8000829c:	fe010113          	addi	sp,sp,-32
    800082a0:	00813823          	sd	s0,16(sp)
    800082a4:	00113c23          	sd	ra,24(sp)
    800082a8:	00913423          	sd	s1,8(sp)
    800082ac:	02010413          	addi	s0,sp,32
    800082b0:	100024f3          	csrr	s1,sstatus
    800082b4:	100027f3          	csrr	a5,sstatus
    800082b8:	ffd7f793          	andi	a5,a5,-3
    800082bc:	10079073          	csrw	sstatus,a5
    800082c0:	ffffe097          	auipc	ra,0xffffe
    800082c4:	714080e7          	jalr	1812(ra) # 800069d4 <mycpu>
    800082c8:	07852783          	lw	a5,120(a0)
    800082cc:	02078663          	beqz	a5,800082f8 <push_off+0x5c>
    800082d0:	ffffe097          	auipc	ra,0xffffe
    800082d4:	704080e7          	jalr	1796(ra) # 800069d4 <mycpu>
    800082d8:	07852783          	lw	a5,120(a0)
    800082dc:	01813083          	ld	ra,24(sp)
    800082e0:	01013403          	ld	s0,16(sp)
    800082e4:	0017879b          	addiw	a5,a5,1
    800082e8:	06f52c23          	sw	a5,120(a0)
    800082ec:	00813483          	ld	s1,8(sp)
    800082f0:	02010113          	addi	sp,sp,32
    800082f4:	00008067          	ret
    800082f8:	0014d493          	srli	s1,s1,0x1
    800082fc:	ffffe097          	auipc	ra,0xffffe
    80008300:	6d8080e7          	jalr	1752(ra) # 800069d4 <mycpu>
    80008304:	0014f493          	andi	s1,s1,1
    80008308:	06952e23          	sw	s1,124(a0)
    8000830c:	fc5ff06f          	j	800082d0 <push_off+0x34>

0000000080008310 <pop_off>:
    80008310:	ff010113          	addi	sp,sp,-16
    80008314:	00813023          	sd	s0,0(sp)
    80008318:	00113423          	sd	ra,8(sp)
    8000831c:	01010413          	addi	s0,sp,16
    80008320:	ffffe097          	auipc	ra,0xffffe
    80008324:	6b4080e7          	jalr	1716(ra) # 800069d4 <mycpu>
    80008328:	100027f3          	csrr	a5,sstatus
    8000832c:	0027f793          	andi	a5,a5,2
    80008330:	04079663          	bnez	a5,8000837c <pop_off+0x6c>
    80008334:	07852783          	lw	a5,120(a0)
    80008338:	02f05a63          	blez	a5,8000836c <pop_off+0x5c>
    8000833c:	fff7871b          	addiw	a4,a5,-1
    80008340:	06e52c23          	sw	a4,120(a0)
    80008344:	00071c63          	bnez	a4,8000835c <pop_off+0x4c>
    80008348:	07c52783          	lw	a5,124(a0)
    8000834c:	00078863          	beqz	a5,8000835c <pop_off+0x4c>
    80008350:	100027f3          	csrr	a5,sstatus
    80008354:	0027e793          	ori	a5,a5,2
    80008358:	10079073          	csrw	sstatus,a5
    8000835c:	00813083          	ld	ra,8(sp)
    80008360:	00013403          	ld	s0,0(sp)
    80008364:	01010113          	addi	sp,sp,16
    80008368:	00008067          	ret
    8000836c:	00001517          	auipc	a0,0x1
    80008370:	37c50513          	addi	a0,a0,892 # 800096e8 <digits+0x48>
    80008374:	fffff097          	auipc	ra,0xfffff
    80008378:	018080e7          	jalr	24(ra) # 8000738c <panic>
    8000837c:	00001517          	auipc	a0,0x1
    80008380:	35450513          	addi	a0,a0,852 # 800096d0 <digits+0x30>
    80008384:	fffff097          	auipc	ra,0xfffff
    80008388:	008080e7          	jalr	8(ra) # 8000738c <panic>

000000008000838c <push_on>:
    8000838c:	fe010113          	addi	sp,sp,-32
    80008390:	00813823          	sd	s0,16(sp)
    80008394:	00113c23          	sd	ra,24(sp)
    80008398:	00913423          	sd	s1,8(sp)
    8000839c:	02010413          	addi	s0,sp,32
    800083a0:	100024f3          	csrr	s1,sstatus
    800083a4:	100027f3          	csrr	a5,sstatus
    800083a8:	0027e793          	ori	a5,a5,2
    800083ac:	10079073          	csrw	sstatus,a5
    800083b0:	ffffe097          	auipc	ra,0xffffe
    800083b4:	624080e7          	jalr	1572(ra) # 800069d4 <mycpu>
    800083b8:	07852783          	lw	a5,120(a0)
    800083bc:	02078663          	beqz	a5,800083e8 <push_on+0x5c>
    800083c0:	ffffe097          	auipc	ra,0xffffe
    800083c4:	614080e7          	jalr	1556(ra) # 800069d4 <mycpu>
    800083c8:	07852783          	lw	a5,120(a0)
    800083cc:	01813083          	ld	ra,24(sp)
    800083d0:	01013403          	ld	s0,16(sp)
    800083d4:	0017879b          	addiw	a5,a5,1
    800083d8:	06f52c23          	sw	a5,120(a0)
    800083dc:	00813483          	ld	s1,8(sp)
    800083e0:	02010113          	addi	sp,sp,32
    800083e4:	00008067          	ret
    800083e8:	0014d493          	srli	s1,s1,0x1
    800083ec:	ffffe097          	auipc	ra,0xffffe
    800083f0:	5e8080e7          	jalr	1512(ra) # 800069d4 <mycpu>
    800083f4:	0014f493          	andi	s1,s1,1
    800083f8:	06952e23          	sw	s1,124(a0)
    800083fc:	fc5ff06f          	j	800083c0 <push_on+0x34>

0000000080008400 <pop_on>:
    80008400:	ff010113          	addi	sp,sp,-16
    80008404:	00813023          	sd	s0,0(sp)
    80008408:	00113423          	sd	ra,8(sp)
    8000840c:	01010413          	addi	s0,sp,16
    80008410:	ffffe097          	auipc	ra,0xffffe
    80008414:	5c4080e7          	jalr	1476(ra) # 800069d4 <mycpu>
    80008418:	100027f3          	csrr	a5,sstatus
    8000841c:	0027f793          	andi	a5,a5,2
    80008420:	04078463          	beqz	a5,80008468 <pop_on+0x68>
    80008424:	07852783          	lw	a5,120(a0)
    80008428:	02f05863          	blez	a5,80008458 <pop_on+0x58>
    8000842c:	fff7879b          	addiw	a5,a5,-1
    80008430:	06f52c23          	sw	a5,120(a0)
    80008434:	07853783          	ld	a5,120(a0)
    80008438:	00079863          	bnez	a5,80008448 <pop_on+0x48>
    8000843c:	100027f3          	csrr	a5,sstatus
    80008440:	ffd7f793          	andi	a5,a5,-3
    80008444:	10079073          	csrw	sstatus,a5
    80008448:	00813083          	ld	ra,8(sp)
    8000844c:	00013403          	ld	s0,0(sp)
    80008450:	01010113          	addi	sp,sp,16
    80008454:	00008067          	ret
    80008458:	00001517          	auipc	a0,0x1
    8000845c:	2b850513          	addi	a0,a0,696 # 80009710 <digits+0x70>
    80008460:	fffff097          	auipc	ra,0xfffff
    80008464:	f2c080e7          	jalr	-212(ra) # 8000738c <panic>
    80008468:	00001517          	auipc	a0,0x1
    8000846c:	28850513          	addi	a0,a0,648 # 800096f0 <digits+0x50>
    80008470:	fffff097          	auipc	ra,0xfffff
    80008474:	f1c080e7          	jalr	-228(ra) # 8000738c <panic>

0000000080008478 <__memset>:
    80008478:	ff010113          	addi	sp,sp,-16
    8000847c:	00813423          	sd	s0,8(sp)
    80008480:	01010413          	addi	s0,sp,16
    80008484:	1a060e63          	beqz	a2,80008640 <__memset+0x1c8>
    80008488:	40a007b3          	neg	a5,a0
    8000848c:	0077f793          	andi	a5,a5,7
    80008490:	00778693          	addi	a3,a5,7
    80008494:	00b00813          	li	a6,11
    80008498:	0ff5f593          	andi	a1,a1,255
    8000849c:	fff6071b          	addiw	a4,a2,-1
    800084a0:	1b06e663          	bltu	a3,a6,8000864c <__memset+0x1d4>
    800084a4:	1cd76463          	bltu	a4,a3,8000866c <__memset+0x1f4>
    800084a8:	1a078e63          	beqz	a5,80008664 <__memset+0x1ec>
    800084ac:	00b50023          	sb	a1,0(a0)
    800084b0:	00100713          	li	a4,1
    800084b4:	1ae78463          	beq	a5,a4,8000865c <__memset+0x1e4>
    800084b8:	00b500a3          	sb	a1,1(a0)
    800084bc:	00200713          	li	a4,2
    800084c0:	1ae78a63          	beq	a5,a4,80008674 <__memset+0x1fc>
    800084c4:	00b50123          	sb	a1,2(a0)
    800084c8:	00300713          	li	a4,3
    800084cc:	18e78463          	beq	a5,a4,80008654 <__memset+0x1dc>
    800084d0:	00b501a3          	sb	a1,3(a0)
    800084d4:	00400713          	li	a4,4
    800084d8:	1ae78263          	beq	a5,a4,8000867c <__memset+0x204>
    800084dc:	00b50223          	sb	a1,4(a0)
    800084e0:	00500713          	li	a4,5
    800084e4:	1ae78063          	beq	a5,a4,80008684 <__memset+0x20c>
    800084e8:	00b502a3          	sb	a1,5(a0)
    800084ec:	00700713          	li	a4,7
    800084f0:	18e79e63          	bne	a5,a4,8000868c <__memset+0x214>
    800084f4:	00b50323          	sb	a1,6(a0)
    800084f8:	00700e93          	li	t4,7
    800084fc:	00859713          	slli	a4,a1,0x8
    80008500:	00e5e733          	or	a4,a1,a4
    80008504:	01059e13          	slli	t3,a1,0x10
    80008508:	01c76e33          	or	t3,a4,t3
    8000850c:	01859313          	slli	t1,a1,0x18
    80008510:	006e6333          	or	t1,t3,t1
    80008514:	02059893          	slli	a7,a1,0x20
    80008518:	40f60e3b          	subw	t3,a2,a5
    8000851c:	011368b3          	or	a7,t1,a7
    80008520:	02859813          	slli	a6,a1,0x28
    80008524:	0108e833          	or	a6,a7,a6
    80008528:	03059693          	slli	a3,a1,0x30
    8000852c:	003e589b          	srliw	a7,t3,0x3
    80008530:	00d866b3          	or	a3,a6,a3
    80008534:	03859713          	slli	a4,a1,0x38
    80008538:	00389813          	slli	a6,a7,0x3
    8000853c:	00f507b3          	add	a5,a0,a5
    80008540:	00e6e733          	or	a4,a3,a4
    80008544:	000e089b          	sext.w	a7,t3
    80008548:	00f806b3          	add	a3,a6,a5
    8000854c:	00e7b023          	sd	a4,0(a5)
    80008550:	00878793          	addi	a5,a5,8
    80008554:	fed79ce3          	bne	a5,a3,8000854c <__memset+0xd4>
    80008558:	ff8e7793          	andi	a5,t3,-8
    8000855c:	0007871b          	sext.w	a4,a5
    80008560:	01d787bb          	addw	a5,a5,t4
    80008564:	0ce88e63          	beq	a7,a4,80008640 <__memset+0x1c8>
    80008568:	00f50733          	add	a4,a0,a5
    8000856c:	00b70023          	sb	a1,0(a4)
    80008570:	0017871b          	addiw	a4,a5,1
    80008574:	0cc77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008578:	00e50733          	add	a4,a0,a4
    8000857c:	00b70023          	sb	a1,0(a4)
    80008580:	0027871b          	addiw	a4,a5,2
    80008584:	0ac77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008588:	00e50733          	add	a4,a0,a4
    8000858c:	00b70023          	sb	a1,0(a4)
    80008590:	0037871b          	addiw	a4,a5,3
    80008594:	0ac77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008598:	00e50733          	add	a4,a0,a4
    8000859c:	00b70023          	sb	a1,0(a4)
    800085a0:	0047871b          	addiw	a4,a5,4
    800085a4:	08c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085a8:	00e50733          	add	a4,a0,a4
    800085ac:	00b70023          	sb	a1,0(a4)
    800085b0:	0057871b          	addiw	a4,a5,5
    800085b4:	08c77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085b8:	00e50733          	add	a4,a0,a4
    800085bc:	00b70023          	sb	a1,0(a4)
    800085c0:	0067871b          	addiw	a4,a5,6
    800085c4:	06c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085c8:	00e50733          	add	a4,a0,a4
    800085cc:	00b70023          	sb	a1,0(a4)
    800085d0:	0077871b          	addiw	a4,a5,7
    800085d4:	06c77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085d8:	00e50733          	add	a4,a0,a4
    800085dc:	00b70023          	sb	a1,0(a4)
    800085e0:	0087871b          	addiw	a4,a5,8
    800085e4:	04c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085e8:	00e50733          	add	a4,a0,a4
    800085ec:	00b70023          	sb	a1,0(a4)
    800085f0:	0097871b          	addiw	a4,a5,9
    800085f4:	04c77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    800085f8:	00e50733          	add	a4,a0,a4
    800085fc:	00b70023          	sb	a1,0(a4)
    80008600:	00a7871b          	addiw	a4,a5,10
    80008604:	02c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008608:	00e50733          	add	a4,a0,a4
    8000860c:	00b70023          	sb	a1,0(a4)
    80008610:	00b7871b          	addiw	a4,a5,11
    80008614:	02c77663          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008618:	00e50733          	add	a4,a0,a4
    8000861c:	00b70023          	sb	a1,0(a4)
    80008620:	00c7871b          	addiw	a4,a5,12
    80008624:	00c77e63          	bgeu	a4,a2,80008640 <__memset+0x1c8>
    80008628:	00e50733          	add	a4,a0,a4
    8000862c:	00b70023          	sb	a1,0(a4)
    80008630:	00d7879b          	addiw	a5,a5,13
    80008634:	00c7f663          	bgeu	a5,a2,80008640 <__memset+0x1c8>
    80008638:	00f507b3          	add	a5,a0,a5
    8000863c:	00b78023          	sb	a1,0(a5)
    80008640:	00813403          	ld	s0,8(sp)
    80008644:	01010113          	addi	sp,sp,16
    80008648:	00008067          	ret
    8000864c:	00b00693          	li	a3,11
    80008650:	e55ff06f          	j	800084a4 <__memset+0x2c>
    80008654:	00300e93          	li	t4,3
    80008658:	ea5ff06f          	j	800084fc <__memset+0x84>
    8000865c:	00100e93          	li	t4,1
    80008660:	e9dff06f          	j	800084fc <__memset+0x84>
    80008664:	00000e93          	li	t4,0
    80008668:	e95ff06f          	j	800084fc <__memset+0x84>
    8000866c:	00000793          	li	a5,0
    80008670:	ef9ff06f          	j	80008568 <__memset+0xf0>
    80008674:	00200e93          	li	t4,2
    80008678:	e85ff06f          	j	800084fc <__memset+0x84>
    8000867c:	00400e93          	li	t4,4
    80008680:	e7dff06f          	j	800084fc <__memset+0x84>
    80008684:	00500e93          	li	t4,5
    80008688:	e75ff06f          	j	800084fc <__memset+0x84>
    8000868c:	00600e93          	li	t4,6
    80008690:	e6dff06f          	j	800084fc <__memset+0x84>

0000000080008694 <__memmove>:
    80008694:	ff010113          	addi	sp,sp,-16
    80008698:	00813423          	sd	s0,8(sp)
    8000869c:	01010413          	addi	s0,sp,16
    800086a0:	0e060863          	beqz	a2,80008790 <__memmove+0xfc>
    800086a4:	fff6069b          	addiw	a3,a2,-1
    800086a8:	0006881b          	sext.w	a6,a3
    800086ac:	0ea5e863          	bltu	a1,a0,8000879c <__memmove+0x108>
    800086b0:	00758713          	addi	a4,a1,7
    800086b4:	00a5e7b3          	or	a5,a1,a0
    800086b8:	40a70733          	sub	a4,a4,a0
    800086bc:	0077f793          	andi	a5,a5,7
    800086c0:	00f73713          	sltiu	a4,a4,15
    800086c4:	00174713          	xori	a4,a4,1
    800086c8:	0017b793          	seqz	a5,a5
    800086cc:	00e7f7b3          	and	a5,a5,a4
    800086d0:	10078863          	beqz	a5,800087e0 <__memmove+0x14c>
    800086d4:	00900793          	li	a5,9
    800086d8:	1107f463          	bgeu	a5,a6,800087e0 <__memmove+0x14c>
    800086dc:	0036581b          	srliw	a6,a2,0x3
    800086e0:	fff8081b          	addiw	a6,a6,-1
    800086e4:	02081813          	slli	a6,a6,0x20
    800086e8:	01d85893          	srli	a7,a6,0x1d
    800086ec:	00858813          	addi	a6,a1,8
    800086f0:	00058793          	mv	a5,a1
    800086f4:	00050713          	mv	a4,a0
    800086f8:	01088833          	add	a6,a7,a6
    800086fc:	0007b883          	ld	a7,0(a5)
    80008700:	00878793          	addi	a5,a5,8
    80008704:	00870713          	addi	a4,a4,8
    80008708:	ff173c23          	sd	a7,-8(a4)
    8000870c:	ff0798e3          	bne	a5,a6,800086fc <__memmove+0x68>
    80008710:	ff867713          	andi	a4,a2,-8
    80008714:	02071793          	slli	a5,a4,0x20
    80008718:	0207d793          	srli	a5,a5,0x20
    8000871c:	00f585b3          	add	a1,a1,a5
    80008720:	40e686bb          	subw	a3,a3,a4
    80008724:	00f507b3          	add	a5,a0,a5
    80008728:	06e60463          	beq	a2,a4,80008790 <__memmove+0xfc>
    8000872c:	0005c703          	lbu	a4,0(a1)
    80008730:	00e78023          	sb	a4,0(a5)
    80008734:	04068e63          	beqz	a3,80008790 <__memmove+0xfc>
    80008738:	0015c603          	lbu	a2,1(a1)
    8000873c:	00100713          	li	a4,1
    80008740:	00c780a3          	sb	a2,1(a5)
    80008744:	04e68663          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008748:	0025c603          	lbu	a2,2(a1)
    8000874c:	00200713          	li	a4,2
    80008750:	00c78123          	sb	a2,2(a5)
    80008754:	02e68e63          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008758:	0035c603          	lbu	a2,3(a1)
    8000875c:	00300713          	li	a4,3
    80008760:	00c781a3          	sb	a2,3(a5)
    80008764:	02e68663          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008768:	0045c603          	lbu	a2,4(a1)
    8000876c:	00400713          	li	a4,4
    80008770:	00c78223          	sb	a2,4(a5)
    80008774:	00e68e63          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008778:	0055c603          	lbu	a2,5(a1)
    8000877c:	00500713          	li	a4,5
    80008780:	00c782a3          	sb	a2,5(a5)
    80008784:	00e68663          	beq	a3,a4,80008790 <__memmove+0xfc>
    80008788:	0065c703          	lbu	a4,6(a1)
    8000878c:	00e78323          	sb	a4,6(a5)
    80008790:	00813403          	ld	s0,8(sp)
    80008794:	01010113          	addi	sp,sp,16
    80008798:	00008067          	ret
    8000879c:	02061713          	slli	a4,a2,0x20
    800087a0:	02075713          	srli	a4,a4,0x20
    800087a4:	00e587b3          	add	a5,a1,a4
    800087a8:	f0f574e3          	bgeu	a0,a5,800086b0 <__memmove+0x1c>
    800087ac:	02069613          	slli	a2,a3,0x20
    800087b0:	02065613          	srli	a2,a2,0x20
    800087b4:	fff64613          	not	a2,a2
    800087b8:	00e50733          	add	a4,a0,a4
    800087bc:	00c78633          	add	a2,a5,a2
    800087c0:	fff7c683          	lbu	a3,-1(a5)
    800087c4:	fff78793          	addi	a5,a5,-1
    800087c8:	fff70713          	addi	a4,a4,-1
    800087cc:	00d70023          	sb	a3,0(a4)
    800087d0:	fec798e3          	bne	a5,a2,800087c0 <__memmove+0x12c>
    800087d4:	00813403          	ld	s0,8(sp)
    800087d8:	01010113          	addi	sp,sp,16
    800087dc:	00008067          	ret
    800087e0:	02069713          	slli	a4,a3,0x20
    800087e4:	02075713          	srli	a4,a4,0x20
    800087e8:	00170713          	addi	a4,a4,1
    800087ec:	00e50733          	add	a4,a0,a4
    800087f0:	00050793          	mv	a5,a0
    800087f4:	0005c683          	lbu	a3,0(a1)
    800087f8:	00178793          	addi	a5,a5,1
    800087fc:	00158593          	addi	a1,a1,1
    80008800:	fed78fa3          	sb	a3,-1(a5)
    80008804:	fee798e3          	bne	a5,a4,800087f4 <__memmove+0x160>
    80008808:	f89ff06f          	j	80008790 <__memmove+0xfc>

000000008000880c <__putc>:
    8000880c:	fe010113          	addi	sp,sp,-32
    80008810:	00813823          	sd	s0,16(sp)
    80008814:	00113c23          	sd	ra,24(sp)
    80008818:	02010413          	addi	s0,sp,32
    8000881c:	00050793          	mv	a5,a0
    80008820:	fef40593          	addi	a1,s0,-17
    80008824:	00100613          	li	a2,1
    80008828:	00000513          	li	a0,0
    8000882c:	fef407a3          	sb	a5,-17(s0)
    80008830:	fffff097          	auipc	ra,0xfffff
    80008834:	b3c080e7          	jalr	-1220(ra) # 8000736c <console_write>
    80008838:	01813083          	ld	ra,24(sp)
    8000883c:	01013403          	ld	s0,16(sp)
    80008840:	02010113          	addi	sp,sp,32
    80008844:	00008067          	ret

0000000080008848 <__getc>:
    80008848:	fe010113          	addi	sp,sp,-32
    8000884c:	00813823          	sd	s0,16(sp)
    80008850:	00113c23          	sd	ra,24(sp)
    80008854:	02010413          	addi	s0,sp,32
    80008858:	fe840593          	addi	a1,s0,-24
    8000885c:	00100613          	li	a2,1
    80008860:	00000513          	li	a0,0
    80008864:	fffff097          	auipc	ra,0xfffff
    80008868:	ae8080e7          	jalr	-1304(ra) # 8000734c <console_read>
    8000886c:	fe844503          	lbu	a0,-24(s0)
    80008870:	01813083          	ld	ra,24(sp)
    80008874:	01013403          	ld	s0,16(sp)
    80008878:	02010113          	addi	sp,sp,32
    8000887c:	00008067          	ret

0000000080008880 <console_handler>:
    80008880:	fe010113          	addi	sp,sp,-32
    80008884:	00813823          	sd	s0,16(sp)
    80008888:	00113c23          	sd	ra,24(sp)
    8000888c:	00913423          	sd	s1,8(sp)
    80008890:	02010413          	addi	s0,sp,32
    80008894:	14202773          	csrr	a4,scause
    80008898:	100027f3          	csrr	a5,sstatus
    8000889c:	0027f793          	andi	a5,a5,2
    800088a0:	06079e63          	bnez	a5,8000891c <console_handler+0x9c>
    800088a4:	00074c63          	bltz	a4,800088bc <console_handler+0x3c>
    800088a8:	01813083          	ld	ra,24(sp)
    800088ac:	01013403          	ld	s0,16(sp)
    800088b0:	00813483          	ld	s1,8(sp)
    800088b4:	02010113          	addi	sp,sp,32
    800088b8:	00008067          	ret
    800088bc:	0ff77713          	andi	a4,a4,255
    800088c0:	00900793          	li	a5,9
    800088c4:	fef712e3          	bne	a4,a5,800088a8 <console_handler+0x28>
    800088c8:	ffffe097          	auipc	ra,0xffffe
    800088cc:	6dc080e7          	jalr	1756(ra) # 80006fa4 <plic_claim>
    800088d0:	00a00793          	li	a5,10
    800088d4:	00050493          	mv	s1,a0
    800088d8:	02f50c63          	beq	a0,a5,80008910 <console_handler+0x90>
    800088dc:	fc0506e3          	beqz	a0,800088a8 <console_handler+0x28>
    800088e0:	00050593          	mv	a1,a0
    800088e4:	00001517          	auipc	a0,0x1
    800088e8:	d3450513          	addi	a0,a0,-716 # 80009618 <_ZL6digits+0x110>
    800088ec:	fffff097          	auipc	ra,0xfffff
    800088f0:	afc080e7          	jalr	-1284(ra) # 800073e8 <__printf>
    800088f4:	01013403          	ld	s0,16(sp)
    800088f8:	01813083          	ld	ra,24(sp)
    800088fc:	00048513          	mv	a0,s1
    80008900:	00813483          	ld	s1,8(sp)
    80008904:	02010113          	addi	sp,sp,32
    80008908:	ffffe317          	auipc	t1,0xffffe
    8000890c:	6d430067          	jr	1748(t1) # 80006fdc <plic_complete>
    80008910:	fffff097          	auipc	ra,0xfffff
    80008914:	3e0080e7          	jalr	992(ra) # 80007cf0 <uartintr>
    80008918:	fddff06f          	j	800088f4 <console_handler+0x74>
    8000891c:	00001517          	auipc	a0,0x1
    80008920:	dfc50513          	addi	a0,a0,-516 # 80009718 <digits+0x78>
    80008924:	fffff097          	auipc	ra,0xfffff
    80008928:	a68080e7          	jalr	-1432(ra) # 8000738c <panic>
	...
