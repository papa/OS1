
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b1013103          	ld	sp,-1264(sp) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	604060ef          	jal	ra,80006620 <start>

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
    80001088:	371020ef          	jal	ra,80003bf8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001578:	54c080e7          	jalr	1356(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    800015a8:	51c080e7          	jalr	1308(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    800015c8:	4fc080e7          	jalr	1276(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015cc:	00048513          	mv	a0,s1
    800015d0:	00002097          	auipc	ra,0x2
    800015d4:	560080e7          	jalr	1376(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015d8:	00008517          	auipc	a0,0x8
    800015dc:	b2850513          	addi	a0,a0,-1240 # 80009100 <CONSOLE_STATUS+0xf0>
    800015e0:	00002097          	auipc	ra,0x2
    800015e4:	4e0080e7          	jalr	1248(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001640:	484080e7          	jalr	1156(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001660:	464080e7          	jalr	1124(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001664:	00048513          	mv	a0,s1
    80001668:	00002097          	auipc	ra,0x2
    8000166c:	4c8080e7          	jalr	1224(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001670:	00008517          	auipc	a0,0x8
    80001674:	a9050513          	addi	a0,a0,-1392 # 80009100 <CONSOLE_STATUS+0xf0>
    80001678:	00002097          	auipc	ra,0x2
    8000167c:	448080e7          	jalr	1096(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    800016e8:	3dc080e7          	jalr	988(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800016ec:	00048513          	mv	a0,s1
    800016f0:	00002097          	auipc	ra,0x2
    800016f4:	440080e7          	jalr	1088(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
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
    80001734:	390080e7          	jalr	912(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001760:	364080e7          	jalr	868(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001764:	00048513          	mv	a0,s1
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	3c8080e7          	jalr	968(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001770:	00008517          	auipc	a0,0x8
    80001774:	99050513          	addi	a0,a0,-1648 # 80009100 <CONSOLE_STATUS+0xf0>
    80001778:	00002097          	auipc	ra,0x2
    8000177c:	348080e7          	jalr	840(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    800017c4:	3c072703          	lw	a4,960(a4) # 8000bb80 <head>
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
    800017e8:	39c48493          	addi	s1,s1,924 # 8000bb80 <head>
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
    80001810:	ed0080e7          	jalr	-304(ra) # 800086dc <__putc>
        sem_signal(spaceAvailable);
    80001814:	0204b503          	ld	a0,32(s1)
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	bf4080e7          	jalr	-1036(ra) # 8000140c <sem_signal>
    while(head!=10)
    80001820:	0000a717          	auipc	a4,0xa
    80001824:	36072703          	lw	a4,864(a4) # 8000bb80 <head>
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
    8000184c:	36072703          	lw	a4,864(a4) # 8000bba8 <tail>
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
    80001870:	31448493          	addi	s1,s1,788 # 8000bb80 <head>
    80001874:	0204b503          	ld	a0,32(s1)
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	b68080e7          	jalr	-1176(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    80001880:	0284a783          	lw	a5,40(s1)
    80001884:	0000a717          	auipc	a4,0xa
    80001888:	0ec70713          	addi	a4,a4,236 # 8000b970 <string>
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
    800018b4:	2f872703          	lw	a4,760(a4) # 8000bba8 <tail>
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
    800018f8:	d6c080e7          	jalr	-660(ra) # 80003660 <_Znwm>
    800018fc:	00050493          	mv	s1,a0
    80001900:	00000613          	li	a2,0
    80001904:	00000597          	auipc	a1,0x0
    80001908:	c8458593          	addi	a1,a1,-892 # 80001588 <_Z15thread1FunctionPv>
    8000190c:	00002097          	auipc	ra,0x2
    80001910:	eec080e7          	jalr	-276(ra) # 800037f8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001914:	00048513          	mv	a0,s1
    80001918:	00002097          	auipc	ra,0x2
    8000191c:	e18080e7          	jalr	-488(ra) # 80003730 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001920:	01000513          	li	a0,16
    80001924:	00002097          	auipc	ra,0x2
    80001928:	d3c080e7          	jalr	-708(ra) # 80003660 <_Znwm>
    8000192c:	00050493          	mv	s1,a0
    80001930:	00000613          	li	a2,0
    80001934:	00000597          	auipc	a1,0x0
    80001938:	cec58593          	addi	a1,a1,-788 # 80001620 <_Z15thread2FunctionPv>
    8000193c:	00002097          	auipc	ra,0x2
    80001940:	ebc080e7          	jalr	-324(ra) # 800037f8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001944:	00048513          	mv	a0,s1
    80001948:	00002097          	auipc	ra,0x2
    8000194c:	de8080e7          	jalr	-536(ra) # 80003730 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001950:	00002097          	auipc	ra,0x2
    80001954:	0e8080e7          	jalr	232(ra) # 80003a38 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001958:	00007517          	auipc	a0,0x7
    8000195c:	71050513          	addi	a0,a0,1808 # 80009068 <CONSOLE_STATUS+0x58>
    80001960:	00002097          	auipc	ra,0x2
    80001964:	160080e7          	jalr	352(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	0f0080e7          	jalr	240(ra) # 80003a58 <_ZN5Riscv17disableInterruptsEv>
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
    80001994:	cf8080e7          	jalr	-776(ra) # 80003688 <_ZdlPv>
    80001998:	00090513          	mv	a0,s2
    8000199c:	0000b097          	auipc	ra,0xb
    800019a0:	38c080e7          	jalr	908(ra) # 8000cd28 <_Unwind_Resume>
    800019a4:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019a8:	00048513          	mv	a0,s1
    800019ac:	00002097          	auipc	ra,0x2
    800019b0:	cdc080e7          	jalr	-804(ra) # 80003688 <_ZdlPv>
    800019b4:	00090513          	mv	a0,s2
    800019b8:	0000b097          	auipc	ra,0xb
    800019bc:	370080e7          	jalr	880(ra) # 8000cd28 <_Unwind_Resume>

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
    800019e0:	c84080e7          	jalr	-892(ra) # 80003660 <_Znwm>
    800019e4:	00050493          	mv	s1,a0
    800019e8:	00000613          	li	a2,0
    800019ec:	00000597          	auipc	a1,0x0
    800019f0:	b7058593          	addi	a1,a1,-1168 # 8000155c <_Z4idlePv>
    800019f4:	00002097          	auipc	ra,0x2
    800019f8:	e04080e7          	jalr	-508(ra) # 800037f8 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019fc:	00048513          	mv	a0,s1
    80001a00:	00002097          	auipc	ra,0x2
    80001a04:	d30080e7          	jalr	-720(ra) # 80003730 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a08:	01000513          	li	a0,16
    80001a0c:	00002097          	auipc	ra,0x2
    80001a10:	c54080e7          	jalr	-940(ra) # 80003660 <_Znwm>
    80001a14:	00050493          	mv	s1,a0
    80001a18:	00000613          	li	a2,0
    80001a1c:	00000597          	auipc	a1,0x0
    80001a20:	b6c58593          	addi	a1,a1,-1172 # 80001588 <_Z15thread1FunctionPv>
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	dd4080e7          	jalr	-556(ra) # 800037f8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	00002097          	auipc	ra,0x2
    80001a34:	d00080e7          	jalr	-768(ra) # 80003730 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a38:	01000513          	li	a0,16
    80001a3c:	00002097          	auipc	ra,0x2
    80001a40:	c24080e7          	jalr	-988(ra) # 80003660 <_Znwm>
    80001a44:	00050493          	mv	s1,a0
    80001a48:	00000613          	li	a2,0
    80001a4c:	00000597          	auipc	a1,0x0
    80001a50:	cc858593          	addi	a1,a1,-824 # 80001714 <_Z20thread2FunctionTest2Pv>
    80001a54:	00002097          	auipc	ra,0x2
    80001a58:	da4080e7          	jalr	-604(ra) # 800037f8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a5c:	00048513          	mv	a0,s1
    80001a60:	00002097          	auipc	ra,0x2
    80001a64:	cd0080e7          	jalr	-816(ra) # 80003730 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a68:	00002097          	auipc	ra,0x2
    80001a6c:	fd0080e7          	jalr	-48(ra) # 80003a38 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001a70:	00007517          	auipc	a0,0x7
    80001a74:	5f850513          	addi	a0,a0,1528 # 80009068 <CONSOLE_STATUS+0x58>
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	048080e7          	jalr	72(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a80:	00002097          	auipc	ra,0x2
    80001a84:	fd8080e7          	jalr	-40(ra) # 80003a58 <_ZN5Riscv17disableInterruptsEv>
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
    80001aac:	be0080e7          	jalr	-1056(ra) # 80003688 <_ZdlPv>
    80001ab0:	00090513          	mv	a0,s2
    80001ab4:	0000b097          	auipc	ra,0xb
    80001ab8:	274080e7          	jalr	628(ra) # 8000cd28 <_Unwind_Resume>
    80001abc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00002097          	auipc	ra,0x2
    80001ac8:	bc4080e7          	jalr	-1084(ra) # 80003688 <_ZdlPv>
    80001acc:	00090513          	mv	a0,s2
    80001ad0:	0000b097          	auipc	ra,0xb
    80001ad4:	258080e7          	jalr	600(ra) # 8000cd28 <_Unwind_Resume>
    80001ad8:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001adc:	00048513          	mv	a0,s1
    80001ae0:	00002097          	auipc	ra,0x2
    80001ae4:	ba8080e7          	jalr	-1112(ra) # 80003688 <_ZdlPv>
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	0000b097          	auipc	ra,0xb
    80001af0:	23c080e7          	jalr	572(ra) # 8000cd28 <_Unwind_Resume>

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
    80001b14:	fb0080e7          	jalr	-80(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001b58:	f6c080e7          	jalr	-148(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001bac:	f18080e7          	jalr	-232(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001bf4:	ed0080e7          	jalr	-304(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001c38:	e8c080e7          	jalr	-372(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
            return;
    80001c3c:	f21ff06f          	j	80001b5c <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c40:	00007517          	auipc	a0,0x7
    80001c44:	44850513          	addi	a0,a0,1096 # 80009088 <CONSOLE_STATUS+0x78>
    80001c48:	00002097          	auipc	ra,0x2
    80001c4c:	e78080e7          	jalr	-392(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001c70:	e54080e7          	jalr	-428(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c74:	0000a797          	auipc	a5,0xa
    80001c78:	ebc7b783          	ld	a5,-324(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001c7c:	0007b503          	ld	a0,0(a5)
    80001c80:	0000a797          	auipc	a5,0xa
    80001c84:	e687b783          	ld	a5,-408(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001cac:	e18080e7          	jalr	-488(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret
        Riscv::printString("OK\n");
    80001cc0:	00007517          	auipc	a0,0x7
    80001cc4:	3c850513          	addi	a0,a0,968 # 80009088 <CONSOLE_STATUS+0x78>
    80001cc8:	00002097          	auipc	ra,0x2
    80001ccc:	df8080e7          	jalr	-520(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001cfc:	dc8080e7          	jalr	-568(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001d48:	dec080e7          	jalr	-532(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d4c:	00007517          	auipc	a0,0x7
    80001d50:	3b450513          	addi	a0,a0,948 # 80009100 <CONSOLE_STATUS+0xf0>
    80001d54:	00002097          	auipc	ra,0x2
    80001d58:	d6c080e7          	jalr	-660(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d5c:	00291793          	slli	a5,s2,0x2
    80001d60:	01278933          	add	s2,a5,s2
    80001d64:	00191913          	slli	s2,s2,0x1
    80001d68:	03390863          	beq	s2,s3,80001d98 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d6c:	00007517          	auipc	a0,0x7
    80001d70:	31450513          	addi	a0,a0,788 # 80009080 <CONSOLE_STATUS+0x70>
    80001d74:	00002097          	auipc	ra,0x2
    80001d78:	d4c080e7          	jalr	-692(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001da4:	d20080e7          	jalr	-736(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001dc8:	cfc080e7          	jalr	-772(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001df4:	cd0080e7          	jalr	-816(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret
        Riscv::printString("OK\n");
    80001e08:	00007517          	auipc	a0,0x7
    80001e0c:	28050513          	addi	a0,a0,640 # 80009088 <CONSOLE_STATUS+0x78>
    80001e10:	00002097          	auipc	ra,0x2
    80001e14:	cb0080e7          	jalr	-848(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001e40:	c84080e7          	jalr	-892(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001e84:	c40080e7          	jalr	-960(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001f0c:	bb8080e7          	jalr	-1096(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
                return;
    80001f10:	f79ff06f          	j	80001e88 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f14:	00007517          	auipc	a0,0x7
    80001f18:	1c450513          	addi	a0,a0,452 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f1c:	00002097          	auipc	ra,0x2
    80001f20:	ba4080e7          	jalr	-1116(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001f84:	b40080e7          	jalr	-1216(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
                return;
    80001f88:	f01ff06f          	j	80001e88 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f8c:	00007517          	auipc	a0,0x7
    80001f90:	14c50513          	addi	a0,a0,332 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f94:	00002097          	auipc	ra,0x2
    80001f98:	b2c080e7          	jalr	-1236(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001fb4:	b10080e7          	jalr	-1264(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80001fd8:	990080e7          	jalr	-1648(ra) # 80003964 <_ZN14PeriodicThreadC1Em>
    80001fdc:	0000a797          	auipc	a5,0xa
    80001fe0:	9e478793          	addi	a5,a5,-1564 # 8000b9c0 <_ZTV12TestPeriodic+0x10>
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
    8000201c:	648080e7          	jalr	1608(ra) # 80003660 <_Znwm>
    80002020:	00050913          	mv	s2,a0
    80002024:	03200593          	li	a1,50
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	f94080e7          	jalr	-108(ra) # 80001fbc <_ZN12TestPeriodicC1Em>
    t->start();
    80002030:	00090513          	mv	a0,s2
    80002034:	00001097          	auipc	ra,0x1
    80002038:	6fc080e7          	jalr	1788(ra) # 80003730 <_ZN6Thread5startEv>
    while(true)
    8000203c:	0000006f          	j	8000203c <_Z11threadTest3v+0x40>
    80002040:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002044:	00090513          	mv	a0,s2
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	640080e7          	jalr	1600(ra) # 80003688 <_ZdlPv>
    80002050:	00048513          	mv	a0,s1
    80002054:	0000b097          	auipc	ra,0xb
    80002058:	cd4080e7          	jalr	-812(ra) # 8000cd28 <_Unwind_Resume>

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
    800020a8:	a1c080e7          	jalr	-1508(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    800020ac:	02c00513          	li	a0,44
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	5b0080e7          	jalr	1456(ra) # 80003660 <_Znwm>
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
    80002134:	558080e7          	jalr	1368(ra) # 80003688 <_ZdlPv>
    delete (uint64*)m3;
    80002138:	000a0513          	mv	a0,s4
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	54c080e7          	jalr	1356(ra) # 80003688 <_ZdlPv>
    delete (uint64*)m4;
    80002144:	000a8513          	mv	a0,s5
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	540080e7          	jalr	1344(ra) # 80003688 <_ZdlPv>
    delete (uint64*)m2;
    80002150:	00098513          	mv	a0,s3
    80002154:	00001097          	auipc	ra,0x1
    80002158:	534080e7          	jalr	1332(ra) # 80003688 <_ZdlPv>
    delete (uint64*)m5;
    8000215c:	000b0513          	mv	a0,s6
    80002160:	00001097          	auipc	ra,0x1
    80002164:	528080e7          	jalr	1320(ra) # 80003688 <_ZdlPv>
    delete o;
    80002168:	00048863          	beqz	s1,80002178 <_Z10mallocTestv+0x104>
    8000216c:	00048513          	mv	a0,s1
    80002170:	00001097          	auipc	ra,0x1
    80002174:	518080e7          	jalr	1304(ra) # 80003688 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80002178:	00007517          	auipc	a0,0x7
    8000217c:	f9050513          	addi	a0,a0,-112 # 80009108 <CONSOLE_STATUS+0xf8>
    80002180:	00002097          	auipc	ra,0x2
    80002184:	940080e7          	jalr	-1728(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    80002188:	0140006f          	j	8000219c <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    8000218c:	00007517          	auipc	a0,0x7
    80002190:	ef450513          	addi	a0,a0,-268 # 80009080 <CONSOLE_STATUS+0x70>
    80002194:	00002097          	auipc	ra,0x2
    80002198:	92c080e7          	jalr	-1748(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    800021e4:	8e0080e7          	jalr	-1824(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    800021e8:	0000a797          	auipc	a5,0xa
    800021ec:	9007b783          	ld	a5,-1792(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021f0:	0007b503          	ld	a0,0(a5)
    800021f4:	0000a797          	auipc	a5,0xa
    800021f8:	93c7b783          	ld	a5,-1732(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x60>
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
    80002220:	8a4080e7          	jalr	-1884(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80002224:	01813083          	ld	ra,24(sp)
    80002228:	01013403          	ld	s0,16(sp)
    8000222c:	00813483          	ld	s1,8(sp)
    80002230:	02010113          	addi	sp,sp,32
    80002234:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002238:	0000a797          	auipc	a5,0xa
    8000223c:	8f87b783          	ld	a5,-1800(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002240:	0007b503          	ld	a0,0(a5)
    80002244:	0000a797          	auipc	a5,0xa
    80002248:	8a47b783          	ld	a5,-1884(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    8000228c:	400080e7          	jalr	1024(ra) # 80003688 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    80002290:	00007517          	auipc	a0,0x7
    80002294:	ed850513          	addi	a0,a0,-296 # 80009168 <CONSOLE_STATUS+0x158>
    80002298:	00002097          	auipc	ra,0x2
    8000229c:	828080e7          	jalr	-2008(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    800022a0:	f85ff06f          	j	80002224 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800022a4:	00007517          	auipc	a0,0x7
    800022a8:	ddc50513          	addi	a0,a0,-548 # 80009080 <CONSOLE_STATUS+0x70>
    800022ac:	00002097          	auipc	ra,0x2
    800022b0:	814080e7          	jalr	-2028(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    800022b4:	f71ff06f          	j	80002224 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	dc850513          	addi	a0,a0,-568 # 80009080 <CONSOLE_STATUS+0x70>
    800022c0:	00002097          	auipc	ra,0x2
    800022c4:	800080e7          	jalr	-2048(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80002304:	00001097          	auipc	ra,0x1
    80002308:	7bc080e7          	jalr	1980(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80002350:	774080e7          	jalr	1908(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80002390:	2fc080e7          	jalr	764(ra) # 80003688 <_ZdlPv>
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
    80002404:	288080e7          	jalr	648(ra) # 80003688 <_ZdlPv>
    delete (uint64*)m[4];
    80002408:	f8043503          	ld	a0,-128(s0)
    8000240c:	00050663          	beqz	a0,80002418 <_Z17mallocGapFillTestv+0x14c>
    80002410:	00001097          	auipc	ra,0x1
    80002414:	278080e7          	jalr	632(ra) # 80003688 <_ZdlPv>
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
    80002460:	664080e7          	jalr	1636(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    80002464:	ef1ff06f          	j	80002354 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002468:	00007517          	auipc	a0,0x7
    8000246c:	c1850513          	addi	a0,a0,-1000 # 80009080 <CONSOLE_STATUS+0x70>
    80002470:	00001097          	auipc	ra,0x1
    80002474:	650080e7          	jalr	1616(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    80002478:	eddff06f          	j	80002354 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    8000247c:	00007517          	auipc	a0,0x7
    80002480:	c0450513          	addi	a0,a0,-1020 # 80009080 <CONSOLE_STATUS+0x70>
    80002484:	00001097          	auipc	ra,0x1
    80002488:	63c080e7          	jalr	1596(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        return;
    8000248c:	ec9ff06f          	j	80002354 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002490:	00007517          	auipc	a0,0x7
    80002494:	bf050513          	addi	a0,a0,-1040 # 80009080 <CONSOLE_STATUS+0x70>
    80002498:	00001097          	auipc	ra,0x1
    8000249c:	628080e7          	jalr	1576(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    800024c8:	1c4080e7          	jalr	452(ra) # 80003688 <_ZdlPv>
    800024cc:	fd9ff06f          	j	800024a4 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800024d0:	00048513          	mv	a0,s1
    800024d4:	00001097          	auipc	ra,0x1
    800024d8:	1b4080e7          	jalr	436(ra) # 80003688 <_ZdlPv>
    delete (uint64*)tmp2;
    800024dc:	00090513          	mv	a0,s2
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	1a8080e7          	jalr	424(ra) # 80003688 <_ZdlPv>
    delete (uint64*)tmp3;
    800024e8:	00098513          	mv	a0,s3
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	19c080e7          	jalr	412(ra) # 80003688 <_ZdlPv>
    delete (uint64*)tmp4;
    800024f4:	000c0513          	mv	a0,s8
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	190080e7          	jalr	400(ra) # 80003688 <_ZdlPv>
    delete (uint64*)tmp5;
    80002500:	000b8513          	mv	a0,s7
    80002504:	00001097          	auipc	ra,0x1
    80002508:	184080e7          	jalr	388(ra) # 80003688 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    8000250c:	00007517          	auipc	a0,0x7
    80002510:	cdc50513          	addi	a0,a0,-804 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002514:	00001097          	auipc	ra,0x1
    80002518:	5ac080e7          	jalr	1452(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
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
    80002560:	64450513          	addi	a0,a0,1604 # 8000bba0 <spaceAvailable>
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	e18080e7          	jalr	-488(ra) # 8000137c <sem_open>

    sem_open(&itemAvailable, 0);
    8000256c:	00000593          	li	a1,0
    80002570:	00009517          	auipc	a0,0x9
    80002574:	61850513          	addi	a0,a0,1560 # 8000bb88 <itemAvailable>
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
    800026ec:	2a878793          	addi	a5,a5,680 # 8000b990 <_ZTV14PeriodicThread+0x10>
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
    80002728:	26c78793          	addi	a5,a5,620 # 8000b990 <_ZTV14PeriodicThread+0x10>
    8000272c:	00f53023          	sd	a5,0(a0)
    80002730:	00001097          	auipc	ra,0x1
    80002734:	ec0080e7          	jalr	-320(ra) # 800035f0 <_ZN6ThreadD1Ev>
    80002738:	00048513          	mv	a0,s1
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	f4c080e7          	jalr	-180(ra) # 80003688 <_ZdlPv>
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
    8000276c:	22878793          	addi	a5,a5,552 # 8000b990 <_ZTV14PeriodicThread+0x10>
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
    800027a8:	1ec78793          	addi	a5,a5,492 # 8000b990 <_ZTV14PeriodicThread+0x10>
    800027ac:	00f53023          	sd	a5,0(a0)
    800027b0:	00001097          	auipc	ra,0x1
    800027b4:	e40080e7          	jalr	-448(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800027b8:	00048513          	mv	a0,s1
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	ecc080e7          	jalr	-308(ra) # 80003688 <_ZdlPv>
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
    800027ec:	2b8080e7          	jalr	696(ra) # 80003aa0 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800027f0:	00009797          	auipc	a5,0x9
    800027f4:	3c07b783          	ld	a5,960(a5) # 8000bbb0 <_ZN3PCB7runningE>
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
    80002894:	bfc080e7          	jalr	-1028(ra) # 8000348c <_ZN9Scheduler3putEP3PCB>
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
    800028c0:	2f44b483          	ld	s1,756(s1) # 8000bbb0 <_ZN3PCB7runningE>

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
    800028d4:	c10080e7          	jalr	-1008(ra) # 800034e0 <_ZN9Scheduler3getEv>
    800028d8:	00009797          	auipc	a5,0x9
    800028dc:	2ca7bc23          	sd	a0,728(a5) # 8000bbb0 <_ZN3PCB7runningE>
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
    80002914:	b7c080e7          	jalr	-1156(ra) # 8000348c <_ZN9Scheduler3putEP3PCB>
    80002918:	fb9ff06f          	j	800028d0 <_ZN3PCB8dispatchEv+0x28>

000000008000291c <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    8000291c:	ff010113          	addi	sp,sp,-16
    80002920:	00113423          	sd	ra,8(sp)
    80002924:	00813023          	sd	s0,0(sp)
    80002928:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000292c:	00002097          	auipc	ra,0x2
    80002930:	a88080e7          	jalr	-1400(ra) # 800043b4 <_Z7kmallocm>
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
    80002958:	ac4080e7          	jalr	-1340(ra) # 80004418 <_Z5kfreePv>
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
    80002984:	a98080e7          	jalr	-1384(ra) # 80004418 <_Z5kfreePv>
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
    800029f4:	af0080e7          	jalr	-1296(ra) # 800034e0 <_ZN9Scheduler3getEv>
    800029f8:	00009797          	auipc	a5,0x9
    800029fc:	1aa7bc23          	sd	a0,440(a5) # 8000bbb0 <_ZN3PCB7runningE>
    80002a00:	00100993          	li	s3,1
    80002a04:	03352c23          	sw	s3,56(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB* consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002a08:	00001537          	lui	a0,0x1
    80002a0c:	00002097          	auipc	ra,0x2
    80002a10:	9a8080e7          	jalr	-1624(ra) # 800043b4 <_Z7kmallocm>
    80002a14:	00050913          	mv	s2,a0
    80002a18:	05000513          	li	a0,80
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	f00080e7          	jalr	-256(ra) # 8000291c <_ZN3PCBnwEm>
    80002a24:	00050493          	mv	s1,a0
    80002a28:	00200713          	li	a4,2
    80002a2c:	00090693          	mv	a3,s2
    80002a30:	00000613          	li	a2,0
    80002a34:	00009597          	auipc	a1,0x9
    80002a38:	0ec5b583          	ld	a1,236(a1) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80002ab0:	014080e7          	jalr	20(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    PCB::timeSliceCounter = 0;
    80002ab4:	00009797          	auipc	a5,0x9
    80002ab8:	0fc78793          	addi	a5,a5,252 # 8000bbb0 <_ZN3PCB7runningE>
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
    80002adc:	500080e7          	jalr	1280(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
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
    80002b04:	0a07bc23          	sd	zero,184(a5) # 8000bbb8 <_ZN3PCB16timeSliceCounterE>
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
    80002b30:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002b34:	00009717          	auipc	a4,0x9
    80002b38:	07c70713          	addi	a4,a4,124 # 8000bbb0 <_ZN3PCB7runningE>
    80002b3c:	00073423          	sd	zero,8(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002b40:	00073703          	ld	a4,0(a4)
    80002b44:	00009697          	auipc	a3,0x9
    80002b48:	fd46b683          	ld	a3,-44(a3) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b4c:	0006b683          	ld	a3,0(a3)
    80002b50:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b54:	00f73c23          	sd	a5,24(a4)
    SleepPCBList::insertSleepingPCB();
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	62c080e7          	jalr	1580(ra) # 80003184 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002b60:	00000097          	auipc	ra,0x0
    80002b64:	d48080e7          	jalr	-696(ra) # 800028a8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002b68:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	46c080e7          	jalr	1132(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b74:	00813083          	ld	ra,8(sp)
    80002b78:	00013403          	ld	s0,0(sp)
    80002b7c:	01010113          	addi	sp,sp,16
    80002b80:	00008067          	ret

0000000080002b84 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002b84:	fd010113          	addi	sp,sp,-48
    80002b88:	02113423          	sd	ra,40(sp)
    80002b8c:	02813023          	sd	s0,32(sp)
    80002b90:	00913c23          	sd	s1,24(sp)
    80002b94:	01213823          	sd	s2,16(sp)
    80002b98:	01313423          	sd	s3,8(sp)
    80002b9c:	01413023          	sd	s4,0(sp)
    80002ba0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002ba4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002ba8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002bac:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002bb0:	05000513          	li	a0,80
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	d68080e7          	jalr	-664(ra) # 8000291c <_ZN3PCBnwEm>
    80002bbc:	00050493          	mv	s1,a0
    80002bc0:	00200713          	li	a4,2
    80002bc4:	00009697          	auipc	a3,0x9
    80002bc8:	ffc6b683          	ld	a3,-4(a3) # 8000bbc0 <_ZN3PCB10savedRegA4E>
    80002bcc:	000a0613          	mv	a2,s4
    80002bd0:	00098593          	mv	a1,s3
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	c48080e7          	jalr	-952(ra) # 8000281c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002bdc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002be0:	02048e63          	beqz	s1,80002c1c <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002be4:	00048513          	mv	a0,s1
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	c98080e7          	jalr	-872(ra) # 80002880 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002bf0:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002bf4:	00001097          	auipc	ra,0x1
    80002bf8:	3e4080e7          	jalr	996(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bfc:	02813083          	ld	ra,40(sp)
    80002c00:	02013403          	ld	s0,32(sp)
    80002c04:	01813483          	ld	s1,24(sp)
    80002c08:	01013903          	ld	s2,16(sp)
    80002c0c:	00813983          	ld	s3,8(sp)
    80002c10:	00013a03          	ld	s4,0(sp)
    80002c14:	03010113          	addi	sp,sp,48
    80002c18:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c1c:	fff00513          	li	a0,-1
    80002c20:	fd5ff06f          	j	80002bf4 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002c24 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00113423          	sd	ra,8(sp)
    80002c2c:	00813023          	sd	s0,0(sp)
    80002c30:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c34:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002c38:	02050463          	beqz	a0,80002c60 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	c44080e7          	jalr	-956(ra) # 80002880 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c44:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002c48:	00001097          	auipc	ra,0x1
    80002c4c:	390080e7          	jalr	912(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c50:	00813083          	ld	ra,8(sp)
    80002c54:	00013403          	ld	s0,0(sp)
    80002c58:	01010113          	addi	sp,sp,16
    80002c5c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c60:	fff00513          	li	a0,-1
    80002c64:	fe5ff06f          	j	80002c48 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002c68 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002c68:	fd010113          	addi	sp,sp,-48
    80002c6c:	02113423          	sd	ra,40(sp)
    80002c70:	02813023          	sd	s0,32(sp)
    80002c74:	00913c23          	sd	s1,24(sp)
    80002c78:	01213823          	sd	s2,16(sp)
    80002c7c:	01313423          	sd	s3,8(sp)
    80002c80:	01413023          	sd	s4,0(sp)
    80002c84:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c88:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c8c:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c90:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c94:	05000513          	li	a0,80
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	c84080e7          	jalr	-892(ra) # 8000291c <_ZN3PCBnwEm>
    80002ca0:	00050493          	mv	s1,a0
    80002ca4:	00200713          	li	a4,2
    80002ca8:	00009697          	auipc	a3,0x9
    80002cac:	f186b683          	ld	a3,-232(a3) # 8000bbc0 <_ZN3PCB10savedRegA4E>
    80002cb0:	000a0613          	mv	a2,s4
    80002cb4:	00098593          	mv	a1,s3
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	b64080e7          	jalr	-1180(ra) # 8000281c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002cc0:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002cc4:	02048863          	beqz	s1,80002cf4 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002cc8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	30c080e7          	jalr	780(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002cd4:	02813083          	ld	ra,40(sp)
    80002cd8:	02013403          	ld	s0,32(sp)
    80002cdc:	01813483          	ld	s1,24(sp)
    80002ce0:	01013903          	ld	s2,16(sp)
    80002ce4:	00813983          	ld	s3,8(sp)
    80002ce8:	00013a03          	ld	s4,0(sp)
    80002cec:	03010113          	addi	sp,sp,48
    80002cf0:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002cf4:	fff00513          	li	a0,-1
    80002cf8:	fd5ff06f          	j	80002ccc <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002cfc <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
uint64 KConsole::pendingGetc = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002cfc:	fd010113          	addi	sp,sp,-48
    80002d00:	02113423          	sd	ra,40(sp)
    80002d04:	02813023          	sd	s0,32(sp)
    80002d08:	00913c23          	sd	s1,24(sp)
    80002d0c:	01213823          	sd	s2,16(sp)
    80002d10:	01313423          	sd	s3,8(sp)
    80002d14:	03010413          	addi	s0,sp,48
    80002d18:	00050993          	mv	s3,a0
    80002d1c:	00058913          	mv	s2,a1
    80002d20:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002d24:	01000513          	li	a0,16
    80002d28:	00001097          	auipc	ra,0x1
    80002d2c:	68c080e7          	jalr	1676(ra) # 800043b4 <_Z7kmallocm>
    newElem->next = 0;
    80002d30:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002d34:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002d38:	00093783          	ld	a5,0(s2)
    80002d3c:	02078663          	beqz	a5,80002d68 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002d40:	0004b783          	ld	a5,0(s1)
    80002d44:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002d48:	00a4b023          	sd	a0,0(s1)
    }
}
    80002d4c:	02813083          	ld	ra,40(sp)
    80002d50:	02013403          	ld	s0,32(sp)
    80002d54:	01813483          	ld	s1,24(sp)
    80002d58:	01013903          	ld	s2,16(sp)
    80002d5c:	00813983          	ld	s3,8(sp)
    80002d60:	03010113          	addi	sp,sp,48
    80002d64:	00008067          	ret
        head = tail = newElem;
    80002d68:	00a4b023          	sd	a0,0(s1)
    80002d6c:	00a93023          	sd	a0,0(s2)
    80002d70:	fddff06f          	j	80002d4c <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002d74 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002d74:	fe010113          	addi	sp,sp,-32
    80002d78:	00113c23          	sd	ra,24(sp)
    80002d7c:	00813823          	sd	s0,16(sp)
    80002d80:	00913423          	sd	s1,8(sp)
    80002d84:	02010413          	addi	s0,sp,32
    80002d88:	00050793          	mv	a5,a0
    if(head == 0)
    80002d8c:	00053503          	ld	a0,0(a0)
    80002d90:	02050e63          	beqz	a0,80002dcc <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002d94:	00053703          	ld	a4,0(a0)
    80002d98:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002d9c:	02070463          	beqz	a4,80002dc4 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002da0:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002da4:	00001097          	auipc	ra,0x1
    80002da8:	674080e7          	jalr	1652(ra) # 80004418 <_Z5kfreePv>
    return c;
}
    80002dac:	00048513          	mv	a0,s1
    80002db0:	01813083          	ld	ra,24(sp)
    80002db4:	01013403          	ld	s0,16(sp)
    80002db8:	00813483          	ld	s1,8(sp)
    80002dbc:	02010113          	addi	sp,sp,32
    80002dc0:	00008067          	ret
        tail = 0;
    80002dc4:	0005b023          	sd	zero,0(a1)
    80002dc8:	fd9ff06f          	j	80002da0 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002dcc:	00000493          	li	s1,0
    80002dd0:	fddff06f          	j	80002dac <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002dd4 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002dd4:	fe010113          	addi	sp,sp,-32
    80002dd8:	00113c23          	sd	ra,24(sp)
    80002ddc:	00813823          	sd	s0,16(sp)
    80002de0:	00913423          	sd	s1,8(sp)
    80002de4:	01213023          	sd	s2,0(sp)
    80002de8:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002dec:	01800513          	li	a0,24
    80002df0:	00002097          	auipc	ra,0x2
    80002df4:	8d8080e7          	jalr	-1832(ra) # 800046c8 <_ZN10KSemaphorenwEm>
    80002df8:	00050493          	mv	s1,a0
    80002dfc:	00000593          	li	a1,0
    80002e00:	00001097          	auipc	ra,0x1
    80002e04:	678080e7          	jalr	1656(ra) # 80004478 <_ZN10KSemaphoreC1Ei>
    80002e08:	00009797          	auipc	a5,0x9
    80002e0c:	dc97b023          	sd	s1,-576(a5) # 8000bbc8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002e10:	01800513          	li	a0,24
    80002e14:	00002097          	auipc	ra,0x2
    80002e18:	8b4080e7          	jalr	-1868(ra) # 800046c8 <_ZN10KSemaphorenwEm>
    80002e1c:	00050493          	mv	s1,a0
    80002e20:	00000593          	li	a1,0
    80002e24:	00001097          	auipc	ra,0x1
    80002e28:	654080e7          	jalr	1620(ra) # 80004478 <_ZN10KSemaphoreC1Ei>
    80002e2c:	00009797          	auipc	a5,0x9
    80002e30:	da97b223          	sd	s1,-604(a5) # 8000bbd0 <_ZN8KConsole19hasCharactersOutputE>
}
    80002e34:	01813083          	ld	ra,24(sp)
    80002e38:	01013403          	ld	s0,16(sp)
    80002e3c:	00813483          	ld	s1,8(sp)
    80002e40:	00013903          	ld	s2,0(sp)
    80002e44:	02010113          	addi	sp,sp,32
    80002e48:	00008067          	ret
    80002e4c:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002e50:	00048513          	mv	a0,s1
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	90c080e7          	jalr	-1780(ra) # 80004760 <_ZN10KSemaphoredlEPv>
    80002e5c:	00090513          	mv	a0,s2
    80002e60:	0000a097          	auipc	ra,0xa
    80002e64:	ec8080e7          	jalr	-312(ra) # 8000cd28 <_Unwind_Resume>
    80002e68:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e6c:	00048513          	mv	a0,s1
    80002e70:	00002097          	auipc	ra,0x2
    80002e74:	8f0080e7          	jalr	-1808(ra) # 80004760 <_ZN10KSemaphoredlEPv>
    80002e78:	00090513          	mv	a0,s2
    80002e7c:	0000a097          	auipc	ra,0xa
    80002e80:	eac080e7          	jalr	-340(ra) # 8000cd28 <_Unwind_Resume>

0000000080002e84 <_ZN8KConsole17putCharacterInputEc>:
                thread_dispatch();
    }
}

void KConsole::putCharacterInput(char c)
{
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00113423          	sd	ra,8(sp)
    80002e8c:	00813023          	sd	s0,0(sp)
    80002e90:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002e94:	00009617          	auipc	a2,0x9
    80002e98:	d4460613          	addi	a2,a2,-700 # 8000bbd8 <_ZN8KConsole9tailInputE>
    80002e9c:	00009597          	auipc	a1,0x9
    80002ea0:	d4458593          	addi	a1,a1,-700 # 8000bbe0 <_ZN8KConsole9headInputE>
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	e58080e7          	jalr	-424(ra) # 80002cfc <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002eac:	00009517          	auipc	a0,0x9
    80002eb0:	d1c53503          	ld	a0,-740(a0) # 8000bbc8 <_ZN8KConsole18hasCharactersInputE>
    80002eb4:	00001097          	auipc	ra,0x1
    80002eb8:	7cc080e7          	jalr	1996(ra) # 80004680 <_ZN10KSemaphore6signalEv>
}
    80002ebc:	00813083          	ld	ra,8(sp)
    80002ec0:	00013403          	ld	s0,0(sp)
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00008067          	ret

0000000080002ecc <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002ecc:	ff010113          	addi	sp,sp,-16
    80002ed0:	00113423          	sd	ra,8(sp)
    80002ed4:	00813023          	sd	s0,0(sp)
    80002ed8:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002edc:	00009517          	auipc	a0,0x9
    80002ee0:	cec53503          	ld	a0,-788(a0) # 8000bbc8 <_ZN8KConsole18hasCharactersInputE>
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	63c080e7          	jalr	1596(ra) # 80004520 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002eec:	00009597          	auipc	a1,0x9
    80002ef0:	cec58593          	addi	a1,a1,-788 # 8000bbd8 <_ZN8KConsole9tailInputE>
    80002ef4:	00009517          	auipc	a0,0x9
    80002ef8:	cec50513          	addi	a0,a0,-788 # 8000bbe0 <_ZN8KConsole9headInputE>
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	e78080e7          	jalr	-392(ra) # 80002d74 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002f04:	00813083          	ld	ra,8(sp)
    80002f08:	00013403          	ld	s0,0(sp)
    80002f0c:	01010113          	addi	sp,sp,16
    80002f10:	00008067          	ret

0000000080002f14 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002f14:	ff010113          	addi	sp,sp,-16
    80002f18:	00113423          	sd	ra,8(sp)
    80002f1c:	00813023          	sd	s0,0(sp)
    80002f20:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002f24:	00009617          	auipc	a2,0x9
    80002f28:	cc460613          	addi	a2,a2,-828 # 8000bbe8 <_ZN8KConsole10tailOutputE>
    80002f2c:	00009597          	auipc	a1,0x9
    80002f30:	cc458593          	addi	a1,a1,-828 # 8000bbf0 <_ZN8KConsole10headOutputE>
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	dc8080e7          	jalr	-568(ra) # 80002cfc <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002f3c:	00009517          	auipc	a0,0x9
    80002f40:	c9453503          	ld	a0,-876(a0) # 8000bbd0 <_ZN8KConsole19hasCharactersOutputE>
    80002f44:	00001097          	auipc	ra,0x1
    80002f48:	73c080e7          	jalr	1852(ra) # 80004680 <_ZN10KSemaphore6signalEv>
}
    80002f4c:	00813083          	ld	ra,8(sp)
    80002f50:	00013403          	ld	s0,0(sp)
    80002f54:	01010113          	addi	sp,sp,16
    80002f58:	00008067          	ret

0000000080002f5c <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002f5c:	00009797          	auipc	a5,0x9
    80002f60:	b847b783          	ld	a5,-1148(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f64:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002f68:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002f6c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002f70:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002f74:	0017f793          	andi	a5,a5,1
    80002f78:	08078063          	beqz	a5,80002ff8 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002f7c:	fe010113          	addi	sp,sp,-32
    80002f80:	00113c23          	sd	ra,24(sp)
    80002f84:	00813823          	sd	s0,16(sp)
    80002f88:	00913423          	sd	s1,8(sp)
    80002f8c:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002f90:	00009797          	auipc	a5,0x9
    80002f94:	b707b783          	ld	a5,-1168(a5) # 8000bb00 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f98:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002f9c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002fa0:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002fa4:	00058493          	mv	s1,a1
    80002fa8:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002fac:	00048513          	mv	a0,s1
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	ed4080e7          	jalr	-300(ra) # 80002e84 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002fb8:	00048513          	mv	a0,s1
    80002fbc:	00000097          	auipc	ra,0x0
    80002fc0:	f58080e7          	jalr	-168(ra) # 80002f14 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002fc4:	00009797          	auipc	a5,0x9
    80002fc8:	b1c7b783          	ld	a5,-1252(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fcc:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002fd0:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fd4:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fd8:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fdc:	0017f793          	andi	a5,a5,1
    80002fe0:	fa0798e3          	bnez	a5,80002f90 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002fe4:	01813083          	ld	ra,24(sp)
    80002fe8:	01013403          	ld	s0,16(sp)
    80002fec:	00813483          	ld	s1,8(sp)
    80002ff0:	02010113          	addi	sp,sp,32
    80002ff4:	00008067          	ret
    80002ff8:	00008067          	ret

0000000080002ffc <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00113423          	sd	ra,8(sp)
    80003004:	00813023          	sd	s0,0(sp)
    80003008:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    8000300c:	00009517          	auipc	a0,0x9
    80003010:	bc453503          	ld	a0,-1084(a0) # 8000bbd0 <_ZN8KConsole19hasCharactersOutputE>
    80003014:	00001097          	auipc	ra,0x1
    80003018:	50c080e7          	jalr	1292(ra) # 80004520 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    8000301c:	00009597          	auipc	a1,0x9
    80003020:	bcc58593          	addi	a1,a1,-1076 # 8000bbe8 <_ZN8KConsole10tailOutputE>
    80003024:	00009517          	auipc	a0,0x9
    80003028:	bcc50513          	addi	a0,a0,-1076 # 8000bbf0 <_ZN8KConsole10headOutputE>
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	d48080e7          	jalr	-696(ra) # 80002d74 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80003034:	00813083          	ld	ra,8(sp)
    80003038:	00013403          	ld	s0,0(sp)
    8000303c:	01010113          	addi	sp,sp,16
    80003040:	00008067          	ret

0000000080003044 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003044:	fe010113          	addi	sp,sp,-32
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	00813823          	sd	s0,16(sp)
    80003050:	02010413          	addi	s0,sp,32
    80003054:	00c0006f          	j	80003060 <_ZN8KConsole23sendCharactersToConsoleEPv+0x1c>
                thread_dispatch();
    80003058:	ffffe097          	auipc	ra,0xffffe
    8000305c:	2dc080e7          	jalr	732(ra) # 80001334 <thread_dispatch>
            uint64 x = CONSOLE_STATUS;
    80003060:	00009797          	auipc	a5,0x9
    80003064:	a807b783          	ld	a5,-1408(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003068:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    8000306c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003070:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003074:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    80003078:	0207f793          	andi	a5,a5,32
    8000307c:	fc078ee3          	beqz	a5,80003058 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                char volatile c = getCharacterOutput();
    80003080:	00000097          	auipc	ra,0x0
    80003084:	f7c080e7          	jalr	-132(ra) # 80002ffc <_ZN8KConsole18getCharacterOutputEv>
    80003088:	fea407a3          	sb	a0,-17(s0)
                x = CONSOLE_RX_DATA;
    8000308c:	00009797          	auipc	a5,0x9
    80003090:	a4c7b783          	ld	a5,-1460(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003094:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003098:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    8000309c:	fef44783          	lbu	a5,-17(s0)
    800030a0:	0ff7f793          	andi	a5,a5,255
    800030a4:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    800030a8:	00b50023          	sb	a1,0(a0)
    800030ac:	fb5ff06f          	j	80003060 <_ZN8KConsole23sendCharactersToConsoleEPv+0x1c>

00000000800030b0 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800030b0:	ff010113          	addi	sp,sp,-16
    800030b4:	00113423          	sd	ra,8(sp)
    800030b8:	00813023          	sd	s0,0(sp)
    800030bc:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800030c0:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800030c4:	0ff57513          	andi	a0,a0,255
    800030c8:	00000097          	auipc	ra,0x0
    800030cc:	e4c080e7          	jalr	-436(ra) # 80002f14 <_ZN8KConsole18putCharacterOutputEc>
    Elem* curr = headOutput;
    800030d0:	00009797          	auipc	a5,0x9
    800030d4:	b207b783          	ld	a5,-1248(a5) # 8000bbf0 <_ZN8KConsole10headOutputE>
    while(curr != 0)
    800030d8:	00078663          	beqz	a5,800030e4 <_ZN8KConsole11putcHandlerEv+0x34>
    {
        curr = curr->next;
    800030dc:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800030e0:	ff9ff06f          	j	800030d8 <_ZN8KConsole11putcHandlerEv+0x28>
    }
}
    800030e4:	00813083          	ld	ra,8(sp)
    800030e8:	00013403          	ld	s0,0(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret

00000000800030f4 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030f4:	ff010113          	addi	sp,sp,-16
    800030f8:	00113423          	sd	ra,8(sp)
    800030fc:	00813023          	sd	s0,0(sp)
    80003100:	01010413          	addi	s0,sp,16
    pendingGetc++;
    80003104:	00009717          	auipc	a4,0x9
    80003108:	ac470713          	addi	a4,a4,-1340 # 8000bbc8 <_ZN8KConsole18hasCharactersInputE>
    8000310c:	03073783          	ld	a5,48(a4)
    80003110:	00178793          	addi	a5,a5,1
    80003114:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	db4080e7          	jalr	-588(ra) # 80002ecc <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003120:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003124:	00001097          	auipc	ra,0x1
    80003128:	eb4080e7          	jalr	-332(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000312c:	00813083          	ld	ra,8(sp)
    80003130:	00013403          	ld	s0,0(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret

000000008000313c <_ZN8KConsole11printBufferEv>:

void KConsole::printBuffer()
{
    8000313c:	fe010113          	addi	sp,sp,-32
    80003140:	00113c23          	sd	ra,24(sp)
    80003144:	00813823          	sd	s0,16(sp)
    80003148:	00913423          	sd	s1,8(sp)
    8000314c:	02010413          	addi	s0,sp,32
    Elem* curr = headInput;
    80003150:	00009497          	auipc	s1,0x9
    80003154:	a904b483          	ld	s1,-1392(s1) # 8000bbe0 <_ZN8KConsole9headInputE>
    while(curr != 0)
    80003158:	00048c63          	beqz	s1,80003170 <_ZN8KConsole11printBufferEv+0x34>
    {
        putc(curr->data);
    8000315c:	0084c503          	lbu	a0,8(s1)
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	3d8080e7          	jalr	984(ra) # 80001538 <putc>
        curr = curr->next;
    80003168:	0004b483          	ld	s1,0(s1)
    while(curr != 0)
    8000316c:	fedff06f          	j	80003158 <_ZN8KConsole11printBufferEv+0x1c>
    }
}
    80003170:	01813083          	ld	ra,24(sp)
    80003174:	01013403          	ld	s0,16(sp)
    80003178:	00813483          	ld	s1,8(sp)
    8000317c:	02010113          	addi	sp,sp,32
    80003180:	00008067          	ret

0000000080003184 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003184:	ff010113          	addi	sp,sp,-16
    80003188:	00813423          	sd	s0,8(sp)
    8000318c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003190:	00009797          	auipc	a5,0x9
    80003194:	9987b783          	ld	a5,-1640(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003198:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    8000319c:	00500793          	li	a5,5
    800031a0:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800031a4:	00009797          	auipc	a5,0x9
    800031a8:	a5c7b783          	ld	a5,-1444(a5) # 8000bc00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800031ac:	00000593          	li	a1,0
    while(curr != 0)
    800031b0:	02078063          	beqz	a5,800031d0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031b4:	01863683          	ld	a3,24(a2)
    800031b8:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800031bc:	00e6e863          	bltu	a3,a4,800031cc <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800031c0:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800031c4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031c8:	fe9ff06f          	j	800031b0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800031cc:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800031d0:	00058a63          	beqz	a1,800031e4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        //    sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        //PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
        prev->nextPCB = PCB::running;
    800031d4:	00c5b423          	sd	a2,8(a1)
    }
}
    800031d8:	00813403          	ld	s0,8(sp)
    800031dc:	01010113          	addi	sp,sp,16
    800031e0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800031e4:	00009797          	auipc	a5,0x9
    800031e8:	a0c7be23          	sd	a2,-1508(a5) # 8000bc00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800031ec:	fedff06f          	j	800031d8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800031f0 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800031f0:	00009517          	auipc	a0,0x9
    800031f4:	a1053503          	ld	a0,-1520(a0) # 8000bc00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800031f8:	06050e63          	beqz	a0,80003274 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800031fc:	06050c63          	beqz	a0,80003274 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003200:	01853783          	ld	a5,24(a0)
    80003204:	00009717          	auipc	a4,0x9
    80003208:	91473703          	ld	a4,-1772(a4) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000320c:	00073703          	ld	a4,0(a4)
    80003210:	06f76263          	bltu	a4,a5,80003274 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003214:	fe010113          	addi	sp,sp,-32
    80003218:	00113c23          	sd	ra,24(sp)
    8000321c:	00813823          	sd	s0,16(sp)
    80003220:	00913423          	sd	s1,8(sp)
    80003224:	02010413          	addi	s0,sp,32
    80003228:	0180006f          	j	80003240 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    8000322c:	0184b783          	ld	a5,24(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003230:	00009717          	auipc	a4,0x9
    80003234:	8e873703          	ld	a4,-1816(a4) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003238:	00073703          	ld	a4,0(a4)
    8000323c:	02f76263          	bltu	a4,a5,80003260 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003240:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003244:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	244080e7          	jalr	580(ra) # 8000348c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003250:	00009797          	auipc	a5,0x9
    80003254:	9a97b823          	sd	s1,-1616(a5) # 8000bc00 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003258:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000325c:	fc0498e3          	bnez	s1,8000322c <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003260:	01813083          	ld	ra,24(sp)
    80003264:	01013403          	ld	s0,16(sp)
    80003268:	00813483          	ld	s1,8(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret
    80003274:	00008067          	ret

0000000080003278 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003278:	fe010113          	addi	sp,sp,-32
    8000327c:	00113c23          	sd	ra,24(sp)
    80003280:	00813823          	sd	s0,16(sp)
    80003284:	00913423          	sd	s1,8(sp)
    80003288:	01213023          	sd	s2,0(sp)
    8000328c:	02010413          	addi	s0,sp,32
    80003290:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80003294:	00053503          	ld	a0,0(a0)
    80003298:	00853903          	ld	s2,8(a0)
    kfree(first);
    8000329c:	00001097          	auipc	ra,0x1
    800032a0:	17c080e7          	jalr	380(ra) # 80004418 <_Z5kfreePv>
    first = newFirst;
    800032a4:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800032a8:	00090e63          	beqz	s2,800032c4 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800032ac:	01813083          	ld	ra,24(sp)
    800032b0:	01013403          	ld	s0,16(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	00013903          	ld	s2,0(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret
        first = last = 0;
    800032c4:	0004b423          	sd	zero,8(s1)
    800032c8:	0004b023          	sd	zero,0(s1)
}
    800032cc:	fe1ff06f          	j	800032ac <_ZN5Queue3popEv+0x34>

00000000800032d0 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    800032d0:	fe010113          	addi	sp,sp,-32
    800032d4:	00113c23          	sd	ra,24(sp)
    800032d8:	00813823          	sd	s0,16(sp)
    800032dc:	00913423          	sd	s1,8(sp)
    800032e0:	01213023          	sd	s2,0(sp)
    800032e4:	02010413          	addi	s0,sp,32
    800032e8:	00050493          	mv	s1,a0
    800032ec:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800032f0:	01000513          	li	a0,16
    800032f4:	00001097          	auipc	ra,0x1
    800032f8:	0c0080e7          	jalr	192(ra) # 800043b4 <_Z7kmallocm>
    newElem->data = t;
    800032fc:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80003300:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80003304:	0004b783          	ld	a5,0(s1)
    80003308:	02078463          	beqz	a5,80003330 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    8000330c:	0084b783          	ld	a5,8(s1)
    80003310:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80003314:	00a4b423          	sd	a0,8(s1)
    }
}
    80003318:	01813083          	ld	ra,24(sp)
    8000331c:	01013403          	ld	s0,16(sp)
    80003320:	00813483          	ld	s1,8(sp)
    80003324:	00013903          	ld	s2,0(sp)
    80003328:	02010113          	addi	sp,sp,32
    8000332c:	00008067          	ret
        first = newElem;
    80003330:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80003334:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003338:	00053423          	sd	zero,8(a0)
    8000333c:	0004b783          	ld	a5,0(s1)
    80003340:	0007b423          	sd	zero,8(a5)
    80003344:	fd5ff06f          	j	80003318 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003348 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00813423          	sd	s0,8(sp)
    80003350:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003354:	00053503          	ld	a0,0(a0)
    80003358:	00050463          	beqz	a0,80003360 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    8000335c:	00053503          	ld	a0,0(a0)
}
    80003360:	00813403          	ld	s0,8(sp)
    80003364:	01010113          	addi	sp,sp,16
    80003368:	00008067          	ret

000000008000336c <_ZN5QueueC1Ev>:

Queue::Queue()
    8000336c:	ff010113          	addi	sp,sp,-16
    80003370:	00813423          	sd	s0,8(sp)
    80003374:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    80003378:	00053423          	sd	zero,8(a0)
    8000337c:	00053023          	sd	zero,0(a0)
}
    80003380:	00813403          	ld	s0,8(sp)
    80003384:	01010113          	addi	sp,sp,16
    80003388:	00008067          	ret

000000008000338c <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    8000338c:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80003390:	04050063          	beqz	a0,800033d0 <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    80003394:	fe010113          	addi	sp,sp,-32
    80003398:	00113c23          	sd	ra,24(sp)
    8000339c:	00813823          	sd	s0,16(sp)
    800033a0:	00913423          	sd	s1,8(sp)
    800033a4:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800033a8:	00853483          	ld	s1,8(a0)
        kfree(old);
    800033ac:	00001097          	auipc	ra,0x1
    800033b0:	06c080e7          	jalr	108(ra) # 80004418 <_Z5kfreePv>
        curr = curr->next;
    800033b4:	00048513          	mv	a0,s1
    while(curr != 0)
    800033b8:	fe0498e3          	bnez	s1,800033a8 <_ZN5QueueD1Ev+0x1c>
    }
}
    800033bc:	01813083          	ld	ra,24(sp)
    800033c0:	01013403          	ld	s0,16(sp)
    800033c4:	00813483          	ld	s1,8(sp)
    800033c8:	02010113          	addi	sp,sp,32
    800033cc:	00008067          	ret
    800033d0:	00008067          	ret

00000000800033d4 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00813423          	sd	s0,8(sp)
    800033dc:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800033e0:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800033e4:	00000513          	li	a0,0
    while(curr != 0)
    800033e8:	00078863          	beqz	a5,800033f8 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800033ec:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800033f0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800033f4:	ff5ff06f          	j	800033e8 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00113423          	sd	ra,8(sp)
    8000340c:	00813023          	sd	s0,0(sp)
    80003410:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003414:	00001097          	auipc	ra,0x1
    80003418:	fa0080e7          	jalr	-96(ra) # 800043b4 <_Z7kmallocm>
}
    8000341c:	00813083          	ld	ra,8(sp)
    80003420:	00013403          	ld	s0,0(sp)
    80003424:	01010113          	addi	sp,sp,16
    80003428:	00008067          	ret

000000008000342c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    8000342c:	ff010113          	addi	sp,sp,-16
    80003430:	00113423          	sd	ra,8(sp)
    80003434:	00813023          	sd	s0,0(sp)
    80003438:	01010413          	addi	s0,sp,16
    kfree(p);
    8000343c:	00001097          	auipc	ra,0x1
    80003440:	fdc080e7          	jalr	-36(ra) # 80004418 <_Z5kfreePv>
}
    80003444:	00813083          	ld	ra,8(sp)
    80003448:	00013403          	ld	s0,0(sp)
    8000344c:	01010113          	addi	sp,sp,16
    80003450:	00008067          	ret

0000000080003454 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003454:	ff010113          	addi	sp,sp,-16
    80003458:	00813423          	sd	s0,8(sp)
    8000345c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003460:	00008797          	auipc	a5,0x8
    80003464:	7a87b783          	ld	a5,1960(a5) # 8000bc08 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003468:	00000513          	li	a0,0
    while(curr != 0)
    8000346c:	00078863          	beqz	a5,8000347c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003470:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003474:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003478:	ff5ff06f          	j	8000346c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000347c:	0005051b          	sext.w	a0,a0
    80003480:	00813403          	ld	s0,8(sp)
    80003484:	01010113          	addi	sp,sp,16
    80003488:	00008067          	ret

000000008000348c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00813423          	sd	s0,8(sp)
    80003494:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003498:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000349c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800034a0:	00008797          	auipc	a5,0x8
    800034a4:	7687b783          	ld	a5,1896(a5) # 8000bc08 <_ZN9Scheduler16schedulerPCBHeadE>
    800034a8:	02078263          	beqz	a5,800034cc <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800034ac:	00008797          	auipc	a5,0x8
    800034b0:	75c78793          	addi	a5,a5,1884 # 8000bc08 <_ZN9Scheduler16schedulerPCBHeadE>
    800034b4:	0087b703          	ld	a4,8(a5)
    800034b8:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800034bc:	00a7b423          	sd	a0,8(a5)
    }
}
    800034c0:	00813403          	ld	s0,8(sp)
    800034c4:	01010113          	addi	sp,sp,16
    800034c8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800034cc:	00008797          	auipc	a5,0x8
    800034d0:	73c78793          	addi	a5,a5,1852 # 8000bc08 <_ZN9Scheduler16schedulerPCBHeadE>
    800034d4:	00a7b423          	sd	a0,8(a5)
    800034d8:	00a7b023          	sd	a0,0(a5)
    800034dc:	fe5ff06f          	j	800034c0 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800034e0 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800034e0:	ff010113          	addi	sp,sp,-16
    800034e4:	00813423          	sd	s0,8(sp)
    800034e8:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800034ec:	00008517          	auipc	a0,0x8
    800034f0:	71c53503          	ld	a0,1820(a0) # 8000bc08 <_ZN9Scheduler16schedulerPCBHeadE>
    800034f4:	00050c63          	beqz	a0,8000350c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800034f8:	00853783          	ld	a5,8(a0)
    800034fc:	00078e63          	beqz	a5,80003518 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003500:	00008717          	auipc	a4,0x8
    80003504:	70f73423          	sd	a5,1800(a4) # 8000bc08 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003508:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000350c:	00813403          	ld	s0,8(sp)
    80003510:	01010113          	addi	sp,sp,16
    80003514:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003518:	00008797          	auipc	a5,0x8
    8000351c:	6f078793          	addi	a5,a5,1776 # 8000bc08 <_ZN9Scheduler16schedulerPCBHeadE>
    80003520:	0007b423          	sd	zero,8(a5)
    80003524:	0007b023          	sd	zero,0(a5)
    80003528:	fe1ff06f          	j	80003508 <_ZN9Scheduler3getEv+0x28>

000000008000352c <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    8000352c:	fe010113          	addi	sp,sp,-32
    80003530:	00113c23          	sd	ra,24(sp)
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    80003540:	00006517          	auipc	a0,0x6
    80003544:	d1850513          	addi	a0,a0,-744 # 80009258 <CONSOLE_STATUS+0x248>
    80003548:	00000097          	auipc	ra,0x0
    8000354c:	578080e7          	jalr	1400(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    80003550:	00008497          	auipc	s1,0x8
    80003554:	6b84b483          	ld	s1,1720(s1) # 8000bc08 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003558:	02048863          	beqz	s1,80003588 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    8000355c:	00000613          	li	a2,0
    80003560:	01000593          	li	a1,16
    80003564:	0004851b          	sext.w	a0,s1
    80003568:	00003097          	auipc	ra,0x3
    8000356c:	8c8080e7          	jalr	-1848(ra) # 80005e30 <_Z8printIntiii>
        Riscv::printString("\n");
    80003570:	00006517          	auipc	a0,0x6
    80003574:	b9050513          	addi	a0,a0,-1136 # 80009100 <CONSOLE_STATUS+0xf0>
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	548080e7          	jalr	1352(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
        curr = curr->nextPCB;
    80003580:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003584:	fd5ff06f          	j	80003558 <_ZN9Scheduler5printEv+0x2c>
    }
}
    80003588:	01813083          	ld	ra,24(sp)
    8000358c:	01013403          	ld	s0,16(sp)
    80003590:	00813483          	ld	s1,8(sp)
    80003594:	02010113          	addi	sp,sp,32
    80003598:	00008067          	ret

000000008000359c <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    8000359c:	ff010113          	addi	sp,sp,-16
    800035a0:	00113423          	sd	ra,8(sp)
    800035a4:	00813023          	sd	s0,0(sp)
    800035a8:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800035ac:	00001097          	auipc	ra,0x1
    800035b0:	8f4080e7          	jalr	-1804(ra) # 80003ea0 <_ZN5Riscv10kernelMainEv>
    800035b4:	00813083          	ld	ra,8(sp)
    800035b8:	00013403          	ld	s0,0(sp)
    800035bc:	01010113          	addi	sp,sp,16
    800035c0:	00008067          	ret

00000000800035c4 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00113423          	sd	ra,8(sp)
    800035cc:	00813023          	sd	s0,0(sp)
    800035d0:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800035d4:	00053783          	ld	a5,0(a0)
    800035d8:	0107b783          	ld	a5,16(a5)
    800035dc:	000780e7          	jalr	a5
}
    800035e0:	00813083          	ld	ra,8(sp)
    800035e4:	00013403          	ld	s0,0(sp)
    800035e8:	01010113          	addi	sp,sp,16
    800035ec:	00008067          	ret

00000000800035f0 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800035f0:	ff010113          	addi	sp,sp,-16
    800035f4:	00113423          	sd	ra,8(sp)
    800035f8:	00813023          	sd	s0,0(sp)
    800035fc:	01010413          	addi	s0,sp,16
    80003600:	00008797          	auipc	a5,0x8
    80003604:	3f878793          	addi	a5,a5,1016 # 8000b9f8 <_ZTV6Thread+0x10>
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
    8000363c:	3e878793          	addi	a5,a5,1000 # 8000ba20 <_ZTV9Semaphore+0x10>
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

0000000080003660 <_Znwm>:
{
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00113423          	sd	ra,8(sp)
    80003668:	00813023          	sd	s0,0(sp)
    8000366c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	be8080e7          	jalr	-1048(ra) # 80001258 <mem_alloc>
}
    80003678:	00813083          	ld	ra,8(sp)
    8000367c:	00013403          	ld	s0,0(sp)
    80003680:	01010113          	addi	sp,sp,16
    80003684:	00008067          	ret

0000000080003688 <_ZdlPv>:
{
    80003688:	ff010113          	addi	sp,sp,-16
    8000368c:	00113423          	sd	ra,8(sp)
    80003690:	00813023          	sd	s0,0(sp)
    80003694:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	bf0080e7          	jalr	-1040(ra) # 80001288 <mem_free>
}
    800036a0:	00813083          	ld	ra,8(sp)
    800036a4:	00013403          	ld	s0,0(sp)
    800036a8:	01010113          	addi	sp,sp,16
    800036ac:	00008067          	ret

00000000800036b0 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800036b0:	fe010113          	addi	sp,sp,-32
    800036b4:	00113c23          	sd	ra,24(sp)
    800036b8:	00813823          	sd	s0,16(sp)
    800036bc:	00913423          	sd	s1,8(sp)
    800036c0:	02010413          	addi	s0,sp,32
    800036c4:	00050493          	mv	s1,a0
}
    800036c8:	00000097          	auipc	ra,0x0
    800036cc:	f28080e7          	jalr	-216(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800036d0:	00048513          	mv	a0,s1
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	fb4080e7          	jalr	-76(ra) # 80003688 <_ZdlPv>
    800036dc:	01813083          	ld	ra,24(sp)
    800036e0:	01013403          	ld	s0,16(sp)
    800036e4:	00813483          	ld	s1,8(sp)
    800036e8:	02010113          	addi	sp,sp,32
    800036ec:	00008067          	ret

00000000800036f0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800036f0:	fe010113          	addi	sp,sp,-32
    800036f4:	00113c23          	sd	ra,24(sp)
    800036f8:	00813823          	sd	s0,16(sp)
    800036fc:	00913423          	sd	s1,8(sp)
    80003700:	02010413          	addi	s0,sp,32
    80003704:	00050493          	mv	s1,a0
}
    80003708:	00000097          	auipc	ra,0x0
    8000370c:	f20080e7          	jalr	-224(ra) # 80003628 <_ZN9SemaphoreD1Ev>
    80003710:	00048513          	mv	a0,s1
    80003714:	00000097          	auipc	ra,0x0
    80003718:	f74080e7          	jalr	-140(ra) # 80003688 <_ZdlPv>
    8000371c:	01813083          	ld	ra,24(sp)
    80003720:	01013403          	ld	s0,16(sp)
    80003724:	00813483          	ld	s1,8(sp)
    80003728:	02010113          	addi	sp,sp,32
    8000372c:	00008067          	ret

0000000080003730 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003730:	00853503          	ld	a0,8(a0)
    80003734:	02050663          	beqz	a0,80003760 <_ZN6Thread5startEv+0x30>
{
    80003738:	ff010113          	addi	sp,sp,-16
    8000373c:	00113423          	sd	ra,8(sp)
    80003740:	00813023          	sd	s0,0(sp)
    80003744:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	d1c080e7          	jalr	-740(ra) # 80001464 <thread_start>
}
    80003750:	00813083          	ld	ra,8(sp)
    80003754:	00013403          	ld	s0,0(sp)
    80003758:	01010113          	addi	sp,sp,16
    8000375c:	00008067          	ret
        return -1;
    80003760:	fff00513          	li	a0,-1
}
    80003764:	00008067          	ret

0000000080003768 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003768:	ff010113          	addi	sp,sp,-16
    8000376c:	00113423          	sd	ra,8(sp)
    80003770:	00813023          	sd	s0,0(sp)
    80003774:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	bbc080e7          	jalr	-1092(ra) # 80001334 <thread_dispatch>
}
    80003780:	00813083          	ld	ra,8(sp)
    80003784:	00013403          	ld	s0,0(sp)
    80003788:	01010113          	addi	sp,sp,16
    8000378c:	00008067          	ret

0000000080003790 <_ZN6Thread5sleepEm>:
{
    80003790:	ff010113          	addi	sp,sp,-16
    80003794:	00113423          	sd	ra,8(sp)
    80003798:	00813023          	sd	s0,0(sp)
    8000379c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	c98080e7          	jalr	-872(ra) # 80001438 <time_sleep>
}
    800037a8:	00813083          	ld	ra,8(sp)
    800037ac:	00013403          	ld	s0,0(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret

00000000800037b8 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800037b8:	fe010113          	addi	sp,sp,-32
    800037bc:	00113c23          	sd	ra,24(sp)
    800037c0:	00813823          	sd	s0,16(sp)
    800037c4:	00913423          	sd	s1,8(sp)
    800037c8:	01213023          	sd	s2,0(sp)
    800037cc:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800037d0:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800037d4:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800037d8:	0004b783          	ld	a5,0(s1)
    800037dc:	0187b783          	ld	a5,24(a5)
    800037e0:	00048513          	mv	a0,s1
    800037e4:	000780e7          	jalr	a5
        Thread::sleep(time);
    800037e8:	00090513          	mv	a0,s2
    800037ec:	00000097          	auipc	ra,0x0
    800037f0:	fa4080e7          	jalr	-92(ra) # 80003790 <_ZN6Thread5sleepEm>
    while(true)
    800037f4:	fe5ff06f          	j	800037d8 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800037f8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800037f8:	ff010113          	addi	sp,sp,-16
    800037fc:	00113423          	sd	ra,8(sp)
    80003800:	00813023          	sd	s0,0(sp)
    80003804:	01010413          	addi	s0,sp,16
    80003808:	00008797          	auipc	a5,0x8
    8000380c:	1f078793          	addi	a5,a5,496 # 8000b9f8 <_ZTV6Thread+0x10>
    80003810:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003814:	00850513          	addi	a0,a0,8
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	c78080e7          	jalr	-904(ra) # 80001490 <thread_make_pcb>
}
    80003820:	00813083          	ld	ra,8(sp)
    80003824:	00013403          	ld	s0,0(sp)
    80003828:	01010113          	addi	sp,sp,16
    8000382c:	00008067          	ret

0000000080003830 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003830:	ff010113          	addi	sp,sp,-16
    80003834:	00113423          	sd	ra,8(sp)
    80003838:	00813023          	sd	s0,0(sp)
    8000383c:	01010413          	addi	s0,sp,16
    80003840:	00008797          	auipc	a5,0x8
    80003844:	1b878793          	addi	a5,a5,440 # 8000b9f8 <_ZTV6Thread+0x10>
    80003848:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    8000384c:	00050613          	mv	a2,a0
    80003850:	00000597          	auipc	a1,0x0
    80003854:	d7458593          	addi	a1,a1,-652 # 800035c4 <_ZN6Thread6runnerEPv>
    80003858:	00850513          	addi	a0,a0,8
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	c34080e7          	jalr	-972(ra) # 80001490 <thread_make_pcb>
}
    80003864:	00813083          	ld	ra,8(sp)
    80003868:	00013403          	ld	s0,0(sp)
    8000386c:	01010113          	addi	sp,sp,16
    80003870:	00008067          	ret

0000000080003874 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003874:	00853503          	ld	a0,8(a0)
    80003878:	02050663          	beqz	a0,800038a4 <_ZN9Semaphore4waitEv+0x30>
{
    8000387c:	ff010113          	addi	sp,sp,-16
    80003880:	00113423          	sd	ra,8(sp)
    80003884:	00813023          	sd	s0,0(sp)
    80003888:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	b54080e7          	jalr	-1196(ra) # 800013e0 <sem_wait>
}
    80003894:	00813083          	ld	ra,8(sp)
    80003898:	00013403          	ld	s0,0(sp)
    8000389c:	01010113          	addi	sp,sp,16
    800038a0:	00008067          	ret
        return -1;
    800038a4:	fff00513          	li	a0,-1
}
    800038a8:	00008067          	ret

00000000800038ac <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00113c23          	sd	ra,24(sp)
    800038b4:	00813823          	sd	s0,16(sp)
    800038b8:	00913423          	sd	s1,8(sp)
    800038bc:	02010413          	addi	s0,sp,32
    800038c0:	00050493          	mv	s1,a0
    800038c4:	00008797          	auipc	a5,0x8
    800038c8:	15c78793          	addi	a5,a5,348 # 8000ba20 <_ZTV9Semaphore+0x10>
    800038cc:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800038d0:	00850513          	addi	a0,a0,8
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	aa8080e7          	jalr	-1368(ra) # 8000137c <sem_open>
    if(retval != 0)
    800038dc:	00050463          	beqz	a0,800038e4 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800038e0:	0004b423          	sd	zero,8(s1)
}
    800038e4:	01813083          	ld	ra,24(sp)
    800038e8:	01013403          	ld	s0,16(sp)
    800038ec:	00813483          	ld	s1,8(sp)
    800038f0:	02010113          	addi	sp,sp,32
    800038f4:	00008067          	ret

00000000800038f8 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800038f8:	00853503          	ld	a0,8(a0)
    800038fc:	02050663          	beqz	a0,80003928 <_ZN9Semaphore6signalEv+0x30>
{
    80003900:	ff010113          	addi	sp,sp,-16
    80003904:	00113423          	sd	ra,8(sp)
    80003908:	00813023          	sd	s0,0(sp)
    8000390c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	afc080e7          	jalr	-1284(ra) # 8000140c <sem_signal>
}
    80003918:	00813083          	ld	ra,8(sp)
    8000391c:	00013403          	ld	s0,0(sp)
    80003920:	01010113          	addi	sp,sp,16
    80003924:	00008067          	ret
        return -1;
    80003928:	fff00513          	li	a0,-1
}
    8000392c:	00008067          	ret

0000000080003930 <_ZN7Console4getcEv>:
{
    80003930:	ff010113          	addi	sp,sp,-16
    80003934:	00813423          	sd	s0,8(sp)
    80003938:	01010413          	addi	s0,sp,16
}
    8000393c:	00000513          	li	a0,0
    80003940:	00813403          	ld	s0,8(sp)
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00008067          	ret

000000008000394c <_ZN7Console4putcEc>:
{
    8000394c:	ff010113          	addi	sp,sp,-16
    80003950:	00813423          	sd	s0,8(sp)
    80003954:	01010413          	addi	s0,sp,16
}
    80003958:	00813403          	ld	s0,8(sp)
    8000395c:	01010113          	addi	sp,sp,16
    80003960:	00008067          	ret

0000000080003964 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003964:	fe010113          	addi	sp,sp,-32
    80003968:	00113c23          	sd	ra,24(sp)
    8000396c:	00813823          	sd	s0,16(sp)
    80003970:	00913423          	sd	s1,8(sp)
    80003974:	01213023          	sd	s2,0(sp)
    80003978:	02010413          	addi	s0,sp,32
    8000397c:	00050493          	mv	s1,a0
    80003980:	00058913          	mv	s2,a1
    80003984:	01000513          	li	a0,16
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	cd8080e7          	jalr	-808(ra) # 80003660 <_Znwm>
    80003990:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003994:	00953023          	sd	s1,0(a0)
    80003998:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000399c:	00000597          	auipc	a1,0x0
    800039a0:	e1c58593          	addi	a1,a1,-484 # 800037b8 <_ZN14PeriodicThread6runnerEPv>
    800039a4:	00048513          	mv	a0,s1
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	e50080e7          	jalr	-432(ra) # 800037f8 <_ZN6ThreadC1EPFvPvES0_>
    800039b0:	00008797          	auipc	a5,0x8
    800039b4:	fe078793          	addi	a5,a5,-32 # 8000b990 <_ZTV14PeriodicThread+0x10>
    800039b8:	00f4b023          	sd	a5,0(s1)
}
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	00813483          	ld	s1,8(sp)
    800039c8:	00013903          	ld	s2,0(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret

00000000800039d4 <_ZN5Riscv15userMainWrapperEPv>:

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* )
{
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00113423          	sd	ra,8(sp)
    800039dc:	00813023          	sd	s0,0(sp)
    800039e0:	01010413          	addi	s0,sp,16
    userMain();
    800039e4:	00003097          	auipc	ra,0x3
    800039e8:	888080e7          	jalr	-1912(ra) # 8000626c <_Z8userMainv>
}
    800039ec:	00813083          	ld	ra,8(sp)
    800039f0:	00013403          	ld	s0,0(sp)
    800039f4:	01010113          	addi	sp,sp,16
    800039f8:	00008067          	ret

00000000800039fc <_ZN5Riscv10initSystemEv>:
{
    800039fc:	ff010113          	addi	sp,sp,-16
    80003a00:	00113423          	sd	ra,8(sp)
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003a0c:	00008797          	auipc	a5,0x8
    80003a10:	0e47b783          	ld	a5,228(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003a14:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	f80080e7          	jalr	-128(ra) # 80002998 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	3b4080e7          	jalr	948(ra) # 80002dd4 <_ZN8KConsole10initializeEv>
}
    80003a28:	00813083          	ld	ra,8(sp)
    80003a2c:	00013403          	ld	s0,0(sp)
    80003a30:	01010113          	addi	sp,sp,16
    80003a34:	00008067          	ret

0000000080003a38 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813423          	sd	s0,8(sp)
    80003a40:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003a44:	00200793          	li	a5,2
    80003a48:	1007a073          	csrs	sstatus,a5
}
    80003a4c:	00813403          	ld	s0,8(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <_ZN5Riscv17disableInterruptsEv>:
{
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00813423          	sd	s0,8(sp)
    80003a60:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003a64:	00200793          	li	a5,2
    80003a68:	1007b073          	csrc	sstatus,a5
}
    80003a6c:	00813403          	ld	s0,8(sp)
    80003a70:	01010113          	addi	sp,sp,16
    80003a74:	00008067          	ret

0000000080003a78 <_ZN5Riscv9endSystemEv>:
{
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00113423          	sd	ra,8(sp)
    80003a80:	00813023          	sd	s0,0(sp)
    80003a84:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003a88:	00000097          	auipc	ra,0x0
    80003a8c:	fd0080e7          	jalr	-48(ra) # 80003a58 <_ZN5Riscv17disableInterruptsEv>
}
    80003a90:	00813083          	ld	ra,8(sp)
    80003a94:	00013403          	ld	s0,0(sp)
    80003a98:	01010113          	addi	sp,sp,16
    80003a9c:	00008067          	ret

0000000080003aa0 <_ZN5Riscv10popSppSpieEv>:
{
    80003aa0:	ff010113          	addi	sp,sp,-16
    80003aa4:	00813423          	sd	s0,8(sp)
    80003aa8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003aac:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003ab0:	10200073          	sret
}
    80003ab4:	00813403          	ld	s0,8(sp)
    80003ab8:	01010113          	addi	sp,sp,16
    80003abc:	00008067          	ret

0000000080003ac0 <_ZN5Riscv11printStringEPKc>:
{
    80003ac0:	fd010113          	addi	sp,sp,-48
    80003ac4:	02113423          	sd	ra,40(sp)
    80003ac8:	02813023          	sd	s0,32(sp)
    80003acc:	00913c23          	sd	s1,24(sp)
    80003ad0:	01213823          	sd	s2,16(sp)
    80003ad4:	03010413          	addi	s0,sp,48
    80003ad8:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003adc:	100027f3          	csrr	a5,sstatus
    80003ae0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003ae4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ae8:	00200793          	li	a5,2
    80003aec:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    80003af0:	0004c503          	lbu	a0,0(s1)
    80003af4:	00050a63          	beqz	a0,80003b08 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    80003af8:	00005097          	auipc	ra,0x5
    80003afc:	be4080e7          	jalr	-1052(ra) # 800086dc <__putc>
        string++;
    80003b00:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003b04:	fedff06f          	j	80003af0 <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003b08:	0009091b          	sext.w	s2,s2
    80003b0c:	00297913          	andi	s2,s2,2
    80003b10:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003b14:	10092073          	csrs	sstatus,s2
}
    80003b18:	02813083          	ld	ra,40(sp)
    80003b1c:	02013403          	ld	s0,32(sp)
    80003b20:	01813483          	ld	s1,24(sp)
    80003b24:	01013903          	ld	s2,16(sp)
    80003b28:	03010113          	addi	sp,sp,48
    80003b2c:	00008067          	ret

0000000080003b30 <_ZN5Riscv12printIntegerEm>:
{
    80003b30:	fc010113          	addi	sp,sp,-64
    80003b34:	02113c23          	sd	ra,56(sp)
    80003b38:	02813823          	sd	s0,48(sp)
    80003b3c:	02913423          	sd	s1,40(sp)
    80003b40:	03213023          	sd	s2,32(sp)
    80003b44:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b48:	100027f3          	csrr	a5,sstatus
    80003b4c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003b50:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b54:	00200793          	li	a5,2
    80003b58:	1007b073          	csrc	sstatus,a5
        x = num;
    80003b5c:	0005051b          	sext.w	a0,a0
    i = 0;
    80003b60:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    80003b64:	00a00613          	li	a2,10
    80003b68:	02c5773b          	remuw	a4,a0,a2
    80003b6c:	02071693          	slli	a3,a4,0x20
    80003b70:	0206d693          	srli	a3,a3,0x20
    80003b74:	00006717          	auipc	a4,0x6
    80003b78:	80c70713          	addi	a4,a4,-2036 # 80009380 <_ZZN5Riscv12printIntegerEmE6digits>
    80003b7c:	00d70733          	add	a4,a4,a3
    80003b80:	00074703          	lbu	a4,0(a4)
    80003b84:	fe040693          	addi	a3,s0,-32
    80003b88:	009687b3          	add	a5,a3,s1
    80003b8c:	0014849b          	addiw	s1,s1,1
    80003b90:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003b94:	0005071b          	sext.w	a4,a0
    80003b98:	02c5553b          	divuw	a0,a0,a2
    80003b9c:	00900793          	li	a5,9
    80003ba0:	fce7e2e3          	bltu	a5,a4,80003b64 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    80003ba4:	fff4849b          	addiw	s1,s1,-1
    80003ba8:	0004ce63          	bltz	s1,80003bc4 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003bac:	fe040793          	addi	a5,s0,-32
    80003bb0:	009787b3          	add	a5,a5,s1
    80003bb4:	ff07c503          	lbu	a0,-16(a5)
    80003bb8:	00005097          	auipc	ra,0x5
    80003bbc:	b24080e7          	jalr	-1244(ra) # 800086dc <__putc>
    80003bc0:	fe5ff06f          	j	80003ba4 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    80003bc4:	00a00513          	li	a0,10
    80003bc8:	00005097          	auipc	ra,0x5
    80003bcc:	b14080e7          	jalr	-1260(ra) # 800086dc <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003bd0:	0009091b          	sext.w	s2,s2
    80003bd4:	00297913          	andi	s2,s2,2
    80003bd8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003bdc:	10092073          	csrs	sstatus,s2
}
    80003be0:	03813083          	ld	ra,56(sp)
    80003be4:	03013403          	ld	s0,48(sp)
    80003be8:	02813483          	ld	s1,40(sp)
    80003bec:	02013903          	ld	s2,32(sp)
    80003bf0:	04010113          	addi	sp,sp,64
    80003bf4:	00008067          	ret

0000000080003bf8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003bf8:	f9010113          	addi	sp,sp,-112
    80003bfc:	06113423          	sd	ra,104(sp)
    80003c00:	06813023          	sd	s0,96(sp)
    80003c04:	04913c23          	sd	s1,88(sp)
    80003c08:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003c0c:	00070713          	mv	a4,a4
    80003c10:	00008797          	auipc	a5,0x8
    80003c14:	f287b783          	ld	a5,-216(a5) # 8000bb38 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003c18:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003c1c:	142027f3          	csrr	a5,scause
    80003c20:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003c24:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003c28:	fff00713          	li	a4,-1
    80003c2c:	03f71713          	slli	a4,a4,0x3f
    80003c30:	00170713          	addi	a4,a4,1
    80003c34:	0ce78e63          	beq	a5,a4,80003d10 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
    80003c38:	fff00713          	li	a4,-1
    80003c3c:	03f71713          	slli	a4,a4,0x3f
    80003c40:	00170713          	addi	a4,a4,1
    80003c44:	04f76e63          	bltu	a4,a5,80003ca0 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    80003c48:	ff878793          	addi	a5,a5,-8
    80003c4c:	00100713          	li	a4,1
    80003c50:	1af76063          	bltu	a4,a5,80003df0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003c54:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003c58:	14102773          	csrr	a4,sepc
    80003c5c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003c60:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003c64:	00470713          	addi	a4,a4,4
    80003c68:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c6c:	10002773          	csrr	a4,sstatus
    80003c70:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003c74:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003c78:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003c7c:	04200713          	li	a4,66
    80003c80:	16f76063          	bltu	a4,a5,80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
    80003c84:	00279793          	slli	a5,a5,0x2
    80003c88:	00005717          	auipc	a4,0x5
    80003c8c:	5e870713          	addi	a4,a4,1512 # 80009270 <CONSOLE_STATUS+0x260>
    80003c90:	00e787b3          	add	a5,a5,a4
    80003c94:	0007a783          	lw	a5,0(a5)
    80003c98:	00e787b3          	add	a5,a5,a4
    80003c9c:	00078067          	jr	a5
    switch(scause)
    80003ca0:	fff00713          	li	a4,-1
    80003ca4:	03f71713          	slli	a4,a4,0x3f
    80003ca8:	00970713          	addi	a4,a4,9
    80003cac:	14e79263          	bne	a5,a4,80003df0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            uint64 x = CONSOLE_STATUS;
    80003cb0:	00008797          	auipc	a5,0x8
    80003cb4:	e307b783          	ld	a5,-464(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003cb8:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003cbc:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003cc0:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003cc4:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003cc8:	0017f793          	andi	a5,a5,1
    80003ccc:	02078863          	beqz	a5,80003cfc <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                x = CONSOLE_TX_DATA;
    80003cd0:	00008797          	auipc	a5,0x8
    80003cd4:	e307b783          	ld	a5,-464(a5) # 8000bb00 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003cd8:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003cdc:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003ce0:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003ce4:	00058513          	mv	a0,a1
    80003ce8:	0ff57493          	andi	s1,a0,255
                if(KConsole::pendingGetc > 0)
    80003cec:	00008797          	auipc	a5,0x8
    80003cf0:	e0c7b783          	ld	a5,-500(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003cf4:	0007b783          	ld	a5,0(a5)
    80003cf8:	0a079a63          	bnez	a5,80003dac <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
            plic_complete(plic_claim());
    80003cfc:	00003097          	auipc	ra,0x3
    80003d00:	178080e7          	jalr	376(ra) # 80006e74 <plic_claim>
    80003d04:	00003097          	auipc	ra,0x3
    80003d08:	1a8080e7          	jalr	424(ra) # 80006eac <plic_complete>
            break;
    80003d0c:	0e40006f          	j	80003df0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003d10:	141027f3          	csrr	a5,sepc
    80003d14:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003d18:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003d1c:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003d20:	100027f3          	csrr	a5,sstatus
    80003d24:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003d28:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003d2c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003d30:	00200793          	li	a5,2
    80003d34:	1447b073          	csrc	sip,a5
            totalTime++;
    80003d38:	00008797          	auipc	a5,0x8
    80003d3c:	ee078793          	addi	a5,a5,-288 # 8000bc18 <_ZN5Riscv9totalTimeE>
    80003d40:	0007b503          	ld	a0,0(a5)
    80003d44:	00150513          	addi	a0,a0,1
    80003d48:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(totalTime);
    80003d4c:	00000097          	auipc	ra,0x0
    80003d50:	de4080e7          	jalr	-540(ra) # 80003b30 <_ZN5Riscv12printIntegerEm>
            PCB::timeSliceCounter++;
    80003d54:	00008497          	auipc	s1,0x8
    80003d58:	db44b483          	ld	s1,-588(s1) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003d5c:	0004b783          	ld	a5,0(s1)
    80003d60:	00178793          	addi	a5,a5,1
    80003d64:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	488080e7          	jalr	1160(ra) # 800031f0 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003d70:	00008797          	auipc	a5,0x8
    80003d74:	db87b783          	ld	a5,-584(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003d78:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003d7c:	0107b783          	ld	a5,16(a5)
    80003d80:	0004b703          	ld	a4,0(s1)
    80003d84:	00f77c63          	bgeu	a4,a5,80003d9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            Riscv::w_sstatus(sstatus);
    80003d88:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d8c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d90:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d94:	14179073          	csrw	sepc,a5
}
    80003d98:	0580006f          	j	80003df0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
                PCB::timeSliceCounter = 0;
    80003d9c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	b08080e7          	jalr	-1272(ra) # 800028a8 <_ZN3PCB8dispatchEv>
    80003da8:	fe1ff06f          	j	80003d88 <_ZN5Riscv20handleSupervisorTrapEv+0x190>
                    KConsole::pendingGetc--;
    80003dac:	fff78793          	addi	a5,a5,-1
    80003db0:	00008717          	auipc	a4,0x8
    80003db4:	d4873703          	ld	a4,-696(a4) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003db8:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003dbc:	00048513          	mv	a0,s1
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	0c4080e7          	jalr	196(ra) # 80002e84 <_ZN8KConsole17putCharacterInputEc>
                    KConsole::putCharacterOutput(c);
    80003dc8:	00048513          	mv	a0,s1
    80003dcc:	fffff097          	auipc	ra,0xfffff
    80003dd0:	148080e7          	jalr	328(ra) # 80002f14 <_ZN8KConsole18putCharacterOutputEc>
    80003dd4:	f29ff06f          	j	80003cfc <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                    MemoryAllocator::memAllocHandler();
    80003dd8:	00000097          	auipc	ra,0x0
    80003ddc:	604080e7          	jalr	1540(ra) # 800043dc <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003de0:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003de4:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003de8:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003dec:	14179073          	csrw	sepc,a5
}
    80003df0:	06813083          	ld	ra,104(sp)
    80003df4:	06013403          	ld	s0,96(sp)
    80003df8:	05813483          	ld	s1,88(sp)
    80003dfc:	07010113          	addi	sp,sp,112
    80003e00:	00008067          	ret
                    MemoryAllocator::memFreeHandler();
    80003e04:	00000097          	auipc	ra,0x0
    80003e08:	63c080e7          	jalr	1596(ra) # 80004440 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003e0c:	fd5ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    PCB::threadMakePCBHandler();
    80003e10:	fffff097          	auipc	ra,0xfffff
    80003e14:	e58080e7          	jalr	-424(ra) # 80002c68 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003e18:	fc9ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    PCB::threadCreateHandler();
    80003e1c:	fffff097          	auipc	ra,0xfffff
    80003e20:	d68080e7          	jalr	-664(ra) # 80002b84 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003e24:	fbdff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    PCB::threadStartHandler();
    80003e28:	fffff097          	auipc	ra,0xfffff
    80003e2c:	dfc080e7          	jalr	-516(ra) # 80002c24 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003e30:	fb1ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    PCB::threadDispatchHandler();
    80003e34:	fffff097          	auipc	ra,0xfffff
    80003e38:	cbc080e7          	jalr	-836(ra) # 80002af0 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003e3c:	fa5ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    PCB::threadExitHandler();
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	c54080e7          	jalr	-940(ra) # 80002a94 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003e48:	f99ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    PCB::threadSleepHandler();
    80003e4c:	fffff097          	auipc	ra,0xfffff
    80003e50:	cd4080e7          	jalr	-812(ra) # 80002b20 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003e54:	f8dff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    KSemaphore::semOpenHandler();
    80003e58:	00001097          	auipc	ra,0x1
    80003e5c:	898080e7          	jalr	-1896(ra) # 800046f0 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003e60:	f81ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    KSemaphore::semWaitHandler();
    80003e64:	00001097          	auipc	ra,0x1
    80003e68:	924080e7          	jalr	-1756(ra) # 80004788 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003e6c:	f75ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    KSemaphore::semSignalHandler();
    80003e70:	00001097          	auipc	ra,0x1
    80003e74:	958080e7          	jalr	-1704(ra) # 800047c8 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003e78:	f69ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    KSemaphore::semCloseHandler();
    80003e7c:	00001097          	auipc	ra,0x1
    80003e80:	98c080e7          	jalr	-1652(ra) # 80004808 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003e84:	f5dff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    KConsole::getcHandler();
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	26c080e7          	jalr	620(ra) # 800030f4 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003e90:	f51ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    KConsole::putcHandler();
    80003e94:	fffff097          	auipc	ra,0xfffff
    80003e98:	21c080e7          	jalr	540(ra) # 800030b0 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003e9c:	f45ff06f          	j	80003de0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>

0000000080003ea0 <_ZN5Riscv10kernelMainEv>:
{
    80003ea0:	fe010113          	addi	sp,sp,-32
    80003ea4:	00113c23          	sd	ra,24(sp)
    80003ea8:	00813823          	sd	s0,16(sp)
    80003eac:	00913423          	sd	s1,8(sp)
    80003eb0:	01213023          	sd	s2,0(sp)
    80003eb4:	02010413          	addi	s0,sp,32
    initSystem();
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	b44080e7          	jalr	-1212(ra) # 800039fc <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	b78080e7          	jalr	-1160(ra) # 80003a38 <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003ec8:	00001537          	lui	a0,0x1
    80003ecc:	00000097          	auipc	ra,0x0
    80003ed0:	4e8080e7          	jalr	1256(ra) # 800043b4 <_Z7kmallocm>
    80003ed4:	00050913          	mv	s2,a0
    80003ed8:	05000513          	li	a0,80
    80003edc:	fffff097          	auipc	ra,0xfffff
    80003ee0:	a40080e7          	jalr	-1472(ra) # 8000291c <_ZN3PCBnwEm>
    80003ee4:	00050493          	mv	s1,a0
    80003ee8:	00200713          	li	a4,2
    80003eec:	00090693          	mv	a3,s2
    80003ef0:	00000613          	li	a2,0
    80003ef4:	00000597          	auipc	a1,0x0
    80003ef8:	ae058593          	addi	a1,a1,-1312 # 800039d4 <_ZN5Riscv15userMainWrapperEPv>
    80003efc:	fffff097          	auipc	ra,0xfffff
    80003f00:	920080e7          	jalr	-1760(ra) # 8000281c <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003f04:	00048513          	mv	a0,s1
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	978080e7          	jalr	-1672(ra) # 80002880 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003f10:	00048513          	mv	a0,s1
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	b5c080e7          	jalr	-1188(ra) # 80002a70 <_ZN3PCB10isFinishedEv>
    80003f1c:	00051863          	bnez	a0,80003f2c <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003f20:	ffffd097          	auipc	ra,0xffffd
    80003f24:	414080e7          	jalr	1044(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003f28:	fe9ff06f          	j	80003f10 <_ZN5Riscv10kernelMainEv+0x70>
    disableInterrupts();
    80003f2c:	00000097          	auipc	ra,0x0
    80003f30:	b2c080e7          	jalr	-1236(ra) # 80003a58 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	b44080e7          	jalr	-1212(ra) # 80003a78 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003f3c:	00005517          	auipc	a0,0x5
    80003f40:	45450513          	addi	a0,a0,1108 # 80009390 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003f44:	00000097          	auipc	ra,0x0
    80003f48:	b7c080e7          	jalr	-1156(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
}
    80003f4c:	01813083          	ld	ra,24(sp)
    80003f50:	01013403          	ld	s0,16(sp)
    80003f54:	00813483          	ld	s1,8(sp)
    80003f58:	00013903          	ld	s2,0(sp)
    80003f5c:	02010113          	addi	sp,sp,32
    80003f60:	00008067          	ret
    80003f64:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003f68:	00048513          	mv	a0,s1
    80003f6c:	fffff097          	auipc	ra,0xfffff
    80003f70:	9d8080e7          	jalr	-1576(ra) # 80002944 <_ZN3PCBdlEPv>
    80003f74:	00090513          	mv	a0,s2
    80003f78:	00009097          	auipc	ra,0x9
    80003f7c:	db0080e7          	jalr	-592(ra) # 8000cd28 <_Unwind_Resume>

0000000080003f80 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003f80:	ff010113          	addi	sp,sp,-16
    80003f84:	00113423          	sd	ra,8(sp)
    80003f88:	00813023          	sd	s0,0(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    myTests();
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	6f0080e7          	jalr	1776(ra) # 80002680 <_Z7myTestsv>
}
    80003f98:	00813083          	ld	ra,8(sp)
    80003f9c:	00013403          	ld	s0,0(sp)
    80003fa0:	01010113          	addi	sp,sp,16
    80003fa4:	00008067          	ret

0000000080003fa8 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003fa8:	ff010113          	addi	sp,sp,-16
    80003fac:	00813423          	sd	s0,8(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003fb4:	00200793          	li	a5,2
    80003fb8:	1047b073          	csrc	sie,a5
}
    80003fbc:	00813403          	ld	s0,8(sp)
    80003fc0:	01010113          	addi	sp,sp,16
    80003fc4:	00008067          	ret

0000000080003fc8 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003fc8:	ff010113          	addi	sp,sp,-16
    80003fcc:	00813423          	sd	s0,8(sp)
    80003fd0:	01010413          	addi	s0,sp,16
    while(true)
    80003fd4:	0000006f          	j	80003fd4 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003fd8 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003fd8:	ff010113          	addi	sp,sp,-16
    80003fdc:	00813423          	sd	s0,8(sp)
    80003fe0:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003fe4:	00058793          	mv	a5,a1
    __asm__ volatile("csrr a1, sscratch");
    80003fe8:	140025f3          	csrr	a1,sscratch
    __asm__ volatile("sd a0, 80(a1)");
    80003fec:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003ff0:	00078593          	mv	a1,a5
}
    80003ff4:	00813403          	ld	s0,8(sp)
    80003ff8:	01010113          	addi	sp,sp,16
    80003ffc:	00008067          	ret

0000000080004000 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80004000:	ff010113          	addi	sp,sp,-16
    80004004:	00813423          	sd	s0,8(sp)
    80004008:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    8000400c:	00008717          	auipc	a4,0x8
    80004010:	c1472703          	lw	a4,-1004(a4) # 8000bc20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004014:	00100793          	li	a5,1
    80004018:	04f70263          	beq	a4,a5,8000405c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    8000401c:	00008797          	auipc	a5,0x8
    80004020:	c0478793          	addi	a5,a5,-1020 # 8000bc20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004024:	00100713          	li	a4,1
    80004028:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    8000402c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80004030:	00008717          	auipc	a4,0x8
    80004034:	ab873703          	ld	a4,-1352(a4) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004038:	00073703          	ld	a4,0(a4)
    8000403c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80004040:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80004044:	00008797          	auipc	a5,0x8
    80004048:	aec7b783          	ld	a5,-1300(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000404c:	0007b783          	ld	a5,0(a5)
    80004050:	40e787b3          	sub	a5,a5,a4
    80004054:	ff178793          	addi	a5,a5,-15
    80004058:	00f73023          	sd	a5,0(a4)
}
    8000405c:	00813403          	ld	s0,8(sp)
    80004060:	01010113          	addi	sp,sp,16
    80004064:	00008067          	ret

0000000080004068 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004068:	fe010113          	addi	sp,sp,-32
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00913423          	sd	s1,8(sp)
    80004078:	01213023          	sd	s2,0(sp)
    8000407c:	02010413          	addi	s0,sp,32
    80004080:	00050493          	mv	s1,a0
    80004084:	00058913          	mv	s2,a1
    initMemory();
    80004088:	00000097          	auipc	ra,0x0
    8000408c:	f78080e7          	jalr	-136(ra) # 80004000 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004090:	00008797          	auipc	a5,0x8
    80004094:	b987b783          	ld	a5,-1128(a5) # 8000bc28 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004098:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    8000409c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800040a0:	00000713          	li	a4,0
    while(curr != 0)
    800040a4:	00078c63          	beqz	a5,800040bc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800040a8:	00f4e863          	bltu	s1,a5,800040b8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800040ac:	00078713          	mv	a4,a5
        curr = curr->next;
    800040b0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800040b4:	ff1ff06f          	j	800040a4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800040b8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800040bc:	02070063          	beqz	a4,800040dc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800040c0:	00973423          	sd	s1,8(a4)
}
    800040c4:	01813083          	ld	ra,24(sp)
    800040c8:	01013403          	ld	s0,16(sp)
    800040cc:	00813483          	ld	s1,8(sp)
    800040d0:	00013903          	ld	s2,0(sp)
    800040d4:	02010113          	addi	sp,sp,32
    800040d8:	00008067          	ret
        headAllocated = newAllocated;
    800040dc:	00008797          	auipc	a5,0x8
    800040e0:	b497b623          	sd	s1,-1204(a5) # 8000bc28 <_ZN15MemoryAllocator13headAllocatedE>
    800040e4:	fe1ff06f          	j	800040c4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

00000000800040e8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    800040e8:	fe010113          	addi	sp,sp,-32
    800040ec:	00113c23          	sd	ra,24(sp)
    800040f0:	00813823          	sd	s0,16(sp)
    800040f4:	00913423          	sd	s1,8(sp)
    800040f8:	01213023          	sd	s2,0(sp)
    800040fc:	02010413          	addi	s0,sp,32
    80004100:	00050913          	mv	s2,a0
    initMemory();
    80004104:	00000097          	auipc	ra,0x0
    80004108:	efc080e7          	jalr	-260(ra) # 80004000 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000410c:	00008497          	auipc	s1,0x8
    80004110:	b244b483          	ld	s1,-1244(s1) # 8000bc30 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004114:	00000713          	li	a4,0
    while(curr != 0)
    80004118:	0a048863          	beqz	s1,800041c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    8000411c:	0004b783          	ld	a5,0(s1)
    80004120:	0127f863          	bgeu	a5,s2,80004130 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004124:	00048713          	mv	a4,s1
        curr = curr->next;
    80004128:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000412c:	fedff06f          	j	80004118 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004130:	01090693          	addi	a3,s2,16
    80004134:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80004138:	00008617          	auipc	a2,0x8
    8000413c:	9f863603          	ld	a2,-1544(a2) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004140:	00063603          	ld	a2,0(a2)
    80004144:	04d66c63          	bltu	a2,a3,8000419c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80004148:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    8000414c:	01000613          	li	a2,16
    80004150:	02f67663          	bgeu	a2,a5,8000417c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80004154:	0084b603          	ld	a2,8(s1)
    80004158:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    8000415c:	ff078793          	addi	a5,a5,-16
    80004160:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80004164:	00070663          	beqz	a4,80004170 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80004168:	00d73423          	sd	a3,8(a4)
    8000416c:	0380006f          	j	800041a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80004170:	00008797          	auipc	a5,0x8
    80004174:	acd7b023          	sd	a3,-1344(a5) # 8000bc30 <_ZN15MemoryAllocator8headFreeE>
    80004178:	02c0006f          	j	800041a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    8000417c:	00070863          	beqz	a4,8000418c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80004180:	0084b783          	ld	a5,8(s1)
    80004184:	00f73423          	sd	a5,8(a4)
    80004188:	01c0006f          	j	800041a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    8000418c:	0084b783          	ld	a5,8(s1)
    80004190:	00008717          	auipc	a4,0x8
    80004194:	aaf73023          	sd	a5,-1376(a4) # 8000bc30 <_ZN15MemoryAllocator8headFreeE>
    80004198:	00c0006f          	j	800041a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    8000419c:	02070063          	beqz	a4,800041bc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800041a0:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800041a4:	00090593          	mv	a1,s2
    800041a8:	00048513          	mv	a0,s1
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	ebc080e7          	jalr	-324(ra) # 80004068 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800041b4:	01048513          	addi	a0,s1,16
            break;
    800041b8:	0140006f          	j	800041cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800041bc:	00008797          	auipc	a5,0x8
    800041c0:	a607ba23          	sd	zero,-1420(a5) # 8000bc30 <_ZN15MemoryAllocator8headFreeE>
    800041c4:	fe1ff06f          	j	800041a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800041c8:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	01013403          	ld	s0,16(sp)
    800041d4:	00813483          	ld	s1,8(sp)
    800041d8:	00013903          	ld	s2,0(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret

00000000800041e4 <_ZN15MemoryAllocator9mem_allocEm>:
{
    800041e4:	ff010113          	addi	sp,sp,-16
    800041e8:	00113423          	sd	ra,8(sp)
    800041ec:	00813023          	sd	s0,0(sp)
    800041f0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800041f4:	00000097          	auipc	ra,0x0
    800041f8:	ef4080e7          	jalr	-268(ra) # 800040e8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800041fc:	00813083          	ld	ra,8(sp)
    80004200:	00013403          	ld	s0,0(sp)
    80004204:	01010113          	addi	sp,sp,16
    80004208:	00008067          	ret

000000008000420c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    8000420c:	fe010113          	addi	sp,sp,-32
    80004210:	00113c23          	sd	ra,24(sp)
    80004214:	00813823          	sd	s0,16(sp)
    80004218:	00913423          	sd	s1,8(sp)
    8000421c:	01213023          	sd	s2,0(sp)
    80004220:	02010413          	addi	s0,sp,32
    80004224:	00050493          	mv	s1,a0
    80004228:	00058913          	mv	s2,a1
    initMemory();
    8000422c:	00000097          	auipc	ra,0x0
    80004230:	dd4080e7          	jalr	-556(ra) # 80004000 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004234:	00008797          	auipc	a5,0x8
    80004238:	9fc7b783          	ld	a5,-1540(a5) # 8000bc30 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    8000423c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80004240:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80004244:	00000713          	li	a4,0
    while(curr != 0)
    80004248:	00078c63          	beqz	a5,80004260 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    8000424c:	00f4e863          	bltu	s1,a5,8000425c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004250:	00078713          	mv	a4,a5
        curr = curr->next;
    80004254:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004258:	ff1ff06f          	j	80004248 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    8000425c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004260:	04070663          	beqz	a4,800042ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004264:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004268:	0084b783          	ld	a5,8(s1)
    8000426c:	00078a63          	beqz	a5,80004280 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004270:	0004b603          	ld	a2,0(s1)
    80004274:	01060693          	addi	a3,a2,16
    80004278:	00d486b3          	add	a3,s1,a3
    8000427c:	02d78e63          	beq	a5,a3,800042b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004280:	00070a63          	beqz	a4,80004294 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80004284:	00073683          	ld	a3,0(a4)
    80004288:	01068793          	addi	a5,a3,16
    8000428c:	00f707b3          	add	a5,a4,a5
    80004290:	04978263          	beq	a5,s1,800042d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004294:	01813083          	ld	ra,24(sp)
    80004298:	01013403          	ld	s0,16(sp)
    8000429c:	00813483          	ld	s1,8(sp)
    800042a0:	00013903          	ld	s2,0(sp)
    800042a4:	02010113          	addi	sp,sp,32
    800042a8:	00008067          	ret
        headFree = newSegment;
    800042ac:	00008797          	auipc	a5,0x8
    800042b0:	9897b223          	sd	s1,-1660(a5) # 8000bc30 <_ZN15MemoryAllocator8headFreeE>
    800042b4:	fb5ff06f          	j	80004268 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800042b8:	0007b683          	ld	a3,0(a5)
    800042bc:	00d60633          	add	a2,a2,a3
    800042c0:	01060613          	addi	a2,a2,16
    800042c4:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800042c8:	0087b783          	ld	a5,8(a5)
    800042cc:	00f4b423          	sd	a5,8(s1)
    800042d0:	fb1ff06f          	j	80004280 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800042d4:	0004b783          	ld	a5,0(s1)
    800042d8:	00f686b3          	add	a3,a3,a5
    800042dc:	01068693          	addi	a3,a3,16
    800042e0:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800042e4:	0084b783          	ld	a5,8(s1)
    800042e8:	00f73423          	sd	a5,8(a4)
}
    800042ec:	fa9ff06f          	j	80004294 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

00000000800042f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800042f0:	fe010113          	addi	sp,sp,-32
    800042f4:	00113c23          	sd	ra,24(sp)
    800042f8:	00813823          	sd	s0,16(sp)
    800042fc:	00913423          	sd	s1,8(sp)
    80004300:	01213023          	sd	s2,0(sp)
    80004304:	02010413          	addi	s0,sp,32
    80004308:	00050913          	mv	s2,a0
    initMemory();
    8000430c:	00000097          	auipc	ra,0x0
    80004310:	cf4080e7          	jalr	-780(ra) # 80004000 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004314:	00008497          	auipc	s1,0x8
    80004318:	9144b483          	ld	s1,-1772(s1) # 8000bc28 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    8000431c:	00000713          	li	a4,0
    while(curr != 0)
    80004320:	02048a63          	beqz	s1,80004354 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004324:	01048793          	addi	a5,s1,16
    80004328:	01278863          	beq	a5,s2,80004338 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    8000432c:	00048713          	mv	a4,s1
        curr = curr->next;
    80004330:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004334:	fedff06f          	j	80004320 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004338:	02070e63          	beqz	a4,80004374 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    8000433c:	0084b783          	ld	a5,8(s1)
    80004340:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004344:	0004b583          	ld	a1,0(s1)
    80004348:	00048513          	mv	a0,s1
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	ec0080e7          	jalr	-320(ra) # 8000420c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004354:	02048863          	beqz	s1,80004384 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004358:	00000513          	li	a0,0
    else
        return 1;
}
    8000435c:	01813083          	ld	ra,24(sp)
    80004360:	01013403          	ld	s0,16(sp)
    80004364:	00813483          	ld	s1,8(sp)
    80004368:	00013903          	ld	s2,0(sp)
    8000436c:	02010113          	addi	sp,sp,32
    80004370:	00008067          	ret
                headAllocated = curr->next;
    80004374:	0084b783          	ld	a5,8(s1)
    80004378:	00008717          	auipc	a4,0x8
    8000437c:	8af73823          	sd	a5,-1872(a4) # 8000bc28 <_ZN15MemoryAllocator13headAllocatedE>
    80004380:	fc5ff06f          	j	80004344 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004384:	00100513          	li	a0,1
    80004388:	fd5ff06f          	j	8000435c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

000000008000438c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    8000438c:	ff010113          	addi	sp,sp,-16
    80004390:	00113423          	sd	ra,8(sp)
    80004394:	00813023          	sd	s0,0(sp)
    80004398:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	f54080e7          	jalr	-172(ra) # 800042f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800043a4:	00813083          	ld	ra,8(sp)
    800043a8:	00013403          	ld	s0,0(sp)
    800043ac:	01010113          	addi	sp,sp,16
    800043b0:	00008067          	ret

00000000800043b4 <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    800043b4:	ff010113          	addi	sp,sp,-16
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	00813023          	sd	s0,0(sp)
    800043c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	e20080e7          	jalr	-480(ra) # 800041e4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800043cc:	00813083          	ld	ra,8(sp)
    800043d0:	00013403          	ld	s0,0(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret

00000000800043dc <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    800043dc:	ff010113          	addi	sp,sp,-16
    800043e0:	00113423          	sd	ra,8(sp)
    800043e4:	00813023          	sd	s0,0(sp)
    800043e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800043ec:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800043f0:	00651513          	slli	a0,a0,0x6
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	fc0080e7          	jalr	-64(ra) # 800043b4 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800043fc:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004400:	00000097          	auipc	ra,0x0
    80004404:	bd8080e7          	jalr	-1064(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004408:	00813083          	ld	ra,8(sp)
    8000440c:	00013403          	ld	s0,0(sp)
    80004410:	01010113          	addi	sp,sp,16
    80004414:	00008067          	ret

0000000080004418 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80004418:	ff010113          	addi	sp,sp,-16
    8000441c:	00113423          	sd	ra,8(sp)
    80004420:	00813023          	sd	s0,0(sp)
    80004424:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004428:	00000097          	auipc	ra,0x0
    8000442c:	f64080e7          	jalr	-156(ra) # 8000438c <_ZN15MemoryAllocator8mem_freeEPv>
    80004430:	00813083          	ld	ra,8(sp)
    80004434:	00013403          	ld	s0,0(sp)
    80004438:	01010113          	addi	sp,sp,16
    8000443c:	00008067          	ret

0000000080004440 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004440:	ff010113          	addi	sp,sp,-16
    80004444:	00113423          	sd	ra,8(sp)
    80004448:	00813023          	sd	s0,0(sp)
    8000444c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004450:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004454:	00000097          	auipc	ra,0x0
    80004458:	fc4080e7          	jalr	-60(ra) # 80004418 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000445c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004460:	00000097          	auipc	ra,0x0
    80004464:	b78080e7          	jalr	-1160(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004468:	00813083          	ld	ra,8(sp)
    8000446c:	00013403          	ld	s0,0(sp)
    80004470:	01010113          	addi	sp,sp,16
    80004474:	00008067          	ret

0000000080004478 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004478:	ff010113          	addi	sp,sp,-16
    8000447c:	00813423          	sd	s0,8(sp)
    80004480:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004484:	00b52a23          	sw	a1,20(a0)
    80004488:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000448c:	00053423          	sd	zero,8(a0)
    80004490:	00053023          	sd	zero,0(a0)
}
    80004494:	00813403          	ld	s0,8(sp)
    80004498:	01010113          	addi	sp,sp,16
    8000449c:	00008067          	ret

00000000800044a0 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800044a0:	ff010113          	addi	sp,sp,-16
    800044a4:	00813423          	sd	s0,8(sp)
    800044a8:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800044ac:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800044b0:	00053783          	ld	a5,0(a0)
    800044b4:	00078e63          	beqz	a5,800044d0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800044b8:	00853783          	ld	a5,8(a0)
    800044bc:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800044c0:	00b53423          	sd	a1,8(a0)
    }
}
    800044c4:	00813403          	ld	s0,8(sp)
    800044c8:	01010113          	addi	sp,sp,16
    800044cc:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800044d0:	00b53423          	sd	a1,8(a0)
    800044d4:	00b53023          	sd	a1,0(a0)
    800044d8:	fedff06f          	j	800044c4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800044dc <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00113423          	sd	ra,8(sp)
    800044e4:	00813023          	sd	s0,0(sp)
    800044e8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800044ec:	00007797          	auipc	a5,0x7
    800044f0:	63c7b783          	ld	a5,1596(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x58>
    800044f4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800044f8:	00200793          	li	a5,2
    800044fc:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    80004500:	00000097          	auipc	ra,0x0
    80004504:	fa0080e7          	jalr	-96(ra) # 800044a0 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	3a0080e7          	jalr	928(ra) # 800028a8 <_ZN3PCB8dispatchEv>
}
    80004510:	00813083          	ld	ra,8(sp)
    80004514:	00013403          	ld	s0,0(sp)
    80004518:	01010113          	addi	sp,sp,16
    8000451c:	00008067          	ret

0000000080004520 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80004520:	01052783          	lw	a5,16(a0)
    80004524:	fff7879b          	addiw	a5,a5,-1
    80004528:	00f52823          	sw	a5,16(a0)
    8000452c:	02079713          	slli	a4,a5,0x20
    80004530:	00074663          	bltz	a4,8000453c <_ZN10KSemaphore4waitEv+0x1c>
}
    80004534:	00000513          	li	a0,0
    80004538:	00008067          	ret
uint64 KSemaphore::wait() {
    8000453c:	ff010113          	addi	sp,sp,-16
    80004540:	00113423          	sd	ra,8(sp)
    80004544:	00813023          	sd	s0,0(sp)
    80004548:	01010413          	addi	s0,sp,16
        block();
    8000454c:	00000097          	auipc	ra,0x0
    80004550:	f90080e7          	jalr	-112(ra) # 800044dc <_ZN10KSemaphore5blockEv>
}
    80004554:	00000513          	li	a0,0
    80004558:	00813083          	ld	ra,8(sp)
    8000455c:	00013403          	ld	s0,0(sp)
    80004560:	01010113          	addi	sp,sp,16
    80004564:	00008067          	ret

0000000080004568 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004568:	ff010113          	addi	sp,sp,-16
    8000456c:	00813423          	sd	s0,8(sp)
    80004570:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004574:	00053503          	ld	a0,0(a0)
    80004578:	00813403          	ld	s0,8(sp)
    8000457c:	01010113          	addi	sp,sp,16
    80004580:	00008067          	ret

0000000080004584 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004584:	ff010113          	addi	sp,sp,-16
    80004588:	00813423          	sd	s0,8(sp)
    8000458c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004590:	00053783          	ld	a5,0(a0)
    80004594:	00078c63          	beqz	a5,800045ac <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004598:	0087b703          	ld	a4,8(a5)
    8000459c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800045a0:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800045a4:	00053783          	ld	a5,0(a0)
    800045a8:	00078863          	beqz	a5,800045b8 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800045ac:	00813403          	ld	s0,8(sp)
    800045b0:	01010113          	addi	sp,sp,16
    800045b4:	00008067          	ret
        tailBlocked =0;
    800045b8:	00053423          	sd	zero,8(a0)
    800045bc:	ff1ff06f          	j	800045ac <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800045c0 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800045c0:	fe010113          	addi	sp,sp,-32
    800045c4:	00113c23          	sd	ra,24(sp)
    800045c8:	00813823          	sd	s0,16(sp)
    800045cc:	00913423          	sd	s1,8(sp)
    800045d0:	01213023          	sd	s2,0(sp)
    800045d4:	02010413          	addi	s0,sp,32
    800045d8:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800045dc:	00090513          	mv	a0,s2
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	f88080e7          	jalr	-120(ra) # 80004568 <_ZN10KSemaphore15getFirstBlockedEv>
    800045e8:	00050493          	mv	s1,a0
    800045ec:	02050063          	beqz	a0,8000460c <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800045f0:	00090513          	mv	a0,s2
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	f90080e7          	jalr	-112(ra) # 80004584 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800045fc:	00048513          	mv	a0,s1
    80004600:	fffff097          	auipc	ra,0xfffff
    80004604:	e8c080e7          	jalr	-372(ra) # 8000348c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004608:	fd5ff06f          	j	800045dc <_ZN10KSemaphoreD1Ev+0x1c>
}
    8000460c:	01813083          	ld	ra,24(sp)
    80004610:	01013403          	ld	s0,16(sp)
    80004614:	00813483          	ld	s1,8(sp)
    80004618:	00013903          	ld	s2,0(sp)
    8000461c:	02010113          	addi	sp,sp,32
    80004620:	00008067          	ret

0000000080004624 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004624:	fe010113          	addi	sp,sp,-32
    80004628:	00113c23          	sd	ra,24(sp)
    8000462c:	00813823          	sd	s0,16(sp)
    80004630:	00913423          	sd	s1,8(sp)
    80004634:	01213023          	sd	s2,0(sp)
    80004638:	02010413          	addi	s0,sp,32
    8000463c:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004640:	00000097          	auipc	ra,0x0
    80004644:	f28080e7          	jalr	-216(ra) # 80004568 <_ZN10KSemaphore15getFirstBlockedEv>
    80004648:	00050493          	mv	s1,a0
    removeFirstBlocked();
    8000464c:	00090513          	mv	a0,s2
    80004650:	00000097          	auipc	ra,0x0
    80004654:	f34080e7          	jalr	-204(ra) # 80004584 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004658:	00048863          	beqz	s1,80004668 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    8000465c:	00048513          	mv	a0,s1
    80004660:	fffff097          	auipc	ra,0xfffff
    80004664:	e2c080e7          	jalr	-468(ra) # 8000348c <_ZN9Scheduler3putEP3PCB>
    }
}
    80004668:	01813083          	ld	ra,24(sp)
    8000466c:	01013403          	ld	s0,16(sp)
    80004670:	00813483          	ld	s1,8(sp)
    80004674:	00013903          	ld	s2,0(sp)
    80004678:	02010113          	addi	sp,sp,32
    8000467c:	00008067          	ret

0000000080004680 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004680:	01052783          	lw	a5,16(a0)
    80004684:	0017879b          	addiw	a5,a5,1
    80004688:	0007871b          	sext.w	a4,a5
    8000468c:	00f52823          	sw	a5,16(a0)
    80004690:	00e05663          	blez	a4,8000469c <_ZN10KSemaphore6signalEv+0x1c>
}
    80004694:	00000513          	li	a0,0
    80004698:	00008067          	ret
uint64 KSemaphore::signal() {
    8000469c:	ff010113          	addi	sp,sp,-16
    800046a0:	00113423          	sd	ra,8(sp)
    800046a4:	00813023          	sd	s0,0(sp)
    800046a8:	01010413          	addi	s0,sp,16
        unblock();
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	f78080e7          	jalr	-136(ra) # 80004624 <_ZN10KSemaphore7unblockEv>
}
    800046b4:	00000513          	li	a0,0
    800046b8:	00813083          	ld	ra,8(sp)
    800046bc:	00013403          	ld	s0,0(sp)
    800046c0:	01010113          	addi	sp,sp,16
    800046c4:	00008067          	ret

00000000800046c8 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800046c8:	ff010113          	addi	sp,sp,-16
    800046cc:	00113423          	sd	ra,8(sp)
    800046d0:	00813023          	sd	s0,0(sp)
    800046d4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800046d8:	00000097          	auipc	ra,0x0
    800046dc:	cdc080e7          	jalr	-804(ra) # 800043b4 <_Z7kmallocm>
}
    800046e0:	00813083          	ld	ra,8(sp)
    800046e4:	00013403          	ld	s0,0(sp)
    800046e8:	01010113          	addi	sp,sp,16
    800046ec:	00008067          	ret

00000000800046f0 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800046f0:	fd010113          	addi	sp,sp,-48
    800046f4:	02113423          	sd	ra,40(sp)
    800046f8:	02813023          	sd	s0,32(sp)
    800046fc:	00913c23          	sd	s1,24(sp)
    80004700:	01213823          	sd	s2,16(sp)
    80004704:	01313423          	sd	s3,8(sp)
    80004708:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    8000470c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004710:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004714:	01800513          	li	a0,24
    80004718:	00000097          	auipc	ra,0x0
    8000471c:	fb0080e7          	jalr	-80(ra) # 800046c8 <_ZN10KSemaphorenwEm>
    80004720:	00050493          	mv	s1,a0
    80004724:	0009859b          	sext.w	a1,s3
    80004728:	00000097          	auipc	ra,0x0
    8000472c:	d50080e7          	jalr	-688(ra) # 80004478 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80004730:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004734:	02048263          	beqz	s1,80004758 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    80004738:	00000513          	li	a0,0
}
    8000473c:	02813083          	ld	ra,40(sp)
    80004740:	02013403          	ld	s0,32(sp)
    80004744:	01813483          	ld	s1,24(sp)
    80004748:	01013903          	ld	s2,16(sp)
    8000474c:	00813983          	ld	s3,8(sp)
    80004750:	03010113          	addi	sp,sp,48
    80004754:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004758:	fff00513          	li	a0,-1
    8000475c:	fe1ff06f          	j	8000473c <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004760 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004760:	ff010113          	addi	sp,sp,-16
    80004764:	00113423          	sd	ra,8(sp)
    80004768:	00813023          	sd	s0,0(sp)
    8000476c:	01010413          	addi	s0,sp,16
    kfree(p);
    80004770:	00000097          	auipc	ra,0x0
    80004774:	ca8080e7          	jalr	-856(ra) # 80004418 <_Z5kfreePv>
}
    80004778:	00813083          	ld	ra,8(sp)
    8000477c:	00013403          	ld	s0,0(sp)
    80004780:	01010113          	addi	sp,sp,16
    80004784:	00008067          	ret

0000000080004788 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004788:	fe010113          	addi	sp,sp,-32
    8000478c:	00113c23          	sd	ra,24(sp)
    80004790:	00813823          	sd	s0,16(sp)
    80004794:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004798:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    8000479c:	00000097          	auipc	ra,0x0
    800047a0:	d84080e7          	jalr	-636(ra) # 80004520 <_ZN10KSemaphore4waitEv>
    800047a4:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800047a8:	fe843783          	ld	a5,-24(s0)
    800047ac:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    800047b0:	00000097          	auipc	ra,0x0
    800047b4:	828080e7          	jalr	-2008(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800047b8:	01813083          	ld	ra,24(sp)
    800047bc:	01013403          	ld	s0,16(sp)
    800047c0:	02010113          	addi	sp,sp,32
    800047c4:	00008067          	ret

00000000800047c8 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    800047c8:	fe010113          	addi	sp,sp,-32
    800047cc:	00113c23          	sd	ra,24(sp)
    800047d0:	00813823          	sd	s0,16(sp)
    800047d4:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047d8:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    800047dc:	00000097          	auipc	ra,0x0
    800047e0:	ea4080e7          	jalr	-348(ra) # 80004680 <_ZN10KSemaphore6signalEv>
    800047e4:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800047e8:	fe843783          	ld	a5,-24(s0)
    800047ec:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    800047f0:	fffff097          	auipc	ra,0xfffff
    800047f4:	7e8080e7          	jalr	2024(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800047f8:	01813083          	ld	ra,24(sp)
    800047fc:	01013403          	ld	s0,16(sp)
    80004800:	02010113          	addi	sp,sp,32
    80004804:	00008067          	ret

0000000080004808 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004808:	fe010113          	addi	sp,sp,-32
    8000480c:	00113c23          	sd	ra,24(sp)
    80004810:	00813823          	sd	s0,16(sp)
    80004814:	00913423          	sd	s1,8(sp)
    80004818:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000481c:	00058493          	mv	s1,a1
    delete kSem;
    80004820:	00048e63          	beqz	s1,8000483c <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004824:	00048513          	mv	a0,s1
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	d98080e7          	jalr	-616(ra) # 800045c0 <_ZN10KSemaphoreD1Ev>
    80004830:	00048513          	mv	a0,s1
    80004834:	00000097          	auipc	ra,0x0
    80004838:	f2c080e7          	jalr	-212(ra) # 80004760 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    8000483c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004840:	fffff097          	auipc	ra,0xfffff
    80004844:	798080e7          	jalr	1944(ra) # 80003fd8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004848:	01813083          	ld	ra,24(sp)
    8000484c:	01013403          	ld	s0,16(sp)
    80004850:	00813483          	ld	s1,8(sp)
    80004854:	02010113          	addi	sp,sp,32
    80004858:	00008067          	ret

000000008000485c <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    8000485c:	fe010113          	addi	sp,sp,-32
    80004860:	00113c23          	sd	ra,24(sp)
    80004864:	00813823          	sd	s0,16(sp)
    80004868:	00913423          	sd	s1,8(sp)
    8000486c:	01213023          	sd	s2,0(sp)
    80004870:	02010413          	addi	s0,sp,32
    80004874:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004878:	00000913          	li	s2,0
    8000487c:	00c0006f          	j	80004888 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	ab4080e7          	jalr	-1356(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	c88080e7          	jalr	-888(ra) # 80001510 <getc>
    80004890:	0005059b          	sext.w	a1,a0
    80004894:	07100793          	li	a5,113
    80004898:	02f58a63          	beq	a1,a5,800048cc <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000489c:	0084b503          	ld	a0,8(s1)
    800048a0:	00002097          	auipc	ra,0x2
    800048a4:	c64080e7          	jalr	-924(ra) # 80006504 <_ZN6Buffer3putEi>
        i++;
    800048a8:	0019071b          	addiw	a4,s2,1
    800048ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048b0:	0004a683          	lw	a3,0(s1)
    800048b4:	0026979b          	slliw	a5,a3,0x2
    800048b8:	00d787bb          	addw	a5,a5,a3
    800048bc:	0017979b          	slliw	a5,a5,0x1
    800048c0:	02f767bb          	remw	a5,a4,a5
    800048c4:	fc0792e3          	bnez	a5,80004888 <_Z16producerKeyboardPv+0x2c>
    800048c8:	fb9ff06f          	j	80004880 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800048cc:	00100793          	li	a5,1
    800048d0:	00007717          	auipc	a4,0x7
    800048d4:	36f72423          	sw	a5,872(a4) # 8000bc38 <threadEnd>

    delete data->buffer;
    800048d8:	0084b903          	ld	s2,8(s1)
    800048dc:	00090e63          	beqz	s2,800048f8 <_Z16producerKeyboardPv+0x9c>
    800048e0:	00090513          	mv	a0,s2
    800048e4:	00002097          	auipc	ra,0x2
    800048e8:	b64080e7          	jalr	-1180(ra) # 80006448 <_ZN6BufferD1Ev>
    800048ec:	00090513          	mv	a0,s2
    800048f0:	fffff097          	auipc	ra,0xfffff
    800048f4:	d98080e7          	jalr	-616(ra) # 80003688 <_ZdlPv>

    sem_signal(data->wait);
    800048f8:	0104b503          	ld	a0,16(s1)
    800048fc:	ffffd097          	auipc	ra,0xffffd
    80004900:	b10080e7          	jalr	-1264(ra) # 8000140c <sem_signal>
}
    80004904:	01813083          	ld	ra,24(sp)
    80004908:	01013403          	ld	s0,16(sp)
    8000490c:	00813483          	ld	s1,8(sp)
    80004910:	00013903          	ld	s2,0(sp)
    80004914:	02010113          	addi	sp,sp,32
    80004918:	00008067          	ret

000000008000491c <_Z8producerPv>:

void producer(void *arg) {
    8000491c:	fe010113          	addi	sp,sp,-32
    80004920:	00113c23          	sd	ra,24(sp)
    80004924:	00813823          	sd	s0,16(sp)
    80004928:	00913423          	sd	s1,8(sp)
    8000492c:	01213023          	sd	s2,0(sp)
    80004930:	02010413          	addi	s0,sp,32
    80004934:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004938:	00000913          	li	s2,0
    8000493c:	00c0006f          	j	80004948 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	9f4080e7          	jalr	-1548(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    80004948:	00007797          	auipc	a5,0x7
    8000494c:	2f07a783          	lw	a5,752(a5) # 8000bc38 <threadEnd>
    80004950:	02079e63          	bnez	a5,8000498c <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004954:	0004a583          	lw	a1,0(s1)
    80004958:	0305859b          	addiw	a1,a1,48
    8000495c:	0084b503          	ld	a0,8(s1)
    80004960:	00002097          	auipc	ra,0x2
    80004964:	ba4080e7          	jalr	-1116(ra) # 80006504 <_ZN6Buffer3putEi>
        i++;
    80004968:	0019071b          	addiw	a4,s2,1
    8000496c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004970:	0004a683          	lw	a3,0(s1)
    80004974:	0026979b          	slliw	a5,a3,0x2
    80004978:	00d787bb          	addw	a5,a5,a3
    8000497c:	0017979b          	slliw	a5,a5,0x1
    80004980:	02f767bb          	remw	a5,a4,a5
    80004984:	fc0792e3          	bnez	a5,80004948 <_Z8producerPv+0x2c>
    80004988:	fb9ff06f          	j	80004940 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000498c:	0104b503          	ld	a0,16(s1)
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	a7c080e7          	jalr	-1412(ra) # 8000140c <sem_signal>
}
    80004998:	01813083          	ld	ra,24(sp)
    8000499c:	01013403          	ld	s0,16(sp)
    800049a0:	00813483          	ld	s1,8(sp)
    800049a4:	00013903          	ld	s2,0(sp)
    800049a8:	02010113          	addi	sp,sp,32
    800049ac:	00008067          	ret

00000000800049b0 <_Z8consumerPv>:

void consumer(void *arg) {
    800049b0:	fd010113          	addi	sp,sp,-48
    800049b4:	02113423          	sd	ra,40(sp)
    800049b8:	02813023          	sd	s0,32(sp)
    800049bc:	00913c23          	sd	s1,24(sp)
    800049c0:	01213823          	sd	s2,16(sp)
    800049c4:	01313423          	sd	s3,8(sp)
    800049c8:	03010413          	addi	s0,sp,48
    800049cc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    800049d0:	00000993          	li	s3,0
    800049d4:	01c0006f          	j	800049f0 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	95c080e7          	jalr	-1700(ra) # 80001334 <thread_dispatch>
    800049e0:	0500006f          	j	80004a30 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800049e4:	00a00513          	li	a0,10
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	b50080e7          	jalr	-1200(ra) # 80001538 <putc>
    while (!threadEnd) {
    800049f0:	00007797          	auipc	a5,0x7
    800049f4:	2487a783          	lw	a5,584(a5) # 8000bc38 <threadEnd>
    800049f8:	04079463          	bnez	a5,80004a40 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    800049fc:	00893503          	ld	a0,8(s2)
    80004a00:	00002097          	auipc	ra,0x2
    80004a04:	b94080e7          	jalr	-1132(ra) # 80006594 <_ZN6Buffer3getEv>
        i++;
    80004a08:	0019849b          	addiw	s1,s3,1
    80004a0c:	0004899b          	sext.w	s3,s1
        putc(key);
    80004a10:	0ff57513          	andi	a0,a0,255
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	b24080e7          	jalr	-1244(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004a1c:	00092703          	lw	a4,0(s2)
    80004a20:	0027179b          	slliw	a5,a4,0x2
    80004a24:	00e787bb          	addw	a5,a5,a4
    80004a28:	02f4e7bb          	remw	a5,s1,a5
    80004a2c:	fa0786e3          	beqz	a5,800049d8 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004a30:	05000793          	li	a5,80
    80004a34:	02f4e4bb          	remw	s1,s1,a5
    80004a38:	fa049ce3          	bnez	s1,800049f0 <_Z8consumerPv+0x40>
    80004a3c:	fa9ff06f          	j	800049e4 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004a40:	01093503          	ld	a0,16(s2)
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	9c8080e7          	jalr	-1592(ra) # 8000140c <sem_signal>
}
    80004a4c:	02813083          	ld	ra,40(sp)
    80004a50:	02013403          	ld	s0,32(sp)
    80004a54:	01813483          	ld	s1,24(sp)
    80004a58:	01013903          	ld	s2,16(sp)
    80004a5c:	00813983          	ld	s3,8(sp)
    80004a60:	03010113          	addi	sp,sp,48
    80004a64:	00008067          	ret

0000000080004a68 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004a68:	f9010113          	addi	sp,sp,-112
    80004a6c:	06113423          	sd	ra,104(sp)
    80004a70:	06813023          	sd	s0,96(sp)
    80004a74:	04913c23          	sd	s1,88(sp)
    80004a78:	05213823          	sd	s2,80(sp)
    80004a7c:	05313423          	sd	s3,72(sp)
    80004a80:	05413023          	sd	s4,64(sp)
    80004a84:	03513c23          	sd	s5,56(sp)
    80004a88:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004a8c:	00005517          	auipc	a0,0x5
    80004a90:	90c50513          	addi	a0,a0,-1780 # 80009398 <_ZZN5Riscv12printIntegerEmE6digits+0x18>
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	204080e7          	jalr	516(ra) # 80005c98 <_Z11printStringPKc>
    getString(input, 30);
    80004a9c:	01e00593          	li	a1,30
    80004aa0:	fa040493          	addi	s1,s0,-96
    80004aa4:	00048513          	mv	a0,s1
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	26c080e7          	jalr	620(ra) # 80005d14 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ab0:	00048513          	mv	a0,s1
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	32c080e7          	jalr	812(ra) # 80005de0 <_Z11stringToIntPKc>
    80004abc:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004ac0:	00005517          	auipc	a0,0x5
    80004ac4:	8f850513          	addi	a0,a0,-1800 # 800093b8 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    80004ac8:	00001097          	auipc	ra,0x1
    80004acc:	1d0080e7          	jalr	464(ra) # 80005c98 <_Z11printStringPKc>
    getString(input, 30);
    80004ad0:	01e00593          	li	a1,30
    80004ad4:	00048513          	mv	a0,s1
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	23c080e7          	jalr	572(ra) # 80005d14 <_Z9getStringPci>
    n = stringToInt(input);
    80004ae0:	00048513          	mv	a0,s1
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	2fc080e7          	jalr	764(ra) # 80005de0 <_Z11stringToIntPKc>
    80004aec:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004af0:	00005517          	auipc	a0,0x5
    80004af4:	8e850513          	addi	a0,a0,-1816 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    80004af8:	00001097          	auipc	ra,0x1
    80004afc:	1a0080e7          	jalr	416(ra) # 80005c98 <_Z11printStringPKc>
    80004b00:	00000613          	li	a2,0
    80004b04:	00a00593          	li	a1,10
    80004b08:	00090513          	mv	a0,s2
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	324080e7          	jalr	804(ra) # 80005e30 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004b14:	00005517          	auipc	a0,0x5
    80004b18:	8dc50513          	addi	a0,a0,-1828 # 800093f0 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	17c080e7          	jalr	380(ra) # 80005c98 <_Z11printStringPKc>
    80004b24:	00000613          	li	a2,0
    80004b28:	00a00593          	li	a1,10
    80004b2c:	00048513          	mv	a0,s1
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	300080e7          	jalr	768(ra) # 80005e30 <_Z8printIntiii>
    printString(".\n");
    80004b38:	00004517          	auipc	a0,0x4
    80004b3c:	71850513          	addi	a0,a0,1816 # 80009250 <CONSOLE_STATUS+0x240>
    80004b40:	00001097          	auipc	ra,0x1
    80004b44:	158080e7          	jalr	344(ra) # 80005c98 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004b48:	03800513          	li	a0,56
    80004b4c:	fffff097          	auipc	ra,0xfffff
    80004b50:	b14080e7          	jalr	-1260(ra) # 80003660 <_Znwm>
    80004b54:	00050a13          	mv	s4,a0
    80004b58:	00048593          	mv	a1,s1
    80004b5c:	00002097          	auipc	ra,0x2
    80004b60:	864080e7          	jalr	-1948(ra) # 800063c0 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004b64:	00000593          	li	a1,0
    80004b68:	00007517          	auipc	a0,0x7
    80004b6c:	0d850513          	addi	a0,a0,216 # 8000bc40 <waitForAll>
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	80c080e7          	jalr	-2036(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004b78:	00391793          	slli	a5,s2,0x3
    80004b7c:	00f78793          	addi	a5,a5,15
    80004b80:	ff07f793          	andi	a5,a5,-16
    80004b84:	40f10133          	sub	sp,sp,a5
    80004b88:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004b8c:	0019071b          	addiw	a4,s2,1
    80004b90:	00171793          	slli	a5,a4,0x1
    80004b94:	00e787b3          	add	a5,a5,a4
    80004b98:	00379793          	slli	a5,a5,0x3
    80004b9c:	00f78793          	addi	a5,a5,15
    80004ba0:	ff07f793          	andi	a5,a5,-16
    80004ba4:	40f10133          	sub	sp,sp,a5
    80004ba8:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004bac:	00191613          	slli	a2,s2,0x1
    80004bb0:	012607b3          	add	a5,a2,s2
    80004bb4:	00379793          	slli	a5,a5,0x3
    80004bb8:	00f987b3          	add	a5,s3,a5
    80004bbc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004bc0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004bc4:	00007717          	auipc	a4,0x7
    80004bc8:	07c73703          	ld	a4,124(a4) # 8000bc40 <waitForAll>
    80004bcc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004bd0:	00078613          	mv	a2,a5
    80004bd4:	00000597          	auipc	a1,0x0
    80004bd8:	ddc58593          	addi	a1,a1,-548 # 800049b0 <_Z8consumerPv>
    80004bdc:	f9840513          	addi	a0,s0,-104
    80004be0:	ffffc097          	auipc	ra,0xffffc
    80004be4:	6d4080e7          	jalr	1748(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004be8:	00000493          	li	s1,0
    80004bec:	0280006f          	j	80004c14 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004bf0:	00000597          	auipc	a1,0x0
    80004bf4:	c6c58593          	addi	a1,a1,-916 # 8000485c <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004bf8:	00179613          	slli	a2,a5,0x1
    80004bfc:	00f60633          	add	a2,a2,a5
    80004c00:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004c04:	00c98633          	add	a2,s3,a2
    80004c08:	ffffc097          	auipc	ra,0xffffc
    80004c0c:	6ac080e7          	jalr	1708(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004c10:	0014849b          	addiw	s1,s1,1
    80004c14:	0524d263          	bge	s1,s2,80004c58 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004c18:	00149793          	slli	a5,s1,0x1
    80004c1c:	009787b3          	add	a5,a5,s1
    80004c20:	00379793          	slli	a5,a5,0x3
    80004c24:	00f987b3          	add	a5,s3,a5
    80004c28:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004c2c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004c30:	00007717          	auipc	a4,0x7
    80004c34:	01073703          	ld	a4,16(a4) # 8000bc40 <waitForAll>
    80004c38:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004c3c:	00048793          	mv	a5,s1
    80004c40:	00349513          	slli	a0,s1,0x3
    80004c44:	00aa8533          	add	a0,s5,a0
    80004c48:	fa9054e3          	blez	s1,80004bf0 <_Z22producerConsumer_C_APIv+0x188>
    80004c4c:	00000597          	auipc	a1,0x0
    80004c50:	cd058593          	addi	a1,a1,-816 # 8000491c <_Z8producerPv>
    80004c54:	fa5ff06f          	j	80004bf8 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004c58:	ffffc097          	auipc	ra,0xffffc
    80004c5c:	6dc080e7          	jalr	1756(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004c60:	00000493          	li	s1,0
    80004c64:	00994e63          	blt	s2,s1,80004c80 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004c68:	00007517          	auipc	a0,0x7
    80004c6c:	fd853503          	ld	a0,-40(a0) # 8000bc40 <waitForAll>
    80004c70:	ffffc097          	auipc	ra,0xffffc
    80004c74:	770080e7          	jalr	1904(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004c78:	0014849b          	addiw	s1,s1,1
    80004c7c:	fe9ff06f          	j	80004c64 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004c80:	00007517          	auipc	a0,0x7
    80004c84:	fc053503          	ld	a0,-64(a0) # 8000bc40 <waitForAll>
    80004c88:	ffffc097          	auipc	ra,0xffffc
    80004c8c:	72c080e7          	jalr	1836(ra) # 800013b4 <sem_close>
    80004c90:	f9040113          	addi	sp,s0,-112
    80004c94:	06813083          	ld	ra,104(sp)
    80004c98:	06013403          	ld	s0,96(sp)
    80004c9c:	05813483          	ld	s1,88(sp)
    80004ca0:	05013903          	ld	s2,80(sp)
    80004ca4:	04813983          	ld	s3,72(sp)
    80004ca8:	04013a03          	ld	s4,64(sp)
    80004cac:	03813a83          	ld	s5,56(sp)
    80004cb0:	07010113          	addi	sp,sp,112
    80004cb4:	00008067          	ret
    80004cb8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004cbc:	000a0513          	mv	a0,s4
    80004cc0:	fffff097          	auipc	ra,0xfffff
    80004cc4:	9c8080e7          	jalr	-1592(ra) # 80003688 <_ZdlPv>
    80004cc8:	00048513          	mv	a0,s1
    80004ccc:	00008097          	auipc	ra,0x8
    80004cd0:	05c080e7          	jalr	92(ra) # 8000cd28 <_Unwind_Resume>

0000000080004cd4 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004cd4:	fe010113          	addi	sp,sp,-32
    80004cd8:	00113c23          	sd	ra,24(sp)
    80004cdc:	00813823          	sd	s0,16(sp)
    80004ce0:	00913423          	sd	s1,8(sp)
    80004ce4:	01213023          	sd	s2,0(sp)
    80004ce8:	02010413          	addi	s0,sp,32
    80004cec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004cf0:	00100793          	li	a5,1
    80004cf4:	02a7f863          	bgeu	a5,a0,80004d24 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004cf8:	00a00793          	li	a5,10
    80004cfc:	02f577b3          	remu	a5,a0,a5
    80004d00:	02078e63          	beqz	a5,80004d3c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d04:	fff48513          	addi	a0,s1,-1
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	fcc080e7          	jalr	-52(ra) # 80004cd4 <_ZL9fibonaccim>
    80004d10:	00050913          	mv	s2,a0
    80004d14:	ffe48513          	addi	a0,s1,-2
    80004d18:	00000097          	auipc	ra,0x0
    80004d1c:	fbc080e7          	jalr	-68(ra) # 80004cd4 <_ZL9fibonaccim>
    80004d20:	00a90533          	add	a0,s2,a0
}
    80004d24:	01813083          	ld	ra,24(sp)
    80004d28:	01013403          	ld	s0,16(sp)
    80004d2c:	00813483          	ld	s1,8(sp)
    80004d30:	00013903          	ld	s2,0(sp)
    80004d34:	02010113          	addi	sp,sp,32
    80004d38:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d3c:	ffffc097          	auipc	ra,0xffffc
    80004d40:	5f8080e7          	jalr	1528(ra) # 80001334 <thread_dispatch>
    80004d44:	fc1ff06f          	j	80004d04 <_ZL9fibonaccim+0x30>

0000000080004d48 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004d48:	fe010113          	addi	sp,sp,-32
    80004d4c:	00113c23          	sd	ra,24(sp)
    80004d50:	00813823          	sd	s0,16(sp)
    80004d54:	00913423          	sd	s1,8(sp)
    80004d58:	01213023          	sd	s2,0(sp)
    80004d5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d60:	00000913          	li	s2,0
    80004d64:	0380006f          	j	80004d9c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004d68:	ffffc097          	auipc	ra,0xffffc
    80004d6c:	5cc080e7          	jalr	1484(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004d70:	00148493          	addi	s1,s1,1
    80004d74:	000027b7          	lui	a5,0x2
    80004d78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d7c:	0097ee63          	bltu	a5,s1,80004d98 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d80:	00000713          	li	a4,0
    80004d84:	000077b7          	lui	a5,0x7
    80004d88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d8c:	fce7eee3          	bltu	a5,a4,80004d68 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004d90:	00170713          	addi	a4,a4,1
    80004d94:	ff1ff06f          	j	80004d84 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d98:	00190913          	addi	s2,s2,1
    80004d9c:	00900793          	li	a5,9
    80004da0:	0527e063          	bltu	a5,s2,80004de0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004da4:	00004517          	auipc	a0,0x4
    80004da8:	66450513          	addi	a0,a0,1636 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80004dac:	00001097          	auipc	ra,0x1
    80004db0:	eec080e7          	jalr	-276(ra) # 80005c98 <_Z11printStringPKc>
    80004db4:	00000613          	li	a2,0
    80004db8:	00a00593          	li	a1,10
    80004dbc:	0009051b          	sext.w	a0,s2
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	070080e7          	jalr	112(ra) # 80005e30 <_Z8printIntiii>
    80004dc8:	00004517          	auipc	a0,0x4
    80004dcc:	33850513          	addi	a0,a0,824 # 80009100 <CONSOLE_STATUS+0xf0>
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	ec8080e7          	jalr	-312(ra) # 80005c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004dd8:	00000493          	li	s1,0
    80004ddc:	f99ff06f          	j	80004d74 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004de0:	00004517          	auipc	a0,0x4
    80004de4:	63050513          	addi	a0,a0,1584 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004de8:	00001097          	auipc	ra,0x1
    80004dec:	eb0080e7          	jalr	-336(ra) # 80005c98 <_Z11printStringPKc>
    finishedA = true;
    80004df0:	00100793          	li	a5,1
    80004df4:	00007717          	auipc	a4,0x7
    80004df8:	e4f70a23          	sb	a5,-428(a4) # 8000bc48 <_ZL9finishedA>
}
    80004dfc:	01813083          	ld	ra,24(sp)
    80004e00:	01013403          	ld	s0,16(sp)
    80004e04:	00813483          	ld	s1,8(sp)
    80004e08:	00013903          	ld	s2,0(sp)
    80004e0c:	02010113          	addi	sp,sp,32
    80004e10:	00008067          	ret

0000000080004e14 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004e14:	fe010113          	addi	sp,sp,-32
    80004e18:	00113c23          	sd	ra,24(sp)
    80004e1c:	00813823          	sd	s0,16(sp)
    80004e20:	00913423          	sd	s1,8(sp)
    80004e24:	01213023          	sd	s2,0(sp)
    80004e28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e2c:	00000913          	li	s2,0
    80004e30:	0380006f          	j	80004e68 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	500080e7          	jalr	1280(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004e3c:	00148493          	addi	s1,s1,1
    80004e40:	000027b7          	lui	a5,0x2
    80004e44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e48:	0097ee63          	bltu	a5,s1,80004e64 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e4c:	00000713          	li	a4,0
    80004e50:	000077b7          	lui	a5,0x7
    80004e54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e58:	fce7eee3          	bltu	a5,a4,80004e34 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004e5c:	00170713          	addi	a4,a4,1
    80004e60:	ff1ff06f          	j	80004e50 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e64:	00190913          	addi	s2,s2,1
    80004e68:	00f00793          	li	a5,15
    80004e6c:	0527e063          	bltu	a5,s2,80004eac <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e70:	00004517          	auipc	a0,0x4
    80004e74:	5b050513          	addi	a0,a0,1456 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	e20080e7          	jalr	-480(ra) # 80005c98 <_Z11printStringPKc>
    80004e80:	00000613          	li	a2,0
    80004e84:	00a00593          	li	a1,10
    80004e88:	0009051b          	sext.w	a0,s2
    80004e8c:	00001097          	auipc	ra,0x1
    80004e90:	fa4080e7          	jalr	-92(ra) # 80005e30 <_Z8printIntiii>
    80004e94:	00004517          	auipc	a0,0x4
    80004e98:	26c50513          	addi	a0,a0,620 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e9c:	00001097          	auipc	ra,0x1
    80004ea0:	dfc080e7          	jalr	-516(ra) # 80005c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ea4:	00000493          	li	s1,0
    80004ea8:	f99ff06f          	j	80004e40 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004eac:	ffffc097          	auipc	ra,0xffffc
    80004eb0:	488080e7          	jalr	1160(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004eb4:	00004517          	auipc	a0,0x4
    80004eb8:	57450513          	addi	a0,a0,1396 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	ddc080e7          	jalr	-548(ra) # 80005c98 <_Z11printStringPKc>
    finishedB = true;
    80004ec4:	00100793          	li	a5,1
    80004ec8:	00007717          	auipc	a4,0x7
    80004ecc:	d8f700a3          	sb	a5,-639(a4) # 8000bc49 <_ZL9finishedB>
}
    80004ed0:	01813083          	ld	ra,24(sp)
    80004ed4:	01013403          	ld	s0,16(sp)
    80004ed8:	00813483          	ld	s1,8(sp)
    80004edc:	00013903          	ld	s2,0(sp)
    80004ee0:	02010113          	addi	sp,sp,32
    80004ee4:	00008067          	ret

0000000080004ee8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004ee8:	fe010113          	addi	sp,sp,-32
    80004eec:	00113c23          	sd	ra,24(sp)
    80004ef0:	00813823          	sd	s0,16(sp)
    80004ef4:	00913423          	sd	s1,8(sp)
    80004ef8:	01213023          	sd	s2,0(sp)
    80004efc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f00:	00000493          	li	s1,0
    80004f04:	0400006f          	j	80004f44 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	53050513          	addi	a0,a0,1328 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	d88080e7          	jalr	-632(ra) # 80005c98 <_Z11printStringPKc>
    80004f18:	00000613          	li	a2,0
    80004f1c:	00a00593          	li	a1,10
    80004f20:	00048513          	mv	a0,s1
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	f0c080e7          	jalr	-244(ra) # 80005e30 <_Z8printIntiii>
    80004f2c:	00004517          	auipc	a0,0x4
    80004f30:	1d450513          	addi	a0,a0,468 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	d64080e7          	jalr	-668(ra) # 80005c98 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f3c:	0014849b          	addiw	s1,s1,1
    80004f40:	0ff4f493          	andi	s1,s1,255
    80004f44:	00200793          	li	a5,2
    80004f48:	fc97f0e3          	bgeu	a5,s1,80004f08 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004f4c:	00004517          	auipc	a0,0x4
    80004f50:	4f450513          	addi	a0,a0,1268 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80004f54:	00001097          	auipc	ra,0x1
    80004f58:	d44080e7          	jalr	-700(ra) # 80005c98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f5c:	00700313          	li	t1,7
    thread_dispatch();
    80004f60:	ffffc097          	auipc	ra,0xffffc
    80004f64:	3d4080e7          	jalr	980(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f68:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004f6c:	00004517          	auipc	a0,0x4
    80004f70:	4e450513          	addi	a0,a0,1252 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	d24080e7          	jalr	-732(ra) # 80005c98 <_Z11printStringPKc>
    80004f7c:	00000613          	li	a2,0
    80004f80:	00a00593          	li	a1,10
    80004f84:	0009051b          	sext.w	a0,s2
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	ea8080e7          	jalr	-344(ra) # 80005e30 <_Z8printIntiii>
    80004f90:	00004517          	auipc	a0,0x4
    80004f94:	17050513          	addi	a0,a0,368 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	d00080e7          	jalr	-768(ra) # 80005c98 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004fa0:	00c00513          	li	a0,12
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	d30080e7          	jalr	-720(ra) # 80004cd4 <_ZL9fibonaccim>
    80004fac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	4a850513          	addi	a0,a0,1192 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xd8>
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	ce0080e7          	jalr	-800(ra) # 80005c98 <_Z11printStringPKc>
    80004fc0:	00000613          	li	a2,0
    80004fc4:	00a00593          	li	a1,10
    80004fc8:	0009051b          	sext.w	a0,s2
    80004fcc:	00001097          	auipc	ra,0x1
    80004fd0:	e64080e7          	jalr	-412(ra) # 80005e30 <_Z8printIntiii>
    80004fd4:	00004517          	auipc	a0,0x4
    80004fd8:	12c50513          	addi	a0,a0,300 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	cbc080e7          	jalr	-836(ra) # 80005c98 <_Z11printStringPKc>
    80004fe4:	0400006f          	j	80005024 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004fe8:	00004517          	auipc	a0,0x4
    80004fec:	45050513          	addi	a0,a0,1104 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	ca8080e7          	jalr	-856(ra) # 80005c98 <_Z11printStringPKc>
    80004ff8:	00000613          	li	a2,0
    80004ffc:	00a00593          	li	a1,10
    80005000:	00048513          	mv	a0,s1
    80005004:	00001097          	auipc	ra,0x1
    80005008:	e2c080e7          	jalr	-468(ra) # 80005e30 <_Z8printIntiii>
    8000500c:	00004517          	auipc	a0,0x4
    80005010:	0f450513          	addi	a0,a0,244 # 80009100 <CONSOLE_STATUS+0xf0>
    80005014:	00001097          	auipc	ra,0x1
    80005018:	c84080e7          	jalr	-892(ra) # 80005c98 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000501c:	0014849b          	addiw	s1,s1,1
    80005020:	0ff4f493          	andi	s1,s1,255
    80005024:	00500793          	li	a5,5
    80005028:	fc97f0e3          	bgeu	a5,s1,80004fe8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    8000502c:	ffffc097          	auipc	ra,0xffffc
    80005030:	308080e7          	jalr	776(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005034:	00004517          	auipc	a0,0x4
    80005038:	43450513          	addi	a0,a0,1076 # 80009468 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    8000503c:	00001097          	auipc	ra,0x1
    80005040:	c5c080e7          	jalr	-932(ra) # 80005c98 <_Z11printStringPKc>
    finishedC = true;
    80005044:	00100793          	li	a5,1
    80005048:	00007717          	auipc	a4,0x7
    8000504c:	c0f70123          	sb	a5,-1022(a4) # 8000bc4a <_ZL9finishedC>
}
    80005050:	01813083          	ld	ra,24(sp)
    80005054:	01013403          	ld	s0,16(sp)
    80005058:	00813483          	ld	s1,8(sp)
    8000505c:	00013903          	ld	s2,0(sp)
    80005060:	02010113          	addi	sp,sp,32
    80005064:	00008067          	ret

0000000080005068 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005068:	fe010113          	addi	sp,sp,-32
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00913423          	sd	s1,8(sp)
    80005078:	01213023          	sd	s2,0(sp)
    8000507c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005080:	00a00493          	li	s1,10
    80005084:	0400006f          	j	800050c4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005088:	00004517          	auipc	a0,0x4
    8000508c:	3f050513          	addi	a0,a0,1008 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80005090:	00001097          	auipc	ra,0x1
    80005094:	c08080e7          	jalr	-1016(ra) # 80005c98 <_Z11printStringPKc>
    80005098:	00000613          	li	a2,0
    8000509c:	00a00593          	li	a1,10
    800050a0:	00048513          	mv	a0,s1
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	d8c080e7          	jalr	-628(ra) # 80005e30 <_Z8printIntiii>
    800050ac:	00004517          	auipc	a0,0x4
    800050b0:	05450513          	addi	a0,a0,84 # 80009100 <CONSOLE_STATUS+0xf0>
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	be4080e7          	jalr	-1052(ra) # 80005c98 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800050bc:	0014849b          	addiw	s1,s1,1
    800050c0:	0ff4f493          	andi	s1,s1,255
    800050c4:	00c00793          	li	a5,12
    800050c8:	fc97f0e3          	bgeu	a5,s1,80005088 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800050cc:	00004517          	auipc	a0,0x4
    800050d0:	3b450513          	addi	a0,a0,948 # 80009480 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	bc4080e7          	jalr	-1084(ra) # 80005c98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800050dc:	00500313          	li	t1,5
    thread_dispatch();
    800050e0:	ffffc097          	auipc	ra,0xffffc
    800050e4:	254080e7          	jalr	596(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    800050e8:	01000513          	li	a0,16
    800050ec:	00000097          	auipc	ra,0x0
    800050f0:	be8080e7          	jalr	-1048(ra) # 80004cd4 <_ZL9fibonaccim>
    800050f4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800050f8:	00004517          	auipc	a0,0x4
    800050fc:	39850513          	addi	a0,a0,920 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80005100:	00001097          	auipc	ra,0x1
    80005104:	b98080e7          	jalr	-1128(ra) # 80005c98 <_Z11printStringPKc>
    80005108:	00000613          	li	a2,0
    8000510c:	00a00593          	li	a1,10
    80005110:	0009051b          	sext.w	a0,s2
    80005114:	00001097          	auipc	ra,0x1
    80005118:	d1c080e7          	jalr	-740(ra) # 80005e30 <_Z8printIntiii>
    8000511c:	00004517          	auipc	a0,0x4
    80005120:	fe450513          	addi	a0,a0,-28 # 80009100 <CONSOLE_STATUS+0xf0>
    80005124:	00001097          	auipc	ra,0x1
    80005128:	b74080e7          	jalr	-1164(ra) # 80005c98 <_Z11printStringPKc>
    8000512c:	0400006f          	j	8000516c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005130:	00004517          	auipc	a0,0x4
    80005134:	34850513          	addi	a0,a0,840 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	b60080e7          	jalr	-1184(ra) # 80005c98 <_Z11printStringPKc>
    80005140:	00000613          	li	a2,0
    80005144:	00a00593          	li	a1,10
    80005148:	00048513          	mv	a0,s1
    8000514c:	00001097          	auipc	ra,0x1
    80005150:	ce4080e7          	jalr	-796(ra) # 80005e30 <_Z8printIntiii>
    80005154:	00004517          	auipc	a0,0x4
    80005158:	fac50513          	addi	a0,a0,-84 # 80009100 <CONSOLE_STATUS+0xf0>
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	b3c080e7          	jalr	-1220(ra) # 80005c98 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005164:	0014849b          	addiw	s1,s1,1
    80005168:	0ff4f493          	andi	s1,s1,255
    8000516c:	00f00793          	li	a5,15
    80005170:	fc97f0e3          	bgeu	a5,s1,80005130 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	1c0080e7          	jalr	448(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    8000517c:	00004517          	auipc	a0,0x4
    80005180:	32450513          	addi	a0,a0,804 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80005184:	00001097          	auipc	ra,0x1
    80005188:	b14080e7          	jalr	-1260(ra) # 80005c98 <_Z11printStringPKc>
    finishedD = true;
    8000518c:	00100793          	li	a5,1
    80005190:	00007717          	auipc	a4,0x7
    80005194:	aaf70da3          	sb	a5,-1349(a4) # 8000bc4b <_ZL9finishedD>
}
    80005198:	01813083          	ld	ra,24(sp)
    8000519c:	01013403          	ld	s0,16(sp)
    800051a0:	00813483          	ld	s1,8(sp)
    800051a4:	00013903          	ld	s2,0(sp)
    800051a8:	02010113          	addi	sp,sp,32
    800051ac:	00008067          	ret

00000000800051b0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800051b0:	fc010113          	addi	sp,sp,-64
    800051b4:	02113c23          	sd	ra,56(sp)
    800051b8:	02813823          	sd	s0,48(sp)
    800051bc:	02913423          	sd	s1,40(sp)
    800051c0:	03213023          	sd	s2,32(sp)
    800051c4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    800051c8:	01000513          	li	a0,16
    800051cc:	ffffe097          	auipc	ra,0xffffe
    800051d0:	494080e7          	jalr	1172(ra) # 80003660 <_Znwm>
    800051d4:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    800051d8:	ffffe097          	auipc	ra,0xffffe
    800051dc:	658080e7          	jalr	1624(ra) # 80003830 <_ZN6ThreadC1Ev>
    800051e0:	00007797          	auipc	a5,0x7
    800051e4:	86078793          	addi	a5,a5,-1952 # 8000ba40 <_ZTV7WorkerA+0x10>
    800051e8:	00f4b023          	sd	a5,0(s1)
    800051ec:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800051f0:	00004517          	auipc	a0,0x4
    800051f4:	2c050513          	addi	a0,a0,704 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    800051f8:	00001097          	auipc	ra,0x1
    800051fc:	aa0080e7          	jalr	-1376(ra) # 80005c98 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80005200:	01000513          	li	a0,16
    80005204:	ffffe097          	auipc	ra,0xffffe
    80005208:	45c080e7          	jalr	1116(ra) # 80003660 <_Znwm>
    8000520c:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80005210:	ffffe097          	auipc	ra,0xffffe
    80005214:	620080e7          	jalr	1568(ra) # 80003830 <_ZN6ThreadC1Ev>
    80005218:	00007797          	auipc	a5,0x7
    8000521c:	85078793          	addi	a5,a5,-1968 # 8000ba68 <_ZTV7WorkerB+0x10>
    80005220:	00f4b023          	sd	a5,0(s1)
    80005224:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80005228:	00004517          	auipc	a0,0x4
    8000522c:	2a050513          	addi	a0,a0,672 # 800094c8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005230:	00001097          	auipc	ra,0x1
    80005234:	a68080e7          	jalr	-1432(ra) # 80005c98 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80005238:	01000513          	li	a0,16
    8000523c:	ffffe097          	auipc	ra,0xffffe
    80005240:	424080e7          	jalr	1060(ra) # 80003660 <_Znwm>
    80005244:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80005248:	ffffe097          	auipc	ra,0xffffe
    8000524c:	5e8080e7          	jalr	1512(ra) # 80003830 <_ZN6ThreadC1Ev>
    80005250:	00007797          	auipc	a5,0x7
    80005254:	84078793          	addi	a5,a5,-1984 # 8000ba90 <_ZTV7WorkerC+0x10>
    80005258:	00f4b023          	sd	a5,0(s1)
    8000525c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005260:	00004517          	auipc	a0,0x4
    80005264:	28050513          	addi	a0,a0,640 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	a30080e7          	jalr	-1488(ra) # 80005c98 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005270:	01000513          	li	a0,16
    80005274:	ffffe097          	auipc	ra,0xffffe
    80005278:	3ec080e7          	jalr	1004(ra) # 80003660 <_Znwm>
    8000527c:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80005280:	ffffe097          	auipc	ra,0xffffe
    80005284:	5b0080e7          	jalr	1456(ra) # 80003830 <_ZN6ThreadC1Ev>
    80005288:	00007797          	auipc	a5,0x7
    8000528c:	83078793          	addi	a5,a5,-2000 # 8000bab8 <_ZTV7WorkerD+0x10>
    80005290:	00f4b023          	sd	a5,0(s1)
    80005294:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005298:	00004517          	auipc	a0,0x4
    8000529c:	26050513          	addi	a0,a0,608 # 800094f8 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800052a0:	00001097          	auipc	ra,0x1
    800052a4:	9f8080e7          	jalr	-1544(ra) # 80005c98 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800052a8:	00000493          	li	s1,0
    800052ac:	00300793          	li	a5,3
    800052b0:	0297c663          	blt	a5,s1,800052dc <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    800052b4:	00349793          	slli	a5,s1,0x3
    800052b8:	fe040713          	addi	a4,s0,-32
    800052bc:	00f707b3          	add	a5,a4,a5
    800052c0:	fe07b503          	ld	a0,-32(a5)
    800052c4:	ffffe097          	auipc	ra,0xffffe
    800052c8:	46c080e7          	jalr	1132(ra) # 80003730 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800052cc:	0014849b          	addiw	s1,s1,1
    800052d0:	fddff06f          	j	800052ac <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800052d4:	ffffe097          	auipc	ra,0xffffe
    800052d8:	494080e7          	jalr	1172(ra) # 80003768 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800052dc:	00007797          	auipc	a5,0x7
    800052e0:	96c7c783          	lbu	a5,-1684(a5) # 8000bc48 <_ZL9finishedA>
    800052e4:	fe0788e3          	beqz	a5,800052d4 <_Z20Threads_CPP_API_testv+0x124>
    800052e8:	00007797          	auipc	a5,0x7
    800052ec:	9617c783          	lbu	a5,-1695(a5) # 8000bc49 <_ZL9finishedB>
    800052f0:	fe0782e3          	beqz	a5,800052d4 <_Z20Threads_CPP_API_testv+0x124>
    800052f4:	00007797          	auipc	a5,0x7
    800052f8:	9567c783          	lbu	a5,-1706(a5) # 8000bc4a <_ZL9finishedC>
    800052fc:	fc078ce3          	beqz	a5,800052d4 <_Z20Threads_CPP_API_testv+0x124>
    80005300:	00007797          	auipc	a5,0x7
    80005304:	94b7c783          	lbu	a5,-1717(a5) # 8000bc4b <_ZL9finishedD>
    80005308:	fc0786e3          	beqz	a5,800052d4 <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    8000530c:	fc040493          	addi	s1,s0,-64
    80005310:	0080006f          	j	80005318 <_Z20Threads_CPP_API_testv+0x168>
    80005314:	00848493          	addi	s1,s1,8
    80005318:	fe040793          	addi	a5,s0,-32
    8000531c:	08f48663          	beq	s1,a5,800053a8 <_Z20Threads_CPP_API_testv+0x1f8>
    80005320:	0004b503          	ld	a0,0(s1)
    80005324:	fe0508e3          	beqz	a0,80005314 <_Z20Threads_CPP_API_testv+0x164>
    80005328:	00053783          	ld	a5,0(a0)
    8000532c:	0087b783          	ld	a5,8(a5)
    80005330:	000780e7          	jalr	a5
    80005334:	fe1ff06f          	j	80005314 <_Z20Threads_CPP_API_testv+0x164>
    80005338:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000533c:	00048513          	mv	a0,s1
    80005340:	ffffe097          	auipc	ra,0xffffe
    80005344:	348080e7          	jalr	840(ra) # 80003688 <_ZdlPv>
    80005348:	00090513          	mv	a0,s2
    8000534c:	00008097          	auipc	ra,0x8
    80005350:	9dc080e7          	jalr	-1572(ra) # 8000cd28 <_Unwind_Resume>
    80005354:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005358:	00048513          	mv	a0,s1
    8000535c:	ffffe097          	auipc	ra,0xffffe
    80005360:	32c080e7          	jalr	812(ra) # 80003688 <_ZdlPv>
    80005364:	00090513          	mv	a0,s2
    80005368:	00008097          	auipc	ra,0x8
    8000536c:	9c0080e7          	jalr	-1600(ra) # 8000cd28 <_Unwind_Resume>
    80005370:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005374:	00048513          	mv	a0,s1
    80005378:	ffffe097          	auipc	ra,0xffffe
    8000537c:	310080e7          	jalr	784(ra) # 80003688 <_ZdlPv>
    80005380:	00090513          	mv	a0,s2
    80005384:	00008097          	auipc	ra,0x8
    80005388:	9a4080e7          	jalr	-1628(ra) # 8000cd28 <_Unwind_Resume>
    8000538c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005390:	00048513          	mv	a0,s1
    80005394:	ffffe097          	auipc	ra,0xffffe
    80005398:	2f4080e7          	jalr	756(ra) # 80003688 <_ZdlPv>
    8000539c:	00090513          	mv	a0,s2
    800053a0:	00008097          	auipc	ra,0x8
    800053a4:	988080e7          	jalr	-1656(ra) # 8000cd28 <_Unwind_Resume>
    800053a8:	03813083          	ld	ra,56(sp)
    800053ac:	03013403          	ld	s0,48(sp)
    800053b0:	02813483          	ld	s1,40(sp)
    800053b4:	02013903          	ld	s2,32(sp)
    800053b8:	04010113          	addi	sp,sp,64
    800053bc:	00008067          	ret

00000000800053c0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800053c0:	ff010113          	addi	sp,sp,-16
    800053c4:	00113423          	sd	ra,8(sp)
    800053c8:	00813023          	sd	s0,0(sp)
    800053cc:	01010413          	addi	s0,sp,16
    800053d0:	00006797          	auipc	a5,0x6
    800053d4:	67078793          	addi	a5,a5,1648 # 8000ba40 <_ZTV7WorkerA+0x10>
    800053d8:	00f53023          	sd	a5,0(a0)
    800053dc:	ffffe097          	auipc	ra,0xffffe
    800053e0:	214080e7          	jalr	532(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800053e4:	00813083          	ld	ra,8(sp)
    800053e8:	00013403          	ld	s0,0(sp)
    800053ec:	01010113          	addi	sp,sp,16
    800053f0:	00008067          	ret

00000000800053f4 <_ZN7WorkerAD0Ev>:
    800053f4:	fe010113          	addi	sp,sp,-32
    800053f8:	00113c23          	sd	ra,24(sp)
    800053fc:	00813823          	sd	s0,16(sp)
    80005400:	00913423          	sd	s1,8(sp)
    80005404:	02010413          	addi	s0,sp,32
    80005408:	00050493          	mv	s1,a0
    8000540c:	00006797          	auipc	a5,0x6
    80005410:	63478793          	addi	a5,a5,1588 # 8000ba40 <_ZTV7WorkerA+0x10>
    80005414:	00f53023          	sd	a5,0(a0)
    80005418:	ffffe097          	auipc	ra,0xffffe
    8000541c:	1d8080e7          	jalr	472(ra) # 800035f0 <_ZN6ThreadD1Ev>
    80005420:	00048513          	mv	a0,s1
    80005424:	ffffe097          	auipc	ra,0xffffe
    80005428:	264080e7          	jalr	612(ra) # 80003688 <_ZdlPv>
    8000542c:	01813083          	ld	ra,24(sp)
    80005430:	01013403          	ld	s0,16(sp)
    80005434:	00813483          	ld	s1,8(sp)
    80005438:	02010113          	addi	sp,sp,32
    8000543c:	00008067          	ret

0000000080005440 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005440:	ff010113          	addi	sp,sp,-16
    80005444:	00113423          	sd	ra,8(sp)
    80005448:	00813023          	sd	s0,0(sp)
    8000544c:	01010413          	addi	s0,sp,16
    80005450:	00006797          	auipc	a5,0x6
    80005454:	61878793          	addi	a5,a5,1560 # 8000ba68 <_ZTV7WorkerB+0x10>
    80005458:	00f53023          	sd	a5,0(a0)
    8000545c:	ffffe097          	auipc	ra,0xffffe
    80005460:	194080e7          	jalr	404(ra) # 800035f0 <_ZN6ThreadD1Ev>
    80005464:	00813083          	ld	ra,8(sp)
    80005468:	00013403          	ld	s0,0(sp)
    8000546c:	01010113          	addi	sp,sp,16
    80005470:	00008067          	ret

0000000080005474 <_ZN7WorkerBD0Ev>:
    80005474:	fe010113          	addi	sp,sp,-32
    80005478:	00113c23          	sd	ra,24(sp)
    8000547c:	00813823          	sd	s0,16(sp)
    80005480:	00913423          	sd	s1,8(sp)
    80005484:	02010413          	addi	s0,sp,32
    80005488:	00050493          	mv	s1,a0
    8000548c:	00006797          	auipc	a5,0x6
    80005490:	5dc78793          	addi	a5,a5,1500 # 8000ba68 <_ZTV7WorkerB+0x10>
    80005494:	00f53023          	sd	a5,0(a0)
    80005498:	ffffe097          	auipc	ra,0xffffe
    8000549c:	158080e7          	jalr	344(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800054a0:	00048513          	mv	a0,s1
    800054a4:	ffffe097          	auipc	ra,0xffffe
    800054a8:	1e4080e7          	jalr	484(ra) # 80003688 <_ZdlPv>
    800054ac:	01813083          	ld	ra,24(sp)
    800054b0:	01013403          	ld	s0,16(sp)
    800054b4:	00813483          	ld	s1,8(sp)
    800054b8:	02010113          	addi	sp,sp,32
    800054bc:	00008067          	ret

00000000800054c0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800054c0:	ff010113          	addi	sp,sp,-16
    800054c4:	00113423          	sd	ra,8(sp)
    800054c8:	00813023          	sd	s0,0(sp)
    800054cc:	01010413          	addi	s0,sp,16
    800054d0:	00006797          	auipc	a5,0x6
    800054d4:	5c078793          	addi	a5,a5,1472 # 8000ba90 <_ZTV7WorkerC+0x10>
    800054d8:	00f53023          	sd	a5,0(a0)
    800054dc:	ffffe097          	auipc	ra,0xffffe
    800054e0:	114080e7          	jalr	276(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800054e4:	00813083          	ld	ra,8(sp)
    800054e8:	00013403          	ld	s0,0(sp)
    800054ec:	01010113          	addi	sp,sp,16
    800054f0:	00008067          	ret

00000000800054f4 <_ZN7WorkerCD0Ev>:
    800054f4:	fe010113          	addi	sp,sp,-32
    800054f8:	00113c23          	sd	ra,24(sp)
    800054fc:	00813823          	sd	s0,16(sp)
    80005500:	00913423          	sd	s1,8(sp)
    80005504:	02010413          	addi	s0,sp,32
    80005508:	00050493          	mv	s1,a0
    8000550c:	00006797          	auipc	a5,0x6
    80005510:	58478793          	addi	a5,a5,1412 # 8000ba90 <_ZTV7WorkerC+0x10>
    80005514:	00f53023          	sd	a5,0(a0)
    80005518:	ffffe097          	auipc	ra,0xffffe
    8000551c:	0d8080e7          	jalr	216(ra) # 800035f0 <_ZN6ThreadD1Ev>
    80005520:	00048513          	mv	a0,s1
    80005524:	ffffe097          	auipc	ra,0xffffe
    80005528:	164080e7          	jalr	356(ra) # 80003688 <_ZdlPv>
    8000552c:	01813083          	ld	ra,24(sp)
    80005530:	01013403          	ld	s0,16(sp)
    80005534:	00813483          	ld	s1,8(sp)
    80005538:	02010113          	addi	sp,sp,32
    8000553c:	00008067          	ret

0000000080005540 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005540:	ff010113          	addi	sp,sp,-16
    80005544:	00113423          	sd	ra,8(sp)
    80005548:	00813023          	sd	s0,0(sp)
    8000554c:	01010413          	addi	s0,sp,16
    80005550:	00006797          	auipc	a5,0x6
    80005554:	56878793          	addi	a5,a5,1384 # 8000bab8 <_ZTV7WorkerD+0x10>
    80005558:	00f53023          	sd	a5,0(a0)
    8000555c:	ffffe097          	auipc	ra,0xffffe
    80005560:	094080e7          	jalr	148(ra) # 800035f0 <_ZN6ThreadD1Ev>
    80005564:	00813083          	ld	ra,8(sp)
    80005568:	00013403          	ld	s0,0(sp)
    8000556c:	01010113          	addi	sp,sp,16
    80005570:	00008067          	ret

0000000080005574 <_ZN7WorkerDD0Ev>:
    80005574:	fe010113          	addi	sp,sp,-32
    80005578:	00113c23          	sd	ra,24(sp)
    8000557c:	00813823          	sd	s0,16(sp)
    80005580:	00913423          	sd	s1,8(sp)
    80005584:	02010413          	addi	s0,sp,32
    80005588:	00050493          	mv	s1,a0
    8000558c:	00006797          	auipc	a5,0x6
    80005590:	52c78793          	addi	a5,a5,1324 # 8000bab8 <_ZTV7WorkerD+0x10>
    80005594:	00f53023          	sd	a5,0(a0)
    80005598:	ffffe097          	auipc	ra,0xffffe
    8000559c:	058080e7          	jalr	88(ra) # 800035f0 <_ZN6ThreadD1Ev>
    800055a0:	00048513          	mv	a0,s1
    800055a4:	ffffe097          	auipc	ra,0xffffe
    800055a8:	0e4080e7          	jalr	228(ra) # 80003688 <_ZdlPv>
    800055ac:	01813083          	ld	ra,24(sp)
    800055b0:	01013403          	ld	s0,16(sp)
    800055b4:	00813483          	ld	s1,8(sp)
    800055b8:	02010113          	addi	sp,sp,32
    800055bc:	00008067          	ret

00000000800055c0 <_ZN7WorkerA3runEv>:
    void run() override {
    800055c0:	ff010113          	addi	sp,sp,-16
    800055c4:	00113423          	sd	ra,8(sp)
    800055c8:	00813023          	sd	s0,0(sp)
    800055cc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800055d0:	00000593          	li	a1,0
    800055d4:	fffff097          	auipc	ra,0xfffff
    800055d8:	774080e7          	jalr	1908(ra) # 80004d48 <_ZN7WorkerA11workerBodyAEPv>
    }
    800055dc:	00813083          	ld	ra,8(sp)
    800055e0:	00013403          	ld	s0,0(sp)
    800055e4:	01010113          	addi	sp,sp,16
    800055e8:	00008067          	ret

00000000800055ec <_ZN7WorkerB3runEv>:
    void run() override {
    800055ec:	ff010113          	addi	sp,sp,-16
    800055f0:	00113423          	sd	ra,8(sp)
    800055f4:	00813023          	sd	s0,0(sp)
    800055f8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800055fc:	00000593          	li	a1,0
    80005600:	00000097          	auipc	ra,0x0
    80005604:	814080e7          	jalr	-2028(ra) # 80004e14 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005608:	00813083          	ld	ra,8(sp)
    8000560c:	00013403          	ld	s0,0(sp)
    80005610:	01010113          	addi	sp,sp,16
    80005614:	00008067          	ret

0000000080005618 <_ZN7WorkerC3runEv>:
    void run() override {
    80005618:	ff010113          	addi	sp,sp,-16
    8000561c:	00113423          	sd	ra,8(sp)
    80005620:	00813023          	sd	s0,0(sp)
    80005624:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005628:	00000593          	li	a1,0
    8000562c:	00000097          	auipc	ra,0x0
    80005630:	8bc080e7          	jalr	-1860(ra) # 80004ee8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005634:	00813083          	ld	ra,8(sp)
    80005638:	00013403          	ld	s0,0(sp)
    8000563c:	01010113          	addi	sp,sp,16
    80005640:	00008067          	ret

0000000080005644 <_ZN7WorkerD3runEv>:

    void run() override {
    80005644:	ff010113          	addi	sp,sp,-16
    80005648:	00113423          	sd	ra,8(sp)
    8000564c:	00813023          	sd	s0,0(sp)
    80005650:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005654:	00000593          	li	a1,0
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	a10080e7          	jalr	-1520(ra) # 80005068 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005660:	00813083          	ld	ra,8(sp)
    80005664:	00013403          	ld	s0,0(sp)
    80005668:	01010113          	addi	sp,sp,16
    8000566c:	00008067          	ret

0000000080005670 <_ZL9fibonaccim>:
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n)
{
    80005670:	fe010113          	addi	sp,sp,-32
    80005674:	00113c23          	sd	ra,24(sp)
    80005678:	00813823          	sd	s0,16(sp)
    8000567c:	00913423          	sd	s1,8(sp)
    80005680:	01213023          	sd	s2,0(sp)
    80005684:	02010413          	addi	s0,sp,32
    80005688:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    8000568c:	00100793          	li	a5,1
    80005690:	02a7f863          	bgeu	a5,a0,800056c0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005694:	00a00793          	li	a5,10
    80005698:	02f577b3          	remu	a5,a0,a5
    8000569c:	02078e63          	beqz	a5,800056d8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800056a0:	fff48513          	addi	a0,s1,-1
    800056a4:	00000097          	auipc	ra,0x0
    800056a8:	fcc080e7          	jalr	-52(ra) # 80005670 <_ZL9fibonaccim>
    800056ac:	00050913          	mv	s2,a0
    800056b0:	ffe48513          	addi	a0,s1,-2
    800056b4:	00000097          	auipc	ra,0x0
    800056b8:	fbc080e7          	jalr	-68(ra) # 80005670 <_ZL9fibonaccim>
    800056bc:	00a90533          	add	a0,s2,a0
}
    800056c0:	01813083          	ld	ra,24(sp)
    800056c4:	01013403          	ld	s0,16(sp)
    800056c8:	00813483          	ld	s1,8(sp)
    800056cc:	00013903          	ld	s2,0(sp)
    800056d0:	02010113          	addi	sp,sp,32
    800056d4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	c5c080e7          	jalr	-932(ra) # 80001334 <thread_dispatch>
    800056e0:	fc1ff06f          	j	800056a0 <_ZL9fibonaccim+0x30>

00000000800056e4 <_Z11workerBodyCPv>:
    Riscv::printString("B finished!\n");
    finishedB = true;
}

void workerBodyC(void* arg)
{
    800056e4:	fe010113          	addi	sp,sp,-32
    800056e8:	00113c23          	sd	ra,24(sp)
    800056ec:	00813823          	sd	s0,16(sp)
    800056f0:	00913423          	sd	s1,8(sp)
    800056f4:	01213023          	sd	s2,0(sp)
    800056f8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800056fc:	00000493          	li	s1,0
    80005700:	0400006f          	j	80005740 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    80005704:	00004517          	auipc	a0,0x4
    80005708:	d3450513          	addi	a0,a0,-716 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    8000570c:	00000097          	auipc	ra,0x0
    80005710:	58c080e7          	jalr	1420(ra) # 80005c98 <_Z11printStringPKc>
    80005714:	00000613          	li	a2,0
    80005718:	00a00593          	li	a1,10
    8000571c:	00048513          	mv	a0,s1
    80005720:	00000097          	auipc	ra,0x0
    80005724:	710080e7          	jalr	1808(ra) # 80005e30 <_Z8printIntiii>
    80005728:	00004517          	auipc	a0,0x4
    8000572c:	9d850513          	addi	a0,a0,-1576 # 80009100 <CONSOLE_STATUS+0xf0>
    80005730:	00000097          	auipc	ra,0x0
    80005734:	568080e7          	jalr	1384(ra) # 80005c98 <_Z11printStringPKc>
    for (; i < 3; i++)
    80005738:	0014849b          	addiw	s1,s1,1
    8000573c:	0ff4f493          	andi	s1,s1,255
    80005740:	00200793          	li	a5,2
    80005744:	fc97f0e3          	bgeu	a5,s1,80005704 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005748:	00004517          	auipc	a0,0x4
    8000574c:	cf850513          	addi	a0,a0,-776 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80005750:	00000097          	auipc	ra,0x0
    80005754:	548080e7          	jalr	1352(ra) # 80005c98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005758:	00700313          	li	t1,7
    thread_dispatch();
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	bd8080e7          	jalr	-1064(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    80005764:	00004517          	auipc	a0,0x4
    80005768:	dac50513          	addi	a0,a0,-596 # 80009510 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    8000576c:	00000097          	auipc	ra,0x0
    80005770:	52c080e7          	jalr	1324(ra) # 80005c98 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005774:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	cd850513          	addi	a0,a0,-808 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	518080e7          	jalr	1304(ra) # 80005c98 <_Z11printStringPKc>
    80005788:	00000613          	li	a2,0
    8000578c:	00a00593          	li	a1,10
    80005790:	0009051b          	sext.w	a0,s2
    80005794:	00000097          	auipc	ra,0x0
    80005798:	69c080e7          	jalr	1692(ra) # 80005e30 <_Z8printIntiii>
    8000579c:	00004517          	auipc	a0,0x4
    800057a0:	96450513          	addi	a0,a0,-1692 # 80009100 <CONSOLE_STATUS+0xf0>
    800057a4:	00000097          	auipc	ra,0x0
    800057a8:	4f4080e7          	jalr	1268(ra) # 80005c98 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800057ac:	00c00513          	li	a0,12
    800057b0:	00000097          	auipc	ra,0x0
    800057b4:	ec0080e7          	jalr	-320(ra) # 80005670 <_ZL9fibonaccim>
    800057b8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800057bc:	00004517          	auipc	a0,0x4
    800057c0:	c9c50513          	addi	a0,a0,-868 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xd8>
    800057c4:	00000097          	auipc	ra,0x0
    800057c8:	4d4080e7          	jalr	1236(ra) # 80005c98 <_Z11printStringPKc>
    800057cc:	00000613          	li	a2,0
    800057d0:	00a00593          	li	a1,10
    800057d4:	0009051b          	sext.w	a0,s2
    800057d8:	00000097          	auipc	ra,0x0
    800057dc:	658080e7          	jalr	1624(ra) # 80005e30 <_Z8printIntiii>
    800057e0:	00004517          	auipc	a0,0x4
    800057e4:	92050513          	addi	a0,a0,-1760 # 80009100 <CONSOLE_STATUS+0xf0>
    800057e8:	00000097          	auipc	ra,0x0
    800057ec:	4b0080e7          	jalr	1200(ra) # 80005c98 <_Z11printStringPKc>
    800057f0:	0400006f          	j	80005830 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800057f4:	00004517          	auipc	a0,0x4
    800057f8:	c4450513          	addi	a0,a0,-956 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	49c080e7          	jalr	1180(ra) # 80005c98 <_Z11printStringPKc>
    80005804:	00000613          	li	a2,0
    80005808:	00a00593          	li	a1,10
    8000580c:	00048513          	mv	a0,s1
    80005810:	00000097          	auipc	ra,0x0
    80005814:	620080e7          	jalr	1568(ra) # 80005e30 <_Z8printIntiii>
    80005818:	00004517          	auipc	a0,0x4
    8000581c:	8e850513          	addi	a0,a0,-1816 # 80009100 <CONSOLE_STATUS+0xf0>
    80005820:	00000097          	auipc	ra,0x0
    80005824:	478080e7          	jalr	1144(ra) # 80005c98 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005828:	0014849b          	addiw	s1,s1,1
    8000582c:	0ff4f493          	andi	s1,s1,255
    80005830:	00500793          	li	a5,5
    80005834:	fc97f0e3          	bgeu	a5,s1,800057f4 <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    80005838:	ffffc097          	auipc	ra,0xffffc
    8000583c:	afc080e7          	jalr	-1284(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005840:	00004517          	auipc	a0,0x4
    80005844:	c2850513          	addi	a0,a0,-984 # 80009468 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	450080e7          	jalr	1104(ra) # 80005c98 <_Z11printStringPKc>
    finishedC = true;
    80005850:	00100793          	li	a5,1
    80005854:	00006717          	auipc	a4,0x6
    80005858:	3ef70c23          	sb	a5,1016(a4) # 8000bc4c <_ZL9finishedC>
}
    8000585c:	01813083          	ld	ra,24(sp)
    80005860:	01013403          	ld	s0,16(sp)
    80005864:	00813483          	ld	s1,8(sp)
    80005868:	00013903          	ld	s2,0(sp)
    8000586c:	02010113          	addi	sp,sp,32
    80005870:	00008067          	ret

0000000080005874 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80005874:	fe010113          	addi	sp,sp,-32
    80005878:	00113c23          	sd	ra,24(sp)
    8000587c:	00813823          	sd	s0,16(sp)
    80005880:	00913423          	sd	s1,8(sp)
    80005884:	01213023          	sd	s2,0(sp)
    80005888:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000588c:	00a00493          	li	s1,10
    80005890:	0400006f          	j	800058d0 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005894:	00004517          	auipc	a0,0x4
    80005898:	be450513          	addi	a0,a0,-1052 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	3fc080e7          	jalr	1020(ra) # 80005c98 <_Z11printStringPKc>
    800058a4:	00000613          	li	a2,0
    800058a8:	00a00593          	li	a1,10
    800058ac:	00048513          	mv	a0,s1
    800058b0:	00000097          	auipc	ra,0x0
    800058b4:	580080e7          	jalr	1408(ra) # 80005e30 <_Z8printIntiii>
    800058b8:	00004517          	auipc	a0,0x4
    800058bc:	84850513          	addi	a0,a0,-1976 # 80009100 <CONSOLE_STATUS+0xf0>
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	3d8080e7          	jalr	984(ra) # 80005c98 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800058c8:	0014849b          	addiw	s1,s1,1
    800058cc:	0ff4f493          	andi	s1,s1,255
    800058d0:	00c00793          	li	a5,12
    800058d4:	fc97f0e3          	bgeu	a5,s1,80005894 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800058d8:	00004517          	auipc	a0,0x4
    800058dc:	ba850513          	addi	a0,a0,-1112 # 80009480 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800058e0:	00000097          	auipc	ra,0x0
    800058e4:	3b8080e7          	jalr	952(ra) # 80005c98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800058e8:	00500313          	li	t1,5
    thread_dispatch();
    800058ec:	ffffc097          	auipc	ra,0xffffc
    800058f0:	a48080e7          	jalr	-1464(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    800058f4:	00004517          	auipc	a0,0x4
    800058f8:	c2c50513          	addi	a0,a0,-980 # 80009520 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    800058fc:	00000097          	auipc	ra,0x0
    80005900:	39c080e7          	jalr	924(ra) # 80005c98 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005904:	01000513          	li	a0,16
    80005908:	00000097          	auipc	ra,0x0
    8000590c:	d68080e7          	jalr	-664(ra) # 80005670 <_ZL9fibonaccim>
    80005910:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005914:	00004517          	auipc	a0,0x4
    80005918:	b7c50513          	addi	a0,a0,-1156 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    8000591c:	00000097          	auipc	ra,0x0
    80005920:	37c080e7          	jalr	892(ra) # 80005c98 <_Z11printStringPKc>
    80005924:	00000613          	li	a2,0
    80005928:	00a00593          	li	a1,10
    8000592c:	0009051b          	sext.w	a0,s2
    80005930:	00000097          	auipc	ra,0x0
    80005934:	500080e7          	jalr	1280(ra) # 80005e30 <_Z8printIntiii>
    80005938:	00003517          	auipc	a0,0x3
    8000593c:	7c850513          	addi	a0,a0,1992 # 80009100 <CONSOLE_STATUS+0xf0>
    80005940:	00000097          	auipc	ra,0x0
    80005944:	358080e7          	jalr	856(ra) # 80005c98 <_Z11printStringPKc>
    80005948:	0400006f          	j	80005988 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000594c:	00004517          	auipc	a0,0x4
    80005950:	b2c50513          	addi	a0,a0,-1236 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	344080e7          	jalr	836(ra) # 80005c98 <_Z11printStringPKc>
    8000595c:	00000613          	li	a2,0
    80005960:	00a00593          	li	a1,10
    80005964:	00048513          	mv	a0,s1
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	4c8080e7          	jalr	1224(ra) # 80005e30 <_Z8printIntiii>
    80005970:	00003517          	auipc	a0,0x3
    80005974:	79050513          	addi	a0,a0,1936 # 80009100 <CONSOLE_STATUS+0xf0>
    80005978:	00000097          	auipc	ra,0x0
    8000597c:	320080e7          	jalr	800(ra) # 80005c98 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005980:	0014849b          	addiw	s1,s1,1
    80005984:	0ff4f493          	andi	s1,s1,255
    80005988:	00f00793          	li	a5,15
    8000598c:	fc97f0e3          	bgeu	a5,s1,8000594c <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	9a4080e7          	jalr	-1628(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005998:	00004517          	auipc	a0,0x4
    8000599c:	b0850513          	addi	a0,a0,-1272 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800059a0:	00000097          	auipc	ra,0x0
    800059a4:	2f8080e7          	jalr	760(ra) # 80005c98 <_Z11printStringPKc>
    finishedD = true;
    800059a8:	00100793          	li	a5,1
    800059ac:	00006717          	auipc	a4,0x6
    800059b0:	2af700a3          	sb	a5,673(a4) # 8000bc4d <_ZL9finishedD>
}
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	00013903          	ld	s2,0(sp)
    800059c4:	02010113          	addi	sp,sp,32
    800059c8:	00008067          	ret

00000000800059cc <_Z11workerBodyAPv>:
{
    800059cc:	fe010113          	addi	sp,sp,-32
    800059d0:	00113c23          	sd	ra,24(sp)
    800059d4:	00813823          	sd	s0,16(sp)
    800059d8:	00913423          	sd	s1,8(sp)
    800059dc:	01213023          	sd	s2,0(sp)
    800059e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800059e4:	00000913          	li	s2,0
    800059e8:	0380006f          	j	80005a20 <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    800059ec:	ffffc097          	auipc	ra,0xffffc
    800059f0:	948080e7          	jalr	-1720(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    800059f4:	00148493          	addi	s1,s1,1
    800059f8:	000027b7          	lui	a5,0x2
    800059fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005a00:	0097ee63          	bltu	a5,s1,80005a1c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a04:	00000713          	li	a4,0
    80005a08:	000077b7          	lui	a5,0x7
    80005a0c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a10:	fce7eee3          	bltu	a5,a4,800059ec <_Z11workerBodyAPv+0x20>
    80005a14:	00170713          	addi	a4,a4,1
    80005a18:	ff1ff06f          	j	80005a08 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80005a1c:	00190913          	addi	s2,s2,1
    80005a20:	00900793          	li	a5,9
    80005a24:	0527e063          	bltu	a5,s2,80005a64 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005a28:	00004517          	auipc	a0,0x4
    80005a2c:	9e050513          	addi	a0,a0,-1568 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	268080e7          	jalr	616(ra) # 80005c98 <_Z11printStringPKc>
    80005a38:	00000613          	li	a2,0
    80005a3c:	00a00593          	li	a1,10
    80005a40:	0009051b          	sext.w	a0,s2
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	3ec080e7          	jalr	1004(ra) # 80005e30 <_Z8printIntiii>
    80005a4c:	00003517          	auipc	a0,0x3
    80005a50:	6b450513          	addi	a0,a0,1716 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a54:	00000097          	auipc	ra,0x0
    80005a58:	244080e7          	jalr	580(ra) # 80005c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005a5c:	00000493          	li	s1,0
    80005a60:	f99ff06f          	j	800059f8 <_Z11workerBodyAPv+0x2c>
    Riscv::printString("A finished!\n");
    80005a64:	00004517          	auipc	a0,0x4
    80005a68:	9ac50513          	addi	a0,a0,-1620 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80005a6c:	ffffe097          	auipc	ra,0xffffe
    80005a70:	054080e7          	jalr	84(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    finishedA = true;
    80005a74:	00100793          	li	a5,1
    80005a78:	00006717          	auipc	a4,0x6
    80005a7c:	1cf70b23          	sb	a5,470(a4) # 8000bc4e <_ZL9finishedA>
}
    80005a80:	01813083          	ld	ra,24(sp)
    80005a84:	01013403          	ld	s0,16(sp)
    80005a88:	00813483          	ld	s1,8(sp)
    80005a8c:	00013903          	ld	s2,0(sp)
    80005a90:	02010113          	addi	sp,sp,32
    80005a94:	00008067          	ret

0000000080005a98 <_Z11workerBodyBPv>:
{
    80005a98:	fe010113          	addi	sp,sp,-32
    80005a9c:	00113c23          	sd	ra,24(sp)
    80005aa0:	00813823          	sd	s0,16(sp)
    80005aa4:	00913423          	sd	s1,8(sp)
    80005aa8:	01213023          	sd	s2,0(sp)
    80005aac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005ab0:	00000913          	li	s2,0
    80005ab4:	0380006f          	j	80005aec <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	87c080e7          	jalr	-1924(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005ac0:	00148493          	addi	s1,s1,1
    80005ac4:	000027b7          	lui	a5,0x2
    80005ac8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005acc:	0097ee63          	bltu	a5,s1,80005ae8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ad0:	00000713          	li	a4,0
    80005ad4:	000077b7          	lui	a5,0x7
    80005ad8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005adc:	fce7eee3          	bltu	a5,a4,80005ab8 <_Z11workerBodyBPv+0x20>
    80005ae0:	00170713          	addi	a4,a4,1
    80005ae4:	ff1ff06f          	j	80005ad4 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005ae8:	00190913          	addi	s2,s2,1
    80005aec:	00f00793          	li	a5,15
    80005af0:	0527e063          	bltu	a5,s2,80005b30 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005af4:	00004517          	auipc	a0,0x4
    80005af8:	92c50513          	addi	a0,a0,-1748 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80005afc:	00000097          	auipc	ra,0x0
    80005b00:	19c080e7          	jalr	412(ra) # 80005c98 <_Z11printStringPKc>
    80005b04:	00000613          	li	a2,0
    80005b08:	00a00593          	li	a1,10
    80005b0c:	0009051b          	sext.w	a0,s2
    80005b10:	00000097          	auipc	ra,0x0
    80005b14:	320080e7          	jalr	800(ra) # 80005e30 <_Z8printIntiii>
    80005b18:	00003517          	auipc	a0,0x3
    80005b1c:	5e850513          	addi	a0,a0,1512 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b20:	00000097          	auipc	ra,0x0
    80005b24:	178080e7          	jalr	376(ra) # 80005c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005b28:	00000493          	li	s1,0
    80005b2c:	f99ff06f          	j	80005ac4 <_Z11workerBodyBPv+0x2c>
    thread_dispatch();
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	804080e7          	jalr	-2044(ra) # 80001334 <thread_dispatch>
    Riscv::printString("B finished!\n");
    80005b38:	00004517          	auipc	a0,0x4
    80005b3c:	8f050513          	addi	a0,a0,-1808 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80005b40:	ffffe097          	auipc	ra,0xffffe
    80005b44:	f80080e7          	jalr	-128(ra) # 80003ac0 <_ZN5Riscv11printStringEPKc>
    finishedB = true;
    80005b48:	00100793          	li	a5,1
    80005b4c:	00006717          	auipc	a4,0x6
    80005b50:	10f701a3          	sb	a5,259(a4) # 8000bc4f <_ZL9finishedB>
}
    80005b54:	01813083          	ld	ra,24(sp)
    80005b58:	01013403          	ld	s0,16(sp)
    80005b5c:	00813483          	ld	s1,8(sp)
    80005b60:	00013903          	ld	s2,0(sp)
    80005b64:	02010113          	addi	sp,sp,32
    80005b68:	00008067          	ret

0000000080005b6c <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005b6c:	fc010113          	addi	sp,sp,-64
    80005b70:	02113c23          	sd	ra,56(sp)
    80005b74:	02813823          	sd	s0,48(sp)
    80005b78:	02913423          	sd	s1,40(sp)
    80005b7c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005b80:	00000613          	li	a2,0
    80005b84:	00000597          	auipc	a1,0x0
    80005b88:	e4858593          	addi	a1,a1,-440 # 800059cc <_Z11workerBodyAPv>
    80005b8c:	fc040513          	addi	a0,s0,-64
    80005b90:	ffffb097          	auipc	ra,0xffffb
    80005b94:	724080e7          	jalr	1828(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005b98:	00004517          	auipc	a0,0x4
    80005b9c:	91850513          	addi	a0,a0,-1768 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005ba0:	00000097          	auipc	ra,0x0
    80005ba4:	0f8080e7          	jalr	248(ra) # 80005c98 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005ba8:	00000613          	li	a2,0
    80005bac:	00000597          	auipc	a1,0x0
    80005bb0:	eec58593          	addi	a1,a1,-276 # 80005a98 <_Z11workerBodyBPv>
    80005bb4:	fc840513          	addi	a0,s0,-56
    80005bb8:	ffffb097          	auipc	ra,0xffffb
    80005bbc:	6fc080e7          	jalr	1788(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005bc0:	00004517          	auipc	a0,0x4
    80005bc4:	90850513          	addi	a0,a0,-1784 # 800094c8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005bc8:	00000097          	auipc	ra,0x0
    80005bcc:	0d0080e7          	jalr	208(ra) # 80005c98 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005bd0:	00000613          	li	a2,0
    80005bd4:	00000597          	auipc	a1,0x0
    80005bd8:	b1058593          	addi	a1,a1,-1264 # 800056e4 <_Z11workerBodyCPv>
    80005bdc:	fd040513          	addi	a0,s0,-48
    80005be0:	ffffb097          	auipc	ra,0xffffb
    80005be4:	6d4080e7          	jalr	1748(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005be8:	00004517          	auipc	a0,0x4
    80005bec:	8f850513          	addi	a0,a0,-1800 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	0a8080e7          	jalr	168(ra) # 80005c98 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005bf8:	00000613          	li	a2,0
    80005bfc:	00000597          	auipc	a1,0x0
    80005c00:	c7858593          	addi	a1,a1,-904 # 80005874 <_Z11workerBodyDPv>
    80005c04:	fd840513          	addi	a0,s0,-40
    80005c08:	ffffb097          	auipc	ra,0xffffb
    80005c0c:	6ac080e7          	jalr	1708(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005c10:	00004517          	auipc	a0,0x4
    80005c14:	8e850513          	addi	a0,a0,-1816 # 800094f8 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005c18:	00000097          	auipc	ra,0x0
    80005c1c:	080080e7          	jalr	128(ra) # 80005c98 <_Z11printStringPKc>
    80005c20:	00c0006f          	j	80005c2c <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005c24:	ffffb097          	auipc	ra,0xffffb
    80005c28:	710080e7          	jalr	1808(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005c2c:	00006797          	auipc	a5,0x6
    80005c30:	0227c783          	lbu	a5,34(a5) # 8000bc4e <_ZL9finishedA>
    80005c34:	fe0788e3          	beqz	a5,80005c24 <_Z18Threads_C_API_testv+0xb8>
    80005c38:	00006797          	auipc	a5,0x6
    80005c3c:	0177c783          	lbu	a5,23(a5) # 8000bc4f <_ZL9finishedB>
    80005c40:	fe0782e3          	beqz	a5,80005c24 <_Z18Threads_C_API_testv+0xb8>
    80005c44:	00006797          	auipc	a5,0x6
    80005c48:	0087c783          	lbu	a5,8(a5) # 8000bc4c <_ZL9finishedC>
    80005c4c:	fc078ce3          	beqz	a5,80005c24 <_Z18Threads_C_API_testv+0xb8>
    80005c50:	00006797          	auipc	a5,0x6
    80005c54:	ffd7c783          	lbu	a5,-3(a5) # 8000bc4d <_ZL9finishedD>
    80005c58:	fc0786e3          	beqz	a5,80005c24 <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005c5c:	fc040493          	addi	s1,s0,-64
    80005c60:	0080006f          	j	80005c68 <_Z18Threads_C_API_testv+0xfc>
    80005c64:	00848493          	addi	s1,s1,8
    80005c68:	fe040793          	addi	a5,s0,-32
    80005c6c:	00f48c63          	beq	s1,a5,80005c84 <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005c70:	0004b503          	ld	a0,0(s1)
    80005c74:	fe0508e3          	beqz	a0,80005c64 <_Z18Threads_C_API_testv+0xf8>
    80005c78:	ffffe097          	auipc	ra,0xffffe
    80005c7c:	a10080e7          	jalr	-1520(ra) # 80003688 <_ZdlPv>
    80005c80:	fe5ff06f          	j	80005c64 <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005c84:	03813083          	ld	ra,56(sp)
    80005c88:	03013403          	ld	s0,48(sp)
    80005c8c:	02813483          	ld	s1,40(sp)
    80005c90:	04010113          	addi	sp,sp,64
    80005c94:	00008067          	ret

0000000080005c98 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005c98:	fe010113          	addi	sp,sp,-32
    80005c9c:	00113c23          	sd	ra,24(sp)
    80005ca0:	00813823          	sd	s0,16(sp)
    80005ca4:	00913423          	sd	s1,8(sp)
    80005ca8:	02010413          	addi	s0,sp,32
    80005cac:	00050493          	mv	s1,a0
    LOCK();
    80005cb0:	00100613          	li	a2,1
    80005cb4:	00000593          	li	a1,0
    80005cb8:	00006517          	auipc	a0,0x6
    80005cbc:	f9850513          	addi	a0,a0,-104 # 8000bc50 <lockPrint>
    80005cc0:	ffffb097          	auipc	ra,0xffffb
    80005cc4:	558080e7          	jalr	1368(ra) # 80001218 <copy_and_swap>
    80005cc8:	fe0514e3          	bnez	a0,80005cb0 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005ccc:	0004c503          	lbu	a0,0(s1)
    80005cd0:	00050a63          	beqz	a0,80005ce4 <_Z11printStringPKc+0x4c>
        __putc(*string);
    80005cd4:	00003097          	auipc	ra,0x3
    80005cd8:	a08080e7          	jalr	-1528(ra) # 800086dc <__putc>
        string++;
    80005cdc:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005ce0:	fedff06f          	j	80005ccc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005ce4:	00000613          	li	a2,0
    80005ce8:	00100593          	li	a1,1
    80005cec:	00006517          	auipc	a0,0x6
    80005cf0:	f6450513          	addi	a0,a0,-156 # 8000bc50 <lockPrint>
    80005cf4:	ffffb097          	auipc	ra,0xffffb
    80005cf8:	524080e7          	jalr	1316(ra) # 80001218 <copy_and_swap>
    80005cfc:	fe0514e3          	bnez	a0,80005ce4 <_Z11printStringPKc+0x4c>
}
    80005d00:	01813083          	ld	ra,24(sp)
    80005d04:	01013403          	ld	s0,16(sp)
    80005d08:	00813483          	ld	s1,8(sp)
    80005d0c:	02010113          	addi	sp,sp,32
    80005d10:	00008067          	ret

0000000080005d14 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005d14:	fd010113          	addi	sp,sp,-48
    80005d18:	02113423          	sd	ra,40(sp)
    80005d1c:	02813023          	sd	s0,32(sp)
    80005d20:	00913c23          	sd	s1,24(sp)
    80005d24:	01213823          	sd	s2,16(sp)
    80005d28:	01313423          	sd	s3,8(sp)
    80005d2c:	01413023          	sd	s4,0(sp)
    80005d30:	03010413          	addi	s0,sp,48
    80005d34:	00050993          	mv	s3,a0
    80005d38:	00058a13          	mv	s4,a1
    LOCK();
    80005d3c:	00100613          	li	a2,1
    80005d40:	00000593          	li	a1,0
    80005d44:	00006517          	auipc	a0,0x6
    80005d48:	f0c50513          	addi	a0,a0,-244 # 8000bc50 <lockPrint>
    80005d4c:	ffffb097          	auipc	ra,0xffffb
    80005d50:	4cc080e7          	jalr	1228(ra) # 80001218 <copy_and_swap>
    80005d54:	fe0514e3          	bnez	a0,80005d3c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005d58:	00000913          	li	s2,0
    80005d5c:	00090493          	mv	s1,s2
    80005d60:	0019091b          	addiw	s2,s2,1
    80005d64:	03495a63          	bge	s2,s4,80005d98 <_Z9getStringPci+0x84>
        cc = __getc();
    80005d68:	00003097          	auipc	ra,0x3
    80005d6c:	9b0080e7          	jalr	-1616(ra) # 80008718 <__getc>
        if (cc < 1)
    80005d70:	02050463          	beqz	a0,80005d98 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005d74:	009984b3          	add	s1,s3,s1
    80005d78:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005d7c:	00a00793          	li	a5,10
    80005d80:	00f50a63          	beq	a0,a5,80005d94 <_Z9getStringPci+0x80>
    80005d84:	00d00793          	li	a5,13
    80005d88:	fcf51ae3          	bne	a0,a5,80005d5c <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005d8c:	00090493          	mv	s1,s2
    80005d90:	0080006f          	j	80005d98 <_Z9getStringPci+0x84>
    80005d94:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005d98:	009984b3          	add	s1,s3,s1
    80005d9c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005da0:	00000613          	li	a2,0
    80005da4:	00100593          	li	a1,1
    80005da8:	00006517          	auipc	a0,0x6
    80005dac:	ea850513          	addi	a0,a0,-344 # 8000bc50 <lockPrint>
    80005db0:	ffffb097          	auipc	ra,0xffffb
    80005db4:	468080e7          	jalr	1128(ra) # 80001218 <copy_and_swap>
    80005db8:	fe0514e3          	bnez	a0,80005da0 <_Z9getStringPci+0x8c>
    return buf;
}
    80005dbc:	00098513          	mv	a0,s3
    80005dc0:	02813083          	ld	ra,40(sp)
    80005dc4:	02013403          	ld	s0,32(sp)
    80005dc8:	01813483          	ld	s1,24(sp)
    80005dcc:	01013903          	ld	s2,16(sp)
    80005dd0:	00813983          	ld	s3,8(sp)
    80005dd4:	00013a03          	ld	s4,0(sp)
    80005dd8:	03010113          	addi	sp,sp,48
    80005ddc:	00008067          	ret

0000000080005de0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005de0:	ff010113          	addi	sp,sp,-16
    80005de4:	00813423          	sd	s0,8(sp)
    80005de8:	01010413          	addi	s0,sp,16
    80005dec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005df0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005df4:	0006c603          	lbu	a2,0(a3)
    80005df8:	fd06071b          	addiw	a4,a2,-48
    80005dfc:	0ff77713          	andi	a4,a4,255
    80005e00:	00900793          	li	a5,9
    80005e04:	02e7e063          	bltu	a5,a4,80005e24 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e08:	0025179b          	slliw	a5,a0,0x2
    80005e0c:	00a787bb          	addw	a5,a5,a0
    80005e10:	0017979b          	slliw	a5,a5,0x1
    80005e14:	00168693          	addi	a3,a3,1
    80005e18:	00c787bb          	addw	a5,a5,a2
    80005e1c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e20:	fd5ff06f          	j	80005df4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e24:	00813403          	ld	s0,8(sp)
    80005e28:	01010113          	addi	sp,sp,16
    80005e2c:	00008067          	ret

0000000080005e30 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005e30:	fc010113          	addi	sp,sp,-64
    80005e34:	02113c23          	sd	ra,56(sp)
    80005e38:	02813823          	sd	s0,48(sp)
    80005e3c:	02913423          	sd	s1,40(sp)
    80005e40:	03213023          	sd	s2,32(sp)
    80005e44:	01313c23          	sd	s3,24(sp)
    80005e48:	04010413          	addi	s0,sp,64
    80005e4c:	00050493          	mv	s1,a0
    80005e50:	00058913          	mv	s2,a1
    80005e54:	00060993          	mv	s3,a2
    LOCK();
    80005e58:	00100613          	li	a2,1
    80005e5c:	00000593          	li	a1,0
    80005e60:	00006517          	auipc	a0,0x6
    80005e64:	df050513          	addi	a0,a0,-528 # 8000bc50 <lockPrint>
    80005e68:	ffffb097          	auipc	ra,0xffffb
    80005e6c:	3b0080e7          	jalr	944(ra) # 80001218 <copy_and_swap>
    80005e70:	fe0514e3          	bnez	a0,80005e58 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005e74:	00098463          	beqz	s3,80005e7c <_Z8printIntiii+0x4c>
    80005e78:	0804c463          	bltz	s1,80005f00 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e7c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005e80:	00000593          	li	a1,0
    }

    i = 0;
    80005e84:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005e88:	0009079b          	sext.w	a5,s2
    80005e8c:	0325773b          	remuw	a4,a0,s2
    80005e90:	00048613          	mv	a2,s1
    80005e94:	0014849b          	addiw	s1,s1,1
    80005e98:	02071693          	slli	a3,a4,0x20
    80005e9c:	0206d693          	srli	a3,a3,0x20
    80005ea0:	00003717          	auipc	a4,0x3
    80005ea4:	69070713          	addi	a4,a4,1680 # 80009530 <_ZL6digits>
    80005ea8:	00d70733          	add	a4,a4,a3
    80005eac:	00074683          	lbu	a3,0(a4)
    80005eb0:	fd040713          	addi	a4,s0,-48
    80005eb4:	00c70733          	add	a4,a4,a2
    80005eb8:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005ebc:	0005071b          	sext.w	a4,a0
    80005ec0:	0325553b          	divuw	a0,a0,s2
    80005ec4:	fcf772e3          	bgeu	a4,a5,80005e88 <_Z8printIntiii+0x58>
    if (neg)
    80005ec8:	00058c63          	beqz	a1,80005ee0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005ecc:	fd040793          	addi	a5,s0,-48
    80005ed0:	009784b3          	add	s1,a5,s1
    80005ed4:	02d00793          	li	a5,45
    80005ed8:	fef48823          	sb	a5,-16(s1)
    80005edc:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005ee0:	fff4849b          	addiw	s1,s1,-1
    80005ee4:	0204c463          	bltz	s1,80005f0c <_Z8printIntiii+0xdc>
        __putc(buf[i]);
    80005ee8:	fd040793          	addi	a5,s0,-48
    80005eec:	009787b3          	add	a5,a5,s1
    80005ef0:	ff07c503          	lbu	a0,-16(a5)
    80005ef4:	00002097          	auipc	ra,0x2
    80005ef8:	7e8080e7          	jalr	2024(ra) # 800086dc <__putc>
    80005efc:	fe5ff06f          	j	80005ee0 <_Z8printIntiii+0xb0>
        x = -xx;
    80005f00:	4090053b          	negw	a0,s1
        neg = 1;
    80005f04:	00100593          	li	a1,1
        x = -xx;
    80005f08:	f7dff06f          	j	80005e84 <_Z8printIntiii+0x54>

    UNLOCK();
    80005f0c:	00000613          	li	a2,0
    80005f10:	00100593          	li	a1,1
    80005f14:	00006517          	auipc	a0,0x6
    80005f18:	d3c50513          	addi	a0,a0,-708 # 8000bc50 <lockPrint>
    80005f1c:	ffffb097          	auipc	ra,0xffffb
    80005f20:	2fc080e7          	jalr	764(ra) # 80001218 <copy_and_swap>
    80005f24:	fe0514e3          	bnez	a0,80005f0c <_Z8printIntiii+0xdc>
}
    80005f28:	03813083          	ld	ra,56(sp)
    80005f2c:	03013403          	ld	s0,48(sp)
    80005f30:	02813483          	ld	s1,40(sp)
    80005f34:	02013903          	ld	s2,32(sp)
    80005f38:	01813983          	ld	s3,24(sp)
    80005f3c:	04010113          	addi	sp,sp,64
    80005f40:	00008067          	ret

0000000080005f44 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005f44:	fe010113          	addi	sp,sp,-32
    80005f48:	00113c23          	sd	ra,24(sp)
    80005f4c:	00813823          	sd	s0,16(sp)
    80005f50:	00913423          	sd	s1,8(sp)
    80005f54:	01213023          	sd	s2,0(sp)
    80005f58:	02010413          	addi	s0,sp,32
    80005f5c:	00050493          	mv	s1,a0
    80005f60:	00b52023          	sw	a1,0(a0)
    80005f64:	00052823          	sw	zero,16(a0)
    80005f68:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f6c:	00259513          	slli	a0,a1,0x2
    80005f70:	ffffb097          	auipc	ra,0xffffb
    80005f74:	2e8080e7          	jalr	744(ra) # 80001258 <mem_alloc>
    80005f78:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005f7c:	01000513          	li	a0,16
    80005f80:	ffffd097          	auipc	ra,0xffffd
    80005f84:	6e0080e7          	jalr	1760(ra) # 80003660 <_Znwm>
    80005f88:	00050913          	mv	s2,a0
    80005f8c:	00000593          	li	a1,0
    80005f90:	ffffe097          	auipc	ra,0xffffe
    80005f94:	91c080e7          	jalr	-1764(ra) # 800038ac <_ZN9SemaphoreC1Ej>
    80005f98:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005f9c:	01000513          	li	a0,16
    80005fa0:	ffffd097          	auipc	ra,0xffffd
    80005fa4:	6c0080e7          	jalr	1728(ra) # 80003660 <_Znwm>
    80005fa8:	00050913          	mv	s2,a0
    80005fac:	0004a583          	lw	a1,0(s1)
    80005fb0:	ffffe097          	auipc	ra,0xffffe
    80005fb4:	8fc080e7          	jalr	-1796(ra) # 800038ac <_ZN9SemaphoreC1Ej>
    80005fb8:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005fbc:	01000513          	li	a0,16
    80005fc0:	ffffd097          	auipc	ra,0xffffd
    80005fc4:	6a0080e7          	jalr	1696(ra) # 80003660 <_Znwm>
    80005fc8:	00050913          	mv	s2,a0
    80005fcc:	00100593          	li	a1,1
    80005fd0:	ffffe097          	auipc	ra,0xffffe
    80005fd4:	8dc080e7          	jalr	-1828(ra) # 800038ac <_ZN9SemaphoreC1Ej>
    80005fd8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005fdc:	01000513          	li	a0,16
    80005fe0:	ffffd097          	auipc	ra,0xffffd
    80005fe4:	680080e7          	jalr	1664(ra) # 80003660 <_Znwm>
    80005fe8:	00050913          	mv	s2,a0
    80005fec:	00100593          	li	a1,1
    80005ff0:	ffffe097          	auipc	ra,0xffffe
    80005ff4:	8bc080e7          	jalr	-1860(ra) # 800038ac <_ZN9SemaphoreC1Ej>
    80005ff8:	0324b823          	sd	s2,48(s1)
}
    80005ffc:	01813083          	ld	ra,24(sp)
    80006000:	01013403          	ld	s0,16(sp)
    80006004:	00813483          	ld	s1,8(sp)
    80006008:	00013903          	ld	s2,0(sp)
    8000600c:	02010113          	addi	sp,sp,32
    80006010:	00008067          	ret
    80006014:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006018:	00090513          	mv	a0,s2
    8000601c:	ffffd097          	auipc	ra,0xffffd
    80006020:	66c080e7          	jalr	1644(ra) # 80003688 <_ZdlPv>
    80006024:	00048513          	mv	a0,s1
    80006028:	00007097          	auipc	ra,0x7
    8000602c:	d00080e7          	jalr	-768(ra) # 8000cd28 <_Unwind_Resume>
    80006030:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80006034:	00090513          	mv	a0,s2
    80006038:	ffffd097          	auipc	ra,0xffffd
    8000603c:	650080e7          	jalr	1616(ra) # 80003688 <_ZdlPv>
    80006040:	00048513          	mv	a0,s1
    80006044:	00007097          	auipc	ra,0x7
    80006048:	ce4080e7          	jalr	-796(ra) # 8000cd28 <_Unwind_Resume>
    8000604c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006050:	00090513          	mv	a0,s2
    80006054:	ffffd097          	auipc	ra,0xffffd
    80006058:	634080e7          	jalr	1588(ra) # 80003688 <_ZdlPv>
    8000605c:	00048513          	mv	a0,s1
    80006060:	00007097          	auipc	ra,0x7
    80006064:	cc8080e7          	jalr	-824(ra) # 8000cd28 <_Unwind_Resume>
    80006068:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000606c:	00090513          	mv	a0,s2
    80006070:	ffffd097          	auipc	ra,0xffffd
    80006074:	618080e7          	jalr	1560(ra) # 80003688 <_ZdlPv>
    80006078:	00048513          	mv	a0,s1
    8000607c:	00007097          	auipc	ra,0x7
    80006080:	cac080e7          	jalr	-852(ra) # 8000cd28 <_Unwind_Resume>

0000000080006084 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80006084:	fe010113          	addi	sp,sp,-32
    80006088:	00113c23          	sd	ra,24(sp)
    8000608c:	00813823          	sd	s0,16(sp)
    80006090:	00913423          	sd	s1,8(sp)
    80006094:	02010413          	addi	s0,sp,32
    80006098:	00050493          	mv	s1,a0
    putc('\n');
    8000609c:	00a00513          	li	a0,10
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	498080e7          	jalr	1176(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800060a8:	0104a783          	lw	a5,16(s1)
    800060ac:	0144a703          	lw	a4,20(s1)
    800060b0:	00e78c63          	beq	a5,a4,800060c8 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800060b4:	0017879b          	addiw	a5,a5,1
    800060b8:	0004a703          	lw	a4,0(s1)
    800060bc:	02e7e7bb          	remw	a5,a5,a4
    800060c0:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800060c4:	fe5ff06f          	j	800060a8 <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    800060c8:	02100513          	li	a0,33
    800060cc:	ffffb097          	auipc	ra,0xffffb
    800060d0:	46c080e7          	jalr	1132(ra) # 80001538 <putc>
    putc('\n');
    800060d4:	00a00513          	li	a0,10
    800060d8:	ffffb097          	auipc	ra,0xffffb
    800060dc:	460080e7          	jalr	1120(ra) # 80001538 <putc>

    mem_free(buffer);
    800060e0:	0084b503          	ld	a0,8(s1)
    800060e4:	ffffb097          	auipc	ra,0xffffb
    800060e8:	1a4080e7          	jalr	420(ra) # 80001288 <mem_free>
    delete itemAvailable;
    800060ec:	0204b503          	ld	a0,32(s1)
    800060f0:	00050863          	beqz	a0,80006100 <_ZN9BufferCPPD1Ev+0x7c>
    800060f4:	00053783          	ld	a5,0(a0)
    800060f8:	0087b783          	ld	a5,8(a5)
    800060fc:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006100:	0184b503          	ld	a0,24(s1)
    80006104:	00050863          	beqz	a0,80006114 <_ZN9BufferCPPD1Ev+0x90>
    80006108:	00053783          	ld	a5,0(a0)
    8000610c:	0087b783          	ld	a5,8(a5)
    80006110:	000780e7          	jalr	a5
    delete mutexTail;
    80006114:	0304b503          	ld	a0,48(s1)
    80006118:	00050863          	beqz	a0,80006128 <_ZN9BufferCPPD1Ev+0xa4>
    8000611c:	00053783          	ld	a5,0(a0)
    80006120:	0087b783          	ld	a5,8(a5)
    80006124:	000780e7          	jalr	a5
    delete mutexHead;
    80006128:	0284b503          	ld	a0,40(s1)
    8000612c:	00050863          	beqz	a0,8000613c <_ZN9BufferCPPD1Ev+0xb8>
    80006130:	00053783          	ld	a5,0(a0)
    80006134:	0087b783          	ld	a5,8(a5)
    80006138:	000780e7          	jalr	a5

}
    8000613c:	01813083          	ld	ra,24(sp)
    80006140:	01013403          	ld	s0,16(sp)
    80006144:	00813483          	ld	s1,8(sp)
    80006148:	02010113          	addi	sp,sp,32
    8000614c:	00008067          	ret

0000000080006150 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80006150:	fe010113          	addi	sp,sp,-32
    80006154:	00113c23          	sd	ra,24(sp)
    80006158:	00813823          	sd	s0,16(sp)
    8000615c:	00913423          	sd	s1,8(sp)
    80006160:	01213023          	sd	s2,0(sp)
    80006164:	02010413          	addi	s0,sp,32
    80006168:	00050493          	mv	s1,a0
    8000616c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006170:	01853503          	ld	a0,24(a0)
    80006174:	ffffd097          	auipc	ra,0xffffd
    80006178:	700080e7          	jalr	1792(ra) # 80003874 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000617c:	0304b503          	ld	a0,48(s1)
    80006180:	ffffd097          	auipc	ra,0xffffd
    80006184:	6f4080e7          	jalr	1780(ra) # 80003874 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006188:	0084b783          	ld	a5,8(s1)
    8000618c:	0144a703          	lw	a4,20(s1)
    80006190:	00271713          	slli	a4,a4,0x2
    80006194:	00e787b3          	add	a5,a5,a4
    80006198:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000619c:	0144a783          	lw	a5,20(s1)
    800061a0:	0017879b          	addiw	a5,a5,1
    800061a4:	0004a703          	lw	a4,0(s1)
    800061a8:	02e7e7bb          	remw	a5,a5,a4
    800061ac:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800061b0:	0304b503          	ld	a0,48(s1)
    800061b4:	ffffd097          	auipc	ra,0xffffd
    800061b8:	744080e7          	jalr	1860(ra) # 800038f8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800061bc:	0204b503          	ld	a0,32(s1)
    800061c0:	ffffd097          	auipc	ra,0xffffd
    800061c4:	738080e7          	jalr	1848(ra) # 800038f8 <_ZN9Semaphore6signalEv>

}
    800061c8:	01813083          	ld	ra,24(sp)
    800061cc:	01013403          	ld	s0,16(sp)
    800061d0:	00813483          	ld	s1,8(sp)
    800061d4:	00013903          	ld	s2,0(sp)
    800061d8:	02010113          	addi	sp,sp,32
    800061dc:	00008067          	ret

00000000800061e0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800061e0:	fe010113          	addi	sp,sp,-32
    800061e4:	00113c23          	sd	ra,24(sp)
    800061e8:	00813823          	sd	s0,16(sp)
    800061ec:	00913423          	sd	s1,8(sp)
    800061f0:	01213023          	sd	s2,0(sp)
    800061f4:	02010413          	addi	s0,sp,32
    800061f8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800061fc:	02053503          	ld	a0,32(a0)
    80006200:	ffffd097          	auipc	ra,0xffffd
    80006204:	674080e7          	jalr	1652(ra) # 80003874 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006208:	0284b503          	ld	a0,40(s1)
    8000620c:	ffffd097          	auipc	ra,0xffffd
    80006210:	668080e7          	jalr	1640(ra) # 80003874 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006214:	0084b703          	ld	a4,8(s1)
    80006218:	0104a783          	lw	a5,16(s1)
    8000621c:	00279693          	slli	a3,a5,0x2
    80006220:	00d70733          	add	a4,a4,a3
    80006224:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006228:	0017879b          	addiw	a5,a5,1
    8000622c:	0004a703          	lw	a4,0(s1)
    80006230:	02e7e7bb          	remw	a5,a5,a4
    80006234:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006238:	0284b503          	ld	a0,40(s1)
    8000623c:	ffffd097          	auipc	ra,0xffffd
    80006240:	6bc080e7          	jalr	1724(ra) # 800038f8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006244:	0184b503          	ld	a0,24(s1)
    80006248:	ffffd097          	auipc	ra,0xffffd
    8000624c:	6b0080e7          	jalr	1712(ra) # 800038f8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006250:	00090513          	mv	a0,s2
    80006254:	01813083          	ld	ra,24(sp)
    80006258:	01013403          	ld	s0,16(sp)
    8000625c:	00813483          	ld	s1,8(sp)
    80006260:	00013903          	ld	s2,0(sp)
    80006264:	02010113          	addi	sp,sp,32
    80006268:	00008067          	ret

000000008000626c <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    8000626c:	ff010113          	addi	sp,sp,-16
    80006270:	00113423          	sd	ra,8(sp)
    80006274:	00813023          	sd	s0,0(sp)
    80006278:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    8000627c:	00000097          	auipc	ra,0x0
    80006280:	0bc080e7          	jalr	188(ra) # 80006338 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80006284:	00813083          	ld	ra,8(sp)
    80006288:	00013403          	ld	s0,0(sp)
    8000628c:	01010113          	addi	sp,sp,16
    80006290:	00008067          	ret

0000000080006294 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006294:	fe010113          	addi	sp,sp,-32
    80006298:	00113c23          	sd	ra,24(sp)
    8000629c:	00813823          	sd	s0,16(sp)
    800062a0:	00913423          	sd	s1,8(sp)
    800062a4:	01213023          	sd	s2,0(sp)
    800062a8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800062ac:	00053903          	ld	s2,0(a0)
    int i = 6;
    800062b0:	00600493          	li	s1,6
    while (--i > 0) {
    800062b4:	fff4849b          	addiw	s1,s1,-1
    800062b8:	04905463          	blez	s1,80006300 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800062bc:	00003517          	auipc	a0,0x3
    800062c0:	28c50513          	addi	a0,a0,652 # 80009548 <_ZL6digits+0x18>
    800062c4:	00000097          	auipc	ra,0x0
    800062c8:	9d4080e7          	jalr	-1580(ra) # 80005c98 <_Z11printStringPKc>
        printInt(sleep_time);
    800062cc:	00000613          	li	a2,0
    800062d0:	00a00593          	li	a1,10
    800062d4:	0009051b          	sext.w	a0,s2
    800062d8:	00000097          	auipc	ra,0x0
    800062dc:	b58080e7          	jalr	-1192(ra) # 80005e30 <_Z8printIntiii>
        printString(" !\n");
    800062e0:	00003517          	auipc	a0,0x3
    800062e4:	27050513          	addi	a0,a0,624 # 80009550 <_ZL6digits+0x20>
    800062e8:	00000097          	auipc	ra,0x0
    800062ec:	9b0080e7          	jalr	-1616(ra) # 80005c98 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062f0:	00090513          	mv	a0,s2
    800062f4:	ffffb097          	auipc	ra,0xffffb
    800062f8:	144080e7          	jalr	324(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    800062fc:	fb9ff06f          	j	800062b4 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006300:	00a00793          	li	a5,10
    80006304:	02f95933          	divu	s2,s2,a5
    80006308:	fff90913          	addi	s2,s2,-1
    8000630c:	00006797          	auipc	a5,0x6
    80006310:	94c78793          	addi	a5,a5,-1716 # 8000bc58 <finished>
    80006314:	01278933          	add	s2,a5,s2
    80006318:	00100793          	li	a5,1
    8000631c:	00f90023          	sb	a5,0(s2)
}
    80006320:	01813083          	ld	ra,24(sp)
    80006324:	01013403          	ld	s0,16(sp)
    80006328:	00813483          	ld	s1,8(sp)
    8000632c:	00013903          	ld	s2,0(sp)
    80006330:	02010113          	addi	sp,sp,32
    80006334:	00008067          	ret

0000000080006338 <_Z12testSleepingv>:

void testSleeping()
{
    80006338:	fc010113          	addi	sp,sp,-64
    8000633c:	02113c23          	sd	ra,56(sp)
    80006340:	02813823          	sd	s0,48(sp)
    80006344:	02913423          	sd	s1,40(sp)
    80006348:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000634c:	00a00793          	li	a5,10
    80006350:	fcf43823          	sd	a5,-48(s0)
    80006354:	01400793          	li	a5,20
    80006358:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000635c:	00000493          	li	s1,0
    80006360:	02c0006f          	j	8000638c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006364:	00349793          	slli	a5,s1,0x3
    80006368:	fd040613          	addi	a2,s0,-48
    8000636c:	00f60633          	add	a2,a2,a5
    80006370:	00000597          	auipc	a1,0x0
    80006374:	f2458593          	addi	a1,a1,-220 # 80006294 <_Z9sleepyRunPv>
    80006378:	fc040513          	addi	a0,s0,-64
    8000637c:	00f50533          	add	a0,a0,a5
    80006380:	ffffb097          	auipc	ra,0xffffb
    80006384:	f34080e7          	jalr	-204(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006388:	0014849b          	addiw	s1,s1,1
    8000638c:	00100793          	li	a5,1
    80006390:	fc97dae3          	bge	a5,s1,80006364 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006394:	00006797          	auipc	a5,0x6
    80006398:	8c47c783          	lbu	a5,-1852(a5) # 8000bc58 <finished>
    8000639c:	fe078ce3          	beqz	a5,80006394 <_Z12testSleepingv+0x5c>
    800063a0:	00006797          	auipc	a5,0x6
    800063a4:	8b97c783          	lbu	a5,-1863(a5) # 8000bc59 <finished+0x1>
    800063a8:	fe0786e3          	beqz	a5,80006394 <_Z12testSleepingv+0x5c>
}
    800063ac:	03813083          	ld	ra,56(sp)
    800063b0:	03013403          	ld	s0,48(sp)
    800063b4:	02813483          	ld	s1,40(sp)
    800063b8:	04010113          	addi	sp,sp,64
    800063bc:	00008067          	ret

00000000800063c0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800063c0:	fe010113          	addi	sp,sp,-32
    800063c4:	00113c23          	sd	ra,24(sp)
    800063c8:	00813823          	sd	s0,16(sp)
    800063cc:	00913423          	sd	s1,8(sp)
    800063d0:	02010413          	addi	s0,sp,32
    800063d4:	00050493          	mv	s1,a0
    800063d8:	00b52023          	sw	a1,0(a0)
    800063dc:	00052823          	sw	zero,16(a0)
    800063e0:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800063e4:	00259513          	slli	a0,a1,0x2
    800063e8:	ffffb097          	auipc	ra,0xffffb
    800063ec:	e70080e7          	jalr	-400(ra) # 80001258 <mem_alloc>
    800063f0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800063f4:	00000593          	li	a1,0
    800063f8:	02048513          	addi	a0,s1,32
    800063fc:	ffffb097          	auipc	ra,0xffffb
    80006400:	f80080e7          	jalr	-128(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    80006404:	0004a583          	lw	a1,0(s1)
    80006408:	01848513          	addi	a0,s1,24
    8000640c:	ffffb097          	auipc	ra,0xffffb
    80006410:	f70080e7          	jalr	-144(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80006414:	00100593          	li	a1,1
    80006418:	02848513          	addi	a0,s1,40
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	f60080e7          	jalr	-160(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80006424:	00100593          	li	a1,1
    80006428:	03048513          	addi	a0,s1,48
    8000642c:	ffffb097          	auipc	ra,0xffffb
    80006430:	f50080e7          	jalr	-176(ra) # 8000137c <sem_open>
}
    80006434:	01813083          	ld	ra,24(sp)
    80006438:	01013403          	ld	s0,16(sp)
    8000643c:	00813483          	ld	s1,8(sp)
    80006440:	02010113          	addi	sp,sp,32
    80006444:	00008067          	ret

0000000080006448 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80006448:	fe010113          	addi	sp,sp,-32
    8000644c:	00113c23          	sd	ra,24(sp)
    80006450:	00813823          	sd	s0,16(sp)
    80006454:	00913423          	sd	s1,8(sp)
    80006458:	02010413          	addi	s0,sp,32
    8000645c:	00050493          	mv	s1,a0
    putc('\n');
    80006460:	00a00513          	li	a0,10
    80006464:	ffffb097          	auipc	ra,0xffffb
    80006468:	0d4080e7          	jalr	212(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    8000646c:	00003517          	auipc	a0,0x3
    80006470:	0ec50513          	addi	a0,a0,236 # 80009558 <_ZL6digits+0x28>
    80006474:	00000097          	auipc	ra,0x0
    80006478:	824080e7          	jalr	-2012(ra) # 80005c98 <_Z11printStringPKc>
    while (head != tail) {
    8000647c:	0104a783          	lw	a5,16(s1)
    80006480:	0144a703          	lw	a4,20(s1)
    80006484:	00e78c63          	beq	a5,a4,8000649c <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006488:	0017879b          	addiw	a5,a5,1
    8000648c:	0004a703          	lw	a4,0(s1)
    80006490:	02e7e7bb          	remw	a5,a5,a4
    80006494:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006498:	fe5ff06f          	j	8000647c <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    8000649c:	02100513          	li	a0,33
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	098080e7          	jalr	152(ra) # 80001538 <putc>
    putc('\n');
    800064a8:	00a00513          	li	a0,10
    800064ac:	ffffb097          	auipc	ra,0xffffb
    800064b0:	08c080e7          	jalr	140(ra) # 80001538 <putc>

    mem_free(buffer);
    800064b4:	0084b503          	ld	a0,8(s1)
    800064b8:	ffffb097          	auipc	ra,0xffffb
    800064bc:	dd0080e7          	jalr	-560(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    800064c0:	0204b503          	ld	a0,32(s1)
    800064c4:	ffffb097          	auipc	ra,0xffffb
    800064c8:	ef0080e7          	jalr	-272(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    800064cc:	0184b503          	ld	a0,24(s1)
    800064d0:	ffffb097          	auipc	ra,0xffffb
    800064d4:	ee4080e7          	jalr	-284(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    800064d8:	0304b503          	ld	a0,48(s1)
    800064dc:	ffffb097          	auipc	ra,0xffffb
    800064e0:	ed8080e7          	jalr	-296(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    800064e4:	0284b503          	ld	a0,40(s1)
    800064e8:	ffffb097          	auipc	ra,0xffffb
    800064ec:	ecc080e7          	jalr	-308(ra) # 800013b4 <sem_close>
}
    800064f0:	01813083          	ld	ra,24(sp)
    800064f4:	01013403          	ld	s0,16(sp)
    800064f8:	00813483          	ld	s1,8(sp)
    800064fc:	02010113          	addi	sp,sp,32
    80006500:	00008067          	ret

0000000080006504 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80006504:	fe010113          	addi	sp,sp,-32
    80006508:	00113c23          	sd	ra,24(sp)
    8000650c:	00813823          	sd	s0,16(sp)
    80006510:	00913423          	sd	s1,8(sp)
    80006514:	01213023          	sd	s2,0(sp)
    80006518:	02010413          	addi	s0,sp,32
    8000651c:	00050493          	mv	s1,a0
    80006520:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006524:	01853503          	ld	a0,24(a0)
    80006528:	ffffb097          	auipc	ra,0xffffb
    8000652c:	eb8080e7          	jalr	-328(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80006530:	0304b503          	ld	a0,48(s1)
    80006534:	ffffb097          	auipc	ra,0xffffb
    80006538:	eac080e7          	jalr	-340(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    8000653c:	0084b783          	ld	a5,8(s1)
    80006540:	0144a703          	lw	a4,20(s1)
    80006544:	00271713          	slli	a4,a4,0x2
    80006548:	00e787b3          	add	a5,a5,a4
    8000654c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006550:	0144a783          	lw	a5,20(s1)
    80006554:	0017879b          	addiw	a5,a5,1
    80006558:	0004a703          	lw	a4,0(s1)
    8000655c:	02e7e7bb          	remw	a5,a5,a4
    80006560:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006564:	0304b503          	ld	a0,48(s1)
    80006568:	ffffb097          	auipc	ra,0xffffb
    8000656c:	ea4080e7          	jalr	-348(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80006570:	0204b503          	ld	a0,32(s1)
    80006574:	ffffb097          	auipc	ra,0xffffb
    80006578:	e98080e7          	jalr	-360(ra) # 8000140c <sem_signal>

}
    8000657c:	01813083          	ld	ra,24(sp)
    80006580:	01013403          	ld	s0,16(sp)
    80006584:	00813483          	ld	s1,8(sp)
    80006588:	00013903          	ld	s2,0(sp)
    8000658c:	02010113          	addi	sp,sp,32
    80006590:	00008067          	ret

0000000080006594 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006594:	fe010113          	addi	sp,sp,-32
    80006598:	00113c23          	sd	ra,24(sp)
    8000659c:	00813823          	sd	s0,16(sp)
    800065a0:	00913423          	sd	s1,8(sp)
    800065a4:	01213023          	sd	s2,0(sp)
    800065a8:	02010413          	addi	s0,sp,32
    800065ac:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800065b0:	02053503          	ld	a0,32(a0)
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	e2c080e7          	jalr	-468(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    800065bc:	0284b503          	ld	a0,40(s1)
    800065c0:	ffffb097          	auipc	ra,0xffffb
    800065c4:	e20080e7          	jalr	-480(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    800065c8:	0084b703          	ld	a4,8(s1)
    800065cc:	0104a783          	lw	a5,16(s1)
    800065d0:	00279693          	slli	a3,a5,0x2
    800065d4:	00d70733          	add	a4,a4,a3
    800065d8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800065dc:	0017879b          	addiw	a5,a5,1
    800065e0:	0004a703          	lw	a4,0(s1)
    800065e4:	02e7e7bb          	remw	a5,a5,a4
    800065e8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800065ec:	0284b503          	ld	a0,40(s1)
    800065f0:	ffffb097          	auipc	ra,0xffffb
    800065f4:	e1c080e7          	jalr	-484(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    800065f8:	0184b503          	ld	a0,24(s1)
    800065fc:	ffffb097          	auipc	ra,0xffffb
    80006600:	e10080e7          	jalr	-496(ra) # 8000140c <sem_signal>

    return ret;
}
    80006604:	00090513          	mv	a0,s2
    80006608:	01813083          	ld	ra,24(sp)
    8000660c:	01013403          	ld	s0,16(sp)
    80006610:	00813483          	ld	s1,8(sp)
    80006614:	00013903          	ld	s2,0(sp)
    80006618:	02010113          	addi	sp,sp,32
    8000661c:	00008067          	ret

0000000080006620 <start>:
    80006620:	ff010113          	addi	sp,sp,-16
    80006624:	00813423          	sd	s0,8(sp)
    80006628:	01010413          	addi	s0,sp,16
    8000662c:	300027f3          	csrr	a5,mstatus
    80006630:	ffffe737          	lui	a4,0xffffe
    80006634:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff193f>
    80006638:	00e7f7b3          	and	a5,a5,a4
    8000663c:	00001737          	lui	a4,0x1
    80006640:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006644:	00e7e7b3          	or	a5,a5,a4
    80006648:	30079073          	csrw	mstatus,a5
    8000664c:	00000797          	auipc	a5,0x0
    80006650:	16078793          	addi	a5,a5,352 # 800067ac <system_main>
    80006654:	34179073          	csrw	mepc,a5
    80006658:	00000793          	li	a5,0
    8000665c:	18079073          	csrw	satp,a5
    80006660:	000107b7          	lui	a5,0x10
    80006664:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006668:	30279073          	csrw	medeleg,a5
    8000666c:	30379073          	csrw	mideleg,a5
    80006670:	104027f3          	csrr	a5,sie
    80006674:	2227e793          	ori	a5,a5,546
    80006678:	10479073          	csrw	sie,a5
    8000667c:	fff00793          	li	a5,-1
    80006680:	00a7d793          	srli	a5,a5,0xa
    80006684:	3b079073          	csrw	pmpaddr0,a5
    80006688:	00f00793          	li	a5,15
    8000668c:	3a079073          	csrw	pmpcfg0,a5
    80006690:	f14027f3          	csrr	a5,mhartid
    80006694:	0200c737          	lui	a4,0x200c
    80006698:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000669c:	0007869b          	sext.w	a3,a5
    800066a0:	00269713          	slli	a4,a3,0x2
    800066a4:	000f4637          	lui	a2,0xf4
    800066a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800066ac:	00d70733          	add	a4,a4,a3
    800066b0:	0037979b          	slliw	a5,a5,0x3
    800066b4:	020046b7          	lui	a3,0x2004
    800066b8:	00d787b3          	add	a5,a5,a3
    800066bc:	00c585b3          	add	a1,a1,a2
    800066c0:	00371693          	slli	a3,a4,0x3
    800066c4:	00005717          	auipc	a4,0x5
    800066c8:	59c70713          	addi	a4,a4,1436 # 8000bc60 <timer_scratch>
    800066cc:	00b7b023          	sd	a1,0(a5)
    800066d0:	00d70733          	add	a4,a4,a3
    800066d4:	00f73c23          	sd	a5,24(a4)
    800066d8:	02c73023          	sd	a2,32(a4)
    800066dc:	34071073          	csrw	mscratch,a4
    800066e0:	00000797          	auipc	a5,0x0
    800066e4:	6e078793          	addi	a5,a5,1760 # 80006dc0 <timervec>
    800066e8:	30579073          	csrw	mtvec,a5
    800066ec:	300027f3          	csrr	a5,mstatus
    800066f0:	0087e793          	ori	a5,a5,8
    800066f4:	30079073          	csrw	mstatus,a5
    800066f8:	304027f3          	csrr	a5,mie
    800066fc:	0807e793          	ori	a5,a5,128
    80006700:	30479073          	csrw	mie,a5
    80006704:	f14027f3          	csrr	a5,mhartid
    80006708:	0007879b          	sext.w	a5,a5
    8000670c:	00078213          	mv	tp,a5
    80006710:	30200073          	mret
    80006714:	00813403          	ld	s0,8(sp)
    80006718:	01010113          	addi	sp,sp,16
    8000671c:	00008067          	ret

0000000080006720 <timerinit>:
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00813423          	sd	s0,8(sp)
    80006728:	01010413          	addi	s0,sp,16
    8000672c:	f14027f3          	csrr	a5,mhartid
    80006730:	0200c737          	lui	a4,0x200c
    80006734:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006738:	0007869b          	sext.w	a3,a5
    8000673c:	00269713          	slli	a4,a3,0x2
    80006740:	000f4637          	lui	a2,0xf4
    80006744:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006748:	00d70733          	add	a4,a4,a3
    8000674c:	0037979b          	slliw	a5,a5,0x3
    80006750:	020046b7          	lui	a3,0x2004
    80006754:	00d787b3          	add	a5,a5,a3
    80006758:	00c585b3          	add	a1,a1,a2
    8000675c:	00371693          	slli	a3,a4,0x3
    80006760:	00005717          	auipc	a4,0x5
    80006764:	50070713          	addi	a4,a4,1280 # 8000bc60 <timer_scratch>
    80006768:	00b7b023          	sd	a1,0(a5)
    8000676c:	00d70733          	add	a4,a4,a3
    80006770:	00f73c23          	sd	a5,24(a4)
    80006774:	02c73023          	sd	a2,32(a4)
    80006778:	34071073          	csrw	mscratch,a4
    8000677c:	00000797          	auipc	a5,0x0
    80006780:	64478793          	addi	a5,a5,1604 # 80006dc0 <timervec>
    80006784:	30579073          	csrw	mtvec,a5
    80006788:	300027f3          	csrr	a5,mstatus
    8000678c:	0087e793          	ori	a5,a5,8
    80006790:	30079073          	csrw	mstatus,a5
    80006794:	304027f3          	csrr	a5,mie
    80006798:	0807e793          	ori	a5,a5,128
    8000679c:	30479073          	csrw	mie,a5
    800067a0:	00813403          	ld	s0,8(sp)
    800067a4:	01010113          	addi	sp,sp,16
    800067a8:	00008067          	ret

00000000800067ac <system_main>:
    800067ac:	fe010113          	addi	sp,sp,-32
    800067b0:	00813823          	sd	s0,16(sp)
    800067b4:	00913423          	sd	s1,8(sp)
    800067b8:	00113c23          	sd	ra,24(sp)
    800067bc:	02010413          	addi	s0,sp,32
    800067c0:	00000097          	auipc	ra,0x0
    800067c4:	0c4080e7          	jalr	196(ra) # 80006884 <cpuid>
    800067c8:	00005497          	auipc	s1,0x5
    800067cc:	38848493          	addi	s1,s1,904 # 8000bb50 <started>
    800067d0:	02050263          	beqz	a0,800067f4 <system_main+0x48>
    800067d4:	0004a783          	lw	a5,0(s1)
    800067d8:	0007879b          	sext.w	a5,a5
    800067dc:	fe078ce3          	beqz	a5,800067d4 <system_main+0x28>
    800067e0:	0ff0000f          	fence
    800067e4:	00003517          	auipc	a0,0x3
    800067e8:	dbc50513          	addi	a0,a0,-580 # 800095a0 <_ZL6digits+0x70>
    800067ec:	00001097          	auipc	ra,0x1
    800067f0:	a70080e7          	jalr	-1424(ra) # 8000725c <panic>
    800067f4:	00001097          	auipc	ra,0x1
    800067f8:	9c4080e7          	jalr	-1596(ra) # 800071b8 <consoleinit>
    800067fc:	00001097          	auipc	ra,0x1
    80006800:	150080e7          	jalr	336(ra) # 8000794c <printfinit>
    80006804:	00003517          	auipc	a0,0x3
    80006808:	8fc50513          	addi	a0,a0,-1796 # 80009100 <CONSOLE_STATUS+0xf0>
    8000680c:	00001097          	auipc	ra,0x1
    80006810:	aac080e7          	jalr	-1364(ra) # 800072b8 <__printf>
    80006814:	00003517          	auipc	a0,0x3
    80006818:	d5c50513          	addi	a0,a0,-676 # 80009570 <_ZL6digits+0x40>
    8000681c:	00001097          	auipc	ra,0x1
    80006820:	a9c080e7          	jalr	-1380(ra) # 800072b8 <__printf>
    80006824:	00003517          	auipc	a0,0x3
    80006828:	8dc50513          	addi	a0,a0,-1828 # 80009100 <CONSOLE_STATUS+0xf0>
    8000682c:	00001097          	auipc	ra,0x1
    80006830:	a8c080e7          	jalr	-1396(ra) # 800072b8 <__printf>
    80006834:	00001097          	auipc	ra,0x1
    80006838:	4a4080e7          	jalr	1188(ra) # 80007cd8 <kinit>
    8000683c:	00000097          	auipc	ra,0x0
    80006840:	148080e7          	jalr	328(ra) # 80006984 <trapinit>
    80006844:	00000097          	auipc	ra,0x0
    80006848:	16c080e7          	jalr	364(ra) # 800069b0 <trapinithart>
    8000684c:	00000097          	auipc	ra,0x0
    80006850:	5b4080e7          	jalr	1460(ra) # 80006e00 <plicinit>
    80006854:	00000097          	auipc	ra,0x0
    80006858:	5d4080e7          	jalr	1492(ra) # 80006e28 <plicinithart>
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	078080e7          	jalr	120(ra) # 800068d4 <userinit>
    80006864:	0ff0000f          	fence
    80006868:	00100793          	li	a5,1
    8000686c:	00003517          	auipc	a0,0x3
    80006870:	d1c50513          	addi	a0,a0,-740 # 80009588 <_ZL6digits+0x58>
    80006874:	00f4a023          	sw	a5,0(s1)
    80006878:	00001097          	auipc	ra,0x1
    8000687c:	a40080e7          	jalr	-1472(ra) # 800072b8 <__printf>
    80006880:	0000006f          	j	80006880 <system_main+0xd4>

0000000080006884 <cpuid>:
    80006884:	ff010113          	addi	sp,sp,-16
    80006888:	00813423          	sd	s0,8(sp)
    8000688c:	01010413          	addi	s0,sp,16
    80006890:	00020513          	mv	a0,tp
    80006894:	00813403          	ld	s0,8(sp)
    80006898:	0005051b          	sext.w	a0,a0
    8000689c:	01010113          	addi	sp,sp,16
    800068a0:	00008067          	ret

00000000800068a4 <mycpu>:
    800068a4:	ff010113          	addi	sp,sp,-16
    800068a8:	00813423          	sd	s0,8(sp)
    800068ac:	01010413          	addi	s0,sp,16
    800068b0:	00020793          	mv	a5,tp
    800068b4:	00813403          	ld	s0,8(sp)
    800068b8:	0007879b          	sext.w	a5,a5
    800068bc:	00779793          	slli	a5,a5,0x7
    800068c0:	00006517          	auipc	a0,0x6
    800068c4:	3d050513          	addi	a0,a0,976 # 8000cc90 <cpus>
    800068c8:	00f50533          	add	a0,a0,a5
    800068cc:	01010113          	addi	sp,sp,16
    800068d0:	00008067          	ret

00000000800068d4 <userinit>:
    800068d4:	ff010113          	addi	sp,sp,-16
    800068d8:	00813423          	sd	s0,8(sp)
    800068dc:	01010413          	addi	s0,sp,16
    800068e0:	00813403          	ld	s0,8(sp)
    800068e4:	01010113          	addi	sp,sp,16
    800068e8:	ffffd317          	auipc	t1,0xffffd
    800068ec:	cb430067          	jr	-844(t1) # 8000359c <main>

00000000800068f0 <either_copyout>:
    800068f0:	ff010113          	addi	sp,sp,-16
    800068f4:	00813023          	sd	s0,0(sp)
    800068f8:	00113423          	sd	ra,8(sp)
    800068fc:	01010413          	addi	s0,sp,16
    80006900:	02051663          	bnez	a0,8000692c <either_copyout+0x3c>
    80006904:	00058513          	mv	a0,a1
    80006908:	00060593          	mv	a1,a2
    8000690c:	0006861b          	sext.w	a2,a3
    80006910:	00002097          	auipc	ra,0x2
    80006914:	c54080e7          	jalr	-940(ra) # 80008564 <__memmove>
    80006918:	00813083          	ld	ra,8(sp)
    8000691c:	00013403          	ld	s0,0(sp)
    80006920:	00000513          	li	a0,0
    80006924:	01010113          	addi	sp,sp,16
    80006928:	00008067          	ret
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	c9c50513          	addi	a0,a0,-868 # 800095c8 <_ZL6digits+0x98>
    80006934:	00001097          	auipc	ra,0x1
    80006938:	928080e7          	jalr	-1752(ra) # 8000725c <panic>

000000008000693c <either_copyin>:
    8000693c:	ff010113          	addi	sp,sp,-16
    80006940:	00813023          	sd	s0,0(sp)
    80006944:	00113423          	sd	ra,8(sp)
    80006948:	01010413          	addi	s0,sp,16
    8000694c:	02059463          	bnez	a1,80006974 <either_copyin+0x38>
    80006950:	00060593          	mv	a1,a2
    80006954:	0006861b          	sext.w	a2,a3
    80006958:	00002097          	auipc	ra,0x2
    8000695c:	c0c080e7          	jalr	-1012(ra) # 80008564 <__memmove>
    80006960:	00813083          	ld	ra,8(sp)
    80006964:	00013403          	ld	s0,0(sp)
    80006968:	00000513          	li	a0,0
    8000696c:	01010113          	addi	sp,sp,16
    80006970:	00008067          	ret
    80006974:	00003517          	auipc	a0,0x3
    80006978:	c7c50513          	addi	a0,a0,-900 # 800095f0 <_ZL6digits+0xc0>
    8000697c:	00001097          	auipc	ra,0x1
    80006980:	8e0080e7          	jalr	-1824(ra) # 8000725c <panic>

0000000080006984 <trapinit>:
    80006984:	ff010113          	addi	sp,sp,-16
    80006988:	00813423          	sd	s0,8(sp)
    8000698c:	01010413          	addi	s0,sp,16
    80006990:	00813403          	ld	s0,8(sp)
    80006994:	00003597          	auipc	a1,0x3
    80006998:	c8458593          	addi	a1,a1,-892 # 80009618 <_ZL6digits+0xe8>
    8000699c:	00006517          	auipc	a0,0x6
    800069a0:	37450513          	addi	a0,a0,884 # 8000cd10 <tickslock>
    800069a4:	01010113          	addi	sp,sp,16
    800069a8:	00001317          	auipc	t1,0x1
    800069ac:	5c030067          	jr	1472(t1) # 80007f68 <initlock>

00000000800069b0 <trapinithart>:
    800069b0:	ff010113          	addi	sp,sp,-16
    800069b4:	00813423          	sd	s0,8(sp)
    800069b8:	01010413          	addi	s0,sp,16
    800069bc:	00000797          	auipc	a5,0x0
    800069c0:	2f478793          	addi	a5,a5,756 # 80006cb0 <kernelvec>
    800069c4:	10579073          	csrw	stvec,a5
    800069c8:	00813403          	ld	s0,8(sp)
    800069cc:	01010113          	addi	sp,sp,16
    800069d0:	00008067          	ret

00000000800069d4 <usertrap>:
    800069d4:	ff010113          	addi	sp,sp,-16
    800069d8:	00813423          	sd	s0,8(sp)
    800069dc:	01010413          	addi	s0,sp,16
    800069e0:	00813403          	ld	s0,8(sp)
    800069e4:	01010113          	addi	sp,sp,16
    800069e8:	00008067          	ret

00000000800069ec <usertrapret>:
    800069ec:	ff010113          	addi	sp,sp,-16
    800069f0:	00813423          	sd	s0,8(sp)
    800069f4:	01010413          	addi	s0,sp,16
    800069f8:	00813403          	ld	s0,8(sp)
    800069fc:	01010113          	addi	sp,sp,16
    80006a00:	00008067          	ret

0000000080006a04 <kerneltrap>:
    80006a04:	fe010113          	addi	sp,sp,-32
    80006a08:	00813823          	sd	s0,16(sp)
    80006a0c:	00113c23          	sd	ra,24(sp)
    80006a10:	00913423          	sd	s1,8(sp)
    80006a14:	02010413          	addi	s0,sp,32
    80006a18:	142025f3          	csrr	a1,scause
    80006a1c:	100027f3          	csrr	a5,sstatus
    80006a20:	0027f793          	andi	a5,a5,2
    80006a24:	10079c63          	bnez	a5,80006b3c <kerneltrap+0x138>
    80006a28:	142027f3          	csrr	a5,scause
    80006a2c:	0207ce63          	bltz	a5,80006a68 <kerneltrap+0x64>
    80006a30:	00003517          	auipc	a0,0x3
    80006a34:	c3050513          	addi	a0,a0,-976 # 80009660 <_ZL6digits+0x130>
    80006a38:	00001097          	auipc	ra,0x1
    80006a3c:	880080e7          	jalr	-1920(ra) # 800072b8 <__printf>
    80006a40:	141025f3          	csrr	a1,sepc
    80006a44:	14302673          	csrr	a2,stval
    80006a48:	00003517          	auipc	a0,0x3
    80006a4c:	c2850513          	addi	a0,a0,-984 # 80009670 <_ZL6digits+0x140>
    80006a50:	00001097          	auipc	ra,0x1
    80006a54:	868080e7          	jalr	-1944(ra) # 800072b8 <__printf>
    80006a58:	00003517          	auipc	a0,0x3
    80006a5c:	c3050513          	addi	a0,a0,-976 # 80009688 <_ZL6digits+0x158>
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	7fc080e7          	jalr	2044(ra) # 8000725c <panic>
    80006a68:	0ff7f713          	andi	a4,a5,255
    80006a6c:	00900693          	li	a3,9
    80006a70:	04d70063          	beq	a4,a3,80006ab0 <kerneltrap+0xac>
    80006a74:	fff00713          	li	a4,-1
    80006a78:	03f71713          	slli	a4,a4,0x3f
    80006a7c:	00170713          	addi	a4,a4,1
    80006a80:	fae798e3          	bne	a5,a4,80006a30 <kerneltrap+0x2c>
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	e00080e7          	jalr	-512(ra) # 80006884 <cpuid>
    80006a8c:	06050663          	beqz	a0,80006af8 <kerneltrap+0xf4>
    80006a90:	144027f3          	csrr	a5,sip
    80006a94:	ffd7f793          	andi	a5,a5,-3
    80006a98:	14479073          	csrw	sip,a5
    80006a9c:	01813083          	ld	ra,24(sp)
    80006aa0:	01013403          	ld	s0,16(sp)
    80006aa4:	00813483          	ld	s1,8(sp)
    80006aa8:	02010113          	addi	sp,sp,32
    80006aac:	00008067          	ret
    80006ab0:	00000097          	auipc	ra,0x0
    80006ab4:	3c4080e7          	jalr	964(ra) # 80006e74 <plic_claim>
    80006ab8:	00a00793          	li	a5,10
    80006abc:	00050493          	mv	s1,a0
    80006ac0:	06f50863          	beq	a0,a5,80006b30 <kerneltrap+0x12c>
    80006ac4:	fc050ce3          	beqz	a0,80006a9c <kerneltrap+0x98>
    80006ac8:	00050593          	mv	a1,a0
    80006acc:	00003517          	auipc	a0,0x3
    80006ad0:	b7450513          	addi	a0,a0,-1164 # 80009640 <_ZL6digits+0x110>
    80006ad4:	00000097          	auipc	ra,0x0
    80006ad8:	7e4080e7          	jalr	2020(ra) # 800072b8 <__printf>
    80006adc:	01013403          	ld	s0,16(sp)
    80006ae0:	01813083          	ld	ra,24(sp)
    80006ae4:	00048513          	mv	a0,s1
    80006ae8:	00813483          	ld	s1,8(sp)
    80006aec:	02010113          	addi	sp,sp,32
    80006af0:	00000317          	auipc	t1,0x0
    80006af4:	3bc30067          	jr	956(t1) # 80006eac <plic_complete>
    80006af8:	00006517          	auipc	a0,0x6
    80006afc:	21850513          	addi	a0,a0,536 # 8000cd10 <tickslock>
    80006b00:	00001097          	auipc	ra,0x1
    80006b04:	48c080e7          	jalr	1164(ra) # 80007f8c <acquire>
    80006b08:	00005717          	auipc	a4,0x5
    80006b0c:	04c70713          	addi	a4,a4,76 # 8000bb54 <ticks>
    80006b10:	00072783          	lw	a5,0(a4)
    80006b14:	00006517          	auipc	a0,0x6
    80006b18:	1fc50513          	addi	a0,a0,508 # 8000cd10 <tickslock>
    80006b1c:	0017879b          	addiw	a5,a5,1
    80006b20:	00f72023          	sw	a5,0(a4)
    80006b24:	00001097          	auipc	ra,0x1
    80006b28:	534080e7          	jalr	1332(ra) # 80008058 <release>
    80006b2c:	f65ff06f          	j	80006a90 <kerneltrap+0x8c>
    80006b30:	00001097          	auipc	ra,0x1
    80006b34:	090080e7          	jalr	144(ra) # 80007bc0 <uartintr>
    80006b38:	fa5ff06f          	j	80006adc <kerneltrap+0xd8>
    80006b3c:	00003517          	auipc	a0,0x3
    80006b40:	ae450513          	addi	a0,a0,-1308 # 80009620 <_ZL6digits+0xf0>
    80006b44:	00000097          	auipc	ra,0x0
    80006b48:	718080e7          	jalr	1816(ra) # 8000725c <panic>

0000000080006b4c <clockintr>:
    80006b4c:	fe010113          	addi	sp,sp,-32
    80006b50:	00813823          	sd	s0,16(sp)
    80006b54:	00913423          	sd	s1,8(sp)
    80006b58:	00113c23          	sd	ra,24(sp)
    80006b5c:	02010413          	addi	s0,sp,32
    80006b60:	00006497          	auipc	s1,0x6
    80006b64:	1b048493          	addi	s1,s1,432 # 8000cd10 <tickslock>
    80006b68:	00048513          	mv	a0,s1
    80006b6c:	00001097          	auipc	ra,0x1
    80006b70:	420080e7          	jalr	1056(ra) # 80007f8c <acquire>
    80006b74:	00005717          	auipc	a4,0x5
    80006b78:	fe070713          	addi	a4,a4,-32 # 8000bb54 <ticks>
    80006b7c:	00072783          	lw	a5,0(a4)
    80006b80:	01013403          	ld	s0,16(sp)
    80006b84:	01813083          	ld	ra,24(sp)
    80006b88:	00048513          	mv	a0,s1
    80006b8c:	0017879b          	addiw	a5,a5,1
    80006b90:	00813483          	ld	s1,8(sp)
    80006b94:	00f72023          	sw	a5,0(a4)
    80006b98:	02010113          	addi	sp,sp,32
    80006b9c:	00001317          	auipc	t1,0x1
    80006ba0:	4bc30067          	jr	1212(t1) # 80008058 <release>

0000000080006ba4 <devintr>:
    80006ba4:	142027f3          	csrr	a5,scause
    80006ba8:	00000513          	li	a0,0
    80006bac:	0007c463          	bltz	a5,80006bb4 <devintr+0x10>
    80006bb0:	00008067          	ret
    80006bb4:	fe010113          	addi	sp,sp,-32
    80006bb8:	00813823          	sd	s0,16(sp)
    80006bbc:	00113c23          	sd	ra,24(sp)
    80006bc0:	00913423          	sd	s1,8(sp)
    80006bc4:	02010413          	addi	s0,sp,32
    80006bc8:	0ff7f713          	andi	a4,a5,255
    80006bcc:	00900693          	li	a3,9
    80006bd0:	04d70c63          	beq	a4,a3,80006c28 <devintr+0x84>
    80006bd4:	fff00713          	li	a4,-1
    80006bd8:	03f71713          	slli	a4,a4,0x3f
    80006bdc:	00170713          	addi	a4,a4,1
    80006be0:	00e78c63          	beq	a5,a4,80006bf8 <devintr+0x54>
    80006be4:	01813083          	ld	ra,24(sp)
    80006be8:	01013403          	ld	s0,16(sp)
    80006bec:	00813483          	ld	s1,8(sp)
    80006bf0:	02010113          	addi	sp,sp,32
    80006bf4:	00008067          	ret
    80006bf8:	00000097          	auipc	ra,0x0
    80006bfc:	c8c080e7          	jalr	-884(ra) # 80006884 <cpuid>
    80006c00:	06050663          	beqz	a0,80006c6c <devintr+0xc8>
    80006c04:	144027f3          	csrr	a5,sip
    80006c08:	ffd7f793          	andi	a5,a5,-3
    80006c0c:	14479073          	csrw	sip,a5
    80006c10:	01813083          	ld	ra,24(sp)
    80006c14:	01013403          	ld	s0,16(sp)
    80006c18:	00813483          	ld	s1,8(sp)
    80006c1c:	00200513          	li	a0,2
    80006c20:	02010113          	addi	sp,sp,32
    80006c24:	00008067          	ret
    80006c28:	00000097          	auipc	ra,0x0
    80006c2c:	24c080e7          	jalr	588(ra) # 80006e74 <plic_claim>
    80006c30:	00a00793          	li	a5,10
    80006c34:	00050493          	mv	s1,a0
    80006c38:	06f50663          	beq	a0,a5,80006ca4 <devintr+0x100>
    80006c3c:	00100513          	li	a0,1
    80006c40:	fa0482e3          	beqz	s1,80006be4 <devintr+0x40>
    80006c44:	00048593          	mv	a1,s1
    80006c48:	00003517          	auipc	a0,0x3
    80006c4c:	9f850513          	addi	a0,a0,-1544 # 80009640 <_ZL6digits+0x110>
    80006c50:	00000097          	auipc	ra,0x0
    80006c54:	668080e7          	jalr	1640(ra) # 800072b8 <__printf>
    80006c58:	00048513          	mv	a0,s1
    80006c5c:	00000097          	auipc	ra,0x0
    80006c60:	250080e7          	jalr	592(ra) # 80006eac <plic_complete>
    80006c64:	00100513          	li	a0,1
    80006c68:	f7dff06f          	j	80006be4 <devintr+0x40>
    80006c6c:	00006517          	auipc	a0,0x6
    80006c70:	0a450513          	addi	a0,a0,164 # 8000cd10 <tickslock>
    80006c74:	00001097          	auipc	ra,0x1
    80006c78:	318080e7          	jalr	792(ra) # 80007f8c <acquire>
    80006c7c:	00005717          	auipc	a4,0x5
    80006c80:	ed870713          	addi	a4,a4,-296 # 8000bb54 <ticks>
    80006c84:	00072783          	lw	a5,0(a4)
    80006c88:	00006517          	auipc	a0,0x6
    80006c8c:	08850513          	addi	a0,a0,136 # 8000cd10 <tickslock>
    80006c90:	0017879b          	addiw	a5,a5,1
    80006c94:	00f72023          	sw	a5,0(a4)
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	3c0080e7          	jalr	960(ra) # 80008058 <release>
    80006ca0:	f65ff06f          	j	80006c04 <devintr+0x60>
    80006ca4:	00001097          	auipc	ra,0x1
    80006ca8:	f1c080e7          	jalr	-228(ra) # 80007bc0 <uartintr>
    80006cac:	fadff06f          	j	80006c58 <devintr+0xb4>

0000000080006cb0 <kernelvec>:
    80006cb0:	f0010113          	addi	sp,sp,-256
    80006cb4:	00113023          	sd	ra,0(sp)
    80006cb8:	00213423          	sd	sp,8(sp)
    80006cbc:	00313823          	sd	gp,16(sp)
    80006cc0:	00413c23          	sd	tp,24(sp)
    80006cc4:	02513023          	sd	t0,32(sp)
    80006cc8:	02613423          	sd	t1,40(sp)
    80006ccc:	02713823          	sd	t2,48(sp)
    80006cd0:	02813c23          	sd	s0,56(sp)
    80006cd4:	04913023          	sd	s1,64(sp)
    80006cd8:	04a13423          	sd	a0,72(sp)
    80006cdc:	04b13823          	sd	a1,80(sp)
    80006ce0:	04c13c23          	sd	a2,88(sp)
    80006ce4:	06d13023          	sd	a3,96(sp)
    80006ce8:	06e13423          	sd	a4,104(sp)
    80006cec:	06f13823          	sd	a5,112(sp)
    80006cf0:	07013c23          	sd	a6,120(sp)
    80006cf4:	09113023          	sd	a7,128(sp)
    80006cf8:	09213423          	sd	s2,136(sp)
    80006cfc:	09313823          	sd	s3,144(sp)
    80006d00:	09413c23          	sd	s4,152(sp)
    80006d04:	0b513023          	sd	s5,160(sp)
    80006d08:	0b613423          	sd	s6,168(sp)
    80006d0c:	0b713823          	sd	s7,176(sp)
    80006d10:	0b813c23          	sd	s8,184(sp)
    80006d14:	0d913023          	sd	s9,192(sp)
    80006d18:	0da13423          	sd	s10,200(sp)
    80006d1c:	0db13823          	sd	s11,208(sp)
    80006d20:	0dc13c23          	sd	t3,216(sp)
    80006d24:	0fd13023          	sd	t4,224(sp)
    80006d28:	0fe13423          	sd	t5,232(sp)
    80006d2c:	0ff13823          	sd	t6,240(sp)
    80006d30:	cd5ff0ef          	jal	ra,80006a04 <kerneltrap>
    80006d34:	00013083          	ld	ra,0(sp)
    80006d38:	00813103          	ld	sp,8(sp)
    80006d3c:	01013183          	ld	gp,16(sp)
    80006d40:	02013283          	ld	t0,32(sp)
    80006d44:	02813303          	ld	t1,40(sp)
    80006d48:	03013383          	ld	t2,48(sp)
    80006d4c:	03813403          	ld	s0,56(sp)
    80006d50:	04013483          	ld	s1,64(sp)
    80006d54:	04813503          	ld	a0,72(sp)
    80006d58:	05013583          	ld	a1,80(sp)
    80006d5c:	05813603          	ld	a2,88(sp)
    80006d60:	06013683          	ld	a3,96(sp)
    80006d64:	06813703          	ld	a4,104(sp)
    80006d68:	07013783          	ld	a5,112(sp)
    80006d6c:	07813803          	ld	a6,120(sp)
    80006d70:	08013883          	ld	a7,128(sp)
    80006d74:	08813903          	ld	s2,136(sp)
    80006d78:	09013983          	ld	s3,144(sp)
    80006d7c:	09813a03          	ld	s4,152(sp)
    80006d80:	0a013a83          	ld	s5,160(sp)
    80006d84:	0a813b03          	ld	s6,168(sp)
    80006d88:	0b013b83          	ld	s7,176(sp)
    80006d8c:	0b813c03          	ld	s8,184(sp)
    80006d90:	0c013c83          	ld	s9,192(sp)
    80006d94:	0c813d03          	ld	s10,200(sp)
    80006d98:	0d013d83          	ld	s11,208(sp)
    80006d9c:	0d813e03          	ld	t3,216(sp)
    80006da0:	0e013e83          	ld	t4,224(sp)
    80006da4:	0e813f03          	ld	t5,232(sp)
    80006da8:	0f013f83          	ld	t6,240(sp)
    80006dac:	10010113          	addi	sp,sp,256
    80006db0:	10200073          	sret
    80006db4:	00000013          	nop
    80006db8:	00000013          	nop
    80006dbc:	00000013          	nop

0000000080006dc0 <timervec>:
    80006dc0:	34051573          	csrrw	a0,mscratch,a0
    80006dc4:	00b53023          	sd	a1,0(a0)
    80006dc8:	00c53423          	sd	a2,8(a0)
    80006dcc:	00d53823          	sd	a3,16(a0)
    80006dd0:	01853583          	ld	a1,24(a0)
    80006dd4:	02053603          	ld	a2,32(a0)
    80006dd8:	0005b683          	ld	a3,0(a1)
    80006ddc:	00c686b3          	add	a3,a3,a2
    80006de0:	00d5b023          	sd	a3,0(a1)
    80006de4:	00200593          	li	a1,2
    80006de8:	14459073          	csrw	sip,a1
    80006dec:	01053683          	ld	a3,16(a0)
    80006df0:	00853603          	ld	a2,8(a0)
    80006df4:	00053583          	ld	a1,0(a0)
    80006df8:	34051573          	csrrw	a0,mscratch,a0
    80006dfc:	30200073          	mret

0000000080006e00 <plicinit>:
    80006e00:	ff010113          	addi	sp,sp,-16
    80006e04:	00813423          	sd	s0,8(sp)
    80006e08:	01010413          	addi	s0,sp,16
    80006e0c:	00813403          	ld	s0,8(sp)
    80006e10:	0c0007b7          	lui	a5,0xc000
    80006e14:	00100713          	li	a4,1
    80006e18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006e1c:	00e7a223          	sw	a4,4(a5)
    80006e20:	01010113          	addi	sp,sp,16
    80006e24:	00008067          	ret

0000000080006e28 <plicinithart>:
    80006e28:	ff010113          	addi	sp,sp,-16
    80006e2c:	00813023          	sd	s0,0(sp)
    80006e30:	00113423          	sd	ra,8(sp)
    80006e34:	01010413          	addi	s0,sp,16
    80006e38:	00000097          	auipc	ra,0x0
    80006e3c:	a4c080e7          	jalr	-1460(ra) # 80006884 <cpuid>
    80006e40:	0085171b          	slliw	a4,a0,0x8
    80006e44:	0c0027b7          	lui	a5,0xc002
    80006e48:	00e787b3          	add	a5,a5,a4
    80006e4c:	40200713          	li	a4,1026
    80006e50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006e54:	00813083          	ld	ra,8(sp)
    80006e58:	00013403          	ld	s0,0(sp)
    80006e5c:	00d5151b          	slliw	a0,a0,0xd
    80006e60:	0c2017b7          	lui	a5,0xc201
    80006e64:	00a78533          	add	a0,a5,a0
    80006e68:	00052023          	sw	zero,0(a0)
    80006e6c:	01010113          	addi	sp,sp,16
    80006e70:	00008067          	ret

0000000080006e74 <plic_claim>:
    80006e74:	ff010113          	addi	sp,sp,-16
    80006e78:	00813023          	sd	s0,0(sp)
    80006e7c:	00113423          	sd	ra,8(sp)
    80006e80:	01010413          	addi	s0,sp,16
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	a00080e7          	jalr	-1536(ra) # 80006884 <cpuid>
    80006e8c:	00813083          	ld	ra,8(sp)
    80006e90:	00013403          	ld	s0,0(sp)
    80006e94:	00d5151b          	slliw	a0,a0,0xd
    80006e98:	0c2017b7          	lui	a5,0xc201
    80006e9c:	00a78533          	add	a0,a5,a0
    80006ea0:	00452503          	lw	a0,4(a0)
    80006ea4:	01010113          	addi	sp,sp,16
    80006ea8:	00008067          	ret

0000000080006eac <plic_complete>:
    80006eac:	fe010113          	addi	sp,sp,-32
    80006eb0:	00813823          	sd	s0,16(sp)
    80006eb4:	00913423          	sd	s1,8(sp)
    80006eb8:	00113c23          	sd	ra,24(sp)
    80006ebc:	02010413          	addi	s0,sp,32
    80006ec0:	00050493          	mv	s1,a0
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	9c0080e7          	jalr	-1600(ra) # 80006884 <cpuid>
    80006ecc:	01813083          	ld	ra,24(sp)
    80006ed0:	01013403          	ld	s0,16(sp)
    80006ed4:	00d5179b          	slliw	a5,a0,0xd
    80006ed8:	0c201737          	lui	a4,0xc201
    80006edc:	00f707b3          	add	a5,a4,a5
    80006ee0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ee4:	00813483          	ld	s1,8(sp)
    80006ee8:	02010113          	addi	sp,sp,32
    80006eec:	00008067          	ret

0000000080006ef0 <consolewrite>:
    80006ef0:	fb010113          	addi	sp,sp,-80
    80006ef4:	04813023          	sd	s0,64(sp)
    80006ef8:	04113423          	sd	ra,72(sp)
    80006efc:	02913c23          	sd	s1,56(sp)
    80006f00:	03213823          	sd	s2,48(sp)
    80006f04:	03313423          	sd	s3,40(sp)
    80006f08:	03413023          	sd	s4,32(sp)
    80006f0c:	01513c23          	sd	s5,24(sp)
    80006f10:	05010413          	addi	s0,sp,80
    80006f14:	06c05c63          	blez	a2,80006f8c <consolewrite+0x9c>
    80006f18:	00060993          	mv	s3,a2
    80006f1c:	00050a13          	mv	s4,a0
    80006f20:	00058493          	mv	s1,a1
    80006f24:	00000913          	li	s2,0
    80006f28:	fff00a93          	li	s5,-1
    80006f2c:	01c0006f          	j	80006f48 <consolewrite+0x58>
    80006f30:	fbf44503          	lbu	a0,-65(s0)
    80006f34:	0019091b          	addiw	s2,s2,1
    80006f38:	00148493          	addi	s1,s1,1
    80006f3c:	00001097          	auipc	ra,0x1
    80006f40:	a9c080e7          	jalr	-1380(ra) # 800079d8 <uartputc>
    80006f44:	03298063          	beq	s3,s2,80006f64 <consolewrite+0x74>
    80006f48:	00048613          	mv	a2,s1
    80006f4c:	00100693          	li	a3,1
    80006f50:	000a0593          	mv	a1,s4
    80006f54:	fbf40513          	addi	a0,s0,-65
    80006f58:	00000097          	auipc	ra,0x0
    80006f5c:	9e4080e7          	jalr	-1564(ra) # 8000693c <either_copyin>
    80006f60:	fd5518e3          	bne	a0,s5,80006f30 <consolewrite+0x40>
    80006f64:	04813083          	ld	ra,72(sp)
    80006f68:	04013403          	ld	s0,64(sp)
    80006f6c:	03813483          	ld	s1,56(sp)
    80006f70:	02813983          	ld	s3,40(sp)
    80006f74:	02013a03          	ld	s4,32(sp)
    80006f78:	01813a83          	ld	s5,24(sp)
    80006f7c:	00090513          	mv	a0,s2
    80006f80:	03013903          	ld	s2,48(sp)
    80006f84:	05010113          	addi	sp,sp,80
    80006f88:	00008067          	ret
    80006f8c:	00000913          	li	s2,0
    80006f90:	fd5ff06f          	j	80006f64 <consolewrite+0x74>

0000000080006f94 <consoleread>:
    80006f94:	f9010113          	addi	sp,sp,-112
    80006f98:	06813023          	sd	s0,96(sp)
    80006f9c:	04913c23          	sd	s1,88(sp)
    80006fa0:	05213823          	sd	s2,80(sp)
    80006fa4:	05313423          	sd	s3,72(sp)
    80006fa8:	05413023          	sd	s4,64(sp)
    80006fac:	03513c23          	sd	s5,56(sp)
    80006fb0:	03613823          	sd	s6,48(sp)
    80006fb4:	03713423          	sd	s7,40(sp)
    80006fb8:	03813023          	sd	s8,32(sp)
    80006fbc:	06113423          	sd	ra,104(sp)
    80006fc0:	01913c23          	sd	s9,24(sp)
    80006fc4:	07010413          	addi	s0,sp,112
    80006fc8:	00060b93          	mv	s7,a2
    80006fcc:	00050913          	mv	s2,a0
    80006fd0:	00058c13          	mv	s8,a1
    80006fd4:	00060b1b          	sext.w	s6,a2
    80006fd8:	00006497          	auipc	s1,0x6
    80006fdc:	d6048493          	addi	s1,s1,-672 # 8000cd38 <cons>
    80006fe0:	00400993          	li	s3,4
    80006fe4:	fff00a13          	li	s4,-1
    80006fe8:	00a00a93          	li	s5,10
    80006fec:	05705e63          	blez	s7,80007048 <consoleread+0xb4>
    80006ff0:	09c4a703          	lw	a4,156(s1)
    80006ff4:	0984a783          	lw	a5,152(s1)
    80006ff8:	0007071b          	sext.w	a4,a4
    80006ffc:	08e78463          	beq	a5,a4,80007084 <consoleread+0xf0>
    80007000:	07f7f713          	andi	a4,a5,127
    80007004:	00e48733          	add	a4,s1,a4
    80007008:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000700c:	0017869b          	addiw	a3,a5,1
    80007010:	08d4ac23          	sw	a3,152(s1)
    80007014:	00070c9b          	sext.w	s9,a4
    80007018:	0b370663          	beq	a4,s3,800070c4 <consoleread+0x130>
    8000701c:	00100693          	li	a3,1
    80007020:	f9f40613          	addi	a2,s0,-97
    80007024:	000c0593          	mv	a1,s8
    80007028:	00090513          	mv	a0,s2
    8000702c:	f8e40fa3          	sb	a4,-97(s0)
    80007030:	00000097          	auipc	ra,0x0
    80007034:	8c0080e7          	jalr	-1856(ra) # 800068f0 <either_copyout>
    80007038:	01450863          	beq	a0,s4,80007048 <consoleread+0xb4>
    8000703c:	001c0c13          	addi	s8,s8,1
    80007040:	fffb8b9b          	addiw	s7,s7,-1
    80007044:	fb5c94e3          	bne	s9,s5,80006fec <consoleread+0x58>
    80007048:	000b851b          	sext.w	a0,s7
    8000704c:	06813083          	ld	ra,104(sp)
    80007050:	06013403          	ld	s0,96(sp)
    80007054:	05813483          	ld	s1,88(sp)
    80007058:	05013903          	ld	s2,80(sp)
    8000705c:	04813983          	ld	s3,72(sp)
    80007060:	04013a03          	ld	s4,64(sp)
    80007064:	03813a83          	ld	s5,56(sp)
    80007068:	02813b83          	ld	s7,40(sp)
    8000706c:	02013c03          	ld	s8,32(sp)
    80007070:	01813c83          	ld	s9,24(sp)
    80007074:	40ab053b          	subw	a0,s6,a0
    80007078:	03013b03          	ld	s6,48(sp)
    8000707c:	07010113          	addi	sp,sp,112
    80007080:	00008067          	ret
    80007084:	00001097          	auipc	ra,0x1
    80007088:	1d8080e7          	jalr	472(ra) # 8000825c <push_on>
    8000708c:	0984a703          	lw	a4,152(s1)
    80007090:	09c4a783          	lw	a5,156(s1)
    80007094:	0007879b          	sext.w	a5,a5
    80007098:	fef70ce3          	beq	a4,a5,80007090 <consoleread+0xfc>
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	234080e7          	jalr	564(ra) # 800082d0 <pop_on>
    800070a4:	0984a783          	lw	a5,152(s1)
    800070a8:	07f7f713          	andi	a4,a5,127
    800070ac:	00e48733          	add	a4,s1,a4
    800070b0:	01874703          	lbu	a4,24(a4)
    800070b4:	0017869b          	addiw	a3,a5,1
    800070b8:	08d4ac23          	sw	a3,152(s1)
    800070bc:	00070c9b          	sext.w	s9,a4
    800070c0:	f5371ee3          	bne	a4,s3,8000701c <consoleread+0x88>
    800070c4:	000b851b          	sext.w	a0,s7
    800070c8:	f96bf2e3          	bgeu	s7,s6,8000704c <consoleread+0xb8>
    800070cc:	08f4ac23          	sw	a5,152(s1)
    800070d0:	f7dff06f          	j	8000704c <consoleread+0xb8>

00000000800070d4 <consputc>:
    800070d4:	10000793          	li	a5,256
    800070d8:	00f50663          	beq	a0,a5,800070e4 <consputc+0x10>
    800070dc:	00001317          	auipc	t1,0x1
    800070e0:	9f430067          	jr	-1548(t1) # 80007ad0 <uartputc_sync>
    800070e4:	ff010113          	addi	sp,sp,-16
    800070e8:	00113423          	sd	ra,8(sp)
    800070ec:	00813023          	sd	s0,0(sp)
    800070f0:	01010413          	addi	s0,sp,16
    800070f4:	00800513          	li	a0,8
    800070f8:	00001097          	auipc	ra,0x1
    800070fc:	9d8080e7          	jalr	-1576(ra) # 80007ad0 <uartputc_sync>
    80007100:	02000513          	li	a0,32
    80007104:	00001097          	auipc	ra,0x1
    80007108:	9cc080e7          	jalr	-1588(ra) # 80007ad0 <uartputc_sync>
    8000710c:	00013403          	ld	s0,0(sp)
    80007110:	00813083          	ld	ra,8(sp)
    80007114:	00800513          	li	a0,8
    80007118:	01010113          	addi	sp,sp,16
    8000711c:	00001317          	auipc	t1,0x1
    80007120:	9b430067          	jr	-1612(t1) # 80007ad0 <uartputc_sync>

0000000080007124 <consoleintr>:
    80007124:	fe010113          	addi	sp,sp,-32
    80007128:	00813823          	sd	s0,16(sp)
    8000712c:	00913423          	sd	s1,8(sp)
    80007130:	01213023          	sd	s2,0(sp)
    80007134:	00113c23          	sd	ra,24(sp)
    80007138:	02010413          	addi	s0,sp,32
    8000713c:	00006917          	auipc	s2,0x6
    80007140:	bfc90913          	addi	s2,s2,-1028 # 8000cd38 <cons>
    80007144:	00050493          	mv	s1,a0
    80007148:	00090513          	mv	a0,s2
    8000714c:	00001097          	auipc	ra,0x1
    80007150:	e40080e7          	jalr	-448(ra) # 80007f8c <acquire>
    80007154:	02048c63          	beqz	s1,8000718c <consoleintr+0x68>
    80007158:	0a092783          	lw	a5,160(s2)
    8000715c:	09892703          	lw	a4,152(s2)
    80007160:	07f00693          	li	a3,127
    80007164:	40e7873b          	subw	a4,a5,a4
    80007168:	02e6e263          	bltu	a3,a4,8000718c <consoleintr+0x68>
    8000716c:	00d00713          	li	a4,13
    80007170:	04e48063          	beq	s1,a4,800071b0 <consoleintr+0x8c>
    80007174:	07f7f713          	andi	a4,a5,127
    80007178:	00e90733          	add	a4,s2,a4
    8000717c:	0017879b          	addiw	a5,a5,1
    80007180:	0af92023          	sw	a5,160(s2)
    80007184:	00970c23          	sb	s1,24(a4)
    80007188:	08f92e23          	sw	a5,156(s2)
    8000718c:	01013403          	ld	s0,16(sp)
    80007190:	01813083          	ld	ra,24(sp)
    80007194:	00813483          	ld	s1,8(sp)
    80007198:	00013903          	ld	s2,0(sp)
    8000719c:	00006517          	auipc	a0,0x6
    800071a0:	b9c50513          	addi	a0,a0,-1124 # 8000cd38 <cons>
    800071a4:	02010113          	addi	sp,sp,32
    800071a8:	00001317          	auipc	t1,0x1
    800071ac:	eb030067          	jr	-336(t1) # 80008058 <release>
    800071b0:	00a00493          	li	s1,10
    800071b4:	fc1ff06f          	j	80007174 <consoleintr+0x50>

00000000800071b8 <consoleinit>:
    800071b8:	fe010113          	addi	sp,sp,-32
    800071bc:	00113c23          	sd	ra,24(sp)
    800071c0:	00813823          	sd	s0,16(sp)
    800071c4:	00913423          	sd	s1,8(sp)
    800071c8:	02010413          	addi	s0,sp,32
    800071cc:	00006497          	auipc	s1,0x6
    800071d0:	b6c48493          	addi	s1,s1,-1172 # 8000cd38 <cons>
    800071d4:	00048513          	mv	a0,s1
    800071d8:	00002597          	auipc	a1,0x2
    800071dc:	4c058593          	addi	a1,a1,1216 # 80009698 <_ZL6digits+0x168>
    800071e0:	00001097          	auipc	ra,0x1
    800071e4:	d88080e7          	jalr	-632(ra) # 80007f68 <initlock>
    800071e8:	00000097          	auipc	ra,0x0
    800071ec:	7ac080e7          	jalr	1964(ra) # 80007994 <uartinit>
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	01013403          	ld	s0,16(sp)
    800071f8:	00000797          	auipc	a5,0x0
    800071fc:	d9c78793          	addi	a5,a5,-612 # 80006f94 <consoleread>
    80007200:	0af4bc23          	sd	a5,184(s1)
    80007204:	00000797          	auipc	a5,0x0
    80007208:	cec78793          	addi	a5,a5,-788 # 80006ef0 <consolewrite>
    8000720c:	0cf4b023          	sd	a5,192(s1)
    80007210:	00813483          	ld	s1,8(sp)
    80007214:	02010113          	addi	sp,sp,32
    80007218:	00008067          	ret

000000008000721c <console_read>:
    8000721c:	ff010113          	addi	sp,sp,-16
    80007220:	00813423          	sd	s0,8(sp)
    80007224:	01010413          	addi	s0,sp,16
    80007228:	00813403          	ld	s0,8(sp)
    8000722c:	00006317          	auipc	t1,0x6
    80007230:	bc433303          	ld	t1,-1084(t1) # 8000cdf0 <devsw+0x10>
    80007234:	01010113          	addi	sp,sp,16
    80007238:	00030067          	jr	t1

000000008000723c <console_write>:
    8000723c:	ff010113          	addi	sp,sp,-16
    80007240:	00813423          	sd	s0,8(sp)
    80007244:	01010413          	addi	s0,sp,16
    80007248:	00813403          	ld	s0,8(sp)
    8000724c:	00006317          	auipc	t1,0x6
    80007250:	bac33303          	ld	t1,-1108(t1) # 8000cdf8 <devsw+0x18>
    80007254:	01010113          	addi	sp,sp,16
    80007258:	00030067          	jr	t1

000000008000725c <panic>:
    8000725c:	fe010113          	addi	sp,sp,-32
    80007260:	00113c23          	sd	ra,24(sp)
    80007264:	00813823          	sd	s0,16(sp)
    80007268:	00913423          	sd	s1,8(sp)
    8000726c:	02010413          	addi	s0,sp,32
    80007270:	00050493          	mv	s1,a0
    80007274:	00002517          	auipc	a0,0x2
    80007278:	42c50513          	addi	a0,a0,1068 # 800096a0 <_ZL6digits+0x170>
    8000727c:	00006797          	auipc	a5,0x6
    80007280:	c007ae23          	sw	zero,-996(a5) # 8000ce98 <pr+0x18>
    80007284:	00000097          	auipc	ra,0x0
    80007288:	034080e7          	jalr	52(ra) # 800072b8 <__printf>
    8000728c:	00048513          	mv	a0,s1
    80007290:	00000097          	auipc	ra,0x0
    80007294:	028080e7          	jalr	40(ra) # 800072b8 <__printf>
    80007298:	00002517          	auipc	a0,0x2
    8000729c:	e6850513          	addi	a0,a0,-408 # 80009100 <CONSOLE_STATUS+0xf0>
    800072a0:	00000097          	auipc	ra,0x0
    800072a4:	018080e7          	jalr	24(ra) # 800072b8 <__printf>
    800072a8:	00100793          	li	a5,1
    800072ac:	00005717          	auipc	a4,0x5
    800072b0:	8af72623          	sw	a5,-1876(a4) # 8000bb58 <panicked>
    800072b4:	0000006f          	j	800072b4 <panic+0x58>

00000000800072b8 <__printf>:
    800072b8:	f3010113          	addi	sp,sp,-208
    800072bc:	08813023          	sd	s0,128(sp)
    800072c0:	07313423          	sd	s3,104(sp)
    800072c4:	09010413          	addi	s0,sp,144
    800072c8:	05813023          	sd	s8,64(sp)
    800072cc:	08113423          	sd	ra,136(sp)
    800072d0:	06913c23          	sd	s1,120(sp)
    800072d4:	07213823          	sd	s2,112(sp)
    800072d8:	07413023          	sd	s4,96(sp)
    800072dc:	05513c23          	sd	s5,88(sp)
    800072e0:	05613823          	sd	s6,80(sp)
    800072e4:	05713423          	sd	s7,72(sp)
    800072e8:	03913c23          	sd	s9,56(sp)
    800072ec:	03a13823          	sd	s10,48(sp)
    800072f0:	03b13423          	sd	s11,40(sp)
    800072f4:	00006317          	auipc	t1,0x6
    800072f8:	b8c30313          	addi	t1,t1,-1140 # 8000ce80 <pr>
    800072fc:	01832c03          	lw	s8,24(t1)
    80007300:	00b43423          	sd	a1,8(s0)
    80007304:	00c43823          	sd	a2,16(s0)
    80007308:	00d43c23          	sd	a3,24(s0)
    8000730c:	02e43023          	sd	a4,32(s0)
    80007310:	02f43423          	sd	a5,40(s0)
    80007314:	03043823          	sd	a6,48(s0)
    80007318:	03143c23          	sd	a7,56(s0)
    8000731c:	00050993          	mv	s3,a0
    80007320:	4a0c1663          	bnez	s8,800077cc <__printf+0x514>
    80007324:	60098c63          	beqz	s3,8000793c <__printf+0x684>
    80007328:	0009c503          	lbu	a0,0(s3)
    8000732c:	00840793          	addi	a5,s0,8
    80007330:	f6f43c23          	sd	a5,-136(s0)
    80007334:	00000493          	li	s1,0
    80007338:	22050063          	beqz	a0,80007558 <__printf+0x2a0>
    8000733c:	00002a37          	lui	s4,0x2
    80007340:	00018ab7          	lui	s5,0x18
    80007344:	000f4b37          	lui	s6,0xf4
    80007348:	00989bb7          	lui	s7,0x989
    8000734c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007350:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007354:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007358:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000735c:	00148c9b          	addiw	s9,s1,1
    80007360:	02500793          	li	a5,37
    80007364:	01998933          	add	s2,s3,s9
    80007368:	38f51263          	bne	a0,a5,800076ec <__printf+0x434>
    8000736c:	00094783          	lbu	a5,0(s2)
    80007370:	00078c9b          	sext.w	s9,a5
    80007374:	1e078263          	beqz	a5,80007558 <__printf+0x2a0>
    80007378:	0024849b          	addiw	s1,s1,2
    8000737c:	07000713          	li	a4,112
    80007380:	00998933          	add	s2,s3,s1
    80007384:	38e78a63          	beq	a5,a4,80007718 <__printf+0x460>
    80007388:	20f76863          	bltu	a4,a5,80007598 <__printf+0x2e0>
    8000738c:	42a78863          	beq	a5,a0,800077bc <__printf+0x504>
    80007390:	06400713          	li	a4,100
    80007394:	40e79663          	bne	a5,a4,800077a0 <__printf+0x4e8>
    80007398:	f7843783          	ld	a5,-136(s0)
    8000739c:	0007a603          	lw	a2,0(a5)
    800073a0:	00878793          	addi	a5,a5,8
    800073a4:	f6f43c23          	sd	a5,-136(s0)
    800073a8:	42064a63          	bltz	a2,800077dc <__printf+0x524>
    800073ac:	00a00713          	li	a4,10
    800073b0:	02e677bb          	remuw	a5,a2,a4
    800073b4:	00002d97          	auipc	s11,0x2
    800073b8:	314d8d93          	addi	s11,s11,788 # 800096c8 <digits>
    800073bc:	00900593          	li	a1,9
    800073c0:	0006051b          	sext.w	a0,a2
    800073c4:	00000c93          	li	s9,0
    800073c8:	02079793          	slli	a5,a5,0x20
    800073cc:	0207d793          	srli	a5,a5,0x20
    800073d0:	00fd87b3          	add	a5,s11,a5
    800073d4:	0007c783          	lbu	a5,0(a5)
    800073d8:	02e656bb          	divuw	a3,a2,a4
    800073dc:	f8f40023          	sb	a5,-128(s0)
    800073e0:	14c5d863          	bge	a1,a2,80007530 <__printf+0x278>
    800073e4:	06300593          	li	a1,99
    800073e8:	00100c93          	li	s9,1
    800073ec:	02e6f7bb          	remuw	a5,a3,a4
    800073f0:	02079793          	slli	a5,a5,0x20
    800073f4:	0207d793          	srli	a5,a5,0x20
    800073f8:	00fd87b3          	add	a5,s11,a5
    800073fc:	0007c783          	lbu	a5,0(a5)
    80007400:	02e6d73b          	divuw	a4,a3,a4
    80007404:	f8f400a3          	sb	a5,-127(s0)
    80007408:	12a5f463          	bgeu	a1,a0,80007530 <__printf+0x278>
    8000740c:	00a00693          	li	a3,10
    80007410:	00900593          	li	a1,9
    80007414:	02d777bb          	remuw	a5,a4,a3
    80007418:	02079793          	slli	a5,a5,0x20
    8000741c:	0207d793          	srli	a5,a5,0x20
    80007420:	00fd87b3          	add	a5,s11,a5
    80007424:	0007c503          	lbu	a0,0(a5)
    80007428:	02d757bb          	divuw	a5,a4,a3
    8000742c:	f8a40123          	sb	a0,-126(s0)
    80007430:	48e5f263          	bgeu	a1,a4,800078b4 <__printf+0x5fc>
    80007434:	06300513          	li	a0,99
    80007438:	02d7f5bb          	remuw	a1,a5,a3
    8000743c:	02059593          	slli	a1,a1,0x20
    80007440:	0205d593          	srli	a1,a1,0x20
    80007444:	00bd85b3          	add	a1,s11,a1
    80007448:	0005c583          	lbu	a1,0(a1)
    8000744c:	02d7d7bb          	divuw	a5,a5,a3
    80007450:	f8b401a3          	sb	a1,-125(s0)
    80007454:	48e57263          	bgeu	a0,a4,800078d8 <__printf+0x620>
    80007458:	3e700513          	li	a0,999
    8000745c:	02d7f5bb          	remuw	a1,a5,a3
    80007460:	02059593          	slli	a1,a1,0x20
    80007464:	0205d593          	srli	a1,a1,0x20
    80007468:	00bd85b3          	add	a1,s11,a1
    8000746c:	0005c583          	lbu	a1,0(a1)
    80007470:	02d7d7bb          	divuw	a5,a5,a3
    80007474:	f8b40223          	sb	a1,-124(s0)
    80007478:	46e57663          	bgeu	a0,a4,800078e4 <__printf+0x62c>
    8000747c:	02d7f5bb          	remuw	a1,a5,a3
    80007480:	02059593          	slli	a1,a1,0x20
    80007484:	0205d593          	srli	a1,a1,0x20
    80007488:	00bd85b3          	add	a1,s11,a1
    8000748c:	0005c583          	lbu	a1,0(a1)
    80007490:	02d7d7bb          	divuw	a5,a5,a3
    80007494:	f8b402a3          	sb	a1,-123(s0)
    80007498:	46ea7863          	bgeu	s4,a4,80007908 <__printf+0x650>
    8000749c:	02d7f5bb          	remuw	a1,a5,a3
    800074a0:	02059593          	slli	a1,a1,0x20
    800074a4:	0205d593          	srli	a1,a1,0x20
    800074a8:	00bd85b3          	add	a1,s11,a1
    800074ac:	0005c583          	lbu	a1,0(a1)
    800074b0:	02d7d7bb          	divuw	a5,a5,a3
    800074b4:	f8b40323          	sb	a1,-122(s0)
    800074b8:	3eeaf863          	bgeu	s5,a4,800078a8 <__printf+0x5f0>
    800074bc:	02d7f5bb          	remuw	a1,a5,a3
    800074c0:	02059593          	slli	a1,a1,0x20
    800074c4:	0205d593          	srli	a1,a1,0x20
    800074c8:	00bd85b3          	add	a1,s11,a1
    800074cc:	0005c583          	lbu	a1,0(a1)
    800074d0:	02d7d7bb          	divuw	a5,a5,a3
    800074d4:	f8b403a3          	sb	a1,-121(s0)
    800074d8:	42eb7e63          	bgeu	s6,a4,80007914 <__printf+0x65c>
    800074dc:	02d7f5bb          	remuw	a1,a5,a3
    800074e0:	02059593          	slli	a1,a1,0x20
    800074e4:	0205d593          	srli	a1,a1,0x20
    800074e8:	00bd85b3          	add	a1,s11,a1
    800074ec:	0005c583          	lbu	a1,0(a1)
    800074f0:	02d7d7bb          	divuw	a5,a5,a3
    800074f4:	f8b40423          	sb	a1,-120(s0)
    800074f8:	42ebfc63          	bgeu	s7,a4,80007930 <__printf+0x678>
    800074fc:	02079793          	slli	a5,a5,0x20
    80007500:	0207d793          	srli	a5,a5,0x20
    80007504:	00fd8db3          	add	s11,s11,a5
    80007508:	000dc703          	lbu	a4,0(s11)
    8000750c:	00a00793          	li	a5,10
    80007510:	00900c93          	li	s9,9
    80007514:	f8e404a3          	sb	a4,-119(s0)
    80007518:	00065c63          	bgez	a2,80007530 <__printf+0x278>
    8000751c:	f9040713          	addi	a4,s0,-112
    80007520:	00f70733          	add	a4,a4,a5
    80007524:	02d00693          	li	a3,45
    80007528:	fed70823          	sb	a3,-16(a4)
    8000752c:	00078c93          	mv	s9,a5
    80007530:	f8040793          	addi	a5,s0,-128
    80007534:	01978cb3          	add	s9,a5,s9
    80007538:	f7f40d13          	addi	s10,s0,-129
    8000753c:	000cc503          	lbu	a0,0(s9)
    80007540:	fffc8c93          	addi	s9,s9,-1
    80007544:	00000097          	auipc	ra,0x0
    80007548:	b90080e7          	jalr	-1136(ra) # 800070d4 <consputc>
    8000754c:	ffac98e3          	bne	s9,s10,8000753c <__printf+0x284>
    80007550:	00094503          	lbu	a0,0(s2)
    80007554:	e00514e3          	bnez	a0,8000735c <__printf+0xa4>
    80007558:	1a0c1663          	bnez	s8,80007704 <__printf+0x44c>
    8000755c:	08813083          	ld	ra,136(sp)
    80007560:	08013403          	ld	s0,128(sp)
    80007564:	07813483          	ld	s1,120(sp)
    80007568:	07013903          	ld	s2,112(sp)
    8000756c:	06813983          	ld	s3,104(sp)
    80007570:	06013a03          	ld	s4,96(sp)
    80007574:	05813a83          	ld	s5,88(sp)
    80007578:	05013b03          	ld	s6,80(sp)
    8000757c:	04813b83          	ld	s7,72(sp)
    80007580:	04013c03          	ld	s8,64(sp)
    80007584:	03813c83          	ld	s9,56(sp)
    80007588:	03013d03          	ld	s10,48(sp)
    8000758c:	02813d83          	ld	s11,40(sp)
    80007590:	0d010113          	addi	sp,sp,208
    80007594:	00008067          	ret
    80007598:	07300713          	li	a4,115
    8000759c:	1ce78a63          	beq	a5,a4,80007770 <__printf+0x4b8>
    800075a0:	07800713          	li	a4,120
    800075a4:	1ee79e63          	bne	a5,a4,800077a0 <__printf+0x4e8>
    800075a8:	f7843783          	ld	a5,-136(s0)
    800075ac:	0007a703          	lw	a4,0(a5)
    800075b0:	00878793          	addi	a5,a5,8
    800075b4:	f6f43c23          	sd	a5,-136(s0)
    800075b8:	28074263          	bltz	a4,8000783c <__printf+0x584>
    800075bc:	00002d97          	auipc	s11,0x2
    800075c0:	10cd8d93          	addi	s11,s11,268 # 800096c8 <digits>
    800075c4:	00f77793          	andi	a5,a4,15
    800075c8:	00fd87b3          	add	a5,s11,a5
    800075cc:	0007c683          	lbu	a3,0(a5)
    800075d0:	00f00613          	li	a2,15
    800075d4:	0007079b          	sext.w	a5,a4
    800075d8:	f8d40023          	sb	a3,-128(s0)
    800075dc:	0047559b          	srliw	a1,a4,0x4
    800075e0:	0047569b          	srliw	a3,a4,0x4
    800075e4:	00000c93          	li	s9,0
    800075e8:	0ee65063          	bge	a2,a4,800076c8 <__printf+0x410>
    800075ec:	00f6f693          	andi	a3,a3,15
    800075f0:	00dd86b3          	add	a3,s11,a3
    800075f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800075f8:	0087d79b          	srliw	a5,a5,0x8
    800075fc:	00100c93          	li	s9,1
    80007600:	f8d400a3          	sb	a3,-127(s0)
    80007604:	0cb67263          	bgeu	a2,a1,800076c8 <__printf+0x410>
    80007608:	00f7f693          	andi	a3,a5,15
    8000760c:	00dd86b3          	add	a3,s11,a3
    80007610:	0006c583          	lbu	a1,0(a3)
    80007614:	00f00613          	li	a2,15
    80007618:	0047d69b          	srliw	a3,a5,0x4
    8000761c:	f8b40123          	sb	a1,-126(s0)
    80007620:	0047d593          	srli	a1,a5,0x4
    80007624:	28f67e63          	bgeu	a2,a5,800078c0 <__printf+0x608>
    80007628:	00f6f693          	andi	a3,a3,15
    8000762c:	00dd86b3          	add	a3,s11,a3
    80007630:	0006c503          	lbu	a0,0(a3)
    80007634:	0087d813          	srli	a6,a5,0x8
    80007638:	0087d69b          	srliw	a3,a5,0x8
    8000763c:	f8a401a3          	sb	a0,-125(s0)
    80007640:	28b67663          	bgeu	a2,a1,800078cc <__printf+0x614>
    80007644:	00f6f693          	andi	a3,a3,15
    80007648:	00dd86b3          	add	a3,s11,a3
    8000764c:	0006c583          	lbu	a1,0(a3)
    80007650:	00c7d513          	srli	a0,a5,0xc
    80007654:	00c7d69b          	srliw	a3,a5,0xc
    80007658:	f8b40223          	sb	a1,-124(s0)
    8000765c:	29067a63          	bgeu	a2,a6,800078f0 <__printf+0x638>
    80007660:	00f6f693          	andi	a3,a3,15
    80007664:	00dd86b3          	add	a3,s11,a3
    80007668:	0006c583          	lbu	a1,0(a3)
    8000766c:	0107d813          	srli	a6,a5,0x10
    80007670:	0107d69b          	srliw	a3,a5,0x10
    80007674:	f8b402a3          	sb	a1,-123(s0)
    80007678:	28a67263          	bgeu	a2,a0,800078fc <__printf+0x644>
    8000767c:	00f6f693          	andi	a3,a3,15
    80007680:	00dd86b3          	add	a3,s11,a3
    80007684:	0006c683          	lbu	a3,0(a3)
    80007688:	0147d79b          	srliw	a5,a5,0x14
    8000768c:	f8d40323          	sb	a3,-122(s0)
    80007690:	21067663          	bgeu	a2,a6,8000789c <__printf+0x5e4>
    80007694:	02079793          	slli	a5,a5,0x20
    80007698:	0207d793          	srli	a5,a5,0x20
    8000769c:	00fd8db3          	add	s11,s11,a5
    800076a0:	000dc683          	lbu	a3,0(s11)
    800076a4:	00800793          	li	a5,8
    800076a8:	00700c93          	li	s9,7
    800076ac:	f8d403a3          	sb	a3,-121(s0)
    800076b0:	00075c63          	bgez	a4,800076c8 <__printf+0x410>
    800076b4:	f9040713          	addi	a4,s0,-112
    800076b8:	00f70733          	add	a4,a4,a5
    800076bc:	02d00693          	li	a3,45
    800076c0:	fed70823          	sb	a3,-16(a4)
    800076c4:	00078c93          	mv	s9,a5
    800076c8:	f8040793          	addi	a5,s0,-128
    800076cc:	01978cb3          	add	s9,a5,s9
    800076d0:	f7f40d13          	addi	s10,s0,-129
    800076d4:	000cc503          	lbu	a0,0(s9)
    800076d8:	fffc8c93          	addi	s9,s9,-1
    800076dc:	00000097          	auipc	ra,0x0
    800076e0:	9f8080e7          	jalr	-1544(ra) # 800070d4 <consputc>
    800076e4:	ff9d18e3          	bne	s10,s9,800076d4 <__printf+0x41c>
    800076e8:	0100006f          	j	800076f8 <__printf+0x440>
    800076ec:	00000097          	auipc	ra,0x0
    800076f0:	9e8080e7          	jalr	-1560(ra) # 800070d4 <consputc>
    800076f4:	000c8493          	mv	s1,s9
    800076f8:	00094503          	lbu	a0,0(s2)
    800076fc:	c60510e3          	bnez	a0,8000735c <__printf+0xa4>
    80007700:	e40c0ee3          	beqz	s8,8000755c <__printf+0x2a4>
    80007704:	00005517          	auipc	a0,0x5
    80007708:	77c50513          	addi	a0,a0,1916 # 8000ce80 <pr>
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	94c080e7          	jalr	-1716(ra) # 80008058 <release>
    80007714:	e49ff06f          	j	8000755c <__printf+0x2a4>
    80007718:	f7843783          	ld	a5,-136(s0)
    8000771c:	03000513          	li	a0,48
    80007720:	01000d13          	li	s10,16
    80007724:	00878713          	addi	a4,a5,8
    80007728:	0007bc83          	ld	s9,0(a5)
    8000772c:	f6e43c23          	sd	a4,-136(s0)
    80007730:	00000097          	auipc	ra,0x0
    80007734:	9a4080e7          	jalr	-1628(ra) # 800070d4 <consputc>
    80007738:	07800513          	li	a0,120
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	998080e7          	jalr	-1640(ra) # 800070d4 <consputc>
    80007744:	00002d97          	auipc	s11,0x2
    80007748:	f84d8d93          	addi	s11,s11,-124 # 800096c8 <digits>
    8000774c:	03ccd793          	srli	a5,s9,0x3c
    80007750:	00fd87b3          	add	a5,s11,a5
    80007754:	0007c503          	lbu	a0,0(a5)
    80007758:	fffd0d1b          	addiw	s10,s10,-1
    8000775c:	004c9c93          	slli	s9,s9,0x4
    80007760:	00000097          	auipc	ra,0x0
    80007764:	974080e7          	jalr	-1676(ra) # 800070d4 <consputc>
    80007768:	fe0d12e3          	bnez	s10,8000774c <__printf+0x494>
    8000776c:	f8dff06f          	j	800076f8 <__printf+0x440>
    80007770:	f7843783          	ld	a5,-136(s0)
    80007774:	0007bc83          	ld	s9,0(a5)
    80007778:	00878793          	addi	a5,a5,8
    8000777c:	f6f43c23          	sd	a5,-136(s0)
    80007780:	000c9a63          	bnez	s9,80007794 <__printf+0x4dc>
    80007784:	1080006f          	j	8000788c <__printf+0x5d4>
    80007788:	001c8c93          	addi	s9,s9,1
    8000778c:	00000097          	auipc	ra,0x0
    80007790:	948080e7          	jalr	-1720(ra) # 800070d4 <consputc>
    80007794:	000cc503          	lbu	a0,0(s9)
    80007798:	fe0518e3          	bnez	a0,80007788 <__printf+0x4d0>
    8000779c:	f5dff06f          	j	800076f8 <__printf+0x440>
    800077a0:	02500513          	li	a0,37
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	930080e7          	jalr	-1744(ra) # 800070d4 <consputc>
    800077ac:	000c8513          	mv	a0,s9
    800077b0:	00000097          	auipc	ra,0x0
    800077b4:	924080e7          	jalr	-1756(ra) # 800070d4 <consputc>
    800077b8:	f41ff06f          	j	800076f8 <__printf+0x440>
    800077bc:	02500513          	li	a0,37
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	914080e7          	jalr	-1772(ra) # 800070d4 <consputc>
    800077c8:	f31ff06f          	j	800076f8 <__printf+0x440>
    800077cc:	00030513          	mv	a0,t1
    800077d0:	00000097          	auipc	ra,0x0
    800077d4:	7bc080e7          	jalr	1980(ra) # 80007f8c <acquire>
    800077d8:	b4dff06f          	j	80007324 <__printf+0x6c>
    800077dc:	40c0053b          	negw	a0,a2
    800077e0:	00a00713          	li	a4,10
    800077e4:	02e576bb          	remuw	a3,a0,a4
    800077e8:	00002d97          	auipc	s11,0x2
    800077ec:	ee0d8d93          	addi	s11,s11,-288 # 800096c8 <digits>
    800077f0:	ff700593          	li	a1,-9
    800077f4:	02069693          	slli	a3,a3,0x20
    800077f8:	0206d693          	srli	a3,a3,0x20
    800077fc:	00dd86b3          	add	a3,s11,a3
    80007800:	0006c683          	lbu	a3,0(a3)
    80007804:	02e557bb          	divuw	a5,a0,a4
    80007808:	f8d40023          	sb	a3,-128(s0)
    8000780c:	10b65e63          	bge	a2,a1,80007928 <__printf+0x670>
    80007810:	06300593          	li	a1,99
    80007814:	02e7f6bb          	remuw	a3,a5,a4
    80007818:	02069693          	slli	a3,a3,0x20
    8000781c:	0206d693          	srli	a3,a3,0x20
    80007820:	00dd86b3          	add	a3,s11,a3
    80007824:	0006c683          	lbu	a3,0(a3)
    80007828:	02e7d73b          	divuw	a4,a5,a4
    8000782c:	00200793          	li	a5,2
    80007830:	f8d400a3          	sb	a3,-127(s0)
    80007834:	bca5ece3          	bltu	a1,a0,8000740c <__printf+0x154>
    80007838:	ce5ff06f          	j	8000751c <__printf+0x264>
    8000783c:	40e007bb          	negw	a5,a4
    80007840:	00002d97          	auipc	s11,0x2
    80007844:	e88d8d93          	addi	s11,s11,-376 # 800096c8 <digits>
    80007848:	00f7f693          	andi	a3,a5,15
    8000784c:	00dd86b3          	add	a3,s11,a3
    80007850:	0006c583          	lbu	a1,0(a3)
    80007854:	ff100613          	li	a2,-15
    80007858:	0047d69b          	srliw	a3,a5,0x4
    8000785c:	f8b40023          	sb	a1,-128(s0)
    80007860:	0047d59b          	srliw	a1,a5,0x4
    80007864:	0ac75e63          	bge	a4,a2,80007920 <__printf+0x668>
    80007868:	00f6f693          	andi	a3,a3,15
    8000786c:	00dd86b3          	add	a3,s11,a3
    80007870:	0006c603          	lbu	a2,0(a3)
    80007874:	00f00693          	li	a3,15
    80007878:	0087d79b          	srliw	a5,a5,0x8
    8000787c:	f8c400a3          	sb	a2,-127(s0)
    80007880:	d8b6e4e3          	bltu	a3,a1,80007608 <__printf+0x350>
    80007884:	00200793          	li	a5,2
    80007888:	e2dff06f          	j	800076b4 <__printf+0x3fc>
    8000788c:	00002c97          	auipc	s9,0x2
    80007890:	e1cc8c93          	addi	s9,s9,-484 # 800096a8 <_ZL6digits+0x178>
    80007894:	02800513          	li	a0,40
    80007898:	ef1ff06f          	j	80007788 <__printf+0x4d0>
    8000789c:	00700793          	li	a5,7
    800078a0:	00600c93          	li	s9,6
    800078a4:	e0dff06f          	j	800076b0 <__printf+0x3f8>
    800078a8:	00700793          	li	a5,7
    800078ac:	00600c93          	li	s9,6
    800078b0:	c69ff06f          	j	80007518 <__printf+0x260>
    800078b4:	00300793          	li	a5,3
    800078b8:	00200c93          	li	s9,2
    800078bc:	c5dff06f          	j	80007518 <__printf+0x260>
    800078c0:	00300793          	li	a5,3
    800078c4:	00200c93          	li	s9,2
    800078c8:	de9ff06f          	j	800076b0 <__printf+0x3f8>
    800078cc:	00400793          	li	a5,4
    800078d0:	00300c93          	li	s9,3
    800078d4:	dddff06f          	j	800076b0 <__printf+0x3f8>
    800078d8:	00400793          	li	a5,4
    800078dc:	00300c93          	li	s9,3
    800078e0:	c39ff06f          	j	80007518 <__printf+0x260>
    800078e4:	00500793          	li	a5,5
    800078e8:	00400c93          	li	s9,4
    800078ec:	c2dff06f          	j	80007518 <__printf+0x260>
    800078f0:	00500793          	li	a5,5
    800078f4:	00400c93          	li	s9,4
    800078f8:	db9ff06f          	j	800076b0 <__printf+0x3f8>
    800078fc:	00600793          	li	a5,6
    80007900:	00500c93          	li	s9,5
    80007904:	dadff06f          	j	800076b0 <__printf+0x3f8>
    80007908:	00600793          	li	a5,6
    8000790c:	00500c93          	li	s9,5
    80007910:	c09ff06f          	j	80007518 <__printf+0x260>
    80007914:	00800793          	li	a5,8
    80007918:	00700c93          	li	s9,7
    8000791c:	bfdff06f          	j	80007518 <__printf+0x260>
    80007920:	00100793          	li	a5,1
    80007924:	d91ff06f          	j	800076b4 <__printf+0x3fc>
    80007928:	00100793          	li	a5,1
    8000792c:	bf1ff06f          	j	8000751c <__printf+0x264>
    80007930:	00900793          	li	a5,9
    80007934:	00800c93          	li	s9,8
    80007938:	be1ff06f          	j	80007518 <__printf+0x260>
    8000793c:	00002517          	auipc	a0,0x2
    80007940:	d7450513          	addi	a0,a0,-652 # 800096b0 <_ZL6digits+0x180>
    80007944:	00000097          	auipc	ra,0x0
    80007948:	918080e7          	jalr	-1768(ra) # 8000725c <panic>

000000008000794c <printfinit>:
    8000794c:	fe010113          	addi	sp,sp,-32
    80007950:	00813823          	sd	s0,16(sp)
    80007954:	00913423          	sd	s1,8(sp)
    80007958:	00113c23          	sd	ra,24(sp)
    8000795c:	02010413          	addi	s0,sp,32
    80007960:	00005497          	auipc	s1,0x5
    80007964:	52048493          	addi	s1,s1,1312 # 8000ce80 <pr>
    80007968:	00048513          	mv	a0,s1
    8000796c:	00002597          	auipc	a1,0x2
    80007970:	d5458593          	addi	a1,a1,-684 # 800096c0 <_ZL6digits+0x190>
    80007974:	00000097          	auipc	ra,0x0
    80007978:	5f4080e7          	jalr	1524(ra) # 80007f68 <initlock>
    8000797c:	01813083          	ld	ra,24(sp)
    80007980:	01013403          	ld	s0,16(sp)
    80007984:	0004ac23          	sw	zero,24(s1)
    80007988:	00813483          	ld	s1,8(sp)
    8000798c:	02010113          	addi	sp,sp,32
    80007990:	00008067          	ret

0000000080007994 <uartinit>:
    80007994:	ff010113          	addi	sp,sp,-16
    80007998:	00813423          	sd	s0,8(sp)
    8000799c:	01010413          	addi	s0,sp,16
    800079a0:	100007b7          	lui	a5,0x10000
    800079a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800079a8:	f8000713          	li	a4,-128
    800079ac:	00e781a3          	sb	a4,3(a5)
    800079b0:	00300713          	li	a4,3
    800079b4:	00e78023          	sb	a4,0(a5)
    800079b8:	000780a3          	sb	zero,1(a5)
    800079bc:	00e781a3          	sb	a4,3(a5)
    800079c0:	00700693          	li	a3,7
    800079c4:	00d78123          	sb	a3,2(a5)
    800079c8:	00e780a3          	sb	a4,1(a5)
    800079cc:	00813403          	ld	s0,8(sp)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret

00000000800079d8 <uartputc>:
    800079d8:	00004797          	auipc	a5,0x4
    800079dc:	1807a783          	lw	a5,384(a5) # 8000bb58 <panicked>
    800079e0:	00078463          	beqz	a5,800079e8 <uartputc+0x10>
    800079e4:	0000006f          	j	800079e4 <uartputc+0xc>
    800079e8:	fd010113          	addi	sp,sp,-48
    800079ec:	02813023          	sd	s0,32(sp)
    800079f0:	00913c23          	sd	s1,24(sp)
    800079f4:	01213823          	sd	s2,16(sp)
    800079f8:	01313423          	sd	s3,8(sp)
    800079fc:	02113423          	sd	ra,40(sp)
    80007a00:	03010413          	addi	s0,sp,48
    80007a04:	00004917          	auipc	s2,0x4
    80007a08:	15c90913          	addi	s2,s2,348 # 8000bb60 <uart_tx_r>
    80007a0c:	00093783          	ld	a5,0(s2)
    80007a10:	00004497          	auipc	s1,0x4
    80007a14:	15848493          	addi	s1,s1,344 # 8000bb68 <uart_tx_w>
    80007a18:	0004b703          	ld	a4,0(s1)
    80007a1c:	02078693          	addi	a3,a5,32
    80007a20:	00050993          	mv	s3,a0
    80007a24:	02e69c63          	bne	a3,a4,80007a5c <uartputc+0x84>
    80007a28:	00001097          	auipc	ra,0x1
    80007a2c:	834080e7          	jalr	-1996(ra) # 8000825c <push_on>
    80007a30:	00093783          	ld	a5,0(s2)
    80007a34:	0004b703          	ld	a4,0(s1)
    80007a38:	02078793          	addi	a5,a5,32
    80007a3c:	00e79463          	bne	a5,a4,80007a44 <uartputc+0x6c>
    80007a40:	0000006f          	j	80007a40 <uartputc+0x68>
    80007a44:	00001097          	auipc	ra,0x1
    80007a48:	88c080e7          	jalr	-1908(ra) # 800082d0 <pop_on>
    80007a4c:	00093783          	ld	a5,0(s2)
    80007a50:	0004b703          	ld	a4,0(s1)
    80007a54:	02078693          	addi	a3,a5,32
    80007a58:	fce688e3          	beq	a3,a4,80007a28 <uartputc+0x50>
    80007a5c:	01f77693          	andi	a3,a4,31
    80007a60:	00005597          	auipc	a1,0x5
    80007a64:	44058593          	addi	a1,a1,1088 # 8000cea0 <uart_tx_buf>
    80007a68:	00d586b3          	add	a3,a1,a3
    80007a6c:	00170713          	addi	a4,a4,1
    80007a70:	01368023          	sb	s3,0(a3)
    80007a74:	00e4b023          	sd	a4,0(s1)
    80007a78:	10000637          	lui	a2,0x10000
    80007a7c:	02f71063          	bne	a4,a5,80007a9c <uartputc+0xc4>
    80007a80:	0340006f          	j	80007ab4 <uartputc+0xdc>
    80007a84:	00074703          	lbu	a4,0(a4)
    80007a88:	00f93023          	sd	a5,0(s2)
    80007a8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007a90:	00093783          	ld	a5,0(s2)
    80007a94:	0004b703          	ld	a4,0(s1)
    80007a98:	00f70e63          	beq	a4,a5,80007ab4 <uartputc+0xdc>
    80007a9c:	00564683          	lbu	a3,5(a2)
    80007aa0:	01f7f713          	andi	a4,a5,31
    80007aa4:	00e58733          	add	a4,a1,a4
    80007aa8:	0206f693          	andi	a3,a3,32
    80007aac:	00178793          	addi	a5,a5,1
    80007ab0:	fc069ae3          	bnez	a3,80007a84 <uartputc+0xac>
    80007ab4:	02813083          	ld	ra,40(sp)
    80007ab8:	02013403          	ld	s0,32(sp)
    80007abc:	01813483          	ld	s1,24(sp)
    80007ac0:	01013903          	ld	s2,16(sp)
    80007ac4:	00813983          	ld	s3,8(sp)
    80007ac8:	03010113          	addi	sp,sp,48
    80007acc:	00008067          	ret

0000000080007ad0 <uartputc_sync>:
    80007ad0:	ff010113          	addi	sp,sp,-16
    80007ad4:	00813423          	sd	s0,8(sp)
    80007ad8:	01010413          	addi	s0,sp,16
    80007adc:	00004717          	auipc	a4,0x4
    80007ae0:	07c72703          	lw	a4,124(a4) # 8000bb58 <panicked>
    80007ae4:	02071663          	bnez	a4,80007b10 <uartputc_sync+0x40>
    80007ae8:	00050793          	mv	a5,a0
    80007aec:	100006b7          	lui	a3,0x10000
    80007af0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007af4:	02077713          	andi	a4,a4,32
    80007af8:	fe070ce3          	beqz	a4,80007af0 <uartputc_sync+0x20>
    80007afc:	0ff7f793          	andi	a5,a5,255
    80007b00:	00f68023          	sb	a5,0(a3)
    80007b04:	00813403          	ld	s0,8(sp)
    80007b08:	01010113          	addi	sp,sp,16
    80007b0c:	00008067          	ret
    80007b10:	0000006f          	j	80007b10 <uartputc_sync+0x40>

0000000080007b14 <uartstart>:
    80007b14:	ff010113          	addi	sp,sp,-16
    80007b18:	00813423          	sd	s0,8(sp)
    80007b1c:	01010413          	addi	s0,sp,16
    80007b20:	00004617          	auipc	a2,0x4
    80007b24:	04060613          	addi	a2,a2,64 # 8000bb60 <uart_tx_r>
    80007b28:	00004517          	auipc	a0,0x4
    80007b2c:	04050513          	addi	a0,a0,64 # 8000bb68 <uart_tx_w>
    80007b30:	00063783          	ld	a5,0(a2)
    80007b34:	00053703          	ld	a4,0(a0)
    80007b38:	04f70263          	beq	a4,a5,80007b7c <uartstart+0x68>
    80007b3c:	100005b7          	lui	a1,0x10000
    80007b40:	00005817          	auipc	a6,0x5
    80007b44:	36080813          	addi	a6,a6,864 # 8000cea0 <uart_tx_buf>
    80007b48:	01c0006f          	j	80007b64 <uartstart+0x50>
    80007b4c:	0006c703          	lbu	a4,0(a3)
    80007b50:	00f63023          	sd	a5,0(a2)
    80007b54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b58:	00063783          	ld	a5,0(a2)
    80007b5c:	00053703          	ld	a4,0(a0)
    80007b60:	00f70e63          	beq	a4,a5,80007b7c <uartstart+0x68>
    80007b64:	01f7f713          	andi	a4,a5,31
    80007b68:	00e806b3          	add	a3,a6,a4
    80007b6c:	0055c703          	lbu	a4,5(a1)
    80007b70:	00178793          	addi	a5,a5,1
    80007b74:	02077713          	andi	a4,a4,32
    80007b78:	fc071ae3          	bnez	a4,80007b4c <uartstart+0x38>
    80007b7c:	00813403          	ld	s0,8(sp)
    80007b80:	01010113          	addi	sp,sp,16
    80007b84:	00008067          	ret

0000000080007b88 <uartgetc>:
    80007b88:	ff010113          	addi	sp,sp,-16
    80007b8c:	00813423          	sd	s0,8(sp)
    80007b90:	01010413          	addi	s0,sp,16
    80007b94:	10000737          	lui	a4,0x10000
    80007b98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007b9c:	0017f793          	andi	a5,a5,1
    80007ba0:	00078c63          	beqz	a5,80007bb8 <uartgetc+0x30>
    80007ba4:	00074503          	lbu	a0,0(a4)
    80007ba8:	0ff57513          	andi	a0,a0,255
    80007bac:	00813403          	ld	s0,8(sp)
    80007bb0:	01010113          	addi	sp,sp,16
    80007bb4:	00008067          	ret
    80007bb8:	fff00513          	li	a0,-1
    80007bbc:	ff1ff06f          	j	80007bac <uartgetc+0x24>

0000000080007bc0 <uartintr>:
    80007bc0:	100007b7          	lui	a5,0x10000
    80007bc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007bc8:	0017f793          	andi	a5,a5,1
    80007bcc:	0a078463          	beqz	a5,80007c74 <uartintr+0xb4>
    80007bd0:	fe010113          	addi	sp,sp,-32
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	00113c23          	sd	ra,24(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	100004b7          	lui	s1,0x10000
    80007be8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007bec:	0ff57513          	andi	a0,a0,255
    80007bf0:	fffff097          	auipc	ra,0xfffff
    80007bf4:	534080e7          	jalr	1332(ra) # 80007124 <consoleintr>
    80007bf8:	0054c783          	lbu	a5,5(s1)
    80007bfc:	0017f793          	andi	a5,a5,1
    80007c00:	fe0794e3          	bnez	a5,80007be8 <uartintr+0x28>
    80007c04:	00004617          	auipc	a2,0x4
    80007c08:	f5c60613          	addi	a2,a2,-164 # 8000bb60 <uart_tx_r>
    80007c0c:	00004517          	auipc	a0,0x4
    80007c10:	f5c50513          	addi	a0,a0,-164 # 8000bb68 <uart_tx_w>
    80007c14:	00063783          	ld	a5,0(a2)
    80007c18:	00053703          	ld	a4,0(a0)
    80007c1c:	04f70263          	beq	a4,a5,80007c60 <uartintr+0xa0>
    80007c20:	100005b7          	lui	a1,0x10000
    80007c24:	00005817          	auipc	a6,0x5
    80007c28:	27c80813          	addi	a6,a6,636 # 8000cea0 <uart_tx_buf>
    80007c2c:	01c0006f          	j	80007c48 <uartintr+0x88>
    80007c30:	0006c703          	lbu	a4,0(a3)
    80007c34:	00f63023          	sd	a5,0(a2)
    80007c38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c3c:	00063783          	ld	a5,0(a2)
    80007c40:	00053703          	ld	a4,0(a0)
    80007c44:	00f70e63          	beq	a4,a5,80007c60 <uartintr+0xa0>
    80007c48:	01f7f713          	andi	a4,a5,31
    80007c4c:	00e806b3          	add	a3,a6,a4
    80007c50:	0055c703          	lbu	a4,5(a1)
    80007c54:	00178793          	addi	a5,a5,1
    80007c58:	02077713          	andi	a4,a4,32
    80007c5c:	fc071ae3          	bnez	a4,80007c30 <uartintr+0x70>
    80007c60:	01813083          	ld	ra,24(sp)
    80007c64:	01013403          	ld	s0,16(sp)
    80007c68:	00813483          	ld	s1,8(sp)
    80007c6c:	02010113          	addi	sp,sp,32
    80007c70:	00008067          	ret
    80007c74:	00004617          	auipc	a2,0x4
    80007c78:	eec60613          	addi	a2,a2,-276 # 8000bb60 <uart_tx_r>
    80007c7c:	00004517          	auipc	a0,0x4
    80007c80:	eec50513          	addi	a0,a0,-276 # 8000bb68 <uart_tx_w>
    80007c84:	00063783          	ld	a5,0(a2)
    80007c88:	00053703          	ld	a4,0(a0)
    80007c8c:	04f70263          	beq	a4,a5,80007cd0 <uartintr+0x110>
    80007c90:	100005b7          	lui	a1,0x10000
    80007c94:	00005817          	auipc	a6,0x5
    80007c98:	20c80813          	addi	a6,a6,524 # 8000cea0 <uart_tx_buf>
    80007c9c:	01c0006f          	j	80007cb8 <uartintr+0xf8>
    80007ca0:	0006c703          	lbu	a4,0(a3)
    80007ca4:	00f63023          	sd	a5,0(a2)
    80007ca8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007cac:	00063783          	ld	a5,0(a2)
    80007cb0:	00053703          	ld	a4,0(a0)
    80007cb4:	02f70063          	beq	a4,a5,80007cd4 <uartintr+0x114>
    80007cb8:	01f7f713          	andi	a4,a5,31
    80007cbc:	00e806b3          	add	a3,a6,a4
    80007cc0:	0055c703          	lbu	a4,5(a1)
    80007cc4:	00178793          	addi	a5,a5,1
    80007cc8:	02077713          	andi	a4,a4,32
    80007ccc:	fc071ae3          	bnez	a4,80007ca0 <uartintr+0xe0>
    80007cd0:	00008067          	ret
    80007cd4:	00008067          	ret

0000000080007cd8 <kinit>:
    80007cd8:	fc010113          	addi	sp,sp,-64
    80007cdc:	02913423          	sd	s1,40(sp)
    80007ce0:	fffff7b7          	lui	a5,0xfffff
    80007ce4:	00006497          	auipc	s1,0x6
    80007ce8:	1db48493          	addi	s1,s1,475 # 8000debf <end+0xfff>
    80007cec:	02813823          	sd	s0,48(sp)
    80007cf0:	01313c23          	sd	s3,24(sp)
    80007cf4:	00f4f4b3          	and	s1,s1,a5
    80007cf8:	02113c23          	sd	ra,56(sp)
    80007cfc:	03213023          	sd	s2,32(sp)
    80007d00:	01413823          	sd	s4,16(sp)
    80007d04:	01513423          	sd	s5,8(sp)
    80007d08:	04010413          	addi	s0,sp,64
    80007d0c:	000017b7          	lui	a5,0x1
    80007d10:	01100993          	li	s3,17
    80007d14:	00f487b3          	add	a5,s1,a5
    80007d18:	01b99993          	slli	s3,s3,0x1b
    80007d1c:	06f9e063          	bltu	s3,a5,80007d7c <kinit+0xa4>
    80007d20:	00005a97          	auipc	s5,0x5
    80007d24:	1a0a8a93          	addi	s5,s5,416 # 8000cec0 <end>
    80007d28:	0754ec63          	bltu	s1,s5,80007da0 <kinit+0xc8>
    80007d2c:	0734fa63          	bgeu	s1,s3,80007da0 <kinit+0xc8>
    80007d30:	00088a37          	lui	s4,0x88
    80007d34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d38:	00004917          	auipc	s2,0x4
    80007d3c:	e3890913          	addi	s2,s2,-456 # 8000bb70 <kmem>
    80007d40:	00ca1a13          	slli	s4,s4,0xc
    80007d44:	0140006f          	j	80007d58 <kinit+0x80>
    80007d48:	000017b7          	lui	a5,0x1
    80007d4c:	00f484b3          	add	s1,s1,a5
    80007d50:	0554e863          	bltu	s1,s5,80007da0 <kinit+0xc8>
    80007d54:	0534f663          	bgeu	s1,s3,80007da0 <kinit+0xc8>
    80007d58:	00001637          	lui	a2,0x1
    80007d5c:	00100593          	li	a1,1
    80007d60:	00048513          	mv	a0,s1
    80007d64:	00000097          	auipc	ra,0x0
    80007d68:	5e4080e7          	jalr	1508(ra) # 80008348 <__memset>
    80007d6c:	00093783          	ld	a5,0(s2)
    80007d70:	00f4b023          	sd	a5,0(s1)
    80007d74:	00993023          	sd	s1,0(s2)
    80007d78:	fd4498e3          	bne	s1,s4,80007d48 <kinit+0x70>
    80007d7c:	03813083          	ld	ra,56(sp)
    80007d80:	03013403          	ld	s0,48(sp)
    80007d84:	02813483          	ld	s1,40(sp)
    80007d88:	02013903          	ld	s2,32(sp)
    80007d8c:	01813983          	ld	s3,24(sp)
    80007d90:	01013a03          	ld	s4,16(sp)
    80007d94:	00813a83          	ld	s5,8(sp)
    80007d98:	04010113          	addi	sp,sp,64
    80007d9c:	00008067          	ret
    80007da0:	00002517          	auipc	a0,0x2
    80007da4:	94050513          	addi	a0,a0,-1728 # 800096e0 <digits+0x18>
    80007da8:	fffff097          	auipc	ra,0xfffff
    80007dac:	4b4080e7          	jalr	1204(ra) # 8000725c <panic>

0000000080007db0 <freerange>:
    80007db0:	fc010113          	addi	sp,sp,-64
    80007db4:	000017b7          	lui	a5,0x1
    80007db8:	02913423          	sd	s1,40(sp)
    80007dbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007dc0:	009504b3          	add	s1,a0,s1
    80007dc4:	fffff537          	lui	a0,0xfffff
    80007dc8:	02813823          	sd	s0,48(sp)
    80007dcc:	02113c23          	sd	ra,56(sp)
    80007dd0:	03213023          	sd	s2,32(sp)
    80007dd4:	01313c23          	sd	s3,24(sp)
    80007dd8:	01413823          	sd	s4,16(sp)
    80007ddc:	01513423          	sd	s5,8(sp)
    80007de0:	01613023          	sd	s6,0(sp)
    80007de4:	04010413          	addi	s0,sp,64
    80007de8:	00a4f4b3          	and	s1,s1,a0
    80007dec:	00f487b3          	add	a5,s1,a5
    80007df0:	06f5e463          	bltu	a1,a5,80007e58 <freerange+0xa8>
    80007df4:	00005a97          	auipc	s5,0x5
    80007df8:	0cca8a93          	addi	s5,s5,204 # 8000cec0 <end>
    80007dfc:	0954e263          	bltu	s1,s5,80007e80 <freerange+0xd0>
    80007e00:	01100993          	li	s3,17
    80007e04:	01b99993          	slli	s3,s3,0x1b
    80007e08:	0734fc63          	bgeu	s1,s3,80007e80 <freerange+0xd0>
    80007e0c:	00058a13          	mv	s4,a1
    80007e10:	00004917          	auipc	s2,0x4
    80007e14:	d6090913          	addi	s2,s2,-672 # 8000bb70 <kmem>
    80007e18:	00002b37          	lui	s6,0x2
    80007e1c:	0140006f          	j	80007e30 <freerange+0x80>
    80007e20:	000017b7          	lui	a5,0x1
    80007e24:	00f484b3          	add	s1,s1,a5
    80007e28:	0554ec63          	bltu	s1,s5,80007e80 <freerange+0xd0>
    80007e2c:	0534fa63          	bgeu	s1,s3,80007e80 <freerange+0xd0>
    80007e30:	00001637          	lui	a2,0x1
    80007e34:	00100593          	li	a1,1
    80007e38:	00048513          	mv	a0,s1
    80007e3c:	00000097          	auipc	ra,0x0
    80007e40:	50c080e7          	jalr	1292(ra) # 80008348 <__memset>
    80007e44:	00093703          	ld	a4,0(s2)
    80007e48:	016487b3          	add	a5,s1,s6
    80007e4c:	00e4b023          	sd	a4,0(s1)
    80007e50:	00993023          	sd	s1,0(s2)
    80007e54:	fcfa76e3          	bgeu	s4,a5,80007e20 <freerange+0x70>
    80007e58:	03813083          	ld	ra,56(sp)
    80007e5c:	03013403          	ld	s0,48(sp)
    80007e60:	02813483          	ld	s1,40(sp)
    80007e64:	02013903          	ld	s2,32(sp)
    80007e68:	01813983          	ld	s3,24(sp)
    80007e6c:	01013a03          	ld	s4,16(sp)
    80007e70:	00813a83          	ld	s5,8(sp)
    80007e74:	00013b03          	ld	s6,0(sp)
    80007e78:	04010113          	addi	sp,sp,64
    80007e7c:	00008067          	ret
    80007e80:	00002517          	auipc	a0,0x2
    80007e84:	86050513          	addi	a0,a0,-1952 # 800096e0 <digits+0x18>
    80007e88:	fffff097          	auipc	ra,0xfffff
    80007e8c:	3d4080e7          	jalr	980(ra) # 8000725c <panic>

0000000080007e90 <kfree>:
    80007e90:	fe010113          	addi	sp,sp,-32
    80007e94:	00813823          	sd	s0,16(sp)
    80007e98:	00113c23          	sd	ra,24(sp)
    80007e9c:	00913423          	sd	s1,8(sp)
    80007ea0:	02010413          	addi	s0,sp,32
    80007ea4:	03451793          	slli	a5,a0,0x34
    80007ea8:	04079c63          	bnez	a5,80007f00 <kfree+0x70>
    80007eac:	00005797          	auipc	a5,0x5
    80007eb0:	01478793          	addi	a5,a5,20 # 8000cec0 <end>
    80007eb4:	00050493          	mv	s1,a0
    80007eb8:	04f56463          	bltu	a0,a5,80007f00 <kfree+0x70>
    80007ebc:	01100793          	li	a5,17
    80007ec0:	01b79793          	slli	a5,a5,0x1b
    80007ec4:	02f57e63          	bgeu	a0,a5,80007f00 <kfree+0x70>
    80007ec8:	00001637          	lui	a2,0x1
    80007ecc:	00100593          	li	a1,1
    80007ed0:	00000097          	auipc	ra,0x0
    80007ed4:	478080e7          	jalr	1144(ra) # 80008348 <__memset>
    80007ed8:	00004797          	auipc	a5,0x4
    80007edc:	c9878793          	addi	a5,a5,-872 # 8000bb70 <kmem>
    80007ee0:	0007b703          	ld	a4,0(a5)
    80007ee4:	01813083          	ld	ra,24(sp)
    80007ee8:	01013403          	ld	s0,16(sp)
    80007eec:	00e4b023          	sd	a4,0(s1)
    80007ef0:	0097b023          	sd	s1,0(a5)
    80007ef4:	00813483          	ld	s1,8(sp)
    80007ef8:	02010113          	addi	sp,sp,32
    80007efc:	00008067          	ret
    80007f00:	00001517          	auipc	a0,0x1
    80007f04:	7e050513          	addi	a0,a0,2016 # 800096e0 <digits+0x18>
    80007f08:	fffff097          	auipc	ra,0xfffff
    80007f0c:	354080e7          	jalr	852(ra) # 8000725c <panic>

0000000080007f10 <kalloc>:
    80007f10:	fe010113          	addi	sp,sp,-32
    80007f14:	00813823          	sd	s0,16(sp)
    80007f18:	00913423          	sd	s1,8(sp)
    80007f1c:	00113c23          	sd	ra,24(sp)
    80007f20:	02010413          	addi	s0,sp,32
    80007f24:	00004797          	auipc	a5,0x4
    80007f28:	c4c78793          	addi	a5,a5,-948 # 8000bb70 <kmem>
    80007f2c:	0007b483          	ld	s1,0(a5)
    80007f30:	02048063          	beqz	s1,80007f50 <kalloc+0x40>
    80007f34:	0004b703          	ld	a4,0(s1)
    80007f38:	00001637          	lui	a2,0x1
    80007f3c:	00500593          	li	a1,5
    80007f40:	00048513          	mv	a0,s1
    80007f44:	00e7b023          	sd	a4,0(a5)
    80007f48:	00000097          	auipc	ra,0x0
    80007f4c:	400080e7          	jalr	1024(ra) # 80008348 <__memset>
    80007f50:	01813083          	ld	ra,24(sp)
    80007f54:	01013403          	ld	s0,16(sp)
    80007f58:	00048513          	mv	a0,s1
    80007f5c:	00813483          	ld	s1,8(sp)
    80007f60:	02010113          	addi	sp,sp,32
    80007f64:	00008067          	ret

0000000080007f68 <initlock>:
    80007f68:	ff010113          	addi	sp,sp,-16
    80007f6c:	00813423          	sd	s0,8(sp)
    80007f70:	01010413          	addi	s0,sp,16
    80007f74:	00813403          	ld	s0,8(sp)
    80007f78:	00b53423          	sd	a1,8(a0)
    80007f7c:	00052023          	sw	zero,0(a0)
    80007f80:	00053823          	sd	zero,16(a0)
    80007f84:	01010113          	addi	sp,sp,16
    80007f88:	00008067          	ret

0000000080007f8c <acquire>:
    80007f8c:	fe010113          	addi	sp,sp,-32
    80007f90:	00813823          	sd	s0,16(sp)
    80007f94:	00913423          	sd	s1,8(sp)
    80007f98:	00113c23          	sd	ra,24(sp)
    80007f9c:	01213023          	sd	s2,0(sp)
    80007fa0:	02010413          	addi	s0,sp,32
    80007fa4:	00050493          	mv	s1,a0
    80007fa8:	10002973          	csrr	s2,sstatus
    80007fac:	100027f3          	csrr	a5,sstatus
    80007fb0:	ffd7f793          	andi	a5,a5,-3
    80007fb4:	10079073          	csrw	sstatus,a5
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	8ec080e7          	jalr	-1812(ra) # 800068a4 <mycpu>
    80007fc0:	07852783          	lw	a5,120(a0)
    80007fc4:	06078e63          	beqz	a5,80008040 <acquire+0xb4>
    80007fc8:	fffff097          	auipc	ra,0xfffff
    80007fcc:	8dc080e7          	jalr	-1828(ra) # 800068a4 <mycpu>
    80007fd0:	07852783          	lw	a5,120(a0)
    80007fd4:	0004a703          	lw	a4,0(s1)
    80007fd8:	0017879b          	addiw	a5,a5,1
    80007fdc:	06f52c23          	sw	a5,120(a0)
    80007fe0:	04071063          	bnez	a4,80008020 <acquire+0x94>
    80007fe4:	00100713          	li	a4,1
    80007fe8:	00070793          	mv	a5,a4
    80007fec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007ff0:	0007879b          	sext.w	a5,a5
    80007ff4:	fe079ae3          	bnez	a5,80007fe8 <acquire+0x5c>
    80007ff8:	0ff0000f          	fence
    80007ffc:	fffff097          	auipc	ra,0xfffff
    80008000:	8a8080e7          	jalr	-1880(ra) # 800068a4 <mycpu>
    80008004:	01813083          	ld	ra,24(sp)
    80008008:	01013403          	ld	s0,16(sp)
    8000800c:	00a4b823          	sd	a0,16(s1)
    80008010:	00013903          	ld	s2,0(sp)
    80008014:	00813483          	ld	s1,8(sp)
    80008018:	02010113          	addi	sp,sp,32
    8000801c:	00008067          	ret
    80008020:	0104b903          	ld	s2,16(s1)
    80008024:	fffff097          	auipc	ra,0xfffff
    80008028:	880080e7          	jalr	-1920(ra) # 800068a4 <mycpu>
    8000802c:	faa91ce3          	bne	s2,a0,80007fe4 <acquire+0x58>
    80008030:	00001517          	auipc	a0,0x1
    80008034:	6b850513          	addi	a0,a0,1720 # 800096e8 <digits+0x20>
    80008038:	fffff097          	auipc	ra,0xfffff
    8000803c:	224080e7          	jalr	548(ra) # 8000725c <panic>
    80008040:	00195913          	srli	s2,s2,0x1
    80008044:	fffff097          	auipc	ra,0xfffff
    80008048:	860080e7          	jalr	-1952(ra) # 800068a4 <mycpu>
    8000804c:	00197913          	andi	s2,s2,1
    80008050:	07252e23          	sw	s2,124(a0)
    80008054:	f75ff06f          	j	80007fc8 <acquire+0x3c>

0000000080008058 <release>:
    80008058:	fe010113          	addi	sp,sp,-32
    8000805c:	00813823          	sd	s0,16(sp)
    80008060:	00113c23          	sd	ra,24(sp)
    80008064:	00913423          	sd	s1,8(sp)
    80008068:	01213023          	sd	s2,0(sp)
    8000806c:	02010413          	addi	s0,sp,32
    80008070:	00052783          	lw	a5,0(a0)
    80008074:	00079a63          	bnez	a5,80008088 <release+0x30>
    80008078:	00001517          	auipc	a0,0x1
    8000807c:	67850513          	addi	a0,a0,1656 # 800096f0 <digits+0x28>
    80008080:	fffff097          	auipc	ra,0xfffff
    80008084:	1dc080e7          	jalr	476(ra) # 8000725c <panic>
    80008088:	01053903          	ld	s2,16(a0)
    8000808c:	00050493          	mv	s1,a0
    80008090:	fffff097          	auipc	ra,0xfffff
    80008094:	814080e7          	jalr	-2028(ra) # 800068a4 <mycpu>
    80008098:	fea910e3          	bne	s2,a0,80008078 <release+0x20>
    8000809c:	0004b823          	sd	zero,16(s1)
    800080a0:	0ff0000f          	fence
    800080a4:	0f50000f          	fence	iorw,ow
    800080a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800080ac:	ffffe097          	auipc	ra,0xffffe
    800080b0:	7f8080e7          	jalr	2040(ra) # 800068a4 <mycpu>
    800080b4:	100027f3          	csrr	a5,sstatus
    800080b8:	0027f793          	andi	a5,a5,2
    800080bc:	04079a63          	bnez	a5,80008110 <release+0xb8>
    800080c0:	07852783          	lw	a5,120(a0)
    800080c4:	02f05e63          	blez	a5,80008100 <release+0xa8>
    800080c8:	fff7871b          	addiw	a4,a5,-1
    800080cc:	06e52c23          	sw	a4,120(a0)
    800080d0:	00071c63          	bnez	a4,800080e8 <release+0x90>
    800080d4:	07c52783          	lw	a5,124(a0)
    800080d8:	00078863          	beqz	a5,800080e8 <release+0x90>
    800080dc:	100027f3          	csrr	a5,sstatus
    800080e0:	0027e793          	ori	a5,a5,2
    800080e4:	10079073          	csrw	sstatus,a5
    800080e8:	01813083          	ld	ra,24(sp)
    800080ec:	01013403          	ld	s0,16(sp)
    800080f0:	00813483          	ld	s1,8(sp)
    800080f4:	00013903          	ld	s2,0(sp)
    800080f8:	02010113          	addi	sp,sp,32
    800080fc:	00008067          	ret
    80008100:	00001517          	auipc	a0,0x1
    80008104:	61050513          	addi	a0,a0,1552 # 80009710 <digits+0x48>
    80008108:	fffff097          	auipc	ra,0xfffff
    8000810c:	154080e7          	jalr	340(ra) # 8000725c <panic>
    80008110:	00001517          	auipc	a0,0x1
    80008114:	5e850513          	addi	a0,a0,1512 # 800096f8 <digits+0x30>
    80008118:	fffff097          	auipc	ra,0xfffff
    8000811c:	144080e7          	jalr	324(ra) # 8000725c <panic>

0000000080008120 <holding>:
    80008120:	00052783          	lw	a5,0(a0)
    80008124:	00079663          	bnez	a5,80008130 <holding+0x10>
    80008128:	00000513          	li	a0,0
    8000812c:	00008067          	ret
    80008130:	fe010113          	addi	sp,sp,-32
    80008134:	00813823          	sd	s0,16(sp)
    80008138:	00913423          	sd	s1,8(sp)
    8000813c:	00113c23          	sd	ra,24(sp)
    80008140:	02010413          	addi	s0,sp,32
    80008144:	01053483          	ld	s1,16(a0)
    80008148:	ffffe097          	auipc	ra,0xffffe
    8000814c:	75c080e7          	jalr	1884(ra) # 800068a4 <mycpu>
    80008150:	01813083          	ld	ra,24(sp)
    80008154:	01013403          	ld	s0,16(sp)
    80008158:	40a48533          	sub	a0,s1,a0
    8000815c:	00153513          	seqz	a0,a0
    80008160:	00813483          	ld	s1,8(sp)
    80008164:	02010113          	addi	sp,sp,32
    80008168:	00008067          	ret

000000008000816c <push_off>:
    8000816c:	fe010113          	addi	sp,sp,-32
    80008170:	00813823          	sd	s0,16(sp)
    80008174:	00113c23          	sd	ra,24(sp)
    80008178:	00913423          	sd	s1,8(sp)
    8000817c:	02010413          	addi	s0,sp,32
    80008180:	100024f3          	csrr	s1,sstatus
    80008184:	100027f3          	csrr	a5,sstatus
    80008188:	ffd7f793          	andi	a5,a5,-3
    8000818c:	10079073          	csrw	sstatus,a5
    80008190:	ffffe097          	auipc	ra,0xffffe
    80008194:	714080e7          	jalr	1812(ra) # 800068a4 <mycpu>
    80008198:	07852783          	lw	a5,120(a0)
    8000819c:	02078663          	beqz	a5,800081c8 <push_off+0x5c>
    800081a0:	ffffe097          	auipc	ra,0xffffe
    800081a4:	704080e7          	jalr	1796(ra) # 800068a4 <mycpu>
    800081a8:	07852783          	lw	a5,120(a0)
    800081ac:	01813083          	ld	ra,24(sp)
    800081b0:	01013403          	ld	s0,16(sp)
    800081b4:	0017879b          	addiw	a5,a5,1
    800081b8:	06f52c23          	sw	a5,120(a0)
    800081bc:	00813483          	ld	s1,8(sp)
    800081c0:	02010113          	addi	sp,sp,32
    800081c4:	00008067          	ret
    800081c8:	0014d493          	srli	s1,s1,0x1
    800081cc:	ffffe097          	auipc	ra,0xffffe
    800081d0:	6d8080e7          	jalr	1752(ra) # 800068a4 <mycpu>
    800081d4:	0014f493          	andi	s1,s1,1
    800081d8:	06952e23          	sw	s1,124(a0)
    800081dc:	fc5ff06f          	j	800081a0 <push_off+0x34>

00000000800081e0 <pop_off>:
    800081e0:	ff010113          	addi	sp,sp,-16
    800081e4:	00813023          	sd	s0,0(sp)
    800081e8:	00113423          	sd	ra,8(sp)
    800081ec:	01010413          	addi	s0,sp,16
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	6b4080e7          	jalr	1716(ra) # 800068a4 <mycpu>
    800081f8:	100027f3          	csrr	a5,sstatus
    800081fc:	0027f793          	andi	a5,a5,2
    80008200:	04079663          	bnez	a5,8000824c <pop_off+0x6c>
    80008204:	07852783          	lw	a5,120(a0)
    80008208:	02f05a63          	blez	a5,8000823c <pop_off+0x5c>
    8000820c:	fff7871b          	addiw	a4,a5,-1
    80008210:	06e52c23          	sw	a4,120(a0)
    80008214:	00071c63          	bnez	a4,8000822c <pop_off+0x4c>
    80008218:	07c52783          	lw	a5,124(a0)
    8000821c:	00078863          	beqz	a5,8000822c <pop_off+0x4c>
    80008220:	100027f3          	csrr	a5,sstatus
    80008224:	0027e793          	ori	a5,a5,2
    80008228:	10079073          	csrw	sstatus,a5
    8000822c:	00813083          	ld	ra,8(sp)
    80008230:	00013403          	ld	s0,0(sp)
    80008234:	01010113          	addi	sp,sp,16
    80008238:	00008067          	ret
    8000823c:	00001517          	auipc	a0,0x1
    80008240:	4d450513          	addi	a0,a0,1236 # 80009710 <digits+0x48>
    80008244:	fffff097          	auipc	ra,0xfffff
    80008248:	018080e7          	jalr	24(ra) # 8000725c <panic>
    8000824c:	00001517          	auipc	a0,0x1
    80008250:	4ac50513          	addi	a0,a0,1196 # 800096f8 <digits+0x30>
    80008254:	fffff097          	auipc	ra,0xfffff
    80008258:	008080e7          	jalr	8(ra) # 8000725c <panic>

000000008000825c <push_on>:
    8000825c:	fe010113          	addi	sp,sp,-32
    80008260:	00813823          	sd	s0,16(sp)
    80008264:	00113c23          	sd	ra,24(sp)
    80008268:	00913423          	sd	s1,8(sp)
    8000826c:	02010413          	addi	s0,sp,32
    80008270:	100024f3          	csrr	s1,sstatus
    80008274:	100027f3          	csrr	a5,sstatus
    80008278:	0027e793          	ori	a5,a5,2
    8000827c:	10079073          	csrw	sstatus,a5
    80008280:	ffffe097          	auipc	ra,0xffffe
    80008284:	624080e7          	jalr	1572(ra) # 800068a4 <mycpu>
    80008288:	07852783          	lw	a5,120(a0)
    8000828c:	02078663          	beqz	a5,800082b8 <push_on+0x5c>
    80008290:	ffffe097          	auipc	ra,0xffffe
    80008294:	614080e7          	jalr	1556(ra) # 800068a4 <mycpu>
    80008298:	07852783          	lw	a5,120(a0)
    8000829c:	01813083          	ld	ra,24(sp)
    800082a0:	01013403          	ld	s0,16(sp)
    800082a4:	0017879b          	addiw	a5,a5,1
    800082a8:	06f52c23          	sw	a5,120(a0)
    800082ac:	00813483          	ld	s1,8(sp)
    800082b0:	02010113          	addi	sp,sp,32
    800082b4:	00008067          	ret
    800082b8:	0014d493          	srli	s1,s1,0x1
    800082bc:	ffffe097          	auipc	ra,0xffffe
    800082c0:	5e8080e7          	jalr	1512(ra) # 800068a4 <mycpu>
    800082c4:	0014f493          	andi	s1,s1,1
    800082c8:	06952e23          	sw	s1,124(a0)
    800082cc:	fc5ff06f          	j	80008290 <push_on+0x34>

00000000800082d0 <pop_on>:
    800082d0:	ff010113          	addi	sp,sp,-16
    800082d4:	00813023          	sd	s0,0(sp)
    800082d8:	00113423          	sd	ra,8(sp)
    800082dc:	01010413          	addi	s0,sp,16
    800082e0:	ffffe097          	auipc	ra,0xffffe
    800082e4:	5c4080e7          	jalr	1476(ra) # 800068a4 <mycpu>
    800082e8:	100027f3          	csrr	a5,sstatus
    800082ec:	0027f793          	andi	a5,a5,2
    800082f0:	04078463          	beqz	a5,80008338 <pop_on+0x68>
    800082f4:	07852783          	lw	a5,120(a0)
    800082f8:	02f05863          	blez	a5,80008328 <pop_on+0x58>
    800082fc:	fff7879b          	addiw	a5,a5,-1
    80008300:	06f52c23          	sw	a5,120(a0)
    80008304:	07853783          	ld	a5,120(a0)
    80008308:	00079863          	bnez	a5,80008318 <pop_on+0x48>
    8000830c:	100027f3          	csrr	a5,sstatus
    80008310:	ffd7f793          	andi	a5,a5,-3
    80008314:	10079073          	csrw	sstatus,a5
    80008318:	00813083          	ld	ra,8(sp)
    8000831c:	00013403          	ld	s0,0(sp)
    80008320:	01010113          	addi	sp,sp,16
    80008324:	00008067          	ret
    80008328:	00001517          	auipc	a0,0x1
    8000832c:	41050513          	addi	a0,a0,1040 # 80009738 <digits+0x70>
    80008330:	fffff097          	auipc	ra,0xfffff
    80008334:	f2c080e7          	jalr	-212(ra) # 8000725c <panic>
    80008338:	00001517          	auipc	a0,0x1
    8000833c:	3e050513          	addi	a0,a0,992 # 80009718 <digits+0x50>
    80008340:	fffff097          	auipc	ra,0xfffff
    80008344:	f1c080e7          	jalr	-228(ra) # 8000725c <panic>

0000000080008348 <__memset>:
    80008348:	ff010113          	addi	sp,sp,-16
    8000834c:	00813423          	sd	s0,8(sp)
    80008350:	01010413          	addi	s0,sp,16
    80008354:	1a060e63          	beqz	a2,80008510 <__memset+0x1c8>
    80008358:	40a007b3          	neg	a5,a0
    8000835c:	0077f793          	andi	a5,a5,7
    80008360:	00778693          	addi	a3,a5,7
    80008364:	00b00813          	li	a6,11
    80008368:	0ff5f593          	andi	a1,a1,255
    8000836c:	fff6071b          	addiw	a4,a2,-1
    80008370:	1b06e663          	bltu	a3,a6,8000851c <__memset+0x1d4>
    80008374:	1cd76463          	bltu	a4,a3,8000853c <__memset+0x1f4>
    80008378:	1a078e63          	beqz	a5,80008534 <__memset+0x1ec>
    8000837c:	00b50023          	sb	a1,0(a0)
    80008380:	00100713          	li	a4,1
    80008384:	1ae78463          	beq	a5,a4,8000852c <__memset+0x1e4>
    80008388:	00b500a3          	sb	a1,1(a0)
    8000838c:	00200713          	li	a4,2
    80008390:	1ae78a63          	beq	a5,a4,80008544 <__memset+0x1fc>
    80008394:	00b50123          	sb	a1,2(a0)
    80008398:	00300713          	li	a4,3
    8000839c:	18e78463          	beq	a5,a4,80008524 <__memset+0x1dc>
    800083a0:	00b501a3          	sb	a1,3(a0)
    800083a4:	00400713          	li	a4,4
    800083a8:	1ae78263          	beq	a5,a4,8000854c <__memset+0x204>
    800083ac:	00b50223          	sb	a1,4(a0)
    800083b0:	00500713          	li	a4,5
    800083b4:	1ae78063          	beq	a5,a4,80008554 <__memset+0x20c>
    800083b8:	00b502a3          	sb	a1,5(a0)
    800083bc:	00700713          	li	a4,7
    800083c0:	18e79e63          	bne	a5,a4,8000855c <__memset+0x214>
    800083c4:	00b50323          	sb	a1,6(a0)
    800083c8:	00700e93          	li	t4,7
    800083cc:	00859713          	slli	a4,a1,0x8
    800083d0:	00e5e733          	or	a4,a1,a4
    800083d4:	01059e13          	slli	t3,a1,0x10
    800083d8:	01c76e33          	or	t3,a4,t3
    800083dc:	01859313          	slli	t1,a1,0x18
    800083e0:	006e6333          	or	t1,t3,t1
    800083e4:	02059893          	slli	a7,a1,0x20
    800083e8:	40f60e3b          	subw	t3,a2,a5
    800083ec:	011368b3          	or	a7,t1,a7
    800083f0:	02859813          	slli	a6,a1,0x28
    800083f4:	0108e833          	or	a6,a7,a6
    800083f8:	03059693          	slli	a3,a1,0x30
    800083fc:	003e589b          	srliw	a7,t3,0x3
    80008400:	00d866b3          	or	a3,a6,a3
    80008404:	03859713          	slli	a4,a1,0x38
    80008408:	00389813          	slli	a6,a7,0x3
    8000840c:	00f507b3          	add	a5,a0,a5
    80008410:	00e6e733          	or	a4,a3,a4
    80008414:	000e089b          	sext.w	a7,t3
    80008418:	00f806b3          	add	a3,a6,a5
    8000841c:	00e7b023          	sd	a4,0(a5)
    80008420:	00878793          	addi	a5,a5,8
    80008424:	fed79ce3          	bne	a5,a3,8000841c <__memset+0xd4>
    80008428:	ff8e7793          	andi	a5,t3,-8
    8000842c:	0007871b          	sext.w	a4,a5
    80008430:	01d787bb          	addw	a5,a5,t4
    80008434:	0ce88e63          	beq	a7,a4,80008510 <__memset+0x1c8>
    80008438:	00f50733          	add	a4,a0,a5
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	0017871b          	addiw	a4,a5,1
    80008444:	0cc77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	0027871b          	addiw	a4,a5,2
    80008454:	0ac77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	0037871b          	addiw	a4,a5,3
    80008464:	0ac77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008468:	00e50733          	add	a4,a0,a4
    8000846c:	00b70023          	sb	a1,0(a4)
    80008470:	0047871b          	addiw	a4,a5,4
    80008474:	08c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00b70023          	sb	a1,0(a4)
    80008480:	0057871b          	addiw	a4,a5,5
    80008484:	08c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008488:	00e50733          	add	a4,a0,a4
    8000848c:	00b70023          	sb	a1,0(a4)
    80008490:	0067871b          	addiw	a4,a5,6
    80008494:	06c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0077871b          	addiw	a4,a5,7
    800084a4:	06c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	0087871b          	addiw	a4,a5,8
    800084b4:	04c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	0097871b          	addiw	a4,a5,9
    800084c4:	04c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	00a7871b          	addiw	a4,a5,10
    800084d4:	02c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	00b7871b          	addiw	a4,a5,11
    800084e4:	02c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	00c7871b          	addiw	a4,a5,12
    800084f4:	00c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	00d7879b          	addiw	a5,a5,13
    80008504:	00c7f663          	bgeu	a5,a2,80008510 <__memset+0x1c8>
    80008508:	00f507b3          	add	a5,a0,a5
    8000850c:	00b78023          	sb	a1,0(a5)
    80008510:	00813403          	ld	s0,8(sp)
    80008514:	01010113          	addi	sp,sp,16
    80008518:	00008067          	ret
    8000851c:	00b00693          	li	a3,11
    80008520:	e55ff06f          	j	80008374 <__memset+0x2c>
    80008524:	00300e93          	li	t4,3
    80008528:	ea5ff06f          	j	800083cc <__memset+0x84>
    8000852c:	00100e93          	li	t4,1
    80008530:	e9dff06f          	j	800083cc <__memset+0x84>
    80008534:	00000e93          	li	t4,0
    80008538:	e95ff06f          	j	800083cc <__memset+0x84>
    8000853c:	00000793          	li	a5,0
    80008540:	ef9ff06f          	j	80008438 <__memset+0xf0>
    80008544:	00200e93          	li	t4,2
    80008548:	e85ff06f          	j	800083cc <__memset+0x84>
    8000854c:	00400e93          	li	t4,4
    80008550:	e7dff06f          	j	800083cc <__memset+0x84>
    80008554:	00500e93          	li	t4,5
    80008558:	e75ff06f          	j	800083cc <__memset+0x84>
    8000855c:	00600e93          	li	t4,6
    80008560:	e6dff06f          	j	800083cc <__memset+0x84>

0000000080008564 <__memmove>:
    80008564:	ff010113          	addi	sp,sp,-16
    80008568:	00813423          	sd	s0,8(sp)
    8000856c:	01010413          	addi	s0,sp,16
    80008570:	0e060863          	beqz	a2,80008660 <__memmove+0xfc>
    80008574:	fff6069b          	addiw	a3,a2,-1
    80008578:	0006881b          	sext.w	a6,a3
    8000857c:	0ea5e863          	bltu	a1,a0,8000866c <__memmove+0x108>
    80008580:	00758713          	addi	a4,a1,7
    80008584:	00a5e7b3          	or	a5,a1,a0
    80008588:	40a70733          	sub	a4,a4,a0
    8000858c:	0077f793          	andi	a5,a5,7
    80008590:	00f73713          	sltiu	a4,a4,15
    80008594:	00174713          	xori	a4,a4,1
    80008598:	0017b793          	seqz	a5,a5
    8000859c:	00e7f7b3          	and	a5,a5,a4
    800085a0:	10078863          	beqz	a5,800086b0 <__memmove+0x14c>
    800085a4:	00900793          	li	a5,9
    800085a8:	1107f463          	bgeu	a5,a6,800086b0 <__memmove+0x14c>
    800085ac:	0036581b          	srliw	a6,a2,0x3
    800085b0:	fff8081b          	addiw	a6,a6,-1
    800085b4:	02081813          	slli	a6,a6,0x20
    800085b8:	01d85893          	srli	a7,a6,0x1d
    800085bc:	00858813          	addi	a6,a1,8
    800085c0:	00058793          	mv	a5,a1
    800085c4:	00050713          	mv	a4,a0
    800085c8:	01088833          	add	a6,a7,a6
    800085cc:	0007b883          	ld	a7,0(a5)
    800085d0:	00878793          	addi	a5,a5,8
    800085d4:	00870713          	addi	a4,a4,8
    800085d8:	ff173c23          	sd	a7,-8(a4)
    800085dc:	ff0798e3          	bne	a5,a6,800085cc <__memmove+0x68>
    800085e0:	ff867713          	andi	a4,a2,-8
    800085e4:	02071793          	slli	a5,a4,0x20
    800085e8:	0207d793          	srli	a5,a5,0x20
    800085ec:	00f585b3          	add	a1,a1,a5
    800085f0:	40e686bb          	subw	a3,a3,a4
    800085f4:	00f507b3          	add	a5,a0,a5
    800085f8:	06e60463          	beq	a2,a4,80008660 <__memmove+0xfc>
    800085fc:	0005c703          	lbu	a4,0(a1)
    80008600:	00e78023          	sb	a4,0(a5)
    80008604:	04068e63          	beqz	a3,80008660 <__memmove+0xfc>
    80008608:	0015c603          	lbu	a2,1(a1)
    8000860c:	00100713          	li	a4,1
    80008610:	00c780a3          	sb	a2,1(a5)
    80008614:	04e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008618:	0025c603          	lbu	a2,2(a1)
    8000861c:	00200713          	li	a4,2
    80008620:	00c78123          	sb	a2,2(a5)
    80008624:	02e68e63          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008628:	0035c603          	lbu	a2,3(a1)
    8000862c:	00300713          	li	a4,3
    80008630:	00c781a3          	sb	a2,3(a5)
    80008634:	02e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008638:	0045c603          	lbu	a2,4(a1)
    8000863c:	00400713          	li	a4,4
    80008640:	00c78223          	sb	a2,4(a5)
    80008644:	00e68e63          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008648:	0055c603          	lbu	a2,5(a1)
    8000864c:	00500713          	li	a4,5
    80008650:	00c782a3          	sb	a2,5(a5)
    80008654:	00e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008658:	0065c703          	lbu	a4,6(a1)
    8000865c:	00e78323          	sb	a4,6(a5)
    80008660:	00813403          	ld	s0,8(sp)
    80008664:	01010113          	addi	sp,sp,16
    80008668:	00008067          	ret
    8000866c:	02061713          	slli	a4,a2,0x20
    80008670:	02075713          	srli	a4,a4,0x20
    80008674:	00e587b3          	add	a5,a1,a4
    80008678:	f0f574e3          	bgeu	a0,a5,80008580 <__memmove+0x1c>
    8000867c:	02069613          	slli	a2,a3,0x20
    80008680:	02065613          	srli	a2,a2,0x20
    80008684:	fff64613          	not	a2,a2
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00c78633          	add	a2,a5,a2
    80008690:	fff7c683          	lbu	a3,-1(a5)
    80008694:	fff78793          	addi	a5,a5,-1
    80008698:	fff70713          	addi	a4,a4,-1
    8000869c:	00d70023          	sb	a3,0(a4)
    800086a0:	fec798e3          	bne	a5,a2,80008690 <__memmove+0x12c>
    800086a4:	00813403          	ld	s0,8(sp)
    800086a8:	01010113          	addi	sp,sp,16
    800086ac:	00008067          	ret
    800086b0:	02069713          	slli	a4,a3,0x20
    800086b4:	02075713          	srli	a4,a4,0x20
    800086b8:	00170713          	addi	a4,a4,1
    800086bc:	00e50733          	add	a4,a0,a4
    800086c0:	00050793          	mv	a5,a0
    800086c4:	0005c683          	lbu	a3,0(a1)
    800086c8:	00178793          	addi	a5,a5,1
    800086cc:	00158593          	addi	a1,a1,1
    800086d0:	fed78fa3          	sb	a3,-1(a5)
    800086d4:	fee798e3          	bne	a5,a4,800086c4 <__memmove+0x160>
    800086d8:	f89ff06f          	j	80008660 <__memmove+0xfc>

00000000800086dc <__putc>:
    800086dc:	fe010113          	addi	sp,sp,-32
    800086e0:	00813823          	sd	s0,16(sp)
    800086e4:	00113c23          	sd	ra,24(sp)
    800086e8:	02010413          	addi	s0,sp,32
    800086ec:	00050793          	mv	a5,a0
    800086f0:	fef40593          	addi	a1,s0,-17
    800086f4:	00100613          	li	a2,1
    800086f8:	00000513          	li	a0,0
    800086fc:	fef407a3          	sb	a5,-17(s0)
    80008700:	fffff097          	auipc	ra,0xfffff
    80008704:	b3c080e7          	jalr	-1220(ra) # 8000723c <console_write>
    80008708:	01813083          	ld	ra,24(sp)
    8000870c:	01013403          	ld	s0,16(sp)
    80008710:	02010113          	addi	sp,sp,32
    80008714:	00008067          	ret

0000000080008718 <__getc>:
    80008718:	fe010113          	addi	sp,sp,-32
    8000871c:	00813823          	sd	s0,16(sp)
    80008720:	00113c23          	sd	ra,24(sp)
    80008724:	02010413          	addi	s0,sp,32
    80008728:	fe840593          	addi	a1,s0,-24
    8000872c:	00100613          	li	a2,1
    80008730:	00000513          	li	a0,0
    80008734:	fffff097          	auipc	ra,0xfffff
    80008738:	ae8080e7          	jalr	-1304(ra) # 8000721c <console_read>
    8000873c:	fe844503          	lbu	a0,-24(s0)
    80008740:	01813083          	ld	ra,24(sp)
    80008744:	01013403          	ld	s0,16(sp)
    80008748:	02010113          	addi	sp,sp,32
    8000874c:	00008067          	ret

0000000080008750 <console_handler>:
    80008750:	fe010113          	addi	sp,sp,-32
    80008754:	00813823          	sd	s0,16(sp)
    80008758:	00113c23          	sd	ra,24(sp)
    8000875c:	00913423          	sd	s1,8(sp)
    80008760:	02010413          	addi	s0,sp,32
    80008764:	14202773          	csrr	a4,scause
    80008768:	100027f3          	csrr	a5,sstatus
    8000876c:	0027f793          	andi	a5,a5,2
    80008770:	06079e63          	bnez	a5,800087ec <console_handler+0x9c>
    80008774:	00074c63          	bltz	a4,8000878c <console_handler+0x3c>
    80008778:	01813083          	ld	ra,24(sp)
    8000877c:	01013403          	ld	s0,16(sp)
    80008780:	00813483          	ld	s1,8(sp)
    80008784:	02010113          	addi	sp,sp,32
    80008788:	00008067          	ret
    8000878c:	0ff77713          	andi	a4,a4,255
    80008790:	00900793          	li	a5,9
    80008794:	fef712e3          	bne	a4,a5,80008778 <console_handler+0x28>
    80008798:	ffffe097          	auipc	ra,0xffffe
    8000879c:	6dc080e7          	jalr	1756(ra) # 80006e74 <plic_claim>
    800087a0:	00a00793          	li	a5,10
    800087a4:	00050493          	mv	s1,a0
    800087a8:	02f50c63          	beq	a0,a5,800087e0 <console_handler+0x90>
    800087ac:	fc0506e3          	beqz	a0,80008778 <console_handler+0x28>
    800087b0:	00050593          	mv	a1,a0
    800087b4:	00001517          	auipc	a0,0x1
    800087b8:	e8c50513          	addi	a0,a0,-372 # 80009640 <_ZL6digits+0x110>
    800087bc:	fffff097          	auipc	ra,0xfffff
    800087c0:	afc080e7          	jalr	-1284(ra) # 800072b8 <__printf>
    800087c4:	01013403          	ld	s0,16(sp)
    800087c8:	01813083          	ld	ra,24(sp)
    800087cc:	00048513          	mv	a0,s1
    800087d0:	00813483          	ld	s1,8(sp)
    800087d4:	02010113          	addi	sp,sp,32
    800087d8:	ffffe317          	auipc	t1,0xffffe
    800087dc:	6d430067          	jr	1748(t1) # 80006eac <plic_complete>
    800087e0:	fffff097          	auipc	ra,0xfffff
    800087e4:	3e0080e7          	jalr	992(ra) # 80007bc0 <uartintr>
    800087e8:	fddff06f          	j	800087c4 <console_handler+0x74>
    800087ec:	00001517          	auipc	a0,0x1
    800087f0:	f5450513          	addi	a0,a0,-172 # 80009740 <digits+0x78>
    800087f4:	fffff097          	auipc	ra,0xfffff
    800087f8:	a68080e7          	jalr	-1432(ra) # 8000725c <panic>
	...
