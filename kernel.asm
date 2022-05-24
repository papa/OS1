
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	7f013103          	ld	sp,2032(sp) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7f1050ef          	jal	ra,8000600c <start>

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
    sd x0, 0(sp)
    80001004:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    80001008:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001014:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    80001018:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001024:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    80001028:	04913423          	sd	s1,72(sp)
    #sd x10, 80(sp)
    sd x11, 88(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001040:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    80001044:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001048:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001080:	6e0020ef          	jal	ra,80003760 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    80001084:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001088:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001090:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    80001094:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    80001098:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    #ld x10, 80(sp)
    ld x11, 88(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256

    80001104:	10200073          	sret
	...

0000000080001110 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)
    ret
    80001188:	00008067          	ret

000000008000118c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000118c:	01813183          	ld	gp,24(sp)
    80001190:	02013203          	ld	tp,32(sp)
    80001194:	02813283          	ld	t0,40(sp)
    80001198:	03013303          	ld	t1,48(sp)
    8000119c:	03813383          	ld	t2,56(sp)
    800011a0:	04013403          	ld	s0,64(sp)
    800011a4:	04813483          	ld	s1,72(sp)
    800011a8:	05013503          	ld	a0,80(sp)
    800011ac:	05813583          	ld	a1,88(sp)
    800011b0:	06013603          	ld	a2,96(sp)
    800011b4:	06813683          	ld	a3,104(sp)
    800011b8:	07013703          	ld	a4,112(sp)
    800011bc:	07813783          	ld	a5,120(sp)
    800011c0:	08013803          	ld	a6,128(sp)
    800011c4:	08813883          	ld	a7,136(sp)
    800011c8:	09013903          	ld	s2,144(sp)
    800011cc:	09813983          	ld	s3,152(sp)
    800011d0:	0a013a03          	ld	s4,160(sp)
    800011d4:	0a813a83          	ld	s5,168(sp)
    800011d8:	0b013b03          	ld	s6,176(sp)
    800011dc:	0b813b83          	ld	s7,184(sp)
    800011e0:	0c013c03          	ld	s8,192(sp)
    800011e4:	0c813c83          	ld	s9,200(sp)
    800011e8:	0d013d03          	ld	s10,208(sp)
    800011ec:	0d813d83          	ld	s11,216(sp)
    800011f0:	0e013e03          	ld	t3,224(sp)
    800011f4:	0e813e83          	ld	t4,232(sp)
    800011f8:	0f013f03          	ld	t5,240(sp)
    800011fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001200:	10010113          	addi	sp,sp,256
    ret
    80001204:	00008067          	ret

0000000080001208 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001208:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000120c:	00b29a63          	bne	t0,a1,80001220 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001210:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001214:	fe029ae3          	bnez	t0,80001208 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001218:	00000513          	li	a0,0
    jr ra                  # Return.
    8000121c:	00008067          	ret

0000000080001220 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001220:	00100513          	li	a0,1
    80001224:	00008067          	ret

0000000080001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001228:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000122c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001230:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001234:	0085b083          	ld	ra,8(a1)

    ret
    80001238:	00008067          	ret

000000008000123c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000123c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001240:	00853083          	ld	ra,8(a0)

    80001244:	00008067          	ret

0000000080001248 <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    80001248:	ff010113          	addi	sp,sp,-16
    8000124c:	00813423          	sd	s0,8(sp)
    80001250:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001254:	03f50513          	addi	a0,a0,63
    80001258:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000125c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001260:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001264:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001268:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    80001278:	ff010113          	addi	sp,sp,-16
    8000127c:	00813423          	sd	s0,8(sp)
    80001280:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001284:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001288:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000128c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001290:	00050513          	mv	a0,a0

    return result;
}
    80001294:	0005051b          	sext.w	a0,a0
    80001298:	00813403          	ld	s0,8(sp)
    8000129c:	01010113          	addi	sp,sp,16
    800012a0:	00008067          	ret

00000000800012a4 <thread_create>:

#ifdef __cplusplus
extern "C"
#endif
int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    800012a4:	fd010113          	addi	sp,sp,-48
    800012a8:	02113423          	sd	ra,40(sp)
    800012ac:	02813023          	sd	s0,32(sp)
    800012b0:	00913c23          	sd	s1,24(sp)
    800012b4:	01213823          	sd	s2,16(sp)
    800012b8:	01313423          	sd	s3,8(sp)
    800012bc:	03010413          	addi	s0,sp,48
    800012c0:	00050493          	mv	s1,a0
    800012c4:	00058913          	mv	s2,a1
    800012c8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012cc:	00001537          	lui	a0,0x1
    800012d0:	00000097          	auipc	ra,0x0
    800012d4:	f78080e7          	jalr	-136(ra) # 80001248 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012d8:	04050263          	beqz	a0,8000131c <thread_create+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012dc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012e0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012e4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012e8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012ec:	01100793          	li	a5,17
    800012f0:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800012f4:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012f8:	00050513          	mv	a0,a0

    return result;
    800012fc:	0005051b          	sext.w	a0,a0
}
    80001300:	02813083          	ld	ra,40(sp)
    80001304:	02013403          	ld	s0,32(sp)
    80001308:	01813483          	ld	s1,24(sp)
    8000130c:	01013903          	ld	s2,16(sp)
    80001310:	00813983          	ld	s3,8(sp)
    80001314:	03010113          	addi	sp,sp,48
    80001318:	00008067          	ret
        return -1;
    8000131c:	fff00513          	li	a0,-1
    80001320:	fe1ff06f          	j	80001300 <thread_create+0x5c>

0000000080001324 <thread_dispatch>:

#ifdef __cplusplus
extern "C"
#endif
void thread_dispatch()
{
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00813423          	sd	s0,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001330:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001334:	00000073          	ecall
}
    80001338:	00813403          	ld	s0,8(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <thread_exit>:

#ifdef __cplusplus
extern "C"
#endif
int thread_exit()
{
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001350:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001354:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001358:	00050513          	mv	a0,a0
    return result;
}
    8000135c:	0005051b          	sext.w	a0,a0
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <sem_open>:

typedef void* sem_t;
int sem_open(sem_t* handle, unsigned int x)
{
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001378:	02059593          	slli	a1,a1,0x20
    8000137c:	0205d593          	srli	a1,a1,0x20
    80001380:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001384:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001388:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000138c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001390:	00050513          	mv	a0,a0
    return result;
}
    80001394:	0005051b          	sext.w	a0,a0
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <sem_close>:


int sem_close(sem_t handle)
{
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800013b0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013b4:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800013b8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013bc:	00050513          	mv	a0,a0
    return result;
}
    800013c0:	0005051b          	sext.w	a0,a0
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <sem_wait>:

int sem_wait(sem_t id)
{
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013dc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013e0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800013e4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013e8:	00050513          	mv	a0,a0
    return result;
}
    800013ec:	0005051b          	sext.w	a0,a0
    800013f0:	00813403          	ld	s0,8(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <sem_signal>:

int sem_signal(sem_t id)
{
    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00813423          	sd	s0,8(sp)
    80001404:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001408:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000140c:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001410:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001414:	00050513          	mv	a0,a0
    return result;
}
    80001418:	0005051b          	sext.w	a0,a0
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <time_sleep>:

int time_sleep(uint64 time)
{
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001434:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001438:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000143c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001440:	00050513          	mv	a0,a0
    return result;
    80001444:	0005051b          	sext.w	a0,a0
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z4idlePv>:

#include "../h/Tests.hpp"
#include "../lib/console.h"

void idle(void* args)
{
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00113423          	sd	ra,8(sp)
    8000145c:	00813023          	sd	s0,0(sp)
    80001460:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    80001464:	00008517          	auipc	a0,0x8
    80001468:	bbc50513          	addi	a0,a0,-1092 # 80009020 <CONSOLE_STATUS+0x10>
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	1bc080e7          	jalr	444(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	eb0080e7          	jalr	-336(ra) # 80001324 <thread_dispatch>
    while(true)
    8000147c:	fe9ff06f          	j	80001464 <_Z4idlePv+0x10>

0000000080001480 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    80001494:	00008517          	auipc	a0,0x8
    80001498:	b9450513          	addi	a0,a0,-1132 # 80009028 <CONSOLE_STATUS+0x18>
    8000149c:	00002097          	auipc	ra,0x2
    800014a0:	18c080e7          	jalr	396(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800014a4:	00000493          	li	s1,0
    800014a8:	03c0006f          	j	800014e4 <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	e78080e7          	jalr	-392(ra) # 80001324 <thread_dispatch>
        Riscv::printString("i : ");
    800014b4:	00008517          	auipc	a0,0x8
    800014b8:	b8c50513          	addi	a0,a0,-1140 # 80009040 <CONSOLE_STATUS+0x30>
    800014bc:	00002097          	auipc	ra,0x2
    800014c0:	16c080e7          	jalr	364(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	1d0080e7          	jalr	464(ra) # 80003698 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	c4050513          	addi	a0,a0,-960 # 80009110 <CONSOLE_STATUS+0x100>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	150080e7          	jalr	336(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800014e0:	00148493          	addi	s1,s1,1
    800014e4:	000027b7          	lui	a5,0x2
    800014e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014ec:	0097ec63          	bltu	a5,s1,80001504 <_Z15thread1FunctionPv+0x84>
        if(i % 150 == 0 && i > 0)
    800014f0:	09600793          	li	a5,150
    800014f4:	02f4f7b3          	remu	a5,s1,a5
    800014f8:	fa079ee3          	bnez	a5,800014b4 <_Z15thread1FunctionPv+0x34>
    800014fc:	fa048ce3          	beqz	s1,800014b4 <_Z15thread1FunctionPv+0x34>
    80001500:	fadff06f          	j	800014ac <_Z15thread1FunctionPv+0x2c>
    }
}
    80001504:	01813083          	ld	ra,24(sp)
    80001508:	01013403          	ld	s0,16(sp)
    8000150c:	00813483          	ld	s1,8(sp)
    80001510:	02010113          	addi	sp,sp,32
    80001514:	00008067          	ret

0000000080001518 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001518:	fe010113          	addi	sp,sp,-32
    8000151c:	00113c23          	sd	ra,24(sp)
    80001520:	00813823          	sd	s0,16(sp)
    80001524:	00913423          	sd	s1,8(sp)
    80001528:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    8000152c:	00008517          	auipc	a0,0x8
    80001530:	b1c50513          	addi	a0,a0,-1252 # 80009048 <CONSOLE_STATUS+0x38>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	0f4080e7          	jalr	244(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    8000153c:	00000493          	li	s1,0
    80001540:	03c0006f          	j	8000157c <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    80001544:	00000097          	auipc	ra,0x0
    80001548:	de0080e7          	jalr	-544(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    8000154c:	00008517          	auipc	a0,0x8
    80001550:	b1450513          	addi	a0,a0,-1260 # 80009060 <CONSOLE_STATUS+0x50>
    80001554:	00002097          	auipc	ra,0x2
    80001558:	0d4080e7          	jalr	212(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	138080e7          	jalr	312(ra) # 80003698 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	ba850513          	addi	a0,a0,-1112 # 80009110 <CONSOLE_STATUS+0x100>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	0b8080e7          	jalr	184(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001578:	00148493          	addi	s1,s1,1
    8000157c:	000027b7          	lui	a5,0x2
    80001580:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001584:	0097ec63          	bltu	a5,s1,8000159c <_Z15thread2FunctionPv+0x84>
        if(j % 50 == 0 && j > 0)
    80001588:	03200793          	li	a5,50
    8000158c:	02f4f7b3          	remu	a5,s1,a5
    80001590:	fa079ee3          	bnez	a5,8000154c <_Z15thread2FunctionPv+0x34>
    80001594:	fa048ce3          	beqz	s1,8000154c <_Z15thread2FunctionPv+0x34>
    80001598:	fadff06f          	j	80001544 <_Z15thread2FunctionPv+0x2c>
    }
}
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	01013403          	ld	s0,16(sp)
    800015a4:	00813483          	ld	s1,8(sp)
    800015a8:	02010113          	addi	sp,sp,32
    800015ac:	00008067          	ret

00000000800015b0 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800015b0:	fe010113          	addi	sp,sp,-32
    800015b4:	00113c23          	sd	ra,24(sp)
    800015b8:	00813823          	sd	s0,16(sp)
    800015bc:	00913423          	sd	s1,8(sp)
    800015c0:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    800015c4:	00000493          	li	s1,0
    800015c8:	000027b7          	lui	a5,0x2
    800015cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015d0:	0297c463          	blt	a5,s1,800015f8 <_ZN12TestPeriodic18periodicActivationEv+0x48>
    {
        Riscv::printString("i : ");
    800015d4:	00008517          	auipc	a0,0x8
    800015d8:	a6c50513          	addi	a0,a0,-1428 # 80009040 <CONSOLE_STATUS+0x30>
    800015dc:	00002097          	auipc	ra,0x2
    800015e0:	04c080e7          	jalr	76(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	0b0080e7          	jalr	176(ra) # 80003698 <_ZN5Riscv12printIntegerEm>
    for(int i = 0 ; i < 10000;i++)
    800015f0:	0014849b          	addiw	s1,s1,1
    800015f4:	fd5ff06f          	j	800015c8 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    800015f8:	01813083          	ld	ra,24(sp)
    800015fc:	01013403          	ld	s0,16(sp)
    80001600:	00813483          	ld	s1,8(sp)
    80001604:	02010113          	addi	sp,sp,32
    80001608:	00008067          	ret

000000008000160c <_Z20thread2FunctionTest2Pv>:
{
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001620:	00008517          	auipc	a0,0x8
    80001624:	a2850513          	addi	a0,a0,-1496 # 80009048 <CONSOLE_STATUS+0x38>
    80001628:	00002097          	auipc	ra,0x2
    8000162c:	000080e7          	jalr	ra # 80003628 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001630:	00000493          	li	s1,0
    80001634:	0480006f          	j	8000167c <_Z20thread2FunctionTest2Pv+0x70>
            thread_exit();
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	d0c080e7          	jalr	-756(ra) # 80001344 <thread_exit>
    80001640:	0500006f          	j	80001690 <_Z20thread2FunctionTest2Pv+0x84>
            thread_dispatch();
    80001644:	00000097          	auipc	ra,0x0
    80001648:	ce0080e7          	jalr	-800(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    8000164c:	00008517          	auipc	a0,0x8
    80001650:	a1450513          	addi	a0,a0,-1516 # 80009060 <CONSOLE_STATUS+0x50>
    80001654:	00002097          	auipc	ra,0x2
    80001658:	fd4080e7          	jalr	-44(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	038080e7          	jalr	56(ra) # 80003698 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	aa850513          	addi	a0,a0,-1368 # 80009110 <CONSOLE_STATUS+0x100>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	fb8080e7          	jalr	-72(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001678:	00148493          	addi	s1,s1,1
    8000167c:	000027b7          	lui	a5,0x2
    80001680:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001684:	0297e063          	bltu	a5,s1,800016a4 <_Z20thread2FunctionTest2Pv+0x98>
        if(j == 200)
    80001688:	0c800793          	li	a5,200
    8000168c:	faf486e3          	beq	s1,a5,80001638 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    80001690:	03200793          	li	a5,50
    80001694:	02f4f7b3          	remu	a5,s1,a5
    80001698:	fa079ae3          	bnez	a5,8000164c <_Z20thread2FunctionTest2Pv+0x40>
    8000169c:	fa0488e3          	beqz	s1,8000164c <_Z20thread2FunctionTest2Pv+0x40>
    800016a0:	fa5ff06f          	j	80001644 <_Z20thread2FunctionTest2Pv+0x38>
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret

00000000800016b8 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10){
    800016b8:	0000a717          	auipc	a4,0xa
    800016bc:	19872703          	lw	a4,408(a4) # 8000b850 <head>
    800016c0:	00a00793          	li	a5,10
    800016c4:	06f70c63          	beq	a4,a5,8000173c <_Z9consumerAPv+0x84>
{
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	00913423          	sd	s1,8(sp)
    800016d8:	02010413          	addi	s0,sp,32
        sem_wait(itemAvailable);
    800016dc:	0000a497          	auipc	s1,0xa
    800016e0:	17448493          	addi	s1,s1,372 # 8000b850 <head>
    800016e4:	0084b503          	ld	a0,8(s1)
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	ce8080e7          	jalr	-792(ra) # 800013d0 <sem_wait>
        __putc(buffer[head++]);
    800016f0:	0004a783          	lw	a5,0(s1)
    800016f4:	0017871b          	addiw	a4,a5,1
    800016f8:	00e4a023          	sw	a4,0(s1)
    800016fc:	00f487b3          	add	a5,s1,a5
    80001700:	0107c503          	lbu	a0,16(a5)
    80001704:	00007097          	auipc	ra,0x7
    80001708:	9c8080e7          	jalr	-1592(ra) # 800080cc <__putc>
        sem_signal(spaceAvailable);
    8000170c:	0204b503          	ld	a0,32(s1)
    80001710:	00000097          	auipc	ra,0x0
    80001714:	cec080e7          	jalr	-788(ra) # 800013fc <sem_signal>
    while(head!=10){
    80001718:	0000a717          	auipc	a4,0xa
    8000171c:	13872703          	lw	a4,312(a4) # 8000b850 <head>
    80001720:	00a00793          	li	a5,10
    80001724:	faf71ce3          	bne	a4,a5,800016dc <_Z9consumerAPv+0x24>
    }
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	02010113          	addi	sp,sp,32
    80001738:	00008067          	ret
    8000173c:	00008067          	ret

0000000080001740 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10) {
    80001740:	0000a717          	auipc	a4,0xa
    80001744:	13872703          	lw	a4,312(a4) # 8000b878 <tail>
    80001748:	00a00793          	li	a5,10
    8000174c:	08f70063          	beq	a4,a5,800017cc <_Z9producerAPv+0x8c>
{
    80001750:	fe010113          	addi	sp,sp,-32
    80001754:	00113c23          	sd	ra,24(sp)
    80001758:	00813823          	sd	s0,16(sp)
    8000175c:	00913423          	sd	s1,8(sp)
    80001760:	02010413          	addi	s0,sp,32
        sem_wait(spaceAvailable);
    80001764:	0000a497          	auipc	s1,0xa
    80001768:	0ec48493          	addi	s1,s1,236 # 8000b850 <head>
    8000176c:	0204b503          	ld	a0,32(s1)
    80001770:	00000097          	auipc	ra,0x0
    80001774:	c60080e7          	jalr	-928(ra) # 800013d0 <sem_wait>
        buffer[tail] = string[tail];
    80001778:	0284a783          	lw	a5,40(s1)
    8000177c:	0000a717          	auipc	a4,0xa
    80001780:	ef470713          	addi	a4,a4,-268 # 8000b670 <string>
    80001784:	00f70733          	add	a4,a4,a5
    80001788:	00074683          	lbu	a3,0(a4)
    8000178c:	00f48733          	add	a4,s1,a5
    80001790:	00d70823          	sb	a3,16(a4)
        tail++;
    80001794:	0017879b          	addiw	a5,a5,1
    80001798:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    8000179c:	0084b503          	ld	a0,8(s1)
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	c5c080e7          	jalr	-932(ra) # 800013fc <sem_signal>
    while(tail!=10) {
    800017a8:	0000a717          	auipc	a4,0xa
    800017ac:	0d072703          	lw	a4,208(a4) # 8000b878 <tail>
    800017b0:	00a00793          	li	a5,10
    800017b4:	faf718e3          	bne	a4,a5,80001764 <_Z9producerAPv+0x24>
    }
}
    800017b8:	01813083          	ld	ra,24(sp)
    800017bc:	01013403          	ld	s0,16(sp)
    800017c0:	00813483          	ld	s1,8(sp)
    800017c4:	02010113          	addi	sp,sp,32
    800017c8:	00008067          	ret
    800017cc:	00008067          	ret

00000000800017d0 <_Z11threadTest1v>:
{
    800017d0:	fe010113          	addi	sp,sp,-32
    800017d4:	00113c23          	sd	ra,24(sp)
    800017d8:	00813823          	sd	s0,16(sp)
    800017dc:	00913423          	sd	s1,8(sp)
    800017e0:	01213023          	sd	s2,0(sp)
    800017e4:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    800017e8:	02000513          	li	a0,32
    800017ec:	00002097          	auipc	ra,0x2
    800017f0:	9f8080e7          	jalr	-1544(ra) # 800031e4 <_Znwm>
    800017f4:	00050493          	mv	s1,a0
    800017f8:	00000613          	li	a2,0
    800017fc:	00000597          	auipc	a1,0x0
    80001800:	c8458593          	addi	a1,a1,-892 # 80001480 <_Z15thread1FunctionPv>
    80001804:	00002097          	auipc	ra,0x2
    80001808:	b7c080e7          	jalr	-1156(ra) # 80003380 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000180c:	00048513          	mv	a0,s1
    80001810:	00002097          	auipc	ra,0x2
    80001814:	aa4080e7          	jalr	-1372(ra) # 800032b4 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001818:	02000513          	li	a0,32
    8000181c:	00002097          	auipc	ra,0x2
    80001820:	9c8080e7          	jalr	-1592(ra) # 800031e4 <_Znwm>
    80001824:	00050913          	mv	s2,a0
    80001828:	00000613          	li	a2,0
    8000182c:	00000597          	auipc	a1,0x0
    80001830:	cec58593          	addi	a1,a1,-788 # 80001518 <_Z15thread2FunctionPv>
    80001834:	00002097          	auipc	ra,0x2
    80001838:	b4c080e7          	jalr	-1204(ra) # 80003380 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000183c:	00090513          	mv	a0,s2
    80001840:	00002097          	auipc	ra,0x2
    80001844:	a74080e7          	jalr	-1420(ra) # 800032b4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001848:	00002097          	auipc	ra,0x2
    8000184c:	d58080e7          	jalr	-680(ra) # 800035a0 <_ZN5Riscv16enableInterruptsEv>
    80001850:	01c0006f          	j	8000186c <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    80001854:	00008517          	auipc	a0,0x8
    80001858:	81450513          	addi	a0,a0,-2028 # 80009068 <CONSOLE_STATUS+0x58>
    8000185c:	00002097          	auipc	ra,0x2
    80001860:	dcc080e7          	jalr	-564(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001864:	00000097          	auipc	ra,0x0
    80001868:	ac0080e7          	jalr	-1344(ra) # 80001324 <thread_dispatch>
    while(((PCB*)(t1->myHandle))->getState() != PCB::FINISHED || ((PCB*)(t2->myHandle))->getState()!= PCB::FINISHED)
    8000186c:	0084b783          	ld	a5,8(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80001870:	0387a703          	lw	a4,56(a5)
    80001874:	00300793          	li	a5,3
    80001878:	fcf71ee3          	bne	a4,a5,80001854 <_Z11threadTest1v+0x84>
    8000187c:	00893783          	ld	a5,8(s2)
    80001880:	0387a703          	lw	a4,56(a5)
    80001884:	00300793          	li	a5,3
    80001888:	fcf716e3          	bne	a4,a5,80001854 <_Z11threadTest1v+0x84>
    Riscv::printString("End...\n");
    8000188c:	00007517          	auipc	a0,0x7
    80001890:	7ec50513          	addi	a0,a0,2028 # 80009078 <CONSOLE_STATUS+0x68>
    80001894:	00002097          	auipc	ra,0x2
    80001898:	d94080e7          	jalr	-620(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	d24080e7          	jalr	-732(ra) # 800035c0 <_ZN5Riscv17disableInterruptsEv>
}
    800018a4:	01813083          	ld	ra,24(sp)
    800018a8:	01013403          	ld	s0,16(sp)
    800018ac:	00813483          	ld	s1,8(sp)
    800018b0:	00013903          	ld	s2,0(sp)
    800018b4:	02010113          	addi	sp,sp,32
    800018b8:	00008067          	ret
    800018bc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800018c0:	00048513          	mv	a0,s1
    800018c4:	00002097          	auipc	ra,0x2
    800018c8:	948080e7          	jalr	-1720(ra) # 8000320c <_ZdlPv>
    800018cc:	00090513          	mv	a0,s2
    800018d0:	0000b097          	auipc	ra,0xb
    800018d4:	118080e7          	jalr	280(ra) # 8000c9e8 <_Unwind_Resume>
    800018d8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800018dc:	00090513          	mv	a0,s2
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	92c080e7          	jalr	-1748(ra) # 8000320c <_ZdlPv>
    800018e8:	00048513          	mv	a0,s1
    800018ec:	0000b097          	auipc	ra,0xb
    800018f0:	0fc080e7          	jalr	252(ra) # 8000c9e8 <_Unwind_Resume>

00000000800018f4 <_Z11threadTest2v>:
{
    800018f4:	fe010113          	addi	sp,sp,-32
    800018f8:	00113c23          	sd	ra,24(sp)
    800018fc:	00813823          	sd	s0,16(sp)
    80001900:	00913423          	sd	s1,8(sp)
    80001904:	01213023          	sd	s2,0(sp)
    80001908:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    8000190c:	02000513          	li	a0,32
    80001910:	00002097          	auipc	ra,0x2
    80001914:	8d4080e7          	jalr	-1836(ra) # 800031e4 <_Znwm>
    80001918:	00050493          	mv	s1,a0
    8000191c:	00000613          	li	a2,0
    80001920:	00000597          	auipc	a1,0x0
    80001924:	b3458593          	addi	a1,a1,-1228 # 80001454 <_Z4idlePv>
    80001928:	00002097          	auipc	ra,0x2
    8000192c:	a58080e7          	jalr	-1448(ra) # 80003380 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001930:	00048513          	mv	a0,s1
    80001934:	00002097          	auipc	ra,0x2
    80001938:	980080e7          	jalr	-1664(ra) # 800032b4 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    8000193c:	02000513          	li	a0,32
    80001940:	00002097          	auipc	ra,0x2
    80001944:	8a4080e7          	jalr	-1884(ra) # 800031e4 <_Znwm>
    80001948:	00050913          	mv	s2,a0
    8000194c:	00000613          	li	a2,0
    80001950:	00000597          	auipc	a1,0x0
    80001954:	b3058593          	addi	a1,a1,-1232 # 80001480 <_Z15thread1FunctionPv>
    80001958:	00002097          	auipc	ra,0x2
    8000195c:	a28080e7          	jalr	-1496(ra) # 80003380 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001960:	00090513          	mv	a0,s2
    80001964:	00002097          	auipc	ra,0x2
    80001968:	950080e7          	jalr	-1712(ra) # 800032b4 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    8000196c:	02000513          	li	a0,32
    80001970:	00002097          	auipc	ra,0x2
    80001974:	874080e7          	jalr	-1932(ra) # 800031e4 <_Znwm>
    80001978:	00050913          	mv	s2,a0
    8000197c:	00000613          	li	a2,0
    80001980:	00000597          	auipc	a1,0x0
    80001984:	c8c58593          	addi	a1,a1,-884 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	9f8080e7          	jalr	-1544(ra) # 80003380 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001990:	00090513          	mv	a0,s2
    80001994:	00002097          	auipc	ra,0x2
    80001998:	920080e7          	jalr	-1760(ra) # 800032b4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000199c:	00002097          	auipc	ra,0x2
    800019a0:	c04080e7          	jalr	-1020(ra) # 800035a0 <_ZN5Riscv16enableInterruptsEv>
    while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);
    800019a4:	0084b783          	ld	a5,8(s1)
    800019a8:	0387a703          	lw	a4,56(a5)
    800019ac:	00300793          	li	a5,3
    800019b0:	fef71ae3          	bne	a4,a5,800019a4 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    800019b4:	00007517          	auipc	a0,0x7
    800019b8:	6c450513          	addi	a0,a0,1732 # 80009078 <CONSOLE_STATUS+0x68>
    800019bc:	00002097          	auipc	ra,0x2
    800019c0:	c6c080e7          	jalr	-916(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800019c4:	00002097          	auipc	ra,0x2
    800019c8:	bfc080e7          	jalr	-1028(ra) # 800035c0 <_ZN5Riscv17disableInterruptsEv>
}
    800019cc:	01813083          	ld	ra,24(sp)
    800019d0:	01013403          	ld	s0,16(sp)
    800019d4:	00813483          	ld	s1,8(sp)
    800019d8:	00013903          	ld	s2,0(sp)
    800019dc:	02010113          	addi	sp,sp,32
    800019e0:	00008067          	ret
    800019e4:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    800019e8:	00048513          	mv	a0,s1
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	820080e7          	jalr	-2016(ra) # 8000320c <_ZdlPv>
    800019f4:	00090513          	mv	a0,s2
    800019f8:	0000b097          	auipc	ra,0xb
    800019fc:	ff0080e7          	jalr	-16(ra) # 8000c9e8 <_Unwind_Resume>
    80001a00:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a04:	00090513          	mv	a0,s2
    80001a08:	00002097          	auipc	ra,0x2
    80001a0c:	804080e7          	jalr	-2044(ra) # 8000320c <_ZdlPv>
    80001a10:	00048513          	mv	a0,s1
    80001a14:	0000b097          	auipc	ra,0xb
    80001a18:	fd4080e7          	jalr	-44(ra) # 8000c9e8 <_Unwind_Resume>
    80001a1c:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a20:	00090513          	mv	a0,s2
    80001a24:	00001097          	auipc	ra,0x1
    80001a28:	7e8080e7          	jalr	2024(ra) # 8000320c <_ZdlPv>
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	0000b097          	auipc	ra,0xb
    80001a34:	fb8080e7          	jalr	-72(ra) # 8000c9e8 <_Unwind_Resume>

0000000080001a38 <_Z11threadTestsv>:
{
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00813423          	sd	s0,8(sp)
    80001a40:	01010413          	addi	s0,sp,16
}
    80001a44:	00813403          	ld	s0,8(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret

0000000080001a50 <_Z10mallocFreev>:
{
    80001a50:	cc010113          	addi	sp,sp,-832
    80001a54:	32113c23          	sd	ra,824(sp)
    80001a58:	32813823          	sd	s0,816(sp)
    80001a5c:	32913423          	sd	s1,808(sp)
    80001a60:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001a64:	00007517          	auipc	a0,0x7
    80001a68:	61c50513          	addi	a0,a0,1564 # 80009080 <CONSOLE_STATUS+0x70>
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	bbc080e7          	jalr	-1092(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001a74:	00000493          	li	s1,0
    80001a78:	0080006f          	j	80001a80 <_Z10mallocFreev+0x30>
    80001a7c:	0014849b          	addiw	s1,s1,1
    80001a80:	06300793          	li	a5,99
    80001a84:	0497c463          	blt	a5,s1,80001acc <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001a88:	06400513          	li	a0,100
    80001a8c:	fffff097          	auipc	ra,0xfffff
    80001a90:	7bc080e7          	jalr	1980(ra) # 80001248 <mem_alloc>
    80001a94:	00349793          	slli	a5,s1,0x3
    80001a98:	fe040713          	addi	a4,s0,-32
    80001a9c:	00f707b3          	add	a5,a4,a5
    80001aa0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001aa4:	fc051ce3          	bnez	a0,80001a7c <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001aa8:	00007517          	auipc	a0,0x7
    80001aac:	5e850513          	addi	a0,a0,1512 # 80009090 <CONSOLE_STATUS+0x80>
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	b78080e7          	jalr	-1160(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    80001ab8:	33813083          	ld	ra,824(sp)
    80001abc:	33013403          	ld	s0,816(sp)
    80001ac0:	32813483          	ld	s1,808(sp)
    80001ac4:	34010113          	addi	sp,sp,832
    80001ac8:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001acc:	00000493          	li	s1,0
    80001ad0:	06300793          	li	a5,99
    80001ad4:	0297ce63          	blt	a5,s1,80001b10 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001ad8:	00349793          	slli	a5,s1,0x3
    80001adc:	fe040713          	addi	a4,s0,-32
    80001ae0:	00f707b3          	add	a5,a4,a5
    80001ae4:	ce07b503          	ld	a0,-800(a5)
    80001ae8:	fffff097          	auipc	ra,0xfffff
    80001aec:	790080e7          	jalr	1936(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001af0:	00051663          	bnez	a0,80001afc <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001af4:	0024849b          	addiw	s1,s1,2
    80001af8:	fd9ff06f          	j	80001ad0 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001afc:	00007517          	auipc	a0,0x7
    80001b00:	59450513          	addi	a0,a0,1428 # 80009090 <CONSOLE_STATUS+0x80>
    80001b04:	00002097          	auipc	ra,0x2
    80001b08:	b24080e7          	jalr	-1244(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
            return;
    80001b0c:	fadff06f          	j	80001ab8 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001b10:	00000493          	li	s1,0
    80001b14:	0080006f          	j	80001b1c <_Z10mallocFreev+0xcc>
    80001b18:	0024849b          	addiw	s1,s1,2
    80001b1c:	06300793          	li	a5,99
    80001b20:	0297cc63          	blt	a5,s1,80001b58 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001b24:	01400513          	li	a0,20
    80001b28:	fffff097          	auipc	ra,0xfffff
    80001b2c:	720080e7          	jalr	1824(ra) # 80001248 <mem_alloc>
    80001b30:	00349793          	slli	a5,s1,0x3
    80001b34:	fe040713          	addi	a4,s0,-32
    80001b38:	00f707b3          	add	a5,a4,a5
    80001b3c:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b40:	fc051ce3          	bnez	a0,80001b18 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001b44:	00007517          	auipc	a0,0x7
    80001b48:	54c50513          	addi	a0,a0,1356 # 80009090 <CONSOLE_STATUS+0x80>
    80001b4c:	00002097          	auipc	ra,0x2
    80001b50:	adc080e7          	jalr	-1316(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
            return;
    80001b54:	f65ff06f          	j	80001ab8 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001b58:	00000493          	li	s1,0
    80001b5c:	06300793          	li	a5,99
    80001b60:	0297ce63          	blt	a5,s1,80001b9c <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001b64:	00349793          	slli	a5,s1,0x3
    80001b68:	fe040713          	addi	a4,s0,-32
    80001b6c:	00f707b3          	add	a5,a4,a5
    80001b70:	ce07b503          	ld	a0,-800(a5)
    80001b74:	fffff097          	auipc	ra,0xfffff
    80001b78:	704080e7          	jalr	1796(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001b7c:	00051663          	bnez	a0,80001b88 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001b80:	0014849b          	addiw	s1,s1,1
    80001b84:	fd9ff06f          	j	80001b5c <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001b88:	00007517          	auipc	a0,0x7
    80001b8c:	50850513          	addi	a0,a0,1288 # 80009090 <CONSOLE_STATUS+0x80>
    80001b90:	00002097          	auipc	ra,0x2
    80001b94:	a98080e7          	jalr	-1384(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
            return;
    80001b98:	f21ff06f          	j	80001ab8 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001b9c:	00007517          	auipc	a0,0x7
    80001ba0:	4fc50513          	addi	a0,a0,1276 # 80009098 <CONSOLE_STATUS+0x88>
    80001ba4:	00002097          	auipc	ra,0x2
    80001ba8:	a84080e7          	jalr	-1404(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    80001bac:	f0dff06f          	j	80001ab8 <_Z10mallocFreev+0x68>

0000000080001bb0 <_Z9bigMallocv>:
{
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00113423          	sd	ra,8(sp)
    80001bb8:	00813023          	sd	s0,0(sp)
    80001bbc:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001bc0:	00007517          	auipc	a0,0x7
    80001bc4:	4e050513          	addi	a0,a0,1248 # 800090a0 <CONSOLE_STATUS+0x90>
    80001bc8:	00002097          	auipc	ra,0x2
    80001bcc:	a60080e7          	jalr	-1440(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001bd0:	0000a797          	auipc	a5,0xa
    80001bd4:	c307b783          	ld	a5,-976(a5) # 8000b800 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bd8:	0007b503          	ld	a0,0(a5)
    80001bdc:	0000a797          	auipc	a5,0xa
    80001be0:	bfc7b783          	ld	a5,-1028(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001be4:	0007b783          	ld	a5,0(a5)
    80001be8:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001bec:	06450513          	addi	a0,a0,100
    80001bf0:	fffff097          	auipc	ra,0xfffff
    80001bf4:	658080e7          	jalr	1624(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001bf8:	02050263          	beqz	a0,80001c1c <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001bfc:	00007517          	auipc	a0,0x7
    80001c00:	49450513          	addi	a0,a0,1172 # 80009090 <CONSOLE_STATUS+0x80>
    80001c04:	00002097          	auipc	ra,0x2
    80001c08:	a24080e7          	jalr	-1500(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    80001c0c:	00813083          	ld	ra,8(sp)
    80001c10:	00013403          	ld	s0,0(sp)
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret
        Riscv::printString("OK\n");
    80001c1c:	00007517          	auipc	a0,0x7
    80001c20:	47c50513          	addi	a0,a0,1148 # 80009098 <CONSOLE_STATUS+0x88>
    80001c24:	00002097          	auipc	ra,0x2
    80001c28:	a04080e7          	jalr	-1532(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    80001c2c:	fe1ff06f          	j	80001c0c <_Z9bigMallocv+0x5c>

0000000080001c30 <_Z17lotOfSmallMallocsv>:
{
    80001c30:	fd010113          	addi	sp,sp,-48
    80001c34:	02113423          	sd	ra,40(sp)
    80001c38:	02813023          	sd	s0,32(sp)
    80001c3c:	00913c23          	sd	s1,24(sp)
    80001c40:	01213823          	sd	s2,16(sp)
    80001c44:	01313423          	sd	s3,8(sp)
    80001c48:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001c4c:	00007517          	auipc	a0,0x7
    80001c50:	46450513          	addi	a0,a0,1124 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001c54:	00002097          	auipc	ra,0x2
    80001c58:	9d4080e7          	jalr	-1580(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001c5c:	00000493          	li	s1,0
    uint64 sum = 0;
    80001c60:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001c64:	00000913          	li	s2,0
    80001c68:	0180006f          	j	80001c80 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001c6c:	00a00793          	li	a5,10
    80001c70:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001c74:	00a98993          	addi	s3,s3,10
        cnt++;
    80001c78:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001c7c:	00148493          	addi	s1,s1,1
    80001c80:	000027b7          	lui	a5,0x2
    80001c84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001c88:	0097ea63          	bltu	a5,s1,80001c9c <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001c8c:	00800513          	li	a0,8
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	5b8080e7          	jalr	1464(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001c98:	fc051ae3          	bnez	a0,80001c6c <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001c9c:	00090513          	mv	a0,s2
    80001ca0:	00002097          	auipc	ra,0x2
    80001ca4:	9f8080e7          	jalr	-1544(ra) # 80003698 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001ca8:	00007517          	auipc	a0,0x7
    80001cac:	46850513          	addi	a0,a0,1128 # 80009110 <CONSOLE_STATUS+0x100>
    80001cb0:	00002097          	auipc	ra,0x2
    80001cb4:	978080e7          	jalr	-1672(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001cb8:	00291793          	slli	a5,s2,0x2
    80001cbc:	01278933          	add	s2,a5,s2
    80001cc0:	00191913          	slli	s2,s2,0x1
    80001cc4:	03390863          	beq	s2,s3,80001cf4 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001cc8:	00007517          	auipc	a0,0x7
    80001ccc:	3c850513          	addi	a0,a0,968 # 80009090 <CONSOLE_STATUS+0x80>
    80001cd0:	00002097          	auipc	ra,0x2
    80001cd4:	958080e7          	jalr	-1704(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    80001cd8:	02813083          	ld	ra,40(sp)
    80001cdc:	02013403          	ld	s0,32(sp)
    80001ce0:	01813483          	ld	s1,24(sp)
    80001ce4:	01013903          	ld	s2,16(sp)
    80001ce8:	00813983          	ld	s3,8(sp)
    80001cec:	03010113          	addi	sp,sp,48
    80001cf0:	00008067          	ret
        Riscv::printString("OK\n");
    80001cf4:	00007517          	auipc	a0,0x7
    80001cf8:	3a450513          	addi	a0,a0,932 # 80009098 <CONSOLE_STATUS+0x88>
    80001cfc:	00002097          	auipc	ra,0x2
    80001d00:	92c080e7          	jalr	-1748(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    80001d04:	fd5ff06f          	j	80001cd8 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001d08 <_Z7badFreev>:
{
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001d18:	00007517          	auipc	a0,0x7
    80001d1c:	3b050513          	addi	a0,a0,944 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001d20:	00002097          	auipc	ra,0x2
    80001d24:	908080e7          	jalr	-1784(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d28:	00800513          	li	a0,8
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	51c080e7          	jalr	1308(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001d34:	00250513          	addi	a0,a0,2
    80001d38:	fffff097          	auipc	ra,0xfffff
    80001d3c:	540080e7          	jalr	1344(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001d40:	02051263          	bnez	a0,80001d64 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001d44:	00007517          	auipc	a0,0x7
    80001d48:	34c50513          	addi	a0,a0,844 # 80009090 <CONSOLE_STATUS+0x80>
    80001d4c:	00002097          	auipc	ra,0x2
    80001d50:	8dc080e7          	jalr	-1828(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    80001d54:	00813083          	ld	ra,8(sp)
    80001d58:	00013403          	ld	s0,0(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret
        Riscv::printString("OK\n");
    80001d64:	00007517          	auipc	a0,0x7
    80001d68:	33450513          	addi	a0,a0,820 # 80009098 <CONSOLE_STATUS+0x88>
    80001d6c:	00002097          	auipc	ra,0x2
    80001d70:	8bc080e7          	jalr	-1860(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    80001d74:	fe1ff06f          	j	80001d54 <_Z7badFreev+0x4c>

0000000080001d78 <_Z13stressTestingv>:
{
    80001d78:	cc010113          	addi	sp,sp,-832
    80001d7c:	32113c23          	sd	ra,824(sp)
    80001d80:	32813823          	sd	s0,816(sp)
    80001d84:	32913423          	sd	s1,808(sp)
    80001d88:	33213023          	sd	s2,800(sp)
    80001d8c:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001d90:	00007517          	auipc	a0,0x7
    80001d94:	34850513          	addi	a0,a0,840 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001d98:	00002097          	auipc	ra,0x2
    80001d9c:	890080e7          	jalr	-1904(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001da0:	00000493          	li	s1,0
    80001da4:	0080006f          	j	80001dac <_Z13stressTestingv+0x34>
    80001da8:	0014849b          	addiw	s1,s1,1
    80001dac:	06300793          	li	a5,99
    80001db0:	0497c663          	blt	a5,s1,80001dfc <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001db4:	00100513          	li	a0,1
    80001db8:	fffff097          	auipc	ra,0xfffff
    80001dbc:	490080e7          	jalr	1168(ra) # 80001248 <mem_alloc>
    80001dc0:	00349793          	slli	a5,s1,0x3
    80001dc4:	fe040713          	addi	a4,s0,-32
    80001dc8:	00f707b3          	add	a5,a4,a5
    80001dcc:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001dd0:	fc051ce3          	bnez	a0,80001da8 <_Z13stressTestingv+0x30>
            Riscv::printString("not OK\n");
    80001dd4:	00007517          	auipc	a0,0x7
    80001dd8:	2bc50513          	addi	a0,a0,700 # 80009090 <CONSOLE_STATUS+0x80>
    80001ddc:	00002097          	auipc	ra,0x2
    80001de0:	84c080e7          	jalr	-1972(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    80001de4:	33813083          	ld	ra,824(sp)
    80001de8:	33013403          	ld	s0,816(sp)
    80001dec:	32813483          	ld	s1,808(sp)
    80001df0:	32013903          	ld	s2,800(sp)
    80001df4:	34010113          	addi	sp,sp,832
    80001df8:	00008067          	ret
    int sz = 300;
    80001dfc:	12c00913          	li	s2,300
    while(sz > 0)
    80001e00:	11205263          	blez	s2,80001f04 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001e04:	00000493          	li	s1,0
    80001e08:	06300793          	li	a5,99
    80001e0c:	0697cc63          	blt	a5,s1,80001e84 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001e10:	00349793          	slli	a5,s1,0x3
    80001e14:	fe040713          	addi	a4,s0,-32
    80001e18:	00f707b3          	add	a5,a4,a5
    80001e1c:	ce07b503          	ld	a0,-800(a5)
    80001e20:	fffff097          	auipc	ra,0xfffff
    80001e24:	458080e7          	jalr	1112(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001e28:	02051a63          	bnez	a0,80001e5c <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001e2c:	01f9551b          	srliw	a0,s2,0x1f
    80001e30:	0125053b          	addw	a0,a0,s2
    80001e34:	4015551b          	sraiw	a0,a0,0x1
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	410080e7          	jalr	1040(ra) # 80001248 <mem_alloc>
    80001e40:	00349793          	slli	a5,s1,0x3
    80001e44:	fe040713          	addi	a4,s0,-32
    80001e48:	00f707b3          	add	a5,a4,a5
    80001e4c:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001e50:	02050063          	beqz	a0,80001e70 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001e54:	0024849b          	addiw	s1,s1,2
    80001e58:	fb1ff06f          	j	80001e08 <_Z13stressTestingv+0x90>
                Riscv::printString("not OK\n");
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	23450513          	addi	a0,a0,564 # 80009090 <CONSOLE_STATUS+0x80>
    80001e64:	00001097          	auipc	ra,0x1
    80001e68:	7c4080e7          	jalr	1988(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
                return;
    80001e6c:	f79ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001e70:	00007517          	auipc	a0,0x7
    80001e74:	27850513          	addi	a0,a0,632 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001e78:	00001097          	auipc	ra,0x1
    80001e7c:	7b0080e7          	jalr	1968(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
                return;
    80001e80:	f65ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001e84:	00100493          	li	s1,1
    80001e88:	06300793          	li	a5,99
    80001e8c:	0697c863          	blt	a5,s1,80001efc <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001e90:	00349793          	slli	a5,s1,0x3
    80001e94:	fe040713          	addi	a4,s0,-32
    80001e98:	00f707b3          	add	a5,a4,a5
    80001e9c:	ce07b503          	ld	a0,-800(a5)
    80001ea0:	fffff097          	auipc	ra,0xfffff
    80001ea4:	3d8080e7          	jalr	984(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001ea8:	02051663          	bnez	a0,80001ed4 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001eac:	00090513          	mv	a0,s2
    80001eb0:	fffff097          	auipc	ra,0xfffff
    80001eb4:	398080e7          	jalr	920(ra) # 80001248 <mem_alloc>
    80001eb8:	00349793          	slli	a5,s1,0x3
    80001ebc:	fe040713          	addi	a4,s0,-32
    80001ec0:	00f707b3          	add	a5,a4,a5
    80001ec4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001ec8:	02050063          	beqz	a0,80001ee8 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001ecc:	0024849b          	addiw	s1,s1,2
    80001ed0:	fb9ff06f          	j	80001e88 <_Z13stressTestingv+0x110>
                Riscv::printString("not OK\n");
    80001ed4:	00007517          	auipc	a0,0x7
    80001ed8:	1bc50513          	addi	a0,a0,444 # 80009090 <CONSOLE_STATUS+0x80>
    80001edc:	00001097          	auipc	ra,0x1
    80001ee0:	74c080e7          	jalr	1868(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
                return;
    80001ee4:	f01ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001ee8:	00007517          	auipc	a0,0x7
    80001eec:	20050513          	addi	a0,a0,512 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	738080e7          	jalr	1848(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
                return;
    80001ef8:	eedff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001efc:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001f00:	f01ff06f          	j	80001e00 <_Z13stressTestingv+0x88>
    Riscv::printString("OK\n");
    80001f04:	00007517          	auipc	a0,0x7
    80001f08:	19450513          	addi	a0,a0,404 # 80009098 <CONSOLE_STATUS+0x88>
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	71c080e7          	jalr	1820(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    80001f14:	ed1ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>

0000000080001f18 <_Z21memoryAllocationTestsv>:
{
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00813423          	sd	s0,8(sp)
    80001f20:	01010413          	addi	s0,sp,16
}
    80001f24:	00813403          	ld	s0,8(sp)
    80001f28:	01010113          	addi	sp,sp,16
    80001f2c:	00008067          	ret

0000000080001f30 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001f30:	fe010113          	addi	sp,sp,-32
    80001f34:	00113c23          	sd	ra,24(sp)
    80001f38:	00813823          	sd	s0,16(sp)
    80001f3c:	00913423          	sd	s1,8(sp)
    80001f40:	02010413          	addi	s0,sp,32
    80001f44:	00050493          	mv	s1,a0
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	590080e7          	jalr	1424(ra) # 800034d8 <_ZN14PeriodicThreadC1Em>
    80001f50:	00009797          	auipc	a5,0x9
    80001f54:	77078793          	addi	a5,a5,1904 # 8000b6c0 <_ZTV12TestPeriodic+0x10>
    80001f58:	00f4b023          	sd	a5,0(s1)
}
    80001f5c:	01813083          	ld	ra,24(sp)
    80001f60:	01013403          	ld	s0,16(sp)
    80001f64:	00813483          	ld	s1,8(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret

0000000080001f70 <_Z11threadTest3v>:
{
    80001f70:	fe010113          	addi	sp,sp,-32
    80001f74:	00113c23          	sd	ra,24(sp)
    80001f78:	00813823          	sd	s0,16(sp)
    80001f7c:	00913423          	sd	s1,8(sp)
    80001f80:	01213023          	sd	s2,0(sp)
    80001f84:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80001f88:	02800513          	li	a0,40
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	258080e7          	jalr	600(ra) # 800031e4 <_Znwm>
    80001f94:	00050913          	mv	s2,a0
    80001f98:	03200593          	li	a1,50
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	f94080e7          	jalr	-108(ra) # 80001f30 <_ZN12TestPeriodicC1Em>
    t->start();
    80001fa4:	00090513          	mv	a0,s2
    80001fa8:	00001097          	auipc	ra,0x1
    80001fac:	30c080e7          	jalr	780(ra) # 800032b4 <_ZN6Thread5startEv>
    while(true)
    80001fb0:	0000006f          	j	80001fb0 <_Z11threadTest3v+0x40>
    80001fb4:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001fb8:	00090513          	mv	a0,s2
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	250080e7          	jalr	592(ra) # 8000320c <_ZdlPv>
    80001fc4:	00048513          	mv	a0,s1
    80001fc8:	0000b097          	auipc	ra,0xb
    80001fcc:	a20080e7          	jalr	-1504(ra) # 8000c9e8 <_Unwind_Resume>

0000000080001fd0 <_Z10mallocTestv>:
{
    80001fd0:	fc010113          	addi	sp,sp,-64
    80001fd4:	02113c23          	sd	ra,56(sp)
    80001fd8:	02813823          	sd	s0,48(sp)
    80001fdc:	02913423          	sd	s1,40(sp)
    80001fe0:	03213023          	sd	s2,32(sp)
    80001fe4:	01313c23          	sd	s3,24(sp)
    80001fe8:	01413823          	sd	s4,16(sp)
    80001fec:	01513423          	sd	s5,8(sp)
    80001ff0:	01613023          	sd	s6,0(sp)
    80001ff4:	04010413          	addi	s0,sp,64
    Riscv::printString("Testing a few mallocs and frees\n\n");
    80001ff8:	00007517          	auipc	a0,0x7
    80001ffc:	0f850513          	addi	a0,a0,248 # 800090f0 <CONSOLE_STATUS+0xe0>
    80002000:	00001097          	auipc	ra,0x1
    80002004:	628080e7          	jalr	1576(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    80002008:	02c00513          	li	a0,44
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	1d8080e7          	jalr	472(ra) # 800031e4 <_Znwm>
    80002014:	00050493          	mv	s1,a0
    o->a = 3;
    80002018:	00300793          	li	a5,3
    8000201c:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80002020:	00a00513          	li	a0,10
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	224080e7          	jalr	548(ra) # 80001248 <mem_alloc>
    8000202c:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80002030:	06400513          	li	a0,100
    80002034:	fffff097          	auipc	ra,0xfffff
    80002038:	214080e7          	jalr	532(ra) # 80001248 <mem_alloc>
    8000203c:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80002040:	3e800513          	li	a0,1000
    80002044:	fffff097          	auipc	ra,0xfffff
    80002048:	204080e7          	jalr	516(ra) # 80001248 <mem_alloc>
    8000204c:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80002050:	00002537          	lui	a0,0x2
    80002054:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    80002058:	fffff097          	auipc	ra,0xfffff
    8000205c:	1f0080e7          	jalr	496(ra) # 80001248 <mem_alloc>
    80002060:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80002064:	00100513          	li	a0,1
    80002068:	fffff097          	auipc	ra,0xfffff
    8000206c:	1e0080e7          	jalr	480(ra) # 80001248 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80002070:	06090c63          	beqz	s2,800020e8 <_Z10mallocTestv+0x118>
    80002074:	00050b13          	mv	s6,a0
    80002078:	06098863          	beqz	s3,800020e8 <_Z10mallocTestv+0x118>
    8000207c:	060a0663          	beqz	s4,800020e8 <_Z10mallocTestv+0x118>
    80002080:	060a8463          	beqz	s5,800020e8 <_Z10mallocTestv+0x118>
    80002084:	06050263          	beqz	a0,800020e8 <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    80002088:	00090513          	mv	a0,s2
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	180080e7          	jalr	384(ra) # 8000320c <_ZdlPv>
    delete (uint64*)m3;
    80002094:	000a0513          	mv	a0,s4
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	174080e7          	jalr	372(ra) # 8000320c <_ZdlPv>
    delete (uint64*)m4;
    800020a0:	000a8513          	mv	a0,s5
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	168080e7          	jalr	360(ra) # 8000320c <_ZdlPv>
    delete (uint64*)m2;
    800020ac:	00098513          	mv	a0,s3
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	15c080e7          	jalr	348(ra) # 8000320c <_ZdlPv>
    delete (uint64*)m5;
    800020b8:	000b0513          	mv	a0,s6
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	150080e7          	jalr	336(ra) # 8000320c <_ZdlPv>
    delete o;
    800020c4:	00048863          	beqz	s1,800020d4 <_Z10mallocTestv+0x104>
    800020c8:	00048513          	mv	a0,s1
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	140080e7          	jalr	320(ra) # 8000320c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800020d4:	00007517          	auipc	a0,0x7
    800020d8:	04450513          	addi	a0,a0,68 # 80009118 <CONSOLE_STATUS+0x108>
    800020dc:	00001097          	auipc	ra,0x1
    800020e0:	54c080e7          	jalr	1356(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    800020e4:	0140006f          	j	800020f8 <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    800020e8:	00007517          	auipc	a0,0x7
    800020ec:	fa850513          	addi	a0,a0,-88 # 80009090 <CONSOLE_STATUS+0x80>
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	538080e7          	jalr	1336(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    800020f8:	03813083          	ld	ra,56(sp)
    800020fc:	03013403          	ld	s0,48(sp)
    80002100:	02813483          	ld	s1,40(sp)
    80002104:	02013903          	ld	s2,32(sp)
    80002108:	01813983          	ld	s3,24(sp)
    8000210c:	01013a03          	ld	s4,16(sp)
    80002110:	00813a83          	ld	s5,8(sp)
    80002114:	00013b03          	ld	s6,0(sp)
    80002118:	04010113          	addi	sp,sp,64
    8000211c:	00008067          	ret

0000000080002120 <_Z16mallocEverythingv>:
{
    80002120:	fe010113          	addi	sp,sp,-32
    80002124:	00113c23          	sd	ra,24(sp)
    80002128:	00813823          	sd	s0,16(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	02010413          	addi	s0,sp,32
    Riscv::printString("Testing allocating whole address space\n\n");
    80002134:	00007517          	auipc	a0,0x7
    80002138:	01450513          	addi	a0,a0,20 # 80009148 <CONSOLE_STATUS+0x138>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	4ec080e7          	jalr	1260(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    80002144:	00009797          	auipc	a5,0x9
    80002148:	6947b783          	ld	a5,1684(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000214c:	0007b503          	ld	a0,0(a5)
    80002150:	00009797          	auipc	a5,0x9
    80002154:	6b07b783          	ld	a5,1712(a5) # 8000b800 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002158:	0007b783          	ld	a5,0(a5)
    8000215c:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    80002160:	ff050513          	addi	a0,a0,-16
    80002164:	fffff097          	auipc	ra,0xfffff
    80002168:	0e4080e7          	jalr	228(ra) # 80001248 <mem_alloc>
    if(m!=nullptr){
    8000216c:	02050463          	beqz	a0,80002194 <_Z16mallocEverythingv+0x74>
        Riscv::printString("not OK\n");
    80002170:	00007517          	auipc	a0,0x7
    80002174:	f2050513          	addi	a0,a0,-224 # 80009090 <CONSOLE_STATUS+0x80>
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	4b0080e7          	jalr	1200(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    80002180:	01813083          	ld	ra,24(sp)
    80002184:	01013403          	ld	s0,16(sp)
    80002188:	00813483          	ld	s1,8(sp)
    8000218c:	02010113          	addi	sp,sp,32
    80002190:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002194:	00009797          	auipc	a5,0x9
    80002198:	66c7b783          	ld	a5,1644(a5) # 8000b800 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000219c:	0007b503          	ld	a0,0(a5)
    800021a0:	00009797          	auipc	a5,0x9
    800021a4:	6387b783          	ld	a5,1592(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800021a8:	0007b783          	ld	a5,0(a5)
    800021ac:	40f50533          	sub	a0,a0,a5
    800021b0:	ff050513          	addi	a0,a0,-16
    800021b4:	00655513          	srli	a0,a0,0x6
    800021b8:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    800021bc:	00651513          	slli	a0,a0,0x6
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	088080e7          	jalr	136(ra) # 80001248 <mem_alloc>
    800021c8:	00050493          	mv	s1,a0
    if(m==nullptr){
    800021cc:	02050a63          	beqz	a0,80002200 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    800021d0:	00100513          	li	a0,1
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	074080e7          	jalr	116(ra) # 80001248 <mem_alloc>
    if(small_chunk == nullptr){
    800021dc:	02050c63          	beqz	a0,80002214 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    800021e0:	00048513          	mv	a0,s1
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	028080e7          	jalr	40(ra) # 8000320c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800021ec:	00007517          	auipc	a0,0x7
    800021f0:	f8c50513          	addi	a0,a0,-116 # 80009178 <CONSOLE_STATUS+0x168>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	434080e7          	jalr	1076(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    800021fc:	f85ff06f          	j	80002180 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    80002200:	00007517          	auipc	a0,0x7
    80002204:	e9050513          	addi	a0,a0,-368 # 80009090 <CONSOLE_STATUS+0x80>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	420080e7          	jalr	1056(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        return;
    80002210:	f71ff06f          	j	80002180 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    80002214:	00007517          	auipc	a0,0x7
    80002218:	e7c50513          	addi	a0,a0,-388 # 80009090 <CONSOLE_STATUS+0x80>
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	40c080e7          	jalr	1036(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        return;
    80002224:	f5dff06f          	j	80002180 <_Z16mallocEverythingv+0x60>

0000000080002228 <_Z17mallocGapFillTestv>:
{
    80002228:	f6010113          	addi	sp,sp,-160
    8000222c:	08113c23          	sd	ra,152(sp)
    80002230:	08813823          	sd	s0,144(sp)
    80002234:	08913423          	sd	s1,136(sp)
    80002238:	09213023          	sd	s2,128(sp)
    8000223c:	07313c23          	sd	s3,120(sp)
    80002240:	07413823          	sd	s4,112(sp)
    80002244:	07513423          	sd	s5,104(sp)
    80002248:	07613023          	sd	s6,96(sp)
    8000224c:	05713c23          	sd	s7,88(sp)
    80002250:	05813823          	sd	s8,80(sp)
    80002254:	0a010413          	addi	s0,sp,160
    Riscv::printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002258:	00007517          	auipc	a0,0x7
    8000225c:	f5850513          	addi	a0,a0,-168 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002260:	00001097          	auipc	ra,0x1
    80002264:	3c8080e7          	jalr	968(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    for(int i=0;i<N;i++)
    80002268:	00000493          	li	s1,0
    8000226c:	00900793          	li	a5,9
    80002270:	0697c863          	blt	a5,s1,800022e0 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    80002274:	0064951b          	slliw	a0,s1,0x6
    80002278:	0015051b          	addiw	a0,a0,1
    8000227c:	fffff097          	auipc	ra,0xfffff
    80002280:	fcc080e7          	jalr	-52(ra) # 80001248 <mem_alloc>
    80002284:	00349793          	slli	a5,s1,0x3
    80002288:	fb040713          	addi	a4,s0,-80
    8000228c:	00f707b3          	add	a5,a4,a5
    80002290:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80002294:	00050663          	beqz	a0,800022a0 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    80002298:	0014849b          	addiw	s1,s1,1
    8000229c:	fd1ff06f          	j	8000226c <_Z17mallocGapFillTestv+0x44>
            Riscv::printString("not OK\n");
    800022a0:	00007517          	auipc	a0,0x7
    800022a4:	df050513          	addi	a0,a0,-528 # 80009090 <CONSOLE_STATUS+0x80>
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	380080e7          	jalr	896(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    800022b0:	09813083          	ld	ra,152(sp)
    800022b4:	09013403          	ld	s0,144(sp)
    800022b8:	08813483          	ld	s1,136(sp)
    800022bc:	08013903          	ld	s2,128(sp)
    800022c0:	07813983          	ld	s3,120(sp)
    800022c4:	07013a03          	ld	s4,112(sp)
    800022c8:	06813a83          	ld	s5,104(sp)
    800022cc:	06013b03          	ld	s6,96(sp)
    800022d0:	05813b83          	ld	s7,88(sp)
    800022d4:	05013c03          	ld	s8,80(sp)
    800022d8:	0a010113          	addi	sp,sp,160
    800022dc:	00008067          	ret
    delete (uint64*)m[2];
    800022e0:	f7043503          	ld	a0,-144(s0)
    800022e4:	00050663          	beqz	a0,800022f0 <_Z17mallocGapFillTestv+0xc8>
    800022e8:	00001097          	auipc	ra,0x1
    800022ec:	f24080e7          	jalr	-220(ra) # 8000320c <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    800022f0:	00100513          	li	a0,1
    800022f4:	fffff097          	auipc	ra,0xfffff
    800022f8:	f54080e7          	jalr	-172(ra) # 80001248 <mem_alloc>
    800022fc:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80002300:	00100513          	li	a0,1
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	f44080e7          	jalr	-188(ra) # 80001248 <mem_alloc>
    8000230c:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002310:	00100513          	li	a0,1
    80002314:	fffff097          	auipc	ra,0xfffff
    80002318:	f34080e7          	jalr	-204(ra) # 80001248 <mem_alloc>
    8000231c:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002320:	08048863          	beqz	s1,800023b0 <_Z17mallocGapFillTestv+0x188>
    80002324:	08090663          	beqz	s2,800023b0 <_Z17mallocGapFillTestv+0x188>
    80002328:	08050463          	beqz	a0,800023b0 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    8000232c:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002330:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    80002334:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002338:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    8000233c:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002340:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    80002344:	0897f063          	bgeu	a5,s1,800023c4 <_Z17mallocGapFillTestv+0x19c>
    80002348:	06a4fe63          	bgeu	s1,a0,800023c4 <_Z17mallocGapFillTestv+0x19c>
    8000234c:	0727fc63          	bgeu	a5,s2,800023c4 <_Z17mallocGapFillTestv+0x19c>
    80002350:	06a97a63          	bgeu	s2,a0,800023c4 <_Z17mallocGapFillTestv+0x19c>
    80002354:	07367863          	bgeu	a2,s3,800023c4 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    80002358:	00050663          	beqz	a0,80002364 <_Z17mallocGapFillTestv+0x13c>
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	eb0080e7          	jalr	-336(ra) # 8000320c <_ZdlPv>
    delete (uint64*)m[4];
    80002364:	f8043503          	ld	a0,-128(s0)
    80002368:	00050663          	beqz	a0,80002374 <_Z17mallocGapFillTestv+0x14c>
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	ea0080e7          	jalr	-352(ra) # 8000320c <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    80002374:	28000513          	li	a0,640
    80002378:	fffff097          	auipc	ra,0xfffff
    8000237c:	ed0080e7          	jalr	-304(ra) # 80001248 <mem_alloc>
    80002380:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    80002384:	24000513          	li	a0,576
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	ec0080e7          	jalr	-320(ra) # 80001248 <mem_alloc>
    80002390:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    80002394:	040c0263          	beqz	s8,800023d8 <_Z17mallocGapFillTestv+0x1b0>
    80002398:	04050063          	beqz	a0,800023d8 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    8000239c:	04aa7863          	bgeu	s4,a0,800023ec <_Z17mallocGapFillTestv+0x1c4>
    800023a0:	04ab7663          	bgeu	s6,a0,800023ec <_Z17mallocGapFillTestv+0x1c4>
    800023a4:	055c7463          	bgeu	s8,s5,800023ec <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    800023a8:	00000a13          	li	s4,0
    800023ac:	0580006f          	j	80002404 <_Z17mallocGapFillTestv+0x1dc>
        Riscv::printString("not OK\n");
    800023b0:	00007517          	auipc	a0,0x7
    800023b4:	ce050513          	addi	a0,a0,-800 # 80009090 <CONSOLE_STATUS+0x80>
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	270080e7          	jalr	624(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        return;
    800023c0:	ef1ff06f          	j	800022b0 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023c4:	00007517          	auipc	a0,0x7
    800023c8:	ccc50513          	addi	a0,a0,-820 # 80009090 <CONSOLE_STATUS+0x80>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	25c080e7          	jalr	604(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        return;
    800023d4:	eddff06f          	j	800022b0 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023d8:	00007517          	auipc	a0,0x7
    800023dc:	cb850513          	addi	a0,a0,-840 # 80009090 <CONSOLE_STATUS+0x80>
    800023e0:	00001097          	auipc	ra,0x1
    800023e4:	248080e7          	jalr	584(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        return;
    800023e8:	ec9ff06f          	j	800022b0 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023ec:	00007517          	auipc	a0,0x7
    800023f0:	ca450513          	addi	a0,a0,-860 # 80009090 <CONSOLE_STATUS+0x80>
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	234080e7          	jalr	564(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        return;
    800023fc:	eb5ff06f          	j	800022b0 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    80002400:	001a0a1b          	addiw	s4,s4,1
    80002404:	00900793          	li	a5,9
    80002408:	0347c263          	blt	a5,s4,8000242c <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    8000240c:	003a1793          	slli	a5,s4,0x3
    80002410:	fb040713          	addi	a4,s0,-80
    80002414:	00f707b3          	add	a5,a4,a5
    80002418:	fb07b503          	ld	a0,-80(a5)
    8000241c:	fe0502e3          	beqz	a0,80002400 <_Z17mallocGapFillTestv+0x1d8>
    80002420:	00001097          	auipc	ra,0x1
    80002424:	dec080e7          	jalr	-532(ra) # 8000320c <_ZdlPv>
    80002428:	fd9ff06f          	j	80002400 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    8000242c:	00048513          	mv	a0,s1
    80002430:	00001097          	auipc	ra,0x1
    80002434:	ddc080e7          	jalr	-548(ra) # 8000320c <_ZdlPv>
    delete (uint64*)tmp2;
    80002438:	00090513          	mv	a0,s2
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	dd0080e7          	jalr	-560(ra) # 8000320c <_ZdlPv>
    delete (uint64*)tmp3;
    80002444:	00098513          	mv	a0,s3
    80002448:	00001097          	auipc	ra,0x1
    8000244c:	dc4080e7          	jalr	-572(ra) # 8000320c <_ZdlPv>
    delete (uint64*)tmp4;
    80002450:	000c0513          	mv	a0,s8
    80002454:	00001097          	auipc	ra,0x1
    80002458:	db8080e7          	jalr	-584(ra) # 8000320c <_ZdlPv>
    delete (uint64*)tmp5;
    8000245c:	000b8513          	mv	a0,s7
    80002460:	00001097          	auipc	ra,0x1
    80002464:	dac080e7          	jalr	-596(ra) # 8000320c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002468:	00007517          	auipc	a0,0x7
    8000246c:	d9050513          	addi	a0,a0,-624 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80002470:	00001097          	auipc	ra,0x1
    80002474:	1b8080e7          	jalr	440(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    80002478:	e39ff06f          	j	800022b0 <_Z17mallocGapFillTestv+0x88>

000000008000247c <_Z8semTest1v>:

void semTest1()
{
    8000247c:	fe010113          	addi	sp,sp,-32
    80002480:	00113c23          	sd	ra,24(sp)
    80002484:	00813823          	sd	s0,16(sp)
    80002488:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    8000248c:	00a00593          	li	a1,10
    80002490:	00009517          	auipc	a0,0x9
    80002494:	3e050513          	addi	a0,a0,992 # 8000b870 <spaceAvailable>
    80002498:	fffff097          	auipc	ra,0xfffff
    8000249c:	ed4080e7          	jalr	-300(ra) # 8000136c <sem_open>

    sem_open(&itemAvailable, 0);
    800024a0:	00000593          	li	a1,0
    800024a4:	00009517          	auipc	a0,0x9
    800024a8:	3b450513          	addi	a0,a0,948 # 8000b858 <itemAvailable>
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	ec0080e7          	jalr	-320(ra) # 8000136c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    800024b4:	00000613          	li	a2,0
    800024b8:	fffff597          	auipc	a1,0xfffff
    800024bc:	28858593          	addi	a1,a1,648 # 80001740 <_Z9producerAPv>
    800024c0:	fe840513          	addi	a0,s0,-24
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	de0080e7          	jalr	-544(ra) # 800012a4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    800024cc:	00000613          	li	a2,0
    800024d0:	fffff597          	auipc	a1,0xfffff
    800024d4:	1e858593          	addi	a1,a1,488 # 800016b8 <_Z9consumerAPv>
    800024d8:	fe040513          	addi	a0,s0,-32
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	dc8080e7          	jalr	-568(ra) # 800012a4 <thread_create>
    800024e4:	00c0006f          	j	800024f0 <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    800024e8:	fffff097          	auipc	ra,0xfffff
    800024ec:	e3c080e7          	jalr	-452(ra) # 80001324 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    800024f0:	fe843503          	ld	a0,-24(s0)
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	448080e7          	jalr	1096(ra) # 8000293c <_ZN3PCB10isFinishedEv>
    800024fc:	fe0506e3          	beqz	a0,800024e8 <_Z8semTest1v+0x6c>
    80002500:	fe843503          	ld	a0,-24(s0)
    80002504:	00000097          	auipc	ra,0x0
    80002508:	438080e7          	jalr	1080(ra) # 8000293c <_ZN3PCB10isFinishedEv>
    8000250c:	fc050ee3          	beqz	a0,800024e8 <_Z8semTest1v+0x6c>

}
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	01013403          	ld	s0,16(sp)
    80002518:	02010113          	addi	sp,sp,32
    8000251c:	00008067          	ret

0000000080002520 <_Z14semaphoreTestsv>:
{
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00113423          	sd	ra,8(sp)
    80002528:	00813023          	sd	s0,0(sp)
    8000252c:	01010413          	addi	s0,sp,16
    semTest1();
    80002530:	00000097          	auipc	ra,0x0
    80002534:	f4c080e7          	jalr	-180(ra) # 8000247c <_Z8semTest1v>
}
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_Z7myTestsv>:
{
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    semaphoreTests();
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	fc8080e7          	jalr	-56(ra) # 80002520 <_Z14semaphoreTestsv>
}
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_ZN6Thread3runEv>:
    //ovde je samo za potrebe testiranja
    thread_t myHandle;
protected:
    Thread();

    virtual void run() {}
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00813423          	sd	s0,8(sp)
    80002578:	01010413          	addi	s0,sp,16
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret

0000000080002588 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813423          	sd	s0,8(sp)
    80002590:	01010413          	addi	s0,sp,16
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    800025b0:	00009797          	auipc	a5,0x9
    800025b4:	0e078793          	addi	a5,a5,224 # 8000b690 <_ZTV14PeriodicThread+0x10>
    800025b8:	00f53023          	sd	a5,0(a0)
    800025bc:	00001097          	auipc	ra,0x1
    800025c0:	b6c080e7          	jalr	-1172(ra) # 80003128 <_ZN6ThreadD1Ev>
    800025c4:	00813083          	ld	ra,8(sp)
    800025c8:	00013403          	ld	s0,0(sp)
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00008067          	ret

00000000800025d4 <_ZN14PeriodicThreadD0Ev>:
    800025d4:	fe010113          	addi	sp,sp,-32
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	00813823          	sd	s0,16(sp)
    800025e0:	00913423          	sd	s1,8(sp)
    800025e4:	02010413          	addi	s0,sp,32
    800025e8:	00050493          	mv	s1,a0
    800025ec:	00009797          	auipc	a5,0x9
    800025f0:	0a478793          	addi	a5,a5,164 # 8000b690 <_ZTV14PeriodicThread+0x10>
    800025f4:	00f53023          	sd	a5,0(a0)
    800025f8:	00001097          	auipc	ra,0x1
    800025fc:	b30080e7          	jalr	-1232(ra) # 80003128 <_ZN6ThreadD1Ev>
    80002600:	00048513          	mv	a0,s1
    80002604:	00001097          	auipc	ra,0x1
    80002608:	c08080e7          	jalr	-1016(ra) # 8000320c <_ZdlPv>
    8000260c:	01813083          	ld	ra,24(sp)
    80002610:	01013403          	ld	s0,16(sp)
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00008067          	ret

0000000080002620 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00113423          	sd	ra,8(sp)
    80002628:	00813023          	sd	s0,0(sp)
    8000262c:	01010413          	addi	s0,sp,16
    80002630:	00009797          	auipc	a5,0x9
    80002634:	06078793          	addi	a5,a5,96 # 8000b690 <_ZTV14PeriodicThread+0x10>
    80002638:	00f53023          	sd	a5,0(a0)
    8000263c:	00001097          	auipc	ra,0x1
    80002640:	aec080e7          	jalr	-1300(ra) # 80003128 <_ZN6ThreadD1Ev>
    80002644:	00813083          	ld	ra,8(sp)
    80002648:	00013403          	ld	s0,0(sp)
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret

0000000080002654 <_ZN12TestPeriodicD0Ev>:
    80002654:	fe010113          	addi	sp,sp,-32
    80002658:	00113c23          	sd	ra,24(sp)
    8000265c:	00813823          	sd	s0,16(sp)
    80002660:	00913423          	sd	s1,8(sp)
    80002664:	02010413          	addi	s0,sp,32
    80002668:	00050493          	mv	s1,a0
    8000266c:	00009797          	auipc	a5,0x9
    80002670:	02478793          	addi	a5,a5,36 # 8000b690 <_ZTV14PeriodicThread+0x10>
    80002674:	00f53023          	sd	a5,0(a0)
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	ab0080e7          	jalr	-1360(ra) # 80003128 <_ZN6ThreadD1Ev>
    80002680:	00048513          	mv	a0,s1
    80002684:	00001097          	auipc	ra,0x1
    80002688:	b88080e7          	jalr	-1144(ra) # 8000320c <_ZdlPv>
    8000268c:	01813083          	ld	ra,24(sp)
    80002690:	01013403          	ld	s0,16(sp)
    80002694:	00813483          	ld	s1,8(sp)
    80002698:	02010113          	addi	sp,sp,32
    8000269c:	00008067          	ret

00000000800026a0 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800026a0:	ff010113          	addi	sp,sp,-16
    800026a4:	00113423          	sd	ra,8(sp)
    800026a8:	00813023          	sd	s0,0(sp)
    800026ac:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    800026b0:	00007517          	auipc	a0,0x7
    800026b4:	ba050513          	addi	a0,a0,-1120 # 80009250 <CONSOLE_STATUS+0x240>
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	f70080e7          	jalr	-144(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    800026c0:	00001097          	auipc	ra,0x1
    800026c4:	f48080e7          	jalr	-184(ra) # 80003608 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800026c8:	00009797          	auipc	a5,0x9
    800026cc:	1b87b783          	ld	a5,440(a5) # 8000b880 <_ZN3PCB7runningE>
    800026d0:	0207b703          	ld	a4,32(a5)
    800026d4:	0287b503          	ld	a0,40(a5)
    800026d8:	000700e7          	jalr	a4

    thread_exit();
    800026dc:	fffff097          	auipc	ra,0xfffff
    800026e0:	c68080e7          	jalr	-920(ra) # 80001344 <thread_exit>
}
    800026e4:	00813083          	ld	ra,8(sp)
    800026e8:	00013403          	ld	s0,0(sp)
    800026ec:	01010113          	addi	sp,sp,16
    800026f0:	00008067          	ret

00000000800026f4 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800026f4:	fe010113          	addi	sp,sp,-32
    800026f8:	00113c23          	sd	ra,24(sp)
    800026fc:	00813823          	sd	s0,16(sp)
    80002700:	00913423          	sd	s1,8(sp)
    80002704:	02010413          	addi	s0,sp,32
    80002708:	00050493          	mv	s1,a0
    })
    8000270c:	00050023          	sb	zero,0(a0)
    80002710:	00e53823          	sd	a4,16(a0)
    80002714:	00053c23          	sd	zero,24(a0)
    80002718:	02b53023          	sd	a1,32(a0)
    8000271c:	02c53423          	sd	a2,40(a0)
    80002720:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002724:	000017b7          	lui	a5,0x1
    80002728:	00f686b3          	add	a3,a3,a5
    })
    8000272c:	04d53023          	sd	a3,64(a0)
    80002730:	00000797          	auipc	a5,0x0
    80002734:	f7078793          	addi	a5,a5,-144 # 800026a0 <_ZN3PCB6runnerEv>
    80002738:	04f53423          	sd	a5,72(a0)
    Scheduler::put(this);
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	8cc080e7          	jalr	-1844(ra) # 80003008 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80002744:	0004b423          	sd	zero,8(s1)
}
    80002748:	01813083          	ld	ra,24(sp)
    8000274c:	01013403          	ld	s0,16(sp)
    80002750:	00813483          	ld	s1,8(sp)
    80002754:	02010113          	addi	sp,sp,32
    80002758:	00008067          	ret

000000008000275c <_ZN3PCB5sleepEm>:
{
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00813423          	sd	s0,8(sp)
    80002764:	01010413          	addi	s0,sp,16
}
    80002768:	00813403          	ld	s0,8(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <_ZN3PCB5startEv>:
{
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00113423          	sd	ra,8(sp)
    8000277c:	00813023          	sd	s0,0(sp)
    80002780:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002784:	00001097          	auipc	ra,0x1
    80002788:	884080e7          	jalr	-1916(ra) # 80003008 <_ZN9Scheduler3putEP3PCB>
}
    8000278c:	00813083          	ld	ra,8(sp)
    80002790:	00013403          	ld	s0,0(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    8000279c:	fe010113          	addi	sp,sp,-32
    800027a0:	00113c23          	sd	ra,24(sp)
    800027a4:	00813823          	sd	s0,16(sp)
    800027a8:	00913423          	sd	s1,8(sp)
    800027ac:	02010413          	addi	s0,sp,32
    //Scheduler::print();
    //Riscv::printInteger(Scheduler::getSize());
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800027b0:	00009497          	auipc	s1,0x9
    800027b4:	0d04b483          	ld	s1,208(s1) # 8000b880 <_ZN3PCB7runningE>
    800027b8:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800027bc:	00100793          	li	a5,1
    800027c0:	04f70863          	beq	a4,a5,80002810 <_ZN3PCB8dispatchEv+0x74>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800027c4:	00001097          	auipc	ra,0x1
    800027c8:	898080e7          	jalr	-1896(ra) # 8000305c <_ZN9Scheduler3getEv>
    800027cc:	00009797          	auipc	a5,0x9
    800027d0:	0aa7ba23          	sd	a0,180(a5) # 8000b880 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800027d4:	00100793          	li	a5,1
    800027d8:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    if(PCB::running->systemThread)
    800027dc:	00054783          	lbu	a5,0(a0)
    800027e0:	04078063          	beqz	a5,80002820 <_ZN3PCB8dispatchEv+0x84>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800027e4:	10000793          	li	a5,256
    800027e8:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);


    PCB::contextSwitch(&old->context, &running->context);
    800027ec:	04050593          	addi	a1,a0,64
    800027f0:	04048513          	addi	a0,s1,64
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	a34080e7          	jalr	-1484(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800027fc:	01813083          	ld	ra,24(sp)
    80002800:	01013403          	ld	s0,16(sp)
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret
        Scheduler::put(old);
    80002810:	00048513          	mv	a0,s1
    80002814:	00000097          	auipc	ra,0x0
    80002818:	7f4080e7          	jalr	2036(ra) # 80003008 <_ZN9Scheduler3putEP3PCB>
    8000281c:	fa9ff06f          	j	800027c4 <_ZN3PCB8dispatchEv+0x28>
    80002820:	10000793          	li	a5,256
    80002824:	1007a073          	csrs	sstatus,a5
}
    80002828:	fc5ff06f          	j	800027ec <_ZN3PCB8dispatchEv+0x50>

000000008000282c <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00113423          	sd	ra,8(sp)
    80002834:	00813023          	sd	s0,0(sp)
    80002838:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	738080e7          	jalr	1848(ra) # 80003f74 <_Z7kmallocm>
}
    80002844:	00813083          	ld	ra,8(sp)
    80002848:	00013403          	ld	s0,0(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00113423          	sd	ra,8(sp)
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	01010413          	addi	s0,sp,16
    kfree(p);
    80002864:	00001097          	auipc	ra,0x1
    80002868:	738080e7          	jalr	1848(ra) # 80003f9c <_Z5kfreePv>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN3PCBD1Ev>:

PCB::~PCB() {
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    8000288c:	03053503          	ld	a0,48(a0)
    80002890:	00001097          	auipc	ra,0x1
    80002894:	70c080e7          	jalr	1804(ra) # 80003f9c <_Z5kfreePv>
}
    80002898:	00813083          	ld	ra,8(sp)
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800028a8:	fe010113          	addi	sp,sp,-32
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	00813823          	sd	s0,16(sp)
    800028b4:	00913423          	sd	s1,8(sp)
    800028b8:	01213023          	sd	s2,0(sp)
    800028bc:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800028c0:	05000513          	li	a0,80
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	f68080e7          	jalr	-152(ra) # 8000282c <_ZN3PCBnwEm>
    800028cc:	00050493          	mv	s1,a0
    800028d0:	00000713          	li	a4,0
    800028d4:	00000693          	li	a3,0
    800028d8:	00000613          	li	a2,0
    800028dc:	00000593          	li	a1,0
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	e14080e7          	jalr	-492(ra) # 800026f4 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800028e8:	00100793          	li	a5,1
    800028ec:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	76c080e7          	jalr	1900(ra) # 8000305c <_ZN9Scheduler3getEv>
    800028f8:	00009797          	auipc	a5,0x9
    800028fc:	f8a7b423          	sd	a0,-120(a5) # 8000b880 <_ZN3PCB7runningE>
    80002900:	00100793          	li	a5,1
    80002904:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002908:	01813083          	ld	ra,24(sp)
    8000290c:	01013403          	ld	s0,16(sp)
    80002910:	00813483          	ld	s1,8(sp)
    80002914:	00013903          	ld	s2,0(sp)
    80002918:	02010113          	addi	sp,sp,32
    8000291c:	00008067          	ret
    80002920:	00050913          	mv	s2,a0
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002924:	00048513          	mv	a0,s1
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	f2c080e7          	jalr	-212(ra) # 80002854 <_ZN3PCBdlEPv>
    80002930:	00090513          	mv	a0,s2
    80002934:	0000a097          	auipc	ra,0xa
    80002938:	0b4080e7          	jalr	180(ra) # 8000c9e8 <_Unwind_Resume>

000000008000293c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished() {
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00813423          	sd	s0,8(sp)
    80002944:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002948:	03852503          	lw	a0,56(a0)
    8000294c:	ffd50513          	addi	a0,a0,-3
}
    80002950:	00153513          	seqz	a0,a0
    80002954:	00813403          	ld	s0,8(sp)
    80002958:	01010113          	addi	sp,sp,16
    8000295c:	00008067          	ret

0000000080002960 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002960:	fd010113          	addi	sp,sp,-48
    80002964:	02113423          	sd	ra,40(sp)
    80002968:	02813023          	sd	s0,32(sp)
    8000296c:	00913c23          	sd	s1,24(sp)
    80002970:	01213823          	sd	s2,16(sp)
    80002974:	01313423          	sd	s3,8(sp)
    80002978:	03010413          	addi	s0,sp,48
    8000297c:	00050993          	mv	s3,a0
    80002980:	00058913          	mv	s2,a1
    80002984:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002988:	01000513          	li	a0,16
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	5e8080e7          	jalr	1512(ra) # 80003f74 <_Z7kmallocm>
    newElem->next = 0;
    80002994:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002998:	01350423          	sb	s3,8(a0)
    if(head == 0)
    8000299c:	00093783          	ld	a5,0(s2)
    800029a0:	02078663          	beqz	a5,800029cc <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    800029a4:	0004b783          	ld	a5,0(s1)
    800029a8:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    800029ac:	00a4b023          	sd	a0,0(s1)
    }
}
    800029b0:	02813083          	ld	ra,40(sp)
    800029b4:	02013403          	ld	s0,32(sp)
    800029b8:	01813483          	ld	s1,24(sp)
    800029bc:	01013903          	ld	s2,16(sp)
    800029c0:	00813983          	ld	s3,8(sp)
    800029c4:	03010113          	addi	sp,sp,48
    800029c8:	00008067          	ret
        head = tail = newElem;
    800029cc:	00a4b023          	sd	a0,0(s1)
    800029d0:	00a93023          	sd	a0,0(s2)
    800029d4:	fddff06f          	j	800029b0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

00000000800029d8 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    800029d8:	fe010113          	addi	sp,sp,-32
    800029dc:	00113c23          	sd	ra,24(sp)
    800029e0:	00813823          	sd	s0,16(sp)
    800029e4:	00913423          	sd	s1,8(sp)
    800029e8:	02010413          	addi	s0,sp,32
    800029ec:	00050793          	mv	a5,a0
    if(head == 0)
    800029f0:	00053503          	ld	a0,0(a0)
    800029f4:	02050e63          	beqz	a0,80002a30 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    800029f8:	00053703          	ld	a4,0(a0)
    800029fc:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002a00:	02070463          	beqz	a4,80002a28 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002a04:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002a08:	00001097          	auipc	ra,0x1
    80002a0c:	594080e7          	jalr	1428(ra) # 80003f9c <_Z5kfreePv>
    return c;
}
    80002a10:	00048513          	mv	a0,s1
    80002a14:	01813083          	ld	ra,24(sp)
    80002a18:	01013403          	ld	s0,16(sp)
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	02010113          	addi	sp,sp,32
    80002a24:	00008067          	ret
        tail = 0;
    80002a28:	0005b023          	sd	zero,0(a1)
    80002a2c:	fd9ff06f          	j	80002a04 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002a30:	00000493          	li	s1,0
    80002a34:	fddff06f          	j	80002a10 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002a38 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002a38:	fe010113          	addi	sp,sp,-32
    80002a3c:	00113c23          	sd	ra,24(sp)
    80002a40:	00813823          	sd	s0,16(sp)
    80002a44:	00913423          	sd	s1,8(sp)
    80002a48:	01213023          	sd	s2,0(sp)
    80002a4c:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002a50:	01800513          	li	a0,24
    80002a54:	00001097          	auipc	ra,0x1
    80002a58:	7c0080e7          	jalr	1984(ra) # 80004214 <_ZN10KSemaphorenwEm>
    80002a5c:	00050493          	mv	s1,a0
    80002a60:	00000593          	li	a1,0
    80002a64:	00001097          	auipc	ra,0x1
    80002a68:	560080e7          	jalr	1376(ra) # 80003fc4 <_ZN10KSemaphoreC1Ei>
    80002a6c:	00009797          	auipc	a5,0x9
    80002a70:	e297b223          	sd	s1,-476(a5) # 8000b890 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002a74:	01800513          	li	a0,24
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	79c080e7          	jalr	1948(ra) # 80004214 <_ZN10KSemaphorenwEm>
    80002a80:	00050493          	mv	s1,a0
    80002a84:	00000593          	li	a1,0
    80002a88:	00001097          	auipc	ra,0x1
    80002a8c:	53c080e7          	jalr	1340(ra) # 80003fc4 <_ZN10KSemaphoreC1Ei>
    80002a90:	00009797          	auipc	a5,0x9
    80002a94:	e097b423          	sd	s1,-504(a5) # 8000b898 <_ZN8KConsole19hasCharactersOutputE>
}
    80002a98:	01813083          	ld	ra,24(sp)
    80002a9c:	01013403          	ld	s0,16(sp)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	00013903          	ld	s2,0(sp)
    80002aa8:	02010113          	addi	sp,sp,32
    80002aac:	00008067          	ret
    80002ab0:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002ab4:	00048513          	mv	a0,s1
    80002ab8:	00001097          	auipc	ra,0x1
    80002abc:	784080e7          	jalr	1924(ra) # 8000423c <_ZN10KSemaphoredlEPv>
    80002ac0:	00090513          	mv	a0,s2
    80002ac4:	0000a097          	auipc	ra,0xa
    80002ac8:	f24080e7          	jalr	-220(ra) # 8000c9e8 <_Unwind_Resume>
    80002acc:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	00001097          	auipc	ra,0x1
    80002ad8:	768080e7          	jalr	1896(ra) # 8000423c <_ZN10KSemaphoredlEPv>
    80002adc:	00090513          	mv	a0,s2
    80002ae0:	0000a097          	auipc	ra,0xa
    80002ae4:	f08080e7          	jalr	-248(ra) # 8000c9e8 <_Unwind_Resume>

0000000080002ae8 <_ZN8KConsole17putCharacterInputEc>:
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    80002ae8:	ff010113          	addi	sp,sp,-16
    80002aec:	00113423          	sd	ra,8(sp)
    80002af0:	00813023          	sd	s0,0(sp)
    80002af4:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002af8:	00009617          	auipc	a2,0x9
    80002afc:	da860613          	addi	a2,a2,-600 # 8000b8a0 <_ZN8KConsole9tailInputE>
    80002b00:	00009597          	auipc	a1,0x9
    80002b04:	da858593          	addi	a1,a1,-600 # 8000b8a8 <_ZN8KConsole9headInputE>
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	e58080e7          	jalr	-424(ra) # 80002960 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002b10:	00009517          	auipc	a0,0x9
    80002b14:	d8053503          	ld	a0,-640(a0) # 8000b890 <_ZN8KConsole18hasCharactersInputE>
    80002b18:	00001097          	auipc	ra,0x1
    80002b1c:	6b4080e7          	jalr	1716(ra) # 800041cc <_ZN10KSemaphore6signalEv>
}
    80002b20:	00813083          	ld	ra,8(sp)
    80002b24:	00013403          	ld	s0,0(sp)
    80002b28:	01010113          	addi	sp,sp,16
    80002b2c:	00008067          	ret

0000000080002b30 <_ZN8KConsole24getCharactersFromConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002b30:	00006517          	auipc	a0,0x6
    80002b34:	4e053503          	ld	a0,1248(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002b38:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002b3c:	0017f793          	andi	a5,a5,1
    80002b40:	04078863          	beqz	a5,80002b90 <_ZN8KConsole24getCharactersFromConsoleEv+0x60>
{
    80002b44:	ff010113          	addi	sp,sp,-16
    80002b48:	00113423          	sd	ra,8(sp)
    80002b4c:	00813023          	sd	s0,0(sp)
    80002b50:	01010413          	addi	s0,sp,16
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
    80002b54:	00006517          	auipc	a0,0x6
    80002b58:	4b453503          	ld	a0,1204(a0) # 80009008 <CONSOLE_TX_DATA>
            __asm__ volatile("mv %0, a0" :  "=r"(data));
    80002b5c:	00050513          	mv	a0,a0
            putCharacterInput((char)data);
    80002b60:	0ff57513          	andi	a0,a0,255
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	f84080e7          	jalr	-124(ra) # 80002ae8 <_ZN8KConsole17putCharacterInputEc>
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002b6c:	00006517          	auipc	a0,0x6
    80002b70:	4a453503          	ld	a0,1188(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002b74:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002b78:	0017f793          	andi	a5,a5,1
    80002b7c:	fc079ce3          	bnez	a5,80002b54 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
}
    80002b80:	00813083          	ld	ra,8(sp)
    80002b84:	00013403          	ld	s0,0(sp)
    80002b88:	01010113          	addi	sp,sp,16
    80002b8c:	00008067          	ret
    80002b90:	00008067          	ret

0000000080002b94 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00113423          	sd	ra,8(sp)
    80002b9c:	00813023          	sd	s0,0(sp)
    80002ba0:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002ba4:	00009517          	auipc	a0,0x9
    80002ba8:	cec53503          	ld	a0,-788(a0) # 8000b890 <_ZN8KConsole18hasCharactersInputE>
    80002bac:	00001097          	auipc	ra,0x1
    80002bb0:	4c0080e7          	jalr	1216(ra) # 8000406c <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002bb4:	00009597          	auipc	a1,0x9
    80002bb8:	cec58593          	addi	a1,a1,-788 # 8000b8a0 <_ZN8KConsole9tailInputE>
    80002bbc:	00009517          	auipc	a0,0x9
    80002bc0:	cec50513          	addi	a0,a0,-788 # 8000b8a8 <_ZN8KConsole9headInputE>
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	e14080e7          	jalr	-492(ra) # 800029d8 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002bcc:	00813083          	ld	ra,8(sp)
    80002bd0:	00013403          	ld	s0,0(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	00813023          	sd	s0,0(sp)
    80002be8:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002bec:	00009617          	auipc	a2,0x9
    80002bf0:	cc460613          	addi	a2,a2,-828 # 8000b8b0 <_ZN8KConsole10tailOutputE>
    80002bf4:	00009597          	auipc	a1,0x9
    80002bf8:	cc458593          	addi	a1,a1,-828 # 8000b8b8 <_ZN8KConsole10headOutputE>
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	d64080e7          	jalr	-668(ra) # 80002960 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002c04:	00009517          	auipc	a0,0x9
    80002c08:	c9453503          	ld	a0,-876(a0) # 8000b898 <_ZN8KConsole19hasCharactersOutputE>
    80002c0c:	00001097          	auipc	ra,0x1
    80002c10:	5c0080e7          	jalr	1472(ra) # 800041cc <_ZN10KSemaphore6signalEv>
}
    80002c14:	00813083          	ld	ra,8(sp)
    80002c18:	00013403          	ld	s0,0(sp)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	00008067          	ret

0000000080002c24 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00113423          	sd	ra,8(sp)
    80002c2c:	00813023          	sd	s0,0(sp)
    80002c30:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002c34:	00009517          	auipc	a0,0x9
    80002c38:	c6453503          	ld	a0,-924(a0) # 8000b898 <_ZN8KConsole19hasCharactersOutputE>
    80002c3c:	00001097          	auipc	ra,0x1
    80002c40:	430080e7          	jalr	1072(ra) # 8000406c <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002c44:	00009597          	auipc	a1,0x9
    80002c48:	c6c58593          	addi	a1,a1,-916 # 8000b8b0 <_ZN8KConsole10tailOutputE>
    80002c4c:	00009517          	auipc	a0,0x9
    80002c50:	c6c50513          	addi	a0,a0,-916 # 8000b8b8 <_ZN8KConsole10headOutputE>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	d84080e7          	jalr	-636(ra) # 800029d8 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002c5c:	00813083          	ld	ra,8(sp)
    80002c60:	00013403          	ld	s0,0(sp)
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00008067          	ret

0000000080002c6c <_ZN8KConsole23sendCharactersToConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002c6c:	00006517          	auipc	a0,0x6
    80002c70:	3a453503          	ld	a0,932(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002c74:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002c78:	0207f793          	andi	a5,a5,32
    80002c7c:	04078263          	beqz	a5,80002cc0 <_ZN8KConsole23sendCharactersToConsoleEv+0x54>
{
    80002c80:	ff010113          	addi	sp,sp,-16
    80002c84:	00113423          	sd	ra,8(sp)
    80002c88:	00813023          	sd	s0,0(sp)
    80002c8c:	01010413          	addi	s0,sp,16
            char c = getCharacterOutput();
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	f94080e7          	jalr	-108(ra) # 80002c24 <_ZN8KConsole18getCharacterOutputEv>
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
    80002c98:	00050513          	mv	a0,a0
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002c9c:	00006517          	auipc	a0,0x6
    80002ca0:	37453503          	ld	a0,884(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ca4:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002ca8:	0207f793          	andi	a5,a5,32
    80002cac:	fe0792e3          	bnez	a5,80002c90 <_ZN8KConsole23sendCharactersToConsoleEv+0x24>
}
    80002cb0:	00813083          	ld	ra,8(sp)
    80002cb4:	00013403          	ld	s0,0(sp)
    80002cb8:	01010113          	addi	sp,sp,16
    80002cbc:	00008067          	ret
    80002cc0:	00008067          	ret

0000000080002cc4 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002cd0:	00009797          	auipc	a5,0x9
    80002cd4:	b287b783          	ld	a5,-1240(a5) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002cd8:	0007b603          	ld	a2,0(a5)
    80002cdc:	00500793          	li	a5,5
    80002ce0:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002ce4:	00009797          	auipc	a5,0x9
    80002ce8:	bdc7b783          	ld	a5,-1060(a5) # 8000b8c0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002cec:	00000593          	li	a1,0
    while(curr != 0)
    80002cf0:	02078063          	beqz	a5,80002d10 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002cf4:	01863683          	ld	a3,24(a2)
    80002cf8:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002cfc:	00e6e863          	bltu	a3,a4,80002d0c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002d00:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002d04:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002d08:	fe9ff06f          	j	80002cf0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002d0c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002d10:	02058263          	beqz	a1,80002d34 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002d14:	01863783          	ld	a5,24(a2)
    80002d18:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002d1c:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002d20:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002d24:	00c5b423          	sd	a2,8(a1)
    }
}
    80002d28:	00813403          	ld	s0,8(sp)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002d34:	00009797          	auipc	a5,0x9
    80002d38:	b8c7b623          	sd	a2,-1140(a5) # 8000b8c0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002d3c:	00863783          	ld	a5,8(a2)
    80002d40:	fe0784e3          	beqz	a5,80002d28 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002d44:	0187b703          	ld	a4,24(a5)
    80002d48:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002d4c:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002d50:	00e7bc23          	sd	a4,24(a5)
    80002d54:	fd5ff06f          	j	80002d28 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002d58 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002d58:	00009517          	auipc	a0,0x9
    80002d5c:	b6853503          	ld	a0,-1176(a0) # 8000b8c0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002d60:	08050863          	beqz	a0,80002df0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002d64:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002d68:	00100713          	li	a4,1
    80002d6c:	00e78863          	beq	a5,a4,80002d7c <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002d70:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002d74:	00f53c23          	sd	a5,24(a0)
    80002d78:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002d7c:	06050a63          	beqz	a0,80002df0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002d80:	00009797          	auipc	a5,0x9
    80002d84:	b407b783          	ld	a5,-1216(a5) # 8000b8c0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002d88:	00a78663          	beq	a5,a0,80002d94 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002d8c:	01853783          	ld	a5,24(a0)
    80002d90:	06079063          	bnez	a5,80002df0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002d94:	fe010113          	addi	sp,sp,-32
    80002d98:	00113c23          	sd	ra,24(sp)
    80002d9c:	00813823          	sd	s0,16(sp)
    80002da0:	00913423          	sd	s1,8(sp)
    80002da4:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002da8:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002dac:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	258080e7          	jalr	600(ra) # 80003008 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002db8:	00009797          	auipc	a5,0x9
    80002dbc:	b097b423          	sd	s1,-1272(a5) # 8000b8c0 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002dc0:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002dc4:	00048c63          	beqz	s1,80002ddc <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002dc8:	00009797          	auipc	a5,0x9
    80002dcc:	af87b783          	ld	a5,-1288(a5) # 8000b8c0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002dd0:	fc978ce3          	beq	a5,s1,80002da8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002dd4:	0184b783          	ld	a5,24(s1)
    80002dd8:	fc0788e3          	beqz	a5,80002da8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002ddc:	01813083          	ld	ra,24(sp)
    80002de0:	01013403          	ld	s0,16(sp)
    80002de4:	00813483          	ld	s1,8(sp)
    80002de8:	02010113          	addi	sp,sp,32
    80002dec:	00008067          	ret
    80002df0:	00008067          	ret

0000000080002df4 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002df4:	fe010113          	addi	sp,sp,-32
    80002df8:	00113c23          	sd	ra,24(sp)
    80002dfc:	00813823          	sd	s0,16(sp)
    80002e00:	00913423          	sd	s1,8(sp)
    80002e04:	01213023          	sd	s2,0(sp)
    80002e08:	02010413          	addi	s0,sp,32
    80002e0c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002e10:	00053503          	ld	a0,0(a0)
    80002e14:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002e18:	00001097          	auipc	ra,0x1
    80002e1c:	184080e7          	jalr	388(ra) # 80003f9c <_Z5kfreePv>
    first = newFirst;
    80002e20:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002e24:	00090e63          	beqz	s2,80002e40 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002e28:	01813083          	ld	ra,24(sp)
    80002e2c:	01013403          	ld	s0,16(sp)
    80002e30:	00813483          	ld	s1,8(sp)
    80002e34:	00013903          	ld	s2,0(sp)
    80002e38:	02010113          	addi	sp,sp,32
    80002e3c:	00008067          	ret
        first = last = 0;
    80002e40:	0004b423          	sd	zero,8(s1)
    80002e44:	0004b023          	sd	zero,0(s1)
}
    80002e48:	fe1ff06f          	j	80002e28 <_ZN5Queue3popEv+0x34>

0000000080002e4c <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002e4c:	fe010113          	addi	sp,sp,-32
    80002e50:	00113c23          	sd	ra,24(sp)
    80002e54:	00813823          	sd	s0,16(sp)
    80002e58:	00913423          	sd	s1,8(sp)
    80002e5c:	01213023          	sd	s2,0(sp)
    80002e60:	02010413          	addi	s0,sp,32
    80002e64:	00050493          	mv	s1,a0
    80002e68:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002e6c:	01000513          	li	a0,16
    80002e70:	00001097          	auipc	ra,0x1
    80002e74:	104080e7          	jalr	260(ra) # 80003f74 <_Z7kmallocm>
    newElem->data = t;
    80002e78:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002e7c:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002e80:	0004b783          	ld	a5,0(s1)
    80002e84:	02078463          	beqz	a5,80002eac <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002e88:	0084b783          	ld	a5,8(s1)
    80002e8c:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002e90:	00a4b423          	sd	a0,8(s1)
    }
}
    80002e94:	01813083          	ld	ra,24(sp)
    80002e98:	01013403          	ld	s0,16(sp)
    80002e9c:	00813483          	ld	s1,8(sp)
    80002ea0:	00013903          	ld	s2,0(sp)
    80002ea4:	02010113          	addi	sp,sp,32
    80002ea8:	00008067          	ret
        first = newElem;
    80002eac:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002eb0:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002eb4:	00053423          	sd	zero,8(a0)
    80002eb8:	0004b783          	ld	a5,0(s1)
    80002ebc:	0007b423          	sd	zero,8(a5)
    80002ec0:	fd5ff06f          	j	80002e94 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002ec4 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002ec4:	ff010113          	addi	sp,sp,-16
    80002ec8:	00813423          	sd	s0,8(sp)
    80002ecc:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002ed0:	00053503          	ld	a0,0(a0)
    80002ed4:	00050463          	beqz	a0,80002edc <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002ed8:	00053503          	ld	a0,0(a0)
}
    80002edc:	00813403          	ld	s0,8(sp)
    80002ee0:	01010113          	addi	sp,sp,16
    80002ee4:	00008067          	ret

0000000080002ee8 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002ee8:	ff010113          	addi	sp,sp,-16
    80002eec:	00813423          	sd	s0,8(sp)
    80002ef0:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002ef4:	00053423          	sd	zero,8(a0)
    80002ef8:	00053023          	sd	zero,0(a0)
}
    80002efc:	00813403          	ld	s0,8(sp)
    80002f00:	01010113          	addi	sp,sp,16
    80002f04:	00008067          	ret

0000000080002f08 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002f08:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002f0c:	04050063          	beqz	a0,80002f4c <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80002f10:	fe010113          	addi	sp,sp,-32
    80002f14:	00113c23          	sd	ra,24(sp)
    80002f18:	00813823          	sd	s0,16(sp)
    80002f1c:	00913423          	sd	s1,8(sp)
    80002f20:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80002f24:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002f28:	00001097          	auipc	ra,0x1
    80002f2c:	074080e7          	jalr	116(ra) # 80003f9c <_Z5kfreePv>
        curr = curr->next;
    80002f30:	00048513          	mv	a0,s1
    while(curr != 0)
    80002f34:	fe0498e3          	bnez	s1,80002f24 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002f38:	01813083          	ld	ra,24(sp)
    80002f3c:	01013403          	ld	s0,16(sp)
    80002f40:	00813483          	ld	s1,8(sp)
    80002f44:	02010113          	addi	sp,sp,32
    80002f48:	00008067          	ret
    80002f4c:	00008067          	ret

0000000080002f50 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00813423          	sd	s0,8(sp)
    80002f58:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002f5c:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002f60:	00000513          	li	a0,0
    while(curr != 0)
    80002f64:	00078863          	beqz	a5,80002f74 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002f68:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002f6c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002f70:	ff5ff06f          	j	80002f64 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002f74:	00813403          	ld	s0,8(sp)
    80002f78:	01010113          	addi	sp,sp,16
    80002f7c:	00008067          	ret

0000000080002f80 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80002f80:	ff010113          	addi	sp,sp,-16
    80002f84:	00113423          	sd	ra,8(sp)
    80002f88:	00813023          	sd	s0,0(sp)
    80002f8c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002f90:	00001097          	auipc	ra,0x1
    80002f94:	fe4080e7          	jalr	-28(ra) # 80003f74 <_Z7kmallocm>
}
    80002f98:	00813083          	ld	ra,8(sp)
    80002f9c:	00013403          	ld	s0,0(sp)
    80002fa0:	01010113          	addi	sp,sp,16
    80002fa4:	00008067          	ret

0000000080002fa8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002fa8:	ff010113          	addi	sp,sp,-16
    80002fac:	00113423          	sd	ra,8(sp)
    80002fb0:	00813023          	sd	s0,0(sp)
    80002fb4:	01010413          	addi	s0,sp,16
    kfree(p);
    80002fb8:	00001097          	auipc	ra,0x1
    80002fbc:	fe4080e7          	jalr	-28(ra) # 80003f9c <_Z5kfreePv>
}
    80002fc0:	00813083          	ld	ra,8(sp)
    80002fc4:	00013403          	ld	s0,0(sp)
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	00008067          	ret

0000000080002fd0 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00813423          	sd	s0,8(sp)
    80002fd8:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002fdc:	00009797          	auipc	a5,0x9
    80002fe0:	8ec7b783          	ld	a5,-1812(a5) # 8000b8c8 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002fe4:	00000513          	li	a0,0
    while(curr != 0)
    80002fe8:	00078863          	beqz	a5,80002ff8 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002fec:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002ff0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002ff4:	ff5ff06f          	j	80002fe8 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002ff8:	0005051b          	sext.w	a0,a0
    80002ffc:	00813403          	ld	s0,8(sp)
    80003000:	01010113          	addi	sp,sp,16
    80003004:	00008067          	ret

0000000080003008 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00813423          	sd	s0,8(sp)
    80003010:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003014:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003018:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    8000301c:	00009797          	auipc	a5,0x9
    80003020:	8ac7b783          	ld	a5,-1876(a5) # 8000b8c8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003024:	02078263          	beqz	a5,80003048 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003028:	00009797          	auipc	a5,0x9
    8000302c:	8a078793          	addi	a5,a5,-1888 # 8000b8c8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003030:	0087b703          	ld	a4,8(a5)
    80003034:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003038:	00a7b423          	sd	a0,8(a5)
    }
}
    8000303c:	00813403          	ld	s0,8(sp)
    80003040:	01010113          	addi	sp,sp,16
    80003044:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003048:	00009797          	auipc	a5,0x9
    8000304c:	88078793          	addi	a5,a5,-1920 # 8000b8c8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003050:	00a7b423          	sd	a0,8(a5)
    80003054:	00a7b023          	sd	a0,0(a5)
    80003058:	fe5ff06f          	j	8000303c <_ZN9Scheduler3putEP3PCB+0x34>

000000008000305c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    8000305c:	ff010113          	addi	sp,sp,-16
    80003060:	00813423          	sd	s0,8(sp)
    80003064:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003068:	00009517          	auipc	a0,0x9
    8000306c:	86053503          	ld	a0,-1952(a0) # 8000b8c8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003070:	00050c63          	beqz	a0,80003088 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003074:	00853783          	ld	a5,8(a0)
    80003078:	00078e63          	beqz	a5,80003094 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000307c:	00009717          	auipc	a4,0x9
    80003080:	84f73623          	sd	a5,-1972(a4) # 8000b8c8 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003084:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003088:	00813403          	ld	s0,8(sp)
    8000308c:	01010113          	addi	sp,sp,16
    80003090:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003094:	00009797          	auipc	a5,0x9
    80003098:	83478793          	addi	a5,a5,-1996 # 8000b8c8 <_ZN9Scheduler16schedulerPCBHeadE>
    8000309c:	0007b423          	sd	zero,8(a5)
    800030a0:	0007b023          	sd	zero,0(a5)
    800030a4:	fe1ff06f          	j	80003084 <_ZN9Scheduler3getEv+0x28>

00000000800030a8 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    800030bc:	00006517          	auipc	a0,0x6
    800030c0:	1ac50513          	addi	a0,a0,428 # 80009268 <CONSOLE_STATUS+0x258>
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	564080e7          	jalr	1380(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    800030cc:	00008497          	auipc	s1,0x8
    800030d0:	7fc4b483          	ld	s1,2044(s1) # 8000b8c8 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800030d4:	00048c63          	beqz	s1,800030ec <_ZN9Scheduler5printEv+0x44>
    {
        Riscv::printInteger((uint64)curr);
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	5bc080e7          	jalr	1468(ra) # 80003698 <_ZN5Riscv12printIntegerEm>
        curr = curr->nextPCB;
    800030e4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800030e8:	fedff06f          	j	800030d4 <_ZN9Scheduler5printEv+0x2c>
    }
}
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	02010113          	addi	sp,sp,32
    800030fc:	00008067          	ret

0000000080003100 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003100:	ff010113          	addi	sp,sp,-16
    80003104:	00113423          	sd	ra,8(sp)
    80003108:	00813023          	sd	s0,0(sp)
    8000310c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003110:	00001097          	auipc	ra,0x1
    80003114:	a30080e7          	jalr	-1488(ra) # 80003b40 <_ZN5Riscv10kernelMainEv>
    80003118:	00813083          	ld	ra,8(sp)
    8000311c:	00013403          	ld	s0,0(sp)
    80003120:	01010113          	addi	sp,sp,16
    80003124:	00008067          	ret

0000000080003128 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80003128:	ff010113          	addi	sp,sp,-16
    8000312c:	00113423          	sd	ra,8(sp)
    80003130:	00813023          	sd	s0,0(sp)
    80003134:	01010413          	addi	s0,sp,16
    80003138:	00008797          	auipc	a5,0x8
    8000313c:	5c078793          	addi	a5,a5,1472 # 8000b6f8 <_ZTV6Thread+0x10>
    80003140:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003144:	00853503          	ld	a0,8(a0)
    80003148:	ffffe097          	auipc	ra,0xffffe
    8000314c:	130080e7          	jalr	304(ra) # 80001278 <mem_free>
}
    80003150:	00813083          	ld	ra,8(sp)
    80003154:	00013403          	ld	s0,0(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret

0000000080003160 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00113423          	sd	ra,8(sp)
    80003168:	00813023          	sd	s0,0(sp)
    8000316c:	01010413          	addi	s0,sp,16
    80003170:	00008797          	auipc	a5,0x8
    80003174:	5b078793          	addi	a5,a5,1456 # 8000b720 <_ZTV9Semaphore+0x10>
    80003178:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    8000317c:	00853503          	ld	a0,8(a0)
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	0f8080e7          	jalr	248(ra) # 80001278 <mem_free>
}
    80003188:	00813083          	ld	ra,8(sp)
    8000318c:	00013403          	ld	s0,0(sp)
    80003190:	01010113          	addi	sp,sp,16
    80003194:	00008067          	ret

0000000080003198 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    80003198:	fe010113          	addi	sp,sp,-32
    8000319c:	00113c23          	sd	ra,24(sp)
    800031a0:	00813823          	sd	s0,16(sp)
    800031a4:	00913423          	sd	s1,8(sp)
    800031a8:	02010413          	addi	s0,sp,32
    800031ac:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    800031b0:	00006517          	auipc	a0,0x6
    800031b4:	0d050513          	addi	a0,a0,208 # 80009280 <CONSOLE_STATUS+0x270>
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	470080e7          	jalr	1136(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    thr->run();
    800031c0:	0004b783          	ld	a5,0(s1)
    800031c4:	0107b783          	ld	a5,16(a5)
    800031c8:	00048513          	mv	a0,s1
    800031cc:	000780e7          	jalr	a5
}
    800031d0:	01813083          	ld	ra,24(sp)
    800031d4:	01013403          	ld	s0,16(sp)
    800031d8:	00813483          	ld	s1,8(sp)
    800031dc:	02010113          	addi	sp,sp,32
    800031e0:	00008067          	ret

00000000800031e4 <_Znwm>:
{
    800031e4:	ff010113          	addi	sp,sp,-16
    800031e8:	00113423          	sd	ra,8(sp)
    800031ec:	00813023          	sd	s0,0(sp)
    800031f0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	054080e7          	jalr	84(ra) # 80001248 <mem_alloc>
}
    800031fc:	00813083          	ld	ra,8(sp)
    80003200:	00013403          	ld	s0,0(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret

000000008000320c <_ZdlPv>:
{
    8000320c:	ff010113          	addi	sp,sp,-16
    80003210:	00113423          	sd	ra,8(sp)
    80003214:	00813023          	sd	s0,0(sp)
    80003218:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000321c:	ffffe097          	auipc	ra,0xffffe
    80003220:	05c080e7          	jalr	92(ra) # 80001278 <mem_free>
}
    80003224:	00813083          	ld	ra,8(sp)
    80003228:	00013403          	ld	s0,0(sp)
    8000322c:	01010113          	addi	sp,sp,16
    80003230:	00008067          	ret

0000000080003234 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003234:	fe010113          	addi	sp,sp,-32
    80003238:	00113c23          	sd	ra,24(sp)
    8000323c:	00813823          	sd	s0,16(sp)
    80003240:	00913423          	sd	s1,8(sp)
    80003244:	02010413          	addi	s0,sp,32
    80003248:	00050493          	mv	s1,a0
}
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	edc080e7          	jalr	-292(ra) # 80003128 <_ZN6ThreadD1Ev>
    80003254:	00048513          	mv	a0,s1
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	fb4080e7          	jalr	-76(ra) # 8000320c <_ZdlPv>
    80003260:	01813083          	ld	ra,24(sp)
    80003264:	01013403          	ld	s0,16(sp)
    80003268:	00813483          	ld	s1,8(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret

0000000080003274 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003274:	fe010113          	addi	sp,sp,-32
    80003278:	00113c23          	sd	ra,24(sp)
    8000327c:	00813823          	sd	s0,16(sp)
    80003280:	00913423          	sd	s1,8(sp)
    80003284:	02010413          	addi	s0,sp,32
    80003288:	00050493          	mv	s1,a0
}
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	ed4080e7          	jalr	-300(ra) # 80003160 <_ZN9SemaphoreD1Ev>
    80003294:	00048513          	mv	a0,s1
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	f74080e7          	jalr	-140(ra) # 8000320c <_ZdlPv>
    800032a0:	01813083          	ld	ra,24(sp)
    800032a4:	01013403          	ld	s0,16(sp)
    800032a8:	00813483          	ld	s1,8(sp)
    800032ac:	02010113          	addi	sp,sp,32
    800032b0:	00008067          	ret

00000000800032b4 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    800032b4:	00853783          	ld	a5,8(a0)
    800032b8:	02079c63          	bnez	a5,800032f0 <_ZN6Thread5startEv+0x3c>
{
    800032bc:	ff010113          	addi	sp,sp,-16
    800032c0:	00113423          	sd	ra,8(sp)
    800032c4:	00813023          	sd	s0,0(sp)
    800032c8:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    800032cc:	01853603          	ld	a2,24(a0)
    800032d0:	01053583          	ld	a1,16(a0)
    800032d4:	00850513          	addi	a0,a0,8
    800032d8:	ffffe097          	auipc	ra,0xffffe
    800032dc:	fcc080e7          	jalr	-52(ra) # 800012a4 <thread_create>
}
    800032e0:	00813083          	ld	ra,8(sp)
    800032e4:	00013403          	ld	s0,0(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret
        return -1;
    800032f0:	fff00513          	li	a0,-1
}
    800032f4:	00008067          	ret

00000000800032f8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800032f8:	ff010113          	addi	sp,sp,-16
    800032fc:	00113423          	sd	ra,8(sp)
    80003300:	00813023          	sd	s0,0(sp)
    80003304:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003308:	ffffe097          	auipc	ra,0xffffe
    8000330c:	01c080e7          	jalr	28(ra) # 80001324 <thread_dispatch>
}
    80003310:	00813083          	ld	ra,8(sp)
    80003314:	00013403          	ld	s0,0(sp)
    80003318:	01010113          	addi	sp,sp,16
    8000331c:	00008067          	ret

0000000080003320 <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00113423          	sd	ra,8(sp)
    80003328:	00813023          	sd	s0,0(sp)
    8000332c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	0f8080e7          	jalr	248(ra) # 80001428 <time_sleep>
}
    80003338:	00813083          	ld	ra,8(sp)
    8000333c:	00013403          	ld	s0,0(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    80003348:	fe010113          	addi	sp,sp,-32
    8000334c:	00113c23          	sd	ra,24(sp)
    80003350:	00813823          	sd	s0,16(sp)
    80003354:	00913423          	sd	s1,8(sp)
    80003358:	02010413          	addi	s0,sp,32
    8000335c:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    80003360:	0004b783          	ld	a5,0(s1)
    80003364:	0187b783          	ld	a5,24(a5)
    80003368:	00048513          	mv	a0,s1
    8000336c:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    80003370:	0204b503          	ld	a0,32(s1)
    80003374:	00000097          	auipc	ra,0x0
    80003378:	fac080e7          	jalr	-84(ra) # 80003320 <_ZN6Thread5sleepEm>
    while(true)
    8000337c:	fe5ff06f          	j	80003360 <_ZN14PeriodicThread6runnerEPv+0x18>

0000000080003380 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80003380:	ff010113          	addi	sp,sp,-16
    80003384:	00813423          	sd	s0,8(sp)
    80003388:	01010413          	addi	s0,sp,16
    8000338c:	00008797          	auipc	a5,0x8
    80003390:	36c78793          	addi	a5,a5,876 # 8000b6f8 <_ZTV6Thread+0x10>
    80003394:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003398:	00053423          	sd	zero,8(a0)
    f = body;
    8000339c:	00b53823          	sd	a1,16(a0)
    this->args = args;
    800033a0:	00c53c23          	sd	a2,24(a0)
}
    800033a4:	00813403          	ld	s0,8(sp)
    800033a8:	01010113          	addi	sp,sp,16
    800033ac:	00008067          	ret

00000000800033b0 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00813423          	sd	s0,8(sp)
    800033b8:	01010413          	addi	s0,sp,16
    800033bc:	00008797          	auipc	a5,0x8
    800033c0:	33c78793          	addi	a5,a5,828 # 8000b6f8 <_ZTV6Thread+0x10>
    800033c4:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    800033c8:	00000797          	auipc	a5,0x0
    800033cc:	dd078793          	addi	a5,a5,-560 # 80003198 <_ZN6Thread6runnerEPv>
    800033d0:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    800033d4:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    800033d8:	00a53c23          	sd	a0,24(a0)
}
    800033dc:	00813403          	ld	s0,8(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    800033e8:	00853503          	ld	a0,8(a0)
    800033ec:	02050663          	beqz	a0,80003418 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800033f0:	ff010113          	addi	sp,sp,-16
    800033f4:	00113423          	sd	ra,8(sp)
    800033f8:	00813023          	sd	s0,0(sp)
    800033fc:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    80003400:	ffffe097          	auipc	ra,0xffffe
    80003404:	fd0080e7          	jalr	-48(ra) # 800013d0 <sem_wait>
}
    80003408:	00813083          	ld	ra,8(sp)
    8000340c:	00013403          	ld	s0,0(sp)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret
        return -1;
    80003418:	fff00513          	li	a0,-1
}
    8000341c:	00008067          	ret

0000000080003420 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80003420:	fe010113          	addi	sp,sp,-32
    80003424:	00113c23          	sd	ra,24(sp)
    80003428:	00813823          	sd	s0,16(sp)
    8000342c:	00913423          	sd	s1,8(sp)
    80003430:	02010413          	addi	s0,sp,32
    80003434:	00050493          	mv	s1,a0
    80003438:	00008797          	auipc	a5,0x8
    8000343c:	2e878793          	addi	a5,a5,744 # 8000b720 <_ZTV9Semaphore+0x10>
    80003440:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    80003444:	00850513          	addi	a0,a0,8
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	f24080e7          	jalr	-220(ra) # 8000136c <sem_open>
    if(retval != 0)
    80003450:	00050463          	beqz	a0,80003458 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003454:	0004b423          	sd	zero,8(s1)
}
    80003458:	01813083          	ld	ra,24(sp)
    8000345c:	01013403          	ld	s0,16(sp)
    80003460:	00813483          	ld	s1,8(sp)
    80003464:	02010113          	addi	sp,sp,32
    80003468:	00008067          	ret

000000008000346c <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    8000346c:	00853503          	ld	a0,8(a0)
    80003470:	02050663          	beqz	a0,8000349c <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80003474:	ff010113          	addi	sp,sp,-16
    80003478:	00113423          	sd	ra,8(sp)
    8000347c:	00813023          	sd	s0,0(sp)
    80003480:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	f78080e7          	jalr	-136(ra) # 800013fc <sem_signal>
}
    8000348c:	00813083          	ld	ra,8(sp)
    80003490:	00013403          	ld	s0,0(sp)
    80003494:	01010113          	addi	sp,sp,16
    80003498:	00008067          	ret
        return -1;
    8000349c:	fff00513          	li	a0,-1
}
    800034a0:	00008067          	ret

00000000800034a4 <_ZN7Console4getcEv>:
char Console::getc() {
    800034a4:	ff010113          	addi	sp,sp,-16
    800034a8:	00813423          	sd	s0,8(sp)
    800034ac:	01010413          	addi	s0,sp,16
}
    800034b0:	00000513          	li	a0,0
    800034b4:	00813403          	ld	s0,8(sp)
    800034b8:	01010113          	addi	sp,sp,16
    800034bc:	00008067          	ret

00000000800034c0 <_ZN7Console4putcEc>:
void Console::putc(char) {
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00813423          	sd	s0,8(sp)
    800034c8:	01010413          	addi	s0,sp,16
}
    800034cc:	00813403          	ld	s0,8(sp)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret

00000000800034d8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    800034d8:	fe010113          	addi	sp,sp,-32
    800034dc:	00113c23          	sd	ra,24(sp)
    800034e0:	00813823          	sd	s0,16(sp)
    800034e4:	00913423          	sd	s1,8(sp)
    800034e8:	01213023          	sd	s2,0(sp)
    800034ec:	02010413          	addi	s0,sp,32
    800034f0:	00050493          	mv	s1,a0
    800034f4:	00058913          	mv	s2,a1
    800034f8:	00050613          	mv	a2,a0
    800034fc:	00000597          	auipc	a1,0x0
    80003500:	e4c58593          	addi	a1,a1,-436 # 80003348 <_ZN14PeriodicThread6runnerEPv>
    80003504:	00000097          	auipc	ra,0x0
    80003508:	e7c080e7          	jalr	-388(ra) # 80003380 <_ZN6ThreadC1EPFvPvES0_>
    8000350c:	00008797          	auipc	a5,0x8
    80003510:	18478793          	addi	a5,a5,388 # 8000b690 <_ZTV14PeriodicThread+0x10>
    80003514:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    80003518:	0324b023          	sd	s2,32(s1)
}
    8000351c:	01813083          	ld	ra,24(sp)
    80003520:	01013403          	ld	s0,16(sp)
    80003524:	00813483          	ld	s1,8(sp)
    80003528:	00013903          	ld	s2,0(sp)
    8000352c:	02010113          	addi	sp,sp,32
    80003530:	00008067          	ret

0000000080003534 <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    80003534:	ff010113          	addi	sp,sp,-16
    80003538:	00813423          	sd	s0,8(sp)
    8000353c:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    80003540:	00813403          	ld	s0,8(sp)
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00008067          	ret

000000008000354c <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    8000354c:	ff010113          	addi	sp,sp,-16
    80003550:	00813423          	sd	s0,8(sp)
    80003554:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    80003558:	00813403          	ld	s0,8(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <_ZN5Riscv10initSystemEv>:
#include "../h/KConsole.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void Riscv::initSystem()
{
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00113423          	sd	ra,8(sp)
    8000356c:	00813023          	sd	s0,0(sp)
    80003570:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003574:	00008797          	auipc	a5,0x8
    80003578:	26c7b783          	ld	a5,620(a5) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    8000357c:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003580:	fffff097          	auipc	ra,0xfffff
    80003584:	328080e7          	jalr	808(ra) # 800028a8 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003588:	fffff097          	auipc	ra,0xfffff
    8000358c:	4b0080e7          	jalr	1200(ra) # 80002a38 <_ZN8KConsole10initializeEv>
}
    80003590:	00813083          	ld	ra,8(sp)
    80003594:	00013403          	ld	s0,0(sp)
    80003598:	01010113          	addi	sp,sp,16
    8000359c:	00008067          	ret

00000000800035a0 <_ZN5Riscv16enableInterruptsEv>:
    //todo
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    800035a0:	ff010113          	addi	sp,sp,-16
    800035a4:	00813423          	sd	s0,8(sp)
    800035a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800035ac:	00200793          	li	a5,2
    800035b0:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800035b4:	00813403          	ld	s0,8(sp)
    800035b8:	01010113          	addi	sp,sp,16
    800035bc:	00008067          	ret

00000000800035c0 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800035c0:	ff010113          	addi	sp,sp,-16
    800035c4:	00813423          	sd	s0,8(sp)
    800035c8:	01010413          	addi	s0,sp,16

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800035cc:	00200793          	li	a5,2
    800035d0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800035d4:	00813403          	ld	s0,8(sp)
    800035d8:	01010113          	addi	sp,sp,16
    800035dc:	00008067          	ret

00000000800035e0 <_ZN5Riscv9endSystemEv>:
{
    800035e0:	ff010113          	addi	sp,sp,-16
    800035e4:	00113423          	sd	ra,8(sp)
    800035e8:	00813023          	sd	s0,0(sp)
    800035ec:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	fd0080e7          	jalr	-48(ra) # 800035c0 <_ZN5Riscv17disableInterruptsEv>
}
    800035f8:	00813083          	ld	ra,8(sp)
    800035fc:	00013403          	ld	s0,0(sp)
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret

0000000080003608 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003614:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003618:	10200073          	sret
}
    8000361c:	00813403          	ld	s0,8(sp)
    80003620:	01010113          	addi	sp,sp,16
    80003624:	00008067          	ret

0000000080003628 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80003628:	fd010113          	addi	sp,sp,-48
    8000362c:	02113423          	sd	ra,40(sp)
    80003630:	02813023          	sd	s0,32(sp)
    80003634:	00913c23          	sd	s1,24(sp)
    80003638:	01213823          	sd	s2,16(sp)
    8000363c:	03010413          	addi	s0,sp,48
    80003640:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003644:	100027f3          	csrr	a5,sstatus
    80003648:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000364c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003650:	00200793          	li	a5,2
    80003654:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80003658:	0004c503          	lbu	a0,0(s1)
    8000365c:	00050a63          	beqz	a0,80003670 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80003660:	00005097          	auipc	ra,0x5
    80003664:	a6c080e7          	jalr	-1428(ra) # 800080cc <__putc>
        string++;
    80003668:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000366c:	fedff06f          	j	80003658 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003670:	0009091b          	sext.w	s2,s2
    80003674:	00297913          	andi	s2,s2,2
    80003678:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000367c:	10092073          	csrs	sstatus,s2
}
    80003680:	02813083          	ld	ra,40(sp)
    80003684:	02013403          	ld	s0,32(sp)
    80003688:	01813483          	ld	s1,24(sp)
    8000368c:	01013903          	ld	s2,16(sp)
    80003690:	03010113          	addi	sp,sp,48
    80003694:	00008067          	ret

0000000080003698 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80003698:	fc010113          	addi	sp,sp,-64
    8000369c:	02113c23          	sd	ra,56(sp)
    800036a0:	02813823          	sd	s0,48(sp)
    800036a4:	02913423          	sd	s1,40(sp)
    800036a8:	03213023          	sd	s2,32(sp)
    800036ac:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800036b0:	100027f3          	csrr	a5,sstatus
    800036b4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800036b8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800036bc:	00200793          	li	a5,2
    800036c0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    800036c4:	0005051b          	sext.w	a0,a0

    i = 0;
    800036c8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    800036cc:	00a00613          	li	a2,10
    800036d0:	02c5773b          	remuw	a4,a0,a2
    800036d4:	02071693          	slli	a3,a4,0x20
    800036d8:	0206d693          	srli	a3,a3,0x20
    800036dc:	00006717          	auipc	a4,0x6
    800036e0:	be470713          	addi	a4,a4,-1052 # 800092c0 <_ZZN5Riscv12printIntegerEmE6digits>
    800036e4:	00d70733          	add	a4,a4,a3
    800036e8:	00074703          	lbu	a4,0(a4)
    800036ec:	fe040693          	addi	a3,s0,-32
    800036f0:	009687b3          	add	a5,a3,s1
    800036f4:	0014849b          	addiw	s1,s1,1
    800036f8:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800036fc:	0005071b          	sext.w	a4,a0
    80003700:	02c5553b          	divuw	a0,a0,a2
    80003704:	00900793          	li	a5,9
    80003708:	fce7e2e3          	bltu	a5,a4,800036cc <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000370c:	fff4849b          	addiw	s1,s1,-1
    80003710:	0004ce63          	bltz	s1,8000372c <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003714:	fe040793          	addi	a5,s0,-32
    80003718:	009787b3          	add	a5,a5,s1
    8000371c:	ff07c503          	lbu	a0,-16(a5)
    80003720:	00005097          	auipc	ra,0x5
    80003724:	9ac080e7          	jalr	-1620(ra) # 800080cc <__putc>
    80003728:	fe5ff06f          	j	8000370c <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    8000372c:	00a00513          	li	a0,10
    80003730:	00005097          	auipc	ra,0x5
    80003734:	99c080e7          	jalr	-1636(ra) # 800080cc <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003738:	0009091b          	sext.w	s2,s2
    8000373c:	00297913          	andi	s2,s2,2
    80003740:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003744:	10092073          	csrs	sstatus,s2
}
    80003748:	03813083          	ld	ra,56(sp)
    8000374c:	03013403          	ld	s0,48(sp)
    80003750:	02813483          	ld	s1,40(sp)
    80003754:	02013903          	ld	s2,32(sp)
    80003758:	04010113          	addi	sp,sp,64
    8000375c:	00008067          	ret

0000000080003760 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80003760:	f3010113          	addi	sp,sp,-208
    80003764:	0c113423          	sd	ra,200(sp)
    80003768:	0c813023          	sd	s0,192(sp)
    8000376c:	0a913c23          	sd	s1,184(sp)
    80003770:	0b213823          	sd	s2,176(sp)
    80003774:	0b313423          	sd	s3,168(sp)
    80003778:	0b413023          	sd	s4,160(sp)
    8000377c:	09513c23          	sd	s5,152(sp)
    80003780:	0d010413          	addi	s0,sp,208
    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80003784:	00070493          	mv	s1,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003788:	142027f3          	csrr	a5,scause
    8000378c:	f8f43023          	sd	a5,-128(s0)
    return scause;
    80003790:	f8043783          	ld	a5,-128(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    80003794:	fff00713          	li	a4,-1
    80003798:	03f71713          	slli	a4,a4,0x3f
    8000379c:	00170713          	addi	a4,a4,1
    800037a0:	0ee78a63          	beq	a5,a4,80003894 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
    800037a4:	fff00713          	li	a4,-1
    800037a8:	03f71713          	slli	a4,a4,0x3f
    800037ac:	00170713          	addi	a4,a4,1
    800037b0:	0af76463          	bltu	a4,a5,80003858 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    800037b4:	ff878793          	addi	a5,a5,-8
    800037b8:	00100713          	li	a4,1
    800037bc:	0af76a63          	bltu	a4,a5,80003870 <_ZN5Riscv20handleSupervisorTrapEv+0x110>

        case ecallSystemInterupt:
        case ecallUserInterrupt:

            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800037c0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800037c4:	14102773          	csrr	a4,sepc
    800037c8:	f8e43c23          	sd	a4,-104(s0)
    return sepc;
    800037cc:	f9843703          	ld	a4,-104(s0)

            volatile uint64 sepc = Riscv::r_sepc();
    800037d0:	f4e43423          	sd	a4,-184(s0)
            sepc+=4;
    800037d4:	f4843703          	ld	a4,-184(s0)
    800037d8:	00470713          	addi	a4,a4,4
    800037dc:	f4e43423          	sd	a4,-184(s0)

            if(operation == MemoryAllocator::MEM_ALLOC)
    800037e0:	00100713          	li	a4,1
    800037e4:	14e78063          	beq	a5,a4,80003924 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                __asm__ volatile("mv %0, a1" : "=r"(size));
                size*=MEM_BLOCK_SIZE;
                void* allocatedAddr = kmalloc(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == MemoryAllocator::MEM_FREE)
    800037e8:	00200713          	li	a4,2
    800037ec:	14e78c63          	beq	a5,a4,80003944 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
                uint64 addr = 0;
                __asm__ volatile("mv %0, a1" : "=r"(addr));
                uint64 retval = kfree((void*)addr);
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == PCB::THREAD_CREATE)
    800037f0:	01100713          	li	a4,17
    800037f4:	16e78263          	beq	a5,a4,80003958 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
                if(newPCB == 0)
                    __asm__ volatile("li a0, 0xffffffffffffffff");
                else
                    __asm__ volatile("li a0, 0");
            }
            else if(operation == PCB::THREAD_DISPATCH)
    800037f8:	01300713          	li	a4,19
    800037fc:	1ae78463          	beq	a5,a4,800039a4 <_ZN5Riscv20handleSupervisorTrapEv+0x244>
                volatile uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::THREAD_EXIT)
    80003800:	01200713          	li	a4,18
    80003804:	1ce78863          	beq	a5,a4,800039d4 <_ZN5Riscv20handleSupervisorTrapEv+0x274>
                PCB::running->setState(PCB::FINISHED);
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                __asm__ volatile("li a0, 0");
            }
            else if(operation == PCB::TIME_SLEEP)
    80003808:	03100713          	li	a4,49
    8000380c:	22e78063          	beq	a5,a4,80003a2c <_ZN5Riscv20handleSupervisorTrapEv+0x2cc>
                SleepPCBList::insertSleepingPCB();
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
                __asm__ volatile("li a0, 0x0");
            }
            else if(operation == KSemaphore::SEM_OPEN)
    80003810:	02100713          	li	a4,33
    80003814:	26e78463          	beq	a5,a4,80003a7c <_ZN5Riscv20handleSupervisorTrapEv+0x31c>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
                else
                        __asm__ volatile("li a0, 0");

            }
            else if(operation == KSemaphore::SEM_WAIT)
    80003818:	02300713          	li	a4,35
    8000381c:	28e78e63          	beq	a5,a4,80003ab8 <_ZN5Riscv20handleSupervisorTrapEv+0x358>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                volatile uint64 retval = kSem->wait();
                Riscv::w_sstatus(sstatus);
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_SIGNAL)
    80003820:	02400713          	li	a4,36
    80003824:	2ce78463          	beq	a5,a4,80003aec <_ZN5Riscv20handleSupervisorTrapEv+0x38c>
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                volatile uint64 retval = kSem->signal();
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_CLOSE)
    80003828:	02200713          	li	a4,34
    8000382c:	10e79663          	bne	a5,a4,80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
            {
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003830:	00058493          	mv	s1,a1
                delete kSem;
    80003834:	00048e63          	beqz	s1,80003850 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80003838:	00048513          	mv	a0,s1
    8000383c:	00001097          	auipc	ra,0x1
    80003840:	8d0080e7          	jalr	-1840(ra) # 8000410c <_ZN10KSemaphoreD1Ev>
    80003844:	00048513          	mv	a0,s1
    80003848:	00001097          	auipc	ra,0x1
    8000384c:	9f4080e7          	jalr	-1548(ra) # 8000423c <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    80003850:	00000513          	li	a0,0
    80003854:	0e40006f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    switch(scause)
    80003858:	fff00713          	li	a4,-1
    8000385c:	03f71713          	slli	a4,a4,0x3f
    80003860:	00970713          	addi	a4,a4,9
    80003864:	00e79663          	bne	a5,a4,80003870 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            console_handler();
    80003868:	00005097          	auipc	ra,0x5
    8000386c:	8d8080e7          	jalr	-1832(ra) # 80008140 <console_handler>

            Riscv::w_sepc(sepc);

            return;
    }
}
    80003870:	0c813083          	ld	ra,200(sp)
    80003874:	0c013403          	ld	s0,192(sp)
    80003878:	0b813483          	ld	s1,184(sp)
    8000387c:	0b013903          	ld	s2,176(sp)
    80003880:	0a813983          	ld	s3,168(sp)
    80003884:	0a013a03          	ld	s4,160(sp)
    80003888:	09813a83          	ld	s5,152(sp)
    8000388c:	0d010113          	addi	sp,sp,208
    80003890:	00008067          	ret
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003894:	00200793          	li	a5,2
    80003898:	1447b073          	csrc	sip,a5
            total++;
    8000389c:	00008717          	auipc	a4,0x8
    800038a0:	03c70713          	addi	a4,a4,60 # 8000b8d8 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    800038a4:	00073783          	ld	a5,0(a4)
    800038a8:	00178793          	addi	a5,a5,1
    800038ac:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    800038b0:	00008497          	auipc	s1,0x8
    800038b4:	f384b483          	ld	s1,-200(s1) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800038b8:	0004b783          	ld	a5,0(s1)
    800038bc:	00178793          	addi	a5,a5,1
    800038c0:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	494080e7          	jalr	1172(ra) # 80002d58 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800038cc:	00008797          	auipc	a5,0x8
    800038d0:	f2c7b783          	ld	a5,-212(a5) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800038d4:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800038d8:	0107b783          	ld	a5,16(a5)
    800038dc:	0004b703          	ld	a4,0(s1)
    800038e0:	f8f768e3          	bltu	a4,a5,80003870 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800038e4:	141027f3          	csrr	a5,sepc
    800038e8:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    800038ec:	f9043783          	ld	a5,-112(s0)
                volatile uint64 sepc = Riscv::r_sepc();
    800038f0:	f2f43c23          	sd	a5,-200(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800038f4:	100027f3          	csrr	a5,sstatus
    800038f8:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    800038fc:	f8843783          	ld	a5,-120(s0)
                volatile uint64 sstatus = Riscv::r_sstatus();
    80003900:	f4f43023          	sd	a5,-192(s0)
                PCB::timeSliceCounter = 0;
    80003904:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	e94080e7          	jalr	-364(ra) # 8000279c <_ZN3PCB8dispatchEv>
                Riscv::w_sstatus(sstatus);
    80003910:	f4043783          	ld	a5,-192(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003914:	10079073          	csrw	sstatus,a5
                Riscv::w_sepc(sepc);
    80003918:	f3843783          	ld	a5,-200(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000391c:	14179073          	csrw	sepc,a5
}
    80003920:	f51ff06f          	j	80003870 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80003924:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80003928:	00651513          	slli	a0,a0,0x6
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	648080e7          	jalr	1608(ra) # 80003f74 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003934:	00050513          	mv	a0,a0
            Riscv::w_sepc(sepc);
    80003938:	f4843783          	ld	a5,-184(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000393c:	14179073          	csrw	sepc,a5
}
    80003940:	f31ff06f          	j	80003870 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003944:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	654080e7          	jalr	1620(ra) # 80003f9c <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003950:	00050513          	mv	a0,a0
    80003954:	fe5ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80003958:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000395c:	00060a13          	mv	s4,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80003960:	00068a93          	mv	s5,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003964:	05000513          	li	a0,80
    80003968:	fffff097          	auipc	ra,0xfffff
    8000396c:	ec4080e7          	jalr	-316(ra) # 8000282c <_ZN3PCBnwEm>
    80003970:	00050913          	mv	s2,a0
    80003974:	00200713          	li	a4,2
    80003978:	00048693          	mv	a3,s1
    8000397c:	000a8613          	mv	a2,s5
    80003980:	000a0593          	mv	a1,s4
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	d70080e7          	jalr	-656(ra) # 800026f4 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    8000398c:	0129b023          	sd	s2,0(s3)
                if(newPCB == 0)
    80003990:	00090663          	beqz	s2,8000399c <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
                    __asm__ volatile("li a0, 0");
    80003994:	00000513          	li	a0,0
    80003998:	fa1ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    8000399c:	fff00513          	li	a0,-1
    800039a0:	f99ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800039a4:	100027f3          	csrr	a5,sstatus
    800039a8:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    800039ac:	fa043783          	ld	a5,-96(s0)
                volatile uint64 sstatus = Riscv::r_sstatus();
    800039b0:	f4f43823          	sd	a5,-176(s0)
                PCB::timeSliceCounter = 0;
    800039b4:	00008797          	auipc	a5,0x8
    800039b8:	e347b783          	ld	a5,-460(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039bc:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800039c0:	fffff097          	auipc	ra,0xfffff
    800039c4:	ddc080e7          	jalr	-548(ra) # 8000279c <_ZN3PCB8dispatchEv>
                Riscv::w_sstatus(sstatus);
    800039c8:	f5043783          	ld	a5,-176(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800039cc:	10079073          	csrw	sstatus,a5
}
    800039d0:	f69ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                Riscv::printString("Exiting thread...\n");
    800039d4:	00006517          	auipc	a0,0x6
    800039d8:	8cc50513          	addi	a0,a0,-1844 # 800092a0 <CONSOLE_STATUS+0x290>
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	c4c080e7          	jalr	-948(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800039e4:	100027f3          	csrr	a5,sstatus
    800039e8:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800039ec:	fa843783          	ld	a5,-88(s0)
                volatile uint64 sstatus = Riscv::r_sstatus();
    800039f0:	f4f43c23          	sd	a5,-168(s0)
                PCB::timeSliceCounter = 0;
    800039f4:	00008797          	auipc	a5,0x8
    800039f8:	df47b783          	ld	a5,-524(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039fc:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    80003a00:	00008797          	auipc	a5,0x8
    80003a04:	df87b783          	ld	a5,-520(a5) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003a08:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80003a0c:	00300713          	li	a4,3
    80003a10:	02e7ac23          	sw	a4,56(a5)
                PCB::dispatch();
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	d88080e7          	jalr	-632(ra) # 8000279c <_ZN3PCB8dispatchEv>
                Riscv::w_sstatus(sstatus);
    80003a1c:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003a20:	10079073          	csrw	sstatus,a5
                __asm__ volatile("li a0, 0");
    80003a24:	00000513          	li	a0,0
    80003a28:	f11ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80003a2c:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a30:	100027f3          	csrr	a5,sstatus
    80003a34:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003a38:	fb043783          	ld	a5,-80(s0)
                volatile uint64 sstatus = Riscv::r_sstatus();
    80003a3c:	f6f43023          	sd	a5,-160(s0)
                PCB::timeSliceCounter = 0;
    80003a40:	00008797          	auipc	a5,0x8
    80003a44:	da87b783          	ld	a5,-600(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003a48:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    80003a4c:	00008797          	auipc	a5,0x8
    80003a50:	dac7b783          	ld	a5,-596(a5) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003a54:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003a58:	00e7bc23          	sd	a4,24(a5)
                SleepPCBList::insertSleepingPCB();
    80003a5c:	fffff097          	auipc	ra,0xfffff
    80003a60:	268080e7          	jalr	616(ra) # 80002cc4 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	d38080e7          	jalr	-712(ra) # 8000279c <_ZN3PCB8dispatchEv>
                Riscv::w_sstatus(sstatus);
    80003a6c:	f6043783          	ld	a5,-160(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003a70:	10079073          	csrw	sstatus,a5
                __asm__ volatile("li a0, 0x0");
    80003a74:	00000513          	li	a0,0
    80003a78:	ec1ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003a7c:	00058913          	mv	s2,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80003a80:	00060993          	mv	s3,a2
                KSemaphore* newSem = new KSemaphore(val);
    80003a84:	01800513          	li	a0,24
    80003a88:	00000097          	auipc	ra,0x0
    80003a8c:	78c080e7          	jalr	1932(ra) # 80004214 <_ZN10KSemaphorenwEm>
    80003a90:	00050493          	mv	s1,a0
    80003a94:	0009859b          	sext.w	a1,s3
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	52c080e7          	jalr	1324(ra) # 80003fc4 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80003aa0:	00993023          	sd	s1,0(s2)
                if(newSem == 0)
    80003aa4:	00048663          	beqz	s1,80003ab0 <_ZN5Riscv20handleSupervisorTrapEv+0x350>
                        __asm__ volatile("li a0, 0");
    80003aa8:	00000513          	li	a0,0
    80003aac:	e8dff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80003ab0:	fff00513          	li	a0,-1
    80003ab4:	e85ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003ab8:	100027f3          	csrr	a5,sstatus
    80003abc:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80003ac0:	fb843783          	ld	a5,-72(s0)
                volatile uint64 sstatus = Riscv::r_sstatus();
    80003ac4:	f6f43423          	sd	a5,-152(s0)
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003ac8:	00058513          	mv	a0,a1
                volatile uint64 retval = kSem->wait();
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	5a0080e7          	jalr	1440(ra) # 8000406c <_ZN10KSemaphore4waitEv>
    80003ad4:	f6a43823          	sd	a0,-144(s0)
                Riscv::w_sstatus(sstatus);
    80003ad8:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003adc:	10079073          	csrw	sstatus,a5
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003ae0:	f7043783          	ld	a5,-144(s0)
    80003ae4:	00078513          	mv	a0,a5
    80003ae8:	e51ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003aec:	00058513          	mv	a0,a1
                volatile uint64 retval = kSem->signal();
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	6dc080e7          	jalr	1756(ra) # 800041cc <_ZN10KSemaphore6signalEv>
    80003af8:	f6a43c23          	sd	a0,-136(s0)
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003afc:	f7843783          	ld	a5,-136(s0)
    80003b00:	00078513          	mv	a0,a5
    80003b04:	e35ff06f          	j	80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80003b08:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003b0c:	00090513          	mv	a0,s2
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	d44080e7          	jalr	-700(ra) # 80002854 <_ZN3PCBdlEPv>
    80003b18:	00048513          	mv	a0,s1
    80003b1c:	00009097          	auipc	ra,0x9
    80003b20:	ecc080e7          	jalr	-308(ra) # 8000c9e8 <_Unwind_Resume>
    80003b24:	00050913          	mv	s2,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	00000097          	auipc	ra,0x0
    80003b30:	710080e7          	jalr	1808(ra) # 8000423c <_ZN10KSemaphoredlEPv>
    80003b34:	00090513          	mv	a0,s2
    80003b38:	00009097          	auipc	ra,0x9
    80003b3c:	eb0080e7          	jalr	-336(ra) # 8000c9e8 <_Unwind_Resume>

0000000080003b40 <_ZN5Riscv10kernelMainEv>:

void Riscv::kernelMain()
{
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00113423          	sd	ra,8(sp)
    80003b48:	00813023          	sd	s0,0(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    initSystem();
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	a14080e7          	jalr	-1516(ra) # 80003564 <_ZN5Riscv10initSystemEv>

    enableInterrupts();
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	a48080e7          	jalr	-1464(ra) # 800035a0 <_ZN5Riscv16enableInterruptsEv>
    //while(userPCB->getState() != PCB::FINISHED)
    //{
    //    thread_dispatch();
    //}

    myTests();
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	9e8080e7          	jalr	-1560(ra) # 80002548 <_Z7myTestsv>

    disableInterrupts();
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	a58080e7          	jalr	-1448(ra) # 800035c0 <_ZN5Riscv17disableInterruptsEv>

    endSystem();
    80003b70:	00000097          	auipc	ra,0x0
    80003b74:	a70080e7          	jalr	-1424(ra) # 800035e0 <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    80003b78:	00005517          	auipc	a0,0x5
    80003b7c:	74050513          	addi	a0,a0,1856 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	aa8080e7          	jalr	-1368(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    80003b88:	00813083          	ld	ra,8(sp)
    80003b8c:	00013403          	ld	s0,0(sp)
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret

0000000080003b98 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* ) {
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00113423          	sd	ra,8(sp)
    80003ba0:	00813023          	sd	s0,0(sp)
    80003ba4:	01010413          	addi	s0,sp,16
    userMain();
    80003ba8:	00002097          	auipc	ra,0x2
    80003bac:	0d0080e7          	jalr	208(ra) # 80005c78 <_Z8userMainv>
}
    80003bb0:	00813083          	ld	ra,8(sp)
    80003bb4:	00013403          	ld	s0,0(sp)
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00813423          	sd	s0,8(sp)
    80003bc8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003bcc:	00008717          	auipc	a4,0x8
    80003bd0:	d1472703          	lw	a4,-748(a4) # 8000b8e0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003bd4:	00100793          	li	a5,1
    80003bd8:	04f70263          	beq	a4,a5,80003c1c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003bdc:	00008797          	auipc	a5,0x8
    80003be0:	d0478793          	addi	a5,a5,-764 # 8000b8e0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003be4:	00100713          	li	a4,1
    80003be8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003bec:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003bf0:	00008717          	auipc	a4,0x8
    80003bf4:	be873703          	ld	a4,-1048(a4) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003bf8:	00073703          	ld	a4,0(a4)
    80003bfc:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003c00:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003c04:	00008797          	auipc	a5,0x8
    80003c08:	bfc7b783          	ld	a5,-1028(a5) # 8000b800 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003c0c:	0007b783          	ld	a5,0(a5)
    80003c10:	40e787b3          	sub	a5,a5,a4
    80003c14:	ff178793          	addi	a5,a5,-15
    80003c18:	00f73023          	sd	a5,0(a4)
}
    80003c1c:	00813403          	ld	s0,8(sp)
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret

0000000080003c28 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00113c23          	sd	ra,24(sp)
    80003c30:	00813823          	sd	s0,16(sp)
    80003c34:	00913423          	sd	s1,8(sp)
    80003c38:	01213023          	sd	s2,0(sp)
    80003c3c:	02010413          	addi	s0,sp,32
    80003c40:	00050493          	mv	s1,a0
    80003c44:	00058913          	mv	s2,a1
    initMemory();
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	f78080e7          	jalr	-136(ra) # 80003bc0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003c50:	00008797          	auipc	a5,0x8
    80003c54:	c987b783          	ld	a5,-872(a5) # 8000b8e8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003c58:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003c5c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003c60:	00000713          	li	a4,0
    while(curr != 0)
    80003c64:	00078c63          	beqz	a5,80003c7c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003c68:	00f4e863          	bltu	s1,a5,80003c78 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003c6c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003c70:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003c74:	ff1ff06f          	j	80003c64 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003c78:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003c7c:	02070063          	beqz	a4,80003c9c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003c80:	00973423          	sd	s1,8(a4)
}
    80003c84:	01813083          	ld	ra,24(sp)
    80003c88:	01013403          	ld	s0,16(sp)
    80003c8c:	00813483          	ld	s1,8(sp)
    80003c90:	00013903          	ld	s2,0(sp)
    80003c94:	02010113          	addi	sp,sp,32
    80003c98:	00008067          	ret
        headAllocated = newAllocated;
    80003c9c:	00008797          	auipc	a5,0x8
    80003ca0:	c497b623          	sd	s1,-948(a5) # 8000b8e8 <_ZN15MemoryAllocator13headAllocatedE>
    80003ca4:	fe1ff06f          	j	80003c84 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003ca8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003ca8:	fe010113          	addi	sp,sp,-32
    80003cac:	00113c23          	sd	ra,24(sp)
    80003cb0:	00813823          	sd	s0,16(sp)
    80003cb4:	00913423          	sd	s1,8(sp)
    80003cb8:	01213023          	sd	s2,0(sp)
    80003cbc:	02010413          	addi	s0,sp,32
    80003cc0:	00050913          	mv	s2,a0
    initMemory();
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	efc080e7          	jalr	-260(ra) # 80003bc0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003ccc:	00008497          	auipc	s1,0x8
    80003cd0:	c244b483          	ld	s1,-988(s1) # 8000b8f0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003cd4:	00000713          	li	a4,0
    while(curr != 0)
    80003cd8:	0a048863          	beqz	s1,80003d88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003cdc:	0004b783          	ld	a5,0(s1)
    80003ce0:	0127f863          	bgeu	a5,s2,80003cf0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003ce4:	00048713          	mv	a4,s1
        curr = curr->next;
    80003ce8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003cec:	fedff06f          	j	80003cd8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003cf0:	01090693          	addi	a3,s2,16
    80003cf4:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003cf8:	00008617          	auipc	a2,0x8
    80003cfc:	b0863603          	ld	a2,-1272(a2) # 8000b800 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003d00:	00063603          	ld	a2,0(a2)
    80003d04:	04d66c63          	bltu	a2,a3,80003d5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003d08:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003d0c:	01000613          	li	a2,16
    80003d10:	02f67663          	bgeu	a2,a5,80003d3c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003d14:	0084b603          	ld	a2,8(s1)
    80003d18:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003d1c:	ff078793          	addi	a5,a5,-16
    80003d20:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003d24:	00070663          	beqz	a4,80003d30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003d28:	00d73423          	sd	a3,8(a4)
    80003d2c:	0380006f          	j	80003d64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003d30:	00008797          	auipc	a5,0x8
    80003d34:	bcd7b023          	sd	a3,-1088(a5) # 8000b8f0 <_ZN15MemoryAllocator8headFreeE>
    80003d38:	02c0006f          	j	80003d64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003d3c:	00070863          	beqz	a4,80003d4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003d40:	0084b783          	ld	a5,8(s1)
    80003d44:	00f73423          	sd	a5,8(a4)
    80003d48:	01c0006f          	j	80003d64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003d4c:	0084b783          	ld	a5,8(s1)
    80003d50:	00008717          	auipc	a4,0x8
    80003d54:	baf73023          	sd	a5,-1120(a4) # 8000b8f0 <_ZN15MemoryAllocator8headFreeE>
    80003d58:	00c0006f          	j	80003d64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003d5c:	02070063          	beqz	a4,80003d7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003d60:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003d64:	00090593          	mv	a1,s2
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	00000097          	auipc	ra,0x0
    80003d70:	ebc080e7          	jalr	-324(ra) # 80003c28 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003d74:	01048513          	addi	a0,s1,16
            break;
    80003d78:	0140006f          	j	80003d8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003d7c:	00008797          	auipc	a5,0x8
    80003d80:	b607ba23          	sd	zero,-1164(a5) # 8000b8f0 <_ZN15MemoryAllocator8headFreeE>
    80003d84:	fe1ff06f          	j	80003d64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003d88:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003d8c:	01813083          	ld	ra,24(sp)
    80003d90:	01013403          	ld	s0,16(sp)
    80003d94:	00813483          	ld	s1,8(sp)
    80003d98:	00013903          	ld	s2,0(sp)
    80003d9c:	02010113          	addi	sp,sp,32
    80003da0:	00008067          	ret

0000000080003da4 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003da4:	ff010113          	addi	sp,sp,-16
    80003da8:	00113423          	sd	ra,8(sp)
    80003dac:	00813023          	sd	s0,0(sp)
    80003db0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003db4:	00000097          	auipc	ra,0x0
    80003db8:	ef4080e7          	jalr	-268(ra) # 80003ca8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003dbc:	00813083          	ld	ra,8(sp)
    80003dc0:	00013403          	ld	s0,0(sp)
    80003dc4:	01010113          	addi	sp,sp,16
    80003dc8:	00008067          	ret

0000000080003dcc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003dcc:	fe010113          	addi	sp,sp,-32
    80003dd0:	00113c23          	sd	ra,24(sp)
    80003dd4:	00813823          	sd	s0,16(sp)
    80003dd8:	00913423          	sd	s1,8(sp)
    80003ddc:	01213023          	sd	s2,0(sp)
    80003de0:	02010413          	addi	s0,sp,32
    80003de4:	00050493          	mv	s1,a0
    80003de8:	00058913          	mv	s2,a1
    initMemory();
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	dd4080e7          	jalr	-556(ra) # 80003bc0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003df4:	00008797          	auipc	a5,0x8
    80003df8:	afc7b783          	ld	a5,-1284(a5) # 8000b8f0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003dfc:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003e00:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003e04:	00000713          	li	a4,0
    while(curr != 0)
    80003e08:	00078c63          	beqz	a5,80003e20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003e0c:	00f4e863          	bltu	s1,a5,80003e1c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003e10:	00078713          	mv	a4,a5
        curr = curr->next;
    80003e14:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003e18:	ff1ff06f          	j	80003e08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003e1c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003e20:	04070663          	beqz	a4,80003e6c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003e24:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003e28:	0084b783          	ld	a5,8(s1)
    80003e2c:	00078a63          	beqz	a5,80003e40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003e30:	0004b603          	ld	a2,0(s1)
    80003e34:	01060693          	addi	a3,a2,16
    80003e38:	00d486b3          	add	a3,s1,a3
    80003e3c:	02d78e63          	beq	a5,a3,80003e78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
        //Riscv::printString("Merged front\n");
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003e40:	00070a63          	beqz	a4,80003e54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003e44:	00073683          	ld	a3,0(a4)
    80003e48:	01068793          	addi	a5,a3,16
    80003e4c:	00f707b3          	add	a5,a4,a5
    80003e50:	04978263          	beq	a5,s1,80003e94 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        //Riscv::printString("Merged back\n");
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003e54:	01813083          	ld	ra,24(sp)
    80003e58:	01013403          	ld	s0,16(sp)
    80003e5c:	00813483          	ld	s1,8(sp)
    80003e60:	00013903          	ld	s2,0(sp)
    80003e64:	02010113          	addi	sp,sp,32
    80003e68:	00008067          	ret
        headFree = newSegment;
    80003e6c:	00008797          	auipc	a5,0x8
    80003e70:	a897b223          	sd	s1,-1404(a5) # 8000b8f0 <_ZN15MemoryAllocator8headFreeE>
    80003e74:	fb5ff06f          	j	80003e28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003e78:	0007b683          	ld	a3,0(a5)
    80003e7c:	00d60633          	add	a2,a2,a3
    80003e80:	01060613          	addi	a2,a2,16
    80003e84:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003e88:	0087b783          	ld	a5,8(a5)
    80003e8c:	00f4b423          	sd	a5,8(s1)
    80003e90:	fb1ff06f          	j	80003e40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003e94:	0004b783          	ld	a5,0(s1)
    80003e98:	00f686b3          	add	a3,a3,a5
    80003e9c:	01068693          	addi	a3,a3,16
    80003ea0:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003ea4:	0084b783          	ld	a5,8(s1)
    80003ea8:	00f73423          	sd	a5,8(a4)
}
    80003eac:	fa9ff06f          	j	80003e54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003eb0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003eb0:	fe010113          	addi	sp,sp,-32
    80003eb4:	00113c23          	sd	ra,24(sp)
    80003eb8:	00813823          	sd	s0,16(sp)
    80003ebc:	00913423          	sd	s1,8(sp)
    80003ec0:	01213023          	sd	s2,0(sp)
    80003ec4:	02010413          	addi	s0,sp,32
    80003ec8:	00050913          	mv	s2,a0
    initMemory();
    80003ecc:	00000097          	auipc	ra,0x0
    80003ed0:	cf4080e7          	jalr	-780(ra) # 80003bc0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003ed4:	00008497          	auipc	s1,0x8
    80003ed8:	a144b483          	ld	s1,-1516(s1) # 8000b8e8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003edc:	00000713          	li	a4,0
    while(curr != 0)
    80003ee0:	02048a63          	beqz	s1,80003f14 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003ee4:	01048793          	addi	a5,s1,16
    80003ee8:	01278863          	beq	a5,s2,80003ef8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003eec:	00048713          	mv	a4,s1
        curr = curr->next;
    80003ef0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003ef4:	fedff06f          	j	80003ee0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003ef8:	02070e63          	beqz	a4,80003f34 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003efc:	0084b783          	ld	a5,8(s1)
    80003f00:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003f04:	0004b583          	ld	a1,0(s1)
    80003f08:	00048513          	mv	a0,s1
    80003f0c:	00000097          	auipc	ra,0x0
    80003f10:	ec0080e7          	jalr	-320(ra) # 80003dcc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003f14:	02048863          	beqz	s1,80003f44 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003f18:	00000513          	li	a0,0
    else
        return 1;
}
    80003f1c:	01813083          	ld	ra,24(sp)
    80003f20:	01013403          	ld	s0,16(sp)
    80003f24:	00813483          	ld	s1,8(sp)
    80003f28:	00013903          	ld	s2,0(sp)
    80003f2c:	02010113          	addi	sp,sp,32
    80003f30:	00008067          	ret
                headAllocated = curr->next;
    80003f34:	0084b783          	ld	a5,8(s1)
    80003f38:	00008717          	auipc	a4,0x8
    80003f3c:	9af73823          	sd	a5,-1616(a4) # 8000b8e8 <_ZN15MemoryAllocator13headAllocatedE>
    80003f40:	fc5ff06f          	j	80003f04 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003f44:	00100513          	li	a0,1
    80003f48:	fd5ff06f          	j	80003f1c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003f4c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80003f4c:	ff010113          	addi	sp,sp,-16
    80003f50:	00113423          	sd	ra,8(sp)
    80003f54:	00813023          	sd	s0,0(sp)
    80003f58:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003f5c:	00000097          	auipc	ra,0x0
    80003f60:	f54080e7          	jalr	-172(ra) # 80003eb0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003f64:	00813083          	ld	ra,8(sp)
    80003f68:	00013403          	ld	s0,0(sp)
    80003f6c:	01010113          	addi	sp,sp,16
    80003f70:	00008067          	ret

0000000080003f74 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003f74:	ff010113          	addi	sp,sp,-16
    80003f78:	00113423          	sd	ra,8(sp)
    80003f7c:	00813023          	sd	s0,0(sp)
    80003f80:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003f84:	00000097          	auipc	ra,0x0
    80003f88:	e20080e7          	jalr	-480(ra) # 80003da4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003f8c:	00813083          	ld	ra,8(sp)
    80003f90:	00013403          	ld	s0,0(sp)
    80003f94:	01010113          	addi	sp,sp,16
    80003f98:	00008067          	ret

0000000080003f9c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003f9c:	ff010113          	addi	sp,sp,-16
    80003fa0:	00113423          	sd	ra,8(sp)
    80003fa4:	00813023          	sd	s0,0(sp)
    80003fa8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003fac:	00000097          	auipc	ra,0x0
    80003fb0:	fa0080e7          	jalr	-96(ra) # 80003f4c <_ZN15MemoryAllocator8mem_freeEPv>
    80003fb4:	00813083          	ld	ra,8(sp)
    80003fb8:	00013403          	ld	s0,0(sp)
    80003fbc:	01010113          	addi	sp,sp,16
    80003fc0:	00008067          	ret

0000000080003fc4 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003fc4:	ff010113          	addi	sp,sp,-16
    80003fc8:	00813423          	sd	s0,8(sp)
    80003fcc:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003fd0:	00b52a23          	sw	a1,20(a0)
    80003fd4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003fd8:	00053423          	sd	zero,8(a0)
    80003fdc:	00053023          	sd	zero,0(a0)
}
    80003fe0:	00813403          	ld	s0,8(sp)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret

0000000080003fec <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003fec:	ff010113          	addi	sp,sp,-16
    80003ff0:	00813423          	sd	s0,8(sp)
    80003ff4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003ff8:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80003ffc:	00053783          	ld	a5,0(a0)
    80004000:	00078e63          	beqz	a5,8000401c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004004:	00853783          	ld	a5,8(a0)
    80004008:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    8000400c:	00b53423          	sd	a1,8(a0)
    }
}
    80004010:	00813403          	ld	s0,8(sp)
    80004014:	01010113          	addi	sp,sp,16
    80004018:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000401c:	00b53423          	sd	a1,8(a0)
    80004020:	00b53023          	sd	a1,0(a0)
    80004024:	fedff06f          	j	80004010 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004028 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80004028:	ff010113          	addi	sp,sp,-16
    8000402c:	00113423          	sd	ra,8(sp)
    80004030:	00813023          	sd	s0,0(sp)
    80004034:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004038:	00007797          	auipc	a5,0x7
    8000403c:	7c07b783          	ld	a5,1984(a5) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004040:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004044:	00200793          	li	a5,2
    80004048:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    8000404c:	00000097          	auipc	ra,0x0
    80004050:	fa0080e7          	jalr	-96(ra) # 80003fec <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004054:	ffffe097          	auipc	ra,0xffffe
    80004058:	748080e7          	jalr	1864(ra) # 8000279c <_ZN3PCB8dispatchEv>
}
    8000405c:	00813083          	ld	ra,8(sp)
    80004060:	00013403          	ld	s0,0(sp)
    80004064:	01010113          	addi	sp,sp,16
    80004068:	00008067          	ret

000000008000406c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    8000406c:	01052783          	lw	a5,16(a0)
    80004070:	fff7879b          	addiw	a5,a5,-1
    80004074:	00f52823          	sw	a5,16(a0)
    80004078:	02079713          	slli	a4,a5,0x20
    8000407c:	00074663          	bltz	a4,80004088 <_ZN10KSemaphore4waitEv+0x1c>
}
    80004080:	00000513          	li	a0,0
    80004084:	00008067          	ret
uint64 KSemaphore::wait() {
    80004088:	ff010113          	addi	sp,sp,-16
    8000408c:	00113423          	sd	ra,8(sp)
    80004090:	00813023          	sd	s0,0(sp)
    80004094:	01010413          	addi	s0,sp,16
        block();
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	f90080e7          	jalr	-112(ra) # 80004028 <_ZN10KSemaphore5blockEv>
}
    800040a0:	00000513          	li	a0,0
    800040a4:	00813083          	ld	ra,8(sp)
    800040a8:	00013403          	ld	s0,0(sp)
    800040ac:	01010113          	addi	sp,sp,16
    800040b0:	00008067          	ret

00000000800040b4 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00813423          	sd	s0,8(sp)
    800040bc:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800040c0:	00053503          	ld	a0,0(a0)
    800040c4:	00813403          	ld	s0,8(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret

00000000800040d0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800040d0:	ff010113          	addi	sp,sp,-16
    800040d4:	00813423          	sd	s0,8(sp)
    800040d8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800040dc:	00053783          	ld	a5,0(a0)
    800040e0:	00078c63          	beqz	a5,800040f8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800040e4:	0087b703          	ld	a4,8(a5)
    800040e8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800040ec:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800040f0:	00053783          	ld	a5,0(a0)
    800040f4:	00078863          	beqz	a5,80004104 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800040f8:	00813403          	ld	s0,8(sp)
    800040fc:	01010113          	addi	sp,sp,16
    80004100:	00008067          	ret
        tailBlocked =0;
    80004104:	00053423          	sd	zero,8(a0)
    80004108:	ff1ff06f          	j	800040f8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000410c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00113c23          	sd	ra,24(sp)
    80004114:	00813823          	sd	s0,16(sp)
    80004118:	00913423          	sd	s1,8(sp)
    8000411c:	01213023          	sd	s2,0(sp)
    80004120:	02010413          	addi	s0,sp,32
    80004124:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004128:	00090513          	mv	a0,s2
    8000412c:	00000097          	auipc	ra,0x0
    80004130:	f88080e7          	jalr	-120(ra) # 800040b4 <_ZN10KSemaphore15getFirstBlockedEv>
    80004134:	00050493          	mv	s1,a0
    80004138:	02050063          	beqz	a0,80004158 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    8000413c:	00090513          	mv	a0,s2
    80004140:	00000097          	auipc	ra,0x0
    80004144:	f90080e7          	jalr	-112(ra) # 800040d0 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004148:	00048513          	mv	a0,s1
    8000414c:	fffff097          	auipc	ra,0xfffff
    80004150:	ebc080e7          	jalr	-324(ra) # 80003008 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004154:	fd5ff06f          	j	80004128 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004158:	01813083          	ld	ra,24(sp)
    8000415c:	01013403          	ld	s0,16(sp)
    80004160:	00813483          	ld	s1,8(sp)
    80004164:	00013903          	ld	s2,0(sp)
    80004168:	02010113          	addi	sp,sp,32
    8000416c:	00008067          	ret

0000000080004170 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004170:	fe010113          	addi	sp,sp,-32
    80004174:	00113c23          	sd	ra,24(sp)
    80004178:	00813823          	sd	s0,16(sp)
    8000417c:	00913423          	sd	s1,8(sp)
    80004180:	01213023          	sd	s2,0(sp)
    80004184:	02010413          	addi	s0,sp,32
    80004188:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000418c:	00000097          	auipc	ra,0x0
    80004190:	f28080e7          	jalr	-216(ra) # 800040b4 <_ZN10KSemaphore15getFirstBlockedEv>
    80004194:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004198:	00090513          	mv	a0,s2
    8000419c:	00000097          	auipc	ra,0x0
    800041a0:	f34080e7          	jalr	-204(ra) # 800040d0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800041a4:	00048863          	beqz	s1,800041b4 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    800041a8:	00048513          	mv	a0,s1
    800041ac:	fffff097          	auipc	ra,0xfffff
    800041b0:	e5c080e7          	jalr	-420(ra) # 80003008 <_ZN9Scheduler3putEP3PCB>
}
    800041b4:	01813083          	ld	ra,24(sp)
    800041b8:	01013403          	ld	s0,16(sp)
    800041bc:	00813483          	ld	s1,8(sp)
    800041c0:	00013903          	ld	s2,0(sp)
    800041c4:	02010113          	addi	sp,sp,32
    800041c8:	00008067          	ret

00000000800041cc <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800041cc:	01052783          	lw	a5,16(a0)
    800041d0:	0017879b          	addiw	a5,a5,1
    800041d4:	0007871b          	sext.w	a4,a5
    800041d8:	00f52823          	sw	a5,16(a0)
    800041dc:	00e05663          	blez	a4,800041e8 <_ZN10KSemaphore6signalEv+0x1c>
}
    800041e0:	00000513          	li	a0,0
    800041e4:	00008067          	ret
uint64 KSemaphore::signal() {
    800041e8:	ff010113          	addi	sp,sp,-16
    800041ec:	00113423          	sd	ra,8(sp)
    800041f0:	00813023          	sd	s0,0(sp)
    800041f4:	01010413          	addi	s0,sp,16
        unblock();
    800041f8:	00000097          	auipc	ra,0x0
    800041fc:	f78080e7          	jalr	-136(ra) # 80004170 <_ZN10KSemaphore7unblockEv>
}
    80004200:	00000513          	li	a0,0
    80004204:	00813083          	ld	ra,8(sp)
    80004208:	00013403          	ld	s0,0(sp)
    8000420c:	01010113          	addi	sp,sp,16
    80004210:	00008067          	ret

0000000080004214 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80004214:	ff010113          	addi	sp,sp,-16
    80004218:	00113423          	sd	ra,8(sp)
    8000421c:	00813023          	sd	s0,0(sp)
    80004220:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004224:	00000097          	auipc	ra,0x0
    80004228:	d50080e7          	jalr	-688(ra) # 80003f74 <_Z7kmallocm>
}
    8000422c:	00813083          	ld	ra,8(sp)
    80004230:	00013403          	ld	s0,0(sp)
    80004234:	01010113          	addi	sp,sp,16
    80004238:	00008067          	ret

000000008000423c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    8000423c:	ff010113          	addi	sp,sp,-16
    80004240:	00113423          	sd	ra,8(sp)
    80004244:	00813023          	sd	s0,0(sp)
    80004248:	01010413          	addi	s0,sp,16
    kfree(p);
    8000424c:	00000097          	auipc	ra,0x0
    80004250:	d50080e7          	jalr	-688(ra) # 80003f9c <_Z5kfreePv>
}
    80004254:	00813083          	ld	ra,8(sp)
    80004258:	00013403          	ld	s0,0(sp)
    8000425c:	01010113          	addi	sp,sp,16
    80004260:	00008067          	ret

0000000080004264 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80004264:	fd010113          	addi	sp,sp,-48
    80004268:	02113423          	sd	ra,40(sp)
    8000426c:	02813023          	sd	s0,32(sp)
    80004270:	00913c23          	sd	s1,24(sp)
    80004274:	01213823          	sd	s2,16(sp)
    80004278:	01313423          	sd	s3,8(sp)
    8000427c:	03010413          	addi	s0,sp,48
    80004280:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("producer started\n");
    80004284:	00005517          	auipc	a0,0x5
    80004288:	04c50513          	addi	a0,a0,76 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    8000428c:	fffff097          	auipc	ra,0xfffff
    80004290:	39c080e7          	jalr	924(ra) # 80003628 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80004294:	00000993          	li	s3,0
    while (!threadEnd) {
    80004298:	00007797          	auipc	a5,0x7
    8000429c:	6607a783          	lw	a5,1632(a5) # 8000b8f8 <threadEnd>
    800042a0:	0c079863          	bnez	a5,80004370 <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    800042a4:	00092583          	lw	a1,0(s2)
    800042a8:	0305859b          	addiw	a1,a1,48
    800042ac:	00893503          	ld	a0,8(s2)
    800042b0:	00002097          	auipc	ra,0x2
    800042b4:	c40080e7          	jalr	-960(ra) # 80005ef0 <_ZN6Buffer3putEi>
        i++;
    800042b8:	0019849b          	addiw	s1,s3,1
    800042bc:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    800042c0:	00007717          	auipc	a4,0x7
    800042c4:	63870713          	addi	a4,a4,1592 # 8000b8f8 <threadEnd>
    800042c8:	00472783          	lw	a5,4(a4)
    800042cc:	0017879b          	addiw	a5,a5,1
    800042d0:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    800042d4:	00005517          	auipc	a0,0x5
    800042d8:	01450513          	addi	a0,a0,20 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    800042dc:	fffff097          	auipc	ra,0xfffff
    800042e0:	34c080e7          	jalr	844(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    800042e4:	00092503          	lw	a0,0(s2)
    800042e8:	0305051b          	addiw	a0,a0,48
    800042ec:	fffff097          	auipc	ra,0xfffff
    800042f0:	3ac080e7          	jalr	940(ra) # 80003698 <_ZN5Riscv12printIntegerEm>

        if (i % (10 * data->id) == 0) {
    800042f4:	00092703          	lw	a4,0(s2)
    800042f8:	0027179b          	slliw	a5,a4,0x2
    800042fc:	00e787bb          	addw	a5,a5,a4
    80004300:	0017979b          	slliw	a5,a5,0x1
    80004304:	02f4e7bb          	remw	a5,s1,a5
    80004308:	02078e63          	beqz	a5,80004344 <_Z8producerPv+0xe0>
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);
    8000430c:	00007497          	auipc	s1,0x7
    80004310:	5ec48493          	addi	s1,s1,1516 # 8000b8f8 <threadEnd>
    80004314:	0044a503          	lw	a0,4(s1)
    80004318:	0005051b          	sext.w	a0,a0
    8000431c:	fffff097          	auipc	ra,0xfffff
    80004320:	37c080e7          	jalr	892(ra) # 80003698 <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    80004324:	0044a783          	lw	a5,4(s1)
    80004328:	0007879b          	sext.w	a5,a5
    8000432c:	00f00713          	li	a4,15
    80004330:	f6e794e3          	bne	a5,a4,80004298 <_Z8producerPv+0x34>
            threadEnd = 1;
    80004334:	00100793          	li	a5,1
    80004338:	00007717          	auipc	a4,0x7
    8000433c:	5cf72023          	sw	a5,1472(a4) # 8000b8f8 <threadEnd>
    80004340:	f59ff06f          	j	80004298 <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    80004344:	00005517          	auipc	a0,0x5
    80004348:	fac50513          	addi	a0,a0,-84 # 800092f0 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    8000434c:	fffff097          	auipc	ra,0xfffff
    80004350:	2dc080e7          	jalr	732(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    80004354:	ffffd097          	auipc	ra,0xffffd
    80004358:	fd0080e7          	jalr	-48(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    8000435c:	00005517          	auipc	a0,0x5
    80004360:	fa450513          	addi	a0,a0,-92 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80004364:	fffff097          	auipc	ra,0xfffff
    80004368:	2c4080e7          	jalr	708(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    8000436c:	fa1ff06f          	j	8000430c <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    80004370:	00005517          	auipc	a0,0x5
    80004374:	fa850513          	addi	a0,a0,-88 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	2b0080e7          	jalr	688(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004380:	01093503          	ld	a0,16(s2)
    80004384:	ffffd097          	auipc	ra,0xffffd
    80004388:	078080e7          	jalr	120(ra) # 800013fc <sem_signal>
}
    8000438c:	02813083          	ld	ra,40(sp)
    80004390:	02013403          	ld	s0,32(sp)
    80004394:	01813483          	ld	s1,24(sp)
    80004398:	01013903          	ld	s2,16(sp)
    8000439c:	00813983          	ld	s3,8(sp)
    800043a0:	03010113          	addi	sp,sp,48
    800043a4:	00008067          	ret

00000000800043a8 <_Z8consumerPv>:

void consumer(void *arg) {
    800043a8:	fd010113          	addi	sp,sp,-48
    800043ac:	02113423          	sd	ra,40(sp)
    800043b0:	02813023          	sd	s0,32(sp)
    800043b4:	00913c23          	sd	s1,24(sp)
    800043b8:	01213823          	sd	s2,16(sp)
    800043bc:	01313423          	sd	s3,8(sp)
    800043c0:	01413023          	sd	s4,0(sp)
    800043c4:	03010413          	addi	s0,sp,48
    800043c8:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    800043cc:	00005517          	auipc	a0,0x5
    800043d0:	f6450513          	addi	a0,a0,-156 # 80009330 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    800043d4:	fffff097          	auipc	ra,0xfffff
    800043d8:	254080e7          	jalr	596(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    int i = 0;
    800043dc:	00000a13          	li	s4,0
    800043e0:	0200006f          	j	80004400 <_Z8consumerPv+0x58>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800043e4:	ffffd097          	auipc	ra,0xffffd
    800043e8:	f40080e7          	jalr	-192(ra) # 80001324 <thread_dispatch>
    800043ec:	0680006f          	j	80004454 <_Z8consumerPv+0xac>
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
    800043f0:	00005517          	auipc	a0,0x5
    800043f4:	d2050513          	addi	a0,a0,-736 # 80009110 <CONSOLE_STATUS+0x100>
    800043f8:	fffff097          	auipc	ra,0xfffff
    800043fc:	230080e7          	jalr	560(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    80004400:	00007797          	auipc	a5,0x7
    80004404:	4f87a783          	lw	a5,1272(a5) # 8000b8f8 <threadEnd>
    80004408:	04079e63          	bnez	a5,80004464 <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    8000440c:	0089b503          	ld	a0,8(s3)
    80004410:	00002097          	auipc	ra,0x2
    80004414:	b70080e7          	jalr	-1168(ra) # 80005f80 <_ZN6Buffer3getEv>
    80004418:	00050913          	mv	s2,a0
        i++;
    8000441c:	001a049b          	addiw	s1,s4,1
    80004420:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    80004424:	00005517          	auipc	a0,0x5
    80004428:	f2450513          	addi	a0,a0,-220 # 80009348 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    8000442c:	fffff097          	auipc	ra,0xfffff
    80004430:	1fc080e7          	jalr	508(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    80004434:	00090513          	mv	a0,s2
    80004438:	fffff097          	auipc	ra,0xfffff
    8000443c:	260080e7          	jalr	608(ra) # 80003698 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    80004440:	0009a703          	lw	a4,0(s3)
    80004444:	0027179b          	slliw	a5,a4,0x2
    80004448:	00e787bb          	addw	a5,a5,a4
    8000444c:	02f4e7bb          	remw	a5,s1,a5
    80004450:	f8078ae3          	beqz	a5,800043e4 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    80004454:	05000793          	li	a5,80
    80004458:	02f4e4bb          	remw	s1,s1,a5
    8000445c:	fa0492e3          	bnez	s1,80004400 <_Z8consumerPv+0x58>
    80004460:	f91ff06f          	j	800043f0 <_Z8consumerPv+0x48>
        }
    }
    Riscv::printString("consumer finished\n");
    80004464:	00005517          	auipc	a0,0x5
    80004468:	eec50513          	addi	a0,a0,-276 # 80009350 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    8000446c:	fffff097          	auipc	ra,0xfffff
    80004470:	1bc080e7          	jalr	444(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004474:	0109b503          	ld	a0,16(s3)
    80004478:	ffffd097          	auipc	ra,0xffffd
    8000447c:	f84080e7          	jalr	-124(ra) # 800013fc <sem_signal>
}
    80004480:	02813083          	ld	ra,40(sp)
    80004484:	02013403          	ld	s0,32(sp)
    80004488:	01813483          	ld	s1,24(sp)
    8000448c:	01013903          	ld	s2,16(sp)
    80004490:	00813983          	ld	s3,8(sp)
    80004494:	00013a03          	ld	s4,0(sp)
    80004498:	03010113          	addi	sp,sp,48
    8000449c:	00008067          	ret

00000000800044a0 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    800044a0:	fe010113          	addi	sp,sp,-32
    800044a4:	00113c23          	sd	ra,24(sp)
    800044a8:	00813823          	sd	s0,16(sp)
    800044ac:	00913423          	sd	s1,8(sp)
    800044b0:	01213023          	sd	s2,0(sp)
    800044b4:	02010413          	addi	s0,sp,32
    800044b8:	00050493          	mv	s1,a0
    int i = 0;
    800044bc:	00000913          	li	s2,0
    800044c0:	00c0006f          	j	800044cc <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    800044c4:	ffffd097          	auipc	ra,0xffffd
    800044c8:	e60080e7          	jalr	-416(ra) # 80001324 <thread_dispatch>
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
    800044cc:	00004097          	auipc	ra,0x4
    800044d0:	c3c080e7          	jalr	-964(ra) # 80008108 <__getc>
    while ((key = getc()) != 0x1b) {
    800044d4:	0005059b          	sext.w	a1,a0
    800044d8:	01b00793          	li	a5,27
    800044dc:	02f58a63          	beq	a1,a5,80004510 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800044e0:	0084b503          	ld	a0,8(s1)
    800044e4:	00002097          	auipc	ra,0x2
    800044e8:	a0c080e7          	jalr	-1524(ra) # 80005ef0 <_ZN6Buffer3putEi>
        i++;
    800044ec:	0019071b          	addiw	a4,s2,1
    800044f0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800044f4:	0004a683          	lw	a3,0(s1)
    800044f8:	0026979b          	slliw	a5,a3,0x2
    800044fc:	00d787bb          	addw	a5,a5,a3
    80004500:	0017979b          	slliw	a5,a5,0x1
    80004504:	02f767bb          	remw	a5,a4,a5
    80004508:	fc0792e3          	bnez	a5,800044cc <_Z16producerKeyboardPv+0x2c>
    8000450c:	fb9ff06f          	j	800044c4 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    80004510:	00100793          	li	a5,1
    80004514:	00007717          	auipc	a4,0x7
    80004518:	3ef72223          	sw	a5,996(a4) # 8000b8f8 <threadEnd>
    delete data->buffer;
    8000451c:	0084b903          	ld	s2,8(s1)
    80004520:	00090e63          	beqz	s2,8000453c <_Z16producerKeyboardPv+0x9c>
    80004524:	00090513          	mv	a0,s2
    80004528:	00002097          	auipc	ra,0x2
    8000452c:	91c080e7          	jalr	-1764(ra) # 80005e44 <_ZN6BufferD1Ev>
    80004530:	00090513          	mv	a0,s2
    80004534:	fffff097          	auipc	ra,0xfffff
    80004538:	cd8080e7          	jalr	-808(ra) # 8000320c <_ZdlPv>
    sem_signal(data->wait);
    8000453c:	0104b503          	ld	a0,16(s1)
    80004540:	ffffd097          	auipc	ra,0xffffd
    80004544:	ebc080e7          	jalr	-324(ra) # 800013fc <sem_signal>
}
    80004548:	01813083          	ld	ra,24(sp)
    8000454c:	01013403          	ld	s0,16(sp)
    80004550:	00813483          	ld	s1,8(sp)
    80004554:	00013903          	ld	s2,0(sp)
    80004558:	02010113          	addi	sp,sp,32
    8000455c:	00008067          	ret

0000000080004560 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004560:	f6010113          	addi	sp,sp,-160
    80004564:	08113c23          	sd	ra,152(sp)
    80004568:	08813823          	sd	s0,144(sp)
    8000456c:	08913423          	sd	s1,136(sp)
    80004570:	09213023          	sd	s2,128(sp)
    80004574:	0a010413          	addi	s0,sp,160
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004578:	00005517          	auipc	a0,0x5
    8000457c:	df050513          	addi	a0,a0,-528 # 80009368 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80004580:	00001097          	auipc	ra,0x1
    80004584:	124080e7          	jalr	292(ra) # 800056a4 <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    80004588:	00005517          	auipc	a0,0x5
    8000458c:	e0050513          	addi	a0,a0,-512 # 80009388 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80004590:	00001097          	auipc	ra,0x1
    80004594:	114080e7          	jalr	276(ra) # 800056a4 <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004598:	00005517          	auipc	a0,0x5
    8000459c:	e1050513          	addi	a0,a0,-496 # 800093a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    800045a0:	00001097          	auipc	ra,0x1
    800045a4:	104080e7          	jalr	260(ra) # 800056a4 <_Z11printStringPKc>
    800045a8:	00000613          	li	a2,0
    800045ac:	00a00593          	li	a1,10
    800045b0:	00300513          	li	a0,3
    800045b4:	00001097          	auipc	ra,0x1
    800045b8:	288080e7          	jalr	648(ra) # 8000583c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800045bc:	00005517          	auipc	a0,0x5
    800045c0:	e0450513          	addi	a0,a0,-508 # 800093c0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	0e0080e7          	jalr	224(ra) # 800056a4 <_Z11printStringPKc>
    800045cc:	00000613          	li	a2,0
    800045d0:	00a00593          	li	a1,10
    800045d4:	00100513          	li	a0,1
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	264080e7          	jalr	612(ra) # 8000583c <_Z8printIntiii>
    printString(".\n");
    800045e0:	00005517          	auipc	a0,0x5
    800045e4:	cd050513          	addi	a0,a0,-816 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	0bc080e7          	jalr	188(ra) # 800056a4 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    800045f0:	03800513          	li	a0,56
    800045f4:	fffff097          	auipc	ra,0xfffff
    800045f8:	bf0080e7          	jalr	-1040(ra) # 800031e4 <_Znwm>
    800045fc:	00050913          	mv	s2,a0
    80004600:	00100593          	li	a1,1
    80004604:	00001097          	auipc	ra,0x1
    80004608:	7b8080e7          	jalr	1976(ra) # 80005dbc <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    8000460c:	00000593          	li	a1,0
    80004610:	00007517          	auipc	a0,0x7
    80004614:	2f050513          	addi	a0,a0,752 # 8000b900 <waitForAll>
    80004618:	ffffd097          	auipc	ra,0xffffd
    8000461c:	d54080e7          	jalr	-684(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80004620:	00300793          	li	a5,3
    80004624:	faf42423          	sw	a5,-88(s0)
    data[threadNum].buffer = buffer;
    80004628:	fb243823          	sd	s2,-80(s0)
    data[threadNum].wait = waitForAll;
    8000462c:	00007797          	auipc	a5,0x7
    80004630:	2d47b783          	ld	a5,724(a5) # 8000b900 <waitForAll>
    80004634:	faf43c23          	sd	a5,-72(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004638:	fa840613          	addi	a2,s0,-88
    8000463c:	00000597          	auipc	a1,0x0
    80004640:	d6c58593          	addi	a1,a1,-660 # 800043a8 <_Z8consumerPv>
    80004644:	fc040513          	addi	a0,s0,-64
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	c5c080e7          	jalr	-932(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004650:	00000493          	li	s1,0
    80004654:	00200793          	li	a5,2
    80004658:	0697c063          	blt	a5,s1,800046b8 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    8000465c:	00149613          	slli	a2,s1,0x1
    80004660:	009607b3          	add	a5,a2,s1
    80004664:	00379793          	slli	a5,a5,0x3
    80004668:	fe040713          	addi	a4,s0,-32
    8000466c:	00f707b3          	add	a5,a4,a5
    80004670:	f897a023          	sw	s1,-128(a5)
        data[i].buffer = buffer;
    80004674:	f927b423          	sd	s2,-120(a5)
        data[i].wait = waitForAll;
    80004678:	00007717          	auipc	a4,0x7
    8000467c:	28873703          	ld	a4,648(a4) # 8000b900 <waitForAll>
    80004680:	f8e7b823          	sd	a4,-112(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i,
    80004684:	00349793          	slli	a5,s1,0x3
                      producer ,
                      data + i);
    80004688:	00960633          	add	a2,a2,s1
    8000468c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004690:	f6040713          	addi	a4,s0,-160
    80004694:	00c70633          	add	a2,a4,a2
    80004698:	00000597          	auipc	a1,0x0
    8000469c:	bcc58593          	addi	a1,a1,-1076 # 80004264 <_Z8producerPv>
    800046a0:	fc840513          	addi	a0,s0,-56
    800046a4:	00f50533          	add	a0,a0,a5
    800046a8:	ffffd097          	auipc	ra,0xffffd
    800046ac:	bfc080e7          	jalr	-1028(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800046b0:	0014849b          	addiw	s1,s1,1
    800046b4:	fa1ff06f          	j	80004654 <_Z22producerConsumer_C_APIv+0xf4>
    }

    thread_dispatch();
    800046b8:	ffffd097          	auipc	ra,0xffffd
    800046bc:	c6c080e7          	jalr	-916(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    800046c0:	00000493          	li	s1,0
    800046c4:	0180006f          	j	800046dc <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    800046c8:	00007517          	auipc	a0,0x7
    800046cc:	23853503          	ld	a0,568(a0) # 8000b900 <waitForAll>
    800046d0:	ffffd097          	auipc	ra,0xffffd
    800046d4:	d00080e7          	jalr	-768(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800046d8:	0014849b          	addiw	s1,s1,1
    800046dc:	00300793          	li	a5,3
    800046e0:	fe97d4e3          	bge	a5,s1,800046c8 <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    800046e4:	00007517          	auipc	a0,0x7
    800046e8:	21c53503          	ld	a0,540(a0) # 8000b900 <waitForAll>
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	cb8080e7          	jalr	-840(ra) # 800013a4 <sem_close>
}
    800046f4:	09813083          	ld	ra,152(sp)
    800046f8:	09013403          	ld	s0,144(sp)
    800046fc:	08813483          	ld	s1,136(sp)
    80004700:	08013903          	ld	s2,128(sp)
    80004704:	0a010113          	addi	sp,sp,160
    80004708:	00008067          	ret
    8000470c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004710:	00090513          	mv	a0,s2
    80004714:	fffff097          	auipc	ra,0xfffff
    80004718:	af8080e7          	jalr	-1288(ra) # 8000320c <_ZdlPv>
    8000471c:	00048513          	mv	a0,s1
    80004720:	00008097          	auipc	ra,0x8
    80004724:	2c8080e7          	jalr	712(ra) # 8000c9e8 <_Unwind_Resume>

0000000080004728 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004728:	fe010113          	addi	sp,sp,-32
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	00913423          	sd	s1,8(sp)
    80004738:	01213023          	sd	s2,0(sp)
    8000473c:	02010413          	addi	s0,sp,32
    80004740:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004744:	00100793          	li	a5,1
    80004748:	02a7f863          	bgeu	a5,a0,80004778 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000474c:	00a00793          	li	a5,10
    80004750:	02f577b3          	remu	a5,a0,a5
    80004754:	02078e63          	beqz	a5,80004790 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004758:	fff48513          	addi	a0,s1,-1
    8000475c:	00000097          	auipc	ra,0x0
    80004760:	fcc080e7          	jalr	-52(ra) # 80004728 <_ZL9fibonaccim>
    80004764:	00050913          	mv	s2,a0
    80004768:	ffe48513          	addi	a0,s1,-2
    8000476c:	00000097          	auipc	ra,0x0
    80004770:	fbc080e7          	jalr	-68(ra) # 80004728 <_ZL9fibonaccim>
    80004774:	00a90533          	add	a0,s2,a0
}
    80004778:	01813083          	ld	ra,24(sp)
    8000477c:	01013403          	ld	s0,16(sp)
    80004780:	00813483          	ld	s1,8(sp)
    80004784:	00013903          	ld	s2,0(sp)
    80004788:	02010113          	addi	sp,sp,32
    8000478c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	b94080e7          	jalr	-1132(ra) # 80001324 <thread_dispatch>
    80004798:	fc1ff06f          	j	80004758 <_ZL9fibonaccim+0x30>

000000008000479c <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    8000479c:	fe010113          	addi	sp,sp,-32
    800047a0:	00113c23          	sd	ra,24(sp)
    800047a4:	00813823          	sd	s0,16(sp)
    800047a8:	00913423          	sd	s1,8(sp)
    800047ac:	01213023          	sd	s2,0(sp)
    800047b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047b4:	00000913          	li	s2,0
    800047b8:	0380006f          	j	800047f0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800047bc:	ffffd097          	auipc	ra,0xffffd
    800047c0:	b68080e7          	jalr	-1176(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800047c4:	00148493          	addi	s1,s1,1
    800047c8:	000027b7          	lui	a5,0x2
    800047cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800047d0:	0097ee63          	bltu	a5,s1,800047ec <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800047d4:	00000713          	li	a4,0
    800047d8:	000077b7          	lui	a5,0x7
    800047dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800047e0:	fce7eee3          	bltu	a5,a4,800047bc <_ZN7WorkerA11workerBodyAEPv+0x20>
    800047e4:	00170713          	addi	a4,a4,1
    800047e8:	ff1ff06f          	j	800047d8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800047ec:	00190913          	addi	s2,s2,1
    800047f0:	00900793          	li	a5,9
    800047f4:	0527e063          	bltu	a5,s2,80004834 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800047f8:	00005517          	auipc	a0,0x5
    800047fc:	be050513          	addi	a0,a0,-1056 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004800:	00001097          	auipc	ra,0x1
    80004804:	ea4080e7          	jalr	-348(ra) # 800056a4 <_Z11printStringPKc>
    80004808:	00000613          	li	a2,0
    8000480c:	00a00593          	li	a1,10
    80004810:	0009051b          	sext.w	a0,s2
    80004814:	00001097          	auipc	ra,0x1
    80004818:	028080e7          	jalr	40(ra) # 8000583c <_Z8printIntiii>
    8000481c:	00005517          	auipc	a0,0x5
    80004820:	8f450513          	addi	a0,a0,-1804 # 80009110 <CONSOLE_STATUS+0x100>
    80004824:	00001097          	auipc	ra,0x1
    80004828:	e80080e7          	jalr	-384(ra) # 800056a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000482c:	00000493          	li	s1,0
    80004830:	f99ff06f          	j	800047c8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004834:	00005517          	auipc	a0,0x5
    80004838:	bac50513          	addi	a0,a0,-1108 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000483c:	00001097          	auipc	ra,0x1
    80004840:	e68080e7          	jalr	-408(ra) # 800056a4 <_Z11printStringPKc>
    finishedA = true;
    80004844:	00100793          	li	a5,1
    80004848:	00007717          	auipc	a4,0x7
    8000484c:	0cf70023          	sb	a5,192(a4) # 8000b908 <_ZL9finishedA>
}
    80004850:	01813083          	ld	ra,24(sp)
    80004854:	01013403          	ld	s0,16(sp)
    80004858:	00813483          	ld	s1,8(sp)
    8000485c:	00013903          	ld	s2,0(sp)
    80004860:	02010113          	addi	sp,sp,32
    80004864:	00008067          	ret

0000000080004868 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004868:	fe010113          	addi	sp,sp,-32
    8000486c:	00113c23          	sd	ra,24(sp)
    80004870:	00813823          	sd	s0,16(sp)
    80004874:	00913423          	sd	s1,8(sp)
    80004878:	01213023          	sd	s2,0(sp)
    8000487c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004880:	00000913          	li	s2,0
    80004884:	0380006f          	j	800048bc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	a9c080e7          	jalr	-1380(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004890:	00148493          	addi	s1,s1,1
    80004894:	000027b7          	lui	a5,0x2
    80004898:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000489c:	0097ee63          	bltu	a5,s1,800048b8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800048a0:	00000713          	li	a4,0
    800048a4:	000077b7          	lui	a5,0x7
    800048a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800048ac:	fce7eee3          	bltu	a5,a4,80004888 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800048b0:	00170713          	addi	a4,a4,1
    800048b4:	ff1ff06f          	j	800048a4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800048b8:	00190913          	addi	s2,s2,1
    800048bc:	00f00793          	li	a5,15
    800048c0:	0527e063          	bltu	a5,s2,80004900 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800048c4:	00005517          	auipc	a0,0x5
    800048c8:	b2c50513          	addi	a0,a0,-1236 # 800093f0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	dd8080e7          	jalr	-552(ra) # 800056a4 <_Z11printStringPKc>
    800048d4:	00000613          	li	a2,0
    800048d8:	00a00593          	li	a1,10
    800048dc:	0009051b          	sext.w	a0,s2
    800048e0:	00001097          	auipc	ra,0x1
    800048e4:	f5c080e7          	jalr	-164(ra) # 8000583c <_Z8printIntiii>
    800048e8:	00005517          	auipc	a0,0x5
    800048ec:	82850513          	addi	a0,a0,-2008 # 80009110 <CONSOLE_STATUS+0x100>
    800048f0:	00001097          	auipc	ra,0x1
    800048f4:	db4080e7          	jalr	-588(ra) # 800056a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800048f8:	00000493          	li	s1,0
    800048fc:	f99ff06f          	j	80004894 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004900:	00005517          	auipc	a0,0x5
    80004904:	af850513          	addi	a0,a0,-1288 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	d9c080e7          	jalr	-612(ra) # 800056a4 <_Z11printStringPKc>
    finishedB = true;
    80004910:	00100793          	li	a5,1
    80004914:	00007717          	auipc	a4,0x7
    80004918:	fef70aa3          	sb	a5,-11(a4) # 8000b909 <_ZL9finishedB>
    thread_dispatch();
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	a08080e7          	jalr	-1528(ra) # 80001324 <thread_dispatch>
}
    80004924:	01813083          	ld	ra,24(sp)
    80004928:	01013403          	ld	s0,16(sp)
    8000492c:	00813483          	ld	s1,8(sp)
    80004930:	00013903          	ld	s2,0(sp)
    80004934:	02010113          	addi	sp,sp,32
    80004938:	00008067          	ret

000000008000493c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000493c:	fe010113          	addi	sp,sp,-32
    80004940:	00113c23          	sd	ra,24(sp)
    80004944:	00813823          	sd	s0,16(sp)
    80004948:	00913423          	sd	s1,8(sp)
    8000494c:	01213023          	sd	s2,0(sp)
    80004950:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004954:	00000493          	li	s1,0
    80004958:	0400006f          	j	80004998 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000495c:	00005517          	auipc	a0,0x5
    80004960:	aac50513          	addi	a0,a0,-1364 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004964:	00001097          	auipc	ra,0x1
    80004968:	d40080e7          	jalr	-704(ra) # 800056a4 <_Z11printStringPKc>
    8000496c:	00000613          	li	a2,0
    80004970:	00a00593          	li	a1,10
    80004974:	00048513          	mv	a0,s1
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	ec4080e7          	jalr	-316(ra) # 8000583c <_Z8printIntiii>
    80004980:	00004517          	auipc	a0,0x4
    80004984:	79050513          	addi	a0,a0,1936 # 80009110 <CONSOLE_STATUS+0x100>
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	d1c080e7          	jalr	-740(ra) # 800056a4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004990:	0014849b          	addiw	s1,s1,1
    80004994:	0ff4f493          	andi	s1,s1,255
    80004998:	00200793          	li	a5,2
    8000499c:	fc97f0e3          	bgeu	a5,s1,8000495c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800049a0:	00005517          	auipc	a0,0x5
    800049a4:	a7050513          	addi	a0,a0,-1424 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    800049a8:	00001097          	auipc	ra,0x1
    800049ac:	cfc080e7          	jalr	-772(ra) # 800056a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800049b0:	00700313          	li	t1,7
    thread_dispatch();
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	970080e7          	jalr	-1680(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800049bc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800049c0:	00005517          	auipc	a0,0x5
    800049c4:	a6050513          	addi	a0,a0,-1440 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	cdc080e7          	jalr	-804(ra) # 800056a4 <_Z11printStringPKc>
    800049d0:	00000613          	li	a2,0
    800049d4:	00a00593          	li	a1,10
    800049d8:	0009051b          	sext.w	a0,s2
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	e60080e7          	jalr	-416(ra) # 8000583c <_Z8printIntiii>
    800049e4:	00004517          	auipc	a0,0x4
    800049e8:	72c50513          	addi	a0,a0,1836 # 80009110 <CONSOLE_STATUS+0x100>
    800049ec:	00001097          	auipc	ra,0x1
    800049f0:	cb8080e7          	jalr	-840(ra) # 800056a4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800049f4:	00c00513          	li	a0,12
    800049f8:	00000097          	auipc	ra,0x0
    800049fc:	d30080e7          	jalr	-720(ra) # 80004728 <_ZL9fibonaccim>
    80004a00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004a04:	00005517          	auipc	a0,0x5
    80004a08:	a2450513          	addi	a0,a0,-1500 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80004a0c:	00001097          	auipc	ra,0x1
    80004a10:	c98080e7          	jalr	-872(ra) # 800056a4 <_Z11printStringPKc>
    80004a14:	00000613          	li	a2,0
    80004a18:	00a00593          	li	a1,10
    80004a1c:	0009051b          	sext.w	a0,s2
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	e1c080e7          	jalr	-484(ra) # 8000583c <_Z8printIntiii>
    80004a28:	00004517          	auipc	a0,0x4
    80004a2c:	6e850513          	addi	a0,a0,1768 # 80009110 <CONSOLE_STATUS+0x100>
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	c74080e7          	jalr	-908(ra) # 800056a4 <_Z11printStringPKc>
    80004a38:	0400006f          	j	80004a78 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004a3c:	00005517          	auipc	a0,0x5
    80004a40:	9cc50513          	addi	a0,a0,-1588 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	c60080e7          	jalr	-928(ra) # 800056a4 <_Z11printStringPKc>
    80004a4c:	00000613          	li	a2,0
    80004a50:	00a00593          	li	a1,10
    80004a54:	00048513          	mv	a0,s1
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	de4080e7          	jalr	-540(ra) # 8000583c <_Z8printIntiii>
    80004a60:	00004517          	auipc	a0,0x4
    80004a64:	6b050513          	addi	a0,a0,1712 # 80009110 <CONSOLE_STATUS+0x100>
    80004a68:	00001097          	auipc	ra,0x1
    80004a6c:	c3c080e7          	jalr	-964(ra) # 800056a4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004a70:	0014849b          	addiw	s1,s1,1
    80004a74:	0ff4f493          	andi	s1,s1,255
    80004a78:	00500793          	li	a5,5
    80004a7c:	fc97f0e3          	bgeu	a5,s1,80004a3c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004a80:	00005517          	auipc	a0,0x5
    80004a84:	96050513          	addi	a0,a0,-1696 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	c1c080e7          	jalr	-996(ra) # 800056a4 <_Z11printStringPKc>
    finishedC = true;
    80004a90:	00100793          	li	a5,1
    80004a94:	00007717          	auipc	a4,0x7
    80004a98:	e6f70b23          	sb	a5,-394(a4) # 8000b90a <_ZL9finishedC>
    thread_dispatch();
    80004a9c:	ffffd097          	auipc	ra,0xffffd
    80004aa0:	888080e7          	jalr	-1912(ra) # 80001324 <thread_dispatch>
}
    80004aa4:	01813083          	ld	ra,24(sp)
    80004aa8:	01013403          	ld	s0,16(sp)
    80004aac:	00813483          	ld	s1,8(sp)
    80004ab0:	00013903          	ld	s2,0(sp)
    80004ab4:	02010113          	addi	sp,sp,32
    80004ab8:	00008067          	ret

0000000080004abc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004abc:	fe010113          	addi	sp,sp,-32
    80004ac0:	00113c23          	sd	ra,24(sp)
    80004ac4:	00813823          	sd	s0,16(sp)
    80004ac8:	00913423          	sd	s1,8(sp)
    80004acc:	01213023          	sd	s2,0(sp)
    80004ad0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004ad4:	00a00493          	li	s1,10
    80004ad8:	0400006f          	j	80004b18 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004adc:	00005517          	auipc	a0,0x5
    80004ae0:	95c50513          	addi	a0,a0,-1700 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	bc0080e7          	jalr	-1088(ra) # 800056a4 <_Z11printStringPKc>
    80004aec:	00000613          	li	a2,0
    80004af0:	00a00593          	li	a1,10
    80004af4:	00048513          	mv	a0,s1
    80004af8:	00001097          	auipc	ra,0x1
    80004afc:	d44080e7          	jalr	-700(ra) # 8000583c <_Z8printIntiii>
    80004b00:	00004517          	auipc	a0,0x4
    80004b04:	61050513          	addi	a0,a0,1552 # 80009110 <CONSOLE_STATUS+0x100>
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	b9c080e7          	jalr	-1124(ra) # 800056a4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004b10:	0014849b          	addiw	s1,s1,1
    80004b14:	0ff4f493          	andi	s1,s1,255
    80004b18:	00c00793          	li	a5,12
    80004b1c:	fc97f0e3          	bgeu	a5,s1,80004adc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004b20:	00005517          	auipc	a0,0x5
    80004b24:	92050513          	addi	a0,a0,-1760 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	b7c080e7          	jalr	-1156(ra) # 800056a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004b30:	00500313          	li	t1,5
    thread_dispatch();
    80004b34:	ffffc097          	auipc	ra,0xffffc
    80004b38:	7f0080e7          	jalr	2032(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004b3c:	01000513          	li	a0,16
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	be8080e7          	jalr	-1048(ra) # 80004728 <_ZL9fibonaccim>
    80004b48:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004b4c:	00005517          	auipc	a0,0x5
    80004b50:	90450513          	addi	a0,a0,-1788 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	b50080e7          	jalr	-1200(ra) # 800056a4 <_Z11printStringPKc>
    80004b5c:	00000613          	li	a2,0
    80004b60:	00a00593          	li	a1,10
    80004b64:	0009051b          	sext.w	a0,s2
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	cd4080e7          	jalr	-812(ra) # 8000583c <_Z8printIntiii>
    80004b70:	00004517          	auipc	a0,0x4
    80004b74:	5a050513          	addi	a0,a0,1440 # 80009110 <CONSOLE_STATUS+0x100>
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	b2c080e7          	jalr	-1236(ra) # 800056a4 <_Z11printStringPKc>
    80004b80:	0400006f          	j	80004bc0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b84:	00005517          	auipc	a0,0x5
    80004b88:	8b450513          	addi	a0,a0,-1868 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	b18080e7          	jalr	-1256(ra) # 800056a4 <_Z11printStringPKc>
    80004b94:	00000613          	li	a2,0
    80004b98:	00a00593          	li	a1,10
    80004b9c:	00048513          	mv	a0,s1
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	c9c080e7          	jalr	-868(ra) # 8000583c <_Z8printIntiii>
    80004ba8:	00004517          	auipc	a0,0x4
    80004bac:	56850513          	addi	a0,a0,1384 # 80009110 <CONSOLE_STATUS+0x100>
    80004bb0:	00001097          	auipc	ra,0x1
    80004bb4:	af4080e7          	jalr	-1292(ra) # 800056a4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004bb8:	0014849b          	addiw	s1,s1,1
    80004bbc:	0ff4f493          	andi	s1,s1,255
    80004bc0:	00f00793          	li	a5,15
    80004bc4:	fc97f0e3          	bgeu	a5,s1,80004b84 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004bc8:	00005517          	auipc	a0,0x5
    80004bcc:	89850513          	addi	a0,a0,-1896 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80004bd0:	00001097          	auipc	ra,0x1
    80004bd4:	ad4080e7          	jalr	-1324(ra) # 800056a4 <_Z11printStringPKc>
    finishedD = true;
    80004bd8:	00100793          	li	a5,1
    80004bdc:	00007717          	auipc	a4,0x7
    80004be0:	d2f707a3          	sb	a5,-721(a4) # 8000b90b <_ZL9finishedD>
    thread_dispatch();
    80004be4:	ffffc097          	auipc	ra,0xffffc
    80004be8:	740080e7          	jalr	1856(ra) # 80001324 <thread_dispatch>
}
    80004bec:	01813083          	ld	ra,24(sp)
    80004bf0:	01013403          	ld	s0,16(sp)
    80004bf4:	00813483          	ld	s1,8(sp)
    80004bf8:	00013903          	ld	s2,0(sp)
    80004bfc:	02010113          	addi	sp,sp,32
    80004c00:	00008067          	ret

0000000080004c04 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004c04:	fc010113          	addi	sp,sp,-64
    80004c08:	02113c23          	sd	ra,56(sp)
    80004c0c:	02813823          	sd	s0,48(sp)
    80004c10:	02913423          	sd	s1,40(sp)
    80004c14:	03213023          	sd	s2,32(sp)
    80004c18:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004c1c:	02000513          	li	a0,32
    80004c20:	ffffe097          	auipc	ra,0xffffe
    80004c24:	5c4080e7          	jalr	1476(ra) # 800031e4 <_Znwm>
    80004c28:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004c2c:	ffffe097          	auipc	ra,0xffffe
    80004c30:	784080e7          	jalr	1924(ra) # 800033b0 <_ZN6ThreadC1Ev>
    80004c34:	00007797          	auipc	a5,0x7
    80004c38:	b0c78793          	addi	a5,a5,-1268 # 8000b740 <_ZTV7WorkerA+0x10>
    80004c3c:	00f4b023          	sd	a5,0(s1)
    80004c40:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004c44:	00005517          	auipc	a0,0x5
    80004c48:	82c50513          	addi	a0,a0,-2004 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	a58080e7          	jalr	-1448(ra) # 800056a4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004c54:	02000513          	li	a0,32
    80004c58:	ffffe097          	auipc	ra,0xffffe
    80004c5c:	58c080e7          	jalr	1420(ra) # 800031e4 <_Znwm>
    80004c60:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004c64:	ffffe097          	auipc	ra,0xffffe
    80004c68:	74c080e7          	jalr	1868(ra) # 800033b0 <_ZN6ThreadC1Ev>
    80004c6c:	00007797          	auipc	a5,0x7
    80004c70:	afc78793          	addi	a5,a5,-1284 # 8000b768 <_ZTV7WorkerB+0x10>
    80004c74:	00f4b023          	sd	a5,0(s1)
    80004c78:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004c7c:	00005517          	auipc	a0,0x5
    80004c80:	80c50513          	addi	a0,a0,-2036 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	a20080e7          	jalr	-1504(ra) # 800056a4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004c8c:	02000513          	li	a0,32
    80004c90:	ffffe097          	auipc	ra,0xffffe
    80004c94:	554080e7          	jalr	1364(ra) # 800031e4 <_Znwm>
    80004c98:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004c9c:	ffffe097          	auipc	ra,0xffffe
    80004ca0:	714080e7          	jalr	1812(ra) # 800033b0 <_ZN6ThreadC1Ev>
    80004ca4:	00007797          	auipc	a5,0x7
    80004ca8:	aec78793          	addi	a5,a5,-1300 # 8000b790 <_ZTV7WorkerC+0x10>
    80004cac:	00f4b023          	sd	a5,0(s1)
    80004cb0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004cb4:	00004517          	auipc	a0,0x4
    80004cb8:	7ec50513          	addi	a0,a0,2028 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	9e8080e7          	jalr	-1560(ra) # 800056a4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004cc4:	02000513          	li	a0,32
    80004cc8:	ffffe097          	auipc	ra,0xffffe
    80004ccc:	51c080e7          	jalr	1308(ra) # 800031e4 <_Znwm>
    80004cd0:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004cd4:	ffffe097          	auipc	ra,0xffffe
    80004cd8:	6dc080e7          	jalr	1756(ra) # 800033b0 <_ZN6ThreadC1Ev>
    80004cdc:	00007797          	auipc	a5,0x7
    80004ce0:	adc78793          	addi	a5,a5,-1316 # 8000b7b8 <_ZTV7WorkerD+0x10>
    80004ce4:	00f4b023          	sd	a5,0(s1)
    80004ce8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	7cc50513          	addi	a0,a0,1996 # 800094b8 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	9b0080e7          	jalr	-1616(ra) # 800056a4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004cfc:	00000493          	li	s1,0
    80004d00:	00300793          	li	a5,3
    80004d04:	0297c663          	blt	a5,s1,80004d30 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004d08:	00349793          	slli	a5,s1,0x3
    80004d0c:	fe040713          	addi	a4,s0,-32
    80004d10:	00f707b3          	add	a5,a4,a5
    80004d14:	fe07b503          	ld	a0,-32(a5)
    80004d18:	ffffe097          	auipc	ra,0xffffe
    80004d1c:	59c080e7          	jalr	1436(ra) # 800032b4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004d20:	0014849b          	addiw	s1,s1,1
    80004d24:	fddff06f          	j	80004d00 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004d28:	ffffe097          	auipc	ra,0xffffe
    80004d2c:	5d0080e7          	jalr	1488(ra) # 800032f8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004d30:	00007797          	auipc	a5,0x7
    80004d34:	bd87c783          	lbu	a5,-1064(a5) # 8000b908 <_ZL9finishedA>
    80004d38:	fe0788e3          	beqz	a5,80004d28 <_Z20Threads_CPP_API_testv+0x124>
    80004d3c:	00007797          	auipc	a5,0x7
    80004d40:	bcd7c783          	lbu	a5,-1075(a5) # 8000b909 <_ZL9finishedB>
    80004d44:	fe0782e3          	beqz	a5,80004d28 <_Z20Threads_CPP_API_testv+0x124>
    80004d48:	00007797          	auipc	a5,0x7
    80004d4c:	bc27c783          	lbu	a5,-1086(a5) # 8000b90a <_ZL9finishedC>
    80004d50:	fc078ce3          	beqz	a5,80004d28 <_Z20Threads_CPP_API_testv+0x124>
    80004d54:	00007797          	auipc	a5,0x7
    80004d58:	bb77c783          	lbu	a5,-1097(a5) # 8000b90b <_ZL9finishedD>
    80004d5c:	fc0786e3          	beqz	a5,80004d28 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004d60:	fc040493          	addi	s1,s0,-64
    80004d64:	0080006f          	j	80004d6c <_Z20Threads_CPP_API_testv+0x168>
    80004d68:	00848493          	addi	s1,s1,8
    80004d6c:	fe040793          	addi	a5,s0,-32
    80004d70:	08f48663          	beq	s1,a5,80004dfc <_Z20Threads_CPP_API_testv+0x1f8>
    80004d74:	0004b503          	ld	a0,0(s1)
    80004d78:	fe0508e3          	beqz	a0,80004d68 <_Z20Threads_CPP_API_testv+0x164>
    80004d7c:	00053783          	ld	a5,0(a0)
    80004d80:	0087b783          	ld	a5,8(a5)
    80004d84:	000780e7          	jalr	a5
    80004d88:	fe1ff06f          	j	80004d68 <_Z20Threads_CPP_API_testv+0x164>
    80004d8c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004d90:	00048513          	mv	a0,s1
    80004d94:	ffffe097          	auipc	ra,0xffffe
    80004d98:	478080e7          	jalr	1144(ra) # 8000320c <_ZdlPv>
    80004d9c:	00090513          	mv	a0,s2
    80004da0:	00008097          	auipc	ra,0x8
    80004da4:	c48080e7          	jalr	-952(ra) # 8000c9e8 <_Unwind_Resume>
    80004da8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004dac:	00048513          	mv	a0,s1
    80004db0:	ffffe097          	auipc	ra,0xffffe
    80004db4:	45c080e7          	jalr	1116(ra) # 8000320c <_ZdlPv>
    80004db8:	00090513          	mv	a0,s2
    80004dbc:	00008097          	auipc	ra,0x8
    80004dc0:	c2c080e7          	jalr	-980(ra) # 8000c9e8 <_Unwind_Resume>
    80004dc4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004dc8:	00048513          	mv	a0,s1
    80004dcc:	ffffe097          	auipc	ra,0xffffe
    80004dd0:	440080e7          	jalr	1088(ra) # 8000320c <_ZdlPv>
    80004dd4:	00090513          	mv	a0,s2
    80004dd8:	00008097          	auipc	ra,0x8
    80004ddc:	c10080e7          	jalr	-1008(ra) # 8000c9e8 <_Unwind_Resume>
    80004de0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004de4:	00048513          	mv	a0,s1
    80004de8:	ffffe097          	auipc	ra,0xffffe
    80004dec:	424080e7          	jalr	1060(ra) # 8000320c <_ZdlPv>
    80004df0:	00090513          	mv	a0,s2
    80004df4:	00008097          	auipc	ra,0x8
    80004df8:	bf4080e7          	jalr	-1036(ra) # 8000c9e8 <_Unwind_Resume>
    80004dfc:	03813083          	ld	ra,56(sp)
    80004e00:	03013403          	ld	s0,48(sp)
    80004e04:	02813483          	ld	s1,40(sp)
    80004e08:	02013903          	ld	s2,32(sp)
    80004e0c:	04010113          	addi	sp,sp,64
    80004e10:	00008067          	ret

0000000080004e14 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004e14:	ff010113          	addi	sp,sp,-16
    80004e18:	00113423          	sd	ra,8(sp)
    80004e1c:	00813023          	sd	s0,0(sp)
    80004e20:	01010413          	addi	s0,sp,16
    80004e24:	00007797          	auipc	a5,0x7
    80004e28:	91c78793          	addi	a5,a5,-1764 # 8000b740 <_ZTV7WorkerA+0x10>
    80004e2c:	00f53023          	sd	a5,0(a0)
    80004e30:	ffffe097          	auipc	ra,0xffffe
    80004e34:	2f8080e7          	jalr	760(ra) # 80003128 <_ZN6ThreadD1Ev>
    80004e38:	00813083          	ld	ra,8(sp)
    80004e3c:	00013403          	ld	s0,0(sp)
    80004e40:	01010113          	addi	sp,sp,16
    80004e44:	00008067          	ret

0000000080004e48 <_ZN7WorkerAD0Ev>:
    80004e48:	fe010113          	addi	sp,sp,-32
    80004e4c:	00113c23          	sd	ra,24(sp)
    80004e50:	00813823          	sd	s0,16(sp)
    80004e54:	00913423          	sd	s1,8(sp)
    80004e58:	02010413          	addi	s0,sp,32
    80004e5c:	00050493          	mv	s1,a0
    80004e60:	00007797          	auipc	a5,0x7
    80004e64:	8e078793          	addi	a5,a5,-1824 # 8000b740 <_ZTV7WorkerA+0x10>
    80004e68:	00f53023          	sd	a5,0(a0)
    80004e6c:	ffffe097          	auipc	ra,0xffffe
    80004e70:	2bc080e7          	jalr	700(ra) # 80003128 <_ZN6ThreadD1Ev>
    80004e74:	00048513          	mv	a0,s1
    80004e78:	ffffe097          	auipc	ra,0xffffe
    80004e7c:	394080e7          	jalr	916(ra) # 8000320c <_ZdlPv>
    80004e80:	01813083          	ld	ra,24(sp)
    80004e84:	01013403          	ld	s0,16(sp)
    80004e88:	00813483          	ld	s1,8(sp)
    80004e8c:	02010113          	addi	sp,sp,32
    80004e90:	00008067          	ret

0000000080004e94 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004e94:	ff010113          	addi	sp,sp,-16
    80004e98:	00113423          	sd	ra,8(sp)
    80004e9c:	00813023          	sd	s0,0(sp)
    80004ea0:	01010413          	addi	s0,sp,16
    80004ea4:	00007797          	auipc	a5,0x7
    80004ea8:	8c478793          	addi	a5,a5,-1852 # 8000b768 <_ZTV7WorkerB+0x10>
    80004eac:	00f53023          	sd	a5,0(a0)
    80004eb0:	ffffe097          	auipc	ra,0xffffe
    80004eb4:	278080e7          	jalr	632(ra) # 80003128 <_ZN6ThreadD1Ev>
    80004eb8:	00813083          	ld	ra,8(sp)
    80004ebc:	00013403          	ld	s0,0(sp)
    80004ec0:	01010113          	addi	sp,sp,16
    80004ec4:	00008067          	ret

0000000080004ec8 <_ZN7WorkerBD0Ev>:
    80004ec8:	fe010113          	addi	sp,sp,-32
    80004ecc:	00113c23          	sd	ra,24(sp)
    80004ed0:	00813823          	sd	s0,16(sp)
    80004ed4:	00913423          	sd	s1,8(sp)
    80004ed8:	02010413          	addi	s0,sp,32
    80004edc:	00050493          	mv	s1,a0
    80004ee0:	00007797          	auipc	a5,0x7
    80004ee4:	88878793          	addi	a5,a5,-1912 # 8000b768 <_ZTV7WorkerB+0x10>
    80004ee8:	00f53023          	sd	a5,0(a0)
    80004eec:	ffffe097          	auipc	ra,0xffffe
    80004ef0:	23c080e7          	jalr	572(ra) # 80003128 <_ZN6ThreadD1Ev>
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	ffffe097          	auipc	ra,0xffffe
    80004efc:	314080e7          	jalr	788(ra) # 8000320c <_ZdlPv>
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00813483          	ld	s1,8(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret

0000000080004f14 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004f14:	ff010113          	addi	sp,sp,-16
    80004f18:	00113423          	sd	ra,8(sp)
    80004f1c:	00813023          	sd	s0,0(sp)
    80004f20:	01010413          	addi	s0,sp,16
    80004f24:	00007797          	auipc	a5,0x7
    80004f28:	86c78793          	addi	a5,a5,-1940 # 8000b790 <_ZTV7WorkerC+0x10>
    80004f2c:	00f53023          	sd	a5,0(a0)
    80004f30:	ffffe097          	auipc	ra,0xffffe
    80004f34:	1f8080e7          	jalr	504(ra) # 80003128 <_ZN6ThreadD1Ev>
    80004f38:	00813083          	ld	ra,8(sp)
    80004f3c:	00013403          	ld	s0,0(sp)
    80004f40:	01010113          	addi	sp,sp,16
    80004f44:	00008067          	ret

0000000080004f48 <_ZN7WorkerCD0Ev>:
    80004f48:	fe010113          	addi	sp,sp,-32
    80004f4c:	00113c23          	sd	ra,24(sp)
    80004f50:	00813823          	sd	s0,16(sp)
    80004f54:	00913423          	sd	s1,8(sp)
    80004f58:	02010413          	addi	s0,sp,32
    80004f5c:	00050493          	mv	s1,a0
    80004f60:	00007797          	auipc	a5,0x7
    80004f64:	83078793          	addi	a5,a5,-2000 # 8000b790 <_ZTV7WorkerC+0x10>
    80004f68:	00f53023          	sd	a5,0(a0)
    80004f6c:	ffffe097          	auipc	ra,0xffffe
    80004f70:	1bc080e7          	jalr	444(ra) # 80003128 <_ZN6ThreadD1Ev>
    80004f74:	00048513          	mv	a0,s1
    80004f78:	ffffe097          	auipc	ra,0xffffe
    80004f7c:	294080e7          	jalr	660(ra) # 8000320c <_ZdlPv>
    80004f80:	01813083          	ld	ra,24(sp)
    80004f84:	01013403          	ld	s0,16(sp)
    80004f88:	00813483          	ld	s1,8(sp)
    80004f8c:	02010113          	addi	sp,sp,32
    80004f90:	00008067          	ret

0000000080004f94 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004f94:	ff010113          	addi	sp,sp,-16
    80004f98:	00113423          	sd	ra,8(sp)
    80004f9c:	00813023          	sd	s0,0(sp)
    80004fa0:	01010413          	addi	s0,sp,16
    80004fa4:	00007797          	auipc	a5,0x7
    80004fa8:	81478793          	addi	a5,a5,-2028 # 8000b7b8 <_ZTV7WorkerD+0x10>
    80004fac:	00f53023          	sd	a5,0(a0)
    80004fb0:	ffffe097          	auipc	ra,0xffffe
    80004fb4:	178080e7          	jalr	376(ra) # 80003128 <_ZN6ThreadD1Ev>
    80004fb8:	00813083          	ld	ra,8(sp)
    80004fbc:	00013403          	ld	s0,0(sp)
    80004fc0:	01010113          	addi	sp,sp,16
    80004fc4:	00008067          	ret

0000000080004fc8 <_ZN7WorkerDD0Ev>:
    80004fc8:	fe010113          	addi	sp,sp,-32
    80004fcc:	00113c23          	sd	ra,24(sp)
    80004fd0:	00813823          	sd	s0,16(sp)
    80004fd4:	00913423          	sd	s1,8(sp)
    80004fd8:	02010413          	addi	s0,sp,32
    80004fdc:	00050493          	mv	s1,a0
    80004fe0:	00006797          	auipc	a5,0x6
    80004fe4:	7d878793          	addi	a5,a5,2008 # 8000b7b8 <_ZTV7WorkerD+0x10>
    80004fe8:	00f53023          	sd	a5,0(a0)
    80004fec:	ffffe097          	auipc	ra,0xffffe
    80004ff0:	13c080e7          	jalr	316(ra) # 80003128 <_ZN6ThreadD1Ev>
    80004ff4:	00048513          	mv	a0,s1
    80004ff8:	ffffe097          	auipc	ra,0xffffe
    80004ffc:	214080e7          	jalr	532(ra) # 8000320c <_ZdlPv>
    80005000:	01813083          	ld	ra,24(sp)
    80005004:	01013403          	ld	s0,16(sp)
    80005008:	00813483          	ld	s1,8(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_ZN7WorkerA3runEv>:
    void run() override {
    80005014:	ff010113          	addi	sp,sp,-16
    80005018:	00113423          	sd	ra,8(sp)
    8000501c:	00813023          	sd	s0,0(sp)
    80005020:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005024:	00000593          	li	a1,0
    80005028:	fffff097          	auipc	ra,0xfffff
    8000502c:	774080e7          	jalr	1908(ra) # 8000479c <_ZN7WorkerA11workerBodyAEPv>
    }
    80005030:	00813083          	ld	ra,8(sp)
    80005034:	00013403          	ld	s0,0(sp)
    80005038:	01010113          	addi	sp,sp,16
    8000503c:	00008067          	ret

0000000080005040 <_ZN7WorkerB3runEv>:
    void run() override {
    80005040:	ff010113          	addi	sp,sp,-16
    80005044:	00113423          	sd	ra,8(sp)
    80005048:	00813023          	sd	s0,0(sp)
    8000504c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005050:	00000593          	li	a1,0
    80005054:	00000097          	auipc	ra,0x0
    80005058:	814080e7          	jalr	-2028(ra) # 80004868 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000505c:	00813083          	ld	ra,8(sp)
    80005060:	00013403          	ld	s0,0(sp)
    80005064:	01010113          	addi	sp,sp,16
    80005068:	00008067          	ret

000000008000506c <_ZN7WorkerC3runEv>:
    void run() override {
    8000506c:	ff010113          	addi	sp,sp,-16
    80005070:	00113423          	sd	ra,8(sp)
    80005074:	00813023          	sd	s0,0(sp)
    80005078:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000507c:	00000593          	li	a1,0
    80005080:	00000097          	auipc	ra,0x0
    80005084:	8bc080e7          	jalr	-1860(ra) # 8000493c <_ZN7WorkerC11workerBodyCEPv>
    }
    80005088:	00813083          	ld	ra,8(sp)
    8000508c:	00013403          	ld	s0,0(sp)
    80005090:	01010113          	addi	sp,sp,16
    80005094:	00008067          	ret

0000000080005098 <_ZN7WorkerD3runEv>:

    void run() override {
    80005098:	ff010113          	addi	sp,sp,-16
    8000509c:	00113423          	sd	ra,8(sp)
    800050a0:	00813023          	sd	s0,0(sp)
    800050a4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800050a8:	00000593          	li	a1,0
    800050ac:	00000097          	auipc	ra,0x0
    800050b0:	a10080e7          	jalr	-1520(ra) # 80004abc <_ZN7WorkerD11workerBodyDEPv>
    }
    800050b4:	00813083          	ld	ra,8(sp)
    800050b8:	00013403          	ld	s0,0(sp)
    800050bc:	01010113          	addi	sp,sp,16
    800050c0:	00008067          	ret

00000000800050c4 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) {return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800050c4:	fe010113          	addi	sp,sp,-32
    800050c8:	00113c23          	sd	ra,24(sp)
    800050cc:	00813823          	sd	s0,16(sp)
    800050d0:	00913423          	sd	s1,8(sp)
    800050d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800050d8:	00000493          	li	s1,0
    800050dc:	0300006f          	j	8000510c <_Z11workerBodyAPv+0x48>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    800050e0:	00168693          	addi	a3,a3,1
    800050e4:	000027b7          	lui	a5,0x2
    800050e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800050ec:	00d7ee63          	bltu	a5,a3,80005108 <_Z11workerBodyAPv+0x44>
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800050f0:	00000713          	li	a4,0
    800050f4:	000077b7          	lui	a5,0x7
    800050f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800050fc:	fee7e2e3          	bltu	a5,a4,800050e0 <_Z11workerBodyAPv+0x1c>
    80005100:	00170713          	addi	a4,a4,1
    80005104:	ff1ff06f          	j	800050f4 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++) {
    80005108:	00148493          	addi	s1,s1,1
    8000510c:	00900793          	li	a5,9
    80005110:	0497e063          	bltu	a5,s1,80005150 <_Z11workerBodyAPv+0x8c>
        printString("A: i="); printInt(i); printString("\n");
    80005114:	00004517          	auipc	a0,0x4
    80005118:	2c450513          	addi	a0,a0,708 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    8000511c:	00000097          	auipc	ra,0x0
    80005120:	588080e7          	jalr	1416(ra) # 800056a4 <_Z11printStringPKc>
    80005124:	00000613          	li	a2,0
    80005128:	00a00593          	li	a1,10
    8000512c:	0004851b          	sext.w	a0,s1
    80005130:	00000097          	auipc	ra,0x0
    80005134:	70c080e7          	jalr	1804(ra) # 8000583c <_Z8printIntiii>
    80005138:	00004517          	auipc	a0,0x4
    8000513c:	fd850513          	addi	a0,a0,-40 # 80009110 <CONSOLE_STATUS+0x100>
    80005140:	00000097          	auipc	ra,0x0
    80005144:	564080e7          	jalr	1380(ra) # 800056a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005148:	00000693          	li	a3,0
    8000514c:	f99ff06f          	j	800050e4 <_Z11workerBodyAPv+0x20>
            //thread_dispatch();
        }
    }
    Riscv::printString("A finished!\n");
    80005150:	00004517          	auipc	a0,0x4
    80005154:	29050513          	addi	a0,a0,656 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80005158:	ffffe097          	auipc	ra,0xffffe
    8000515c:	4d0080e7          	jalr	1232(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    finishedA = true;
    80005160:	00100793          	li	a5,1
    80005164:	00006717          	auipc	a4,0x6
    80005168:	7af70423          	sb	a5,1960(a4) # 8000b90c <_ZL9finishedA>
}
    8000516c:	01813083          	ld	ra,24(sp)
    80005170:	01013403          	ld	s0,16(sp)
    80005174:	00813483          	ld	s1,8(sp)
    80005178:	02010113          	addi	sp,sp,32
    8000517c:	00008067          	ret

0000000080005180 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80005180:	ff010113          	addi	sp,sp,-16
    80005184:	00113423          	sd	ra,8(sp)
    80005188:	00813023          	sd	s0,0(sp)
    8000518c:	01010413          	addi	s0,sp,16
    Riscv::printString("calculating...\n");
    80005190:	00004517          	auipc	a0,0x4
    80005194:	34050513          	addi	a0,a0,832 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    80005198:	ffffe097          	auipc	ra,0xffffe
    8000519c:	490080e7          	jalr	1168(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
}
    800051a0:	00000513          	li	a0,0
    800051a4:	00813083          	ld	ra,8(sp)
    800051a8:	00013403          	ld	s0,0(sp)
    800051ac:	01010113          	addi	sp,sp,16
    800051b0:	00008067          	ret

00000000800051b4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800051b4:	fe010113          	addi	sp,sp,-32
    800051b8:	00113c23          	sd	ra,24(sp)
    800051bc:	00813823          	sd	s0,16(sp)
    800051c0:	00913423          	sd	s1,8(sp)
    800051c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800051c8:	00000493          	li	s1,0
    800051cc:	0300006f          	j	800051fc <_Z11workerBodyBPv+0x48>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    800051d0:	00168693          	addi	a3,a3,1
    800051d4:	000027b7          	lui	a5,0x2
    800051d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800051dc:	00d7ee63          	bltu	a5,a3,800051f8 <_Z11workerBodyBPv+0x44>
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800051e0:	00000713          	li	a4,0
    800051e4:	000077b7          	lui	a5,0x7
    800051e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051ec:	fee7e2e3          	bltu	a5,a4,800051d0 <_Z11workerBodyBPv+0x1c>
    800051f0:	00170713          	addi	a4,a4,1
    800051f4:	ff1ff06f          	j	800051e4 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++) {
    800051f8:	00148493          	addi	s1,s1,1
    800051fc:	00f00793          	li	a5,15
    80005200:	0497e063          	bltu	a5,s1,80005240 <_Z11workerBodyBPv+0x8c>
        printString("B: i="); printInt(i); printString("\n");
    80005204:	00004517          	auipc	a0,0x4
    80005208:	1ec50513          	addi	a0,a0,492 # 800093f0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	498080e7          	jalr	1176(ra) # 800056a4 <_Z11printStringPKc>
    80005214:	00000613          	li	a2,0
    80005218:	00a00593          	li	a1,10
    8000521c:	0004851b          	sext.w	a0,s1
    80005220:	00000097          	auipc	ra,0x0
    80005224:	61c080e7          	jalr	1564(ra) # 8000583c <_Z8printIntiii>
    80005228:	00004517          	auipc	a0,0x4
    8000522c:	ee850513          	addi	a0,a0,-280 # 80009110 <CONSOLE_STATUS+0x100>
    80005230:	00000097          	auipc	ra,0x0
    80005234:	474080e7          	jalr	1140(ra) # 800056a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005238:	00000693          	li	a3,0
    8000523c:	f99ff06f          	j	800051d4 <_Z11workerBodyBPv+0x20>
            //thread_dispatch();
        }
    }
    Riscv::printString("B finished!\n");
    80005240:	00004517          	auipc	a0,0x4
    80005244:	1b850513          	addi	a0,a0,440 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80005248:	ffffe097          	auipc	ra,0xffffe
    8000524c:	3e0080e7          	jalr	992(ra) # 80003628 <_ZN5Riscv11printStringEPKc>
    thread_dispatch();
    80005250:	ffffc097          	auipc	ra,0xffffc
    80005254:	0d4080e7          	jalr	212(ra) # 80001324 <thread_dispatch>
    finishedB = true;
    80005258:	00100793          	li	a5,1
    8000525c:	00006717          	auipc	a4,0x6
    80005260:	6af708a3          	sb	a5,1713(a4) # 8000b90d <_ZL9finishedB>
}
    80005264:	01813083          	ld	ra,24(sp)
    80005268:	01013403          	ld	s0,16(sp)
    8000526c:	00813483          	ld	s1,8(sp)
    80005270:	02010113          	addi	sp,sp,32
    80005274:	00008067          	ret

0000000080005278 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005278:	fe010113          	addi	sp,sp,-32
    8000527c:	00113c23          	sd	ra,24(sp)
    80005280:	00813823          	sd	s0,16(sp)
    80005284:	00913423          	sd	s1,8(sp)
    80005288:	01213023          	sd	s2,0(sp)
    8000528c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005290:	00000493          	li	s1,0
    80005294:	0400006f          	j	800052d4 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005298:	00004517          	auipc	a0,0x4
    8000529c:	17050513          	addi	a0,a0,368 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800052a0:	00000097          	auipc	ra,0x0
    800052a4:	404080e7          	jalr	1028(ra) # 800056a4 <_Z11printStringPKc>
    800052a8:	00000613          	li	a2,0
    800052ac:	00a00593          	li	a1,10
    800052b0:	00048513          	mv	a0,s1
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	588080e7          	jalr	1416(ra) # 8000583c <_Z8printIntiii>
    800052bc:	00004517          	auipc	a0,0x4
    800052c0:	e5450513          	addi	a0,a0,-428 # 80009110 <CONSOLE_STATUS+0x100>
    800052c4:	00000097          	auipc	ra,0x0
    800052c8:	3e0080e7          	jalr	992(ra) # 800056a4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800052cc:	0014849b          	addiw	s1,s1,1
    800052d0:	0ff4f493          	andi	s1,s1,255
    800052d4:	00200793          	li	a5,2
    800052d8:	fc97f0e3          	bgeu	a5,s1,80005298 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800052dc:	00004517          	auipc	a0,0x4
    800052e0:	13450513          	addi	a0,a0,308 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    800052e4:	00000097          	auipc	ra,0x0
    800052e8:	3c0080e7          	jalr	960(ra) # 800056a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800052ec:	00700313          	li	t1,7
    thread_dispatch();
    800052f0:	ffffc097          	auipc	ra,0xffffc
    800052f4:	034080e7          	jalr	52(ra) # 80001324 <thread_dispatch>
    printString("C: returned\n");
    800052f8:	00004517          	auipc	a0,0x4
    800052fc:	1e850513          	addi	a0,a0,488 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x220>
    80005300:	00000097          	auipc	ra,0x0
    80005304:	3a4080e7          	jalr	932(ra) # 800056a4 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005308:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000530c:	00004517          	auipc	a0,0x4
    80005310:	11450513          	addi	a0,a0,276 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005314:	00000097          	auipc	ra,0x0
    80005318:	390080e7          	jalr	912(ra) # 800056a4 <_Z11printStringPKc>
    8000531c:	00000613          	li	a2,0
    80005320:	00a00593          	li	a1,10
    80005324:	0009051b          	sext.w	a0,s2
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	514080e7          	jalr	1300(ra) # 8000583c <_Z8printIntiii>
    80005330:	00004517          	auipc	a0,0x4
    80005334:	de050513          	addi	a0,a0,-544 # 80009110 <CONSOLE_STATUS+0x100>
    80005338:	00000097          	auipc	ra,0x0
    8000533c:	36c080e7          	jalr	876(ra) # 800056a4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005340:	00c00513          	li	a0,12
    80005344:	00000097          	auipc	ra,0x0
    80005348:	e3c080e7          	jalr	-452(ra) # 80005180 <_ZL9fibonaccim>
    8000534c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005350:	00004517          	auipc	a0,0x4
    80005354:	0d850513          	addi	a0,a0,216 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	34c080e7          	jalr	844(ra) # 800056a4 <_Z11printStringPKc>
    80005360:	00000613          	li	a2,0
    80005364:	00a00593          	li	a1,10
    80005368:	0009051b          	sext.w	a0,s2
    8000536c:	00000097          	auipc	ra,0x0
    80005370:	4d0080e7          	jalr	1232(ra) # 8000583c <_Z8printIntiii>
    80005374:	00004517          	auipc	a0,0x4
    80005378:	d9c50513          	addi	a0,a0,-612 # 80009110 <CONSOLE_STATUS+0x100>
    8000537c:	00000097          	auipc	ra,0x0
    80005380:	328080e7          	jalr	808(ra) # 800056a4 <_Z11printStringPKc>
    80005384:	0400006f          	j	800053c4 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005388:	00004517          	auipc	a0,0x4
    8000538c:	08050513          	addi	a0,a0,128 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005390:	00000097          	auipc	ra,0x0
    80005394:	314080e7          	jalr	788(ra) # 800056a4 <_Z11printStringPKc>
    80005398:	00000613          	li	a2,0
    8000539c:	00a00593          	li	a1,10
    800053a0:	00048513          	mv	a0,s1
    800053a4:	00000097          	auipc	ra,0x0
    800053a8:	498080e7          	jalr	1176(ra) # 8000583c <_Z8printIntiii>
    800053ac:	00004517          	auipc	a0,0x4
    800053b0:	d6450513          	addi	a0,a0,-668 # 80009110 <CONSOLE_STATUS+0x100>
    800053b4:	00000097          	auipc	ra,0x0
    800053b8:	2f0080e7          	jalr	752(ra) # 800056a4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800053bc:	0014849b          	addiw	s1,s1,1
    800053c0:	0ff4f493          	andi	s1,s1,255
    800053c4:	00500793          	li	a5,5
    800053c8:	fc97f0e3          	bgeu	a5,s1,80005388 <_Z11workerBodyCPv+0x110>
    }

    printString("C finished!\n");
    800053cc:	00004517          	auipc	a0,0x4
    800053d0:	12450513          	addi	a0,a0,292 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x230>
    800053d4:	00000097          	auipc	ra,0x0
    800053d8:	2d0080e7          	jalr	720(ra) # 800056a4 <_Z11printStringPKc>
    thread_dispatch();
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	f48080e7          	jalr	-184(ra) # 80001324 <thread_dispatch>
    finishedC = true;
    800053e4:	00100793          	li	a5,1
    800053e8:	00006717          	auipc	a4,0x6
    800053ec:	52f70323          	sb	a5,1318(a4) # 8000b90e <_ZL9finishedC>
}
    800053f0:	01813083          	ld	ra,24(sp)
    800053f4:	01013403          	ld	s0,16(sp)
    800053f8:	00813483          	ld	s1,8(sp)
    800053fc:	00013903          	ld	s2,0(sp)
    80005400:	02010113          	addi	sp,sp,32
    80005404:	00008067          	ret

0000000080005408 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005408:	fe010113          	addi	sp,sp,-32
    8000540c:	00113c23          	sd	ra,24(sp)
    80005410:	00813823          	sd	s0,16(sp)
    80005414:	00913423          	sd	s1,8(sp)
    80005418:	01213023          	sd	s2,0(sp)
    8000541c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005420:	00a00493          	li	s1,10
    80005424:	0400006f          	j	80005464 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005428:	00004517          	auipc	a0,0x4
    8000542c:	01050513          	addi	a0,a0,16 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005430:	00000097          	auipc	ra,0x0
    80005434:	274080e7          	jalr	628(ra) # 800056a4 <_Z11printStringPKc>
    80005438:	00000613          	li	a2,0
    8000543c:	00a00593          	li	a1,10
    80005440:	00048513          	mv	a0,s1
    80005444:	00000097          	auipc	ra,0x0
    80005448:	3f8080e7          	jalr	1016(ra) # 8000583c <_Z8printIntiii>
    8000544c:	00004517          	auipc	a0,0x4
    80005450:	cc450513          	addi	a0,a0,-828 # 80009110 <CONSOLE_STATUS+0x100>
    80005454:	00000097          	auipc	ra,0x0
    80005458:	250080e7          	jalr	592(ra) # 800056a4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000545c:	0014849b          	addiw	s1,s1,1
    80005460:	0ff4f493          	andi	s1,s1,255
    80005464:	00c00793          	li	a5,12
    80005468:	fc97f0e3          	bgeu	a5,s1,80005428 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000546c:	00004517          	auipc	a0,0x4
    80005470:	fd450513          	addi	a0,a0,-44 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80005474:	00000097          	auipc	ra,0x0
    80005478:	230080e7          	jalr	560(ra) # 800056a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000547c:	00500313          	li	t1,5
    thread_dispatch();
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	ea4080e7          	jalr	-348(ra) # 80001324 <thread_dispatch>
    printString("D: returned\n");
    80005488:	00004517          	auipc	a0,0x4
    8000548c:	07850513          	addi	a0,a0,120 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x240>
    80005490:	00000097          	auipc	ra,0x0
    80005494:	214080e7          	jalr	532(ra) # 800056a4 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005498:	01000513          	li	a0,16
    8000549c:	00000097          	auipc	ra,0x0
    800054a0:	ce4080e7          	jalr	-796(ra) # 80005180 <_ZL9fibonaccim>
    800054a4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800054a8:	00004517          	auipc	a0,0x4
    800054ac:	fa850513          	addi	a0,a0,-88 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    800054b0:	00000097          	auipc	ra,0x0
    800054b4:	1f4080e7          	jalr	500(ra) # 800056a4 <_Z11printStringPKc>
    800054b8:	00000613          	li	a2,0
    800054bc:	00a00593          	li	a1,10
    800054c0:	0009051b          	sext.w	a0,s2
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	378080e7          	jalr	888(ra) # 8000583c <_Z8printIntiii>
    800054cc:	00004517          	auipc	a0,0x4
    800054d0:	c4450513          	addi	a0,a0,-956 # 80009110 <CONSOLE_STATUS+0x100>
    800054d4:	00000097          	auipc	ra,0x0
    800054d8:	1d0080e7          	jalr	464(ra) # 800056a4 <_Z11printStringPKc>
    800054dc:	0400006f          	j	8000551c <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800054e0:	00004517          	auipc	a0,0x4
    800054e4:	f5850513          	addi	a0,a0,-168 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800054e8:	00000097          	auipc	ra,0x0
    800054ec:	1bc080e7          	jalr	444(ra) # 800056a4 <_Z11printStringPKc>
    800054f0:	00000613          	li	a2,0
    800054f4:	00a00593          	li	a1,10
    800054f8:	00048513          	mv	a0,s1
    800054fc:	00000097          	auipc	ra,0x0
    80005500:	340080e7          	jalr	832(ra) # 8000583c <_Z8printIntiii>
    80005504:	00004517          	auipc	a0,0x4
    80005508:	c0c50513          	addi	a0,a0,-1012 # 80009110 <CONSOLE_STATUS+0x100>
    8000550c:	00000097          	auipc	ra,0x0
    80005510:	198080e7          	jalr	408(ra) # 800056a4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005514:	0014849b          	addiw	s1,s1,1
    80005518:	0ff4f493          	andi	s1,s1,255
    8000551c:	00f00793          	li	a5,15
    80005520:	fc97f0e3          	bgeu	a5,s1,800054e0 <_Z11workerBodyDPv+0xd8>
    }

    printString("D finished!\n");
    80005524:	00004517          	auipc	a0,0x4
    80005528:	f3c50513          	addi	a0,a0,-196 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    8000552c:	00000097          	auipc	ra,0x0
    80005530:	178080e7          	jalr	376(ra) # 800056a4 <_Z11printStringPKc>
    thread_dispatch();
    80005534:	ffffc097          	auipc	ra,0xffffc
    80005538:	df0080e7          	jalr	-528(ra) # 80001324 <thread_dispatch>
    finishedD = true;
    8000553c:	00100793          	li	a5,1
    80005540:	00006717          	auipc	a4,0x6
    80005544:	3cf707a3          	sb	a5,975(a4) # 8000b90f <_ZL9finishedD>
}
    80005548:	01813083          	ld	ra,24(sp)
    8000554c:	01013403          	ld	s0,16(sp)
    80005550:	00813483          	ld	s1,8(sp)
    80005554:	00013903          	ld	s2,0(sp)
    80005558:	02010113          	addi	sp,sp,32
    8000555c:	00008067          	ret

0000000080005560 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005560:	fc010113          	addi	sp,sp,-64
    80005564:	02113c23          	sd	ra,56(sp)
    80005568:	02813823          	sd	s0,48(sp)
    8000556c:	02913423          	sd	s1,40(sp)
    80005570:	03213023          	sd	s2,32(sp)
    80005574:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005578:	00000613          	li	a2,0
    8000557c:	00000597          	auipc	a1,0x0
    80005580:	b4858593          	addi	a1,a1,-1208 # 800050c4 <_Z11workerBodyAPv>
    80005584:	fc040513          	addi	a0,s0,-64
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	d1c080e7          	jalr	-740(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80005590:	00004517          	auipc	a0,0x4
    80005594:	ee050513          	addi	a0,a0,-288 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	10c080e7          	jalr	268(ra) # 800056a4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800055a0:	00000613          	li	a2,0
    800055a4:	00000597          	auipc	a1,0x0
    800055a8:	c1058593          	addi	a1,a1,-1008 # 800051b4 <_Z11workerBodyBPv>
    800055ac:	fc840513          	addi	a0,s0,-56
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	cf4080e7          	jalr	-780(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    800055b8:	00004517          	auipc	a0,0x4
    800055bc:	ed050513          	addi	a0,a0,-304 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	0e4080e7          	jalr	228(ra) # 800056a4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800055c8:	00000613          	li	a2,0
    800055cc:	00000597          	auipc	a1,0x0
    800055d0:	cac58593          	addi	a1,a1,-852 # 80005278 <_Z11workerBodyCPv>
    800055d4:	fd040513          	addi	a0,s0,-48
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	ccc080e7          	jalr	-820(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    800055e0:	00004517          	auipc	a0,0x4
    800055e4:	ec050513          	addi	a0,a0,-320 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    800055e8:	00000097          	auipc	ra,0x0
    800055ec:	0bc080e7          	jalr	188(ra) # 800056a4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800055f0:	00000613          	li	a2,0
    800055f4:	00000597          	auipc	a1,0x0
    800055f8:	e1458593          	addi	a1,a1,-492 # 80005408 <_Z11workerBodyDPv>
    800055fc:	fd840513          	addi	a0,s0,-40
    80005600:	ffffc097          	auipc	ra,0xffffc
    80005604:	ca4080e7          	jalr	-860(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80005608:	00004517          	auipc	a0,0x4
    8000560c:	eb050513          	addi	a0,a0,-336 # 800094b8 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80005610:	00000097          	auipc	ra,0x0
    80005614:	094080e7          	jalr	148(ra) # 800056a4 <_Z11printStringPKc>
    80005618:	00c0006f          	j	80005624 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    8000561c:	ffffc097          	auipc	ra,0xffffc
    80005620:	d08080e7          	jalr	-760(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005624:	00006797          	auipc	a5,0x6
    80005628:	2e87c783          	lbu	a5,744(a5) # 8000b90c <_ZL9finishedA>
    8000562c:	fe0788e3          	beqz	a5,8000561c <_Z18Threads_C_API_testv+0xbc>
    80005630:	00006797          	auipc	a5,0x6
    80005634:	2dd7c783          	lbu	a5,733(a5) # 8000b90d <_ZL9finishedB>
    80005638:	fe0782e3          	beqz	a5,8000561c <_Z18Threads_C_API_testv+0xbc>
    8000563c:	00006797          	auipc	a5,0x6
    80005640:	2d27c783          	lbu	a5,722(a5) # 8000b90e <_ZL9finishedC>
    80005644:	fc078ce3          	beqz	a5,8000561c <_Z18Threads_C_API_testv+0xbc>
    80005648:	00006797          	auipc	a5,0x6
    8000564c:	2c77c783          	lbu	a5,711(a5) # 8000b90f <_ZL9finishedD>
    80005650:	fc0786e3          	beqz	a5,8000561c <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    80005654:	fc040493          	addi	s1,s0,-64
    80005658:	0080006f          	j	80005660 <_Z18Threads_C_API_testv+0x100>
    8000565c:	00848493          	addi	s1,s1,8
    80005660:	fe040793          	addi	a5,s0,-32
    80005664:	02f48463          	beq	s1,a5,8000568c <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80005668:	0004b903          	ld	s2,0(s1)
    8000566c:	fe0908e3          	beqz	s2,8000565c <_Z18Threads_C_API_testv+0xfc>
    80005670:	00090513          	mv	a0,s2
    80005674:	ffffd097          	auipc	ra,0xffffd
    80005678:	208080e7          	jalr	520(ra) # 8000287c <_ZN3PCBD1Ev>
    8000567c:	00090513          	mv	a0,s2
    80005680:	ffffd097          	auipc	ra,0xffffd
    80005684:	1d4080e7          	jalr	468(ra) # 80002854 <_ZN3PCBdlEPv>
    80005688:	fd5ff06f          	j	8000565c <_Z18Threads_C_API_testv+0xfc>
    }
}
    8000568c:	03813083          	ld	ra,56(sp)
    80005690:	03013403          	ld	s0,48(sp)
    80005694:	02813483          	ld	s1,40(sp)
    80005698:	02013903          	ld	s2,32(sp)
    8000569c:	04010113          	addi	sp,sp,64
    800056a0:	00008067          	ret

00000000800056a4 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    800056a4:	fe010113          	addi	sp,sp,-32
    800056a8:	00113c23          	sd	ra,24(sp)
    800056ac:	00813823          	sd	s0,16(sp)
    800056b0:	00913423          	sd	s1,8(sp)
    800056b4:	02010413          	addi	s0,sp,32
    800056b8:	00050493          	mv	s1,a0
    LOCK();
    800056bc:	00100613          	li	a2,1
    800056c0:	00000593          	li	a1,0
    800056c4:	00006517          	auipc	a0,0x6
    800056c8:	24c50513          	addi	a0,a0,588 # 8000b910 <lockPrint>
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	b3c080e7          	jalr	-1220(ra) # 80001208 <copy_and_swap>
    800056d4:	fe0514e3          	bnez	a0,800056bc <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    800056d8:	0004c503          	lbu	a0,0(s1)
    800056dc:	00050a63          	beqz	a0,800056f0 <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    800056e0:	00003097          	auipc	ra,0x3
    800056e4:	9ec080e7          	jalr	-1556(ra) # 800080cc <__putc>
        putc(*string);
        string++;
    800056e8:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800056ec:	fedff06f          	j	800056d8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800056f0:	00000613          	li	a2,0
    800056f4:	00100593          	li	a1,1
    800056f8:	00006517          	auipc	a0,0x6
    800056fc:	21850513          	addi	a0,a0,536 # 8000b910 <lockPrint>
    80005700:	ffffc097          	auipc	ra,0xffffc
    80005704:	b08080e7          	jalr	-1272(ra) # 80001208 <copy_and_swap>
    80005708:	fe0514e3          	bnez	a0,800056f0 <_Z11printStringPKc+0x4c>
}
    8000570c:	01813083          	ld	ra,24(sp)
    80005710:	01013403          	ld	s0,16(sp)
    80005714:	00813483          	ld	s1,8(sp)
    80005718:	02010113          	addi	sp,sp,32
    8000571c:	00008067          	ret

0000000080005720 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005720:	fd010113          	addi	sp,sp,-48
    80005724:	02113423          	sd	ra,40(sp)
    80005728:	02813023          	sd	s0,32(sp)
    8000572c:	00913c23          	sd	s1,24(sp)
    80005730:	01213823          	sd	s2,16(sp)
    80005734:	01313423          	sd	s3,8(sp)
    80005738:	01413023          	sd	s4,0(sp)
    8000573c:	03010413          	addi	s0,sp,48
    80005740:	00050993          	mv	s3,a0
    80005744:	00058a13          	mv	s4,a1
    LOCK();
    80005748:	00100613          	li	a2,1
    8000574c:	00000593          	li	a1,0
    80005750:	00006517          	auipc	a0,0x6
    80005754:	1c050513          	addi	a0,a0,448 # 8000b910 <lockPrint>
    80005758:	ffffc097          	auipc	ra,0xffffc
    8000575c:	ab0080e7          	jalr	-1360(ra) # 80001208 <copy_and_swap>
    80005760:	fe0514e3          	bnez	a0,80005748 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005764:	00000913          	li	s2,0
    80005768:	00090493          	mv	s1,s2
    8000576c:	0019091b          	addiw	s2,s2,1
    80005770:	03495a63          	bge	s2,s4,800057a4 <_Z9getStringPci+0x84>
    return __getc();
    80005774:	00003097          	auipc	ra,0x3
    80005778:	994080e7          	jalr	-1644(ra) # 80008108 <__getc>
        cc = getc();
        if (cc < 1)
    8000577c:	02050463          	beqz	a0,800057a4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005780:	009984b3          	add	s1,s3,s1
    80005784:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005788:	00a00793          	li	a5,10
    8000578c:	00f50a63          	beq	a0,a5,800057a0 <_Z9getStringPci+0x80>
    80005790:	00d00793          	li	a5,13
    80005794:	fcf51ae3          	bne	a0,a5,80005768 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005798:	00090493          	mv	s1,s2
    8000579c:	0080006f          	j	800057a4 <_Z9getStringPci+0x84>
    800057a0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800057a4:	009984b3          	add	s1,s3,s1
    800057a8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800057ac:	00000613          	li	a2,0
    800057b0:	00100593          	li	a1,1
    800057b4:	00006517          	auipc	a0,0x6
    800057b8:	15c50513          	addi	a0,a0,348 # 8000b910 <lockPrint>
    800057bc:	ffffc097          	auipc	ra,0xffffc
    800057c0:	a4c080e7          	jalr	-1460(ra) # 80001208 <copy_and_swap>
    800057c4:	fe0514e3          	bnez	a0,800057ac <_Z9getStringPci+0x8c>
    return buf;
}
    800057c8:	00098513          	mv	a0,s3
    800057cc:	02813083          	ld	ra,40(sp)
    800057d0:	02013403          	ld	s0,32(sp)
    800057d4:	01813483          	ld	s1,24(sp)
    800057d8:	01013903          	ld	s2,16(sp)
    800057dc:	00813983          	ld	s3,8(sp)
    800057e0:	00013a03          	ld	s4,0(sp)
    800057e4:	03010113          	addi	sp,sp,48
    800057e8:	00008067          	ret

00000000800057ec <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800057ec:	ff010113          	addi	sp,sp,-16
    800057f0:	00813423          	sd	s0,8(sp)
    800057f4:	01010413          	addi	s0,sp,16
    800057f8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800057fc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005800:	0006c603          	lbu	a2,0(a3)
    80005804:	fd06071b          	addiw	a4,a2,-48
    80005808:	0ff77713          	andi	a4,a4,255
    8000580c:	00900793          	li	a5,9
    80005810:	02e7e063          	bltu	a5,a4,80005830 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005814:	0025179b          	slliw	a5,a0,0x2
    80005818:	00a787bb          	addw	a5,a5,a0
    8000581c:	0017979b          	slliw	a5,a5,0x1
    80005820:	00168693          	addi	a3,a3,1
    80005824:	00c787bb          	addw	a5,a5,a2
    80005828:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000582c:	fd5ff06f          	j	80005800 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005830:	00813403          	ld	s0,8(sp)
    80005834:	01010113          	addi	sp,sp,16
    80005838:	00008067          	ret

000000008000583c <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    8000583c:	fc010113          	addi	sp,sp,-64
    80005840:	02113c23          	sd	ra,56(sp)
    80005844:	02813823          	sd	s0,48(sp)
    80005848:	02913423          	sd	s1,40(sp)
    8000584c:	03213023          	sd	s2,32(sp)
    80005850:	01313c23          	sd	s3,24(sp)
    80005854:	04010413          	addi	s0,sp,64
    80005858:	00050493          	mv	s1,a0
    8000585c:	00058913          	mv	s2,a1
    80005860:	00060993          	mv	s3,a2
    LOCK();
    80005864:	00100613          	li	a2,1
    80005868:	00000593          	li	a1,0
    8000586c:	00006517          	auipc	a0,0x6
    80005870:	0a450513          	addi	a0,a0,164 # 8000b910 <lockPrint>
    80005874:	ffffc097          	auipc	ra,0xffffc
    80005878:	994080e7          	jalr	-1644(ra) # 80001208 <copy_and_swap>
    8000587c:	fe0514e3          	bnez	a0,80005864 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005880:	00098463          	beqz	s3,80005888 <_Z8printIntiii+0x4c>
    80005884:	0804c463          	bltz	s1,8000590c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005888:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000588c:	00000593          	li	a1,0
    }

    i = 0;
    80005890:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005894:	0009079b          	sext.w	a5,s2
    80005898:	0325773b          	remuw	a4,a0,s2
    8000589c:	00048613          	mv	a2,s1
    800058a0:	0014849b          	addiw	s1,s1,1
    800058a4:	02071693          	slli	a3,a4,0x20
    800058a8:	0206d693          	srli	a3,a3,0x20
    800058ac:	00004717          	auipc	a4,0x4
    800058b0:	c6470713          	addi	a4,a4,-924 # 80009510 <_ZL6digits>
    800058b4:	00d70733          	add	a4,a4,a3
    800058b8:	00074683          	lbu	a3,0(a4)
    800058bc:	fd040713          	addi	a4,s0,-48
    800058c0:	00c70733          	add	a4,a4,a2
    800058c4:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800058c8:	0005071b          	sext.w	a4,a0
    800058cc:	0325553b          	divuw	a0,a0,s2
    800058d0:	fcf772e3          	bgeu	a4,a5,80005894 <_Z8printIntiii+0x58>
    if (neg)
    800058d4:	00058c63          	beqz	a1,800058ec <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800058d8:	fd040793          	addi	a5,s0,-48
    800058dc:	009784b3          	add	s1,a5,s1
    800058e0:	02d00793          	li	a5,45
    800058e4:	fef48823          	sb	a5,-16(s1)
    800058e8:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    800058ec:	fff4849b          	addiw	s1,s1,-1
    800058f0:	0204c463          	bltz	s1,80005918 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800058f4:	fd040793          	addi	a5,s0,-48
    800058f8:	009787b3          	add	a5,a5,s1
    __putc(c);
    800058fc:	ff07c503          	lbu	a0,-16(a5)
    80005900:	00002097          	auipc	ra,0x2
    80005904:	7cc080e7          	jalr	1996(ra) # 800080cc <__putc>
}
    80005908:	fe5ff06f          	j	800058ec <_Z8printIntiii+0xb0>
        x = -xx;
    8000590c:	4090053b          	negw	a0,s1
        neg = 1;
    80005910:	00100593          	li	a1,1
        x = -xx;
    80005914:	f7dff06f          	j	80005890 <_Z8printIntiii+0x54>

    UNLOCK();
    80005918:	00000613          	li	a2,0
    8000591c:	00100593          	li	a1,1
    80005920:	00006517          	auipc	a0,0x6
    80005924:	ff050513          	addi	a0,a0,-16 # 8000b910 <lockPrint>
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	8e0080e7          	jalr	-1824(ra) # 80001208 <copy_and_swap>
    80005930:	fe0514e3          	bnez	a0,80005918 <_Z8printIntiii+0xdc>
}
    80005934:	03813083          	ld	ra,56(sp)
    80005938:	03013403          	ld	s0,48(sp)
    8000593c:	02813483          	ld	s1,40(sp)
    80005940:	02013903          	ld	s2,32(sp)
    80005944:	01813983          	ld	s3,24(sp)
    80005948:	04010113          	addi	sp,sp,64
    8000594c:	00008067          	ret

0000000080005950 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005950:	fe010113          	addi	sp,sp,-32
    80005954:	00113c23          	sd	ra,24(sp)
    80005958:	00813823          	sd	s0,16(sp)
    8000595c:	00913423          	sd	s1,8(sp)
    80005960:	01213023          	sd	s2,0(sp)
    80005964:	02010413          	addi	s0,sp,32
    80005968:	00050493          	mv	s1,a0
    8000596c:	00b52023          	sw	a1,0(a0)
    80005970:	00052823          	sw	zero,16(a0)
    80005974:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005978:	00259513          	slli	a0,a1,0x2
    8000597c:	ffffc097          	auipc	ra,0xffffc
    80005980:	8cc080e7          	jalr	-1844(ra) # 80001248 <mem_alloc>
    80005984:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005988:	01000513          	li	a0,16
    8000598c:	ffffe097          	auipc	ra,0xffffe
    80005990:	858080e7          	jalr	-1960(ra) # 800031e4 <_Znwm>
    80005994:	00050913          	mv	s2,a0
    80005998:	00000593          	li	a1,0
    8000599c:	ffffe097          	auipc	ra,0xffffe
    800059a0:	a84080e7          	jalr	-1404(ra) # 80003420 <_ZN9SemaphoreC1Ej>
    800059a4:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800059a8:	01000513          	li	a0,16
    800059ac:	ffffe097          	auipc	ra,0xffffe
    800059b0:	838080e7          	jalr	-1992(ra) # 800031e4 <_Znwm>
    800059b4:	00050913          	mv	s2,a0
    800059b8:	0004a583          	lw	a1,0(s1)
    800059bc:	ffffe097          	auipc	ra,0xffffe
    800059c0:	a64080e7          	jalr	-1436(ra) # 80003420 <_ZN9SemaphoreC1Ej>
    800059c4:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800059c8:	01000513          	li	a0,16
    800059cc:	ffffe097          	auipc	ra,0xffffe
    800059d0:	818080e7          	jalr	-2024(ra) # 800031e4 <_Znwm>
    800059d4:	00050913          	mv	s2,a0
    800059d8:	00100593          	li	a1,1
    800059dc:	ffffe097          	auipc	ra,0xffffe
    800059e0:	a44080e7          	jalr	-1468(ra) # 80003420 <_ZN9SemaphoreC1Ej>
    800059e4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800059e8:	01000513          	li	a0,16
    800059ec:	ffffd097          	auipc	ra,0xffffd
    800059f0:	7f8080e7          	jalr	2040(ra) # 800031e4 <_Znwm>
    800059f4:	00050913          	mv	s2,a0
    800059f8:	00100593          	li	a1,1
    800059fc:	ffffe097          	auipc	ra,0xffffe
    80005a00:	a24080e7          	jalr	-1500(ra) # 80003420 <_ZN9SemaphoreC1Ej>
    80005a04:	0324b823          	sd	s2,48(s1)
}
    80005a08:	01813083          	ld	ra,24(sp)
    80005a0c:	01013403          	ld	s0,16(sp)
    80005a10:	00813483          	ld	s1,8(sp)
    80005a14:	00013903          	ld	s2,0(sp)
    80005a18:	02010113          	addi	sp,sp,32
    80005a1c:	00008067          	ret
    80005a20:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005a24:	00090513          	mv	a0,s2
    80005a28:	ffffd097          	auipc	ra,0xffffd
    80005a2c:	7e4080e7          	jalr	2020(ra) # 8000320c <_ZdlPv>
    80005a30:	00048513          	mv	a0,s1
    80005a34:	00007097          	auipc	ra,0x7
    80005a38:	fb4080e7          	jalr	-76(ra) # 8000c9e8 <_Unwind_Resume>
    80005a3c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005a40:	00090513          	mv	a0,s2
    80005a44:	ffffd097          	auipc	ra,0xffffd
    80005a48:	7c8080e7          	jalr	1992(ra) # 8000320c <_ZdlPv>
    80005a4c:	00048513          	mv	a0,s1
    80005a50:	00007097          	auipc	ra,0x7
    80005a54:	f98080e7          	jalr	-104(ra) # 8000c9e8 <_Unwind_Resume>
    80005a58:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005a5c:	00090513          	mv	a0,s2
    80005a60:	ffffd097          	auipc	ra,0xffffd
    80005a64:	7ac080e7          	jalr	1964(ra) # 8000320c <_ZdlPv>
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	00007097          	auipc	ra,0x7
    80005a70:	f7c080e7          	jalr	-132(ra) # 8000c9e8 <_Unwind_Resume>
    80005a74:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005a78:	00090513          	mv	a0,s2
    80005a7c:	ffffd097          	auipc	ra,0xffffd
    80005a80:	790080e7          	jalr	1936(ra) # 8000320c <_ZdlPv>
    80005a84:	00048513          	mv	a0,s1
    80005a88:	00007097          	auipc	ra,0x7
    80005a8c:	f60080e7          	jalr	-160(ra) # 8000c9e8 <_Unwind_Resume>

0000000080005a90 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005a90:	fe010113          	addi	sp,sp,-32
    80005a94:	00113c23          	sd	ra,24(sp)
    80005a98:	00813823          	sd	s0,16(sp)
    80005a9c:	00913423          	sd	s1,8(sp)
    80005aa0:	02010413          	addi	s0,sp,32
    80005aa4:	00050493          	mv	s1,a0
    __putc(c);
    80005aa8:	00a00513          	li	a0,10
    80005aac:	00002097          	auipc	ra,0x2
    80005ab0:	620080e7          	jalr	1568(ra) # 800080cc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005ab4:	0104a783          	lw	a5,16(s1)
    80005ab8:	0144a703          	lw	a4,20(s1)
    80005abc:	00e78c63          	beq	a5,a4,80005ad4 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005ac0:	0017879b          	addiw	a5,a5,1
    80005ac4:	0004a703          	lw	a4,0(s1)
    80005ac8:	02e7e7bb          	remw	a5,a5,a4
    80005acc:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005ad0:	fe5ff06f          	j	80005ab4 <_ZN9BufferCPPD1Ev+0x24>
    80005ad4:	02100513          	li	a0,33
    80005ad8:	00002097          	auipc	ra,0x2
    80005adc:	5f4080e7          	jalr	1524(ra) # 800080cc <__putc>
    80005ae0:	00a00513          	li	a0,10
    80005ae4:	00002097          	auipc	ra,0x2
    80005ae8:	5e8080e7          	jalr	1512(ra) # 800080cc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005aec:	0084b503          	ld	a0,8(s1)
    80005af0:	ffffb097          	auipc	ra,0xffffb
    80005af4:	788080e7          	jalr	1928(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005af8:	0204b503          	ld	a0,32(s1)
    80005afc:	00050863          	beqz	a0,80005b0c <_ZN9BufferCPPD1Ev+0x7c>
    80005b00:	00053783          	ld	a5,0(a0)
    80005b04:	0087b783          	ld	a5,8(a5)
    80005b08:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005b0c:	0184b503          	ld	a0,24(s1)
    80005b10:	00050863          	beqz	a0,80005b20 <_ZN9BufferCPPD1Ev+0x90>
    80005b14:	00053783          	ld	a5,0(a0)
    80005b18:	0087b783          	ld	a5,8(a5)
    80005b1c:	000780e7          	jalr	a5
    delete mutexTail;
    80005b20:	0304b503          	ld	a0,48(s1)
    80005b24:	00050863          	beqz	a0,80005b34 <_ZN9BufferCPPD1Ev+0xa4>
    80005b28:	00053783          	ld	a5,0(a0)
    80005b2c:	0087b783          	ld	a5,8(a5)
    80005b30:	000780e7          	jalr	a5
    delete mutexHead;
    80005b34:	0284b503          	ld	a0,40(s1)
    80005b38:	00050863          	beqz	a0,80005b48 <_ZN9BufferCPPD1Ev+0xb8>
    80005b3c:	00053783          	ld	a5,0(a0)
    80005b40:	0087b783          	ld	a5,8(a5)
    80005b44:	000780e7          	jalr	a5

}
    80005b48:	01813083          	ld	ra,24(sp)
    80005b4c:	01013403          	ld	s0,16(sp)
    80005b50:	00813483          	ld	s1,8(sp)
    80005b54:	02010113          	addi	sp,sp,32
    80005b58:	00008067          	ret

0000000080005b5c <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005b5c:	fe010113          	addi	sp,sp,-32
    80005b60:	00113c23          	sd	ra,24(sp)
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00913423          	sd	s1,8(sp)
    80005b6c:	01213023          	sd	s2,0(sp)
    80005b70:	02010413          	addi	s0,sp,32
    80005b74:	00050493          	mv	s1,a0
    80005b78:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b7c:	01853503          	ld	a0,24(a0)
    80005b80:	ffffe097          	auipc	ra,0xffffe
    80005b84:	868080e7          	jalr	-1944(ra) # 800033e8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b88:	0304b503          	ld	a0,48(s1)
    80005b8c:	ffffe097          	auipc	ra,0xffffe
    80005b90:	85c080e7          	jalr	-1956(ra) # 800033e8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005b94:	0084b783          	ld	a5,8(s1)
    80005b98:	0144a703          	lw	a4,20(s1)
    80005b9c:	00271713          	slli	a4,a4,0x2
    80005ba0:	00e787b3          	add	a5,a5,a4
    80005ba4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ba8:	0144a783          	lw	a5,20(s1)
    80005bac:	0017879b          	addiw	a5,a5,1
    80005bb0:	0004a703          	lw	a4,0(s1)
    80005bb4:	02e7e7bb          	remw	a5,a5,a4
    80005bb8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005bbc:	0304b503          	ld	a0,48(s1)
    80005bc0:	ffffe097          	auipc	ra,0xffffe
    80005bc4:	8ac080e7          	jalr	-1876(ra) # 8000346c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005bc8:	0204b503          	ld	a0,32(s1)
    80005bcc:	ffffe097          	auipc	ra,0xffffe
    80005bd0:	8a0080e7          	jalr	-1888(ra) # 8000346c <_ZN9Semaphore6signalEv>

}
    80005bd4:	01813083          	ld	ra,24(sp)
    80005bd8:	01013403          	ld	s0,16(sp)
    80005bdc:	00813483          	ld	s1,8(sp)
    80005be0:	00013903          	ld	s2,0(sp)
    80005be4:	02010113          	addi	sp,sp,32
    80005be8:	00008067          	ret

0000000080005bec <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005bec:	fe010113          	addi	sp,sp,-32
    80005bf0:	00113c23          	sd	ra,24(sp)
    80005bf4:	00813823          	sd	s0,16(sp)
    80005bf8:	00913423          	sd	s1,8(sp)
    80005bfc:	01213023          	sd	s2,0(sp)
    80005c00:	02010413          	addi	s0,sp,32
    80005c04:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005c08:	02053503          	ld	a0,32(a0)
    80005c0c:	ffffd097          	auipc	ra,0xffffd
    80005c10:	7dc080e7          	jalr	2012(ra) # 800033e8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c14:	0284b503          	ld	a0,40(s1)
    80005c18:	ffffd097          	auipc	ra,0xffffd
    80005c1c:	7d0080e7          	jalr	2000(ra) # 800033e8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c20:	0084b703          	ld	a4,8(s1)
    80005c24:	0104a783          	lw	a5,16(s1)
    80005c28:	00279693          	slli	a3,a5,0x2
    80005c2c:	00d70733          	add	a4,a4,a3
    80005c30:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c34:	0017879b          	addiw	a5,a5,1
    80005c38:	0004a703          	lw	a4,0(s1)
    80005c3c:	02e7e7bb          	remw	a5,a5,a4
    80005c40:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c44:	0284b503          	ld	a0,40(s1)
    80005c48:	ffffe097          	auipc	ra,0xffffe
    80005c4c:	824080e7          	jalr	-2012(ra) # 8000346c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c50:	0184b503          	ld	a0,24(s1)
    80005c54:	ffffe097          	auipc	ra,0xffffe
    80005c58:	818080e7          	jalr	-2024(ra) # 8000346c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c5c:	00090513          	mv	a0,s2
    80005c60:	01813083          	ld	ra,24(sp)
    80005c64:	01013403          	ld	s0,16(sp)
    80005c68:	00813483          	ld	s1,8(sp)
    80005c6c:	00013903          	ld	s2,0(sp)
    80005c70:	02010113          	addi	sp,sp,32
    80005c74:	00008067          	ret

0000000080005c78 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005c78:	ff010113          	addi	sp,sp,-16
    80005c7c:	00813423          	sd	s0,8(sp)
    80005c80:	01010413          	addi	s0,sp,16
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005c84:	00813403          	ld	s0,8(sp)
    80005c88:	01010113          	addi	sp,sp,16
    80005c8c:	00008067          	ret

0000000080005c90 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005c90:	fe010113          	addi	sp,sp,-32
    80005c94:	00113c23          	sd	ra,24(sp)
    80005c98:	00813823          	sd	s0,16(sp)
    80005c9c:	00913423          	sd	s1,8(sp)
    80005ca0:	01213023          	sd	s2,0(sp)
    80005ca4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005ca8:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005cac:	00600493          	li	s1,6
    while (--i > 0) {
    80005cb0:	fff4849b          	addiw	s1,s1,-1
    80005cb4:	04905463          	blez	s1,80005cfc <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005cb8:	00004517          	auipc	a0,0x4
    80005cbc:	87050513          	addi	a0,a0,-1936 # 80009528 <_ZL6digits+0x18>
    80005cc0:	00000097          	auipc	ra,0x0
    80005cc4:	9e4080e7          	jalr	-1564(ra) # 800056a4 <_Z11printStringPKc>
        printInt(sleep_time);
    80005cc8:	00000613          	li	a2,0
    80005ccc:	00a00593          	li	a1,10
    80005cd0:	0009051b          	sext.w	a0,s2
    80005cd4:	00000097          	auipc	ra,0x0
    80005cd8:	b68080e7          	jalr	-1176(ra) # 8000583c <_Z8printIntiii>
        printString(" !\n");
    80005cdc:	00004517          	auipc	a0,0x4
    80005ce0:	85450513          	addi	a0,a0,-1964 # 80009530 <_ZL6digits+0x20>
    80005ce4:	00000097          	auipc	ra,0x0
    80005ce8:	9c0080e7          	jalr	-1600(ra) # 800056a4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005cec:	00090513          	mv	a0,s2
    80005cf0:	ffffb097          	auipc	ra,0xffffb
    80005cf4:	738080e7          	jalr	1848(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005cf8:	fb9ff06f          	j	80005cb0 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005cfc:	00a00793          	li	a5,10
    80005d00:	02f95933          	divu	s2,s2,a5
    80005d04:	fff90913          	addi	s2,s2,-1
    80005d08:	00006797          	auipc	a5,0x6
    80005d0c:	c1078793          	addi	a5,a5,-1008 # 8000b918 <finished>
    80005d10:	01278933          	add	s2,a5,s2
    80005d14:	00100793          	li	a5,1
    80005d18:	00f90023          	sb	a5,0(s2)
}
    80005d1c:	01813083          	ld	ra,24(sp)
    80005d20:	01013403          	ld	s0,16(sp)
    80005d24:	00813483          	ld	s1,8(sp)
    80005d28:	00013903          	ld	s2,0(sp)
    80005d2c:	02010113          	addi	sp,sp,32
    80005d30:	00008067          	ret

0000000080005d34 <_Z12testSleepingv>:

void testSleeping()
{
    80005d34:	fc010113          	addi	sp,sp,-64
    80005d38:	02113c23          	sd	ra,56(sp)
    80005d3c:	02813823          	sd	s0,48(sp)
    80005d40:	02913423          	sd	s1,40(sp)
    80005d44:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005d48:	00a00793          	li	a5,10
    80005d4c:	fcf43823          	sd	a5,-48(s0)
    80005d50:	01400793          	li	a5,20
    80005d54:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d58:	00000493          	li	s1,0
    80005d5c:	02c0006f          	j	80005d88 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005d60:	00349793          	slli	a5,s1,0x3
    80005d64:	fd040613          	addi	a2,s0,-48
    80005d68:	00f60633          	add	a2,a2,a5
    80005d6c:	00000597          	auipc	a1,0x0
    80005d70:	f2458593          	addi	a1,a1,-220 # 80005c90 <_Z9sleepyRunPv>
    80005d74:	fc040513          	addi	a0,s0,-64
    80005d78:	00f50533          	add	a0,a0,a5
    80005d7c:	ffffb097          	auipc	ra,0xffffb
    80005d80:	528080e7          	jalr	1320(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d84:	0014849b          	addiw	s1,s1,1
    80005d88:	00100793          	li	a5,1
    80005d8c:	fc97dae3          	bge	a5,s1,80005d60 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005d90:	00006797          	auipc	a5,0x6
    80005d94:	b887c783          	lbu	a5,-1144(a5) # 8000b918 <finished>
    80005d98:	fe078ce3          	beqz	a5,80005d90 <_Z12testSleepingv+0x5c>
    80005d9c:	00006797          	auipc	a5,0x6
    80005da0:	b7d7c783          	lbu	a5,-1155(a5) # 8000b919 <finished+0x1>
    80005da4:	fe0786e3          	beqz	a5,80005d90 <_Z12testSleepingv+0x5c>
}
    80005da8:	03813083          	ld	ra,56(sp)
    80005dac:	03013403          	ld	s0,48(sp)
    80005db0:	02813483          	ld	s1,40(sp)
    80005db4:	04010113          	addi	sp,sp,64
    80005db8:	00008067          	ret

0000000080005dbc <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005dbc:	fe010113          	addi	sp,sp,-32
    80005dc0:	00113c23          	sd	ra,24(sp)
    80005dc4:	00813823          	sd	s0,16(sp)
    80005dc8:	00913423          	sd	s1,8(sp)
    80005dcc:	02010413          	addi	s0,sp,32
    80005dd0:	00050493          	mv	s1,a0
    80005dd4:	00b52023          	sw	a1,0(a0)
    80005dd8:	00052823          	sw	zero,16(a0)
    80005ddc:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005de0:	00259513          	slli	a0,a1,0x2
    80005de4:	ffffb097          	auipc	ra,0xffffb
    80005de8:	464080e7          	jalr	1124(ra) # 80001248 <mem_alloc>
    80005dec:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005df0:	00000593          	li	a1,0
    80005df4:	02048513          	addi	a0,s1,32
    80005df8:	ffffb097          	auipc	ra,0xffffb
    80005dfc:	574080e7          	jalr	1396(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005e00:	0004a583          	lw	a1,0(s1)
    80005e04:	01848513          	addi	a0,s1,24
    80005e08:	ffffb097          	auipc	ra,0xffffb
    80005e0c:	564080e7          	jalr	1380(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005e10:	00100593          	li	a1,1
    80005e14:	02848513          	addi	a0,s1,40
    80005e18:	ffffb097          	auipc	ra,0xffffb
    80005e1c:	554080e7          	jalr	1364(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005e20:	00100593          	li	a1,1
    80005e24:	03048513          	addi	a0,s1,48
    80005e28:	ffffb097          	auipc	ra,0xffffb
    80005e2c:	544080e7          	jalr	1348(ra) # 8000136c <sem_open>
}
    80005e30:	01813083          	ld	ra,24(sp)
    80005e34:	01013403          	ld	s0,16(sp)
    80005e38:	00813483          	ld	s1,8(sp)
    80005e3c:	02010113          	addi	sp,sp,32
    80005e40:	00008067          	ret

0000000080005e44 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80005e44:	fe010113          	addi	sp,sp,-32
    80005e48:	00113c23          	sd	ra,24(sp)
    80005e4c:	00813823          	sd	s0,16(sp)
    80005e50:	00913423          	sd	s1,8(sp)
    80005e54:	02010413          	addi	s0,sp,32
    80005e58:	00050493          	mv	s1,a0
    80005e5c:	00a00513          	li	a0,10
    80005e60:	00002097          	auipc	ra,0x2
    80005e64:	26c080e7          	jalr	620(ra) # 800080cc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005e68:	0104a783          	lw	a5,16(s1)
    80005e6c:	0144a703          	lw	a4,20(s1)
    80005e70:	00e78c63          	beq	a5,a4,80005e88 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005e74:	0017879b          	addiw	a5,a5,1
    80005e78:	0004a703          	lw	a4,0(s1)
    80005e7c:	02e7e7bb          	remw	a5,a5,a4
    80005e80:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005e84:	fe5ff06f          	j	80005e68 <_ZN6BufferD1Ev+0x24>
    80005e88:	02100513          	li	a0,33
    80005e8c:	00002097          	auipc	ra,0x2
    80005e90:	240080e7          	jalr	576(ra) # 800080cc <__putc>
    80005e94:	00a00513          	li	a0,10
    80005e98:	00002097          	auipc	ra,0x2
    80005e9c:	234080e7          	jalr	564(ra) # 800080cc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005ea0:	0084b503          	ld	a0,8(s1)
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	3d4080e7          	jalr	980(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80005eac:	0204b503          	ld	a0,32(s1)
    80005eb0:	ffffb097          	auipc	ra,0xffffb
    80005eb4:	4f4080e7          	jalr	1268(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80005eb8:	0184b503          	ld	a0,24(s1)
    80005ebc:	ffffb097          	auipc	ra,0xffffb
    80005ec0:	4e8080e7          	jalr	1256(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005ec4:	0304b503          	ld	a0,48(s1)
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	4dc080e7          	jalr	1244(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80005ed0:	0284b503          	ld	a0,40(s1)
    80005ed4:	ffffb097          	auipc	ra,0xffffb
    80005ed8:	4d0080e7          	jalr	1232(ra) # 800013a4 <sem_close>
}
    80005edc:	01813083          	ld	ra,24(sp)
    80005ee0:	01013403          	ld	s0,16(sp)
    80005ee4:	00813483          	ld	s1,8(sp)
    80005ee8:	02010113          	addi	sp,sp,32
    80005eec:	00008067          	ret

0000000080005ef0 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80005ef0:	fe010113          	addi	sp,sp,-32
    80005ef4:	00113c23          	sd	ra,24(sp)
    80005ef8:	00813823          	sd	s0,16(sp)
    80005efc:	00913423          	sd	s1,8(sp)
    80005f00:	01213023          	sd	s2,0(sp)
    80005f04:	02010413          	addi	s0,sp,32
    80005f08:	00050493          	mv	s1,a0
    80005f0c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005f10:	01853503          	ld	a0,24(a0)
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	4bc080e7          	jalr	1212(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80005f1c:	0304b503          	ld	a0,48(s1)
    80005f20:	ffffb097          	auipc	ra,0xffffb
    80005f24:	4b0080e7          	jalr	1200(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80005f28:	0084b783          	ld	a5,8(s1)
    80005f2c:	0144a703          	lw	a4,20(s1)
    80005f30:	00271713          	slli	a4,a4,0x2
    80005f34:	00e787b3          	add	a5,a5,a4
    80005f38:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005f3c:	0144a783          	lw	a5,20(s1)
    80005f40:	0017879b          	addiw	a5,a5,1
    80005f44:	0004a703          	lw	a4,0(s1)
    80005f48:	02e7e7bb          	remw	a5,a5,a4
    80005f4c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005f50:	0304b503          	ld	a0,48(s1)
    80005f54:	ffffb097          	auipc	ra,0xffffb
    80005f58:	4a8080e7          	jalr	1192(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80005f5c:	0204b503          	ld	a0,32(s1)
    80005f60:	ffffb097          	auipc	ra,0xffffb
    80005f64:	49c080e7          	jalr	1180(ra) # 800013fc <sem_signal>

}
    80005f68:	01813083          	ld	ra,24(sp)
    80005f6c:	01013403          	ld	s0,16(sp)
    80005f70:	00813483          	ld	s1,8(sp)
    80005f74:	00013903          	ld	s2,0(sp)
    80005f78:	02010113          	addi	sp,sp,32
    80005f7c:	00008067          	ret

0000000080005f80 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005f80:	fe010113          	addi	sp,sp,-32
    80005f84:	00113c23          	sd	ra,24(sp)
    80005f88:	00813823          	sd	s0,16(sp)
    80005f8c:	00913423          	sd	s1,8(sp)
    80005f90:	01213023          	sd	s2,0(sp)
    80005f94:	02010413          	addi	s0,sp,32
    80005f98:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005f9c:	02053503          	ld	a0,32(a0)
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	430080e7          	jalr	1072(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80005fa8:	0284b503          	ld	a0,40(s1)
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	424080e7          	jalr	1060(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005fb4:	0084b703          	ld	a4,8(s1)
    80005fb8:	0104a783          	lw	a5,16(s1)
    80005fbc:	00279693          	slli	a3,a5,0x2
    80005fc0:	00d70733          	add	a4,a4,a3
    80005fc4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005fc8:	0017879b          	addiw	a5,a5,1
    80005fcc:	0004a703          	lw	a4,0(s1)
    80005fd0:	02e7e7bb          	remw	a5,a5,a4
    80005fd4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005fd8:	0284b503          	ld	a0,40(s1)
    80005fdc:	ffffb097          	auipc	ra,0xffffb
    80005fe0:	420080e7          	jalr	1056(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80005fe4:	0184b503          	ld	a0,24(s1)
    80005fe8:	ffffb097          	auipc	ra,0xffffb
    80005fec:	414080e7          	jalr	1044(ra) # 800013fc <sem_signal>

    return ret;
}
    80005ff0:	00090513          	mv	a0,s2
    80005ff4:	01813083          	ld	ra,24(sp)
    80005ff8:	01013403          	ld	s0,16(sp)
    80005ffc:	00813483          	ld	s1,8(sp)
    80006000:	00013903          	ld	s2,0(sp)
    80006004:	02010113          	addi	sp,sp,32
    80006008:	00008067          	ret

000000008000600c <start>:
    8000600c:	ff010113          	addi	sp,sp,-16
    80006010:	00813423          	sd	s0,8(sp)
    80006014:	01010413          	addi	s0,sp,16
    80006018:	300027f3          	csrr	a5,mstatus
    8000601c:	ffffe737          	lui	a4,0xffffe
    80006020:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1c7f>
    80006024:	00e7f7b3          	and	a5,a5,a4
    80006028:	00001737          	lui	a4,0x1
    8000602c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006030:	00e7e7b3          	or	a5,a5,a4
    80006034:	30079073          	csrw	mstatus,a5
    80006038:	00000797          	auipc	a5,0x0
    8000603c:	16078793          	addi	a5,a5,352 # 80006198 <system_main>
    80006040:	34179073          	csrw	mepc,a5
    80006044:	00000793          	li	a5,0
    80006048:	18079073          	csrw	satp,a5
    8000604c:	000107b7          	lui	a5,0x10
    80006050:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006054:	30279073          	csrw	medeleg,a5
    80006058:	30379073          	csrw	mideleg,a5
    8000605c:	104027f3          	csrr	a5,sie
    80006060:	2227e793          	ori	a5,a5,546
    80006064:	10479073          	csrw	sie,a5
    80006068:	fff00793          	li	a5,-1
    8000606c:	00a7d793          	srli	a5,a5,0xa
    80006070:	3b079073          	csrw	pmpaddr0,a5
    80006074:	00f00793          	li	a5,15
    80006078:	3a079073          	csrw	pmpcfg0,a5
    8000607c:	f14027f3          	csrr	a5,mhartid
    80006080:	0200c737          	lui	a4,0x200c
    80006084:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006088:	0007869b          	sext.w	a3,a5
    8000608c:	00269713          	slli	a4,a3,0x2
    80006090:	000f4637          	lui	a2,0xf4
    80006094:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006098:	00d70733          	add	a4,a4,a3
    8000609c:	0037979b          	slliw	a5,a5,0x3
    800060a0:	020046b7          	lui	a3,0x2004
    800060a4:	00d787b3          	add	a5,a5,a3
    800060a8:	00c585b3          	add	a1,a1,a2
    800060ac:	00371693          	slli	a3,a4,0x3
    800060b0:	00006717          	auipc	a4,0x6
    800060b4:	87070713          	addi	a4,a4,-1936 # 8000b920 <timer_scratch>
    800060b8:	00b7b023          	sd	a1,0(a5)
    800060bc:	00d70733          	add	a4,a4,a3
    800060c0:	00f73c23          	sd	a5,24(a4)
    800060c4:	02c73023          	sd	a2,32(a4)
    800060c8:	34071073          	csrw	mscratch,a4
    800060cc:	00000797          	auipc	a5,0x0
    800060d0:	6e478793          	addi	a5,a5,1764 # 800067b0 <timervec>
    800060d4:	30579073          	csrw	mtvec,a5
    800060d8:	300027f3          	csrr	a5,mstatus
    800060dc:	0087e793          	ori	a5,a5,8
    800060e0:	30079073          	csrw	mstatus,a5
    800060e4:	304027f3          	csrr	a5,mie
    800060e8:	0807e793          	ori	a5,a5,128
    800060ec:	30479073          	csrw	mie,a5
    800060f0:	f14027f3          	csrr	a5,mhartid
    800060f4:	0007879b          	sext.w	a5,a5
    800060f8:	00078213          	mv	tp,a5
    800060fc:	30200073          	mret
    80006100:	00813403          	ld	s0,8(sp)
    80006104:	01010113          	addi	sp,sp,16
    80006108:	00008067          	ret

000000008000610c <timerinit>:
    8000610c:	ff010113          	addi	sp,sp,-16
    80006110:	00813423          	sd	s0,8(sp)
    80006114:	01010413          	addi	s0,sp,16
    80006118:	f14027f3          	csrr	a5,mhartid
    8000611c:	0200c737          	lui	a4,0x200c
    80006120:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006124:	0007869b          	sext.w	a3,a5
    80006128:	00269713          	slli	a4,a3,0x2
    8000612c:	000f4637          	lui	a2,0xf4
    80006130:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006134:	00d70733          	add	a4,a4,a3
    80006138:	0037979b          	slliw	a5,a5,0x3
    8000613c:	020046b7          	lui	a3,0x2004
    80006140:	00d787b3          	add	a5,a5,a3
    80006144:	00c585b3          	add	a1,a1,a2
    80006148:	00371693          	slli	a3,a4,0x3
    8000614c:	00005717          	auipc	a4,0x5
    80006150:	7d470713          	addi	a4,a4,2004 # 8000b920 <timer_scratch>
    80006154:	00b7b023          	sd	a1,0(a5)
    80006158:	00d70733          	add	a4,a4,a3
    8000615c:	00f73c23          	sd	a5,24(a4)
    80006160:	02c73023          	sd	a2,32(a4)
    80006164:	34071073          	csrw	mscratch,a4
    80006168:	00000797          	auipc	a5,0x0
    8000616c:	64878793          	addi	a5,a5,1608 # 800067b0 <timervec>
    80006170:	30579073          	csrw	mtvec,a5
    80006174:	300027f3          	csrr	a5,mstatus
    80006178:	0087e793          	ori	a5,a5,8
    8000617c:	30079073          	csrw	mstatus,a5
    80006180:	304027f3          	csrr	a5,mie
    80006184:	0807e793          	ori	a5,a5,128
    80006188:	30479073          	csrw	mie,a5
    8000618c:	00813403          	ld	s0,8(sp)
    80006190:	01010113          	addi	sp,sp,16
    80006194:	00008067          	ret

0000000080006198 <system_main>:
    80006198:	fe010113          	addi	sp,sp,-32
    8000619c:	00813823          	sd	s0,16(sp)
    800061a0:	00913423          	sd	s1,8(sp)
    800061a4:	00113c23          	sd	ra,24(sp)
    800061a8:	02010413          	addi	s0,sp,32
    800061ac:	00000097          	auipc	ra,0x0
    800061b0:	0c4080e7          	jalr	196(ra) # 80006270 <cpuid>
    800061b4:	00005497          	auipc	s1,0x5
    800061b8:	66c48493          	addi	s1,s1,1644 # 8000b820 <started>
    800061bc:	02050263          	beqz	a0,800061e0 <system_main+0x48>
    800061c0:	0004a783          	lw	a5,0(s1)
    800061c4:	0007879b          	sext.w	a5,a5
    800061c8:	fe078ce3          	beqz	a5,800061c0 <system_main+0x28>
    800061cc:	0ff0000f          	fence
    800061d0:	00003517          	auipc	a0,0x3
    800061d4:	39850513          	addi	a0,a0,920 # 80009568 <_ZL6digits+0x58>
    800061d8:	00001097          	auipc	ra,0x1
    800061dc:	a74080e7          	jalr	-1420(ra) # 80006c4c <panic>
    800061e0:	00001097          	auipc	ra,0x1
    800061e4:	9c8080e7          	jalr	-1592(ra) # 80006ba8 <consoleinit>
    800061e8:	00001097          	auipc	ra,0x1
    800061ec:	154080e7          	jalr	340(ra) # 8000733c <printfinit>
    800061f0:	00003517          	auipc	a0,0x3
    800061f4:	f2050513          	addi	a0,a0,-224 # 80009110 <CONSOLE_STATUS+0x100>
    800061f8:	00001097          	auipc	ra,0x1
    800061fc:	ab0080e7          	jalr	-1360(ra) # 80006ca8 <__printf>
    80006200:	00003517          	auipc	a0,0x3
    80006204:	33850513          	addi	a0,a0,824 # 80009538 <_ZL6digits+0x28>
    80006208:	00001097          	auipc	ra,0x1
    8000620c:	aa0080e7          	jalr	-1376(ra) # 80006ca8 <__printf>
    80006210:	00003517          	auipc	a0,0x3
    80006214:	f0050513          	addi	a0,a0,-256 # 80009110 <CONSOLE_STATUS+0x100>
    80006218:	00001097          	auipc	ra,0x1
    8000621c:	a90080e7          	jalr	-1392(ra) # 80006ca8 <__printf>
    80006220:	00001097          	auipc	ra,0x1
    80006224:	4a8080e7          	jalr	1192(ra) # 800076c8 <kinit>
    80006228:	00000097          	auipc	ra,0x0
    8000622c:	148080e7          	jalr	328(ra) # 80006370 <trapinit>
    80006230:	00000097          	auipc	ra,0x0
    80006234:	16c080e7          	jalr	364(ra) # 8000639c <trapinithart>
    80006238:	00000097          	auipc	ra,0x0
    8000623c:	5b8080e7          	jalr	1464(ra) # 800067f0 <plicinit>
    80006240:	00000097          	auipc	ra,0x0
    80006244:	5d8080e7          	jalr	1496(ra) # 80006818 <plicinithart>
    80006248:	00000097          	auipc	ra,0x0
    8000624c:	078080e7          	jalr	120(ra) # 800062c0 <userinit>
    80006250:	0ff0000f          	fence
    80006254:	00100793          	li	a5,1
    80006258:	00003517          	auipc	a0,0x3
    8000625c:	2f850513          	addi	a0,a0,760 # 80009550 <_ZL6digits+0x40>
    80006260:	00f4a023          	sw	a5,0(s1)
    80006264:	00001097          	auipc	ra,0x1
    80006268:	a44080e7          	jalr	-1468(ra) # 80006ca8 <__printf>
    8000626c:	0000006f          	j	8000626c <system_main+0xd4>

0000000080006270 <cpuid>:
    80006270:	ff010113          	addi	sp,sp,-16
    80006274:	00813423          	sd	s0,8(sp)
    80006278:	01010413          	addi	s0,sp,16
    8000627c:	00020513          	mv	a0,tp
    80006280:	00813403          	ld	s0,8(sp)
    80006284:	0005051b          	sext.w	a0,a0
    80006288:	01010113          	addi	sp,sp,16
    8000628c:	00008067          	ret

0000000080006290 <mycpu>:
    80006290:	ff010113          	addi	sp,sp,-16
    80006294:	00813423          	sd	s0,8(sp)
    80006298:	01010413          	addi	s0,sp,16
    8000629c:	00020793          	mv	a5,tp
    800062a0:	00813403          	ld	s0,8(sp)
    800062a4:	0007879b          	sext.w	a5,a5
    800062a8:	00779793          	slli	a5,a5,0x7
    800062ac:	00006517          	auipc	a0,0x6
    800062b0:	6a450513          	addi	a0,a0,1700 # 8000c950 <cpus>
    800062b4:	00f50533          	add	a0,a0,a5
    800062b8:	01010113          	addi	sp,sp,16
    800062bc:	00008067          	ret

00000000800062c0 <userinit>:
    800062c0:	ff010113          	addi	sp,sp,-16
    800062c4:	00813423          	sd	s0,8(sp)
    800062c8:	01010413          	addi	s0,sp,16
    800062cc:	00813403          	ld	s0,8(sp)
    800062d0:	01010113          	addi	sp,sp,16
    800062d4:	ffffd317          	auipc	t1,0xffffd
    800062d8:	e2c30067          	jr	-468(t1) # 80003100 <main>

00000000800062dc <either_copyout>:
    800062dc:	ff010113          	addi	sp,sp,-16
    800062e0:	00813023          	sd	s0,0(sp)
    800062e4:	00113423          	sd	ra,8(sp)
    800062e8:	01010413          	addi	s0,sp,16
    800062ec:	02051663          	bnez	a0,80006318 <either_copyout+0x3c>
    800062f0:	00058513          	mv	a0,a1
    800062f4:	00060593          	mv	a1,a2
    800062f8:	0006861b          	sext.w	a2,a3
    800062fc:	00002097          	auipc	ra,0x2
    80006300:	c58080e7          	jalr	-936(ra) # 80007f54 <__memmove>
    80006304:	00813083          	ld	ra,8(sp)
    80006308:	00013403          	ld	s0,0(sp)
    8000630c:	00000513          	li	a0,0
    80006310:	01010113          	addi	sp,sp,16
    80006314:	00008067          	ret
    80006318:	00003517          	auipc	a0,0x3
    8000631c:	27850513          	addi	a0,a0,632 # 80009590 <_ZL6digits+0x80>
    80006320:	00001097          	auipc	ra,0x1
    80006324:	92c080e7          	jalr	-1748(ra) # 80006c4c <panic>

0000000080006328 <either_copyin>:
    80006328:	ff010113          	addi	sp,sp,-16
    8000632c:	00813023          	sd	s0,0(sp)
    80006330:	00113423          	sd	ra,8(sp)
    80006334:	01010413          	addi	s0,sp,16
    80006338:	02059463          	bnez	a1,80006360 <either_copyin+0x38>
    8000633c:	00060593          	mv	a1,a2
    80006340:	0006861b          	sext.w	a2,a3
    80006344:	00002097          	auipc	ra,0x2
    80006348:	c10080e7          	jalr	-1008(ra) # 80007f54 <__memmove>
    8000634c:	00813083          	ld	ra,8(sp)
    80006350:	00013403          	ld	s0,0(sp)
    80006354:	00000513          	li	a0,0
    80006358:	01010113          	addi	sp,sp,16
    8000635c:	00008067          	ret
    80006360:	00003517          	auipc	a0,0x3
    80006364:	25850513          	addi	a0,a0,600 # 800095b8 <_ZL6digits+0xa8>
    80006368:	00001097          	auipc	ra,0x1
    8000636c:	8e4080e7          	jalr	-1820(ra) # 80006c4c <panic>

0000000080006370 <trapinit>:
    80006370:	ff010113          	addi	sp,sp,-16
    80006374:	00813423          	sd	s0,8(sp)
    80006378:	01010413          	addi	s0,sp,16
    8000637c:	00813403          	ld	s0,8(sp)
    80006380:	00003597          	auipc	a1,0x3
    80006384:	26058593          	addi	a1,a1,608 # 800095e0 <_ZL6digits+0xd0>
    80006388:	00006517          	auipc	a0,0x6
    8000638c:	64850513          	addi	a0,a0,1608 # 8000c9d0 <tickslock>
    80006390:	01010113          	addi	sp,sp,16
    80006394:	00001317          	auipc	t1,0x1
    80006398:	5c430067          	jr	1476(t1) # 80007958 <initlock>

000000008000639c <trapinithart>:
    8000639c:	ff010113          	addi	sp,sp,-16
    800063a0:	00813423          	sd	s0,8(sp)
    800063a4:	01010413          	addi	s0,sp,16
    800063a8:	00000797          	auipc	a5,0x0
    800063ac:	2f878793          	addi	a5,a5,760 # 800066a0 <kernelvec>
    800063b0:	10579073          	csrw	stvec,a5
    800063b4:	00813403          	ld	s0,8(sp)
    800063b8:	01010113          	addi	sp,sp,16
    800063bc:	00008067          	ret

00000000800063c0 <usertrap>:
    800063c0:	ff010113          	addi	sp,sp,-16
    800063c4:	00813423          	sd	s0,8(sp)
    800063c8:	01010413          	addi	s0,sp,16
    800063cc:	00813403          	ld	s0,8(sp)
    800063d0:	01010113          	addi	sp,sp,16
    800063d4:	00008067          	ret

00000000800063d8 <usertrapret>:
    800063d8:	ff010113          	addi	sp,sp,-16
    800063dc:	00813423          	sd	s0,8(sp)
    800063e0:	01010413          	addi	s0,sp,16
    800063e4:	00813403          	ld	s0,8(sp)
    800063e8:	01010113          	addi	sp,sp,16
    800063ec:	00008067          	ret

00000000800063f0 <kerneltrap>:
    800063f0:	fe010113          	addi	sp,sp,-32
    800063f4:	00813823          	sd	s0,16(sp)
    800063f8:	00113c23          	sd	ra,24(sp)
    800063fc:	00913423          	sd	s1,8(sp)
    80006400:	02010413          	addi	s0,sp,32
    80006404:	142025f3          	csrr	a1,scause
    80006408:	100027f3          	csrr	a5,sstatus
    8000640c:	0027f793          	andi	a5,a5,2
    80006410:	10079c63          	bnez	a5,80006528 <kerneltrap+0x138>
    80006414:	142027f3          	csrr	a5,scause
    80006418:	0207ce63          	bltz	a5,80006454 <kerneltrap+0x64>
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	20c50513          	addi	a0,a0,524 # 80009628 <_ZL6digits+0x118>
    80006424:	00001097          	auipc	ra,0x1
    80006428:	884080e7          	jalr	-1916(ra) # 80006ca8 <__printf>
    8000642c:	141025f3          	csrr	a1,sepc
    80006430:	14302673          	csrr	a2,stval
    80006434:	00003517          	auipc	a0,0x3
    80006438:	20450513          	addi	a0,a0,516 # 80009638 <_ZL6digits+0x128>
    8000643c:	00001097          	auipc	ra,0x1
    80006440:	86c080e7          	jalr	-1940(ra) # 80006ca8 <__printf>
    80006444:	00003517          	auipc	a0,0x3
    80006448:	20c50513          	addi	a0,a0,524 # 80009650 <_ZL6digits+0x140>
    8000644c:	00001097          	auipc	ra,0x1
    80006450:	800080e7          	jalr	-2048(ra) # 80006c4c <panic>
    80006454:	0ff7f713          	andi	a4,a5,255
    80006458:	00900693          	li	a3,9
    8000645c:	04d70063          	beq	a4,a3,8000649c <kerneltrap+0xac>
    80006460:	fff00713          	li	a4,-1
    80006464:	03f71713          	slli	a4,a4,0x3f
    80006468:	00170713          	addi	a4,a4,1
    8000646c:	fae798e3          	bne	a5,a4,8000641c <kerneltrap+0x2c>
    80006470:	00000097          	auipc	ra,0x0
    80006474:	e00080e7          	jalr	-512(ra) # 80006270 <cpuid>
    80006478:	06050663          	beqz	a0,800064e4 <kerneltrap+0xf4>
    8000647c:	144027f3          	csrr	a5,sip
    80006480:	ffd7f793          	andi	a5,a5,-3
    80006484:	14479073          	csrw	sip,a5
    80006488:	01813083          	ld	ra,24(sp)
    8000648c:	01013403          	ld	s0,16(sp)
    80006490:	00813483          	ld	s1,8(sp)
    80006494:	02010113          	addi	sp,sp,32
    80006498:	00008067          	ret
    8000649c:	00000097          	auipc	ra,0x0
    800064a0:	3c8080e7          	jalr	968(ra) # 80006864 <plic_claim>
    800064a4:	00a00793          	li	a5,10
    800064a8:	00050493          	mv	s1,a0
    800064ac:	06f50863          	beq	a0,a5,8000651c <kerneltrap+0x12c>
    800064b0:	fc050ce3          	beqz	a0,80006488 <kerneltrap+0x98>
    800064b4:	00050593          	mv	a1,a0
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	15050513          	addi	a0,a0,336 # 80009608 <_ZL6digits+0xf8>
    800064c0:	00000097          	auipc	ra,0x0
    800064c4:	7e8080e7          	jalr	2024(ra) # 80006ca8 <__printf>
    800064c8:	01013403          	ld	s0,16(sp)
    800064cc:	01813083          	ld	ra,24(sp)
    800064d0:	00048513          	mv	a0,s1
    800064d4:	00813483          	ld	s1,8(sp)
    800064d8:	02010113          	addi	sp,sp,32
    800064dc:	00000317          	auipc	t1,0x0
    800064e0:	3c030067          	jr	960(t1) # 8000689c <plic_complete>
    800064e4:	00006517          	auipc	a0,0x6
    800064e8:	4ec50513          	addi	a0,a0,1260 # 8000c9d0 <tickslock>
    800064ec:	00001097          	auipc	ra,0x1
    800064f0:	490080e7          	jalr	1168(ra) # 8000797c <acquire>
    800064f4:	00005717          	auipc	a4,0x5
    800064f8:	33070713          	addi	a4,a4,816 # 8000b824 <ticks>
    800064fc:	00072783          	lw	a5,0(a4)
    80006500:	00006517          	auipc	a0,0x6
    80006504:	4d050513          	addi	a0,a0,1232 # 8000c9d0 <tickslock>
    80006508:	0017879b          	addiw	a5,a5,1
    8000650c:	00f72023          	sw	a5,0(a4)
    80006510:	00001097          	auipc	ra,0x1
    80006514:	538080e7          	jalr	1336(ra) # 80007a48 <release>
    80006518:	f65ff06f          	j	8000647c <kerneltrap+0x8c>
    8000651c:	00001097          	auipc	ra,0x1
    80006520:	094080e7          	jalr	148(ra) # 800075b0 <uartintr>
    80006524:	fa5ff06f          	j	800064c8 <kerneltrap+0xd8>
    80006528:	00003517          	auipc	a0,0x3
    8000652c:	0c050513          	addi	a0,a0,192 # 800095e8 <_ZL6digits+0xd8>
    80006530:	00000097          	auipc	ra,0x0
    80006534:	71c080e7          	jalr	1820(ra) # 80006c4c <panic>

0000000080006538 <clockintr>:
    80006538:	fe010113          	addi	sp,sp,-32
    8000653c:	00813823          	sd	s0,16(sp)
    80006540:	00913423          	sd	s1,8(sp)
    80006544:	00113c23          	sd	ra,24(sp)
    80006548:	02010413          	addi	s0,sp,32
    8000654c:	00006497          	auipc	s1,0x6
    80006550:	48448493          	addi	s1,s1,1156 # 8000c9d0 <tickslock>
    80006554:	00048513          	mv	a0,s1
    80006558:	00001097          	auipc	ra,0x1
    8000655c:	424080e7          	jalr	1060(ra) # 8000797c <acquire>
    80006560:	00005717          	auipc	a4,0x5
    80006564:	2c470713          	addi	a4,a4,708 # 8000b824 <ticks>
    80006568:	00072783          	lw	a5,0(a4)
    8000656c:	01013403          	ld	s0,16(sp)
    80006570:	01813083          	ld	ra,24(sp)
    80006574:	00048513          	mv	a0,s1
    80006578:	0017879b          	addiw	a5,a5,1
    8000657c:	00813483          	ld	s1,8(sp)
    80006580:	00f72023          	sw	a5,0(a4)
    80006584:	02010113          	addi	sp,sp,32
    80006588:	00001317          	auipc	t1,0x1
    8000658c:	4c030067          	jr	1216(t1) # 80007a48 <release>

0000000080006590 <devintr>:
    80006590:	142027f3          	csrr	a5,scause
    80006594:	00000513          	li	a0,0
    80006598:	0007c463          	bltz	a5,800065a0 <devintr+0x10>
    8000659c:	00008067          	ret
    800065a0:	fe010113          	addi	sp,sp,-32
    800065a4:	00813823          	sd	s0,16(sp)
    800065a8:	00113c23          	sd	ra,24(sp)
    800065ac:	00913423          	sd	s1,8(sp)
    800065b0:	02010413          	addi	s0,sp,32
    800065b4:	0ff7f713          	andi	a4,a5,255
    800065b8:	00900693          	li	a3,9
    800065bc:	04d70c63          	beq	a4,a3,80006614 <devintr+0x84>
    800065c0:	fff00713          	li	a4,-1
    800065c4:	03f71713          	slli	a4,a4,0x3f
    800065c8:	00170713          	addi	a4,a4,1
    800065cc:	00e78c63          	beq	a5,a4,800065e4 <devintr+0x54>
    800065d0:	01813083          	ld	ra,24(sp)
    800065d4:	01013403          	ld	s0,16(sp)
    800065d8:	00813483          	ld	s1,8(sp)
    800065dc:	02010113          	addi	sp,sp,32
    800065e0:	00008067          	ret
    800065e4:	00000097          	auipc	ra,0x0
    800065e8:	c8c080e7          	jalr	-884(ra) # 80006270 <cpuid>
    800065ec:	06050663          	beqz	a0,80006658 <devintr+0xc8>
    800065f0:	144027f3          	csrr	a5,sip
    800065f4:	ffd7f793          	andi	a5,a5,-3
    800065f8:	14479073          	csrw	sip,a5
    800065fc:	01813083          	ld	ra,24(sp)
    80006600:	01013403          	ld	s0,16(sp)
    80006604:	00813483          	ld	s1,8(sp)
    80006608:	00200513          	li	a0,2
    8000660c:	02010113          	addi	sp,sp,32
    80006610:	00008067          	ret
    80006614:	00000097          	auipc	ra,0x0
    80006618:	250080e7          	jalr	592(ra) # 80006864 <plic_claim>
    8000661c:	00a00793          	li	a5,10
    80006620:	00050493          	mv	s1,a0
    80006624:	06f50663          	beq	a0,a5,80006690 <devintr+0x100>
    80006628:	00100513          	li	a0,1
    8000662c:	fa0482e3          	beqz	s1,800065d0 <devintr+0x40>
    80006630:	00048593          	mv	a1,s1
    80006634:	00003517          	auipc	a0,0x3
    80006638:	fd450513          	addi	a0,a0,-44 # 80009608 <_ZL6digits+0xf8>
    8000663c:	00000097          	auipc	ra,0x0
    80006640:	66c080e7          	jalr	1644(ra) # 80006ca8 <__printf>
    80006644:	00048513          	mv	a0,s1
    80006648:	00000097          	auipc	ra,0x0
    8000664c:	254080e7          	jalr	596(ra) # 8000689c <plic_complete>
    80006650:	00100513          	li	a0,1
    80006654:	f7dff06f          	j	800065d0 <devintr+0x40>
    80006658:	00006517          	auipc	a0,0x6
    8000665c:	37850513          	addi	a0,a0,888 # 8000c9d0 <tickslock>
    80006660:	00001097          	auipc	ra,0x1
    80006664:	31c080e7          	jalr	796(ra) # 8000797c <acquire>
    80006668:	00005717          	auipc	a4,0x5
    8000666c:	1bc70713          	addi	a4,a4,444 # 8000b824 <ticks>
    80006670:	00072783          	lw	a5,0(a4)
    80006674:	00006517          	auipc	a0,0x6
    80006678:	35c50513          	addi	a0,a0,860 # 8000c9d0 <tickslock>
    8000667c:	0017879b          	addiw	a5,a5,1
    80006680:	00f72023          	sw	a5,0(a4)
    80006684:	00001097          	auipc	ra,0x1
    80006688:	3c4080e7          	jalr	964(ra) # 80007a48 <release>
    8000668c:	f65ff06f          	j	800065f0 <devintr+0x60>
    80006690:	00001097          	auipc	ra,0x1
    80006694:	f20080e7          	jalr	-224(ra) # 800075b0 <uartintr>
    80006698:	fadff06f          	j	80006644 <devintr+0xb4>
    8000669c:	0000                	unimp
	...

00000000800066a0 <kernelvec>:
    800066a0:	f0010113          	addi	sp,sp,-256
    800066a4:	00113023          	sd	ra,0(sp)
    800066a8:	00213423          	sd	sp,8(sp)
    800066ac:	00313823          	sd	gp,16(sp)
    800066b0:	00413c23          	sd	tp,24(sp)
    800066b4:	02513023          	sd	t0,32(sp)
    800066b8:	02613423          	sd	t1,40(sp)
    800066bc:	02713823          	sd	t2,48(sp)
    800066c0:	02813c23          	sd	s0,56(sp)
    800066c4:	04913023          	sd	s1,64(sp)
    800066c8:	04a13423          	sd	a0,72(sp)
    800066cc:	04b13823          	sd	a1,80(sp)
    800066d0:	04c13c23          	sd	a2,88(sp)
    800066d4:	06d13023          	sd	a3,96(sp)
    800066d8:	06e13423          	sd	a4,104(sp)
    800066dc:	06f13823          	sd	a5,112(sp)
    800066e0:	07013c23          	sd	a6,120(sp)
    800066e4:	09113023          	sd	a7,128(sp)
    800066e8:	09213423          	sd	s2,136(sp)
    800066ec:	09313823          	sd	s3,144(sp)
    800066f0:	09413c23          	sd	s4,152(sp)
    800066f4:	0b513023          	sd	s5,160(sp)
    800066f8:	0b613423          	sd	s6,168(sp)
    800066fc:	0b713823          	sd	s7,176(sp)
    80006700:	0b813c23          	sd	s8,184(sp)
    80006704:	0d913023          	sd	s9,192(sp)
    80006708:	0da13423          	sd	s10,200(sp)
    8000670c:	0db13823          	sd	s11,208(sp)
    80006710:	0dc13c23          	sd	t3,216(sp)
    80006714:	0fd13023          	sd	t4,224(sp)
    80006718:	0fe13423          	sd	t5,232(sp)
    8000671c:	0ff13823          	sd	t6,240(sp)
    80006720:	cd1ff0ef          	jal	ra,800063f0 <kerneltrap>
    80006724:	00013083          	ld	ra,0(sp)
    80006728:	00813103          	ld	sp,8(sp)
    8000672c:	01013183          	ld	gp,16(sp)
    80006730:	02013283          	ld	t0,32(sp)
    80006734:	02813303          	ld	t1,40(sp)
    80006738:	03013383          	ld	t2,48(sp)
    8000673c:	03813403          	ld	s0,56(sp)
    80006740:	04013483          	ld	s1,64(sp)
    80006744:	04813503          	ld	a0,72(sp)
    80006748:	05013583          	ld	a1,80(sp)
    8000674c:	05813603          	ld	a2,88(sp)
    80006750:	06013683          	ld	a3,96(sp)
    80006754:	06813703          	ld	a4,104(sp)
    80006758:	07013783          	ld	a5,112(sp)
    8000675c:	07813803          	ld	a6,120(sp)
    80006760:	08013883          	ld	a7,128(sp)
    80006764:	08813903          	ld	s2,136(sp)
    80006768:	09013983          	ld	s3,144(sp)
    8000676c:	09813a03          	ld	s4,152(sp)
    80006770:	0a013a83          	ld	s5,160(sp)
    80006774:	0a813b03          	ld	s6,168(sp)
    80006778:	0b013b83          	ld	s7,176(sp)
    8000677c:	0b813c03          	ld	s8,184(sp)
    80006780:	0c013c83          	ld	s9,192(sp)
    80006784:	0c813d03          	ld	s10,200(sp)
    80006788:	0d013d83          	ld	s11,208(sp)
    8000678c:	0d813e03          	ld	t3,216(sp)
    80006790:	0e013e83          	ld	t4,224(sp)
    80006794:	0e813f03          	ld	t5,232(sp)
    80006798:	0f013f83          	ld	t6,240(sp)
    8000679c:	10010113          	addi	sp,sp,256
    800067a0:	10200073          	sret
    800067a4:	00000013          	nop
    800067a8:	00000013          	nop
    800067ac:	00000013          	nop

00000000800067b0 <timervec>:
    800067b0:	34051573          	csrrw	a0,mscratch,a0
    800067b4:	00b53023          	sd	a1,0(a0)
    800067b8:	00c53423          	sd	a2,8(a0)
    800067bc:	00d53823          	sd	a3,16(a0)
    800067c0:	01853583          	ld	a1,24(a0)
    800067c4:	02053603          	ld	a2,32(a0)
    800067c8:	0005b683          	ld	a3,0(a1)
    800067cc:	00c686b3          	add	a3,a3,a2
    800067d0:	00d5b023          	sd	a3,0(a1)
    800067d4:	00200593          	li	a1,2
    800067d8:	14459073          	csrw	sip,a1
    800067dc:	01053683          	ld	a3,16(a0)
    800067e0:	00853603          	ld	a2,8(a0)
    800067e4:	00053583          	ld	a1,0(a0)
    800067e8:	34051573          	csrrw	a0,mscratch,a0
    800067ec:	30200073          	mret

00000000800067f0 <plicinit>:
    800067f0:	ff010113          	addi	sp,sp,-16
    800067f4:	00813423          	sd	s0,8(sp)
    800067f8:	01010413          	addi	s0,sp,16
    800067fc:	00813403          	ld	s0,8(sp)
    80006800:	0c0007b7          	lui	a5,0xc000
    80006804:	00100713          	li	a4,1
    80006808:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000680c:	00e7a223          	sw	a4,4(a5)
    80006810:	01010113          	addi	sp,sp,16
    80006814:	00008067          	ret

0000000080006818 <plicinithart>:
    80006818:	ff010113          	addi	sp,sp,-16
    8000681c:	00813023          	sd	s0,0(sp)
    80006820:	00113423          	sd	ra,8(sp)
    80006824:	01010413          	addi	s0,sp,16
    80006828:	00000097          	auipc	ra,0x0
    8000682c:	a48080e7          	jalr	-1464(ra) # 80006270 <cpuid>
    80006830:	0085171b          	slliw	a4,a0,0x8
    80006834:	0c0027b7          	lui	a5,0xc002
    80006838:	00e787b3          	add	a5,a5,a4
    8000683c:	40200713          	li	a4,1026
    80006840:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006844:	00813083          	ld	ra,8(sp)
    80006848:	00013403          	ld	s0,0(sp)
    8000684c:	00d5151b          	slliw	a0,a0,0xd
    80006850:	0c2017b7          	lui	a5,0xc201
    80006854:	00a78533          	add	a0,a5,a0
    80006858:	00052023          	sw	zero,0(a0)
    8000685c:	01010113          	addi	sp,sp,16
    80006860:	00008067          	ret

0000000080006864 <plic_claim>:
    80006864:	ff010113          	addi	sp,sp,-16
    80006868:	00813023          	sd	s0,0(sp)
    8000686c:	00113423          	sd	ra,8(sp)
    80006870:	01010413          	addi	s0,sp,16
    80006874:	00000097          	auipc	ra,0x0
    80006878:	9fc080e7          	jalr	-1540(ra) # 80006270 <cpuid>
    8000687c:	00813083          	ld	ra,8(sp)
    80006880:	00013403          	ld	s0,0(sp)
    80006884:	00d5151b          	slliw	a0,a0,0xd
    80006888:	0c2017b7          	lui	a5,0xc201
    8000688c:	00a78533          	add	a0,a5,a0
    80006890:	00452503          	lw	a0,4(a0)
    80006894:	01010113          	addi	sp,sp,16
    80006898:	00008067          	ret

000000008000689c <plic_complete>:
    8000689c:	fe010113          	addi	sp,sp,-32
    800068a0:	00813823          	sd	s0,16(sp)
    800068a4:	00913423          	sd	s1,8(sp)
    800068a8:	00113c23          	sd	ra,24(sp)
    800068ac:	02010413          	addi	s0,sp,32
    800068b0:	00050493          	mv	s1,a0
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	9bc080e7          	jalr	-1604(ra) # 80006270 <cpuid>
    800068bc:	01813083          	ld	ra,24(sp)
    800068c0:	01013403          	ld	s0,16(sp)
    800068c4:	00d5179b          	slliw	a5,a0,0xd
    800068c8:	0c201737          	lui	a4,0xc201
    800068cc:	00f707b3          	add	a5,a4,a5
    800068d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800068d4:	00813483          	ld	s1,8(sp)
    800068d8:	02010113          	addi	sp,sp,32
    800068dc:	00008067          	ret

00000000800068e0 <consolewrite>:
    800068e0:	fb010113          	addi	sp,sp,-80
    800068e4:	04813023          	sd	s0,64(sp)
    800068e8:	04113423          	sd	ra,72(sp)
    800068ec:	02913c23          	sd	s1,56(sp)
    800068f0:	03213823          	sd	s2,48(sp)
    800068f4:	03313423          	sd	s3,40(sp)
    800068f8:	03413023          	sd	s4,32(sp)
    800068fc:	01513c23          	sd	s5,24(sp)
    80006900:	05010413          	addi	s0,sp,80
    80006904:	06c05c63          	blez	a2,8000697c <consolewrite+0x9c>
    80006908:	00060993          	mv	s3,a2
    8000690c:	00050a13          	mv	s4,a0
    80006910:	00058493          	mv	s1,a1
    80006914:	00000913          	li	s2,0
    80006918:	fff00a93          	li	s5,-1
    8000691c:	01c0006f          	j	80006938 <consolewrite+0x58>
    80006920:	fbf44503          	lbu	a0,-65(s0)
    80006924:	0019091b          	addiw	s2,s2,1
    80006928:	00148493          	addi	s1,s1,1
    8000692c:	00001097          	auipc	ra,0x1
    80006930:	a9c080e7          	jalr	-1380(ra) # 800073c8 <uartputc>
    80006934:	03298063          	beq	s3,s2,80006954 <consolewrite+0x74>
    80006938:	00048613          	mv	a2,s1
    8000693c:	00100693          	li	a3,1
    80006940:	000a0593          	mv	a1,s4
    80006944:	fbf40513          	addi	a0,s0,-65
    80006948:	00000097          	auipc	ra,0x0
    8000694c:	9e0080e7          	jalr	-1568(ra) # 80006328 <either_copyin>
    80006950:	fd5518e3          	bne	a0,s5,80006920 <consolewrite+0x40>
    80006954:	04813083          	ld	ra,72(sp)
    80006958:	04013403          	ld	s0,64(sp)
    8000695c:	03813483          	ld	s1,56(sp)
    80006960:	02813983          	ld	s3,40(sp)
    80006964:	02013a03          	ld	s4,32(sp)
    80006968:	01813a83          	ld	s5,24(sp)
    8000696c:	00090513          	mv	a0,s2
    80006970:	03013903          	ld	s2,48(sp)
    80006974:	05010113          	addi	sp,sp,80
    80006978:	00008067          	ret
    8000697c:	00000913          	li	s2,0
    80006980:	fd5ff06f          	j	80006954 <consolewrite+0x74>

0000000080006984 <consoleread>:
    80006984:	f9010113          	addi	sp,sp,-112
    80006988:	06813023          	sd	s0,96(sp)
    8000698c:	04913c23          	sd	s1,88(sp)
    80006990:	05213823          	sd	s2,80(sp)
    80006994:	05313423          	sd	s3,72(sp)
    80006998:	05413023          	sd	s4,64(sp)
    8000699c:	03513c23          	sd	s5,56(sp)
    800069a0:	03613823          	sd	s6,48(sp)
    800069a4:	03713423          	sd	s7,40(sp)
    800069a8:	03813023          	sd	s8,32(sp)
    800069ac:	06113423          	sd	ra,104(sp)
    800069b0:	01913c23          	sd	s9,24(sp)
    800069b4:	07010413          	addi	s0,sp,112
    800069b8:	00060b93          	mv	s7,a2
    800069bc:	00050913          	mv	s2,a0
    800069c0:	00058c13          	mv	s8,a1
    800069c4:	00060b1b          	sext.w	s6,a2
    800069c8:	00006497          	auipc	s1,0x6
    800069cc:	03048493          	addi	s1,s1,48 # 8000c9f8 <cons>
    800069d0:	00400993          	li	s3,4
    800069d4:	fff00a13          	li	s4,-1
    800069d8:	00a00a93          	li	s5,10
    800069dc:	05705e63          	blez	s7,80006a38 <consoleread+0xb4>
    800069e0:	09c4a703          	lw	a4,156(s1)
    800069e4:	0984a783          	lw	a5,152(s1)
    800069e8:	0007071b          	sext.w	a4,a4
    800069ec:	08e78463          	beq	a5,a4,80006a74 <consoleread+0xf0>
    800069f0:	07f7f713          	andi	a4,a5,127
    800069f4:	00e48733          	add	a4,s1,a4
    800069f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800069fc:	0017869b          	addiw	a3,a5,1
    80006a00:	08d4ac23          	sw	a3,152(s1)
    80006a04:	00070c9b          	sext.w	s9,a4
    80006a08:	0b370663          	beq	a4,s3,80006ab4 <consoleread+0x130>
    80006a0c:	00100693          	li	a3,1
    80006a10:	f9f40613          	addi	a2,s0,-97
    80006a14:	000c0593          	mv	a1,s8
    80006a18:	00090513          	mv	a0,s2
    80006a1c:	f8e40fa3          	sb	a4,-97(s0)
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	8bc080e7          	jalr	-1860(ra) # 800062dc <either_copyout>
    80006a28:	01450863          	beq	a0,s4,80006a38 <consoleread+0xb4>
    80006a2c:	001c0c13          	addi	s8,s8,1
    80006a30:	fffb8b9b          	addiw	s7,s7,-1
    80006a34:	fb5c94e3          	bne	s9,s5,800069dc <consoleread+0x58>
    80006a38:	000b851b          	sext.w	a0,s7
    80006a3c:	06813083          	ld	ra,104(sp)
    80006a40:	06013403          	ld	s0,96(sp)
    80006a44:	05813483          	ld	s1,88(sp)
    80006a48:	05013903          	ld	s2,80(sp)
    80006a4c:	04813983          	ld	s3,72(sp)
    80006a50:	04013a03          	ld	s4,64(sp)
    80006a54:	03813a83          	ld	s5,56(sp)
    80006a58:	02813b83          	ld	s7,40(sp)
    80006a5c:	02013c03          	ld	s8,32(sp)
    80006a60:	01813c83          	ld	s9,24(sp)
    80006a64:	40ab053b          	subw	a0,s6,a0
    80006a68:	03013b03          	ld	s6,48(sp)
    80006a6c:	07010113          	addi	sp,sp,112
    80006a70:	00008067          	ret
    80006a74:	00001097          	auipc	ra,0x1
    80006a78:	1d8080e7          	jalr	472(ra) # 80007c4c <push_on>
    80006a7c:	0984a703          	lw	a4,152(s1)
    80006a80:	09c4a783          	lw	a5,156(s1)
    80006a84:	0007879b          	sext.w	a5,a5
    80006a88:	fef70ce3          	beq	a4,a5,80006a80 <consoleread+0xfc>
    80006a8c:	00001097          	auipc	ra,0x1
    80006a90:	234080e7          	jalr	564(ra) # 80007cc0 <pop_on>
    80006a94:	0984a783          	lw	a5,152(s1)
    80006a98:	07f7f713          	andi	a4,a5,127
    80006a9c:	00e48733          	add	a4,s1,a4
    80006aa0:	01874703          	lbu	a4,24(a4)
    80006aa4:	0017869b          	addiw	a3,a5,1
    80006aa8:	08d4ac23          	sw	a3,152(s1)
    80006aac:	00070c9b          	sext.w	s9,a4
    80006ab0:	f5371ee3          	bne	a4,s3,80006a0c <consoleread+0x88>
    80006ab4:	000b851b          	sext.w	a0,s7
    80006ab8:	f96bf2e3          	bgeu	s7,s6,80006a3c <consoleread+0xb8>
    80006abc:	08f4ac23          	sw	a5,152(s1)
    80006ac0:	f7dff06f          	j	80006a3c <consoleread+0xb8>

0000000080006ac4 <consputc>:
    80006ac4:	10000793          	li	a5,256
    80006ac8:	00f50663          	beq	a0,a5,80006ad4 <consputc+0x10>
    80006acc:	00001317          	auipc	t1,0x1
    80006ad0:	9f430067          	jr	-1548(t1) # 800074c0 <uartputc_sync>
    80006ad4:	ff010113          	addi	sp,sp,-16
    80006ad8:	00113423          	sd	ra,8(sp)
    80006adc:	00813023          	sd	s0,0(sp)
    80006ae0:	01010413          	addi	s0,sp,16
    80006ae4:	00800513          	li	a0,8
    80006ae8:	00001097          	auipc	ra,0x1
    80006aec:	9d8080e7          	jalr	-1576(ra) # 800074c0 <uartputc_sync>
    80006af0:	02000513          	li	a0,32
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	9cc080e7          	jalr	-1588(ra) # 800074c0 <uartputc_sync>
    80006afc:	00013403          	ld	s0,0(sp)
    80006b00:	00813083          	ld	ra,8(sp)
    80006b04:	00800513          	li	a0,8
    80006b08:	01010113          	addi	sp,sp,16
    80006b0c:	00001317          	auipc	t1,0x1
    80006b10:	9b430067          	jr	-1612(t1) # 800074c0 <uartputc_sync>

0000000080006b14 <consoleintr>:
    80006b14:	fe010113          	addi	sp,sp,-32
    80006b18:	00813823          	sd	s0,16(sp)
    80006b1c:	00913423          	sd	s1,8(sp)
    80006b20:	01213023          	sd	s2,0(sp)
    80006b24:	00113c23          	sd	ra,24(sp)
    80006b28:	02010413          	addi	s0,sp,32
    80006b2c:	00006917          	auipc	s2,0x6
    80006b30:	ecc90913          	addi	s2,s2,-308 # 8000c9f8 <cons>
    80006b34:	00050493          	mv	s1,a0
    80006b38:	00090513          	mv	a0,s2
    80006b3c:	00001097          	auipc	ra,0x1
    80006b40:	e40080e7          	jalr	-448(ra) # 8000797c <acquire>
    80006b44:	02048c63          	beqz	s1,80006b7c <consoleintr+0x68>
    80006b48:	0a092783          	lw	a5,160(s2)
    80006b4c:	09892703          	lw	a4,152(s2)
    80006b50:	07f00693          	li	a3,127
    80006b54:	40e7873b          	subw	a4,a5,a4
    80006b58:	02e6e263          	bltu	a3,a4,80006b7c <consoleintr+0x68>
    80006b5c:	00d00713          	li	a4,13
    80006b60:	04e48063          	beq	s1,a4,80006ba0 <consoleintr+0x8c>
    80006b64:	07f7f713          	andi	a4,a5,127
    80006b68:	00e90733          	add	a4,s2,a4
    80006b6c:	0017879b          	addiw	a5,a5,1
    80006b70:	0af92023          	sw	a5,160(s2)
    80006b74:	00970c23          	sb	s1,24(a4)
    80006b78:	08f92e23          	sw	a5,156(s2)
    80006b7c:	01013403          	ld	s0,16(sp)
    80006b80:	01813083          	ld	ra,24(sp)
    80006b84:	00813483          	ld	s1,8(sp)
    80006b88:	00013903          	ld	s2,0(sp)
    80006b8c:	00006517          	auipc	a0,0x6
    80006b90:	e6c50513          	addi	a0,a0,-404 # 8000c9f8 <cons>
    80006b94:	02010113          	addi	sp,sp,32
    80006b98:	00001317          	auipc	t1,0x1
    80006b9c:	eb030067          	jr	-336(t1) # 80007a48 <release>
    80006ba0:	00a00493          	li	s1,10
    80006ba4:	fc1ff06f          	j	80006b64 <consoleintr+0x50>

0000000080006ba8 <consoleinit>:
    80006ba8:	fe010113          	addi	sp,sp,-32
    80006bac:	00113c23          	sd	ra,24(sp)
    80006bb0:	00813823          	sd	s0,16(sp)
    80006bb4:	00913423          	sd	s1,8(sp)
    80006bb8:	02010413          	addi	s0,sp,32
    80006bbc:	00006497          	auipc	s1,0x6
    80006bc0:	e3c48493          	addi	s1,s1,-452 # 8000c9f8 <cons>
    80006bc4:	00048513          	mv	a0,s1
    80006bc8:	00003597          	auipc	a1,0x3
    80006bcc:	a9858593          	addi	a1,a1,-1384 # 80009660 <_ZL6digits+0x150>
    80006bd0:	00001097          	auipc	ra,0x1
    80006bd4:	d88080e7          	jalr	-632(ra) # 80007958 <initlock>
    80006bd8:	00000097          	auipc	ra,0x0
    80006bdc:	7ac080e7          	jalr	1964(ra) # 80007384 <uartinit>
    80006be0:	01813083          	ld	ra,24(sp)
    80006be4:	01013403          	ld	s0,16(sp)
    80006be8:	00000797          	auipc	a5,0x0
    80006bec:	d9c78793          	addi	a5,a5,-612 # 80006984 <consoleread>
    80006bf0:	0af4bc23          	sd	a5,184(s1)
    80006bf4:	00000797          	auipc	a5,0x0
    80006bf8:	cec78793          	addi	a5,a5,-788 # 800068e0 <consolewrite>
    80006bfc:	0cf4b023          	sd	a5,192(s1)
    80006c00:	00813483          	ld	s1,8(sp)
    80006c04:	02010113          	addi	sp,sp,32
    80006c08:	00008067          	ret

0000000080006c0c <console_read>:
    80006c0c:	ff010113          	addi	sp,sp,-16
    80006c10:	00813423          	sd	s0,8(sp)
    80006c14:	01010413          	addi	s0,sp,16
    80006c18:	00813403          	ld	s0,8(sp)
    80006c1c:	00006317          	auipc	t1,0x6
    80006c20:	e9433303          	ld	t1,-364(t1) # 8000cab0 <devsw+0x10>
    80006c24:	01010113          	addi	sp,sp,16
    80006c28:	00030067          	jr	t1

0000000080006c2c <console_write>:
    80006c2c:	ff010113          	addi	sp,sp,-16
    80006c30:	00813423          	sd	s0,8(sp)
    80006c34:	01010413          	addi	s0,sp,16
    80006c38:	00813403          	ld	s0,8(sp)
    80006c3c:	00006317          	auipc	t1,0x6
    80006c40:	e7c33303          	ld	t1,-388(t1) # 8000cab8 <devsw+0x18>
    80006c44:	01010113          	addi	sp,sp,16
    80006c48:	00030067          	jr	t1

0000000080006c4c <panic>:
    80006c4c:	fe010113          	addi	sp,sp,-32
    80006c50:	00113c23          	sd	ra,24(sp)
    80006c54:	00813823          	sd	s0,16(sp)
    80006c58:	00913423          	sd	s1,8(sp)
    80006c5c:	02010413          	addi	s0,sp,32
    80006c60:	00050493          	mv	s1,a0
    80006c64:	00003517          	auipc	a0,0x3
    80006c68:	a0450513          	addi	a0,a0,-1532 # 80009668 <_ZL6digits+0x158>
    80006c6c:	00006797          	auipc	a5,0x6
    80006c70:	ee07a623          	sw	zero,-276(a5) # 8000cb58 <pr+0x18>
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	034080e7          	jalr	52(ra) # 80006ca8 <__printf>
    80006c7c:	00048513          	mv	a0,s1
    80006c80:	00000097          	auipc	ra,0x0
    80006c84:	028080e7          	jalr	40(ra) # 80006ca8 <__printf>
    80006c88:	00002517          	auipc	a0,0x2
    80006c8c:	48850513          	addi	a0,a0,1160 # 80009110 <CONSOLE_STATUS+0x100>
    80006c90:	00000097          	auipc	ra,0x0
    80006c94:	018080e7          	jalr	24(ra) # 80006ca8 <__printf>
    80006c98:	00100793          	li	a5,1
    80006c9c:	00005717          	auipc	a4,0x5
    80006ca0:	b8f72623          	sw	a5,-1140(a4) # 8000b828 <panicked>
    80006ca4:	0000006f          	j	80006ca4 <panic+0x58>

0000000080006ca8 <__printf>:
    80006ca8:	f3010113          	addi	sp,sp,-208
    80006cac:	08813023          	sd	s0,128(sp)
    80006cb0:	07313423          	sd	s3,104(sp)
    80006cb4:	09010413          	addi	s0,sp,144
    80006cb8:	05813023          	sd	s8,64(sp)
    80006cbc:	08113423          	sd	ra,136(sp)
    80006cc0:	06913c23          	sd	s1,120(sp)
    80006cc4:	07213823          	sd	s2,112(sp)
    80006cc8:	07413023          	sd	s4,96(sp)
    80006ccc:	05513c23          	sd	s5,88(sp)
    80006cd0:	05613823          	sd	s6,80(sp)
    80006cd4:	05713423          	sd	s7,72(sp)
    80006cd8:	03913c23          	sd	s9,56(sp)
    80006cdc:	03a13823          	sd	s10,48(sp)
    80006ce0:	03b13423          	sd	s11,40(sp)
    80006ce4:	00006317          	auipc	t1,0x6
    80006ce8:	e5c30313          	addi	t1,t1,-420 # 8000cb40 <pr>
    80006cec:	01832c03          	lw	s8,24(t1)
    80006cf0:	00b43423          	sd	a1,8(s0)
    80006cf4:	00c43823          	sd	a2,16(s0)
    80006cf8:	00d43c23          	sd	a3,24(s0)
    80006cfc:	02e43023          	sd	a4,32(s0)
    80006d00:	02f43423          	sd	a5,40(s0)
    80006d04:	03043823          	sd	a6,48(s0)
    80006d08:	03143c23          	sd	a7,56(s0)
    80006d0c:	00050993          	mv	s3,a0
    80006d10:	4a0c1663          	bnez	s8,800071bc <__printf+0x514>
    80006d14:	60098c63          	beqz	s3,8000732c <__printf+0x684>
    80006d18:	0009c503          	lbu	a0,0(s3)
    80006d1c:	00840793          	addi	a5,s0,8
    80006d20:	f6f43c23          	sd	a5,-136(s0)
    80006d24:	00000493          	li	s1,0
    80006d28:	22050063          	beqz	a0,80006f48 <__printf+0x2a0>
    80006d2c:	00002a37          	lui	s4,0x2
    80006d30:	00018ab7          	lui	s5,0x18
    80006d34:	000f4b37          	lui	s6,0xf4
    80006d38:	00989bb7          	lui	s7,0x989
    80006d3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006d40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006d44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006d48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006d4c:	00148c9b          	addiw	s9,s1,1
    80006d50:	02500793          	li	a5,37
    80006d54:	01998933          	add	s2,s3,s9
    80006d58:	38f51263          	bne	a0,a5,800070dc <__printf+0x434>
    80006d5c:	00094783          	lbu	a5,0(s2)
    80006d60:	00078c9b          	sext.w	s9,a5
    80006d64:	1e078263          	beqz	a5,80006f48 <__printf+0x2a0>
    80006d68:	0024849b          	addiw	s1,s1,2
    80006d6c:	07000713          	li	a4,112
    80006d70:	00998933          	add	s2,s3,s1
    80006d74:	38e78a63          	beq	a5,a4,80007108 <__printf+0x460>
    80006d78:	20f76863          	bltu	a4,a5,80006f88 <__printf+0x2e0>
    80006d7c:	42a78863          	beq	a5,a0,800071ac <__printf+0x504>
    80006d80:	06400713          	li	a4,100
    80006d84:	40e79663          	bne	a5,a4,80007190 <__printf+0x4e8>
    80006d88:	f7843783          	ld	a5,-136(s0)
    80006d8c:	0007a603          	lw	a2,0(a5)
    80006d90:	00878793          	addi	a5,a5,8
    80006d94:	f6f43c23          	sd	a5,-136(s0)
    80006d98:	42064a63          	bltz	a2,800071cc <__printf+0x524>
    80006d9c:	00a00713          	li	a4,10
    80006da0:	02e677bb          	remuw	a5,a2,a4
    80006da4:	00003d97          	auipc	s11,0x3
    80006da8:	8ecd8d93          	addi	s11,s11,-1812 # 80009690 <digits>
    80006dac:	00900593          	li	a1,9
    80006db0:	0006051b          	sext.w	a0,a2
    80006db4:	00000c93          	li	s9,0
    80006db8:	02079793          	slli	a5,a5,0x20
    80006dbc:	0207d793          	srli	a5,a5,0x20
    80006dc0:	00fd87b3          	add	a5,s11,a5
    80006dc4:	0007c783          	lbu	a5,0(a5)
    80006dc8:	02e656bb          	divuw	a3,a2,a4
    80006dcc:	f8f40023          	sb	a5,-128(s0)
    80006dd0:	14c5d863          	bge	a1,a2,80006f20 <__printf+0x278>
    80006dd4:	06300593          	li	a1,99
    80006dd8:	00100c93          	li	s9,1
    80006ddc:	02e6f7bb          	remuw	a5,a3,a4
    80006de0:	02079793          	slli	a5,a5,0x20
    80006de4:	0207d793          	srli	a5,a5,0x20
    80006de8:	00fd87b3          	add	a5,s11,a5
    80006dec:	0007c783          	lbu	a5,0(a5)
    80006df0:	02e6d73b          	divuw	a4,a3,a4
    80006df4:	f8f400a3          	sb	a5,-127(s0)
    80006df8:	12a5f463          	bgeu	a1,a0,80006f20 <__printf+0x278>
    80006dfc:	00a00693          	li	a3,10
    80006e00:	00900593          	li	a1,9
    80006e04:	02d777bb          	remuw	a5,a4,a3
    80006e08:	02079793          	slli	a5,a5,0x20
    80006e0c:	0207d793          	srli	a5,a5,0x20
    80006e10:	00fd87b3          	add	a5,s11,a5
    80006e14:	0007c503          	lbu	a0,0(a5)
    80006e18:	02d757bb          	divuw	a5,a4,a3
    80006e1c:	f8a40123          	sb	a0,-126(s0)
    80006e20:	48e5f263          	bgeu	a1,a4,800072a4 <__printf+0x5fc>
    80006e24:	06300513          	li	a0,99
    80006e28:	02d7f5bb          	remuw	a1,a5,a3
    80006e2c:	02059593          	slli	a1,a1,0x20
    80006e30:	0205d593          	srli	a1,a1,0x20
    80006e34:	00bd85b3          	add	a1,s11,a1
    80006e38:	0005c583          	lbu	a1,0(a1)
    80006e3c:	02d7d7bb          	divuw	a5,a5,a3
    80006e40:	f8b401a3          	sb	a1,-125(s0)
    80006e44:	48e57263          	bgeu	a0,a4,800072c8 <__printf+0x620>
    80006e48:	3e700513          	li	a0,999
    80006e4c:	02d7f5bb          	remuw	a1,a5,a3
    80006e50:	02059593          	slli	a1,a1,0x20
    80006e54:	0205d593          	srli	a1,a1,0x20
    80006e58:	00bd85b3          	add	a1,s11,a1
    80006e5c:	0005c583          	lbu	a1,0(a1)
    80006e60:	02d7d7bb          	divuw	a5,a5,a3
    80006e64:	f8b40223          	sb	a1,-124(s0)
    80006e68:	46e57663          	bgeu	a0,a4,800072d4 <__printf+0x62c>
    80006e6c:	02d7f5bb          	remuw	a1,a5,a3
    80006e70:	02059593          	slli	a1,a1,0x20
    80006e74:	0205d593          	srli	a1,a1,0x20
    80006e78:	00bd85b3          	add	a1,s11,a1
    80006e7c:	0005c583          	lbu	a1,0(a1)
    80006e80:	02d7d7bb          	divuw	a5,a5,a3
    80006e84:	f8b402a3          	sb	a1,-123(s0)
    80006e88:	46ea7863          	bgeu	s4,a4,800072f8 <__printf+0x650>
    80006e8c:	02d7f5bb          	remuw	a1,a5,a3
    80006e90:	02059593          	slli	a1,a1,0x20
    80006e94:	0205d593          	srli	a1,a1,0x20
    80006e98:	00bd85b3          	add	a1,s11,a1
    80006e9c:	0005c583          	lbu	a1,0(a1)
    80006ea0:	02d7d7bb          	divuw	a5,a5,a3
    80006ea4:	f8b40323          	sb	a1,-122(s0)
    80006ea8:	3eeaf863          	bgeu	s5,a4,80007298 <__printf+0x5f0>
    80006eac:	02d7f5bb          	remuw	a1,a5,a3
    80006eb0:	02059593          	slli	a1,a1,0x20
    80006eb4:	0205d593          	srli	a1,a1,0x20
    80006eb8:	00bd85b3          	add	a1,s11,a1
    80006ebc:	0005c583          	lbu	a1,0(a1)
    80006ec0:	02d7d7bb          	divuw	a5,a5,a3
    80006ec4:	f8b403a3          	sb	a1,-121(s0)
    80006ec8:	42eb7e63          	bgeu	s6,a4,80007304 <__printf+0x65c>
    80006ecc:	02d7f5bb          	remuw	a1,a5,a3
    80006ed0:	02059593          	slli	a1,a1,0x20
    80006ed4:	0205d593          	srli	a1,a1,0x20
    80006ed8:	00bd85b3          	add	a1,s11,a1
    80006edc:	0005c583          	lbu	a1,0(a1)
    80006ee0:	02d7d7bb          	divuw	a5,a5,a3
    80006ee4:	f8b40423          	sb	a1,-120(s0)
    80006ee8:	42ebfc63          	bgeu	s7,a4,80007320 <__printf+0x678>
    80006eec:	02079793          	slli	a5,a5,0x20
    80006ef0:	0207d793          	srli	a5,a5,0x20
    80006ef4:	00fd8db3          	add	s11,s11,a5
    80006ef8:	000dc703          	lbu	a4,0(s11)
    80006efc:	00a00793          	li	a5,10
    80006f00:	00900c93          	li	s9,9
    80006f04:	f8e404a3          	sb	a4,-119(s0)
    80006f08:	00065c63          	bgez	a2,80006f20 <__printf+0x278>
    80006f0c:	f9040713          	addi	a4,s0,-112
    80006f10:	00f70733          	add	a4,a4,a5
    80006f14:	02d00693          	li	a3,45
    80006f18:	fed70823          	sb	a3,-16(a4)
    80006f1c:	00078c93          	mv	s9,a5
    80006f20:	f8040793          	addi	a5,s0,-128
    80006f24:	01978cb3          	add	s9,a5,s9
    80006f28:	f7f40d13          	addi	s10,s0,-129
    80006f2c:	000cc503          	lbu	a0,0(s9)
    80006f30:	fffc8c93          	addi	s9,s9,-1
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	b90080e7          	jalr	-1136(ra) # 80006ac4 <consputc>
    80006f3c:	ffac98e3          	bne	s9,s10,80006f2c <__printf+0x284>
    80006f40:	00094503          	lbu	a0,0(s2)
    80006f44:	e00514e3          	bnez	a0,80006d4c <__printf+0xa4>
    80006f48:	1a0c1663          	bnez	s8,800070f4 <__printf+0x44c>
    80006f4c:	08813083          	ld	ra,136(sp)
    80006f50:	08013403          	ld	s0,128(sp)
    80006f54:	07813483          	ld	s1,120(sp)
    80006f58:	07013903          	ld	s2,112(sp)
    80006f5c:	06813983          	ld	s3,104(sp)
    80006f60:	06013a03          	ld	s4,96(sp)
    80006f64:	05813a83          	ld	s5,88(sp)
    80006f68:	05013b03          	ld	s6,80(sp)
    80006f6c:	04813b83          	ld	s7,72(sp)
    80006f70:	04013c03          	ld	s8,64(sp)
    80006f74:	03813c83          	ld	s9,56(sp)
    80006f78:	03013d03          	ld	s10,48(sp)
    80006f7c:	02813d83          	ld	s11,40(sp)
    80006f80:	0d010113          	addi	sp,sp,208
    80006f84:	00008067          	ret
    80006f88:	07300713          	li	a4,115
    80006f8c:	1ce78a63          	beq	a5,a4,80007160 <__printf+0x4b8>
    80006f90:	07800713          	li	a4,120
    80006f94:	1ee79e63          	bne	a5,a4,80007190 <__printf+0x4e8>
    80006f98:	f7843783          	ld	a5,-136(s0)
    80006f9c:	0007a703          	lw	a4,0(a5)
    80006fa0:	00878793          	addi	a5,a5,8
    80006fa4:	f6f43c23          	sd	a5,-136(s0)
    80006fa8:	28074263          	bltz	a4,8000722c <__printf+0x584>
    80006fac:	00002d97          	auipc	s11,0x2
    80006fb0:	6e4d8d93          	addi	s11,s11,1764 # 80009690 <digits>
    80006fb4:	00f77793          	andi	a5,a4,15
    80006fb8:	00fd87b3          	add	a5,s11,a5
    80006fbc:	0007c683          	lbu	a3,0(a5)
    80006fc0:	00f00613          	li	a2,15
    80006fc4:	0007079b          	sext.w	a5,a4
    80006fc8:	f8d40023          	sb	a3,-128(s0)
    80006fcc:	0047559b          	srliw	a1,a4,0x4
    80006fd0:	0047569b          	srliw	a3,a4,0x4
    80006fd4:	00000c93          	li	s9,0
    80006fd8:	0ee65063          	bge	a2,a4,800070b8 <__printf+0x410>
    80006fdc:	00f6f693          	andi	a3,a3,15
    80006fe0:	00dd86b3          	add	a3,s11,a3
    80006fe4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006fe8:	0087d79b          	srliw	a5,a5,0x8
    80006fec:	00100c93          	li	s9,1
    80006ff0:	f8d400a3          	sb	a3,-127(s0)
    80006ff4:	0cb67263          	bgeu	a2,a1,800070b8 <__printf+0x410>
    80006ff8:	00f7f693          	andi	a3,a5,15
    80006ffc:	00dd86b3          	add	a3,s11,a3
    80007000:	0006c583          	lbu	a1,0(a3)
    80007004:	00f00613          	li	a2,15
    80007008:	0047d69b          	srliw	a3,a5,0x4
    8000700c:	f8b40123          	sb	a1,-126(s0)
    80007010:	0047d593          	srli	a1,a5,0x4
    80007014:	28f67e63          	bgeu	a2,a5,800072b0 <__printf+0x608>
    80007018:	00f6f693          	andi	a3,a3,15
    8000701c:	00dd86b3          	add	a3,s11,a3
    80007020:	0006c503          	lbu	a0,0(a3)
    80007024:	0087d813          	srli	a6,a5,0x8
    80007028:	0087d69b          	srliw	a3,a5,0x8
    8000702c:	f8a401a3          	sb	a0,-125(s0)
    80007030:	28b67663          	bgeu	a2,a1,800072bc <__printf+0x614>
    80007034:	00f6f693          	andi	a3,a3,15
    80007038:	00dd86b3          	add	a3,s11,a3
    8000703c:	0006c583          	lbu	a1,0(a3)
    80007040:	00c7d513          	srli	a0,a5,0xc
    80007044:	00c7d69b          	srliw	a3,a5,0xc
    80007048:	f8b40223          	sb	a1,-124(s0)
    8000704c:	29067a63          	bgeu	a2,a6,800072e0 <__printf+0x638>
    80007050:	00f6f693          	andi	a3,a3,15
    80007054:	00dd86b3          	add	a3,s11,a3
    80007058:	0006c583          	lbu	a1,0(a3)
    8000705c:	0107d813          	srli	a6,a5,0x10
    80007060:	0107d69b          	srliw	a3,a5,0x10
    80007064:	f8b402a3          	sb	a1,-123(s0)
    80007068:	28a67263          	bgeu	a2,a0,800072ec <__printf+0x644>
    8000706c:	00f6f693          	andi	a3,a3,15
    80007070:	00dd86b3          	add	a3,s11,a3
    80007074:	0006c683          	lbu	a3,0(a3)
    80007078:	0147d79b          	srliw	a5,a5,0x14
    8000707c:	f8d40323          	sb	a3,-122(s0)
    80007080:	21067663          	bgeu	a2,a6,8000728c <__printf+0x5e4>
    80007084:	02079793          	slli	a5,a5,0x20
    80007088:	0207d793          	srli	a5,a5,0x20
    8000708c:	00fd8db3          	add	s11,s11,a5
    80007090:	000dc683          	lbu	a3,0(s11)
    80007094:	00800793          	li	a5,8
    80007098:	00700c93          	li	s9,7
    8000709c:	f8d403a3          	sb	a3,-121(s0)
    800070a0:	00075c63          	bgez	a4,800070b8 <__printf+0x410>
    800070a4:	f9040713          	addi	a4,s0,-112
    800070a8:	00f70733          	add	a4,a4,a5
    800070ac:	02d00693          	li	a3,45
    800070b0:	fed70823          	sb	a3,-16(a4)
    800070b4:	00078c93          	mv	s9,a5
    800070b8:	f8040793          	addi	a5,s0,-128
    800070bc:	01978cb3          	add	s9,a5,s9
    800070c0:	f7f40d13          	addi	s10,s0,-129
    800070c4:	000cc503          	lbu	a0,0(s9)
    800070c8:	fffc8c93          	addi	s9,s9,-1
    800070cc:	00000097          	auipc	ra,0x0
    800070d0:	9f8080e7          	jalr	-1544(ra) # 80006ac4 <consputc>
    800070d4:	ff9d18e3          	bne	s10,s9,800070c4 <__printf+0x41c>
    800070d8:	0100006f          	j	800070e8 <__printf+0x440>
    800070dc:	00000097          	auipc	ra,0x0
    800070e0:	9e8080e7          	jalr	-1560(ra) # 80006ac4 <consputc>
    800070e4:	000c8493          	mv	s1,s9
    800070e8:	00094503          	lbu	a0,0(s2)
    800070ec:	c60510e3          	bnez	a0,80006d4c <__printf+0xa4>
    800070f0:	e40c0ee3          	beqz	s8,80006f4c <__printf+0x2a4>
    800070f4:	00006517          	auipc	a0,0x6
    800070f8:	a4c50513          	addi	a0,a0,-1460 # 8000cb40 <pr>
    800070fc:	00001097          	auipc	ra,0x1
    80007100:	94c080e7          	jalr	-1716(ra) # 80007a48 <release>
    80007104:	e49ff06f          	j	80006f4c <__printf+0x2a4>
    80007108:	f7843783          	ld	a5,-136(s0)
    8000710c:	03000513          	li	a0,48
    80007110:	01000d13          	li	s10,16
    80007114:	00878713          	addi	a4,a5,8
    80007118:	0007bc83          	ld	s9,0(a5)
    8000711c:	f6e43c23          	sd	a4,-136(s0)
    80007120:	00000097          	auipc	ra,0x0
    80007124:	9a4080e7          	jalr	-1628(ra) # 80006ac4 <consputc>
    80007128:	07800513          	li	a0,120
    8000712c:	00000097          	auipc	ra,0x0
    80007130:	998080e7          	jalr	-1640(ra) # 80006ac4 <consputc>
    80007134:	00002d97          	auipc	s11,0x2
    80007138:	55cd8d93          	addi	s11,s11,1372 # 80009690 <digits>
    8000713c:	03ccd793          	srli	a5,s9,0x3c
    80007140:	00fd87b3          	add	a5,s11,a5
    80007144:	0007c503          	lbu	a0,0(a5)
    80007148:	fffd0d1b          	addiw	s10,s10,-1
    8000714c:	004c9c93          	slli	s9,s9,0x4
    80007150:	00000097          	auipc	ra,0x0
    80007154:	974080e7          	jalr	-1676(ra) # 80006ac4 <consputc>
    80007158:	fe0d12e3          	bnez	s10,8000713c <__printf+0x494>
    8000715c:	f8dff06f          	j	800070e8 <__printf+0x440>
    80007160:	f7843783          	ld	a5,-136(s0)
    80007164:	0007bc83          	ld	s9,0(a5)
    80007168:	00878793          	addi	a5,a5,8
    8000716c:	f6f43c23          	sd	a5,-136(s0)
    80007170:	000c9a63          	bnez	s9,80007184 <__printf+0x4dc>
    80007174:	1080006f          	j	8000727c <__printf+0x5d4>
    80007178:	001c8c93          	addi	s9,s9,1
    8000717c:	00000097          	auipc	ra,0x0
    80007180:	948080e7          	jalr	-1720(ra) # 80006ac4 <consputc>
    80007184:	000cc503          	lbu	a0,0(s9)
    80007188:	fe0518e3          	bnez	a0,80007178 <__printf+0x4d0>
    8000718c:	f5dff06f          	j	800070e8 <__printf+0x440>
    80007190:	02500513          	li	a0,37
    80007194:	00000097          	auipc	ra,0x0
    80007198:	930080e7          	jalr	-1744(ra) # 80006ac4 <consputc>
    8000719c:	000c8513          	mv	a0,s9
    800071a0:	00000097          	auipc	ra,0x0
    800071a4:	924080e7          	jalr	-1756(ra) # 80006ac4 <consputc>
    800071a8:	f41ff06f          	j	800070e8 <__printf+0x440>
    800071ac:	02500513          	li	a0,37
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	914080e7          	jalr	-1772(ra) # 80006ac4 <consputc>
    800071b8:	f31ff06f          	j	800070e8 <__printf+0x440>
    800071bc:	00030513          	mv	a0,t1
    800071c0:	00000097          	auipc	ra,0x0
    800071c4:	7bc080e7          	jalr	1980(ra) # 8000797c <acquire>
    800071c8:	b4dff06f          	j	80006d14 <__printf+0x6c>
    800071cc:	40c0053b          	negw	a0,a2
    800071d0:	00a00713          	li	a4,10
    800071d4:	02e576bb          	remuw	a3,a0,a4
    800071d8:	00002d97          	auipc	s11,0x2
    800071dc:	4b8d8d93          	addi	s11,s11,1208 # 80009690 <digits>
    800071e0:	ff700593          	li	a1,-9
    800071e4:	02069693          	slli	a3,a3,0x20
    800071e8:	0206d693          	srli	a3,a3,0x20
    800071ec:	00dd86b3          	add	a3,s11,a3
    800071f0:	0006c683          	lbu	a3,0(a3)
    800071f4:	02e557bb          	divuw	a5,a0,a4
    800071f8:	f8d40023          	sb	a3,-128(s0)
    800071fc:	10b65e63          	bge	a2,a1,80007318 <__printf+0x670>
    80007200:	06300593          	li	a1,99
    80007204:	02e7f6bb          	remuw	a3,a5,a4
    80007208:	02069693          	slli	a3,a3,0x20
    8000720c:	0206d693          	srli	a3,a3,0x20
    80007210:	00dd86b3          	add	a3,s11,a3
    80007214:	0006c683          	lbu	a3,0(a3)
    80007218:	02e7d73b          	divuw	a4,a5,a4
    8000721c:	00200793          	li	a5,2
    80007220:	f8d400a3          	sb	a3,-127(s0)
    80007224:	bca5ece3          	bltu	a1,a0,80006dfc <__printf+0x154>
    80007228:	ce5ff06f          	j	80006f0c <__printf+0x264>
    8000722c:	40e007bb          	negw	a5,a4
    80007230:	00002d97          	auipc	s11,0x2
    80007234:	460d8d93          	addi	s11,s11,1120 # 80009690 <digits>
    80007238:	00f7f693          	andi	a3,a5,15
    8000723c:	00dd86b3          	add	a3,s11,a3
    80007240:	0006c583          	lbu	a1,0(a3)
    80007244:	ff100613          	li	a2,-15
    80007248:	0047d69b          	srliw	a3,a5,0x4
    8000724c:	f8b40023          	sb	a1,-128(s0)
    80007250:	0047d59b          	srliw	a1,a5,0x4
    80007254:	0ac75e63          	bge	a4,a2,80007310 <__printf+0x668>
    80007258:	00f6f693          	andi	a3,a3,15
    8000725c:	00dd86b3          	add	a3,s11,a3
    80007260:	0006c603          	lbu	a2,0(a3)
    80007264:	00f00693          	li	a3,15
    80007268:	0087d79b          	srliw	a5,a5,0x8
    8000726c:	f8c400a3          	sb	a2,-127(s0)
    80007270:	d8b6e4e3          	bltu	a3,a1,80006ff8 <__printf+0x350>
    80007274:	00200793          	li	a5,2
    80007278:	e2dff06f          	j	800070a4 <__printf+0x3fc>
    8000727c:	00002c97          	auipc	s9,0x2
    80007280:	3f4c8c93          	addi	s9,s9,1012 # 80009670 <_ZL6digits+0x160>
    80007284:	02800513          	li	a0,40
    80007288:	ef1ff06f          	j	80007178 <__printf+0x4d0>
    8000728c:	00700793          	li	a5,7
    80007290:	00600c93          	li	s9,6
    80007294:	e0dff06f          	j	800070a0 <__printf+0x3f8>
    80007298:	00700793          	li	a5,7
    8000729c:	00600c93          	li	s9,6
    800072a0:	c69ff06f          	j	80006f08 <__printf+0x260>
    800072a4:	00300793          	li	a5,3
    800072a8:	00200c93          	li	s9,2
    800072ac:	c5dff06f          	j	80006f08 <__printf+0x260>
    800072b0:	00300793          	li	a5,3
    800072b4:	00200c93          	li	s9,2
    800072b8:	de9ff06f          	j	800070a0 <__printf+0x3f8>
    800072bc:	00400793          	li	a5,4
    800072c0:	00300c93          	li	s9,3
    800072c4:	dddff06f          	j	800070a0 <__printf+0x3f8>
    800072c8:	00400793          	li	a5,4
    800072cc:	00300c93          	li	s9,3
    800072d0:	c39ff06f          	j	80006f08 <__printf+0x260>
    800072d4:	00500793          	li	a5,5
    800072d8:	00400c93          	li	s9,4
    800072dc:	c2dff06f          	j	80006f08 <__printf+0x260>
    800072e0:	00500793          	li	a5,5
    800072e4:	00400c93          	li	s9,4
    800072e8:	db9ff06f          	j	800070a0 <__printf+0x3f8>
    800072ec:	00600793          	li	a5,6
    800072f0:	00500c93          	li	s9,5
    800072f4:	dadff06f          	j	800070a0 <__printf+0x3f8>
    800072f8:	00600793          	li	a5,6
    800072fc:	00500c93          	li	s9,5
    80007300:	c09ff06f          	j	80006f08 <__printf+0x260>
    80007304:	00800793          	li	a5,8
    80007308:	00700c93          	li	s9,7
    8000730c:	bfdff06f          	j	80006f08 <__printf+0x260>
    80007310:	00100793          	li	a5,1
    80007314:	d91ff06f          	j	800070a4 <__printf+0x3fc>
    80007318:	00100793          	li	a5,1
    8000731c:	bf1ff06f          	j	80006f0c <__printf+0x264>
    80007320:	00900793          	li	a5,9
    80007324:	00800c93          	li	s9,8
    80007328:	be1ff06f          	j	80006f08 <__printf+0x260>
    8000732c:	00002517          	auipc	a0,0x2
    80007330:	34c50513          	addi	a0,a0,844 # 80009678 <_ZL6digits+0x168>
    80007334:	00000097          	auipc	ra,0x0
    80007338:	918080e7          	jalr	-1768(ra) # 80006c4c <panic>

000000008000733c <printfinit>:
    8000733c:	fe010113          	addi	sp,sp,-32
    80007340:	00813823          	sd	s0,16(sp)
    80007344:	00913423          	sd	s1,8(sp)
    80007348:	00113c23          	sd	ra,24(sp)
    8000734c:	02010413          	addi	s0,sp,32
    80007350:	00005497          	auipc	s1,0x5
    80007354:	7f048493          	addi	s1,s1,2032 # 8000cb40 <pr>
    80007358:	00048513          	mv	a0,s1
    8000735c:	00002597          	auipc	a1,0x2
    80007360:	32c58593          	addi	a1,a1,812 # 80009688 <_ZL6digits+0x178>
    80007364:	00000097          	auipc	ra,0x0
    80007368:	5f4080e7          	jalr	1524(ra) # 80007958 <initlock>
    8000736c:	01813083          	ld	ra,24(sp)
    80007370:	01013403          	ld	s0,16(sp)
    80007374:	0004ac23          	sw	zero,24(s1)
    80007378:	00813483          	ld	s1,8(sp)
    8000737c:	02010113          	addi	sp,sp,32
    80007380:	00008067          	ret

0000000080007384 <uartinit>:
    80007384:	ff010113          	addi	sp,sp,-16
    80007388:	00813423          	sd	s0,8(sp)
    8000738c:	01010413          	addi	s0,sp,16
    80007390:	100007b7          	lui	a5,0x10000
    80007394:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007398:	f8000713          	li	a4,-128
    8000739c:	00e781a3          	sb	a4,3(a5)
    800073a0:	00300713          	li	a4,3
    800073a4:	00e78023          	sb	a4,0(a5)
    800073a8:	000780a3          	sb	zero,1(a5)
    800073ac:	00e781a3          	sb	a4,3(a5)
    800073b0:	00700693          	li	a3,7
    800073b4:	00d78123          	sb	a3,2(a5)
    800073b8:	00e780a3          	sb	a4,1(a5)
    800073bc:	00813403          	ld	s0,8(sp)
    800073c0:	01010113          	addi	sp,sp,16
    800073c4:	00008067          	ret

00000000800073c8 <uartputc>:
    800073c8:	00004797          	auipc	a5,0x4
    800073cc:	4607a783          	lw	a5,1120(a5) # 8000b828 <panicked>
    800073d0:	00078463          	beqz	a5,800073d8 <uartputc+0x10>
    800073d4:	0000006f          	j	800073d4 <uartputc+0xc>
    800073d8:	fd010113          	addi	sp,sp,-48
    800073dc:	02813023          	sd	s0,32(sp)
    800073e0:	00913c23          	sd	s1,24(sp)
    800073e4:	01213823          	sd	s2,16(sp)
    800073e8:	01313423          	sd	s3,8(sp)
    800073ec:	02113423          	sd	ra,40(sp)
    800073f0:	03010413          	addi	s0,sp,48
    800073f4:	00004917          	auipc	s2,0x4
    800073f8:	43c90913          	addi	s2,s2,1084 # 8000b830 <uart_tx_r>
    800073fc:	00093783          	ld	a5,0(s2)
    80007400:	00004497          	auipc	s1,0x4
    80007404:	43848493          	addi	s1,s1,1080 # 8000b838 <uart_tx_w>
    80007408:	0004b703          	ld	a4,0(s1)
    8000740c:	02078693          	addi	a3,a5,32
    80007410:	00050993          	mv	s3,a0
    80007414:	02e69c63          	bne	a3,a4,8000744c <uartputc+0x84>
    80007418:	00001097          	auipc	ra,0x1
    8000741c:	834080e7          	jalr	-1996(ra) # 80007c4c <push_on>
    80007420:	00093783          	ld	a5,0(s2)
    80007424:	0004b703          	ld	a4,0(s1)
    80007428:	02078793          	addi	a5,a5,32
    8000742c:	00e79463          	bne	a5,a4,80007434 <uartputc+0x6c>
    80007430:	0000006f          	j	80007430 <uartputc+0x68>
    80007434:	00001097          	auipc	ra,0x1
    80007438:	88c080e7          	jalr	-1908(ra) # 80007cc0 <pop_on>
    8000743c:	00093783          	ld	a5,0(s2)
    80007440:	0004b703          	ld	a4,0(s1)
    80007444:	02078693          	addi	a3,a5,32
    80007448:	fce688e3          	beq	a3,a4,80007418 <uartputc+0x50>
    8000744c:	01f77693          	andi	a3,a4,31
    80007450:	00005597          	auipc	a1,0x5
    80007454:	71058593          	addi	a1,a1,1808 # 8000cb60 <uart_tx_buf>
    80007458:	00d586b3          	add	a3,a1,a3
    8000745c:	00170713          	addi	a4,a4,1
    80007460:	01368023          	sb	s3,0(a3)
    80007464:	00e4b023          	sd	a4,0(s1)
    80007468:	10000637          	lui	a2,0x10000
    8000746c:	02f71063          	bne	a4,a5,8000748c <uartputc+0xc4>
    80007470:	0340006f          	j	800074a4 <uartputc+0xdc>
    80007474:	00074703          	lbu	a4,0(a4)
    80007478:	00f93023          	sd	a5,0(s2)
    8000747c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007480:	00093783          	ld	a5,0(s2)
    80007484:	0004b703          	ld	a4,0(s1)
    80007488:	00f70e63          	beq	a4,a5,800074a4 <uartputc+0xdc>
    8000748c:	00564683          	lbu	a3,5(a2)
    80007490:	01f7f713          	andi	a4,a5,31
    80007494:	00e58733          	add	a4,a1,a4
    80007498:	0206f693          	andi	a3,a3,32
    8000749c:	00178793          	addi	a5,a5,1
    800074a0:	fc069ae3          	bnez	a3,80007474 <uartputc+0xac>
    800074a4:	02813083          	ld	ra,40(sp)
    800074a8:	02013403          	ld	s0,32(sp)
    800074ac:	01813483          	ld	s1,24(sp)
    800074b0:	01013903          	ld	s2,16(sp)
    800074b4:	00813983          	ld	s3,8(sp)
    800074b8:	03010113          	addi	sp,sp,48
    800074bc:	00008067          	ret

00000000800074c0 <uartputc_sync>:
    800074c0:	ff010113          	addi	sp,sp,-16
    800074c4:	00813423          	sd	s0,8(sp)
    800074c8:	01010413          	addi	s0,sp,16
    800074cc:	00004717          	auipc	a4,0x4
    800074d0:	35c72703          	lw	a4,860(a4) # 8000b828 <panicked>
    800074d4:	02071663          	bnez	a4,80007500 <uartputc_sync+0x40>
    800074d8:	00050793          	mv	a5,a0
    800074dc:	100006b7          	lui	a3,0x10000
    800074e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800074e4:	02077713          	andi	a4,a4,32
    800074e8:	fe070ce3          	beqz	a4,800074e0 <uartputc_sync+0x20>
    800074ec:	0ff7f793          	andi	a5,a5,255
    800074f0:	00f68023          	sb	a5,0(a3)
    800074f4:	00813403          	ld	s0,8(sp)
    800074f8:	01010113          	addi	sp,sp,16
    800074fc:	00008067          	ret
    80007500:	0000006f          	j	80007500 <uartputc_sync+0x40>

0000000080007504 <uartstart>:
    80007504:	ff010113          	addi	sp,sp,-16
    80007508:	00813423          	sd	s0,8(sp)
    8000750c:	01010413          	addi	s0,sp,16
    80007510:	00004617          	auipc	a2,0x4
    80007514:	32060613          	addi	a2,a2,800 # 8000b830 <uart_tx_r>
    80007518:	00004517          	auipc	a0,0x4
    8000751c:	32050513          	addi	a0,a0,800 # 8000b838 <uart_tx_w>
    80007520:	00063783          	ld	a5,0(a2)
    80007524:	00053703          	ld	a4,0(a0)
    80007528:	04f70263          	beq	a4,a5,8000756c <uartstart+0x68>
    8000752c:	100005b7          	lui	a1,0x10000
    80007530:	00005817          	auipc	a6,0x5
    80007534:	63080813          	addi	a6,a6,1584 # 8000cb60 <uart_tx_buf>
    80007538:	01c0006f          	j	80007554 <uartstart+0x50>
    8000753c:	0006c703          	lbu	a4,0(a3)
    80007540:	00f63023          	sd	a5,0(a2)
    80007544:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007548:	00063783          	ld	a5,0(a2)
    8000754c:	00053703          	ld	a4,0(a0)
    80007550:	00f70e63          	beq	a4,a5,8000756c <uartstart+0x68>
    80007554:	01f7f713          	andi	a4,a5,31
    80007558:	00e806b3          	add	a3,a6,a4
    8000755c:	0055c703          	lbu	a4,5(a1)
    80007560:	00178793          	addi	a5,a5,1
    80007564:	02077713          	andi	a4,a4,32
    80007568:	fc071ae3          	bnez	a4,8000753c <uartstart+0x38>
    8000756c:	00813403          	ld	s0,8(sp)
    80007570:	01010113          	addi	sp,sp,16
    80007574:	00008067          	ret

0000000080007578 <uartgetc>:
    80007578:	ff010113          	addi	sp,sp,-16
    8000757c:	00813423          	sd	s0,8(sp)
    80007580:	01010413          	addi	s0,sp,16
    80007584:	10000737          	lui	a4,0x10000
    80007588:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000758c:	0017f793          	andi	a5,a5,1
    80007590:	00078c63          	beqz	a5,800075a8 <uartgetc+0x30>
    80007594:	00074503          	lbu	a0,0(a4)
    80007598:	0ff57513          	andi	a0,a0,255
    8000759c:	00813403          	ld	s0,8(sp)
    800075a0:	01010113          	addi	sp,sp,16
    800075a4:	00008067          	ret
    800075a8:	fff00513          	li	a0,-1
    800075ac:	ff1ff06f          	j	8000759c <uartgetc+0x24>

00000000800075b0 <uartintr>:
    800075b0:	100007b7          	lui	a5,0x10000
    800075b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800075b8:	0017f793          	andi	a5,a5,1
    800075bc:	0a078463          	beqz	a5,80007664 <uartintr+0xb4>
    800075c0:	fe010113          	addi	sp,sp,-32
    800075c4:	00813823          	sd	s0,16(sp)
    800075c8:	00913423          	sd	s1,8(sp)
    800075cc:	00113c23          	sd	ra,24(sp)
    800075d0:	02010413          	addi	s0,sp,32
    800075d4:	100004b7          	lui	s1,0x10000
    800075d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800075dc:	0ff57513          	andi	a0,a0,255
    800075e0:	fffff097          	auipc	ra,0xfffff
    800075e4:	534080e7          	jalr	1332(ra) # 80006b14 <consoleintr>
    800075e8:	0054c783          	lbu	a5,5(s1)
    800075ec:	0017f793          	andi	a5,a5,1
    800075f0:	fe0794e3          	bnez	a5,800075d8 <uartintr+0x28>
    800075f4:	00004617          	auipc	a2,0x4
    800075f8:	23c60613          	addi	a2,a2,572 # 8000b830 <uart_tx_r>
    800075fc:	00004517          	auipc	a0,0x4
    80007600:	23c50513          	addi	a0,a0,572 # 8000b838 <uart_tx_w>
    80007604:	00063783          	ld	a5,0(a2)
    80007608:	00053703          	ld	a4,0(a0)
    8000760c:	04f70263          	beq	a4,a5,80007650 <uartintr+0xa0>
    80007610:	100005b7          	lui	a1,0x10000
    80007614:	00005817          	auipc	a6,0x5
    80007618:	54c80813          	addi	a6,a6,1356 # 8000cb60 <uart_tx_buf>
    8000761c:	01c0006f          	j	80007638 <uartintr+0x88>
    80007620:	0006c703          	lbu	a4,0(a3)
    80007624:	00f63023          	sd	a5,0(a2)
    80007628:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000762c:	00063783          	ld	a5,0(a2)
    80007630:	00053703          	ld	a4,0(a0)
    80007634:	00f70e63          	beq	a4,a5,80007650 <uartintr+0xa0>
    80007638:	01f7f713          	andi	a4,a5,31
    8000763c:	00e806b3          	add	a3,a6,a4
    80007640:	0055c703          	lbu	a4,5(a1)
    80007644:	00178793          	addi	a5,a5,1
    80007648:	02077713          	andi	a4,a4,32
    8000764c:	fc071ae3          	bnez	a4,80007620 <uartintr+0x70>
    80007650:	01813083          	ld	ra,24(sp)
    80007654:	01013403          	ld	s0,16(sp)
    80007658:	00813483          	ld	s1,8(sp)
    8000765c:	02010113          	addi	sp,sp,32
    80007660:	00008067          	ret
    80007664:	00004617          	auipc	a2,0x4
    80007668:	1cc60613          	addi	a2,a2,460 # 8000b830 <uart_tx_r>
    8000766c:	00004517          	auipc	a0,0x4
    80007670:	1cc50513          	addi	a0,a0,460 # 8000b838 <uart_tx_w>
    80007674:	00063783          	ld	a5,0(a2)
    80007678:	00053703          	ld	a4,0(a0)
    8000767c:	04f70263          	beq	a4,a5,800076c0 <uartintr+0x110>
    80007680:	100005b7          	lui	a1,0x10000
    80007684:	00005817          	auipc	a6,0x5
    80007688:	4dc80813          	addi	a6,a6,1244 # 8000cb60 <uart_tx_buf>
    8000768c:	01c0006f          	j	800076a8 <uartintr+0xf8>
    80007690:	0006c703          	lbu	a4,0(a3)
    80007694:	00f63023          	sd	a5,0(a2)
    80007698:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000769c:	00063783          	ld	a5,0(a2)
    800076a0:	00053703          	ld	a4,0(a0)
    800076a4:	02f70063          	beq	a4,a5,800076c4 <uartintr+0x114>
    800076a8:	01f7f713          	andi	a4,a5,31
    800076ac:	00e806b3          	add	a3,a6,a4
    800076b0:	0055c703          	lbu	a4,5(a1)
    800076b4:	00178793          	addi	a5,a5,1
    800076b8:	02077713          	andi	a4,a4,32
    800076bc:	fc071ae3          	bnez	a4,80007690 <uartintr+0xe0>
    800076c0:	00008067          	ret
    800076c4:	00008067          	ret

00000000800076c8 <kinit>:
    800076c8:	fc010113          	addi	sp,sp,-64
    800076cc:	02913423          	sd	s1,40(sp)
    800076d0:	fffff7b7          	lui	a5,0xfffff
    800076d4:	00006497          	auipc	s1,0x6
    800076d8:	4ab48493          	addi	s1,s1,1195 # 8000db7f <end+0xfff>
    800076dc:	02813823          	sd	s0,48(sp)
    800076e0:	01313c23          	sd	s3,24(sp)
    800076e4:	00f4f4b3          	and	s1,s1,a5
    800076e8:	02113c23          	sd	ra,56(sp)
    800076ec:	03213023          	sd	s2,32(sp)
    800076f0:	01413823          	sd	s4,16(sp)
    800076f4:	01513423          	sd	s5,8(sp)
    800076f8:	04010413          	addi	s0,sp,64
    800076fc:	000017b7          	lui	a5,0x1
    80007700:	01100993          	li	s3,17
    80007704:	00f487b3          	add	a5,s1,a5
    80007708:	01b99993          	slli	s3,s3,0x1b
    8000770c:	06f9e063          	bltu	s3,a5,8000776c <kinit+0xa4>
    80007710:	00005a97          	auipc	s5,0x5
    80007714:	470a8a93          	addi	s5,s5,1136 # 8000cb80 <end>
    80007718:	0754ec63          	bltu	s1,s5,80007790 <kinit+0xc8>
    8000771c:	0734fa63          	bgeu	s1,s3,80007790 <kinit+0xc8>
    80007720:	00088a37          	lui	s4,0x88
    80007724:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007728:	00004917          	auipc	s2,0x4
    8000772c:	11890913          	addi	s2,s2,280 # 8000b840 <kmem>
    80007730:	00ca1a13          	slli	s4,s4,0xc
    80007734:	0140006f          	j	80007748 <kinit+0x80>
    80007738:	000017b7          	lui	a5,0x1
    8000773c:	00f484b3          	add	s1,s1,a5
    80007740:	0554e863          	bltu	s1,s5,80007790 <kinit+0xc8>
    80007744:	0534f663          	bgeu	s1,s3,80007790 <kinit+0xc8>
    80007748:	00001637          	lui	a2,0x1
    8000774c:	00100593          	li	a1,1
    80007750:	00048513          	mv	a0,s1
    80007754:	00000097          	auipc	ra,0x0
    80007758:	5e4080e7          	jalr	1508(ra) # 80007d38 <__memset>
    8000775c:	00093783          	ld	a5,0(s2)
    80007760:	00f4b023          	sd	a5,0(s1)
    80007764:	00993023          	sd	s1,0(s2)
    80007768:	fd4498e3          	bne	s1,s4,80007738 <kinit+0x70>
    8000776c:	03813083          	ld	ra,56(sp)
    80007770:	03013403          	ld	s0,48(sp)
    80007774:	02813483          	ld	s1,40(sp)
    80007778:	02013903          	ld	s2,32(sp)
    8000777c:	01813983          	ld	s3,24(sp)
    80007780:	01013a03          	ld	s4,16(sp)
    80007784:	00813a83          	ld	s5,8(sp)
    80007788:	04010113          	addi	sp,sp,64
    8000778c:	00008067          	ret
    80007790:	00002517          	auipc	a0,0x2
    80007794:	f1850513          	addi	a0,a0,-232 # 800096a8 <digits+0x18>
    80007798:	fffff097          	auipc	ra,0xfffff
    8000779c:	4b4080e7          	jalr	1204(ra) # 80006c4c <panic>

00000000800077a0 <freerange>:
    800077a0:	fc010113          	addi	sp,sp,-64
    800077a4:	000017b7          	lui	a5,0x1
    800077a8:	02913423          	sd	s1,40(sp)
    800077ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800077b0:	009504b3          	add	s1,a0,s1
    800077b4:	fffff537          	lui	a0,0xfffff
    800077b8:	02813823          	sd	s0,48(sp)
    800077bc:	02113c23          	sd	ra,56(sp)
    800077c0:	03213023          	sd	s2,32(sp)
    800077c4:	01313c23          	sd	s3,24(sp)
    800077c8:	01413823          	sd	s4,16(sp)
    800077cc:	01513423          	sd	s5,8(sp)
    800077d0:	01613023          	sd	s6,0(sp)
    800077d4:	04010413          	addi	s0,sp,64
    800077d8:	00a4f4b3          	and	s1,s1,a0
    800077dc:	00f487b3          	add	a5,s1,a5
    800077e0:	06f5e463          	bltu	a1,a5,80007848 <freerange+0xa8>
    800077e4:	00005a97          	auipc	s5,0x5
    800077e8:	39ca8a93          	addi	s5,s5,924 # 8000cb80 <end>
    800077ec:	0954e263          	bltu	s1,s5,80007870 <freerange+0xd0>
    800077f0:	01100993          	li	s3,17
    800077f4:	01b99993          	slli	s3,s3,0x1b
    800077f8:	0734fc63          	bgeu	s1,s3,80007870 <freerange+0xd0>
    800077fc:	00058a13          	mv	s4,a1
    80007800:	00004917          	auipc	s2,0x4
    80007804:	04090913          	addi	s2,s2,64 # 8000b840 <kmem>
    80007808:	00002b37          	lui	s6,0x2
    8000780c:	0140006f          	j	80007820 <freerange+0x80>
    80007810:	000017b7          	lui	a5,0x1
    80007814:	00f484b3          	add	s1,s1,a5
    80007818:	0554ec63          	bltu	s1,s5,80007870 <freerange+0xd0>
    8000781c:	0534fa63          	bgeu	s1,s3,80007870 <freerange+0xd0>
    80007820:	00001637          	lui	a2,0x1
    80007824:	00100593          	li	a1,1
    80007828:	00048513          	mv	a0,s1
    8000782c:	00000097          	auipc	ra,0x0
    80007830:	50c080e7          	jalr	1292(ra) # 80007d38 <__memset>
    80007834:	00093703          	ld	a4,0(s2)
    80007838:	016487b3          	add	a5,s1,s6
    8000783c:	00e4b023          	sd	a4,0(s1)
    80007840:	00993023          	sd	s1,0(s2)
    80007844:	fcfa76e3          	bgeu	s4,a5,80007810 <freerange+0x70>
    80007848:	03813083          	ld	ra,56(sp)
    8000784c:	03013403          	ld	s0,48(sp)
    80007850:	02813483          	ld	s1,40(sp)
    80007854:	02013903          	ld	s2,32(sp)
    80007858:	01813983          	ld	s3,24(sp)
    8000785c:	01013a03          	ld	s4,16(sp)
    80007860:	00813a83          	ld	s5,8(sp)
    80007864:	00013b03          	ld	s6,0(sp)
    80007868:	04010113          	addi	sp,sp,64
    8000786c:	00008067          	ret
    80007870:	00002517          	auipc	a0,0x2
    80007874:	e3850513          	addi	a0,a0,-456 # 800096a8 <digits+0x18>
    80007878:	fffff097          	auipc	ra,0xfffff
    8000787c:	3d4080e7          	jalr	980(ra) # 80006c4c <panic>

0000000080007880 <kfree>:
    80007880:	fe010113          	addi	sp,sp,-32
    80007884:	00813823          	sd	s0,16(sp)
    80007888:	00113c23          	sd	ra,24(sp)
    8000788c:	00913423          	sd	s1,8(sp)
    80007890:	02010413          	addi	s0,sp,32
    80007894:	03451793          	slli	a5,a0,0x34
    80007898:	04079c63          	bnez	a5,800078f0 <kfree+0x70>
    8000789c:	00005797          	auipc	a5,0x5
    800078a0:	2e478793          	addi	a5,a5,740 # 8000cb80 <end>
    800078a4:	00050493          	mv	s1,a0
    800078a8:	04f56463          	bltu	a0,a5,800078f0 <kfree+0x70>
    800078ac:	01100793          	li	a5,17
    800078b0:	01b79793          	slli	a5,a5,0x1b
    800078b4:	02f57e63          	bgeu	a0,a5,800078f0 <kfree+0x70>
    800078b8:	00001637          	lui	a2,0x1
    800078bc:	00100593          	li	a1,1
    800078c0:	00000097          	auipc	ra,0x0
    800078c4:	478080e7          	jalr	1144(ra) # 80007d38 <__memset>
    800078c8:	00004797          	auipc	a5,0x4
    800078cc:	f7878793          	addi	a5,a5,-136 # 8000b840 <kmem>
    800078d0:	0007b703          	ld	a4,0(a5)
    800078d4:	01813083          	ld	ra,24(sp)
    800078d8:	01013403          	ld	s0,16(sp)
    800078dc:	00e4b023          	sd	a4,0(s1)
    800078e0:	0097b023          	sd	s1,0(a5)
    800078e4:	00813483          	ld	s1,8(sp)
    800078e8:	02010113          	addi	sp,sp,32
    800078ec:	00008067          	ret
    800078f0:	00002517          	auipc	a0,0x2
    800078f4:	db850513          	addi	a0,a0,-584 # 800096a8 <digits+0x18>
    800078f8:	fffff097          	auipc	ra,0xfffff
    800078fc:	354080e7          	jalr	852(ra) # 80006c4c <panic>

0000000080007900 <kalloc>:
    80007900:	fe010113          	addi	sp,sp,-32
    80007904:	00813823          	sd	s0,16(sp)
    80007908:	00913423          	sd	s1,8(sp)
    8000790c:	00113c23          	sd	ra,24(sp)
    80007910:	02010413          	addi	s0,sp,32
    80007914:	00004797          	auipc	a5,0x4
    80007918:	f2c78793          	addi	a5,a5,-212 # 8000b840 <kmem>
    8000791c:	0007b483          	ld	s1,0(a5)
    80007920:	02048063          	beqz	s1,80007940 <kalloc+0x40>
    80007924:	0004b703          	ld	a4,0(s1)
    80007928:	00001637          	lui	a2,0x1
    8000792c:	00500593          	li	a1,5
    80007930:	00048513          	mv	a0,s1
    80007934:	00e7b023          	sd	a4,0(a5)
    80007938:	00000097          	auipc	ra,0x0
    8000793c:	400080e7          	jalr	1024(ra) # 80007d38 <__memset>
    80007940:	01813083          	ld	ra,24(sp)
    80007944:	01013403          	ld	s0,16(sp)
    80007948:	00048513          	mv	a0,s1
    8000794c:	00813483          	ld	s1,8(sp)
    80007950:	02010113          	addi	sp,sp,32
    80007954:	00008067          	ret

0000000080007958 <initlock>:
    80007958:	ff010113          	addi	sp,sp,-16
    8000795c:	00813423          	sd	s0,8(sp)
    80007960:	01010413          	addi	s0,sp,16
    80007964:	00813403          	ld	s0,8(sp)
    80007968:	00b53423          	sd	a1,8(a0)
    8000796c:	00052023          	sw	zero,0(a0)
    80007970:	00053823          	sd	zero,16(a0)
    80007974:	01010113          	addi	sp,sp,16
    80007978:	00008067          	ret

000000008000797c <acquire>:
    8000797c:	fe010113          	addi	sp,sp,-32
    80007980:	00813823          	sd	s0,16(sp)
    80007984:	00913423          	sd	s1,8(sp)
    80007988:	00113c23          	sd	ra,24(sp)
    8000798c:	01213023          	sd	s2,0(sp)
    80007990:	02010413          	addi	s0,sp,32
    80007994:	00050493          	mv	s1,a0
    80007998:	10002973          	csrr	s2,sstatus
    8000799c:	100027f3          	csrr	a5,sstatus
    800079a0:	ffd7f793          	andi	a5,a5,-3
    800079a4:	10079073          	csrw	sstatus,a5
    800079a8:	fffff097          	auipc	ra,0xfffff
    800079ac:	8e8080e7          	jalr	-1816(ra) # 80006290 <mycpu>
    800079b0:	07852783          	lw	a5,120(a0)
    800079b4:	06078e63          	beqz	a5,80007a30 <acquire+0xb4>
    800079b8:	fffff097          	auipc	ra,0xfffff
    800079bc:	8d8080e7          	jalr	-1832(ra) # 80006290 <mycpu>
    800079c0:	07852783          	lw	a5,120(a0)
    800079c4:	0004a703          	lw	a4,0(s1)
    800079c8:	0017879b          	addiw	a5,a5,1
    800079cc:	06f52c23          	sw	a5,120(a0)
    800079d0:	04071063          	bnez	a4,80007a10 <acquire+0x94>
    800079d4:	00100713          	li	a4,1
    800079d8:	00070793          	mv	a5,a4
    800079dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800079e0:	0007879b          	sext.w	a5,a5
    800079e4:	fe079ae3          	bnez	a5,800079d8 <acquire+0x5c>
    800079e8:	0ff0000f          	fence
    800079ec:	fffff097          	auipc	ra,0xfffff
    800079f0:	8a4080e7          	jalr	-1884(ra) # 80006290 <mycpu>
    800079f4:	01813083          	ld	ra,24(sp)
    800079f8:	01013403          	ld	s0,16(sp)
    800079fc:	00a4b823          	sd	a0,16(s1)
    80007a00:	00013903          	ld	s2,0(sp)
    80007a04:	00813483          	ld	s1,8(sp)
    80007a08:	02010113          	addi	sp,sp,32
    80007a0c:	00008067          	ret
    80007a10:	0104b903          	ld	s2,16(s1)
    80007a14:	fffff097          	auipc	ra,0xfffff
    80007a18:	87c080e7          	jalr	-1924(ra) # 80006290 <mycpu>
    80007a1c:	faa91ce3          	bne	s2,a0,800079d4 <acquire+0x58>
    80007a20:	00002517          	auipc	a0,0x2
    80007a24:	c9050513          	addi	a0,a0,-880 # 800096b0 <digits+0x20>
    80007a28:	fffff097          	auipc	ra,0xfffff
    80007a2c:	224080e7          	jalr	548(ra) # 80006c4c <panic>
    80007a30:	00195913          	srli	s2,s2,0x1
    80007a34:	fffff097          	auipc	ra,0xfffff
    80007a38:	85c080e7          	jalr	-1956(ra) # 80006290 <mycpu>
    80007a3c:	00197913          	andi	s2,s2,1
    80007a40:	07252e23          	sw	s2,124(a0)
    80007a44:	f75ff06f          	j	800079b8 <acquire+0x3c>

0000000080007a48 <release>:
    80007a48:	fe010113          	addi	sp,sp,-32
    80007a4c:	00813823          	sd	s0,16(sp)
    80007a50:	00113c23          	sd	ra,24(sp)
    80007a54:	00913423          	sd	s1,8(sp)
    80007a58:	01213023          	sd	s2,0(sp)
    80007a5c:	02010413          	addi	s0,sp,32
    80007a60:	00052783          	lw	a5,0(a0)
    80007a64:	00079a63          	bnez	a5,80007a78 <release+0x30>
    80007a68:	00002517          	auipc	a0,0x2
    80007a6c:	c5050513          	addi	a0,a0,-944 # 800096b8 <digits+0x28>
    80007a70:	fffff097          	auipc	ra,0xfffff
    80007a74:	1dc080e7          	jalr	476(ra) # 80006c4c <panic>
    80007a78:	01053903          	ld	s2,16(a0)
    80007a7c:	00050493          	mv	s1,a0
    80007a80:	fffff097          	auipc	ra,0xfffff
    80007a84:	810080e7          	jalr	-2032(ra) # 80006290 <mycpu>
    80007a88:	fea910e3          	bne	s2,a0,80007a68 <release+0x20>
    80007a8c:	0004b823          	sd	zero,16(s1)
    80007a90:	0ff0000f          	fence
    80007a94:	0f50000f          	fence	iorw,ow
    80007a98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007a9c:	ffffe097          	auipc	ra,0xffffe
    80007aa0:	7f4080e7          	jalr	2036(ra) # 80006290 <mycpu>
    80007aa4:	100027f3          	csrr	a5,sstatus
    80007aa8:	0027f793          	andi	a5,a5,2
    80007aac:	04079a63          	bnez	a5,80007b00 <release+0xb8>
    80007ab0:	07852783          	lw	a5,120(a0)
    80007ab4:	02f05e63          	blez	a5,80007af0 <release+0xa8>
    80007ab8:	fff7871b          	addiw	a4,a5,-1
    80007abc:	06e52c23          	sw	a4,120(a0)
    80007ac0:	00071c63          	bnez	a4,80007ad8 <release+0x90>
    80007ac4:	07c52783          	lw	a5,124(a0)
    80007ac8:	00078863          	beqz	a5,80007ad8 <release+0x90>
    80007acc:	100027f3          	csrr	a5,sstatus
    80007ad0:	0027e793          	ori	a5,a5,2
    80007ad4:	10079073          	csrw	sstatus,a5
    80007ad8:	01813083          	ld	ra,24(sp)
    80007adc:	01013403          	ld	s0,16(sp)
    80007ae0:	00813483          	ld	s1,8(sp)
    80007ae4:	00013903          	ld	s2,0(sp)
    80007ae8:	02010113          	addi	sp,sp,32
    80007aec:	00008067          	ret
    80007af0:	00002517          	auipc	a0,0x2
    80007af4:	be850513          	addi	a0,a0,-1048 # 800096d8 <digits+0x48>
    80007af8:	fffff097          	auipc	ra,0xfffff
    80007afc:	154080e7          	jalr	340(ra) # 80006c4c <panic>
    80007b00:	00002517          	auipc	a0,0x2
    80007b04:	bc050513          	addi	a0,a0,-1088 # 800096c0 <digits+0x30>
    80007b08:	fffff097          	auipc	ra,0xfffff
    80007b0c:	144080e7          	jalr	324(ra) # 80006c4c <panic>

0000000080007b10 <holding>:
    80007b10:	00052783          	lw	a5,0(a0)
    80007b14:	00079663          	bnez	a5,80007b20 <holding+0x10>
    80007b18:	00000513          	li	a0,0
    80007b1c:	00008067          	ret
    80007b20:	fe010113          	addi	sp,sp,-32
    80007b24:	00813823          	sd	s0,16(sp)
    80007b28:	00913423          	sd	s1,8(sp)
    80007b2c:	00113c23          	sd	ra,24(sp)
    80007b30:	02010413          	addi	s0,sp,32
    80007b34:	01053483          	ld	s1,16(a0)
    80007b38:	ffffe097          	auipc	ra,0xffffe
    80007b3c:	758080e7          	jalr	1880(ra) # 80006290 <mycpu>
    80007b40:	01813083          	ld	ra,24(sp)
    80007b44:	01013403          	ld	s0,16(sp)
    80007b48:	40a48533          	sub	a0,s1,a0
    80007b4c:	00153513          	seqz	a0,a0
    80007b50:	00813483          	ld	s1,8(sp)
    80007b54:	02010113          	addi	sp,sp,32
    80007b58:	00008067          	ret

0000000080007b5c <push_off>:
    80007b5c:	fe010113          	addi	sp,sp,-32
    80007b60:	00813823          	sd	s0,16(sp)
    80007b64:	00113c23          	sd	ra,24(sp)
    80007b68:	00913423          	sd	s1,8(sp)
    80007b6c:	02010413          	addi	s0,sp,32
    80007b70:	100024f3          	csrr	s1,sstatus
    80007b74:	100027f3          	csrr	a5,sstatus
    80007b78:	ffd7f793          	andi	a5,a5,-3
    80007b7c:	10079073          	csrw	sstatus,a5
    80007b80:	ffffe097          	auipc	ra,0xffffe
    80007b84:	710080e7          	jalr	1808(ra) # 80006290 <mycpu>
    80007b88:	07852783          	lw	a5,120(a0)
    80007b8c:	02078663          	beqz	a5,80007bb8 <push_off+0x5c>
    80007b90:	ffffe097          	auipc	ra,0xffffe
    80007b94:	700080e7          	jalr	1792(ra) # 80006290 <mycpu>
    80007b98:	07852783          	lw	a5,120(a0)
    80007b9c:	01813083          	ld	ra,24(sp)
    80007ba0:	01013403          	ld	s0,16(sp)
    80007ba4:	0017879b          	addiw	a5,a5,1
    80007ba8:	06f52c23          	sw	a5,120(a0)
    80007bac:	00813483          	ld	s1,8(sp)
    80007bb0:	02010113          	addi	sp,sp,32
    80007bb4:	00008067          	ret
    80007bb8:	0014d493          	srli	s1,s1,0x1
    80007bbc:	ffffe097          	auipc	ra,0xffffe
    80007bc0:	6d4080e7          	jalr	1748(ra) # 80006290 <mycpu>
    80007bc4:	0014f493          	andi	s1,s1,1
    80007bc8:	06952e23          	sw	s1,124(a0)
    80007bcc:	fc5ff06f          	j	80007b90 <push_off+0x34>

0000000080007bd0 <pop_off>:
    80007bd0:	ff010113          	addi	sp,sp,-16
    80007bd4:	00813023          	sd	s0,0(sp)
    80007bd8:	00113423          	sd	ra,8(sp)
    80007bdc:	01010413          	addi	s0,sp,16
    80007be0:	ffffe097          	auipc	ra,0xffffe
    80007be4:	6b0080e7          	jalr	1712(ra) # 80006290 <mycpu>
    80007be8:	100027f3          	csrr	a5,sstatus
    80007bec:	0027f793          	andi	a5,a5,2
    80007bf0:	04079663          	bnez	a5,80007c3c <pop_off+0x6c>
    80007bf4:	07852783          	lw	a5,120(a0)
    80007bf8:	02f05a63          	blez	a5,80007c2c <pop_off+0x5c>
    80007bfc:	fff7871b          	addiw	a4,a5,-1
    80007c00:	06e52c23          	sw	a4,120(a0)
    80007c04:	00071c63          	bnez	a4,80007c1c <pop_off+0x4c>
    80007c08:	07c52783          	lw	a5,124(a0)
    80007c0c:	00078863          	beqz	a5,80007c1c <pop_off+0x4c>
    80007c10:	100027f3          	csrr	a5,sstatus
    80007c14:	0027e793          	ori	a5,a5,2
    80007c18:	10079073          	csrw	sstatus,a5
    80007c1c:	00813083          	ld	ra,8(sp)
    80007c20:	00013403          	ld	s0,0(sp)
    80007c24:	01010113          	addi	sp,sp,16
    80007c28:	00008067          	ret
    80007c2c:	00002517          	auipc	a0,0x2
    80007c30:	aac50513          	addi	a0,a0,-1364 # 800096d8 <digits+0x48>
    80007c34:	fffff097          	auipc	ra,0xfffff
    80007c38:	018080e7          	jalr	24(ra) # 80006c4c <panic>
    80007c3c:	00002517          	auipc	a0,0x2
    80007c40:	a8450513          	addi	a0,a0,-1404 # 800096c0 <digits+0x30>
    80007c44:	fffff097          	auipc	ra,0xfffff
    80007c48:	008080e7          	jalr	8(ra) # 80006c4c <panic>

0000000080007c4c <push_on>:
    80007c4c:	fe010113          	addi	sp,sp,-32
    80007c50:	00813823          	sd	s0,16(sp)
    80007c54:	00113c23          	sd	ra,24(sp)
    80007c58:	00913423          	sd	s1,8(sp)
    80007c5c:	02010413          	addi	s0,sp,32
    80007c60:	100024f3          	csrr	s1,sstatus
    80007c64:	100027f3          	csrr	a5,sstatus
    80007c68:	0027e793          	ori	a5,a5,2
    80007c6c:	10079073          	csrw	sstatus,a5
    80007c70:	ffffe097          	auipc	ra,0xffffe
    80007c74:	620080e7          	jalr	1568(ra) # 80006290 <mycpu>
    80007c78:	07852783          	lw	a5,120(a0)
    80007c7c:	02078663          	beqz	a5,80007ca8 <push_on+0x5c>
    80007c80:	ffffe097          	auipc	ra,0xffffe
    80007c84:	610080e7          	jalr	1552(ra) # 80006290 <mycpu>
    80007c88:	07852783          	lw	a5,120(a0)
    80007c8c:	01813083          	ld	ra,24(sp)
    80007c90:	01013403          	ld	s0,16(sp)
    80007c94:	0017879b          	addiw	a5,a5,1
    80007c98:	06f52c23          	sw	a5,120(a0)
    80007c9c:	00813483          	ld	s1,8(sp)
    80007ca0:	02010113          	addi	sp,sp,32
    80007ca4:	00008067          	ret
    80007ca8:	0014d493          	srli	s1,s1,0x1
    80007cac:	ffffe097          	auipc	ra,0xffffe
    80007cb0:	5e4080e7          	jalr	1508(ra) # 80006290 <mycpu>
    80007cb4:	0014f493          	andi	s1,s1,1
    80007cb8:	06952e23          	sw	s1,124(a0)
    80007cbc:	fc5ff06f          	j	80007c80 <push_on+0x34>

0000000080007cc0 <pop_on>:
    80007cc0:	ff010113          	addi	sp,sp,-16
    80007cc4:	00813023          	sd	s0,0(sp)
    80007cc8:	00113423          	sd	ra,8(sp)
    80007ccc:	01010413          	addi	s0,sp,16
    80007cd0:	ffffe097          	auipc	ra,0xffffe
    80007cd4:	5c0080e7          	jalr	1472(ra) # 80006290 <mycpu>
    80007cd8:	100027f3          	csrr	a5,sstatus
    80007cdc:	0027f793          	andi	a5,a5,2
    80007ce0:	04078463          	beqz	a5,80007d28 <pop_on+0x68>
    80007ce4:	07852783          	lw	a5,120(a0)
    80007ce8:	02f05863          	blez	a5,80007d18 <pop_on+0x58>
    80007cec:	fff7879b          	addiw	a5,a5,-1
    80007cf0:	06f52c23          	sw	a5,120(a0)
    80007cf4:	07853783          	ld	a5,120(a0)
    80007cf8:	00079863          	bnez	a5,80007d08 <pop_on+0x48>
    80007cfc:	100027f3          	csrr	a5,sstatus
    80007d00:	ffd7f793          	andi	a5,a5,-3
    80007d04:	10079073          	csrw	sstatus,a5
    80007d08:	00813083          	ld	ra,8(sp)
    80007d0c:	00013403          	ld	s0,0(sp)
    80007d10:	01010113          	addi	sp,sp,16
    80007d14:	00008067          	ret
    80007d18:	00002517          	auipc	a0,0x2
    80007d1c:	9e850513          	addi	a0,a0,-1560 # 80009700 <digits+0x70>
    80007d20:	fffff097          	auipc	ra,0xfffff
    80007d24:	f2c080e7          	jalr	-212(ra) # 80006c4c <panic>
    80007d28:	00002517          	auipc	a0,0x2
    80007d2c:	9b850513          	addi	a0,a0,-1608 # 800096e0 <digits+0x50>
    80007d30:	fffff097          	auipc	ra,0xfffff
    80007d34:	f1c080e7          	jalr	-228(ra) # 80006c4c <panic>

0000000080007d38 <__memset>:
    80007d38:	ff010113          	addi	sp,sp,-16
    80007d3c:	00813423          	sd	s0,8(sp)
    80007d40:	01010413          	addi	s0,sp,16
    80007d44:	1a060e63          	beqz	a2,80007f00 <__memset+0x1c8>
    80007d48:	40a007b3          	neg	a5,a0
    80007d4c:	0077f793          	andi	a5,a5,7
    80007d50:	00778693          	addi	a3,a5,7
    80007d54:	00b00813          	li	a6,11
    80007d58:	0ff5f593          	andi	a1,a1,255
    80007d5c:	fff6071b          	addiw	a4,a2,-1
    80007d60:	1b06e663          	bltu	a3,a6,80007f0c <__memset+0x1d4>
    80007d64:	1cd76463          	bltu	a4,a3,80007f2c <__memset+0x1f4>
    80007d68:	1a078e63          	beqz	a5,80007f24 <__memset+0x1ec>
    80007d6c:	00b50023          	sb	a1,0(a0)
    80007d70:	00100713          	li	a4,1
    80007d74:	1ae78463          	beq	a5,a4,80007f1c <__memset+0x1e4>
    80007d78:	00b500a3          	sb	a1,1(a0)
    80007d7c:	00200713          	li	a4,2
    80007d80:	1ae78a63          	beq	a5,a4,80007f34 <__memset+0x1fc>
    80007d84:	00b50123          	sb	a1,2(a0)
    80007d88:	00300713          	li	a4,3
    80007d8c:	18e78463          	beq	a5,a4,80007f14 <__memset+0x1dc>
    80007d90:	00b501a3          	sb	a1,3(a0)
    80007d94:	00400713          	li	a4,4
    80007d98:	1ae78263          	beq	a5,a4,80007f3c <__memset+0x204>
    80007d9c:	00b50223          	sb	a1,4(a0)
    80007da0:	00500713          	li	a4,5
    80007da4:	1ae78063          	beq	a5,a4,80007f44 <__memset+0x20c>
    80007da8:	00b502a3          	sb	a1,5(a0)
    80007dac:	00700713          	li	a4,7
    80007db0:	18e79e63          	bne	a5,a4,80007f4c <__memset+0x214>
    80007db4:	00b50323          	sb	a1,6(a0)
    80007db8:	00700e93          	li	t4,7
    80007dbc:	00859713          	slli	a4,a1,0x8
    80007dc0:	00e5e733          	or	a4,a1,a4
    80007dc4:	01059e13          	slli	t3,a1,0x10
    80007dc8:	01c76e33          	or	t3,a4,t3
    80007dcc:	01859313          	slli	t1,a1,0x18
    80007dd0:	006e6333          	or	t1,t3,t1
    80007dd4:	02059893          	slli	a7,a1,0x20
    80007dd8:	40f60e3b          	subw	t3,a2,a5
    80007ddc:	011368b3          	or	a7,t1,a7
    80007de0:	02859813          	slli	a6,a1,0x28
    80007de4:	0108e833          	or	a6,a7,a6
    80007de8:	03059693          	slli	a3,a1,0x30
    80007dec:	003e589b          	srliw	a7,t3,0x3
    80007df0:	00d866b3          	or	a3,a6,a3
    80007df4:	03859713          	slli	a4,a1,0x38
    80007df8:	00389813          	slli	a6,a7,0x3
    80007dfc:	00f507b3          	add	a5,a0,a5
    80007e00:	00e6e733          	or	a4,a3,a4
    80007e04:	000e089b          	sext.w	a7,t3
    80007e08:	00f806b3          	add	a3,a6,a5
    80007e0c:	00e7b023          	sd	a4,0(a5)
    80007e10:	00878793          	addi	a5,a5,8
    80007e14:	fed79ce3          	bne	a5,a3,80007e0c <__memset+0xd4>
    80007e18:	ff8e7793          	andi	a5,t3,-8
    80007e1c:	0007871b          	sext.w	a4,a5
    80007e20:	01d787bb          	addw	a5,a5,t4
    80007e24:	0ce88e63          	beq	a7,a4,80007f00 <__memset+0x1c8>
    80007e28:	00f50733          	add	a4,a0,a5
    80007e2c:	00b70023          	sb	a1,0(a4)
    80007e30:	0017871b          	addiw	a4,a5,1
    80007e34:	0cc77663          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007e38:	00e50733          	add	a4,a0,a4
    80007e3c:	00b70023          	sb	a1,0(a4)
    80007e40:	0027871b          	addiw	a4,a5,2
    80007e44:	0ac77e63          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007e48:	00e50733          	add	a4,a0,a4
    80007e4c:	00b70023          	sb	a1,0(a4)
    80007e50:	0037871b          	addiw	a4,a5,3
    80007e54:	0ac77663          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007e58:	00e50733          	add	a4,a0,a4
    80007e5c:	00b70023          	sb	a1,0(a4)
    80007e60:	0047871b          	addiw	a4,a5,4
    80007e64:	08c77e63          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007e68:	00e50733          	add	a4,a0,a4
    80007e6c:	00b70023          	sb	a1,0(a4)
    80007e70:	0057871b          	addiw	a4,a5,5
    80007e74:	08c77663          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007e78:	00e50733          	add	a4,a0,a4
    80007e7c:	00b70023          	sb	a1,0(a4)
    80007e80:	0067871b          	addiw	a4,a5,6
    80007e84:	06c77e63          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007e88:	00e50733          	add	a4,a0,a4
    80007e8c:	00b70023          	sb	a1,0(a4)
    80007e90:	0077871b          	addiw	a4,a5,7
    80007e94:	06c77663          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007e98:	00e50733          	add	a4,a0,a4
    80007e9c:	00b70023          	sb	a1,0(a4)
    80007ea0:	0087871b          	addiw	a4,a5,8
    80007ea4:	04c77e63          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007ea8:	00e50733          	add	a4,a0,a4
    80007eac:	00b70023          	sb	a1,0(a4)
    80007eb0:	0097871b          	addiw	a4,a5,9
    80007eb4:	04c77663          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007eb8:	00e50733          	add	a4,a0,a4
    80007ebc:	00b70023          	sb	a1,0(a4)
    80007ec0:	00a7871b          	addiw	a4,a5,10
    80007ec4:	02c77e63          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007ec8:	00e50733          	add	a4,a0,a4
    80007ecc:	00b70023          	sb	a1,0(a4)
    80007ed0:	00b7871b          	addiw	a4,a5,11
    80007ed4:	02c77663          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007ed8:	00e50733          	add	a4,a0,a4
    80007edc:	00b70023          	sb	a1,0(a4)
    80007ee0:	00c7871b          	addiw	a4,a5,12
    80007ee4:	00c77e63          	bgeu	a4,a2,80007f00 <__memset+0x1c8>
    80007ee8:	00e50733          	add	a4,a0,a4
    80007eec:	00b70023          	sb	a1,0(a4)
    80007ef0:	00d7879b          	addiw	a5,a5,13
    80007ef4:	00c7f663          	bgeu	a5,a2,80007f00 <__memset+0x1c8>
    80007ef8:	00f507b3          	add	a5,a0,a5
    80007efc:	00b78023          	sb	a1,0(a5)
    80007f00:	00813403          	ld	s0,8(sp)
    80007f04:	01010113          	addi	sp,sp,16
    80007f08:	00008067          	ret
    80007f0c:	00b00693          	li	a3,11
    80007f10:	e55ff06f          	j	80007d64 <__memset+0x2c>
    80007f14:	00300e93          	li	t4,3
    80007f18:	ea5ff06f          	j	80007dbc <__memset+0x84>
    80007f1c:	00100e93          	li	t4,1
    80007f20:	e9dff06f          	j	80007dbc <__memset+0x84>
    80007f24:	00000e93          	li	t4,0
    80007f28:	e95ff06f          	j	80007dbc <__memset+0x84>
    80007f2c:	00000793          	li	a5,0
    80007f30:	ef9ff06f          	j	80007e28 <__memset+0xf0>
    80007f34:	00200e93          	li	t4,2
    80007f38:	e85ff06f          	j	80007dbc <__memset+0x84>
    80007f3c:	00400e93          	li	t4,4
    80007f40:	e7dff06f          	j	80007dbc <__memset+0x84>
    80007f44:	00500e93          	li	t4,5
    80007f48:	e75ff06f          	j	80007dbc <__memset+0x84>
    80007f4c:	00600e93          	li	t4,6
    80007f50:	e6dff06f          	j	80007dbc <__memset+0x84>

0000000080007f54 <__memmove>:
    80007f54:	ff010113          	addi	sp,sp,-16
    80007f58:	00813423          	sd	s0,8(sp)
    80007f5c:	01010413          	addi	s0,sp,16
    80007f60:	0e060863          	beqz	a2,80008050 <__memmove+0xfc>
    80007f64:	fff6069b          	addiw	a3,a2,-1
    80007f68:	0006881b          	sext.w	a6,a3
    80007f6c:	0ea5e863          	bltu	a1,a0,8000805c <__memmove+0x108>
    80007f70:	00758713          	addi	a4,a1,7
    80007f74:	00a5e7b3          	or	a5,a1,a0
    80007f78:	40a70733          	sub	a4,a4,a0
    80007f7c:	0077f793          	andi	a5,a5,7
    80007f80:	00f73713          	sltiu	a4,a4,15
    80007f84:	00174713          	xori	a4,a4,1
    80007f88:	0017b793          	seqz	a5,a5
    80007f8c:	00e7f7b3          	and	a5,a5,a4
    80007f90:	10078863          	beqz	a5,800080a0 <__memmove+0x14c>
    80007f94:	00900793          	li	a5,9
    80007f98:	1107f463          	bgeu	a5,a6,800080a0 <__memmove+0x14c>
    80007f9c:	0036581b          	srliw	a6,a2,0x3
    80007fa0:	fff8081b          	addiw	a6,a6,-1
    80007fa4:	02081813          	slli	a6,a6,0x20
    80007fa8:	01d85893          	srli	a7,a6,0x1d
    80007fac:	00858813          	addi	a6,a1,8
    80007fb0:	00058793          	mv	a5,a1
    80007fb4:	00050713          	mv	a4,a0
    80007fb8:	01088833          	add	a6,a7,a6
    80007fbc:	0007b883          	ld	a7,0(a5)
    80007fc0:	00878793          	addi	a5,a5,8
    80007fc4:	00870713          	addi	a4,a4,8
    80007fc8:	ff173c23          	sd	a7,-8(a4)
    80007fcc:	ff0798e3          	bne	a5,a6,80007fbc <__memmove+0x68>
    80007fd0:	ff867713          	andi	a4,a2,-8
    80007fd4:	02071793          	slli	a5,a4,0x20
    80007fd8:	0207d793          	srli	a5,a5,0x20
    80007fdc:	00f585b3          	add	a1,a1,a5
    80007fe0:	40e686bb          	subw	a3,a3,a4
    80007fe4:	00f507b3          	add	a5,a0,a5
    80007fe8:	06e60463          	beq	a2,a4,80008050 <__memmove+0xfc>
    80007fec:	0005c703          	lbu	a4,0(a1)
    80007ff0:	00e78023          	sb	a4,0(a5)
    80007ff4:	04068e63          	beqz	a3,80008050 <__memmove+0xfc>
    80007ff8:	0015c603          	lbu	a2,1(a1)
    80007ffc:	00100713          	li	a4,1
    80008000:	00c780a3          	sb	a2,1(a5)
    80008004:	04e68663          	beq	a3,a4,80008050 <__memmove+0xfc>
    80008008:	0025c603          	lbu	a2,2(a1)
    8000800c:	00200713          	li	a4,2
    80008010:	00c78123          	sb	a2,2(a5)
    80008014:	02e68e63          	beq	a3,a4,80008050 <__memmove+0xfc>
    80008018:	0035c603          	lbu	a2,3(a1)
    8000801c:	00300713          	li	a4,3
    80008020:	00c781a3          	sb	a2,3(a5)
    80008024:	02e68663          	beq	a3,a4,80008050 <__memmove+0xfc>
    80008028:	0045c603          	lbu	a2,4(a1)
    8000802c:	00400713          	li	a4,4
    80008030:	00c78223          	sb	a2,4(a5)
    80008034:	00e68e63          	beq	a3,a4,80008050 <__memmove+0xfc>
    80008038:	0055c603          	lbu	a2,5(a1)
    8000803c:	00500713          	li	a4,5
    80008040:	00c782a3          	sb	a2,5(a5)
    80008044:	00e68663          	beq	a3,a4,80008050 <__memmove+0xfc>
    80008048:	0065c703          	lbu	a4,6(a1)
    8000804c:	00e78323          	sb	a4,6(a5)
    80008050:	00813403          	ld	s0,8(sp)
    80008054:	01010113          	addi	sp,sp,16
    80008058:	00008067          	ret
    8000805c:	02061713          	slli	a4,a2,0x20
    80008060:	02075713          	srli	a4,a4,0x20
    80008064:	00e587b3          	add	a5,a1,a4
    80008068:	f0f574e3          	bgeu	a0,a5,80007f70 <__memmove+0x1c>
    8000806c:	02069613          	slli	a2,a3,0x20
    80008070:	02065613          	srli	a2,a2,0x20
    80008074:	fff64613          	not	a2,a2
    80008078:	00e50733          	add	a4,a0,a4
    8000807c:	00c78633          	add	a2,a5,a2
    80008080:	fff7c683          	lbu	a3,-1(a5)
    80008084:	fff78793          	addi	a5,a5,-1
    80008088:	fff70713          	addi	a4,a4,-1
    8000808c:	00d70023          	sb	a3,0(a4)
    80008090:	fec798e3          	bne	a5,a2,80008080 <__memmove+0x12c>
    80008094:	00813403          	ld	s0,8(sp)
    80008098:	01010113          	addi	sp,sp,16
    8000809c:	00008067          	ret
    800080a0:	02069713          	slli	a4,a3,0x20
    800080a4:	02075713          	srli	a4,a4,0x20
    800080a8:	00170713          	addi	a4,a4,1
    800080ac:	00e50733          	add	a4,a0,a4
    800080b0:	00050793          	mv	a5,a0
    800080b4:	0005c683          	lbu	a3,0(a1)
    800080b8:	00178793          	addi	a5,a5,1
    800080bc:	00158593          	addi	a1,a1,1
    800080c0:	fed78fa3          	sb	a3,-1(a5)
    800080c4:	fee798e3          	bne	a5,a4,800080b4 <__memmove+0x160>
    800080c8:	f89ff06f          	j	80008050 <__memmove+0xfc>

00000000800080cc <__putc>:
    800080cc:	fe010113          	addi	sp,sp,-32
    800080d0:	00813823          	sd	s0,16(sp)
    800080d4:	00113c23          	sd	ra,24(sp)
    800080d8:	02010413          	addi	s0,sp,32
    800080dc:	00050793          	mv	a5,a0
    800080e0:	fef40593          	addi	a1,s0,-17
    800080e4:	00100613          	li	a2,1
    800080e8:	00000513          	li	a0,0
    800080ec:	fef407a3          	sb	a5,-17(s0)
    800080f0:	fffff097          	auipc	ra,0xfffff
    800080f4:	b3c080e7          	jalr	-1220(ra) # 80006c2c <console_write>
    800080f8:	01813083          	ld	ra,24(sp)
    800080fc:	01013403          	ld	s0,16(sp)
    80008100:	02010113          	addi	sp,sp,32
    80008104:	00008067          	ret

0000000080008108 <__getc>:
    80008108:	fe010113          	addi	sp,sp,-32
    8000810c:	00813823          	sd	s0,16(sp)
    80008110:	00113c23          	sd	ra,24(sp)
    80008114:	02010413          	addi	s0,sp,32
    80008118:	fe840593          	addi	a1,s0,-24
    8000811c:	00100613          	li	a2,1
    80008120:	00000513          	li	a0,0
    80008124:	fffff097          	auipc	ra,0xfffff
    80008128:	ae8080e7          	jalr	-1304(ra) # 80006c0c <console_read>
    8000812c:	fe844503          	lbu	a0,-24(s0)
    80008130:	01813083          	ld	ra,24(sp)
    80008134:	01013403          	ld	s0,16(sp)
    80008138:	02010113          	addi	sp,sp,32
    8000813c:	00008067          	ret

0000000080008140 <console_handler>:
    80008140:	fe010113          	addi	sp,sp,-32
    80008144:	00813823          	sd	s0,16(sp)
    80008148:	00113c23          	sd	ra,24(sp)
    8000814c:	00913423          	sd	s1,8(sp)
    80008150:	02010413          	addi	s0,sp,32
    80008154:	14202773          	csrr	a4,scause
    80008158:	100027f3          	csrr	a5,sstatus
    8000815c:	0027f793          	andi	a5,a5,2
    80008160:	06079e63          	bnez	a5,800081dc <console_handler+0x9c>
    80008164:	00074c63          	bltz	a4,8000817c <console_handler+0x3c>
    80008168:	01813083          	ld	ra,24(sp)
    8000816c:	01013403          	ld	s0,16(sp)
    80008170:	00813483          	ld	s1,8(sp)
    80008174:	02010113          	addi	sp,sp,32
    80008178:	00008067          	ret
    8000817c:	0ff77713          	andi	a4,a4,255
    80008180:	00900793          	li	a5,9
    80008184:	fef712e3          	bne	a4,a5,80008168 <console_handler+0x28>
    80008188:	ffffe097          	auipc	ra,0xffffe
    8000818c:	6dc080e7          	jalr	1756(ra) # 80006864 <plic_claim>
    80008190:	00a00793          	li	a5,10
    80008194:	00050493          	mv	s1,a0
    80008198:	02f50c63          	beq	a0,a5,800081d0 <console_handler+0x90>
    8000819c:	fc0506e3          	beqz	a0,80008168 <console_handler+0x28>
    800081a0:	00050593          	mv	a1,a0
    800081a4:	00001517          	auipc	a0,0x1
    800081a8:	46450513          	addi	a0,a0,1124 # 80009608 <_ZL6digits+0xf8>
    800081ac:	fffff097          	auipc	ra,0xfffff
    800081b0:	afc080e7          	jalr	-1284(ra) # 80006ca8 <__printf>
    800081b4:	01013403          	ld	s0,16(sp)
    800081b8:	01813083          	ld	ra,24(sp)
    800081bc:	00048513          	mv	a0,s1
    800081c0:	00813483          	ld	s1,8(sp)
    800081c4:	02010113          	addi	sp,sp,32
    800081c8:	ffffe317          	auipc	t1,0xffffe
    800081cc:	6d430067          	jr	1748(t1) # 8000689c <plic_complete>
    800081d0:	fffff097          	auipc	ra,0xfffff
    800081d4:	3e0080e7          	jalr	992(ra) # 800075b0 <uartintr>
    800081d8:	fddff06f          	j	800081b4 <console_handler+0x74>
    800081dc:	00001517          	auipc	a0,0x1
    800081e0:	52c50513          	addi	a0,a0,1324 # 80009708 <digits+0x78>
    800081e4:	fffff097          	auipc	ra,0xfffff
    800081e8:	a68080e7          	jalr	-1432(ra) # 80006c4c <panic>
	...
