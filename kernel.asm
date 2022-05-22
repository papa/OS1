
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	84013103          	ld	sp,-1984(sp) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	615050ef          	jal	ra,80005e30 <start>

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
    80001080:	4d4020ef          	jal	ra,80003554 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	fb0080e7          	jalr	-80(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
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
    800014a0:	f80080e7          	jalr	-128(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
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
    800014c0:	f60080e7          	jalr	-160(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	fc4080e7          	jalr	-60(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	cc850513          	addi	a0,a0,-824 # 80009198 <CONSOLE_STATUS+0x188>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	f44080e7          	jalr	-188(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
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
    80001538:	ee8080e7          	jalr	-280(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
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
    80001558:	ec8080e7          	jalr	-312(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	f2c080e7          	jalr	-212(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	c3050513          	addi	a0,a0,-976 # 80009198 <CONSOLE_STATUS+0x188>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	eac080e7          	jalr	-340(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
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
    800015e0:	e40080e7          	jalr	-448(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	ea4080e7          	jalr	-348(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
    for(int i = 0 ; i < 10000;i++)
    800015f0:	0014849b          	addiw	s1,s1,1
    800015f4:	fd5ff06f          	j	800015c8 <_ZN12TestPeriodic18periodicActivationEv+0x18>
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
    8000162c:	df4080e7          	jalr	-524(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
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
    80001658:	dc8080e7          	jalr	-568(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	e2c080e7          	jalr	-468(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	b3050513          	addi	a0,a0,-1232 # 80009198 <CONSOLE_STATUS+0x188>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	dac080e7          	jalr	-596(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
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

00000000800016b8 <_Z4f1_2Pv>:
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	01213023          	sd	s2,0(sp)
    800016cc:	02010413          	addi	s0,sp,32
    Riscv::printString("f1_2 started\n");
    800016d0:	00008517          	auipc	a0,0x8
    800016d4:	99850513          	addi	a0,a0,-1640 # 80009068 <CONSOLE_STATUS+0x58>
    800016d8:	00002097          	auipc	ra,0x2
    800016dc:	d44080e7          	jalr	-700(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800016e0:	00000493          	li	s1,0
    800016e4:	00c0006f          	j	800016f0 <_Z4f1_2Pv+0x38>
            thread_exit();
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	c5c080e7          	jalr	-932(ra) # 80001344 <thread_exit>
        x++;
    800016f0:	0014849b          	addiw	s1,s1,1
        s1->wait();
    800016f4:	0000a917          	auipc	s2,0xa
    800016f8:	1ac90913          	addi	s2,s2,428 # 8000b8a0 <_ZL2s1>
    800016fc:	00093503          	ld	a0,0(s2)
    80001700:	00002097          	auipc	ra,0x2
    80001704:	a9c080e7          	jalr	-1380(ra) # 8000319c <_ZN9Semaphore4waitEv>
        __putc('1');
    80001708:	03100513          	li	a0,49
    8000170c:	00006097          	auipc	ra,0x6
    80001710:	7e0080e7          	jalr	2016(ra) # 80007eec <__putc>
        __putc('\n');
    80001714:	00a00513          	li	a0,10
    80001718:	00006097          	auipc	ra,0x6
    8000171c:	7d4080e7          	jalr	2004(ra) # 80007eec <__putc>
        s2->signal();
    80001720:	00893503          	ld	a0,8(s2)
    80001724:	00002097          	auipc	ra,0x2
    80001728:	afc080e7          	jalr	-1284(ra) # 80003220 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    8000172c:	000017b7          	lui	a5,0x1
    80001730:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80001734:	fa97cae3          	blt	a5,s1,800016e8 <_Z4f1_2Pv+0x30>
            thread_dispatch();
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	bec080e7          	jalr	-1044(ra) # 80001324 <thread_dispatch>
    80001740:	fb1ff06f          	j	800016f0 <_Z4f1_2Pv+0x38>

0000000080001744 <_Z4f2_2Pv>:
{
    80001744:	fe010113          	addi	sp,sp,-32
    80001748:	00113c23          	sd	ra,24(sp)
    8000174c:	00813823          	sd	s0,16(sp)
    80001750:	00913423          	sd	s1,8(sp)
    80001754:	01213023          	sd	s2,0(sp)
    80001758:	02010413          	addi	s0,sp,32
    Riscv::printString("f2_2 started\n");
    8000175c:	00008517          	auipc	a0,0x8
    80001760:	91c50513          	addi	a0,a0,-1764 # 80009078 <CONSOLE_STATUS+0x68>
    80001764:	00002097          	auipc	ra,0x2
    80001768:	cb8080e7          	jalr	-840(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    int x = 0;
    8000176c:	00000493          	li	s1,0
    80001770:	00c0006f          	j	8000177c <_Z4f2_2Pv+0x38>
            thread_exit();
    80001774:	00000097          	auipc	ra,0x0
    80001778:	bd0080e7          	jalr	-1072(ra) # 80001344 <thread_exit>
        x++;
    8000177c:	0014849b          	addiw	s1,s1,1
        s2->wait();
    80001780:	0000a917          	auipc	s2,0xa
    80001784:	12090913          	addi	s2,s2,288 # 8000b8a0 <_ZL2s1>
    80001788:	00893503          	ld	a0,8(s2)
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	a10080e7          	jalr	-1520(ra) # 8000319c <_ZN9Semaphore4waitEv>
        __putc('2');
    80001794:	03200513          	li	a0,50
    80001798:	00006097          	auipc	ra,0x6
    8000179c:	754080e7          	jalr	1876(ra) # 80007eec <__putc>
        __putc('\n');
    800017a0:	00a00513          	li	a0,10
    800017a4:	00006097          	auipc	ra,0x6
    800017a8:	748080e7          	jalr	1864(ra) # 80007eec <__putc>
        s3->signal();
    800017ac:	01093503          	ld	a0,16(s2)
    800017b0:	00002097          	auipc	ra,0x2
    800017b4:	a70080e7          	jalr	-1424(ra) # 80003220 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    800017b8:	000017b7          	lui	a5,0x1
    800017bc:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    800017c0:	fa97cae3          	blt	a5,s1,80001774 <_Z4f2_2Pv+0x30>
            thread_dispatch();
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	b60080e7          	jalr	-1184(ra) # 80001324 <thread_dispatch>
    800017cc:	fb1ff06f          	j	8000177c <_Z4f2_2Pv+0x38>

00000000800017d0 <_Z4f3_2Pv>:
{
    800017d0:	fe010113          	addi	sp,sp,-32
    800017d4:	00113c23          	sd	ra,24(sp)
    800017d8:	00813823          	sd	s0,16(sp)
    800017dc:	00913423          	sd	s1,8(sp)
    800017e0:	01213023          	sd	s2,0(sp)
    800017e4:	02010413          	addi	s0,sp,32
    Riscv::printString("f3_2 started\n");
    800017e8:	00008517          	auipc	a0,0x8
    800017ec:	8a050513          	addi	a0,a0,-1888 # 80009088 <CONSOLE_STATUS+0x78>
    800017f0:	00002097          	auipc	ra,0x2
    800017f4:	c2c080e7          	jalr	-980(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800017f8:	00000493          	li	s1,0
    800017fc:	00c0006f          	j	80001808 <_Z4f3_2Pv+0x38>
            thread_exit();
    80001800:	00000097          	auipc	ra,0x0
    80001804:	b44080e7          	jalr	-1212(ra) # 80001344 <thread_exit>
        x++;
    80001808:	0014849b          	addiw	s1,s1,1
        s3->wait();
    8000180c:	0000a917          	auipc	s2,0xa
    80001810:	09490913          	addi	s2,s2,148 # 8000b8a0 <_ZL2s1>
    80001814:	01093503          	ld	a0,16(s2)
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	984080e7          	jalr	-1660(ra) # 8000319c <_ZN9Semaphore4waitEv>
        __putc('3');
    80001820:	03300513          	li	a0,51
    80001824:	00006097          	auipc	ra,0x6
    80001828:	6c8080e7          	jalr	1736(ra) # 80007eec <__putc>
        __putc('\n');
    8000182c:	00a00513          	li	a0,10
    80001830:	00006097          	auipc	ra,0x6
    80001834:	6bc080e7          	jalr	1724(ra) # 80007eec <__putc>
        s1->signal();
    80001838:	00093503          	ld	a0,0(s2)
    8000183c:	00002097          	auipc	ra,0x2
    80001840:	9e4080e7          	jalr	-1564(ra) # 80003220 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    80001844:	000017b7          	lui	a5,0x1
    80001848:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    8000184c:	fa97cae3          	blt	a5,s1,80001800 <_Z4f3_2Pv+0x30>
            thread_dispatch();
    80001850:	00000097          	auipc	ra,0x0
    80001854:	ad4080e7          	jalr	-1324(ra) # 80001324 <thread_dispatch>
    80001858:	fb1ff06f          	j	80001808 <_Z4f3_2Pv+0x38>

000000008000185c <_Z11threadTest1v>:
{
    8000185c:	fe010113          	addi	sp,sp,-32
    80001860:	00113c23          	sd	ra,24(sp)
    80001864:	00813823          	sd	s0,16(sp)
    80001868:	00913423          	sd	s1,8(sp)
    8000186c:	01213023          	sd	s2,0(sp)
    80001870:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001874:	02000513          	li	a0,32
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	720080e7          	jalr	1824(ra) # 80002f98 <_Znwm>
    80001880:	00050493          	mv	s1,a0
    80001884:	00000613          	li	a2,0
    80001888:	00000597          	auipc	a1,0x0
    8000188c:	bf858593          	addi	a1,a1,-1032 # 80001480 <_Z15thread1FunctionPv>
    80001890:	00002097          	auipc	ra,0x2
    80001894:	8a4080e7          	jalr	-1884(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001898:	00048513          	mv	a0,s1
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	7cc080e7          	jalr	1996(ra) # 80003068 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    800018a4:	02000513          	li	a0,32
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	6f0080e7          	jalr	1776(ra) # 80002f98 <_Znwm>
    800018b0:	00050913          	mv	s2,a0
    800018b4:	00000613          	li	a2,0
    800018b8:	00000597          	auipc	a1,0x0
    800018bc:	c6058593          	addi	a1,a1,-928 # 80001518 <_Z15thread2FunctionPv>
    800018c0:	00002097          	auipc	ra,0x2
    800018c4:	874080e7          	jalr	-1932(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800018c8:	00090513          	mv	a0,s2
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	79c080e7          	jalr	1948(ra) # 80003068 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	ac0080e7          	jalr	-1344(ra) # 80003394 <_ZN5Riscv16enableInterruptsEv>
    800018dc:	01c0006f          	j	800018f8 <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    800018e0:	00007517          	auipc	a0,0x7
    800018e4:	7b850513          	addi	a0,a0,1976 # 80009098 <CONSOLE_STATUS+0x88>
    800018e8:	00002097          	auipc	ra,0x2
    800018ec:	b34080e7          	jalr	-1228(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	a34080e7          	jalr	-1484(ra) # 80001324 <thread_dispatch>
    while(((PCB*)(t1->myHandle))->getState() != PCB::FINISHED || ((PCB*)(t2->myHandle))->getState()!= PCB::FINISHED)
    800018f8:	0084b783          	ld	a5,8(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800018fc:	0387a703          	lw	a4,56(a5)
    80001900:	00300793          	li	a5,3
    80001904:	fcf71ee3          	bne	a4,a5,800018e0 <_Z11threadTest1v+0x84>
    80001908:	00893783          	ld	a5,8(s2)
    8000190c:	0387a703          	lw	a4,56(a5)
    80001910:	00300793          	li	a5,3
    80001914:	fcf716e3          	bne	a4,a5,800018e0 <_Z11threadTest1v+0x84>
    Riscv::printString("End...\n");
    80001918:	00007517          	auipc	a0,0x7
    8000191c:	79050513          	addi	a0,a0,1936 # 800090a8 <CONSOLE_STATUS+0x98>
    80001920:	00002097          	auipc	ra,0x2
    80001924:	afc080e7          	jalr	-1284(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001928:	00002097          	auipc	ra,0x2
    8000192c:	a8c080e7          	jalr	-1396(ra) # 800033b4 <_ZN5Riscv17disableInterruptsEv>
}
    80001930:	01813083          	ld	ra,24(sp)
    80001934:	01013403          	ld	s0,16(sp)
    80001938:	00813483          	ld	s1,8(sp)
    8000193c:	00013903          	ld	s2,0(sp)
    80001940:	02010113          	addi	sp,sp,32
    80001944:	00008067          	ret
    80001948:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00001097          	auipc	ra,0x1
    80001954:	670080e7          	jalr	1648(ra) # 80002fc0 <_ZdlPv>
    80001958:	00090513          	mv	a0,s2
    8000195c:	0000b097          	auipc	ra,0xb
    80001960:	0cc080e7          	jalr	204(ra) # 8000ca28 <_Unwind_Resume>
    80001964:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	00090513          	mv	a0,s2
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	654080e7          	jalr	1620(ra) # 80002fc0 <_ZdlPv>
    80001974:	00048513          	mv	a0,s1
    80001978:	0000b097          	auipc	ra,0xb
    8000197c:	0b0080e7          	jalr	176(ra) # 8000ca28 <_Unwind_Resume>

0000000080001980 <_Z11threadTest2v>:
{
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	01213023          	sd	s2,0(sp)
    80001994:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001998:	02000513          	li	a0,32
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	5fc080e7          	jalr	1532(ra) # 80002f98 <_Znwm>
    800019a4:	00050493          	mv	s1,a0
    800019a8:	00000613          	li	a2,0
    800019ac:	00000597          	auipc	a1,0x0
    800019b0:	aa858593          	addi	a1,a1,-1368 # 80001454 <_Z4idlePv>
    800019b4:	00001097          	auipc	ra,0x1
    800019b8:	780080e7          	jalr	1920(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	6a8080e7          	jalr	1704(ra) # 80003068 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800019c8:	02000513          	li	a0,32
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	5cc080e7          	jalr	1484(ra) # 80002f98 <_Znwm>
    800019d4:	00050913          	mv	s2,a0
    800019d8:	00000613          	li	a2,0
    800019dc:	00000597          	auipc	a1,0x0
    800019e0:	aa458593          	addi	a1,a1,-1372 # 80001480 <_Z15thread1FunctionPv>
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	750080e7          	jalr	1872(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800019ec:	00090513          	mv	a0,s2
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	678080e7          	jalr	1656(ra) # 80003068 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    800019f8:	02000513          	li	a0,32
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	59c080e7          	jalr	1436(ra) # 80002f98 <_Znwm>
    80001a04:	00050913          	mv	s2,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	c0058593          	addi	a1,a1,-1024 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	720080e7          	jalr	1824(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	648080e7          	jalr	1608(ra) # 80003068 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a28:	00002097          	auipc	ra,0x2
    80001a2c:	96c080e7          	jalr	-1684(ra) # 80003394 <_ZN5Riscv16enableInterruptsEv>
    while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);
    80001a30:	0084b783          	ld	a5,8(s1)
    80001a34:	0387a703          	lw	a4,56(a5)
    80001a38:	00300793          	li	a5,3
    80001a3c:	fef71ae3          	bne	a4,a5,80001a30 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001a40:	00007517          	auipc	a0,0x7
    80001a44:	66850513          	addi	a0,a0,1640 # 800090a8 <CONSOLE_STATUS+0x98>
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	9d4080e7          	jalr	-1580(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	964080e7          	jalr	-1692(ra) # 800033b4 <_ZN5Riscv17disableInterruptsEv>
}
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	00013903          	ld	s2,0(sp)
    80001a68:	02010113          	addi	sp,sp,32
    80001a6c:	00008067          	ret
    80001a70:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	548080e7          	jalr	1352(ra) # 80002fc0 <_ZdlPv>
    80001a80:	00090513          	mv	a0,s2
    80001a84:	0000b097          	auipc	ra,0xb
    80001a88:	fa4080e7          	jalr	-92(ra) # 8000ca28 <_Unwind_Resume>
    80001a8c:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	52c080e7          	jalr	1324(ra) # 80002fc0 <_ZdlPv>
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	0000b097          	auipc	ra,0xb
    80001aa4:	f88080e7          	jalr	-120(ra) # 8000ca28 <_Unwind_Resume>
    80001aa8:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001aac:	00090513          	mv	a0,s2
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	510080e7          	jalr	1296(ra) # 80002fc0 <_ZdlPv>
    80001ab8:	00048513          	mv	a0,s1
    80001abc:	0000b097          	auipc	ra,0xb
    80001ac0:	f6c080e7          	jalr	-148(ra) # 8000ca28 <_Unwind_Resume>

0000000080001ac4 <_Z10mallocFreev>:
{
    80001ac4:	cc010113          	addi	sp,sp,-832
    80001ac8:	32113c23          	sd	ra,824(sp)
    80001acc:	32813823          	sd	s0,816(sp)
    80001ad0:	32913423          	sd	s1,808(sp)
    80001ad4:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001ad8:	00007517          	auipc	a0,0x7
    80001adc:	5d850513          	addi	a0,a0,1496 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001ae0:	00002097          	auipc	ra,0x2
    80001ae4:	93c080e7          	jalr	-1732(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001ae8:	00000493          	li	s1,0
    80001aec:	0080006f          	j	80001af4 <_Z10mallocFreev+0x30>
    80001af0:	0014849b          	addiw	s1,s1,1
    80001af4:	06300793          	li	a5,99
    80001af8:	0497c463          	blt	a5,s1,80001b40 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001afc:	06400513          	li	a0,100
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	748080e7          	jalr	1864(ra) # 80001248 <mem_alloc>
    80001b08:	00349793          	slli	a5,s1,0x3
    80001b0c:	fe040713          	addi	a4,s0,-32
    80001b10:	00f707b3          	add	a5,a4,a5
    80001b14:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b18:	fc051ce3          	bnez	a0,80001af0 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001b1c:	00007517          	auipc	a0,0x7
    80001b20:	5a450513          	addi	a0,a0,1444 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001b24:	00002097          	auipc	ra,0x2
    80001b28:	8f8080e7          	jalr	-1800(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
}
    80001b2c:	33813083          	ld	ra,824(sp)
    80001b30:	33013403          	ld	s0,816(sp)
    80001b34:	32813483          	ld	s1,808(sp)
    80001b38:	34010113          	addi	sp,sp,832
    80001b3c:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b40:	00000493          	li	s1,0
    80001b44:	06300793          	li	a5,99
    80001b48:	0297ce63          	blt	a5,s1,80001b84 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b4c:	00349793          	slli	a5,s1,0x3
    80001b50:	fe040713          	addi	a4,s0,-32
    80001b54:	00f707b3          	add	a5,a4,a5
    80001b58:	ce07b503          	ld	a0,-800(a5)
    80001b5c:	fffff097          	auipc	ra,0xfffff
    80001b60:	71c080e7          	jalr	1820(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001b64:	00051663          	bnez	a0,80001b70 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001b68:	0024849b          	addiw	s1,s1,2
    80001b6c:	fd9ff06f          	j	80001b44 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001b70:	00007517          	auipc	a0,0x7
    80001b74:	55050513          	addi	a0,a0,1360 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001b78:	00002097          	auipc	ra,0x2
    80001b7c:	8a4080e7          	jalr	-1884(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
            return;
    80001b80:	fadff06f          	j	80001b2c <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001b84:	00000493          	li	s1,0
    80001b88:	0080006f          	j	80001b90 <_Z10mallocFreev+0xcc>
    80001b8c:	0024849b          	addiw	s1,s1,2
    80001b90:	06300793          	li	a5,99
    80001b94:	0297cc63          	blt	a5,s1,80001bcc <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001b98:	01400513          	li	a0,20
    80001b9c:	fffff097          	auipc	ra,0xfffff
    80001ba0:	6ac080e7          	jalr	1708(ra) # 80001248 <mem_alloc>
    80001ba4:	00349793          	slli	a5,s1,0x3
    80001ba8:	fe040713          	addi	a4,s0,-32
    80001bac:	00f707b3          	add	a5,a4,a5
    80001bb0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bb4:	fc051ce3          	bnez	a0,80001b8c <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001bb8:	00007517          	auipc	a0,0x7
    80001bbc:	50850513          	addi	a0,a0,1288 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001bc0:	00002097          	auipc	ra,0x2
    80001bc4:	85c080e7          	jalr	-1956(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
            return;
    80001bc8:	f65ff06f          	j	80001b2c <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001bcc:	00000493          	li	s1,0
    80001bd0:	06300793          	li	a5,99
    80001bd4:	0297ce63          	blt	a5,s1,80001c10 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001bd8:	00349793          	slli	a5,s1,0x3
    80001bdc:	fe040713          	addi	a4,s0,-32
    80001be0:	00f707b3          	add	a5,a4,a5
    80001be4:	ce07b503          	ld	a0,-800(a5)
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	690080e7          	jalr	1680(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001bf0:	00051663          	bnez	a0,80001bfc <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001bf4:	0014849b          	addiw	s1,s1,1
    80001bf8:	fd9ff06f          	j	80001bd0 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001bfc:	00007517          	auipc	a0,0x7
    80001c00:	4c450513          	addi	a0,a0,1220 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001c04:	00002097          	auipc	ra,0x2
    80001c08:	818080e7          	jalr	-2024(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
            return;
    80001c0c:	f21ff06f          	j	80001b2c <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c10:	00007517          	auipc	a0,0x7
    80001c14:	4b850513          	addi	a0,a0,1208 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c18:	00002097          	auipc	ra,0x2
    80001c1c:	804080e7          	jalr	-2044(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    80001c20:	f0dff06f          	j	80001b2c <_Z10mallocFreev+0x68>

0000000080001c24 <_Z9bigMallocv>:
{
    80001c24:	ff010113          	addi	sp,sp,-16
    80001c28:	00113423          	sd	ra,8(sp)
    80001c2c:	00813023          	sd	s0,0(sp)
    80001c30:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001c34:	00007517          	auipc	a0,0x7
    80001c38:	49c50513          	addi	a0,a0,1180 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	7e0080e7          	jalr	2016(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c44:	0000a797          	auipc	a5,0xa
    80001c48:	c0c7b783          	ld	a5,-1012(a5) # 8000b850 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c4c:	0007b503          	ld	a0,0(a5)
    80001c50:	0000a797          	auipc	a5,0xa
    80001c54:	bd87b783          	ld	a5,-1064(a5) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c58:	0007b783          	ld	a5,0(a5)
    80001c5c:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001c60:	06450513          	addi	a0,a0,100
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	5e4080e7          	jalr	1508(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001c6c:	02050263          	beqz	a0,80001c90 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001c70:	00007517          	auipc	a0,0x7
    80001c74:	45050513          	addi	a0,a0,1104 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001c78:	00001097          	auipc	ra,0x1
    80001c7c:	7a4080e7          	jalr	1956(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret
        Riscv::printString("OK\n");
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	43850513          	addi	a0,a0,1080 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c98:	00001097          	auipc	ra,0x1
    80001c9c:	784080e7          	jalr	1924(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    80001ca0:	fe1ff06f          	j	80001c80 <_Z9bigMallocv+0x5c>

0000000080001ca4 <_Z17lotOfSmallMallocsv>:
{
    80001ca4:	fd010113          	addi	sp,sp,-48
    80001ca8:	02113423          	sd	ra,40(sp)
    80001cac:	02813023          	sd	s0,32(sp)
    80001cb0:	00913c23          	sd	s1,24(sp)
    80001cb4:	01213823          	sd	s2,16(sp)
    80001cb8:	01313423          	sd	s3,8(sp)
    80001cbc:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001cc0:	00007517          	auipc	a0,0x7
    80001cc4:	42050513          	addi	a0,a0,1056 # 800090e0 <CONSOLE_STATUS+0xd0>
    80001cc8:	00001097          	auipc	ra,0x1
    80001ccc:	754080e7          	jalr	1876(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001cd0:	00000493          	li	s1,0
    uint64 sum = 0;
    80001cd4:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001cd8:	00000913          	li	s2,0
    80001cdc:	0180006f          	j	80001cf4 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001ce0:	00a00793          	li	a5,10
    80001ce4:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001ce8:	00a98993          	addi	s3,s3,10
        cnt++;
    80001cec:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001cf0:	00148493          	addi	s1,s1,1
    80001cf4:	000027b7          	lui	a5,0x2
    80001cf8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001cfc:	0097ea63          	bltu	a5,s1,80001d10 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d00:	00800513          	li	a0,8
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	544080e7          	jalr	1348(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001d0c:	fc051ae3          	bnez	a0,80001ce0 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001d10:	00090513          	mv	a0,s2
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	778080e7          	jalr	1912(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d1c:	00007517          	auipc	a0,0x7
    80001d20:	47c50513          	addi	a0,a0,1148 # 80009198 <CONSOLE_STATUS+0x188>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	6f8080e7          	jalr	1784(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d2c:	00291793          	slli	a5,s2,0x2
    80001d30:	01278933          	add	s2,a5,s2
    80001d34:	00191913          	slli	s2,s2,0x1
    80001d38:	03390863          	beq	s2,s3,80001d68 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d3c:	00007517          	auipc	a0,0x7
    80001d40:	38450513          	addi	a0,a0,900 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	6d8080e7          	jalr	1752(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
}
    80001d4c:	02813083          	ld	ra,40(sp)
    80001d50:	02013403          	ld	s0,32(sp)
    80001d54:	01813483          	ld	s1,24(sp)
    80001d58:	01013903          	ld	s2,16(sp)
    80001d5c:	00813983          	ld	s3,8(sp)
    80001d60:	03010113          	addi	sp,sp,48
    80001d64:	00008067          	ret
        Riscv::printString("OK\n");
    80001d68:	00007517          	auipc	a0,0x7
    80001d6c:	36050513          	addi	a0,a0,864 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	6ac080e7          	jalr	1708(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    80001d78:	fd5ff06f          	j	80001d4c <_Z17lotOfSmallMallocsv+0xa8>

0000000080001d7c <_Z7badFreev>:
{
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00113423          	sd	ra,8(sp)
    80001d84:	00813023          	sd	s0,0(sp)
    80001d88:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001d8c:	00007517          	auipc	a0,0x7
    80001d90:	36c50513          	addi	a0,a0,876 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001d94:	00001097          	auipc	ra,0x1
    80001d98:	688080e7          	jalr	1672(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d9c:	00800513          	li	a0,8
    80001da0:	fffff097          	auipc	ra,0xfffff
    80001da4:	4a8080e7          	jalr	1192(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001da8:	00250513          	addi	a0,a0,2
    80001dac:	fffff097          	auipc	ra,0xfffff
    80001db0:	4cc080e7          	jalr	1228(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001db4:	02051263          	bnez	a0,80001dd8 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001db8:	00007517          	auipc	a0,0x7
    80001dbc:	30850513          	addi	a0,a0,776 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001dc0:	00001097          	auipc	ra,0x1
    80001dc4:	65c080e7          	jalr	1628(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
}
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret
        Riscv::printString("OK\n");
    80001dd8:	00007517          	auipc	a0,0x7
    80001ddc:	2f050513          	addi	a0,a0,752 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	63c080e7          	jalr	1596(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
}
    80001de8:	fe1ff06f          	j	80001dc8 <_Z7badFreev+0x4c>

0000000080001dec <_Z13stressTestingv>:
{
    80001dec:	cc010113          	addi	sp,sp,-832
    80001df0:	32113c23          	sd	ra,824(sp)
    80001df4:	32813823          	sd	s0,816(sp)
    80001df8:	32913423          	sd	s1,808(sp)
    80001dfc:	33213023          	sd	s2,800(sp)
    80001e00:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001e04:	00007517          	auipc	a0,0x7
    80001e08:	30450513          	addi	a0,a0,772 # 80009108 <CONSOLE_STATUS+0xf8>
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	610080e7          	jalr	1552(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001e14:	00000493          	li	s1,0
    80001e18:	0080006f          	j	80001e20 <_Z13stressTestingv+0x34>
    80001e1c:	0014849b          	addiw	s1,s1,1
    80001e20:	06300793          	li	a5,99
    80001e24:	0297ce63          	blt	a5,s1,80001e60 <_Z13stressTestingv+0x74>
        addrs[i] = mem_alloc(1);
    80001e28:	00100513          	li	a0,1
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	41c080e7          	jalr	1052(ra) # 80001248 <mem_alloc>
    80001e34:	00349793          	slli	a5,s1,0x3
    80001e38:	fe040713          	addi	a4,s0,-32
    80001e3c:	00f707b3          	add	a5,a4,a5
    80001e40:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001e44:	fc051ce3          	bnez	a0,80001e1c <_Z13stressTestingv+0x30>
}
    80001e48:	33813083          	ld	ra,824(sp)
    80001e4c:	33013403          	ld	s0,816(sp)
    80001e50:	32813483          	ld	s1,808(sp)
    80001e54:	32013903          	ld	s2,800(sp)
    80001e58:	34010113          	addi	sp,sp,832
    80001e5c:	00008067          	ret
    int sz = 300;
    80001e60:	12c00913          	li	s2,300
    while(sz > 0)
    80001e64:	0b205a63          	blez	s2,80001f18 <_Z13stressTestingv+0x12c>
        for(int i = 0 ; i < num;i+=2)
    80001e68:	00000493          	li	s1,0
    80001e6c:	06300793          	li	a5,99
    80001e70:	0497c863          	blt	a5,s1,80001ec0 <_Z13stressTestingv+0xd4>
            int retval = mem_free(addrs[i]);
    80001e74:	00349793          	slli	a5,s1,0x3
    80001e78:	fe040713          	addi	a4,s0,-32
    80001e7c:	00f707b3          	add	a5,a4,a5
    80001e80:	ce07b503          	ld	a0,-800(a5)
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	3f4080e7          	jalr	1012(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001e8c:	fa051ee3          	bnez	a0,80001e48 <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz/2);
    80001e90:	01f9551b          	srliw	a0,s2,0x1f
    80001e94:	0125053b          	addw	a0,a0,s2
    80001e98:	4015551b          	sraiw	a0,a0,0x1
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	3ac080e7          	jalr	940(ra) # 80001248 <mem_alloc>
    80001ea4:	00349793          	slli	a5,s1,0x3
    80001ea8:	fe040713          	addi	a4,s0,-32
    80001eac:	00f707b3          	add	a5,a4,a5
    80001eb0:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001eb4:	f8050ae3          	beqz	a0,80001e48 <_Z13stressTestingv+0x5c>
        for(int i = 0 ; i < num;i+=2)
    80001eb8:	0024849b          	addiw	s1,s1,2
    80001ebc:	fb1ff06f          	j	80001e6c <_Z13stressTestingv+0x80>
        for(int i = 1 ; i < num;i+=2)
    80001ec0:	00100493          	li	s1,1
    80001ec4:	06300793          	li	a5,99
    80001ec8:	0497c463          	blt	a5,s1,80001f10 <_Z13stressTestingv+0x124>
            int retval = mem_free(addrs[i]);
    80001ecc:	00349793          	slli	a5,s1,0x3
    80001ed0:	fe040713          	addi	a4,s0,-32
    80001ed4:	00f707b3          	add	a5,a4,a5
    80001ed8:	ce07b503          	ld	a0,-800(a5)
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	39c080e7          	jalr	924(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001ee4:	f60512e3          	bnez	a0,80001e48 <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz);
    80001ee8:	00090513          	mv	a0,s2
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	35c080e7          	jalr	860(ra) # 80001248 <mem_alloc>
    80001ef4:	00349793          	slli	a5,s1,0x3
    80001ef8:	fe040713          	addi	a4,s0,-32
    80001efc:	00f707b3          	add	a5,a4,a5
    80001f00:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f04:	f40502e3          	beqz	a0,80001e48 <_Z13stressTestingv+0x5c>
        for(int i = 1 ; i < num;i+=2)
    80001f08:	0024849b          	addiw	s1,s1,2
    80001f0c:	fb9ff06f          	j	80001ec4 <_Z13stressTestingv+0xd8>
        sz-=10;
    80001f10:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001f14:	f51ff06f          	j	80001e64 <_Z13stressTestingv+0x78>
    Riscv::printString("OK\n");
    80001f18:	00007517          	auipc	a0,0x7
    80001f1c:	1b050513          	addi	a0,a0,432 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	4fc080e7          	jalr	1276(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    80001f28:	f21ff06f          	j	80001e48 <_Z13stressTestingv+0x5c>

0000000080001f2c <_Z21memoryAllocationTestsv>:
{
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00113423          	sd	ra,8(sp)
    80001f34:	00813023          	sd	s0,0(sp)
    80001f38:	01010413          	addi	s0,sp,16
    stressTesting();
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	eb0080e7          	jalr	-336(ra) # 80001dec <_Z13stressTestingv>
}
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_Z3foov>:
{
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	02010413          	addi	s0,sp,32
    s11->wait();
    80001f68:	0000a497          	auipc	s1,0xa
    80001f6c:	93848493          	addi	s1,s1,-1736 # 8000b8a0 <_ZL2s1>
    80001f70:	0184b503          	ld	a0,24(s1)
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	228080e7          	jalr	552(ra) # 8000319c <_ZN9Semaphore4waitEv>
    Riscv::printString("foo exec\n");
    80001f7c:	00007517          	auipc	a0,0x7
    80001f80:	19c50513          	addi	a0,a0,412 # 80009118 <CONSOLE_STATUS+0x108>
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	498080e7          	jalr	1176(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    s22->signal();
    80001f8c:	0204b503          	ld	a0,32(s1)
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	290080e7          	jalr	656(ra) # 80003220 <_ZN9Semaphore6signalEv>
}
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_Z4foo2v>:
{
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00113423          	sd	ra,8(sp)
    80001fb4:	00813023          	sd	s0,0(sp)
    80001fb8:	01010413          	addi	s0,sp,16
    s22->wait();
    80001fbc:	0000a517          	auipc	a0,0xa
    80001fc0:	90453503          	ld	a0,-1788(a0) # 8000b8c0 <_ZL3s22>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	1d8080e7          	jalr	472(ra) # 8000319c <_ZN9Semaphore4waitEv>
    Riscv::printString("foo2 exec\n");
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	15c50513          	addi	a0,a0,348 # 80009128 <CONSOLE_STATUS+0x118>
    80001fd4:	00001097          	auipc	ra,0x1
    80001fd8:	448080e7          	jalr	1096(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_Z2f2Pv>:
{
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00113c23          	sd	ra,24(sp)
    80001ff4:	00813823          	sd	s0,16(sp)
    80001ff8:	00913423          	sd	s1,8(sp)
    80001ffc:	02010413          	addi	s0,sp,32
    Riscv::printString("f2 started\n");
    80002000:	00007517          	auipc	a0,0x7
    80002004:	13850513          	addi	a0,a0,312 # 80009138 <CONSOLE_STATUS+0x128>
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	414080e7          	jalr	1044(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    for(int br = 0;br < 1;br++)
    80002010:	00000493          	li	s1,0
    80002014:	00904a63          	bgtz	s1,80002028 <_Z2f2Pv+0x3c>
        foo2();
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	f94080e7          	jalr	-108(ra) # 80001fac <_Z4foo2v>
    for(int br = 0;br < 1;br++)
    80002020:	0014849b          	addiw	s1,s1,1
    80002024:	ff1ff06f          	j	80002014 <_Z2f2Pv+0x28>
}
    80002028:	01813083          	ld	ra,24(sp)
    8000202c:	01013403          	ld	s0,16(sp)
    80002030:	00813483          	ld	s1,8(sp)
    80002034:	02010113          	addi	sp,sp,32
    80002038:	00008067          	ret

000000008000203c <_Z2f1Pv>:
{
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	00913423          	sd	s1,8(sp)
    8000204c:	02010413          	addi	s0,sp,32
    Riscv::printString("f1 started\n");
    80002050:	00007517          	auipc	a0,0x7
    80002054:	0f850513          	addi	a0,a0,248 # 80009148 <CONSOLE_STATUS+0x138>
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	3c4080e7          	jalr	964(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    for(int br = 0;br < 2;br++)
    80002060:	00000493          	li	s1,0
    80002064:	0100006f          	j	80002074 <_Z2f1Pv+0x38>
        foo();
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	eec080e7          	jalr	-276(ra) # 80001f54 <_Z3foov>
    for(int br = 0;br < 2;br++)
    80002070:	0014849b          	addiw	s1,s1,1
    80002074:	00100793          	li	a5,1
    80002078:	fe97d8e3          	bge	a5,s1,80002068 <_Z2f1Pv+0x2c>
}
    8000207c:	01813083          	ld	ra,24(sp)
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	00813483          	ld	s1,8(sp)
    80002088:	02010113          	addi	sp,sp,32
    8000208c:	00008067          	ret

0000000080002090 <_Z8semTest1v>:
{
    80002090:	fe010113          	addi	sp,sp,-32
    80002094:	00113c23          	sd	ra,24(sp)
    80002098:	00813823          	sd	s0,16(sp)
    8000209c:	00913423          	sd	s1,8(sp)
    800020a0:	01213023          	sd	s2,0(sp)
    800020a4:	02010413          	addi	s0,sp,32
    mutex = new Semaphore(1);
    800020a8:	01000513          	li	a0,16
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	eec080e7          	jalr	-276(ra) # 80002f98 <_Znwm>
    800020b4:	00050913          	mv	s2,a0
    800020b8:	00100593          	li	a1,1
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	118080e7          	jalr	280(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    s11 = new Semaphore(1);
    800020c4:	01000513          	li	a0,16
    800020c8:	00001097          	auipc	ra,0x1
    800020cc:	ed0080e7          	jalr	-304(ra) # 80002f98 <_Znwm>
    800020d0:	00050493          	mv	s1,a0
    800020d4:	00100593          	li	a1,1
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	0fc080e7          	jalr	252(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    800020e0:	00009797          	auipc	a5,0x9
    800020e4:	7c97bc23          	sd	s1,2008(a5) # 8000b8b8 <_ZL3s11>
    s22 = new Semaphore(0);
    800020e8:	01000513          	li	a0,16
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	eac080e7          	jalr	-340(ra) # 80002f98 <_Znwm>
    800020f4:	00050493          	mv	s1,a0
    800020f8:	00000593          	li	a1,0
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	0d8080e7          	jalr	216(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    80002104:	00009797          	auipc	a5,0x9
    80002108:	7a97be23          	sd	s1,1980(a5) # 8000b8c0 <_ZL3s22>
    Thread* t2 = new Thread(&f2, 0);
    8000210c:	02000513          	li	a0,32
    80002110:	00001097          	auipc	ra,0x1
    80002114:	e88080e7          	jalr	-376(ra) # 80002f98 <_Znwm>
    80002118:	00050913          	mv	s2,a0
    8000211c:	00000613          	li	a2,0
    80002120:	00000597          	auipc	a1,0x0
    80002124:	ecc58593          	addi	a1,a1,-308 # 80001fec <_Z2f2Pv>
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	00c080e7          	jalr	12(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80002130:	00090513          	mv	a0,s2
    80002134:	00001097          	auipc	ra,0x1
    80002138:	f34080e7          	jalr	-204(ra) # 80003068 <_ZN6Thread5startEv>
    thread_dispatch();
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	1e8080e7          	jalr	488(ra) # 80001324 <thread_dispatch>
    while(true)
    80002144:	0000006f          	j	80002144 <_Z8semTest1v+0xb4>
    80002148:	00050493          	mv	s1,a0
    mutex = new Semaphore(1);
    8000214c:	00090513          	mv	a0,s2
    80002150:	00001097          	auipc	ra,0x1
    80002154:	e70080e7          	jalr	-400(ra) # 80002fc0 <_ZdlPv>
    80002158:	00048513          	mv	a0,s1
    8000215c:	0000b097          	auipc	ra,0xb
    80002160:	8cc080e7          	jalr	-1844(ra) # 8000ca28 <_Unwind_Resume>
    80002164:	00050913          	mv	s2,a0
    s11 = new Semaphore(1);
    80002168:	00048513          	mv	a0,s1
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	e54080e7          	jalr	-428(ra) # 80002fc0 <_ZdlPv>
    80002174:	00090513          	mv	a0,s2
    80002178:	0000b097          	auipc	ra,0xb
    8000217c:	8b0080e7          	jalr	-1872(ra) # 8000ca28 <_Unwind_Resume>
    80002180:	00050913          	mv	s2,a0
    s22 = new Semaphore(0);
    80002184:	00048513          	mv	a0,s1
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	e38080e7          	jalr	-456(ra) # 80002fc0 <_ZdlPv>
    80002190:	00090513          	mv	a0,s2
    80002194:	0000b097          	auipc	ra,0xb
    80002198:	894080e7          	jalr	-1900(ra) # 8000ca28 <_Unwind_Resume>
    8000219c:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2, 0);
    800021a0:	00090513          	mv	a0,s2
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	e1c080e7          	jalr	-484(ra) # 80002fc0 <_ZdlPv>
    800021ac:	00048513          	mv	a0,s1
    800021b0:	0000b097          	auipc	ra,0xb
    800021b4:	878080e7          	jalr	-1928(ra) # 8000ca28 <_Unwind_Resume>

00000000800021b8 <_Z8semTest2v>:
{
    800021b8:	fd010113          	addi	sp,sp,-48
    800021bc:	02113423          	sd	ra,40(sp)
    800021c0:	02813023          	sd	s0,32(sp)
    800021c4:	00913c23          	sd	s1,24(sp)
    800021c8:	01213823          	sd	s2,16(sp)
    800021cc:	01313423          	sd	s3,8(sp)
    800021d0:	03010413          	addi	s0,sp,48
    s1 = new Semaphore(1);
    800021d4:	01000513          	li	a0,16
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	dc0080e7          	jalr	-576(ra) # 80002f98 <_Znwm>
    800021e0:	00050493          	mv	s1,a0
    800021e4:	00100593          	li	a1,1
    800021e8:	00001097          	auipc	ra,0x1
    800021ec:	fec080e7          	jalr	-20(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    800021f0:	00009797          	auipc	a5,0x9
    800021f4:	6a97b823          	sd	s1,1712(a5) # 8000b8a0 <_ZL2s1>
    s2 = new Semaphore(0);
    800021f8:	01000513          	li	a0,16
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	d9c080e7          	jalr	-612(ra) # 80002f98 <_Znwm>
    80002204:	00050493          	mv	s1,a0
    80002208:	00000593          	li	a1,0
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	fc8080e7          	jalr	-56(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    80002214:	00009797          	auipc	a5,0x9
    80002218:	6897ba23          	sd	s1,1684(a5) # 8000b8a8 <_ZL2s2>
    s3 = new Semaphore(0);
    8000221c:	01000513          	li	a0,16
    80002220:	00001097          	auipc	ra,0x1
    80002224:	d78080e7          	jalr	-648(ra) # 80002f98 <_Znwm>
    80002228:	00050493          	mv	s1,a0
    8000222c:	00000593          	li	a1,0
    80002230:	00001097          	auipc	ra,0x1
    80002234:	fa4080e7          	jalr	-92(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    80002238:	00009797          	auipc	a5,0x9
    8000223c:	6697bc23          	sd	s1,1656(a5) # 8000b8b0 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    80002240:	02000513          	li	a0,32
    80002244:	00001097          	auipc	ra,0x1
    80002248:	d54080e7          	jalr	-684(ra) # 80002f98 <_Znwm>
    8000224c:	00050993          	mv	s3,a0
    80002250:	00000613          	li	a2,0
    80002254:	fffff597          	auipc	a1,0xfffff
    80002258:	46458593          	addi	a1,a1,1124 # 800016b8 <_Z4f1_2Pv>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	ed8080e7          	jalr	-296(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    80002264:	02000513          	li	a0,32
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	d30080e7          	jalr	-720(ra) # 80002f98 <_Znwm>
    80002270:	00050913          	mv	s2,a0
    80002274:	00000613          	li	a2,0
    80002278:	fffff597          	auipc	a1,0xfffff
    8000227c:	4cc58593          	addi	a1,a1,1228 # 80001744 <_Z4f2_2Pv>
    80002280:	00001097          	auipc	ra,0x1
    80002284:	eb4080e7          	jalr	-332(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    80002288:	02000513          	li	a0,32
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	d0c080e7          	jalr	-756(ra) # 80002f98 <_Znwm>
    80002294:	00050493          	mv	s1,a0
    80002298:	00000613          	li	a2,0
    8000229c:	fffff597          	auipc	a1,0xfffff
    800022a0:	53458593          	addi	a1,a1,1332 # 800017d0 <_Z4f3_2Pv>
    800022a4:	00001097          	auipc	ra,0x1
    800022a8:	e90080e7          	jalr	-368(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	db8080e7          	jalr	-584(ra) # 80003068 <_ZN6Thread5startEv>
    t2->start();
    800022b8:	00090513          	mv	a0,s2
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	dac080e7          	jalr	-596(ra) # 80003068 <_ZN6Thread5startEv>
    t1->start();
    800022c4:	00098513          	mv	a0,s3
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	da0080e7          	jalr	-608(ra) # 80003068 <_ZN6Thread5startEv>
    int y = 0;
    800022d0:	00000493          	li	s1,0
        y++;
    800022d4:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	04c080e7          	jalr	76(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    800022e0:	000317b7          	lui	a5,0x31
    800022e4:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    800022e8:	fef496e3          	bne	s1,a5,800022d4 <_Z8semTest2v+0x11c>
}
    800022ec:	02813083          	ld	ra,40(sp)
    800022f0:	02013403          	ld	s0,32(sp)
    800022f4:	01813483          	ld	s1,24(sp)
    800022f8:	01013903          	ld	s2,16(sp)
    800022fc:	00813983          	ld	s3,8(sp)
    80002300:	03010113          	addi	sp,sp,48
    80002304:	00008067          	ret
    80002308:	00050913          	mv	s2,a0
    s1 = new Semaphore(1);
    8000230c:	00048513          	mv	a0,s1
    80002310:	00001097          	auipc	ra,0x1
    80002314:	cb0080e7          	jalr	-848(ra) # 80002fc0 <_ZdlPv>
    80002318:	00090513          	mv	a0,s2
    8000231c:	0000a097          	auipc	ra,0xa
    80002320:	70c080e7          	jalr	1804(ra) # 8000ca28 <_Unwind_Resume>
    80002324:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    80002328:	00048513          	mv	a0,s1
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	c94080e7          	jalr	-876(ra) # 80002fc0 <_ZdlPv>
    80002334:	00090513          	mv	a0,s2
    80002338:	0000a097          	auipc	ra,0xa
    8000233c:	6f0080e7          	jalr	1776(ra) # 8000ca28 <_Unwind_Resume>
    80002340:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    80002344:	00048513          	mv	a0,s1
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	c78080e7          	jalr	-904(ra) # 80002fc0 <_ZdlPv>
    80002350:	00090513          	mv	a0,s2
    80002354:	0000a097          	auipc	ra,0xa
    80002358:	6d4080e7          	jalr	1748(ra) # 8000ca28 <_Unwind_Resume>
    8000235c:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    80002360:	00098513          	mv	a0,s3
    80002364:	00001097          	auipc	ra,0x1
    80002368:	c5c080e7          	jalr	-932(ra) # 80002fc0 <_ZdlPv>
    8000236c:	00048513          	mv	a0,s1
    80002370:	0000a097          	auipc	ra,0xa
    80002374:	6b8080e7          	jalr	1720(ra) # 8000ca28 <_Unwind_Resume>
    80002378:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    8000237c:	00090513          	mv	a0,s2
    80002380:	00001097          	auipc	ra,0x1
    80002384:	c40080e7          	jalr	-960(ra) # 80002fc0 <_ZdlPv>
    80002388:	00048513          	mv	a0,s1
    8000238c:	0000a097          	auipc	ra,0xa
    80002390:	69c080e7          	jalr	1692(ra) # 8000ca28 <_Unwind_Resume>
    80002394:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    80002398:	00048513          	mv	a0,s1
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	c24080e7          	jalr	-988(ra) # 80002fc0 <_ZdlPv>
    800023a4:	00090513          	mv	a0,s2
    800023a8:	0000a097          	auipc	ra,0xa
    800023ac:	680080e7          	jalr	1664(ra) # 8000ca28 <_Unwind_Resume>

00000000800023b0 <_Z14semaphoreTestsv>:
{
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00113423          	sd	ra,8(sp)
    800023b8:	00813023          	sd	s0,0(sp)
    800023bc:	01010413          	addi	s0,sp,16
    semTest1();
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	cd0080e7          	jalr	-816(ra) # 80002090 <_Z8semTest1v>

00000000800023c8 <_Z7myTestsv>:
{
    800023c8:	ff010113          	addi	sp,sp,-16
    800023cc:	00113423          	sd	ra,8(sp)
    800023d0:	00813023          	sd	s0,0(sp)
    800023d4:	01010413          	addi	s0,sp,16
    semaphoreTests();
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	fd8080e7          	jalr	-40(ra) # 800023b0 <_Z14semaphoreTestsv>

00000000800023e0 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    800023e0:	fe010113          	addi	sp,sp,-32
    800023e4:	00113c23          	sd	ra,24(sp)
    800023e8:	00813823          	sd	s0,16(sp)
    800023ec:	00913423          	sd	s1,8(sp)
    800023f0:	02010413          	addi	s0,sp,32
    800023f4:	00050493          	mv	s1,a0
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	e94080e7          	jalr	-364(ra) # 8000328c <_ZN14PeriodicThreadC1Em>
    80002400:	00009797          	auipc	a5,0x9
    80002404:	31078793          	addi	a5,a5,784 # 8000b710 <_ZTV12TestPeriodic+0x10>
    80002408:	00f4b023          	sd	a5,0(s1)
}
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	00813483          	ld	s1,8(sp)
    80002418:	02010113          	addi	sp,sp,32
    8000241c:	00008067          	ret

0000000080002420 <_Z11threadTest3v>:
{
    80002420:	fe010113          	addi	sp,sp,-32
    80002424:	00113c23          	sd	ra,24(sp)
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	01213023          	sd	s2,0(sp)
    80002434:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80002438:	02800513          	li	a0,40
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	b5c080e7          	jalr	-1188(ra) # 80002f98 <_Znwm>
    80002444:	00050913          	mv	s2,a0
    80002448:	03200593          	li	a1,50
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	f94080e7          	jalr	-108(ra) # 800023e0 <_ZN12TestPeriodicC1Em>
    t->start();
    80002454:	00090513          	mv	a0,s2
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	c10080e7          	jalr	-1008(ra) # 80003068 <_ZN6Thread5startEv>
    while(true)
    80002460:	0000006f          	j	80002460 <_Z11threadTest3v+0x40>
    80002464:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002468:	00090513          	mv	a0,s2
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	b54080e7          	jalr	-1196(ra) # 80002fc0 <_ZdlPv>
    80002474:	00048513          	mv	a0,s1
    80002478:	0000a097          	auipc	ra,0xa
    8000247c:	5b0080e7          	jalr	1456(ra) # 8000ca28 <_Unwind_Resume>

0000000080002480 <_Z11threadTestsv>:
{
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
    threadTest3();
    80002490:	00000097          	auipc	ra,0x0
    80002494:	f90080e7          	jalr	-112(ra) # 80002420 <_Z11threadTest3v>

0000000080002498 <_ZN6Thread3runEv>:
    //ovde je samo za potrebe testiranja
    thread_t myHandle;
protected:
    Thread();

    virtual void run() {}
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00813423          	sd	s0,8(sp)
    800024a0:	01010413          	addi	s0,sp,16
    800024a4:	00813403          	ld	s0,8(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00813423          	sd	s0,8(sp)
    800024b8:	01010413          	addi	s0,sp,16
    800024bc:	00813403          	ld	s0,8(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	00813023          	sd	s0,0(sp)
    800024d4:	01010413          	addi	s0,sp,16
    800024d8:	00009797          	auipc	a5,0x9
    800024dc:	20878793          	addi	a5,a5,520 # 8000b6e0 <_ZTV14PeriodicThread+0x10>
    800024e0:	00f53023          	sd	a5,0(a0)
    800024e4:	00001097          	auipc	ra,0x1
    800024e8:	9f8080e7          	jalr	-1544(ra) # 80002edc <_ZN6ThreadD1Ev>
    800024ec:	00813083          	ld	ra,8(sp)
    800024f0:	00013403          	ld	s0,0(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_ZN14PeriodicThreadD0Ev>:
    800024fc:	fe010113          	addi	sp,sp,-32
    80002500:	00113c23          	sd	ra,24(sp)
    80002504:	00813823          	sd	s0,16(sp)
    80002508:	00913423          	sd	s1,8(sp)
    8000250c:	02010413          	addi	s0,sp,32
    80002510:	00050493          	mv	s1,a0
    80002514:	00009797          	auipc	a5,0x9
    80002518:	1cc78793          	addi	a5,a5,460 # 8000b6e0 <_ZTV14PeriodicThread+0x10>
    8000251c:	00f53023          	sd	a5,0(a0)
    80002520:	00001097          	auipc	ra,0x1
    80002524:	9bc080e7          	jalr	-1604(ra) # 80002edc <_ZN6ThreadD1Ev>
    80002528:	00048513          	mv	a0,s1
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	a94080e7          	jalr	-1388(ra) # 80002fc0 <_ZdlPv>
    80002534:	01813083          	ld	ra,24(sp)
    80002538:	01013403          	ld	s0,16(sp)
    8000253c:	00813483          	ld	s1,8(sp)
    80002540:	02010113          	addi	sp,sp,32
    80002544:	00008067          	ret

0000000080002548 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	00009797          	auipc	a5,0x9
    8000255c:	18878793          	addi	a5,a5,392 # 8000b6e0 <_ZTV14PeriodicThread+0x10>
    80002560:	00f53023          	sd	a5,0(a0)
    80002564:	00001097          	auipc	ra,0x1
    80002568:	978080e7          	jalr	-1672(ra) # 80002edc <_ZN6ThreadD1Ev>
    8000256c:	00813083          	ld	ra,8(sp)
    80002570:	00013403          	ld	s0,0(sp)
    80002574:	01010113          	addi	sp,sp,16
    80002578:	00008067          	ret

000000008000257c <_ZN12TestPeriodicD0Ev>:
    8000257c:	fe010113          	addi	sp,sp,-32
    80002580:	00113c23          	sd	ra,24(sp)
    80002584:	00813823          	sd	s0,16(sp)
    80002588:	00913423          	sd	s1,8(sp)
    8000258c:	02010413          	addi	s0,sp,32
    80002590:	00050493          	mv	s1,a0
    80002594:	00009797          	auipc	a5,0x9
    80002598:	14c78793          	addi	a5,a5,332 # 8000b6e0 <_ZTV14PeriodicThread+0x10>
    8000259c:	00f53023          	sd	a5,0(a0)
    800025a0:	00001097          	auipc	ra,0x1
    800025a4:	93c080e7          	jalr	-1732(ra) # 80002edc <_ZN6ThreadD1Ev>
    800025a8:	00048513          	mv	a0,s1
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	a14080e7          	jalr	-1516(ra) # 80002fc0 <_ZdlPv>
    800025b4:	01813083          	ld	ra,24(sp)
    800025b8:	01013403          	ld	s0,16(sp)
    800025bc:	00813483          	ld	s1,8(sp)
    800025c0:	02010113          	addi	sp,sp,32
    800025c4:	00008067          	ret

00000000800025c8 <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00113423          	sd	ra,8(sp)
    800025d0:	00813023          	sd	s0,0(sp)
    800025d4:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    800025d8:	00007517          	auipc	a0,0x7
    800025dc:	b8050513          	addi	a0,a0,-1152 # 80009158 <CONSOLE_STATUS+0x148>
    800025e0:	00001097          	auipc	ra,0x1
    800025e4:	e3c080e7          	jalr	-452(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    800025e8:	00001097          	auipc	ra,0x1
    800025ec:	e14080e7          	jalr	-492(ra) # 800033fc <_ZN5Riscv10popSppSpieEv>

    //for(uint64 i = 0 ;i < 10000000000UL;i++) {}
    //Riscv::printString("ttttttt\n");

    running->body(running->args);
    800025f0:	00009797          	auipc	a5,0x9
    800025f4:	2d87b783          	ld	a5,728(a5) # 8000b8c8 <_ZN3PCB7runningE>
    800025f8:	0207b703          	ld	a4,32(a5)
    800025fc:	0287b503          	ld	a0,40(a5)
    80002600:	000700e7          	jalr	a4
    //da li ovde treba da se predje u kernel rezim mozda
    //mozda moze da se iskoristi lock za neku promenljivu za PCB::running
    //kako ne bi pristupalo vise niti tome, jer malo je
    //nezgodna promena rezima ovde
    //running->setState(PCB::FINISHED);
    Riscv::printString("PCB finished\n");
    80002604:	00007517          	auipc	a0,0x7
    80002608:	b6c50513          	addi	a0,a0,-1172 # 80009170 <CONSOLE_STATUS+0x160>
    8000260c:	00001097          	auipc	ra,0x1
    80002610:	e10080e7          	jalr	-496(ra) # 8000341c <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    thread_exit();
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	d30080e7          	jalr	-720(ra) # 80001344 <thread_exit>
    //thread_dispatch();
}
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000262c:	fe010113          	addi	sp,sp,-32
    80002630:	00113c23          	sd	ra,24(sp)
    80002634:	00813823          	sd	s0,16(sp)
    80002638:	00913423          	sd	s1,8(sp)
    8000263c:	02010413          	addi	s0,sp,32
    80002640:	00050493          	mv	s1,a0
    })
    80002644:	00050023          	sb	zero,0(a0)
    80002648:	00e53823          	sd	a4,16(a0)
    8000264c:	00053c23          	sd	zero,24(a0)
    80002650:	02b53023          	sd	a1,32(a0)
    80002654:	02c53423          	sd	a2,40(a0)
    80002658:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    8000265c:	000017b7          	lui	a5,0x1
    80002660:	00f686b3          	add	a3,a3,a5
    })
    80002664:	04d53023          	sd	a3,64(a0)
    80002668:	00000797          	auipc	a5,0x0
    8000266c:	f6078793          	addi	a5,a5,-160 # 800025c8 <_ZN3PCB6runnerEv>
    80002670:	04f53423          	sd	a5,72(a0)
    Scheduler::put(this);
    80002674:	00000097          	auipc	ra,0x0
    80002678:	7a0080e7          	jalr	1952(ra) # 80002e14 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    8000267c:	0004b423          	sd	zero,8(s1)
}
    80002680:	01813083          	ld	ra,24(sp)
    80002684:	01013403          	ld	s0,16(sp)
    80002688:	00813483          	ld	s1,8(sp)
    8000268c:	02010113          	addi	sp,sp,32
    80002690:	00008067          	ret

0000000080002694 <_ZN3PCB5sleepEm>:
{
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00813423          	sd	s0,8(sp)
    8000269c:	01010413          	addi	s0,sp,16
}
    800026a0:	00813403          	ld	s0,8(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN3PCB5startEv>:
{
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	758080e7          	jalr	1880(ra) # 80002e14 <_ZN9Scheduler3putEP3PCB>
}
    800026c4:	00813083          	ld	ra,8(sp)
    800026c8:	00013403          	ld	s0,0(sp)
    800026cc:	01010113          	addi	sp,sp,16
    800026d0:	00008067          	ret

00000000800026d4 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800026d4:	fe010113          	addi	sp,sp,-32
    800026d8:	00113c23          	sd	ra,24(sp)
    800026dc:	00813823          	sd	s0,16(sp)
    800026e0:	00913423          	sd	s1,8(sp)
    800026e4:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800026e8:	00009497          	auipc	s1,0x9
    800026ec:	1e04b483          	ld	s1,480(s1) # 8000b8c8 <_ZN3PCB7runningE>
    800026f0:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800026f4:	00100793          	li	a5,1
    800026f8:	04f70063          	beq	a4,a5,80002738 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	76c080e7          	jalr	1900(ra) # 80002e68 <_ZN9Scheduler3getEv>
    80002704:	00009797          	auipc	a5,0x9
    80002708:	1ca7b223          	sd	a0,452(a5) # 8000b8c8 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    8000270c:	00100793          	li	a5,1
    80002710:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    PCB::contextSwitch(&old->context, &running->context);
    80002714:	04050593          	addi	a1,a0,64
    80002718:	04048513          	addi	a0,s1,64
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	b0c080e7          	jalr	-1268(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002724:	01813083          	ld	ra,24(sp)
    80002728:	01013403          	ld	s0,16(sp)
    8000272c:	00813483          	ld	s1,8(sp)
    80002730:	02010113          	addi	sp,sp,32
    80002734:	00008067          	ret
        Scheduler::put(old);
    80002738:	00048513          	mv	a0,s1
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	6d8080e7          	jalr	1752(ra) # 80002e14 <_ZN9Scheduler3putEP3PCB>
    80002744:	fb9ff06f          	j	800026fc <_ZN3PCB8dispatchEv+0x28>

0000000080002748 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00113423          	sd	ra,8(sp)
    80002750:	00813023          	sd	s0,0(sp)
    80002754:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002758:	00001097          	auipc	ra,0x1
    8000275c:	600080e7          	jalr	1536(ra) # 80003d58 <_Z7kmallocm>
}
    80002760:	00813083          	ld	ra,8(sp)
    80002764:	00013403          	ld	s0,0(sp)
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00008067          	ret

0000000080002770 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002770:	ff010113          	addi	sp,sp,-16
    80002774:	00113423          	sd	ra,8(sp)
    80002778:	00813023          	sd	s0,0(sp)
    8000277c:	01010413          	addi	s0,sp,16
    kfree(p);
    80002780:	00001097          	auipc	ra,0x1
    80002784:	600080e7          	jalr	1536(ra) # 80003d80 <_Z5kfreePv>
}
    80002788:	00813083          	ld	ra,8(sp)
    8000278c:	00013403          	ld	s0,0(sp)
    80002790:	01010113          	addi	sp,sp,16
    80002794:	00008067          	ret

0000000080002798 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00113423          	sd	ra,8(sp)
    800027a0:	00813023          	sd	s0,0(sp)
    800027a4:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    800027a8:	03053503          	ld	a0,48(a0)
    800027ac:	00001097          	auipc	ra,0x1
    800027b0:	5d4080e7          	jalr	1492(ra) # 80003d80 <_Z5kfreePv>
}
    800027b4:	00813083          	ld	ra,8(sp)
    800027b8:	00013403          	ld	s0,0(sp)
    800027bc:	01010113          	addi	sp,sp,16
    800027c0:	00008067          	ret

00000000800027c4 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800027c4:	fe010113          	addi	sp,sp,-32
    800027c8:	00113c23          	sd	ra,24(sp)
    800027cc:	00813823          	sd	s0,16(sp)
    800027d0:	00913423          	sd	s1,8(sp)
    800027d4:	01213023          	sd	s2,0(sp)
    800027d8:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800027dc:	05800513          	li	a0,88
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	f68080e7          	jalr	-152(ra) # 80002748 <_ZN3PCBnwEm>
    800027e8:	00050493          	mv	s1,a0
    800027ec:	00000713          	li	a4,0
    800027f0:	00000693          	li	a3,0
    800027f4:	00000613          	li	a2,0
    800027f8:	00000593          	li	a1,0
    800027fc:	00000097          	auipc	ra,0x0
    80002800:	e30080e7          	jalr	-464(ra) # 8000262c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002804:	00100793          	li	a5,1
    80002808:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	65c080e7          	jalr	1628(ra) # 80002e68 <_ZN9Scheduler3getEv>
    80002814:	00009797          	auipc	a5,0x9
    80002818:	0aa7ba23          	sd	a0,180(a5) # 8000b8c8 <_ZN3PCB7runningE>
    8000281c:	00100793          	li	a5,1
    80002820:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002824:	01813083          	ld	ra,24(sp)
    80002828:	01013403          	ld	s0,16(sp)
    8000282c:	00813483          	ld	s1,8(sp)
    80002830:	00013903          	ld	s2,0(sp)
    80002834:	02010113          	addi	sp,sp,32
    80002838:	00008067          	ret
    8000283c:	00050913          	mv	s2,a0
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002840:	00048513          	mv	a0,s1
    80002844:	00000097          	auipc	ra,0x0
    80002848:	f2c080e7          	jalr	-212(ra) # 80002770 <_ZN3PCBdlEPv>
    8000284c:	00090513          	mv	a0,s2
    80002850:	0000a097          	auipc	ra,0xa
    80002854:	1d8080e7          	jalr	472(ra) # 8000ca28 <_Unwind_Resume>

0000000080002858 <_Z41__static_initialization_and_destruction_0ii>:
}

void KConsole::initialize() {
    hasCharacters = new KSemaphore(0);

}
    80002858:	00100793          	li	a5,1
    8000285c:	00f50463          	beq	a0,a5,80002864 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002860:	00008067          	ret
    80002864:	000107b7          	lui	a5,0x10
    80002868:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000286c:	fef59ae3          	bne	a1,a5,80002860 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002870:	fe010113          	addi	sp,sp,-32
    80002874:	00113c23          	sd	ra,24(sp)
    80002878:	00813823          	sd	s0,16(sp)
    8000287c:	00913423          	sd	s1,8(sp)
    80002880:	01213023          	sd	s2,0(sp)
    80002884:	02010413          	addi	s0,sp,32
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);
    80002888:	01800513          	li	a0,24
    8000288c:	00001097          	auipc	ra,0x1
    80002890:	76c080e7          	jalr	1900(ra) # 80003ff8 <_ZN10KSemaphorenwEm>
    80002894:	00050493          	mv	s1,a0
    80002898:	00000593          	li	a1,0
    8000289c:	00001097          	auipc	ra,0x1
    800028a0:	50c080e7          	jalr	1292(ra) # 80003da8 <_ZN10KSemaphoreC1Ei>
    800028a4:	00009797          	auipc	a5,0x9
    800028a8:	0297be23          	sd	s1,60(a5) # 8000b8e0 <_ZN8KConsole13hasCharactersE>
}
    800028ac:	01813083          	ld	ra,24(sp)
    800028b0:	01013403          	ld	s0,16(sp)
    800028b4:	00813483          	ld	s1,8(sp)
    800028b8:	00013903          	ld	s2,0(sp)
    800028bc:	02010113          	addi	sp,sp,32
    800028c0:	00008067          	ret
    800028c4:	00050913          	mv	s2,a0
KSemaphore* KConsole::hasCharacters = new KSemaphore(0);
    800028c8:	00048513          	mv	a0,s1
    800028cc:	00001097          	auipc	ra,0x1
    800028d0:	754080e7          	jalr	1876(ra) # 80004020 <_ZN10KSemaphoredlEPv>
    800028d4:	00090513          	mv	a0,s2
    800028d8:	0000a097          	auipc	ra,0xa
    800028dc:	150080e7          	jalr	336(ra) # 8000ca28 <_Unwind_Resume>

00000000800028e0 <_ZN8KConsole7putCharEc>:
{
    800028e0:	fe010113          	addi	sp,sp,-32
    800028e4:	00113c23          	sd	ra,24(sp)
    800028e8:	00813823          	sd	s0,16(sp)
    800028ec:	00913423          	sd	s1,8(sp)
    800028f0:	02010413          	addi	s0,sp,32
    800028f4:	00050493          	mv	s1,a0
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    800028f8:	01000513          	li	a0,16
    800028fc:	00001097          	auipc	ra,0x1
    80002900:	45c080e7          	jalr	1116(ra) # 80003d58 <_Z7kmallocm>
    newElem->next = 0;
    80002904:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002908:	00950423          	sb	s1,8(a0)
    if(head == 0)
    8000290c:	00009797          	auipc	a5,0x9
    80002910:	fdc7b783          	ld	a5,-36(a5) # 8000b8e8 <_ZN8KConsole4headE>
    80002914:	02078663          	beqz	a5,80002940 <_ZN8KConsole7putCharEc+0x60>
        tail->next = newElem;
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	fc878793          	addi	a5,a5,-56 # 8000b8e0 <_ZN8KConsole13hasCharactersE>
    80002920:	0107b703          	ld	a4,16(a5)
    80002924:	00a73023          	sd	a0,0(a4)
        tail = newElem;
    80002928:	00a7b823          	sd	a0,16(a5)
}
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret
        head = tail = newElem;
    80002940:	00009797          	auipc	a5,0x9
    80002944:	fa078793          	addi	a5,a5,-96 # 8000b8e0 <_ZN8KConsole13hasCharactersE>
    80002948:	00a7b823          	sd	a0,16(a5)
    8000294c:	00a7b423          	sd	a0,8(a5)
    80002950:	fddff06f          	j	8000292c <_ZN8KConsole7putCharEc+0x4c>

0000000080002954 <_ZN8KConsole7getCharEv>:
{
    80002954:	fe010113          	addi	sp,sp,-32
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	00813823          	sd	s0,16(sp)
    80002960:	00913423          	sd	s1,8(sp)
    80002964:	02010413          	addi	s0,sp,32
    if(head == 0)
    80002968:	00009517          	auipc	a0,0x9
    8000296c:	f8053503          	ld	a0,-128(a0) # 8000b8e8 <_ZN8KConsole4headE>
    80002970:	04050263          	beqz	a0,800029b4 <_ZN8KConsole7getCharEv+0x60>
    head = head->next;
    80002974:	00053783          	ld	a5,0(a0)
    80002978:	00009717          	auipc	a4,0x9
    8000297c:	f6f73823          	sd	a5,-144(a4) # 8000b8e8 <_ZN8KConsole4headE>
    if(head == 0)
    80002980:	02078463          	beqz	a5,800029a8 <_ZN8KConsole7getCharEv+0x54>
    char c = ret->data;
    80002984:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002988:	00001097          	auipc	ra,0x1
    8000298c:	3f8080e7          	jalr	1016(ra) # 80003d80 <_Z5kfreePv>
}
    80002990:	00048513          	mv	a0,s1
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	01013403          	ld	s0,16(sp)
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	02010113          	addi	sp,sp,32
    800029a4:	00008067          	ret
        tail = 0;
    800029a8:	00009797          	auipc	a5,0x9
    800029ac:	f407b423          	sd	zero,-184(a5) # 8000b8f0 <_ZN8KConsole4tailE>
    800029b0:	fd5ff06f          	j	80002984 <_ZN8KConsole7getCharEv+0x30>
        return 0;
    800029b4:	00000493          	li	s1,0
    800029b8:	fd9ff06f          	j	80002990 <_ZN8KConsole7getCharEv+0x3c>

00000000800029bc <_ZN8KConsole12putCharacterEc>:
{
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00113423          	sd	ra,8(sp)
    800029c4:	00813023          	sd	s0,0(sp)
    800029c8:	01010413          	addi	s0,sp,16
    putChar(c);
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	f14080e7          	jalr	-236(ra) # 800028e0 <_ZN8KConsole7putCharEc>
    hasCharacters->signal();
    800029d4:	00009517          	auipc	a0,0x9
    800029d8:	f0c53503          	ld	a0,-244(a0) # 8000b8e0 <_ZN8KConsole13hasCharactersE>
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	5d4080e7          	jalr	1492(ra) # 80003fb0 <_ZN10KSemaphore6signalEv>
}
    800029e4:	00813083          	ld	ra,8(sp)
    800029e8:	00013403          	ld	s0,0(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <_ZN8KConsole12getCharacterEv>:
{
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00113423          	sd	ra,8(sp)
    800029fc:	00813023          	sd	s0,0(sp)
    80002a00:	01010413          	addi	s0,sp,16
    KConsole::hasCharacters->wait();
    80002a04:	00009517          	auipc	a0,0x9
    80002a08:	edc53503          	ld	a0,-292(a0) # 8000b8e0 <_ZN8KConsole13hasCharactersE>
    80002a0c:	00001097          	auipc	ra,0x1
    80002a10:	444080e7          	jalr	1092(ra) # 80003e50 <_ZN10KSemaphore4waitEv>
    return getChar();
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	f40080e7          	jalr	-192(ra) # 80002954 <_ZN8KConsole7getCharEv>
}
    80002a1c:	00813083          	ld	ra,8(sp)
    80002a20:	00013403          	ld	s0,0(sp)
    80002a24:	01010113          	addi	sp,sp,16
    80002a28:	00008067          	ret

0000000080002a2c <_ZN8KConsole10initializeEv>:
void KConsole::initialize() {
    80002a2c:	fe010113          	addi	sp,sp,-32
    80002a30:	00113c23          	sd	ra,24(sp)
    80002a34:	00813823          	sd	s0,16(sp)
    80002a38:	00913423          	sd	s1,8(sp)
    80002a3c:	01213023          	sd	s2,0(sp)
    80002a40:	02010413          	addi	s0,sp,32
    hasCharacters = new KSemaphore(0);
    80002a44:	01800513          	li	a0,24
    80002a48:	00001097          	auipc	ra,0x1
    80002a4c:	5b0080e7          	jalr	1456(ra) # 80003ff8 <_ZN10KSemaphorenwEm>
    80002a50:	00050493          	mv	s1,a0
    80002a54:	00000593          	li	a1,0
    80002a58:	00001097          	auipc	ra,0x1
    80002a5c:	350080e7          	jalr	848(ra) # 80003da8 <_ZN10KSemaphoreC1Ei>
    80002a60:	00009797          	auipc	a5,0x9
    80002a64:	e897b023          	sd	s1,-384(a5) # 8000b8e0 <_ZN8KConsole13hasCharactersE>
}
    80002a68:	01813083          	ld	ra,24(sp)
    80002a6c:	01013403          	ld	s0,16(sp)
    80002a70:	00813483          	ld	s1,8(sp)
    80002a74:	00013903          	ld	s2,0(sp)
    80002a78:	02010113          	addi	sp,sp,32
    80002a7c:	00008067          	ret
    80002a80:	00050913          	mv	s2,a0
    hasCharacters = new KSemaphore(0);
    80002a84:	00048513          	mv	a0,s1
    80002a88:	00001097          	auipc	ra,0x1
    80002a8c:	598080e7          	jalr	1432(ra) # 80004020 <_ZN10KSemaphoredlEPv>
    80002a90:	00090513          	mv	a0,s2
    80002a94:	0000a097          	auipc	ra,0xa
    80002a98:	f94080e7          	jalr	-108(ra) # 8000ca28 <_Unwind_Resume>

0000000080002a9c <_GLOBAL__sub_I__ZN8KConsole4headE>:
}
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00113423          	sd	ra,8(sp)
    80002aa4:	00813023          	sd	s0,0(sp)
    80002aa8:	01010413          	addi	s0,sp,16
    80002aac:	000105b7          	lui	a1,0x10
    80002ab0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ab4:	00100513          	li	a0,1
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	da0080e7          	jalr	-608(ra) # 80002858 <_Z41__static_initialization_and_destruction_0ii>
    80002ac0:	00813083          	ld	ra,8(sp)
    80002ac4:	00013403          	ld	s0,0(sp)
    80002ac8:	01010113          	addi	sp,sp,16
    80002acc:	00008067          	ret

0000000080002ad0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002ad0:	ff010113          	addi	sp,sp,-16
    80002ad4:	00813423          	sd	s0,8(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002adc:	00009797          	auipc	a5,0x9
    80002ae0:	d6c7b783          	ld	a5,-660(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ae4:	0007b603          	ld	a2,0(a5)
    80002ae8:	00500793          	li	a5,5
    80002aec:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002af0:	00009797          	auipc	a5,0x9
    80002af4:	e087b783          	ld	a5,-504(a5) # 8000b8f8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002af8:	00000593          	li	a1,0
    while(curr != 0)
    80002afc:	02078063          	beqz	a5,80002b1c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002b00:	01863683          	ld	a3,24(a2)
    80002b04:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002b08:	00e6e863          	bltu	a3,a4,80002b18 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002b0c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002b10:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002b14:	fe9ff06f          	j	80002afc <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002b18:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002b1c:	02058263          	beqz	a1,80002b40 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002b20:	01863783          	ld	a5,24(a2)
    80002b24:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002b28:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b2c:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002b30:	00c5b423          	sd	a2,8(a1)
    }
}
    80002b34:	00813403          	ld	s0,8(sp)
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002b40:	00009797          	auipc	a5,0x9
    80002b44:	dac7bc23          	sd	a2,-584(a5) # 8000b8f8 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002b48:	00863783          	ld	a5,8(a2)
    80002b4c:	fe0784e3          	beqz	a5,80002b34 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002b50:	0187b703          	ld	a4,24(a5)
    80002b54:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002b58:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b5c:	00e7bc23          	sd	a4,24(a5)
    80002b60:	fd5ff06f          	j	80002b34 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002b64 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002b64:	00009517          	auipc	a0,0x9
    80002b68:	d9453503          	ld	a0,-620(a0) # 8000b8f8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002b6c:	08050863          	beqz	a0,80002bfc <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002b70:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002b74:	00100713          	li	a4,1
    80002b78:	00e78863          	beq	a5,a4,80002b88 <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002b7c:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b80:	00f53c23          	sd	a5,24(a0)
    80002b84:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002b88:	06050a63          	beqz	a0,80002bfc <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002b8c:	00009797          	auipc	a5,0x9
    80002b90:	d6c7b783          	ld	a5,-660(a5) # 8000b8f8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002b94:	00a78663          	beq	a5,a0,80002ba0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002b98:	01853783          	ld	a5,24(a0)
    80002b9c:	06079063          	bnez	a5,80002bfc <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002ba0:	fe010113          	addi	sp,sp,-32
    80002ba4:	00113c23          	sd	ra,24(sp)
    80002ba8:	00813823          	sd	s0,16(sp)
    80002bac:	00913423          	sd	s1,8(sp)
    80002bb0:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002bb4:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002bb8:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	258080e7          	jalr	600(ra) # 80002e14 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002bc4:	00009797          	auipc	a5,0x9
    80002bc8:	d297ba23          	sd	s1,-716(a5) # 8000b8f8 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002bcc:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002bd0:	00048c63          	beqz	s1,80002be8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002bd4:	00009797          	auipc	a5,0x9
    80002bd8:	d247b783          	ld	a5,-732(a5) # 8000b8f8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002bdc:	fc978ce3          	beq	a5,s1,80002bb4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002be0:	0184b783          	ld	a5,24(s1)
    80002be4:	fc0788e3          	beqz	a5,80002bb4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002be8:	01813083          	ld	ra,24(sp)
    80002bec:	01013403          	ld	s0,16(sp)
    80002bf0:	00813483          	ld	s1,8(sp)
    80002bf4:	02010113          	addi	sp,sp,32
    80002bf8:	00008067          	ret
    80002bfc:	00008067          	ret

0000000080002c00 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002c00:	fe010113          	addi	sp,sp,-32
    80002c04:	00113c23          	sd	ra,24(sp)
    80002c08:	00813823          	sd	s0,16(sp)
    80002c0c:	00913423          	sd	s1,8(sp)
    80002c10:	01213023          	sd	s2,0(sp)
    80002c14:	02010413          	addi	s0,sp,32
    80002c18:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002c1c:	00053503          	ld	a0,0(a0)
    80002c20:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002c24:	00001097          	auipc	ra,0x1
    80002c28:	15c080e7          	jalr	348(ra) # 80003d80 <_Z5kfreePv>
    first = newFirst;
    80002c2c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002c30:	00090e63          	beqz	s2,80002c4c <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002c34:	01813083          	ld	ra,24(sp)
    80002c38:	01013403          	ld	s0,16(sp)
    80002c3c:	00813483          	ld	s1,8(sp)
    80002c40:	00013903          	ld	s2,0(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret
        first = last = 0;
    80002c4c:	0004b423          	sd	zero,8(s1)
    80002c50:	0004b023          	sd	zero,0(s1)
}
    80002c54:	fe1ff06f          	j	80002c34 <_ZN5Queue3popEv+0x34>

0000000080002c58 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002c58:	fe010113          	addi	sp,sp,-32
    80002c5c:	00113c23          	sd	ra,24(sp)
    80002c60:	00813823          	sd	s0,16(sp)
    80002c64:	00913423          	sd	s1,8(sp)
    80002c68:	01213023          	sd	s2,0(sp)
    80002c6c:	02010413          	addi	s0,sp,32
    80002c70:	00050493          	mv	s1,a0
    80002c74:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002c78:	01000513          	li	a0,16
    80002c7c:	00001097          	auipc	ra,0x1
    80002c80:	0dc080e7          	jalr	220(ra) # 80003d58 <_Z7kmallocm>
    newElem->data = t;
    80002c84:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002c88:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002c8c:	0004b783          	ld	a5,0(s1)
    80002c90:	02078463          	beqz	a5,80002cb8 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002c94:	0084b783          	ld	a5,8(s1)
    80002c98:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002c9c:	00a4b423          	sd	a0,8(s1)
    }
}
    80002ca0:	01813083          	ld	ra,24(sp)
    80002ca4:	01013403          	ld	s0,16(sp)
    80002ca8:	00813483          	ld	s1,8(sp)
    80002cac:	00013903          	ld	s2,0(sp)
    80002cb0:	02010113          	addi	sp,sp,32
    80002cb4:	00008067          	ret
        first = newElem;
    80002cb8:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002cbc:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002cc0:	00053423          	sd	zero,8(a0)
    80002cc4:	0004b783          	ld	a5,0(s1)
    80002cc8:	0007b423          	sd	zero,8(a5)
    80002ccc:	fd5ff06f          	j	80002ca0 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002cd0 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00813423          	sd	s0,8(sp)
    80002cd8:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002cdc:	00053503          	ld	a0,0(a0)
    80002ce0:	00050463          	beqz	a0,80002ce8 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002ce4:	00053503          	ld	a0,0(a0)
}
    80002ce8:	00813403          	ld	s0,8(sp)
    80002cec:	01010113          	addi	sp,sp,16
    80002cf0:	00008067          	ret

0000000080002cf4 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002cf4:	ff010113          	addi	sp,sp,-16
    80002cf8:	00813423          	sd	s0,8(sp)
    80002cfc:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002d00:	00053423          	sd	zero,8(a0)
    80002d04:	00053023          	sd	zero,0(a0)
}
    80002d08:	00813403          	ld	s0,8(sp)
    80002d0c:	01010113          	addi	sp,sp,16
    80002d10:	00008067          	ret

0000000080002d14 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002d14:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002d18:	04050063          	beqz	a0,80002d58 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80002d1c:	fe010113          	addi	sp,sp,-32
    80002d20:	00113c23          	sd	ra,24(sp)
    80002d24:	00813823          	sd	s0,16(sp)
    80002d28:	00913423          	sd	s1,8(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80002d30:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	04c080e7          	jalr	76(ra) # 80003d80 <_Z5kfreePv>
        curr = curr->next;
    80002d3c:	00048513          	mv	a0,s1
    while(curr != 0)
    80002d40:	fe0498e3          	bnez	s1,80002d30 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002d44:	01813083          	ld	ra,24(sp)
    80002d48:	01013403          	ld	s0,16(sp)
    80002d4c:	00813483          	ld	s1,8(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret
    80002d58:	00008067          	ret

0000000080002d5c <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002d5c:	ff010113          	addi	sp,sp,-16
    80002d60:	00813423          	sd	s0,8(sp)
    80002d64:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002d68:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002d6c:	00000513          	li	a0,0
    while(curr != 0)
    80002d70:	00078863          	beqz	a5,80002d80 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002d74:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002d78:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002d7c:	ff5ff06f          	j	80002d70 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002d80:	00813403          	ld	s0,8(sp)
    80002d84:	01010113          	addi	sp,sp,16
    80002d88:	00008067          	ret

0000000080002d8c <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80002d8c:	ff010113          	addi	sp,sp,-16
    80002d90:	00113423          	sd	ra,8(sp)
    80002d94:	00813023          	sd	s0,0(sp)
    80002d98:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002d9c:	00001097          	auipc	ra,0x1
    80002da0:	fbc080e7          	jalr	-68(ra) # 80003d58 <_Z7kmallocm>
}
    80002da4:	00813083          	ld	ra,8(sp)
    80002da8:	00013403          	ld	s0,0(sp)
    80002dac:	01010113          	addi	sp,sp,16
    80002db0:	00008067          	ret

0000000080002db4 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002db4:	ff010113          	addi	sp,sp,-16
    80002db8:	00113423          	sd	ra,8(sp)
    80002dbc:	00813023          	sd	s0,0(sp)
    80002dc0:	01010413          	addi	s0,sp,16
    kfree(p);
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	fbc080e7          	jalr	-68(ra) # 80003d80 <_Z5kfreePv>
}
    80002dcc:	00813083          	ld	ra,8(sp)
    80002dd0:	00013403          	ld	s0,0(sp)
    80002dd4:	01010113          	addi	sp,sp,16
    80002dd8:	00008067          	ret

0000000080002ddc <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002ddc:	ff010113          	addi	sp,sp,-16
    80002de0:	00813423          	sd	s0,8(sp)
    80002de4:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002de8:	00009797          	auipc	a5,0x9
    80002dec:	b187b783          	ld	a5,-1256(a5) # 8000b900 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002df0:	00000513          	li	a0,0
    while(curr != 0)
    80002df4:	00078863          	beqz	a5,80002e04 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002df8:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002dfc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002e00:	ff5ff06f          	j	80002df4 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002e04:	0005051b          	sext.w	a0,a0
    80002e08:	00813403          	ld	s0,8(sp)
    80002e0c:	01010113          	addi	sp,sp,16
    80002e10:	00008067          	ret

0000000080002e14 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00813423          	sd	s0,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002e20:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80002e24:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80002e28:	00009797          	auipc	a5,0x9
    80002e2c:	ad87b783          	ld	a5,-1320(a5) # 8000b900 <_ZN9Scheduler16schedulerPCBHeadE>
    80002e30:	02078263          	beqz	a5,80002e54 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002e34:	00009797          	auipc	a5,0x9
    80002e38:	acc78793          	addi	a5,a5,-1332 # 8000b900 <_ZN9Scheduler16schedulerPCBHeadE>
    80002e3c:	0087b703          	ld	a4,8(a5)
    80002e40:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80002e44:	00a7b423          	sd	a0,8(a5)
    }
}
    80002e48:	00813403          	ld	s0,8(sp)
    80002e4c:	01010113          	addi	sp,sp,16
    80002e50:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002e54:	00009797          	auipc	a5,0x9
    80002e58:	aac78793          	addi	a5,a5,-1364 # 8000b900 <_ZN9Scheduler16schedulerPCBHeadE>
    80002e5c:	00a7b423          	sd	a0,8(a5)
    80002e60:	00a7b023          	sd	a0,0(a5)
    80002e64:	fe5ff06f          	j	80002e48 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002e68 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002e68:	ff010113          	addi	sp,sp,-16
    80002e6c:	00813423          	sd	s0,8(sp)
    80002e70:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002e74:	00009517          	auipc	a0,0x9
    80002e78:	a8c53503          	ld	a0,-1396(a0) # 8000b900 <_ZN9Scheduler16schedulerPCBHeadE>
    80002e7c:	00050c63          	beqz	a0,80002e94 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002e80:	00853783          	ld	a5,8(a0)
    80002e84:	00078e63          	beqz	a5,80002ea0 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002e88:	00009717          	auipc	a4,0x9
    80002e8c:	a6f73c23          	sd	a5,-1416(a4) # 8000b900 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002e90:	00053423          	sd	zero,8(a0)
    return retval;
}
    80002e94:	00813403          	ld	s0,8(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002ea0:	00009797          	auipc	a5,0x9
    80002ea4:	a6078793          	addi	a5,a5,-1440 # 8000b900 <_ZN9Scheduler16schedulerPCBHeadE>
    80002ea8:	0007b423          	sd	zero,8(a5)
    80002eac:	0007b023          	sd	zero,0(a5)
    80002eb0:	fe1ff06f          	j	80002e90 <_ZN9Scheduler3getEv+0x28>

0000000080002eb4 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80002eb4:	ff010113          	addi	sp,sp,-16
    80002eb8:	00113423          	sd	ra,8(sp)
    80002ebc:	00813023          	sd	s0,0(sp)
    80002ec0:	01010413          	addi	s0,sp,16

    Riscv::kernelMain();
    80002ec4:	00001097          	auipc	ra,0x1
    80002ec8:	a20080e7          	jalr	-1504(ra) # 800038e4 <_ZN5Riscv10kernelMainEv>
    Riscv::disableInterrupts();

    Riscv::endSystem();

    Riscv::printString("End...");*/
    80002ecc:	00813083          	ld	ra,8(sp)
    80002ed0:	00013403          	ld	s0,0(sp)
    80002ed4:	01010113          	addi	sp,sp,16
    80002ed8:	00008067          	ret

0000000080002edc <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80002edc:	ff010113          	addi	sp,sp,-16
    80002ee0:	00113423          	sd	ra,8(sp)
    80002ee4:	00813023          	sd	s0,0(sp)
    80002ee8:	01010413          	addi	s0,sp,16
    80002eec:	00009797          	auipc	a5,0x9
    80002ef0:	85c78793          	addi	a5,a5,-1956 # 8000b748 <_ZTV6Thread+0x10>
    80002ef4:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002ef8:	00853503          	ld	a0,8(a0)
    80002efc:	ffffe097          	auipc	ra,0xffffe
    80002f00:	37c080e7          	jalr	892(ra) # 80001278 <mem_free>
}
    80002f04:	00813083          	ld	ra,8(sp)
    80002f08:	00013403          	ld	s0,0(sp)
    80002f0c:	01010113          	addi	sp,sp,16
    80002f10:	00008067          	ret

0000000080002f14 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    80002f14:	ff010113          	addi	sp,sp,-16
    80002f18:	00113423          	sd	ra,8(sp)
    80002f1c:	00813023          	sd	s0,0(sp)
    80002f20:	01010413          	addi	s0,sp,16
    80002f24:	00009797          	auipc	a5,0x9
    80002f28:	84c78793          	addi	a5,a5,-1972 # 8000b770 <_ZTV9Semaphore+0x10>
    80002f2c:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002f30:	00853503          	ld	a0,8(a0)
    80002f34:	ffffe097          	auipc	ra,0xffffe
    80002f38:	344080e7          	jalr	836(ra) # 80001278 <mem_free>
}
    80002f3c:	00813083          	ld	ra,8(sp)
    80002f40:	00013403          	ld	s0,0(sp)
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00008067          	ret

0000000080002f4c <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    80002f4c:	fe010113          	addi	sp,sp,-32
    80002f50:	00113c23          	sd	ra,24(sp)
    80002f54:	00813823          	sd	s0,16(sp)
    80002f58:	00913423          	sd	s1,8(sp)
    80002f5c:	02010413          	addi	s0,sp,32
    80002f60:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80002f64:	00006517          	auipc	a0,0x6
    80002f68:	21c50513          	addi	a0,a0,540 # 80009180 <CONSOLE_STATUS+0x170>
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	4b0080e7          	jalr	1200(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    thr->run();
    80002f74:	0004b783          	ld	a5,0(s1)
    80002f78:	0107b783          	ld	a5,16(a5)
    80002f7c:	00048513          	mv	a0,s1
    80002f80:	000780e7          	jalr	a5
}
    80002f84:	01813083          	ld	ra,24(sp)
    80002f88:	01013403          	ld	s0,16(sp)
    80002f8c:	00813483          	ld	s1,8(sp)
    80002f90:	02010113          	addi	sp,sp,32
    80002f94:	00008067          	ret

0000000080002f98 <_Znwm>:
{
    80002f98:	ff010113          	addi	sp,sp,-16
    80002f9c:	00113423          	sd	ra,8(sp)
    80002fa0:	00813023          	sd	s0,0(sp)
    80002fa4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002fa8:	ffffe097          	auipc	ra,0xffffe
    80002fac:	2a0080e7          	jalr	672(ra) # 80001248 <mem_alloc>
}
    80002fb0:	00813083          	ld	ra,8(sp)
    80002fb4:	00013403          	ld	s0,0(sp)
    80002fb8:	01010113          	addi	sp,sp,16
    80002fbc:	00008067          	ret

0000000080002fc0 <_ZdlPv>:
{
    80002fc0:	ff010113          	addi	sp,sp,-16
    80002fc4:	00113423          	sd	ra,8(sp)
    80002fc8:	00813023          	sd	s0,0(sp)
    80002fcc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002fd0:	ffffe097          	auipc	ra,0xffffe
    80002fd4:	2a8080e7          	jalr	680(ra) # 80001278 <mem_free>
}
    80002fd8:	00813083          	ld	ra,8(sp)
    80002fdc:	00013403          	ld	s0,0(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret

0000000080002fe8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002fe8:	fe010113          	addi	sp,sp,-32
    80002fec:	00113c23          	sd	ra,24(sp)
    80002ff0:	00813823          	sd	s0,16(sp)
    80002ff4:	00913423          	sd	s1,8(sp)
    80002ff8:	02010413          	addi	s0,sp,32
    80002ffc:	00050493          	mv	s1,a0
}
    80003000:	00000097          	auipc	ra,0x0
    80003004:	edc080e7          	jalr	-292(ra) # 80002edc <_ZN6ThreadD1Ev>
    80003008:	00048513          	mv	a0,s1
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	fb4080e7          	jalr	-76(ra) # 80002fc0 <_ZdlPv>
    80003014:	01813083          	ld	ra,24(sp)
    80003018:	01013403          	ld	s0,16(sp)
    8000301c:	00813483          	ld	s1,8(sp)
    80003020:	02010113          	addi	sp,sp,32
    80003024:	00008067          	ret

0000000080003028 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003028:	fe010113          	addi	sp,sp,-32
    8000302c:	00113c23          	sd	ra,24(sp)
    80003030:	00813823          	sd	s0,16(sp)
    80003034:	00913423          	sd	s1,8(sp)
    80003038:	02010413          	addi	s0,sp,32
    8000303c:	00050493          	mv	s1,a0
}
    80003040:	00000097          	auipc	ra,0x0
    80003044:	ed4080e7          	jalr	-300(ra) # 80002f14 <_ZN9SemaphoreD1Ev>
    80003048:	00048513          	mv	a0,s1
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	f74080e7          	jalr	-140(ra) # 80002fc0 <_ZdlPv>
    80003054:	01813083          	ld	ra,24(sp)
    80003058:	01013403          	ld	s0,16(sp)
    8000305c:	00813483          	ld	s1,8(sp)
    80003060:	02010113          	addi	sp,sp,32
    80003064:	00008067          	ret

0000000080003068 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80003068:	00853783          	ld	a5,8(a0)
    8000306c:	02079c63          	bnez	a5,800030a4 <_ZN6Thread5startEv+0x3c>
{
    80003070:	ff010113          	addi	sp,sp,-16
    80003074:	00113423          	sd	ra,8(sp)
    80003078:	00813023          	sd	s0,0(sp)
    8000307c:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    80003080:	01853603          	ld	a2,24(a0)
    80003084:	01053583          	ld	a1,16(a0)
    80003088:	00850513          	addi	a0,a0,8
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	218080e7          	jalr	536(ra) # 800012a4 <thread_create>
}
    80003094:	00813083          	ld	ra,8(sp)
    80003098:	00013403          	ld	s0,0(sp)
    8000309c:	01010113          	addi	sp,sp,16
    800030a0:	00008067          	ret
        return -1;
    800030a4:	fff00513          	li	a0,-1
}
    800030a8:	00008067          	ret

00000000800030ac <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800030ac:	ff010113          	addi	sp,sp,-16
    800030b0:	00113423          	sd	ra,8(sp)
    800030b4:	00813023          	sd	s0,0(sp)
    800030b8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800030bc:	ffffe097          	auipc	ra,0xffffe
    800030c0:	268080e7          	jalr	616(ra) # 80001324 <thread_dispatch>
}
    800030c4:	00813083          	ld	ra,8(sp)
    800030c8:	00013403          	ld	s0,0(sp)
    800030cc:	01010113          	addi	sp,sp,16
    800030d0:	00008067          	ret

00000000800030d4 <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    800030d4:	ff010113          	addi	sp,sp,-16
    800030d8:	00113423          	sd	ra,8(sp)
    800030dc:	00813023          	sd	s0,0(sp)
    800030e0:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800030e4:	ffffe097          	auipc	ra,0xffffe
    800030e8:	344080e7          	jalr	836(ra) # 80001428 <time_sleep>
}
    800030ec:	00813083          	ld	ra,8(sp)
    800030f0:	00013403          	ld	s0,0(sp)
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00008067          	ret

00000000800030fc <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00113c23          	sd	ra,24(sp)
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	00913423          	sd	s1,8(sp)
    8000310c:	02010413          	addi	s0,sp,32
    80003110:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    80003114:	0004b783          	ld	a5,0(s1)
    80003118:	0187b783          	ld	a5,24(a5)
    8000311c:	00048513          	mv	a0,s1
    80003120:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    80003124:	0204b503          	ld	a0,32(s1)
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	fac080e7          	jalr	-84(ra) # 800030d4 <_ZN6Thread5sleepEm>
    while(true)
    80003130:	fe5ff06f          	j	80003114 <_ZN14PeriodicThread6runnerEPv+0x18>

0000000080003134 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00813423          	sd	s0,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	00008797          	auipc	a5,0x8
    80003144:	60878793          	addi	a5,a5,1544 # 8000b748 <_ZTV6Thread+0x10>
    80003148:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    8000314c:	00053423          	sd	zero,8(a0)
    f = body;
    80003150:	00b53823          	sd	a1,16(a0)
    this->args = args;
    80003154:	00c53c23          	sd	a2,24(a0)
}
    80003158:	00813403          	ld	s0,8(sp)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret

0000000080003164 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00813423          	sd	s0,8(sp)
    8000316c:	01010413          	addi	s0,sp,16
    80003170:	00008797          	auipc	a5,0x8
    80003174:	5d878793          	addi	a5,a5,1496 # 8000b748 <_ZTV6Thread+0x10>
    80003178:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    8000317c:	00000797          	auipc	a5,0x0
    80003180:	dd078793          	addi	a5,a5,-560 # 80002f4c <_ZN6Thread6runnerEPv>
    80003184:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    80003188:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    8000318c:	00a53c23          	sd	a0,24(a0)
}
    80003190:	00813403          	ld	s0,8(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    8000319c:	00853503          	ld	a0,8(a0)
    800031a0:	02050663          	beqz	a0,800031cc <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800031a4:	ff010113          	addi	sp,sp,-16
    800031a8:	00113423          	sd	ra,8(sp)
    800031ac:	00813023          	sd	s0,0(sp)
    800031b0:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    800031b4:	ffffe097          	auipc	ra,0xffffe
    800031b8:	21c080e7          	jalr	540(ra) # 800013d0 <sem_wait>
}
    800031bc:	00813083          	ld	ra,8(sp)
    800031c0:	00013403          	ld	s0,0(sp)
    800031c4:	01010113          	addi	sp,sp,16
    800031c8:	00008067          	ret
        return -1;
    800031cc:	fff00513          	li	a0,-1
}
    800031d0:	00008067          	ret

00000000800031d4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800031d4:	fe010113          	addi	sp,sp,-32
    800031d8:	00113c23          	sd	ra,24(sp)
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	00913423          	sd	s1,8(sp)
    800031e4:	02010413          	addi	s0,sp,32
    800031e8:	00050493          	mv	s1,a0
    800031ec:	00008797          	auipc	a5,0x8
    800031f0:	58478793          	addi	a5,a5,1412 # 8000b770 <_ZTV9Semaphore+0x10>
    800031f4:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    800031f8:	00850513          	addi	a0,a0,8
    800031fc:	ffffe097          	auipc	ra,0xffffe
    80003200:	170080e7          	jalr	368(ra) # 8000136c <sem_open>
    if(retval != 0)
    80003204:	00050463          	beqz	a0,8000320c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003208:	0004b423          	sd	zero,8(s1)
}
    8000320c:	01813083          	ld	ra,24(sp)
    80003210:	01013403          	ld	s0,16(sp)
    80003214:	00813483          	ld	s1,8(sp)
    80003218:	02010113          	addi	sp,sp,32
    8000321c:	00008067          	ret

0000000080003220 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003220:	00853503          	ld	a0,8(a0)
    80003224:	02050663          	beqz	a0,80003250 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00113423          	sd	ra,8(sp)
    80003230:	00813023          	sd	s0,0(sp)
    80003234:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    80003238:	ffffe097          	auipc	ra,0xffffe
    8000323c:	1c4080e7          	jalr	452(ra) # 800013fc <sem_signal>
}
    80003240:	00813083          	ld	ra,8(sp)
    80003244:	00013403          	ld	s0,0(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret
        return -1;
    80003250:	fff00513          	li	a0,-1
}
    80003254:	00008067          	ret

0000000080003258 <_ZN7Console4getcEv>:
char Console::getc() {
    80003258:	ff010113          	addi	sp,sp,-16
    8000325c:	00813423          	sd	s0,8(sp)
    80003260:	01010413          	addi	s0,sp,16
}
    80003264:	00000513          	li	a0,0
    80003268:	00813403          	ld	s0,8(sp)
    8000326c:	01010113          	addi	sp,sp,16
    80003270:	00008067          	ret

0000000080003274 <_ZN7Console4putcEc>:
void Console::putc(char) {
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00813423          	sd	s0,8(sp)
    8000327c:	01010413          	addi	s0,sp,16
}
    80003280:	00813403          	ld	s0,8(sp)
    80003284:	01010113          	addi	sp,sp,16
    80003288:	00008067          	ret

000000008000328c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    800032a4:	00050493          	mv	s1,a0
    800032a8:	00058913          	mv	s2,a1
    800032ac:	00050613          	mv	a2,a0
    800032b0:	00000597          	auipc	a1,0x0
    800032b4:	e4c58593          	addi	a1,a1,-436 # 800030fc <_ZN14PeriodicThread6runnerEPv>
    800032b8:	00000097          	auipc	ra,0x0
    800032bc:	e7c080e7          	jalr	-388(ra) # 80003134 <_ZN6ThreadC1EPFvPvES0_>
    800032c0:	00008797          	auipc	a5,0x8
    800032c4:	42078793          	addi	a5,a5,1056 # 8000b6e0 <_ZTV14PeriodicThread+0x10>
    800032c8:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    800032cc:	0324b023          	sd	s2,32(s1)
}
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	00013903          	ld	s2,0(sp)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00008067          	ret

00000000800032e8 <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00813423          	sd	s0,8(sp)
    800032f0:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    800032f4:	00813403          	ld	s0,8(sp)
    800032f8:	01010113          	addi	sp,sp,16
    800032fc:	00008067          	ret

0000000080003300 <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    80003300:	ff010113          	addi	sp,sp,-16
    80003304:	00813423          	sd	s0,8(sp)
    80003308:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    8000330c:	00813403          	ld	s0,8(sp)
    80003310:	01010113          	addi	sp,sp,16
    80003314:	00008067          	ret

0000000080003318 <_ZN5Riscv15userMainWrapperEPv>:
    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00113423          	sd	ra,8(sp)
    80003320:	00813023          	sd	s0,0(sp)
    80003324:	01010413          	addi	s0,sp,16
    userMain();
    80003328:	00002097          	auipc	ra,0x2
    8000332c:	764080e7          	jalr	1892(ra) # 80005a8c <_Z8userMainv>
}
    80003330:	00813083          	ld	ra,8(sp)
    80003334:	00013403          	ld	s0,0(sp)
    80003338:	01010113          	addi	sp,sp,16
    8000333c:	00008067          	ret

0000000080003340 <_ZN5Riscv24getCharactersFromConsoleEv>:
{
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00813423          	sd	s0,8(sp)
    80003348:	01010413          	addi	s0,sp,16
}
    8000334c:	00813403          	ld	s0,8(sp)
    80003350:	01010113          	addi	sp,sp,16
    80003354:	00008067          	ret

0000000080003358 <_ZN5Riscv10initSystemEv>:
{
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00113423          	sd	ra,8(sp)
    80003360:	00813023          	sd	s0,0(sp)
    80003364:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003368:	00008797          	auipc	a5,0x8
    8000336c:	4c87b783          	ld	a5,1224(a5) # 8000b830 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003370:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	450080e7          	jalr	1104(ra) # 800027c4 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    8000337c:	fffff097          	auipc	ra,0xfffff
    80003380:	6b0080e7          	jalr	1712(ra) # 80002a2c <_ZN8KConsole10initializeEv>
}
    80003384:	00813083          	ld	ra,8(sp)
    80003388:	00013403          	ld	s0,0(sp)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret

0000000080003394 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00813423          	sd	s0,8(sp)
    8000339c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800033a0:	00200793          	li	a5,2
    800033a4:	1007a073          	csrs	sstatus,a5
}
    800033a8:	00813403          	ld	s0,8(sp)
    800033ac:	01010113          	addi	sp,sp,16
    800033b0:	00008067          	ret

00000000800033b4 <_ZN5Riscv17disableInterruptsEv>:
{
    800033b4:	ff010113          	addi	sp,sp,-16
    800033b8:	00813423          	sd	s0,8(sp)
    800033bc:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800033c0:	00200793          	li	a5,2
    800033c4:	1007b073          	csrc	sstatus,a5
}
    800033c8:	00813403          	ld	s0,8(sp)
    800033cc:	01010113          	addi	sp,sp,16
    800033d0:	00008067          	ret

00000000800033d4 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00113423          	sd	ra,8(sp)
    800033dc:	00813023          	sd	s0,0(sp)
    800033e0:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	fd0080e7          	jalr	-48(ra) # 800033b4 <_ZN5Riscv17disableInterruptsEv>
}
    800033ec:	00813083          	ld	ra,8(sp)
    800033f0:	00013403          	ld	s0,0(sp)
    800033f4:	01010113          	addi	sp,sp,16
    800033f8:	00008067          	ret

00000000800033fc <_ZN5Riscv10popSppSpieEv>:
void Riscv::popSppSpie() {
    800033fc:	ff010113          	addi	sp,sp,-16
    80003400:	00813423          	sd	s0,8(sp)
    80003404:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003408:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000340c:	10200073          	sret
}
    80003410:	00813403          	ld	s0,8(sp)
    80003414:	01010113          	addi	sp,sp,16
    80003418:	00008067          	ret

000000008000341c <_ZN5Riscv11printStringEPKc>:
{
    8000341c:	fd010113          	addi	sp,sp,-48
    80003420:	02113423          	sd	ra,40(sp)
    80003424:	02813023          	sd	s0,32(sp)
    80003428:	00913c23          	sd	s1,24(sp)
    8000342c:	01213823          	sd	s2,16(sp)
    80003430:	03010413          	addi	s0,sp,48
    80003434:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003438:	100027f3          	csrr	a5,sstatus
    8000343c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003440:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003444:	00200793          	li	a5,2
    80003448:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    8000344c:	0004c503          	lbu	a0,0(s1)
    80003450:	00050a63          	beqz	a0,80003464 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    80003454:	00005097          	auipc	ra,0x5
    80003458:	a98080e7          	jalr	-1384(ra) # 80007eec <__putc>
        string++;
    8000345c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003460:	fedff06f          	j	8000344c <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003464:	0009091b          	sext.w	s2,s2
    80003468:	00297913          	andi	s2,s2,2
    8000346c:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003470:	10092073          	csrs	sstatus,s2
}
    80003474:	02813083          	ld	ra,40(sp)
    80003478:	02013403          	ld	s0,32(sp)
    8000347c:	01813483          	ld	s1,24(sp)
    80003480:	01013903          	ld	s2,16(sp)
    80003484:	03010113          	addi	sp,sp,48
    80003488:	00008067          	ret

000000008000348c <_ZN5Riscv12printIntegerEm>:
{
    8000348c:	fc010113          	addi	sp,sp,-64
    80003490:	02113c23          	sd	ra,56(sp)
    80003494:	02813823          	sd	s0,48(sp)
    80003498:	02913423          	sd	s1,40(sp)
    8000349c:	03213023          	sd	s2,32(sp)
    800034a0:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800034a4:	100027f3          	csrr	a5,sstatus
    800034a8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800034ac:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800034b0:	00200793          	li	a5,2
    800034b4:	1007b073          	csrc	sstatus,a5
        x = num;
    800034b8:	0005051b          	sext.w	a0,a0
    i = 0;
    800034bc:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    800034c0:	00a00613          	li	a2,10
    800034c4:	02c5773b          	remuw	a4,a0,a2
    800034c8:	02071693          	slli	a3,a4,0x20
    800034cc:	0206d693          	srli	a3,a3,0x20
    800034d0:	00006717          	auipc	a4,0x6
    800034d4:	cd870713          	addi	a4,a4,-808 # 800091a8 <_ZZN5Riscv12printIntegerEmE6digits>
    800034d8:	00d70733          	add	a4,a4,a3
    800034dc:	00074703          	lbu	a4,0(a4)
    800034e0:	fe040693          	addi	a3,s0,-32
    800034e4:	009687b3          	add	a5,a3,s1
    800034e8:	0014849b          	addiw	s1,s1,1
    800034ec:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800034f0:	0005071b          	sext.w	a4,a0
    800034f4:	02c5553b          	divuw	a0,a0,a2
    800034f8:	00900793          	li	a5,9
    800034fc:	fce7e2e3          	bltu	a5,a4,800034c0 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    80003500:	fff4849b          	addiw	s1,s1,-1
    80003504:	0004ce63          	bltz	s1,80003520 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003508:	fe040793          	addi	a5,s0,-32
    8000350c:	009787b3          	add	a5,a5,s1
    80003510:	ff07c503          	lbu	a0,-16(a5)
    80003514:	00005097          	auipc	ra,0x5
    80003518:	9d8080e7          	jalr	-1576(ra) # 80007eec <__putc>
    8000351c:	fe5ff06f          	j	80003500 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    80003520:	00a00513          	li	a0,10
    80003524:	00005097          	auipc	ra,0x5
    80003528:	9c8080e7          	jalr	-1592(ra) # 80007eec <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    8000352c:	0009091b          	sext.w	s2,s2
    80003530:	00297913          	andi	s2,s2,2
    80003534:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003538:	10092073          	csrs	sstatus,s2
}
    8000353c:	03813083          	ld	ra,56(sp)
    80003540:	03013403          	ld	s0,48(sp)
    80003544:	02813483          	ld	s1,40(sp)
    80003548:	02013903          	ld	s2,32(sp)
    8000354c:	04010113          	addi	sp,sp,64
    80003550:	00008067          	ret

0000000080003554 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003554:	f8010113          	addi	sp,sp,-128
    80003558:	06113c23          	sd	ra,120(sp)
    8000355c:	06813823          	sd	s0,112(sp)
    80003560:	06913423          	sd	s1,104(sp)
    80003564:	07213023          	sd	s2,96(sp)
    80003568:	05313c23          	sd	s3,88(sp)
    8000356c:	05413823          	sd	s4,80(sp)
    80003570:	05513423          	sd	s5,72(sp)
    80003574:	05613023          	sd	s6,64(sp)
    80003578:	08010413          	addi	s0,sp,128
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    8000357c:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003580:	142027f3          	csrr	a5,scause
    80003584:	f8f43023          	sd	a5,-128(s0)
    return scause;
    80003588:	f8043703          	ld	a4,-128(s0)
    switch(scause)
    8000358c:	00900793          	li	a5,9
    80003590:	0ae7f263          	bgeu	a5,a4,80003634 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    80003594:	fff00793          	li	a5,-1
    80003598:	03f79793          	slli	a5,a5,0x3f
    8000359c:	00178793          	addi	a5,a5,1
    800035a0:	08f71e63          	bne	a4,a5,8000363c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800035a4:	00200793          	li	a5,2
    800035a8:	1447b073          	csrc	sip,a5
            total++;
    800035ac:	00008797          	auipc	a5,0x8
    800035b0:	36478793          	addi	a5,a5,868 # 8000b910 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    800035b4:	0007b503          	ld	a0,0(a5)
    800035b8:	00150513          	addi	a0,a0,1
    800035bc:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(total);
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	ecc080e7          	jalr	-308(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
            PCB::timeSliceCounter++;
    800035c8:	00008497          	auipc	s1,0x8
    800035cc:	2704b483          	ld	s1,624(s1) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x18>
    800035d0:	0004b783          	ld	a5,0(s1)
    800035d4:	00178793          	addi	a5,a5,1
    800035d8:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	588080e7          	jalr	1416(ra) # 80002b64 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800035e4:	00008797          	auipc	a5,0x8
    800035e8:	2647b783          	ld	a5,612(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x28>
    800035ec:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800035f0:	0107b783          	ld	a5,16(a5)
    800035f4:	0004b703          	ld	a4,0(s1)
    800035f8:	04f76663          	bltu	a4,a5,80003644 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800035fc:	141027f3          	csrr	a5,sepc
    80003600:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    80003604:	f9043483          	ld	s1,-112(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003608:	100027f3          	csrr	a5,sstatus
    8000360c:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    80003610:	f8843903          	ld	s2,-120(s0)
                PCB::timeSliceCounter = 0;
    80003614:	00008797          	auipc	a5,0x8
    80003618:	2247b783          	ld	a5,548(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000361c:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	0b4080e7          	jalr	180(ra) # 800026d4 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003628:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000362c:	14149073          	csrw	sepc,s1
}
    80003630:	0140006f          	j	80003644 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    switch(scause)
    80003634:	00800793          	li	a5,8
    80003638:	02f77a63          	bgeu	a4,a5,8000366c <_ZN5Riscv20handleSupervisorTrapEv+0x118>
    console_handler();
    8000363c:	00005097          	auipc	ra,0x5
    80003640:	924080e7          	jalr	-1756(ra) # 80007f60 <console_handler>
}
    80003644:	07813083          	ld	ra,120(sp)
    80003648:	07013403          	ld	s0,112(sp)
    8000364c:	06813483          	ld	s1,104(sp)
    80003650:	06013903          	ld	s2,96(sp)
    80003654:	05813983          	ld	s3,88(sp)
    80003658:	05013a03          	ld	s4,80(sp)
    8000365c:	04813a83          	ld	s5,72(sp)
    80003660:	04013b03          	ld	s6,64(sp)
    80003664:	08010113          	addi	sp,sp,128
    80003668:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    8000366c:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003670:	14102773          	csrr	a4,sepc
    80003674:	f8e43c23          	sd	a4,-104(s0)
    return sepc;
    80003678:	f9843703          	ld	a4,-104(s0)
            sepc+=4;
    8000367c:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    80003680:	00100713          	li	a4,1
    80003684:	06e78a63          	beq	a5,a4,800036f8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            else if(operation == MemoryAllocator::MEM_FREE)
    80003688:	00200713          	li	a4,2
    8000368c:	08e78463          	beq	a5,a4,80003714 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            else if(operation == PCB::THREAD_CREATE)
    80003690:	01100713          	li	a4,17
    80003694:	08e78a63          	beq	a5,a4,80003728 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            else if(operation == PCB::THREAD_DISPATCH)
    80003698:	01300713          	li	a4,19
    8000369c:	0ce78c63          	beq	a5,a4,80003774 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
            else if(operation == PCB::THREAD_EXIT)
    800036a0:	01200713          	li	a4,18
    800036a4:	0ee78c63          	beq	a5,a4,8000379c <_ZN5Riscv20handleSupervisorTrapEv+0x248>
            else if(operation == PCB::TIME_SLEEP)
    800036a8:	03100713          	li	a4,49
    800036ac:	14e78263          	beq	a5,a4,800037f0 <_ZN5Riscv20handleSupervisorTrapEv+0x29c>
            else if(operation == KSemaphore::SEM_OPEN)
    800036b0:	02100713          	li	a4,33
    800036b4:	18e78263          	beq	a5,a4,80003838 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
            else if(operation == KSemaphore::SEM_WAIT)
    800036b8:	02300713          	li	a4,35
    800036bc:	1ae78c63          	beq	a5,a4,80003874 <_ZN5Riscv20handleSupervisorTrapEv+0x320>
            else if(operation == KSemaphore::SEM_SIGNAL)
    800036c0:	02400713          	li	a4,36
    800036c4:	1ce78a63          	beq	a5,a4,80003898 <_ZN5Riscv20handleSupervisorTrapEv+0x344>
            else if(operation == KSemaphore::SEM_CLOSE)
    800036c8:	02200713          	li	a4,34
    800036cc:	04e79063          	bne	a5,a4,8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800036d0:	00058913          	mv	s2,a1
                delete kSem;
    800036d4:	00090e63          	beqz	s2,800036f0 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    800036d8:	00090513          	mv	a0,s2
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	814080e7          	jalr	-2028(ra) # 80003ef0 <_ZN10KSemaphoreD1Ev>
    800036e4:	00090513          	mv	a0,s2
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	938080e7          	jalr	-1736(ra) # 80004020 <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    800036f0:	00000513          	li	a0,0
    800036f4:	0180006f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800036f8:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    800036fc:	00651513          	slli	a0,a0,0x6
    80003700:	00000097          	auipc	ra,0x0
    80003704:	658080e7          	jalr	1624(ra) # 80003d58 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003708:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000370c:	14149073          	csrw	sepc,s1
}
    80003710:	f35ff06f          	j	80003644 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003714:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80003718:	00000097          	auipc	ra,0x0
    8000371c:	668080e7          	jalr	1640(ra) # 80003d80 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003720:	00050513          	mv	a0,a0
    80003724:	fe9ff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80003728:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000372c:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80003730:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003734:	05800513          	li	a0,88
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	010080e7          	jalr	16(ra) # 80002748 <_ZN3PCBnwEm>
    80003740:	00050993          	mv	s3,a0
    80003744:	00200713          	li	a4,2
    80003748:	00090693          	mv	a3,s2
    8000374c:	000b0613          	mv	a2,s6
    80003750:	000a8593          	mv	a1,s5
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	ed8080e7          	jalr	-296(ra) # 8000262c <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    8000375c:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80003760:	00098663          	beqz	s3,8000376c <_ZN5Riscv20handleSupervisorTrapEv+0x218>
                    __asm__ volatile("li a0, 0");
    80003764:	00000513          	li	a0,0
    80003768:	fa5ff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    8000376c:	fff00513          	li	a0,-1
    80003770:	f9dff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003774:	100027f3          	csrr	a5,sstatus
    80003778:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    8000377c:	fa043903          	ld	s2,-96(s0)
                PCB::timeSliceCounter = 0;
    80003780:	00008797          	auipc	a5,0x8
    80003784:	0b87b783          	ld	a5,184(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003788:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    8000378c:	fffff097          	auipc	ra,0xfffff
    80003790:	f48080e7          	jalr	-184(ra) # 800026d4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003794:	10091073          	csrw	sstatus,s2
}
    80003798:	f75ff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                if(PCB::running == 0)
    8000379c:	00008797          	auipc	a5,0x8
    800037a0:	0ac7b783          	ld	a5,172(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x28>
    800037a4:	0007b783          	ld	a5,0(a5)
    800037a8:	04078063          	beqz	a5,800037e8 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800037ac:	100027f3          	csrr	a5,sstatus
    800037b0:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800037b4:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    800037b8:	00008797          	auipc	a5,0x8
    800037bc:	0807b783          	ld	a5,128(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x18>
    800037c0:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    800037c4:	00008797          	auipc	a5,0x8
    800037c8:	0847b783          	ld	a5,132(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x28>
    800037cc:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    800037d0:	00300713          	li	a4,3
    800037d4:	02e7ac23          	sw	a4,56(a5)
                PCB::dispatch();
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	efc080e7          	jalr	-260(ra) # 800026d4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800037e0:	10091073          	csrw	sstatus,s2
}
    800037e4:	f29ff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800037e8:	fff00513          	li	a0,-1
                    return;
    800037ec:	e59ff06f          	j	80003644 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    800037f0:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800037f4:	100027f3          	csrr	a5,sstatus
    800037f8:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800037fc:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80003800:	00008797          	auipc	a5,0x8
    80003804:	0387b783          	ld	a5,56(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003808:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    8000380c:	00008797          	auipc	a5,0x8
    80003810:	03c7b783          	ld	a5,60(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003814:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003818:	00e7bc23          	sd	a4,24(a5)
                SleepPCBList::insertSleepingPCB();
    8000381c:	fffff097          	auipc	ra,0xfffff
    80003820:	2b4080e7          	jalr	692(ra) # 80002ad0 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003824:	fffff097          	auipc	ra,0xfffff
    80003828:	eb0080e7          	jalr	-336(ra) # 800026d4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000382c:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    80003830:	00000513          	li	a0,0
    80003834:	ed9ff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003838:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    8000383c:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    80003840:	01800513          	li	a0,24
    80003844:	00000097          	auipc	ra,0x0
    80003848:	7b4080e7          	jalr	1972(ra) # 80003ff8 <_ZN10KSemaphorenwEm>
    8000384c:	00050913          	mv	s2,a0
    80003850:	000a059b          	sext.w	a1,s4
    80003854:	00000097          	auipc	ra,0x0
    80003858:	554080e7          	jalr	1364(ra) # 80003da8 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    8000385c:	0129b023          	sd	s2,0(s3)
                if(newSem == 0)
    80003860:	00090663          	beqz	s2,8000386c <_ZN5Riscv20handleSupervisorTrapEv+0x318>
                        __asm__ volatile("li a0, 0");
    80003864:	00000513          	li	a0,0
    80003868:	ea5ff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    8000386c:	fff00513          	li	a0,-1
    80003870:	e9dff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003874:	100027f3          	csrr	a5,sstatus
    80003878:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    8000387c:	fb843903          	ld	s2,-72(s0)
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003880:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80003884:	00000097          	auipc	ra,0x0
    80003888:	5cc080e7          	jalr	1484(ra) # 80003e50 <_ZN10KSemaphore4waitEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000388c:	10091073          	csrw	sstatus,s2
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003890:	00050513          	mv	a0,a0
    80003894:	e79ff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003898:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	714080e7          	jalr	1812(ra) # 80003fb0 <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800038a4:	00050513          	mv	a0,a0
    800038a8:	e65ff06f          	j	8000370c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    800038ac:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    800038b0:	00098513          	mv	a0,s3
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	ebc080e7          	jalr	-324(ra) # 80002770 <_ZN3PCBdlEPv>
    800038bc:	00048513          	mv	a0,s1
    800038c0:	00009097          	auipc	ra,0x9
    800038c4:	168080e7          	jalr	360(ra) # 8000ca28 <_Unwind_Resume>
    800038c8:	00050493          	mv	s1,a0
                KSemaphore* newSem = new KSemaphore(val);
    800038cc:	00090513          	mv	a0,s2
    800038d0:	00000097          	auipc	ra,0x0
    800038d4:	750080e7          	jalr	1872(ra) # 80004020 <_ZN10KSemaphoredlEPv>
    800038d8:	00048513          	mv	a0,s1
    800038dc:	00009097          	auipc	ra,0x9
    800038e0:	14c080e7          	jalr	332(ra) # 8000ca28 <_Unwind_Resume>

00000000800038e4 <_ZN5Riscv10kernelMainEv>:
{
    800038e4:	fe010113          	addi	sp,sp,-32
    800038e8:	00113c23          	sd	ra,24(sp)
    800038ec:	00813823          	sd	s0,16(sp)
    800038f0:	00913423          	sd	s1,8(sp)
    800038f4:	01213023          	sd	s2,0(sp)
    800038f8:	02010413          	addi	s0,sp,32
    initSystem();
    800038fc:	00000097          	auipc	ra,0x0
    80003900:	a5c080e7          	jalr	-1444(ra) # 80003358 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003904:	00001537          	lui	a0,0x1
    80003908:	00000097          	auipc	ra,0x0
    8000390c:	450080e7          	jalr	1104(ra) # 80003d58 <_Z7kmallocm>
    80003910:	00050913          	mv	s2,a0
    80003914:	05800513          	li	a0,88
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	e30080e7          	jalr	-464(ra) # 80002748 <_ZN3PCBnwEm>
    80003920:	00050493          	mv	s1,a0
    80003924:	00200713          	li	a4,2
    80003928:	00090693          	mv	a3,s2
    8000392c:	00000613          	li	a2,0
    80003930:	00000597          	auipc	a1,0x0
    80003934:	9e858593          	addi	a1,a1,-1560 # 80003318 <_ZN5Riscv15userMainWrapperEPv>
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	cf4080e7          	jalr	-780(ra) # 8000262c <_ZN3PCBC1EPFvPvES0_S0_m>
    State getState() {return state;}
    80003940:	0384a703          	lw	a4,56(s1)
    while(userPCB->getState() != PCB::FINISHED)
    80003944:	00300793          	li	a5,3
    80003948:	00f70863          	beq	a4,a5,80003958 <_ZN5Riscv10kernelMainEv+0x74>
        thread_dispatch();
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	9d8080e7          	jalr	-1576(ra) # 80001324 <thread_dispatch>
    while(userPCB->getState() != PCB::FINISHED)
    80003954:	fedff06f          	j	80003940 <_ZN5Riscv10kernelMainEv+0x5c>
    endSystem();
    80003958:	00000097          	auipc	ra,0x0
    8000395c:	a7c080e7          	jalr	-1412(ra) # 800033d4 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003960:	00006517          	auipc	a0,0x6
    80003964:	84050513          	addi	a0,a0,-1984 # 800091a0 <CONSOLE_STATUS+0x190>
    80003968:	00000097          	auipc	ra,0x0
    8000396c:	ab4080e7          	jalr	-1356(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
}
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00813483          	ld	s1,8(sp)
    8000397c:	00013903          	ld	s2,0(sp)
    80003980:	02010113          	addi	sp,sp,32
    80003984:	00008067          	ret
    80003988:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    8000398c:	00048513          	mv	a0,s1
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	de0080e7          	jalr	-544(ra) # 80002770 <_ZN3PCBdlEPv>
    80003998:	00090513          	mv	a0,s2
    8000399c:	00009097          	auipc	ra,0x9
    800039a0:	08c080e7          	jalr	140(ra) # 8000ca28 <_Unwind_Resume>

00000000800039a4 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800039a4:	ff010113          	addi	sp,sp,-16
    800039a8:	00813423          	sd	s0,8(sp)
    800039ac:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800039b0:	00008717          	auipc	a4,0x8
    800039b4:	f6872703          	lw	a4,-152(a4) # 8000b918 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800039b8:	00100793          	li	a5,1
    800039bc:	04f70263          	beq	a4,a5,80003a00 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800039c0:	00008797          	auipc	a5,0x8
    800039c4:	f5878793          	addi	a5,a5,-168 # 8000b918 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800039c8:	00100713          	li	a4,1
    800039cc:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800039d0:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800039d4:	00008717          	auipc	a4,0x8
    800039d8:	e5473703          	ld	a4,-428(a4) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x8>
    800039dc:	00073703          	ld	a4,0(a4)
    800039e0:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800039e4:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    800039e8:	00008797          	auipc	a5,0x8
    800039ec:	e687b783          	ld	a5,-408(a5) # 8000b850 <_GLOBAL_OFFSET_TABLE_+0x30>
    800039f0:	0007b783          	ld	a5,0(a5)
    800039f4:	40e787b3          	sub	a5,a5,a4
    800039f8:	ff178793          	addi	a5,a5,-15
    800039fc:	00f73023          	sd	a5,0(a4)
}
    80003a00:	00813403          	ld	s0,8(sp)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret

0000000080003a0c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	01213023          	sd	s2,0(sp)
    80003a20:	02010413          	addi	s0,sp,32
    80003a24:	00050493          	mv	s1,a0
    80003a28:	00058913          	mv	s2,a1

    initMemory();
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	f78080e7          	jalr	-136(ra) # 800039a4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003a34:	00008797          	auipc	a5,0x8
    80003a38:	eec7b783          	ld	a5,-276(a5) # 8000b920 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003a3c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003a40:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003a44:	00000713          	li	a4,0
    while(curr != 0)
    80003a48:	00078c63          	beqz	a5,80003a60 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003a4c:	00f4e863          	bltu	s1,a5,80003a5c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003a50:	00078713          	mv	a4,a5
        curr = curr->next;
    80003a54:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003a58:	ff1ff06f          	j	80003a48 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003a5c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003a60:	02070063          	beqz	a4,80003a80 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003a64:	00973423          	sd	s1,8(a4)
}
    80003a68:	01813083          	ld	ra,24(sp)
    80003a6c:	01013403          	ld	s0,16(sp)
    80003a70:	00813483          	ld	s1,8(sp)
    80003a74:	00013903          	ld	s2,0(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	00008067          	ret
        headAllocated = newAllocated;
    80003a80:	00008797          	auipc	a5,0x8
    80003a84:	ea97b023          	sd	s1,-352(a5) # 8000b920 <_ZN15MemoryAllocator13headAllocatedE>
    80003a88:	fe1ff06f          	j	80003a68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003a8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	01213023          	sd	s2,0(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	00050913          	mv	s2,a0
    initMemory();
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	efc080e7          	jalr	-260(ra) # 800039a4 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003ab0:	00008497          	auipc	s1,0x8
    80003ab4:	e784b483          	ld	s1,-392(s1) # 8000b928 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003ab8:	00000713          	li	a4,0
    while(curr != 0)
    80003abc:	0a048863          	beqz	s1,80003b6c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003ac0:	0004b783          	ld	a5,0(s1)
    80003ac4:	0127f863          	bgeu	a5,s2,80003ad4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003ac8:	00048713          	mv	a4,s1
        curr = curr->next;
    80003acc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003ad0:	fedff06f          	j	80003abc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003ad4:	01090693          	addi	a3,s2,16
    80003ad8:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003adc:	00008617          	auipc	a2,0x8
    80003ae0:	d7463603          	ld	a2,-652(a2) # 8000b850 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003ae4:	00063603          	ld	a2,0(a2)
    80003ae8:	04d66c63          	bltu	a2,a3,80003b40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003aec:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003af0:	01000613          	li	a2,16
    80003af4:	02f67663          	bgeu	a2,a5,80003b20 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003af8:	0084b603          	ld	a2,8(s1)
    80003afc:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003b00:	ff078793          	addi	a5,a5,-16
    80003b04:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003b08:	00070663          	beqz	a4,80003b14 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003b0c:	00d73423          	sd	a3,8(a4)
    80003b10:	0380006f          	j	80003b48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003b14:	00008797          	auipc	a5,0x8
    80003b18:	e0d7ba23          	sd	a3,-492(a5) # 8000b928 <_ZN15MemoryAllocator8headFreeE>
    80003b1c:	02c0006f          	j	80003b48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003b20:	00070863          	beqz	a4,80003b30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003b24:	0084b783          	ld	a5,8(s1)
    80003b28:	00f73423          	sd	a5,8(a4)
    80003b2c:	01c0006f          	j	80003b48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003b30:	0084b783          	ld	a5,8(s1)
    80003b34:	00008717          	auipc	a4,0x8
    80003b38:	def73a23          	sd	a5,-524(a4) # 8000b928 <_ZN15MemoryAllocator8headFreeE>
    80003b3c:	00c0006f          	j	80003b48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003b40:	02070063          	beqz	a4,80003b60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003b44:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003b48:	00090593          	mv	a1,s2
    80003b4c:	00048513          	mv	a0,s1
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	ebc080e7          	jalr	-324(ra) # 80003a0c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003b58:	01048513          	addi	a0,s1,16
            break;
    80003b5c:	0140006f          	j	80003b70 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003b60:	00008797          	auipc	a5,0x8
    80003b64:	dc07b423          	sd	zero,-568(a5) # 8000b928 <_ZN15MemoryAllocator8headFreeE>
    80003b68:	fe1ff06f          	j	80003b48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003b6c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	00813483          	ld	s1,8(sp)
    80003b7c:	00013903          	ld	s2,0(sp)
    80003b80:	02010113          	addi	sp,sp,32
    80003b84:	00008067          	ret

0000000080003b88 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003b88:	ff010113          	addi	sp,sp,-16
    80003b8c:	00113423          	sd	ra,8(sp)
    80003b90:	00813023          	sd	s0,0(sp)
    80003b94:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003b98:	00000097          	auipc	ra,0x0
    80003b9c:	ef4080e7          	jalr	-268(ra) # 80003a8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003ba0:	00813083          	ld	ra,8(sp)
    80003ba4:	00013403          	ld	s0,0(sp)
    80003ba8:	01010113          	addi	sp,sp,16
    80003bac:	00008067          	ret

0000000080003bb0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    80003bc8:	00050493          	mv	s1,a0
    80003bcc:	00058913          	mv	s2,a1
    initMemory();
    80003bd0:	00000097          	auipc	ra,0x0
    80003bd4:	dd4080e7          	jalr	-556(ra) # 800039a4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003bd8:	00008797          	auipc	a5,0x8
    80003bdc:	d507b783          	ld	a5,-688(a5) # 8000b928 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003be0:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003be4:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003be8:	00000713          	li	a4,0
    while(curr != 0)
    80003bec:	00078c63          	beqz	a5,80003c04 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003bf0:	00f4e863          	bltu	s1,a5,80003c00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003bf4:	00078713          	mv	a4,a5
        curr = curr->next;
    80003bf8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003bfc:	ff1ff06f          	j	80003bec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003c00:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003c04:	04070663          	beqz	a4,80003c50 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003c08:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003c0c:	0084b783          	ld	a5,8(s1)
    80003c10:	00078a63          	beqz	a5,80003c24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003c14:	0004b603          	ld	a2,0(s1)
    80003c18:	01060693          	addi	a3,a2,16
    80003c1c:	00d486b3          	add	a3,s1,a3
    80003c20:	02d78e63          	beq	a5,a3,80003c5c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003c24:	00070a63          	beqz	a4,80003c38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003c28:	00073683          	ld	a3,0(a4)
    80003c2c:	01068793          	addi	a5,a3,16
    80003c30:	00f707b3          	add	a5,a4,a5
    80003c34:	04978263          	beq	a5,s1,80003c78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003c38:	01813083          	ld	ra,24(sp)
    80003c3c:	01013403          	ld	s0,16(sp)
    80003c40:	00813483          	ld	s1,8(sp)
    80003c44:	00013903          	ld	s2,0(sp)
    80003c48:	02010113          	addi	sp,sp,32
    80003c4c:	00008067          	ret
        headFree = newSegment;
    80003c50:	00008797          	auipc	a5,0x8
    80003c54:	cc97bc23          	sd	s1,-808(a5) # 8000b928 <_ZN15MemoryAllocator8headFreeE>
    80003c58:	fb5ff06f          	j	80003c0c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003c5c:	0007b683          	ld	a3,0(a5)
    80003c60:	00d60633          	add	a2,a2,a3
    80003c64:	01060613          	addi	a2,a2,16
    80003c68:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003c6c:	0087b783          	ld	a5,8(a5)
    80003c70:	00f4b423          	sd	a5,8(s1)
    80003c74:	fb1ff06f          	j	80003c24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003c78:	0004b783          	ld	a5,0(s1)
    80003c7c:	00f686b3          	add	a3,a3,a5
    80003c80:	01068693          	addi	a3,a3,16
    80003c84:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003c88:	0084b783          	ld	a5,8(s1)
    80003c8c:	00f73423          	sd	a5,8(a4)
}
    80003c90:	fa9ff06f          	j	80003c38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003c94 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003c94:	fe010113          	addi	sp,sp,-32
    80003c98:	00113c23          	sd	ra,24(sp)
    80003c9c:	00813823          	sd	s0,16(sp)
    80003ca0:	00913423          	sd	s1,8(sp)
    80003ca4:	01213023          	sd	s2,0(sp)
    80003ca8:	02010413          	addi	s0,sp,32
    80003cac:	00050913          	mv	s2,a0
    initMemory();
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	cf4080e7          	jalr	-780(ra) # 800039a4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003cb8:	00008497          	auipc	s1,0x8
    80003cbc:	c684b483          	ld	s1,-920(s1) # 8000b920 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003cc0:	00000713          	li	a4,0
    while(curr != 0)
    80003cc4:	02048a63          	beqz	s1,80003cf8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003cc8:	01048793          	addi	a5,s1,16
    80003ccc:	01278863          	beq	a5,s2,80003cdc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003cd0:	00048713          	mv	a4,s1
        curr = curr->next;
    80003cd4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003cd8:	fedff06f          	j	80003cc4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003cdc:	02070e63          	beqz	a4,80003d18 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003ce0:	0084b783          	ld	a5,8(s1)
    80003ce4:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003ce8:	0004b583          	ld	a1,0(s1)
    80003cec:	00048513          	mv	a0,s1
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	ec0080e7          	jalr	-320(ra) # 80003bb0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003cf8:	02048863          	beqz	s1,80003d28 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003cfc:	00000513          	li	a0,0
    else
        return 1;
}
    80003d00:	01813083          	ld	ra,24(sp)
    80003d04:	01013403          	ld	s0,16(sp)
    80003d08:	00813483          	ld	s1,8(sp)
    80003d0c:	00013903          	ld	s2,0(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret
                headAllocated = curr->next;
    80003d18:	0084b783          	ld	a5,8(s1)
    80003d1c:	00008717          	auipc	a4,0x8
    80003d20:	c0f73223          	sd	a5,-1020(a4) # 8000b920 <_ZN15MemoryAllocator13headAllocatedE>
    80003d24:	fc5ff06f          	j	80003ce8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003d28:	00100513          	li	a0,1
    80003d2c:	fd5ff06f          	j	80003d00 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003d30 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00113423          	sd	ra,8(sp)
    80003d38:	00813023          	sd	s0,0(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	f54080e7          	jalr	-172(ra) # 80003c94 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003d48:	00813083          	ld	ra,8(sp)
    80003d4c:	00013403          	ld	s0,0(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret

0000000080003d58 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003d58:	ff010113          	addi	sp,sp,-16
    80003d5c:	00113423          	sd	ra,8(sp)
    80003d60:	00813023          	sd	s0,0(sp)
    80003d64:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	e20080e7          	jalr	-480(ra) # 80003b88 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003d70:	00813083          	ld	ra,8(sp)
    80003d74:	00013403          	ld	s0,0(sp)
    80003d78:	01010113          	addi	sp,sp,16
    80003d7c:	00008067          	ret

0000000080003d80 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003d80:	ff010113          	addi	sp,sp,-16
    80003d84:	00113423          	sd	ra,8(sp)
    80003d88:	00813023          	sd	s0,0(sp)
    80003d8c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003d90:	00000097          	auipc	ra,0x0
    80003d94:	fa0080e7          	jalr	-96(ra) # 80003d30 <_ZN15MemoryAllocator8mem_freeEPv>
    80003d98:	00813083          	ld	ra,8(sp)
    80003d9c:	00013403          	ld	s0,0(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00813423          	sd	s0,8(sp)
    80003db0:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003db4:	00b52a23          	sw	a1,20(a0)
    80003db8:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003dbc:	00053423          	sd	zero,8(a0)
    80003dc0:	00053023          	sd	zero,0(a0)
}
    80003dc4:	00813403          	ld	s0,8(sp)
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00008067          	ret

0000000080003dd0 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003dd0:	ff010113          	addi	sp,sp,-16
    80003dd4:	00813423          	sd	s0,8(sp)
    80003dd8:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003ddc:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80003de0:	00053783          	ld	a5,0(a0)
    80003de4:	00078e63          	beqz	a5,80003e00 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003de8:	00853783          	ld	a5,8(a0)
    80003dec:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80003df0:	00b53423          	sd	a1,8(a0)
    }
}
    80003df4:	00813403          	ld	s0,8(sp)
    80003df8:	01010113          	addi	sp,sp,16
    80003dfc:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003e00:	00b53423          	sd	a1,8(a0)
    80003e04:	00b53023          	sd	a1,0(a0)
    80003e08:	fedff06f          	j	80003df4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003e0c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80003e0c:	ff010113          	addi	sp,sp,-16
    80003e10:	00113423          	sd	ra,8(sp)
    80003e14:	00813023          	sd	s0,0(sp)
    80003e18:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003e1c:	00008797          	auipc	a5,0x8
    80003e20:	a2c7b783          	ld	a5,-1492(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003e24:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003e28:	00200793          	li	a5,2
    80003e2c:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    80003e30:	00000097          	auipc	ra,0x0
    80003e34:	fa0080e7          	jalr	-96(ra) # 80003dd0 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003e38:	fffff097          	auipc	ra,0xfffff
    80003e3c:	89c080e7          	jalr	-1892(ra) # 800026d4 <_ZN3PCB8dispatchEv>
}
    80003e40:	00813083          	ld	ra,8(sp)
    80003e44:	00013403          	ld	s0,0(sp)
    80003e48:	01010113          	addi	sp,sp,16
    80003e4c:	00008067          	ret

0000000080003e50 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80003e50:	01052783          	lw	a5,16(a0)
    80003e54:	fff7879b          	addiw	a5,a5,-1
    80003e58:	00f52823          	sw	a5,16(a0)
    80003e5c:	02079713          	slli	a4,a5,0x20
    80003e60:	00074663          	bltz	a4,80003e6c <_ZN10KSemaphore4waitEv+0x1c>
}
    80003e64:	00000513          	li	a0,0
    80003e68:	00008067          	ret
uint64 KSemaphore::wait() {
    80003e6c:	ff010113          	addi	sp,sp,-16
    80003e70:	00113423          	sd	ra,8(sp)
    80003e74:	00813023          	sd	s0,0(sp)
    80003e78:	01010413          	addi	s0,sp,16
        block();
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	f90080e7          	jalr	-112(ra) # 80003e0c <_ZN10KSemaphore5blockEv>
}
    80003e84:	00000513          	li	a0,0
    80003e88:	00813083          	ld	ra,8(sp)
    80003e8c:	00013403          	ld	s0,0(sp)
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003e98:	ff010113          	addi	sp,sp,-16
    80003e9c:	00813423          	sd	s0,8(sp)
    80003ea0:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003ea4:	00053503          	ld	a0,0(a0)
    80003ea8:	00813403          	ld	s0,8(sp)
    80003eac:	01010113          	addi	sp,sp,16
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00813423          	sd	s0,8(sp)
    80003ebc:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003ec0:	00053783          	ld	a5,0(a0)
    80003ec4:	00078c63          	beqz	a5,80003edc <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003ec8:	0087b703          	ld	a4,8(a5)
    80003ecc:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003ed0:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80003ed4:	00053783          	ld	a5,0(a0)
    80003ed8:	00078863          	beqz	a5,80003ee8 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003edc:	00813403          	ld	s0,8(sp)
    80003ee0:	01010113          	addi	sp,sp,16
    80003ee4:	00008067          	ret
        tailBlocked =0;
    80003ee8:	00053423          	sd	zero,8(a0)
    80003eec:	ff1ff06f          	j	80003edc <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003ef0 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80003ef0:	fe010113          	addi	sp,sp,-32
    80003ef4:	00113c23          	sd	ra,24(sp)
    80003ef8:	00813823          	sd	s0,16(sp)
    80003efc:	00913423          	sd	s1,8(sp)
    80003f00:	01213023          	sd	s2,0(sp)
    80003f04:	02010413          	addi	s0,sp,32
    80003f08:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003f0c:	00090513          	mv	a0,s2
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	f88080e7          	jalr	-120(ra) # 80003e98 <_ZN10KSemaphore15getFirstBlockedEv>
    80003f18:	00050493          	mv	s1,a0
    80003f1c:	02050063          	beqz	a0,80003f3c <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80003f20:	00090513          	mv	a0,s2
    80003f24:	00000097          	auipc	ra,0x0
    80003f28:	f90080e7          	jalr	-112(ra) # 80003eb4 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80003f2c:	00048513          	mv	a0,s1
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	ee4080e7          	jalr	-284(ra) # 80002e14 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003f38:	fd5ff06f          	j	80003f0c <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003f3c:	01813083          	ld	ra,24(sp)
    80003f40:	01013403          	ld	s0,16(sp)
    80003f44:	00813483          	ld	s1,8(sp)
    80003f48:	00013903          	ld	s2,0(sp)
    80003f4c:	02010113          	addi	sp,sp,32
    80003f50:	00008067          	ret

0000000080003f54 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80003f54:	fe010113          	addi	sp,sp,-32
    80003f58:	00113c23          	sd	ra,24(sp)
    80003f5c:	00813823          	sd	s0,16(sp)
    80003f60:	00913423          	sd	s1,8(sp)
    80003f64:	01213023          	sd	s2,0(sp)
    80003f68:	02010413          	addi	s0,sp,32
    80003f6c:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003f70:	00000097          	auipc	ra,0x0
    80003f74:	f28080e7          	jalr	-216(ra) # 80003e98 <_ZN10KSemaphore15getFirstBlockedEv>
    80003f78:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003f7c:	00090513          	mv	a0,s2
    80003f80:	00000097          	auipc	ra,0x0
    80003f84:	f34080e7          	jalr	-204(ra) # 80003eb4 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003f88:	00048863          	beqz	s1,80003f98 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80003f8c:	00048513          	mv	a0,s1
    80003f90:	fffff097          	auipc	ra,0xfffff
    80003f94:	e84080e7          	jalr	-380(ra) # 80002e14 <_ZN9Scheduler3putEP3PCB>
}
    80003f98:	01813083          	ld	ra,24(sp)
    80003f9c:	01013403          	ld	s0,16(sp)
    80003fa0:	00813483          	ld	s1,8(sp)
    80003fa4:	00013903          	ld	s2,0(sp)
    80003fa8:	02010113          	addi	sp,sp,32
    80003fac:	00008067          	ret

0000000080003fb0 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003fb0:	01052783          	lw	a5,16(a0)
    80003fb4:	0017879b          	addiw	a5,a5,1
    80003fb8:	0007871b          	sext.w	a4,a5
    80003fbc:	00f52823          	sw	a5,16(a0)
    80003fc0:	00e05663          	blez	a4,80003fcc <_ZN10KSemaphore6signalEv+0x1c>
}
    80003fc4:	00000513          	li	a0,0
    80003fc8:	00008067          	ret
uint64 KSemaphore::signal() {
    80003fcc:	ff010113          	addi	sp,sp,-16
    80003fd0:	00113423          	sd	ra,8(sp)
    80003fd4:	00813023          	sd	s0,0(sp)
    80003fd8:	01010413          	addi	s0,sp,16
        unblock();
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	f78080e7          	jalr	-136(ra) # 80003f54 <_ZN10KSemaphore7unblockEv>
}
    80003fe4:	00000513          	li	a0,0
    80003fe8:	00813083          	ld	ra,8(sp)
    80003fec:	00013403          	ld	s0,0(sp)
    80003ff0:	01010113          	addi	sp,sp,16
    80003ff4:	00008067          	ret

0000000080003ff8 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80003ff8:	ff010113          	addi	sp,sp,-16
    80003ffc:	00113423          	sd	ra,8(sp)
    80004000:	00813023          	sd	s0,0(sp)
    80004004:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004008:	00000097          	auipc	ra,0x0
    8000400c:	d50080e7          	jalr	-688(ra) # 80003d58 <_Z7kmallocm>
}
    80004010:	00813083          	ld	ra,8(sp)
    80004014:	00013403          	ld	s0,0(sp)
    80004018:	01010113          	addi	sp,sp,16
    8000401c:	00008067          	ret

0000000080004020 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80004020:	ff010113          	addi	sp,sp,-16
    80004024:	00113423          	sd	ra,8(sp)
    80004028:	00813023          	sd	s0,0(sp)
    8000402c:	01010413          	addi	s0,sp,16
    kfree(p);
    80004030:	00000097          	auipc	ra,0x0
    80004034:	d50080e7          	jalr	-688(ra) # 80003d80 <_Z5kfreePv>
}
    80004038:	00813083          	ld	ra,8(sp)
    8000403c:	00013403          	ld	s0,0(sp)
    80004040:	01010113          	addi	sp,sp,16
    80004044:	00008067          	ret

0000000080004048 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80004048:	fe010113          	addi	sp,sp,-32
    8000404c:	00113c23          	sd	ra,24(sp)
    80004050:	00813823          	sd	s0,16(sp)
    80004054:	00913423          	sd	s1,8(sp)
    80004058:	01213023          	sd	s2,0(sp)
    8000405c:	02010413          	addi	s0,sp,32
    80004060:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Producer started...\n");
    80004064:	00005517          	auipc	a0,0x5
    80004068:	15450513          	addi	a0,a0,340 # 800091b8 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    8000406c:	fffff097          	auipc	ra,0xfffff
    80004070:	3b0080e7          	jalr	944(ra) # 8000341c <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80004074:	00000913          	li	s2,0
    while (!threadEnd)
    80004078:	00008797          	auipc	a5,0x8
    8000407c:	8b87a783          	lw	a5,-1864(a5) # 8000b930 <threadEnd>
    80004080:	0a079463          	bnez	a5,80004128 <_Z8producerPv+0xe0>
    {
        Riscv::printString("producer i : ");
    80004084:	00005517          	auipc	a0,0x5
    80004088:	14c50513          	addi	a0,a0,332 # 800091d0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    8000408c:	fffff097          	auipc	ra,0xfffff
    80004090:	390080e7          	jalr	912(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    80004094:	00090513          	mv	a0,s2
    80004098:	fffff097          	auipc	ra,0xfffff
    8000409c:	3f4080e7          	jalr	1012(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("put ");
    800040a0:	00005517          	auipc	a0,0x5
    800040a4:	14050513          	addi	a0,a0,320 # 800091e0 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    800040a8:	fffff097          	auipc	ra,0xfffff
    800040ac:	374080e7          	jalr	884(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    800040b0:	0004a503          	lw	a0,0(s1)
    800040b4:	0305051b          	addiw	a0,a0,48
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	3d4080e7          	jalr	980(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
        data->buffer->put(data->id + '0');
    800040c0:	0004a583          	lw	a1,0(s1)
    800040c4:	0305859b          	addiw	a1,a1,48
    800040c8:	0084b503          	ld	a0,8(s1)
    800040cc:	00002097          	auipc	ra,0x2
    800040d0:	c48080e7          	jalr	-952(ra) # 80005d14 <_ZN6Buffer3putEi>
        i++;
    800040d4:	0019071b          	addiw	a4,s2,1
    800040d8:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    800040dc:	0004a683          	lw	a3,0(s1)
    800040e0:	0026979b          	slliw	a5,a3,0x2
    800040e4:	00d787bb          	addw	a5,a5,a3
    800040e8:	0017979b          	slliw	a5,a5,0x1
    800040ec:	02f767bb          	remw	a5,a4,a5
    800040f0:	00078e63          	beqz	a5,8000410c <_Z8producerPv+0xc4>
            Riscv::printString("dispatching\n");
            thread_dispatch();
        }

        if(i == 10)
    800040f4:	00a00793          	li	a5,10
    800040f8:	f8f910e3          	bne	s2,a5,80004078 <_Z8producerPv+0x30>
            threadEnd = 1;
    800040fc:	00100793          	li	a5,1
    80004100:	00008717          	auipc	a4,0x8
    80004104:	82f72823          	sw	a5,-2000(a4) # 8000b930 <threadEnd>
    80004108:	f71ff06f          	j	80004078 <_Z8producerPv+0x30>
            Riscv::printString("dispatching\n");
    8000410c:	00005517          	auipc	a0,0x5
    80004110:	0dc50513          	addi	a0,a0,220 # 800091e8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80004114:	fffff097          	auipc	ra,0xfffff
    80004118:	308080e7          	jalr	776(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    8000411c:	ffffd097          	auipc	ra,0xffffd
    80004120:	208080e7          	jalr	520(ra) # 80001324 <thread_dispatch>
    80004124:	fd1ff06f          	j	800040f4 <_Z8producerPv+0xac>
    }

    Riscv::printString("producer done\n");
    80004128:	00005517          	auipc	a0,0x5
    8000412c:	0d050513          	addi	a0,a0,208 # 800091f8 <_ZZN5Riscv12printIntegerEmE6digits+0x50>
    80004130:	fffff097          	auipc	ra,0xfffff
    80004134:	2ec080e7          	jalr	748(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004138:	0104b503          	ld	a0,16(s1)
    8000413c:	ffffd097          	auipc	ra,0xffffd
    80004140:	2c0080e7          	jalr	704(ra) # 800013fc <sem_signal>
}
    80004144:	01813083          	ld	ra,24(sp)
    80004148:	01013403          	ld	s0,16(sp)
    8000414c:	00813483          	ld	s1,8(sp)
    80004150:	00013903          	ld	s2,0(sp)
    80004154:	02010113          	addi	sp,sp,32
    80004158:	00008067          	ret

000000008000415c <_Z8consumerPv>:

void consumer(void *arg) {
    8000415c:	fd010113          	addi	sp,sp,-48
    80004160:	02113423          	sd	ra,40(sp)
    80004164:	02813023          	sd	s0,32(sp)
    80004168:	00913c23          	sd	s1,24(sp)
    8000416c:	01213823          	sd	s2,16(sp)
    80004170:	01313423          	sd	s3,8(sp)
    80004174:	01413023          	sd	s4,0(sp)
    80004178:	03010413          	addi	s0,sp,48
    8000417c:	00050a13          	mv	s4,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");
    80004180:	00005517          	auipc	a0,0x5
    80004184:	08850513          	addi	a0,a0,136 # 80009208 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80004188:	fffff097          	auipc	ra,0xfffff
    8000418c:	294080e7          	jalr	660(ra) # 8000341c <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80004190:	00000993          	li	s3,0
    80004194:	0300006f          	j	800041c4 <_Z8consumerPv+0x68>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            Riscv::printString("dispatching\n");
    80004198:	00005517          	auipc	a0,0x5
    8000419c:	05050513          	addi	a0,a0,80 # 800091e8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    800041a0:	fffff097          	auipc	ra,0xfffff
    800041a4:	27c080e7          	jalr	636(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    800041a8:	ffffd097          	auipc	ra,0xffffd
    800041ac:	17c080e7          	jalr	380(ra) # 80001324 <thread_dispatch>
    800041b0:	0840006f          	j	80004234 <_Z8consumerPv+0xd8>
        }

        if (i % 80 == 0) {
           Riscv::printString("\n");
    800041b4:	00005517          	auipc	a0,0x5
    800041b8:	fe450513          	addi	a0,a0,-28 # 80009198 <CONSOLE_STATUS+0x188>
    800041bc:	fffff097          	auipc	ra,0xfffff
    800041c0:	260080e7          	jalr	608(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    800041c4:	00007797          	auipc	a5,0x7
    800041c8:	76c7a783          	lw	a5,1900(a5) # 8000b930 <threadEnd>
    800041cc:	06079c63          	bnez	a5,80004244 <_Z8consumerPv+0xe8>
        Riscv::printString("consumer i : ");
    800041d0:	00005517          	auipc	a0,0x5
    800041d4:	05050513          	addi	a0,a0,80 # 80009220 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    800041d8:	fffff097          	auipc	ra,0xfffff
    800041dc:	244080e7          	jalr	580(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800041e0:	00098513          	mv	a0,s3
    800041e4:	fffff097          	auipc	ra,0xfffff
    800041e8:	2a8080e7          	jalr	680(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
        int key = data->buffer->get();
    800041ec:	008a3503          	ld	a0,8(s4)
    800041f0:	00002097          	auipc	ra,0x2
    800041f4:	bb4080e7          	jalr	-1100(ra) # 80005da4 <_ZN6Buffer3getEv>
    800041f8:	00050913          	mv	s2,a0
        i++;
    800041fc:	0019849b          	addiw	s1,s3,1
    80004200:	0004899b          	sext.w	s3,s1
        Riscv::printString("get ");
    80004204:	00005517          	auipc	a0,0x5
    80004208:	02c50513          	addi	a0,a0,44 # 80009230 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    8000420c:	fffff097          	auipc	ra,0xfffff
    80004210:	210080e7          	jalr	528(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    80004214:	00090513          	mv	a0,s2
    80004218:	fffff097          	auipc	ra,0xfffff
    8000421c:	274080e7          	jalr	628(ra) # 8000348c <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    80004220:	000a2703          	lw	a4,0(s4)
    80004224:	0027179b          	slliw	a5,a4,0x2
    80004228:	00e787bb          	addw	a5,a5,a4
    8000422c:	02f4e7bb          	remw	a5,s1,a5
    80004230:	f60784e3          	beqz	a5,80004198 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    80004234:	05000793          	li	a5,80
    80004238:	02f4e4bb          	remw	s1,s1,a5
    8000423c:	f80494e3          	bnez	s1,800041c4 <_Z8consumerPv+0x68>
    80004240:	f75ff06f          	j	800041b4 <_Z8consumerPv+0x58>
        }
    }

    Riscv::printString("consumer done\n");
    80004244:	00005517          	auipc	a0,0x5
    80004248:	ff450513          	addi	a0,a0,-12 # 80009238 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    8000424c:	fffff097          	auipc	ra,0xfffff
    80004250:	1d0080e7          	jalr	464(ra) # 8000341c <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004254:	010a3503          	ld	a0,16(s4)
    80004258:	ffffd097          	auipc	ra,0xffffd
    8000425c:	1a4080e7          	jalr	420(ra) # 800013fc <sem_signal>
}
    80004260:	02813083          	ld	ra,40(sp)
    80004264:	02013403          	ld	s0,32(sp)
    80004268:	01813483          	ld	s1,24(sp)
    8000426c:	01013903          	ld	s2,16(sp)
    80004270:	00813983          	ld	s3,8(sp)
    80004274:	00013a03          	ld	s4,0(sp)
    80004278:	03010113          	addi	sp,sp,48
    8000427c:	00008067          	ret

0000000080004280 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80004280:	fe010113          	addi	sp,sp,-32
    80004284:	00113c23          	sd	ra,24(sp)
    80004288:	00813823          	sd	s0,16(sp)
    8000428c:	00913423          	sd	s1,8(sp)
    80004290:	01213023          	sd	s2,0(sp)
    80004294:	02010413          	addi	s0,sp,32
    80004298:	00050493          	mv	s1,a0
    int i = 0;
    8000429c:	00000913          	li	s2,0
    800042a0:	00c0006f          	j	800042ac <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    800042a4:	ffffd097          	auipc	ra,0xffffd
    800042a8:	080080e7          	jalr	128(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    800042ac:	00004097          	auipc	ra,0x4
    800042b0:	c7c080e7          	jalr	-900(ra) # 80007f28 <__getc>
    800042b4:	0005059b          	sext.w	a1,a0
    800042b8:	01b00793          	li	a5,27
    800042bc:	02f58a63          	beq	a1,a5,800042f0 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800042c0:	0084b503          	ld	a0,8(s1)
    800042c4:	00002097          	auipc	ra,0x2
    800042c8:	a50080e7          	jalr	-1456(ra) # 80005d14 <_ZN6Buffer3putEi>
        i++;
    800042cc:	0019071b          	addiw	a4,s2,1
    800042d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800042d4:	0004a683          	lw	a3,0(s1)
    800042d8:	0026979b          	slliw	a5,a3,0x2
    800042dc:	00d787bb          	addw	a5,a5,a3
    800042e0:	0017979b          	slliw	a5,a5,0x1
    800042e4:	02f767bb          	remw	a5,a4,a5
    800042e8:	fc0792e3          	bnez	a5,800042ac <_Z16producerKeyboardPv+0x2c>
    800042ec:	fb9ff06f          	j	800042a4 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    800042f0:	00100793          	li	a5,1
    800042f4:	00007717          	auipc	a4,0x7
    800042f8:	62f72e23          	sw	a5,1596(a4) # 8000b930 <threadEnd>
    delete data->buffer;
    800042fc:	0084b903          	ld	s2,8(s1)
    80004300:	00090e63          	beqz	s2,8000431c <_Z16producerKeyboardPv+0x9c>
    80004304:	00090513          	mv	a0,s2
    80004308:	00002097          	auipc	ra,0x2
    8000430c:	960080e7          	jalr	-1696(ra) # 80005c68 <_ZN6BufferD1Ev>
    80004310:	00090513          	mv	a0,s2
    80004314:	fffff097          	auipc	ra,0xfffff
    80004318:	cac080e7          	jalr	-852(ra) # 80002fc0 <_ZdlPv>
    sem_signal(data->wait);
    8000431c:	0104b503          	ld	a0,16(s1)
    80004320:	ffffd097          	auipc	ra,0xffffd
    80004324:	0dc080e7          	jalr	220(ra) # 800013fc <sem_signal>
}
    80004328:	01813083          	ld	ra,24(sp)
    8000432c:	01013403          	ld	s0,16(sp)
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	00013903          	ld	s2,0(sp)
    80004338:	02010113          	addi	sp,sp,32
    8000433c:	00008067          	ret

0000000080004340 <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    80004340:	fa010113          	addi	sp,sp,-96
    80004344:	04113c23          	sd	ra,88(sp)
    80004348:	04813823          	sd	s0,80(sp)
    8000434c:	04913423          	sd	s1,72(sp)
    80004350:	05213023          	sd	s2,64(sp)
    80004354:	06010413          	addi	s0,sp,96
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004358:	00005517          	auipc	a0,0x5
    8000435c:	ef050513          	addi	a0,a0,-272 # 80009248 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80004360:	00001097          	auipc	ra,0x1
    80004364:	158080e7          	jalr	344(ra) # 800054b8 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 1;

    printString("Unesite velicinu bafera?\n");
    80004368:	00005517          	auipc	a0,0x5
    8000436c:	f0050513          	addi	a0,a0,-256 # 80009268 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80004370:	00001097          	auipc	ra,0x1
    80004374:	148080e7          	jalr	328(ra) # 800054b8 <_Z11printStringPKc>
    //getString(input, 30);
    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004378:	00005517          	auipc	a0,0x5
    8000437c:	f1050513          	addi	a0,a0,-240 # 80009288 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004380:	00001097          	auipc	ra,0x1
    80004384:	138080e7          	jalr	312(ra) # 800054b8 <_Z11printStringPKc>
    80004388:	00000613          	li	a2,0
    8000438c:	00a00593          	li	a1,10
    80004390:	00100513          	li	a0,1
    80004394:	00001097          	auipc	ra,0x1
    80004398:	2bc080e7          	jalr	700(ra) # 80005650 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000439c:	00005517          	auipc	a0,0x5
    800043a0:	f0450513          	addi	a0,a0,-252 # 800092a0 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    800043a4:	00001097          	auipc	ra,0x1
    800043a8:	114080e7          	jalr	276(ra) # 800054b8 <_Z11printStringPKc>
    800043ac:	00000613          	li	a2,0
    800043b0:	00a00593          	li	a1,10
    800043b4:	00100513          	li	a0,1
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	298080e7          	jalr	664(ra) # 80005650 <_Z8printIntiii>
    printString(".\n");
    800043c0:	00005517          	auipc	a0,0x5
    800043c4:	da850513          	addi	a0,a0,-600 # 80009168 <CONSOLE_STATUS+0x158>
    800043c8:	00001097          	auipc	ra,0x1
    800043cc:	0f0080e7          	jalr	240(ra) # 800054b8 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    800043d0:	03800513          	li	a0,56
    800043d4:	fffff097          	auipc	ra,0xfffff
    800043d8:	bc4080e7          	jalr	-1084(ra) # 80002f98 <_Znwm>
    800043dc:	00050913          	mv	s2,a0
    800043e0:	00100593          	li	a1,1
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	7fc080e7          	jalr	2044(ra) # 80005be0 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    800043ec:	00000593          	li	a1,0
    800043f0:	00007517          	auipc	a0,0x7
    800043f4:	54850513          	addi	a0,a0,1352 # 8000b938 <waitForAll>
    800043f8:	ffffd097          	auipc	ra,0xffffd
    800043fc:	f74080e7          	jalr	-140(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80004400:	00100793          	li	a5,1
    80004404:	faf42c23          	sw	a5,-72(s0)
    data[threadNum].buffer = buffer;
    80004408:	fd243023          	sd	s2,-64(s0)
    data[threadNum].wait = waitForAll;
    8000440c:	00007797          	auipc	a5,0x7
    80004410:	52c7b783          	ld	a5,1324(a5) # 8000b938 <waitForAll>
    80004414:	fcf43423          	sd	a5,-56(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004418:	fb840613          	addi	a2,s0,-72
    8000441c:	00000597          	auipc	a1,0x0
    80004420:	d4058593          	addi	a1,a1,-704 # 8000415c <_Z8consumerPv>
    80004424:	fd040513          	addi	a0,s0,-48
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	e7c080e7          	jalr	-388(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004430:	00000493          	li	s1,0
    80004434:	06904063          	bgtz	s1,80004494 <_Z22producerConsumer_C_APIv+0x154>
        data[i].id = i;
    80004438:	00149613          	slli	a2,s1,0x1
    8000443c:	009607b3          	add	a5,a2,s1
    80004440:	00379793          	slli	a5,a5,0x3
    80004444:	fe040713          	addi	a4,s0,-32
    80004448:	00f707b3          	add	a5,a4,a5
    8000444c:	fc97a023          	sw	s1,-64(a5)
        data[i].buffer = buffer;
    80004450:	fd27b423          	sd	s2,-56(a5)
        data[i].wait = waitForAll;
    80004454:	00007717          	auipc	a4,0x7
    80004458:	4e473703          	ld	a4,1252(a4) # 8000b938 <waitForAll>
    8000445c:	fce7b823          	sd	a4,-48(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);
    80004460:	00349793          	slli	a5,s1,0x3
    80004464:	00960633          	add	a2,a2,s1
    80004468:	00361613          	slli	a2,a2,0x3
    8000446c:	fa040713          	addi	a4,s0,-96
    80004470:	00c70633          	add	a2,a4,a2
    80004474:	00000597          	auipc	a1,0x0
    80004478:	bd458593          	addi	a1,a1,-1068 # 80004048 <_Z8producerPv>
    8000447c:	fd840513          	addi	a0,s0,-40
    80004480:	00f50533          	add	a0,a0,a5
    80004484:	ffffd097          	auipc	ra,0xffffd
    80004488:	e20080e7          	jalr	-480(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000448c:	0014849b          	addiw	s1,s1,1
    80004490:	fa5ff06f          	j	80004434 <_Z22producerConsumer_C_APIv+0xf4>

    }

    thread_dispatch();
    80004494:	ffffd097          	auipc	ra,0xffffd
    80004498:	e90080e7          	jalr	-368(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    8000449c:	00000493          	li	s1,0
    800044a0:	0180006f          	j	800044b8 <_Z22producerConsumer_C_APIv+0x178>
        sem_wait(waitForAll);
    800044a4:	00007517          	auipc	a0,0x7
    800044a8:	49453503          	ld	a0,1172(a0) # 8000b938 <waitForAll>
    800044ac:	ffffd097          	auipc	ra,0xffffd
    800044b0:	f24080e7          	jalr	-220(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800044b4:	0014849b          	addiw	s1,s1,1
    800044b8:	00100793          	li	a5,1
    800044bc:	fe97d4e3          	bge	a5,s1,800044a4 <_Z22producerConsumer_C_APIv+0x164>
    }

    sem_close(waitForAll);
    800044c0:	00007517          	auipc	a0,0x7
    800044c4:	47853503          	ld	a0,1144(a0) # 8000b938 <waitForAll>
    800044c8:	ffffd097          	auipc	ra,0xffffd
    800044cc:	edc080e7          	jalr	-292(ra) # 800013a4 <sem_close>
    800044d0:	05813083          	ld	ra,88(sp)
    800044d4:	05013403          	ld	s0,80(sp)
    800044d8:	04813483          	ld	s1,72(sp)
    800044dc:	04013903          	ld	s2,64(sp)
    800044e0:	06010113          	addi	sp,sp,96
    800044e4:	00008067          	ret
    800044e8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800044ec:	00090513          	mv	a0,s2
    800044f0:	fffff097          	auipc	ra,0xfffff
    800044f4:	ad0080e7          	jalr	-1328(ra) # 80002fc0 <_ZdlPv>
    800044f8:	00048513          	mv	a0,s1
    800044fc:	00008097          	auipc	ra,0x8
    80004500:	52c080e7          	jalr	1324(ra) # 8000ca28 <_Unwind_Resume>

0000000080004504 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004504:	fe010113          	addi	sp,sp,-32
    80004508:	00113c23          	sd	ra,24(sp)
    8000450c:	00813823          	sd	s0,16(sp)
    80004510:	00913423          	sd	s1,8(sp)
    80004514:	01213023          	sd	s2,0(sp)
    80004518:	02010413          	addi	s0,sp,32
    8000451c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004520:	00100793          	li	a5,1
    80004524:	02a7f863          	bgeu	a5,a0,80004554 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004528:	00a00793          	li	a5,10
    8000452c:	02f577b3          	remu	a5,a0,a5
    80004530:	02078e63          	beqz	a5,8000456c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004534:	fff48513          	addi	a0,s1,-1
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	fcc080e7          	jalr	-52(ra) # 80004504 <_ZL9fibonaccim>
    80004540:	00050913          	mv	s2,a0
    80004544:	ffe48513          	addi	a0,s1,-2
    80004548:	00000097          	auipc	ra,0x0
    8000454c:	fbc080e7          	jalr	-68(ra) # 80004504 <_ZL9fibonaccim>
    80004550:	00a90533          	add	a0,s2,a0
}
    80004554:	01813083          	ld	ra,24(sp)
    80004558:	01013403          	ld	s0,16(sp)
    8000455c:	00813483          	ld	s1,8(sp)
    80004560:	00013903          	ld	s2,0(sp)
    80004564:	02010113          	addi	sp,sp,32
    80004568:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000456c:	ffffd097          	auipc	ra,0xffffd
    80004570:	db8080e7          	jalr	-584(ra) # 80001324 <thread_dispatch>
    80004574:	fc1ff06f          	j	80004534 <_ZL9fibonaccim+0x30>

0000000080004578 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004578:	fe010113          	addi	sp,sp,-32
    8000457c:	00113c23          	sd	ra,24(sp)
    80004580:	00813823          	sd	s0,16(sp)
    80004584:	00913423          	sd	s1,8(sp)
    80004588:	01213023          	sd	s2,0(sp)
    8000458c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004590:	00000913          	li	s2,0
    80004594:	0380006f          	j	800045cc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	d8c080e7          	jalr	-628(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800045a0:	00148493          	addi	s1,s1,1
    800045a4:	000027b7          	lui	a5,0x2
    800045a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800045ac:	0097ee63          	bltu	a5,s1,800045c8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800045b0:	00000713          	li	a4,0
    800045b4:	000077b7          	lui	a5,0x7
    800045b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800045bc:	fce7eee3          	bltu	a5,a4,80004598 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800045c0:	00170713          	addi	a4,a4,1
    800045c4:	ff1ff06f          	j	800045b4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800045c8:	00190913          	addi	s2,s2,1
    800045cc:	00900793          	li	a5,9
    800045d0:	0527e063          	bltu	a5,s2,80004610 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800045d4:	00005517          	auipc	a0,0x5
    800045d8:	ce450513          	addi	a0,a0,-796 # 800092b8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	edc080e7          	jalr	-292(ra) # 800054b8 <_Z11printStringPKc>
    800045e4:	00000613          	li	a2,0
    800045e8:	00a00593          	li	a1,10
    800045ec:	0009051b          	sext.w	a0,s2
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	060080e7          	jalr	96(ra) # 80005650 <_Z8printIntiii>
    800045f8:	00005517          	auipc	a0,0x5
    800045fc:	ba050513          	addi	a0,a0,-1120 # 80009198 <CONSOLE_STATUS+0x188>
    80004600:	00001097          	auipc	ra,0x1
    80004604:	eb8080e7          	jalr	-328(ra) # 800054b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004608:	00000493          	li	s1,0
    8000460c:	f99ff06f          	j	800045a4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004610:	00005517          	auipc	a0,0x5
    80004614:	cb050513          	addi	a0,a0,-848 # 800092c0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004618:	00001097          	auipc	ra,0x1
    8000461c:	ea0080e7          	jalr	-352(ra) # 800054b8 <_Z11printStringPKc>
    finishedA = true;
    80004620:	00100793          	li	a5,1
    80004624:	00007717          	auipc	a4,0x7
    80004628:	30f70e23          	sb	a5,796(a4) # 8000b940 <_ZL9finishedA>
}
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	00013903          	ld	s2,0(sp)
    8000463c:	02010113          	addi	sp,sp,32
    80004640:	00008067          	ret

0000000080004644 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004644:	fe010113          	addi	sp,sp,-32
    80004648:	00113c23          	sd	ra,24(sp)
    8000464c:	00813823          	sd	s0,16(sp)
    80004650:	00913423          	sd	s1,8(sp)
    80004654:	01213023          	sd	s2,0(sp)
    80004658:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000465c:	00000913          	li	s2,0
    80004660:	0380006f          	j	80004698 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	cc0080e7          	jalr	-832(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000466c:	00148493          	addi	s1,s1,1
    80004670:	000027b7          	lui	a5,0x2
    80004674:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004678:	0097ee63          	bltu	a5,s1,80004694 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000467c:	00000713          	li	a4,0
    80004680:	000077b7          	lui	a5,0x7
    80004684:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004688:	fce7eee3          	bltu	a5,a4,80004664 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000468c:	00170713          	addi	a4,a4,1
    80004690:	ff1ff06f          	j	80004680 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004694:	00190913          	addi	s2,s2,1
    80004698:	00f00793          	li	a5,15
    8000469c:	0527e063          	bltu	a5,s2,800046dc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800046a0:	00005517          	auipc	a0,0x5
    800046a4:	c3050513          	addi	a0,a0,-976 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	e10080e7          	jalr	-496(ra) # 800054b8 <_Z11printStringPKc>
    800046b0:	00000613          	li	a2,0
    800046b4:	00a00593          	li	a1,10
    800046b8:	0009051b          	sext.w	a0,s2
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	f94080e7          	jalr	-108(ra) # 80005650 <_Z8printIntiii>
    800046c4:	00005517          	auipc	a0,0x5
    800046c8:	ad450513          	addi	a0,a0,-1324 # 80009198 <CONSOLE_STATUS+0x188>
    800046cc:	00001097          	auipc	ra,0x1
    800046d0:	dec080e7          	jalr	-532(ra) # 800054b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800046d4:	00000493          	li	s1,0
    800046d8:	f99ff06f          	j	80004670 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	bfc50513          	addi	a0,a0,-1028 # 800092d8 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	dd4080e7          	jalr	-556(ra) # 800054b8 <_Z11printStringPKc>
    finishedB = true;
    800046ec:	00100793          	li	a5,1
    800046f0:	00007717          	auipc	a4,0x7
    800046f4:	24f708a3          	sb	a5,593(a4) # 8000b941 <_ZL9finishedB>
    thread_dispatch();
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	c2c080e7          	jalr	-980(ra) # 80001324 <thread_dispatch>
}
    80004700:	01813083          	ld	ra,24(sp)
    80004704:	01013403          	ld	s0,16(sp)
    80004708:	00813483          	ld	s1,8(sp)
    8000470c:	00013903          	ld	s2,0(sp)
    80004710:	02010113          	addi	sp,sp,32
    80004714:	00008067          	ret

0000000080004718 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004718:	fe010113          	addi	sp,sp,-32
    8000471c:	00113c23          	sd	ra,24(sp)
    80004720:	00813823          	sd	s0,16(sp)
    80004724:	00913423          	sd	s1,8(sp)
    80004728:	01213023          	sd	s2,0(sp)
    8000472c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004730:	00000493          	li	s1,0
    80004734:	0400006f          	j	80004774 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	bb050513          	addi	a0,a0,-1104 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	d78080e7          	jalr	-648(ra) # 800054b8 <_Z11printStringPKc>
    80004748:	00000613          	li	a2,0
    8000474c:	00a00593          	li	a1,10
    80004750:	00048513          	mv	a0,s1
    80004754:	00001097          	auipc	ra,0x1
    80004758:	efc080e7          	jalr	-260(ra) # 80005650 <_Z8printIntiii>
    8000475c:	00005517          	auipc	a0,0x5
    80004760:	a3c50513          	addi	a0,a0,-1476 # 80009198 <CONSOLE_STATUS+0x188>
    80004764:	00001097          	auipc	ra,0x1
    80004768:	d54080e7          	jalr	-684(ra) # 800054b8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000476c:	0014849b          	addiw	s1,s1,1
    80004770:	0ff4f493          	andi	s1,s1,255
    80004774:	00200793          	li	a5,2
    80004778:	fc97f0e3          	bgeu	a5,s1,80004738 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000477c:	00005517          	auipc	a0,0x5
    80004780:	b7450513          	addi	a0,a0,-1164 # 800092f0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004784:	00001097          	auipc	ra,0x1
    80004788:	d34080e7          	jalr	-716(ra) # 800054b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000478c:	00700313          	li	t1,7
    thread_dispatch();
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	b94080e7          	jalr	-1132(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004798:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000479c:	00005517          	auipc	a0,0x5
    800047a0:	b6450513          	addi	a0,a0,-1180 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	d14080e7          	jalr	-748(ra) # 800054b8 <_Z11printStringPKc>
    800047ac:	00000613          	li	a2,0
    800047b0:	00a00593          	li	a1,10
    800047b4:	0009051b          	sext.w	a0,s2
    800047b8:	00001097          	auipc	ra,0x1
    800047bc:	e98080e7          	jalr	-360(ra) # 80005650 <_Z8printIntiii>
    800047c0:	00005517          	auipc	a0,0x5
    800047c4:	9d850513          	addi	a0,a0,-1576 # 80009198 <CONSOLE_STATUS+0x188>
    800047c8:	00001097          	auipc	ra,0x1
    800047cc:	cf0080e7          	jalr	-784(ra) # 800054b8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800047d0:	00c00513          	li	a0,12
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	d30080e7          	jalr	-720(ra) # 80004504 <_ZL9fibonaccim>
    800047dc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800047e0:	00005517          	auipc	a0,0x5
    800047e4:	b2850513          	addi	a0,a0,-1240 # 80009308 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	cd0080e7          	jalr	-816(ra) # 800054b8 <_Z11printStringPKc>
    800047f0:	00000613          	li	a2,0
    800047f4:	00a00593          	li	a1,10
    800047f8:	0009051b          	sext.w	a0,s2
    800047fc:	00001097          	auipc	ra,0x1
    80004800:	e54080e7          	jalr	-428(ra) # 80005650 <_Z8printIntiii>
    80004804:	00005517          	auipc	a0,0x5
    80004808:	99450513          	addi	a0,a0,-1644 # 80009198 <CONSOLE_STATUS+0x188>
    8000480c:	00001097          	auipc	ra,0x1
    80004810:	cac080e7          	jalr	-852(ra) # 800054b8 <_Z11printStringPKc>
    80004814:	0400006f          	j	80004854 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004818:	00005517          	auipc	a0,0x5
    8000481c:	ad050513          	addi	a0,a0,-1328 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80004820:	00001097          	auipc	ra,0x1
    80004824:	c98080e7          	jalr	-872(ra) # 800054b8 <_Z11printStringPKc>
    80004828:	00000613          	li	a2,0
    8000482c:	00a00593          	li	a1,10
    80004830:	00048513          	mv	a0,s1
    80004834:	00001097          	auipc	ra,0x1
    80004838:	e1c080e7          	jalr	-484(ra) # 80005650 <_Z8printIntiii>
    8000483c:	00005517          	auipc	a0,0x5
    80004840:	95c50513          	addi	a0,a0,-1700 # 80009198 <CONSOLE_STATUS+0x188>
    80004844:	00001097          	auipc	ra,0x1
    80004848:	c74080e7          	jalr	-908(ra) # 800054b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000484c:	0014849b          	addiw	s1,s1,1
    80004850:	0ff4f493          	andi	s1,s1,255
    80004854:	00500793          	li	a5,5
    80004858:	fc97f0e3          	bgeu	a5,s1,80004818 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000485c:	00005517          	auipc	a0,0x5
    80004860:	a6450513          	addi	a0,a0,-1436 # 800092c0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004864:	00001097          	auipc	ra,0x1
    80004868:	c54080e7          	jalr	-940(ra) # 800054b8 <_Z11printStringPKc>
    finishedC = true;
    8000486c:	00100793          	li	a5,1
    80004870:	00007717          	auipc	a4,0x7
    80004874:	0cf70923          	sb	a5,210(a4) # 8000b942 <_ZL9finishedC>
    thread_dispatch();
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	aac080e7          	jalr	-1364(ra) # 80001324 <thread_dispatch>
}
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	01013403          	ld	s0,16(sp)
    80004888:	00813483          	ld	s1,8(sp)
    8000488c:	00013903          	ld	s2,0(sp)
    80004890:	02010113          	addi	sp,sp,32
    80004894:	00008067          	ret

0000000080004898 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004898:	fe010113          	addi	sp,sp,-32
    8000489c:	00113c23          	sd	ra,24(sp)
    800048a0:	00813823          	sd	s0,16(sp)
    800048a4:	00913423          	sd	s1,8(sp)
    800048a8:	01213023          	sd	s2,0(sp)
    800048ac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800048b0:	00a00493          	li	s1,10
    800048b4:	0400006f          	j	800048f4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800048b8:	00005517          	auipc	a0,0x5
    800048bc:	a6050513          	addi	a0,a0,-1440 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    800048c0:	00001097          	auipc	ra,0x1
    800048c4:	bf8080e7          	jalr	-1032(ra) # 800054b8 <_Z11printStringPKc>
    800048c8:	00000613          	li	a2,0
    800048cc:	00a00593          	li	a1,10
    800048d0:	00048513          	mv	a0,s1
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	d7c080e7          	jalr	-644(ra) # 80005650 <_Z8printIntiii>
    800048dc:	00005517          	auipc	a0,0x5
    800048e0:	8bc50513          	addi	a0,a0,-1860 # 80009198 <CONSOLE_STATUS+0x188>
    800048e4:	00001097          	auipc	ra,0x1
    800048e8:	bd4080e7          	jalr	-1068(ra) # 800054b8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800048ec:	0014849b          	addiw	s1,s1,1
    800048f0:	0ff4f493          	andi	s1,s1,255
    800048f4:	00c00793          	li	a5,12
    800048f8:	fc97f0e3          	bgeu	a5,s1,800048b8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800048fc:	00005517          	auipc	a0,0x5
    80004900:	a2450513          	addi	a0,a0,-1500 # 80009320 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004904:	00001097          	auipc	ra,0x1
    80004908:	bb4080e7          	jalr	-1100(ra) # 800054b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000490c:	00500313          	li	t1,5
    thread_dispatch();
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	a14080e7          	jalr	-1516(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004918:	01000513          	li	a0,16
    8000491c:	00000097          	auipc	ra,0x0
    80004920:	be8080e7          	jalr	-1048(ra) # 80004504 <_ZL9fibonaccim>
    80004924:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004928:	00005517          	auipc	a0,0x5
    8000492c:	a0850513          	addi	a0,a0,-1528 # 80009330 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80004930:	00001097          	auipc	ra,0x1
    80004934:	b88080e7          	jalr	-1144(ra) # 800054b8 <_Z11printStringPKc>
    80004938:	00000613          	li	a2,0
    8000493c:	00a00593          	li	a1,10
    80004940:	0009051b          	sext.w	a0,s2
    80004944:	00001097          	auipc	ra,0x1
    80004948:	d0c080e7          	jalr	-756(ra) # 80005650 <_Z8printIntiii>
    8000494c:	00005517          	auipc	a0,0x5
    80004950:	84c50513          	addi	a0,a0,-1972 # 80009198 <CONSOLE_STATUS+0x188>
    80004954:	00001097          	auipc	ra,0x1
    80004958:	b64080e7          	jalr	-1180(ra) # 800054b8 <_Z11printStringPKc>
    8000495c:	0400006f          	j	8000499c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004960:	00005517          	auipc	a0,0x5
    80004964:	9b850513          	addi	a0,a0,-1608 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	b50080e7          	jalr	-1200(ra) # 800054b8 <_Z11printStringPKc>
    80004970:	00000613          	li	a2,0
    80004974:	00a00593          	li	a1,10
    80004978:	00048513          	mv	a0,s1
    8000497c:	00001097          	auipc	ra,0x1
    80004980:	cd4080e7          	jalr	-812(ra) # 80005650 <_Z8printIntiii>
    80004984:	00005517          	auipc	a0,0x5
    80004988:	81450513          	addi	a0,a0,-2028 # 80009198 <CONSOLE_STATUS+0x188>
    8000498c:	00001097          	auipc	ra,0x1
    80004990:	b2c080e7          	jalr	-1236(ra) # 800054b8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004994:	0014849b          	addiw	s1,s1,1
    80004998:	0ff4f493          	andi	s1,s1,255
    8000499c:	00f00793          	li	a5,15
    800049a0:	fc97f0e3          	bgeu	a5,s1,80004960 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800049a4:	00005517          	auipc	a0,0x5
    800049a8:	99c50513          	addi	a0,a0,-1636 # 80009340 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    800049ac:	00001097          	auipc	ra,0x1
    800049b0:	b0c080e7          	jalr	-1268(ra) # 800054b8 <_Z11printStringPKc>
    finishedD = true;
    800049b4:	00100793          	li	a5,1
    800049b8:	00007717          	auipc	a4,0x7
    800049bc:	f8f705a3          	sb	a5,-117(a4) # 8000b943 <_ZL9finishedD>
    thread_dispatch();
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	964080e7          	jalr	-1692(ra) # 80001324 <thread_dispatch>
}
    800049c8:	01813083          	ld	ra,24(sp)
    800049cc:	01013403          	ld	s0,16(sp)
    800049d0:	00813483          	ld	s1,8(sp)
    800049d4:	00013903          	ld	s2,0(sp)
    800049d8:	02010113          	addi	sp,sp,32
    800049dc:	00008067          	ret

00000000800049e0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800049e0:	fc010113          	addi	sp,sp,-64
    800049e4:	02113c23          	sd	ra,56(sp)
    800049e8:	02813823          	sd	s0,48(sp)
    800049ec:	02913423          	sd	s1,40(sp)
    800049f0:	03213023          	sd	s2,32(sp)
    800049f4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800049f8:	02000513          	li	a0,32
    800049fc:	ffffe097          	auipc	ra,0xffffe
    80004a00:	59c080e7          	jalr	1436(ra) # 80002f98 <_Znwm>
    80004a04:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004a08:	ffffe097          	auipc	ra,0xffffe
    80004a0c:	75c080e7          	jalr	1884(ra) # 80003164 <_ZN6ThreadC1Ev>
    80004a10:	00007797          	auipc	a5,0x7
    80004a14:	d8078793          	addi	a5,a5,-640 # 8000b790 <_ZTV7WorkerA+0x10>
    80004a18:	00f4b023          	sd	a5,0(s1)
    80004a1c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004a20:	00005517          	auipc	a0,0x5
    80004a24:	93050513          	addi	a0,a0,-1744 # 80009350 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	a90080e7          	jalr	-1392(ra) # 800054b8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004a30:	02000513          	li	a0,32
    80004a34:	ffffe097          	auipc	ra,0xffffe
    80004a38:	564080e7          	jalr	1380(ra) # 80002f98 <_Znwm>
    80004a3c:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004a40:	ffffe097          	auipc	ra,0xffffe
    80004a44:	724080e7          	jalr	1828(ra) # 80003164 <_ZN6ThreadC1Ev>
    80004a48:	00007797          	auipc	a5,0x7
    80004a4c:	d7078793          	addi	a5,a5,-656 # 8000b7b8 <_ZTV7WorkerB+0x10>
    80004a50:	00f4b023          	sd	a5,0(s1)
    80004a54:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004a58:	00005517          	auipc	a0,0x5
    80004a5c:	91050513          	addi	a0,a0,-1776 # 80009368 <_ZZN5Riscv12printIntegerEmE6digits+0x1c0>
    80004a60:	00001097          	auipc	ra,0x1
    80004a64:	a58080e7          	jalr	-1448(ra) # 800054b8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004a68:	02000513          	li	a0,32
    80004a6c:	ffffe097          	auipc	ra,0xffffe
    80004a70:	52c080e7          	jalr	1324(ra) # 80002f98 <_Znwm>
    80004a74:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004a78:	ffffe097          	auipc	ra,0xffffe
    80004a7c:	6ec080e7          	jalr	1772(ra) # 80003164 <_ZN6ThreadC1Ev>
    80004a80:	00007797          	auipc	a5,0x7
    80004a84:	d6078793          	addi	a5,a5,-672 # 8000b7e0 <_ZTV7WorkerC+0x10>
    80004a88:	00f4b023          	sd	a5,0(s1)
    80004a8c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004a90:	00005517          	auipc	a0,0x5
    80004a94:	8f050513          	addi	a0,a0,-1808 # 80009380 <_ZZN5Riscv12printIntegerEmE6digits+0x1d8>
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	a20080e7          	jalr	-1504(ra) # 800054b8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004aa0:	02000513          	li	a0,32
    80004aa4:	ffffe097          	auipc	ra,0xffffe
    80004aa8:	4f4080e7          	jalr	1268(ra) # 80002f98 <_Znwm>
    80004aac:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004ab0:	ffffe097          	auipc	ra,0xffffe
    80004ab4:	6b4080e7          	jalr	1716(ra) # 80003164 <_ZN6ThreadC1Ev>
    80004ab8:	00007797          	auipc	a5,0x7
    80004abc:	d5078793          	addi	a5,a5,-688 # 8000b808 <_ZTV7WorkerD+0x10>
    80004ac0:	00f4b023          	sd	a5,0(s1)
    80004ac4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004ac8:	00005517          	auipc	a0,0x5
    80004acc:	8d050513          	addi	a0,a0,-1840 # 80009398 <_ZZN5Riscv12printIntegerEmE6digits+0x1f0>
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	9e8080e7          	jalr	-1560(ra) # 800054b8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004ad8:	00000493          	li	s1,0
    80004adc:	00300793          	li	a5,3
    80004ae0:	0297c663          	blt	a5,s1,80004b0c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004ae4:	00349793          	slli	a5,s1,0x3
    80004ae8:	fe040713          	addi	a4,s0,-32
    80004aec:	00f707b3          	add	a5,a4,a5
    80004af0:	fe07b503          	ld	a0,-32(a5)
    80004af4:	ffffe097          	auipc	ra,0xffffe
    80004af8:	574080e7          	jalr	1396(ra) # 80003068 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004afc:	0014849b          	addiw	s1,s1,1
    80004b00:	fddff06f          	j	80004adc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004b04:	ffffe097          	auipc	ra,0xffffe
    80004b08:	5a8080e7          	jalr	1448(ra) # 800030ac <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004b0c:	00007797          	auipc	a5,0x7
    80004b10:	e347c783          	lbu	a5,-460(a5) # 8000b940 <_ZL9finishedA>
    80004b14:	fe0788e3          	beqz	a5,80004b04 <_Z20Threads_CPP_API_testv+0x124>
    80004b18:	00007797          	auipc	a5,0x7
    80004b1c:	e297c783          	lbu	a5,-471(a5) # 8000b941 <_ZL9finishedB>
    80004b20:	fe0782e3          	beqz	a5,80004b04 <_Z20Threads_CPP_API_testv+0x124>
    80004b24:	00007797          	auipc	a5,0x7
    80004b28:	e1e7c783          	lbu	a5,-482(a5) # 8000b942 <_ZL9finishedC>
    80004b2c:	fc078ce3          	beqz	a5,80004b04 <_Z20Threads_CPP_API_testv+0x124>
    80004b30:	00007797          	auipc	a5,0x7
    80004b34:	e137c783          	lbu	a5,-493(a5) # 8000b943 <_ZL9finishedD>
    80004b38:	fc0786e3          	beqz	a5,80004b04 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004b3c:	fc040493          	addi	s1,s0,-64
    80004b40:	0080006f          	j	80004b48 <_Z20Threads_CPP_API_testv+0x168>
    80004b44:	00848493          	addi	s1,s1,8
    80004b48:	fe040793          	addi	a5,s0,-32
    80004b4c:	08f48663          	beq	s1,a5,80004bd8 <_Z20Threads_CPP_API_testv+0x1f8>
    80004b50:	0004b503          	ld	a0,0(s1)
    80004b54:	fe0508e3          	beqz	a0,80004b44 <_Z20Threads_CPP_API_testv+0x164>
    80004b58:	00053783          	ld	a5,0(a0)
    80004b5c:	0087b783          	ld	a5,8(a5)
    80004b60:	000780e7          	jalr	a5
    80004b64:	fe1ff06f          	j	80004b44 <_Z20Threads_CPP_API_testv+0x164>
    80004b68:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004b6c:	00048513          	mv	a0,s1
    80004b70:	ffffe097          	auipc	ra,0xffffe
    80004b74:	450080e7          	jalr	1104(ra) # 80002fc0 <_ZdlPv>
    80004b78:	00090513          	mv	a0,s2
    80004b7c:	00008097          	auipc	ra,0x8
    80004b80:	eac080e7          	jalr	-340(ra) # 8000ca28 <_Unwind_Resume>
    80004b84:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	ffffe097          	auipc	ra,0xffffe
    80004b90:	434080e7          	jalr	1076(ra) # 80002fc0 <_ZdlPv>
    80004b94:	00090513          	mv	a0,s2
    80004b98:	00008097          	auipc	ra,0x8
    80004b9c:	e90080e7          	jalr	-368(ra) # 8000ca28 <_Unwind_Resume>
    80004ba0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004ba4:	00048513          	mv	a0,s1
    80004ba8:	ffffe097          	auipc	ra,0xffffe
    80004bac:	418080e7          	jalr	1048(ra) # 80002fc0 <_ZdlPv>
    80004bb0:	00090513          	mv	a0,s2
    80004bb4:	00008097          	auipc	ra,0x8
    80004bb8:	e74080e7          	jalr	-396(ra) # 8000ca28 <_Unwind_Resume>
    80004bbc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004bc0:	00048513          	mv	a0,s1
    80004bc4:	ffffe097          	auipc	ra,0xffffe
    80004bc8:	3fc080e7          	jalr	1020(ra) # 80002fc0 <_ZdlPv>
    80004bcc:	00090513          	mv	a0,s2
    80004bd0:	00008097          	auipc	ra,0x8
    80004bd4:	e58080e7          	jalr	-424(ra) # 8000ca28 <_Unwind_Resume>
    80004bd8:	03813083          	ld	ra,56(sp)
    80004bdc:	03013403          	ld	s0,48(sp)
    80004be0:	02813483          	ld	s1,40(sp)
    80004be4:	02013903          	ld	s2,32(sp)
    80004be8:	04010113          	addi	sp,sp,64
    80004bec:	00008067          	ret

0000000080004bf0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004bf0:	ff010113          	addi	sp,sp,-16
    80004bf4:	00113423          	sd	ra,8(sp)
    80004bf8:	00813023          	sd	s0,0(sp)
    80004bfc:	01010413          	addi	s0,sp,16
    80004c00:	00007797          	auipc	a5,0x7
    80004c04:	b9078793          	addi	a5,a5,-1136 # 8000b790 <_ZTV7WorkerA+0x10>
    80004c08:	00f53023          	sd	a5,0(a0)
    80004c0c:	ffffe097          	auipc	ra,0xffffe
    80004c10:	2d0080e7          	jalr	720(ra) # 80002edc <_ZN6ThreadD1Ev>
    80004c14:	00813083          	ld	ra,8(sp)
    80004c18:	00013403          	ld	s0,0(sp)
    80004c1c:	01010113          	addi	sp,sp,16
    80004c20:	00008067          	ret

0000000080004c24 <_ZN7WorkerAD0Ev>:
    80004c24:	fe010113          	addi	sp,sp,-32
    80004c28:	00113c23          	sd	ra,24(sp)
    80004c2c:	00813823          	sd	s0,16(sp)
    80004c30:	00913423          	sd	s1,8(sp)
    80004c34:	02010413          	addi	s0,sp,32
    80004c38:	00050493          	mv	s1,a0
    80004c3c:	00007797          	auipc	a5,0x7
    80004c40:	b5478793          	addi	a5,a5,-1196 # 8000b790 <_ZTV7WorkerA+0x10>
    80004c44:	00f53023          	sd	a5,0(a0)
    80004c48:	ffffe097          	auipc	ra,0xffffe
    80004c4c:	294080e7          	jalr	660(ra) # 80002edc <_ZN6ThreadD1Ev>
    80004c50:	00048513          	mv	a0,s1
    80004c54:	ffffe097          	auipc	ra,0xffffe
    80004c58:	36c080e7          	jalr	876(ra) # 80002fc0 <_ZdlPv>
    80004c5c:	01813083          	ld	ra,24(sp)
    80004c60:	01013403          	ld	s0,16(sp)
    80004c64:	00813483          	ld	s1,8(sp)
    80004c68:	02010113          	addi	sp,sp,32
    80004c6c:	00008067          	ret

0000000080004c70 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004c70:	ff010113          	addi	sp,sp,-16
    80004c74:	00113423          	sd	ra,8(sp)
    80004c78:	00813023          	sd	s0,0(sp)
    80004c7c:	01010413          	addi	s0,sp,16
    80004c80:	00007797          	auipc	a5,0x7
    80004c84:	b3878793          	addi	a5,a5,-1224 # 8000b7b8 <_ZTV7WorkerB+0x10>
    80004c88:	00f53023          	sd	a5,0(a0)
    80004c8c:	ffffe097          	auipc	ra,0xffffe
    80004c90:	250080e7          	jalr	592(ra) # 80002edc <_ZN6ThreadD1Ev>
    80004c94:	00813083          	ld	ra,8(sp)
    80004c98:	00013403          	ld	s0,0(sp)
    80004c9c:	01010113          	addi	sp,sp,16
    80004ca0:	00008067          	ret

0000000080004ca4 <_ZN7WorkerBD0Ev>:
    80004ca4:	fe010113          	addi	sp,sp,-32
    80004ca8:	00113c23          	sd	ra,24(sp)
    80004cac:	00813823          	sd	s0,16(sp)
    80004cb0:	00913423          	sd	s1,8(sp)
    80004cb4:	02010413          	addi	s0,sp,32
    80004cb8:	00050493          	mv	s1,a0
    80004cbc:	00007797          	auipc	a5,0x7
    80004cc0:	afc78793          	addi	a5,a5,-1284 # 8000b7b8 <_ZTV7WorkerB+0x10>
    80004cc4:	00f53023          	sd	a5,0(a0)
    80004cc8:	ffffe097          	auipc	ra,0xffffe
    80004ccc:	214080e7          	jalr	532(ra) # 80002edc <_ZN6ThreadD1Ev>
    80004cd0:	00048513          	mv	a0,s1
    80004cd4:	ffffe097          	auipc	ra,0xffffe
    80004cd8:	2ec080e7          	jalr	748(ra) # 80002fc0 <_ZdlPv>
    80004cdc:	01813083          	ld	ra,24(sp)
    80004ce0:	01013403          	ld	s0,16(sp)
    80004ce4:	00813483          	ld	s1,8(sp)
    80004ce8:	02010113          	addi	sp,sp,32
    80004cec:	00008067          	ret

0000000080004cf0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004cf0:	ff010113          	addi	sp,sp,-16
    80004cf4:	00113423          	sd	ra,8(sp)
    80004cf8:	00813023          	sd	s0,0(sp)
    80004cfc:	01010413          	addi	s0,sp,16
    80004d00:	00007797          	auipc	a5,0x7
    80004d04:	ae078793          	addi	a5,a5,-1312 # 8000b7e0 <_ZTV7WorkerC+0x10>
    80004d08:	00f53023          	sd	a5,0(a0)
    80004d0c:	ffffe097          	auipc	ra,0xffffe
    80004d10:	1d0080e7          	jalr	464(ra) # 80002edc <_ZN6ThreadD1Ev>
    80004d14:	00813083          	ld	ra,8(sp)
    80004d18:	00013403          	ld	s0,0(sp)
    80004d1c:	01010113          	addi	sp,sp,16
    80004d20:	00008067          	ret

0000000080004d24 <_ZN7WorkerCD0Ev>:
    80004d24:	fe010113          	addi	sp,sp,-32
    80004d28:	00113c23          	sd	ra,24(sp)
    80004d2c:	00813823          	sd	s0,16(sp)
    80004d30:	00913423          	sd	s1,8(sp)
    80004d34:	02010413          	addi	s0,sp,32
    80004d38:	00050493          	mv	s1,a0
    80004d3c:	00007797          	auipc	a5,0x7
    80004d40:	aa478793          	addi	a5,a5,-1372 # 8000b7e0 <_ZTV7WorkerC+0x10>
    80004d44:	00f53023          	sd	a5,0(a0)
    80004d48:	ffffe097          	auipc	ra,0xffffe
    80004d4c:	194080e7          	jalr	404(ra) # 80002edc <_ZN6ThreadD1Ev>
    80004d50:	00048513          	mv	a0,s1
    80004d54:	ffffe097          	auipc	ra,0xffffe
    80004d58:	26c080e7          	jalr	620(ra) # 80002fc0 <_ZdlPv>
    80004d5c:	01813083          	ld	ra,24(sp)
    80004d60:	01013403          	ld	s0,16(sp)
    80004d64:	00813483          	ld	s1,8(sp)
    80004d68:	02010113          	addi	sp,sp,32
    80004d6c:	00008067          	ret

0000000080004d70 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004d70:	ff010113          	addi	sp,sp,-16
    80004d74:	00113423          	sd	ra,8(sp)
    80004d78:	00813023          	sd	s0,0(sp)
    80004d7c:	01010413          	addi	s0,sp,16
    80004d80:	00007797          	auipc	a5,0x7
    80004d84:	a8878793          	addi	a5,a5,-1400 # 8000b808 <_ZTV7WorkerD+0x10>
    80004d88:	00f53023          	sd	a5,0(a0)
    80004d8c:	ffffe097          	auipc	ra,0xffffe
    80004d90:	150080e7          	jalr	336(ra) # 80002edc <_ZN6ThreadD1Ev>
    80004d94:	00813083          	ld	ra,8(sp)
    80004d98:	00013403          	ld	s0,0(sp)
    80004d9c:	01010113          	addi	sp,sp,16
    80004da0:	00008067          	ret

0000000080004da4 <_ZN7WorkerDD0Ev>:
    80004da4:	fe010113          	addi	sp,sp,-32
    80004da8:	00113c23          	sd	ra,24(sp)
    80004dac:	00813823          	sd	s0,16(sp)
    80004db0:	00913423          	sd	s1,8(sp)
    80004db4:	02010413          	addi	s0,sp,32
    80004db8:	00050493          	mv	s1,a0
    80004dbc:	00007797          	auipc	a5,0x7
    80004dc0:	a4c78793          	addi	a5,a5,-1460 # 8000b808 <_ZTV7WorkerD+0x10>
    80004dc4:	00f53023          	sd	a5,0(a0)
    80004dc8:	ffffe097          	auipc	ra,0xffffe
    80004dcc:	114080e7          	jalr	276(ra) # 80002edc <_ZN6ThreadD1Ev>
    80004dd0:	00048513          	mv	a0,s1
    80004dd4:	ffffe097          	auipc	ra,0xffffe
    80004dd8:	1ec080e7          	jalr	492(ra) # 80002fc0 <_ZdlPv>
    80004ddc:	01813083          	ld	ra,24(sp)
    80004de0:	01013403          	ld	s0,16(sp)
    80004de4:	00813483          	ld	s1,8(sp)
    80004de8:	02010113          	addi	sp,sp,32
    80004dec:	00008067          	ret

0000000080004df0 <_ZN7WorkerA3runEv>:
    void run() override {
    80004df0:	ff010113          	addi	sp,sp,-16
    80004df4:	00113423          	sd	ra,8(sp)
    80004df8:	00813023          	sd	s0,0(sp)
    80004dfc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004e00:	00000593          	li	a1,0
    80004e04:	fffff097          	auipc	ra,0xfffff
    80004e08:	774080e7          	jalr	1908(ra) # 80004578 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004e0c:	00813083          	ld	ra,8(sp)
    80004e10:	00013403          	ld	s0,0(sp)
    80004e14:	01010113          	addi	sp,sp,16
    80004e18:	00008067          	ret

0000000080004e1c <_ZN7WorkerB3runEv>:
    void run() override {
    80004e1c:	ff010113          	addi	sp,sp,-16
    80004e20:	00113423          	sd	ra,8(sp)
    80004e24:	00813023          	sd	s0,0(sp)
    80004e28:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004e2c:	00000593          	li	a1,0
    80004e30:	00000097          	auipc	ra,0x0
    80004e34:	814080e7          	jalr	-2028(ra) # 80004644 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004e38:	00813083          	ld	ra,8(sp)
    80004e3c:	00013403          	ld	s0,0(sp)
    80004e40:	01010113          	addi	sp,sp,16
    80004e44:	00008067          	ret

0000000080004e48 <_ZN7WorkerC3runEv>:
    void run() override {
    80004e48:	ff010113          	addi	sp,sp,-16
    80004e4c:	00113423          	sd	ra,8(sp)
    80004e50:	00813023          	sd	s0,0(sp)
    80004e54:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004e58:	00000593          	li	a1,0
    80004e5c:	00000097          	auipc	ra,0x0
    80004e60:	8bc080e7          	jalr	-1860(ra) # 80004718 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004e64:	00813083          	ld	ra,8(sp)
    80004e68:	00013403          	ld	s0,0(sp)
    80004e6c:	01010113          	addi	sp,sp,16
    80004e70:	00008067          	ret

0000000080004e74 <_ZN7WorkerD3runEv>:

    void run() override {
    80004e74:	ff010113          	addi	sp,sp,-16
    80004e78:	00113423          	sd	ra,8(sp)
    80004e7c:	00813023          	sd	s0,0(sp)
    80004e80:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004e84:	00000593          	li	a1,0
    80004e88:	00000097          	auipc	ra,0x0
    80004e8c:	a10080e7          	jalr	-1520(ra) # 80004898 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004e90:	00813083          	ld	ra,8(sp)
    80004e94:	00013403          	ld	s0,0(sp)
    80004e98:	01010113          	addi	sp,sp,16
    80004e9c:	00008067          	ret

0000000080004ea0 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004ea0:	fe010113          	addi	sp,sp,-32
    80004ea4:	00113c23          	sd	ra,24(sp)
    80004ea8:	00813823          	sd	s0,16(sp)
    80004eac:	00913423          	sd	s1,8(sp)
    80004eb0:	01213023          	sd	s2,0(sp)
    80004eb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004eb8:	00000913          	li	s2,0
    80004ebc:	0340006f          	j	80004ef0 <_Z11workerBodyAPv+0x50>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004ec0:	ffffc097          	auipc	ra,0xffffc
    80004ec4:	464080e7          	jalr	1124(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004ec8:	00148493          	addi	s1,s1,1
    80004ecc:	1f300793          	li	a5,499
    80004ed0:	0097ee63          	bltu	a5,s1,80004eec <_Z11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004ed4:	00000713          	li	a4,0
    80004ed8:	000017b7          	lui	a5,0x1
    80004edc:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004ee0:	fee7e0e3          	bltu	a5,a4,80004ec0 <_Z11workerBodyAPv+0x20>
    80004ee4:	00170713          	addi	a4,a4,1
    80004ee8:	ff1ff06f          	j	80004ed8 <_Z11workerBodyAPv+0x38>
    for (uint64 i = 0; i < 10; i++) {
    80004eec:	00190913          	addi	s2,s2,1
    80004ef0:	00900793          	li	a5,9
    80004ef4:	0527e063          	bltu	a5,s2,80004f34 <_Z11workerBodyAPv+0x94>
        printString("A: i="); printInt(i); printString("\n");
    80004ef8:	00004517          	auipc	a0,0x4
    80004efc:	3c050513          	addi	a0,a0,960 # 800092b8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004f00:	00000097          	auipc	ra,0x0
    80004f04:	5b8080e7          	jalr	1464(ra) # 800054b8 <_Z11printStringPKc>
    80004f08:	00000613          	li	a2,0
    80004f0c:	00a00593          	li	a1,10
    80004f10:	0009051b          	sext.w	a0,s2
    80004f14:	00000097          	auipc	ra,0x0
    80004f18:	73c080e7          	jalr	1852(ra) # 80005650 <_Z8printIntiii>
    80004f1c:	00004517          	auipc	a0,0x4
    80004f20:	27c50513          	addi	a0,a0,636 # 80009198 <CONSOLE_STATUS+0x188>
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	594080e7          	jalr	1428(ra) # 800054b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004f2c:	00000493          	li	s1,0
    80004f30:	f9dff06f          	j	80004ecc <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004f34:	00004517          	auipc	a0,0x4
    80004f38:	38c50513          	addi	a0,a0,908 # 800092c0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	57c080e7          	jalr	1404(ra) # 800054b8 <_Z11printStringPKc>
    finishedA = true;
    80004f44:	00100793          	li	a5,1
    80004f48:	00007717          	auipc	a4,0x7
    80004f4c:	9ef70e23          	sb	a5,-1540(a4) # 8000b944 <_ZL9finishedA>
}
    80004f50:	01813083          	ld	ra,24(sp)
    80004f54:	01013403          	ld	s0,16(sp)
    80004f58:	00813483          	ld	s1,8(sp)
    80004f5c:	00013903          	ld	s2,0(sp)
    80004f60:	02010113          	addi	sp,sp,32
    80004f64:	00008067          	ret

0000000080004f68 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80004f68:	fe010113          	addi	sp,sp,-32
    80004f6c:	00113c23          	sd	ra,24(sp)
    80004f70:	00813823          	sd	s0,16(sp)
    80004f74:	00913423          	sd	s1,8(sp)
    80004f78:	01213023          	sd	s2,0(sp)
    80004f7c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004f80:	00000913          	li	s2,0
    80004f84:	0340006f          	j	80004fb8 <_Z11workerBodyBPv+0x50>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004f88:	ffffc097          	auipc	ra,0xffffc
    80004f8c:	39c080e7          	jalr	924(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004f90:	00148493          	addi	s1,s1,1
    80004f94:	1f300793          	li	a5,499
    80004f98:	0097ee63          	bltu	a5,s1,80004fb4 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004f9c:	00000713          	li	a4,0
    80004fa0:	000017b7          	lui	a5,0x1
    80004fa4:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004fa8:	fee7e0e3          	bltu	a5,a4,80004f88 <_Z11workerBodyBPv+0x20>
    80004fac:	00170713          	addi	a4,a4,1
    80004fb0:	ff1ff06f          	j	80004fa0 <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80004fb4:	00190913          	addi	s2,s2,1
    80004fb8:	00f00793          	li	a5,15
    80004fbc:	0527e063          	bltu	a5,s2,80004ffc <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80004fc0:	00004517          	auipc	a0,0x4
    80004fc4:	31050513          	addi	a0,a0,784 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004fc8:	00000097          	auipc	ra,0x0
    80004fcc:	4f0080e7          	jalr	1264(ra) # 800054b8 <_Z11printStringPKc>
    80004fd0:	00000613          	li	a2,0
    80004fd4:	00a00593          	li	a1,10
    80004fd8:	0009051b          	sext.w	a0,s2
    80004fdc:	00000097          	auipc	ra,0x0
    80004fe0:	674080e7          	jalr	1652(ra) # 80005650 <_Z8printIntiii>
    80004fe4:	00004517          	auipc	a0,0x4
    80004fe8:	1b450513          	addi	a0,a0,436 # 80009198 <CONSOLE_STATUS+0x188>
    80004fec:	00000097          	auipc	ra,0x0
    80004ff0:	4cc080e7          	jalr	1228(ra) # 800054b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004ff4:	00000493          	li	s1,0
    80004ff8:	f9dff06f          	j	80004f94 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004ffc:	00004517          	auipc	a0,0x4
    80005000:	2dc50513          	addi	a0,a0,732 # 800092d8 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005004:	00000097          	auipc	ra,0x0
    80005008:	4b4080e7          	jalr	1204(ra) # 800054b8 <_Z11printStringPKc>
    finishedB = true;
    8000500c:	00100793          	li	a5,1
    80005010:	00007717          	auipc	a4,0x7
    80005014:	92f70aa3          	sb	a5,-1739(a4) # 8000b945 <_ZL9finishedB>
    thread_dispatch();
    80005018:	ffffc097          	auipc	ra,0xffffc
    8000501c:	30c080e7          	jalr	780(ra) # 80001324 <thread_dispatch>
}
    80005020:	01813083          	ld	ra,24(sp)
    80005024:	01013403          	ld	s0,16(sp)
    80005028:	00813483          	ld	s1,8(sp)
    8000502c:	00013903          	ld	s2,0(sp)
    80005030:	02010113          	addi	sp,sp,32
    80005034:	00008067          	ret

0000000080005038 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80005038:	fe010113          	addi	sp,sp,-32
    8000503c:	00113c23          	sd	ra,24(sp)
    80005040:	00813823          	sd	s0,16(sp)
    80005044:	00913423          	sd	s1,8(sp)
    80005048:	01213023          	sd	s2,0(sp)
    8000504c:	02010413          	addi	s0,sp,32
    80005050:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005054:	00100793          	li	a5,1
    80005058:	02a7f863          	bgeu	a5,a0,80005088 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000505c:	00a00793          	li	a5,10
    80005060:	02f577b3          	remu	a5,a0,a5
    80005064:	02078e63          	beqz	a5,800050a0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005068:	fff48513          	addi	a0,s1,-1
    8000506c:	00000097          	auipc	ra,0x0
    80005070:	fcc080e7          	jalr	-52(ra) # 80005038 <_ZL9fibonaccim>
    80005074:	00050913          	mv	s2,a0
    80005078:	ffe48513          	addi	a0,s1,-2
    8000507c:	00000097          	auipc	ra,0x0
    80005080:	fbc080e7          	jalr	-68(ra) # 80005038 <_ZL9fibonaccim>
    80005084:	00a90533          	add	a0,s2,a0
}
    80005088:	01813083          	ld	ra,24(sp)
    8000508c:	01013403          	ld	s0,16(sp)
    80005090:	00813483          	ld	s1,8(sp)
    80005094:	00013903          	ld	s2,0(sp)
    80005098:	02010113          	addi	sp,sp,32
    8000509c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800050a0:	ffffc097          	auipc	ra,0xffffc
    800050a4:	284080e7          	jalr	644(ra) # 80001324 <thread_dispatch>
    800050a8:	fc1ff06f          	j	80005068 <_ZL9fibonaccim+0x30>

00000000800050ac <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800050ac:	fe010113          	addi	sp,sp,-32
    800050b0:	00113c23          	sd	ra,24(sp)
    800050b4:	00813823          	sd	s0,16(sp)
    800050b8:	00913423          	sd	s1,8(sp)
    800050bc:	01213023          	sd	s2,0(sp)
    800050c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800050c4:	00000493          	li	s1,0
    800050c8:	0400006f          	j	80005108 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800050cc:	00004517          	auipc	a0,0x4
    800050d0:	21c50513          	addi	a0,a0,540 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    800050d4:	00000097          	auipc	ra,0x0
    800050d8:	3e4080e7          	jalr	996(ra) # 800054b8 <_Z11printStringPKc>
    800050dc:	00000613          	li	a2,0
    800050e0:	00a00593          	li	a1,10
    800050e4:	00048513          	mv	a0,s1
    800050e8:	00000097          	auipc	ra,0x0
    800050ec:	568080e7          	jalr	1384(ra) # 80005650 <_Z8printIntiii>
    800050f0:	00004517          	auipc	a0,0x4
    800050f4:	0a850513          	addi	a0,a0,168 # 80009198 <CONSOLE_STATUS+0x188>
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	3c0080e7          	jalr	960(ra) # 800054b8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005100:	0014849b          	addiw	s1,s1,1
    80005104:	0ff4f493          	andi	s1,s1,255
    80005108:	00200793          	li	a5,2
    8000510c:	fc97f0e3          	bgeu	a5,s1,800050cc <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005110:	00004517          	auipc	a0,0x4
    80005114:	1e050513          	addi	a0,a0,480 # 800092f0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005118:	00000097          	auipc	ra,0x0
    8000511c:	3a0080e7          	jalr	928(ra) # 800054b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005120:	00700313          	li	t1,7
    thread_dispatch();
    80005124:	ffffc097          	auipc	ra,0xffffc
    80005128:	200080e7          	jalr	512(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000512c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005130:	00004517          	auipc	a0,0x4
    80005134:	1d050513          	addi	a0,a0,464 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    80005138:	00000097          	auipc	ra,0x0
    8000513c:	380080e7          	jalr	896(ra) # 800054b8 <_Z11printStringPKc>
    80005140:	00000613          	li	a2,0
    80005144:	00a00593          	li	a1,10
    80005148:	0009051b          	sext.w	a0,s2
    8000514c:	00000097          	auipc	ra,0x0
    80005150:	504080e7          	jalr	1284(ra) # 80005650 <_Z8printIntiii>
    80005154:	00004517          	auipc	a0,0x4
    80005158:	04450513          	addi	a0,a0,68 # 80009198 <CONSOLE_STATUS+0x188>
    8000515c:	00000097          	auipc	ra,0x0
    80005160:	35c080e7          	jalr	860(ra) # 800054b8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005164:	00c00513          	li	a0,12
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	ed0080e7          	jalr	-304(ra) # 80005038 <_ZL9fibonaccim>
    80005170:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005174:	00004517          	auipc	a0,0x4
    80005178:	19450513          	addi	a0,a0,404 # 80009308 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	33c080e7          	jalr	828(ra) # 800054b8 <_Z11printStringPKc>
    80005184:	00000613          	li	a2,0
    80005188:	00a00593          	li	a1,10
    8000518c:	0009051b          	sext.w	a0,s2
    80005190:	00000097          	auipc	ra,0x0
    80005194:	4c0080e7          	jalr	1216(ra) # 80005650 <_Z8printIntiii>
    80005198:	00004517          	auipc	a0,0x4
    8000519c:	00050513          	mv	a0,a0
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	318080e7          	jalr	792(ra) # 800054b8 <_Z11printStringPKc>
    800051a8:	0400006f          	j	800051e8 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800051ac:	00004517          	auipc	a0,0x4
    800051b0:	13c50513          	addi	a0,a0,316 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    800051b4:	00000097          	auipc	ra,0x0
    800051b8:	304080e7          	jalr	772(ra) # 800054b8 <_Z11printStringPKc>
    800051bc:	00000613          	li	a2,0
    800051c0:	00a00593          	li	a1,10
    800051c4:	00048513          	mv	a0,s1
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	488080e7          	jalr	1160(ra) # 80005650 <_Z8printIntiii>
    800051d0:	00004517          	auipc	a0,0x4
    800051d4:	fc850513          	addi	a0,a0,-56 # 80009198 <CONSOLE_STATUS+0x188>
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	2e0080e7          	jalr	736(ra) # 800054b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800051e0:	0014849b          	addiw	s1,s1,1
    800051e4:	0ff4f493          	andi	s1,s1,255
    800051e8:	00500793          	li	a5,5
    800051ec:	fc97f0e3          	bgeu	a5,s1,800051ac <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    800051f0:	00004517          	auipc	a0,0x4
    800051f4:	1c050513          	addi	a0,a0,448 # 800093b0 <_ZZN5Riscv12printIntegerEmE6digits+0x208>
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	2c0080e7          	jalr	704(ra) # 800054b8 <_Z11printStringPKc>
    finishedC = true;
    80005200:	00100793          	li	a5,1
    80005204:	00006717          	auipc	a4,0x6
    80005208:	74f70123          	sb	a5,1858(a4) # 8000b946 <_ZL9finishedC>
    thread_dispatch();
    8000520c:	ffffc097          	auipc	ra,0xffffc
    80005210:	118080e7          	jalr	280(ra) # 80001324 <thread_dispatch>
}
    80005214:	01813083          	ld	ra,24(sp)
    80005218:	01013403          	ld	s0,16(sp)
    8000521c:	00813483          	ld	s1,8(sp)
    80005220:	00013903          	ld	s2,0(sp)
    80005224:	02010113          	addi	sp,sp,32
    80005228:	00008067          	ret

000000008000522c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    8000522c:	fe010113          	addi	sp,sp,-32
    80005230:	00113c23          	sd	ra,24(sp)
    80005234:	00813823          	sd	s0,16(sp)
    80005238:	00913423          	sd	s1,8(sp)
    8000523c:	01213023          	sd	s2,0(sp)
    80005240:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005244:	00a00493          	li	s1,10
    80005248:	0400006f          	j	80005288 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000524c:	00004517          	auipc	a0,0x4
    80005250:	0cc50513          	addi	a0,a0,204 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80005254:	00000097          	auipc	ra,0x0
    80005258:	264080e7          	jalr	612(ra) # 800054b8 <_Z11printStringPKc>
    8000525c:	00000613          	li	a2,0
    80005260:	00a00593          	li	a1,10
    80005264:	00048513          	mv	a0,s1
    80005268:	00000097          	auipc	ra,0x0
    8000526c:	3e8080e7          	jalr	1000(ra) # 80005650 <_Z8printIntiii>
    80005270:	00004517          	auipc	a0,0x4
    80005274:	f2850513          	addi	a0,a0,-216 # 80009198 <CONSOLE_STATUS+0x188>
    80005278:	00000097          	auipc	ra,0x0
    8000527c:	240080e7          	jalr	576(ra) # 800054b8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005280:	0014849b          	addiw	s1,s1,1
    80005284:	0ff4f493          	andi	s1,s1,255
    80005288:	00c00793          	li	a5,12
    8000528c:	fc97f0e3          	bgeu	a5,s1,8000524c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005290:	00004517          	auipc	a0,0x4
    80005294:	09050513          	addi	a0,a0,144 # 80009320 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	220080e7          	jalr	544(ra) # 800054b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800052a0:	00500313          	li	t1,5
    thread_dispatch();
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	080080e7          	jalr	128(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    800052ac:	01000513          	li	a0,16
    800052b0:	00000097          	auipc	ra,0x0
    800052b4:	d88080e7          	jalr	-632(ra) # 80005038 <_ZL9fibonaccim>
    800052b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800052bc:	00004517          	auipc	a0,0x4
    800052c0:	07450513          	addi	a0,a0,116 # 80009330 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    800052c4:	00000097          	auipc	ra,0x0
    800052c8:	1f4080e7          	jalr	500(ra) # 800054b8 <_Z11printStringPKc>
    800052cc:	00000613          	li	a2,0
    800052d0:	00a00593          	li	a1,10
    800052d4:	0009051b          	sext.w	a0,s2
    800052d8:	00000097          	auipc	ra,0x0
    800052dc:	378080e7          	jalr	888(ra) # 80005650 <_Z8printIntiii>
    800052e0:	00004517          	auipc	a0,0x4
    800052e4:	eb850513          	addi	a0,a0,-328 # 80009198 <CONSOLE_STATUS+0x188>
    800052e8:	00000097          	auipc	ra,0x0
    800052ec:	1d0080e7          	jalr	464(ra) # 800054b8 <_Z11printStringPKc>
    800052f0:	0400006f          	j	80005330 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052f4:	00004517          	auipc	a0,0x4
    800052f8:	02450513          	addi	a0,a0,36 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    800052fc:	00000097          	auipc	ra,0x0
    80005300:	1bc080e7          	jalr	444(ra) # 800054b8 <_Z11printStringPKc>
    80005304:	00000613          	li	a2,0
    80005308:	00a00593          	li	a1,10
    8000530c:	00048513          	mv	a0,s1
    80005310:	00000097          	auipc	ra,0x0
    80005314:	340080e7          	jalr	832(ra) # 80005650 <_Z8printIntiii>
    80005318:	00004517          	auipc	a0,0x4
    8000531c:	e8050513          	addi	a0,a0,-384 # 80009198 <CONSOLE_STATUS+0x188>
    80005320:	00000097          	auipc	ra,0x0
    80005324:	198080e7          	jalr	408(ra) # 800054b8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005328:	0014849b          	addiw	s1,s1,1
    8000532c:	0ff4f493          	andi	s1,s1,255
    80005330:	00f00793          	li	a5,15
    80005334:	fc97f0e3          	bgeu	a5,s1,800052f4 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005338:	00004517          	auipc	a0,0x4
    8000533c:	00850513          	addi	a0,a0,8 # 80009340 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    80005340:	00000097          	auipc	ra,0x0
    80005344:	178080e7          	jalr	376(ra) # 800054b8 <_Z11printStringPKc>
    finishedD = true;
    80005348:	00100793          	li	a5,1
    8000534c:	00006717          	auipc	a4,0x6
    80005350:	5ef70da3          	sb	a5,1531(a4) # 8000b947 <_ZL9finishedD>
    thread_dispatch();
    80005354:	ffffc097          	auipc	ra,0xffffc
    80005358:	fd0080e7          	jalr	-48(ra) # 80001324 <thread_dispatch>
}
    8000535c:	01813083          	ld	ra,24(sp)
    80005360:	01013403          	ld	s0,16(sp)
    80005364:	00813483          	ld	s1,8(sp)
    80005368:	00013903          	ld	s2,0(sp)
    8000536c:	02010113          	addi	sp,sp,32
    80005370:	00008067          	ret

0000000080005374 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005374:	fc010113          	addi	sp,sp,-64
    80005378:	02113c23          	sd	ra,56(sp)
    8000537c:	02813823          	sd	s0,48(sp)
    80005380:	02913423          	sd	s1,40(sp)
    80005384:	03213023          	sd	s2,32(sp)
    80005388:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000538c:	00000613          	li	a2,0
    80005390:	00000597          	auipc	a1,0x0
    80005394:	b1058593          	addi	a1,a1,-1264 # 80004ea0 <_Z11workerBodyAPv>
    80005398:	fc040513          	addi	a0,s0,-64
    8000539c:	ffffc097          	auipc	ra,0xffffc
    800053a0:	f08080e7          	jalr	-248(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    800053a4:	00004517          	auipc	a0,0x4
    800053a8:	fac50513          	addi	a0,a0,-84 # 80009350 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    800053ac:	00000097          	auipc	ra,0x0
    800053b0:	10c080e7          	jalr	268(ra) # 800054b8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800053b4:	00000613          	li	a2,0
    800053b8:	00000597          	auipc	a1,0x0
    800053bc:	bb058593          	addi	a1,a1,-1104 # 80004f68 <_Z11workerBodyBPv>
    800053c0:	fc840513          	addi	a0,s0,-56
    800053c4:	ffffc097          	auipc	ra,0xffffc
    800053c8:	ee0080e7          	jalr	-288(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    800053cc:	00004517          	auipc	a0,0x4
    800053d0:	f9c50513          	addi	a0,a0,-100 # 80009368 <_ZZN5Riscv12printIntegerEmE6digits+0x1c0>
    800053d4:	00000097          	auipc	ra,0x0
    800053d8:	0e4080e7          	jalr	228(ra) # 800054b8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800053dc:	00000613          	li	a2,0
    800053e0:	00000597          	auipc	a1,0x0
    800053e4:	ccc58593          	addi	a1,a1,-820 # 800050ac <_Z11workerBodyCPv>
    800053e8:	fd040513          	addi	a0,s0,-48
    800053ec:	ffffc097          	auipc	ra,0xffffc
    800053f0:	eb8080e7          	jalr	-328(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    800053f4:	00004517          	auipc	a0,0x4
    800053f8:	f8c50513          	addi	a0,a0,-116 # 80009380 <_ZZN5Riscv12printIntegerEmE6digits+0x1d8>
    800053fc:	00000097          	auipc	ra,0x0
    80005400:	0bc080e7          	jalr	188(ra) # 800054b8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005404:	00000613          	li	a2,0
    80005408:	00000597          	auipc	a1,0x0
    8000540c:	e2458593          	addi	a1,a1,-476 # 8000522c <_Z11workerBodyDPv>
    80005410:	fd840513          	addi	a0,s0,-40
    80005414:	ffffc097          	auipc	ra,0xffffc
    80005418:	e90080e7          	jalr	-368(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    8000541c:	00004517          	auipc	a0,0x4
    80005420:	f7c50513          	addi	a0,a0,-132 # 80009398 <_ZZN5Riscv12printIntegerEmE6digits+0x1f0>
    80005424:	00000097          	auipc	ra,0x0
    80005428:	094080e7          	jalr	148(ra) # 800054b8 <_Z11printStringPKc>
    8000542c:	00c0006f          	j	80005438 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80005430:	ffffc097          	auipc	ra,0xffffc
    80005434:	ef4080e7          	jalr	-268(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005438:	00006797          	auipc	a5,0x6
    8000543c:	50c7c783          	lbu	a5,1292(a5) # 8000b944 <_ZL9finishedA>
    80005440:	fe0788e3          	beqz	a5,80005430 <_Z18Threads_C_API_testv+0xbc>
    80005444:	00006797          	auipc	a5,0x6
    80005448:	5017c783          	lbu	a5,1281(a5) # 8000b945 <_ZL9finishedB>
    8000544c:	fe0782e3          	beqz	a5,80005430 <_Z18Threads_C_API_testv+0xbc>
    80005450:	00006797          	auipc	a5,0x6
    80005454:	4f67c783          	lbu	a5,1270(a5) # 8000b946 <_ZL9finishedC>
    80005458:	fc078ce3          	beqz	a5,80005430 <_Z18Threads_C_API_testv+0xbc>
    8000545c:	00006797          	auipc	a5,0x6
    80005460:	4eb7c783          	lbu	a5,1259(a5) # 8000b947 <_ZL9finishedD>
    80005464:	fc0786e3          	beqz	a5,80005430 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    80005468:	fc040493          	addi	s1,s0,-64
    8000546c:	0080006f          	j	80005474 <_Z18Threads_C_API_testv+0x100>
    80005470:	00848493          	addi	s1,s1,8
    80005474:	fe040793          	addi	a5,s0,-32
    80005478:	02f48463          	beq	s1,a5,800054a0 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    8000547c:	0004b903          	ld	s2,0(s1)
    80005480:	fe0908e3          	beqz	s2,80005470 <_Z18Threads_C_API_testv+0xfc>
    80005484:	00090513          	mv	a0,s2
    80005488:	ffffd097          	auipc	ra,0xffffd
    8000548c:	310080e7          	jalr	784(ra) # 80002798 <_ZN3PCBD1Ev>
    80005490:	00090513          	mv	a0,s2
    80005494:	ffffd097          	auipc	ra,0xffffd
    80005498:	2dc080e7          	jalr	732(ra) # 80002770 <_ZN3PCBdlEPv>
    8000549c:	fd5ff06f          	j	80005470 <_Z18Threads_C_API_testv+0xfc>
    }
}
    800054a0:	03813083          	ld	ra,56(sp)
    800054a4:	03013403          	ld	s0,48(sp)
    800054a8:	02813483          	ld	s1,40(sp)
    800054ac:	02013903          	ld	s2,32(sp)
    800054b0:	04010113          	addi	sp,sp,64
    800054b4:	00008067          	ret

00000000800054b8 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    800054b8:	fe010113          	addi	sp,sp,-32
    800054bc:	00113c23          	sd	ra,24(sp)
    800054c0:	00813823          	sd	s0,16(sp)
    800054c4:	00913423          	sd	s1,8(sp)
    800054c8:	02010413          	addi	s0,sp,32
    800054cc:	00050493          	mv	s1,a0
    LOCK();
    800054d0:	00100613          	li	a2,1
    800054d4:	00000593          	li	a1,0
    800054d8:	00006517          	auipc	a0,0x6
    800054dc:	47050513          	addi	a0,a0,1136 # 8000b948 <lockPrint>
    800054e0:	ffffc097          	auipc	ra,0xffffc
    800054e4:	d28080e7          	jalr	-728(ra) # 80001208 <copy_and_swap>
    800054e8:	fe0514e3          	bnez	a0,800054d0 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    800054ec:	0004c503          	lbu	a0,0(s1)
    800054f0:	00050a63          	beqz	a0,80005504 <_Z11printStringPKc+0x4c>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    800054f4:	00003097          	auipc	ra,0x3
    800054f8:	9f8080e7          	jalr	-1544(ra) # 80007eec <__putc>
        putc(*string);
        string++;
    800054fc:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005500:	fedff06f          	j	800054ec <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005504:	00000613          	li	a2,0
    80005508:	00100593          	li	a1,1
    8000550c:	00006517          	auipc	a0,0x6
    80005510:	43c50513          	addi	a0,a0,1084 # 8000b948 <lockPrint>
    80005514:	ffffc097          	auipc	ra,0xffffc
    80005518:	cf4080e7          	jalr	-780(ra) # 80001208 <copy_and_swap>
    8000551c:	fe0514e3          	bnez	a0,80005504 <_Z11printStringPKc+0x4c>
}
    80005520:	01813083          	ld	ra,24(sp)
    80005524:	01013403          	ld	s0,16(sp)
    80005528:	00813483          	ld	s1,8(sp)
    8000552c:	02010113          	addi	sp,sp,32
    80005530:	00008067          	ret

0000000080005534 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005534:	fd010113          	addi	sp,sp,-48
    80005538:	02113423          	sd	ra,40(sp)
    8000553c:	02813023          	sd	s0,32(sp)
    80005540:	00913c23          	sd	s1,24(sp)
    80005544:	01213823          	sd	s2,16(sp)
    80005548:	01313423          	sd	s3,8(sp)
    8000554c:	01413023          	sd	s4,0(sp)
    80005550:	03010413          	addi	s0,sp,48
    80005554:	00050993          	mv	s3,a0
    80005558:	00058a13          	mv	s4,a1
    LOCK();
    8000555c:	00100613          	li	a2,1
    80005560:	00000593          	li	a1,0
    80005564:	00006517          	auipc	a0,0x6
    80005568:	3e450513          	addi	a0,a0,996 # 8000b948 <lockPrint>
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	c9c080e7          	jalr	-868(ra) # 80001208 <copy_and_swap>
    80005574:	fe0514e3          	bnez	a0,8000555c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005578:	00000913          	li	s2,0
    8000557c:	00090493          	mv	s1,s2
    80005580:	0019091b          	addiw	s2,s2,1
    80005584:	03495a63          	bge	s2,s4,800055b8 <_Z9getStringPci+0x84>
    return __getc();
    80005588:	00003097          	auipc	ra,0x3
    8000558c:	9a0080e7          	jalr	-1632(ra) # 80007f28 <__getc>
        cc = getc();
        if (cc < 1)
    80005590:	02050463          	beqz	a0,800055b8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005594:	009984b3          	add	s1,s3,s1
    80005598:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    8000559c:	00a00793          	li	a5,10
    800055a0:	00f50a63          	beq	a0,a5,800055b4 <_Z9getStringPci+0x80>
    800055a4:	00d00793          	li	a5,13
    800055a8:	fcf51ae3          	bne	a0,a5,8000557c <_Z9getStringPci+0x48>
        buf[i++] = c;
    800055ac:	00090493          	mv	s1,s2
    800055b0:	0080006f          	j	800055b8 <_Z9getStringPci+0x84>
    800055b4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800055b8:	009984b3          	add	s1,s3,s1
    800055bc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800055c0:	00000613          	li	a2,0
    800055c4:	00100593          	li	a1,1
    800055c8:	00006517          	auipc	a0,0x6
    800055cc:	38050513          	addi	a0,a0,896 # 8000b948 <lockPrint>
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	c38080e7          	jalr	-968(ra) # 80001208 <copy_and_swap>
    800055d8:	fe0514e3          	bnez	a0,800055c0 <_Z9getStringPci+0x8c>
    return buf;
}
    800055dc:	00098513          	mv	a0,s3
    800055e0:	02813083          	ld	ra,40(sp)
    800055e4:	02013403          	ld	s0,32(sp)
    800055e8:	01813483          	ld	s1,24(sp)
    800055ec:	01013903          	ld	s2,16(sp)
    800055f0:	00813983          	ld	s3,8(sp)
    800055f4:	00013a03          	ld	s4,0(sp)
    800055f8:	03010113          	addi	sp,sp,48
    800055fc:	00008067          	ret

0000000080005600 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005600:	ff010113          	addi	sp,sp,-16
    80005604:	00813423          	sd	s0,8(sp)
    80005608:	01010413          	addi	s0,sp,16
    8000560c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005610:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005614:	0006c603          	lbu	a2,0(a3)
    80005618:	fd06071b          	addiw	a4,a2,-48
    8000561c:	0ff77713          	andi	a4,a4,255
    80005620:	00900793          	li	a5,9
    80005624:	02e7e063          	bltu	a5,a4,80005644 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005628:	0025179b          	slliw	a5,a0,0x2
    8000562c:	00a787bb          	addw	a5,a5,a0
    80005630:	0017979b          	slliw	a5,a5,0x1
    80005634:	00168693          	addi	a3,a3,1
    80005638:	00c787bb          	addw	a5,a5,a2
    8000563c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005640:	fd5ff06f          	j	80005614 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005644:	00813403          	ld	s0,8(sp)
    80005648:	01010113          	addi	sp,sp,16
    8000564c:	00008067          	ret

0000000080005650 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005650:	fc010113          	addi	sp,sp,-64
    80005654:	02113c23          	sd	ra,56(sp)
    80005658:	02813823          	sd	s0,48(sp)
    8000565c:	02913423          	sd	s1,40(sp)
    80005660:	03213023          	sd	s2,32(sp)
    80005664:	01313c23          	sd	s3,24(sp)
    80005668:	04010413          	addi	s0,sp,64
    8000566c:	00050493          	mv	s1,a0
    80005670:	00058913          	mv	s2,a1
    80005674:	00060993          	mv	s3,a2
    LOCK();
    80005678:	00100613          	li	a2,1
    8000567c:	00000593          	li	a1,0
    80005680:	00006517          	auipc	a0,0x6
    80005684:	2c850513          	addi	a0,a0,712 # 8000b948 <lockPrint>
    80005688:	ffffc097          	auipc	ra,0xffffc
    8000568c:	b80080e7          	jalr	-1152(ra) # 80001208 <copy_and_swap>
    80005690:	fe0514e3          	bnez	a0,80005678 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005694:	00098463          	beqz	s3,8000569c <_Z8printIntiii+0x4c>
    80005698:	0804c463          	bltz	s1,80005720 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000569c:	0004851b          	sext.w	a0,s1
    neg = 0;
    800056a0:	00000593          	li	a1,0
    }

    i = 0;
    800056a4:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800056a8:	0009079b          	sext.w	a5,s2
    800056ac:	0325773b          	remuw	a4,a0,s2
    800056b0:	00048613          	mv	a2,s1
    800056b4:	0014849b          	addiw	s1,s1,1
    800056b8:	02071693          	slli	a3,a4,0x20
    800056bc:	0206d693          	srli	a3,a3,0x20
    800056c0:	00004717          	auipc	a4,0x4
    800056c4:	d0070713          	addi	a4,a4,-768 # 800093c0 <_ZL6digits>
    800056c8:	00d70733          	add	a4,a4,a3
    800056cc:	00074683          	lbu	a3,0(a4)
    800056d0:	fd040713          	addi	a4,s0,-48
    800056d4:	00c70733          	add	a4,a4,a2
    800056d8:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800056dc:	0005071b          	sext.w	a4,a0
    800056e0:	0325553b          	divuw	a0,a0,s2
    800056e4:	fcf772e3          	bgeu	a4,a5,800056a8 <_Z8printIntiii+0x58>
    if (neg)
    800056e8:	00058c63          	beqz	a1,80005700 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800056ec:	fd040793          	addi	a5,s0,-48
    800056f0:	009784b3          	add	s1,a5,s1
    800056f4:	02d00793          	li	a5,45
    800056f8:	fef48823          	sb	a5,-16(s1)
    800056fc:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005700:	fff4849b          	addiw	s1,s1,-1
    80005704:	0204c463          	bltz	s1,8000572c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005708:	fd040793          	addi	a5,s0,-48
    8000570c:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005710:	ff07c503          	lbu	a0,-16(a5)
    80005714:	00002097          	auipc	ra,0x2
    80005718:	7d8080e7          	jalr	2008(ra) # 80007eec <__putc>
}
    8000571c:	fe5ff06f          	j	80005700 <_Z8printIntiii+0xb0>
        x = -xx;
    80005720:	4090053b          	negw	a0,s1
        neg = 1;
    80005724:	00100593          	li	a1,1
        x = -xx;
    80005728:	f7dff06f          	j	800056a4 <_Z8printIntiii+0x54>

    UNLOCK();
    8000572c:	00000613          	li	a2,0
    80005730:	00100593          	li	a1,1
    80005734:	00006517          	auipc	a0,0x6
    80005738:	21450513          	addi	a0,a0,532 # 8000b948 <lockPrint>
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	acc080e7          	jalr	-1332(ra) # 80001208 <copy_and_swap>
    80005744:	fe0514e3          	bnez	a0,8000572c <_Z8printIntiii+0xdc>
}
    80005748:	03813083          	ld	ra,56(sp)
    8000574c:	03013403          	ld	s0,48(sp)
    80005750:	02813483          	ld	s1,40(sp)
    80005754:	02013903          	ld	s2,32(sp)
    80005758:	01813983          	ld	s3,24(sp)
    8000575c:	04010113          	addi	sp,sp,64
    80005760:	00008067          	ret

0000000080005764 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005764:	fe010113          	addi	sp,sp,-32
    80005768:	00113c23          	sd	ra,24(sp)
    8000576c:	00813823          	sd	s0,16(sp)
    80005770:	00913423          	sd	s1,8(sp)
    80005774:	01213023          	sd	s2,0(sp)
    80005778:	02010413          	addi	s0,sp,32
    8000577c:	00050493          	mv	s1,a0
    80005780:	00b52023          	sw	a1,0(a0)
    80005784:	00052823          	sw	zero,16(a0)
    80005788:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000578c:	00259513          	slli	a0,a1,0x2
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	ab8080e7          	jalr	-1352(ra) # 80001248 <mem_alloc>
    80005798:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000579c:	01000513          	li	a0,16
    800057a0:	ffffd097          	auipc	ra,0xffffd
    800057a4:	7f8080e7          	jalr	2040(ra) # 80002f98 <_Znwm>
    800057a8:	00050913          	mv	s2,a0
    800057ac:	00000593          	li	a1,0
    800057b0:	ffffe097          	auipc	ra,0xffffe
    800057b4:	a24080e7          	jalr	-1500(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    800057b8:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800057bc:	01000513          	li	a0,16
    800057c0:	ffffd097          	auipc	ra,0xffffd
    800057c4:	7d8080e7          	jalr	2008(ra) # 80002f98 <_Znwm>
    800057c8:	00050913          	mv	s2,a0
    800057cc:	0004a583          	lw	a1,0(s1)
    800057d0:	ffffe097          	auipc	ra,0xffffe
    800057d4:	a04080e7          	jalr	-1532(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    800057d8:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800057dc:	01000513          	li	a0,16
    800057e0:	ffffd097          	auipc	ra,0xffffd
    800057e4:	7b8080e7          	jalr	1976(ra) # 80002f98 <_Znwm>
    800057e8:	00050913          	mv	s2,a0
    800057ec:	00100593          	li	a1,1
    800057f0:	ffffe097          	auipc	ra,0xffffe
    800057f4:	9e4080e7          	jalr	-1564(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    800057f8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800057fc:	01000513          	li	a0,16
    80005800:	ffffd097          	auipc	ra,0xffffd
    80005804:	798080e7          	jalr	1944(ra) # 80002f98 <_Znwm>
    80005808:	00050913          	mv	s2,a0
    8000580c:	00100593          	li	a1,1
    80005810:	ffffe097          	auipc	ra,0xffffe
    80005814:	9c4080e7          	jalr	-1596(ra) # 800031d4 <_ZN9SemaphoreC1Ej>
    80005818:	0324b823          	sd	s2,48(s1)
}
    8000581c:	01813083          	ld	ra,24(sp)
    80005820:	01013403          	ld	s0,16(sp)
    80005824:	00813483          	ld	s1,8(sp)
    80005828:	00013903          	ld	s2,0(sp)
    8000582c:	02010113          	addi	sp,sp,32
    80005830:	00008067          	ret
    80005834:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005838:	00090513          	mv	a0,s2
    8000583c:	ffffd097          	auipc	ra,0xffffd
    80005840:	784080e7          	jalr	1924(ra) # 80002fc0 <_ZdlPv>
    80005844:	00048513          	mv	a0,s1
    80005848:	00007097          	auipc	ra,0x7
    8000584c:	1e0080e7          	jalr	480(ra) # 8000ca28 <_Unwind_Resume>
    80005850:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005854:	00090513          	mv	a0,s2
    80005858:	ffffd097          	auipc	ra,0xffffd
    8000585c:	768080e7          	jalr	1896(ra) # 80002fc0 <_ZdlPv>
    80005860:	00048513          	mv	a0,s1
    80005864:	00007097          	auipc	ra,0x7
    80005868:	1c4080e7          	jalr	452(ra) # 8000ca28 <_Unwind_Resume>
    8000586c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005870:	00090513          	mv	a0,s2
    80005874:	ffffd097          	auipc	ra,0xffffd
    80005878:	74c080e7          	jalr	1868(ra) # 80002fc0 <_ZdlPv>
    8000587c:	00048513          	mv	a0,s1
    80005880:	00007097          	auipc	ra,0x7
    80005884:	1a8080e7          	jalr	424(ra) # 8000ca28 <_Unwind_Resume>
    80005888:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000588c:	00090513          	mv	a0,s2
    80005890:	ffffd097          	auipc	ra,0xffffd
    80005894:	730080e7          	jalr	1840(ra) # 80002fc0 <_ZdlPv>
    80005898:	00048513          	mv	a0,s1
    8000589c:	00007097          	auipc	ra,0x7
    800058a0:	18c080e7          	jalr	396(ra) # 8000ca28 <_Unwind_Resume>

00000000800058a4 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800058a4:	fe010113          	addi	sp,sp,-32
    800058a8:	00113c23          	sd	ra,24(sp)
    800058ac:	00813823          	sd	s0,16(sp)
    800058b0:	00913423          	sd	s1,8(sp)
    800058b4:	02010413          	addi	s0,sp,32
    800058b8:	00050493          	mv	s1,a0
    __putc(c);
    800058bc:	00a00513          	li	a0,10
    800058c0:	00002097          	auipc	ra,0x2
    800058c4:	62c080e7          	jalr	1580(ra) # 80007eec <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800058c8:	0104a783          	lw	a5,16(s1)
    800058cc:	0144a703          	lw	a4,20(s1)
    800058d0:	00e78c63          	beq	a5,a4,800058e8 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800058d4:	0017879b          	addiw	a5,a5,1
    800058d8:	0004a703          	lw	a4,0(s1)
    800058dc:	02e7e7bb          	remw	a5,a5,a4
    800058e0:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800058e4:	fe5ff06f          	j	800058c8 <_ZN9BufferCPPD1Ev+0x24>
    800058e8:	02100513          	li	a0,33
    800058ec:	00002097          	auipc	ra,0x2
    800058f0:	600080e7          	jalr	1536(ra) # 80007eec <__putc>
    800058f4:	00a00513          	li	a0,10
    800058f8:	00002097          	auipc	ra,0x2
    800058fc:	5f4080e7          	jalr	1524(ra) # 80007eec <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005900:	0084b503          	ld	a0,8(s1)
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	974080e7          	jalr	-1676(ra) # 80001278 <mem_free>
    delete itemAvailable;
    8000590c:	0204b503          	ld	a0,32(s1)
    80005910:	00050863          	beqz	a0,80005920 <_ZN9BufferCPPD1Ev+0x7c>
    80005914:	00053783          	ld	a5,0(a0)
    80005918:	0087b783          	ld	a5,8(a5)
    8000591c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005920:	0184b503          	ld	a0,24(s1)
    80005924:	00050863          	beqz	a0,80005934 <_ZN9BufferCPPD1Ev+0x90>
    80005928:	00053783          	ld	a5,0(a0)
    8000592c:	0087b783          	ld	a5,8(a5)
    80005930:	000780e7          	jalr	a5
    delete mutexTail;
    80005934:	0304b503          	ld	a0,48(s1)
    80005938:	00050863          	beqz	a0,80005948 <_ZN9BufferCPPD1Ev+0xa4>
    8000593c:	00053783          	ld	a5,0(a0)
    80005940:	0087b783          	ld	a5,8(a5)
    80005944:	000780e7          	jalr	a5
    delete mutexHead;
    80005948:	0284b503          	ld	a0,40(s1)
    8000594c:	00050863          	beqz	a0,8000595c <_ZN9BufferCPPD1Ev+0xb8>
    80005950:	00053783          	ld	a5,0(a0)
    80005954:	0087b783          	ld	a5,8(a5)
    80005958:	000780e7          	jalr	a5

}
    8000595c:	01813083          	ld	ra,24(sp)
    80005960:	01013403          	ld	s0,16(sp)
    80005964:	00813483          	ld	s1,8(sp)
    80005968:	02010113          	addi	sp,sp,32
    8000596c:	00008067          	ret

0000000080005970 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005970:	fe010113          	addi	sp,sp,-32
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	00813823          	sd	s0,16(sp)
    8000597c:	00913423          	sd	s1,8(sp)
    80005980:	01213023          	sd	s2,0(sp)
    80005984:	02010413          	addi	s0,sp,32
    80005988:	00050493          	mv	s1,a0
    8000598c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005990:	01853503          	ld	a0,24(a0)
    80005994:	ffffe097          	auipc	ra,0xffffe
    80005998:	808080e7          	jalr	-2040(ra) # 8000319c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000599c:	0304b503          	ld	a0,48(s1)
    800059a0:	ffffd097          	auipc	ra,0xffffd
    800059a4:	7fc080e7          	jalr	2044(ra) # 8000319c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800059a8:	0084b783          	ld	a5,8(s1)
    800059ac:	0144a703          	lw	a4,20(s1)
    800059b0:	00271713          	slli	a4,a4,0x2
    800059b4:	00e787b3          	add	a5,a5,a4
    800059b8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800059bc:	0144a783          	lw	a5,20(s1)
    800059c0:	0017879b          	addiw	a5,a5,1
    800059c4:	0004a703          	lw	a4,0(s1)
    800059c8:	02e7e7bb          	remw	a5,a5,a4
    800059cc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800059d0:	0304b503          	ld	a0,48(s1)
    800059d4:	ffffe097          	auipc	ra,0xffffe
    800059d8:	84c080e7          	jalr	-1972(ra) # 80003220 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800059dc:	0204b503          	ld	a0,32(s1)
    800059e0:	ffffe097          	auipc	ra,0xffffe
    800059e4:	840080e7          	jalr	-1984(ra) # 80003220 <_ZN9Semaphore6signalEv>

}
    800059e8:	01813083          	ld	ra,24(sp)
    800059ec:	01013403          	ld	s0,16(sp)
    800059f0:	00813483          	ld	s1,8(sp)
    800059f4:	00013903          	ld	s2,0(sp)
    800059f8:	02010113          	addi	sp,sp,32
    800059fc:	00008067          	ret

0000000080005a00 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005a00:	fe010113          	addi	sp,sp,-32
    80005a04:	00113c23          	sd	ra,24(sp)
    80005a08:	00813823          	sd	s0,16(sp)
    80005a0c:	00913423          	sd	s1,8(sp)
    80005a10:	01213023          	sd	s2,0(sp)
    80005a14:	02010413          	addi	s0,sp,32
    80005a18:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005a1c:	02053503          	ld	a0,32(a0)
    80005a20:	ffffd097          	auipc	ra,0xffffd
    80005a24:	77c080e7          	jalr	1916(ra) # 8000319c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005a28:	0284b503          	ld	a0,40(s1)
    80005a2c:	ffffd097          	auipc	ra,0xffffd
    80005a30:	770080e7          	jalr	1904(ra) # 8000319c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005a34:	0084b703          	ld	a4,8(s1)
    80005a38:	0104a783          	lw	a5,16(s1)
    80005a3c:	00279693          	slli	a3,a5,0x2
    80005a40:	00d70733          	add	a4,a4,a3
    80005a44:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005a48:	0017879b          	addiw	a5,a5,1
    80005a4c:	0004a703          	lw	a4,0(s1)
    80005a50:	02e7e7bb          	remw	a5,a5,a4
    80005a54:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005a58:	0284b503          	ld	a0,40(s1)
    80005a5c:	ffffd097          	auipc	ra,0xffffd
    80005a60:	7c4080e7          	jalr	1988(ra) # 80003220 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005a64:	0184b503          	ld	a0,24(s1)
    80005a68:	ffffd097          	auipc	ra,0xffffd
    80005a6c:	7b8080e7          	jalr	1976(ra) # 80003220 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005a70:	00090513          	mv	a0,s2
    80005a74:	01813083          	ld	ra,24(sp)
    80005a78:	01013403          	ld	s0,16(sp)
    80005a7c:	00813483          	ld	s1,8(sp)
    80005a80:	00013903          	ld	s2,0(sp)
    80005a84:	02010113          	addi	sp,sp,32
    80005a88:	00008067          	ret

0000000080005a8c <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005a8c:	ff010113          	addi	sp,sp,-16
    80005a90:	00113423          	sd	ra,8(sp)
    80005a94:	00813023          	sd	s0,0(sp)
    80005a98:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80005a9c:	fffff097          	auipc	ra,0xfffff
    80005aa0:	8a4080e7          	jalr	-1884(ra) # 80004340 <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005aa4:	00813083          	ld	ra,8(sp)
    80005aa8:	00013403          	ld	s0,0(sp)
    80005aac:	01010113          	addi	sp,sp,16
    80005ab0:	00008067          	ret

0000000080005ab4 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005ab4:	fe010113          	addi	sp,sp,-32
    80005ab8:	00113c23          	sd	ra,24(sp)
    80005abc:	00813823          	sd	s0,16(sp)
    80005ac0:	00913423          	sd	s1,8(sp)
    80005ac4:	01213023          	sd	s2,0(sp)
    80005ac8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005acc:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005ad0:	00600493          	li	s1,6
    while (--i > 0) {
    80005ad4:	fff4849b          	addiw	s1,s1,-1
    80005ad8:	04905463          	blez	s1,80005b20 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005adc:	00004517          	auipc	a0,0x4
    80005ae0:	8fc50513          	addi	a0,a0,-1796 # 800093d8 <_ZL6digits+0x18>
    80005ae4:	00000097          	auipc	ra,0x0
    80005ae8:	9d4080e7          	jalr	-1580(ra) # 800054b8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005aec:	00000613          	li	a2,0
    80005af0:	00a00593          	li	a1,10
    80005af4:	0009051b          	sext.w	a0,s2
    80005af8:	00000097          	auipc	ra,0x0
    80005afc:	b58080e7          	jalr	-1192(ra) # 80005650 <_Z8printIntiii>
        printString(" !\n");
    80005b00:	00004517          	auipc	a0,0x4
    80005b04:	8e050513          	addi	a0,a0,-1824 # 800093e0 <_ZL6digits+0x20>
    80005b08:	00000097          	auipc	ra,0x0
    80005b0c:	9b0080e7          	jalr	-1616(ra) # 800054b8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005b10:	00090513          	mv	a0,s2
    80005b14:	ffffc097          	auipc	ra,0xffffc
    80005b18:	914080e7          	jalr	-1772(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005b1c:	fb9ff06f          	j	80005ad4 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005b20:	00a00793          	li	a5,10
    80005b24:	02f95933          	divu	s2,s2,a5
    80005b28:	fff90913          	addi	s2,s2,-1
    80005b2c:	00006797          	auipc	a5,0x6
    80005b30:	e2478793          	addi	a5,a5,-476 # 8000b950 <finished>
    80005b34:	01278933          	add	s2,a5,s2
    80005b38:	00100793          	li	a5,1
    80005b3c:	00f90023          	sb	a5,0(s2)
}
    80005b40:	01813083          	ld	ra,24(sp)
    80005b44:	01013403          	ld	s0,16(sp)
    80005b48:	00813483          	ld	s1,8(sp)
    80005b4c:	00013903          	ld	s2,0(sp)
    80005b50:	02010113          	addi	sp,sp,32
    80005b54:	00008067          	ret

0000000080005b58 <_Z12testSleepingv>:

void testSleeping()
{
    80005b58:	fc010113          	addi	sp,sp,-64
    80005b5c:	02113c23          	sd	ra,56(sp)
    80005b60:	02813823          	sd	s0,48(sp)
    80005b64:	02913423          	sd	s1,40(sp)
    80005b68:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005b6c:	00a00793          	li	a5,10
    80005b70:	fcf43823          	sd	a5,-48(s0)
    80005b74:	01400793          	li	a5,20
    80005b78:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b7c:	00000493          	li	s1,0
    80005b80:	02c0006f          	j	80005bac <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005b84:	00349793          	slli	a5,s1,0x3
    80005b88:	fd040613          	addi	a2,s0,-48
    80005b8c:	00f60633          	add	a2,a2,a5
    80005b90:	00000597          	auipc	a1,0x0
    80005b94:	f2458593          	addi	a1,a1,-220 # 80005ab4 <_Z9sleepyRunPv>
    80005b98:	fc040513          	addi	a0,s0,-64
    80005b9c:	00f50533          	add	a0,a0,a5
    80005ba0:	ffffb097          	auipc	ra,0xffffb
    80005ba4:	704080e7          	jalr	1796(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ba8:	0014849b          	addiw	s1,s1,1
    80005bac:	00100793          	li	a5,1
    80005bb0:	fc97dae3          	bge	a5,s1,80005b84 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005bb4:	00006797          	auipc	a5,0x6
    80005bb8:	d9c7c783          	lbu	a5,-612(a5) # 8000b950 <finished>
    80005bbc:	fe078ce3          	beqz	a5,80005bb4 <_Z12testSleepingv+0x5c>
    80005bc0:	00006797          	auipc	a5,0x6
    80005bc4:	d917c783          	lbu	a5,-623(a5) # 8000b951 <finished+0x1>
    80005bc8:	fe0786e3          	beqz	a5,80005bb4 <_Z12testSleepingv+0x5c>
}
    80005bcc:	03813083          	ld	ra,56(sp)
    80005bd0:	03013403          	ld	s0,48(sp)
    80005bd4:	02813483          	ld	s1,40(sp)
    80005bd8:	04010113          	addi	sp,sp,64
    80005bdc:	00008067          	ret

0000000080005be0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005be0:	fe010113          	addi	sp,sp,-32
    80005be4:	00113c23          	sd	ra,24(sp)
    80005be8:	00813823          	sd	s0,16(sp)
    80005bec:	00913423          	sd	s1,8(sp)
    80005bf0:	02010413          	addi	s0,sp,32
    80005bf4:	00050493          	mv	s1,a0
    80005bf8:	00b52023          	sw	a1,0(a0)
    80005bfc:	00052823          	sw	zero,16(a0)
    80005c00:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c04:	00259513          	slli	a0,a1,0x2
    80005c08:	ffffb097          	auipc	ra,0xffffb
    80005c0c:	640080e7          	jalr	1600(ra) # 80001248 <mem_alloc>
    80005c10:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005c14:	00000593          	li	a1,0
    80005c18:	02048513          	addi	a0,s1,32
    80005c1c:	ffffb097          	auipc	ra,0xffffb
    80005c20:	750080e7          	jalr	1872(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005c24:	0004a583          	lw	a1,0(s1)
    80005c28:	01848513          	addi	a0,s1,24
    80005c2c:	ffffb097          	auipc	ra,0xffffb
    80005c30:	740080e7          	jalr	1856(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005c34:	00100593          	li	a1,1
    80005c38:	02848513          	addi	a0,s1,40
    80005c3c:	ffffb097          	auipc	ra,0xffffb
    80005c40:	730080e7          	jalr	1840(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005c44:	00100593          	li	a1,1
    80005c48:	03048513          	addi	a0,s1,48
    80005c4c:	ffffb097          	auipc	ra,0xffffb
    80005c50:	720080e7          	jalr	1824(ra) # 8000136c <sem_open>
}
    80005c54:	01813083          	ld	ra,24(sp)
    80005c58:	01013403          	ld	s0,16(sp)
    80005c5c:	00813483          	ld	s1,8(sp)
    80005c60:	02010113          	addi	sp,sp,32
    80005c64:	00008067          	ret

0000000080005c68 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80005c68:	fe010113          	addi	sp,sp,-32
    80005c6c:	00113c23          	sd	ra,24(sp)
    80005c70:	00813823          	sd	s0,16(sp)
    80005c74:	00913423          	sd	s1,8(sp)
    80005c78:	02010413          	addi	s0,sp,32
    80005c7c:	00050493          	mv	s1,a0
    80005c80:	00a00513          	li	a0,10
    80005c84:	00002097          	auipc	ra,0x2
    80005c88:	268080e7          	jalr	616(ra) # 80007eec <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005c8c:	0104a783          	lw	a5,16(s1)
    80005c90:	0144a703          	lw	a4,20(s1)
    80005c94:	00e78c63          	beq	a5,a4,80005cac <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005c98:	0017879b          	addiw	a5,a5,1
    80005c9c:	0004a703          	lw	a4,0(s1)
    80005ca0:	02e7e7bb          	remw	a5,a5,a4
    80005ca4:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005ca8:	fe5ff06f          	j	80005c8c <_ZN6BufferD1Ev+0x24>
    80005cac:	02100513          	li	a0,33
    80005cb0:	00002097          	auipc	ra,0x2
    80005cb4:	23c080e7          	jalr	572(ra) # 80007eec <__putc>
    80005cb8:	00a00513          	li	a0,10
    80005cbc:	00002097          	auipc	ra,0x2
    80005cc0:	230080e7          	jalr	560(ra) # 80007eec <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005cc4:	0084b503          	ld	a0,8(s1)
    80005cc8:	ffffb097          	auipc	ra,0xffffb
    80005ccc:	5b0080e7          	jalr	1456(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80005cd0:	0204b503          	ld	a0,32(s1)
    80005cd4:	ffffb097          	auipc	ra,0xffffb
    80005cd8:	6d0080e7          	jalr	1744(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80005cdc:	0184b503          	ld	a0,24(s1)
    80005ce0:	ffffb097          	auipc	ra,0xffffb
    80005ce4:	6c4080e7          	jalr	1732(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005ce8:	0304b503          	ld	a0,48(s1)
    80005cec:	ffffb097          	auipc	ra,0xffffb
    80005cf0:	6b8080e7          	jalr	1720(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80005cf4:	0284b503          	ld	a0,40(s1)
    80005cf8:	ffffb097          	auipc	ra,0xffffb
    80005cfc:	6ac080e7          	jalr	1708(ra) # 800013a4 <sem_close>
}
    80005d00:	01813083          	ld	ra,24(sp)
    80005d04:	01013403          	ld	s0,16(sp)
    80005d08:	00813483          	ld	s1,8(sp)
    80005d0c:	02010113          	addi	sp,sp,32
    80005d10:	00008067          	ret

0000000080005d14 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80005d14:	fe010113          	addi	sp,sp,-32
    80005d18:	00113c23          	sd	ra,24(sp)
    80005d1c:	00813823          	sd	s0,16(sp)
    80005d20:	00913423          	sd	s1,8(sp)
    80005d24:	01213023          	sd	s2,0(sp)
    80005d28:	02010413          	addi	s0,sp,32
    80005d2c:	00050493          	mv	s1,a0
    80005d30:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005d34:	01853503          	ld	a0,24(a0)
    80005d38:	ffffb097          	auipc	ra,0xffffb
    80005d3c:	698080e7          	jalr	1688(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80005d40:	0304b503          	ld	a0,48(s1)
    80005d44:	ffffb097          	auipc	ra,0xffffb
    80005d48:	68c080e7          	jalr	1676(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80005d4c:	0084b783          	ld	a5,8(s1)
    80005d50:	0144a703          	lw	a4,20(s1)
    80005d54:	00271713          	slli	a4,a4,0x2
    80005d58:	00e787b3          	add	a5,a5,a4
    80005d5c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d60:	0144a783          	lw	a5,20(s1)
    80005d64:	0017879b          	addiw	a5,a5,1
    80005d68:	0004a703          	lw	a4,0(s1)
    80005d6c:	02e7e7bb          	remw	a5,a5,a4
    80005d70:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005d74:	0304b503          	ld	a0,48(s1)
    80005d78:	ffffb097          	auipc	ra,0xffffb
    80005d7c:	684080e7          	jalr	1668(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80005d80:	0204b503          	ld	a0,32(s1)
    80005d84:	ffffb097          	auipc	ra,0xffffb
    80005d88:	678080e7          	jalr	1656(ra) # 800013fc <sem_signal>

}
    80005d8c:	01813083          	ld	ra,24(sp)
    80005d90:	01013403          	ld	s0,16(sp)
    80005d94:	00813483          	ld	s1,8(sp)
    80005d98:	00013903          	ld	s2,0(sp)
    80005d9c:	02010113          	addi	sp,sp,32
    80005da0:	00008067          	ret

0000000080005da4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005da4:	fe010113          	addi	sp,sp,-32
    80005da8:	00113c23          	sd	ra,24(sp)
    80005dac:	00813823          	sd	s0,16(sp)
    80005db0:	00913423          	sd	s1,8(sp)
    80005db4:	01213023          	sd	s2,0(sp)
    80005db8:	02010413          	addi	s0,sp,32
    80005dbc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005dc0:	02053503          	ld	a0,32(a0)
    80005dc4:	ffffb097          	auipc	ra,0xffffb
    80005dc8:	60c080e7          	jalr	1548(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80005dcc:	0284b503          	ld	a0,40(s1)
    80005dd0:	ffffb097          	auipc	ra,0xffffb
    80005dd4:	600080e7          	jalr	1536(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005dd8:	0084b703          	ld	a4,8(s1)
    80005ddc:	0104a783          	lw	a5,16(s1)
    80005de0:	00279693          	slli	a3,a5,0x2
    80005de4:	00d70733          	add	a4,a4,a3
    80005de8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005dec:	0017879b          	addiw	a5,a5,1
    80005df0:	0004a703          	lw	a4,0(s1)
    80005df4:	02e7e7bb          	remw	a5,a5,a4
    80005df8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005dfc:	0284b503          	ld	a0,40(s1)
    80005e00:	ffffb097          	auipc	ra,0xffffb
    80005e04:	5fc080e7          	jalr	1532(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80005e08:	0184b503          	ld	a0,24(s1)
    80005e0c:	ffffb097          	auipc	ra,0xffffb
    80005e10:	5f0080e7          	jalr	1520(ra) # 800013fc <sem_signal>

    return ret;
}
    80005e14:	00090513          	mv	a0,s2
    80005e18:	01813083          	ld	ra,24(sp)
    80005e1c:	01013403          	ld	s0,16(sp)
    80005e20:	00813483          	ld	s1,8(sp)
    80005e24:	00013903          	ld	s2,0(sp)
    80005e28:	02010113          	addi	sp,sp,32
    80005e2c:	00008067          	ret

0000000080005e30 <start>:
    80005e30:	ff010113          	addi	sp,sp,-16
    80005e34:	00813423          	sd	s0,8(sp)
    80005e38:	01010413          	addi	s0,sp,16
    80005e3c:	300027f3          	csrr	a5,mstatus
    80005e40:	ffffe737          	lui	a4,0xffffe
    80005e44:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1c3f>
    80005e48:	00e7f7b3          	and	a5,a5,a4
    80005e4c:	00001737          	lui	a4,0x1
    80005e50:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005e54:	00e7e7b3          	or	a5,a5,a4
    80005e58:	30079073          	csrw	mstatus,a5
    80005e5c:	00000797          	auipc	a5,0x0
    80005e60:	16078793          	addi	a5,a5,352 # 80005fbc <system_main>
    80005e64:	34179073          	csrw	mepc,a5
    80005e68:	00000793          	li	a5,0
    80005e6c:	18079073          	csrw	satp,a5
    80005e70:	000107b7          	lui	a5,0x10
    80005e74:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005e78:	30279073          	csrw	medeleg,a5
    80005e7c:	30379073          	csrw	mideleg,a5
    80005e80:	104027f3          	csrr	a5,sie
    80005e84:	2227e793          	ori	a5,a5,546
    80005e88:	10479073          	csrw	sie,a5
    80005e8c:	fff00793          	li	a5,-1
    80005e90:	00a7d793          	srli	a5,a5,0xa
    80005e94:	3b079073          	csrw	pmpaddr0,a5
    80005e98:	00f00793          	li	a5,15
    80005e9c:	3a079073          	csrw	pmpcfg0,a5
    80005ea0:	f14027f3          	csrr	a5,mhartid
    80005ea4:	0200c737          	lui	a4,0x200c
    80005ea8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005eac:	0007869b          	sext.w	a3,a5
    80005eb0:	00269713          	slli	a4,a3,0x2
    80005eb4:	000f4637          	lui	a2,0xf4
    80005eb8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005ebc:	00d70733          	add	a4,a4,a3
    80005ec0:	0037979b          	slliw	a5,a5,0x3
    80005ec4:	020046b7          	lui	a3,0x2004
    80005ec8:	00d787b3          	add	a5,a5,a3
    80005ecc:	00c585b3          	add	a1,a1,a2
    80005ed0:	00371693          	slli	a3,a4,0x3
    80005ed4:	00006717          	auipc	a4,0x6
    80005ed8:	a8c70713          	addi	a4,a4,-1396 # 8000b960 <timer_scratch>
    80005edc:	00b7b023          	sd	a1,0(a5)
    80005ee0:	00d70733          	add	a4,a4,a3
    80005ee4:	00f73c23          	sd	a5,24(a4)
    80005ee8:	02c73023          	sd	a2,32(a4)
    80005eec:	34071073          	csrw	mscratch,a4
    80005ef0:	00000797          	auipc	a5,0x0
    80005ef4:	6e078793          	addi	a5,a5,1760 # 800065d0 <timervec>
    80005ef8:	30579073          	csrw	mtvec,a5
    80005efc:	300027f3          	csrr	a5,mstatus
    80005f00:	0087e793          	ori	a5,a5,8
    80005f04:	30079073          	csrw	mstatus,a5
    80005f08:	304027f3          	csrr	a5,mie
    80005f0c:	0807e793          	ori	a5,a5,128
    80005f10:	30479073          	csrw	mie,a5
    80005f14:	f14027f3          	csrr	a5,mhartid
    80005f18:	0007879b          	sext.w	a5,a5
    80005f1c:	00078213          	mv	tp,a5
    80005f20:	30200073          	mret
    80005f24:	00813403          	ld	s0,8(sp)
    80005f28:	01010113          	addi	sp,sp,16
    80005f2c:	00008067          	ret

0000000080005f30 <timerinit>:
    80005f30:	ff010113          	addi	sp,sp,-16
    80005f34:	00813423          	sd	s0,8(sp)
    80005f38:	01010413          	addi	s0,sp,16
    80005f3c:	f14027f3          	csrr	a5,mhartid
    80005f40:	0200c737          	lui	a4,0x200c
    80005f44:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f48:	0007869b          	sext.w	a3,a5
    80005f4c:	00269713          	slli	a4,a3,0x2
    80005f50:	000f4637          	lui	a2,0xf4
    80005f54:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f58:	00d70733          	add	a4,a4,a3
    80005f5c:	0037979b          	slliw	a5,a5,0x3
    80005f60:	020046b7          	lui	a3,0x2004
    80005f64:	00d787b3          	add	a5,a5,a3
    80005f68:	00c585b3          	add	a1,a1,a2
    80005f6c:	00371693          	slli	a3,a4,0x3
    80005f70:	00006717          	auipc	a4,0x6
    80005f74:	9f070713          	addi	a4,a4,-1552 # 8000b960 <timer_scratch>
    80005f78:	00b7b023          	sd	a1,0(a5)
    80005f7c:	00d70733          	add	a4,a4,a3
    80005f80:	00f73c23          	sd	a5,24(a4)
    80005f84:	02c73023          	sd	a2,32(a4)
    80005f88:	34071073          	csrw	mscratch,a4
    80005f8c:	00000797          	auipc	a5,0x0
    80005f90:	64478793          	addi	a5,a5,1604 # 800065d0 <timervec>
    80005f94:	30579073          	csrw	mtvec,a5
    80005f98:	300027f3          	csrr	a5,mstatus
    80005f9c:	0087e793          	ori	a5,a5,8
    80005fa0:	30079073          	csrw	mstatus,a5
    80005fa4:	304027f3          	csrr	a5,mie
    80005fa8:	0807e793          	ori	a5,a5,128
    80005fac:	30479073          	csrw	mie,a5
    80005fb0:	00813403          	ld	s0,8(sp)
    80005fb4:	01010113          	addi	sp,sp,16
    80005fb8:	00008067          	ret

0000000080005fbc <system_main>:
    80005fbc:	fe010113          	addi	sp,sp,-32
    80005fc0:	00813823          	sd	s0,16(sp)
    80005fc4:	00913423          	sd	s1,8(sp)
    80005fc8:	00113c23          	sd	ra,24(sp)
    80005fcc:	02010413          	addi	s0,sp,32
    80005fd0:	00000097          	auipc	ra,0x0
    80005fd4:	0c4080e7          	jalr	196(ra) # 80006094 <cpuid>
    80005fd8:	00006497          	auipc	s1,0x6
    80005fdc:	89848493          	addi	s1,s1,-1896 # 8000b870 <started>
    80005fe0:	02050263          	beqz	a0,80006004 <system_main+0x48>
    80005fe4:	0004a783          	lw	a5,0(s1)
    80005fe8:	0007879b          	sext.w	a5,a5
    80005fec:	fe078ce3          	beqz	a5,80005fe4 <system_main+0x28>
    80005ff0:	0ff0000f          	fence
    80005ff4:	00003517          	auipc	a0,0x3
    80005ff8:	42450513          	addi	a0,a0,1060 # 80009418 <_ZL6digits+0x58>
    80005ffc:	00001097          	auipc	ra,0x1
    80006000:	a70080e7          	jalr	-1424(ra) # 80006a6c <panic>
    80006004:	00001097          	auipc	ra,0x1
    80006008:	9c4080e7          	jalr	-1596(ra) # 800069c8 <consoleinit>
    8000600c:	00001097          	auipc	ra,0x1
    80006010:	150080e7          	jalr	336(ra) # 8000715c <printfinit>
    80006014:	00003517          	auipc	a0,0x3
    80006018:	18450513          	addi	a0,a0,388 # 80009198 <CONSOLE_STATUS+0x188>
    8000601c:	00001097          	auipc	ra,0x1
    80006020:	aac080e7          	jalr	-1364(ra) # 80006ac8 <__printf>
    80006024:	00003517          	auipc	a0,0x3
    80006028:	3c450513          	addi	a0,a0,964 # 800093e8 <_ZL6digits+0x28>
    8000602c:	00001097          	auipc	ra,0x1
    80006030:	a9c080e7          	jalr	-1380(ra) # 80006ac8 <__printf>
    80006034:	00003517          	auipc	a0,0x3
    80006038:	16450513          	addi	a0,a0,356 # 80009198 <CONSOLE_STATUS+0x188>
    8000603c:	00001097          	auipc	ra,0x1
    80006040:	a8c080e7          	jalr	-1396(ra) # 80006ac8 <__printf>
    80006044:	00001097          	auipc	ra,0x1
    80006048:	4a4080e7          	jalr	1188(ra) # 800074e8 <kinit>
    8000604c:	00000097          	auipc	ra,0x0
    80006050:	148080e7          	jalr	328(ra) # 80006194 <trapinit>
    80006054:	00000097          	auipc	ra,0x0
    80006058:	16c080e7          	jalr	364(ra) # 800061c0 <trapinithart>
    8000605c:	00000097          	auipc	ra,0x0
    80006060:	5b4080e7          	jalr	1460(ra) # 80006610 <plicinit>
    80006064:	00000097          	auipc	ra,0x0
    80006068:	5d4080e7          	jalr	1492(ra) # 80006638 <plicinithart>
    8000606c:	00000097          	auipc	ra,0x0
    80006070:	078080e7          	jalr	120(ra) # 800060e4 <userinit>
    80006074:	0ff0000f          	fence
    80006078:	00100793          	li	a5,1
    8000607c:	00003517          	auipc	a0,0x3
    80006080:	38450513          	addi	a0,a0,900 # 80009400 <_ZL6digits+0x40>
    80006084:	00f4a023          	sw	a5,0(s1)
    80006088:	00001097          	auipc	ra,0x1
    8000608c:	a40080e7          	jalr	-1472(ra) # 80006ac8 <__printf>
    80006090:	0000006f          	j	80006090 <system_main+0xd4>

0000000080006094 <cpuid>:
    80006094:	ff010113          	addi	sp,sp,-16
    80006098:	00813423          	sd	s0,8(sp)
    8000609c:	01010413          	addi	s0,sp,16
    800060a0:	00020513          	mv	a0,tp
    800060a4:	00813403          	ld	s0,8(sp)
    800060a8:	0005051b          	sext.w	a0,a0
    800060ac:	01010113          	addi	sp,sp,16
    800060b0:	00008067          	ret

00000000800060b4 <mycpu>:
    800060b4:	ff010113          	addi	sp,sp,-16
    800060b8:	00813423          	sd	s0,8(sp)
    800060bc:	01010413          	addi	s0,sp,16
    800060c0:	00020793          	mv	a5,tp
    800060c4:	00813403          	ld	s0,8(sp)
    800060c8:	0007879b          	sext.w	a5,a5
    800060cc:	00779793          	slli	a5,a5,0x7
    800060d0:	00007517          	auipc	a0,0x7
    800060d4:	8c050513          	addi	a0,a0,-1856 # 8000c990 <cpus>
    800060d8:	00f50533          	add	a0,a0,a5
    800060dc:	01010113          	addi	sp,sp,16
    800060e0:	00008067          	ret

00000000800060e4 <userinit>:
    800060e4:	ff010113          	addi	sp,sp,-16
    800060e8:	00813423          	sd	s0,8(sp)
    800060ec:	01010413          	addi	s0,sp,16
    800060f0:	00813403          	ld	s0,8(sp)
    800060f4:	01010113          	addi	sp,sp,16
    800060f8:	ffffd317          	auipc	t1,0xffffd
    800060fc:	dbc30067          	jr	-580(t1) # 80002eb4 <main>

0000000080006100 <either_copyout>:
    80006100:	ff010113          	addi	sp,sp,-16
    80006104:	00813023          	sd	s0,0(sp)
    80006108:	00113423          	sd	ra,8(sp)
    8000610c:	01010413          	addi	s0,sp,16
    80006110:	02051663          	bnez	a0,8000613c <either_copyout+0x3c>
    80006114:	00058513          	mv	a0,a1
    80006118:	00060593          	mv	a1,a2
    8000611c:	0006861b          	sext.w	a2,a3
    80006120:	00002097          	auipc	ra,0x2
    80006124:	c54080e7          	jalr	-940(ra) # 80007d74 <__memmove>
    80006128:	00813083          	ld	ra,8(sp)
    8000612c:	00013403          	ld	s0,0(sp)
    80006130:	00000513          	li	a0,0
    80006134:	01010113          	addi	sp,sp,16
    80006138:	00008067          	ret
    8000613c:	00003517          	auipc	a0,0x3
    80006140:	30450513          	addi	a0,a0,772 # 80009440 <_ZL6digits+0x80>
    80006144:	00001097          	auipc	ra,0x1
    80006148:	928080e7          	jalr	-1752(ra) # 80006a6c <panic>

000000008000614c <either_copyin>:
    8000614c:	ff010113          	addi	sp,sp,-16
    80006150:	00813023          	sd	s0,0(sp)
    80006154:	00113423          	sd	ra,8(sp)
    80006158:	01010413          	addi	s0,sp,16
    8000615c:	02059463          	bnez	a1,80006184 <either_copyin+0x38>
    80006160:	00060593          	mv	a1,a2
    80006164:	0006861b          	sext.w	a2,a3
    80006168:	00002097          	auipc	ra,0x2
    8000616c:	c0c080e7          	jalr	-1012(ra) # 80007d74 <__memmove>
    80006170:	00813083          	ld	ra,8(sp)
    80006174:	00013403          	ld	s0,0(sp)
    80006178:	00000513          	li	a0,0
    8000617c:	01010113          	addi	sp,sp,16
    80006180:	00008067          	ret
    80006184:	00003517          	auipc	a0,0x3
    80006188:	2e450513          	addi	a0,a0,740 # 80009468 <_ZL6digits+0xa8>
    8000618c:	00001097          	auipc	ra,0x1
    80006190:	8e0080e7          	jalr	-1824(ra) # 80006a6c <panic>

0000000080006194 <trapinit>:
    80006194:	ff010113          	addi	sp,sp,-16
    80006198:	00813423          	sd	s0,8(sp)
    8000619c:	01010413          	addi	s0,sp,16
    800061a0:	00813403          	ld	s0,8(sp)
    800061a4:	00003597          	auipc	a1,0x3
    800061a8:	2ec58593          	addi	a1,a1,748 # 80009490 <_ZL6digits+0xd0>
    800061ac:	00007517          	auipc	a0,0x7
    800061b0:	86450513          	addi	a0,a0,-1948 # 8000ca10 <tickslock>
    800061b4:	01010113          	addi	sp,sp,16
    800061b8:	00001317          	auipc	t1,0x1
    800061bc:	5c030067          	jr	1472(t1) # 80007778 <initlock>

00000000800061c0 <trapinithart>:
    800061c0:	ff010113          	addi	sp,sp,-16
    800061c4:	00813423          	sd	s0,8(sp)
    800061c8:	01010413          	addi	s0,sp,16
    800061cc:	00000797          	auipc	a5,0x0
    800061d0:	2f478793          	addi	a5,a5,756 # 800064c0 <kernelvec>
    800061d4:	10579073          	csrw	stvec,a5
    800061d8:	00813403          	ld	s0,8(sp)
    800061dc:	01010113          	addi	sp,sp,16
    800061e0:	00008067          	ret

00000000800061e4 <usertrap>:
    800061e4:	ff010113          	addi	sp,sp,-16
    800061e8:	00813423          	sd	s0,8(sp)
    800061ec:	01010413          	addi	s0,sp,16
    800061f0:	00813403          	ld	s0,8(sp)
    800061f4:	01010113          	addi	sp,sp,16
    800061f8:	00008067          	ret

00000000800061fc <usertrapret>:
    800061fc:	ff010113          	addi	sp,sp,-16
    80006200:	00813423          	sd	s0,8(sp)
    80006204:	01010413          	addi	s0,sp,16
    80006208:	00813403          	ld	s0,8(sp)
    8000620c:	01010113          	addi	sp,sp,16
    80006210:	00008067          	ret

0000000080006214 <kerneltrap>:
    80006214:	fe010113          	addi	sp,sp,-32
    80006218:	00813823          	sd	s0,16(sp)
    8000621c:	00113c23          	sd	ra,24(sp)
    80006220:	00913423          	sd	s1,8(sp)
    80006224:	02010413          	addi	s0,sp,32
    80006228:	142025f3          	csrr	a1,scause
    8000622c:	100027f3          	csrr	a5,sstatus
    80006230:	0027f793          	andi	a5,a5,2
    80006234:	10079c63          	bnez	a5,8000634c <kerneltrap+0x138>
    80006238:	142027f3          	csrr	a5,scause
    8000623c:	0207ce63          	bltz	a5,80006278 <kerneltrap+0x64>
    80006240:	00003517          	auipc	a0,0x3
    80006244:	29850513          	addi	a0,a0,664 # 800094d8 <_ZL6digits+0x118>
    80006248:	00001097          	auipc	ra,0x1
    8000624c:	880080e7          	jalr	-1920(ra) # 80006ac8 <__printf>
    80006250:	141025f3          	csrr	a1,sepc
    80006254:	14302673          	csrr	a2,stval
    80006258:	00003517          	auipc	a0,0x3
    8000625c:	29050513          	addi	a0,a0,656 # 800094e8 <_ZL6digits+0x128>
    80006260:	00001097          	auipc	ra,0x1
    80006264:	868080e7          	jalr	-1944(ra) # 80006ac8 <__printf>
    80006268:	00003517          	auipc	a0,0x3
    8000626c:	29850513          	addi	a0,a0,664 # 80009500 <_ZL6digits+0x140>
    80006270:	00000097          	auipc	ra,0x0
    80006274:	7fc080e7          	jalr	2044(ra) # 80006a6c <panic>
    80006278:	0ff7f713          	andi	a4,a5,255
    8000627c:	00900693          	li	a3,9
    80006280:	04d70063          	beq	a4,a3,800062c0 <kerneltrap+0xac>
    80006284:	fff00713          	li	a4,-1
    80006288:	03f71713          	slli	a4,a4,0x3f
    8000628c:	00170713          	addi	a4,a4,1
    80006290:	fae798e3          	bne	a5,a4,80006240 <kerneltrap+0x2c>
    80006294:	00000097          	auipc	ra,0x0
    80006298:	e00080e7          	jalr	-512(ra) # 80006094 <cpuid>
    8000629c:	06050663          	beqz	a0,80006308 <kerneltrap+0xf4>
    800062a0:	144027f3          	csrr	a5,sip
    800062a4:	ffd7f793          	andi	a5,a5,-3
    800062a8:	14479073          	csrw	sip,a5
    800062ac:	01813083          	ld	ra,24(sp)
    800062b0:	01013403          	ld	s0,16(sp)
    800062b4:	00813483          	ld	s1,8(sp)
    800062b8:	02010113          	addi	sp,sp,32
    800062bc:	00008067          	ret
    800062c0:	00000097          	auipc	ra,0x0
    800062c4:	3c4080e7          	jalr	964(ra) # 80006684 <plic_claim>
    800062c8:	00a00793          	li	a5,10
    800062cc:	00050493          	mv	s1,a0
    800062d0:	06f50863          	beq	a0,a5,80006340 <kerneltrap+0x12c>
    800062d4:	fc050ce3          	beqz	a0,800062ac <kerneltrap+0x98>
    800062d8:	00050593          	mv	a1,a0
    800062dc:	00003517          	auipc	a0,0x3
    800062e0:	1dc50513          	addi	a0,a0,476 # 800094b8 <_ZL6digits+0xf8>
    800062e4:	00000097          	auipc	ra,0x0
    800062e8:	7e4080e7          	jalr	2020(ra) # 80006ac8 <__printf>
    800062ec:	01013403          	ld	s0,16(sp)
    800062f0:	01813083          	ld	ra,24(sp)
    800062f4:	00048513          	mv	a0,s1
    800062f8:	00813483          	ld	s1,8(sp)
    800062fc:	02010113          	addi	sp,sp,32
    80006300:	00000317          	auipc	t1,0x0
    80006304:	3bc30067          	jr	956(t1) # 800066bc <plic_complete>
    80006308:	00006517          	auipc	a0,0x6
    8000630c:	70850513          	addi	a0,a0,1800 # 8000ca10 <tickslock>
    80006310:	00001097          	auipc	ra,0x1
    80006314:	48c080e7          	jalr	1164(ra) # 8000779c <acquire>
    80006318:	00005717          	auipc	a4,0x5
    8000631c:	55c70713          	addi	a4,a4,1372 # 8000b874 <ticks>
    80006320:	00072783          	lw	a5,0(a4)
    80006324:	00006517          	auipc	a0,0x6
    80006328:	6ec50513          	addi	a0,a0,1772 # 8000ca10 <tickslock>
    8000632c:	0017879b          	addiw	a5,a5,1
    80006330:	00f72023          	sw	a5,0(a4)
    80006334:	00001097          	auipc	ra,0x1
    80006338:	534080e7          	jalr	1332(ra) # 80007868 <release>
    8000633c:	f65ff06f          	j	800062a0 <kerneltrap+0x8c>
    80006340:	00001097          	auipc	ra,0x1
    80006344:	090080e7          	jalr	144(ra) # 800073d0 <uartintr>
    80006348:	fa5ff06f          	j	800062ec <kerneltrap+0xd8>
    8000634c:	00003517          	auipc	a0,0x3
    80006350:	14c50513          	addi	a0,a0,332 # 80009498 <_ZL6digits+0xd8>
    80006354:	00000097          	auipc	ra,0x0
    80006358:	718080e7          	jalr	1816(ra) # 80006a6c <panic>

000000008000635c <clockintr>:
    8000635c:	fe010113          	addi	sp,sp,-32
    80006360:	00813823          	sd	s0,16(sp)
    80006364:	00913423          	sd	s1,8(sp)
    80006368:	00113c23          	sd	ra,24(sp)
    8000636c:	02010413          	addi	s0,sp,32
    80006370:	00006497          	auipc	s1,0x6
    80006374:	6a048493          	addi	s1,s1,1696 # 8000ca10 <tickslock>
    80006378:	00048513          	mv	a0,s1
    8000637c:	00001097          	auipc	ra,0x1
    80006380:	420080e7          	jalr	1056(ra) # 8000779c <acquire>
    80006384:	00005717          	auipc	a4,0x5
    80006388:	4f070713          	addi	a4,a4,1264 # 8000b874 <ticks>
    8000638c:	00072783          	lw	a5,0(a4)
    80006390:	01013403          	ld	s0,16(sp)
    80006394:	01813083          	ld	ra,24(sp)
    80006398:	00048513          	mv	a0,s1
    8000639c:	0017879b          	addiw	a5,a5,1
    800063a0:	00813483          	ld	s1,8(sp)
    800063a4:	00f72023          	sw	a5,0(a4)
    800063a8:	02010113          	addi	sp,sp,32
    800063ac:	00001317          	auipc	t1,0x1
    800063b0:	4bc30067          	jr	1212(t1) # 80007868 <release>

00000000800063b4 <devintr>:
    800063b4:	142027f3          	csrr	a5,scause
    800063b8:	00000513          	li	a0,0
    800063bc:	0007c463          	bltz	a5,800063c4 <devintr+0x10>
    800063c0:	00008067          	ret
    800063c4:	fe010113          	addi	sp,sp,-32
    800063c8:	00813823          	sd	s0,16(sp)
    800063cc:	00113c23          	sd	ra,24(sp)
    800063d0:	00913423          	sd	s1,8(sp)
    800063d4:	02010413          	addi	s0,sp,32
    800063d8:	0ff7f713          	andi	a4,a5,255
    800063dc:	00900693          	li	a3,9
    800063e0:	04d70c63          	beq	a4,a3,80006438 <devintr+0x84>
    800063e4:	fff00713          	li	a4,-1
    800063e8:	03f71713          	slli	a4,a4,0x3f
    800063ec:	00170713          	addi	a4,a4,1
    800063f0:	00e78c63          	beq	a5,a4,80006408 <devintr+0x54>
    800063f4:	01813083          	ld	ra,24(sp)
    800063f8:	01013403          	ld	s0,16(sp)
    800063fc:	00813483          	ld	s1,8(sp)
    80006400:	02010113          	addi	sp,sp,32
    80006404:	00008067          	ret
    80006408:	00000097          	auipc	ra,0x0
    8000640c:	c8c080e7          	jalr	-884(ra) # 80006094 <cpuid>
    80006410:	06050663          	beqz	a0,8000647c <devintr+0xc8>
    80006414:	144027f3          	csrr	a5,sip
    80006418:	ffd7f793          	andi	a5,a5,-3
    8000641c:	14479073          	csrw	sip,a5
    80006420:	01813083          	ld	ra,24(sp)
    80006424:	01013403          	ld	s0,16(sp)
    80006428:	00813483          	ld	s1,8(sp)
    8000642c:	00200513          	li	a0,2
    80006430:	02010113          	addi	sp,sp,32
    80006434:	00008067          	ret
    80006438:	00000097          	auipc	ra,0x0
    8000643c:	24c080e7          	jalr	588(ra) # 80006684 <plic_claim>
    80006440:	00a00793          	li	a5,10
    80006444:	00050493          	mv	s1,a0
    80006448:	06f50663          	beq	a0,a5,800064b4 <devintr+0x100>
    8000644c:	00100513          	li	a0,1
    80006450:	fa0482e3          	beqz	s1,800063f4 <devintr+0x40>
    80006454:	00048593          	mv	a1,s1
    80006458:	00003517          	auipc	a0,0x3
    8000645c:	06050513          	addi	a0,a0,96 # 800094b8 <_ZL6digits+0xf8>
    80006460:	00000097          	auipc	ra,0x0
    80006464:	668080e7          	jalr	1640(ra) # 80006ac8 <__printf>
    80006468:	00048513          	mv	a0,s1
    8000646c:	00000097          	auipc	ra,0x0
    80006470:	250080e7          	jalr	592(ra) # 800066bc <plic_complete>
    80006474:	00100513          	li	a0,1
    80006478:	f7dff06f          	j	800063f4 <devintr+0x40>
    8000647c:	00006517          	auipc	a0,0x6
    80006480:	59450513          	addi	a0,a0,1428 # 8000ca10 <tickslock>
    80006484:	00001097          	auipc	ra,0x1
    80006488:	318080e7          	jalr	792(ra) # 8000779c <acquire>
    8000648c:	00005717          	auipc	a4,0x5
    80006490:	3e870713          	addi	a4,a4,1000 # 8000b874 <ticks>
    80006494:	00072783          	lw	a5,0(a4)
    80006498:	00006517          	auipc	a0,0x6
    8000649c:	57850513          	addi	a0,a0,1400 # 8000ca10 <tickslock>
    800064a0:	0017879b          	addiw	a5,a5,1
    800064a4:	00f72023          	sw	a5,0(a4)
    800064a8:	00001097          	auipc	ra,0x1
    800064ac:	3c0080e7          	jalr	960(ra) # 80007868 <release>
    800064b0:	f65ff06f          	j	80006414 <devintr+0x60>
    800064b4:	00001097          	auipc	ra,0x1
    800064b8:	f1c080e7          	jalr	-228(ra) # 800073d0 <uartintr>
    800064bc:	fadff06f          	j	80006468 <devintr+0xb4>

00000000800064c0 <kernelvec>:
    800064c0:	f0010113          	addi	sp,sp,-256
    800064c4:	00113023          	sd	ra,0(sp)
    800064c8:	00213423          	sd	sp,8(sp)
    800064cc:	00313823          	sd	gp,16(sp)
    800064d0:	00413c23          	sd	tp,24(sp)
    800064d4:	02513023          	sd	t0,32(sp)
    800064d8:	02613423          	sd	t1,40(sp)
    800064dc:	02713823          	sd	t2,48(sp)
    800064e0:	02813c23          	sd	s0,56(sp)
    800064e4:	04913023          	sd	s1,64(sp)
    800064e8:	04a13423          	sd	a0,72(sp)
    800064ec:	04b13823          	sd	a1,80(sp)
    800064f0:	04c13c23          	sd	a2,88(sp)
    800064f4:	06d13023          	sd	a3,96(sp)
    800064f8:	06e13423          	sd	a4,104(sp)
    800064fc:	06f13823          	sd	a5,112(sp)
    80006500:	07013c23          	sd	a6,120(sp)
    80006504:	09113023          	sd	a7,128(sp)
    80006508:	09213423          	sd	s2,136(sp)
    8000650c:	09313823          	sd	s3,144(sp)
    80006510:	09413c23          	sd	s4,152(sp)
    80006514:	0b513023          	sd	s5,160(sp)
    80006518:	0b613423          	sd	s6,168(sp)
    8000651c:	0b713823          	sd	s7,176(sp)
    80006520:	0b813c23          	sd	s8,184(sp)
    80006524:	0d913023          	sd	s9,192(sp)
    80006528:	0da13423          	sd	s10,200(sp)
    8000652c:	0db13823          	sd	s11,208(sp)
    80006530:	0dc13c23          	sd	t3,216(sp)
    80006534:	0fd13023          	sd	t4,224(sp)
    80006538:	0fe13423          	sd	t5,232(sp)
    8000653c:	0ff13823          	sd	t6,240(sp)
    80006540:	cd5ff0ef          	jal	ra,80006214 <kerneltrap>
    80006544:	00013083          	ld	ra,0(sp)
    80006548:	00813103          	ld	sp,8(sp)
    8000654c:	01013183          	ld	gp,16(sp)
    80006550:	02013283          	ld	t0,32(sp)
    80006554:	02813303          	ld	t1,40(sp)
    80006558:	03013383          	ld	t2,48(sp)
    8000655c:	03813403          	ld	s0,56(sp)
    80006560:	04013483          	ld	s1,64(sp)
    80006564:	04813503          	ld	a0,72(sp)
    80006568:	05013583          	ld	a1,80(sp)
    8000656c:	05813603          	ld	a2,88(sp)
    80006570:	06013683          	ld	a3,96(sp)
    80006574:	06813703          	ld	a4,104(sp)
    80006578:	07013783          	ld	a5,112(sp)
    8000657c:	07813803          	ld	a6,120(sp)
    80006580:	08013883          	ld	a7,128(sp)
    80006584:	08813903          	ld	s2,136(sp)
    80006588:	09013983          	ld	s3,144(sp)
    8000658c:	09813a03          	ld	s4,152(sp)
    80006590:	0a013a83          	ld	s5,160(sp)
    80006594:	0a813b03          	ld	s6,168(sp)
    80006598:	0b013b83          	ld	s7,176(sp)
    8000659c:	0b813c03          	ld	s8,184(sp)
    800065a0:	0c013c83          	ld	s9,192(sp)
    800065a4:	0c813d03          	ld	s10,200(sp)
    800065a8:	0d013d83          	ld	s11,208(sp)
    800065ac:	0d813e03          	ld	t3,216(sp)
    800065b0:	0e013e83          	ld	t4,224(sp)
    800065b4:	0e813f03          	ld	t5,232(sp)
    800065b8:	0f013f83          	ld	t6,240(sp)
    800065bc:	10010113          	addi	sp,sp,256
    800065c0:	10200073          	sret
    800065c4:	00000013          	nop
    800065c8:	00000013          	nop
    800065cc:	00000013          	nop

00000000800065d0 <timervec>:
    800065d0:	34051573          	csrrw	a0,mscratch,a0
    800065d4:	00b53023          	sd	a1,0(a0)
    800065d8:	00c53423          	sd	a2,8(a0)
    800065dc:	00d53823          	sd	a3,16(a0)
    800065e0:	01853583          	ld	a1,24(a0)
    800065e4:	02053603          	ld	a2,32(a0)
    800065e8:	0005b683          	ld	a3,0(a1)
    800065ec:	00c686b3          	add	a3,a3,a2
    800065f0:	00d5b023          	sd	a3,0(a1)
    800065f4:	00200593          	li	a1,2
    800065f8:	14459073          	csrw	sip,a1
    800065fc:	01053683          	ld	a3,16(a0)
    80006600:	00853603          	ld	a2,8(a0)
    80006604:	00053583          	ld	a1,0(a0)
    80006608:	34051573          	csrrw	a0,mscratch,a0
    8000660c:	30200073          	mret

0000000080006610 <plicinit>:
    80006610:	ff010113          	addi	sp,sp,-16
    80006614:	00813423          	sd	s0,8(sp)
    80006618:	01010413          	addi	s0,sp,16
    8000661c:	00813403          	ld	s0,8(sp)
    80006620:	0c0007b7          	lui	a5,0xc000
    80006624:	00100713          	li	a4,1
    80006628:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000662c:	00e7a223          	sw	a4,4(a5)
    80006630:	01010113          	addi	sp,sp,16
    80006634:	00008067          	ret

0000000080006638 <plicinithart>:
    80006638:	ff010113          	addi	sp,sp,-16
    8000663c:	00813023          	sd	s0,0(sp)
    80006640:	00113423          	sd	ra,8(sp)
    80006644:	01010413          	addi	s0,sp,16
    80006648:	00000097          	auipc	ra,0x0
    8000664c:	a4c080e7          	jalr	-1460(ra) # 80006094 <cpuid>
    80006650:	0085171b          	slliw	a4,a0,0x8
    80006654:	0c0027b7          	lui	a5,0xc002
    80006658:	00e787b3          	add	a5,a5,a4
    8000665c:	40200713          	li	a4,1026
    80006660:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006664:	00813083          	ld	ra,8(sp)
    80006668:	00013403          	ld	s0,0(sp)
    8000666c:	00d5151b          	slliw	a0,a0,0xd
    80006670:	0c2017b7          	lui	a5,0xc201
    80006674:	00a78533          	add	a0,a5,a0
    80006678:	00052023          	sw	zero,0(a0)
    8000667c:	01010113          	addi	sp,sp,16
    80006680:	00008067          	ret

0000000080006684 <plic_claim>:
    80006684:	ff010113          	addi	sp,sp,-16
    80006688:	00813023          	sd	s0,0(sp)
    8000668c:	00113423          	sd	ra,8(sp)
    80006690:	01010413          	addi	s0,sp,16
    80006694:	00000097          	auipc	ra,0x0
    80006698:	a00080e7          	jalr	-1536(ra) # 80006094 <cpuid>
    8000669c:	00813083          	ld	ra,8(sp)
    800066a0:	00013403          	ld	s0,0(sp)
    800066a4:	00d5151b          	slliw	a0,a0,0xd
    800066a8:	0c2017b7          	lui	a5,0xc201
    800066ac:	00a78533          	add	a0,a5,a0
    800066b0:	00452503          	lw	a0,4(a0)
    800066b4:	01010113          	addi	sp,sp,16
    800066b8:	00008067          	ret

00000000800066bc <plic_complete>:
    800066bc:	fe010113          	addi	sp,sp,-32
    800066c0:	00813823          	sd	s0,16(sp)
    800066c4:	00913423          	sd	s1,8(sp)
    800066c8:	00113c23          	sd	ra,24(sp)
    800066cc:	02010413          	addi	s0,sp,32
    800066d0:	00050493          	mv	s1,a0
    800066d4:	00000097          	auipc	ra,0x0
    800066d8:	9c0080e7          	jalr	-1600(ra) # 80006094 <cpuid>
    800066dc:	01813083          	ld	ra,24(sp)
    800066e0:	01013403          	ld	s0,16(sp)
    800066e4:	00d5179b          	slliw	a5,a0,0xd
    800066e8:	0c201737          	lui	a4,0xc201
    800066ec:	00f707b3          	add	a5,a4,a5
    800066f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800066f4:	00813483          	ld	s1,8(sp)
    800066f8:	02010113          	addi	sp,sp,32
    800066fc:	00008067          	ret

0000000080006700 <consolewrite>:
    80006700:	fb010113          	addi	sp,sp,-80
    80006704:	04813023          	sd	s0,64(sp)
    80006708:	04113423          	sd	ra,72(sp)
    8000670c:	02913c23          	sd	s1,56(sp)
    80006710:	03213823          	sd	s2,48(sp)
    80006714:	03313423          	sd	s3,40(sp)
    80006718:	03413023          	sd	s4,32(sp)
    8000671c:	01513c23          	sd	s5,24(sp)
    80006720:	05010413          	addi	s0,sp,80
    80006724:	06c05c63          	blez	a2,8000679c <consolewrite+0x9c>
    80006728:	00060993          	mv	s3,a2
    8000672c:	00050a13          	mv	s4,a0
    80006730:	00058493          	mv	s1,a1
    80006734:	00000913          	li	s2,0
    80006738:	fff00a93          	li	s5,-1
    8000673c:	01c0006f          	j	80006758 <consolewrite+0x58>
    80006740:	fbf44503          	lbu	a0,-65(s0)
    80006744:	0019091b          	addiw	s2,s2,1
    80006748:	00148493          	addi	s1,s1,1
    8000674c:	00001097          	auipc	ra,0x1
    80006750:	a9c080e7          	jalr	-1380(ra) # 800071e8 <uartputc>
    80006754:	03298063          	beq	s3,s2,80006774 <consolewrite+0x74>
    80006758:	00048613          	mv	a2,s1
    8000675c:	00100693          	li	a3,1
    80006760:	000a0593          	mv	a1,s4
    80006764:	fbf40513          	addi	a0,s0,-65
    80006768:	00000097          	auipc	ra,0x0
    8000676c:	9e4080e7          	jalr	-1564(ra) # 8000614c <either_copyin>
    80006770:	fd5518e3          	bne	a0,s5,80006740 <consolewrite+0x40>
    80006774:	04813083          	ld	ra,72(sp)
    80006778:	04013403          	ld	s0,64(sp)
    8000677c:	03813483          	ld	s1,56(sp)
    80006780:	02813983          	ld	s3,40(sp)
    80006784:	02013a03          	ld	s4,32(sp)
    80006788:	01813a83          	ld	s5,24(sp)
    8000678c:	00090513          	mv	a0,s2
    80006790:	03013903          	ld	s2,48(sp)
    80006794:	05010113          	addi	sp,sp,80
    80006798:	00008067          	ret
    8000679c:	00000913          	li	s2,0
    800067a0:	fd5ff06f          	j	80006774 <consolewrite+0x74>

00000000800067a4 <consoleread>:
    800067a4:	f9010113          	addi	sp,sp,-112
    800067a8:	06813023          	sd	s0,96(sp)
    800067ac:	04913c23          	sd	s1,88(sp)
    800067b0:	05213823          	sd	s2,80(sp)
    800067b4:	05313423          	sd	s3,72(sp)
    800067b8:	05413023          	sd	s4,64(sp)
    800067bc:	03513c23          	sd	s5,56(sp)
    800067c0:	03613823          	sd	s6,48(sp)
    800067c4:	03713423          	sd	s7,40(sp)
    800067c8:	03813023          	sd	s8,32(sp)
    800067cc:	06113423          	sd	ra,104(sp)
    800067d0:	01913c23          	sd	s9,24(sp)
    800067d4:	07010413          	addi	s0,sp,112
    800067d8:	00060b93          	mv	s7,a2
    800067dc:	00050913          	mv	s2,a0
    800067e0:	00058c13          	mv	s8,a1
    800067e4:	00060b1b          	sext.w	s6,a2
    800067e8:	00006497          	auipc	s1,0x6
    800067ec:	25048493          	addi	s1,s1,592 # 8000ca38 <cons>
    800067f0:	00400993          	li	s3,4
    800067f4:	fff00a13          	li	s4,-1
    800067f8:	00a00a93          	li	s5,10
    800067fc:	05705e63          	blez	s7,80006858 <consoleread+0xb4>
    80006800:	09c4a703          	lw	a4,156(s1)
    80006804:	0984a783          	lw	a5,152(s1)
    80006808:	0007071b          	sext.w	a4,a4
    8000680c:	08e78463          	beq	a5,a4,80006894 <consoleread+0xf0>
    80006810:	07f7f713          	andi	a4,a5,127
    80006814:	00e48733          	add	a4,s1,a4
    80006818:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000681c:	0017869b          	addiw	a3,a5,1
    80006820:	08d4ac23          	sw	a3,152(s1)
    80006824:	00070c9b          	sext.w	s9,a4
    80006828:	0b370663          	beq	a4,s3,800068d4 <consoleread+0x130>
    8000682c:	00100693          	li	a3,1
    80006830:	f9f40613          	addi	a2,s0,-97
    80006834:	000c0593          	mv	a1,s8
    80006838:	00090513          	mv	a0,s2
    8000683c:	f8e40fa3          	sb	a4,-97(s0)
    80006840:	00000097          	auipc	ra,0x0
    80006844:	8c0080e7          	jalr	-1856(ra) # 80006100 <either_copyout>
    80006848:	01450863          	beq	a0,s4,80006858 <consoleread+0xb4>
    8000684c:	001c0c13          	addi	s8,s8,1
    80006850:	fffb8b9b          	addiw	s7,s7,-1
    80006854:	fb5c94e3          	bne	s9,s5,800067fc <consoleread+0x58>
    80006858:	000b851b          	sext.w	a0,s7
    8000685c:	06813083          	ld	ra,104(sp)
    80006860:	06013403          	ld	s0,96(sp)
    80006864:	05813483          	ld	s1,88(sp)
    80006868:	05013903          	ld	s2,80(sp)
    8000686c:	04813983          	ld	s3,72(sp)
    80006870:	04013a03          	ld	s4,64(sp)
    80006874:	03813a83          	ld	s5,56(sp)
    80006878:	02813b83          	ld	s7,40(sp)
    8000687c:	02013c03          	ld	s8,32(sp)
    80006880:	01813c83          	ld	s9,24(sp)
    80006884:	40ab053b          	subw	a0,s6,a0
    80006888:	03013b03          	ld	s6,48(sp)
    8000688c:	07010113          	addi	sp,sp,112
    80006890:	00008067          	ret
    80006894:	00001097          	auipc	ra,0x1
    80006898:	1d8080e7          	jalr	472(ra) # 80007a6c <push_on>
    8000689c:	0984a703          	lw	a4,152(s1)
    800068a0:	09c4a783          	lw	a5,156(s1)
    800068a4:	0007879b          	sext.w	a5,a5
    800068a8:	fef70ce3          	beq	a4,a5,800068a0 <consoleread+0xfc>
    800068ac:	00001097          	auipc	ra,0x1
    800068b0:	234080e7          	jalr	564(ra) # 80007ae0 <pop_on>
    800068b4:	0984a783          	lw	a5,152(s1)
    800068b8:	07f7f713          	andi	a4,a5,127
    800068bc:	00e48733          	add	a4,s1,a4
    800068c0:	01874703          	lbu	a4,24(a4)
    800068c4:	0017869b          	addiw	a3,a5,1
    800068c8:	08d4ac23          	sw	a3,152(s1)
    800068cc:	00070c9b          	sext.w	s9,a4
    800068d0:	f5371ee3          	bne	a4,s3,8000682c <consoleread+0x88>
    800068d4:	000b851b          	sext.w	a0,s7
    800068d8:	f96bf2e3          	bgeu	s7,s6,8000685c <consoleread+0xb8>
    800068dc:	08f4ac23          	sw	a5,152(s1)
    800068e0:	f7dff06f          	j	8000685c <consoleread+0xb8>

00000000800068e4 <consputc>:
    800068e4:	10000793          	li	a5,256
    800068e8:	00f50663          	beq	a0,a5,800068f4 <consputc+0x10>
    800068ec:	00001317          	auipc	t1,0x1
    800068f0:	9f430067          	jr	-1548(t1) # 800072e0 <uartputc_sync>
    800068f4:	ff010113          	addi	sp,sp,-16
    800068f8:	00113423          	sd	ra,8(sp)
    800068fc:	00813023          	sd	s0,0(sp)
    80006900:	01010413          	addi	s0,sp,16
    80006904:	00800513          	li	a0,8
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	9d8080e7          	jalr	-1576(ra) # 800072e0 <uartputc_sync>
    80006910:	02000513          	li	a0,32
    80006914:	00001097          	auipc	ra,0x1
    80006918:	9cc080e7          	jalr	-1588(ra) # 800072e0 <uartputc_sync>
    8000691c:	00013403          	ld	s0,0(sp)
    80006920:	00813083          	ld	ra,8(sp)
    80006924:	00800513          	li	a0,8
    80006928:	01010113          	addi	sp,sp,16
    8000692c:	00001317          	auipc	t1,0x1
    80006930:	9b430067          	jr	-1612(t1) # 800072e0 <uartputc_sync>

0000000080006934 <consoleintr>:
    80006934:	fe010113          	addi	sp,sp,-32
    80006938:	00813823          	sd	s0,16(sp)
    8000693c:	00913423          	sd	s1,8(sp)
    80006940:	01213023          	sd	s2,0(sp)
    80006944:	00113c23          	sd	ra,24(sp)
    80006948:	02010413          	addi	s0,sp,32
    8000694c:	00006917          	auipc	s2,0x6
    80006950:	0ec90913          	addi	s2,s2,236 # 8000ca38 <cons>
    80006954:	00050493          	mv	s1,a0
    80006958:	00090513          	mv	a0,s2
    8000695c:	00001097          	auipc	ra,0x1
    80006960:	e40080e7          	jalr	-448(ra) # 8000779c <acquire>
    80006964:	02048c63          	beqz	s1,8000699c <consoleintr+0x68>
    80006968:	0a092783          	lw	a5,160(s2)
    8000696c:	09892703          	lw	a4,152(s2)
    80006970:	07f00693          	li	a3,127
    80006974:	40e7873b          	subw	a4,a5,a4
    80006978:	02e6e263          	bltu	a3,a4,8000699c <consoleintr+0x68>
    8000697c:	00d00713          	li	a4,13
    80006980:	04e48063          	beq	s1,a4,800069c0 <consoleintr+0x8c>
    80006984:	07f7f713          	andi	a4,a5,127
    80006988:	00e90733          	add	a4,s2,a4
    8000698c:	0017879b          	addiw	a5,a5,1
    80006990:	0af92023          	sw	a5,160(s2)
    80006994:	00970c23          	sb	s1,24(a4)
    80006998:	08f92e23          	sw	a5,156(s2)
    8000699c:	01013403          	ld	s0,16(sp)
    800069a0:	01813083          	ld	ra,24(sp)
    800069a4:	00813483          	ld	s1,8(sp)
    800069a8:	00013903          	ld	s2,0(sp)
    800069ac:	00006517          	auipc	a0,0x6
    800069b0:	08c50513          	addi	a0,a0,140 # 8000ca38 <cons>
    800069b4:	02010113          	addi	sp,sp,32
    800069b8:	00001317          	auipc	t1,0x1
    800069bc:	eb030067          	jr	-336(t1) # 80007868 <release>
    800069c0:	00a00493          	li	s1,10
    800069c4:	fc1ff06f          	j	80006984 <consoleintr+0x50>

00000000800069c8 <consoleinit>:
    800069c8:	fe010113          	addi	sp,sp,-32
    800069cc:	00113c23          	sd	ra,24(sp)
    800069d0:	00813823          	sd	s0,16(sp)
    800069d4:	00913423          	sd	s1,8(sp)
    800069d8:	02010413          	addi	s0,sp,32
    800069dc:	00006497          	auipc	s1,0x6
    800069e0:	05c48493          	addi	s1,s1,92 # 8000ca38 <cons>
    800069e4:	00048513          	mv	a0,s1
    800069e8:	00003597          	auipc	a1,0x3
    800069ec:	b2858593          	addi	a1,a1,-1240 # 80009510 <_ZL6digits+0x150>
    800069f0:	00001097          	auipc	ra,0x1
    800069f4:	d88080e7          	jalr	-632(ra) # 80007778 <initlock>
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	7ac080e7          	jalr	1964(ra) # 800071a4 <uartinit>
    80006a00:	01813083          	ld	ra,24(sp)
    80006a04:	01013403          	ld	s0,16(sp)
    80006a08:	00000797          	auipc	a5,0x0
    80006a0c:	d9c78793          	addi	a5,a5,-612 # 800067a4 <consoleread>
    80006a10:	0af4bc23          	sd	a5,184(s1)
    80006a14:	00000797          	auipc	a5,0x0
    80006a18:	cec78793          	addi	a5,a5,-788 # 80006700 <consolewrite>
    80006a1c:	0cf4b023          	sd	a5,192(s1)
    80006a20:	00813483          	ld	s1,8(sp)
    80006a24:	02010113          	addi	sp,sp,32
    80006a28:	00008067          	ret

0000000080006a2c <console_read>:
    80006a2c:	ff010113          	addi	sp,sp,-16
    80006a30:	00813423          	sd	s0,8(sp)
    80006a34:	01010413          	addi	s0,sp,16
    80006a38:	00813403          	ld	s0,8(sp)
    80006a3c:	00006317          	auipc	t1,0x6
    80006a40:	0b433303          	ld	t1,180(t1) # 8000caf0 <devsw+0x10>
    80006a44:	01010113          	addi	sp,sp,16
    80006a48:	00030067          	jr	t1

0000000080006a4c <console_write>:
    80006a4c:	ff010113          	addi	sp,sp,-16
    80006a50:	00813423          	sd	s0,8(sp)
    80006a54:	01010413          	addi	s0,sp,16
    80006a58:	00813403          	ld	s0,8(sp)
    80006a5c:	00006317          	auipc	t1,0x6
    80006a60:	09c33303          	ld	t1,156(t1) # 8000caf8 <devsw+0x18>
    80006a64:	01010113          	addi	sp,sp,16
    80006a68:	00030067          	jr	t1

0000000080006a6c <panic>:
    80006a6c:	fe010113          	addi	sp,sp,-32
    80006a70:	00113c23          	sd	ra,24(sp)
    80006a74:	00813823          	sd	s0,16(sp)
    80006a78:	00913423          	sd	s1,8(sp)
    80006a7c:	02010413          	addi	s0,sp,32
    80006a80:	00050493          	mv	s1,a0
    80006a84:	00003517          	auipc	a0,0x3
    80006a88:	a9450513          	addi	a0,a0,-1388 # 80009518 <_ZL6digits+0x158>
    80006a8c:	00006797          	auipc	a5,0x6
    80006a90:	1007a623          	sw	zero,268(a5) # 8000cb98 <pr+0x18>
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	034080e7          	jalr	52(ra) # 80006ac8 <__printf>
    80006a9c:	00048513          	mv	a0,s1
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	028080e7          	jalr	40(ra) # 80006ac8 <__printf>
    80006aa8:	00002517          	auipc	a0,0x2
    80006aac:	6f050513          	addi	a0,a0,1776 # 80009198 <CONSOLE_STATUS+0x188>
    80006ab0:	00000097          	auipc	ra,0x0
    80006ab4:	018080e7          	jalr	24(ra) # 80006ac8 <__printf>
    80006ab8:	00100793          	li	a5,1
    80006abc:	00005717          	auipc	a4,0x5
    80006ac0:	daf72e23          	sw	a5,-580(a4) # 8000b878 <panicked>
    80006ac4:	0000006f          	j	80006ac4 <panic+0x58>

0000000080006ac8 <__printf>:
    80006ac8:	f3010113          	addi	sp,sp,-208
    80006acc:	08813023          	sd	s0,128(sp)
    80006ad0:	07313423          	sd	s3,104(sp)
    80006ad4:	09010413          	addi	s0,sp,144
    80006ad8:	05813023          	sd	s8,64(sp)
    80006adc:	08113423          	sd	ra,136(sp)
    80006ae0:	06913c23          	sd	s1,120(sp)
    80006ae4:	07213823          	sd	s2,112(sp)
    80006ae8:	07413023          	sd	s4,96(sp)
    80006aec:	05513c23          	sd	s5,88(sp)
    80006af0:	05613823          	sd	s6,80(sp)
    80006af4:	05713423          	sd	s7,72(sp)
    80006af8:	03913c23          	sd	s9,56(sp)
    80006afc:	03a13823          	sd	s10,48(sp)
    80006b00:	03b13423          	sd	s11,40(sp)
    80006b04:	00006317          	auipc	t1,0x6
    80006b08:	07c30313          	addi	t1,t1,124 # 8000cb80 <pr>
    80006b0c:	01832c03          	lw	s8,24(t1)
    80006b10:	00b43423          	sd	a1,8(s0)
    80006b14:	00c43823          	sd	a2,16(s0)
    80006b18:	00d43c23          	sd	a3,24(s0)
    80006b1c:	02e43023          	sd	a4,32(s0)
    80006b20:	02f43423          	sd	a5,40(s0)
    80006b24:	03043823          	sd	a6,48(s0)
    80006b28:	03143c23          	sd	a7,56(s0)
    80006b2c:	00050993          	mv	s3,a0
    80006b30:	4a0c1663          	bnez	s8,80006fdc <__printf+0x514>
    80006b34:	60098c63          	beqz	s3,8000714c <__printf+0x684>
    80006b38:	0009c503          	lbu	a0,0(s3)
    80006b3c:	00840793          	addi	a5,s0,8
    80006b40:	f6f43c23          	sd	a5,-136(s0)
    80006b44:	00000493          	li	s1,0
    80006b48:	22050063          	beqz	a0,80006d68 <__printf+0x2a0>
    80006b4c:	00002a37          	lui	s4,0x2
    80006b50:	00018ab7          	lui	s5,0x18
    80006b54:	000f4b37          	lui	s6,0xf4
    80006b58:	00989bb7          	lui	s7,0x989
    80006b5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006b60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006b64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006b68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006b6c:	00148c9b          	addiw	s9,s1,1
    80006b70:	02500793          	li	a5,37
    80006b74:	01998933          	add	s2,s3,s9
    80006b78:	38f51263          	bne	a0,a5,80006efc <__printf+0x434>
    80006b7c:	00094783          	lbu	a5,0(s2)
    80006b80:	00078c9b          	sext.w	s9,a5
    80006b84:	1e078263          	beqz	a5,80006d68 <__printf+0x2a0>
    80006b88:	0024849b          	addiw	s1,s1,2
    80006b8c:	07000713          	li	a4,112
    80006b90:	00998933          	add	s2,s3,s1
    80006b94:	38e78a63          	beq	a5,a4,80006f28 <__printf+0x460>
    80006b98:	20f76863          	bltu	a4,a5,80006da8 <__printf+0x2e0>
    80006b9c:	42a78863          	beq	a5,a0,80006fcc <__printf+0x504>
    80006ba0:	06400713          	li	a4,100
    80006ba4:	40e79663          	bne	a5,a4,80006fb0 <__printf+0x4e8>
    80006ba8:	f7843783          	ld	a5,-136(s0)
    80006bac:	0007a603          	lw	a2,0(a5)
    80006bb0:	00878793          	addi	a5,a5,8
    80006bb4:	f6f43c23          	sd	a5,-136(s0)
    80006bb8:	42064a63          	bltz	a2,80006fec <__printf+0x524>
    80006bbc:	00a00713          	li	a4,10
    80006bc0:	02e677bb          	remuw	a5,a2,a4
    80006bc4:	00003d97          	auipc	s11,0x3
    80006bc8:	97cd8d93          	addi	s11,s11,-1668 # 80009540 <digits>
    80006bcc:	00900593          	li	a1,9
    80006bd0:	0006051b          	sext.w	a0,a2
    80006bd4:	00000c93          	li	s9,0
    80006bd8:	02079793          	slli	a5,a5,0x20
    80006bdc:	0207d793          	srli	a5,a5,0x20
    80006be0:	00fd87b3          	add	a5,s11,a5
    80006be4:	0007c783          	lbu	a5,0(a5)
    80006be8:	02e656bb          	divuw	a3,a2,a4
    80006bec:	f8f40023          	sb	a5,-128(s0)
    80006bf0:	14c5d863          	bge	a1,a2,80006d40 <__printf+0x278>
    80006bf4:	06300593          	li	a1,99
    80006bf8:	00100c93          	li	s9,1
    80006bfc:	02e6f7bb          	remuw	a5,a3,a4
    80006c00:	02079793          	slli	a5,a5,0x20
    80006c04:	0207d793          	srli	a5,a5,0x20
    80006c08:	00fd87b3          	add	a5,s11,a5
    80006c0c:	0007c783          	lbu	a5,0(a5)
    80006c10:	02e6d73b          	divuw	a4,a3,a4
    80006c14:	f8f400a3          	sb	a5,-127(s0)
    80006c18:	12a5f463          	bgeu	a1,a0,80006d40 <__printf+0x278>
    80006c1c:	00a00693          	li	a3,10
    80006c20:	00900593          	li	a1,9
    80006c24:	02d777bb          	remuw	a5,a4,a3
    80006c28:	02079793          	slli	a5,a5,0x20
    80006c2c:	0207d793          	srli	a5,a5,0x20
    80006c30:	00fd87b3          	add	a5,s11,a5
    80006c34:	0007c503          	lbu	a0,0(a5)
    80006c38:	02d757bb          	divuw	a5,a4,a3
    80006c3c:	f8a40123          	sb	a0,-126(s0)
    80006c40:	48e5f263          	bgeu	a1,a4,800070c4 <__printf+0x5fc>
    80006c44:	06300513          	li	a0,99
    80006c48:	02d7f5bb          	remuw	a1,a5,a3
    80006c4c:	02059593          	slli	a1,a1,0x20
    80006c50:	0205d593          	srli	a1,a1,0x20
    80006c54:	00bd85b3          	add	a1,s11,a1
    80006c58:	0005c583          	lbu	a1,0(a1)
    80006c5c:	02d7d7bb          	divuw	a5,a5,a3
    80006c60:	f8b401a3          	sb	a1,-125(s0)
    80006c64:	48e57263          	bgeu	a0,a4,800070e8 <__printf+0x620>
    80006c68:	3e700513          	li	a0,999
    80006c6c:	02d7f5bb          	remuw	a1,a5,a3
    80006c70:	02059593          	slli	a1,a1,0x20
    80006c74:	0205d593          	srli	a1,a1,0x20
    80006c78:	00bd85b3          	add	a1,s11,a1
    80006c7c:	0005c583          	lbu	a1,0(a1)
    80006c80:	02d7d7bb          	divuw	a5,a5,a3
    80006c84:	f8b40223          	sb	a1,-124(s0)
    80006c88:	46e57663          	bgeu	a0,a4,800070f4 <__printf+0x62c>
    80006c8c:	02d7f5bb          	remuw	a1,a5,a3
    80006c90:	02059593          	slli	a1,a1,0x20
    80006c94:	0205d593          	srli	a1,a1,0x20
    80006c98:	00bd85b3          	add	a1,s11,a1
    80006c9c:	0005c583          	lbu	a1,0(a1)
    80006ca0:	02d7d7bb          	divuw	a5,a5,a3
    80006ca4:	f8b402a3          	sb	a1,-123(s0)
    80006ca8:	46ea7863          	bgeu	s4,a4,80007118 <__printf+0x650>
    80006cac:	02d7f5bb          	remuw	a1,a5,a3
    80006cb0:	02059593          	slli	a1,a1,0x20
    80006cb4:	0205d593          	srli	a1,a1,0x20
    80006cb8:	00bd85b3          	add	a1,s11,a1
    80006cbc:	0005c583          	lbu	a1,0(a1)
    80006cc0:	02d7d7bb          	divuw	a5,a5,a3
    80006cc4:	f8b40323          	sb	a1,-122(s0)
    80006cc8:	3eeaf863          	bgeu	s5,a4,800070b8 <__printf+0x5f0>
    80006ccc:	02d7f5bb          	remuw	a1,a5,a3
    80006cd0:	02059593          	slli	a1,a1,0x20
    80006cd4:	0205d593          	srli	a1,a1,0x20
    80006cd8:	00bd85b3          	add	a1,s11,a1
    80006cdc:	0005c583          	lbu	a1,0(a1)
    80006ce0:	02d7d7bb          	divuw	a5,a5,a3
    80006ce4:	f8b403a3          	sb	a1,-121(s0)
    80006ce8:	42eb7e63          	bgeu	s6,a4,80007124 <__printf+0x65c>
    80006cec:	02d7f5bb          	remuw	a1,a5,a3
    80006cf0:	02059593          	slli	a1,a1,0x20
    80006cf4:	0205d593          	srli	a1,a1,0x20
    80006cf8:	00bd85b3          	add	a1,s11,a1
    80006cfc:	0005c583          	lbu	a1,0(a1)
    80006d00:	02d7d7bb          	divuw	a5,a5,a3
    80006d04:	f8b40423          	sb	a1,-120(s0)
    80006d08:	42ebfc63          	bgeu	s7,a4,80007140 <__printf+0x678>
    80006d0c:	02079793          	slli	a5,a5,0x20
    80006d10:	0207d793          	srli	a5,a5,0x20
    80006d14:	00fd8db3          	add	s11,s11,a5
    80006d18:	000dc703          	lbu	a4,0(s11)
    80006d1c:	00a00793          	li	a5,10
    80006d20:	00900c93          	li	s9,9
    80006d24:	f8e404a3          	sb	a4,-119(s0)
    80006d28:	00065c63          	bgez	a2,80006d40 <__printf+0x278>
    80006d2c:	f9040713          	addi	a4,s0,-112
    80006d30:	00f70733          	add	a4,a4,a5
    80006d34:	02d00693          	li	a3,45
    80006d38:	fed70823          	sb	a3,-16(a4)
    80006d3c:	00078c93          	mv	s9,a5
    80006d40:	f8040793          	addi	a5,s0,-128
    80006d44:	01978cb3          	add	s9,a5,s9
    80006d48:	f7f40d13          	addi	s10,s0,-129
    80006d4c:	000cc503          	lbu	a0,0(s9)
    80006d50:	fffc8c93          	addi	s9,s9,-1
    80006d54:	00000097          	auipc	ra,0x0
    80006d58:	b90080e7          	jalr	-1136(ra) # 800068e4 <consputc>
    80006d5c:	ffac98e3          	bne	s9,s10,80006d4c <__printf+0x284>
    80006d60:	00094503          	lbu	a0,0(s2)
    80006d64:	e00514e3          	bnez	a0,80006b6c <__printf+0xa4>
    80006d68:	1a0c1663          	bnez	s8,80006f14 <__printf+0x44c>
    80006d6c:	08813083          	ld	ra,136(sp)
    80006d70:	08013403          	ld	s0,128(sp)
    80006d74:	07813483          	ld	s1,120(sp)
    80006d78:	07013903          	ld	s2,112(sp)
    80006d7c:	06813983          	ld	s3,104(sp)
    80006d80:	06013a03          	ld	s4,96(sp)
    80006d84:	05813a83          	ld	s5,88(sp)
    80006d88:	05013b03          	ld	s6,80(sp)
    80006d8c:	04813b83          	ld	s7,72(sp)
    80006d90:	04013c03          	ld	s8,64(sp)
    80006d94:	03813c83          	ld	s9,56(sp)
    80006d98:	03013d03          	ld	s10,48(sp)
    80006d9c:	02813d83          	ld	s11,40(sp)
    80006da0:	0d010113          	addi	sp,sp,208
    80006da4:	00008067          	ret
    80006da8:	07300713          	li	a4,115
    80006dac:	1ce78a63          	beq	a5,a4,80006f80 <__printf+0x4b8>
    80006db0:	07800713          	li	a4,120
    80006db4:	1ee79e63          	bne	a5,a4,80006fb0 <__printf+0x4e8>
    80006db8:	f7843783          	ld	a5,-136(s0)
    80006dbc:	0007a703          	lw	a4,0(a5)
    80006dc0:	00878793          	addi	a5,a5,8
    80006dc4:	f6f43c23          	sd	a5,-136(s0)
    80006dc8:	28074263          	bltz	a4,8000704c <__printf+0x584>
    80006dcc:	00002d97          	auipc	s11,0x2
    80006dd0:	774d8d93          	addi	s11,s11,1908 # 80009540 <digits>
    80006dd4:	00f77793          	andi	a5,a4,15
    80006dd8:	00fd87b3          	add	a5,s11,a5
    80006ddc:	0007c683          	lbu	a3,0(a5)
    80006de0:	00f00613          	li	a2,15
    80006de4:	0007079b          	sext.w	a5,a4
    80006de8:	f8d40023          	sb	a3,-128(s0)
    80006dec:	0047559b          	srliw	a1,a4,0x4
    80006df0:	0047569b          	srliw	a3,a4,0x4
    80006df4:	00000c93          	li	s9,0
    80006df8:	0ee65063          	bge	a2,a4,80006ed8 <__printf+0x410>
    80006dfc:	00f6f693          	andi	a3,a3,15
    80006e00:	00dd86b3          	add	a3,s11,a3
    80006e04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006e08:	0087d79b          	srliw	a5,a5,0x8
    80006e0c:	00100c93          	li	s9,1
    80006e10:	f8d400a3          	sb	a3,-127(s0)
    80006e14:	0cb67263          	bgeu	a2,a1,80006ed8 <__printf+0x410>
    80006e18:	00f7f693          	andi	a3,a5,15
    80006e1c:	00dd86b3          	add	a3,s11,a3
    80006e20:	0006c583          	lbu	a1,0(a3)
    80006e24:	00f00613          	li	a2,15
    80006e28:	0047d69b          	srliw	a3,a5,0x4
    80006e2c:	f8b40123          	sb	a1,-126(s0)
    80006e30:	0047d593          	srli	a1,a5,0x4
    80006e34:	28f67e63          	bgeu	a2,a5,800070d0 <__printf+0x608>
    80006e38:	00f6f693          	andi	a3,a3,15
    80006e3c:	00dd86b3          	add	a3,s11,a3
    80006e40:	0006c503          	lbu	a0,0(a3)
    80006e44:	0087d813          	srli	a6,a5,0x8
    80006e48:	0087d69b          	srliw	a3,a5,0x8
    80006e4c:	f8a401a3          	sb	a0,-125(s0)
    80006e50:	28b67663          	bgeu	a2,a1,800070dc <__printf+0x614>
    80006e54:	00f6f693          	andi	a3,a3,15
    80006e58:	00dd86b3          	add	a3,s11,a3
    80006e5c:	0006c583          	lbu	a1,0(a3)
    80006e60:	00c7d513          	srli	a0,a5,0xc
    80006e64:	00c7d69b          	srliw	a3,a5,0xc
    80006e68:	f8b40223          	sb	a1,-124(s0)
    80006e6c:	29067a63          	bgeu	a2,a6,80007100 <__printf+0x638>
    80006e70:	00f6f693          	andi	a3,a3,15
    80006e74:	00dd86b3          	add	a3,s11,a3
    80006e78:	0006c583          	lbu	a1,0(a3)
    80006e7c:	0107d813          	srli	a6,a5,0x10
    80006e80:	0107d69b          	srliw	a3,a5,0x10
    80006e84:	f8b402a3          	sb	a1,-123(s0)
    80006e88:	28a67263          	bgeu	a2,a0,8000710c <__printf+0x644>
    80006e8c:	00f6f693          	andi	a3,a3,15
    80006e90:	00dd86b3          	add	a3,s11,a3
    80006e94:	0006c683          	lbu	a3,0(a3)
    80006e98:	0147d79b          	srliw	a5,a5,0x14
    80006e9c:	f8d40323          	sb	a3,-122(s0)
    80006ea0:	21067663          	bgeu	a2,a6,800070ac <__printf+0x5e4>
    80006ea4:	02079793          	slli	a5,a5,0x20
    80006ea8:	0207d793          	srli	a5,a5,0x20
    80006eac:	00fd8db3          	add	s11,s11,a5
    80006eb0:	000dc683          	lbu	a3,0(s11)
    80006eb4:	00800793          	li	a5,8
    80006eb8:	00700c93          	li	s9,7
    80006ebc:	f8d403a3          	sb	a3,-121(s0)
    80006ec0:	00075c63          	bgez	a4,80006ed8 <__printf+0x410>
    80006ec4:	f9040713          	addi	a4,s0,-112
    80006ec8:	00f70733          	add	a4,a4,a5
    80006ecc:	02d00693          	li	a3,45
    80006ed0:	fed70823          	sb	a3,-16(a4)
    80006ed4:	00078c93          	mv	s9,a5
    80006ed8:	f8040793          	addi	a5,s0,-128
    80006edc:	01978cb3          	add	s9,a5,s9
    80006ee0:	f7f40d13          	addi	s10,s0,-129
    80006ee4:	000cc503          	lbu	a0,0(s9)
    80006ee8:	fffc8c93          	addi	s9,s9,-1
    80006eec:	00000097          	auipc	ra,0x0
    80006ef0:	9f8080e7          	jalr	-1544(ra) # 800068e4 <consputc>
    80006ef4:	ff9d18e3          	bne	s10,s9,80006ee4 <__printf+0x41c>
    80006ef8:	0100006f          	j	80006f08 <__printf+0x440>
    80006efc:	00000097          	auipc	ra,0x0
    80006f00:	9e8080e7          	jalr	-1560(ra) # 800068e4 <consputc>
    80006f04:	000c8493          	mv	s1,s9
    80006f08:	00094503          	lbu	a0,0(s2)
    80006f0c:	c60510e3          	bnez	a0,80006b6c <__printf+0xa4>
    80006f10:	e40c0ee3          	beqz	s8,80006d6c <__printf+0x2a4>
    80006f14:	00006517          	auipc	a0,0x6
    80006f18:	c6c50513          	addi	a0,a0,-916 # 8000cb80 <pr>
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	94c080e7          	jalr	-1716(ra) # 80007868 <release>
    80006f24:	e49ff06f          	j	80006d6c <__printf+0x2a4>
    80006f28:	f7843783          	ld	a5,-136(s0)
    80006f2c:	03000513          	li	a0,48
    80006f30:	01000d13          	li	s10,16
    80006f34:	00878713          	addi	a4,a5,8
    80006f38:	0007bc83          	ld	s9,0(a5)
    80006f3c:	f6e43c23          	sd	a4,-136(s0)
    80006f40:	00000097          	auipc	ra,0x0
    80006f44:	9a4080e7          	jalr	-1628(ra) # 800068e4 <consputc>
    80006f48:	07800513          	li	a0,120
    80006f4c:	00000097          	auipc	ra,0x0
    80006f50:	998080e7          	jalr	-1640(ra) # 800068e4 <consputc>
    80006f54:	00002d97          	auipc	s11,0x2
    80006f58:	5ecd8d93          	addi	s11,s11,1516 # 80009540 <digits>
    80006f5c:	03ccd793          	srli	a5,s9,0x3c
    80006f60:	00fd87b3          	add	a5,s11,a5
    80006f64:	0007c503          	lbu	a0,0(a5)
    80006f68:	fffd0d1b          	addiw	s10,s10,-1
    80006f6c:	004c9c93          	slli	s9,s9,0x4
    80006f70:	00000097          	auipc	ra,0x0
    80006f74:	974080e7          	jalr	-1676(ra) # 800068e4 <consputc>
    80006f78:	fe0d12e3          	bnez	s10,80006f5c <__printf+0x494>
    80006f7c:	f8dff06f          	j	80006f08 <__printf+0x440>
    80006f80:	f7843783          	ld	a5,-136(s0)
    80006f84:	0007bc83          	ld	s9,0(a5)
    80006f88:	00878793          	addi	a5,a5,8
    80006f8c:	f6f43c23          	sd	a5,-136(s0)
    80006f90:	000c9a63          	bnez	s9,80006fa4 <__printf+0x4dc>
    80006f94:	1080006f          	j	8000709c <__printf+0x5d4>
    80006f98:	001c8c93          	addi	s9,s9,1
    80006f9c:	00000097          	auipc	ra,0x0
    80006fa0:	948080e7          	jalr	-1720(ra) # 800068e4 <consputc>
    80006fa4:	000cc503          	lbu	a0,0(s9)
    80006fa8:	fe0518e3          	bnez	a0,80006f98 <__printf+0x4d0>
    80006fac:	f5dff06f          	j	80006f08 <__printf+0x440>
    80006fb0:	02500513          	li	a0,37
    80006fb4:	00000097          	auipc	ra,0x0
    80006fb8:	930080e7          	jalr	-1744(ra) # 800068e4 <consputc>
    80006fbc:	000c8513          	mv	a0,s9
    80006fc0:	00000097          	auipc	ra,0x0
    80006fc4:	924080e7          	jalr	-1756(ra) # 800068e4 <consputc>
    80006fc8:	f41ff06f          	j	80006f08 <__printf+0x440>
    80006fcc:	02500513          	li	a0,37
    80006fd0:	00000097          	auipc	ra,0x0
    80006fd4:	914080e7          	jalr	-1772(ra) # 800068e4 <consputc>
    80006fd8:	f31ff06f          	j	80006f08 <__printf+0x440>
    80006fdc:	00030513          	mv	a0,t1
    80006fe0:	00000097          	auipc	ra,0x0
    80006fe4:	7bc080e7          	jalr	1980(ra) # 8000779c <acquire>
    80006fe8:	b4dff06f          	j	80006b34 <__printf+0x6c>
    80006fec:	40c0053b          	negw	a0,a2
    80006ff0:	00a00713          	li	a4,10
    80006ff4:	02e576bb          	remuw	a3,a0,a4
    80006ff8:	00002d97          	auipc	s11,0x2
    80006ffc:	548d8d93          	addi	s11,s11,1352 # 80009540 <digits>
    80007000:	ff700593          	li	a1,-9
    80007004:	02069693          	slli	a3,a3,0x20
    80007008:	0206d693          	srli	a3,a3,0x20
    8000700c:	00dd86b3          	add	a3,s11,a3
    80007010:	0006c683          	lbu	a3,0(a3)
    80007014:	02e557bb          	divuw	a5,a0,a4
    80007018:	f8d40023          	sb	a3,-128(s0)
    8000701c:	10b65e63          	bge	a2,a1,80007138 <__printf+0x670>
    80007020:	06300593          	li	a1,99
    80007024:	02e7f6bb          	remuw	a3,a5,a4
    80007028:	02069693          	slli	a3,a3,0x20
    8000702c:	0206d693          	srli	a3,a3,0x20
    80007030:	00dd86b3          	add	a3,s11,a3
    80007034:	0006c683          	lbu	a3,0(a3)
    80007038:	02e7d73b          	divuw	a4,a5,a4
    8000703c:	00200793          	li	a5,2
    80007040:	f8d400a3          	sb	a3,-127(s0)
    80007044:	bca5ece3          	bltu	a1,a0,80006c1c <__printf+0x154>
    80007048:	ce5ff06f          	j	80006d2c <__printf+0x264>
    8000704c:	40e007bb          	negw	a5,a4
    80007050:	00002d97          	auipc	s11,0x2
    80007054:	4f0d8d93          	addi	s11,s11,1264 # 80009540 <digits>
    80007058:	00f7f693          	andi	a3,a5,15
    8000705c:	00dd86b3          	add	a3,s11,a3
    80007060:	0006c583          	lbu	a1,0(a3)
    80007064:	ff100613          	li	a2,-15
    80007068:	0047d69b          	srliw	a3,a5,0x4
    8000706c:	f8b40023          	sb	a1,-128(s0)
    80007070:	0047d59b          	srliw	a1,a5,0x4
    80007074:	0ac75e63          	bge	a4,a2,80007130 <__printf+0x668>
    80007078:	00f6f693          	andi	a3,a3,15
    8000707c:	00dd86b3          	add	a3,s11,a3
    80007080:	0006c603          	lbu	a2,0(a3)
    80007084:	00f00693          	li	a3,15
    80007088:	0087d79b          	srliw	a5,a5,0x8
    8000708c:	f8c400a3          	sb	a2,-127(s0)
    80007090:	d8b6e4e3          	bltu	a3,a1,80006e18 <__printf+0x350>
    80007094:	00200793          	li	a5,2
    80007098:	e2dff06f          	j	80006ec4 <__printf+0x3fc>
    8000709c:	00002c97          	auipc	s9,0x2
    800070a0:	484c8c93          	addi	s9,s9,1156 # 80009520 <_ZL6digits+0x160>
    800070a4:	02800513          	li	a0,40
    800070a8:	ef1ff06f          	j	80006f98 <__printf+0x4d0>
    800070ac:	00700793          	li	a5,7
    800070b0:	00600c93          	li	s9,6
    800070b4:	e0dff06f          	j	80006ec0 <__printf+0x3f8>
    800070b8:	00700793          	li	a5,7
    800070bc:	00600c93          	li	s9,6
    800070c0:	c69ff06f          	j	80006d28 <__printf+0x260>
    800070c4:	00300793          	li	a5,3
    800070c8:	00200c93          	li	s9,2
    800070cc:	c5dff06f          	j	80006d28 <__printf+0x260>
    800070d0:	00300793          	li	a5,3
    800070d4:	00200c93          	li	s9,2
    800070d8:	de9ff06f          	j	80006ec0 <__printf+0x3f8>
    800070dc:	00400793          	li	a5,4
    800070e0:	00300c93          	li	s9,3
    800070e4:	dddff06f          	j	80006ec0 <__printf+0x3f8>
    800070e8:	00400793          	li	a5,4
    800070ec:	00300c93          	li	s9,3
    800070f0:	c39ff06f          	j	80006d28 <__printf+0x260>
    800070f4:	00500793          	li	a5,5
    800070f8:	00400c93          	li	s9,4
    800070fc:	c2dff06f          	j	80006d28 <__printf+0x260>
    80007100:	00500793          	li	a5,5
    80007104:	00400c93          	li	s9,4
    80007108:	db9ff06f          	j	80006ec0 <__printf+0x3f8>
    8000710c:	00600793          	li	a5,6
    80007110:	00500c93          	li	s9,5
    80007114:	dadff06f          	j	80006ec0 <__printf+0x3f8>
    80007118:	00600793          	li	a5,6
    8000711c:	00500c93          	li	s9,5
    80007120:	c09ff06f          	j	80006d28 <__printf+0x260>
    80007124:	00800793          	li	a5,8
    80007128:	00700c93          	li	s9,7
    8000712c:	bfdff06f          	j	80006d28 <__printf+0x260>
    80007130:	00100793          	li	a5,1
    80007134:	d91ff06f          	j	80006ec4 <__printf+0x3fc>
    80007138:	00100793          	li	a5,1
    8000713c:	bf1ff06f          	j	80006d2c <__printf+0x264>
    80007140:	00900793          	li	a5,9
    80007144:	00800c93          	li	s9,8
    80007148:	be1ff06f          	j	80006d28 <__printf+0x260>
    8000714c:	00002517          	auipc	a0,0x2
    80007150:	3dc50513          	addi	a0,a0,988 # 80009528 <_ZL6digits+0x168>
    80007154:	00000097          	auipc	ra,0x0
    80007158:	918080e7          	jalr	-1768(ra) # 80006a6c <panic>

000000008000715c <printfinit>:
    8000715c:	fe010113          	addi	sp,sp,-32
    80007160:	00813823          	sd	s0,16(sp)
    80007164:	00913423          	sd	s1,8(sp)
    80007168:	00113c23          	sd	ra,24(sp)
    8000716c:	02010413          	addi	s0,sp,32
    80007170:	00006497          	auipc	s1,0x6
    80007174:	a1048493          	addi	s1,s1,-1520 # 8000cb80 <pr>
    80007178:	00048513          	mv	a0,s1
    8000717c:	00002597          	auipc	a1,0x2
    80007180:	3bc58593          	addi	a1,a1,956 # 80009538 <_ZL6digits+0x178>
    80007184:	00000097          	auipc	ra,0x0
    80007188:	5f4080e7          	jalr	1524(ra) # 80007778 <initlock>
    8000718c:	01813083          	ld	ra,24(sp)
    80007190:	01013403          	ld	s0,16(sp)
    80007194:	0004ac23          	sw	zero,24(s1)
    80007198:	00813483          	ld	s1,8(sp)
    8000719c:	02010113          	addi	sp,sp,32
    800071a0:	00008067          	ret

00000000800071a4 <uartinit>:
    800071a4:	ff010113          	addi	sp,sp,-16
    800071a8:	00813423          	sd	s0,8(sp)
    800071ac:	01010413          	addi	s0,sp,16
    800071b0:	100007b7          	lui	a5,0x10000
    800071b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800071b8:	f8000713          	li	a4,-128
    800071bc:	00e781a3          	sb	a4,3(a5)
    800071c0:	00300713          	li	a4,3
    800071c4:	00e78023          	sb	a4,0(a5)
    800071c8:	000780a3          	sb	zero,1(a5)
    800071cc:	00e781a3          	sb	a4,3(a5)
    800071d0:	00700693          	li	a3,7
    800071d4:	00d78123          	sb	a3,2(a5)
    800071d8:	00e780a3          	sb	a4,1(a5)
    800071dc:	00813403          	ld	s0,8(sp)
    800071e0:	01010113          	addi	sp,sp,16
    800071e4:	00008067          	ret

00000000800071e8 <uartputc>:
    800071e8:	00004797          	auipc	a5,0x4
    800071ec:	6907a783          	lw	a5,1680(a5) # 8000b878 <panicked>
    800071f0:	00078463          	beqz	a5,800071f8 <uartputc+0x10>
    800071f4:	0000006f          	j	800071f4 <uartputc+0xc>
    800071f8:	fd010113          	addi	sp,sp,-48
    800071fc:	02813023          	sd	s0,32(sp)
    80007200:	00913c23          	sd	s1,24(sp)
    80007204:	01213823          	sd	s2,16(sp)
    80007208:	01313423          	sd	s3,8(sp)
    8000720c:	02113423          	sd	ra,40(sp)
    80007210:	03010413          	addi	s0,sp,48
    80007214:	00004917          	auipc	s2,0x4
    80007218:	66c90913          	addi	s2,s2,1644 # 8000b880 <uart_tx_r>
    8000721c:	00093783          	ld	a5,0(s2)
    80007220:	00004497          	auipc	s1,0x4
    80007224:	66848493          	addi	s1,s1,1640 # 8000b888 <uart_tx_w>
    80007228:	0004b703          	ld	a4,0(s1)
    8000722c:	02078693          	addi	a3,a5,32
    80007230:	00050993          	mv	s3,a0
    80007234:	02e69c63          	bne	a3,a4,8000726c <uartputc+0x84>
    80007238:	00001097          	auipc	ra,0x1
    8000723c:	834080e7          	jalr	-1996(ra) # 80007a6c <push_on>
    80007240:	00093783          	ld	a5,0(s2)
    80007244:	0004b703          	ld	a4,0(s1)
    80007248:	02078793          	addi	a5,a5,32
    8000724c:	00e79463          	bne	a5,a4,80007254 <uartputc+0x6c>
    80007250:	0000006f          	j	80007250 <uartputc+0x68>
    80007254:	00001097          	auipc	ra,0x1
    80007258:	88c080e7          	jalr	-1908(ra) # 80007ae0 <pop_on>
    8000725c:	00093783          	ld	a5,0(s2)
    80007260:	0004b703          	ld	a4,0(s1)
    80007264:	02078693          	addi	a3,a5,32
    80007268:	fce688e3          	beq	a3,a4,80007238 <uartputc+0x50>
    8000726c:	01f77693          	andi	a3,a4,31
    80007270:	00006597          	auipc	a1,0x6
    80007274:	93058593          	addi	a1,a1,-1744 # 8000cba0 <uart_tx_buf>
    80007278:	00d586b3          	add	a3,a1,a3
    8000727c:	00170713          	addi	a4,a4,1
    80007280:	01368023          	sb	s3,0(a3)
    80007284:	00e4b023          	sd	a4,0(s1)
    80007288:	10000637          	lui	a2,0x10000
    8000728c:	02f71063          	bne	a4,a5,800072ac <uartputc+0xc4>
    80007290:	0340006f          	j	800072c4 <uartputc+0xdc>
    80007294:	00074703          	lbu	a4,0(a4)
    80007298:	00f93023          	sd	a5,0(s2)
    8000729c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800072a0:	00093783          	ld	a5,0(s2)
    800072a4:	0004b703          	ld	a4,0(s1)
    800072a8:	00f70e63          	beq	a4,a5,800072c4 <uartputc+0xdc>
    800072ac:	00564683          	lbu	a3,5(a2)
    800072b0:	01f7f713          	andi	a4,a5,31
    800072b4:	00e58733          	add	a4,a1,a4
    800072b8:	0206f693          	andi	a3,a3,32
    800072bc:	00178793          	addi	a5,a5,1
    800072c0:	fc069ae3          	bnez	a3,80007294 <uartputc+0xac>
    800072c4:	02813083          	ld	ra,40(sp)
    800072c8:	02013403          	ld	s0,32(sp)
    800072cc:	01813483          	ld	s1,24(sp)
    800072d0:	01013903          	ld	s2,16(sp)
    800072d4:	00813983          	ld	s3,8(sp)
    800072d8:	03010113          	addi	sp,sp,48
    800072dc:	00008067          	ret

00000000800072e0 <uartputc_sync>:
    800072e0:	ff010113          	addi	sp,sp,-16
    800072e4:	00813423          	sd	s0,8(sp)
    800072e8:	01010413          	addi	s0,sp,16
    800072ec:	00004717          	auipc	a4,0x4
    800072f0:	58c72703          	lw	a4,1420(a4) # 8000b878 <panicked>
    800072f4:	02071663          	bnez	a4,80007320 <uartputc_sync+0x40>
    800072f8:	00050793          	mv	a5,a0
    800072fc:	100006b7          	lui	a3,0x10000
    80007300:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007304:	02077713          	andi	a4,a4,32
    80007308:	fe070ce3          	beqz	a4,80007300 <uartputc_sync+0x20>
    8000730c:	0ff7f793          	andi	a5,a5,255
    80007310:	00f68023          	sb	a5,0(a3)
    80007314:	00813403          	ld	s0,8(sp)
    80007318:	01010113          	addi	sp,sp,16
    8000731c:	00008067          	ret
    80007320:	0000006f          	j	80007320 <uartputc_sync+0x40>

0000000080007324 <uartstart>:
    80007324:	ff010113          	addi	sp,sp,-16
    80007328:	00813423          	sd	s0,8(sp)
    8000732c:	01010413          	addi	s0,sp,16
    80007330:	00004617          	auipc	a2,0x4
    80007334:	55060613          	addi	a2,a2,1360 # 8000b880 <uart_tx_r>
    80007338:	00004517          	auipc	a0,0x4
    8000733c:	55050513          	addi	a0,a0,1360 # 8000b888 <uart_tx_w>
    80007340:	00063783          	ld	a5,0(a2)
    80007344:	00053703          	ld	a4,0(a0)
    80007348:	04f70263          	beq	a4,a5,8000738c <uartstart+0x68>
    8000734c:	100005b7          	lui	a1,0x10000
    80007350:	00006817          	auipc	a6,0x6
    80007354:	85080813          	addi	a6,a6,-1968 # 8000cba0 <uart_tx_buf>
    80007358:	01c0006f          	j	80007374 <uartstart+0x50>
    8000735c:	0006c703          	lbu	a4,0(a3)
    80007360:	00f63023          	sd	a5,0(a2)
    80007364:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007368:	00063783          	ld	a5,0(a2)
    8000736c:	00053703          	ld	a4,0(a0)
    80007370:	00f70e63          	beq	a4,a5,8000738c <uartstart+0x68>
    80007374:	01f7f713          	andi	a4,a5,31
    80007378:	00e806b3          	add	a3,a6,a4
    8000737c:	0055c703          	lbu	a4,5(a1)
    80007380:	00178793          	addi	a5,a5,1
    80007384:	02077713          	andi	a4,a4,32
    80007388:	fc071ae3          	bnez	a4,8000735c <uartstart+0x38>
    8000738c:	00813403          	ld	s0,8(sp)
    80007390:	01010113          	addi	sp,sp,16
    80007394:	00008067          	ret

0000000080007398 <uartgetc>:
    80007398:	ff010113          	addi	sp,sp,-16
    8000739c:	00813423          	sd	s0,8(sp)
    800073a0:	01010413          	addi	s0,sp,16
    800073a4:	10000737          	lui	a4,0x10000
    800073a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800073ac:	0017f793          	andi	a5,a5,1
    800073b0:	00078c63          	beqz	a5,800073c8 <uartgetc+0x30>
    800073b4:	00074503          	lbu	a0,0(a4)
    800073b8:	0ff57513          	andi	a0,a0,255
    800073bc:	00813403          	ld	s0,8(sp)
    800073c0:	01010113          	addi	sp,sp,16
    800073c4:	00008067          	ret
    800073c8:	fff00513          	li	a0,-1
    800073cc:	ff1ff06f          	j	800073bc <uartgetc+0x24>

00000000800073d0 <uartintr>:
    800073d0:	100007b7          	lui	a5,0x10000
    800073d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800073d8:	0017f793          	andi	a5,a5,1
    800073dc:	0a078463          	beqz	a5,80007484 <uartintr+0xb4>
    800073e0:	fe010113          	addi	sp,sp,-32
    800073e4:	00813823          	sd	s0,16(sp)
    800073e8:	00913423          	sd	s1,8(sp)
    800073ec:	00113c23          	sd	ra,24(sp)
    800073f0:	02010413          	addi	s0,sp,32
    800073f4:	100004b7          	lui	s1,0x10000
    800073f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800073fc:	0ff57513          	andi	a0,a0,255
    80007400:	fffff097          	auipc	ra,0xfffff
    80007404:	534080e7          	jalr	1332(ra) # 80006934 <consoleintr>
    80007408:	0054c783          	lbu	a5,5(s1)
    8000740c:	0017f793          	andi	a5,a5,1
    80007410:	fe0794e3          	bnez	a5,800073f8 <uartintr+0x28>
    80007414:	00004617          	auipc	a2,0x4
    80007418:	46c60613          	addi	a2,a2,1132 # 8000b880 <uart_tx_r>
    8000741c:	00004517          	auipc	a0,0x4
    80007420:	46c50513          	addi	a0,a0,1132 # 8000b888 <uart_tx_w>
    80007424:	00063783          	ld	a5,0(a2)
    80007428:	00053703          	ld	a4,0(a0)
    8000742c:	04f70263          	beq	a4,a5,80007470 <uartintr+0xa0>
    80007430:	100005b7          	lui	a1,0x10000
    80007434:	00005817          	auipc	a6,0x5
    80007438:	76c80813          	addi	a6,a6,1900 # 8000cba0 <uart_tx_buf>
    8000743c:	01c0006f          	j	80007458 <uartintr+0x88>
    80007440:	0006c703          	lbu	a4,0(a3)
    80007444:	00f63023          	sd	a5,0(a2)
    80007448:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000744c:	00063783          	ld	a5,0(a2)
    80007450:	00053703          	ld	a4,0(a0)
    80007454:	00f70e63          	beq	a4,a5,80007470 <uartintr+0xa0>
    80007458:	01f7f713          	andi	a4,a5,31
    8000745c:	00e806b3          	add	a3,a6,a4
    80007460:	0055c703          	lbu	a4,5(a1)
    80007464:	00178793          	addi	a5,a5,1
    80007468:	02077713          	andi	a4,a4,32
    8000746c:	fc071ae3          	bnez	a4,80007440 <uartintr+0x70>
    80007470:	01813083          	ld	ra,24(sp)
    80007474:	01013403          	ld	s0,16(sp)
    80007478:	00813483          	ld	s1,8(sp)
    8000747c:	02010113          	addi	sp,sp,32
    80007480:	00008067          	ret
    80007484:	00004617          	auipc	a2,0x4
    80007488:	3fc60613          	addi	a2,a2,1020 # 8000b880 <uart_tx_r>
    8000748c:	00004517          	auipc	a0,0x4
    80007490:	3fc50513          	addi	a0,a0,1020 # 8000b888 <uart_tx_w>
    80007494:	00063783          	ld	a5,0(a2)
    80007498:	00053703          	ld	a4,0(a0)
    8000749c:	04f70263          	beq	a4,a5,800074e0 <uartintr+0x110>
    800074a0:	100005b7          	lui	a1,0x10000
    800074a4:	00005817          	auipc	a6,0x5
    800074a8:	6fc80813          	addi	a6,a6,1788 # 8000cba0 <uart_tx_buf>
    800074ac:	01c0006f          	j	800074c8 <uartintr+0xf8>
    800074b0:	0006c703          	lbu	a4,0(a3)
    800074b4:	00f63023          	sd	a5,0(a2)
    800074b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800074bc:	00063783          	ld	a5,0(a2)
    800074c0:	00053703          	ld	a4,0(a0)
    800074c4:	02f70063          	beq	a4,a5,800074e4 <uartintr+0x114>
    800074c8:	01f7f713          	andi	a4,a5,31
    800074cc:	00e806b3          	add	a3,a6,a4
    800074d0:	0055c703          	lbu	a4,5(a1)
    800074d4:	00178793          	addi	a5,a5,1
    800074d8:	02077713          	andi	a4,a4,32
    800074dc:	fc071ae3          	bnez	a4,800074b0 <uartintr+0xe0>
    800074e0:	00008067          	ret
    800074e4:	00008067          	ret

00000000800074e8 <kinit>:
    800074e8:	fc010113          	addi	sp,sp,-64
    800074ec:	02913423          	sd	s1,40(sp)
    800074f0:	fffff7b7          	lui	a5,0xfffff
    800074f4:	00006497          	auipc	s1,0x6
    800074f8:	6cb48493          	addi	s1,s1,1739 # 8000dbbf <end+0xfff>
    800074fc:	02813823          	sd	s0,48(sp)
    80007500:	01313c23          	sd	s3,24(sp)
    80007504:	00f4f4b3          	and	s1,s1,a5
    80007508:	02113c23          	sd	ra,56(sp)
    8000750c:	03213023          	sd	s2,32(sp)
    80007510:	01413823          	sd	s4,16(sp)
    80007514:	01513423          	sd	s5,8(sp)
    80007518:	04010413          	addi	s0,sp,64
    8000751c:	000017b7          	lui	a5,0x1
    80007520:	01100993          	li	s3,17
    80007524:	00f487b3          	add	a5,s1,a5
    80007528:	01b99993          	slli	s3,s3,0x1b
    8000752c:	06f9e063          	bltu	s3,a5,8000758c <kinit+0xa4>
    80007530:	00005a97          	auipc	s5,0x5
    80007534:	690a8a93          	addi	s5,s5,1680 # 8000cbc0 <end>
    80007538:	0754ec63          	bltu	s1,s5,800075b0 <kinit+0xc8>
    8000753c:	0734fa63          	bgeu	s1,s3,800075b0 <kinit+0xc8>
    80007540:	00088a37          	lui	s4,0x88
    80007544:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007548:	00004917          	auipc	s2,0x4
    8000754c:	34890913          	addi	s2,s2,840 # 8000b890 <kmem>
    80007550:	00ca1a13          	slli	s4,s4,0xc
    80007554:	0140006f          	j	80007568 <kinit+0x80>
    80007558:	000017b7          	lui	a5,0x1
    8000755c:	00f484b3          	add	s1,s1,a5
    80007560:	0554e863          	bltu	s1,s5,800075b0 <kinit+0xc8>
    80007564:	0534f663          	bgeu	s1,s3,800075b0 <kinit+0xc8>
    80007568:	00001637          	lui	a2,0x1
    8000756c:	00100593          	li	a1,1
    80007570:	00048513          	mv	a0,s1
    80007574:	00000097          	auipc	ra,0x0
    80007578:	5e4080e7          	jalr	1508(ra) # 80007b58 <__memset>
    8000757c:	00093783          	ld	a5,0(s2)
    80007580:	00f4b023          	sd	a5,0(s1)
    80007584:	00993023          	sd	s1,0(s2)
    80007588:	fd4498e3          	bne	s1,s4,80007558 <kinit+0x70>
    8000758c:	03813083          	ld	ra,56(sp)
    80007590:	03013403          	ld	s0,48(sp)
    80007594:	02813483          	ld	s1,40(sp)
    80007598:	02013903          	ld	s2,32(sp)
    8000759c:	01813983          	ld	s3,24(sp)
    800075a0:	01013a03          	ld	s4,16(sp)
    800075a4:	00813a83          	ld	s5,8(sp)
    800075a8:	04010113          	addi	sp,sp,64
    800075ac:	00008067          	ret
    800075b0:	00002517          	auipc	a0,0x2
    800075b4:	fa850513          	addi	a0,a0,-88 # 80009558 <digits+0x18>
    800075b8:	fffff097          	auipc	ra,0xfffff
    800075bc:	4b4080e7          	jalr	1204(ra) # 80006a6c <panic>

00000000800075c0 <freerange>:
    800075c0:	fc010113          	addi	sp,sp,-64
    800075c4:	000017b7          	lui	a5,0x1
    800075c8:	02913423          	sd	s1,40(sp)
    800075cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800075d0:	009504b3          	add	s1,a0,s1
    800075d4:	fffff537          	lui	a0,0xfffff
    800075d8:	02813823          	sd	s0,48(sp)
    800075dc:	02113c23          	sd	ra,56(sp)
    800075e0:	03213023          	sd	s2,32(sp)
    800075e4:	01313c23          	sd	s3,24(sp)
    800075e8:	01413823          	sd	s4,16(sp)
    800075ec:	01513423          	sd	s5,8(sp)
    800075f0:	01613023          	sd	s6,0(sp)
    800075f4:	04010413          	addi	s0,sp,64
    800075f8:	00a4f4b3          	and	s1,s1,a0
    800075fc:	00f487b3          	add	a5,s1,a5
    80007600:	06f5e463          	bltu	a1,a5,80007668 <freerange+0xa8>
    80007604:	00005a97          	auipc	s5,0x5
    80007608:	5bca8a93          	addi	s5,s5,1468 # 8000cbc0 <end>
    8000760c:	0954e263          	bltu	s1,s5,80007690 <freerange+0xd0>
    80007610:	01100993          	li	s3,17
    80007614:	01b99993          	slli	s3,s3,0x1b
    80007618:	0734fc63          	bgeu	s1,s3,80007690 <freerange+0xd0>
    8000761c:	00058a13          	mv	s4,a1
    80007620:	00004917          	auipc	s2,0x4
    80007624:	27090913          	addi	s2,s2,624 # 8000b890 <kmem>
    80007628:	00002b37          	lui	s6,0x2
    8000762c:	0140006f          	j	80007640 <freerange+0x80>
    80007630:	000017b7          	lui	a5,0x1
    80007634:	00f484b3          	add	s1,s1,a5
    80007638:	0554ec63          	bltu	s1,s5,80007690 <freerange+0xd0>
    8000763c:	0534fa63          	bgeu	s1,s3,80007690 <freerange+0xd0>
    80007640:	00001637          	lui	a2,0x1
    80007644:	00100593          	li	a1,1
    80007648:	00048513          	mv	a0,s1
    8000764c:	00000097          	auipc	ra,0x0
    80007650:	50c080e7          	jalr	1292(ra) # 80007b58 <__memset>
    80007654:	00093703          	ld	a4,0(s2)
    80007658:	016487b3          	add	a5,s1,s6
    8000765c:	00e4b023          	sd	a4,0(s1)
    80007660:	00993023          	sd	s1,0(s2)
    80007664:	fcfa76e3          	bgeu	s4,a5,80007630 <freerange+0x70>
    80007668:	03813083          	ld	ra,56(sp)
    8000766c:	03013403          	ld	s0,48(sp)
    80007670:	02813483          	ld	s1,40(sp)
    80007674:	02013903          	ld	s2,32(sp)
    80007678:	01813983          	ld	s3,24(sp)
    8000767c:	01013a03          	ld	s4,16(sp)
    80007680:	00813a83          	ld	s5,8(sp)
    80007684:	00013b03          	ld	s6,0(sp)
    80007688:	04010113          	addi	sp,sp,64
    8000768c:	00008067          	ret
    80007690:	00002517          	auipc	a0,0x2
    80007694:	ec850513          	addi	a0,a0,-312 # 80009558 <digits+0x18>
    80007698:	fffff097          	auipc	ra,0xfffff
    8000769c:	3d4080e7          	jalr	980(ra) # 80006a6c <panic>

00000000800076a0 <kfree>:
    800076a0:	fe010113          	addi	sp,sp,-32
    800076a4:	00813823          	sd	s0,16(sp)
    800076a8:	00113c23          	sd	ra,24(sp)
    800076ac:	00913423          	sd	s1,8(sp)
    800076b0:	02010413          	addi	s0,sp,32
    800076b4:	03451793          	slli	a5,a0,0x34
    800076b8:	04079c63          	bnez	a5,80007710 <kfree+0x70>
    800076bc:	00005797          	auipc	a5,0x5
    800076c0:	50478793          	addi	a5,a5,1284 # 8000cbc0 <end>
    800076c4:	00050493          	mv	s1,a0
    800076c8:	04f56463          	bltu	a0,a5,80007710 <kfree+0x70>
    800076cc:	01100793          	li	a5,17
    800076d0:	01b79793          	slli	a5,a5,0x1b
    800076d4:	02f57e63          	bgeu	a0,a5,80007710 <kfree+0x70>
    800076d8:	00001637          	lui	a2,0x1
    800076dc:	00100593          	li	a1,1
    800076e0:	00000097          	auipc	ra,0x0
    800076e4:	478080e7          	jalr	1144(ra) # 80007b58 <__memset>
    800076e8:	00004797          	auipc	a5,0x4
    800076ec:	1a878793          	addi	a5,a5,424 # 8000b890 <kmem>
    800076f0:	0007b703          	ld	a4,0(a5)
    800076f4:	01813083          	ld	ra,24(sp)
    800076f8:	01013403          	ld	s0,16(sp)
    800076fc:	00e4b023          	sd	a4,0(s1)
    80007700:	0097b023          	sd	s1,0(a5)
    80007704:	00813483          	ld	s1,8(sp)
    80007708:	02010113          	addi	sp,sp,32
    8000770c:	00008067          	ret
    80007710:	00002517          	auipc	a0,0x2
    80007714:	e4850513          	addi	a0,a0,-440 # 80009558 <digits+0x18>
    80007718:	fffff097          	auipc	ra,0xfffff
    8000771c:	354080e7          	jalr	852(ra) # 80006a6c <panic>

0000000080007720 <kalloc>:
    80007720:	fe010113          	addi	sp,sp,-32
    80007724:	00813823          	sd	s0,16(sp)
    80007728:	00913423          	sd	s1,8(sp)
    8000772c:	00113c23          	sd	ra,24(sp)
    80007730:	02010413          	addi	s0,sp,32
    80007734:	00004797          	auipc	a5,0x4
    80007738:	15c78793          	addi	a5,a5,348 # 8000b890 <kmem>
    8000773c:	0007b483          	ld	s1,0(a5)
    80007740:	02048063          	beqz	s1,80007760 <kalloc+0x40>
    80007744:	0004b703          	ld	a4,0(s1)
    80007748:	00001637          	lui	a2,0x1
    8000774c:	00500593          	li	a1,5
    80007750:	00048513          	mv	a0,s1
    80007754:	00e7b023          	sd	a4,0(a5)
    80007758:	00000097          	auipc	ra,0x0
    8000775c:	400080e7          	jalr	1024(ra) # 80007b58 <__memset>
    80007760:	01813083          	ld	ra,24(sp)
    80007764:	01013403          	ld	s0,16(sp)
    80007768:	00048513          	mv	a0,s1
    8000776c:	00813483          	ld	s1,8(sp)
    80007770:	02010113          	addi	sp,sp,32
    80007774:	00008067          	ret

0000000080007778 <initlock>:
    80007778:	ff010113          	addi	sp,sp,-16
    8000777c:	00813423          	sd	s0,8(sp)
    80007780:	01010413          	addi	s0,sp,16
    80007784:	00813403          	ld	s0,8(sp)
    80007788:	00b53423          	sd	a1,8(a0)
    8000778c:	00052023          	sw	zero,0(a0)
    80007790:	00053823          	sd	zero,16(a0)
    80007794:	01010113          	addi	sp,sp,16
    80007798:	00008067          	ret

000000008000779c <acquire>:
    8000779c:	fe010113          	addi	sp,sp,-32
    800077a0:	00813823          	sd	s0,16(sp)
    800077a4:	00913423          	sd	s1,8(sp)
    800077a8:	00113c23          	sd	ra,24(sp)
    800077ac:	01213023          	sd	s2,0(sp)
    800077b0:	02010413          	addi	s0,sp,32
    800077b4:	00050493          	mv	s1,a0
    800077b8:	10002973          	csrr	s2,sstatus
    800077bc:	100027f3          	csrr	a5,sstatus
    800077c0:	ffd7f793          	andi	a5,a5,-3
    800077c4:	10079073          	csrw	sstatus,a5
    800077c8:	fffff097          	auipc	ra,0xfffff
    800077cc:	8ec080e7          	jalr	-1812(ra) # 800060b4 <mycpu>
    800077d0:	07852783          	lw	a5,120(a0)
    800077d4:	06078e63          	beqz	a5,80007850 <acquire+0xb4>
    800077d8:	fffff097          	auipc	ra,0xfffff
    800077dc:	8dc080e7          	jalr	-1828(ra) # 800060b4 <mycpu>
    800077e0:	07852783          	lw	a5,120(a0)
    800077e4:	0004a703          	lw	a4,0(s1)
    800077e8:	0017879b          	addiw	a5,a5,1
    800077ec:	06f52c23          	sw	a5,120(a0)
    800077f0:	04071063          	bnez	a4,80007830 <acquire+0x94>
    800077f4:	00100713          	li	a4,1
    800077f8:	00070793          	mv	a5,a4
    800077fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007800:	0007879b          	sext.w	a5,a5
    80007804:	fe079ae3          	bnez	a5,800077f8 <acquire+0x5c>
    80007808:	0ff0000f          	fence
    8000780c:	fffff097          	auipc	ra,0xfffff
    80007810:	8a8080e7          	jalr	-1880(ra) # 800060b4 <mycpu>
    80007814:	01813083          	ld	ra,24(sp)
    80007818:	01013403          	ld	s0,16(sp)
    8000781c:	00a4b823          	sd	a0,16(s1)
    80007820:	00013903          	ld	s2,0(sp)
    80007824:	00813483          	ld	s1,8(sp)
    80007828:	02010113          	addi	sp,sp,32
    8000782c:	00008067          	ret
    80007830:	0104b903          	ld	s2,16(s1)
    80007834:	fffff097          	auipc	ra,0xfffff
    80007838:	880080e7          	jalr	-1920(ra) # 800060b4 <mycpu>
    8000783c:	faa91ce3          	bne	s2,a0,800077f4 <acquire+0x58>
    80007840:	00002517          	auipc	a0,0x2
    80007844:	d2050513          	addi	a0,a0,-736 # 80009560 <digits+0x20>
    80007848:	fffff097          	auipc	ra,0xfffff
    8000784c:	224080e7          	jalr	548(ra) # 80006a6c <panic>
    80007850:	00195913          	srli	s2,s2,0x1
    80007854:	fffff097          	auipc	ra,0xfffff
    80007858:	860080e7          	jalr	-1952(ra) # 800060b4 <mycpu>
    8000785c:	00197913          	andi	s2,s2,1
    80007860:	07252e23          	sw	s2,124(a0)
    80007864:	f75ff06f          	j	800077d8 <acquire+0x3c>

0000000080007868 <release>:
    80007868:	fe010113          	addi	sp,sp,-32
    8000786c:	00813823          	sd	s0,16(sp)
    80007870:	00113c23          	sd	ra,24(sp)
    80007874:	00913423          	sd	s1,8(sp)
    80007878:	01213023          	sd	s2,0(sp)
    8000787c:	02010413          	addi	s0,sp,32
    80007880:	00052783          	lw	a5,0(a0)
    80007884:	00079a63          	bnez	a5,80007898 <release+0x30>
    80007888:	00002517          	auipc	a0,0x2
    8000788c:	ce050513          	addi	a0,a0,-800 # 80009568 <digits+0x28>
    80007890:	fffff097          	auipc	ra,0xfffff
    80007894:	1dc080e7          	jalr	476(ra) # 80006a6c <panic>
    80007898:	01053903          	ld	s2,16(a0)
    8000789c:	00050493          	mv	s1,a0
    800078a0:	fffff097          	auipc	ra,0xfffff
    800078a4:	814080e7          	jalr	-2028(ra) # 800060b4 <mycpu>
    800078a8:	fea910e3          	bne	s2,a0,80007888 <release+0x20>
    800078ac:	0004b823          	sd	zero,16(s1)
    800078b0:	0ff0000f          	fence
    800078b4:	0f50000f          	fence	iorw,ow
    800078b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800078bc:	ffffe097          	auipc	ra,0xffffe
    800078c0:	7f8080e7          	jalr	2040(ra) # 800060b4 <mycpu>
    800078c4:	100027f3          	csrr	a5,sstatus
    800078c8:	0027f793          	andi	a5,a5,2
    800078cc:	04079a63          	bnez	a5,80007920 <release+0xb8>
    800078d0:	07852783          	lw	a5,120(a0)
    800078d4:	02f05e63          	blez	a5,80007910 <release+0xa8>
    800078d8:	fff7871b          	addiw	a4,a5,-1
    800078dc:	06e52c23          	sw	a4,120(a0)
    800078e0:	00071c63          	bnez	a4,800078f8 <release+0x90>
    800078e4:	07c52783          	lw	a5,124(a0)
    800078e8:	00078863          	beqz	a5,800078f8 <release+0x90>
    800078ec:	100027f3          	csrr	a5,sstatus
    800078f0:	0027e793          	ori	a5,a5,2
    800078f4:	10079073          	csrw	sstatus,a5
    800078f8:	01813083          	ld	ra,24(sp)
    800078fc:	01013403          	ld	s0,16(sp)
    80007900:	00813483          	ld	s1,8(sp)
    80007904:	00013903          	ld	s2,0(sp)
    80007908:	02010113          	addi	sp,sp,32
    8000790c:	00008067          	ret
    80007910:	00002517          	auipc	a0,0x2
    80007914:	c7850513          	addi	a0,a0,-904 # 80009588 <digits+0x48>
    80007918:	fffff097          	auipc	ra,0xfffff
    8000791c:	154080e7          	jalr	340(ra) # 80006a6c <panic>
    80007920:	00002517          	auipc	a0,0x2
    80007924:	c5050513          	addi	a0,a0,-944 # 80009570 <digits+0x30>
    80007928:	fffff097          	auipc	ra,0xfffff
    8000792c:	144080e7          	jalr	324(ra) # 80006a6c <panic>

0000000080007930 <holding>:
    80007930:	00052783          	lw	a5,0(a0)
    80007934:	00079663          	bnez	a5,80007940 <holding+0x10>
    80007938:	00000513          	li	a0,0
    8000793c:	00008067          	ret
    80007940:	fe010113          	addi	sp,sp,-32
    80007944:	00813823          	sd	s0,16(sp)
    80007948:	00913423          	sd	s1,8(sp)
    8000794c:	00113c23          	sd	ra,24(sp)
    80007950:	02010413          	addi	s0,sp,32
    80007954:	01053483          	ld	s1,16(a0)
    80007958:	ffffe097          	auipc	ra,0xffffe
    8000795c:	75c080e7          	jalr	1884(ra) # 800060b4 <mycpu>
    80007960:	01813083          	ld	ra,24(sp)
    80007964:	01013403          	ld	s0,16(sp)
    80007968:	40a48533          	sub	a0,s1,a0
    8000796c:	00153513          	seqz	a0,a0
    80007970:	00813483          	ld	s1,8(sp)
    80007974:	02010113          	addi	sp,sp,32
    80007978:	00008067          	ret

000000008000797c <push_off>:
    8000797c:	fe010113          	addi	sp,sp,-32
    80007980:	00813823          	sd	s0,16(sp)
    80007984:	00113c23          	sd	ra,24(sp)
    80007988:	00913423          	sd	s1,8(sp)
    8000798c:	02010413          	addi	s0,sp,32
    80007990:	100024f3          	csrr	s1,sstatus
    80007994:	100027f3          	csrr	a5,sstatus
    80007998:	ffd7f793          	andi	a5,a5,-3
    8000799c:	10079073          	csrw	sstatus,a5
    800079a0:	ffffe097          	auipc	ra,0xffffe
    800079a4:	714080e7          	jalr	1812(ra) # 800060b4 <mycpu>
    800079a8:	07852783          	lw	a5,120(a0)
    800079ac:	02078663          	beqz	a5,800079d8 <push_off+0x5c>
    800079b0:	ffffe097          	auipc	ra,0xffffe
    800079b4:	704080e7          	jalr	1796(ra) # 800060b4 <mycpu>
    800079b8:	07852783          	lw	a5,120(a0)
    800079bc:	01813083          	ld	ra,24(sp)
    800079c0:	01013403          	ld	s0,16(sp)
    800079c4:	0017879b          	addiw	a5,a5,1
    800079c8:	06f52c23          	sw	a5,120(a0)
    800079cc:	00813483          	ld	s1,8(sp)
    800079d0:	02010113          	addi	sp,sp,32
    800079d4:	00008067          	ret
    800079d8:	0014d493          	srli	s1,s1,0x1
    800079dc:	ffffe097          	auipc	ra,0xffffe
    800079e0:	6d8080e7          	jalr	1752(ra) # 800060b4 <mycpu>
    800079e4:	0014f493          	andi	s1,s1,1
    800079e8:	06952e23          	sw	s1,124(a0)
    800079ec:	fc5ff06f          	j	800079b0 <push_off+0x34>

00000000800079f0 <pop_off>:
    800079f0:	ff010113          	addi	sp,sp,-16
    800079f4:	00813023          	sd	s0,0(sp)
    800079f8:	00113423          	sd	ra,8(sp)
    800079fc:	01010413          	addi	s0,sp,16
    80007a00:	ffffe097          	auipc	ra,0xffffe
    80007a04:	6b4080e7          	jalr	1716(ra) # 800060b4 <mycpu>
    80007a08:	100027f3          	csrr	a5,sstatus
    80007a0c:	0027f793          	andi	a5,a5,2
    80007a10:	04079663          	bnez	a5,80007a5c <pop_off+0x6c>
    80007a14:	07852783          	lw	a5,120(a0)
    80007a18:	02f05a63          	blez	a5,80007a4c <pop_off+0x5c>
    80007a1c:	fff7871b          	addiw	a4,a5,-1
    80007a20:	06e52c23          	sw	a4,120(a0)
    80007a24:	00071c63          	bnez	a4,80007a3c <pop_off+0x4c>
    80007a28:	07c52783          	lw	a5,124(a0)
    80007a2c:	00078863          	beqz	a5,80007a3c <pop_off+0x4c>
    80007a30:	100027f3          	csrr	a5,sstatus
    80007a34:	0027e793          	ori	a5,a5,2
    80007a38:	10079073          	csrw	sstatus,a5
    80007a3c:	00813083          	ld	ra,8(sp)
    80007a40:	00013403          	ld	s0,0(sp)
    80007a44:	01010113          	addi	sp,sp,16
    80007a48:	00008067          	ret
    80007a4c:	00002517          	auipc	a0,0x2
    80007a50:	b3c50513          	addi	a0,a0,-1220 # 80009588 <digits+0x48>
    80007a54:	fffff097          	auipc	ra,0xfffff
    80007a58:	018080e7          	jalr	24(ra) # 80006a6c <panic>
    80007a5c:	00002517          	auipc	a0,0x2
    80007a60:	b1450513          	addi	a0,a0,-1260 # 80009570 <digits+0x30>
    80007a64:	fffff097          	auipc	ra,0xfffff
    80007a68:	008080e7          	jalr	8(ra) # 80006a6c <panic>

0000000080007a6c <push_on>:
    80007a6c:	fe010113          	addi	sp,sp,-32
    80007a70:	00813823          	sd	s0,16(sp)
    80007a74:	00113c23          	sd	ra,24(sp)
    80007a78:	00913423          	sd	s1,8(sp)
    80007a7c:	02010413          	addi	s0,sp,32
    80007a80:	100024f3          	csrr	s1,sstatus
    80007a84:	100027f3          	csrr	a5,sstatus
    80007a88:	0027e793          	ori	a5,a5,2
    80007a8c:	10079073          	csrw	sstatus,a5
    80007a90:	ffffe097          	auipc	ra,0xffffe
    80007a94:	624080e7          	jalr	1572(ra) # 800060b4 <mycpu>
    80007a98:	07852783          	lw	a5,120(a0)
    80007a9c:	02078663          	beqz	a5,80007ac8 <push_on+0x5c>
    80007aa0:	ffffe097          	auipc	ra,0xffffe
    80007aa4:	614080e7          	jalr	1556(ra) # 800060b4 <mycpu>
    80007aa8:	07852783          	lw	a5,120(a0)
    80007aac:	01813083          	ld	ra,24(sp)
    80007ab0:	01013403          	ld	s0,16(sp)
    80007ab4:	0017879b          	addiw	a5,a5,1
    80007ab8:	06f52c23          	sw	a5,120(a0)
    80007abc:	00813483          	ld	s1,8(sp)
    80007ac0:	02010113          	addi	sp,sp,32
    80007ac4:	00008067          	ret
    80007ac8:	0014d493          	srli	s1,s1,0x1
    80007acc:	ffffe097          	auipc	ra,0xffffe
    80007ad0:	5e8080e7          	jalr	1512(ra) # 800060b4 <mycpu>
    80007ad4:	0014f493          	andi	s1,s1,1
    80007ad8:	06952e23          	sw	s1,124(a0)
    80007adc:	fc5ff06f          	j	80007aa0 <push_on+0x34>

0000000080007ae0 <pop_on>:
    80007ae0:	ff010113          	addi	sp,sp,-16
    80007ae4:	00813023          	sd	s0,0(sp)
    80007ae8:	00113423          	sd	ra,8(sp)
    80007aec:	01010413          	addi	s0,sp,16
    80007af0:	ffffe097          	auipc	ra,0xffffe
    80007af4:	5c4080e7          	jalr	1476(ra) # 800060b4 <mycpu>
    80007af8:	100027f3          	csrr	a5,sstatus
    80007afc:	0027f793          	andi	a5,a5,2
    80007b00:	04078463          	beqz	a5,80007b48 <pop_on+0x68>
    80007b04:	07852783          	lw	a5,120(a0)
    80007b08:	02f05863          	blez	a5,80007b38 <pop_on+0x58>
    80007b0c:	fff7879b          	addiw	a5,a5,-1
    80007b10:	06f52c23          	sw	a5,120(a0)
    80007b14:	07853783          	ld	a5,120(a0)
    80007b18:	00079863          	bnez	a5,80007b28 <pop_on+0x48>
    80007b1c:	100027f3          	csrr	a5,sstatus
    80007b20:	ffd7f793          	andi	a5,a5,-3
    80007b24:	10079073          	csrw	sstatus,a5
    80007b28:	00813083          	ld	ra,8(sp)
    80007b2c:	00013403          	ld	s0,0(sp)
    80007b30:	01010113          	addi	sp,sp,16
    80007b34:	00008067          	ret
    80007b38:	00002517          	auipc	a0,0x2
    80007b3c:	a7850513          	addi	a0,a0,-1416 # 800095b0 <digits+0x70>
    80007b40:	fffff097          	auipc	ra,0xfffff
    80007b44:	f2c080e7          	jalr	-212(ra) # 80006a6c <panic>
    80007b48:	00002517          	auipc	a0,0x2
    80007b4c:	a4850513          	addi	a0,a0,-1464 # 80009590 <digits+0x50>
    80007b50:	fffff097          	auipc	ra,0xfffff
    80007b54:	f1c080e7          	jalr	-228(ra) # 80006a6c <panic>

0000000080007b58 <__memset>:
    80007b58:	ff010113          	addi	sp,sp,-16
    80007b5c:	00813423          	sd	s0,8(sp)
    80007b60:	01010413          	addi	s0,sp,16
    80007b64:	1a060e63          	beqz	a2,80007d20 <__memset+0x1c8>
    80007b68:	40a007b3          	neg	a5,a0
    80007b6c:	0077f793          	andi	a5,a5,7
    80007b70:	00778693          	addi	a3,a5,7
    80007b74:	00b00813          	li	a6,11
    80007b78:	0ff5f593          	andi	a1,a1,255
    80007b7c:	fff6071b          	addiw	a4,a2,-1
    80007b80:	1b06e663          	bltu	a3,a6,80007d2c <__memset+0x1d4>
    80007b84:	1cd76463          	bltu	a4,a3,80007d4c <__memset+0x1f4>
    80007b88:	1a078e63          	beqz	a5,80007d44 <__memset+0x1ec>
    80007b8c:	00b50023          	sb	a1,0(a0)
    80007b90:	00100713          	li	a4,1
    80007b94:	1ae78463          	beq	a5,a4,80007d3c <__memset+0x1e4>
    80007b98:	00b500a3          	sb	a1,1(a0)
    80007b9c:	00200713          	li	a4,2
    80007ba0:	1ae78a63          	beq	a5,a4,80007d54 <__memset+0x1fc>
    80007ba4:	00b50123          	sb	a1,2(a0)
    80007ba8:	00300713          	li	a4,3
    80007bac:	18e78463          	beq	a5,a4,80007d34 <__memset+0x1dc>
    80007bb0:	00b501a3          	sb	a1,3(a0)
    80007bb4:	00400713          	li	a4,4
    80007bb8:	1ae78263          	beq	a5,a4,80007d5c <__memset+0x204>
    80007bbc:	00b50223          	sb	a1,4(a0)
    80007bc0:	00500713          	li	a4,5
    80007bc4:	1ae78063          	beq	a5,a4,80007d64 <__memset+0x20c>
    80007bc8:	00b502a3          	sb	a1,5(a0)
    80007bcc:	00700713          	li	a4,7
    80007bd0:	18e79e63          	bne	a5,a4,80007d6c <__memset+0x214>
    80007bd4:	00b50323          	sb	a1,6(a0)
    80007bd8:	00700e93          	li	t4,7
    80007bdc:	00859713          	slli	a4,a1,0x8
    80007be0:	00e5e733          	or	a4,a1,a4
    80007be4:	01059e13          	slli	t3,a1,0x10
    80007be8:	01c76e33          	or	t3,a4,t3
    80007bec:	01859313          	slli	t1,a1,0x18
    80007bf0:	006e6333          	or	t1,t3,t1
    80007bf4:	02059893          	slli	a7,a1,0x20
    80007bf8:	40f60e3b          	subw	t3,a2,a5
    80007bfc:	011368b3          	or	a7,t1,a7
    80007c00:	02859813          	slli	a6,a1,0x28
    80007c04:	0108e833          	or	a6,a7,a6
    80007c08:	03059693          	slli	a3,a1,0x30
    80007c0c:	003e589b          	srliw	a7,t3,0x3
    80007c10:	00d866b3          	or	a3,a6,a3
    80007c14:	03859713          	slli	a4,a1,0x38
    80007c18:	00389813          	slli	a6,a7,0x3
    80007c1c:	00f507b3          	add	a5,a0,a5
    80007c20:	00e6e733          	or	a4,a3,a4
    80007c24:	000e089b          	sext.w	a7,t3
    80007c28:	00f806b3          	add	a3,a6,a5
    80007c2c:	00e7b023          	sd	a4,0(a5)
    80007c30:	00878793          	addi	a5,a5,8
    80007c34:	fed79ce3          	bne	a5,a3,80007c2c <__memset+0xd4>
    80007c38:	ff8e7793          	andi	a5,t3,-8
    80007c3c:	0007871b          	sext.w	a4,a5
    80007c40:	01d787bb          	addw	a5,a5,t4
    80007c44:	0ce88e63          	beq	a7,a4,80007d20 <__memset+0x1c8>
    80007c48:	00f50733          	add	a4,a0,a5
    80007c4c:	00b70023          	sb	a1,0(a4)
    80007c50:	0017871b          	addiw	a4,a5,1
    80007c54:	0cc77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c58:	00e50733          	add	a4,a0,a4
    80007c5c:	00b70023          	sb	a1,0(a4)
    80007c60:	0027871b          	addiw	a4,a5,2
    80007c64:	0ac77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c68:	00e50733          	add	a4,a0,a4
    80007c6c:	00b70023          	sb	a1,0(a4)
    80007c70:	0037871b          	addiw	a4,a5,3
    80007c74:	0ac77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c78:	00e50733          	add	a4,a0,a4
    80007c7c:	00b70023          	sb	a1,0(a4)
    80007c80:	0047871b          	addiw	a4,a5,4
    80007c84:	08c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c88:	00e50733          	add	a4,a0,a4
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	0057871b          	addiw	a4,a5,5
    80007c94:	08c77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c98:	00e50733          	add	a4,a0,a4
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	0067871b          	addiw	a4,a5,6
    80007ca4:	06c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00b70023          	sb	a1,0(a4)
    80007cb0:	0077871b          	addiw	a4,a5,7
    80007cb4:	06c77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007cb8:	00e50733          	add	a4,a0,a4
    80007cbc:	00b70023          	sb	a1,0(a4)
    80007cc0:	0087871b          	addiw	a4,a5,8
    80007cc4:	04c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007cc8:	00e50733          	add	a4,a0,a4
    80007ccc:	00b70023          	sb	a1,0(a4)
    80007cd0:	0097871b          	addiw	a4,a5,9
    80007cd4:	04c77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007cd8:	00e50733          	add	a4,a0,a4
    80007cdc:	00b70023          	sb	a1,0(a4)
    80007ce0:	00a7871b          	addiw	a4,a5,10
    80007ce4:	02c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007ce8:	00e50733          	add	a4,a0,a4
    80007cec:	00b70023          	sb	a1,0(a4)
    80007cf0:	00b7871b          	addiw	a4,a5,11
    80007cf4:	02c77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007cf8:	00e50733          	add	a4,a0,a4
    80007cfc:	00b70023          	sb	a1,0(a4)
    80007d00:	00c7871b          	addiw	a4,a5,12
    80007d04:	00c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007d08:	00e50733          	add	a4,a0,a4
    80007d0c:	00b70023          	sb	a1,0(a4)
    80007d10:	00d7879b          	addiw	a5,a5,13
    80007d14:	00c7f663          	bgeu	a5,a2,80007d20 <__memset+0x1c8>
    80007d18:	00f507b3          	add	a5,a0,a5
    80007d1c:	00b78023          	sb	a1,0(a5)
    80007d20:	00813403          	ld	s0,8(sp)
    80007d24:	01010113          	addi	sp,sp,16
    80007d28:	00008067          	ret
    80007d2c:	00b00693          	li	a3,11
    80007d30:	e55ff06f          	j	80007b84 <__memset+0x2c>
    80007d34:	00300e93          	li	t4,3
    80007d38:	ea5ff06f          	j	80007bdc <__memset+0x84>
    80007d3c:	00100e93          	li	t4,1
    80007d40:	e9dff06f          	j	80007bdc <__memset+0x84>
    80007d44:	00000e93          	li	t4,0
    80007d48:	e95ff06f          	j	80007bdc <__memset+0x84>
    80007d4c:	00000793          	li	a5,0
    80007d50:	ef9ff06f          	j	80007c48 <__memset+0xf0>
    80007d54:	00200e93          	li	t4,2
    80007d58:	e85ff06f          	j	80007bdc <__memset+0x84>
    80007d5c:	00400e93          	li	t4,4
    80007d60:	e7dff06f          	j	80007bdc <__memset+0x84>
    80007d64:	00500e93          	li	t4,5
    80007d68:	e75ff06f          	j	80007bdc <__memset+0x84>
    80007d6c:	00600e93          	li	t4,6
    80007d70:	e6dff06f          	j	80007bdc <__memset+0x84>

0000000080007d74 <__memmove>:
    80007d74:	ff010113          	addi	sp,sp,-16
    80007d78:	00813423          	sd	s0,8(sp)
    80007d7c:	01010413          	addi	s0,sp,16
    80007d80:	0e060863          	beqz	a2,80007e70 <__memmove+0xfc>
    80007d84:	fff6069b          	addiw	a3,a2,-1
    80007d88:	0006881b          	sext.w	a6,a3
    80007d8c:	0ea5e863          	bltu	a1,a0,80007e7c <__memmove+0x108>
    80007d90:	00758713          	addi	a4,a1,7
    80007d94:	00a5e7b3          	or	a5,a1,a0
    80007d98:	40a70733          	sub	a4,a4,a0
    80007d9c:	0077f793          	andi	a5,a5,7
    80007da0:	00f73713          	sltiu	a4,a4,15
    80007da4:	00174713          	xori	a4,a4,1
    80007da8:	0017b793          	seqz	a5,a5
    80007dac:	00e7f7b3          	and	a5,a5,a4
    80007db0:	10078863          	beqz	a5,80007ec0 <__memmove+0x14c>
    80007db4:	00900793          	li	a5,9
    80007db8:	1107f463          	bgeu	a5,a6,80007ec0 <__memmove+0x14c>
    80007dbc:	0036581b          	srliw	a6,a2,0x3
    80007dc0:	fff8081b          	addiw	a6,a6,-1
    80007dc4:	02081813          	slli	a6,a6,0x20
    80007dc8:	01d85893          	srli	a7,a6,0x1d
    80007dcc:	00858813          	addi	a6,a1,8
    80007dd0:	00058793          	mv	a5,a1
    80007dd4:	00050713          	mv	a4,a0
    80007dd8:	01088833          	add	a6,a7,a6
    80007ddc:	0007b883          	ld	a7,0(a5)
    80007de0:	00878793          	addi	a5,a5,8
    80007de4:	00870713          	addi	a4,a4,8
    80007de8:	ff173c23          	sd	a7,-8(a4)
    80007dec:	ff0798e3          	bne	a5,a6,80007ddc <__memmove+0x68>
    80007df0:	ff867713          	andi	a4,a2,-8
    80007df4:	02071793          	slli	a5,a4,0x20
    80007df8:	0207d793          	srli	a5,a5,0x20
    80007dfc:	00f585b3          	add	a1,a1,a5
    80007e00:	40e686bb          	subw	a3,a3,a4
    80007e04:	00f507b3          	add	a5,a0,a5
    80007e08:	06e60463          	beq	a2,a4,80007e70 <__memmove+0xfc>
    80007e0c:	0005c703          	lbu	a4,0(a1)
    80007e10:	00e78023          	sb	a4,0(a5)
    80007e14:	04068e63          	beqz	a3,80007e70 <__memmove+0xfc>
    80007e18:	0015c603          	lbu	a2,1(a1)
    80007e1c:	00100713          	li	a4,1
    80007e20:	00c780a3          	sb	a2,1(a5)
    80007e24:	04e68663          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e28:	0025c603          	lbu	a2,2(a1)
    80007e2c:	00200713          	li	a4,2
    80007e30:	00c78123          	sb	a2,2(a5)
    80007e34:	02e68e63          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e38:	0035c603          	lbu	a2,3(a1)
    80007e3c:	00300713          	li	a4,3
    80007e40:	00c781a3          	sb	a2,3(a5)
    80007e44:	02e68663          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e48:	0045c603          	lbu	a2,4(a1)
    80007e4c:	00400713          	li	a4,4
    80007e50:	00c78223          	sb	a2,4(a5)
    80007e54:	00e68e63          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e58:	0055c603          	lbu	a2,5(a1)
    80007e5c:	00500713          	li	a4,5
    80007e60:	00c782a3          	sb	a2,5(a5)
    80007e64:	00e68663          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e68:	0065c703          	lbu	a4,6(a1)
    80007e6c:	00e78323          	sb	a4,6(a5)
    80007e70:	00813403          	ld	s0,8(sp)
    80007e74:	01010113          	addi	sp,sp,16
    80007e78:	00008067          	ret
    80007e7c:	02061713          	slli	a4,a2,0x20
    80007e80:	02075713          	srli	a4,a4,0x20
    80007e84:	00e587b3          	add	a5,a1,a4
    80007e88:	f0f574e3          	bgeu	a0,a5,80007d90 <__memmove+0x1c>
    80007e8c:	02069613          	slli	a2,a3,0x20
    80007e90:	02065613          	srli	a2,a2,0x20
    80007e94:	fff64613          	not	a2,a2
    80007e98:	00e50733          	add	a4,a0,a4
    80007e9c:	00c78633          	add	a2,a5,a2
    80007ea0:	fff7c683          	lbu	a3,-1(a5)
    80007ea4:	fff78793          	addi	a5,a5,-1
    80007ea8:	fff70713          	addi	a4,a4,-1
    80007eac:	00d70023          	sb	a3,0(a4)
    80007eb0:	fec798e3          	bne	a5,a2,80007ea0 <__memmove+0x12c>
    80007eb4:	00813403          	ld	s0,8(sp)
    80007eb8:	01010113          	addi	sp,sp,16
    80007ebc:	00008067          	ret
    80007ec0:	02069713          	slli	a4,a3,0x20
    80007ec4:	02075713          	srli	a4,a4,0x20
    80007ec8:	00170713          	addi	a4,a4,1
    80007ecc:	00e50733          	add	a4,a0,a4
    80007ed0:	00050793          	mv	a5,a0
    80007ed4:	0005c683          	lbu	a3,0(a1)
    80007ed8:	00178793          	addi	a5,a5,1
    80007edc:	00158593          	addi	a1,a1,1
    80007ee0:	fed78fa3          	sb	a3,-1(a5)
    80007ee4:	fee798e3          	bne	a5,a4,80007ed4 <__memmove+0x160>
    80007ee8:	f89ff06f          	j	80007e70 <__memmove+0xfc>

0000000080007eec <__putc>:
    80007eec:	fe010113          	addi	sp,sp,-32
    80007ef0:	00813823          	sd	s0,16(sp)
    80007ef4:	00113c23          	sd	ra,24(sp)
    80007ef8:	02010413          	addi	s0,sp,32
    80007efc:	00050793          	mv	a5,a0
    80007f00:	fef40593          	addi	a1,s0,-17
    80007f04:	00100613          	li	a2,1
    80007f08:	00000513          	li	a0,0
    80007f0c:	fef407a3          	sb	a5,-17(s0)
    80007f10:	fffff097          	auipc	ra,0xfffff
    80007f14:	b3c080e7          	jalr	-1220(ra) # 80006a4c <console_write>
    80007f18:	01813083          	ld	ra,24(sp)
    80007f1c:	01013403          	ld	s0,16(sp)
    80007f20:	02010113          	addi	sp,sp,32
    80007f24:	00008067          	ret

0000000080007f28 <__getc>:
    80007f28:	fe010113          	addi	sp,sp,-32
    80007f2c:	00813823          	sd	s0,16(sp)
    80007f30:	00113c23          	sd	ra,24(sp)
    80007f34:	02010413          	addi	s0,sp,32
    80007f38:	fe840593          	addi	a1,s0,-24
    80007f3c:	00100613          	li	a2,1
    80007f40:	00000513          	li	a0,0
    80007f44:	fffff097          	auipc	ra,0xfffff
    80007f48:	ae8080e7          	jalr	-1304(ra) # 80006a2c <console_read>
    80007f4c:	fe844503          	lbu	a0,-24(s0)
    80007f50:	01813083          	ld	ra,24(sp)
    80007f54:	01013403          	ld	s0,16(sp)
    80007f58:	02010113          	addi	sp,sp,32
    80007f5c:	00008067          	ret

0000000080007f60 <console_handler>:
    80007f60:	fe010113          	addi	sp,sp,-32
    80007f64:	00813823          	sd	s0,16(sp)
    80007f68:	00113c23          	sd	ra,24(sp)
    80007f6c:	00913423          	sd	s1,8(sp)
    80007f70:	02010413          	addi	s0,sp,32
    80007f74:	14202773          	csrr	a4,scause
    80007f78:	100027f3          	csrr	a5,sstatus
    80007f7c:	0027f793          	andi	a5,a5,2
    80007f80:	06079e63          	bnez	a5,80007ffc <console_handler+0x9c>
    80007f84:	00074c63          	bltz	a4,80007f9c <console_handler+0x3c>
    80007f88:	01813083          	ld	ra,24(sp)
    80007f8c:	01013403          	ld	s0,16(sp)
    80007f90:	00813483          	ld	s1,8(sp)
    80007f94:	02010113          	addi	sp,sp,32
    80007f98:	00008067          	ret
    80007f9c:	0ff77713          	andi	a4,a4,255
    80007fa0:	00900793          	li	a5,9
    80007fa4:	fef712e3          	bne	a4,a5,80007f88 <console_handler+0x28>
    80007fa8:	ffffe097          	auipc	ra,0xffffe
    80007fac:	6dc080e7          	jalr	1756(ra) # 80006684 <plic_claim>
    80007fb0:	00a00793          	li	a5,10
    80007fb4:	00050493          	mv	s1,a0
    80007fb8:	02f50c63          	beq	a0,a5,80007ff0 <console_handler+0x90>
    80007fbc:	fc0506e3          	beqz	a0,80007f88 <console_handler+0x28>
    80007fc0:	00050593          	mv	a1,a0
    80007fc4:	00001517          	auipc	a0,0x1
    80007fc8:	4f450513          	addi	a0,a0,1268 # 800094b8 <_ZL6digits+0xf8>
    80007fcc:	fffff097          	auipc	ra,0xfffff
    80007fd0:	afc080e7          	jalr	-1284(ra) # 80006ac8 <__printf>
    80007fd4:	01013403          	ld	s0,16(sp)
    80007fd8:	01813083          	ld	ra,24(sp)
    80007fdc:	00048513          	mv	a0,s1
    80007fe0:	00813483          	ld	s1,8(sp)
    80007fe4:	02010113          	addi	sp,sp,32
    80007fe8:	ffffe317          	auipc	t1,0xffffe
    80007fec:	6d430067          	jr	1748(t1) # 800066bc <plic_complete>
    80007ff0:	fffff097          	auipc	ra,0xfffff
    80007ff4:	3e0080e7          	jalr	992(ra) # 800073d0 <uartintr>
    80007ff8:	fddff06f          	j	80007fd4 <console_handler+0x74>
    80007ffc:	00001517          	auipc	a0,0x1
    80008000:	5bc50513          	addi	a0,a0,1468 # 800095b8 <digits+0x78>
    80008004:	fffff097          	auipc	ra,0xfffff
    80008008:	a68080e7          	jalr	-1432(ra) # 80006a6c <panic>
	...
