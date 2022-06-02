
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	8b813103          	ld	sp,-1864(sp) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	434060ef          	jal	ra,80006450 <start>

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
    80001088:	149020ef          	jal	ra,800039d0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800015b0:	00004097          	auipc	ra,0x4
    800015b4:	388080e7          	jalr	904(ra) # 80005938 <_Z11printStringPKc>
        printInt(i);
    800015b8:	00000613          	li	a2,0
    800015bc:	00a00593          	li	a1,10
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00004097          	auipc	ra,0x4
    800015c8:	50c080e7          	jalr	1292(ra) # 80005ad0 <_Z8printIntiii>
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
    80001600:	00004097          	auipc	ra,0x4
    80001604:	338080e7          	jalr	824(ra) # 80005938 <_Z11printStringPKc>
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
    80001630:	00004097          	auipc	ra,0x4
    80001634:	308080e7          	jalr	776(ra) # 80005938 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    80001638:	00000493          	li	s1,0
    8000163c:	0440006f          	j	80001680 <_Z15thread1FunctionPv+0x6c>
            thread_dispatch();
    80001640:	00000097          	auipc	ra,0x0
    80001644:	cf4080e7          	jalr	-780(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    80001648:	00008517          	auipc	a0,0x8
    8000164c:	9d850513          	addi	a0,a0,-1576 # 80009020 <CONSOLE_STATUS+0x10>
    80001650:	00004097          	auipc	ra,0x4
    80001654:	2e8080e7          	jalr	744(ra) # 80005938 <_Z11printStringPKc>
        printInt(i);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	0004851b          	sext.w	a0,s1
    80001664:	00004097          	auipc	ra,0x4
    80001668:	46c080e7          	jalr	1132(ra) # 80005ad0 <_Z8printIntiii>
        printString("\n");
    8000166c:	00008517          	auipc	a0,0x8
    80001670:	a8c50513          	addi	a0,a0,-1396 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001674:	00004097          	auipc	ra,0x4
    80001678:	2c4080e7          	jalr	708(ra) # 80005938 <_Z11printStringPKc>
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
    800016d0:	00004097          	auipc	ra,0x4
    800016d4:	268080e7          	jalr	616(ra) # 80005938 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800016d8:	00000493          	li	s1,0
    800016dc:	0440006f          	j	80001720 <_Z15thread2FunctionPv+0x6c>
            thread_dispatch();
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	c54080e7          	jalr	-940(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    800016e8:	00008517          	auipc	a0,0x8
    800016ec:	97850513          	addi	a0,a0,-1672 # 80009060 <CONSOLE_STATUS+0x50>
    800016f0:	00004097          	auipc	ra,0x4
    800016f4:	248080e7          	jalr	584(ra) # 80005938 <_Z11printStringPKc>
        printInt(j);
    800016f8:	00000613          	li	a2,0
    800016fc:	00a00593          	li	a1,10
    80001700:	0004851b          	sext.w	a0,s1
    80001704:	00004097          	auipc	ra,0x4
    80001708:	3cc080e7          	jalr	972(ra) # 80005ad0 <_Z8printIntiii>
        printString("\n");
    8000170c:	00008517          	auipc	a0,0x8
    80001710:	9ec50513          	addi	a0,a0,-1556 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001714:	00004097          	auipc	ra,0x4
    80001718:	224080e7          	jalr	548(ra) # 80005938 <_Z11printStringPKc>
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
    80001770:	00004097          	auipc	ra,0x4
    80001774:	1c8080e7          	jalr	456(ra) # 80005938 <_Z11printStringPKc>
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
    800017a0:	19c080e7          	jalr	412(ra) # 80005938 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00004097          	auipc	ra,0x4
    800017b4:	320080e7          	jalr	800(ra) # 80005ad0 <_Z8printIntiii>
        printString("\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	94050513          	addi	a0,a0,-1728 # 800090f8 <CONSOLE_STATUS+0xe8>
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	178080e7          	jalr	376(ra) # 80005938 <_Z11printStringPKc>
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
    80001854:	00004097          	auipc	ra,0x4
    80001858:	0e4080e7          	jalr	228(ra) # 80005938 <_Z11printStringPKc>
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
    80001898:	00004097          	auipc	ra,0x4
    8000189c:	0a0080e7          	jalr	160(ra) # 80005938 <_Z11printStringPKc>
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
    800018ec:	00004097          	auipc	ra,0x4
    800018f0:	04c080e7          	jalr	76(ra) # 80005938 <_Z11printStringPKc>
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
    80001934:	00004097          	auipc	ra,0x4
    80001938:	004080e7          	jalr	4(ra) # 80005938 <_Z11printStringPKc>
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
    80001978:	00004097          	auipc	ra,0x4
    8000197c:	fc0080e7          	jalr	-64(ra) # 80005938 <_Z11printStringPKc>
            return;
    80001980:	f21ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001984:	00007517          	auipc	a0,0x7
    80001988:	6fc50513          	addi	a0,a0,1788 # 80009080 <CONSOLE_STATUS+0x70>
    8000198c:	00004097          	auipc	ra,0x4
    80001990:	fac080e7          	jalr	-84(ra) # 80005938 <_Z11printStringPKc>
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
    800019b0:	00004097          	auipc	ra,0x4
    800019b4:	f88080e7          	jalr	-120(ra) # 80005938 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019b8:	0000a797          	auipc	a5,0xa
    800019bc:	f307b783          	ld	a5,-208(a5) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	0000a797          	auipc	a5,0xa
    800019c8:	ecc7b783          	ld	a5,-308(a5) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    800019ec:	00004097          	auipc	ra,0x4
    800019f0:	f4c080e7          	jalr	-180(ra) # 80005938 <_Z11printStringPKc>
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        printString("OK\n");
    80001a04:	00007517          	auipc	a0,0x7
    80001a08:	67c50513          	addi	a0,a0,1660 # 80009080 <CONSOLE_STATUS+0x70>
    80001a0c:	00004097          	auipc	ra,0x4
    80001a10:	f2c080e7          	jalr	-212(ra) # 80005938 <_Z11printStringPKc>
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
    80001a3c:	00004097          	auipc	ra,0x4
    80001a40:	efc080e7          	jalr	-260(ra) # 80005938 <_Z11printStringPKc>
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
    80001a90:	00004097          	auipc	ra,0x4
    80001a94:	040080e7          	jalr	64(ra) # 80005ad0 <_Z8printIntiii>
    printString("\n");
    80001a98:	00007517          	auipc	a0,0x7
    80001a9c:	66050513          	addi	a0,a0,1632 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001aa0:	00004097          	auipc	ra,0x4
    80001aa4:	e98080e7          	jalr	-360(ra) # 80005938 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001aa8:	00291793          	slli	a5,s2,0x2
    80001aac:	01278933          	add	s2,a5,s2
    80001ab0:	00191913          	slli	s2,s2,0x1
    80001ab4:	03390863          	beq	s2,s3,80001ae4 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	5c050513          	addi	a0,a0,1472 # 80009078 <CONSOLE_STATUS+0x68>
    80001ac0:	00004097          	auipc	ra,0x4
    80001ac4:	e78080e7          	jalr	-392(ra) # 80005938 <_Z11printStringPKc>
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
    80001af0:	e4c080e7          	jalr	-436(ra) # 80005938 <_Z11printStringPKc>
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
    80001b14:	e28080e7          	jalr	-472(ra) # 80005938 <_Z11printStringPKc>
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
    80001b40:	dfc080e7          	jalr	-516(ra) # 80005938 <_Z11printStringPKc>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret
         printString("OK\n");
    80001b54:	00007517          	auipc	a0,0x7
    80001b58:	52c50513          	addi	a0,a0,1324 # 80009080 <CONSOLE_STATUS+0x70>
    80001b5c:	00004097          	auipc	ra,0x4
    80001b60:	ddc080e7          	jalr	-548(ra) # 80005938 <_Z11printStringPKc>
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
    80001b8c:	db0080e7          	jalr	-592(ra) # 80005938 <_Z11printStringPKc>
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
    80001bd0:	d6c080e7          	jalr	-660(ra) # 80005938 <_Z11printStringPKc>
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
    80001c58:	ce4080e7          	jalr	-796(ra) # 80005938 <_Z11printStringPKc>
                return;
    80001c5c:	f79ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001c60:	00007517          	auipc	a0,0x7
    80001c64:	47050513          	addi	a0,a0,1136 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001c68:	00004097          	auipc	ra,0x4
    80001c6c:	cd0080e7          	jalr	-816(ra) # 80005938 <_Z11printStringPKc>
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
    80001cd0:	c6c080e7          	jalr	-916(ra) # 80005938 <_Z11printStringPKc>
                return;
    80001cd4:	f01ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001cd8:	00007517          	auipc	a0,0x7
    80001cdc:	3f850513          	addi	a0,a0,1016 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001ce0:	00004097          	auipc	ra,0x4
    80001ce4:	c58080e7          	jalr	-936(ra) # 80005938 <_Z11printStringPKc>
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
    80001d00:	c3c080e7          	jalr	-964(ra) # 80005938 <_Z11printStringPKc>
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
    80001d3c:	950080e7          	jalr	-1712(ra) # 80003688 <_ZN14PeriodicThreadC1Em>
    80001d40:	0000a797          	auipc	a5,0xa
    80001d44:	a1078793          	addi	a5,a5,-1520 # 8000b750 <_ZTV12TestPeriodic+0x10>
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
    80001d80:	608080e7          	jalr	1544(ra) # 80003384 <_Znwm>
    80001d84:	00050913          	mv	s2,a0
    80001d88:	03200593          	li	a1,50
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	f94080e7          	jalr	-108(ra) # 80001d20 <_ZN12TestPeriodicC1Em>
    t->start();
    80001d94:	00090513          	mv	a0,s2
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	6bc080e7          	jalr	1724(ra) # 80003454 <_ZN6Thread5startEv>
    while(true)
    80001da0:	0000006f          	j	80001da0 <_Z11threadTest3v+0x40>
    80001da4:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001da8:	00090513          	mv	a0,s2
    80001dac:	00001097          	auipc	ra,0x1
    80001db0:	600080e7          	jalr	1536(ra) # 800033ac <_ZdlPv>
    80001db4:	00048513          	mv	a0,s1
    80001db8:	0000f097          	auipc	ra,0xf
    80001dbc:	d50080e7          	jalr	-688(ra) # 80010b08 <_Unwind_Resume>

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
    80001e0c:	b30080e7          	jalr	-1232(ra) # 80005938 <_Z11printStringPKc>

    object* o = new object;
    80001e10:	02c00513          	li	a0,44
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	570080e7          	jalr	1392(ra) # 80003384 <_Znwm>
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
    80001e98:	518080e7          	jalr	1304(ra) # 800033ac <_ZdlPv>
    delete (uint64*)m3;
    80001e9c:	000a0513          	mv	a0,s4
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	50c080e7          	jalr	1292(ra) # 800033ac <_ZdlPv>
    delete (uint64*)m4;
    80001ea8:	000a8513          	mv	a0,s5
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	500080e7          	jalr	1280(ra) # 800033ac <_ZdlPv>
    delete (uint64*)m2;
    80001eb4:	00098513          	mv	a0,s3
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	4f4080e7          	jalr	1268(ra) # 800033ac <_ZdlPv>
    delete (uint64*)m5;
    80001ec0:	000b0513          	mv	a0,s6
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	4e8080e7          	jalr	1256(ra) # 800033ac <_ZdlPv>
    delete o;
    80001ecc:	00048863          	beqz	s1,80001edc <_Z10mallocTestv+0x104>
    80001ed0:	00048513          	mv	a0,s1
    80001ed4:	00001097          	auipc	ra,0x1
    80001ed8:	4d8080e7          	jalr	1240(ra) # 800033ac <_ZdlPv>

    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80001edc:	00007517          	auipc	a0,0x7
    80001ee0:	22450513          	addi	a0,a0,548 # 80009100 <CONSOLE_STATUS+0xf0>
    80001ee4:	00004097          	auipc	ra,0x4
    80001ee8:	a54080e7          	jalr	-1452(ra) # 80005938 <_Z11printStringPKc>
    80001eec:	0140006f          	j	80001f00 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    80001ef0:	00007517          	auipc	a0,0x7
    80001ef4:	18850513          	addi	a0,a0,392 # 80009078 <CONSOLE_STATUS+0x68>
    80001ef8:	00004097          	auipc	ra,0x4
    80001efc:	a40080e7          	jalr	-1472(ra) # 80005938 <_Z11printStringPKc>
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
    80001f7c:	9c0080e7          	jalr	-1600(ra) # 80005938 <_Z11printStringPKc>

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
    80001fc4:	978080e7          	jalr	-1672(ra) # 80005938 <_Z11printStringPKc>
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
    80002004:	3ac080e7          	jalr	940(ra) # 800033ac <_ZdlPv>
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
    80002078:	338080e7          	jalr	824(ra) # 800033ac <_ZdlPv>
    delete (uint64*)m[4];
    8000207c:	f8043503          	ld	a0,-128(s0)
    80002080:	00050663          	beqz	a0,8000208c <_Z17mallocGapFillTestv+0x14c>
    80002084:	00001097          	auipc	ra,0x1
    80002088:	328080e7          	jalr	808(ra) # 800033ac <_ZdlPv>
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
    800020d4:	868080e7          	jalr	-1944(ra) # 80005938 <_Z11printStringPKc>
        return;
    800020d8:	ef1ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020dc:	00007517          	auipc	a0,0x7
    800020e0:	f9c50513          	addi	a0,a0,-100 # 80009078 <CONSOLE_STATUS+0x68>
    800020e4:	00004097          	auipc	ra,0x4
    800020e8:	854080e7          	jalr	-1964(ra) # 80005938 <_Z11printStringPKc>
        return;
    800020ec:	eddff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020f0:	00007517          	auipc	a0,0x7
    800020f4:	f8850513          	addi	a0,a0,-120 # 80009078 <CONSOLE_STATUS+0x68>
    800020f8:	00004097          	auipc	ra,0x4
    800020fc:	840080e7          	jalr	-1984(ra) # 80005938 <_Z11printStringPKc>
        return;
    80002100:	ec9ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002104:	00007517          	auipc	a0,0x7
    80002108:	f7450513          	addi	a0,a0,-140 # 80009078 <CONSOLE_STATUS+0x68>
    8000210c:	00004097          	auipc	ra,0x4
    80002110:	82c080e7          	jalr	-2004(ra) # 80005938 <_Z11printStringPKc>
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
    8000213c:	274080e7          	jalr	628(ra) # 800033ac <_ZdlPv>
    80002140:	fd9ff06f          	j	80002118 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002144:	00048513          	mv	a0,s1
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	264080e7          	jalr	612(ra) # 800033ac <_ZdlPv>
    delete (uint64*)tmp2;
    80002150:	00090513          	mv	a0,s2
    80002154:	00001097          	auipc	ra,0x1
    80002158:	258080e7          	jalr	600(ra) # 800033ac <_ZdlPv>
    delete (uint64*)tmp3;
    8000215c:	00098513          	mv	a0,s3
    80002160:	00001097          	auipc	ra,0x1
    80002164:	24c080e7          	jalr	588(ra) # 800033ac <_ZdlPv>
    delete (uint64*)tmp4;
    80002168:	000c0513          	mv	a0,s8
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	240080e7          	jalr	576(ra) # 800033ac <_ZdlPv>
    delete (uint64*)tmp5;
    80002174:	000b8513          	mv	a0,s7
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	234080e7          	jalr	564(ra) # 800033ac <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002180:	00007517          	auipc	a0,0x7
    80002184:	ff850513          	addi	a0,a0,-8 # 80009178 <CONSOLE_STATUS+0x168>
    80002188:	00003097          	auipc	ra,0x3
    8000218c:	7b0080e7          	jalr	1968(ra) # 80005938 <_Z11printStringPKc>
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
    800021bc:	00009717          	auipc	a4,0x9
    800021c0:	78472703          	lw	a4,1924(a4) # 8000b940 <head>
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
    800021e0:	00009497          	auipc	s1,0x9
    800021e4:	76048493          	addi	s1,s1,1888 # 8000b940 <head>
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
    8000221c:	00009717          	auipc	a4,0x9
    80002220:	72472703          	lw	a4,1828(a4) # 8000b940 <head>
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
    80002244:	00009717          	auipc	a4,0x9
    80002248:	72472703          	lw	a4,1828(a4) # 8000b968 <tail>
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
    80002268:	00009497          	auipc	s1,0x9
    8000226c:	6d848493          	addi	s1,s1,1752 # 8000b940 <head>
    80002270:	0204b503          	ld	a0,32(s1)
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	16c080e7          	jalr	364(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    8000227c:	0284a783          	lw	a5,40(s1)
    80002280:	00009717          	auipc	a4,0x9
    80002284:	48070713          	addi	a4,a4,1152 # 8000b700 <string>
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
    800022ac:	00009717          	auipc	a4,0x9
    800022b0:	6bc72703          	lw	a4,1724(a4) # 8000b968 <tail>
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
    80002408:	31c78793          	addi	a5,a5,796 # 8000b720 <_ZTV14PeriodicThread+0x10>
    8000240c:	00f53023          	sd	a5,0(a0)
    80002410:	00001097          	auipc	ra,0x1
    80002414:	f04080e7          	jalr	-252(ra) # 80003314 <_ZN6ThreadD1Ev>
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
    80002444:	2e078793          	addi	a5,a5,736 # 8000b720 <_ZTV14PeriodicThread+0x10>
    80002448:	00f53023          	sd	a5,0(a0)
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	ec8080e7          	jalr	-312(ra) # 80003314 <_ZN6ThreadD1Ev>
    80002454:	00048513          	mv	a0,s1
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	f54080e7          	jalr	-172(ra) # 800033ac <_ZdlPv>
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
    80002488:	29c78793          	addi	a5,a5,668 # 8000b720 <_ZTV14PeriodicThread+0x10>
    8000248c:	00f53023          	sd	a5,0(a0)
    80002490:	00001097          	auipc	ra,0x1
    80002494:	e84080e7          	jalr	-380(ra) # 80003314 <_ZN6ThreadD1Ev>
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
    800024c4:	26078793          	addi	a5,a5,608 # 8000b720 <_ZTV14PeriodicThread+0x10>
    800024c8:	00f53023          	sd	a5,0(a0)
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	e48080e7          	jalr	-440(ra) # 80003314 <_ZN6ThreadD1Ev>
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	ed4080e7          	jalr	-300(ra) # 800033ac <_ZdlPv>
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
    80002508:	2c0080e7          	jalr	704(ra) # 800037c4 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    8000250c:	00009797          	auipc	a5,0x9
    80002510:	4647b783          	ld	a5,1124(a5) # 8000b970 <_ZN3PCB7runningE>
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
    nextPCB = 0;
    80002574:	00053423          	sd	zero,8(a0)
}
    80002578:	00813403          	ld	s0,8(sp)
    8000257c:	01010113          	addi	sp,sp,16
    80002580:	00008067          	ret

0000000080002584 <_ZN3PCB5sleepEm>:
{
    80002584:	ff010113          	addi	sp,sp,-16
    80002588:	00813423          	sd	s0,8(sp)
    8000258c:	01010413          	addi	s0,sp,16
}
    80002590:	00813403          	ld	s0,8(sp)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret

000000008000259c <_ZN3PCB5startEv>:
{
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00113423          	sd	ra,8(sp)
    800025a4:	00813023          	sd	s0,0(sp)
    800025a8:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	c14080e7          	jalr	-1004(ra) # 800031c0 <_ZN9Scheduler3putEP3PCB>
}
    800025b4:	00813083          	ld	ra,8(sp)
    800025b8:	00013403          	ld	s0,0(sp)
    800025bc:	01010113          	addi	sp,sp,16
    800025c0:	00008067          	ret

00000000800025c4 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800025c4:	fe010113          	addi	sp,sp,-32
    800025c8:	00113c23          	sd	ra,24(sp)
    800025cc:	00813823          	sd	s0,16(sp)
    800025d0:	00913423          	sd	s1,8(sp)
    800025d4:	01213023          	sd	s2,0(sp)
    800025d8:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    800025dc:	00009497          	auipc	s1,0x9
    800025e0:	3944b483          	ld	s1,916(s1) # 8000b970 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800025e4:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800025e8:	00100793          	li	a5,1
    800025ec:	04f70a63          	beq	a4,a5,80002640 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800025f0:	00001097          	auipc	ra,0x1
    800025f4:	c24080e7          	jalr	-988(ra) # 80003214 <_ZN9Scheduler3getEv>
    800025f8:	00009917          	auipc	s2,0x9
    800025fc:	37890913          	addi	s2,s2,888 # 8000b970 <_ZN3PCB7runningE>
    80002600:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002604:	00100793          	li	a5,1
    80002608:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    8000260c:	00001097          	auipc	ra,0x1
    80002610:	384080e7          	jalr	900(ra) # 80003990 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002614:	00093583          	ld	a1,0(s2)
    80002618:	04858593          	addi	a1,a1,72
    8000261c:	04848513          	addi	a0,s1,72
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	c18080e7          	jalr	-1000(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002628:	01813083          	ld	ra,24(sp)
    8000262c:	01013403          	ld	s0,16(sp)
    80002630:	00813483          	ld	s1,8(sp)
    80002634:	00013903          	ld	s2,0(sp)
    80002638:	02010113          	addi	sp,sp,32
    8000263c:	00008067          	ret
        Scheduler::put(old);
    80002640:	00048513          	mv	a0,s1
    80002644:	00001097          	auipc	ra,0x1
    80002648:	b7c080e7          	jalr	-1156(ra) # 800031c0 <_ZN9Scheduler3putEP3PCB>
    8000264c:	fa5ff06f          	j	800025f0 <_ZN3PCB8dispatchEv+0x2c>

0000000080002650 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00113423          	sd	ra,8(sp)
    80002658:	00813023          	sd	s0,0(sp)
    8000265c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002660:	00002097          	auipc	ra,0x2
    80002664:	a14080e7          	jalr	-1516(ra) # 80004074 <_ZN15MemoryAllocator7kmallocEm>
}
    80002668:	00813083          	ld	ra,8(sp)
    8000266c:	00013403          	ld	s0,0(sp)
    80002670:	01010113          	addi	sp,sp,16
    80002674:	00008067          	ret

0000000080002678 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002678:	ff010113          	addi	sp,sp,-16
    8000267c:	00113423          	sd	ra,8(sp)
    80002680:	00813023          	sd	s0,0(sp)
    80002684:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002688:	00002097          	auipc	ra,0x2
    8000268c:	a50080e7          	jalr	-1456(ra) # 800040d8 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002690:	00813083          	ld	ra,8(sp)
    80002694:	00013403          	ld	s0,0(sp)
    80002698:	01010113          	addi	sp,sp,16
    8000269c:	00008067          	ret

00000000800026a0 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800026a0:	ff010113          	addi	sp,sp,-16
    800026a4:	00113423          	sd	ra,8(sp)
    800026a8:	00813023          	sd	s0,0(sp)
    800026ac:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    800026b0:	03853503          	ld	a0,56(a0)
    800026b4:	00002097          	auipc	ra,0x2
    800026b8:	a24080e7          	jalr	-1500(ra) # 800040d8 <_ZN15MemoryAllocator5kfreeEPv>
}
    800026bc:	00813083          	ld	ra,8(sp)
    800026c0:	00013403          	ld	s0,0(sp)
    800026c4:	01010113          	addi	sp,sp,16
    800026c8:	00008067          	ret

00000000800026cc <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800026cc:	fd010113          	addi	sp,sp,-48
    800026d0:	02113423          	sd	ra,40(sp)
    800026d4:	02813023          	sd	s0,32(sp)
    800026d8:	00913c23          	sd	s1,24(sp)
    800026dc:	01213823          	sd	s2,16(sp)
    800026e0:	01313423          	sd	s3,8(sp)
    800026e4:	01413023          	sd	s4,0(sp)
    800026e8:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800026ec:	05800513          	li	a0,88
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	f60080e7          	jalr	-160(ra) # 80002650 <_ZN3PCBnwEm>
    800026f8:	00050493          	mv	s1,a0
    800026fc:	00000713          	li	a4,0
    80002700:	00000693          	li	a3,0
    80002704:	00000613          	li	a2,0
    80002708:	00000593          	li	a1,0
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	e2c080e7          	jalr	-468(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002714:	00048513          	mv	a0,s1
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	e84080e7          	jalr	-380(ra) # 8000259c <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002720:	00100793          	li	a5,1
    80002724:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	aec080e7          	jalr	-1300(ra) # 80003214 <_ZN9Scheduler3getEv>
    80002730:	00009917          	auipc	s2,0x9
    80002734:	24090913          	addi	s2,s2,576 # 8000b970 <_ZN3PCB7runningE>
    80002738:	00a93023          	sd	a0,0(s2)
    8000273c:	00100a13          	li	s4,1
    80002740:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002744:	00001537          	lui	a0,0x1
    80002748:	00002097          	auipc	ra,0x2
    8000274c:	92c080e7          	jalr	-1748(ra) # 80004074 <_ZN15MemoryAllocator7kmallocEm>
    80002750:	00050993          	mv	s3,a0
    80002754:	05800513          	li	a0,88
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	ef8080e7          	jalr	-264(ra) # 80002650 <_ZN3PCBnwEm>
    80002760:	00050493          	mv	s1,a0
    80002764:	00200713          	li	a4,2
    80002768:	00098693          	mv	a3,s3
    8000276c:	00000613          	li	a2,0
    80002770:	00009597          	auipc	a1,0x9
    80002774:	1585b583          	ld	a1,344(a1) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	dc0080e7          	jalr	-576(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002780:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002784:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002788:	00893503          	ld	a0,8(s2)
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	e10080e7          	jalr	-496(ra) # 8000259c <_ZN3PCB5startEv>
}
    80002794:	02813083          	ld	ra,40(sp)
    80002798:	02013403          	ld	s0,32(sp)
    8000279c:	01813483          	ld	s1,24(sp)
    800027a0:	01013903          	ld	s2,16(sp)
    800027a4:	00813983          	ld	s3,8(sp)
    800027a8:	00013a03          	ld	s4,0(sp)
    800027ac:	03010113          	addi	sp,sp,48
    800027b0:	00008067          	ret

00000000800027b4 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800027b4:	ff010113          	addi	sp,sp,-16
    800027b8:	00813423          	sd	s0,8(sp)
    800027bc:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800027c0:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800027c4:	ffd50513          	addi	a0,a0,-3
}
    800027c8:	00153513          	seqz	a0,a0
    800027cc:	00813403          	ld	s0,8(sp)
    800027d0:	01010113          	addi	sp,sp,16
    800027d4:	00008067          	ret

00000000800027d8 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	00813023          	sd	s0,0(sp)
    800027e4:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    800027e8:	00009797          	auipc	a5,0x9
    800027ec:	18878793          	addi	a5,a5,392 # 8000b970 <_ZN3PCB7runningE>
    800027f0:	0007b823          	sd	zero,16(a5)
    PCB::running->setState(PCB::FINISHED);
    800027f4:	0007b783          	ld	a5,0(a5)
    800027f8:	00300713          	li	a4,3
    800027fc:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002800:	00000097          	auipc	ra,0x0
    80002804:	dc4080e7          	jalr	-572(ra) # 800025c4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002808:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000280c:	00001097          	auipc	ra,0x1
    80002810:	14c080e7          	jalr	332(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002814:	00813083          	ld	ra,8(sp)
    80002818:	00013403          	ld	s0,0(sp)
    8000281c:	01010113          	addi	sp,sp,16
    80002820:	00008067          	ret

0000000080002824 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002824:	ff010113          	addi	sp,sp,-16
    80002828:	00113423          	sd	ra,8(sp)
    8000282c:	00813023          	sd	s0,0(sp)
    80002830:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002834:	00009797          	auipc	a5,0x9
    80002838:	1407b623          	sd	zero,332(a5) # 8000b980 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	d88080e7          	jalr	-632(ra) # 800025c4 <_ZN3PCB8dispatchEv>
}
    80002844:	00813083          	ld	ra,8(sp)
    80002848:	00013403          	ld	s0,0(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00113423          	sd	ra,8(sp)
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002864:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002868:	00009717          	auipc	a4,0x9
    8000286c:	10870713          	addi	a4,a4,264 # 8000b970 <_ZN3PCB7runningE>
    80002870:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002874:	00073703          	ld	a4,0(a4)
    80002878:	00009697          	auipc	a3,0x9
    8000287c:	0486b683          	ld	a3,72(a3) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002880:	0006b683          	ld	a3,0(a3)
    80002884:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002888:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	7b8080e7          	jalr	1976(ra) # 80003044 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002894:	00000097          	auipc	ra,0x0
    80002898:	d30080e7          	jalr	-720(ra) # 800025c4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    8000289c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028a0:	00001097          	auipc	ra,0x1
    800028a4:	0b8080e7          	jalr	184(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028a8:	00813083          	ld	ra,8(sp)
    800028ac:	00013403          	ld	s0,0(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800028b8:	fd010113          	addi	sp,sp,-48
    800028bc:	02113423          	sd	ra,40(sp)
    800028c0:	02813023          	sd	s0,32(sp)
    800028c4:	00913c23          	sd	s1,24(sp)
    800028c8:	01213823          	sd	s2,16(sp)
    800028cc:	01313423          	sd	s3,8(sp)
    800028d0:	01413023          	sd	s4,0(sp)
    800028d4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800028d8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800028dc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800028e0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800028e4:	05800513          	li	a0,88
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	d68080e7          	jalr	-664(ra) # 80002650 <_ZN3PCBnwEm>
    800028f0:	00050493          	mv	s1,a0
    800028f4:	00200713          	li	a4,2
    800028f8:	00009697          	auipc	a3,0x9
    800028fc:	0906b683          	ld	a3,144(a3) # 8000b988 <_ZN3PCB10savedRegA4E>
    80002900:	000a0613          	mv	a2,s4
    80002904:	00098593          	mv	a1,s3
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	c30080e7          	jalr	-976(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002910:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002914:	02048e63          	beqz	s1,80002950 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002918:	00048513          	mv	a0,s1
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	c80080e7          	jalr	-896(ra) # 8000259c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002924:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	030080e7          	jalr	48(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002930:	02813083          	ld	ra,40(sp)
    80002934:	02013403          	ld	s0,32(sp)
    80002938:	01813483          	ld	s1,24(sp)
    8000293c:	01013903          	ld	s2,16(sp)
    80002940:	00813983          	ld	s3,8(sp)
    80002944:	00013a03          	ld	s4,0(sp)
    80002948:	03010113          	addi	sp,sp,48
    8000294c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002950:	fff00513          	li	a0,-1
    80002954:	fd5ff06f          	j	80002928 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002958 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002958:	ff010113          	addi	sp,sp,-16
    8000295c:	00113423          	sd	ra,8(sp)
    80002960:	00813023          	sd	s0,0(sp)
    80002964:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002968:	00058513          	mv	a0,a1
    if(pcb != 0)
    8000296c:	02050463          	beqz	a0,80002994 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002970:	00000097          	auipc	ra,0x0
    80002974:	c2c080e7          	jalr	-980(ra) # 8000259c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002978:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    8000297c:	00001097          	auipc	ra,0x1
    80002980:	fdc080e7          	jalr	-36(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002984:	00813083          	ld	ra,8(sp)
    80002988:	00013403          	ld	s0,0(sp)
    8000298c:	01010113          	addi	sp,sp,16
    80002990:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002994:	fff00513          	li	a0,-1
    80002998:	fe5ff06f          	j	8000297c <_ZN3PCB18threadStartHandlerEv+0x24>

000000008000299c <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    8000299c:	fd010113          	addi	sp,sp,-48
    800029a0:	02113423          	sd	ra,40(sp)
    800029a4:	02813023          	sd	s0,32(sp)
    800029a8:	00913c23          	sd	s1,24(sp)
    800029ac:	01213823          	sd	s2,16(sp)
    800029b0:	01313423          	sd	s3,8(sp)
    800029b4:	01413023          	sd	s4,0(sp)
    800029b8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800029bc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800029c0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800029c4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800029c8:	05800513          	li	a0,88
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	c84080e7          	jalr	-892(ra) # 80002650 <_ZN3PCBnwEm>
    800029d4:	00050493          	mv	s1,a0
    800029d8:	00200713          	li	a4,2
    800029dc:	00009697          	auipc	a3,0x9
    800029e0:	fac6b683          	ld	a3,-84(a3) # 8000b988 <_ZN3PCB10savedRegA4E>
    800029e4:	000a0613          	mv	a2,s4
    800029e8:	00098593          	mv	a1,s3
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	b4c080e7          	jalr	-1204(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800029f4:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800029f8:	02048863          	beqz	s1,80002a28 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    800029fc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002a00:	00001097          	auipc	ra,0x1
    80002a04:	f58080e7          	jalr	-168(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a08:	02813083          	ld	ra,40(sp)
    80002a0c:	02013403          	ld	s0,32(sp)
    80002a10:	01813483          	ld	s1,24(sp)
    80002a14:	01013903          	ld	s2,16(sp)
    80002a18:	00813983          	ld	s3,8(sp)
    80002a1c:	00013a03          	ld	s4,0(sp)
    80002a20:	03010113          	addi	sp,sp,48
    80002a24:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002a28:	fff00513          	li	a0,-1
    80002a2c:	fd5ff06f          	j	80002a00 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002a30 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002a30:	fe010113          	addi	sp,sp,-32
    80002a34:	00113c23          	sd	ra,24(sp)
    80002a38:	00813823          	sd	s0,16(sp)
    80002a3c:	00913423          	sd	s1,8(sp)
    80002a40:	01213023          	sd	s2,0(sp)
    80002a44:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002a48:	01800513          	li	a0,24
    80002a4c:	00002097          	auipc	ra,0x2
    80002a50:	93c080e7          	jalr	-1732(ra) # 80004388 <_ZN10KSemaphorenwEm>
    80002a54:	00050493          	mv	s1,a0
    80002a58:	00000593          	li	a1,0
    80002a5c:	00001097          	auipc	ra,0x1
    80002a60:	6dc080e7          	jalr	1756(ra) # 80004138 <_ZN10KSemaphoreC1Ei>
    80002a64:	00009797          	auipc	a5,0x9
    80002a68:	f297b623          	sd	s1,-212(a5) # 8000b990 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002a6c:	01800513          	li	a0,24
    80002a70:	00002097          	auipc	ra,0x2
    80002a74:	918080e7          	jalr	-1768(ra) # 80004388 <_ZN10KSemaphorenwEm>
    80002a78:	00050493          	mv	s1,a0
    80002a7c:	00000593          	li	a1,0
    80002a80:	00001097          	auipc	ra,0x1
    80002a84:	6b8080e7          	jalr	1720(ra) # 80004138 <_ZN10KSemaphoreC1Ei>
    80002a88:	00009797          	auipc	a5,0x9
    80002a8c:	f097b823          	sd	s1,-240(a5) # 8000b998 <_ZN8KConsole19hasCharactersOutputE>
}
    80002a90:	01813083          	ld	ra,24(sp)
    80002a94:	01013403          	ld	s0,16(sp)
    80002a98:	00813483          	ld	s1,8(sp)
    80002a9c:	00013903          	ld	s2,0(sp)
    80002aa0:	02010113          	addi	sp,sp,32
    80002aa4:	00008067          	ret
    80002aa8:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002aac:	00048513          	mv	a0,s1
    80002ab0:	00002097          	auipc	ra,0x2
    80002ab4:	970080e7          	jalr	-1680(ra) # 80004420 <_ZN10KSemaphoredlEPv>
    80002ab8:	00090513          	mv	a0,s2
    80002abc:	0000e097          	auipc	ra,0xe
    80002ac0:	04c080e7          	jalr	76(ra) # 80010b08 <_Unwind_Resume>
    80002ac4:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002ac8:	00048513          	mv	a0,s1
    80002acc:	00002097          	auipc	ra,0x2
    80002ad0:	954080e7          	jalr	-1708(ra) # 80004420 <_ZN10KSemaphoredlEPv>
    80002ad4:	00090513          	mv	a0,s2
    80002ad8:	0000e097          	auipc	ra,0xe
    80002adc:	030080e7          	jalr	48(ra) # 80010b08 <_Unwind_Resume>

0000000080002ae0 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002ae0:	00009697          	auipc	a3,0x9
    80002ae4:	eb068693          	addi	a3,a3,-336 # 8000b990 <_ZN8KConsole18hasCharactersInputE>
    80002ae8:	0106b603          	ld	a2,16(a3)
    80002aec:	00160793          	addi	a5,a2,1
    80002af0:	00002737          	lui	a4,0x2
    80002af4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002af8:	00e7f7b3          	and	a5,a5,a4
    80002afc:	0186b703          	ld	a4,24(a3)
    80002b00:	04e78263          	beq	a5,a4,80002b44 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00113423          	sd	ra,8(sp)
    80002b0c:	00813023          	sd	s0,0(sp)
    80002b10:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002b14:	0000b717          	auipc	a4,0xb
    80002b18:	ebc70713          	addi	a4,a4,-324 # 8000d9d0 <_ZN8KConsole11inputBufferE>
    80002b1c:	00c70633          	add	a2,a4,a2
    80002b20:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002b24:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002b28:	0006b503          	ld	a0,0(a3)
    80002b2c:	00002097          	auipc	ra,0x2
    80002b30:	814080e7          	jalr	-2028(ra) # 80004340 <_ZN10KSemaphore6signalEv>
}
    80002b34:	00813083          	ld	ra,8(sp)
    80002b38:	00013403          	ld	s0,0(sp)
    80002b3c:	01010113          	addi	sp,sp,16
    80002b40:	00008067          	ret
    80002b44:	00008067          	ret

0000000080002b48 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002b48:	fe010113          	addi	sp,sp,-32
    80002b4c:	00113c23          	sd	ra,24(sp)
    80002b50:	00813823          	sd	s0,16(sp)
    80002b54:	00913423          	sd	s1,8(sp)
    80002b58:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002b5c:	00009497          	auipc	s1,0x9
    80002b60:	e3448493          	addi	s1,s1,-460 # 8000b990 <_ZN8KConsole18hasCharactersInputE>
    80002b64:	0004b503          	ld	a0,0(s1)
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	678080e7          	jalr	1656(ra) # 800041e0 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002b70:	0184b783          	ld	a5,24(s1)
    80002b74:	0104b703          	ld	a4,16(s1)
    80002b78:	04e78063          	beq	a5,a4,80002bb8 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002b7c:	0000b717          	auipc	a4,0xb
    80002b80:	e5470713          	addi	a4,a4,-428 # 8000d9d0 <_ZN8KConsole11inputBufferE>
    80002b84:	00f70733          	add	a4,a4,a5
    80002b88:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002b8c:	00178793          	addi	a5,a5,1
    80002b90:	00002737          	lui	a4,0x2
    80002b94:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002b98:	00e7f7b3          	and	a5,a5,a4
    80002b9c:	00009717          	auipc	a4,0x9
    80002ba0:	e0f73623          	sd	a5,-500(a4) # 8000b9a8 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002ba4:	01813083          	ld	ra,24(sp)
    80002ba8:	01013403          	ld	s0,16(sp)
    80002bac:	00813483          	ld	s1,8(sp)
    80002bb0:	02010113          	addi	sp,sp,32
    80002bb4:	00008067          	ret
        return -1;
    80002bb8:	0ff00513          	li	a0,255
    80002bbc:	fe9ff06f          	j	80002ba4 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002bc0 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002bc0:	00009697          	auipc	a3,0x9
    80002bc4:	dd068693          	addi	a3,a3,-560 # 8000b990 <_ZN8KConsole18hasCharactersInputE>
    80002bc8:	0206b603          	ld	a2,32(a3)
    80002bcc:	00160793          	addi	a5,a2,1
    80002bd0:	00002737          	lui	a4,0x2
    80002bd4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002bd8:	00e7f7b3          	and	a5,a5,a4
    80002bdc:	0286b703          	ld	a4,40(a3)
    80002be0:	04e78a63          	beq	a5,a4,80002c34 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002be4:	ff010113          	addi	sp,sp,-16
    80002be8:	00113423          	sd	ra,8(sp)
    80002bec:	00813023          	sd	s0,0(sp)
    80002bf0:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002bf4:	00068713          	mv	a4,a3
    80002bf8:	0306b683          	ld	a3,48(a3)
    80002bfc:	00168693          	addi	a3,a3,1
    80002c00:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002c04:	00009697          	auipc	a3,0x9
    80002c08:	dcc68693          	addi	a3,a3,-564 # 8000b9d0 <_ZN8KConsole12outputBufferE>
    80002c0c:	00c68633          	add	a2,a3,a2
    80002c10:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002c14:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002c18:	00873503          	ld	a0,8(a4)
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	724080e7          	jalr	1828(ra) # 80004340 <_ZN10KSemaphore6signalEv>
}
    80002c24:	00813083          	ld	ra,8(sp)
    80002c28:	00013403          	ld	s0,0(sp)
    80002c2c:	01010113          	addi	sp,sp,16
    80002c30:	00008067          	ret
    80002c34:	00008067          	ret

0000000080002c38 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002c38:	00009797          	auipc	a5,0x9
    80002c3c:	c507b783          	ld	a5,-944(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c40:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002c44:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002c48:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002c4c:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002c50:	0017f793          	andi	a5,a5,1
    80002c54:	08078063          	beqz	a5,80002cd4 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002c58:	fe010113          	addi	sp,sp,-32
    80002c5c:	00113c23          	sd	ra,24(sp)
    80002c60:	00813823          	sd	s0,16(sp)
    80002c64:	00913423          	sd	s1,8(sp)
    80002c68:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002c6c:	00009797          	auipc	a5,0x9
    80002c70:	c3c7b783          	ld	a5,-964(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c74:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002c78:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002c7c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002c80:	00058493          	mv	s1,a1
    80002c84:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002c88:	00048513          	mv	a0,s1
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	e54080e7          	jalr	-428(ra) # 80002ae0 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002c94:	00048513          	mv	a0,s1
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	f28080e7          	jalr	-216(ra) # 80002bc0 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002ca0:	00009797          	auipc	a5,0x9
    80002ca4:	be87b783          	ld	a5,-1048(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ca8:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002cac:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002cb0:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002cb4:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002cb8:	0017f793          	andi	a5,a5,1
    80002cbc:	fa0798e3          	bnez	a5,80002c6c <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002cc0:	01813083          	ld	ra,24(sp)
    80002cc4:	01013403          	ld	s0,16(sp)
    80002cc8:	00813483          	ld	s1,8(sp)
    80002ccc:	02010113          	addi	sp,sp,32
    80002cd0:	00008067          	ret
    80002cd4:	00008067          	ret

0000000080002cd8 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002cd8:	fe010113          	addi	sp,sp,-32
    80002cdc:	00113c23          	sd	ra,24(sp)
    80002ce0:	00813823          	sd	s0,16(sp)
    80002ce4:	00913423          	sd	s1,8(sp)
    80002ce8:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80002cec:	00009497          	auipc	s1,0x9
    80002cf0:	ca448493          	addi	s1,s1,-860 # 8000b990 <_ZN8KConsole18hasCharactersInputE>
    80002cf4:	0084b503          	ld	a0,8(s1)
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	4e8080e7          	jalr	1256(ra) # 800041e0 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002d00:	0284b783          	ld	a5,40(s1)
    80002d04:	0204b703          	ld	a4,32(s1)
    80002d08:	04e78063          	beq	a5,a4,80002d48 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002d0c:	00009717          	auipc	a4,0x9
    80002d10:	cc470713          	addi	a4,a4,-828 # 8000b9d0 <_ZN8KConsole12outputBufferE>
    80002d14:	00f70733          	add	a4,a4,a5
    80002d18:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002d1c:	00178793          	addi	a5,a5,1
    80002d20:	00002737          	lui	a4,0x2
    80002d24:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002d28:	00e7f7b3          	and	a5,a5,a4
    80002d2c:	00009717          	auipc	a4,0x9
    80002d30:	c8f73623          	sd	a5,-884(a4) # 8000b9b8 <_ZN8KConsole10outputHeadE>

    return c;
}
    80002d34:	01813083          	ld	ra,24(sp)
    80002d38:	01013403          	ld	s0,16(sp)
    80002d3c:	00813483          	ld	s1,8(sp)
    80002d40:	02010113          	addi	sp,sp,32
    80002d44:	00008067          	ret
        return -1;
    80002d48:	0ff00513          	li	a0,255
    80002d4c:	fe9ff06f          	j	80002d34 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080002d50 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80002d50:	ff010113          	addi	sp,sp,-16
    80002d54:	00113423          	sd	ra,8(sp)
    80002d58:	00813023          	sd	s0,0(sp)
    80002d5c:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80002d60:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80002d64:	0ff57513          	andi	a0,a0,255
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	e58080e7          	jalr	-424(ra) # 80002bc0 <_ZN8KConsole18putCharacterOutputEc>
}
    80002d70:	00813083          	ld	ra,8(sp)
    80002d74:	00013403          	ld	s0,0(sp)
    80002d78:	01010113          	addi	sp,sp,16
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80002d80:	fe010113          	addi	sp,sp,-32
    80002d84:	00113c23          	sd	ra,24(sp)
    80002d88:	00813823          	sd	s0,16(sp)
    80002d8c:	00913423          	sd	s1,8(sp)
    80002d90:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80002d94:	00009717          	auipc	a4,0x9
    80002d98:	bfc70713          	addi	a4,a4,-1028 # 8000b990 <_ZN8KConsole18hasCharactersInputE>
    80002d9c:	03873783          	ld	a5,56(a4)
    80002da0:	00178793          	addi	a5,a5,1
    80002da4:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	da0080e7          	jalr	-608(ra) # 80002b48 <_ZN8KConsole17getCharacterInputEv>
    80002db0:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80002db4:	01b00793          	li	a5,27
    80002db8:	02f51663          	bne	a0,a5,80002de4 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80002dbc:	00d00793          	li	a5,13
    80002dc0:	02f48863          	beq	s1,a5,80002df0 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002dc4:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80002dc8:	00001097          	auipc	ra,0x1
    80002dcc:	b90080e7          	jalr	-1136(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002dd0:	01813083          	ld	ra,24(sp)
    80002dd4:	01013403          	ld	s0,16(sp)
    80002dd8:	00813483          	ld	s1,8(sp)
    80002ddc:	02010113          	addi	sp,sp,32
    80002de0:	00008067          	ret
        putCharacterOutput(ch);
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	ddc080e7          	jalr	-548(ra) # 80002bc0 <_ZN8KConsole18putCharacterOutputEc>
    80002dec:	fd1ff06f          	j	80002dbc <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80002df0:	00d00513          	li	a0,13
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	dcc080e7          	jalr	-564(ra) # 80002bc0 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80002dfc:	00a00513          	li	a0,10
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	dc0080e7          	jalr	-576(ra) # 80002bc0 <_ZN8KConsole18putCharacterOutputEc>
    80002e08:	fbdff06f          	j	80002dc4 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080002e0c <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80002e0c:	ff010113          	addi	sp,sp,-16
    80002e10:	00813423          	sd	s0,8(sp)
    80002e14:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80002e18:	00009517          	auipc	a0,0x9
    80002e1c:	ba853503          	ld	a0,-1112(a0) # 8000b9c0 <_ZN8KConsole11pendingPutcE>
    80002e20:	00153513          	seqz	a0,a0
    80002e24:	00813403          	ld	s0,8(sp)
    80002e28:	01010113          	addi	sp,sp,16
    80002e2c:	00008067          	ret

0000000080002e30 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80002e30:	fe010113          	addi	sp,sp,-32
    80002e34:	00113c23          	sd	ra,24(sp)
    80002e38:	00813823          	sd	s0,16(sp)
    80002e3c:	02010413          	addi	s0,sp,32
    80002e40:	0180006f          	j	80002e58 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80002e44:	ffffe097          	auipc	ra,0xffffe
    80002e48:	510080e7          	jalr	1296(ra) # 80001354 <thread_exit>
    80002e4c:	0340006f          	j	80002e80 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	4e4080e7          	jalr	1252(ra) # 80001334 <thread_dispatch>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80002e58:	00009797          	auipc	a5,0x9
    80002e5c:	a807b783          	ld	a5,-1408(a5) # 8000b8d8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002e60:	0007c783          	lbu	a5,0(a5)
    80002e64:	00078e63          	beqz	a5,80002e80 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	fa4080e7          	jalr	-92(ra) # 80002e0c <_ZN8KConsole17outputBufferEmptyEv>
    80002e70:	00050863          	beqz	a0,80002e80 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e74:	00009797          	auipc	a5,0x9
    80002e78:	b547b783          	ld	a5,-1196(a5) # 8000b9c8 <_ZN8KConsole11pendingGetcE>
    80002e7c:	fc0784e3          	beqz	a5,80002e44 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002e80:	00009797          	auipc	a5,0x9
    80002e84:	a087b783          	ld	a5,-1528(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e88:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002e8c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80002e90:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002e94:	00058793          	mv	a5,a1
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80002e98:	0207f793          	andi	a5,a5,32
    80002e9c:	fa078ae3          	beqz	a5,80002e50 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80002ea0:	00009797          	auipc	a5,0x9
    80002ea4:	b207b783          	ld	a5,-1248(a5) # 8000b9c0 <_ZN8KConsole11pendingPutcE>
    80002ea8:	fa0784e3          	beqz	a5,80002e50 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002eac:	ffffe097          	auipc	ra,0xffffe
    80002eb0:	6b0080e7          	jalr	1712(ra) # 8000155c <sysCallGetCharOutput>
    80002eb4:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002eb8:	00009717          	auipc	a4,0x9
    80002ebc:	ad870713          	addi	a4,a4,-1320 # 8000b990 <_ZN8KConsole18hasCharactersInputE>
    80002ec0:	03073783          	ld	a5,48(a4)
    80002ec4:	fff78793          	addi	a5,a5,-1
    80002ec8:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002ecc:	00009797          	auipc	a5,0x9
    80002ed0:	9b47b783          	ld	a5,-1612(a5) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ed4:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002ed8:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80002edc:	fef44783          	lbu	a5,-17(s0)
    80002ee0:	0ff7f793          	andi	a5,a5,255
    80002ee4:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80002ee8:	00b50023          	sb	a1,0(a0)
    80002eec:	f6dff06f          	j	80002e58 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080002ef0 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00113423          	sd	ra,8(sp)
    80002ef8:	00813023          	sd	s0,0(sp)
    80002efc:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	dd8080e7          	jalr	-552(ra) # 80002cd8 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002f08:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80002f0c:	00001097          	auipc	ra,0x1
    80002f10:	a4c080e7          	jalr	-1460(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002f14:	00813083          	ld	ra,8(sp)
    80002f18:	00013403          	ld	s0,0(sp)
    80002f1c:	01010113          	addi	sp,sp,16
    80002f20:	00008067          	ret

0000000080002f24 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80002f24:	fe010113          	addi	sp,sp,-32
    80002f28:	00113c23          	sd	ra,24(sp)
    80002f2c:	00813823          	sd	s0,16(sp)
    80002f30:	00913423          	sd	s1,8(sp)
    80002f34:	02010413          	addi	s0,sp,32
    80002f38:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002f3c:	0004c503          	lbu	a0,0(s1)
    80002f40:	00050a63          	beqz	a0,80002f54 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	c7c080e7          	jalr	-900(ra) # 80002bc0 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80002f4c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f50:	fedff06f          	j	80002f3c <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80002f54:	01813083          	ld	ra,24(sp)
    80002f58:	01013403          	ld	s0,16(sp)
    80002f5c:	00813483          	ld	s1,8(sp)
    80002f60:	02010113          	addi	sp,sp,32
    80002f64:	00008067          	ret

0000000080002f68 <_ZN8KConsole8printIntEiii>:

void KConsole::printInt(int xx, int base, int sgn)
{
    80002f68:	fb010113          	addi	sp,sp,-80
    80002f6c:	04113423          	sd	ra,72(sp)
    80002f70:	04813023          	sd	s0,64(sp)
    80002f74:	02913c23          	sd	s1,56(sp)
    80002f78:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80002f7c:	00006797          	auipc	a5,0x6
    80002f80:	25478793          	addi	a5,a5,596 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80002f84:	0007b703          	ld	a4,0(a5)
    80002f88:	fce43423          	sd	a4,-56(s0)
    80002f8c:	0087b703          	ld	a4,8(a5)
    80002f90:	fce43823          	sd	a4,-48(s0)
    80002f94:	0107c783          	lbu	a5,16(a5)
    80002f98:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002f9c:	00060463          	beqz	a2,80002fa4 <_ZN8KConsole8printIntEiii+0x3c>
    80002fa0:	08054263          	bltz	a0,80003024 <_ZN8KConsole8printIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002fa4:	0005051b          	sext.w	a0,a0
    neg = 0;
    80002fa8:	00000813          	li	a6,0
    }

    i = 0;
    80002fac:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002fb0:	0005871b          	sext.w	a4,a1
    80002fb4:	02b577bb          	remuw	a5,a0,a1
    80002fb8:	00048693          	mv	a3,s1
    80002fbc:	0014849b          	addiw	s1,s1,1
    80002fc0:	02079793          	slli	a5,a5,0x20
    80002fc4:	0207d793          	srli	a5,a5,0x20
    80002fc8:	fe040613          	addi	a2,s0,-32
    80002fcc:	00f607b3          	add	a5,a2,a5
    80002fd0:	fe87c603          	lbu	a2,-24(a5)
    80002fd4:	fe040793          	addi	a5,s0,-32
    80002fd8:	00d787b3          	add	a5,a5,a3
    80002fdc:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    80002fe0:	0005061b          	sext.w	a2,a0
    80002fe4:	02b5553b          	divuw	a0,a0,a1
    80002fe8:	fce674e3          	bgeu	a2,a4,80002fb0 <_ZN8KConsole8printIntEiii+0x48>
    if(neg)
    80002fec:	00080c63          	beqz	a6,80003004 <_ZN8KConsole8printIntEiii+0x9c>
        buf[i++] = '-';
    80002ff0:	fe040793          	addi	a5,s0,-32
    80002ff4:	009784b3          	add	s1,a5,s1
    80002ff8:	02d00793          	li	a5,45
    80002ffc:	fcf48c23          	sb	a5,-40(s1)
    80003000:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80003004:	fff4849b          	addiw	s1,s1,-1
    80003008:	0204c463          	bltz	s1,80003030 <_ZN8KConsole8printIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    8000300c:	fe040793          	addi	a5,s0,-32
    80003010:	009787b3          	add	a5,a5,s1
    80003014:	fd87c503          	lbu	a0,-40(a5)
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	ba8080e7          	jalr	-1112(ra) # 80002bc0 <_ZN8KConsole18putCharacterOutputEc>
    80003020:	fe5ff06f          	j	80003004 <_ZN8KConsole8printIntEiii+0x9c>
        x = -xx;
    80003024:	40a0053b          	negw	a0,a0
        neg = 1;
    80003028:	00100813          	li	a6,1
        x = -xx;
    8000302c:	f81ff06f          	j	80002fac <_ZN8KConsole8printIntEiii+0x44>
}
    80003030:	04813083          	ld	ra,72(sp)
    80003034:	04013403          	ld	s0,64(sp)
    80003038:	03813483          	ld	s1,56(sp)
    8000303c:	05010113          	addi	sp,sp,80
    80003040:	00008067          	ret

0000000080003044 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00813423          	sd	s0,8(sp)
    8000304c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003050:	00009797          	auipc	a5,0x9
    80003054:	8907b783          	ld	a5,-1904(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003058:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    8000305c:	00500793          	li	a5,5
    80003060:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003064:	0000d797          	auipc	a5,0xd
    80003068:	96c7b783          	ld	a5,-1684(a5) # 8000f9d0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    8000306c:	00000593          	li	a1,0
    while(curr != 0)
    80003070:	02078063          	beqz	a5,80003090 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003074:	02063683          	ld	a3,32(a2)
    80003078:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    8000307c:	00e6e863          	bltu	a3,a4,8000308c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003080:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003084:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003088:	fe9ff06f          	j	80003070 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000308c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003090:	00058a63          	beqz	a1,800030a4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003094:	00c5b423          	sd	a2,8(a1)
}
    80003098:	00813403          	ld	s0,8(sp)
    8000309c:	01010113          	addi	sp,sp,16
    800030a0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800030a4:	0000d797          	auipc	a5,0xd
    800030a8:	92c7b623          	sd	a2,-1748(a5) # 8000f9d0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800030ac:	fedff06f          	j	80003098 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800030b0 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800030b0:	0000d517          	auipc	a0,0xd
    800030b4:	92053503          	ld	a0,-1760(a0) # 8000f9d0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800030b8:	06050e63          	beqz	a0,80003134 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800030bc:	06050c63          	beqz	a0,80003134 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800030c0:	02053783          	ld	a5,32(a0)
    800030c4:	00008717          	auipc	a4,0x8
    800030c8:	7fc73703          	ld	a4,2044(a4) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800030cc:	00073703          	ld	a4,0(a4)
    800030d0:	06f76263          	bltu	a4,a5,80003134 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800030d4:	fe010113          	addi	sp,sp,-32
    800030d8:	00113c23          	sd	ra,24(sp)
    800030dc:	00813823          	sd	s0,16(sp)
    800030e0:	00913423          	sd	s1,8(sp)
    800030e4:	02010413          	addi	s0,sp,32
    800030e8:	0180006f          	j	80003100 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800030ec:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800030f0:	00008717          	auipc	a4,0x8
    800030f4:	7d073703          	ld	a4,2000(a4) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800030f8:	00073703          	ld	a4,0(a4)
    800030fc:	02f76263          	bltu	a4,a5,80003120 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003100:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003104:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	0b8080e7          	jalr	184(ra) # 800031c0 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003110:	0000d797          	auipc	a5,0xd
    80003114:	8c97b023          	sd	s1,-1856(a5) # 8000f9d0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003118:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000311c:	fc0498e3          	bnez	s1,800030ec <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003120:	01813083          	ld	ra,24(sp)
    80003124:	01013403          	ld	s0,16(sp)
    80003128:	00813483          	ld	s1,8(sp)
    8000312c:	02010113          	addi	sp,sp,32
    80003130:	00008067          	ret
    80003134:	00008067          	ret

0000000080003138 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00113423          	sd	ra,8(sp)
    80003140:	00813023          	sd	s0,0(sp)
    80003144:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003148:	00001097          	auipc	ra,0x1
    8000314c:	f2c080e7          	jalr	-212(ra) # 80004074 <_ZN15MemoryAllocator7kmallocEm>
}
    80003150:	00813083          	ld	ra,8(sp)
    80003154:	00013403          	ld	s0,0(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret

0000000080003160 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00113423          	sd	ra,8(sp)
    80003168:	00813023          	sd	s0,0(sp)
    8000316c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003170:	00001097          	auipc	ra,0x1
    80003174:	f68080e7          	jalr	-152(ra) # 800040d8 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003178:	00813083          	ld	ra,8(sp)
    8000317c:	00013403          	ld	s0,0(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003188:	ff010113          	addi	sp,sp,-16
    8000318c:	00813423          	sd	s0,8(sp)
    80003190:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003194:	0000d797          	auipc	a5,0xd
    80003198:	8447b783          	ld	a5,-1980(a5) # 8000f9d8 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    8000319c:	00000513          	li	a0,0
    while(curr != 0)
    800031a0:	00078863          	beqz	a5,800031b0 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800031a4:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800031a8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031ac:	ff5ff06f          	j	800031a0 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800031b0:	0005051b          	sext.w	a0,a0
    800031b4:	00813403          	ld	s0,8(sp)
    800031b8:	01010113          	addi	sp,sp,16
    800031bc:	00008067          	ret

00000000800031c0 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00813423          	sd	s0,8(sp)
    800031c8:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800031cc:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800031d0:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800031d4:	0000d797          	auipc	a5,0xd
    800031d8:	8047b783          	ld	a5,-2044(a5) # 8000f9d8 <_ZN9Scheduler16schedulerPCBHeadE>
    800031dc:	02078263          	beqz	a5,80003200 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800031e0:	0000c797          	auipc	a5,0xc
    800031e4:	7f878793          	addi	a5,a5,2040 # 8000f9d8 <_ZN9Scheduler16schedulerPCBHeadE>
    800031e8:	0087b703          	ld	a4,8(a5)
    800031ec:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800031f0:	00a7b423          	sd	a0,8(a5)
    }
}
    800031f4:	00813403          	ld	s0,8(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003200:	0000c797          	auipc	a5,0xc
    80003204:	7d878793          	addi	a5,a5,2008 # 8000f9d8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003208:	00a7b423          	sd	a0,8(a5)
    8000320c:	00a7b023          	sd	a0,0(a5)
    80003210:	fe5ff06f          	j	800031f4 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003214 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003214:	ff010113          	addi	sp,sp,-16
    80003218:	00813423          	sd	s0,8(sp)
    8000321c:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003220:	0000c517          	auipc	a0,0xc
    80003224:	7b853503          	ld	a0,1976(a0) # 8000f9d8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003228:	00050c63          	beqz	a0,80003240 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    8000322c:	00853783          	ld	a5,8(a0)
    80003230:	00078e63          	beqz	a5,8000324c <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003234:	0000c717          	auipc	a4,0xc
    80003238:	7af73223          	sd	a5,1956(a4) # 8000f9d8 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    8000323c:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003240:	00813403          	ld	s0,8(sp)
    80003244:	01010113          	addi	sp,sp,16
    80003248:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    8000324c:	0000c797          	auipc	a5,0xc
    80003250:	78c78793          	addi	a5,a5,1932 # 8000f9d8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003254:	0007b423          	sd	zero,8(a5)
    80003258:	0007b023          	sd	zero,0(a5)
    8000325c:	fe1ff06f          	j	8000323c <_ZN9Scheduler3getEv+0x28>

0000000080003260 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003260:	fe010113          	addi	sp,sp,-32
    80003264:	00113c23          	sd	ra,24(sp)
    80003268:	00813823          	sd	s0,16(sp)
    8000326c:	00913423          	sd	s1,8(sp)
    80003270:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003274:	0000c497          	auipc	s1,0xc
    80003278:	7644b483          	ld	s1,1892(s1) # 8000f9d8 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    8000327c:	02048863          	beqz	s1,800032ac <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    80003280:	00000613          	li	a2,0
    80003284:	01000593          	li	a1,16
    80003288:	0004851b          	sext.w	a0,s1
    8000328c:	00003097          	auipc	ra,0x3
    80003290:	844080e7          	jalr	-1980(ra) # 80005ad0 <_Z8printIntiii>
        printString("\n");
    80003294:	00006517          	auipc	a0,0x6
    80003298:	e6450513          	addi	a0,a0,-412 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000329c:	00002097          	auipc	ra,0x2
    800032a0:	69c080e7          	jalr	1692(ra) # 80005938 <_Z11printStringPKc>
        curr = curr->nextPCB;
    800032a4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800032a8:	fd5ff06f          	j	8000327c <_ZN9Scheduler5printEv+0x1c>
    }
}
    800032ac:	01813083          	ld	ra,24(sp)
    800032b0:	01013403          	ld	s0,16(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	02010113          	addi	sp,sp,32
    800032bc:	00008067          	ret

00000000800032c0 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    800032c0:	ff010113          	addi	sp,sp,-16
    800032c4:	00113423          	sd	ra,8(sp)
    800032c8:	00813023          	sd	s0,0(sp)
    800032cc:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	514080e7          	jalr	1300(ra) # 800037e4 <_ZN5Riscv10kernelMainEv>
    800032d8:	00813083          	ld	ra,8(sp)
    800032dc:	00013403          	ld	s0,0(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret

00000000800032e8 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00113423          	sd	ra,8(sp)
    800032f0:	00813023          	sd	s0,0(sp)
    800032f4:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800032f8:	00053783          	ld	a5,0(a0)
    800032fc:	0107b783          	ld	a5,16(a5)
    80003300:	000780e7          	jalr	a5
}
    80003304:	00813083          	ld	ra,8(sp)
    80003308:	00013403          	ld	s0,0(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret

0000000080003314 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00113423          	sd	ra,8(sp)
    8000331c:	00813023          	sd	s0,0(sp)
    80003320:	01010413          	addi	s0,sp,16
    80003324:	00008797          	auipc	a5,0x8
    80003328:	46478793          	addi	a5,a5,1124 # 8000b788 <_ZTV6Thread+0x10>
    8000332c:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    80003330:	00853503          	ld	a0,8(a0)
    80003334:	ffffe097          	auipc	ra,0xffffe
    80003338:	f54080e7          	jalr	-172(ra) # 80001288 <mem_free>
}
    8000333c:	00813083          	ld	ra,8(sp)
    80003340:	00013403          	ld	s0,0(sp)
    80003344:	01010113          	addi	sp,sp,16
    80003348:	00008067          	ret

000000008000334c <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    8000334c:	ff010113          	addi	sp,sp,-16
    80003350:	00113423          	sd	ra,8(sp)
    80003354:	00813023          	sd	s0,0(sp)
    80003358:	01010413          	addi	s0,sp,16
    8000335c:	00008797          	auipc	a5,0x8
    80003360:	45478793          	addi	a5,a5,1108 # 8000b7b0 <_ZTV9Semaphore+0x10>
    80003364:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003368:	00853503          	ld	a0,8(a0)
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	f1c080e7          	jalr	-228(ra) # 80001288 <mem_free>
}
    80003374:	00813083          	ld	ra,8(sp)
    80003378:	00013403          	ld	s0,0(sp)
    8000337c:	01010113          	addi	sp,sp,16
    80003380:	00008067          	ret

0000000080003384 <_Znwm>:
{
    80003384:	ff010113          	addi	sp,sp,-16
    80003388:	00113423          	sd	ra,8(sp)
    8000338c:	00813023          	sd	s0,0(sp)
    80003390:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003394:	ffffe097          	auipc	ra,0xffffe
    80003398:	ec4080e7          	jalr	-316(ra) # 80001258 <mem_alloc>
}
    8000339c:	00813083          	ld	ra,8(sp)
    800033a0:	00013403          	ld	s0,0(sp)
    800033a4:	01010113          	addi	sp,sp,16
    800033a8:	00008067          	ret

00000000800033ac <_ZdlPv>:
{
    800033ac:	ff010113          	addi	sp,sp,-16
    800033b0:	00113423          	sd	ra,8(sp)
    800033b4:	00813023          	sd	s0,0(sp)
    800033b8:	01010413          	addi	s0,sp,16
    mem_free(p);
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	ecc080e7          	jalr	-308(ra) # 80001288 <mem_free>
}
    800033c4:	00813083          	ld	ra,8(sp)
    800033c8:	00013403          	ld	s0,0(sp)
    800033cc:	01010113          	addi	sp,sp,16
    800033d0:	00008067          	ret

00000000800033d4 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800033d4:	fe010113          	addi	sp,sp,-32
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	00813823          	sd	s0,16(sp)
    800033e0:	00913423          	sd	s1,8(sp)
    800033e4:	02010413          	addi	s0,sp,32
    800033e8:	00050493          	mv	s1,a0
}
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	f28080e7          	jalr	-216(ra) # 80003314 <_ZN6ThreadD1Ev>
    800033f4:	00048513          	mv	a0,s1
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	fb4080e7          	jalr	-76(ra) # 800033ac <_ZdlPv>
    80003400:	01813083          	ld	ra,24(sp)
    80003404:	01013403          	ld	s0,16(sp)
    80003408:	00813483          	ld	s1,8(sp)
    8000340c:	02010113          	addi	sp,sp,32
    80003410:	00008067          	ret

0000000080003414 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003414:	fe010113          	addi	sp,sp,-32
    80003418:	00113c23          	sd	ra,24(sp)
    8000341c:	00813823          	sd	s0,16(sp)
    80003420:	00913423          	sd	s1,8(sp)
    80003424:	02010413          	addi	s0,sp,32
    80003428:	00050493          	mv	s1,a0
}
    8000342c:	00000097          	auipc	ra,0x0
    80003430:	f20080e7          	jalr	-224(ra) # 8000334c <_ZN9SemaphoreD1Ev>
    80003434:	00048513          	mv	a0,s1
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	f74080e7          	jalr	-140(ra) # 800033ac <_ZdlPv>
    80003440:	01813083          	ld	ra,24(sp)
    80003444:	01013403          	ld	s0,16(sp)
    80003448:	00813483          	ld	s1,8(sp)
    8000344c:	02010113          	addi	sp,sp,32
    80003450:	00008067          	ret

0000000080003454 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003454:	00853503          	ld	a0,8(a0)
    80003458:	02050663          	beqz	a0,80003484 <_ZN6Thread5startEv+0x30>
{
    8000345c:	ff010113          	addi	sp,sp,-16
    80003460:	00113423          	sd	ra,8(sp)
    80003464:	00813023          	sd	s0,0(sp)
    80003468:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	ff8080e7          	jalr	-8(ra) # 80001464 <thread_start>
}
    80003474:	00813083          	ld	ra,8(sp)
    80003478:	00013403          	ld	s0,0(sp)
    8000347c:	01010113          	addi	sp,sp,16
    80003480:	00008067          	ret
        return -1;
    80003484:	fff00513          	li	a0,-1
}
    80003488:	00008067          	ret

000000008000348c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00113423          	sd	ra,8(sp)
    80003494:	00813023          	sd	s0,0(sp)
    80003498:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	e98080e7          	jalr	-360(ra) # 80001334 <thread_dispatch>
}
    800034a4:	00813083          	ld	ra,8(sp)
    800034a8:	00013403          	ld	s0,0(sp)
    800034ac:	01010113          	addi	sp,sp,16
    800034b0:	00008067          	ret

00000000800034b4 <_ZN6Thread5sleepEm>:
{
    800034b4:	ff010113          	addi	sp,sp,-16
    800034b8:	00113423          	sd	ra,8(sp)
    800034bc:	00813023          	sd	s0,0(sp)
    800034c0:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800034c4:	ffffe097          	auipc	ra,0xffffe
    800034c8:	f74080e7          	jalr	-140(ra) # 80001438 <time_sleep>
}
    800034cc:	00813083          	ld	ra,8(sp)
    800034d0:	00013403          	ld	s0,0(sp)
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00008067          	ret

00000000800034dc <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800034dc:	fe010113          	addi	sp,sp,-32
    800034e0:	00113c23          	sd	ra,24(sp)
    800034e4:	00813823          	sd	s0,16(sp)
    800034e8:	00913423          	sd	s1,8(sp)
    800034ec:	01213023          	sd	s2,0(sp)
    800034f0:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800034f4:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800034f8:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800034fc:	0004b783          	ld	a5,0(s1)
    80003500:	0187b783          	ld	a5,24(a5)
    80003504:	00048513          	mv	a0,s1
    80003508:	000780e7          	jalr	a5
        Thread::sleep(time);
    8000350c:	00090513          	mv	a0,s2
    80003510:	00000097          	auipc	ra,0x0
    80003514:	fa4080e7          	jalr	-92(ra) # 800034b4 <_ZN6Thread5sleepEm>
    while(true)
    80003518:	fe5ff06f          	j	800034fc <_ZN14PeriodicThread6runnerEPv+0x20>

000000008000351c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    8000351c:	ff010113          	addi	sp,sp,-16
    80003520:	00113423          	sd	ra,8(sp)
    80003524:	00813023          	sd	s0,0(sp)
    80003528:	01010413          	addi	s0,sp,16
    8000352c:	00008797          	auipc	a5,0x8
    80003530:	25c78793          	addi	a5,a5,604 # 8000b788 <_ZTV6Thread+0x10>
    80003534:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003538:	00850513          	addi	a0,a0,8
    8000353c:	ffffe097          	auipc	ra,0xffffe
    80003540:	f54080e7          	jalr	-172(ra) # 80001490 <thread_make_pcb>
}
    80003544:	00813083          	ld	ra,8(sp)
    80003548:	00013403          	ld	s0,0(sp)
    8000354c:	01010113          	addi	sp,sp,16
    80003550:	00008067          	ret

0000000080003554 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003554:	ff010113          	addi	sp,sp,-16
    80003558:	00113423          	sd	ra,8(sp)
    8000355c:	00813023          	sd	s0,0(sp)
    80003560:	01010413          	addi	s0,sp,16
    80003564:	00008797          	auipc	a5,0x8
    80003568:	22478793          	addi	a5,a5,548 # 8000b788 <_ZTV6Thread+0x10>
    8000356c:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003570:	00050613          	mv	a2,a0
    80003574:	00000597          	auipc	a1,0x0
    80003578:	d7458593          	addi	a1,a1,-652 # 800032e8 <_ZN6Thread6runnerEPv>
    8000357c:	00850513          	addi	a0,a0,8
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	f10080e7          	jalr	-240(ra) # 80001490 <thread_make_pcb>
}
    80003588:	00813083          	ld	ra,8(sp)
    8000358c:	00013403          	ld	s0,0(sp)
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret

0000000080003598 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003598:	00853503          	ld	a0,8(a0)
    8000359c:	02050663          	beqz	a0,800035c8 <_ZN9Semaphore4waitEv+0x30>
{
    800035a0:	ff010113          	addi	sp,sp,-16
    800035a4:	00113423          	sd	ra,8(sp)
    800035a8:	00813023          	sd	s0,0(sp)
    800035ac:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	e30080e7          	jalr	-464(ra) # 800013e0 <sem_wait>
}
    800035b8:	00813083          	ld	ra,8(sp)
    800035bc:	00013403          	ld	s0,0(sp)
    800035c0:	01010113          	addi	sp,sp,16
    800035c4:	00008067          	ret
        return -1;
    800035c8:	fff00513          	li	a0,-1
}
    800035cc:	00008067          	ret

00000000800035d0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800035d0:	fe010113          	addi	sp,sp,-32
    800035d4:	00113c23          	sd	ra,24(sp)
    800035d8:	00813823          	sd	s0,16(sp)
    800035dc:	00913423          	sd	s1,8(sp)
    800035e0:	02010413          	addi	s0,sp,32
    800035e4:	00050493          	mv	s1,a0
    800035e8:	00008797          	auipc	a5,0x8
    800035ec:	1c878793          	addi	a5,a5,456 # 8000b7b0 <_ZTV9Semaphore+0x10>
    800035f0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800035f4:	00850513          	addi	a0,a0,8
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	d84080e7          	jalr	-636(ra) # 8000137c <sem_open>
    if(retval != 0)
    80003600:	00050463          	beqz	a0,80003608 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003604:	0004b423          	sd	zero,8(s1)
}
    80003608:	01813083          	ld	ra,24(sp)
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	00813483          	ld	s1,8(sp)
    80003614:	02010113          	addi	sp,sp,32
    80003618:	00008067          	ret

000000008000361c <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    8000361c:	00853503          	ld	a0,8(a0)
    80003620:	02050663          	beqz	a0,8000364c <_ZN9Semaphore6signalEv+0x30>
{
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00113423          	sd	ra,8(sp)
    8000362c:	00813023          	sd	s0,0(sp)
    80003630:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	dd8080e7          	jalr	-552(ra) # 8000140c <sem_signal>
}
    8000363c:	00813083          	ld	ra,8(sp)
    80003640:	00013403          	ld	s0,0(sp)
    80003644:	01010113          	addi	sp,sp,16
    80003648:	00008067          	ret
        return -1;
    8000364c:	fff00513          	li	a0,-1
}
    80003650:	00008067          	ret

0000000080003654 <_ZN7Console4getcEv>:
{
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00813423          	sd	s0,8(sp)
    8000365c:	01010413          	addi	s0,sp,16
}
    80003660:	00000513          	li	a0,0
    80003664:	00813403          	ld	s0,8(sp)
    80003668:	01010113          	addi	sp,sp,16
    8000366c:	00008067          	ret

0000000080003670 <_ZN7Console4putcEc>:
{
    80003670:	ff010113          	addi	sp,sp,-16
    80003674:	00813423          	sd	s0,8(sp)
    80003678:	01010413          	addi	s0,sp,16
}
    8000367c:	00813403          	ld	s0,8(sp)
    80003680:	01010113          	addi	sp,sp,16
    80003684:	00008067          	ret

0000000080003688 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003688:	fe010113          	addi	sp,sp,-32
    8000368c:	00113c23          	sd	ra,24(sp)
    80003690:	00813823          	sd	s0,16(sp)
    80003694:	00913423          	sd	s1,8(sp)
    80003698:	01213023          	sd	s2,0(sp)
    8000369c:	02010413          	addi	s0,sp,32
    800036a0:	00050493          	mv	s1,a0
    800036a4:	00058913          	mv	s2,a1
    800036a8:	01000513          	li	a0,16
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	cd8080e7          	jalr	-808(ra) # 80003384 <_Znwm>
    800036b4:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800036b8:	00953023          	sd	s1,0(a0)
    800036bc:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800036c0:	00000597          	auipc	a1,0x0
    800036c4:	e1c58593          	addi	a1,a1,-484 # 800034dc <_ZN14PeriodicThread6runnerEPv>
    800036c8:	00048513          	mv	a0,s1
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	e50080e7          	jalr	-432(ra) # 8000351c <_ZN6ThreadC1EPFvPvES0_>
    800036d4:	00008797          	auipc	a5,0x8
    800036d8:	04c78793          	addi	a5,a5,76 # 8000b720 <_ZTV14PeriodicThread+0x10>
    800036dc:	00f4b023          	sd	a5,0(s1)
}
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	00813483          	ld	s1,8(sp)
    800036ec:	00013903          	ld	s2,0(sp)
    800036f0:	02010113          	addi	sp,sp,32
    800036f4:	00008067          	ret

00000000800036f8 <_ZN5Riscv15userMainWrapperEPv>:
    disableInterrupts();
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    800036f8:	ff010113          	addi	sp,sp,-16
    800036fc:	00113423          	sd	ra,8(sp)
    80003700:	00813023          	sd	s0,0(sp)
    80003704:	01010413          	addi	s0,sp,16
    userMain();
    80003708:	00003097          	auipc	ra,0x3
    8000370c:	8d4080e7          	jalr	-1836(ra) # 80005fdc <_Z8userMainv>
}
    80003710:	00813083          	ld	ra,8(sp)
    80003714:	00013403          	ld	s0,0(sp)
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret

0000000080003720 <_ZN5Riscv10initSystemEv>:
{
    80003720:	ff010113          	addi	sp,sp,-16
    80003724:	00113423          	sd	ra,8(sp)
    80003728:	00813023          	sd	s0,0(sp)
    8000372c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003730:	00008797          	auipc	a5,0x8
    80003734:	1687b783          	ld	a5,360(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003738:	10579073          	csrw	stvec,a5
    PCB::initialize();
    8000373c:	fffff097          	auipc	ra,0xfffff
    80003740:	f90080e7          	jalr	-112(ra) # 800026cc <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003744:	fffff097          	auipc	ra,0xfffff
    80003748:	2ec080e7          	jalr	748(ra) # 80002a30 <_ZN8KConsole10initializeEv>
}
    8000374c:	00813083          	ld	ra,8(sp)
    80003750:	00013403          	ld	s0,0(sp)
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00008067          	ret

000000008000375c <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00813423          	sd	s0,8(sp)
    80003764:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003768:	00200793          	li	a5,2
    8000376c:	1007a073          	csrs	sstatus,a5
}
    80003770:	00813403          	ld	s0,8(sp)
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00008067          	ret

000000008000377c <_ZN5Riscv17disableInterruptsEv>:
{
    8000377c:	ff010113          	addi	sp,sp,-16
    80003780:	00813423          	sd	s0,8(sp)
    80003784:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003788:	00200793          	li	a5,2
    8000378c:	1007b073          	csrc	sstatus,a5
}
    80003790:	00813403          	ld	s0,8(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN5Riscv9endSystemEv>:
{
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00113423          	sd	ra,8(sp)
    800037a4:	00813023          	sd	s0,0(sp)
    800037a8:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	fd0080e7          	jalr	-48(ra) # 8000377c <_ZN5Riscv17disableInterruptsEv>
}
    800037b4:	00813083          	ld	ra,8(sp)
    800037b8:	00013403          	ld	s0,0(sp)
    800037bc:	01010113          	addi	sp,sp,16
    800037c0:	00008067          	ret

00000000800037c4 <_ZN5Riscv10popSppSpieEv>:
{
    800037c4:	ff010113          	addi	sp,sp,-16
    800037c8:	00813423          	sd	s0,8(sp)
    800037cc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800037d0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800037d4:	10200073          	sret
}
    800037d8:	00813403          	ld	s0,8(sp)
    800037dc:	01010113          	addi	sp,sp,16
    800037e0:	00008067          	ret

00000000800037e4 <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    800037e4:	0000c797          	auipc	a5,0xc
    800037e8:	2047c783          	lbu	a5,516(a5) # 8000f9e8 <_ZN5Riscv16kernelMainCalledE>
    800037ec:	00078463          	beqz	a5,800037f4 <_ZN5Riscv10kernelMainEv+0x10>
    800037f0:	00008067          	ret
{
    800037f4:	fe010113          	addi	sp,sp,-32
    800037f8:	00113c23          	sd	ra,24(sp)
    800037fc:	00813823          	sd	s0,16(sp)
    80003800:	00913423          	sd	s1,8(sp)
    80003804:	01213023          	sd	s2,0(sp)
    80003808:	02010413          	addi	s0,sp,32
    kernelMainCalled = true;
    8000380c:	00100793          	li	a5,1
    80003810:	0000c717          	auipc	a4,0xc
    80003814:	1cf70c23          	sb	a5,472(a4) # 8000f9e8 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	f08080e7          	jalr	-248(ra) # 80003720 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003820:	00001537          	lui	a0,0x1
    80003824:	00001097          	auipc	ra,0x1
    80003828:	850080e7          	jalr	-1968(ra) # 80004074 <_ZN15MemoryAllocator7kmallocEm>
    8000382c:	00050913          	mv	s2,a0
    80003830:	05800513          	li	a0,88
    80003834:	fffff097          	auipc	ra,0xfffff
    80003838:	e1c080e7          	jalr	-484(ra) # 80002650 <_ZN3PCBnwEm>
    8000383c:	00050493          	mv	s1,a0
    80003840:	00200713          	li	a4,2
    80003844:	00090693          	mv	a3,s2
    80003848:	00000613          	li	a2,0
    8000384c:	00000597          	auipc	a1,0x0
    80003850:	eac58593          	addi	a1,a1,-340 # 800036f8 <_ZN5Riscv15userMainWrapperEPv>
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	ce4080e7          	jalr	-796(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    8000385c:	00048513          	mv	a0,s1
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	d3c080e7          	jalr	-708(ra) # 8000259c <_ZN3PCB5startEv>
    enableInterrupts();
    80003868:	00000097          	auipc	ra,0x0
    8000386c:	ef4080e7          	jalr	-268(ra) # 8000375c <_ZN5Riscv16enableInterruptsEv>
    while(!userPCB->isFinished())
    80003870:	00048513          	mv	a0,s1
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	f40080e7          	jalr	-192(ra) # 800027b4 <_ZN3PCB10isFinishedEv>
    8000387c:	00051863          	bnez	a0,8000388c <_ZN5Riscv10kernelMainEv+0xa8>
        thread_dispatch();
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	ab4080e7          	jalr	-1356(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003888:	fe9ff06f          	j	80003870 <_ZN5Riscv10kernelMainEv+0x8c>
    finishSystem = true;
    8000388c:	00100793          	li	a5,1
    80003890:	0000c717          	auipc	a4,0xc
    80003894:	14f70ca3          	sb	a5,345(a4) # 8000f9e9 <_ZN5Riscv12finishSystemE>
    80003898:	00c0006f          	j	800038a4 <_ZN5Riscv10kernelMainEv+0xc0>
        thread_dispatch();
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	a98080e7          	jalr	-1384(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    800038a4:	00008797          	auipc	a5,0x8
    800038a8:	02c7b783          	ld	a5,44(a5) # 8000b8d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800038ac:	0007b503          	ld	a0,0(a5)
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	f04080e7          	jalr	-252(ra) # 800027b4 <_ZN3PCB10isFinishedEv>
    800038b8:	fe0502e3          	beqz	a0,8000389c <_ZN5Riscv10kernelMainEv+0xb8>
    disableInterrupts();
    800038bc:	00000097          	auipc	ra,0x0
    800038c0:	ec0080e7          	jalr	-320(ra) # 8000377c <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	ed8080e7          	jalr	-296(ra) # 8000379c <_ZN5Riscv9endSystemEv>
}
    800038cc:	01813083          	ld	ra,24(sp)
    800038d0:	01013403          	ld	s0,16(sp)
    800038d4:	00813483          	ld	s1,8(sp)
    800038d8:	00013903          	ld	s2,0(sp)
    800038dc:	02010113          	addi	sp,sp,32
    800038e0:	00008067          	ret
    800038e4:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800038e8:	00048513          	mv	a0,s1
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	d8c080e7          	jalr	-628(ra) # 80002678 <_ZN3PCBdlEPv>
    800038f4:	00090513          	mv	a0,s2
    800038f8:	0000d097          	auipc	ra,0xd
    800038fc:	210080e7          	jalr	528(ra) # 80010b08 <_Unwind_Resume>

0000000080003900 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003900:	ff010113          	addi	sp,sp,-16
    80003904:	00113423          	sd	ra,8(sp)
    80003908:	00813023          	sd	s0,0(sp)
    8000390c:	01010413          	addi	s0,sp,16
    myTests();
    80003910:	fffff097          	auipc	ra,0xfffff
    80003914:	a48080e7          	jalr	-1464(ra) # 80002358 <_Z7myTestsv>
}
    80003918:	00813083          	ld	ra,8(sp)
    8000391c:	00013403          	ld	s0,0(sp)
    80003920:	01010113          	addi	sp,sp,16
    80003924:	00008067          	ret

0000000080003928 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003928:	ff010113          	addi	sp,sp,-16
    8000392c:	00813423          	sd	s0,8(sp)
    80003930:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003934:	00200793          	li	a5,2
    80003938:	1047b073          	csrc	sie,a5
}
    8000393c:	00813403          	ld	s0,8(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret

0000000080003948 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003948:	ff010113          	addi	sp,sp,-16
    8000394c:	00813423          	sd	s0,8(sp)
    80003950:	01010413          	addi	s0,sp,16
    while(true)
    80003954:	0000006f          	j	80003954 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003958 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003958:	ff010113          	addi	sp,sp,-16
    8000395c:	00813423          	sd	s0,8(sp)
    80003960:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003964:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003968:	00008717          	auipc	a4,0x8
    8000396c:	f7873703          	ld	a4,-136(a4) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003970:	00073703          	ld	a4,0(a4)
    80003974:	01073703          	ld	a4,16(a4)
    80003978:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    8000397c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003980:	00078593          	mv	a1,a5
}
    80003984:	00813403          	ld	s0,8(sp)
    80003988:	01010113          	addi	sp,sp,16
    8000398c:	00008067          	ret

0000000080003990 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003990:	ff010113          	addi	sp,sp,-16
    80003994:	00813423          	sd	s0,8(sp)
    80003998:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    8000399c:	00008797          	auipc	a5,0x8
    800039a0:	f447b783          	ld	a5,-188(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800039a4:	0007b783          	ld	a5,0(a5)
    800039a8:	0007c783          	lbu	a5,0(a5)
    800039ac:	00078c63          	beqz	a5,800039c4 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800039b0:	10000793          	li	a5,256
    800039b4:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800039b8:	00813403          	ld	s0,8(sp)
    800039bc:	01010113          	addi	sp,sp,16
    800039c0:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800039c4:	10000793          	li	a5,256
    800039c8:	1007b073          	csrc	sstatus,a5
    800039cc:	fedff06f          	j	800039b8 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800039d0 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800039d0:	f9010113          	addi	sp,sp,-112
    800039d4:	06113423          	sd	ra,104(sp)
    800039d8:	06813023          	sd	s0,96(sp)
    800039dc:	04913c23          	sd	s1,88(sp)
    800039e0:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800039e4:	00070713          	mv	a4,a4
    800039e8:	00008797          	auipc	a5,0x8
    800039ec:	f087b783          	ld	a5,-248(a5) # 8000b8f0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800039f0:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800039f4:	00008797          	auipc	a5,0x8
    800039f8:	eec7b783          	ld	a5,-276(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800039fc:	0007b783          	ld	a5,0(a5)
    80003a00:	14002773          	csrr	a4,sscratch
    80003a04:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003a08:	142027f3          	csrr	a5,scause
    80003a0c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003a10:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003a14:	00900713          	li	a4,9
    80003a18:	02f76e63          	bltu	a4,a5,80003a54 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003a1c:	00800713          	li	a4,8
    80003a20:	18e7f463          	bgeu	a5,a4,80003ba8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80003a24:	00500713          	li	a4,5
    80003a28:	16e78a63          	beq	a5,a4,80003b9c <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003a2c:	00700713          	li	a4,7
    80003a30:	00e79863          	bne	a5,a4,80003a40 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	da4080e7          	jalr	-604(ra) # 800027d8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003a3c:	1200006f          	j	80003b5c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003a40:	00200713          	li	a4,2
    80003a44:	10e79c63          	bne	a5,a4,80003b5c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	d90080e7          	jalr	-624(ra) # 800027d8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003a50:	10c0006f          	j	80003b5c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003a54:	fff00713          	li	a4,-1
    80003a58:	03f71713          	slli	a4,a4,0x3f
    80003a5c:	00170713          	addi	a4,a4,1
    80003a60:	06e78a63          	beq	a5,a4,80003ad4 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80003a64:	fff00713          	li	a4,-1
    80003a68:	03f71713          	slli	a4,a4,0x3f
    80003a6c:	00970713          	addi	a4,a4,9
    80003a70:	0ee79663          	bne	a5,a4,80003b5c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    80003a74:	00008797          	auipc	a5,0x8
    80003a78:	e147b783          	ld	a5,-492(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003a7c:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003a80:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003a84:	00050583          	lb	a1,0(a0) # 1000 <_entry-0x7ffff000>
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003a88:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003a8c:	0017f793          	andi	a5,a5,1
    80003a90:	02078863          	beqz	a5,80003ac0 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80003a94:	00008797          	auipc	a5,0x8
    80003a98:	e147b783          	ld	a5,-492(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003a9c:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003aa0:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003aa4:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003aa8:	00058513          	mv	a0,a1
    80003aac:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003ab0:	00008797          	auipc	a5,0x8
    80003ab4:	df07b783          	ld	a5,-528(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003ab8:	0007b783          	ld	a5,0(a5)
    80003abc:	0c079263          	bnez	a5,80003b80 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003ac0:	00003097          	auipc	ra,0x3
    80003ac4:	1e4080e7          	jalr	484(ra) # 80006ca4 <plic_claim>
    80003ac8:	00003097          	auipc	ra,0x3
    80003acc:	214080e7          	jalr	532(ra) # 80006cdc <plic_complete>
            break;
    80003ad0:	08c0006f          	j	80003b5c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003ad4:	141027f3          	csrr	a5,sepc
    80003ad8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003adc:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003ae0:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003ae4:	100027f3          	csrr	a5,sstatus
    80003ae8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003aec:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003af0:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003af4:	00200793          	li	a5,2
    80003af8:	1447b073          	csrc	sip,a5
            totalTime++;
    80003afc:	0000c717          	auipc	a4,0xc
    80003b00:	eec70713          	addi	a4,a4,-276 # 8000f9e8 <_ZN5Riscv16kernelMainCalledE>
    80003b04:	00873783          	ld	a5,8(a4)
    80003b08:	00178793          	addi	a5,a5,1
    80003b0c:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003b10:	00008497          	auipc	s1,0x8
    80003b14:	da04b483          	ld	s1,-608(s1) # 8000b8b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003b18:	0004b783          	ld	a5,0(s1)
    80003b1c:	00178793          	addi	a5,a5,1
    80003b20:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003b24:	fffff097          	auipc	ra,0xfffff
    80003b28:	58c080e7          	jalr	1420(ra) # 800030b0 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003b2c:	00008797          	auipc	a5,0x8
    80003b30:	db47b783          	ld	a5,-588(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003b34:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003b38:	0187b783          	ld	a5,24(a5)
    80003b3c:	0004b703          	ld	a4,0(s1)
    80003b40:	02f77863          	bgeu	a4,a5,80003b70 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80003b44:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b48:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003b4c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003b50:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003b54:	00000097          	auipc	ra,0x0
    80003b58:	e3c080e7          	jalr	-452(ra) # 80003990 <_ZN5Riscv14changePrivModeEv>
}
    80003b5c:	06813083          	ld	ra,104(sp)
    80003b60:	06013403          	ld	s0,96(sp)
    80003b64:	05813483          	ld	s1,88(sp)
    80003b68:	07010113          	addi	sp,sp,112
    80003b6c:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003b70:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003b74:	fffff097          	auipc	ra,0xfffff
    80003b78:	a50080e7          	jalr	-1456(ra) # 800025c4 <_ZN3PCB8dispatchEv>
    80003b7c:	fc9ff06f          	j	80003b44 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80003b80:	fff78793          	addi	a5,a5,-1
    80003b84:	00008717          	auipc	a4,0x8
    80003b88:	d1c73703          	ld	a4,-740(a4) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003b8c:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003b90:	fffff097          	auipc	ra,0xfffff
    80003b94:	f50080e7          	jalr	-176(ra) # 80002ae0 <_ZN8KConsole17putCharacterInputEc>
    80003b98:	f29ff06f          	j	80003ac0 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80003b9c:	fffff097          	auipc	ra,0xfffff
    80003ba0:	c3c080e7          	jalr	-964(ra) # 800027d8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003ba4:	fb9ff06f          	j	80003b5c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003ba8:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003bac:	14102773          	csrr	a4,sepc
    80003bb0:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003bb4:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003bb8:	00470713          	addi	a4,a4,4
    80003bbc:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003bc0:	10002773          	csrr	a4,sstatus
    80003bc4:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003bc8:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003bcc:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003bd0:	04300713          	li	a4,67
    80003bd4:	02f76463          	bltu	a4,a5,80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80003bd8:	00279793          	slli	a5,a5,0x2
    80003bdc:	00005717          	auipc	a4,0x5
    80003be0:	60870713          	addi	a4,a4,1544 # 800091e4 <CONSOLE_STATUS+0x1d4>
    80003be4:	00e787b3          	add	a5,a5,a4
    80003be8:	0007a783          	lw	a5,0(a5)
    80003bec:	00e787b3          	add	a5,a5,a4
    80003bf0:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	4a8080e7          	jalr	1192(ra) # 8000409c <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003bfc:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003c00:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003c04:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003c08:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	d84080e7          	jalr	-636(ra) # 80003990 <_ZN5Riscv14changePrivModeEv>
}
    80003c14:	f49ff06f          	j	80003b5c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80003c18:	00000097          	auipc	ra,0x0
    80003c1c:	4e8080e7          	jalr	1256(ra) # 80004100 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003c20:	fddff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	d78080e7          	jalr	-648(ra) # 8000299c <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003c2c:	fd1ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	c88080e7          	jalr	-888(ra) # 800028b8 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003c38:	fc5ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80003c3c:	fffff097          	auipc	ra,0xfffff
    80003c40:	d1c080e7          	jalr	-740(ra) # 80002958 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003c44:	fb9ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	bdc080e7          	jalr	-1060(ra) # 80002824 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003c50:	fadff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	b84080e7          	jalr	-1148(ra) # 800027d8 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003c5c:	fa1ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	bf4080e7          	jalr	-1036(ra) # 80002854 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003c68:	f95ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	744080e7          	jalr	1860(ra) # 800043b0 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003c74:	f89ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80003c78:	00000097          	auipc	ra,0x0
    80003c7c:	7d0080e7          	jalr	2000(ra) # 80004448 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003c80:	f7dff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	804080e7          	jalr	-2044(ra) # 80004488 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003c8c:	f71ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80003c90:	00001097          	auipc	ra,0x1
    80003c94:	838080e7          	jalr	-1992(ra) # 800044c8 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003c98:	f65ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80003c9c:	fffff097          	auipc	ra,0xfffff
    80003ca0:	0e4080e7          	jalr	228(ra) # 80002d80 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003ca4:	f59ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80003ca8:	fffff097          	auipc	ra,0xfffff
    80003cac:	0a8080e7          	jalr	168(ra) # 80002d50 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003cb0:	f4dff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	23c080e7          	jalr	572(ra) # 80002ef0 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003cbc:	f41ff06f          	j	80003bfc <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

0000000080003cc0 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003cc0:	ff010113          	addi	sp,sp,-16
    80003cc4:	00813423          	sd	s0,8(sp)
    80003cc8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003ccc:	0000c717          	auipc	a4,0xc
    80003cd0:	d2c72703          	lw	a4,-724(a4) # 8000f9f8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003cd4:	00100793          	li	a5,1
    80003cd8:	04f70263          	beq	a4,a5,80003d1c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003cdc:	0000c797          	auipc	a5,0xc
    80003ce0:	d1c78793          	addi	a5,a5,-740 # 8000f9f8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003ce4:	00100713          	li	a4,1
    80003ce8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003cec:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003cf0:	00008717          	auipc	a4,0x8
    80003cf4:	ba073703          	ld	a4,-1120(a4) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003cf8:	00073703          	ld	a4,0(a4)
    80003cfc:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003d00:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003d04:	00008797          	auipc	a5,0x8
    80003d08:	be47b783          	ld	a5,-1052(a5) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003d0c:	0007b783          	ld	a5,0(a5)
    80003d10:	40e787b3          	sub	a5,a5,a4
    80003d14:	ff178793          	addi	a5,a5,-15
    80003d18:	00f73023          	sd	a5,0(a4)
}
    80003d1c:	00813403          	ld	s0,8(sp)
    80003d20:	01010113          	addi	sp,sp,16
    80003d24:	00008067          	ret

0000000080003d28 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003d28:	fe010113          	addi	sp,sp,-32
    80003d2c:	00113c23          	sd	ra,24(sp)
    80003d30:	00813823          	sd	s0,16(sp)
    80003d34:	00913423          	sd	s1,8(sp)
    80003d38:	01213023          	sd	s2,0(sp)
    80003d3c:	02010413          	addi	s0,sp,32
    80003d40:	00050493          	mv	s1,a0
    80003d44:	00058913          	mv	s2,a1
    initMemory();
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	f78080e7          	jalr	-136(ra) # 80003cc0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003d50:	0000c797          	auipc	a5,0xc
    80003d54:	cb07b783          	ld	a5,-848(a5) # 8000fa00 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003d58:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003d5c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003d60:	00000713          	li	a4,0
    while(curr != 0)
    80003d64:	00078c63          	beqz	a5,80003d7c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003d68:	00f4e863          	bltu	s1,a5,80003d78 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003d6c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003d70:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003d74:	ff1ff06f          	j	80003d64 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003d78:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003d7c:	02070063          	beqz	a4,80003d9c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003d80:	00973423          	sd	s1,8(a4)
}
    80003d84:	01813083          	ld	ra,24(sp)
    80003d88:	01013403          	ld	s0,16(sp)
    80003d8c:	00813483          	ld	s1,8(sp)
    80003d90:	00013903          	ld	s2,0(sp)
    80003d94:	02010113          	addi	sp,sp,32
    80003d98:	00008067          	ret
        headAllocated = newAllocated;
    80003d9c:	0000c797          	auipc	a5,0xc
    80003da0:	c697b223          	sd	s1,-924(a5) # 8000fa00 <_ZN15MemoryAllocator13headAllocatedE>
    80003da4:	fe1ff06f          	j	80003d84 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003da8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003da8:	fe010113          	addi	sp,sp,-32
    80003dac:	00113c23          	sd	ra,24(sp)
    80003db0:	00813823          	sd	s0,16(sp)
    80003db4:	00913423          	sd	s1,8(sp)
    80003db8:	01213023          	sd	s2,0(sp)
    80003dbc:	02010413          	addi	s0,sp,32
    80003dc0:	00050913          	mv	s2,a0
    initMemory();
    80003dc4:	00000097          	auipc	ra,0x0
    80003dc8:	efc080e7          	jalr	-260(ra) # 80003cc0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003dcc:	0000c497          	auipc	s1,0xc
    80003dd0:	c3c4b483          	ld	s1,-964(s1) # 8000fa08 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003dd4:	00000713          	li	a4,0
    while(curr != 0)
    80003dd8:	0a048863          	beqz	s1,80003e88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003ddc:	0004b783          	ld	a5,0(s1)
    80003de0:	0127f863          	bgeu	a5,s2,80003df0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003de4:	00048713          	mv	a4,s1
        curr = curr->next;
    80003de8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003dec:	fedff06f          	j	80003dd8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003df0:	01090693          	addi	a3,s2,16
    80003df4:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003df8:	00008617          	auipc	a2,0x8
    80003dfc:	af063603          	ld	a2,-1296(a2) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003e00:	00063603          	ld	a2,0(a2)
    80003e04:	04d66c63          	bltu	a2,a3,80003e5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003e08:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003e0c:	01000613          	li	a2,16
    80003e10:	02f67663          	bgeu	a2,a5,80003e3c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003e14:	0084b603          	ld	a2,8(s1)
    80003e18:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003e1c:	ff078793          	addi	a5,a5,-16
    80003e20:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003e24:	00070663          	beqz	a4,80003e30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003e28:	00d73423          	sd	a3,8(a4)
    80003e2c:	0380006f          	j	80003e64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003e30:	0000c797          	auipc	a5,0xc
    80003e34:	bcd7bc23          	sd	a3,-1064(a5) # 8000fa08 <_ZN15MemoryAllocator8headFreeE>
    80003e38:	02c0006f          	j	80003e64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003e3c:	00070863          	beqz	a4,80003e4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003e40:	0084b783          	ld	a5,8(s1)
    80003e44:	00f73423          	sd	a5,8(a4)
    80003e48:	01c0006f          	j	80003e64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003e4c:	0084b783          	ld	a5,8(s1)
    80003e50:	0000c717          	auipc	a4,0xc
    80003e54:	baf73c23          	sd	a5,-1096(a4) # 8000fa08 <_ZN15MemoryAllocator8headFreeE>
    80003e58:	00c0006f          	j	80003e64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003e5c:	02070063          	beqz	a4,80003e7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003e60:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003e64:	00090593          	mv	a1,s2
    80003e68:	00048513          	mv	a0,s1
    80003e6c:	00000097          	auipc	ra,0x0
    80003e70:	ebc080e7          	jalr	-324(ra) # 80003d28 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003e74:	01048513          	addi	a0,s1,16
            break;
    80003e78:	0140006f          	j	80003e8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003e7c:	0000c797          	auipc	a5,0xc
    80003e80:	b807b623          	sd	zero,-1140(a5) # 8000fa08 <_ZN15MemoryAllocator8headFreeE>
    80003e84:	fe1ff06f          	j	80003e64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003e88:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003e8c:	01813083          	ld	ra,24(sp)
    80003e90:	01013403          	ld	s0,16(sp)
    80003e94:	00813483          	ld	s1,8(sp)
    80003e98:	00013903          	ld	s2,0(sp)
    80003e9c:	02010113          	addi	sp,sp,32
    80003ea0:	00008067          	ret

0000000080003ea4 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003ea4:	ff010113          	addi	sp,sp,-16
    80003ea8:	00113423          	sd	ra,8(sp)
    80003eac:	00813023          	sd	s0,0(sp)
    80003eb0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	ef4080e7          	jalr	-268(ra) # 80003da8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003ebc:	00813083          	ld	ra,8(sp)
    80003ec0:	00013403          	ld	s0,0(sp)
    80003ec4:	01010113          	addi	sp,sp,16
    80003ec8:	00008067          	ret

0000000080003ecc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003ecc:	fe010113          	addi	sp,sp,-32
    80003ed0:	00113c23          	sd	ra,24(sp)
    80003ed4:	00813823          	sd	s0,16(sp)
    80003ed8:	00913423          	sd	s1,8(sp)
    80003edc:	01213023          	sd	s2,0(sp)
    80003ee0:	02010413          	addi	s0,sp,32
    80003ee4:	00050493          	mv	s1,a0
    80003ee8:	00058913          	mv	s2,a1
    initMemory();
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	dd4080e7          	jalr	-556(ra) # 80003cc0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003ef4:	0000c797          	auipc	a5,0xc
    80003ef8:	b147b783          	ld	a5,-1260(a5) # 8000fa08 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003efc:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003f00:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003f04:	00000713          	li	a4,0
    while(curr != 0)
    80003f08:	00078c63          	beqz	a5,80003f20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003f0c:	00f4e863          	bltu	s1,a5,80003f1c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003f10:	00078713          	mv	a4,a5
        curr = curr->next;
    80003f14:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003f18:	ff1ff06f          	j	80003f08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003f1c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003f20:	04070663          	beqz	a4,80003f6c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003f24:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003f28:	0084b783          	ld	a5,8(s1)
    80003f2c:	00078a63          	beqz	a5,80003f40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003f30:	0004b603          	ld	a2,0(s1)
    80003f34:	01060693          	addi	a3,a2,16
    80003f38:	00d486b3          	add	a3,s1,a3
    80003f3c:	02d78e63          	beq	a5,a3,80003f78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003f40:	00070a63          	beqz	a4,80003f54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003f44:	00073683          	ld	a3,0(a4)
    80003f48:	01068793          	addi	a5,a3,16
    80003f4c:	00f707b3          	add	a5,a4,a5
    80003f50:	04978263          	beq	a5,s1,80003f94 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003f54:	01813083          	ld	ra,24(sp)
    80003f58:	01013403          	ld	s0,16(sp)
    80003f5c:	00813483          	ld	s1,8(sp)
    80003f60:	00013903          	ld	s2,0(sp)
    80003f64:	02010113          	addi	sp,sp,32
    80003f68:	00008067          	ret
        headFree = newSegment;
    80003f6c:	0000c797          	auipc	a5,0xc
    80003f70:	a897be23          	sd	s1,-1380(a5) # 8000fa08 <_ZN15MemoryAllocator8headFreeE>
    80003f74:	fb5ff06f          	j	80003f28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003f78:	0007b683          	ld	a3,0(a5)
    80003f7c:	00d60633          	add	a2,a2,a3
    80003f80:	01060613          	addi	a2,a2,16
    80003f84:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003f88:	0087b783          	ld	a5,8(a5)
    80003f8c:	00f4b423          	sd	a5,8(s1)
    80003f90:	fb1ff06f          	j	80003f40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003f94:	0004b783          	ld	a5,0(s1)
    80003f98:	00f686b3          	add	a3,a3,a5
    80003f9c:	01068693          	addi	a3,a3,16
    80003fa0:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003fa4:	0084b783          	ld	a5,8(s1)
    80003fa8:	00f73423          	sd	a5,8(a4)
}
    80003fac:	fa9ff06f          	j	80003f54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003fb0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003fb0:	fe010113          	addi	sp,sp,-32
    80003fb4:	00113c23          	sd	ra,24(sp)
    80003fb8:	00813823          	sd	s0,16(sp)
    80003fbc:	00913423          	sd	s1,8(sp)
    80003fc0:	01213023          	sd	s2,0(sp)
    80003fc4:	02010413          	addi	s0,sp,32
    80003fc8:	00050913          	mv	s2,a0
    initMemory();
    80003fcc:	00000097          	auipc	ra,0x0
    80003fd0:	cf4080e7          	jalr	-780(ra) # 80003cc0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003fd4:	0000c497          	auipc	s1,0xc
    80003fd8:	a2c4b483          	ld	s1,-1492(s1) # 8000fa00 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003fdc:	00000713          	li	a4,0
    while(curr != 0)
    80003fe0:	02048a63          	beqz	s1,80004014 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003fe4:	01048793          	addi	a5,s1,16
    80003fe8:	01278863          	beq	a5,s2,80003ff8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003fec:	00048713          	mv	a4,s1
        curr = curr->next;
    80003ff0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003ff4:	fedff06f          	j	80003fe0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003ff8:	02070e63          	beqz	a4,80004034 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003ffc:	0084b783          	ld	a5,8(s1)
    80004000:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004004:	0004b583          	ld	a1,0(s1)
    80004008:	00048513          	mv	a0,s1
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	ec0080e7          	jalr	-320(ra) # 80003ecc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004014:	02048863          	beqz	s1,80004044 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004018:	00000513          	li	a0,0
    else
        return 1;
}
    8000401c:	01813083          	ld	ra,24(sp)
    80004020:	01013403          	ld	s0,16(sp)
    80004024:	00813483          	ld	s1,8(sp)
    80004028:	00013903          	ld	s2,0(sp)
    8000402c:	02010113          	addi	sp,sp,32
    80004030:	00008067          	ret
                headAllocated = curr->next;
    80004034:	0084b783          	ld	a5,8(s1)
    80004038:	0000c717          	auipc	a4,0xc
    8000403c:	9cf73423          	sd	a5,-1592(a4) # 8000fa00 <_ZN15MemoryAllocator13headAllocatedE>
    80004040:	fc5ff06f          	j	80004004 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004044:	00100513          	li	a0,1
    80004048:	fd5ff06f          	j	8000401c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

000000008000404c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    8000404c:	ff010113          	addi	sp,sp,-16
    80004050:	00113423          	sd	ra,8(sp)
    80004054:	00813023          	sd	s0,0(sp)
    80004058:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	f54080e7          	jalr	-172(ra) # 80003fb0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004064:	00813083          	ld	ra,8(sp)
    80004068:	00013403          	ld	s0,0(sp)
    8000406c:	01010113          	addi	sp,sp,16
    80004070:	00008067          	ret

0000000080004074 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004074:	ff010113          	addi	sp,sp,-16
    80004078:	00113423          	sd	ra,8(sp)
    8000407c:	00813023          	sd	s0,0(sp)
    80004080:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004084:	00000097          	auipc	ra,0x0
    80004088:	e20080e7          	jalr	-480(ra) # 80003ea4 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000408c:	00813083          	ld	ra,8(sp)
    80004090:	00013403          	ld	s0,0(sp)
    80004094:	01010113          	addi	sp,sp,16
    80004098:	00008067          	ret

000000008000409c <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    8000409c:	ff010113          	addi	sp,sp,-16
    800040a0:	00113423          	sd	ra,8(sp)
    800040a4:	00813023          	sd	s0,0(sp)
    800040a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800040ac:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800040b0:	00651513          	slli	a0,a0,0x6
    800040b4:	00000097          	auipc	ra,0x0
    800040b8:	fc0080e7          	jalr	-64(ra) # 80004074 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800040bc:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	898080e7          	jalr	-1896(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    800040c8:	00813083          	ld	ra,8(sp)
    800040cc:	00013403          	ld	s0,0(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret

00000000800040d8 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800040d8:	ff010113          	addi	sp,sp,-16
    800040dc:	00113423          	sd	ra,8(sp)
    800040e0:	00813023          	sd	s0,0(sp)
    800040e4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800040e8:	00000097          	auipc	ra,0x0
    800040ec:	f64080e7          	jalr	-156(ra) # 8000404c <_ZN15MemoryAllocator8mem_freeEPv>
    800040f0:	00813083          	ld	ra,8(sp)
    800040f4:	00013403          	ld	s0,0(sp)
    800040f8:	01010113          	addi	sp,sp,16
    800040fc:	00008067          	ret

0000000080004100 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004100:	ff010113          	addi	sp,sp,-16
    80004104:	00113423          	sd	ra,8(sp)
    80004108:	00813023          	sd	s0,0(sp)
    8000410c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004110:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004114:	00000097          	auipc	ra,0x0
    80004118:	fc4080e7          	jalr	-60(ra) # 800040d8 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000411c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004120:	00000097          	auipc	ra,0x0
    80004124:	838080e7          	jalr	-1992(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret

0000000080004138 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004138:	ff010113          	addi	sp,sp,-16
    8000413c:	00813423          	sd	s0,8(sp)
    80004140:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004144:	00b52a23          	sw	a1,20(a0)
    80004148:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000414c:	00053423          	sd	zero,8(a0)
    80004150:	00053023          	sd	zero,0(a0)
}
    80004154:	00813403          	ld	s0,8(sp)
    80004158:	01010113          	addi	sp,sp,16
    8000415c:	00008067          	ret

0000000080004160 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00813423          	sd	s0,8(sp)
    80004168:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000416c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004170:	00053783          	ld	a5,0(a0)
    80004174:	00078e63          	beqz	a5,80004190 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004178:	00853783          	ld	a5,8(a0)
    8000417c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004180:	00b53423          	sd	a1,8(a0)
    }
}
    80004184:	00813403          	ld	s0,8(sp)
    80004188:	01010113          	addi	sp,sp,16
    8000418c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004190:	00b53423          	sd	a1,8(a0)
    80004194:	00b53023          	sd	a1,0(a0)
    80004198:	fedff06f          	j	80004184 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000419c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    8000419c:	ff010113          	addi	sp,sp,-16
    800041a0:	00113423          	sd	ra,8(sp)
    800041a4:	00813023          	sd	s0,0(sp)
    800041a8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800041ac:	00007797          	auipc	a5,0x7
    800041b0:	7347b783          	ld	a5,1844(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800041b4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800041b8:	00200793          	li	a5,2
    800041bc:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800041c0:	00000097          	auipc	ra,0x0
    800041c4:	fa0080e7          	jalr	-96(ra) # 80004160 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	3fc080e7          	jalr	1020(ra) # 800025c4 <_ZN3PCB8dispatchEv>
}
    800041d0:	00813083          	ld	ra,8(sp)
    800041d4:	00013403          	ld	s0,0(sp)
    800041d8:	01010113          	addi	sp,sp,16
    800041dc:	00008067          	ret

00000000800041e0 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800041e0:	01052783          	lw	a5,16(a0)
    800041e4:	fff7879b          	addiw	a5,a5,-1
    800041e8:	00f52823          	sw	a5,16(a0)
    800041ec:	02079713          	slli	a4,a5,0x20
    800041f0:	00074663          	bltz	a4,800041fc <_ZN10KSemaphore4waitEv+0x1c>
}
    800041f4:	00000513          	li	a0,0
    800041f8:	00008067          	ret
uint64 KSemaphore::wait() {
    800041fc:	ff010113          	addi	sp,sp,-16
    80004200:	00113423          	sd	ra,8(sp)
    80004204:	00813023          	sd	s0,0(sp)
    80004208:	01010413          	addi	s0,sp,16
        block();
    8000420c:	00000097          	auipc	ra,0x0
    80004210:	f90080e7          	jalr	-112(ra) # 8000419c <_ZN10KSemaphore5blockEv>
}
    80004214:	00000513          	li	a0,0
    80004218:	00813083          	ld	ra,8(sp)
    8000421c:	00013403          	ld	s0,0(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004228:	ff010113          	addi	sp,sp,-16
    8000422c:	00813423          	sd	s0,8(sp)
    80004230:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004234:	00053503          	ld	a0,0(a0)
    80004238:	00813403          	ld	s0,8(sp)
    8000423c:	01010113          	addi	sp,sp,16
    80004240:	00008067          	ret

0000000080004244 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004244:	ff010113          	addi	sp,sp,-16
    80004248:	00813423          	sd	s0,8(sp)
    8000424c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004250:	00053783          	ld	a5,0(a0)
    80004254:	00078c63          	beqz	a5,8000426c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004258:	0087b703          	ld	a4,8(a5)
    8000425c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004260:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004264:	00053783          	ld	a5,0(a0)
    80004268:	00078863          	beqz	a5,80004278 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000426c:	00813403          	ld	s0,8(sp)
    80004270:	01010113          	addi	sp,sp,16
    80004274:	00008067          	ret
        tailBlocked =0;
    80004278:	00053423          	sd	zero,8(a0)
    8000427c:	ff1ff06f          	j	8000426c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004280 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004280:	fe010113          	addi	sp,sp,-32
    80004284:	00113c23          	sd	ra,24(sp)
    80004288:	00813823          	sd	s0,16(sp)
    8000428c:	00913423          	sd	s1,8(sp)
    80004290:	01213023          	sd	s2,0(sp)
    80004294:	02010413          	addi	s0,sp,32
    80004298:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    8000429c:	00090513          	mv	a0,s2
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	f88080e7          	jalr	-120(ra) # 80004228 <_ZN10KSemaphore15getFirstBlockedEv>
    800042a8:	00050493          	mv	s1,a0
    800042ac:	02050063          	beqz	a0,800042cc <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800042b0:	00090513          	mv	a0,s2
    800042b4:	00000097          	auipc	ra,0x0
    800042b8:	f90080e7          	jalr	-112(ra) # 80004244 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800042bc:	00048513          	mv	a0,s1
    800042c0:	fffff097          	auipc	ra,0xfffff
    800042c4:	f00080e7          	jalr	-256(ra) # 800031c0 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800042c8:	fd5ff06f          	j	8000429c <_ZN10KSemaphoreD1Ev+0x1c>
}
    800042cc:	01813083          	ld	ra,24(sp)
    800042d0:	01013403          	ld	s0,16(sp)
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	00013903          	ld	s2,0(sp)
    800042dc:	02010113          	addi	sp,sp,32
    800042e0:	00008067          	ret

00000000800042e4 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800042e4:	fe010113          	addi	sp,sp,-32
    800042e8:	00113c23          	sd	ra,24(sp)
    800042ec:	00813823          	sd	s0,16(sp)
    800042f0:	00913423          	sd	s1,8(sp)
    800042f4:	01213023          	sd	s2,0(sp)
    800042f8:	02010413          	addi	s0,sp,32
    800042fc:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004300:	00000097          	auipc	ra,0x0
    80004304:	f28080e7          	jalr	-216(ra) # 80004228 <_ZN10KSemaphore15getFirstBlockedEv>
    80004308:	00050493          	mv	s1,a0
    removeFirstBlocked();
    8000430c:	00090513          	mv	a0,s2
    80004310:	00000097          	auipc	ra,0x0
    80004314:	f34080e7          	jalr	-204(ra) # 80004244 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004318:	00048863          	beqz	s1,80004328 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    8000431c:	00048513          	mv	a0,s1
    80004320:	fffff097          	auipc	ra,0xfffff
    80004324:	ea0080e7          	jalr	-352(ra) # 800031c0 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004328:	01813083          	ld	ra,24(sp)
    8000432c:	01013403          	ld	s0,16(sp)
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	00013903          	ld	s2,0(sp)
    80004338:	02010113          	addi	sp,sp,32
    8000433c:	00008067          	ret

0000000080004340 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004340:	01052783          	lw	a5,16(a0)
    80004344:	0017879b          	addiw	a5,a5,1
    80004348:	0007871b          	sext.w	a4,a5
    8000434c:	00f52823          	sw	a5,16(a0)
    80004350:	00e05663          	blez	a4,8000435c <_ZN10KSemaphore6signalEv+0x1c>
}
    80004354:	00000513          	li	a0,0
    80004358:	00008067          	ret
uint64 KSemaphore::signal() {
    8000435c:	ff010113          	addi	sp,sp,-16
    80004360:	00113423          	sd	ra,8(sp)
    80004364:	00813023          	sd	s0,0(sp)
    80004368:	01010413          	addi	s0,sp,16
        unblock();
    8000436c:	00000097          	auipc	ra,0x0
    80004370:	f78080e7          	jalr	-136(ra) # 800042e4 <_ZN10KSemaphore7unblockEv>
}
    80004374:	00000513          	li	a0,0
    80004378:	00813083          	ld	ra,8(sp)
    8000437c:	00013403          	ld	s0,0(sp)
    80004380:	01010113          	addi	sp,sp,16
    80004384:	00008067          	ret

0000000080004388 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004388:	ff010113          	addi	sp,sp,-16
    8000438c:	00113423          	sd	ra,8(sp)
    80004390:	00813023          	sd	s0,0(sp)
    80004394:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80004398:	00000097          	auipc	ra,0x0
    8000439c:	cdc080e7          	jalr	-804(ra) # 80004074 <_ZN15MemoryAllocator7kmallocEm>
}
    800043a0:	00813083          	ld	ra,8(sp)
    800043a4:	00013403          	ld	s0,0(sp)
    800043a8:	01010113          	addi	sp,sp,16
    800043ac:	00008067          	ret

00000000800043b0 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800043b0:	fd010113          	addi	sp,sp,-48
    800043b4:	02113423          	sd	ra,40(sp)
    800043b8:	02813023          	sd	s0,32(sp)
    800043bc:	00913c23          	sd	s1,24(sp)
    800043c0:	01213823          	sd	s2,16(sp)
    800043c4:	01313423          	sd	s3,8(sp)
    800043c8:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800043cc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800043d0:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800043d4:	01800513          	li	a0,24
    800043d8:	00000097          	auipc	ra,0x0
    800043dc:	fb0080e7          	jalr	-80(ra) # 80004388 <_ZN10KSemaphorenwEm>
    800043e0:	00050493          	mv	s1,a0
    800043e4:	0009859b          	sext.w	a1,s3
    800043e8:	00000097          	auipc	ra,0x0
    800043ec:	d50080e7          	jalr	-688(ra) # 80004138 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800043f0:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800043f4:	02048263          	beqz	s1,80004418 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800043f8:	00000513          	li	a0,0
}
    800043fc:	02813083          	ld	ra,40(sp)
    80004400:	02013403          	ld	s0,32(sp)
    80004404:	01813483          	ld	s1,24(sp)
    80004408:	01013903          	ld	s2,16(sp)
    8000440c:	00813983          	ld	s3,8(sp)
    80004410:	03010113          	addi	sp,sp,48
    80004414:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004418:	fff00513          	li	a0,-1
    8000441c:	fe1ff06f          	j	800043fc <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004420 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004420:	ff010113          	addi	sp,sp,-16
    80004424:	00113423          	sd	ra,8(sp)
    80004428:	00813023          	sd	s0,0(sp)
    8000442c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004430:	00000097          	auipc	ra,0x0
    80004434:	ca8080e7          	jalr	-856(ra) # 800040d8 <_ZN15MemoryAllocator5kfreeEPv>
}
    80004438:	00813083          	ld	ra,8(sp)
    8000443c:	00013403          	ld	s0,0(sp)
    80004440:	01010113          	addi	sp,sp,16
    80004444:	00008067          	ret

0000000080004448 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004448:	fe010113          	addi	sp,sp,-32
    8000444c:	00113c23          	sd	ra,24(sp)
    80004450:	00813823          	sd	s0,16(sp)
    80004454:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004458:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    8000445c:	00000097          	auipc	ra,0x0
    80004460:	d84080e7          	jalr	-636(ra) # 800041e0 <_ZN10KSemaphore4waitEv>
    80004464:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004468:	fe843783          	ld	a5,-24(s0)
    8000446c:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004470:	fffff097          	auipc	ra,0xfffff
    80004474:	4e8080e7          	jalr	1256(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004478:	01813083          	ld	ra,24(sp)
    8000447c:	01013403          	ld	s0,16(sp)
    80004480:	02010113          	addi	sp,sp,32
    80004484:	00008067          	ret

0000000080004488 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004488:	fe010113          	addi	sp,sp,-32
    8000448c:	00113c23          	sd	ra,24(sp)
    80004490:	00813823          	sd	s0,16(sp)
    80004494:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004498:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    8000449c:	00000097          	auipc	ra,0x0
    800044a0:	ea4080e7          	jalr	-348(ra) # 80004340 <_ZN10KSemaphore6signalEv>
    800044a4:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800044a8:	fe843783          	ld	a5,-24(s0)
    800044ac:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    800044b0:	fffff097          	auipc	ra,0xfffff
    800044b4:	4a8080e7          	jalr	1192(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    800044b8:	01813083          	ld	ra,24(sp)
    800044bc:	01013403          	ld	s0,16(sp)
    800044c0:	02010113          	addi	sp,sp,32
    800044c4:	00008067          	ret

00000000800044c8 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800044c8:	fe010113          	addi	sp,sp,-32
    800044cc:	00113c23          	sd	ra,24(sp)
    800044d0:	00813823          	sd	s0,16(sp)
    800044d4:	00913423          	sd	s1,8(sp)
    800044d8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800044dc:	00058493          	mv	s1,a1
    delete kSem;
    800044e0:	00048e63          	beqz	s1,800044fc <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800044e4:	00048513          	mv	a0,s1
    800044e8:	00000097          	auipc	ra,0x0
    800044ec:	d98080e7          	jalr	-616(ra) # 80004280 <_ZN10KSemaphoreD1Ev>
    800044f0:	00048513          	mv	a0,s1
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	f2c080e7          	jalr	-212(ra) # 80004420 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800044fc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004500:	fffff097          	auipc	ra,0xfffff
    80004504:	458080e7          	jalr	1112(ra) # 80003958 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004508:	01813083          	ld	ra,24(sp)
    8000450c:	01013403          	ld	s0,16(sp)
    80004510:	00813483          	ld	s1,8(sp)
    80004514:	02010113          	addi	sp,sp,32
    80004518:	00008067          	ret

000000008000451c <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00113c23          	sd	ra,24(sp)
    80004524:	00813823          	sd	s0,16(sp)
    80004528:	00913423          	sd	s1,8(sp)
    8000452c:	01213023          	sd	s2,0(sp)
    80004530:	02010413          	addi	s0,sp,32
    80004534:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004538:	00000913          	li	s2,0
    8000453c:	00c0006f          	j	80004548 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004540:	ffffd097          	auipc	ra,0xffffd
    80004544:	df4080e7          	jalr	-524(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004548:	ffffd097          	auipc	ra,0xffffd
    8000454c:	fc8080e7          	jalr	-56(ra) # 80001510 <getc>
    80004550:	0005059b          	sext.w	a1,a0
    80004554:	07100793          	li	a5,113
    80004558:	02f58a63          	beq	a1,a5,8000458c <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000455c:	0084b503          	ld	a0,8(s1)
    80004560:	00002097          	auipc	ra,0x2
    80004564:	c6c080e7          	jalr	-916(ra) # 800061cc <_ZN6Buffer3putEi>
        i++;
    80004568:	0019071b          	addiw	a4,s2,1
    8000456c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004570:	0004a683          	lw	a3,0(s1)
    80004574:	0026979b          	slliw	a5,a3,0x2
    80004578:	00d787bb          	addw	a5,a5,a3
    8000457c:	0017979b          	slliw	a5,a5,0x1
    80004580:	02f767bb          	remw	a5,a4,a5
    80004584:	fc0792e3          	bnez	a5,80004548 <_Z16producerKeyboardPv+0x2c>
    80004588:	fb9ff06f          	j	80004540 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000458c:	00100793          	li	a5,1
    80004590:	0000b717          	auipc	a4,0xb
    80004594:	48f72023          	sw	a5,1152(a4) # 8000fa10 <threadEnd>

    delete data->buffer;
    80004598:	0084b903          	ld	s2,8(s1)
    8000459c:	00090e63          	beqz	s2,800045b8 <_Z16producerKeyboardPv+0x9c>
    800045a0:	00090513          	mv	a0,s2
    800045a4:	00002097          	auipc	ra,0x2
    800045a8:	dcc080e7          	jalr	-564(ra) # 80006370 <_ZN6BufferD1Ev>
    800045ac:	00090513          	mv	a0,s2
    800045b0:	fffff097          	auipc	ra,0xfffff
    800045b4:	dfc080e7          	jalr	-516(ra) # 800033ac <_ZdlPv>

    sem_signal(data->wait);
    800045b8:	0104b503          	ld	a0,16(s1)
    800045bc:	ffffd097          	auipc	ra,0xffffd
    800045c0:	e50080e7          	jalr	-432(ra) # 8000140c <sem_signal>
}
    800045c4:	01813083          	ld	ra,24(sp)
    800045c8:	01013403          	ld	s0,16(sp)
    800045cc:	00813483          	ld	s1,8(sp)
    800045d0:	00013903          	ld	s2,0(sp)
    800045d4:	02010113          	addi	sp,sp,32
    800045d8:	00008067          	ret

00000000800045dc <_Z8producerPv>:

void producer(void *arg) {
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00913423          	sd	s1,8(sp)
    800045ec:	01213023          	sd	s2,0(sp)
    800045f0:	02010413          	addi	s0,sp,32
    800045f4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800045f8:	00000913          	li	s2,0
    800045fc:	00c0006f          	j	80004608 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004600:	ffffd097          	auipc	ra,0xffffd
    80004604:	d34080e7          	jalr	-716(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    80004608:	0000b797          	auipc	a5,0xb
    8000460c:	4087a783          	lw	a5,1032(a5) # 8000fa10 <threadEnd>
    80004610:	02079e63          	bnez	a5,8000464c <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004614:	0004a583          	lw	a1,0(s1)
    80004618:	0305859b          	addiw	a1,a1,48
    8000461c:	0084b503          	ld	a0,8(s1)
    80004620:	00002097          	auipc	ra,0x2
    80004624:	bac080e7          	jalr	-1108(ra) # 800061cc <_ZN6Buffer3putEi>
        i++;
    80004628:	0019071b          	addiw	a4,s2,1
    8000462c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004630:	0004a683          	lw	a3,0(s1)
    80004634:	0026979b          	slliw	a5,a3,0x2
    80004638:	00d787bb          	addw	a5,a5,a3
    8000463c:	0017979b          	slliw	a5,a5,0x1
    80004640:	02f767bb          	remw	a5,a4,a5
    80004644:	fc0792e3          	bnez	a5,80004608 <_Z8producerPv+0x2c>
    80004648:	fb9ff06f          	j	80004600 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000464c:	0104b503          	ld	a0,16(s1)
    80004650:	ffffd097          	auipc	ra,0xffffd
    80004654:	dbc080e7          	jalr	-580(ra) # 8000140c <sem_signal>
}
    80004658:	01813083          	ld	ra,24(sp)
    8000465c:	01013403          	ld	s0,16(sp)
    80004660:	00813483          	ld	s1,8(sp)
    80004664:	00013903          	ld	s2,0(sp)
    80004668:	02010113          	addi	sp,sp,32
    8000466c:	00008067          	ret

0000000080004670 <_Z8consumerPv>:

void consumer(void *arg) {
    80004670:	fd010113          	addi	sp,sp,-48
    80004674:	02113423          	sd	ra,40(sp)
    80004678:	02813023          	sd	s0,32(sp)
    8000467c:	00913c23          	sd	s1,24(sp)
    80004680:	01213823          	sd	s2,16(sp)
    80004684:	01313423          	sd	s3,8(sp)
    80004688:	03010413          	addi	s0,sp,48
    8000468c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80004690:	00000993          	li	s3,0
    80004694:	01c0006f          	j	800046b0 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	c9c080e7          	jalr	-868(ra) # 80001334 <thread_dispatch>
    800046a0:	0500006f          	j	800046f0 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800046a4:	00a00513          	li	a0,10
    800046a8:	ffffd097          	auipc	ra,0xffffd
    800046ac:	e90080e7          	jalr	-368(ra) # 80001538 <putc>
    while (!threadEnd) {
    800046b0:	0000b797          	auipc	a5,0xb
    800046b4:	3607a783          	lw	a5,864(a5) # 8000fa10 <threadEnd>
    800046b8:	04079463          	bnez	a5,80004700 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    800046bc:	00893503          	ld	a0,8(s2)
    800046c0:	00002097          	auipc	ra,0x2
    800046c4:	b9c080e7          	jalr	-1124(ra) # 8000625c <_ZN6Buffer3getEv>
        i++;
    800046c8:	0019849b          	addiw	s1,s3,1
    800046cc:	0004899b          	sext.w	s3,s1
        putc(key);
    800046d0:	0ff57513          	andi	a0,a0,255
    800046d4:	ffffd097          	auipc	ra,0xffffd
    800046d8:	e64080e7          	jalr	-412(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    800046dc:	00092703          	lw	a4,0(s2)
    800046e0:	0027179b          	slliw	a5,a4,0x2
    800046e4:	00e787bb          	addw	a5,a5,a4
    800046e8:	02f4e7bb          	remw	a5,s1,a5
    800046ec:	fa0786e3          	beqz	a5,80004698 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    800046f0:	05000793          	li	a5,80
    800046f4:	02f4e4bb          	remw	s1,s1,a5
    800046f8:	fa049ce3          	bnez	s1,800046b0 <_Z8consumerPv+0x40>
    800046fc:	fa9ff06f          	j	800046a4 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004700:	01093503          	ld	a0,16(s2)
    80004704:	ffffd097          	auipc	ra,0xffffd
    80004708:	d08080e7          	jalr	-760(ra) # 8000140c <sem_signal>
}
    8000470c:	02813083          	ld	ra,40(sp)
    80004710:	02013403          	ld	s0,32(sp)
    80004714:	01813483          	ld	s1,24(sp)
    80004718:	01013903          	ld	s2,16(sp)
    8000471c:	00813983          	ld	s3,8(sp)
    80004720:	03010113          	addi	sp,sp,48
    80004724:	00008067          	ret

0000000080004728 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004728:	f9010113          	addi	sp,sp,-112
    8000472c:	06113423          	sd	ra,104(sp)
    80004730:	06813023          	sd	s0,96(sp)
    80004734:	04913c23          	sd	s1,88(sp)
    80004738:	05213823          	sd	s2,80(sp)
    8000473c:	05313423          	sd	s3,72(sp)
    80004740:	05413023          	sd	s4,64(sp)
    80004744:	03513c23          	sd	s5,56(sp)
    80004748:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    8000474c:	00005517          	auipc	a0,0x5
    80004750:	bac50513          	addi	a0,a0,-1108 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004754:	00001097          	auipc	ra,0x1
    80004758:	1e4080e7          	jalr	484(ra) # 80005938 <_Z11printStringPKc>
    getString(input, 30);
    8000475c:	01e00593          	li	a1,30
    80004760:	fa040493          	addi	s1,s0,-96
    80004764:	00048513          	mv	a0,s1
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	24c080e7          	jalr	588(ra) # 800059b4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004770:	00048513          	mv	a0,s1
    80004774:	00001097          	auipc	ra,0x1
    80004778:	30c080e7          	jalr	780(ra) # 80005a80 <_Z11stringToIntPKc>
    8000477c:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004780:	00005517          	auipc	a0,0x5
    80004784:	b9850513          	addi	a0,a0,-1128 # 80009318 <CONSOLE_STATUS+0x308>
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	1b0080e7          	jalr	432(ra) # 80005938 <_Z11printStringPKc>
    getString(input, 30);
    80004790:	01e00593          	li	a1,30
    80004794:	00048513          	mv	a0,s1
    80004798:	00001097          	auipc	ra,0x1
    8000479c:	21c080e7          	jalr	540(ra) # 800059b4 <_Z9getStringPci>
    n = stringToInt(input);
    800047a0:	00048513          	mv	a0,s1
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	2dc080e7          	jalr	732(ra) # 80005a80 <_Z11stringToIntPKc>
    800047ac:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    800047b0:	00005517          	auipc	a0,0x5
    800047b4:	b8850513          	addi	a0,a0,-1144 # 80009338 <CONSOLE_STATUS+0x328>
    800047b8:	00001097          	auipc	ra,0x1
    800047bc:	180080e7          	jalr	384(ra) # 80005938 <_Z11printStringPKc>
    800047c0:	00000613          	li	a2,0
    800047c4:	00a00593          	li	a1,10
    800047c8:	00090513          	mv	a0,s2
    800047cc:	00001097          	auipc	ra,0x1
    800047d0:	304080e7          	jalr	772(ra) # 80005ad0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800047d4:	00005517          	auipc	a0,0x5
    800047d8:	b7c50513          	addi	a0,a0,-1156 # 80009350 <CONSOLE_STATUS+0x340>
    800047dc:	00001097          	auipc	ra,0x1
    800047e0:	15c080e7          	jalr	348(ra) # 80005938 <_Z11printStringPKc>
    800047e4:	00000613          	li	a2,0
    800047e8:	00a00593          	li	a1,10
    800047ec:	00048513          	mv	a0,s1
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	2e0080e7          	jalr	736(ra) # 80005ad0 <_Z8printIntiii>
    printString(".\n");
    800047f8:	00005517          	auipc	a0,0x5
    800047fc:	b7050513          	addi	a0,a0,-1168 # 80009368 <CONSOLE_STATUS+0x358>
    80004800:	00001097          	auipc	ra,0x1
    80004804:	138080e7          	jalr	312(ra) # 80005938 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004808:	03800513          	li	a0,56
    8000480c:	fffff097          	auipc	ra,0xfffff
    80004810:	b78080e7          	jalr	-1160(ra) # 80003384 <_Znwm>
    80004814:	00050a13          	mv	s4,a0
    80004818:	00048593          	mv	a1,s1
    8000481c:	00002097          	auipc	ra,0x2
    80004820:	914080e7          	jalr	-1772(ra) # 80006130 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004824:	00000593          	li	a1,0
    80004828:	0000b517          	auipc	a0,0xb
    8000482c:	1f050513          	addi	a0,a0,496 # 8000fa18 <waitForAll>
    80004830:	ffffd097          	auipc	ra,0xffffd
    80004834:	b4c080e7          	jalr	-1204(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004838:	00391793          	slli	a5,s2,0x3
    8000483c:	00f78793          	addi	a5,a5,15
    80004840:	ff07f793          	andi	a5,a5,-16
    80004844:	40f10133          	sub	sp,sp,a5
    80004848:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    8000484c:	0019071b          	addiw	a4,s2,1
    80004850:	00171793          	slli	a5,a4,0x1
    80004854:	00e787b3          	add	a5,a5,a4
    80004858:	00379793          	slli	a5,a5,0x3
    8000485c:	00f78793          	addi	a5,a5,15
    80004860:	ff07f793          	andi	a5,a5,-16
    80004864:	40f10133          	sub	sp,sp,a5
    80004868:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    8000486c:	00191613          	slli	a2,s2,0x1
    80004870:	012607b3          	add	a5,a2,s2
    80004874:	00379793          	slli	a5,a5,0x3
    80004878:	00f987b3          	add	a5,s3,a5
    8000487c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004880:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004884:	0000b717          	auipc	a4,0xb
    80004888:	19473703          	ld	a4,404(a4) # 8000fa18 <waitForAll>
    8000488c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004890:	00078613          	mv	a2,a5
    80004894:	00000597          	auipc	a1,0x0
    80004898:	ddc58593          	addi	a1,a1,-548 # 80004670 <_Z8consumerPv>
    8000489c:	f9840513          	addi	a0,s0,-104
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	a14080e7          	jalr	-1516(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    800048a8:	00000493          	li	s1,0
    800048ac:	0280006f          	j	800048d4 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    800048b0:	00000597          	auipc	a1,0x0
    800048b4:	c6c58593          	addi	a1,a1,-916 # 8000451c <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    800048b8:	00179613          	slli	a2,a5,0x1
    800048bc:	00f60633          	add	a2,a2,a5
    800048c0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800048c4:	00c98633          	add	a2,s3,a2
    800048c8:	ffffd097          	auipc	ra,0xffffd
    800048cc:	9ec080e7          	jalr	-1556(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800048d0:	0014849b          	addiw	s1,s1,1
    800048d4:	0524d263          	bge	s1,s2,80004918 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    800048d8:	00149793          	slli	a5,s1,0x1
    800048dc:	009787b3          	add	a5,a5,s1
    800048e0:	00379793          	slli	a5,a5,0x3
    800048e4:	00f987b3          	add	a5,s3,a5
    800048e8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800048ec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800048f0:	0000b717          	auipc	a4,0xb
    800048f4:	12873703          	ld	a4,296(a4) # 8000fa18 <waitForAll>
    800048f8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800048fc:	00048793          	mv	a5,s1
    80004900:	00349513          	slli	a0,s1,0x3
    80004904:	00aa8533          	add	a0,s5,a0
    80004908:	fa9054e3          	blez	s1,800048b0 <_Z22producerConsumer_C_APIv+0x188>
    8000490c:	00000597          	auipc	a1,0x0
    80004910:	cd058593          	addi	a1,a1,-816 # 800045dc <_Z8producerPv>
    80004914:	fa5ff06f          	j	800048b8 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	a1c080e7          	jalr	-1508(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004920:	00000493          	li	s1,0
    80004924:	00994e63          	blt	s2,s1,80004940 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004928:	0000b517          	auipc	a0,0xb
    8000492c:	0f053503          	ld	a0,240(a0) # 8000fa18 <waitForAll>
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	ab0080e7          	jalr	-1360(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004938:	0014849b          	addiw	s1,s1,1
    8000493c:	fe9ff06f          	j	80004924 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004940:	0000b517          	auipc	a0,0xb
    80004944:	0d853503          	ld	a0,216(a0) # 8000fa18 <waitForAll>
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	a6c080e7          	jalr	-1428(ra) # 800013b4 <sem_close>
    80004950:	f9040113          	addi	sp,s0,-112
    80004954:	06813083          	ld	ra,104(sp)
    80004958:	06013403          	ld	s0,96(sp)
    8000495c:	05813483          	ld	s1,88(sp)
    80004960:	05013903          	ld	s2,80(sp)
    80004964:	04813983          	ld	s3,72(sp)
    80004968:	04013a03          	ld	s4,64(sp)
    8000496c:	03813a83          	ld	s5,56(sp)
    80004970:	07010113          	addi	sp,sp,112
    80004974:	00008067          	ret
    80004978:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000497c:	000a0513          	mv	a0,s4
    80004980:	fffff097          	auipc	ra,0xfffff
    80004984:	a2c080e7          	jalr	-1492(ra) # 800033ac <_ZdlPv>
    80004988:	00048513          	mv	a0,s1
    8000498c:	0000c097          	auipc	ra,0xc
    80004990:	17c080e7          	jalr	380(ra) # 80010b08 <_Unwind_Resume>

0000000080004994 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	01213023          	sd	s2,0(sp)
    800049a8:	02010413          	addi	s0,sp,32
    800049ac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800049b0:	00100793          	li	a5,1
    800049b4:	02a7f863          	bgeu	a5,a0,800049e4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800049b8:	00a00793          	li	a5,10
    800049bc:	02f577b3          	remu	a5,a0,a5
    800049c0:	02078e63          	beqz	a5,800049fc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800049c4:	fff48513          	addi	a0,s1,-1
    800049c8:	00000097          	auipc	ra,0x0
    800049cc:	fcc080e7          	jalr	-52(ra) # 80004994 <_ZL9fibonaccim>
    800049d0:	00050913          	mv	s2,a0
    800049d4:	ffe48513          	addi	a0,s1,-2
    800049d8:	00000097          	auipc	ra,0x0
    800049dc:	fbc080e7          	jalr	-68(ra) # 80004994 <_ZL9fibonaccim>
    800049e0:	00a90533          	add	a0,s2,a0
}
    800049e4:	01813083          	ld	ra,24(sp)
    800049e8:	01013403          	ld	s0,16(sp)
    800049ec:	00813483          	ld	s1,8(sp)
    800049f0:	00013903          	ld	s2,0(sp)
    800049f4:	02010113          	addi	sp,sp,32
    800049f8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	938080e7          	jalr	-1736(ra) # 80001334 <thread_dispatch>
    80004a04:	fc1ff06f          	j	800049c4 <_ZL9fibonaccim+0x30>

0000000080004a08 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00913423          	sd	s1,8(sp)
    80004a18:	01213023          	sd	s2,0(sp)
    80004a1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004a20:	00000913          	li	s2,0
    80004a24:	0380006f          	j	80004a5c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004a28:	ffffd097          	auipc	ra,0xffffd
    80004a2c:	90c080e7          	jalr	-1780(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004a30:	00148493          	addi	s1,s1,1
    80004a34:	000027b7          	lui	a5,0x2
    80004a38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a3c:	0097ee63          	bltu	a5,s1,80004a58 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a40:	00000713          	li	a4,0
    80004a44:	000077b7          	lui	a5,0x7
    80004a48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a4c:	fce7eee3          	bltu	a5,a4,80004a28 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004a50:	00170713          	addi	a4,a4,1
    80004a54:	ff1ff06f          	j	80004a44 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004a58:	00190913          	addi	s2,s2,1
    80004a5c:	00900793          	li	a5,9
    80004a60:	0527e063          	bltu	a5,s2,80004aa0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004a64:	00005517          	auipc	a0,0x5
    80004a68:	90c50513          	addi	a0,a0,-1780 # 80009370 <CONSOLE_STATUS+0x360>
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	ecc080e7          	jalr	-308(ra) # 80005938 <_Z11printStringPKc>
    80004a74:	00000613          	li	a2,0
    80004a78:	00a00593          	li	a1,10
    80004a7c:	0009051b          	sext.w	a0,s2
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	050080e7          	jalr	80(ra) # 80005ad0 <_Z8printIntiii>
    80004a88:	00004517          	auipc	a0,0x4
    80004a8c:	67050513          	addi	a0,a0,1648 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	ea8080e7          	jalr	-344(ra) # 80005938 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a98:	00000493          	li	s1,0
    80004a9c:	f99ff06f          	j	80004a34 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004aa0:	00005517          	auipc	a0,0x5
    80004aa4:	8d850513          	addi	a0,a0,-1832 # 80009378 <CONSOLE_STATUS+0x368>
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	e90080e7          	jalr	-368(ra) # 80005938 <_Z11printStringPKc>
    finishedA = true;
    80004ab0:	00100793          	li	a5,1
    80004ab4:	0000b717          	auipc	a4,0xb
    80004ab8:	f6f70623          	sb	a5,-148(a4) # 8000fa20 <_ZL9finishedA>
}
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	01013403          	ld	s0,16(sp)
    80004ac4:	00813483          	ld	s1,8(sp)
    80004ac8:	00013903          	ld	s2,0(sp)
    80004acc:	02010113          	addi	sp,sp,32
    80004ad0:	00008067          	ret

0000000080004ad4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004ad4:	fe010113          	addi	sp,sp,-32
    80004ad8:	00113c23          	sd	ra,24(sp)
    80004adc:	00813823          	sd	s0,16(sp)
    80004ae0:	00913423          	sd	s1,8(sp)
    80004ae4:	01213023          	sd	s2,0(sp)
    80004ae8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004aec:	00000913          	li	s2,0
    80004af0:	0380006f          	j	80004b28 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	840080e7          	jalr	-1984(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004afc:	00148493          	addi	s1,s1,1
    80004b00:	000027b7          	lui	a5,0x2
    80004b04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b08:	0097ee63          	bltu	a5,s1,80004b24 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b0c:	00000713          	li	a4,0
    80004b10:	000077b7          	lui	a5,0x7
    80004b14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b18:	fce7eee3          	bltu	a5,a4,80004af4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004b1c:	00170713          	addi	a4,a4,1
    80004b20:	ff1ff06f          	j	80004b10 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004b24:	00190913          	addi	s2,s2,1
    80004b28:	00f00793          	li	a5,15
    80004b2c:	0527e063          	bltu	a5,s2,80004b6c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004b30:	00005517          	auipc	a0,0x5
    80004b34:	85850513          	addi	a0,a0,-1960 # 80009388 <CONSOLE_STATUS+0x378>
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	e00080e7          	jalr	-512(ra) # 80005938 <_Z11printStringPKc>
    80004b40:	00000613          	li	a2,0
    80004b44:	00a00593          	li	a1,10
    80004b48:	0009051b          	sext.w	a0,s2
    80004b4c:	00001097          	auipc	ra,0x1
    80004b50:	f84080e7          	jalr	-124(ra) # 80005ad0 <_Z8printIntiii>
    80004b54:	00004517          	auipc	a0,0x4
    80004b58:	5a450513          	addi	a0,a0,1444 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	ddc080e7          	jalr	-548(ra) # 80005938 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b64:	00000493          	li	s1,0
    80004b68:	f99ff06f          	j	80004b00 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004b6c:	ffffc097          	auipc	ra,0xffffc
    80004b70:	7c8080e7          	jalr	1992(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004b74:	00005517          	auipc	a0,0x5
    80004b78:	81c50513          	addi	a0,a0,-2020 # 80009390 <CONSOLE_STATUS+0x380>
    80004b7c:	00001097          	auipc	ra,0x1
    80004b80:	dbc080e7          	jalr	-580(ra) # 80005938 <_Z11printStringPKc>
    finishedB = true;
    80004b84:	00100793          	li	a5,1
    80004b88:	0000b717          	auipc	a4,0xb
    80004b8c:	e8f70ca3          	sb	a5,-359(a4) # 8000fa21 <_ZL9finishedB>
}
    80004b90:	01813083          	ld	ra,24(sp)
    80004b94:	01013403          	ld	s0,16(sp)
    80004b98:	00813483          	ld	s1,8(sp)
    80004b9c:	00013903          	ld	s2,0(sp)
    80004ba0:	02010113          	addi	sp,sp,32
    80004ba4:	00008067          	ret

0000000080004ba8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004ba8:	fe010113          	addi	sp,sp,-32
    80004bac:	00113c23          	sd	ra,24(sp)
    80004bb0:	00813823          	sd	s0,16(sp)
    80004bb4:	00913423          	sd	s1,8(sp)
    80004bb8:	01213023          	sd	s2,0(sp)
    80004bbc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004bc0:	00000493          	li	s1,0
    80004bc4:	0400006f          	j	80004c04 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004bc8:	00004517          	auipc	a0,0x4
    80004bcc:	7d850513          	addi	a0,a0,2008 # 800093a0 <CONSOLE_STATUS+0x390>
    80004bd0:	00001097          	auipc	ra,0x1
    80004bd4:	d68080e7          	jalr	-664(ra) # 80005938 <_Z11printStringPKc>
    80004bd8:	00000613          	li	a2,0
    80004bdc:	00a00593          	li	a1,10
    80004be0:	00048513          	mv	a0,s1
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	eec080e7          	jalr	-276(ra) # 80005ad0 <_Z8printIntiii>
    80004bec:	00004517          	auipc	a0,0x4
    80004bf0:	50c50513          	addi	a0,a0,1292 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004bf4:	00001097          	auipc	ra,0x1
    80004bf8:	d44080e7          	jalr	-700(ra) # 80005938 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004bfc:	0014849b          	addiw	s1,s1,1
    80004c00:	0ff4f493          	andi	s1,s1,255
    80004c04:	00200793          	li	a5,2
    80004c08:	fc97f0e3          	bgeu	a5,s1,80004bc8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004c0c:	00004517          	auipc	a0,0x4
    80004c10:	79c50513          	addi	a0,a0,1948 # 800093a8 <CONSOLE_STATUS+0x398>
    80004c14:	00001097          	auipc	ra,0x1
    80004c18:	d24080e7          	jalr	-732(ra) # 80005938 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004c1c:	00700313          	li	t1,7
    thread_dispatch();
    80004c20:	ffffc097          	auipc	ra,0xffffc
    80004c24:	714080e7          	jalr	1812(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004c28:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004c2c:	00004517          	auipc	a0,0x4
    80004c30:	78c50513          	addi	a0,a0,1932 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	d04080e7          	jalr	-764(ra) # 80005938 <_Z11printStringPKc>
    80004c3c:	00000613          	li	a2,0
    80004c40:	00a00593          	li	a1,10
    80004c44:	0009051b          	sext.w	a0,s2
    80004c48:	00001097          	auipc	ra,0x1
    80004c4c:	e88080e7          	jalr	-376(ra) # 80005ad0 <_Z8printIntiii>
    80004c50:	00004517          	auipc	a0,0x4
    80004c54:	4a850513          	addi	a0,a0,1192 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004c58:	00001097          	auipc	ra,0x1
    80004c5c:	ce0080e7          	jalr	-800(ra) # 80005938 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004c60:	00c00513          	li	a0,12
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	d30080e7          	jalr	-720(ra) # 80004994 <_ZL9fibonaccim>
    80004c6c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004c70:	00004517          	auipc	a0,0x4
    80004c74:	75050513          	addi	a0,a0,1872 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	cc0080e7          	jalr	-832(ra) # 80005938 <_Z11printStringPKc>
    80004c80:	00000613          	li	a2,0
    80004c84:	00a00593          	li	a1,10
    80004c88:	0009051b          	sext.w	a0,s2
    80004c8c:	00001097          	auipc	ra,0x1
    80004c90:	e44080e7          	jalr	-444(ra) # 80005ad0 <_Z8printIntiii>
    80004c94:	00004517          	auipc	a0,0x4
    80004c98:	46450513          	addi	a0,a0,1124 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	c9c080e7          	jalr	-868(ra) # 80005938 <_Z11printStringPKc>
    80004ca4:	0400006f          	j	80004ce4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004ca8:	00004517          	auipc	a0,0x4
    80004cac:	6f850513          	addi	a0,a0,1784 # 800093a0 <CONSOLE_STATUS+0x390>
    80004cb0:	00001097          	auipc	ra,0x1
    80004cb4:	c88080e7          	jalr	-888(ra) # 80005938 <_Z11printStringPKc>
    80004cb8:	00000613          	li	a2,0
    80004cbc:	00a00593          	li	a1,10
    80004cc0:	00048513          	mv	a0,s1
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	e0c080e7          	jalr	-500(ra) # 80005ad0 <_Z8printIntiii>
    80004ccc:	00004517          	auipc	a0,0x4
    80004cd0:	42c50513          	addi	a0,a0,1068 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	c64080e7          	jalr	-924(ra) # 80005938 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004cdc:	0014849b          	addiw	s1,s1,1
    80004ce0:	0ff4f493          	andi	s1,s1,255
    80004ce4:	00500793          	li	a5,5
    80004ce8:	fc97f0e3          	bgeu	a5,s1,80004ca8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    80004cec:	ffffc097          	auipc	ra,0xffffc
    80004cf0:	648080e7          	jalr	1608(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80004cf4:	00004517          	auipc	a0,0x4
    80004cf8:	6dc50513          	addi	a0,a0,1756 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80004cfc:	00001097          	auipc	ra,0x1
    80004d00:	c3c080e7          	jalr	-964(ra) # 80005938 <_Z11printStringPKc>
    finishedC = true;
    80004d04:	00100793          	li	a5,1
    80004d08:	0000b717          	auipc	a4,0xb
    80004d0c:	d0f70d23          	sb	a5,-742(a4) # 8000fa22 <_ZL9finishedC>
}
    80004d10:	01813083          	ld	ra,24(sp)
    80004d14:	01013403          	ld	s0,16(sp)
    80004d18:	00813483          	ld	s1,8(sp)
    80004d1c:	00013903          	ld	s2,0(sp)
    80004d20:	02010113          	addi	sp,sp,32
    80004d24:	00008067          	ret

0000000080004d28 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004d28:	fe010113          	addi	sp,sp,-32
    80004d2c:	00113c23          	sd	ra,24(sp)
    80004d30:	00813823          	sd	s0,16(sp)
    80004d34:	00913423          	sd	s1,8(sp)
    80004d38:	01213023          	sd	s2,0(sp)
    80004d3c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004d40:	00a00493          	li	s1,10
    80004d44:	0400006f          	j	80004d84 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d48:	00004517          	auipc	a0,0x4
    80004d4c:	69850513          	addi	a0,a0,1688 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	be8080e7          	jalr	-1048(ra) # 80005938 <_Z11printStringPKc>
    80004d58:	00000613          	li	a2,0
    80004d5c:	00a00593          	li	a1,10
    80004d60:	00048513          	mv	a0,s1
    80004d64:	00001097          	auipc	ra,0x1
    80004d68:	d6c080e7          	jalr	-660(ra) # 80005ad0 <_Z8printIntiii>
    80004d6c:	00004517          	auipc	a0,0x4
    80004d70:	38c50513          	addi	a0,a0,908 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004d74:	00001097          	auipc	ra,0x1
    80004d78:	bc4080e7          	jalr	-1084(ra) # 80005938 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004d7c:	0014849b          	addiw	s1,s1,1
    80004d80:	0ff4f493          	andi	s1,s1,255
    80004d84:	00c00793          	li	a5,12
    80004d88:	fc97f0e3          	bgeu	a5,s1,80004d48 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004d8c:	00004517          	auipc	a0,0x4
    80004d90:	65c50513          	addi	a0,a0,1628 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	ba4080e7          	jalr	-1116(ra) # 80005938 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004d9c:	00500313          	li	t1,5
    thread_dispatch();
    80004da0:	ffffc097          	auipc	ra,0xffffc
    80004da4:	594080e7          	jalr	1428(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004da8:	01000513          	li	a0,16
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	be8080e7          	jalr	-1048(ra) # 80004994 <_ZL9fibonaccim>
    80004db4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004db8:	00004517          	auipc	a0,0x4
    80004dbc:	64050513          	addi	a0,a0,1600 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	b78080e7          	jalr	-1160(ra) # 80005938 <_Z11printStringPKc>
    80004dc8:	00000613          	li	a2,0
    80004dcc:	00a00593          	li	a1,10
    80004dd0:	0009051b          	sext.w	a0,s2
    80004dd4:	00001097          	auipc	ra,0x1
    80004dd8:	cfc080e7          	jalr	-772(ra) # 80005ad0 <_Z8printIntiii>
    80004ddc:	00004517          	auipc	a0,0x4
    80004de0:	31c50513          	addi	a0,a0,796 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	b54080e7          	jalr	-1196(ra) # 80005938 <_Z11printStringPKc>
    80004dec:	0400006f          	j	80004e2c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004df0:	00004517          	auipc	a0,0x4
    80004df4:	5f050513          	addi	a0,a0,1520 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004df8:	00001097          	auipc	ra,0x1
    80004dfc:	b40080e7          	jalr	-1216(ra) # 80005938 <_Z11printStringPKc>
    80004e00:	00000613          	li	a2,0
    80004e04:	00a00593          	li	a1,10
    80004e08:	00048513          	mv	a0,s1
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	cc4080e7          	jalr	-828(ra) # 80005ad0 <_Z8printIntiii>
    80004e14:	00004517          	auipc	a0,0x4
    80004e18:	2e450513          	addi	a0,a0,740 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	b1c080e7          	jalr	-1252(ra) # 80005938 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004e24:	0014849b          	addiw	s1,s1,1
    80004e28:	0ff4f493          	andi	s1,s1,255
    80004e2c:	00f00793          	li	a5,15
    80004e30:	fc97f0e3          	bgeu	a5,s1,80004df0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	500080e7          	jalr	1280(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80004e3c:	00004517          	auipc	a0,0x4
    80004e40:	5cc50513          	addi	a0,a0,1484 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	af4080e7          	jalr	-1292(ra) # 80005938 <_Z11printStringPKc>
    finishedD = true;
    80004e4c:	00100793          	li	a5,1
    80004e50:	0000b717          	auipc	a4,0xb
    80004e54:	bcf709a3          	sb	a5,-1069(a4) # 8000fa23 <_ZL9finishedD>
}
    80004e58:	01813083          	ld	ra,24(sp)
    80004e5c:	01013403          	ld	s0,16(sp)
    80004e60:	00813483          	ld	s1,8(sp)
    80004e64:	00013903          	ld	s2,0(sp)
    80004e68:	02010113          	addi	sp,sp,32
    80004e6c:	00008067          	ret

0000000080004e70 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004e70:	fc010113          	addi	sp,sp,-64
    80004e74:	02113c23          	sd	ra,56(sp)
    80004e78:	02813823          	sd	s0,48(sp)
    80004e7c:	02913423          	sd	s1,40(sp)
    80004e80:	03213023          	sd	s2,32(sp)
    80004e84:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    80004e88:	01000513          	li	a0,16
    80004e8c:	ffffe097          	auipc	ra,0xffffe
    80004e90:	4f8080e7          	jalr	1272(ra) # 80003384 <_Znwm>
    80004e94:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004e98:	ffffe097          	auipc	ra,0xffffe
    80004e9c:	6bc080e7          	jalr	1724(ra) # 80003554 <_ZN6ThreadC1Ev>
    80004ea0:	00007797          	auipc	a5,0x7
    80004ea4:	93078793          	addi	a5,a5,-1744 # 8000b7d0 <_ZTV7WorkerA+0x10>
    80004ea8:	00f4b023          	sd	a5,0(s1)
    80004eac:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004eb0:	00004517          	auipc	a0,0x4
    80004eb4:	56850513          	addi	a0,a0,1384 # 80009418 <CONSOLE_STATUS+0x408>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	a80080e7          	jalr	-1408(ra) # 80005938 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004ec0:	01000513          	li	a0,16
    80004ec4:	ffffe097          	auipc	ra,0xffffe
    80004ec8:	4c0080e7          	jalr	1216(ra) # 80003384 <_Znwm>
    80004ecc:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004ed0:	ffffe097          	auipc	ra,0xffffe
    80004ed4:	684080e7          	jalr	1668(ra) # 80003554 <_ZN6ThreadC1Ev>
    80004ed8:	00007797          	auipc	a5,0x7
    80004edc:	92078793          	addi	a5,a5,-1760 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80004ee0:	00f4b023          	sd	a5,0(s1)
    80004ee4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004ee8:	00004517          	auipc	a0,0x4
    80004eec:	54850513          	addi	a0,a0,1352 # 80009430 <CONSOLE_STATUS+0x420>
    80004ef0:	00001097          	auipc	ra,0x1
    80004ef4:	a48080e7          	jalr	-1464(ra) # 80005938 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004ef8:	01000513          	li	a0,16
    80004efc:	ffffe097          	auipc	ra,0xffffe
    80004f00:	488080e7          	jalr	1160(ra) # 80003384 <_Znwm>
    80004f04:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004f08:	ffffe097          	auipc	ra,0xffffe
    80004f0c:	64c080e7          	jalr	1612(ra) # 80003554 <_ZN6ThreadC1Ev>
    80004f10:	00007797          	auipc	a5,0x7
    80004f14:	91078793          	addi	a5,a5,-1776 # 8000b820 <_ZTV7WorkerC+0x10>
    80004f18:	00f4b023          	sd	a5,0(s1)
    80004f1c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004f20:	00004517          	auipc	a0,0x4
    80004f24:	52850513          	addi	a0,a0,1320 # 80009448 <CONSOLE_STATUS+0x438>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	a10080e7          	jalr	-1520(ra) # 80005938 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004f30:	01000513          	li	a0,16
    80004f34:	ffffe097          	auipc	ra,0xffffe
    80004f38:	450080e7          	jalr	1104(ra) # 80003384 <_Znwm>
    80004f3c:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004f40:	ffffe097          	auipc	ra,0xffffe
    80004f44:	614080e7          	jalr	1556(ra) # 80003554 <_ZN6ThreadC1Ev>
    80004f48:	00007797          	auipc	a5,0x7
    80004f4c:	90078793          	addi	a5,a5,-1792 # 8000b848 <_ZTV7WorkerD+0x10>
    80004f50:	00f4b023          	sd	a5,0(s1)
    80004f54:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004f58:	00004517          	auipc	a0,0x4
    80004f5c:	50850513          	addi	a0,a0,1288 # 80009460 <CONSOLE_STATUS+0x450>
    80004f60:	00001097          	auipc	ra,0x1
    80004f64:	9d8080e7          	jalr	-1576(ra) # 80005938 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004f68:	00000493          	li	s1,0
    80004f6c:	00300793          	li	a5,3
    80004f70:	0297c663          	blt	a5,s1,80004f9c <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    80004f74:	00349793          	slli	a5,s1,0x3
    80004f78:	fe040713          	addi	a4,s0,-32
    80004f7c:	00f707b3          	add	a5,a4,a5
    80004f80:	fe07b503          	ld	a0,-32(a5)
    80004f84:	ffffe097          	auipc	ra,0xffffe
    80004f88:	4d0080e7          	jalr	1232(ra) # 80003454 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004f8c:	0014849b          	addiw	s1,s1,1
    80004f90:	fddff06f          	j	80004f6c <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004f94:	ffffe097          	auipc	ra,0xffffe
    80004f98:	4f8080e7          	jalr	1272(ra) # 8000348c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f9c:	0000b797          	auipc	a5,0xb
    80004fa0:	a847c783          	lbu	a5,-1404(a5) # 8000fa20 <_ZL9finishedA>
    80004fa4:	fe0788e3          	beqz	a5,80004f94 <_Z20Threads_CPP_API_testv+0x124>
    80004fa8:	0000b797          	auipc	a5,0xb
    80004fac:	a797c783          	lbu	a5,-1415(a5) # 8000fa21 <_ZL9finishedB>
    80004fb0:	fe0782e3          	beqz	a5,80004f94 <_Z20Threads_CPP_API_testv+0x124>
    80004fb4:	0000b797          	auipc	a5,0xb
    80004fb8:	a6e7c783          	lbu	a5,-1426(a5) # 8000fa22 <_ZL9finishedC>
    80004fbc:	fc078ce3          	beqz	a5,80004f94 <_Z20Threads_CPP_API_testv+0x124>
    80004fc0:	0000b797          	auipc	a5,0xb
    80004fc4:	a637c783          	lbu	a5,-1437(a5) # 8000fa23 <_ZL9finishedD>
    80004fc8:	fc0786e3          	beqz	a5,80004f94 <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    80004fcc:	fc040493          	addi	s1,s0,-64
    80004fd0:	0080006f          	j	80004fd8 <_Z20Threads_CPP_API_testv+0x168>
    80004fd4:	00848493          	addi	s1,s1,8
    80004fd8:	fe040793          	addi	a5,s0,-32
    80004fdc:	08f48663          	beq	s1,a5,80005068 <_Z20Threads_CPP_API_testv+0x1f8>
    80004fe0:	0004b503          	ld	a0,0(s1)
    80004fe4:	fe0508e3          	beqz	a0,80004fd4 <_Z20Threads_CPP_API_testv+0x164>
    80004fe8:	00053783          	ld	a5,0(a0)
    80004fec:	0087b783          	ld	a5,8(a5)
    80004ff0:	000780e7          	jalr	a5
    80004ff4:	fe1ff06f          	j	80004fd4 <_Z20Threads_CPP_API_testv+0x164>
    80004ff8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004ffc:	00048513          	mv	a0,s1
    80005000:	ffffe097          	auipc	ra,0xffffe
    80005004:	3ac080e7          	jalr	940(ra) # 800033ac <_ZdlPv>
    80005008:	00090513          	mv	a0,s2
    8000500c:	0000c097          	auipc	ra,0xc
    80005010:	afc080e7          	jalr	-1284(ra) # 80010b08 <_Unwind_Resume>
    80005014:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005018:	00048513          	mv	a0,s1
    8000501c:	ffffe097          	auipc	ra,0xffffe
    80005020:	390080e7          	jalr	912(ra) # 800033ac <_ZdlPv>
    80005024:	00090513          	mv	a0,s2
    80005028:	0000c097          	auipc	ra,0xc
    8000502c:	ae0080e7          	jalr	-1312(ra) # 80010b08 <_Unwind_Resume>
    80005030:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005034:	00048513          	mv	a0,s1
    80005038:	ffffe097          	auipc	ra,0xffffe
    8000503c:	374080e7          	jalr	884(ra) # 800033ac <_ZdlPv>
    80005040:	00090513          	mv	a0,s2
    80005044:	0000c097          	auipc	ra,0xc
    80005048:	ac4080e7          	jalr	-1340(ra) # 80010b08 <_Unwind_Resume>
    8000504c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005050:	00048513          	mv	a0,s1
    80005054:	ffffe097          	auipc	ra,0xffffe
    80005058:	358080e7          	jalr	856(ra) # 800033ac <_ZdlPv>
    8000505c:	00090513          	mv	a0,s2
    80005060:	0000c097          	auipc	ra,0xc
    80005064:	aa8080e7          	jalr	-1368(ra) # 80010b08 <_Unwind_Resume>
    80005068:	03813083          	ld	ra,56(sp)
    8000506c:	03013403          	ld	s0,48(sp)
    80005070:	02813483          	ld	s1,40(sp)
    80005074:	02013903          	ld	s2,32(sp)
    80005078:	04010113          	addi	sp,sp,64
    8000507c:	00008067          	ret

0000000080005080 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005080:	ff010113          	addi	sp,sp,-16
    80005084:	00113423          	sd	ra,8(sp)
    80005088:	00813023          	sd	s0,0(sp)
    8000508c:	01010413          	addi	s0,sp,16
    80005090:	00006797          	auipc	a5,0x6
    80005094:	74078793          	addi	a5,a5,1856 # 8000b7d0 <_ZTV7WorkerA+0x10>
    80005098:	00f53023          	sd	a5,0(a0)
    8000509c:	ffffe097          	auipc	ra,0xffffe
    800050a0:	278080e7          	jalr	632(ra) # 80003314 <_ZN6ThreadD1Ev>
    800050a4:	00813083          	ld	ra,8(sp)
    800050a8:	00013403          	ld	s0,0(sp)
    800050ac:	01010113          	addi	sp,sp,16
    800050b0:	00008067          	ret

00000000800050b4 <_ZN7WorkerAD0Ev>:
    800050b4:	fe010113          	addi	sp,sp,-32
    800050b8:	00113c23          	sd	ra,24(sp)
    800050bc:	00813823          	sd	s0,16(sp)
    800050c0:	00913423          	sd	s1,8(sp)
    800050c4:	02010413          	addi	s0,sp,32
    800050c8:	00050493          	mv	s1,a0
    800050cc:	00006797          	auipc	a5,0x6
    800050d0:	70478793          	addi	a5,a5,1796 # 8000b7d0 <_ZTV7WorkerA+0x10>
    800050d4:	00f53023          	sd	a5,0(a0)
    800050d8:	ffffe097          	auipc	ra,0xffffe
    800050dc:	23c080e7          	jalr	572(ra) # 80003314 <_ZN6ThreadD1Ev>
    800050e0:	00048513          	mv	a0,s1
    800050e4:	ffffe097          	auipc	ra,0xffffe
    800050e8:	2c8080e7          	jalr	712(ra) # 800033ac <_ZdlPv>
    800050ec:	01813083          	ld	ra,24(sp)
    800050f0:	01013403          	ld	s0,16(sp)
    800050f4:	00813483          	ld	s1,8(sp)
    800050f8:	02010113          	addi	sp,sp,32
    800050fc:	00008067          	ret

0000000080005100 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005100:	ff010113          	addi	sp,sp,-16
    80005104:	00113423          	sd	ra,8(sp)
    80005108:	00813023          	sd	s0,0(sp)
    8000510c:	01010413          	addi	s0,sp,16
    80005110:	00006797          	auipc	a5,0x6
    80005114:	6e878793          	addi	a5,a5,1768 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80005118:	00f53023          	sd	a5,0(a0)
    8000511c:	ffffe097          	auipc	ra,0xffffe
    80005120:	1f8080e7          	jalr	504(ra) # 80003314 <_ZN6ThreadD1Ev>
    80005124:	00813083          	ld	ra,8(sp)
    80005128:	00013403          	ld	s0,0(sp)
    8000512c:	01010113          	addi	sp,sp,16
    80005130:	00008067          	ret

0000000080005134 <_ZN7WorkerBD0Ev>:
    80005134:	fe010113          	addi	sp,sp,-32
    80005138:	00113c23          	sd	ra,24(sp)
    8000513c:	00813823          	sd	s0,16(sp)
    80005140:	00913423          	sd	s1,8(sp)
    80005144:	02010413          	addi	s0,sp,32
    80005148:	00050493          	mv	s1,a0
    8000514c:	00006797          	auipc	a5,0x6
    80005150:	6ac78793          	addi	a5,a5,1708 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80005154:	00f53023          	sd	a5,0(a0)
    80005158:	ffffe097          	auipc	ra,0xffffe
    8000515c:	1bc080e7          	jalr	444(ra) # 80003314 <_ZN6ThreadD1Ev>
    80005160:	00048513          	mv	a0,s1
    80005164:	ffffe097          	auipc	ra,0xffffe
    80005168:	248080e7          	jalr	584(ra) # 800033ac <_ZdlPv>
    8000516c:	01813083          	ld	ra,24(sp)
    80005170:	01013403          	ld	s0,16(sp)
    80005174:	00813483          	ld	s1,8(sp)
    80005178:	02010113          	addi	sp,sp,32
    8000517c:	00008067          	ret

0000000080005180 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005180:	ff010113          	addi	sp,sp,-16
    80005184:	00113423          	sd	ra,8(sp)
    80005188:	00813023          	sd	s0,0(sp)
    8000518c:	01010413          	addi	s0,sp,16
    80005190:	00006797          	auipc	a5,0x6
    80005194:	69078793          	addi	a5,a5,1680 # 8000b820 <_ZTV7WorkerC+0x10>
    80005198:	00f53023          	sd	a5,0(a0)
    8000519c:	ffffe097          	auipc	ra,0xffffe
    800051a0:	178080e7          	jalr	376(ra) # 80003314 <_ZN6ThreadD1Ev>
    800051a4:	00813083          	ld	ra,8(sp)
    800051a8:	00013403          	ld	s0,0(sp)
    800051ac:	01010113          	addi	sp,sp,16
    800051b0:	00008067          	ret

00000000800051b4 <_ZN7WorkerCD0Ev>:
    800051b4:	fe010113          	addi	sp,sp,-32
    800051b8:	00113c23          	sd	ra,24(sp)
    800051bc:	00813823          	sd	s0,16(sp)
    800051c0:	00913423          	sd	s1,8(sp)
    800051c4:	02010413          	addi	s0,sp,32
    800051c8:	00050493          	mv	s1,a0
    800051cc:	00006797          	auipc	a5,0x6
    800051d0:	65478793          	addi	a5,a5,1620 # 8000b820 <_ZTV7WorkerC+0x10>
    800051d4:	00f53023          	sd	a5,0(a0)
    800051d8:	ffffe097          	auipc	ra,0xffffe
    800051dc:	13c080e7          	jalr	316(ra) # 80003314 <_ZN6ThreadD1Ev>
    800051e0:	00048513          	mv	a0,s1
    800051e4:	ffffe097          	auipc	ra,0xffffe
    800051e8:	1c8080e7          	jalr	456(ra) # 800033ac <_ZdlPv>
    800051ec:	01813083          	ld	ra,24(sp)
    800051f0:	01013403          	ld	s0,16(sp)
    800051f4:	00813483          	ld	s1,8(sp)
    800051f8:	02010113          	addi	sp,sp,32
    800051fc:	00008067          	ret

0000000080005200 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005200:	ff010113          	addi	sp,sp,-16
    80005204:	00113423          	sd	ra,8(sp)
    80005208:	00813023          	sd	s0,0(sp)
    8000520c:	01010413          	addi	s0,sp,16
    80005210:	00006797          	auipc	a5,0x6
    80005214:	63878793          	addi	a5,a5,1592 # 8000b848 <_ZTV7WorkerD+0x10>
    80005218:	00f53023          	sd	a5,0(a0)
    8000521c:	ffffe097          	auipc	ra,0xffffe
    80005220:	0f8080e7          	jalr	248(ra) # 80003314 <_ZN6ThreadD1Ev>
    80005224:	00813083          	ld	ra,8(sp)
    80005228:	00013403          	ld	s0,0(sp)
    8000522c:	01010113          	addi	sp,sp,16
    80005230:	00008067          	ret

0000000080005234 <_ZN7WorkerDD0Ev>:
    80005234:	fe010113          	addi	sp,sp,-32
    80005238:	00113c23          	sd	ra,24(sp)
    8000523c:	00813823          	sd	s0,16(sp)
    80005240:	00913423          	sd	s1,8(sp)
    80005244:	02010413          	addi	s0,sp,32
    80005248:	00050493          	mv	s1,a0
    8000524c:	00006797          	auipc	a5,0x6
    80005250:	5fc78793          	addi	a5,a5,1532 # 8000b848 <_ZTV7WorkerD+0x10>
    80005254:	00f53023          	sd	a5,0(a0)
    80005258:	ffffe097          	auipc	ra,0xffffe
    8000525c:	0bc080e7          	jalr	188(ra) # 80003314 <_ZN6ThreadD1Ev>
    80005260:	00048513          	mv	a0,s1
    80005264:	ffffe097          	auipc	ra,0xffffe
    80005268:	148080e7          	jalr	328(ra) # 800033ac <_ZdlPv>
    8000526c:	01813083          	ld	ra,24(sp)
    80005270:	01013403          	ld	s0,16(sp)
    80005274:	00813483          	ld	s1,8(sp)
    80005278:	02010113          	addi	sp,sp,32
    8000527c:	00008067          	ret

0000000080005280 <_ZN7WorkerA3runEv>:
    void run() override {
    80005280:	ff010113          	addi	sp,sp,-16
    80005284:	00113423          	sd	ra,8(sp)
    80005288:	00813023          	sd	s0,0(sp)
    8000528c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005290:	00000593          	li	a1,0
    80005294:	fffff097          	auipc	ra,0xfffff
    80005298:	774080e7          	jalr	1908(ra) # 80004a08 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000529c:	00813083          	ld	ra,8(sp)
    800052a0:	00013403          	ld	s0,0(sp)
    800052a4:	01010113          	addi	sp,sp,16
    800052a8:	00008067          	ret

00000000800052ac <_ZN7WorkerB3runEv>:
    void run() override {
    800052ac:	ff010113          	addi	sp,sp,-16
    800052b0:	00113423          	sd	ra,8(sp)
    800052b4:	00813023          	sd	s0,0(sp)
    800052b8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800052bc:	00000593          	li	a1,0
    800052c0:	00000097          	auipc	ra,0x0
    800052c4:	814080e7          	jalr	-2028(ra) # 80004ad4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800052c8:	00813083          	ld	ra,8(sp)
    800052cc:	00013403          	ld	s0,0(sp)
    800052d0:	01010113          	addi	sp,sp,16
    800052d4:	00008067          	ret

00000000800052d8 <_ZN7WorkerC3runEv>:
    void run() override {
    800052d8:	ff010113          	addi	sp,sp,-16
    800052dc:	00113423          	sd	ra,8(sp)
    800052e0:	00813023          	sd	s0,0(sp)
    800052e4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800052e8:	00000593          	li	a1,0
    800052ec:	00000097          	auipc	ra,0x0
    800052f0:	8bc080e7          	jalr	-1860(ra) # 80004ba8 <_ZN7WorkerC11workerBodyCEPv>
    }
    800052f4:	00813083          	ld	ra,8(sp)
    800052f8:	00013403          	ld	s0,0(sp)
    800052fc:	01010113          	addi	sp,sp,16
    80005300:	00008067          	ret

0000000080005304 <_ZN7WorkerD3runEv>:

    void run() override {
    80005304:	ff010113          	addi	sp,sp,-16
    80005308:	00113423          	sd	ra,8(sp)
    8000530c:	00813023          	sd	s0,0(sp)
    80005310:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005314:	00000593          	li	a1,0
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	a10080e7          	jalr	-1520(ra) # 80004d28 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005320:	00813083          	ld	ra,8(sp)
    80005324:	00013403          	ld	s0,0(sp)
    80005328:	01010113          	addi	sp,sp,16
    8000532c:	00008067          	ret

0000000080005330 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005330:	fe010113          	addi	sp,sp,-32
    80005334:	00113c23          	sd	ra,24(sp)
    80005338:	00813823          	sd	s0,16(sp)
    8000533c:	00913423          	sd	s1,8(sp)
    80005340:	01213023          	sd	s2,0(sp)
    80005344:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005348:	00000913          	li	s2,0
    8000534c:	0380006f          	j	80005384 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005350:	ffffc097          	auipc	ra,0xffffc
    80005354:	fe4080e7          	jalr	-28(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005358:	00148493          	addi	s1,s1,1
    8000535c:	000027b7          	lui	a5,0x2
    80005360:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005364:	0097ee63          	bltu	a5,s1,80005380 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005368:	00000713          	li	a4,0
    8000536c:	000077b7          	lui	a5,0x7
    80005370:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005374:	fce7eee3          	bltu	a5,a4,80005350 <_Z11workerBodyAPv+0x20>
    80005378:	00170713          	addi	a4,a4,1
    8000537c:	ff1ff06f          	j	8000536c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005380:	00190913          	addi	s2,s2,1
    80005384:	00900793          	li	a5,9
    80005388:	0527e063          	bltu	a5,s2,800053c8 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000538c:	00004517          	auipc	a0,0x4
    80005390:	fe450513          	addi	a0,a0,-28 # 80009370 <CONSOLE_STATUS+0x360>
    80005394:	00000097          	auipc	ra,0x0
    80005398:	5a4080e7          	jalr	1444(ra) # 80005938 <_Z11printStringPKc>
    8000539c:	00000613          	li	a2,0
    800053a0:	00a00593          	li	a1,10
    800053a4:	0009051b          	sext.w	a0,s2
    800053a8:	00000097          	auipc	ra,0x0
    800053ac:	728080e7          	jalr	1832(ra) # 80005ad0 <_Z8printIntiii>
    800053b0:	00004517          	auipc	a0,0x4
    800053b4:	d4850513          	addi	a0,a0,-696 # 800090f8 <CONSOLE_STATUS+0xe8>
    800053b8:	00000097          	auipc	ra,0x0
    800053bc:	580080e7          	jalr	1408(ra) # 80005938 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800053c0:	00000493          	li	s1,0
    800053c4:	f99ff06f          	j	8000535c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800053c8:	00004517          	auipc	a0,0x4
    800053cc:	fb050513          	addi	a0,a0,-80 # 80009378 <CONSOLE_STATUS+0x368>
    800053d0:	00000097          	auipc	ra,0x0
    800053d4:	568080e7          	jalr	1384(ra) # 80005938 <_Z11printStringPKc>
    finishedA = true;
    800053d8:	00100793          	li	a5,1
    800053dc:	0000a717          	auipc	a4,0xa
    800053e0:	64f70423          	sb	a5,1608(a4) # 8000fa24 <finishedA>
}
    800053e4:	01813083          	ld	ra,24(sp)
    800053e8:	01013403          	ld	s0,16(sp)
    800053ec:	00813483          	ld	s1,8(sp)
    800053f0:	00013903          	ld	s2,0(sp)
    800053f4:	02010113          	addi	sp,sp,32
    800053f8:	00008067          	ret

00000000800053fc <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800053fc:	fe010113          	addi	sp,sp,-32
    80005400:	00113c23          	sd	ra,24(sp)
    80005404:	00813823          	sd	s0,16(sp)
    80005408:	00913423          	sd	s1,8(sp)
    8000540c:	01213023          	sd	s2,0(sp)
    80005410:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005414:	00000913          	li	s2,0
    80005418:	0380006f          	j	80005450 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000541c:	ffffc097          	auipc	ra,0xffffc
    80005420:	f18080e7          	jalr	-232(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005424:	00148493          	addi	s1,s1,1
    80005428:	000027b7          	lui	a5,0x2
    8000542c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005430:	0097ee63          	bltu	a5,s1,8000544c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005434:	00000713          	li	a4,0
    80005438:	000077b7          	lui	a5,0x7
    8000543c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005440:	fce7eee3          	bltu	a5,a4,8000541c <_Z11workerBodyBPv+0x20>
    80005444:	00170713          	addi	a4,a4,1
    80005448:	ff1ff06f          	j	80005438 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000544c:	00190913          	addi	s2,s2,1
    80005450:	00f00793          	li	a5,15
    80005454:	0527e063          	bltu	a5,s2,80005494 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005458:	00004517          	auipc	a0,0x4
    8000545c:	f3050513          	addi	a0,a0,-208 # 80009388 <CONSOLE_STATUS+0x378>
    80005460:	00000097          	auipc	ra,0x0
    80005464:	4d8080e7          	jalr	1240(ra) # 80005938 <_Z11printStringPKc>
    80005468:	00000613          	li	a2,0
    8000546c:	00a00593          	li	a1,10
    80005470:	0009051b          	sext.w	a0,s2
    80005474:	00000097          	auipc	ra,0x0
    80005478:	65c080e7          	jalr	1628(ra) # 80005ad0 <_Z8printIntiii>
    8000547c:	00004517          	auipc	a0,0x4
    80005480:	c7c50513          	addi	a0,a0,-900 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005484:	00000097          	auipc	ra,0x0
    80005488:	4b4080e7          	jalr	1204(ra) # 80005938 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000548c:	00000493          	li	s1,0
    80005490:	f99ff06f          	j	80005428 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80005494:	00004517          	auipc	a0,0x4
    80005498:	efc50513          	addi	a0,a0,-260 # 80009390 <CONSOLE_STATUS+0x380>
    8000549c:	00000097          	auipc	ra,0x0
    800054a0:	49c080e7          	jalr	1180(ra) # 80005938 <_Z11printStringPKc>
    finishedB = true;
    800054a4:	00100793          	li	a5,1
    800054a8:	0000a717          	auipc	a4,0xa
    800054ac:	56f70ea3          	sb	a5,1405(a4) # 8000fa25 <finishedB>
    thread_dispatch();
    800054b0:	ffffc097          	auipc	ra,0xffffc
    800054b4:	e84080e7          	jalr	-380(ra) # 80001334 <thread_dispatch>
}
    800054b8:	01813083          	ld	ra,24(sp)
    800054bc:	01013403          	ld	s0,16(sp)
    800054c0:	00813483          	ld	s1,8(sp)
    800054c4:	00013903          	ld	s2,0(sp)
    800054c8:	02010113          	addi	sp,sp,32
    800054cc:	00008067          	ret

00000000800054d0 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800054d0:	fe010113          	addi	sp,sp,-32
    800054d4:	00113c23          	sd	ra,24(sp)
    800054d8:	00813823          	sd	s0,16(sp)
    800054dc:	00913423          	sd	s1,8(sp)
    800054e0:	01213023          	sd	s2,0(sp)
    800054e4:	02010413          	addi	s0,sp,32
    800054e8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800054ec:	00100793          	li	a5,1
    800054f0:	02a7f863          	bgeu	a5,a0,80005520 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800054f4:	00a00793          	li	a5,10
    800054f8:	02f577b3          	remu	a5,a0,a5
    800054fc:	02078e63          	beqz	a5,80005538 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005500:	fff48513          	addi	a0,s1,-1
    80005504:	00000097          	auipc	ra,0x0
    80005508:	fcc080e7          	jalr	-52(ra) # 800054d0 <_Z9fibonaccim>
    8000550c:	00050913          	mv	s2,a0
    80005510:	ffe48513          	addi	a0,s1,-2
    80005514:	00000097          	auipc	ra,0x0
    80005518:	fbc080e7          	jalr	-68(ra) # 800054d0 <_Z9fibonaccim>
    8000551c:	00a90533          	add	a0,s2,a0
}
    80005520:	01813083          	ld	ra,24(sp)
    80005524:	01013403          	ld	s0,16(sp)
    80005528:	00813483          	ld	s1,8(sp)
    8000552c:	00013903          	ld	s2,0(sp)
    80005530:	02010113          	addi	sp,sp,32
    80005534:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	dfc080e7          	jalr	-516(ra) # 80001334 <thread_dispatch>
    80005540:	fc1ff06f          	j	80005500 <_Z9fibonaccim+0x30>

0000000080005544 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005544:	fe010113          	addi	sp,sp,-32
    80005548:	00113c23          	sd	ra,24(sp)
    8000554c:	00813823          	sd	s0,16(sp)
    80005550:	00913423          	sd	s1,8(sp)
    80005554:	01213023          	sd	s2,0(sp)
    80005558:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000555c:	00000493          	li	s1,0
    80005560:	0400006f          	j	800055a0 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005564:	00004517          	auipc	a0,0x4
    80005568:	e3c50513          	addi	a0,a0,-452 # 800093a0 <CONSOLE_STATUS+0x390>
    8000556c:	00000097          	auipc	ra,0x0
    80005570:	3cc080e7          	jalr	972(ra) # 80005938 <_Z11printStringPKc>
    80005574:	00000613          	li	a2,0
    80005578:	00a00593          	li	a1,10
    8000557c:	00048513          	mv	a0,s1
    80005580:	00000097          	auipc	ra,0x0
    80005584:	550080e7          	jalr	1360(ra) # 80005ad0 <_Z8printIntiii>
    80005588:	00004517          	auipc	a0,0x4
    8000558c:	b7050513          	addi	a0,a0,-1168 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005590:	00000097          	auipc	ra,0x0
    80005594:	3a8080e7          	jalr	936(ra) # 80005938 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005598:	0014849b          	addiw	s1,s1,1
    8000559c:	0ff4f493          	andi	s1,s1,255
    800055a0:	00200793          	li	a5,2
    800055a4:	fc97f0e3          	bgeu	a5,s1,80005564 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800055a8:	00004517          	auipc	a0,0x4
    800055ac:	e0050513          	addi	a0,a0,-512 # 800093a8 <CONSOLE_STATUS+0x398>
    800055b0:	00000097          	auipc	ra,0x0
    800055b4:	388080e7          	jalr	904(ra) # 80005938 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800055b8:	00700313          	li	t1,7
    thread_dispatch();
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	d78080e7          	jalr	-648(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800055c4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800055c8:	00004517          	auipc	a0,0x4
    800055cc:	df050513          	addi	a0,a0,-528 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800055d0:	00000097          	auipc	ra,0x0
    800055d4:	368080e7          	jalr	872(ra) # 80005938 <_Z11printStringPKc>
    800055d8:	00000613          	li	a2,0
    800055dc:	00a00593          	li	a1,10
    800055e0:	0009051b          	sext.w	a0,s2
    800055e4:	00000097          	auipc	ra,0x0
    800055e8:	4ec080e7          	jalr	1260(ra) # 80005ad0 <_Z8printIntiii>
    800055ec:	00004517          	auipc	a0,0x4
    800055f0:	b0c50513          	addi	a0,a0,-1268 # 800090f8 <CONSOLE_STATUS+0xe8>
    800055f4:	00000097          	auipc	ra,0x0
    800055f8:	344080e7          	jalr	836(ra) # 80005938 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800055fc:	00c00513          	li	a0,12
    80005600:	00000097          	auipc	ra,0x0
    80005604:	ed0080e7          	jalr	-304(ra) # 800054d0 <_Z9fibonaccim>
    80005608:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	db450513          	addi	a0,a0,-588 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005614:	00000097          	auipc	ra,0x0
    80005618:	324080e7          	jalr	804(ra) # 80005938 <_Z11printStringPKc>
    8000561c:	00000613          	li	a2,0
    80005620:	00a00593          	li	a1,10
    80005624:	0009051b          	sext.w	a0,s2
    80005628:	00000097          	auipc	ra,0x0
    8000562c:	4a8080e7          	jalr	1192(ra) # 80005ad0 <_Z8printIntiii>
    80005630:	00004517          	auipc	a0,0x4
    80005634:	ac850513          	addi	a0,a0,-1336 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005638:	00000097          	auipc	ra,0x0
    8000563c:	300080e7          	jalr	768(ra) # 80005938 <_Z11printStringPKc>
    80005640:	0400006f          	j	80005680 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005644:	00004517          	auipc	a0,0x4
    80005648:	d5c50513          	addi	a0,a0,-676 # 800093a0 <CONSOLE_STATUS+0x390>
    8000564c:	00000097          	auipc	ra,0x0
    80005650:	2ec080e7          	jalr	748(ra) # 80005938 <_Z11printStringPKc>
    80005654:	00000613          	li	a2,0
    80005658:	00a00593          	li	a1,10
    8000565c:	00048513          	mv	a0,s1
    80005660:	00000097          	auipc	ra,0x0
    80005664:	470080e7          	jalr	1136(ra) # 80005ad0 <_Z8printIntiii>
    80005668:	00004517          	auipc	a0,0x4
    8000566c:	a9050513          	addi	a0,a0,-1392 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005670:	00000097          	auipc	ra,0x0
    80005674:	2c8080e7          	jalr	712(ra) # 80005938 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005678:	0014849b          	addiw	s1,s1,1
    8000567c:	0ff4f493          	andi	s1,s1,255
    80005680:	00500793          	li	a5,5
    80005684:	fc97f0e3          	bgeu	a5,s1,80005644 <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    80005688:	00004517          	auipc	a0,0x4
    8000568c:	cf050513          	addi	a0,a0,-784 # 80009378 <CONSOLE_STATUS+0x368>
    80005690:	00000097          	auipc	ra,0x0
    80005694:	2a8080e7          	jalr	680(ra) # 80005938 <_Z11printStringPKc>
    finishedC = true;
    80005698:	00100793          	li	a5,1
    8000569c:	0000a717          	auipc	a4,0xa
    800056a0:	38f70523          	sb	a5,906(a4) # 8000fa26 <finishedC>
    thread_dispatch();
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	c90080e7          	jalr	-880(ra) # 80001334 <thread_dispatch>
}
    800056ac:	01813083          	ld	ra,24(sp)
    800056b0:	01013403          	ld	s0,16(sp)
    800056b4:	00813483          	ld	s1,8(sp)
    800056b8:	00013903          	ld	s2,0(sp)
    800056bc:	02010113          	addi	sp,sp,32
    800056c0:	00008067          	ret

00000000800056c4 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800056c4:	fe010113          	addi	sp,sp,-32
    800056c8:	00113c23          	sd	ra,24(sp)
    800056cc:	00813823          	sd	s0,16(sp)
    800056d0:	00913423          	sd	s1,8(sp)
    800056d4:	01213023          	sd	s2,0(sp)
    800056d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800056dc:	00a00493          	li	s1,10
    800056e0:	0400006f          	j	80005720 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800056e4:	00004517          	auipc	a0,0x4
    800056e8:	cfc50513          	addi	a0,a0,-772 # 800093e0 <CONSOLE_STATUS+0x3d0>
    800056ec:	00000097          	auipc	ra,0x0
    800056f0:	24c080e7          	jalr	588(ra) # 80005938 <_Z11printStringPKc>
    800056f4:	00000613          	li	a2,0
    800056f8:	00a00593          	li	a1,10
    800056fc:	00048513          	mv	a0,s1
    80005700:	00000097          	auipc	ra,0x0
    80005704:	3d0080e7          	jalr	976(ra) # 80005ad0 <_Z8printIntiii>
    80005708:	00004517          	auipc	a0,0x4
    8000570c:	9f050513          	addi	a0,a0,-1552 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005710:	00000097          	auipc	ra,0x0
    80005714:	228080e7          	jalr	552(ra) # 80005938 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005718:	0014849b          	addiw	s1,s1,1
    8000571c:	0ff4f493          	andi	s1,s1,255
    80005720:	00c00793          	li	a5,12
    80005724:	fc97f0e3          	bgeu	a5,s1,800056e4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005728:	00004517          	auipc	a0,0x4
    8000572c:	cc050513          	addi	a0,a0,-832 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005730:	00000097          	auipc	ra,0x0
    80005734:	208080e7          	jalr	520(ra) # 80005938 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005738:	00500313          	li	t1,5
    thread_dispatch();
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	bf8080e7          	jalr	-1032(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005744:	01000513          	li	a0,16
    80005748:	00000097          	auipc	ra,0x0
    8000574c:	d88080e7          	jalr	-632(ra) # 800054d0 <_Z9fibonaccim>
    80005750:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005754:	00004517          	auipc	a0,0x4
    80005758:	ca450513          	addi	a0,a0,-860 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000575c:	00000097          	auipc	ra,0x0
    80005760:	1dc080e7          	jalr	476(ra) # 80005938 <_Z11printStringPKc>
    80005764:	00000613          	li	a2,0
    80005768:	00a00593          	li	a1,10
    8000576c:	0009051b          	sext.w	a0,s2
    80005770:	00000097          	auipc	ra,0x0
    80005774:	360080e7          	jalr	864(ra) # 80005ad0 <_Z8printIntiii>
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	98050513          	addi	a0,a0,-1664 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	1b8080e7          	jalr	440(ra) # 80005938 <_Z11printStringPKc>
    80005788:	0400006f          	j	800057c8 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000578c:	00004517          	auipc	a0,0x4
    80005790:	c5450513          	addi	a0,a0,-940 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80005794:	00000097          	auipc	ra,0x0
    80005798:	1a4080e7          	jalr	420(ra) # 80005938 <_Z11printStringPKc>
    8000579c:	00000613          	li	a2,0
    800057a0:	00a00593          	li	a1,10
    800057a4:	00048513          	mv	a0,s1
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	328080e7          	jalr	808(ra) # 80005ad0 <_Z8printIntiii>
    800057b0:	00004517          	auipc	a0,0x4
    800057b4:	94850513          	addi	a0,a0,-1720 # 800090f8 <CONSOLE_STATUS+0xe8>
    800057b8:	00000097          	auipc	ra,0x0
    800057bc:	180080e7          	jalr	384(ra) # 80005938 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800057c0:	0014849b          	addiw	s1,s1,1
    800057c4:	0ff4f493          	andi	s1,s1,255
    800057c8:	00f00793          	li	a5,15
    800057cc:	fc97f0e3          	bgeu	a5,s1,8000578c <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800057d0:	00004517          	auipc	a0,0x4
    800057d4:	c3850513          	addi	a0,a0,-968 # 80009408 <CONSOLE_STATUS+0x3f8>
    800057d8:	00000097          	auipc	ra,0x0
    800057dc:	160080e7          	jalr	352(ra) # 80005938 <_Z11printStringPKc>
    finishedD = true;
    800057e0:	00100793          	li	a5,1
    800057e4:	0000a717          	auipc	a4,0xa
    800057e8:	24f701a3          	sb	a5,579(a4) # 8000fa27 <finishedD>
    thread_dispatch();
    800057ec:	ffffc097          	auipc	ra,0xffffc
    800057f0:	b48080e7          	jalr	-1208(ra) # 80001334 <thread_dispatch>
}
    800057f4:	01813083          	ld	ra,24(sp)
    800057f8:	01013403          	ld	s0,16(sp)
    800057fc:	00813483          	ld	s1,8(sp)
    80005800:	00013903          	ld	s2,0(sp)
    80005804:	02010113          	addi	sp,sp,32
    80005808:	00008067          	ret

000000008000580c <_Z18Threads_C_API_testv>:

void Threads_C_API_test() {
    8000580c:	fc010113          	addi	sp,sp,-64
    80005810:	02113c23          	sd	ra,56(sp)
    80005814:	02813823          	sd	s0,48(sp)
    80005818:	02913423          	sd	s1,40(sp)
    8000581c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005820:	00000613          	li	a2,0
    80005824:	00000597          	auipc	a1,0x0
    80005828:	b0c58593          	addi	a1,a1,-1268 # 80005330 <_Z11workerBodyAPv>
    8000582c:	fc040513          	addi	a0,s0,-64
    80005830:	ffffc097          	auipc	ra,0xffffc
    80005834:	a84080e7          	jalr	-1404(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005838:	00004517          	auipc	a0,0x4
    8000583c:	be050513          	addi	a0,a0,-1056 # 80009418 <CONSOLE_STATUS+0x408>
    80005840:	00000097          	auipc	ra,0x0
    80005844:	0f8080e7          	jalr	248(ra) # 80005938 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005848:	00000613          	li	a2,0
    8000584c:	00000597          	auipc	a1,0x0
    80005850:	bb058593          	addi	a1,a1,-1104 # 800053fc <_Z11workerBodyBPv>
    80005854:	fc840513          	addi	a0,s0,-56
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	a5c080e7          	jalr	-1444(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005860:	00004517          	auipc	a0,0x4
    80005864:	bd050513          	addi	a0,a0,-1072 # 80009430 <CONSOLE_STATUS+0x420>
    80005868:	00000097          	auipc	ra,0x0
    8000586c:	0d0080e7          	jalr	208(ra) # 80005938 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005870:	00000613          	li	a2,0
    80005874:	00000597          	auipc	a1,0x0
    80005878:	cd058593          	addi	a1,a1,-816 # 80005544 <_Z11workerBodyCPv>
    8000587c:	fd040513          	addi	a0,s0,-48
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	a34080e7          	jalr	-1484(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005888:	00004517          	auipc	a0,0x4
    8000588c:	bc050513          	addi	a0,a0,-1088 # 80009448 <CONSOLE_STATUS+0x438>
    80005890:	00000097          	auipc	ra,0x0
    80005894:	0a8080e7          	jalr	168(ra) # 80005938 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005898:	00000613          	li	a2,0
    8000589c:	00000597          	auipc	a1,0x0
    800058a0:	e2858593          	addi	a1,a1,-472 # 800056c4 <_Z11workerBodyDPv>
    800058a4:	fd840513          	addi	a0,s0,-40
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	a0c080e7          	jalr	-1524(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    800058b0:	00004517          	auipc	a0,0x4
    800058b4:	bb050513          	addi	a0,a0,-1104 # 80009460 <CONSOLE_STATUS+0x450>
    800058b8:	00000097          	auipc	ra,0x0
    800058bc:	080080e7          	jalr	128(ra) # 80005938 <_Z11printStringPKc>
    800058c0:	00c0006f          	j	800058cc <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800058c4:	ffffc097          	auipc	ra,0xffffc
    800058c8:	a70080e7          	jalr	-1424(ra) # 80001334 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800058cc:	0000a797          	auipc	a5,0xa
    800058d0:	1587c783          	lbu	a5,344(a5) # 8000fa24 <finishedA>
    800058d4:	fe0788e3          	beqz	a5,800058c4 <_Z18Threads_C_API_testv+0xb8>
    800058d8:	0000a797          	auipc	a5,0xa
    800058dc:	14d7c783          	lbu	a5,333(a5) # 8000fa25 <finishedB>
    800058e0:	fe0782e3          	beqz	a5,800058c4 <_Z18Threads_C_API_testv+0xb8>
    800058e4:	0000a797          	auipc	a5,0xa
    800058e8:	1427c783          	lbu	a5,322(a5) # 8000fa26 <finishedC>
    800058ec:	fc078ce3          	beqz	a5,800058c4 <_Z18Threads_C_API_testv+0xb8>
    800058f0:	0000a797          	auipc	a5,0xa
    800058f4:	1377c783          	lbu	a5,311(a5) # 8000fa27 <finishedD>
    800058f8:	fc0786e3          	beqz	a5,800058c4 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete (uint64*)thread; }
    800058fc:	fc040493          	addi	s1,s0,-64
    80005900:	0080006f          	j	80005908 <_Z18Threads_C_API_testv+0xfc>
    80005904:	00848493          	addi	s1,s1,8
    80005908:	fe040793          	addi	a5,s0,-32
    8000590c:	00f48c63          	beq	s1,a5,80005924 <_Z18Threads_C_API_testv+0x118>
    80005910:	0004b503          	ld	a0,0(s1)
    80005914:	fe0508e3          	beqz	a0,80005904 <_Z18Threads_C_API_testv+0xf8>
    80005918:	ffffe097          	auipc	ra,0xffffe
    8000591c:	a94080e7          	jalr	-1388(ra) # 800033ac <_ZdlPv>
    80005920:	fe5ff06f          	j	80005904 <_Z18Threads_C_API_testv+0xf8>
}
    80005924:	03813083          	ld	ra,56(sp)
    80005928:	03013403          	ld	s0,48(sp)
    8000592c:	02813483          	ld	s1,40(sp)
    80005930:	04010113          	addi	sp,sp,64
    80005934:	00008067          	ret

0000000080005938 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005938:	fe010113          	addi	sp,sp,-32
    8000593c:	00113c23          	sd	ra,24(sp)
    80005940:	00813823          	sd	s0,16(sp)
    80005944:	00913423          	sd	s1,8(sp)
    80005948:	02010413          	addi	s0,sp,32
    8000594c:	00050493          	mv	s1,a0
    LOCK();
    80005950:	00100613          	li	a2,1
    80005954:	00000593          	li	a1,0
    80005958:	0000a517          	auipc	a0,0xa
    8000595c:	0d050513          	addi	a0,a0,208 # 8000fa28 <lockPrint>
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	8b8080e7          	jalr	-1864(ra) # 80001218 <copy_and_swap>
    80005968:	fe0514e3          	bnez	a0,80005950 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000596c:	0004c503          	lbu	a0,0(s1)
    80005970:	00050a63          	beqz	a0,80005984 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	bc4080e7          	jalr	-1084(ra) # 80001538 <putc>
        string++;
    8000597c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005980:	fedff06f          	j	8000596c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005984:	00000613          	li	a2,0
    80005988:	00100593          	li	a1,1
    8000598c:	0000a517          	auipc	a0,0xa
    80005990:	09c50513          	addi	a0,a0,156 # 8000fa28 <lockPrint>
    80005994:	ffffc097          	auipc	ra,0xffffc
    80005998:	884080e7          	jalr	-1916(ra) # 80001218 <copy_and_swap>
    8000599c:	fe0514e3          	bnez	a0,80005984 <_Z11printStringPKc+0x4c>
}
    800059a0:	01813083          	ld	ra,24(sp)
    800059a4:	01013403          	ld	s0,16(sp)
    800059a8:	00813483          	ld	s1,8(sp)
    800059ac:	02010113          	addi	sp,sp,32
    800059b0:	00008067          	ret

00000000800059b4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800059b4:	fd010113          	addi	sp,sp,-48
    800059b8:	02113423          	sd	ra,40(sp)
    800059bc:	02813023          	sd	s0,32(sp)
    800059c0:	00913c23          	sd	s1,24(sp)
    800059c4:	01213823          	sd	s2,16(sp)
    800059c8:	01313423          	sd	s3,8(sp)
    800059cc:	01413023          	sd	s4,0(sp)
    800059d0:	03010413          	addi	s0,sp,48
    800059d4:	00050993          	mv	s3,a0
    800059d8:	00058a13          	mv	s4,a1
    LOCK();
    800059dc:	00100613          	li	a2,1
    800059e0:	00000593          	li	a1,0
    800059e4:	0000a517          	auipc	a0,0xa
    800059e8:	04450513          	addi	a0,a0,68 # 8000fa28 <lockPrint>
    800059ec:	ffffc097          	auipc	ra,0xffffc
    800059f0:	82c080e7          	jalr	-2004(ra) # 80001218 <copy_and_swap>
    800059f4:	fe0514e3          	bnez	a0,800059dc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800059f8:	00000913          	li	s2,0
    800059fc:	00090493          	mv	s1,s2
    80005a00:	0019091b          	addiw	s2,s2,1
    80005a04:	03495a63          	bge	s2,s4,80005a38 <_Z9getStringPci+0x84>
        cc = getc();
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	b08080e7          	jalr	-1272(ra) # 80001510 <getc>
        if(cc < 1)
    80005a10:	02050463          	beqz	a0,80005a38 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005a14:	009984b3          	add	s1,s3,s1
    80005a18:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005a1c:	00a00793          	li	a5,10
    80005a20:	00f50a63          	beq	a0,a5,80005a34 <_Z9getStringPci+0x80>
    80005a24:	00d00793          	li	a5,13
    80005a28:	fcf51ae3          	bne	a0,a5,800059fc <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005a2c:	00090493          	mv	s1,s2
    80005a30:	0080006f          	j	80005a38 <_Z9getStringPci+0x84>
    80005a34:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005a38:	009984b3          	add	s1,s3,s1
    80005a3c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005a40:	00000613          	li	a2,0
    80005a44:	00100593          	li	a1,1
    80005a48:	0000a517          	auipc	a0,0xa
    80005a4c:	fe050513          	addi	a0,a0,-32 # 8000fa28 <lockPrint>
    80005a50:	ffffb097          	auipc	ra,0xffffb
    80005a54:	7c8080e7          	jalr	1992(ra) # 80001218 <copy_and_swap>
    80005a58:	fe0514e3          	bnez	a0,80005a40 <_Z9getStringPci+0x8c>
    return buf;
}
    80005a5c:	00098513          	mv	a0,s3
    80005a60:	02813083          	ld	ra,40(sp)
    80005a64:	02013403          	ld	s0,32(sp)
    80005a68:	01813483          	ld	s1,24(sp)
    80005a6c:	01013903          	ld	s2,16(sp)
    80005a70:	00813983          	ld	s3,8(sp)
    80005a74:	00013a03          	ld	s4,0(sp)
    80005a78:	03010113          	addi	sp,sp,48
    80005a7c:	00008067          	ret

0000000080005a80 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005a80:	ff010113          	addi	sp,sp,-16
    80005a84:	00813423          	sd	s0,8(sp)
    80005a88:	01010413          	addi	s0,sp,16
    80005a8c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005a90:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005a94:	0006c603          	lbu	a2,0(a3)
    80005a98:	fd06071b          	addiw	a4,a2,-48
    80005a9c:	0ff77713          	andi	a4,a4,255
    80005aa0:	00900793          	li	a5,9
    80005aa4:	02e7e063          	bltu	a5,a4,80005ac4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005aa8:	0025179b          	slliw	a5,a0,0x2
    80005aac:	00a787bb          	addw	a5,a5,a0
    80005ab0:	0017979b          	slliw	a5,a5,0x1
    80005ab4:	00168693          	addi	a3,a3,1
    80005ab8:	00c787bb          	addw	a5,a5,a2
    80005abc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005ac0:	fd5ff06f          	j	80005a94 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005ac4:	00813403          	ld	s0,8(sp)
    80005ac8:	01010113          	addi	sp,sp,16
    80005acc:	00008067          	ret

0000000080005ad0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005ad0:	fc010113          	addi	sp,sp,-64
    80005ad4:	02113c23          	sd	ra,56(sp)
    80005ad8:	02813823          	sd	s0,48(sp)
    80005adc:	02913423          	sd	s1,40(sp)
    80005ae0:	03213023          	sd	s2,32(sp)
    80005ae4:	01313c23          	sd	s3,24(sp)
    80005ae8:	04010413          	addi	s0,sp,64
    80005aec:	00050493          	mv	s1,a0
    80005af0:	00058913          	mv	s2,a1
    80005af4:	00060993          	mv	s3,a2
    LOCK();
    80005af8:	00100613          	li	a2,1
    80005afc:	00000593          	li	a1,0
    80005b00:	0000a517          	auipc	a0,0xa
    80005b04:	f2850513          	addi	a0,a0,-216 # 8000fa28 <lockPrint>
    80005b08:	ffffb097          	auipc	ra,0xffffb
    80005b0c:	710080e7          	jalr	1808(ra) # 80001218 <copy_and_swap>
    80005b10:	fe0514e3          	bnez	a0,80005af8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005b14:	00098463          	beqz	s3,80005b1c <_Z8printIntiii+0x4c>
    80005b18:	0804c463          	bltz	s1,80005ba0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005b1c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005b20:	00000593          	li	a1,0
    }

    i = 0;
    80005b24:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005b28:	0009079b          	sext.w	a5,s2
    80005b2c:	0325773b          	remuw	a4,a0,s2
    80005b30:	00048613          	mv	a2,s1
    80005b34:	0014849b          	addiw	s1,s1,1
    80005b38:	02071693          	slli	a3,a4,0x20
    80005b3c:	0206d693          	srli	a3,a3,0x20
    80005b40:	00006717          	auipc	a4,0x6
    80005b44:	d2070713          	addi	a4,a4,-736 # 8000b860 <digits>
    80005b48:	00d70733          	add	a4,a4,a3
    80005b4c:	00074683          	lbu	a3,0(a4)
    80005b50:	fd040713          	addi	a4,s0,-48
    80005b54:	00c70733          	add	a4,a4,a2
    80005b58:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005b5c:	0005071b          	sext.w	a4,a0
    80005b60:	0325553b          	divuw	a0,a0,s2
    80005b64:	fcf772e3          	bgeu	a4,a5,80005b28 <_Z8printIntiii+0x58>
    if(neg)
    80005b68:	00058c63          	beqz	a1,80005b80 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005b6c:	fd040793          	addi	a5,s0,-48
    80005b70:	009784b3          	add	s1,a5,s1
    80005b74:	02d00793          	li	a5,45
    80005b78:	fef48823          	sb	a5,-16(s1)
    80005b7c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005b80:	fff4849b          	addiw	s1,s1,-1
    80005b84:	0204c463          	bltz	s1,80005bac <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005b88:	fd040793          	addi	a5,s0,-48
    80005b8c:	009787b3          	add	a5,a5,s1
    80005b90:	ff07c503          	lbu	a0,-16(a5)
    80005b94:	ffffc097          	auipc	ra,0xffffc
    80005b98:	9a4080e7          	jalr	-1628(ra) # 80001538 <putc>
    80005b9c:	fe5ff06f          	j	80005b80 <_Z8printIntiii+0xb0>
        x = -xx;
    80005ba0:	4090053b          	negw	a0,s1
        neg = 1;
    80005ba4:	00100593          	li	a1,1
        x = -xx;
    80005ba8:	f7dff06f          	j	80005b24 <_Z8printIntiii+0x54>

    UNLOCK();
    80005bac:	00000613          	li	a2,0
    80005bb0:	00100593          	li	a1,1
    80005bb4:	0000a517          	auipc	a0,0xa
    80005bb8:	e7450513          	addi	a0,a0,-396 # 8000fa28 <lockPrint>
    80005bbc:	ffffb097          	auipc	ra,0xffffb
    80005bc0:	65c080e7          	jalr	1628(ra) # 80001218 <copy_and_swap>
    80005bc4:	fe0514e3          	bnez	a0,80005bac <_Z8printIntiii+0xdc>
}
    80005bc8:	03813083          	ld	ra,56(sp)
    80005bcc:	03013403          	ld	s0,48(sp)
    80005bd0:	02813483          	ld	s1,40(sp)
    80005bd4:	02013903          	ld	s2,32(sp)
    80005bd8:	01813983          	ld	s3,24(sp)
    80005bdc:	04010113          	addi	sp,sp,64
    80005be0:	00008067          	ret

0000000080005be4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005be4:	fd010113          	addi	sp,sp,-48
    80005be8:	02113423          	sd	ra,40(sp)
    80005bec:	02813023          	sd	s0,32(sp)
    80005bf0:	00913c23          	sd	s1,24(sp)
    80005bf4:	01213823          	sd	s2,16(sp)
    80005bf8:	01313423          	sd	s3,8(sp)
    80005bfc:	03010413          	addi	s0,sp,48
    80005c00:	00050493          	mv	s1,a0
    80005c04:	00058913          	mv	s2,a1
    80005c08:	0015879b          	addiw	a5,a1,1
    80005c0c:	0007851b          	sext.w	a0,a5
    80005c10:	00f4a023          	sw	a5,0(s1)
    80005c14:	0004a823          	sw	zero,16(s1)
    80005c18:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c1c:	00251513          	slli	a0,a0,0x2
    80005c20:	ffffb097          	auipc	ra,0xffffb
    80005c24:	638080e7          	jalr	1592(ra) # 80001258 <mem_alloc>
    80005c28:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005c2c:	01000513          	li	a0,16
    80005c30:	ffffd097          	auipc	ra,0xffffd
    80005c34:	754080e7          	jalr	1876(ra) # 80003384 <_Znwm>
    80005c38:	00050993          	mv	s3,a0
    80005c3c:	00000593          	li	a1,0
    80005c40:	ffffe097          	auipc	ra,0xffffe
    80005c44:	990080e7          	jalr	-1648(ra) # 800035d0 <_ZN9SemaphoreC1Ej>
    80005c48:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005c4c:	01000513          	li	a0,16
    80005c50:	ffffd097          	auipc	ra,0xffffd
    80005c54:	734080e7          	jalr	1844(ra) # 80003384 <_Znwm>
    80005c58:	00050993          	mv	s3,a0
    80005c5c:	00090593          	mv	a1,s2
    80005c60:	ffffe097          	auipc	ra,0xffffe
    80005c64:	970080e7          	jalr	-1680(ra) # 800035d0 <_ZN9SemaphoreC1Ej>
    80005c68:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005c6c:	01000513          	li	a0,16
    80005c70:	ffffd097          	auipc	ra,0xffffd
    80005c74:	714080e7          	jalr	1812(ra) # 80003384 <_Znwm>
    80005c78:	00050913          	mv	s2,a0
    80005c7c:	00100593          	li	a1,1
    80005c80:	ffffe097          	auipc	ra,0xffffe
    80005c84:	950080e7          	jalr	-1712(ra) # 800035d0 <_ZN9SemaphoreC1Ej>
    80005c88:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005c8c:	01000513          	li	a0,16
    80005c90:	ffffd097          	auipc	ra,0xffffd
    80005c94:	6f4080e7          	jalr	1780(ra) # 80003384 <_Znwm>
    80005c98:	00050913          	mv	s2,a0
    80005c9c:	00100593          	li	a1,1
    80005ca0:	ffffe097          	auipc	ra,0xffffe
    80005ca4:	930080e7          	jalr	-1744(ra) # 800035d0 <_ZN9SemaphoreC1Ej>
    80005ca8:	0324b823          	sd	s2,48(s1)
}
    80005cac:	02813083          	ld	ra,40(sp)
    80005cb0:	02013403          	ld	s0,32(sp)
    80005cb4:	01813483          	ld	s1,24(sp)
    80005cb8:	01013903          	ld	s2,16(sp)
    80005cbc:	00813983          	ld	s3,8(sp)
    80005cc0:	03010113          	addi	sp,sp,48
    80005cc4:	00008067          	ret
    80005cc8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ccc:	00098513          	mv	a0,s3
    80005cd0:	ffffd097          	auipc	ra,0xffffd
    80005cd4:	6dc080e7          	jalr	1756(ra) # 800033ac <_ZdlPv>
    80005cd8:	00048513          	mv	a0,s1
    80005cdc:	0000b097          	auipc	ra,0xb
    80005ce0:	e2c080e7          	jalr	-468(ra) # 80010b08 <_Unwind_Resume>
    80005ce4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005ce8:	00098513          	mv	a0,s3
    80005cec:	ffffd097          	auipc	ra,0xffffd
    80005cf0:	6c0080e7          	jalr	1728(ra) # 800033ac <_ZdlPv>
    80005cf4:	00048513          	mv	a0,s1
    80005cf8:	0000b097          	auipc	ra,0xb
    80005cfc:	e10080e7          	jalr	-496(ra) # 80010b08 <_Unwind_Resume>
    80005d00:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005d04:	00090513          	mv	a0,s2
    80005d08:	ffffd097          	auipc	ra,0xffffd
    80005d0c:	6a4080e7          	jalr	1700(ra) # 800033ac <_ZdlPv>
    80005d10:	00048513          	mv	a0,s1
    80005d14:	0000b097          	auipc	ra,0xb
    80005d18:	df4080e7          	jalr	-524(ra) # 80010b08 <_Unwind_Resume>
    80005d1c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005d20:	00090513          	mv	a0,s2
    80005d24:	ffffd097          	auipc	ra,0xffffd
    80005d28:	688080e7          	jalr	1672(ra) # 800033ac <_ZdlPv>
    80005d2c:	00048513          	mv	a0,s1
    80005d30:	0000b097          	auipc	ra,0xb
    80005d34:	dd8080e7          	jalr	-552(ra) # 80010b08 <_Unwind_Resume>

0000000080005d38 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005d38:	fe010113          	addi	sp,sp,-32
    80005d3c:	00113c23          	sd	ra,24(sp)
    80005d40:	00813823          	sd	s0,16(sp)
    80005d44:	00913423          	sd	s1,8(sp)
    80005d48:	01213023          	sd	s2,0(sp)
    80005d4c:	02010413          	addi	s0,sp,32
    80005d50:	00050493          	mv	s1,a0
    80005d54:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d58:	01853503          	ld	a0,24(a0)
    80005d5c:	ffffe097          	auipc	ra,0xffffe
    80005d60:	83c080e7          	jalr	-1988(ra) # 80003598 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d64:	0304b503          	ld	a0,48(s1)
    80005d68:	ffffe097          	auipc	ra,0xffffe
    80005d6c:	830080e7          	jalr	-2000(ra) # 80003598 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d70:	0084b783          	ld	a5,8(s1)
    80005d74:	0144a703          	lw	a4,20(s1)
    80005d78:	00271713          	slli	a4,a4,0x2
    80005d7c:	00e787b3          	add	a5,a5,a4
    80005d80:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d84:	0144a783          	lw	a5,20(s1)
    80005d88:	0017879b          	addiw	a5,a5,1
    80005d8c:	0004a703          	lw	a4,0(s1)
    80005d90:	02e7e7bb          	remw	a5,a5,a4
    80005d94:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005d98:	0304b503          	ld	a0,48(s1)
    80005d9c:	ffffe097          	auipc	ra,0xffffe
    80005da0:	880080e7          	jalr	-1920(ra) # 8000361c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005da4:	0204b503          	ld	a0,32(s1)
    80005da8:	ffffe097          	auipc	ra,0xffffe
    80005dac:	874080e7          	jalr	-1932(ra) # 8000361c <_ZN9Semaphore6signalEv>

}
    80005db0:	01813083          	ld	ra,24(sp)
    80005db4:	01013403          	ld	s0,16(sp)
    80005db8:	00813483          	ld	s1,8(sp)
    80005dbc:	00013903          	ld	s2,0(sp)
    80005dc0:	02010113          	addi	sp,sp,32
    80005dc4:	00008067          	ret

0000000080005dc8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005dc8:	fe010113          	addi	sp,sp,-32
    80005dcc:	00113c23          	sd	ra,24(sp)
    80005dd0:	00813823          	sd	s0,16(sp)
    80005dd4:	00913423          	sd	s1,8(sp)
    80005dd8:	01213023          	sd	s2,0(sp)
    80005ddc:	02010413          	addi	s0,sp,32
    80005de0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005de4:	02053503          	ld	a0,32(a0)
    80005de8:	ffffd097          	auipc	ra,0xffffd
    80005dec:	7b0080e7          	jalr	1968(ra) # 80003598 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005df0:	0284b503          	ld	a0,40(s1)
    80005df4:	ffffd097          	auipc	ra,0xffffd
    80005df8:	7a4080e7          	jalr	1956(ra) # 80003598 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005dfc:	0084b703          	ld	a4,8(s1)
    80005e00:	0104a783          	lw	a5,16(s1)
    80005e04:	00279693          	slli	a3,a5,0x2
    80005e08:	00d70733          	add	a4,a4,a3
    80005e0c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e10:	0017879b          	addiw	a5,a5,1
    80005e14:	0004a703          	lw	a4,0(s1)
    80005e18:	02e7e7bb          	remw	a5,a5,a4
    80005e1c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e20:	0284b503          	ld	a0,40(s1)
    80005e24:	ffffd097          	auipc	ra,0xffffd
    80005e28:	7f8080e7          	jalr	2040(ra) # 8000361c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e2c:	0184b503          	ld	a0,24(s1)
    80005e30:	ffffd097          	auipc	ra,0xffffd
    80005e34:	7ec080e7          	jalr	2028(ra) # 8000361c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e38:	00090513          	mv	a0,s2
    80005e3c:	01813083          	ld	ra,24(sp)
    80005e40:	01013403          	ld	s0,16(sp)
    80005e44:	00813483          	ld	s1,8(sp)
    80005e48:	00013903          	ld	s2,0(sp)
    80005e4c:	02010113          	addi	sp,sp,32
    80005e50:	00008067          	ret

0000000080005e54 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005e54:	fe010113          	addi	sp,sp,-32
    80005e58:	00113c23          	sd	ra,24(sp)
    80005e5c:	00813823          	sd	s0,16(sp)
    80005e60:	00913423          	sd	s1,8(sp)
    80005e64:	01213023          	sd	s2,0(sp)
    80005e68:	02010413          	addi	s0,sp,32
    80005e6c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005e70:	02853503          	ld	a0,40(a0)
    80005e74:	ffffd097          	auipc	ra,0xffffd
    80005e78:	724080e7          	jalr	1828(ra) # 80003598 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005e7c:	0304b503          	ld	a0,48(s1)
    80005e80:	ffffd097          	auipc	ra,0xffffd
    80005e84:	718080e7          	jalr	1816(ra) # 80003598 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005e88:	0144a783          	lw	a5,20(s1)
    80005e8c:	0104a903          	lw	s2,16(s1)
    80005e90:	0327ce63          	blt	a5,s2,80005ecc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005e94:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005e98:	0304b503          	ld	a0,48(s1)
    80005e9c:	ffffd097          	auipc	ra,0xffffd
    80005ea0:	780080e7          	jalr	1920(ra) # 8000361c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005ea4:	0284b503          	ld	a0,40(s1)
    80005ea8:	ffffd097          	auipc	ra,0xffffd
    80005eac:	774080e7          	jalr	1908(ra) # 8000361c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005eb0:	00090513          	mv	a0,s2
    80005eb4:	01813083          	ld	ra,24(sp)
    80005eb8:	01013403          	ld	s0,16(sp)
    80005ebc:	00813483          	ld	s1,8(sp)
    80005ec0:	00013903          	ld	s2,0(sp)
    80005ec4:	02010113          	addi	sp,sp,32
    80005ec8:	00008067          	ret
        ret = cap - head + tail;
    80005ecc:	0004a703          	lw	a4,0(s1)
    80005ed0:	4127093b          	subw	s2,a4,s2
    80005ed4:	00f9093b          	addw	s2,s2,a5
    80005ed8:	fc1ff06f          	j	80005e98 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005edc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005edc:	fe010113          	addi	sp,sp,-32
    80005ee0:	00113c23          	sd	ra,24(sp)
    80005ee4:	00813823          	sd	s0,16(sp)
    80005ee8:	00913423          	sd	s1,8(sp)
    80005eec:	02010413          	addi	s0,sp,32
    80005ef0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005ef4:	00a00513          	li	a0,10
    80005ef8:	ffffd097          	auipc	ra,0xffffd
    80005efc:	778080e7          	jalr	1912(ra) # 80003670 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005f00:	00003517          	auipc	a0,0x3
    80005f04:	57850513          	addi	a0,a0,1400 # 80009478 <CONSOLE_STATUS+0x468>
    80005f08:	00000097          	auipc	ra,0x0
    80005f0c:	a30080e7          	jalr	-1488(ra) # 80005938 <_Z11printStringPKc>
    while (getCnt()) {
    80005f10:	00048513          	mv	a0,s1
    80005f14:	00000097          	auipc	ra,0x0
    80005f18:	f40080e7          	jalr	-192(ra) # 80005e54 <_ZN9BufferCPP6getCntEv>
    80005f1c:	02050c63          	beqz	a0,80005f54 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005f20:	0084b783          	ld	a5,8(s1)
    80005f24:	0104a703          	lw	a4,16(s1)
    80005f28:	00271713          	slli	a4,a4,0x2
    80005f2c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005f30:	0007c503          	lbu	a0,0(a5)
    80005f34:	ffffd097          	auipc	ra,0xffffd
    80005f38:	73c080e7          	jalr	1852(ra) # 80003670 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005f3c:	0104a783          	lw	a5,16(s1)
    80005f40:	0017879b          	addiw	a5,a5,1
    80005f44:	0004a703          	lw	a4,0(s1)
    80005f48:	02e7e7bb          	remw	a5,a5,a4
    80005f4c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005f50:	fc1ff06f          	j	80005f10 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005f54:	02100513          	li	a0,33
    80005f58:	ffffd097          	auipc	ra,0xffffd
    80005f5c:	718080e7          	jalr	1816(ra) # 80003670 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005f60:	00a00513          	li	a0,10
    80005f64:	ffffd097          	auipc	ra,0xffffd
    80005f68:	70c080e7          	jalr	1804(ra) # 80003670 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005f6c:	0084b503          	ld	a0,8(s1)
    80005f70:	ffffb097          	auipc	ra,0xffffb
    80005f74:	318080e7          	jalr	792(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80005f78:	0204b503          	ld	a0,32(s1)
    80005f7c:	00050863          	beqz	a0,80005f8c <_ZN9BufferCPPD1Ev+0xb0>
    80005f80:	00053783          	ld	a5,0(a0)
    80005f84:	0087b783          	ld	a5,8(a5)
    80005f88:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005f8c:	0184b503          	ld	a0,24(s1)
    80005f90:	00050863          	beqz	a0,80005fa0 <_ZN9BufferCPPD1Ev+0xc4>
    80005f94:	00053783          	ld	a5,0(a0)
    80005f98:	0087b783          	ld	a5,8(a5)
    80005f9c:	000780e7          	jalr	a5
    delete mutexTail;
    80005fa0:	0304b503          	ld	a0,48(s1)
    80005fa4:	00050863          	beqz	a0,80005fb4 <_ZN9BufferCPPD1Ev+0xd8>
    80005fa8:	00053783          	ld	a5,0(a0)
    80005fac:	0087b783          	ld	a5,8(a5)
    80005fb0:	000780e7          	jalr	a5
    delete mutexHead;
    80005fb4:	0284b503          	ld	a0,40(s1)
    80005fb8:	00050863          	beqz	a0,80005fc8 <_ZN9BufferCPPD1Ev+0xec>
    80005fbc:	00053783          	ld	a5,0(a0)
    80005fc0:	0087b783          	ld	a5,8(a5)
    80005fc4:	000780e7          	jalr	a5
}
    80005fc8:	01813083          	ld	ra,24(sp)
    80005fcc:	01013403          	ld	s0,16(sp)
    80005fd0:	00813483          	ld	s1,8(sp)
    80005fd4:	02010113          	addi	sp,sp,32
    80005fd8:	00008067          	ret

0000000080005fdc <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005fdc:	ff010113          	addi	sp,sp,-16
    80005fe0:	00113423          	sd	ra,8(sp)
    80005fe4:	00813023          	sd	s0,0(sp)
    80005fe8:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus");
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80005fec:	ffffe097          	auipc	ra,0xffffe
    80005ff0:	73c080e7          	jalr	1852(ra) # 80004728 <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005ff4:	00813083          	ld	ra,8(sp)
    80005ff8:	00013403          	ld	s0,0(sp)
    80005ffc:	01010113          	addi	sp,sp,16
    80006000:	00008067          	ret

0000000080006004 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006004:	fe010113          	addi	sp,sp,-32
    80006008:	00113c23          	sd	ra,24(sp)
    8000600c:	00813823          	sd	s0,16(sp)
    80006010:	00913423          	sd	s1,8(sp)
    80006014:	01213023          	sd	s2,0(sp)
    80006018:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000601c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006020:	00600493          	li	s1,6
    while (--i > 0) {
    80006024:	fff4849b          	addiw	s1,s1,-1
    80006028:	04905463          	blez	s1,80006070 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    8000602c:	00003517          	auipc	a0,0x3
    80006030:	46450513          	addi	a0,a0,1124 # 80009490 <CONSOLE_STATUS+0x480>
    80006034:	00000097          	auipc	ra,0x0
    80006038:	904080e7          	jalr	-1788(ra) # 80005938 <_Z11printStringPKc>
        printInt(sleep_time);
    8000603c:	00000613          	li	a2,0
    80006040:	00a00593          	li	a1,10
    80006044:	0009051b          	sext.w	a0,s2
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	a88080e7          	jalr	-1400(ra) # 80005ad0 <_Z8printIntiii>
        printString(" !\n");
    80006050:	00003517          	auipc	a0,0x3
    80006054:	44850513          	addi	a0,a0,1096 # 80009498 <CONSOLE_STATUS+0x488>
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	8e0080e7          	jalr	-1824(ra) # 80005938 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006060:	00090513          	mv	a0,s2
    80006064:	ffffb097          	auipc	ra,0xffffb
    80006068:	3d4080e7          	jalr	980(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    8000606c:	fb9ff06f          	j	80006024 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006070:	00a00793          	li	a5,10
    80006074:	02f95933          	divu	s2,s2,a5
    80006078:	fff90913          	addi	s2,s2,-1
    8000607c:	0000a797          	auipc	a5,0xa
    80006080:	9b478793          	addi	a5,a5,-1612 # 8000fa30 <finished>
    80006084:	01278933          	add	s2,a5,s2
    80006088:	00100793          	li	a5,1
    8000608c:	00f90023          	sb	a5,0(s2)
}
    80006090:	01813083          	ld	ra,24(sp)
    80006094:	01013403          	ld	s0,16(sp)
    80006098:	00813483          	ld	s1,8(sp)
    8000609c:	00013903          	ld	s2,0(sp)
    800060a0:	02010113          	addi	sp,sp,32
    800060a4:	00008067          	ret

00000000800060a8 <_Z12testSleepingv>:

void testSleeping() {
    800060a8:	fc010113          	addi	sp,sp,-64
    800060ac:	02113c23          	sd	ra,56(sp)
    800060b0:	02813823          	sd	s0,48(sp)
    800060b4:	02913423          	sd	s1,40(sp)
    800060b8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800060bc:	00a00793          	li	a5,10
    800060c0:	fcf43823          	sd	a5,-48(s0)
    800060c4:	01400793          	li	a5,20
    800060c8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800060cc:	00000493          	li	s1,0
    800060d0:	02c0006f          	j	800060fc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800060d4:	00349793          	slli	a5,s1,0x3
    800060d8:	fd040613          	addi	a2,s0,-48
    800060dc:	00f60633          	add	a2,a2,a5
    800060e0:	00000597          	auipc	a1,0x0
    800060e4:	f2458593          	addi	a1,a1,-220 # 80006004 <_Z9sleepyRunPv>
    800060e8:	fc040513          	addi	a0,s0,-64
    800060ec:	00f50533          	add	a0,a0,a5
    800060f0:	ffffb097          	auipc	ra,0xffffb
    800060f4:	1c4080e7          	jalr	452(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800060f8:	0014849b          	addiw	s1,s1,1
    800060fc:	00100793          	li	a5,1
    80006100:	fc97dae3          	bge	a5,s1,800060d4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006104:	0000a797          	auipc	a5,0xa
    80006108:	92c7c783          	lbu	a5,-1748(a5) # 8000fa30 <finished>
    8000610c:	fe078ce3          	beqz	a5,80006104 <_Z12testSleepingv+0x5c>
    80006110:	0000a797          	auipc	a5,0xa
    80006114:	9217c783          	lbu	a5,-1759(a5) # 8000fa31 <finished+0x1>
    80006118:	fe0786e3          	beqz	a5,80006104 <_Z12testSleepingv+0x5c>
    8000611c:	03813083          	ld	ra,56(sp)
    80006120:	03013403          	ld	s0,48(sp)
    80006124:	02813483          	ld	s1,40(sp)
    80006128:	04010113          	addi	sp,sp,64
    8000612c:	00008067          	ret

0000000080006130 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00113c23          	sd	ra,24(sp)
    80006138:	00813823          	sd	s0,16(sp)
    8000613c:	00913423          	sd	s1,8(sp)
    80006140:	01213023          	sd	s2,0(sp)
    80006144:	02010413          	addi	s0,sp,32
    80006148:	00050493          	mv	s1,a0
    8000614c:	00058913          	mv	s2,a1
    80006150:	0015879b          	addiw	a5,a1,1
    80006154:	0007851b          	sext.w	a0,a5
    80006158:	00f4a023          	sw	a5,0(s1)
    8000615c:	0004a823          	sw	zero,16(s1)
    80006160:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006164:	00251513          	slli	a0,a0,0x2
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	0f0080e7          	jalr	240(ra) # 80001258 <mem_alloc>
    80006170:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006174:	00000593          	li	a1,0
    80006178:	02048513          	addi	a0,s1,32
    8000617c:	ffffb097          	auipc	ra,0xffffb
    80006180:	200080e7          	jalr	512(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006184:	00090593          	mv	a1,s2
    80006188:	01848513          	addi	a0,s1,24
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	1f0080e7          	jalr	496(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80006194:	00100593          	li	a1,1
    80006198:	02848513          	addi	a0,s1,40
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	1e0080e7          	jalr	480(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    800061a4:	00100593          	li	a1,1
    800061a8:	03048513          	addi	a0,s1,48
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	1d0080e7          	jalr	464(ra) # 8000137c <sem_open>
}
    800061b4:	01813083          	ld	ra,24(sp)
    800061b8:	01013403          	ld	s0,16(sp)
    800061bc:	00813483          	ld	s1,8(sp)
    800061c0:	00013903          	ld	s2,0(sp)
    800061c4:	02010113          	addi	sp,sp,32
    800061c8:	00008067          	ret

00000000800061cc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061cc:	fe010113          	addi	sp,sp,-32
    800061d0:	00113c23          	sd	ra,24(sp)
    800061d4:	00813823          	sd	s0,16(sp)
    800061d8:	00913423          	sd	s1,8(sp)
    800061dc:	01213023          	sd	s2,0(sp)
    800061e0:	02010413          	addi	s0,sp,32
    800061e4:	00050493          	mv	s1,a0
    800061e8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061ec:	01853503          	ld	a0,24(a0)
    800061f0:	ffffb097          	auipc	ra,0xffffb
    800061f4:	1f0080e7          	jalr	496(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    800061f8:	0304b503          	ld	a0,48(s1)
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	1e4080e7          	jalr	484(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80006204:	0084b783          	ld	a5,8(s1)
    80006208:	0144a703          	lw	a4,20(s1)
    8000620c:	00271713          	slli	a4,a4,0x2
    80006210:	00e787b3          	add	a5,a5,a4
    80006214:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006218:	0144a783          	lw	a5,20(s1)
    8000621c:	0017879b          	addiw	a5,a5,1
    80006220:	0004a703          	lw	a4,0(s1)
    80006224:	02e7e7bb          	remw	a5,a5,a4
    80006228:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000622c:	0304b503          	ld	a0,48(s1)
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	1dc080e7          	jalr	476(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80006238:	0204b503          	ld	a0,32(s1)
    8000623c:	ffffb097          	auipc	ra,0xffffb
    80006240:	1d0080e7          	jalr	464(ra) # 8000140c <sem_signal>

}
    80006244:	01813083          	ld	ra,24(sp)
    80006248:	01013403          	ld	s0,16(sp)
    8000624c:	00813483          	ld	s1,8(sp)
    80006250:	00013903          	ld	s2,0(sp)
    80006254:	02010113          	addi	sp,sp,32
    80006258:	00008067          	ret

000000008000625c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000625c:	fe010113          	addi	sp,sp,-32
    80006260:	00113c23          	sd	ra,24(sp)
    80006264:	00813823          	sd	s0,16(sp)
    80006268:	00913423          	sd	s1,8(sp)
    8000626c:	01213023          	sd	s2,0(sp)
    80006270:	02010413          	addi	s0,sp,32
    80006274:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006278:	02053503          	ld	a0,32(a0)
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	164080e7          	jalr	356(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80006284:	0284b503          	ld	a0,40(s1)
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	158080e7          	jalr	344(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80006290:	0084b703          	ld	a4,8(s1)
    80006294:	0104a783          	lw	a5,16(s1)
    80006298:	00279693          	slli	a3,a5,0x2
    8000629c:	00d70733          	add	a4,a4,a3
    800062a0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062a4:	0017879b          	addiw	a5,a5,1
    800062a8:	0004a703          	lw	a4,0(s1)
    800062ac:	02e7e7bb          	remw	a5,a5,a4
    800062b0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062b4:	0284b503          	ld	a0,40(s1)
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	154080e7          	jalr	340(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    800062c0:	0184b503          	ld	a0,24(s1)
    800062c4:	ffffb097          	auipc	ra,0xffffb
    800062c8:	148080e7          	jalr	328(ra) # 8000140c <sem_signal>

    return ret;
}
    800062cc:	00090513          	mv	a0,s2
    800062d0:	01813083          	ld	ra,24(sp)
    800062d4:	01013403          	ld	s0,16(sp)
    800062d8:	00813483          	ld	s1,8(sp)
    800062dc:	00013903          	ld	s2,0(sp)
    800062e0:	02010113          	addi	sp,sp,32
    800062e4:	00008067          	ret

00000000800062e8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt()
{
    800062e8:	fe010113          	addi	sp,sp,-32
    800062ec:	00113c23          	sd	ra,24(sp)
    800062f0:	00813823          	sd	s0,16(sp)
    800062f4:	00913423          	sd	s1,8(sp)
    800062f8:	01213023          	sd	s2,0(sp)
    800062fc:	02010413          	addi	s0,sp,32
    80006300:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006304:	02853503          	ld	a0,40(a0)
    80006308:	ffffb097          	auipc	ra,0xffffb
    8000630c:	0d8080e7          	jalr	216(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    80006310:	0304b503          	ld	a0,48(s1)
    80006314:	ffffb097          	auipc	ra,0xffffb
    80006318:	0cc080e7          	jalr	204(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    8000631c:	0144a783          	lw	a5,20(s1)
    80006320:	0104a903          	lw	s2,16(s1)
    80006324:	0327ce63          	blt	a5,s2,80006360 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006328:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000632c:	0304b503          	ld	a0,48(s1)
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	0dc080e7          	jalr	220(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    80006338:	0284b503          	ld	a0,40(s1)
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	0d0080e7          	jalr	208(ra) # 8000140c <sem_signal>

    return ret;
}
    80006344:	00090513          	mv	a0,s2
    80006348:	01813083          	ld	ra,24(sp)
    8000634c:	01013403          	ld	s0,16(sp)
    80006350:	00813483          	ld	s1,8(sp)
    80006354:	00013903          	ld	s2,0(sp)
    80006358:	02010113          	addi	sp,sp,32
    8000635c:	00008067          	ret
        ret = cap - head + tail;
    80006360:	0004a703          	lw	a4,0(s1)
    80006364:	4127093b          	subw	s2,a4,s2
    80006368:	00f9093b          	addw	s2,s2,a5
    8000636c:	fc1ff06f          	j	8000632c <_ZN6Buffer6getCntEv+0x44>

0000000080006370 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006370:	fe010113          	addi	sp,sp,-32
    80006374:	00113c23          	sd	ra,24(sp)
    80006378:	00813823          	sd	s0,16(sp)
    8000637c:	00913423          	sd	s1,8(sp)
    80006380:	02010413          	addi	s0,sp,32
    80006384:	00050493          	mv	s1,a0
    putc('\n');
    80006388:	00a00513          	li	a0,10
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	1ac080e7          	jalr	428(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    80006394:	00003517          	auipc	a0,0x3
    80006398:	0e450513          	addi	a0,a0,228 # 80009478 <CONSOLE_STATUS+0x468>
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	59c080e7          	jalr	1436(ra) # 80005938 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800063a4:	00048513          	mv	a0,s1
    800063a8:	00000097          	auipc	ra,0x0
    800063ac:	f40080e7          	jalr	-192(ra) # 800062e8 <_ZN6Buffer6getCntEv>
    800063b0:	02a05c63          	blez	a0,800063e8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063b4:	0084b783          	ld	a5,8(s1)
    800063b8:	0104a703          	lw	a4,16(s1)
    800063bc:	00271713          	slli	a4,a4,0x2
    800063c0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063c4:	0007c503          	lbu	a0,0(a5)
    800063c8:	ffffb097          	auipc	ra,0xffffb
    800063cc:	170080e7          	jalr	368(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    800063d0:	0104a783          	lw	a5,16(s1)
    800063d4:	0017879b          	addiw	a5,a5,1
    800063d8:	0004a703          	lw	a4,0(s1)
    800063dc:	02e7e7bb          	remw	a5,a5,a4
    800063e0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063e4:	fc1ff06f          	j	800063a4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063e8:	02100513          	li	a0,33
    800063ec:	ffffb097          	auipc	ra,0xffffb
    800063f0:	14c080e7          	jalr	332(ra) # 80001538 <putc>
    putc('\n');
    800063f4:	00a00513          	li	a0,10
    800063f8:	ffffb097          	auipc	ra,0xffffb
    800063fc:	140080e7          	jalr	320(ra) # 80001538 <putc>
    mem_free(buffer);
    80006400:	0084b503          	ld	a0,8(s1)
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	e84080e7          	jalr	-380(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    8000640c:	0204b503          	ld	a0,32(s1)
    80006410:	ffffb097          	auipc	ra,0xffffb
    80006414:	fa4080e7          	jalr	-92(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80006418:	0184b503          	ld	a0,24(s1)
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	f98080e7          	jalr	-104(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80006424:	0304b503          	ld	a0,48(s1)
    80006428:	ffffb097          	auipc	ra,0xffffb
    8000642c:	f8c080e7          	jalr	-116(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80006430:	0284b503          	ld	a0,40(s1)
    80006434:	ffffb097          	auipc	ra,0xffffb
    80006438:	f80080e7          	jalr	-128(ra) # 800013b4 <sem_close>
}
    8000643c:	01813083          	ld	ra,24(sp)
    80006440:	01013403          	ld	s0,16(sp)
    80006444:	00813483          	ld	s1,8(sp)
    80006448:	02010113          	addi	sp,sp,32
    8000644c:	00008067          	ret

0000000080006450 <start>:
    80006450:	ff010113          	addi	sp,sp,-16
    80006454:	00813423          	sd	s0,8(sp)
    80006458:	01010413          	addi	s0,sp,16
    8000645c:	300027f3          	csrr	a5,mstatus
    80006460:	ffffe737          	lui	a4,0xffffe
    80006464:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffedb5f>
    80006468:	00e7f7b3          	and	a5,a5,a4
    8000646c:	00001737          	lui	a4,0x1
    80006470:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006474:	00e7e7b3          	or	a5,a5,a4
    80006478:	30079073          	csrw	mstatus,a5
    8000647c:	00000797          	auipc	a5,0x0
    80006480:	16078793          	addi	a5,a5,352 # 800065dc <system_main>
    80006484:	34179073          	csrw	mepc,a5
    80006488:	00000793          	li	a5,0
    8000648c:	18079073          	csrw	satp,a5
    80006490:	000107b7          	lui	a5,0x10
    80006494:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006498:	30279073          	csrw	medeleg,a5
    8000649c:	30379073          	csrw	mideleg,a5
    800064a0:	104027f3          	csrr	a5,sie
    800064a4:	2227e793          	ori	a5,a5,546
    800064a8:	10479073          	csrw	sie,a5
    800064ac:	fff00793          	li	a5,-1
    800064b0:	00a7d793          	srli	a5,a5,0xa
    800064b4:	3b079073          	csrw	pmpaddr0,a5
    800064b8:	00f00793          	li	a5,15
    800064bc:	3a079073          	csrw	pmpcfg0,a5
    800064c0:	f14027f3          	csrr	a5,mhartid
    800064c4:	0200c737          	lui	a4,0x200c
    800064c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064cc:	0007869b          	sext.w	a3,a5
    800064d0:	00269713          	slli	a4,a3,0x2
    800064d4:	000f4637          	lui	a2,0xf4
    800064d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064dc:	00d70733          	add	a4,a4,a3
    800064e0:	0037979b          	slliw	a5,a5,0x3
    800064e4:	020046b7          	lui	a3,0x2004
    800064e8:	00d787b3          	add	a5,a5,a3
    800064ec:	00c585b3          	add	a1,a1,a2
    800064f0:	00371693          	slli	a3,a4,0x3
    800064f4:	00009717          	auipc	a4,0x9
    800064f8:	54c70713          	addi	a4,a4,1356 # 8000fa40 <timer_scratch>
    800064fc:	00b7b023          	sd	a1,0(a5)
    80006500:	00d70733          	add	a4,a4,a3
    80006504:	00f73c23          	sd	a5,24(a4)
    80006508:	02c73023          	sd	a2,32(a4)
    8000650c:	34071073          	csrw	mscratch,a4
    80006510:	00000797          	auipc	a5,0x0
    80006514:	6e078793          	addi	a5,a5,1760 # 80006bf0 <timervec>
    80006518:	30579073          	csrw	mtvec,a5
    8000651c:	300027f3          	csrr	a5,mstatus
    80006520:	0087e793          	ori	a5,a5,8
    80006524:	30079073          	csrw	mstatus,a5
    80006528:	304027f3          	csrr	a5,mie
    8000652c:	0807e793          	ori	a5,a5,128
    80006530:	30479073          	csrw	mie,a5
    80006534:	f14027f3          	csrr	a5,mhartid
    80006538:	0007879b          	sext.w	a5,a5
    8000653c:	00078213          	mv	tp,a5
    80006540:	30200073          	mret
    80006544:	00813403          	ld	s0,8(sp)
    80006548:	01010113          	addi	sp,sp,16
    8000654c:	00008067          	ret

0000000080006550 <timerinit>:
    80006550:	ff010113          	addi	sp,sp,-16
    80006554:	00813423          	sd	s0,8(sp)
    80006558:	01010413          	addi	s0,sp,16
    8000655c:	f14027f3          	csrr	a5,mhartid
    80006560:	0200c737          	lui	a4,0x200c
    80006564:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006568:	0007869b          	sext.w	a3,a5
    8000656c:	00269713          	slli	a4,a3,0x2
    80006570:	000f4637          	lui	a2,0xf4
    80006574:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006578:	00d70733          	add	a4,a4,a3
    8000657c:	0037979b          	slliw	a5,a5,0x3
    80006580:	020046b7          	lui	a3,0x2004
    80006584:	00d787b3          	add	a5,a5,a3
    80006588:	00c585b3          	add	a1,a1,a2
    8000658c:	00371693          	slli	a3,a4,0x3
    80006590:	00009717          	auipc	a4,0x9
    80006594:	4b070713          	addi	a4,a4,1200 # 8000fa40 <timer_scratch>
    80006598:	00b7b023          	sd	a1,0(a5)
    8000659c:	00d70733          	add	a4,a4,a3
    800065a0:	00f73c23          	sd	a5,24(a4)
    800065a4:	02c73023          	sd	a2,32(a4)
    800065a8:	34071073          	csrw	mscratch,a4
    800065ac:	00000797          	auipc	a5,0x0
    800065b0:	64478793          	addi	a5,a5,1604 # 80006bf0 <timervec>
    800065b4:	30579073          	csrw	mtvec,a5
    800065b8:	300027f3          	csrr	a5,mstatus
    800065bc:	0087e793          	ori	a5,a5,8
    800065c0:	30079073          	csrw	mstatus,a5
    800065c4:	304027f3          	csrr	a5,mie
    800065c8:	0807e793          	ori	a5,a5,128
    800065cc:	30479073          	csrw	mie,a5
    800065d0:	00813403          	ld	s0,8(sp)
    800065d4:	01010113          	addi	sp,sp,16
    800065d8:	00008067          	ret

00000000800065dc <system_main>:
    800065dc:	fe010113          	addi	sp,sp,-32
    800065e0:	00813823          	sd	s0,16(sp)
    800065e4:	00913423          	sd	s1,8(sp)
    800065e8:	00113c23          	sd	ra,24(sp)
    800065ec:	02010413          	addi	s0,sp,32
    800065f0:	00000097          	auipc	ra,0x0
    800065f4:	0c4080e7          	jalr	196(ra) # 800066b4 <cpuid>
    800065f8:	00005497          	auipc	s1,0x5
    800065fc:	31848493          	addi	s1,s1,792 # 8000b910 <started>
    80006600:	02050263          	beqz	a0,80006624 <system_main+0x48>
    80006604:	0004a783          	lw	a5,0(s1)
    80006608:	0007879b          	sext.w	a5,a5
    8000660c:	fe078ce3          	beqz	a5,80006604 <system_main+0x28>
    80006610:	0ff0000f          	fence
    80006614:	00003517          	auipc	a0,0x3
    80006618:	ebc50513          	addi	a0,a0,-324 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000661c:	00001097          	auipc	ra,0x1
    80006620:	a70080e7          	jalr	-1424(ra) # 8000708c <panic>
    80006624:	00001097          	auipc	ra,0x1
    80006628:	9c4080e7          	jalr	-1596(ra) # 80006fe8 <consoleinit>
    8000662c:	00001097          	auipc	ra,0x1
    80006630:	150080e7          	jalr	336(ra) # 8000777c <printfinit>
    80006634:	00003517          	auipc	a0,0x3
    80006638:	ac450513          	addi	a0,a0,-1340 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000663c:	00001097          	auipc	ra,0x1
    80006640:	aac080e7          	jalr	-1364(ra) # 800070e8 <__printf>
    80006644:	00003517          	auipc	a0,0x3
    80006648:	e5c50513          	addi	a0,a0,-420 # 800094a0 <CONSOLE_STATUS+0x490>
    8000664c:	00001097          	auipc	ra,0x1
    80006650:	a9c080e7          	jalr	-1380(ra) # 800070e8 <__printf>
    80006654:	00003517          	auipc	a0,0x3
    80006658:	aa450513          	addi	a0,a0,-1372 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000665c:	00001097          	auipc	ra,0x1
    80006660:	a8c080e7          	jalr	-1396(ra) # 800070e8 <__printf>
    80006664:	00001097          	auipc	ra,0x1
    80006668:	4a4080e7          	jalr	1188(ra) # 80007b08 <kinit>
    8000666c:	00000097          	auipc	ra,0x0
    80006670:	148080e7          	jalr	328(ra) # 800067b4 <trapinit>
    80006674:	00000097          	auipc	ra,0x0
    80006678:	16c080e7          	jalr	364(ra) # 800067e0 <trapinithart>
    8000667c:	00000097          	auipc	ra,0x0
    80006680:	5b4080e7          	jalr	1460(ra) # 80006c30 <plicinit>
    80006684:	00000097          	auipc	ra,0x0
    80006688:	5d4080e7          	jalr	1492(ra) # 80006c58 <plicinithart>
    8000668c:	00000097          	auipc	ra,0x0
    80006690:	078080e7          	jalr	120(ra) # 80006704 <userinit>
    80006694:	0ff0000f          	fence
    80006698:	00100793          	li	a5,1
    8000669c:	00003517          	auipc	a0,0x3
    800066a0:	e1c50513          	addi	a0,a0,-484 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800066a4:	00f4a023          	sw	a5,0(s1)
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	a40080e7          	jalr	-1472(ra) # 800070e8 <__printf>
    800066b0:	0000006f          	j	800066b0 <system_main+0xd4>

00000000800066b4 <cpuid>:
    800066b4:	ff010113          	addi	sp,sp,-16
    800066b8:	00813423          	sd	s0,8(sp)
    800066bc:	01010413          	addi	s0,sp,16
    800066c0:	00020513          	mv	a0,tp
    800066c4:	00813403          	ld	s0,8(sp)
    800066c8:	0005051b          	sext.w	a0,a0
    800066cc:	01010113          	addi	sp,sp,16
    800066d0:	00008067          	ret

00000000800066d4 <mycpu>:
    800066d4:	ff010113          	addi	sp,sp,-16
    800066d8:	00813423          	sd	s0,8(sp)
    800066dc:	01010413          	addi	s0,sp,16
    800066e0:	00020793          	mv	a5,tp
    800066e4:	00813403          	ld	s0,8(sp)
    800066e8:	0007879b          	sext.w	a5,a5
    800066ec:	00779793          	slli	a5,a5,0x7
    800066f0:	0000a517          	auipc	a0,0xa
    800066f4:	38050513          	addi	a0,a0,896 # 80010a70 <cpus>
    800066f8:	00f50533          	add	a0,a0,a5
    800066fc:	01010113          	addi	sp,sp,16
    80006700:	00008067          	ret

0000000080006704 <userinit>:
    80006704:	ff010113          	addi	sp,sp,-16
    80006708:	00813423          	sd	s0,8(sp)
    8000670c:	01010413          	addi	s0,sp,16
    80006710:	00813403          	ld	s0,8(sp)
    80006714:	01010113          	addi	sp,sp,16
    80006718:	ffffd317          	auipc	t1,0xffffd
    8000671c:	ba830067          	jr	-1112(t1) # 800032c0 <main>

0000000080006720 <either_copyout>:
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00813023          	sd	s0,0(sp)
    80006728:	00113423          	sd	ra,8(sp)
    8000672c:	01010413          	addi	s0,sp,16
    80006730:	02051663          	bnez	a0,8000675c <either_copyout+0x3c>
    80006734:	00058513          	mv	a0,a1
    80006738:	00060593          	mv	a1,a2
    8000673c:	0006861b          	sext.w	a2,a3
    80006740:	00002097          	auipc	ra,0x2
    80006744:	c54080e7          	jalr	-940(ra) # 80008394 <__memmove>
    80006748:	00813083          	ld	ra,8(sp)
    8000674c:	00013403          	ld	s0,0(sp)
    80006750:	00000513          	li	a0,0
    80006754:	01010113          	addi	sp,sp,16
    80006758:	00008067          	ret
    8000675c:	00003517          	auipc	a0,0x3
    80006760:	d9c50513          	addi	a0,a0,-612 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80006764:	00001097          	auipc	ra,0x1
    80006768:	928080e7          	jalr	-1752(ra) # 8000708c <panic>

000000008000676c <either_copyin>:
    8000676c:	ff010113          	addi	sp,sp,-16
    80006770:	00813023          	sd	s0,0(sp)
    80006774:	00113423          	sd	ra,8(sp)
    80006778:	01010413          	addi	s0,sp,16
    8000677c:	02059463          	bnez	a1,800067a4 <either_copyin+0x38>
    80006780:	00060593          	mv	a1,a2
    80006784:	0006861b          	sext.w	a2,a3
    80006788:	00002097          	auipc	ra,0x2
    8000678c:	c0c080e7          	jalr	-1012(ra) # 80008394 <__memmove>
    80006790:	00813083          	ld	ra,8(sp)
    80006794:	00013403          	ld	s0,0(sp)
    80006798:	00000513          	li	a0,0
    8000679c:	01010113          	addi	sp,sp,16
    800067a0:	00008067          	ret
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	d7c50513          	addi	a0,a0,-644 # 80009520 <CONSOLE_STATUS+0x510>
    800067ac:	00001097          	auipc	ra,0x1
    800067b0:	8e0080e7          	jalr	-1824(ra) # 8000708c <panic>

00000000800067b4 <trapinit>:
    800067b4:	ff010113          	addi	sp,sp,-16
    800067b8:	00813423          	sd	s0,8(sp)
    800067bc:	01010413          	addi	s0,sp,16
    800067c0:	00813403          	ld	s0,8(sp)
    800067c4:	00003597          	auipc	a1,0x3
    800067c8:	d8458593          	addi	a1,a1,-636 # 80009548 <CONSOLE_STATUS+0x538>
    800067cc:	0000a517          	auipc	a0,0xa
    800067d0:	32450513          	addi	a0,a0,804 # 80010af0 <tickslock>
    800067d4:	01010113          	addi	sp,sp,16
    800067d8:	00001317          	auipc	t1,0x1
    800067dc:	5c030067          	jr	1472(t1) # 80007d98 <initlock>

00000000800067e0 <trapinithart>:
    800067e0:	ff010113          	addi	sp,sp,-16
    800067e4:	00813423          	sd	s0,8(sp)
    800067e8:	01010413          	addi	s0,sp,16
    800067ec:	00000797          	auipc	a5,0x0
    800067f0:	2f478793          	addi	a5,a5,756 # 80006ae0 <kernelvec>
    800067f4:	10579073          	csrw	stvec,a5
    800067f8:	00813403          	ld	s0,8(sp)
    800067fc:	01010113          	addi	sp,sp,16
    80006800:	00008067          	ret

0000000080006804 <usertrap>:
    80006804:	ff010113          	addi	sp,sp,-16
    80006808:	00813423          	sd	s0,8(sp)
    8000680c:	01010413          	addi	s0,sp,16
    80006810:	00813403          	ld	s0,8(sp)
    80006814:	01010113          	addi	sp,sp,16
    80006818:	00008067          	ret

000000008000681c <usertrapret>:
    8000681c:	ff010113          	addi	sp,sp,-16
    80006820:	00813423          	sd	s0,8(sp)
    80006824:	01010413          	addi	s0,sp,16
    80006828:	00813403          	ld	s0,8(sp)
    8000682c:	01010113          	addi	sp,sp,16
    80006830:	00008067          	ret

0000000080006834 <kerneltrap>:
    80006834:	fe010113          	addi	sp,sp,-32
    80006838:	00813823          	sd	s0,16(sp)
    8000683c:	00113c23          	sd	ra,24(sp)
    80006840:	00913423          	sd	s1,8(sp)
    80006844:	02010413          	addi	s0,sp,32
    80006848:	142025f3          	csrr	a1,scause
    8000684c:	100027f3          	csrr	a5,sstatus
    80006850:	0027f793          	andi	a5,a5,2
    80006854:	10079c63          	bnez	a5,8000696c <kerneltrap+0x138>
    80006858:	142027f3          	csrr	a5,scause
    8000685c:	0207ce63          	bltz	a5,80006898 <kerneltrap+0x64>
    80006860:	00003517          	auipc	a0,0x3
    80006864:	d3050513          	addi	a0,a0,-720 # 80009590 <CONSOLE_STATUS+0x580>
    80006868:	00001097          	auipc	ra,0x1
    8000686c:	880080e7          	jalr	-1920(ra) # 800070e8 <__printf>
    80006870:	141025f3          	csrr	a1,sepc
    80006874:	14302673          	csrr	a2,stval
    80006878:	00003517          	auipc	a0,0x3
    8000687c:	d2850513          	addi	a0,a0,-728 # 800095a0 <CONSOLE_STATUS+0x590>
    80006880:	00001097          	auipc	ra,0x1
    80006884:	868080e7          	jalr	-1944(ra) # 800070e8 <__printf>
    80006888:	00003517          	auipc	a0,0x3
    8000688c:	d3050513          	addi	a0,a0,-720 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006890:	00000097          	auipc	ra,0x0
    80006894:	7fc080e7          	jalr	2044(ra) # 8000708c <panic>
    80006898:	0ff7f713          	andi	a4,a5,255
    8000689c:	00900693          	li	a3,9
    800068a0:	04d70063          	beq	a4,a3,800068e0 <kerneltrap+0xac>
    800068a4:	fff00713          	li	a4,-1
    800068a8:	03f71713          	slli	a4,a4,0x3f
    800068ac:	00170713          	addi	a4,a4,1
    800068b0:	fae798e3          	bne	a5,a4,80006860 <kerneltrap+0x2c>
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	e00080e7          	jalr	-512(ra) # 800066b4 <cpuid>
    800068bc:	06050663          	beqz	a0,80006928 <kerneltrap+0xf4>
    800068c0:	144027f3          	csrr	a5,sip
    800068c4:	ffd7f793          	andi	a5,a5,-3
    800068c8:	14479073          	csrw	sip,a5
    800068cc:	01813083          	ld	ra,24(sp)
    800068d0:	01013403          	ld	s0,16(sp)
    800068d4:	00813483          	ld	s1,8(sp)
    800068d8:	02010113          	addi	sp,sp,32
    800068dc:	00008067          	ret
    800068e0:	00000097          	auipc	ra,0x0
    800068e4:	3c4080e7          	jalr	964(ra) # 80006ca4 <plic_claim>
    800068e8:	00a00793          	li	a5,10
    800068ec:	00050493          	mv	s1,a0
    800068f0:	06f50863          	beq	a0,a5,80006960 <kerneltrap+0x12c>
    800068f4:	fc050ce3          	beqz	a0,800068cc <kerneltrap+0x98>
    800068f8:	00050593          	mv	a1,a0
    800068fc:	00003517          	auipc	a0,0x3
    80006900:	c7450513          	addi	a0,a0,-908 # 80009570 <CONSOLE_STATUS+0x560>
    80006904:	00000097          	auipc	ra,0x0
    80006908:	7e4080e7          	jalr	2020(ra) # 800070e8 <__printf>
    8000690c:	01013403          	ld	s0,16(sp)
    80006910:	01813083          	ld	ra,24(sp)
    80006914:	00048513          	mv	a0,s1
    80006918:	00813483          	ld	s1,8(sp)
    8000691c:	02010113          	addi	sp,sp,32
    80006920:	00000317          	auipc	t1,0x0
    80006924:	3bc30067          	jr	956(t1) # 80006cdc <plic_complete>
    80006928:	0000a517          	auipc	a0,0xa
    8000692c:	1c850513          	addi	a0,a0,456 # 80010af0 <tickslock>
    80006930:	00001097          	auipc	ra,0x1
    80006934:	48c080e7          	jalr	1164(ra) # 80007dbc <acquire>
    80006938:	00005717          	auipc	a4,0x5
    8000693c:	fdc70713          	addi	a4,a4,-36 # 8000b914 <ticks>
    80006940:	00072783          	lw	a5,0(a4)
    80006944:	0000a517          	auipc	a0,0xa
    80006948:	1ac50513          	addi	a0,a0,428 # 80010af0 <tickslock>
    8000694c:	0017879b          	addiw	a5,a5,1
    80006950:	00f72023          	sw	a5,0(a4)
    80006954:	00001097          	auipc	ra,0x1
    80006958:	534080e7          	jalr	1332(ra) # 80007e88 <release>
    8000695c:	f65ff06f          	j	800068c0 <kerneltrap+0x8c>
    80006960:	00001097          	auipc	ra,0x1
    80006964:	090080e7          	jalr	144(ra) # 800079f0 <uartintr>
    80006968:	fa5ff06f          	j	8000690c <kerneltrap+0xd8>
    8000696c:	00003517          	auipc	a0,0x3
    80006970:	be450513          	addi	a0,a0,-1052 # 80009550 <CONSOLE_STATUS+0x540>
    80006974:	00000097          	auipc	ra,0x0
    80006978:	718080e7          	jalr	1816(ra) # 8000708c <panic>

000000008000697c <clockintr>:
    8000697c:	fe010113          	addi	sp,sp,-32
    80006980:	00813823          	sd	s0,16(sp)
    80006984:	00913423          	sd	s1,8(sp)
    80006988:	00113c23          	sd	ra,24(sp)
    8000698c:	02010413          	addi	s0,sp,32
    80006990:	0000a497          	auipc	s1,0xa
    80006994:	16048493          	addi	s1,s1,352 # 80010af0 <tickslock>
    80006998:	00048513          	mv	a0,s1
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	420080e7          	jalr	1056(ra) # 80007dbc <acquire>
    800069a4:	00005717          	auipc	a4,0x5
    800069a8:	f7070713          	addi	a4,a4,-144 # 8000b914 <ticks>
    800069ac:	00072783          	lw	a5,0(a4)
    800069b0:	01013403          	ld	s0,16(sp)
    800069b4:	01813083          	ld	ra,24(sp)
    800069b8:	00048513          	mv	a0,s1
    800069bc:	0017879b          	addiw	a5,a5,1
    800069c0:	00813483          	ld	s1,8(sp)
    800069c4:	00f72023          	sw	a5,0(a4)
    800069c8:	02010113          	addi	sp,sp,32
    800069cc:	00001317          	auipc	t1,0x1
    800069d0:	4bc30067          	jr	1212(t1) # 80007e88 <release>

00000000800069d4 <devintr>:
    800069d4:	142027f3          	csrr	a5,scause
    800069d8:	00000513          	li	a0,0
    800069dc:	0007c463          	bltz	a5,800069e4 <devintr+0x10>
    800069e0:	00008067          	ret
    800069e4:	fe010113          	addi	sp,sp,-32
    800069e8:	00813823          	sd	s0,16(sp)
    800069ec:	00113c23          	sd	ra,24(sp)
    800069f0:	00913423          	sd	s1,8(sp)
    800069f4:	02010413          	addi	s0,sp,32
    800069f8:	0ff7f713          	andi	a4,a5,255
    800069fc:	00900693          	li	a3,9
    80006a00:	04d70c63          	beq	a4,a3,80006a58 <devintr+0x84>
    80006a04:	fff00713          	li	a4,-1
    80006a08:	03f71713          	slli	a4,a4,0x3f
    80006a0c:	00170713          	addi	a4,a4,1
    80006a10:	00e78c63          	beq	a5,a4,80006a28 <devintr+0x54>
    80006a14:	01813083          	ld	ra,24(sp)
    80006a18:	01013403          	ld	s0,16(sp)
    80006a1c:	00813483          	ld	s1,8(sp)
    80006a20:	02010113          	addi	sp,sp,32
    80006a24:	00008067          	ret
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	c8c080e7          	jalr	-884(ra) # 800066b4 <cpuid>
    80006a30:	06050663          	beqz	a0,80006a9c <devintr+0xc8>
    80006a34:	144027f3          	csrr	a5,sip
    80006a38:	ffd7f793          	andi	a5,a5,-3
    80006a3c:	14479073          	csrw	sip,a5
    80006a40:	01813083          	ld	ra,24(sp)
    80006a44:	01013403          	ld	s0,16(sp)
    80006a48:	00813483          	ld	s1,8(sp)
    80006a4c:	00200513          	li	a0,2
    80006a50:	02010113          	addi	sp,sp,32
    80006a54:	00008067          	ret
    80006a58:	00000097          	auipc	ra,0x0
    80006a5c:	24c080e7          	jalr	588(ra) # 80006ca4 <plic_claim>
    80006a60:	00a00793          	li	a5,10
    80006a64:	00050493          	mv	s1,a0
    80006a68:	06f50663          	beq	a0,a5,80006ad4 <devintr+0x100>
    80006a6c:	00100513          	li	a0,1
    80006a70:	fa0482e3          	beqz	s1,80006a14 <devintr+0x40>
    80006a74:	00048593          	mv	a1,s1
    80006a78:	00003517          	auipc	a0,0x3
    80006a7c:	af850513          	addi	a0,a0,-1288 # 80009570 <CONSOLE_STATUS+0x560>
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	668080e7          	jalr	1640(ra) # 800070e8 <__printf>
    80006a88:	00048513          	mv	a0,s1
    80006a8c:	00000097          	auipc	ra,0x0
    80006a90:	250080e7          	jalr	592(ra) # 80006cdc <plic_complete>
    80006a94:	00100513          	li	a0,1
    80006a98:	f7dff06f          	j	80006a14 <devintr+0x40>
    80006a9c:	0000a517          	auipc	a0,0xa
    80006aa0:	05450513          	addi	a0,a0,84 # 80010af0 <tickslock>
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	318080e7          	jalr	792(ra) # 80007dbc <acquire>
    80006aac:	00005717          	auipc	a4,0x5
    80006ab0:	e6870713          	addi	a4,a4,-408 # 8000b914 <ticks>
    80006ab4:	00072783          	lw	a5,0(a4)
    80006ab8:	0000a517          	auipc	a0,0xa
    80006abc:	03850513          	addi	a0,a0,56 # 80010af0 <tickslock>
    80006ac0:	0017879b          	addiw	a5,a5,1
    80006ac4:	00f72023          	sw	a5,0(a4)
    80006ac8:	00001097          	auipc	ra,0x1
    80006acc:	3c0080e7          	jalr	960(ra) # 80007e88 <release>
    80006ad0:	f65ff06f          	j	80006a34 <devintr+0x60>
    80006ad4:	00001097          	auipc	ra,0x1
    80006ad8:	f1c080e7          	jalr	-228(ra) # 800079f0 <uartintr>
    80006adc:	fadff06f          	j	80006a88 <devintr+0xb4>

0000000080006ae0 <kernelvec>:
    80006ae0:	f0010113          	addi	sp,sp,-256
    80006ae4:	00113023          	sd	ra,0(sp)
    80006ae8:	00213423          	sd	sp,8(sp)
    80006aec:	00313823          	sd	gp,16(sp)
    80006af0:	00413c23          	sd	tp,24(sp)
    80006af4:	02513023          	sd	t0,32(sp)
    80006af8:	02613423          	sd	t1,40(sp)
    80006afc:	02713823          	sd	t2,48(sp)
    80006b00:	02813c23          	sd	s0,56(sp)
    80006b04:	04913023          	sd	s1,64(sp)
    80006b08:	04a13423          	sd	a0,72(sp)
    80006b0c:	04b13823          	sd	a1,80(sp)
    80006b10:	04c13c23          	sd	a2,88(sp)
    80006b14:	06d13023          	sd	a3,96(sp)
    80006b18:	06e13423          	sd	a4,104(sp)
    80006b1c:	06f13823          	sd	a5,112(sp)
    80006b20:	07013c23          	sd	a6,120(sp)
    80006b24:	09113023          	sd	a7,128(sp)
    80006b28:	09213423          	sd	s2,136(sp)
    80006b2c:	09313823          	sd	s3,144(sp)
    80006b30:	09413c23          	sd	s4,152(sp)
    80006b34:	0b513023          	sd	s5,160(sp)
    80006b38:	0b613423          	sd	s6,168(sp)
    80006b3c:	0b713823          	sd	s7,176(sp)
    80006b40:	0b813c23          	sd	s8,184(sp)
    80006b44:	0d913023          	sd	s9,192(sp)
    80006b48:	0da13423          	sd	s10,200(sp)
    80006b4c:	0db13823          	sd	s11,208(sp)
    80006b50:	0dc13c23          	sd	t3,216(sp)
    80006b54:	0fd13023          	sd	t4,224(sp)
    80006b58:	0fe13423          	sd	t5,232(sp)
    80006b5c:	0ff13823          	sd	t6,240(sp)
    80006b60:	cd5ff0ef          	jal	ra,80006834 <kerneltrap>
    80006b64:	00013083          	ld	ra,0(sp)
    80006b68:	00813103          	ld	sp,8(sp)
    80006b6c:	01013183          	ld	gp,16(sp)
    80006b70:	02013283          	ld	t0,32(sp)
    80006b74:	02813303          	ld	t1,40(sp)
    80006b78:	03013383          	ld	t2,48(sp)
    80006b7c:	03813403          	ld	s0,56(sp)
    80006b80:	04013483          	ld	s1,64(sp)
    80006b84:	04813503          	ld	a0,72(sp)
    80006b88:	05013583          	ld	a1,80(sp)
    80006b8c:	05813603          	ld	a2,88(sp)
    80006b90:	06013683          	ld	a3,96(sp)
    80006b94:	06813703          	ld	a4,104(sp)
    80006b98:	07013783          	ld	a5,112(sp)
    80006b9c:	07813803          	ld	a6,120(sp)
    80006ba0:	08013883          	ld	a7,128(sp)
    80006ba4:	08813903          	ld	s2,136(sp)
    80006ba8:	09013983          	ld	s3,144(sp)
    80006bac:	09813a03          	ld	s4,152(sp)
    80006bb0:	0a013a83          	ld	s5,160(sp)
    80006bb4:	0a813b03          	ld	s6,168(sp)
    80006bb8:	0b013b83          	ld	s7,176(sp)
    80006bbc:	0b813c03          	ld	s8,184(sp)
    80006bc0:	0c013c83          	ld	s9,192(sp)
    80006bc4:	0c813d03          	ld	s10,200(sp)
    80006bc8:	0d013d83          	ld	s11,208(sp)
    80006bcc:	0d813e03          	ld	t3,216(sp)
    80006bd0:	0e013e83          	ld	t4,224(sp)
    80006bd4:	0e813f03          	ld	t5,232(sp)
    80006bd8:	0f013f83          	ld	t6,240(sp)
    80006bdc:	10010113          	addi	sp,sp,256
    80006be0:	10200073          	sret
    80006be4:	00000013          	nop
    80006be8:	00000013          	nop
    80006bec:	00000013          	nop

0000000080006bf0 <timervec>:
    80006bf0:	34051573          	csrrw	a0,mscratch,a0
    80006bf4:	00b53023          	sd	a1,0(a0)
    80006bf8:	00c53423          	sd	a2,8(a0)
    80006bfc:	00d53823          	sd	a3,16(a0)
    80006c00:	01853583          	ld	a1,24(a0)
    80006c04:	02053603          	ld	a2,32(a0)
    80006c08:	0005b683          	ld	a3,0(a1)
    80006c0c:	00c686b3          	add	a3,a3,a2
    80006c10:	00d5b023          	sd	a3,0(a1)
    80006c14:	00200593          	li	a1,2
    80006c18:	14459073          	csrw	sip,a1
    80006c1c:	01053683          	ld	a3,16(a0)
    80006c20:	00853603          	ld	a2,8(a0)
    80006c24:	00053583          	ld	a1,0(a0)
    80006c28:	34051573          	csrrw	a0,mscratch,a0
    80006c2c:	30200073          	mret

0000000080006c30 <plicinit>:
    80006c30:	ff010113          	addi	sp,sp,-16
    80006c34:	00813423          	sd	s0,8(sp)
    80006c38:	01010413          	addi	s0,sp,16
    80006c3c:	00813403          	ld	s0,8(sp)
    80006c40:	0c0007b7          	lui	a5,0xc000
    80006c44:	00100713          	li	a4,1
    80006c48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c4c:	00e7a223          	sw	a4,4(a5)
    80006c50:	01010113          	addi	sp,sp,16
    80006c54:	00008067          	ret

0000000080006c58 <plicinithart>:
    80006c58:	ff010113          	addi	sp,sp,-16
    80006c5c:	00813023          	sd	s0,0(sp)
    80006c60:	00113423          	sd	ra,8(sp)
    80006c64:	01010413          	addi	s0,sp,16
    80006c68:	00000097          	auipc	ra,0x0
    80006c6c:	a4c080e7          	jalr	-1460(ra) # 800066b4 <cpuid>
    80006c70:	0085171b          	slliw	a4,a0,0x8
    80006c74:	0c0027b7          	lui	a5,0xc002
    80006c78:	00e787b3          	add	a5,a5,a4
    80006c7c:	40200713          	li	a4,1026
    80006c80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c84:	00813083          	ld	ra,8(sp)
    80006c88:	00013403          	ld	s0,0(sp)
    80006c8c:	00d5151b          	slliw	a0,a0,0xd
    80006c90:	0c2017b7          	lui	a5,0xc201
    80006c94:	00a78533          	add	a0,a5,a0
    80006c98:	00052023          	sw	zero,0(a0)
    80006c9c:	01010113          	addi	sp,sp,16
    80006ca0:	00008067          	ret

0000000080006ca4 <plic_claim>:
    80006ca4:	ff010113          	addi	sp,sp,-16
    80006ca8:	00813023          	sd	s0,0(sp)
    80006cac:	00113423          	sd	ra,8(sp)
    80006cb0:	01010413          	addi	s0,sp,16
    80006cb4:	00000097          	auipc	ra,0x0
    80006cb8:	a00080e7          	jalr	-1536(ra) # 800066b4 <cpuid>
    80006cbc:	00813083          	ld	ra,8(sp)
    80006cc0:	00013403          	ld	s0,0(sp)
    80006cc4:	00d5151b          	slliw	a0,a0,0xd
    80006cc8:	0c2017b7          	lui	a5,0xc201
    80006ccc:	00a78533          	add	a0,a5,a0
    80006cd0:	00452503          	lw	a0,4(a0)
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	00008067          	ret

0000000080006cdc <plic_complete>:
    80006cdc:	fe010113          	addi	sp,sp,-32
    80006ce0:	00813823          	sd	s0,16(sp)
    80006ce4:	00913423          	sd	s1,8(sp)
    80006ce8:	00113c23          	sd	ra,24(sp)
    80006cec:	02010413          	addi	s0,sp,32
    80006cf0:	00050493          	mv	s1,a0
    80006cf4:	00000097          	auipc	ra,0x0
    80006cf8:	9c0080e7          	jalr	-1600(ra) # 800066b4 <cpuid>
    80006cfc:	01813083          	ld	ra,24(sp)
    80006d00:	01013403          	ld	s0,16(sp)
    80006d04:	00d5179b          	slliw	a5,a0,0xd
    80006d08:	0c201737          	lui	a4,0xc201
    80006d0c:	00f707b3          	add	a5,a4,a5
    80006d10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d14:	00813483          	ld	s1,8(sp)
    80006d18:	02010113          	addi	sp,sp,32
    80006d1c:	00008067          	ret

0000000080006d20 <consolewrite>:
    80006d20:	fb010113          	addi	sp,sp,-80
    80006d24:	04813023          	sd	s0,64(sp)
    80006d28:	04113423          	sd	ra,72(sp)
    80006d2c:	02913c23          	sd	s1,56(sp)
    80006d30:	03213823          	sd	s2,48(sp)
    80006d34:	03313423          	sd	s3,40(sp)
    80006d38:	03413023          	sd	s4,32(sp)
    80006d3c:	01513c23          	sd	s5,24(sp)
    80006d40:	05010413          	addi	s0,sp,80
    80006d44:	06c05c63          	blez	a2,80006dbc <consolewrite+0x9c>
    80006d48:	00060993          	mv	s3,a2
    80006d4c:	00050a13          	mv	s4,a0
    80006d50:	00058493          	mv	s1,a1
    80006d54:	00000913          	li	s2,0
    80006d58:	fff00a93          	li	s5,-1
    80006d5c:	01c0006f          	j	80006d78 <consolewrite+0x58>
    80006d60:	fbf44503          	lbu	a0,-65(s0)
    80006d64:	0019091b          	addiw	s2,s2,1
    80006d68:	00148493          	addi	s1,s1,1
    80006d6c:	00001097          	auipc	ra,0x1
    80006d70:	a9c080e7          	jalr	-1380(ra) # 80007808 <uartputc>
    80006d74:	03298063          	beq	s3,s2,80006d94 <consolewrite+0x74>
    80006d78:	00048613          	mv	a2,s1
    80006d7c:	00100693          	li	a3,1
    80006d80:	000a0593          	mv	a1,s4
    80006d84:	fbf40513          	addi	a0,s0,-65
    80006d88:	00000097          	auipc	ra,0x0
    80006d8c:	9e4080e7          	jalr	-1564(ra) # 8000676c <either_copyin>
    80006d90:	fd5518e3          	bne	a0,s5,80006d60 <consolewrite+0x40>
    80006d94:	04813083          	ld	ra,72(sp)
    80006d98:	04013403          	ld	s0,64(sp)
    80006d9c:	03813483          	ld	s1,56(sp)
    80006da0:	02813983          	ld	s3,40(sp)
    80006da4:	02013a03          	ld	s4,32(sp)
    80006da8:	01813a83          	ld	s5,24(sp)
    80006dac:	00090513          	mv	a0,s2
    80006db0:	03013903          	ld	s2,48(sp)
    80006db4:	05010113          	addi	sp,sp,80
    80006db8:	00008067          	ret
    80006dbc:	00000913          	li	s2,0
    80006dc0:	fd5ff06f          	j	80006d94 <consolewrite+0x74>

0000000080006dc4 <consoleread>:
    80006dc4:	f9010113          	addi	sp,sp,-112
    80006dc8:	06813023          	sd	s0,96(sp)
    80006dcc:	04913c23          	sd	s1,88(sp)
    80006dd0:	05213823          	sd	s2,80(sp)
    80006dd4:	05313423          	sd	s3,72(sp)
    80006dd8:	05413023          	sd	s4,64(sp)
    80006ddc:	03513c23          	sd	s5,56(sp)
    80006de0:	03613823          	sd	s6,48(sp)
    80006de4:	03713423          	sd	s7,40(sp)
    80006de8:	03813023          	sd	s8,32(sp)
    80006dec:	06113423          	sd	ra,104(sp)
    80006df0:	01913c23          	sd	s9,24(sp)
    80006df4:	07010413          	addi	s0,sp,112
    80006df8:	00060b93          	mv	s7,a2
    80006dfc:	00050913          	mv	s2,a0
    80006e00:	00058c13          	mv	s8,a1
    80006e04:	00060b1b          	sext.w	s6,a2
    80006e08:	0000a497          	auipc	s1,0xa
    80006e0c:	d1048493          	addi	s1,s1,-752 # 80010b18 <cons>
    80006e10:	00400993          	li	s3,4
    80006e14:	fff00a13          	li	s4,-1
    80006e18:	00a00a93          	li	s5,10
    80006e1c:	05705e63          	blez	s7,80006e78 <consoleread+0xb4>
    80006e20:	09c4a703          	lw	a4,156(s1)
    80006e24:	0984a783          	lw	a5,152(s1)
    80006e28:	0007071b          	sext.w	a4,a4
    80006e2c:	08e78463          	beq	a5,a4,80006eb4 <consoleread+0xf0>
    80006e30:	07f7f713          	andi	a4,a5,127
    80006e34:	00e48733          	add	a4,s1,a4
    80006e38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e3c:	0017869b          	addiw	a3,a5,1
    80006e40:	08d4ac23          	sw	a3,152(s1)
    80006e44:	00070c9b          	sext.w	s9,a4
    80006e48:	0b370663          	beq	a4,s3,80006ef4 <consoleread+0x130>
    80006e4c:	00100693          	li	a3,1
    80006e50:	f9f40613          	addi	a2,s0,-97
    80006e54:	000c0593          	mv	a1,s8
    80006e58:	00090513          	mv	a0,s2
    80006e5c:	f8e40fa3          	sb	a4,-97(s0)
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	8c0080e7          	jalr	-1856(ra) # 80006720 <either_copyout>
    80006e68:	01450863          	beq	a0,s4,80006e78 <consoleread+0xb4>
    80006e6c:	001c0c13          	addi	s8,s8,1
    80006e70:	fffb8b9b          	addiw	s7,s7,-1
    80006e74:	fb5c94e3          	bne	s9,s5,80006e1c <consoleread+0x58>
    80006e78:	000b851b          	sext.w	a0,s7
    80006e7c:	06813083          	ld	ra,104(sp)
    80006e80:	06013403          	ld	s0,96(sp)
    80006e84:	05813483          	ld	s1,88(sp)
    80006e88:	05013903          	ld	s2,80(sp)
    80006e8c:	04813983          	ld	s3,72(sp)
    80006e90:	04013a03          	ld	s4,64(sp)
    80006e94:	03813a83          	ld	s5,56(sp)
    80006e98:	02813b83          	ld	s7,40(sp)
    80006e9c:	02013c03          	ld	s8,32(sp)
    80006ea0:	01813c83          	ld	s9,24(sp)
    80006ea4:	40ab053b          	subw	a0,s6,a0
    80006ea8:	03013b03          	ld	s6,48(sp)
    80006eac:	07010113          	addi	sp,sp,112
    80006eb0:	00008067          	ret
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	1d8080e7          	jalr	472(ra) # 8000808c <push_on>
    80006ebc:	0984a703          	lw	a4,152(s1)
    80006ec0:	09c4a783          	lw	a5,156(s1)
    80006ec4:	0007879b          	sext.w	a5,a5
    80006ec8:	fef70ce3          	beq	a4,a5,80006ec0 <consoleread+0xfc>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	234080e7          	jalr	564(ra) # 80008100 <pop_on>
    80006ed4:	0984a783          	lw	a5,152(s1)
    80006ed8:	07f7f713          	andi	a4,a5,127
    80006edc:	00e48733          	add	a4,s1,a4
    80006ee0:	01874703          	lbu	a4,24(a4)
    80006ee4:	0017869b          	addiw	a3,a5,1
    80006ee8:	08d4ac23          	sw	a3,152(s1)
    80006eec:	00070c9b          	sext.w	s9,a4
    80006ef0:	f5371ee3          	bne	a4,s3,80006e4c <consoleread+0x88>
    80006ef4:	000b851b          	sext.w	a0,s7
    80006ef8:	f96bf2e3          	bgeu	s7,s6,80006e7c <consoleread+0xb8>
    80006efc:	08f4ac23          	sw	a5,152(s1)
    80006f00:	f7dff06f          	j	80006e7c <consoleread+0xb8>

0000000080006f04 <consputc>:
    80006f04:	10000793          	li	a5,256
    80006f08:	00f50663          	beq	a0,a5,80006f14 <consputc+0x10>
    80006f0c:	00001317          	auipc	t1,0x1
    80006f10:	9f430067          	jr	-1548(t1) # 80007900 <uartputc_sync>
    80006f14:	ff010113          	addi	sp,sp,-16
    80006f18:	00113423          	sd	ra,8(sp)
    80006f1c:	00813023          	sd	s0,0(sp)
    80006f20:	01010413          	addi	s0,sp,16
    80006f24:	00800513          	li	a0,8
    80006f28:	00001097          	auipc	ra,0x1
    80006f2c:	9d8080e7          	jalr	-1576(ra) # 80007900 <uartputc_sync>
    80006f30:	02000513          	li	a0,32
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	9cc080e7          	jalr	-1588(ra) # 80007900 <uartputc_sync>
    80006f3c:	00013403          	ld	s0,0(sp)
    80006f40:	00813083          	ld	ra,8(sp)
    80006f44:	00800513          	li	a0,8
    80006f48:	01010113          	addi	sp,sp,16
    80006f4c:	00001317          	auipc	t1,0x1
    80006f50:	9b430067          	jr	-1612(t1) # 80007900 <uartputc_sync>

0000000080006f54 <consoleintr>:
    80006f54:	fe010113          	addi	sp,sp,-32
    80006f58:	00813823          	sd	s0,16(sp)
    80006f5c:	00913423          	sd	s1,8(sp)
    80006f60:	01213023          	sd	s2,0(sp)
    80006f64:	00113c23          	sd	ra,24(sp)
    80006f68:	02010413          	addi	s0,sp,32
    80006f6c:	0000a917          	auipc	s2,0xa
    80006f70:	bac90913          	addi	s2,s2,-1108 # 80010b18 <cons>
    80006f74:	00050493          	mv	s1,a0
    80006f78:	00090513          	mv	a0,s2
    80006f7c:	00001097          	auipc	ra,0x1
    80006f80:	e40080e7          	jalr	-448(ra) # 80007dbc <acquire>
    80006f84:	02048c63          	beqz	s1,80006fbc <consoleintr+0x68>
    80006f88:	0a092783          	lw	a5,160(s2)
    80006f8c:	09892703          	lw	a4,152(s2)
    80006f90:	07f00693          	li	a3,127
    80006f94:	40e7873b          	subw	a4,a5,a4
    80006f98:	02e6e263          	bltu	a3,a4,80006fbc <consoleintr+0x68>
    80006f9c:	00d00713          	li	a4,13
    80006fa0:	04e48063          	beq	s1,a4,80006fe0 <consoleintr+0x8c>
    80006fa4:	07f7f713          	andi	a4,a5,127
    80006fa8:	00e90733          	add	a4,s2,a4
    80006fac:	0017879b          	addiw	a5,a5,1
    80006fb0:	0af92023          	sw	a5,160(s2)
    80006fb4:	00970c23          	sb	s1,24(a4)
    80006fb8:	08f92e23          	sw	a5,156(s2)
    80006fbc:	01013403          	ld	s0,16(sp)
    80006fc0:	01813083          	ld	ra,24(sp)
    80006fc4:	00813483          	ld	s1,8(sp)
    80006fc8:	00013903          	ld	s2,0(sp)
    80006fcc:	0000a517          	auipc	a0,0xa
    80006fd0:	b4c50513          	addi	a0,a0,-1204 # 80010b18 <cons>
    80006fd4:	02010113          	addi	sp,sp,32
    80006fd8:	00001317          	auipc	t1,0x1
    80006fdc:	eb030067          	jr	-336(t1) # 80007e88 <release>
    80006fe0:	00a00493          	li	s1,10
    80006fe4:	fc1ff06f          	j	80006fa4 <consoleintr+0x50>

0000000080006fe8 <consoleinit>:
    80006fe8:	fe010113          	addi	sp,sp,-32
    80006fec:	00113c23          	sd	ra,24(sp)
    80006ff0:	00813823          	sd	s0,16(sp)
    80006ff4:	00913423          	sd	s1,8(sp)
    80006ff8:	02010413          	addi	s0,sp,32
    80006ffc:	0000a497          	auipc	s1,0xa
    80007000:	b1c48493          	addi	s1,s1,-1252 # 80010b18 <cons>
    80007004:	00048513          	mv	a0,s1
    80007008:	00002597          	auipc	a1,0x2
    8000700c:	5c058593          	addi	a1,a1,1472 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80007010:	00001097          	auipc	ra,0x1
    80007014:	d88080e7          	jalr	-632(ra) # 80007d98 <initlock>
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	7ac080e7          	jalr	1964(ra) # 800077c4 <uartinit>
    80007020:	01813083          	ld	ra,24(sp)
    80007024:	01013403          	ld	s0,16(sp)
    80007028:	00000797          	auipc	a5,0x0
    8000702c:	d9c78793          	addi	a5,a5,-612 # 80006dc4 <consoleread>
    80007030:	0af4bc23          	sd	a5,184(s1)
    80007034:	00000797          	auipc	a5,0x0
    80007038:	cec78793          	addi	a5,a5,-788 # 80006d20 <consolewrite>
    8000703c:	0cf4b023          	sd	a5,192(s1)
    80007040:	00813483          	ld	s1,8(sp)
    80007044:	02010113          	addi	sp,sp,32
    80007048:	00008067          	ret

000000008000704c <console_read>:
    8000704c:	ff010113          	addi	sp,sp,-16
    80007050:	00813423          	sd	s0,8(sp)
    80007054:	01010413          	addi	s0,sp,16
    80007058:	00813403          	ld	s0,8(sp)
    8000705c:	0000a317          	auipc	t1,0xa
    80007060:	b7433303          	ld	t1,-1164(t1) # 80010bd0 <devsw+0x10>
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00030067          	jr	t1

000000008000706c <console_write>:
    8000706c:	ff010113          	addi	sp,sp,-16
    80007070:	00813423          	sd	s0,8(sp)
    80007074:	01010413          	addi	s0,sp,16
    80007078:	00813403          	ld	s0,8(sp)
    8000707c:	0000a317          	auipc	t1,0xa
    80007080:	b5c33303          	ld	t1,-1188(t1) # 80010bd8 <devsw+0x18>
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00030067          	jr	t1

000000008000708c <panic>:
    8000708c:	fe010113          	addi	sp,sp,-32
    80007090:	00113c23          	sd	ra,24(sp)
    80007094:	00813823          	sd	s0,16(sp)
    80007098:	00913423          	sd	s1,8(sp)
    8000709c:	02010413          	addi	s0,sp,32
    800070a0:	00050493          	mv	s1,a0
    800070a4:	00002517          	auipc	a0,0x2
    800070a8:	52c50513          	addi	a0,a0,1324 # 800095d0 <CONSOLE_STATUS+0x5c0>
    800070ac:	0000a797          	auipc	a5,0xa
    800070b0:	bc07a623          	sw	zero,-1076(a5) # 80010c78 <pr+0x18>
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	034080e7          	jalr	52(ra) # 800070e8 <__printf>
    800070bc:	00048513          	mv	a0,s1
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	028080e7          	jalr	40(ra) # 800070e8 <__printf>
    800070c8:	00002517          	auipc	a0,0x2
    800070cc:	03050513          	addi	a0,a0,48 # 800090f8 <CONSOLE_STATUS+0xe8>
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	018080e7          	jalr	24(ra) # 800070e8 <__printf>
    800070d8:	00100793          	li	a5,1
    800070dc:	00005717          	auipc	a4,0x5
    800070e0:	82f72e23          	sw	a5,-1988(a4) # 8000b918 <panicked>
    800070e4:	0000006f          	j	800070e4 <panic+0x58>

00000000800070e8 <__printf>:
    800070e8:	f3010113          	addi	sp,sp,-208
    800070ec:	08813023          	sd	s0,128(sp)
    800070f0:	07313423          	sd	s3,104(sp)
    800070f4:	09010413          	addi	s0,sp,144
    800070f8:	05813023          	sd	s8,64(sp)
    800070fc:	08113423          	sd	ra,136(sp)
    80007100:	06913c23          	sd	s1,120(sp)
    80007104:	07213823          	sd	s2,112(sp)
    80007108:	07413023          	sd	s4,96(sp)
    8000710c:	05513c23          	sd	s5,88(sp)
    80007110:	05613823          	sd	s6,80(sp)
    80007114:	05713423          	sd	s7,72(sp)
    80007118:	03913c23          	sd	s9,56(sp)
    8000711c:	03a13823          	sd	s10,48(sp)
    80007120:	03b13423          	sd	s11,40(sp)
    80007124:	0000a317          	auipc	t1,0xa
    80007128:	b3c30313          	addi	t1,t1,-1220 # 80010c60 <pr>
    8000712c:	01832c03          	lw	s8,24(t1)
    80007130:	00b43423          	sd	a1,8(s0)
    80007134:	00c43823          	sd	a2,16(s0)
    80007138:	00d43c23          	sd	a3,24(s0)
    8000713c:	02e43023          	sd	a4,32(s0)
    80007140:	02f43423          	sd	a5,40(s0)
    80007144:	03043823          	sd	a6,48(s0)
    80007148:	03143c23          	sd	a7,56(s0)
    8000714c:	00050993          	mv	s3,a0
    80007150:	4a0c1663          	bnez	s8,800075fc <__printf+0x514>
    80007154:	60098c63          	beqz	s3,8000776c <__printf+0x684>
    80007158:	0009c503          	lbu	a0,0(s3)
    8000715c:	00840793          	addi	a5,s0,8
    80007160:	f6f43c23          	sd	a5,-136(s0)
    80007164:	00000493          	li	s1,0
    80007168:	22050063          	beqz	a0,80007388 <__printf+0x2a0>
    8000716c:	00002a37          	lui	s4,0x2
    80007170:	00018ab7          	lui	s5,0x18
    80007174:	000f4b37          	lui	s6,0xf4
    80007178:	00989bb7          	lui	s7,0x989
    8000717c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007180:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007184:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007188:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000718c:	00148c9b          	addiw	s9,s1,1
    80007190:	02500793          	li	a5,37
    80007194:	01998933          	add	s2,s3,s9
    80007198:	38f51263          	bne	a0,a5,8000751c <__printf+0x434>
    8000719c:	00094783          	lbu	a5,0(s2)
    800071a0:	00078c9b          	sext.w	s9,a5
    800071a4:	1e078263          	beqz	a5,80007388 <__printf+0x2a0>
    800071a8:	0024849b          	addiw	s1,s1,2
    800071ac:	07000713          	li	a4,112
    800071b0:	00998933          	add	s2,s3,s1
    800071b4:	38e78a63          	beq	a5,a4,80007548 <__printf+0x460>
    800071b8:	20f76863          	bltu	a4,a5,800073c8 <__printf+0x2e0>
    800071bc:	42a78863          	beq	a5,a0,800075ec <__printf+0x504>
    800071c0:	06400713          	li	a4,100
    800071c4:	40e79663          	bne	a5,a4,800075d0 <__printf+0x4e8>
    800071c8:	f7843783          	ld	a5,-136(s0)
    800071cc:	0007a603          	lw	a2,0(a5)
    800071d0:	00878793          	addi	a5,a5,8
    800071d4:	f6f43c23          	sd	a5,-136(s0)
    800071d8:	42064a63          	bltz	a2,8000760c <__printf+0x524>
    800071dc:	00a00713          	li	a4,10
    800071e0:	02e677bb          	remuw	a5,a2,a4
    800071e4:	00002d97          	auipc	s11,0x2
    800071e8:	414d8d93          	addi	s11,s11,1044 # 800095f8 <digits>
    800071ec:	00900593          	li	a1,9
    800071f0:	0006051b          	sext.w	a0,a2
    800071f4:	00000c93          	li	s9,0
    800071f8:	02079793          	slli	a5,a5,0x20
    800071fc:	0207d793          	srli	a5,a5,0x20
    80007200:	00fd87b3          	add	a5,s11,a5
    80007204:	0007c783          	lbu	a5,0(a5)
    80007208:	02e656bb          	divuw	a3,a2,a4
    8000720c:	f8f40023          	sb	a5,-128(s0)
    80007210:	14c5d863          	bge	a1,a2,80007360 <__printf+0x278>
    80007214:	06300593          	li	a1,99
    80007218:	00100c93          	li	s9,1
    8000721c:	02e6f7bb          	remuw	a5,a3,a4
    80007220:	02079793          	slli	a5,a5,0x20
    80007224:	0207d793          	srli	a5,a5,0x20
    80007228:	00fd87b3          	add	a5,s11,a5
    8000722c:	0007c783          	lbu	a5,0(a5)
    80007230:	02e6d73b          	divuw	a4,a3,a4
    80007234:	f8f400a3          	sb	a5,-127(s0)
    80007238:	12a5f463          	bgeu	a1,a0,80007360 <__printf+0x278>
    8000723c:	00a00693          	li	a3,10
    80007240:	00900593          	li	a1,9
    80007244:	02d777bb          	remuw	a5,a4,a3
    80007248:	02079793          	slli	a5,a5,0x20
    8000724c:	0207d793          	srli	a5,a5,0x20
    80007250:	00fd87b3          	add	a5,s11,a5
    80007254:	0007c503          	lbu	a0,0(a5)
    80007258:	02d757bb          	divuw	a5,a4,a3
    8000725c:	f8a40123          	sb	a0,-126(s0)
    80007260:	48e5f263          	bgeu	a1,a4,800076e4 <__printf+0x5fc>
    80007264:	06300513          	li	a0,99
    80007268:	02d7f5bb          	remuw	a1,a5,a3
    8000726c:	02059593          	slli	a1,a1,0x20
    80007270:	0205d593          	srli	a1,a1,0x20
    80007274:	00bd85b3          	add	a1,s11,a1
    80007278:	0005c583          	lbu	a1,0(a1)
    8000727c:	02d7d7bb          	divuw	a5,a5,a3
    80007280:	f8b401a3          	sb	a1,-125(s0)
    80007284:	48e57263          	bgeu	a0,a4,80007708 <__printf+0x620>
    80007288:	3e700513          	li	a0,999
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b40223          	sb	a1,-124(s0)
    800072a8:	46e57663          	bgeu	a0,a4,80007714 <__printf+0x62c>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b402a3          	sb	a1,-123(s0)
    800072c8:	46ea7863          	bgeu	s4,a4,80007738 <__printf+0x650>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b40323          	sb	a1,-122(s0)
    800072e8:	3eeaf863          	bgeu	s5,a4,800076d8 <__printf+0x5f0>
    800072ec:	02d7f5bb          	remuw	a1,a5,a3
    800072f0:	02059593          	slli	a1,a1,0x20
    800072f4:	0205d593          	srli	a1,a1,0x20
    800072f8:	00bd85b3          	add	a1,s11,a1
    800072fc:	0005c583          	lbu	a1,0(a1)
    80007300:	02d7d7bb          	divuw	a5,a5,a3
    80007304:	f8b403a3          	sb	a1,-121(s0)
    80007308:	42eb7e63          	bgeu	s6,a4,80007744 <__printf+0x65c>
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b40423          	sb	a1,-120(s0)
    80007328:	42ebfc63          	bgeu	s7,a4,80007760 <__printf+0x678>
    8000732c:	02079793          	slli	a5,a5,0x20
    80007330:	0207d793          	srli	a5,a5,0x20
    80007334:	00fd8db3          	add	s11,s11,a5
    80007338:	000dc703          	lbu	a4,0(s11)
    8000733c:	00a00793          	li	a5,10
    80007340:	00900c93          	li	s9,9
    80007344:	f8e404a3          	sb	a4,-119(s0)
    80007348:	00065c63          	bgez	a2,80007360 <__printf+0x278>
    8000734c:	f9040713          	addi	a4,s0,-112
    80007350:	00f70733          	add	a4,a4,a5
    80007354:	02d00693          	li	a3,45
    80007358:	fed70823          	sb	a3,-16(a4)
    8000735c:	00078c93          	mv	s9,a5
    80007360:	f8040793          	addi	a5,s0,-128
    80007364:	01978cb3          	add	s9,a5,s9
    80007368:	f7f40d13          	addi	s10,s0,-129
    8000736c:	000cc503          	lbu	a0,0(s9)
    80007370:	fffc8c93          	addi	s9,s9,-1
    80007374:	00000097          	auipc	ra,0x0
    80007378:	b90080e7          	jalr	-1136(ra) # 80006f04 <consputc>
    8000737c:	ffac98e3          	bne	s9,s10,8000736c <__printf+0x284>
    80007380:	00094503          	lbu	a0,0(s2)
    80007384:	e00514e3          	bnez	a0,8000718c <__printf+0xa4>
    80007388:	1a0c1663          	bnez	s8,80007534 <__printf+0x44c>
    8000738c:	08813083          	ld	ra,136(sp)
    80007390:	08013403          	ld	s0,128(sp)
    80007394:	07813483          	ld	s1,120(sp)
    80007398:	07013903          	ld	s2,112(sp)
    8000739c:	06813983          	ld	s3,104(sp)
    800073a0:	06013a03          	ld	s4,96(sp)
    800073a4:	05813a83          	ld	s5,88(sp)
    800073a8:	05013b03          	ld	s6,80(sp)
    800073ac:	04813b83          	ld	s7,72(sp)
    800073b0:	04013c03          	ld	s8,64(sp)
    800073b4:	03813c83          	ld	s9,56(sp)
    800073b8:	03013d03          	ld	s10,48(sp)
    800073bc:	02813d83          	ld	s11,40(sp)
    800073c0:	0d010113          	addi	sp,sp,208
    800073c4:	00008067          	ret
    800073c8:	07300713          	li	a4,115
    800073cc:	1ce78a63          	beq	a5,a4,800075a0 <__printf+0x4b8>
    800073d0:	07800713          	li	a4,120
    800073d4:	1ee79e63          	bne	a5,a4,800075d0 <__printf+0x4e8>
    800073d8:	f7843783          	ld	a5,-136(s0)
    800073dc:	0007a703          	lw	a4,0(a5)
    800073e0:	00878793          	addi	a5,a5,8
    800073e4:	f6f43c23          	sd	a5,-136(s0)
    800073e8:	28074263          	bltz	a4,8000766c <__printf+0x584>
    800073ec:	00002d97          	auipc	s11,0x2
    800073f0:	20cd8d93          	addi	s11,s11,524 # 800095f8 <digits>
    800073f4:	00f77793          	andi	a5,a4,15
    800073f8:	00fd87b3          	add	a5,s11,a5
    800073fc:	0007c683          	lbu	a3,0(a5)
    80007400:	00f00613          	li	a2,15
    80007404:	0007079b          	sext.w	a5,a4
    80007408:	f8d40023          	sb	a3,-128(s0)
    8000740c:	0047559b          	srliw	a1,a4,0x4
    80007410:	0047569b          	srliw	a3,a4,0x4
    80007414:	00000c93          	li	s9,0
    80007418:	0ee65063          	bge	a2,a4,800074f8 <__printf+0x410>
    8000741c:	00f6f693          	andi	a3,a3,15
    80007420:	00dd86b3          	add	a3,s11,a3
    80007424:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007428:	0087d79b          	srliw	a5,a5,0x8
    8000742c:	00100c93          	li	s9,1
    80007430:	f8d400a3          	sb	a3,-127(s0)
    80007434:	0cb67263          	bgeu	a2,a1,800074f8 <__printf+0x410>
    80007438:	00f7f693          	andi	a3,a5,15
    8000743c:	00dd86b3          	add	a3,s11,a3
    80007440:	0006c583          	lbu	a1,0(a3)
    80007444:	00f00613          	li	a2,15
    80007448:	0047d69b          	srliw	a3,a5,0x4
    8000744c:	f8b40123          	sb	a1,-126(s0)
    80007450:	0047d593          	srli	a1,a5,0x4
    80007454:	28f67e63          	bgeu	a2,a5,800076f0 <__printf+0x608>
    80007458:	00f6f693          	andi	a3,a3,15
    8000745c:	00dd86b3          	add	a3,s11,a3
    80007460:	0006c503          	lbu	a0,0(a3)
    80007464:	0087d813          	srli	a6,a5,0x8
    80007468:	0087d69b          	srliw	a3,a5,0x8
    8000746c:	f8a401a3          	sb	a0,-125(s0)
    80007470:	28b67663          	bgeu	a2,a1,800076fc <__printf+0x614>
    80007474:	00f6f693          	andi	a3,a3,15
    80007478:	00dd86b3          	add	a3,s11,a3
    8000747c:	0006c583          	lbu	a1,0(a3)
    80007480:	00c7d513          	srli	a0,a5,0xc
    80007484:	00c7d69b          	srliw	a3,a5,0xc
    80007488:	f8b40223          	sb	a1,-124(s0)
    8000748c:	29067a63          	bgeu	a2,a6,80007720 <__printf+0x638>
    80007490:	00f6f693          	andi	a3,a3,15
    80007494:	00dd86b3          	add	a3,s11,a3
    80007498:	0006c583          	lbu	a1,0(a3)
    8000749c:	0107d813          	srli	a6,a5,0x10
    800074a0:	0107d69b          	srliw	a3,a5,0x10
    800074a4:	f8b402a3          	sb	a1,-123(s0)
    800074a8:	28a67263          	bgeu	a2,a0,8000772c <__printf+0x644>
    800074ac:	00f6f693          	andi	a3,a3,15
    800074b0:	00dd86b3          	add	a3,s11,a3
    800074b4:	0006c683          	lbu	a3,0(a3)
    800074b8:	0147d79b          	srliw	a5,a5,0x14
    800074bc:	f8d40323          	sb	a3,-122(s0)
    800074c0:	21067663          	bgeu	a2,a6,800076cc <__printf+0x5e4>
    800074c4:	02079793          	slli	a5,a5,0x20
    800074c8:	0207d793          	srli	a5,a5,0x20
    800074cc:	00fd8db3          	add	s11,s11,a5
    800074d0:	000dc683          	lbu	a3,0(s11)
    800074d4:	00800793          	li	a5,8
    800074d8:	00700c93          	li	s9,7
    800074dc:	f8d403a3          	sb	a3,-121(s0)
    800074e0:	00075c63          	bgez	a4,800074f8 <__printf+0x410>
    800074e4:	f9040713          	addi	a4,s0,-112
    800074e8:	00f70733          	add	a4,a4,a5
    800074ec:	02d00693          	li	a3,45
    800074f0:	fed70823          	sb	a3,-16(a4)
    800074f4:	00078c93          	mv	s9,a5
    800074f8:	f8040793          	addi	a5,s0,-128
    800074fc:	01978cb3          	add	s9,a5,s9
    80007500:	f7f40d13          	addi	s10,s0,-129
    80007504:	000cc503          	lbu	a0,0(s9)
    80007508:	fffc8c93          	addi	s9,s9,-1
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	9f8080e7          	jalr	-1544(ra) # 80006f04 <consputc>
    80007514:	ff9d18e3          	bne	s10,s9,80007504 <__printf+0x41c>
    80007518:	0100006f          	j	80007528 <__printf+0x440>
    8000751c:	00000097          	auipc	ra,0x0
    80007520:	9e8080e7          	jalr	-1560(ra) # 80006f04 <consputc>
    80007524:	000c8493          	mv	s1,s9
    80007528:	00094503          	lbu	a0,0(s2)
    8000752c:	c60510e3          	bnez	a0,8000718c <__printf+0xa4>
    80007530:	e40c0ee3          	beqz	s8,8000738c <__printf+0x2a4>
    80007534:	00009517          	auipc	a0,0x9
    80007538:	72c50513          	addi	a0,a0,1836 # 80010c60 <pr>
    8000753c:	00001097          	auipc	ra,0x1
    80007540:	94c080e7          	jalr	-1716(ra) # 80007e88 <release>
    80007544:	e49ff06f          	j	8000738c <__printf+0x2a4>
    80007548:	f7843783          	ld	a5,-136(s0)
    8000754c:	03000513          	li	a0,48
    80007550:	01000d13          	li	s10,16
    80007554:	00878713          	addi	a4,a5,8
    80007558:	0007bc83          	ld	s9,0(a5)
    8000755c:	f6e43c23          	sd	a4,-136(s0)
    80007560:	00000097          	auipc	ra,0x0
    80007564:	9a4080e7          	jalr	-1628(ra) # 80006f04 <consputc>
    80007568:	07800513          	li	a0,120
    8000756c:	00000097          	auipc	ra,0x0
    80007570:	998080e7          	jalr	-1640(ra) # 80006f04 <consputc>
    80007574:	00002d97          	auipc	s11,0x2
    80007578:	084d8d93          	addi	s11,s11,132 # 800095f8 <digits>
    8000757c:	03ccd793          	srli	a5,s9,0x3c
    80007580:	00fd87b3          	add	a5,s11,a5
    80007584:	0007c503          	lbu	a0,0(a5)
    80007588:	fffd0d1b          	addiw	s10,s10,-1
    8000758c:	004c9c93          	slli	s9,s9,0x4
    80007590:	00000097          	auipc	ra,0x0
    80007594:	974080e7          	jalr	-1676(ra) # 80006f04 <consputc>
    80007598:	fe0d12e3          	bnez	s10,8000757c <__printf+0x494>
    8000759c:	f8dff06f          	j	80007528 <__printf+0x440>
    800075a0:	f7843783          	ld	a5,-136(s0)
    800075a4:	0007bc83          	ld	s9,0(a5)
    800075a8:	00878793          	addi	a5,a5,8
    800075ac:	f6f43c23          	sd	a5,-136(s0)
    800075b0:	000c9a63          	bnez	s9,800075c4 <__printf+0x4dc>
    800075b4:	1080006f          	j	800076bc <__printf+0x5d4>
    800075b8:	001c8c93          	addi	s9,s9,1
    800075bc:	00000097          	auipc	ra,0x0
    800075c0:	948080e7          	jalr	-1720(ra) # 80006f04 <consputc>
    800075c4:	000cc503          	lbu	a0,0(s9)
    800075c8:	fe0518e3          	bnez	a0,800075b8 <__printf+0x4d0>
    800075cc:	f5dff06f          	j	80007528 <__printf+0x440>
    800075d0:	02500513          	li	a0,37
    800075d4:	00000097          	auipc	ra,0x0
    800075d8:	930080e7          	jalr	-1744(ra) # 80006f04 <consputc>
    800075dc:	000c8513          	mv	a0,s9
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	924080e7          	jalr	-1756(ra) # 80006f04 <consputc>
    800075e8:	f41ff06f          	j	80007528 <__printf+0x440>
    800075ec:	02500513          	li	a0,37
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	914080e7          	jalr	-1772(ra) # 80006f04 <consputc>
    800075f8:	f31ff06f          	j	80007528 <__printf+0x440>
    800075fc:	00030513          	mv	a0,t1
    80007600:	00000097          	auipc	ra,0x0
    80007604:	7bc080e7          	jalr	1980(ra) # 80007dbc <acquire>
    80007608:	b4dff06f          	j	80007154 <__printf+0x6c>
    8000760c:	40c0053b          	negw	a0,a2
    80007610:	00a00713          	li	a4,10
    80007614:	02e576bb          	remuw	a3,a0,a4
    80007618:	00002d97          	auipc	s11,0x2
    8000761c:	fe0d8d93          	addi	s11,s11,-32 # 800095f8 <digits>
    80007620:	ff700593          	li	a1,-9
    80007624:	02069693          	slli	a3,a3,0x20
    80007628:	0206d693          	srli	a3,a3,0x20
    8000762c:	00dd86b3          	add	a3,s11,a3
    80007630:	0006c683          	lbu	a3,0(a3)
    80007634:	02e557bb          	divuw	a5,a0,a4
    80007638:	f8d40023          	sb	a3,-128(s0)
    8000763c:	10b65e63          	bge	a2,a1,80007758 <__printf+0x670>
    80007640:	06300593          	li	a1,99
    80007644:	02e7f6bb          	remuw	a3,a5,a4
    80007648:	02069693          	slli	a3,a3,0x20
    8000764c:	0206d693          	srli	a3,a3,0x20
    80007650:	00dd86b3          	add	a3,s11,a3
    80007654:	0006c683          	lbu	a3,0(a3)
    80007658:	02e7d73b          	divuw	a4,a5,a4
    8000765c:	00200793          	li	a5,2
    80007660:	f8d400a3          	sb	a3,-127(s0)
    80007664:	bca5ece3          	bltu	a1,a0,8000723c <__printf+0x154>
    80007668:	ce5ff06f          	j	8000734c <__printf+0x264>
    8000766c:	40e007bb          	negw	a5,a4
    80007670:	00002d97          	auipc	s11,0x2
    80007674:	f88d8d93          	addi	s11,s11,-120 # 800095f8 <digits>
    80007678:	00f7f693          	andi	a3,a5,15
    8000767c:	00dd86b3          	add	a3,s11,a3
    80007680:	0006c583          	lbu	a1,0(a3)
    80007684:	ff100613          	li	a2,-15
    80007688:	0047d69b          	srliw	a3,a5,0x4
    8000768c:	f8b40023          	sb	a1,-128(s0)
    80007690:	0047d59b          	srliw	a1,a5,0x4
    80007694:	0ac75e63          	bge	a4,a2,80007750 <__printf+0x668>
    80007698:	00f6f693          	andi	a3,a3,15
    8000769c:	00dd86b3          	add	a3,s11,a3
    800076a0:	0006c603          	lbu	a2,0(a3)
    800076a4:	00f00693          	li	a3,15
    800076a8:	0087d79b          	srliw	a5,a5,0x8
    800076ac:	f8c400a3          	sb	a2,-127(s0)
    800076b0:	d8b6e4e3          	bltu	a3,a1,80007438 <__printf+0x350>
    800076b4:	00200793          	li	a5,2
    800076b8:	e2dff06f          	j	800074e4 <__printf+0x3fc>
    800076bc:	00002c97          	auipc	s9,0x2
    800076c0:	f1cc8c93          	addi	s9,s9,-228 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800076c4:	02800513          	li	a0,40
    800076c8:	ef1ff06f          	j	800075b8 <__printf+0x4d0>
    800076cc:	00700793          	li	a5,7
    800076d0:	00600c93          	li	s9,6
    800076d4:	e0dff06f          	j	800074e0 <__printf+0x3f8>
    800076d8:	00700793          	li	a5,7
    800076dc:	00600c93          	li	s9,6
    800076e0:	c69ff06f          	j	80007348 <__printf+0x260>
    800076e4:	00300793          	li	a5,3
    800076e8:	00200c93          	li	s9,2
    800076ec:	c5dff06f          	j	80007348 <__printf+0x260>
    800076f0:	00300793          	li	a5,3
    800076f4:	00200c93          	li	s9,2
    800076f8:	de9ff06f          	j	800074e0 <__printf+0x3f8>
    800076fc:	00400793          	li	a5,4
    80007700:	00300c93          	li	s9,3
    80007704:	dddff06f          	j	800074e0 <__printf+0x3f8>
    80007708:	00400793          	li	a5,4
    8000770c:	00300c93          	li	s9,3
    80007710:	c39ff06f          	j	80007348 <__printf+0x260>
    80007714:	00500793          	li	a5,5
    80007718:	00400c93          	li	s9,4
    8000771c:	c2dff06f          	j	80007348 <__printf+0x260>
    80007720:	00500793          	li	a5,5
    80007724:	00400c93          	li	s9,4
    80007728:	db9ff06f          	j	800074e0 <__printf+0x3f8>
    8000772c:	00600793          	li	a5,6
    80007730:	00500c93          	li	s9,5
    80007734:	dadff06f          	j	800074e0 <__printf+0x3f8>
    80007738:	00600793          	li	a5,6
    8000773c:	00500c93          	li	s9,5
    80007740:	c09ff06f          	j	80007348 <__printf+0x260>
    80007744:	00800793          	li	a5,8
    80007748:	00700c93          	li	s9,7
    8000774c:	bfdff06f          	j	80007348 <__printf+0x260>
    80007750:	00100793          	li	a5,1
    80007754:	d91ff06f          	j	800074e4 <__printf+0x3fc>
    80007758:	00100793          	li	a5,1
    8000775c:	bf1ff06f          	j	8000734c <__printf+0x264>
    80007760:	00900793          	li	a5,9
    80007764:	00800c93          	li	s9,8
    80007768:	be1ff06f          	j	80007348 <__printf+0x260>
    8000776c:	00002517          	auipc	a0,0x2
    80007770:	e7450513          	addi	a0,a0,-396 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80007774:	00000097          	auipc	ra,0x0
    80007778:	918080e7          	jalr	-1768(ra) # 8000708c <panic>

000000008000777c <printfinit>:
    8000777c:	fe010113          	addi	sp,sp,-32
    80007780:	00813823          	sd	s0,16(sp)
    80007784:	00913423          	sd	s1,8(sp)
    80007788:	00113c23          	sd	ra,24(sp)
    8000778c:	02010413          	addi	s0,sp,32
    80007790:	00009497          	auipc	s1,0x9
    80007794:	4d048493          	addi	s1,s1,1232 # 80010c60 <pr>
    80007798:	00048513          	mv	a0,s1
    8000779c:	00002597          	auipc	a1,0x2
    800077a0:	e5458593          	addi	a1,a1,-428 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	5f4080e7          	jalr	1524(ra) # 80007d98 <initlock>
    800077ac:	01813083          	ld	ra,24(sp)
    800077b0:	01013403          	ld	s0,16(sp)
    800077b4:	0004ac23          	sw	zero,24(s1)
    800077b8:	00813483          	ld	s1,8(sp)
    800077bc:	02010113          	addi	sp,sp,32
    800077c0:	00008067          	ret

00000000800077c4 <uartinit>:
    800077c4:	ff010113          	addi	sp,sp,-16
    800077c8:	00813423          	sd	s0,8(sp)
    800077cc:	01010413          	addi	s0,sp,16
    800077d0:	100007b7          	lui	a5,0x10000
    800077d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077d8:	f8000713          	li	a4,-128
    800077dc:	00e781a3          	sb	a4,3(a5)
    800077e0:	00300713          	li	a4,3
    800077e4:	00e78023          	sb	a4,0(a5)
    800077e8:	000780a3          	sb	zero,1(a5)
    800077ec:	00e781a3          	sb	a4,3(a5)
    800077f0:	00700693          	li	a3,7
    800077f4:	00d78123          	sb	a3,2(a5)
    800077f8:	00e780a3          	sb	a4,1(a5)
    800077fc:	00813403          	ld	s0,8(sp)
    80007800:	01010113          	addi	sp,sp,16
    80007804:	00008067          	ret

0000000080007808 <uartputc>:
    80007808:	00004797          	auipc	a5,0x4
    8000780c:	1107a783          	lw	a5,272(a5) # 8000b918 <panicked>
    80007810:	00078463          	beqz	a5,80007818 <uartputc+0x10>
    80007814:	0000006f          	j	80007814 <uartputc+0xc>
    80007818:	fd010113          	addi	sp,sp,-48
    8000781c:	02813023          	sd	s0,32(sp)
    80007820:	00913c23          	sd	s1,24(sp)
    80007824:	01213823          	sd	s2,16(sp)
    80007828:	01313423          	sd	s3,8(sp)
    8000782c:	02113423          	sd	ra,40(sp)
    80007830:	03010413          	addi	s0,sp,48
    80007834:	00004917          	auipc	s2,0x4
    80007838:	0ec90913          	addi	s2,s2,236 # 8000b920 <uart_tx_r>
    8000783c:	00093783          	ld	a5,0(s2)
    80007840:	00004497          	auipc	s1,0x4
    80007844:	0e848493          	addi	s1,s1,232 # 8000b928 <uart_tx_w>
    80007848:	0004b703          	ld	a4,0(s1)
    8000784c:	02078693          	addi	a3,a5,32
    80007850:	00050993          	mv	s3,a0
    80007854:	02e69c63          	bne	a3,a4,8000788c <uartputc+0x84>
    80007858:	00001097          	auipc	ra,0x1
    8000785c:	834080e7          	jalr	-1996(ra) # 8000808c <push_on>
    80007860:	00093783          	ld	a5,0(s2)
    80007864:	0004b703          	ld	a4,0(s1)
    80007868:	02078793          	addi	a5,a5,32
    8000786c:	00e79463          	bne	a5,a4,80007874 <uartputc+0x6c>
    80007870:	0000006f          	j	80007870 <uartputc+0x68>
    80007874:	00001097          	auipc	ra,0x1
    80007878:	88c080e7          	jalr	-1908(ra) # 80008100 <pop_on>
    8000787c:	00093783          	ld	a5,0(s2)
    80007880:	0004b703          	ld	a4,0(s1)
    80007884:	02078693          	addi	a3,a5,32
    80007888:	fce688e3          	beq	a3,a4,80007858 <uartputc+0x50>
    8000788c:	01f77693          	andi	a3,a4,31
    80007890:	00009597          	auipc	a1,0x9
    80007894:	3f058593          	addi	a1,a1,1008 # 80010c80 <uart_tx_buf>
    80007898:	00d586b3          	add	a3,a1,a3
    8000789c:	00170713          	addi	a4,a4,1
    800078a0:	01368023          	sb	s3,0(a3)
    800078a4:	00e4b023          	sd	a4,0(s1)
    800078a8:	10000637          	lui	a2,0x10000
    800078ac:	02f71063          	bne	a4,a5,800078cc <uartputc+0xc4>
    800078b0:	0340006f          	j	800078e4 <uartputc+0xdc>
    800078b4:	00074703          	lbu	a4,0(a4)
    800078b8:	00f93023          	sd	a5,0(s2)
    800078bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078c0:	00093783          	ld	a5,0(s2)
    800078c4:	0004b703          	ld	a4,0(s1)
    800078c8:	00f70e63          	beq	a4,a5,800078e4 <uartputc+0xdc>
    800078cc:	00564683          	lbu	a3,5(a2)
    800078d0:	01f7f713          	andi	a4,a5,31
    800078d4:	00e58733          	add	a4,a1,a4
    800078d8:	0206f693          	andi	a3,a3,32
    800078dc:	00178793          	addi	a5,a5,1
    800078e0:	fc069ae3          	bnez	a3,800078b4 <uartputc+0xac>
    800078e4:	02813083          	ld	ra,40(sp)
    800078e8:	02013403          	ld	s0,32(sp)
    800078ec:	01813483          	ld	s1,24(sp)
    800078f0:	01013903          	ld	s2,16(sp)
    800078f4:	00813983          	ld	s3,8(sp)
    800078f8:	03010113          	addi	sp,sp,48
    800078fc:	00008067          	ret

0000000080007900 <uartputc_sync>:
    80007900:	ff010113          	addi	sp,sp,-16
    80007904:	00813423          	sd	s0,8(sp)
    80007908:	01010413          	addi	s0,sp,16
    8000790c:	00004717          	auipc	a4,0x4
    80007910:	00c72703          	lw	a4,12(a4) # 8000b918 <panicked>
    80007914:	02071663          	bnez	a4,80007940 <uartputc_sync+0x40>
    80007918:	00050793          	mv	a5,a0
    8000791c:	100006b7          	lui	a3,0x10000
    80007920:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007924:	02077713          	andi	a4,a4,32
    80007928:	fe070ce3          	beqz	a4,80007920 <uartputc_sync+0x20>
    8000792c:	0ff7f793          	andi	a5,a5,255
    80007930:	00f68023          	sb	a5,0(a3)
    80007934:	00813403          	ld	s0,8(sp)
    80007938:	01010113          	addi	sp,sp,16
    8000793c:	00008067          	ret
    80007940:	0000006f          	j	80007940 <uartputc_sync+0x40>

0000000080007944 <uartstart>:
    80007944:	ff010113          	addi	sp,sp,-16
    80007948:	00813423          	sd	s0,8(sp)
    8000794c:	01010413          	addi	s0,sp,16
    80007950:	00004617          	auipc	a2,0x4
    80007954:	fd060613          	addi	a2,a2,-48 # 8000b920 <uart_tx_r>
    80007958:	00004517          	auipc	a0,0x4
    8000795c:	fd050513          	addi	a0,a0,-48 # 8000b928 <uart_tx_w>
    80007960:	00063783          	ld	a5,0(a2)
    80007964:	00053703          	ld	a4,0(a0)
    80007968:	04f70263          	beq	a4,a5,800079ac <uartstart+0x68>
    8000796c:	100005b7          	lui	a1,0x10000
    80007970:	00009817          	auipc	a6,0x9
    80007974:	31080813          	addi	a6,a6,784 # 80010c80 <uart_tx_buf>
    80007978:	01c0006f          	j	80007994 <uartstart+0x50>
    8000797c:	0006c703          	lbu	a4,0(a3)
    80007980:	00f63023          	sd	a5,0(a2)
    80007984:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007988:	00063783          	ld	a5,0(a2)
    8000798c:	00053703          	ld	a4,0(a0)
    80007990:	00f70e63          	beq	a4,a5,800079ac <uartstart+0x68>
    80007994:	01f7f713          	andi	a4,a5,31
    80007998:	00e806b3          	add	a3,a6,a4
    8000799c:	0055c703          	lbu	a4,5(a1)
    800079a0:	00178793          	addi	a5,a5,1
    800079a4:	02077713          	andi	a4,a4,32
    800079a8:	fc071ae3          	bnez	a4,8000797c <uartstart+0x38>
    800079ac:	00813403          	ld	s0,8(sp)
    800079b0:	01010113          	addi	sp,sp,16
    800079b4:	00008067          	ret

00000000800079b8 <uartgetc>:
    800079b8:	ff010113          	addi	sp,sp,-16
    800079bc:	00813423          	sd	s0,8(sp)
    800079c0:	01010413          	addi	s0,sp,16
    800079c4:	10000737          	lui	a4,0x10000
    800079c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079cc:	0017f793          	andi	a5,a5,1
    800079d0:	00078c63          	beqz	a5,800079e8 <uartgetc+0x30>
    800079d4:	00074503          	lbu	a0,0(a4)
    800079d8:	0ff57513          	andi	a0,a0,255
    800079dc:	00813403          	ld	s0,8(sp)
    800079e0:	01010113          	addi	sp,sp,16
    800079e4:	00008067          	ret
    800079e8:	fff00513          	li	a0,-1
    800079ec:	ff1ff06f          	j	800079dc <uartgetc+0x24>

00000000800079f0 <uartintr>:
    800079f0:	100007b7          	lui	a5,0x10000
    800079f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079f8:	0017f793          	andi	a5,a5,1
    800079fc:	0a078463          	beqz	a5,80007aa4 <uartintr+0xb4>
    80007a00:	fe010113          	addi	sp,sp,-32
    80007a04:	00813823          	sd	s0,16(sp)
    80007a08:	00913423          	sd	s1,8(sp)
    80007a0c:	00113c23          	sd	ra,24(sp)
    80007a10:	02010413          	addi	s0,sp,32
    80007a14:	100004b7          	lui	s1,0x10000
    80007a18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a1c:	0ff57513          	andi	a0,a0,255
    80007a20:	fffff097          	auipc	ra,0xfffff
    80007a24:	534080e7          	jalr	1332(ra) # 80006f54 <consoleintr>
    80007a28:	0054c783          	lbu	a5,5(s1)
    80007a2c:	0017f793          	andi	a5,a5,1
    80007a30:	fe0794e3          	bnez	a5,80007a18 <uartintr+0x28>
    80007a34:	00004617          	auipc	a2,0x4
    80007a38:	eec60613          	addi	a2,a2,-276 # 8000b920 <uart_tx_r>
    80007a3c:	00004517          	auipc	a0,0x4
    80007a40:	eec50513          	addi	a0,a0,-276 # 8000b928 <uart_tx_w>
    80007a44:	00063783          	ld	a5,0(a2)
    80007a48:	00053703          	ld	a4,0(a0)
    80007a4c:	04f70263          	beq	a4,a5,80007a90 <uartintr+0xa0>
    80007a50:	100005b7          	lui	a1,0x10000
    80007a54:	00009817          	auipc	a6,0x9
    80007a58:	22c80813          	addi	a6,a6,556 # 80010c80 <uart_tx_buf>
    80007a5c:	01c0006f          	j	80007a78 <uartintr+0x88>
    80007a60:	0006c703          	lbu	a4,0(a3)
    80007a64:	00f63023          	sd	a5,0(a2)
    80007a68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a6c:	00063783          	ld	a5,0(a2)
    80007a70:	00053703          	ld	a4,0(a0)
    80007a74:	00f70e63          	beq	a4,a5,80007a90 <uartintr+0xa0>
    80007a78:	01f7f713          	andi	a4,a5,31
    80007a7c:	00e806b3          	add	a3,a6,a4
    80007a80:	0055c703          	lbu	a4,5(a1)
    80007a84:	00178793          	addi	a5,a5,1
    80007a88:	02077713          	andi	a4,a4,32
    80007a8c:	fc071ae3          	bnez	a4,80007a60 <uartintr+0x70>
    80007a90:	01813083          	ld	ra,24(sp)
    80007a94:	01013403          	ld	s0,16(sp)
    80007a98:	00813483          	ld	s1,8(sp)
    80007a9c:	02010113          	addi	sp,sp,32
    80007aa0:	00008067          	ret
    80007aa4:	00004617          	auipc	a2,0x4
    80007aa8:	e7c60613          	addi	a2,a2,-388 # 8000b920 <uart_tx_r>
    80007aac:	00004517          	auipc	a0,0x4
    80007ab0:	e7c50513          	addi	a0,a0,-388 # 8000b928 <uart_tx_w>
    80007ab4:	00063783          	ld	a5,0(a2)
    80007ab8:	00053703          	ld	a4,0(a0)
    80007abc:	04f70263          	beq	a4,a5,80007b00 <uartintr+0x110>
    80007ac0:	100005b7          	lui	a1,0x10000
    80007ac4:	00009817          	auipc	a6,0x9
    80007ac8:	1bc80813          	addi	a6,a6,444 # 80010c80 <uart_tx_buf>
    80007acc:	01c0006f          	j	80007ae8 <uartintr+0xf8>
    80007ad0:	0006c703          	lbu	a4,0(a3)
    80007ad4:	00f63023          	sd	a5,0(a2)
    80007ad8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007adc:	00063783          	ld	a5,0(a2)
    80007ae0:	00053703          	ld	a4,0(a0)
    80007ae4:	02f70063          	beq	a4,a5,80007b04 <uartintr+0x114>
    80007ae8:	01f7f713          	andi	a4,a5,31
    80007aec:	00e806b3          	add	a3,a6,a4
    80007af0:	0055c703          	lbu	a4,5(a1)
    80007af4:	00178793          	addi	a5,a5,1
    80007af8:	02077713          	andi	a4,a4,32
    80007afc:	fc071ae3          	bnez	a4,80007ad0 <uartintr+0xe0>
    80007b00:	00008067          	ret
    80007b04:	00008067          	ret

0000000080007b08 <kinit>:
    80007b08:	fc010113          	addi	sp,sp,-64
    80007b0c:	02913423          	sd	s1,40(sp)
    80007b10:	fffff7b7          	lui	a5,0xfffff
    80007b14:	0000a497          	auipc	s1,0xa
    80007b18:	18b48493          	addi	s1,s1,395 # 80011c9f <end+0xfff>
    80007b1c:	02813823          	sd	s0,48(sp)
    80007b20:	01313c23          	sd	s3,24(sp)
    80007b24:	00f4f4b3          	and	s1,s1,a5
    80007b28:	02113c23          	sd	ra,56(sp)
    80007b2c:	03213023          	sd	s2,32(sp)
    80007b30:	01413823          	sd	s4,16(sp)
    80007b34:	01513423          	sd	s5,8(sp)
    80007b38:	04010413          	addi	s0,sp,64
    80007b3c:	000017b7          	lui	a5,0x1
    80007b40:	01100993          	li	s3,17
    80007b44:	00f487b3          	add	a5,s1,a5
    80007b48:	01b99993          	slli	s3,s3,0x1b
    80007b4c:	06f9e063          	bltu	s3,a5,80007bac <kinit+0xa4>
    80007b50:	00009a97          	auipc	s5,0x9
    80007b54:	150a8a93          	addi	s5,s5,336 # 80010ca0 <end>
    80007b58:	0754ec63          	bltu	s1,s5,80007bd0 <kinit+0xc8>
    80007b5c:	0734fa63          	bgeu	s1,s3,80007bd0 <kinit+0xc8>
    80007b60:	00088a37          	lui	s4,0x88
    80007b64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b68:	00004917          	auipc	s2,0x4
    80007b6c:	dc890913          	addi	s2,s2,-568 # 8000b930 <kmem>
    80007b70:	00ca1a13          	slli	s4,s4,0xc
    80007b74:	0140006f          	j	80007b88 <kinit+0x80>
    80007b78:	000017b7          	lui	a5,0x1
    80007b7c:	00f484b3          	add	s1,s1,a5
    80007b80:	0554e863          	bltu	s1,s5,80007bd0 <kinit+0xc8>
    80007b84:	0534f663          	bgeu	s1,s3,80007bd0 <kinit+0xc8>
    80007b88:	00001637          	lui	a2,0x1
    80007b8c:	00100593          	li	a1,1
    80007b90:	00048513          	mv	a0,s1
    80007b94:	00000097          	auipc	ra,0x0
    80007b98:	5e4080e7          	jalr	1508(ra) # 80008178 <__memset>
    80007b9c:	00093783          	ld	a5,0(s2)
    80007ba0:	00f4b023          	sd	a5,0(s1)
    80007ba4:	00993023          	sd	s1,0(s2)
    80007ba8:	fd4498e3          	bne	s1,s4,80007b78 <kinit+0x70>
    80007bac:	03813083          	ld	ra,56(sp)
    80007bb0:	03013403          	ld	s0,48(sp)
    80007bb4:	02813483          	ld	s1,40(sp)
    80007bb8:	02013903          	ld	s2,32(sp)
    80007bbc:	01813983          	ld	s3,24(sp)
    80007bc0:	01013a03          	ld	s4,16(sp)
    80007bc4:	00813a83          	ld	s5,8(sp)
    80007bc8:	04010113          	addi	sp,sp,64
    80007bcc:	00008067          	ret
    80007bd0:	00002517          	auipc	a0,0x2
    80007bd4:	a4050513          	addi	a0,a0,-1472 # 80009610 <digits+0x18>
    80007bd8:	fffff097          	auipc	ra,0xfffff
    80007bdc:	4b4080e7          	jalr	1204(ra) # 8000708c <panic>

0000000080007be0 <freerange>:
    80007be0:	fc010113          	addi	sp,sp,-64
    80007be4:	000017b7          	lui	a5,0x1
    80007be8:	02913423          	sd	s1,40(sp)
    80007bec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007bf0:	009504b3          	add	s1,a0,s1
    80007bf4:	fffff537          	lui	a0,0xfffff
    80007bf8:	02813823          	sd	s0,48(sp)
    80007bfc:	02113c23          	sd	ra,56(sp)
    80007c00:	03213023          	sd	s2,32(sp)
    80007c04:	01313c23          	sd	s3,24(sp)
    80007c08:	01413823          	sd	s4,16(sp)
    80007c0c:	01513423          	sd	s5,8(sp)
    80007c10:	01613023          	sd	s6,0(sp)
    80007c14:	04010413          	addi	s0,sp,64
    80007c18:	00a4f4b3          	and	s1,s1,a0
    80007c1c:	00f487b3          	add	a5,s1,a5
    80007c20:	06f5e463          	bltu	a1,a5,80007c88 <freerange+0xa8>
    80007c24:	00009a97          	auipc	s5,0x9
    80007c28:	07ca8a93          	addi	s5,s5,124 # 80010ca0 <end>
    80007c2c:	0954e263          	bltu	s1,s5,80007cb0 <freerange+0xd0>
    80007c30:	01100993          	li	s3,17
    80007c34:	01b99993          	slli	s3,s3,0x1b
    80007c38:	0734fc63          	bgeu	s1,s3,80007cb0 <freerange+0xd0>
    80007c3c:	00058a13          	mv	s4,a1
    80007c40:	00004917          	auipc	s2,0x4
    80007c44:	cf090913          	addi	s2,s2,-784 # 8000b930 <kmem>
    80007c48:	00002b37          	lui	s6,0x2
    80007c4c:	0140006f          	j	80007c60 <freerange+0x80>
    80007c50:	000017b7          	lui	a5,0x1
    80007c54:	00f484b3          	add	s1,s1,a5
    80007c58:	0554ec63          	bltu	s1,s5,80007cb0 <freerange+0xd0>
    80007c5c:	0534fa63          	bgeu	s1,s3,80007cb0 <freerange+0xd0>
    80007c60:	00001637          	lui	a2,0x1
    80007c64:	00100593          	li	a1,1
    80007c68:	00048513          	mv	a0,s1
    80007c6c:	00000097          	auipc	ra,0x0
    80007c70:	50c080e7          	jalr	1292(ra) # 80008178 <__memset>
    80007c74:	00093703          	ld	a4,0(s2)
    80007c78:	016487b3          	add	a5,s1,s6
    80007c7c:	00e4b023          	sd	a4,0(s1)
    80007c80:	00993023          	sd	s1,0(s2)
    80007c84:	fcfa76e3          	bgeu	s4,a5,80007c50 <freerange+0x70>
    80007c88:	03813083          	ld	ra,56(sp)
    80007c8c:	03013403          	ld	s0,48(sp)
    80007c90:	02813483          	ld	s1,40(sp)
    80007c94:	02013903          	ld	s2,32(sp)
    80007c98:	01813983          	ld	s3,24(sp)
    80007c9c:	01013a03          	ld	s4,16(sp)
    80007ca0:	00813a83          	ld	s5,8(sp)
    80007ca4:	00013b03          	ld	s6,0(sp)
    80007ca8:	04010113          	addi	sp,sp,64
    80007cac:	00008067          	ret
    80007cb0:	00002517          	auipc	a0,0x2
    80007cb4:	96050513          	addi	a0,a0,-1696 # 80009610 <digits+0x18>
    80007cb8:	fffff097          	auipc	ra,0xfffff
    80007cbc:	3d4080e7          	jalr	980(ra) # 8000708c <panic>

0000000080007cc0 <kfree>:
    80007cc0:	fe010113          	addi	sp,sp,-32
    80007cc4:	00813823          	sd	s0,16(sp)
    80007cc8:	00113c23          	sd	ra,24(sp)
    80007ccc:	00913423          	sd	s1,8(sp)
    80007cd0:	02010413          	addi	s0,sp,32
    80007cd4:	03451793          	slli	a5,a0,0x34
    80007cd8:	04079c63          	bnez	a5,80007d30 <kfree+0x70>
    80007cdc:	00009797          	auipc	a5,0x9
    80007ce0:	fc478793          	addi	a5,a5,-60 # 80010ca0 <end>
    80007ce4:	00050493          	mv	s1,a0
    80007ce8:	04f56463          	bltu	a0,a5,80007d30 <kfree+0x70>
    80007cec:	01100793          	li	a5,17
    80007cf0:	01b79793          	slli	a5,a5,0x1b
    80007cf4:	02f57e63          	bgeu	a0,a5,80007d30 <kfree+0x70>
    80007cf8:	00001637          	lui	a2,0x1
    80007cfc:	00100593          	li	a1,1
    80007d00:	00000097          	auipc	ra,0x0
    80007d04:	478080e7          	jalr	1144(ra) # 80008178 <__memset>
    80007d08:	00004797          	auipc	a5,0x4
    80007d0c:	c2878793          	addi	a5,a5,-984 # 8000b930 <kmem>
    80007d10:	0007b703          	ld	a4,0(a5)
    80007d14:	01813083          	ld	ra,24(sp)
    80007d18:	01013403          	ld	s0,16(sp)
    80007d1c:	00e4b023          	sd	a4,0(s1)
    80007d20:	0097b023          	sd	s1,0(a5)
    80007d24:	00813483          	ld	s1,8(sp)
    80007d28:	02010113          	addi	sp,sp,32
    80007d2c:	00008067          	ret
    80007d30:	00002517          	auipc	a0,0x2
    80007d34:	8e050513          	addi	a0,a0,-1824 # 80009610 <digits+0x18>
    80007d38:	fffff097          	auipc	ra,0xfffff
    80007d3c:	354080e7          	jalr	852(ra) # 8000708c <panic>

0000000080007d40 <kalloc>:
    80007d40:	fe010113          	addi	sp,sp,-32
    80007d44:	00813823          	sd	s0,16(sp)
    80007d48:	00913423          	sd	s1,8(sp)
    80007d4c:	00113c23          	sd	ra,24(sp)
    80007d50:	02010413          	addi	s0,sp,32
    80007d54:	00004797          	auipc	a5,0x4
    80007d58:	bdc78793          	addi	a5,a5,-1060 # 8000b930 <kmem>
    80007d5c:	0007b483          	ld	s1,0(a5)
    80007d60:	02048063          	beqz	s1,80007d80 <kalloc+0x40>
    80007d64:	0004b703          	ld	a4,0(s1)
    80007d68:	00001637          	lui	a2,0x1
    80007d6c:	00500593          	li	a1,5
    80007d70:	00048513          	mv	a0,s1
    80007d74:	00e7b023          	sd	a4,0(a5)
    80007d78:	00000097          	auipc	ra,0x0
    80007d7c:	400080e7          	jalr	1024(ra) # 80008178 <__memset>
    80007d80:	01813083          	ld	ra,24(sp)
    80007d84:	01013403          	ld	s0,16(sp)
    80007d88:	00048513          	mv	a0,s1
    80007d8c:	00813483          	ld	s1,8(sp)
    80007d90:	02010113          	addi	sp,sp,32
    80007d94:	00008067          	ret

0000000080007d98 <initlock>:
    80007d98:	ff010113          	addi	sp,sp,-16
    80007d9c:	00813423          	sd	s0,8(sp)
    80007da0:	01010413          	addi	s0,sp,16
    80007da4:	00813403          	ld	s0,8(sp)
    80007da8:	00b53423          	sd	a1,8(a0)
    80007dac:	00052023          	sw	zero,0(a0)
    80007db0:	00053823          	sd	zero,16(a0)
    80007db4:	01010113          	addi	sp,sp,16
    80007db8:	00008067          	ret

0000000080007dbc <acquire>:
    80007dbc:	fe010113          	addi	sp,sp,-32
    80007dc0:	00813823          	sd	s0,16(sp)
    80007dc4:	00913423          	sd	s1,8(sp)
    80007dc8:	00113c23          	sd	ra,24(sp)
    80007dcc:	01213023          	sd	s2,0(sp)
    80007dd0:	02010413          	addi	s0,sp,32
    80007dd4:	00050493          	mv	s1,a0
    80007dd8:	10002973          	csrr	s2,sstatus
    80007ddc:	100027f3          	csrr	a5,sstatus
    80007de0:	ffd7f793          	andi	a5,a5,-3
    80007de4:	10079073          	csrw	sstatus,a5
    80007de8:	fffff097          	auipc	ra,0xfffff
    80007dec:	8ec080e7          	jalr	-1812(ra) # 800066d4 <mycpu>
    80007df0:	07852783          	lw	a5,120(a0)
    80007df4:	06078e63          	beqz	a5,80007e70 <acquire+0xb4>
    80007df8:	fffff097          	auipc	ra,0xfffff
    80007dfc:	8dc080e7          	jalr	-1828(ra) # 800066d4 <mycpu>
    80007e00:	07852783          	lw	a5,120(a0)
    80007e04:	0004a703          	lw	a4,0(s1)
    80007e08:	0017879b          	addiw	a5,a5,1
    80007e0c:	06f52c23          	sw	a5,120(a0)
    80007e10:	04071063          	bnez	a4,80007e50 <acquire+0x94>
    80007e14:	00100713          	li	a4,1
    80007e18:	00070793          	mv	a5,a4
    80007e1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e20:	0007879b          	sext.w	a5,a5
    80007e24:	fe079ae3          	bnez	a5,80007e18 <acquire+0x5c>
    80007e28:	0ff0000f          	fence
    80007e2c:	fffff097          	auipc	ra,0xfffff
    80007e30:	8a8080e7          	jalr	-1880(ra) # 800066d4 <mycpu>
    80007e34:	01813083          	ld	ra,24(sp)
    80007e38:	01013403          	ld	s0,16(sp)
    80007e3c:	00a4b823          	sd	a0,16(s1)
    80007e40:	00013903          	ld	s2,0(sp)
    80007e44:	00813483          	ld	s1,8(sp)
    80007e48:	02010113          	addi	sp,sp,32
    80007e4c:	00008067          	ret
    80007e50:	0104b903          	ld	s2,16(s1)
    80007e54:	fffff097          	auipc	ra,0xfffff
    80007e58:	880080e7          	jalr	-1920(ra) # 800066d4 <mycpu>
    80007e5c:	faa91ce3          	bne	s2,a0,80007e14 <acquire+0x58>
    80007e60:	00001517          	auipc	a0,0x1
    80007e64:	7b850513          	addi	a0,a0,1976 # 80009618 <digits+0x20>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	224080e7          	jalr	548(ra) # 8000708c <panic>
    80007e70:	00195913          	srli	s2,s2,0x1
    80007e74:	fffff097          	auipc	ra,0xfffff
    80007e78:	860080e7          	jalr	-1952(ra) # 800066d4 <mycpu>
    80007e7c:	00197913          	andi	s2,s2,1
    80007e80:	07252e23          	sw	s2,124(a0)
    80007e84:	f75ff06f          	j	80007df8 <acquire+0x3c>

0000000080007e88 <release>:
    80007e88:	fe010113          	addi	sp,sp,-32
    80007e8c:	00813823          	sd	s0,16(sp)
    80007e90:	00113c23          	sd	ra,24(sp)
    80007e94:	00913423          	sd	s1,8(sp)
    80007e98:	01213023          	sd	s2,0(sp)
    80007e9c:	02010413          	addi	s0,sp,32
    80007ea0:	00052783          	lw	a5,0(a0)
    80007ea4:	00079a63          	bnez	a5,80007eb8 <release+0x30>
    80007ea8:	00001517          	auipc	a0,0x1
    80007eac:	77850513          	addi	a0,a0,1912 # 80009620 <digits+0x28>
    80007eb0:	fffff097          	auipc	ra,0xfffff
    80007eb4:	1dc080e7          	jalr	476(ra) # 8000708c <panic>
    80007eb8:	01053903          	ld	s2,16(a0)
    80007ebc:	00050493          	mv	s1,a0
    80007ec0:	fffff097          	auipc	ra,0xfffff
    80007ec4:	814080e7          	jalr	-2028(ra) # 800066d4 <mycpu>
    80007ec8:	fea910e3          	bne	s2,a0,80007ea8 <release+0x20>
    80007ecc:	0004b823          	sd	zero,16(s1)
    80007ed0:	0ff0000f          	fence
    80007ed4:	0f50000f          	fence	iorw,ow
    80007ed8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007edc:	ffffe097          	auipc	ra,0xffffe
    80007ee0:	7f8080e7          	jalr	2040(ra) # 800066d4 <mycpu>
    80007ee4:	100027f3          	csrr	a5,sstatus
    80007ee8:	0027f793          	andi	a5,a5,2
    80007eec:	04079a63          	bnez	a5,80007f40 <release+0xb8>
    80007ef0:	07852783          	lw	a5,120(a0)
    80007ef4:	02f05e63          	blez	a5,80007f30 <release+0xa8>
    80007ef8:	fff7871b          	addiw	a4,a5,-1
    80007efc:	06e52c23          	sw	a4,120(a0)
    80007f00:	00071c63          	bnez	a4,80007f18 <release+0x90>
    80007f04:	07c52783          	lw	a5,124(a0)
    80007f08:	00078863          	beqz	a5,80007f18 <release+0x90>
    80007f0c:	100027f3          	csrr	a5,sstatus
    80007f10:	0027e793          	ori	a5,a5,2
    80007f14:	10079073          	csrw	sstatus,a5
    80007f18:	01813083          	ld	ra,24(sp)
    80007f1c:	01013403          	ld	s0,16(sp)
    80007f20:	00813483          	ld	s1,8(sp)
    80007f24:	00013903          	ld	s2,0(sp)
    80007f28:	02010113          	addi	sp,sp,32
    80007f2c:	00008067          	ret
    80007f30:	00001517          	auipc	a0,0x1
    80007f34:	71050513          	addi	a0,a0,1808 # 80009640 <digits+0x48>
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	154080e7          	jalr	340(ra) # 8000708c <panic>
    80007f40:	00001517          	auipc	a0,0x1
    80007f44:	6e850513          	addi	a0,a0,1768 # 80009628 <digits+0x30>
    80007f48:	fffff097          	auipc	ra,0xfffff
    80007f4c:	144080e7          	jalr	324(ra) # 8000708c <panic>

0000000080007f50 <holding>:
    80007f50:	00052783          	lw	a5,0(a0)
    80007f54:	00079663          	bnez	a5,80007f60 <holding+0x10>
    80007f58:	00000513          	li	a0,0
    80007f5c:	00008067          	ret
    80007f60:	fe010113          	addi	sp,sp,-32
    80007f64:	00813823          	sd	s0,16(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	00113c23          	sd	ra,24(sp)
    80007f70:	02010413          	addi	s0,sp,32
    80007f74:	01053483          	ld	s1,16(a0)
    80007f78:	ffffe097          	auipc	ra,0xffffe
    80007f7c:	75c080e7          	jalr	1884(ra) # 800066d4 <mycpu>
    80007f80:	01813083          	ld	ra,24(sp)
    80007f84:	01013403          	ld	s0,16(sp)
    80007f88:	40a48533          	sub	a0,s1,a0
    80007f8c:	00153513          	seqz	a0,a0
    80007f90:	00813483          	ld	s1,8(sp)
    80007f94:	02010113          	addi	sp,sp,32
    80007f98:	00008067          	ret

0000000080007f9c <push_off>:
    80007f9c:	fe010113          	addi	sp,sp,-32
    80007fa0:	00813823          	sd	s0,16(sp)
    80007fa4:	00113c23          	sd	ra,24(sp)
    80007fa8:	00913423          	sd	s1,8(sp)
    80007fac:	02010413          	addi	s0,sp,32
    80007fb0:	100024f3          	csrr	s1,sstatus
    80007fb4:	100027f3          	csrr	a5,sstatus
    80007fb8:	ffd7f793          	andi	a5,a5,-3
    80007fbc:	10079073          	csrw	sstatus,a5
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	714080e7          	jalr	1812(ra) # 800066d4 <mycpu>
    80007fc8:	07852783          	lw	a5,120(a0)
    80007fcc:	02078663          	beqz	a5,80007ff8 <push_off+0x5c>
    80007fd0:	ffffe097          	auipc	ra,0xffffe
    80007fd4:	704080e7          	jalr	1796(ra) # 800066d4 <mycpu>
    80007fd8:	07852783          	lw	a5,120(a0)
    80007fdc:	01813083          	ld	ra,24(sp)
    80007fe0:	01013403          	ld	s0,16(sp)
    80007fe4:	0017879b          	addiw	a5,a5,1
    80007fe8:	06f52c23          	sw	a5,120(a0)
    80007fec:	00813483          	ld	s1,8(sp)
    80007ff0:	02010113          	addi	sp,sp,32
    80007ff4:	00008067          	ret
    80007ff8:	0014d493          	srli	s1,s1,0x1
    80007ffc:	ffffe097          	auipc	ra,0xffffe
    80008000:	6d8080e7          	jalr	1752(ra) # 800066d4 <mycpu>
    80008004:	0014f493          	andi	s1,s1,1
    80008008:	06952e23          	sw	s1,124(a0)
    8000800c:	fc5ff06f          	j	80007fd0 <push_off+0x34>

0000000080008010 <pop_off>:
    80008010:	ff010113          	addi	sp,sp,-16
    80008014:	00813023          	sd	s0,0(sp)
    80008018:	00113423          	sd	ra,8(sp)
    8000801c:	01010413          	addi	s0,sp,16
    80008020:	ffffe097          	auipc	ra,0xffffe
    80008024:	6b4080e7          	jalr	1716(ra) # 800066d4 <mycpu>
    80008028:	100027f3          	csrr	a5,sstatus
    8000802c:	0027f793          	andi	a5,a5,2
    80008030:	04079663          	bnez	a5,8000807c <pop_off+0x6c>
    80008034:	07852783          	lw	a5,120(a0)
    80008038:	02f05a63          	blez	a5,8000806c <pop_off+0x5c>
    8000803c:	fff7871b          	addiw	a4,a5,-1
    80008040:	06e52c23          	sw	a4,120(a0)
    80008044:	00071c63          	bnez	a4,8000805c <pop_off+0x4c>
    80008048:	07c52783          	lw	a5,124(a0)
    8000804c:	00078863          	beqz	a5,8000805c <pop_off+0x4c>
    80008050:	100027f3          	csrr	a5,sstatus
    80008054:	0027e793          	ori	a5,a5,2
    80008058:	10079073          	csrw	sstatus,a5
    8000805c:	00813083          	ld	ra,8(sp)
    80008060:	00013403          	ld	s0,0(sp)
    80008064:	01010113          	addi	sp,sp,16
    80008068:	00008067          	ret
    8000806c:	00001517          	auipc	a0,0x1
    80008070:	5d450513          	addi	a0,a0,1492 # 80009640 <digits+0x48>
    80008074:	fffff097          	auipc	ra,0xfffff
    80008078:	018080e7          	jalr	24(ra) # 8000708c <panic>
    8000807c:	00001517          	auipc	a0,0x1
    80008080:	5ac50513          	addi	a0,a0,1452 # 80009628 <digits+0x30>
    80008084:	fffff097          	auipc	ra,0xfffff
    80008088:	008080e7          	jalr	8(ra) # 8000708c <panic>

000000008000808c <push_on>:
    8000808c:	fe010113          	addi	sp,sp,-32
    80008090:	00813823          	sd	s0,16(sp)
    80008094:	00113c23          	sd	ra,24(sp)
    80008098:	00913423          	sd	s1,8(sp)
    8000809c:	02010413          	addi	s0,sp,32
    800080a0:	100024f3          	csrr	s1,sstatus
    800080a4:	100027f3          	csrr	a5,sstatus
    800080a8:	0027e793          	ori	a5,a5,2
    800080ac:	10079073          	csrw	sstatus,a5
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	624080e7          	jalr	1572(ra) # 800066d4 <mycpu>
    800080b8:	07852783          	lw	a5,120(a0)
    800080bc:	02078663          	beqz	a5,800080e8 <push_on+0x5c>
    800080c0:	ffffe097          	auipc	ra,0xffffe
    800080c4:	614080e7          	jalr	1556(ra) # 800066d4 <mycpu>
    800080c8:	07852783          	lw	a5,120(a0)
    800080cc:	01813083          	ld	ra,24(sp)
    800080d0:	01013403          	ld	s0,16(sp)
    800080d4:	0017879b          	addiw	a5,a5,1
    800080d8:	06f52c23          	sw	a5,120(a0)
    800080dc:	00813483          	ld	s1,8(sp)
    800080e0:	02010113          	addi	sp,sp,32
    800080e4:	00008067          	ret
    800080e8:	0014d493          	srli	s1,s1,0x1
    800080ec:	ffffe097          	auipc	ra,0xffffe
    800080f0:	5e8080e7          	jalr	1512(ra) # 800066d4 <mycpu>
    800080f4:	0014f493          	andi	s1,s1,1
    800080f8:	06952e23          	sw	s1,124(a0)
    800080fc:	fc5ff06f          	j	800080c0 <push_on+0x34>

0000000080008100 <pop_on>:
    80008100:	ff010113          	addi	sp,sp,-16
    80008104:	00813023          	sd	s0,0(sp)
    80008108:	00113423          	sd	ra,8(sp)
    8000810c:	01010413          	addi	s0,sp,16
    80008110:	ffffe097          	auipc	ra,0xffffe
    80008114:	5c4080e7          	jalr	1476(ra) # 800066d4 <mycpu>
    80008118:	100027f3          	csrr	a5,sstatus
    8000811c:	0027f793          	andi	a5,a5,2
    80008120:	04078463          	beqz	a5,80008168 <pop_on+0x68>
    80008124:	07852783          	lw	a5,120(a0)
    80008128:	02f05863          	blez	a5,80008158 <pop_on+0x58>
    8000812c:	fff7879b          	addiw	a5,a5,-1
    80008130:	06f52c23          	sw	a5,120(a0)
    80008134:	07853783          	ld	a5,120(a0)
    80008138:	00079863          	bnez	a5,80008148 <pop_on+0x48>
    8000813c:	100027f3          	csrr	a5,sstatus
    80008140:	ffd7f793          	andi	a5,a5,-3
    80008144:	10079073          	csrw	sstatus,a5
    80008148:	00813083          	ld	ra,8(sp)
    8000814c:	00013403          	ld	s0,0(sp)
    80008150:	01010113          	addi	sp,sp,16
    80008154:	00008067          	ret
    80008158:	00001517          	auipc	a0,0x1
    8000815c:	51050513          	addi	a0,a0,1296 # 80009668 <digits+0x70>
    80008160:	fffff097          	auipc	ra,0xfffff
    80008164:	f2c080e7          	jalr	-212(ra) # 8000708c <panic>
    80008168:	00001517          	auipc	a0,0x1
    8000816c:	4e050513          	addi	a0,a0,1248 # 80009648 <digits+0x50>
    80008170:	fffff097          	auipc	ra,0xfffff
    80008174:	f1c080e7          	jalr	-228(ra) # 8000708c <panic>

0000000080008178 <__memset>:
    80008178:	ff010113          	addi	sp,sp,-16
    8000817c:	00813423          	sd	s0,8(sp)
    80008180:	01010413          	addi	s0,sp,16
    80008184:	1a060e63          	beqz	a2,80008340 <__memset+0x1c8>
    80008188:	40a007b3          	neg	a5,a0
    8000818c:	0077f793          	andi	a5,a5,7
    80008190:	00778693          	addi	a3,a5,7
    80008194:	00b00813          	li	a6,11
    80008198:	0ff5f593          	andi	a1,a1,255
    8000819c:	fff6071b          	addiw	a4,a2,-1
    800081a0:	1b06e663          	bltu	a3,a6,8000834c <__memset+0x1d4>
    800081a4:	1cd76463          	bltu	a4,a3,8000836c <__memset+0x1f4>
    800081a8:	1a078e63          	beqz	a5,80008364 <__memset+0x1ec>
    800081ac:	00b50023          	sb	a1,0(a0)
    800081b0:	00100713          	li	a4,1
    800081b4:	1ae78463          	beq	a5,a4,8000835c <__memset+0x1e4>
    800081b8:	00b500a3          	sb	a1,1(a0)
    800081bc:	00200713          	li	a4,2
    800081c0:	1ae78a63          	beq	a5,a4,80008374 <__memset+0x1fc>
    800081c4:	00b50123          	sb	a1,2(a0)
    800081c8:	00300713          	li	a4,3
    800081cc:	18e78463          	beq	a5,a4,80008354 <__memset+0x1dc>
    800081d0:	00b501a3          	sb	a1,3(a0)
    800081d4:	00400713          	li	a4,4
    800081d8:	1ae78263          	beq	a5,a4,8000837c <__memset+0x204>
    800081dc:	00b50223          	sb	a1,4(a0)
    800081e0:	00500713          	li	a4,5
    800081e4:	1ae78063          	beq	a5,a4,80008384 <__memset+0x20c>
    800081e8:	00b502a3          	sb	a1,5(a0)
    800081ec:	00700713          	li	a4,7
    800081f0:	18e79e63          	bne	a5,a4,8000838c <__memset+0x214>
    800081f4:	00b50323          	sb	a1,6(a0)
    800081f8:	00700e93          	li	t4,7
    800081fc:	00859713          	slli	a4,a1,0x8
    80008200:	00e5e733          	or	a4,a1,a4
    80008204:	01059e13          	slli	t3,a1,0x10
    80008208:	01c76e33          	or	t3,a4,t3
    8000820c:	01859313          	slli	t1,a1,0x18
    80008210:	006e6333          	or	t1,t3,t1
    80008214:	02059893          	slli	a7,a1,0x20
    80008218:	40f60e3b          	subw	t3,a2,a5
    8000821c:	011368b3          	or	a7,t1,a7
    80008220:	02859813          	slli	a6,a1,0x28
    80008224:	0108e833          	or	a6,a7,a6
    80008228:	03059693          	slli	a3,a1,0x30
    8000822c:	003e589b          	srliw	a7,t3,0x3
    80008230:	00d866b3          	or	a3,a6,a3
    80008234:	03859713          	slli	a4,a1,0x38
    80008238:	00389813          	slli	a6,a7,0x3
    8000823c:	00f507b3          	add	a5,a0,a5
    80008240:	00e6e733          	or	a4,a3,a4
    80008244:	000e089b          	sext.w	a7,t3
    80008248:	00f806b3          	add	a3,a6,a5
    8000824c:	00e7b023          	sd	a4,0(a5)
    80008250:	00878793          	addi	a5,a5,8
    80008254:	fed79ce3          	bne	a5,a3,8000824c <__memset+0xd4>
    80008258:	ff8e7793          	andi	a5,t3,-8
    8000825c:	0007871b          	sext.w	a4,a5
    80008260:	01d787bb          	addw	a5,a5,t4
    80008264:	0ce88e63          	beq	a7,a4,80008340 <__memset+0x1c8>
    80008268:	00f50733          	add	a4,a0,a5
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0017871b          	addiw	a4,a5,1
    80008274:	0cc77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0027871b          	addiw	a4,a5,2
    80008284:	0ac77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0037871b          	addiw	a4,a5,3
    80008294:	0ac77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0047871b          	addiw	a4,a5,4
    800082a4:	08c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0057871b          	addiw	a4,a5,5
    800082b4:	08c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0067871b          	addiw	a4,a5,6
    800082c4:	06c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0077871b          	addiw	a4,a5,7
    800082d4:	06c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0087871b          	addiw	a4,a5,8
    800082e4:	04c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0097871b          	addiw	a4,a5,9
    800082f4:	04c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	00a7871b          	addiw	a4,a5,10
    80008304:	02c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	00b7871b          	addiw	a4,a5,11
    80008314:	02c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00c7871b          	addiw	a4,a5,12
    80008324:	00c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	00d7879b          	addiw	a5,a5,13
    80008334:	00c7f663          	bgeu	a5,a2,80008340 <__memset+0x1c8>
    80008338:	00f507b3          	add	a5,a0,a5
    8000833c:	00b78023          	sb	a1,0(a5)
    80008340:	00813403          	ld	s0,8(sp)
    80008344:	01010113          	addi	sp,sp,16
    80008348:	00008067          	ret
    8000834c:	00b00693          	li	a3,11
    80008350:	e55ff06f          	j	800081a4 <__memset+0x2c>
    80008354:	00300e93          	li	t4,3
    80008358:	ea5ff06f          	j	800081fc <__memset+0x84>
    8000835c:	00100e93          	li	t4,1
    80008360:	e9dff06f          	j	800081fc <__memset+0x84>
    80008364:	00000e93          	li	t4,0
    80008368:	e95ff06f          	j	800081fc <__memset+0x84>
    8000836c:	00000793          	li	a5,0
    80008370:	ef9ff06f          	j	80008268 <__memset+0xf0>
    80008374:	00200e93          	li	t4,2
    80008378:	e85ff06f          	j	800081fc <__memset+0x84>
    8000837c:	00400e93          	li	t4,4
    80008380:	e7dff06f          	j	800081fc <__memset+0x84>
    80008384:	00500e93          	li	t4,5
    80008388:	e75ff06f          	j	800081fc <__memset+0x84>
    8000838c:	00600e93          	li	t4,6
    80008390:	e6dff06f          	j	800081fc <__memset+0x84>

0000000080008394 <__memmove>:
    80008394:	ff010113          	addi	sp,sp,-16
    80008398:	00813423          	sd	s0,8(sp)
    8000839c:	01010413          	addi	s0,sp,16
    800083a0:	0e060863          	beqz	a2,80008490 <__memmove+0xfc>
    800083a4:	fff6069b          	addiw	a3,a2,-1
    800083a8:	0006881b          	sext.w	a6,a3
    800083ac:	0ea5e863          	bltu	a1,a0,8000849c <__memmove+0x108>
    800083b0:	00758713          	addi	a4,a1,7
    800083b4:	00a5e7b3          	or	a5,a1,a0
    800083b8:	40a70733          	sub	a4,a4,a0
    800083bc:	0077f793          	andi	a5,a5,7
    800083c0:	00f73713          	sltiu	a4,a4,15
    800083c4:	00174713          	xori	a4,a4,1
    800083c8:	0017b793          	seqz	a5,a5
    800083cc:	00e7f7b3          	and	a5,a5,a4
    800083d0:	10078863          	beqz	a5,800084e0 <__memmove+0x14c>
    800083d4:	00900793          	li	a5,9
    800083d8:	1107f463          	bgeu	a5,a6,800084e0 <__memmove+0x14c>
    800083dc:	0036581b          	srliw	a6,a2,0x3
    800083e0:	fff8081b          	addiw	a6,a6,-1
    800083e4:	02081813          	slli	a6,a6,0x20
    800083e8:	01d85893          	srli	a7,a6,0x1d
    800083ec:	00858813          	addi	a6,a1,8
    800083f0:	00058793          	mv	a5,a1
    800083f4:	00050713          	mv	a4,a0
    800083f8:	01088833          	add	a6,a7,a6
    800083fc:	0007b883          	ld	a7,0(a5)
    80008400:	00878793          	addi	a5,a5,8
    80008404:	00870713          	addi	a4,a4,8
    80008408:	ff173c23          	sd	a7,-8(a4)
    8000840c:	ff0798e3          	bne	a5,a6,800083fc <__memmove+0x68>
    80008410:	ff867713          	andi	a4,a2,-8
    80008414:	02071793          	slli	a5,a4,0x20
    80008418:	0207d793          	srli	a5,a5,0x20
    8000841c:	00f585b3          	add	a1,a1,a5
    80008420:	40e686bb          	subw	a3,a3,a4
    80008424:	00f507b3          	add	a5,a0,a5
    80008428:	06e60463          	beq	a2,a4,80008490 <__memmove+0xfc>
    8000842c:	0005c703          	lbu	a4,0(a1)
    80008430:	00e78023          	sb	a4,0(a5)
    80008434:	04068e63          	beqz	a3,80008490 <__memmove+0xfc>
    80008438:	0015c603          	lbu	a2,1(a1)
    8000843c:	00100713          	li	a4,1
    80008440:	00c780a3          	sb	a2,1(a5)
    80008444:	04e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008448:	0025c603          	lbu	a2,2(a1)
    8000844c:	00200713          	li	a4,2
    80008450:	00c78123          	sb	a2,2(a5)
    80008454:	02e68e63          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008458:	0035c603          	lbu	a2,3(a1)
    8000845c:	00300713          	li	a4,3
    80008460:	00c781a3          	sb	a2,3(a5)
    80008464:	02e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008468:	0045c603          	lbu	a2,4(a1)
    8000846c:	00400713          	li	a4,4
    80008470:	00c78223          	sb	a2,4(a5)
    80008474:	00e68e63          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008478:	0055c603          	lbu	a2,5(a1)
    8000847c:	00500713          	li	a4,5
    80008480:	00c782a3          	sb	a2,5(a5)
    80008484:	00e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008488:	0065c703          	lbu	a4,6(a1)
    8000848c:	00e78323          	sb	a4,6(a5)
    80008490:	00813403          	ld	s0,8(sp)
    80008494:	01010113          	addi	sp,sp,16
    80008498:	00008067          	ret
    8000849c:	02061713          	slli	a4,a2,0x20
    800084a0:	02075713          	srli	a4,a4,0x20
    800084a4:	00e587b3          	add	a5,a1,a4
    800084a8:	f0f574e3          	bgeu	a0,a5,800083b0 <__memmove+0x1c>
    800084ac:	02069613          	slli	a2,a3,0x20
    800084b0:	02065613          	srli	a2,a2,0x20
    800084b4:	fff64613          	not	a2,a2
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00c78633          	add	a2,a5,a2
    800084c0:	fff7c683          	lbu	a3,-1(a5)
    800084c4:	fff78793          	addi	a5,a5,-1
    800084c8:	fff70713          	addi	a4,a4,-1
    800084cc:	00d70023          	sb	a3,0(a4)
    800084d0:	fec798e3          	bne	a5,a2,800084c0 <__memmove+0x12c>
    800084d4:	00813403          	ld	s0,8(sp)
    800084d8:	01010113          	addi	sp,sp,16
    800084dc:	00008067          	ret
    800084e0:	02069713          	slli	a4,a3,0x20
    800084e4:	02075713          	srli	a4,a4,0x20
    800084e8:	00170713          	addi	a4,a4,1
    800084ec:	00e50733          	add	a4,a0,a4
    800084f0:	00050793          	mv	a5,a0
    800084f4:	0005c683          	lbu	a3,0(a1)
    800084f8:	00178793          	addi	a5,a5,1
    800084fc:	00158593          	addi	a1,a1,1
    80008500:	fed78fa3          	sb	a3,-1(a5)
    80008504:	fee798e3          	bne	a5,a4,800084f4 <__memmove+0x160>
    80008508:	f89ff06f          	j	80008490 <__memmove+0xfc>
	...
