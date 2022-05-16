
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	a8013103          	ld	sp,-1408(sp) # 80008a80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	109040ef          	jal	ra,80004924 <start>

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
    80001080:	2fd010ef          	jal	ra,80002b7c <_ZN5Riscv20handleSupervisorTrapEv>

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
void thread_dispatch(){
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
//

#include "../h/Tests.hpp"

void idle(void* args)
{
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00113423          	sd	ra,8(sp)
    8000145c:	00813023          	sd	s0,0(sp)
    80001460:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    80001464:	00006517          	auipc	a0,0x6
    80001468:	bbc50513          	addi	a0,a0,-1092 # 80007020 <CONSOLE_STATUS+0x10>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	5d8080e7          	jalr	1496(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
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
    80001494:	00006517          	auipc	a0,0x6
    80001498:	b9450513          	addi	a0,a0,-1132 # 80007028 <CONSOLE_STATUS+0x18>
    8000149c:	00001097          	auipc	ra,0x1
    800014a0:	5a8080e7          	jalr	1448(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800014a4:	00000493          	li	s1,0
    800014a8:	000027b7          	lui	a5,0x2
    800014ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014b0:	0297ec63          	bltu	a5,s1,800014e8 <_Z15thread1FunctionPv+0x68>
    {
        //if(i % 150 == 0 && i > 0)
        //    thread_dispatch();
        Riscv::printString("i : ");
    800014b4:	00006517          	auipc	a0,0x6
    800014b8:	b8c50513          	addi	a0,a0,-1140 # 80007040 <CONSOLE_STATUS+0x30>
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	588080e7          	jalr	1416(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	5ec080e7          	jalr	1516(ra) # 80002ab4 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00006517          	auipc	a0,0x6
    800014d4:	cf050513          	addi	a0,a0,-784 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	56c080e7          	jalr	1388(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800014e0:	00148493          	addi	s1,s1,1
    800014e4:	fc5ff06f          	j	800014a8 <_Z15thread1FunctionPv+0x28>
    }
}
    800014e8:	01813083          	ld	ra,24(sp)
    800014ec:	01013403          	ld	s0,16(sp)
    800014f0:	00813483          	ld	s1,8(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret

00000000800014fc <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00113c23          	sd	ra,24(sp)
    80001504:	00813823          	sd	s0,16(sp)
    80001508:	00913423          	sd	s1,8(sp)
    8000150c:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001510:	00006517          	auipc	a0,0x6
    80001514:	b3850513          	addi	a0,a0,-1224 # 80007048 <CONSOLE_STATUS+0x38>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	52c080e7          	jalr	1324(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    80001520:	00000493          	li	s1,0
    80001524:	000027b7          	lui	a5,0x2
    80001528:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000152c:	0297ec63          	bltu	a5,s1,80001564 <_Z15thread2FunctionPv+0x68>
    {
        //if(j % 50 == 0 && j > 0)
        //    thread_dispatch();
        Riscv::printString("j : ");
    80001530:	00006517          	auipc	a0,0x6
    80001534:	b3050513          	addi	a0,a0,-1232 # 80007060 <CONSOLE_STATUS+0x50>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	50c080e7          	jalr	1292(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001540:	00048513          	mv	a0,s1
    80001544:	00001097          	auipc	ra,0x1
    80001548:	570080e7          	jalr	1392(ra) # 80002ab4 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000154c:	00006517          	auipc	a0,0x6
    80001550:	c7450513          	addi	a0,a0,-908 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	4f0080e7          	jalr	1264(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    8000155c:	00148493          	addi	s1,s1,1
    80001560:	fc5ff06f          	j	80001524 <_Z15thread2FunctionPv+0x28>
    }
}
    80001564:	01813083          	ld	ra,24(sp)
    80001568:	01013403          	ld	s0,16(sp)
    8000156c:	00813483          	ld	s1,8(sp)
    80001570:	02010113          	addi	sp,sp,32
    80001574:	00008067          	ret

0000000080001578 <_Z20thread2FunctionTest2Pv>:

void thread2FunctionTest2(void* p)
{
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    8000158c:	00006517          	auipc	a0,0x6
    80001590:	abc50513          	addi	a0,a0,-1348 # 80007048 <CONSOLE_STATUS+0x38>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	4b0080e7          	jalr	1200(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    8000159c:	00000493          	li	s1,0
    800015a0:	000027b7          	lui	a5,0x2
    800015a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015a8:	0297ec63          	bltu	a5,s1,800015e0 <_Z20thread2FunctionTest2Pv+0x68>
        //    time_sleep(200);
        //if(j == 200)
        //    thread_exit();
        //if(j!= 100 && j!= 200 && j % 50 == 0 && j > 0)
        //    thread_dispatch();
        Riscv::printString("j : ");
    800015ac:	00006517          	auipc	a0,0x6
    800015b0:	ab450513          	addi	a0,a0,-1356 # 80007060 <CONSOLE_STATUS+0x50>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	490080e7          	jalr	1168(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	4f4080e7          	jalr	1268(ra) # 80002ab4 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015c8:	00006517          	auipc	a0,0x6
    800015cc:	bf850513          	addi	a0,a0,-1032 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	474080e7          	jalr	1140(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    800015d8:	00148493          	addi	s1,s1,1
    800015dc:	fc5ff06f          	j	800015a0 <_Z20thread2FunctionTest2Pv+0x28>
    }
}
    800015e0:	01813083          	ld	ra,24(sp)
    800015e4:	01013403          	ld	s0,16(sp)
    800015e8:	00813483          	ld	s1,8(sp)
    800015ec:	02010113          	addi	sp,sp,32
    800015f0:	00008067          	ret

00000000800015f4 <_Z11threadTest1v>:


void threadTest1()
{
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	01213023          	sd	s2,0(sp)
    80001608:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    8000160c:	01800513          	li	a0,24
    80001610:	00001097          	auipc	ra,0x1
    80001614:	184080e7          	jalr	388(ra) # 80002794 <_Znwm>
    80001618:	00050493          	mv	s1,a0
    8000161c:	00000613          	li	a2,0
    80001620:	00000597          	auipc	a1,0x0
    80001624:	e6058593          	addi	a1,a1,-416 # 80001480 <_Z15thread1FunctionPv>
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	238080e7          	jalr	568(ra) # 80002860 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001630:	00048513          	mv	a0,s1
    80001634:	00001097          	auipc	ra,0x1
    80001638:	1b0080e7          	jalr	432(ra) # 800027e4 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    8000163c:	01800513          	li	a0,24
    80001640:	00001097          	auipc	ra,0x1
    80001644:	154080e7          	jalr	340(ra) # 80002794 <_Znwm>
    80001648:	00050913          	mv	s2,a0
    8000164c:	00000613          	li	a2,0
    80001650:	00000597          	auipc	a1,0x0
    80001654:	eac58593          	addi	a1,a1,-340 # 800014fc <_Z15thread2FunctionPv>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	208080e7          	jalr	520(ra) # 80002860 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001660:	00090513          	mv	a0,s2
    80001664:	00001097          	auipc	ra,0x1
    80001668:	180080e7          	jalr	384(ra) # 800027e4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000166c:	00001097          	auipc	ra,0x1
    80001670:	350080e7          	jalr	848(ra) # 800029bc <_ZN5Riscv16enableInterruptsEv>
    80001674:	01c0006f          	j	80001690 <_Z11threadTest1v+0x9c>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    {
        Riscv::printString("Main thread\n");
    80001678:	00006517          	auipc	a0,0x6
    8000167c:	9f050513          	addi	a0,a0,-1552 # 80007068 <CONSOLE_STATUS+0x58>
    80001680:	00001097          	auipc	ra,0x1
    80001684:	3c4080e7          	jalr	964(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	c9c080e7          	jalr	-868(ra) # 80001324 <thread_dispatch>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    80001690:	0004b783          	ld	a5,0(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80001694:	0307a703          	lw	a4,48(a5)
    80001698:	00300793          	li	a5,3
    8000169c:	fcf71ee3          	bne	a4,a5,80001678 <_Z11threadTest1v+0x84>
    800016a0:	00093783          	ld	a5,0(s2)
    800016a4:	0307a703          	lw	a4,48(a5)
    800016a8:	00300793          	li	a5,3
    800016ac:	fcf716e3          	bne	a4,a5,80001678 <_Z11threadTest1v+0x84>
    }

    Riscv::printString("End...\n");
    800016b0:	00006517          	auipc	a0,0x6
    800016b4:	9c850513          	addi	a0,a0,-1592 # 80007078 <CONSOLE_STATUS+0x68>
    800016b8:	00001097          	auipc	ra,0x1
    800016bc:	38c080e7          	jalr	908(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	31c080e7          	jalr	796(ra) # 800029dc <_ZN5Riscv17disableInterruptsEv>
}
    800016c8:	01813083          	ld	ra,24(sp)
    800016cc:	01013403          	ld	s0,16(sp)
    800016d0:	00813483          	ld	s1,8(sp)
    800016d4:	00013903          	ld	s2,0(sp)
    800016d8:	02010113          	addi	sp,sp,32
    800016dc:	00008067          	ret
    800016e0:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800016e4:	00048513          	mv	a0,s1
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	0d4080e7          	jalr	212(ra) # 800027bc <_ZdlPv>
    800016f0:	00090513          	mv	a0,s2
    800016f4:	00008097          	auipc	ra,0x8
    800016f8:	544080e7          	jalr	1348(ra) # 80009c38 <_Unwind_Resume>
    800016fc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001700:	00090513          	mv	a0,s2
    80001704:	00001097          	auipc	ra,0x1
    80001708:	0b8080e7          	jalr	184(ra) # 800027bc <_ZdlPv>
    8000170c:	00048513          	mv	a0,s1
    80001710:	00008097          	auipc	ra,0x8
    80001714:	528080e7          	jalr	1320(ra) # 80009c38 <_Unwind_Resume>

0000000080001718 <_Z11threadTest2v>:

void threadTest2()
{
    80001718:	fe010113          	addi	sp,sp,-32
    8000171c:	00113c23          	sd	ra,24(sp)
    80001720:	00813823          	sd	s0,16(sp)
    80001724:	00913423          	sd	s1,8(sp)
    80001728:	01213023          	sd	s2,0(sp)
    8000172c:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001730:	01800513          	li	a0,24
    80001734:	00001097          	auipc	ra,0x1
    80001738:	060080e7          	jalr	96(ra) # 80002794 <_Znwm>
    8000173c:	00050493          	mv	s1,a0
    80001740:	00000613          	li	a2,0
    80001744:	00000597          	auipc	a1,0x0
    80001748:	d1058593          	addi	a1,a1,-752 # 80001454 <_Z4idlePv>
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	114080e7          	jalr	276(ra) # 80002860 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001754:	00048513          	mv	a0,s1
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	08c080e7          	jalr	140(ra) # 800027e4 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001760:	01800513          	li	a0,24
    80001764:	00001097          	auipc	ra,0x1
    80001768:	030080e7          	jalr	48(ra) # 80002794 <_Znwm>
    8000176c:	00050913          	mv	s2,a0
    80001770:	00000613          	li	a2,0
    80001774:	00000597          	auipc	a1,0x0
    80001778:	d0c58593          	addi	a1,a1,-756 # 80001480 <_Z15thread1FunctionPv>
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	0e4080e7          	jalr	228(ra) # 80002860 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001784:	00090513          	mv	a0,s2
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	05c080e7          	jalr	92(ra) # 800027e4 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001790:	01800513          	li	a0,24
    80001794:	00001097          	auipc	ra,0x1
    80001798:	000080e7          	jalr	ra # 80002794 <_Znwm>
    8000179c:	00050913          	mv	s2,a0
    800017a0:	00000613          	li	a2,0
    800017a4:	00000597          	auipc	a1,0x0
    800017a8:	dd458593          	addi	a1,a1,-556 # 80001578 <_Z20thread2FunctionTest2Pv>
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	0b4080e7          	jalr	180(ra) # 80002860 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800017b4:	00090513          	mv	a0,s2
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	02c080e7          	jalr	44(ra) # 800027e4 <_ZN6Thread5startEv>

    Riscv::enableInterrupts();
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	1fc080e7          	jalr	508(ra) # 800029bc <_ZN5Riscv16enableInterruptsEv>

    while(idleThread->myHandle->getState() != PCB::FINISHED);
    800017c8:	0004b783          	ld	a5,0(s1)
    800017cc:	0307a703          	lw	a4,48(a5)
    800017d0:	00300793          	li	a5,3
    800017d4:	fef71ae3          	bne	a4,a5,800017c8 <_Z11threadTest2v+0xb0>

    Riscv::printString("End...\n");
    800017d8:	00006517          	auipc	a0,0x6
    800017dc:	8a050513          	addi	a0,a0,-1888 # 80007078 <CONSOLE_STATUS+0x68>
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	264080e7          	jalr	612(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>

    Riscv::disableInterrupts();
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	1f4080e7          	jalr	500(ra) # 800029dc <_ZN5Riscv17disableInterruptsEv>
}
    800017f0:	01813083          	ld	ra,24(sp)
    800017f4:	01013403          	ld	s0,16(sp)
    800017f8:	00813483          	ld	s1,8(sp)
    800017fc:	00013903          	ld	s2,0(sp)
    80001800:	02010113          	addi	sp,sp,32
    80001804:	00008067          	ret
    80001808:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    8000180c:	00048513          	mv	a0,s1
    80001810:	00001097          	auipc	ra,0x1
    80001814:	fac080e7          	jalr	-84(ra) # 800027bc <_ZdlPv>
    80001818:	00090513          	mv	a0,s2
    8000181c:	00008097          	auipc	ra,0x8
    80001820:	41c080e7          	jalr	1052(ra) # 80009c38 <_Unwind_Resume>
    80001824:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001828:	00090513          	mv	a0,s2
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	f90080e7          	jalr	-112(ra) # 800027bc <_ZdlPv>
    80001834:	00048513          	mv	a0,s1
    80001838:	00008097          	auipc	ra,0x8
    8000183c:	400080e7          	jalr	1024(ra) # 80009c38 <_Unwind_Resume>
    80001840:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001844:	00090513          	mv	a0,s2
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	f74080e7          	jalr	-140(ra) # 800027bc <_ZdlPv>
    80001850:	00048513          	mv	a0,s1
    80001854:	00008097          	auipc	ra,0x8
    80001858:	3e4080e7          	jalr	996(ra) # 80009c38 <_Unwind_Resume>

000000008000185c <_Z11threadTestsv>:

void threadTests()
{
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
    threadTest1();
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	d88080e7          	jalr	-632(ra) # 800015f4 <_Z11threadTest1v>
    //threadTest2();
}
    80001874:	00813083          	ld	ra,8(sp)
    80001878:	00013403          	ld	s0,0(sp)
    8000187c:	01010113          	addi	sp,sp,16
    80001880:	00008067          	ret

0000000080001884 <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    80001884:	cc010113          	addi	sp,sp,-832
    80001888:	32113c23          	sd	ra,824(sp)
    8000188c:	32813823          	sd	s0,816(sp)
    80001890:	32913423          	sd	s1,808(sp)
    80001894:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001898:	00005517          	auipc	a0,0x5
    8000189c:	7e850513          	addi	a0,a0,2024 # 80007080 <CONSOLE_STATUS+0x70>
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	1a4080e7          	jalr	420(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    800018a8:	00000493          	li	s1,0
    800018ac:	0080006f          	j	800018b4 <_Z10mallocFreev+0x30>
    800018b0:	0014849b          	addiw	s1,s1,1
    800018b4:	06300793          	li	a5,99
    800018b8:	0497c463          	blt	a5,s1,80001900 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    800018bc:	06400513          	li	a0,100
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	988080e7          	jalr	-1656(ra) # 80001248 <mem_alloc>
    800018c8:	00349793          	slli	a5,s1,0x3
    800018cc:	fe040713          	addi	a4,s0,-32
    800018d0:	00f707b3          	add	a5,a4,a5
    800018d4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    800018d8:	fc051ce3          	bnez	a0,800018b0 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    800018dc:	00005517          	auipc	a0,0x5
    800018e0:	7b450513          	addi	a0,a0,1972 # 80007090 <CONSOLE_STATUS+0x80>
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	160080e7          	jalr	352(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    800018ec:	33813083          	ld	ra,824(sp)
    800018f0:	33013403          	ld	s0,816(sp)
    800018f4:	32813483          	ld	s1,808(sp)
    800018f8:	34010113          	addi	sp,sp,832
    800018fc:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001900:	00000493          	li	s1,0
    80001904:	06300793          	li	a5,99
    80001908:	0297ce63          	blt	a5,s1,80001944 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    8000190c:	00349793          	slli	a5,s1,0x3
    80001910:	fe040713          	addi	a4,s0,-32
    80001914:	00f707b3          	add	a5,a4,a5
    80001918:	ce07b503          	ld	a0,-800(a5)
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	95c080e7          	jalr	-1700(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001924:	00051663          	bnez	a0,80001930 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001928:	0024849b          	addiw	s1,s1,2
    8000192c:	fd9ff06f          	j	80001904 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001930:	00005517          	auipc	a0,0x5
    80001934:	76050513          	addi	a0,a0,1888 # 80007090 <CONSOLE_STATUS+0x80>
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	10c080e7          	jalr	268(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            return;
    80001940:	fadff06f          	j	800018ec <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001944:	00000493          	li	s1,0
    80001948:	0080006f          	j	80001950 <_Z10mallocFreev+0xcc>
    8000194c:	0024849b          	addiw	s1,s1,2
    80001950:	06300793          	li	a5,99
    80001954:	0297cc63          	blt	a5,s1,8000198c <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001958:	01400513          	li	a0,20
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	8ec080e7          	jalr	-1812(ra) # 80001248 <mem_alloc>
    80001964:	00349793          	slli	a5,s1,0x3
    80001968:	fe040713          	addi	a4,s0,-32
    8000196c:	00f707b3          	add	a5,a4,a5
    80001970:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001974:	fc051ce3          	bnez	a0,8000194c <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001978:	00005517          	auipc	a0,0x5
    8000197c:	71850513          	addi	a0,a0,1816 # 80007090 <CONSOLE_STATUS+0x80>
    80001980:	00001097          	auipc	ra,0x1
    80001984:	0c4080e7          	jalr	196(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            return;
    80001988:	f65ff06f          	j	800018ec <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    8000198c:	00000493          	li	s1,0
    80001990:	06300793          	li	a5,99
    80001994:	0297ce63          	blt	a5,s1,800019d0 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001998:	00349793          	slli	a5,s1,0x3
    8000199c:	fe040713          	addi	a4,s0,-32
    800019a0:	00f707b3          	add	a5,a4,a5
    800019a4:	ce07b503          	ld	a0,-800(a5)
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	8d0080e7          	jalr	-1840(ra) # 80001278 <mem_free>
        if(retval != 0)
    800019b0:	00051663          	bnez	a0,800019bc <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    800019b4:	0014849b          	addiw	s1,s1,1
    800019b8:	fd9ff06f          	j	80001990 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    800019bc:	00005517          	auipc	a0,0x5
    800019c0:	6d450513          	addi	a0,a0,1748 # 80007090 <CONSOLE_STATUS+0x80>
    800019c4:	00001097          	auipc	ra,0x1
    800019c8:	080080e7          	jalr	128(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            return;
    800019cc:	f21ff06f          	j	800018ec <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    800019d0:	00005517          	auipc	a0,0x5
    800019d4:	6c850513          	addi	a0,a0,1736 # 80007098 <CONSOLE_STATUS+0x88>
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	06c080e7          	jalr	108(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    800019e0:	f0dff06f          	j	800018ec <_Z10mallocFreev+0x68>

00000000800019e4 <_Z9bigMallocv>:
void bigMalloc()
{
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00113423          	sd	ra,8(sp)
    800019ec:	00813023          	sd	s0,0(sp)
    800019f0:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    800019f4:	00005517          	auipc	a0,0x5
    800019f8:	6ac50513          	addi	a0,a0,1708 # 800070a0 <CONSOLE_STATUS+0x90>
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	048080e7          	jalr	72(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001a04:	00007797          	auipc	a5,0x7
    80001a08:	08c7b783          	ld	a5,140(a5) # 80008a90 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a0c:	0007b503          	ld	a0,0(a5)
    80001a10:	00007797          	auipc	a5,0x7
    80001a14:	0507b783          	ld	a5,80(a5) # 80008a60 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a18:	0007b783          	ld	a5,0(a5)
    80001a1c:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001a20:	06450513          	addi	a0,a0,100
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	824080e7          	jalr	-2012(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001a2c:	02050263          	beqz	a0,80001a50 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001a30:	00005517          	auipc	a0,0x5
    80001a34:	66050513          	addi	a0,a0,1632 # 80007090 <CONSOLE_STATUS+0x80>
    80001a38:	00001097          	auipc	ra,0x1
    80001a3c:	00c080e7          	jalr	12(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
}
    80001a40:	00813083          	ld	ra,8(sp)
    80001a44:	00013403          	ld	s0,0(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret
        Riscv::printString("OK\n");
    80001a50:	00005517          	auipc	a0,0x5
    80001a54:	64850513          	addi	a0,a0,1608 # 80007098 <CONSOLE_STATUS+0x88>
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	fec080e7          	jalr	-20(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    80001a60:	fe1ff06f          	j	80001a40 <_Z9bigMallocv+0x5c>

0000000080001a64 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001a64:	fd010113          	addi	sp,sp,-48
    80001a68:	02113423          	sd	ra,40(sp)
    80001a6c:	02813023          	sd	s0,32(sp)
    80001a70:	00913c23          	sd	s1,24(sp)
    80001a74:	01213823          	sd	s2,16(sp)
    80001a78:	01313423          	sd	s3,8(sp)
    80001a7c:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001a80:	00005517          	auipc	a0,0x5
    80001a84:	63050513          	addi	a0,a0,1584 # 800070b0 <CONSOLE_STATUS+0xa0>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	fbc080e7          	jalr	-68(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001a90:	00000493          	li	s1,0
    uint64 sum = 0;
    80001a94:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001a98:	00000913          	li	s2,0
    80001a9c:	0180006f          	j	80001ab4 <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001aa0:	00a00793          	li	a5,10
    80001aa4:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001aa8:	00a98993          	addi	s3,s3,10
        cnt++;
    80001aac:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001ab0:	00148493          	addi	s1,s1,1
    80001ab4:	000027b7          	lui	a5,0x2
    80001ab8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001abc:	0097ea63          	bltu	a5,s1,80001ad0 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001ac0:	00800513          	li	a0,8
    80001ac4:	fffff097          	auipc	ra,0xfffff
    80001ac8:	784080e7          	jalr	1924(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001acc:	fc051ae3          	bnez	a0,80001aa0 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	fe0080e7          	jalr	-32(ra) # 80002ab4 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001adc:	00005517          	auipc	a0,0x5
    80001ae0:	6e450513          	addi	a0,a0,1764 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	f60080e7          	jalr	-160(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001aec:	00291793          	slli	a5,s2,0x2
    80001af0:	01278933          	add	s2,a5,s2
    80001af4:	00191913          	slli	s2,s2,0x1
    80001af8:	03390863          	beq	s2,s3,80001b28 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001afc:	00005517          	auipc	a0,0x5
    80001b00:	59450513          	addi	a0,a0,1428 # 80007090 <CONSOLE_STATUS+0x80>
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	f40080e7          	jalr	-192(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
}
    80001b0c:	02813083          	ld	ra,40(sp)
    80001b10:	02013403          	ld	s0,32(sp)
    80001b14:	01813483          	ld	s1,24(sp)
    80001b18:	01013903          	ld	s2,16(sp)
    80001b1c:	00813983          	ld	s3,8(sp)
    80001b20:	03010113          	addi	sp,sp,48
    80001b24:	00008067          	ret
        Riscv::printString("OK\n");
    80001b28:	00005517          	auipc	a0,0x5
    80001b2c:	57050513          	addi	a0,a0,1392 # 80007098 <CONSOLE_STATUS+0x88>
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	f14080e7          	jalr	-236(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    80001b38:	fd5ff06f          	j	80001b0c <_Z17lotOfSmallMallocsv+0xa8>

0000000080001b3c <_Z7badFreev>:
void badFree()
{
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00113423          	sd	ra,8(sp)
    80001b44:	00813023          	sd	s0,0(sp)
    80001b48:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001b4c:	00005517          	auipc	a0,0x5
    80001b50:	57c50513          	addi	a0,a0,1404 # 800070c8 <CONSOLE_STATUS+0xb8>
    80001b54:	00001097          	auipc	ra,0x1
    80001b58:	ef0080e7          	jalr	-272(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001b5c:	00800513          	li	a0,8
    80001b60:	fffff097          	auipc	ra,0xfffff
    80001b64:	6e8080e7          	jalr	1768(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001b68:	00250513          	addi	a0,a0,2
    80001b6c:	fffff097          	auipc	ra,0xfffff
    80001b70:	70c080e7          	jalr	1804(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001b74:	02051263          	bnez	a0,80001b98 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001b78:	00005517          	auipc	a0,0x5
    80001b7c:	51850513          	addi	a0,a0,1304 # 80007090 <CONSOLE_STATUS+0x80>
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	ec4080e7          	jalr	-316(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001b88:	00813083          	ld	ra,8(sp)
    80001b8c:	00013403          	ld	s0,0(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret
        Riscv::printString("OK\n");
    80001b98:	00005517          	auipc	a0,0x5
    80001b9c:	50050513          	addi	a0,a0,1280 # 80007098 <CONSOLE_STATUS+0x88>
    80001ba0:	00001097          	auipc	ra,0x1
    80001ba4:	ea4080e7          	jalr	-348(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
}
    80001ba8:	fe1ff06f          	j	80001b88 <_Z7badFreev+0x4c>

0000000080001bac <_Z13stressTestingv>:

void stressTesting()
{
    80001bac:	cb010113          	addi	sp,sp,-848
    80001bb0:	34113423          	sd	ra,840(sp)
    80001bb4:	34813023          	sd	s0,832(sp)
    80001bb8:	32913c23          	sd	s1,824(sp)
    80001bbc:	33213823          	sd	s2,816(sp)
    80001bc0:	33313423          	sd	s3,808(sp)
    80001bc4:	35010413          	addi	s0,sp,848
    Riscv::printString("stressTesting\n");
    80001bc8:	00005517          	auipc	a0,0x5
    80001bcc:	51050513          	addi	a0,a0,1296 # 800070d8 <CONSOLE_STATUS+0xc8>
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	e74080e7          	jalr	-396(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001bd8:	00000493          	li	s1,0
    80001bdc:	0080006f          	j	80001be4 <_Z13stressTestingv+0x38>
    80001be0:	0014849b          	addiw	s1,s1,1
    80001be4:	06300793          	li	a5,99
    80001be8:	0497c863          	blt	a5,s1,80001c38 <_Z13stressTestingv+0x8c>
    {
        addrs[i] = mem_alloc(1);
    80001bec:	00100513          	li	a0,1
    80001bf0:	fffff097          	auipc	ra,0xfffff
    80001bf4:	658080e7          	jalr	1624(ra) # 80001248 <mem_alloc>
    80001bf8:	00349793          	slli	a5,s1,0x3
    80001bfc:	fd040713          	addi	a4,s0,-48
    80001c00:	00f707b3          	add	a5,a4,a5
    80001c04:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c08:	fc051ce3          	bnez	a0,80001be0 <_Z13stressTestingv+0x34>
        {
            Riscv::printString("not OK\n");
    80001c0c:	00005517          	auipc	a0,0x5
    80001c10:	48450513          	addi	a0,a0,1156 # 80007090 <CONSOLE_STATUS+0x80>
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	e30080e7          	jalr	-464(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
        }
        sz-=10;
    }

    Riscv::printString("OK\n");
}
    80001c1c:	34813083          	ld	ra,840(sp)
    80001c20:	34013403          	ld	s0,832(sp)
    80001c24:	33813483          	ld	s1,824(sp)
    80001c28:	33013903          	ld	s2,816(sp)
    80001c2c:	32813983          	ld	s3,808(sp)
    80001c30:	35010113          	addi	sp,sp,848
    80001c34:	00008067          	ret
    int sz = 5;
    80001c38:	00500913          	li	s2,5
    while(sz > 0)
    80001c3c:	19205e63          	blez	s2,80001dd8 <_Z13stressTestingv+0x22c>
        Riscv::printString("sz : ");
    80001c40:	00005517          	auipc	a0,0x5
    80001c44:	4a850513          	addi	a0,a0,1192 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	dfc080e7          	jalr	-516(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(sz);
    80001c50:	00090993          	mv	s3,s2
    80001c54:	00090513          	mv	a0,s2
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	e5c080e7          	jalr	-420(ra) # 80002ab4 <_ZN5Riscv12printIntegerEm>
        for(int i = 0 ; i < num;i+=2)
    80001c60:	00000493          	li	s1,0
    80001c64:	06300793          	li	a5,99
    80001c68:	0a97ca63          	blt	a5,s1,80001d1c <_Z13stressTestingv+0x170>
            Riscv::printString("i : ");
    80001c6c:	00005517          	auipc	a0,0x5
    80001c70:	3d450513          	addi	a0,a0,980 # 80007040 <CONSOLE_STATUS+0x30>
    80001c74:	00001097          	auipc	ra,0x1
    80001c78:	dd0080e7          	jalr	-560(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	e34080e7          	jalr	-460(ra) # 80002ab4 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001c88:	00005517          	auipc	a0,0x5
    80001c8c:	46850513          	addi	a0,a0,1128 # 800070f0 <CONSOLE_STATUS+0xe0>
    80001c90:	00001097          	auipc	ra,0x1
    80001c94:	db4080e7          	jalr	-588(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001c98:	00349793          	slli	a5,s1,0x3
    80001c9c:	fd040713          	addi	a4,s0,-48
    80001ca0:	00f707b3          	add	a5,a4,a5
    80001ca4:	ce07b503          	ld	a0,-800(a5)
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	5d0080e7          	jalr	1488(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001cb0:	04051263          	bnez	a0,80001cf4 <_Z13stressTestingv+0x148>
            Riscv::printString("alloc\n");
    80001cb4:	00005517          	auipc	a0,0x5
    80001cb8:	44450513          	addi	a0,a0,1092 # 800070f8 <CONSOLE_STATUS+0xe8>
    80001cbc:	00001097          	auipc	ra,0x1
    80001cc0:	d88080e7          	jalr	-632(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz/2);
    80001cc4:	01f9551b          	srliw	a0,s2,0x1f
    80001cc8:	0125053b          	addw	a0,a0,s2
    80001ccc:	4015551b          	sraiw	a0,a0,0x1
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	578080e7          	jalr	1400(ra) # 80001248 <mem_alloc>
    80001cd8:	00349793          	slli	a5,s1,0x3
    80001cdc:	fd040713          	addi	a4,s0,-48
    80001ce0:	00f707b3          	add	a5,a4,a5
    80001ce4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001ce8:	02050063          	beqz	a0,80001d08 <_Z13stressTestingv+0x15c>
        for(int i = 0 ; i < num;i+=2)
    80001cec:	0024849b          	addiw	s1,s1,2
    80001cf0:	f75ff06f          	j	80001c64 <_Z13stressTestingv+0xb8>
                Riscv::printString("not OK\n");
    80001cf4:	00005517          	auipc	a0,0x5
    80001cf8:	39c50513          	addi	a0,a0,924 # 80007090 <CONSOLE_STATUS+0x80>
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	d48080e7          	jalr	-696(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
                return;
    80001d04:	f19ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001d08:	00005517          	auipc	a0,0x5
    80001d0c:	3f850513          	addi	a0,a0,1016 # 80007100 <CONSOLE_STATUS+0xf0>
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	d34080e7          	jalr	-716(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
                return;
    80001d18:	f05ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
        for(int i = 1 ; i < num;i+=2)
    80001d1c:	00100493          	li	s1,1
    80001d20:	06300793          	li	a5,99
    80001d24:	0a97c663          	blt	a5,s1,80001dd0 <_Z13stressTestingv+0x224>
            Riscv::printString("i : ");
    80001d28:	00005517          	auipc	a0,0x5
    80001d2c:	31850513          	addi	a0,a0,792 # 80007040 <CONSOLE_STATUS+0x30>
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	d14080e7          	jalr	-748(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001d38:	00048513          	mv	a0,s1
    80001d3c:	00001097          	auipc	ra,0x1
    80001d40:	d78080e7          	jalr	-648(ra) # 80002ab4 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001d44:	00005517          	auipc	a0,0x5
    80001d48:	3ac50513          	addi	a0,a0,940 # 800070f0 <CONSOLE_STATUS+0xe0>
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	cf8080e7          	jalr	-776(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001d54:	00349793          	slli	a5,s1,0x3
    80001d58:	fd040713          	addi	a4,s0,-48
    80001d5c:	00f707b3          	add	a5,a4,a5
    80001d60:	ce07b503          	ld	a0,-800(a5)
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	514080e7          	jalr	1300(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001d6c:	02051e63          	bnez	a0,80001da8 <_Z13stressTestingv+0x1fc>
            Riscv::printString("alloc\n");
    80001d70:	00005517          	auipc	a0,0x5
    80001d74:	38850513          	addi	a0,a0,904 # 800070f8 <CONSOLE_STATUS+0xe8>
    80001d78:	00001097          	auipc	ra,0x1
    80001d7c:	ccc080e7          	jalr	-820(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz);
    80001d80:	00098513          	mv	a0,s3
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	4c4080e7          	jalr	1220(ra) # 80001248 <mem_alloc>
    80001d8c:	00349793          	slli	a5,s1,0x3
    80001d90:	fd040713          	addi	a4,s0,-48
    80001d94:	00f707b3          	add	a5,a4,a5
    80001d98:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001d9c:	02050063          	beqz	a0,80001dbc <_Z13stressTestingv+0x210>
        for(int i = 1 ; i < num;i+=2)
    80001da0:	0024849b          	addiw	s1,s1,2
    80001da4:	f7dff06f          	j	80001d20 <_Z13stressTestingv+0x174>
                Riscv::printString("not OK\n");
    80001da8:	00005517          	auipc	a0,0x5
    80001dac:	2e850513          	addi	a0,a0,744 # 80007090 <CONSOLE_STATUS+0x80>
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	c94080e7          	jalr	-876(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
                return;
    80001db8:	e65ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001dbc:	00005517          	auipc	a0,0x5
    80001dc0:	34450513          	addi	a0,a0,836 # 80007100 <CONSOLE_STATUS+0xf0>
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	c80080e7          	jalr	-896(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
                return;
    80001dcc:	e51ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
        sz-=10;
    80001dd0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001dd4:	e69ff06f          	j	80001c3c <_Z13stressTestingv+0x90>
    Riscv::printString("OK\n");
    80001dd8:	00005517          	auipc	a0,0x5
    80001ddc:	2c050513          	addi	a0,a0,704 # 80007098 <CONSOLE_STATUS+0x88>
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	c64080e7          	jalr	-924(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    80001de8:	e35ff06f          	j	80001c1c <_Z13stressTestingv+0x70>

0000000080001dec <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00113423          	sd	ra,8(sp)
    80001df4:	00813023          	sd	s0,0(sp)
    80001df8:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
    stressTesting();
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	db0080e7          	jalr	-592(ra) # 80001bac <_Z13stressTestingv>
}
    80001e04:	00813083          	ld	ra,8(sp)
    80001e08:	00013403          	ld	s0,0(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    80001e14:	fe010113          	addi	sp,sp,-32
    80001e18:	00113c23          	sd	ra,24(sp)
    80001e1c:	00813823          	sd	s0,16(sp)
    80001e20:	00913423          	sd	s1,8(sp)
    80001e24:	02010413          	addi	s0,sp,32
    Riscv::printString("Runner started...\n");
    80001e28:	00005517          	auipc	a0,0x5
    80001e2c:	2e050513          	addi	a0,a0,736 # 80007108 <CONSOLE_STATUS+0xf8>
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	c14080e7          	jalr	-1004(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	bec080e7          	jalr	-1044(ra) # 80002a24 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001e40:	00007497          	auipc	s1,0x7
    80001e44:	ca048493          	addi	s1,s1,-864 # 80008ae0 <_ZN3PCB7runningE>
    80001e48:	0004b783          	ld	a5,0(s1)
    80001e4c:	0187b703          	ld	a4,24(a5)
    80001e50:	0207b503          	ld	a0,32(a5)
    80001e54:	000700e7          	jalr	a4
    running->setState(PCB::FINISHED);
    80001e58:	0004b783          	ld	a5,0(s1)
    void setState(State s) {state = s;}
    80001e5c:	00300713          	li	a4,3
    80001e60:	02e7a823          	sw	a4,48(a5)
    Riscv::printString("PCB finished\n");
    80001e64:	00005517          	auipc	a0,0x5
    80001e68:	2bc50513          	addi	a0,a0,700 # 80007120 <CONSOLE_STATUS+0x110>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	bd8080e7          	jalr	-1064(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    //thread_exit();
    thread_dispatch();
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	4b0080e7          	jalr	1200(ra) # 80001324 <thread_dispatch>
}
    80001e7c:	01813083          	ld	ra,24(sp)
    80001e80:	01013403          	ld	s0,16(sp)
    80001e84:	00813483          	ld	s1,8(sp)
    80001e88:	02010113          	addi	sp,sp,32
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	02010413          	addi	s0,sp,32
    80001ea4:	00050493          	mv	s1,a0
    })
    80001ea8:	00e53423          	sd	a4,8(a0)
    80001eac:	00053823          	sd	zero,16(a0)
    80001eb0:	00b53c23          	sd	a1,24(a0)
    80001eb4:	02c53023          	sd	a2,32(a0)
    80001eb8:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001ebc:	000017b7          	lui	a5,0x1
    80001ec0:	00f686b3          	add	a3,a3,a5
    })
    80001ec4:	02d53c23          	sd	a3,56(a0)
    80001ec8:	00000797          	auipc	a5,0x0
    80001ecc:	f4c78793          	addi	a5,a5,-180 # 80001e14 <_ZN3PCB6runnerEv>
    80001ed0:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	7c8080e7          	jalr	1992(ra) # 8000269c <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80001edc:	0004b023          	sd	zero,0(s1)
}
    80001ee0:	01813083          	ld	ra,24(sp)
    80001ee4:	01013403          	ld	s0,16(sp)
    80001ee8:	00813483          	ld	s1,8(sp)
    80001eec:	02010113          	addi	sp,sp,32
    80001ef0:	00008067          	ret

0000000080001ef4 <_ZN3PCB5sleepEm>:
{
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00813423          	sd	s0,8(sp)
    80001efc:	01010413          	addi	s0,sp,16
}
    80001f00:	00813403          	ld	s0,8(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <_ZN3PCB5startEv>:
{
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00113423          	sd	ra,8(sp)
    80001f14:	00813023          	sd	s0,0(sp)
    80001f18:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	780080e7          	jalr	1920(ra) # 8000269c <_ZN9Scheduler3putEP3PCB>
}
    80001f24:	00813083          	ld	ra,8(sp)
    80001f28:	00013403          	ld	s0,0(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <_ZN3PCBnwEm>:
        PCB::contextSwitchExiting(&running->context);
    }

}

void *PCB::operator new(size_t size) {
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	370080e7          	jalr	880(ra) # 800032b4 <_Z7kmallocm>
}
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	370080e7          	jalr	880(ra) # 800032dc <_Z5kfreePv>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00113423          	sd	ra,8(sp)
    80001f8c:	00813023          	sd	s0,0(sp)
    80001f90:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80001f94:	02853503          	ld	a0,40(a0)
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	344080e7          	jalr	836(ra) # 800032dc <_Z5kfreePv>
}
    80001fa0:	00813083          	ld	ra,8(sp)
    80001fa4:	00013403          	ld	s0,0(sp)
    80001fa8:	01010113          	addi	sp,sp,16
    80001fac:	00008067          	ret

0000000080001fb0 <_ZN3PCB8dispatchEv>:
{
    80001fb0:	fe010113          	addi	sp,sp,-32
    80001fb4:	00113c23          	sd	ra,24(sp)
    80001fb8:	00813823          	sd	s0,16(sp)
    80001fbc:	00913423          	sd	s1,8(sp)
    80001fc0:	01213023          	sd	s2,0(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80001fc8:	00007917          	auipc	s2,0x7
    80001fcc:	b1893903          	ld	s2,-1256(s2) # 80008ae0 <_ZN3PCB7runningE>
    State getState() {return state;}
    80001fd0:	03092703          	lw	a4,48(s2)
    if(old->getState() == PCB::RUNNING)
    80001fd4:	00100793          	li	a5,1
    80001fd8:	06f70a63          	beq	a4,a5,8000204c <_ZN3PCB8dispatchEv+0x9c>
    PCB::running = Scheduler::get();
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	714080e7          	jalr	1812(ra) # 800026f0 <_ZN9Scheduler3getEv>
    80001fe4:	00007797          	auipc	a5,0x7
    80001fe8:	afc78793          	addi	a5,a5,-1284 # 80008ae0 <_ZN3PCB7runningE>
    80001fec:	00a7b023          	sd	a0,0(a5)
    void setState(State s) {state = s;}
    80001ff0:	00100713          	li	a4,1
    80001ff4:	02e52823          	sw	a4,48(a0)
    if(PCB::exitingPCB == 0)
    80001ff8:	0087b483          	ld	s1,8(a5)
    80001ffc:	06048063          	beqz	s1,8000205c <_ZN3PCB8dispatchEv+0xac>
        delete PCB::exitingPCB;
    80002000:	00048513          	mv	a0,s1
    80002004:	00000097          	auipc	ra,0x0
    80002008:	f80080e7          	jalr	-128(ra) # 80001f84 <_ZN3PCBD1Ev>
    8000200c:	00048513          	mv	a0,s1
    80002010:	00000097          	auipc	ra,0x0
    80002014:	f4c080e7          	jalr	-180(ra) # 80001f5c <_ZN3PCBdlEPv>
        PCB::exitingPCB = 0;
    80002018:	00007797          	auipc	a5,0x7
    8000201c:	ac878793          	addi	a5,a5,-1336 # 80008ae0 <_ZN3PCB7runningE>
    80002020:	0007b423          	sd	zero,8(a5)
        PCB::contextSwitchExiting(&running->context);
    80002024:	0007b503          	ld	a0,0(a5)
    80002028:	03850513          	addi	a0,a0,56
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	210080e7          	jalr	528(ra) # 8000123c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>
}
    80002034:	01813083          	ld	ra,24(sp)
    80002038:	01013403          	ld	s0,16(sp)
    8000203c:	00813483          	ld	s1,8(sp)
    80002040:	00013903          	ld	s2,0(sp)
    80002044:	02010113          	addi	sp,sp,32
    80002048:	00008067          	ret
        Scheduler::put(old);
    8000204c:	00090513          	mv	a0,s2
    80002050:	00000097          	auipc	ra,0x0
    80002054:	64c080e7          	jalr	1612(ra) # 8000269c <_ZN9Scheduler3putEP3PCB>
    80002058:	f85ff06f          	j	80001fdc <_ZN3PCB8dispatchEv+0x2c>
        PCB::contextSwitch(&old->context, &running->context);
    8000205c:	03850593          	addi	a1,a0,56
    80002060:	03890513          	addi	a0,s2,56
    80002064:	fffff097          	auipc	ra,0xfffff
    80002068:	1c4080e7          	jalr	452(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    8000206c:	fc9ff06f          	j	80002034 <_ZN3PCB8dispatchEv+0x84>

0000000080002070 <_ZN3PCB17insertSleepingPCBEv>:

void PCB::insertSleepingPCB()
{
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00113423          	sd	ra,8(sp)
    80002078:	00813023          	sd	s0,0(sp)
    8000207c:	01010413          	addi	s0,sp,16
    Riscv::printString("Inserting sleeping PCB...\n");
    80002080:	00005517          	auipc	a0,0x5
    80002084:	0b050513          	addi	a0,a0,176 # 80007130 <CONSOLE_STATUS+0x120>
    80002088:	00001097          	auipc	ra,0x1
    8000208c:	9bc080e7          	jalr	-1604(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002090:	00007797          	auipc	a5,0x7
    80002094:	a607b783          	ld	a5,-1440(a5) # 80008af0 <_ZN3PCB15sleepingPCBHeadE>
    PCB* prev = 0;
    80002098:	00000593          	li	a1,0
    while(curr != 0)
    8000209c:	02078463          	beqz	a5,800020c4 <_ZN3PCB17insertSleepingPCBEv+0x54>
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800020a0:	00007717          	auipc	a4,0x7
    800020a4:	a4073703          	ld	a4,-1472(a4) # 80008ae0 <_ZN3PCB7runningE>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    800020a8:	01073603          	ld	a2,16(a4)
    800020ac:	0107b683          	ld	a3,16(a5)
    800020b0:	00d66863          	bltu	a2,a3,800020c0 <_ZN3PCB17insertSleepingPCBEv+0x50>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800020b4:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800020b8:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800020bc:	fe1ff06f          	j	8000209c <_ZN3PCB17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800020c0:	00f73023          	sd	a5,0(a4)
    }

    if(prev == 0)
    800020c4:	02058063          	beqz	a1,800020e4 <_ZN3PCB17insertSleepingPCBEv+0x74>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800020c8:	00007797          	auipc	a5,0x7
    800020cc:	a187b783          	ld	a5,-1512(a5) # 80008ae0 <_ZN3PCB7runningE>
    800020d0:	00f5b023          	sd	a5,0(a1)
}
    800020d4:	00813083          	ld	ra,8(sp)
    800020d8:	00013403          	ld	s0,0(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800020e4:	00007797          	auipc	a5,0x7
    800020e8:	9fc78793          	addi	a5,a5,-1540 # 80008ae0 <_ZN3PCB7runningE>
    800020ec:	0007b703          	ld	a4,0(a5)
    800020f0:	00e7b823          	sd	a4,16(a5)
    800020f4:	fe1ff06f          	j	800020d4 <_ZN3PCB17insertSleepingPCBEv+0x64>

00000000800020f8 <_ZN3PCB13tryToWakePCBsEv>:

void PCB::tryToWakePCBs() {
    800020f8:	fe010113          	addi	sp,sp,-32
    800020fc:	00113c23          	sd	ra,24(sp)
    80002100:	00813823          	sd	s0,16(sp)
    80002104:	00913423          	sd	s1,8(sp)
    80002108:	01213023          	sd	s2,0(sp)
    8000210c:	02010413          	addi	s0,sp,32
    Riscv::printString("Waking PCBs...\n");
    80002110:	00005517          	auipc	a0,0x5
    80002114:	04050513          	addi	a0,a0,64 # 80007150 <CONSOLE_STATUS+0x140>
    80002118:	00001097          	auipc	ra,0x1
    8000211c:	92c080e7          	jalr	-1748(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    PCB* curr = sleepingPCBHead;
    80002120:	00007497          	auipc	s1,0x7
    80002124:	9d04b483          	ld	s1,-1584(s1) # 80008af0 <_ZN3PCB15sleepingPCBHeadE>
    80002128:	0380006f          	j	80002160 <_ZN3PCB13tryToWakePCBsEv+0x68>
    while(curr != 0)
    {
        if(curr->getTimeToSleep() == 1UL)
        {
            Riscv::printString("PCB woken...\n");
    8000212c:	00005517          	auipc	a0,0x5
    80002130:	03450513          	addi	a0,a0,52 # 80007160 <CONSOLE_STATUS+0x150>
    80002134:	00001097          	auipc	ra,0x1
    80002138:	910080e7          	jalr	-1776(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
            PCB* old = curr;
            curr=curr->nextPCB;
    8000213c:	0004b903          	ld	s2,0(s1)
    void setState(State s) {state = s;}
    80002140:	0204a823          	sw	zero,48(s1)
            old->setState(PCB::READY);
            old->nextPCB = 0;
    80002144:	0004b023          	sd	zero,0(s1)
            Scheduler::put(old);
    80002148:	00048513          	mv	a0,s1
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	550080e7          	jalr	1360(ra) # 8000269c <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002154:	00007797          	auipc	a5,0x7
    80002158:	9927be23          	sd	s2,-1636(a5) # 80008af0 <_ZN3PCB15sleepingPCBHeadE>
            curr=curr->nextPCB;
    8000215c:	00090493          	mv	s1,s2
    while(curr != 0)
    80002160:	02048063          	beqz	s1,80002180 <_ZN3PCB13tryToWakePCBsEv+0x88>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002164:	0104b783          	ld	a5,16(s1)
        if(curr->getTimeToSleep() == 1UL)
    80002168:	00100713          	li	a4,1
    8000216c:	fce780e3          	beq	a5,a4,8000212c <_ZN3PCB13tryToWakePCBsEv+0x34>
        }
        else
        {
            curr->setTimeToSleep(curr->getTimeToSleep() - 1);
    80002170:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002174:	00f4b823          	sd	a5,16(s1)
            curr = curr->nextPCB;
    80002178:	0004b483          	ld	s1,0(s1)
    8000217c:	fe5ff06f          	j	80002160 <_ZN3PCB13tryToWakePCBsEv+0x68>
        }
    }
}
    80002180:	01813083          	ld	ra,24(sp)
    80002184:	01013403          	ld	s0,16(sp)
    80002188:	00813483          	ld	s1,8(sp)
    8000218c:	00013903          	ld	s2,0(sp)
    80002190:	02010113          	addi	sp,sp,32
    80002194:	00008067          	ret

0000000080002198 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00813423          	sd	s0,8(sp)
    800021a0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800021a4:	00007797          	auipc	a5,0x7
    800021a8:	8e47b783          	ld	a5,-1820(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021ac:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800021b0:	00500793          	li	a5,5
    800021b4:	02f5a823          	sw	a5,48(a1)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800021b8:	00007797          	auipc	a5,0x7
    800021bc:	9487b783          	ld	a5,-1720(a5) # 80008b00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800021c0:	00000613          	li	a2,0
    while(curr != 0)
    800021c4:	02078063          	beqz	a5,800021e4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800021c8:	0105b683          	ld	a3,16(a1)
    800021cc:	0107b703          	ld	a4,16(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800021d0:	00e6e863          	bltu	a3,a4,800021e0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800021d4:	00078613          	mv	a2,a5
        curr=curr->nextPCB;
    800021d8:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800021dc:	fe9ff06f          	j	800021c4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800021e0:	00f5b023          	sd	a5,0(a1)
    }

    if(prev == 0)
    800021e4:	02060863          	beqz	a2,80002214 <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800021e8:	00007797          	auipc	a5,0x7
    800021ec:	8a07b783          	ld	a5,-1888(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021f0:	0007b783          	ld	a5,0(a5)
    800021f4:	0107b703          	ld	a4,16(a5)
    800021f8:	01063683          	ld	a3,16(a2)
    800021fc:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002200:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    80002204:	00f63023          	sd	a5,0(a2)
    }
}
    80002208:	00813403          	ld	s0,8(sp)
    8000220c:	01010113          	addi	sp,sp,16
    80002210:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002214:	00007797          	auipc	a5,0x7
    80002218:	8747b783          	ld	a5,-1932(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000221c:	0007b783          	ld	a5,0(a5)
    80002220:	00007717          	auipc	a4,0x7
    80002224:	8ef73023          	sd	a5,-1824(a4) # 80008b00 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002228:	0007b703          	ld	a4,0(a5)
    8000222c:	fc070ee3          	beqz	a4,80002208 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002230:	01073683          	ld	a3,16(a4)
    80002234:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002238:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000223c:	00f73823          	sd	a5,16(a4)
    80002240:	fc9ff06f          	j	80002208 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>

0000000080002244 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking pcbs...\n");
    PCB* curr = sleepingPCBHead;
    80002244:	00007517          	auipc	a0,0x7
    80002248:	8bc53503          	ld	a0,-1860(a0) # 80008b00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    8000224c:	08050863          	beqz	a0,800022dc <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002250:	01053783          	ld	a5,16(a0)
    {
        //Riscv::printString("NULL\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002254:	00100713          	li	a4,1
    80002258:	00e78863          	beq	a5,a4,80002268 <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    8000225c:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002260:	00f53823          	sd	a5,16(a0)
    80002264:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002268:	06050a63          	beqz	a0,800022dc <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    8000226c:	00007797          	auipc	a5,0x7
    80002270:	8947b783          	ld	a5,-1900(a5) # 80008b00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002274:	00a78663          	beq	a5,a0,80002280 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002278:	01053783          	ld	a5,16(a0)
    8000227c:	06079063          	bnez	a5,800022dc <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002280:	fe010113          	addi	sp,sp,-32
    80002284:	00113c23          	sd	ra,24(sp)
    80002288:	00813823          	sd	s0,16(sp)
    8000228c:	00913423          	sd	s1,8(sp)
    80002290:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002294:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    80002298:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	400080e7          	jalr	1024(ra) # 8000269c <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    800022a4:	00007797          	auipc	a5,0x7
    800022a8:	8497be23          	sd	s1,-1956(a5) # 80008b00 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    800022ac:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    800022b0:	00048c63          	beqz	s1,800022c8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800022b4:	00007797          	auipc	a5,0x7
    800022b8:	84c7b783          	ld	a5,-1972(a5) # 80008b00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800022bc:	fc978ce3          	beq	a5,s1,80002294 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800022c0:	0104b783          	ld	a5,16(s1)
    800022c4:	fc0788e3          	beqz	a5,80002294 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    800022c8:	01813083          	ld	ra,24(sp)
    800022cc:	01013403          	ld	s0,16(sp)
    800022d0:	00813483          	ld	s1,8(sp)
    800022d4:	02010113          	addi	sp,sp,32
    800022d8:	00008067          	ret
    800022dc:	00008067          	ret

00000000800022e0 <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.hpp"

void Queue::pop() {
    800022e0:	fe010113          	addi	sp,sp,-32
    800022e4:	00113c23          	sd	ra,24(sp)
    800022e8:	00813823          	sd	s0,16(sp)
    800022ec:	00913423          	sd	s1,8(sp)
    800022f0:	01213023          	sd	s2,0(sp)
    800022f4:	02010413          	addi	s0,sp,32
    800022f8:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800022fc:	00053503          	ld	a0,0(a0)
    80002300:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002304:	00001097          	auipc	ra,0x1
    80002308:	fd8080e7          	jalr	-40(ra) # 800032dc <_Z5kfreePv>
    first = newFirst;
    8000230c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002310:	00090e63          	beqz	s2,8000232c <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002314:	01813083          	ld	ra,24(sp)
    80002318:	01013403          	ld	s0,16(sp)
    8000231c:	00813483          	ld	s1,8(sp)
    80002320:	00013903          	ld	s2,0(sp)
    80002324:	02010113          	addi	sp,sp,32
    80002328:	00008067          	ret
        first = last = 0;
    8000232c:	0004b423          	sd	zero,8(s1)
    80002330:	0004b023          	sd	zero,0(s1)
}
    80002334:	fe1ff06f          	j	80002314 <_ZN5Queue3popEv+0x34>

0000000080002338 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002338:	fe010113          	addi	sp,sp,-32
    8000233c:	00113c23          	sd	ra,24(sp)
    80002340:	00813823          	sd	s0,16(sp)
    80002344:	00913423          	sd	s1,8(sp)
    80002348:	01213023          	sd	s2,0(sp)
    8000234c:	02010413          	addi	s0,sp,32
    80002350:	00050493          	mv	s1,a0
    80002354:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002358:	01000513          	li	a0,16
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	f58080e7          	jalr	-168(ra) # 800032b4 <_Z7kmallocm>
    newElem->data = t;
    80002364:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002368:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    8000236c:	0004b783          	ld	a5,0(s1)
    80002370:	02078463          	beqz	a5,80002398 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002374:	0084b783          	ld	a5,8(s1)
    80002378:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    8000237c:	00a4b423          	sd	a0,8(s1)
    }
}
    80002380:	01813083          	ld	ra,24(sp)
    80002384:	01013403          	ld	s0,16(sp)
    80002388:	00813483          	ld	s1,8(sp)
    8000238c:	00013903          	ld	s2,0(sp)
    80002390:	02010113          	addi	sp,sp,32
    80002394:	00008067          	ret
        first = newElem;
    80002398:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    8000239c:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800023a0:	00053423          	sd	zero,8(a0)
    800023a4:	0004b783          	ld	a5,0(s1)
    800023a8:	0007b423          	sd	zero,8(a5)
    800023ac:	fd5ff06f          	j	80002380 <_ZN5Queue4pushEP3PCB+0x48>

00000000800023b0 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00813423          	sd	s0,8(sp)
    800023b8:	01010413          	addi	s0,sp,16
    if(first == 0)
    800023bc:	00053503          	ld	a0,0(a0)
    800023c0:	00050463          	beqz	a0,800023c8 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800023c4:	00053503          	ld	a0,0(a0)
}
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_ZN5QueueC1Ev>:

Queue::Queue() {
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00813423          	sd	s0,8(sp)
    800023dc:	01010413          	addi	s0,sp,16
    first = last = 0;
    800023e0:	00053423          	sd	zero,8(a0)
    800023e4:	00053023          	sd	zero,0(a0)
}
    800023e8:	00813403          	ld	s0,8(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    800023f4:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    800023f8:	04050063          	beqz	a0,80002438 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    800023fc:	fe010113          	addi	sp,sp,-32
    80002400:	00113c23          	sd	ra,24(sp)
    80002404:	00813823          	sd	s0,16(sp)
    80002408:	00913423          	sd	s1,8(sp)
    8000240c:	02010413          	addi	s0,sp,32
    {
        //todo
        //vrati ovo
        //sad je zakomentarisano zbog kfree
        Elem* old = curr;
        curr = curr->next;
    80002410:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002414:	00001097          	auipc	ra,0x1
    80002418:	ec8080e7          	jalr	-312(ra) # 800032dc <_Z5kfreePv>
        curr = curr->next;
    8000241c:	00048513          	mv	a0,s1
    while(curr != 0)
    80002420:	fe0498e3          	bnez	s1,80002410 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002424:	01813083          	ld	ra,24(sp)
    80002428:	01013403          	ld	s0,16(sp)
    8000242c:	00813483          	ld	s1,8(sp)
    80002430:	02010113          	addi	sp,sp,32
    80002434:	00008067          	ret
    80002438:	00008067          	ret

000000008000243c <_ZN5Queue4sizeEv>:

int Queue::size() {
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00813423          	sd	s0,8(sp)
    80002444:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002448:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    8000244c:	00000513          	li	a0,0
    while(curr != 0)
    80002450:	00078863          	beqz	a5,80002460 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002454:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002458:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000245c:	ff5ff06f          	j	80002450 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00113423          	sd	ra,8(sp)
    80002474:	00813023          	sd	s0,0(sp)
    80002478:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	e38080e7          	jalr	-456(ra) # 800032b4 <_Z7kmallocm>
}
    80002484:	00813083          	ld	ra,8(sp)
    80002488:	00013403          	ld	s0,0(sp)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret

0000000080002494 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    80002494:	ff010113          	addi	sp,sp,-16
    80002498:	00113423          	sd	ra,8(sp)
    8000249c:	00813023          	sd	s0,0(sp)
    800024a0:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800024a4:	00001097          	auipc	ra,0x1
    800024a8:	e38080e7          	jalr	-456(ra) # 800032dc <_Z5kfreePv>
}
    800024ac:	00813083          	ld	ra,8(sp)
    800024b0:	00013403          	ld	s0,0(sp)
    800024b4:	01010113          	addi	sp,sp,16
    800024b8:	00008067          	ret

00000000800024bc <_ZN9Scheduler4put2EP3PCB>:
void Scheduler::put2(PCB *pcb) {
    800024bc:	fe010113          	addi	sp,sp,-32
    800024c0:	00113c23          	sd	ra,24(sp)
    800024c4:	00813823          	sd	s0,16(sp)
    800024c8:	00913423          	sd	s1,8(sp)
    800024cc:	01213023          	sd	s2,0(sp)
    800024d0:	02010413          	addi	s0,sp,32
    800024d4:	00050493          	mv	s1,a0
    void setState(State s) {state = s;}
    800024d8:	02052823          	sw	zero,48(a0)
    if(scheduler == 0)
    800024dc:	00006797          	auipc	a5,0x6
    800024e0:	62c7b783          	ld	a5,1580(a5) # 80008b08 <_ZN9Scheduler9schedulerE>
    800024e4:	02078863          	beqz	a5,80002514 <_ZN9Scheduler4put2EP3PCB+0x58>
    scheduler->queuePCB.push(pcb);
    800024e8:	00048593          	mv	a1,s1
    800024ec:	00006517          	auipc	a0,0x6
    800024f0:	61c53503          	ld	a0,1564(a0) # 80008b08 <_ZN9Scheduler9schedulerE>
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	e44080e7          	jalr	-444(ra) # 80002338 <_ZN5Queue4pushEP3PCB>
}
    800024fc:	01813083          	ld	ra,24(sp)
    80002500:	01013403          	ld	s0,16(sp)
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	00013903          	ld	s2,0(sp)
    8000250c:	02010113          	addi	sp,sp,32
    80002510:	00008067          	ret
        scheduler = new Scheduler();
    80002514:	01000513          	li	a0,16
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	f54080e7          	jalr	-172(ra) # 8000246c <_ZN9SchedulernwEm>
    80002520:	00050913          	mv	s2,a0
    80002524:	00053023          	sd	zero,0(a0)
    80002528:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.hpp"
#include "Queue.hpp"

class PCB;

class Scheduler
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	ea8080e7          	jalr	-344(ra) # 800023d4 <_ZN5QueueC1Ev>
    80002534:	00006797          	auipc	a5,0x6
    80002538:	5d27ba23          	sd	s2,1492(a5) # 80008b08 <_ZN9Scheduler9schedulerE>
    8000253c:	fadff06f          	j	800024e8 <_ZN9Scheduler4put2EP3PCB+0x2c>
    80002540:	00050493          	mv	s1,a0
    80002544:	00090513          	mv	a0,s2
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	f4c080e7          	jalr	-180(ra) # 80002494 <_ZN9SchedulerdlEPv>
    80002550:	00048513          	mv	a0,s1
    80002554:	00007097          	auipc	ra,0x7
    80002558:	6e4080e7          	jalr	1764(ra) # 80009c38 <_Unwind_Resume>

000000008000255c <_ZN9Scheduler4get2Ev>:
PCB *Scheduler::get2() {
    8000255c:	fe010113          	addi	sp,sp,-32
    80002560:	00113c23          	sd	ra,24(sp)
    80002564:	00813823          	sd	s0,16(sp)
    80002568:	00913423          	sd	s1,8(sp)
    8000256c:	01213023          	sd	s2,0(sp)
    80002570:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80002574:	00006797          	auipc	a5,0x6
    80002578:	5947b783          	ld	a5,1428(a5) # 80008b08 <_ZN9Scheduler9schedulerE>
    8000257c:	04078263          	beqz	a5,800025c0 <_ZN9Scheduler4get2Ev+0x64>
    PCB* fr = scheduler->queuePCB.front();
    80002580:	00006917          	auipc	s2,0x6
    80002584:	58890913          	addi	s2,s2,1416 # 80008b08 <_ZN9Scheduler9schedulerE>
    80002588:	00093503          	ld	a0,0(s2)
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	e24080e7          	jalr	-476(ra) # 800023b0 <_ZN5Queue5frontEv>
    80002594:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    80002598:	00093503          	ld	a0,0(s2)
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	d44080e7          	jalr	-700(ra) # 800022e0 <_ZN5Queue3popEv>
}
    800025a4:	00048513          	mv	a0,s1
    800025a8:	01813083          	ld	ra,24(sp)
    800025ac:	01013403          	ld	s0,16(sp)
    800025b0:	00813483          	ld	s1,8(sp)
    800025b4:	00013903          	ld	s2,0(sp)
    800025b8:	02010113          	addi	sp,sp,32
    800025bc:	00008067          	ret
        scheduler = new Scheduler();
    800025c0:	01000513          	li	a0,16
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	ea8080e7          	jalr	-344(ra) # 8000246c <_ZN9SchedulernwEm>
    800025cc:	00050493          	mv	s1,a0
    800025d0:	00053023          	sd	zero,0(a0)
    800025d4:	00053423          	sd	zero,8(a0)
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	dfc080e7          	jalr	-516(ra) # 800023d4 <_ZN5QueueC1Ev>
    800025e0:	00006797          	auipc	a5,0x6
    800025e4:	5297b423          	sd	s1,1320(a5) # 80008b08 <_ZN9Scheduler9schedulerE>
    800025e8:	f99ff06f          	j	80002580 <_ZN9Scheduler4get2Ev+0x24>
    800025ec:	00050913          	mv	s2,a0
    800025f0:	00048513          	mv	a0,s1
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	ea0080e7          	jalr	-352(ra) # 80002494 <_ZN9SchedulerdlEPv>
    800025fc:	00090513          	mv	a0,s2
    80002600:	00007097          	auipc	ra,0x7
    80002604:	638080e7          	jalr	1592(ra) # 80009c38 <_Unwind_Resume>

0000000080002608 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    80002608:	fe010113          	addi	sp,sp,-32
    8000260c:	00113c23          	sd	ra,24(sp)
    80002610:	00813823          	sd	s0,16(sp)
    80002614:	00913423          	sd	s1,8(sp)
    80002618:	01213023          	sd	s2,0(sp)
    8000261c:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80002620:	00006797          	auipc	a5,0x6
    80002624:	4e87b783          	ld	a5,1256(a5) # 80008b08 <_ZN9Scheduler9schedulerE>
    80002628:	02078663          	beqz	a5,80002654 <_ZN9Scheduler7getSizeEv+0x4c>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    8000262c:	00006517          	auipc	a0,0x6
    80002630:	4dc53503          	ld	a0,1244(a0) # 80008b08 <_ZN9Scheduler9schedulerE>
    80002634:	00000097          	auipc	ra,0x0
    80002638:	e08080e7          	jalr	-504(ra) # 8000243c <_ZN5Queue4sizeEv>
}
    8000263c:	01813083          	ld	ra,24(sp)
    80002640:	01013403          	ld	s0,16(sp)
    80002644:	00813483          	ld	s1,8(sp)
    80002648:	00013903          	ld	s2,0(sp)
    8000264c:	02010113          	addi	sp,sp,32
    80002650:	00008067          	ret
        scheduler = new Scheduler();
    80002654:	01000513          	li	a0,16
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	e14080e7          	jalr	-492(ra) # 8000246c <_ZN9SchedulernwEm>
    80002660:	00050493          	mv	s1,a0
    80002664:	00053023          	sd	zero,0(a0)
    80002668:	00053423          	sd	zero,8(a0)
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	d68080e7          	jalr	-664(ra) # 800023d4 <_ZN5QueueC1Ev>
    80002674:	00006797          	auipc	a5,0x6
    80002678:	4897ba23          	sd	s1,1172(a5) # 80008b08 <_ZN9Scheduler9schedulerE>
    8000267c:	fb1ff06f          	j	8000262c <_ZN9Scheduler7getSizeEv+0x24>
    80002680:	00050913          	mv	s2,a0
    80002684:	00048513          	mv	a0,s1
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	e0c080e7          	jalr	-500(ra) # 80002494 <_ZN9SchedulerdlEPv>
    80002690:	00090513          	mv	a0,s2
    80002694:	00007097          	auipc	ra,0x7
    80002698:	5a4080e7          	jalr	1444(ra) # 80009c38 <_Unwind_Resume>

000000008000269c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb) {
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00813423          	sd	s0,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    800026a8:	02052823          	sw	zero,48(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800026ac:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    800026b0:	00006797          	auipc	a5,0x6
    800026b4:	4607b783          	ld	a5,1120(a5) # 80008b10 <_ZN9Scheduler16schedulerPCBHeadE>
    800026b8:	02078263          	beqz	a5,800026dc <_ZN9Scheduler3putEP3PCB+0x40>
    {
        schedulerPCBHead = schedulerPCBTail = pcb;
    }
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800026bc:	00006797          	auipc	a5,0x6
    800026c0:	44c78793          	addi	a5,a5,1100 # 80008b08 <_ZN9Scheduler9schedulerE>
    800026c4:	0107b703          	ld	a4,16(a5)
    800026c8:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    800026cc:	00a7b823          	sd	a0,16(a5)
    }
}
    800026d0:	00813403          	ld	s0,8(sp)
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800026dc:	00006797          	auipc	a5,0x6
    800026e0:	42c78793          	addi	a5,a5,1068 # 80008b08 <_ZN9Scheduler9schedulerE>
    800026e4:	00a7b823          	sd	a0,16(a5)
    800026e8:	00a7b423          	sd	a0,8(a5)
    800026ec:	fe5ff06f          	j	800026d0 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800026f0 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get() {
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00813423          	sd	s0,8(sp)
    800026f8:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800026fc:	00006517          	auipc	a0,0x6
    80002700:	41453503          	ld	a0,1044(a0) # 80008b10 <_ZN9Scheduler16schedulerPCBHeadE>
    80002704:	00050c63          	beqz	a0,8000271c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002708:	00053783          	ld	a5,0(a0)
    8000270c:	00078e63          	beqz	a5,80002728 <_ZN9Scheduler3getEv+0x38>
    {
        schedulerPCBHead = schedulerPCBTail = 0;
    }
    else
    {
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002710:	00006717          	auipc	a4,0x6
    80002714:	40f73023          	sd	a5,1024(a4) # 80008b10 <_ZN9Scheduler16schedulerPCBHeadE>
    }
    retval->nextPCB = 0;
    80002718:	00053023          	sd	zero,0(a0)
    return retval;
}
    8000271c:	00813403          	ld	s0,8(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002728:	00006797          	auipc	a5,0x6
    8000272c:	3e078793          	addi	a5,a5,992 # 80008b08 <_ZN9Scheduler9schedulerE>
    80002730:	0007b823          	sd	zero,16(a5)
    80002734:	0007b423          	sd	zero,8(a5)
    80002738:	fe1ff06f          	j	80002718 <_ZN9Scheduler3getEv+0x28>

000000008000273c <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00113423          	sd	ra,8(sp)
    80002744:	00813023          	sd	s0,0(sp)
    80002748:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	1d0080e7          	jalr	464(ra) # 8000291c <_ZN5Riscv10initSystemEv>

    //todo
    //go to unpriviliged mode

    Riscv::enableInterrupts();
    80002754:	00000097          	auipc	ra,0x0
    80002758:	268080e7          	jalr	616(ra) # 800029bc <_ZN5Riscv16enableInterruptsEv>
    userMain();
    8000275c:	00002097          	auipc	ra,0x2
    80002760:	e24080e7          	jalr	-476(ra) # 80004580 <_Z8userMainv>
    Riscv::disableInterrupts();
    80002764:	00000097          	auipc	ra,0x0
    80002768:	278080e7          	jalr	632(ra) # 800029dc <_ZN5Riscv17disableInterruptsEv>

    //memoryAllocationTests();
    //threadTests();
    //testQueue();

    Riscv::endSystem();
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	290080e7          	jalr	656(ra) # 800029fc <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    80002774:	00005517          	auipc	a0,0x5
    80002778:	9fc50513          	addi	a0,a0,-1540 # 80007170 <CONSOLE_STATUS+0x160>
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	2c8080e7          	jalr	712(ra) # 80002a44 <_ZN5Riscv11printStringEPKc>
    80002784:	00813083          	ld	ra,8(sp)
    80002788:	00013403          	ld	s0,0(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <_Znwm>:

#include "../h/syscall_cpp.hpp"

//general
void * operator new(size_t size)
{
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00113423          	sd	ra,8(sp)
    8000279c:	00813023          	sd	s0,0(sp)
    800027a0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	aa4080e7          	jalr	-1372(ra) # 80001248 <mem_alloc>
}
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_ZdlPv>:

void operator delete(void * p)
{
    800027bc:	ff010113          	addi	sp,sp,-16
    800027c0:	00113423          	sd	ra,8(sp)
    800027c4:	00813023          	sd	s0,0(sp)
    800027c8:	01010413          	addi	s0,sp,16
   mem_free(p);
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	aac080e7          	jalr	-1364(ra) # 80001278 <mem_free>
}
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN6Thread5startEv>:
//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    if(myHandle == 0)
    800027e4:	00053783          	ld	a5,0(a0)
    800027e8:	00078463          	beqz	a5,800027f0 <_ZN6Thread5startEv+0xc>
    800027ec:	00008067          	ret
void Thread::start() {
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00113423          	sd	ra,8(sp)
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	01010413          	addi	s0,sp,16
    {
        int retval = thread_create((void**)&myHandle, f, args);
    80002800:	01053603          	ld	a2,16(a0)
    80002804:	00853583          	ld	a1,8(a0)
    80002808:	fffff097          	auipc	ra,0xfffff
    8000280c:	a9c080e7          	jalr	-1380(ra) # 800012a4 <thread_create>
        {
        //todo
        //what then
        }
    }
}
    80002810:	00813083          	ld	ra,8(sp)
    80002814:	00013403          	ld	s0,0(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00113423          	sd	ra,8(sp)
    80002828:	00813023          	sd	s0,0(sp)
    8000282c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	af4080e7          	jalr	-1292(ra) # 80001324 <thread_dispatch>
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813423          	sd	s0,8(sp)
    80002850:	01010413          	addi	s0,sp,16
    //PCB::sleep(time);
}
    80002854:	00813403          	ld	s0,8(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret

0000000080002860 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00813423          	sd	s0,8(sp)
    80002868:	01010413          	addi	s0,sp,16
    myHandle = 0;
    8000286c:	00053023          	sd	zero,0(a0)
    f = body;
    80002870:	00b53423          	sd	a1,8(a0)
    this->args = args;
    80002874:	00c53823          	sd	a2,16(a0)
    //if(retval != 0)
    //{
        //todo
        //what then
    //}
}
    80002878:	00813403          	ld	s0,8(sp)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00813423          	sd	s0,8(sp)
    8000288c:	01010413          	addi	s0,sp,16

}
    80002890:	00813403          	ld	s0,8(sp)
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00008067          	ret

000000008000289c <_ZN9Semaphore4waitEv>:

//Semaphore

void Semaphore::wait() {
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00113423          	sd	ra,8(sp)
    800028a4:	00813023          	sd	s0,0(sp)
    800028a8:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    800028ac:	00053503          	ld	a0,0(a0)
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	b20080e7          	jalr	-1248(ra) # 800013d0 <sem_wait>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800028b8:	00813083          	ld	ra,8(sp)
    800028bc:	00013403          	ld	s0,0(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00113423          	sd	ra,8(sp)
    800028d0:	00813023          	sd	s0,0(sp)
    800028d4:	01010413          	addi	s0,sp,16
    int retval = sem_open((void**)&myHandle, init);
    800028d8:	fffff097          	auipc	ra,0xfffff
    800028dc:	a94080e7          	jalr	-1388(ra) # 8000136c <sem_open>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800028e0:	00813083          	ld	ra,8(sp)
    800028e4:	00013403          	ld	s0,0(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret

00000000800028f0 <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    80002900:	00053503          	ld	a0,0(a0)
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	af8080e7          	jalr	-1288(ra) # 800013fc <sem_signal>
    {
        //todo
        //what then
    }

}
    8000290c:	00813083          	ld	ra,8(sp)
    80002910:	00013403          	ld	s0,0(sp)
    80002914:	01010113          	addi	sp,sp,16
    80002918:	00008067          	ret

000000008000291c <_ZN5Riscv10initSystemEv>:
#include "../h/syscall_cpp.hpp"
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    8000291c:	fe010113          	addi	sp,sp,-32
    80002920:	00113c23          	sd	ra,24(sp)
    80002924:	00813823          	sd	s0,16(sp)
    80002928:	00913423          	sd	s1,8(sp)
    8000292c:	01213023          	sd	s2,0(sp)
    80002930:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002934:	00006797          	auipc	a5,0x6
    80002938:	1347b783          	ld	a5,308(a5) # 80008a68 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    8000293c:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    80002940:	01800513          	li	a0,24
    80002944:	00000097          	auipc	ra,0x0
    80002948:	e50080e7          	jalr	-432(ra) # 80002794 <_Znwm>
    8000294c:	00050493          	mv	s1,a0
    80002950:	00000613          	li	a2,0
    80002954:	00000593          	li	a1,0
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	f08080e7          	jalr	-248(ra) # 80002860 <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    80002960:	00048513          	mv	a0,s1
    80002964:	00000097          	auipc	ra,0x0
    80002968:	e80080e7          	jalr	-384(ra) # 800027e4 <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	d84080e7          	jalr	-636(ra) # 800026f0 <_ZN9Scheduler3getEv>
    80002974:	00006797          	auipc	a5,0x6
    80002978:	1147b783          	ld	a5,276(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000297c:	00a7b023          	sd	a0,0(a5)
    80002980:	00100793          	li	a5,1
    80002984:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002988:	01813083          	ld	ra,24(sp)
    8000298c:	01013403          	ld	s0,16(sp)
    80002990:	00813483          	ld	s1,8(sp)
    80002994:	00013903          	ld	s2,0(sp)
    80002998:	02010113          	addi	sp,sp,32
    8000299c:	00008067          	ret
    800029a0:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    800029a4:	00048513          	mv	a0,s1
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	e14080e7          	jalr	-492(ra) # 800027bc <_ZdlPv>
    800029b0:	00090513          	mv	a0,s2
    800029b4:	00007097          	auipc	ra,0x7
    800029b8:	284080e7          	jalr	644(ra) # 80009c38 <_Unwind_Resume>

00000000800029bc <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00813423          	sd	s0,8(sp)
    800029c4:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800029c8:	00200793          	li	a5,2
    800029cc:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800029d0:	00813403          	ld	s0,8(sp)
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00008067          	ret

00000000800029dc <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00813423          	sd	s0,8(sp)
    800029e4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800029e8:	00200793          	li	a5,2
    800029ec:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800029f0:	00813403          	ld	s0,8(sp)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	fd0080e7          	jalr	-48(ra) # 800029dc <_ZN5Riscv17disableInterruptsEv>
}
    80002a14:	00813083          	ld	ra,8(sp)
    80002a18:	00013403          	ld	s0,0(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002a24:	ff010113          	addi	sp,sp,-16
    80002a28:	00813423          	sd	s0,8(sp)
    80002a2c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002a30:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002a34:	10200073          	sret
}
    80002a38:	00813403          	ld	s0,8(sp)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret

0000000080002a44 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80002a44:	fd010113          	addi	sp,sp,-48
    80002a48:	02113423          	sd	ra,40(sp)
    80002a4c:	02813023          	sd	s0,32(sp)
    80002a50:	00913c23          	sd	s1,24(sp)
    80002a54:	01213823          	sd	s2,16(sp)
    80002a58:	03010413          	addi	s0,sp,48
    80002a5c:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002a60:	100027f3          	csrr	a5,sstatus
    80002a64:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002a68:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002a6c:	00200793          	li	a5,2
    80002a70:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80002a74:	0004c503          	lbu	a0,0(s1)
    80002a78:	00050a63          	beqz	a0,80002a8c <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80002a7c:	00004097          	auipc	ra,0x4
    80002a80:	f70080e7          	jalr	-144(ra) # 800069ec <__putc>
        string++;
    80002a84:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002a88:	fedff06f          	j	80002a74 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002a8c:	0009091b          	sext.w	s2,s2
    80002a90:	00297913          	andi	s2,s2,2
    80002a94:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002a98:	10092073          	csrs	sstatus,s2
}
    80002a9c:	02813083          	ld	ra,40(sp)
    80002aa0:	02013403          	ld	s0,32(sp)
    80002aa4:	01813483          	ld	s1,24(sp)
    80002aa8:	01013903          	ld	s2,16(sp)
    80002aac:	03010113          	addi	sp,sp,48
    80002ab0:	00008067          	ret

0000000080002ab4 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002ab4:	fc010113          	addi	sp,sp,-64
    80002ab8:	02113c23          	sd	ra,56(sp)
    80002abc:	02813823          	sd	s0,48(sp)
    80002ac0:	02913423          	sd	s1,40(sp)
    80002ac4:	03213023          	sd	s2,32(sp)
    80002ac8:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002acc:	100027f3          	csrr	a5,sstatus
    80002ad0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002ad4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002ad8:	00200793          	li	a5,2
    80002adc:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002ae0:	0005051b          	sext.w	a0,a0

    i = 0;
    80002ae4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002ae8:	00a00613          	li	a2,10
    80002aec:	02c5773b          	remuw	a4,a0,a2
    80002af0:	02071693          	slli	a3,a4,0x20
    80002af4:	0206d693          	srli	a3,a3,0x20
    80002af8:	00004717          	auipc	a4,0x4
    80002afc:	68070713          	addi	a4,a4,1664 # 80007178 <_ZZN5Riscv12printIntegerEmE6digits>
    80002b00:	00d70733          	add	a4,a4,a3
    80002b04:	00074703          	lbu	a4,0(a4)
    80002b08:	fe040693          	addi	a3,s0,-32
    80002b0c:	009687b3          	add	a5,a3,s1
    80002b10:	0014849b          	addiw	s1,s1,1
    80002b14:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002b18:	0005071b          	sext.w	a4,a0
    80002b1c:	02c5553b          	divuw	a0,a0,a2
    80002b20:	00900793          	li	a5,9
    80002b24:	fce7e2e3          	bltu	a5,a4,80002ae8 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002b28:	fff4849b          	addiw	s1,s1,-1
    80002b2c:	0004ce63          	bltz	s1,80002b48 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002b30:	fe040793          	addi	a5,s0,-32
    80002b34:	009787b3          	add	a5,a5,s1
    80002b38:	ff07c503          	lbu	a0,-16(a5)
    80002b3c:	00004097          	auipc	ra,0x4
    80002b40:	eb0080e7          	jalr	-336(ra) # 800069ec <__putc>
    80002b44:	fe5ff06f          	j	80002b28 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80002b48:	00a00513          	li	a0,10
    80002b4c:	00004097          	auipc	ra,0x4
    80002b50:	ea0080e7          	jalr	-352(ra) # 800069ec <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002b54:	0009091b          	sext.w	s2,s2
    80002b58:	00297913          	andi	s2,s2,2
    80002b5c:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002b60:	10092073          	csrs	sstatus,s2
}
    80002b64:	03813083          	ld	ra,56(sp)
    80002b68:	03013403          	ld	s0,48(sp)
    80002b6c:	02813483          	ld	s1,40(sp)
    80002b70:	02013903          	ld	s2,32(sp)
    80002b74:	04010113          	addi	sp,sp,64
    80002b78:	00008067          	ret

0000000080002b7c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002b7c:	f8010113          	addi	sp,sp,-128
    80002b80:	06113c23          	sd	ra,120(sp)
    80002b84:	06813823          	sd	s0,112(sp)
    80002b88:	06913423          	sd	s1,104(sp)
    80002b8c:	07213023          	sd	s2,96(sp)
    80002b90:	05313c23          	sd	s3,88(sp)
    80002b94:	05413823          	sd	s4,80(sp)
    80002b98:	05513423          	sd	s5,72(sp)
    80002b9c:	05613023          	sd	s6,64(sp)
    80002ba0:	08010413          	addi	s0,sp,128

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002ba4:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002ba8:	142027f3          	csrr	a5,scause
    80002bac:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80002bb0:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause) {
    80002bb4:	00900793          	li	a5,9
    80002bb8:	08e7fe63          	bgeu	a5,a4,80002c54 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    80002bbc:	fff00793          	li	a5,-1
    80002bc0:	03f79793          	slli	a5,a5,0x3f
    80002bc4:	00178793          	addi	a5,a5,1
    80002bc8:	08f71a63          	bne	a4,a5,80002c5c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002bcc:	00200793          	li	a5,2
    80002bd0:	1447b073          	csrc	sip,a5

        case timerInterrupt:

            Riscv::mc_sip(Riscv::SIP_SSIP);
            //Riscv::printString("timerInterrupt\n");
            PCB::timeSliceCounter++;
    80002bd4:	00006497          	auipc	s1,0x6
    80002bd8:	ea44b483          	ld	s1,-348(s1) # 80008a78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002bdc:	0004b783          	ld	a5,0(s1)
    80002be0:	00178793          	addi	a5,a5,1
    80002be4:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	65c080e7          	jalr	1628(ra) # 80002244 <_ZN12SleepPCBList13tryToWakePCBsEv>
            static uint64 sumInterrupts = 0;
            sumInterrupts++;
    80002bf0:	00006717          	auipc	a4,0x6
    80002bf4:	f3070713          	addi	a4,a4,-208 # 80008b20 <_ZZN5Riscv20handleSupervisorTrapEvE13sumInterrupts>
    80002bf8:	00073783          	ld	a5,0(a4)
    80002bfc:	00178793          	addi	a5,a5,1
    80002c00:	00f73023          	sd	a5,0(a4)
            //Riscv::printInteger(sumInterrupts);
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80002c04:	00006797          	auipc	a5,0x6
    80002c08:	e847b783          	ld	a5,-380(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c0c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002c10:	0087b783          	ld	a5,8(a5)
    80002c14:	0004b703          	ld	a4,0(s1)
    80002c18:	04f76263          	bltu	a4,a5,80002c5c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002c1c:	141027f3          	csrr	a5,sepc
    80002c20:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002c24:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002c28:	100027f3          	csrr	a5,sstatus
    80002c2c:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80002c30:	f9043903          	ld	s2,-112(s0)
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    80002c34:	00006797          	auipc	a5,0x6
    80002c38:	e447b783          	ld	a5,-444(a5) # 80008a78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c3c:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	370080e7          	jalr	880(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002c48:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002c4c:	14149073          	csrw	sepc,s1
}
    80002c50:	00c0006f          	j	80002c5c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    switch(scause) {
    80002c54:	00800793          	li	a5,8
    80002c58:	02f77a63          	bgeu	a4,a5,80002c8c <_ZN5Riscv20handleSupervisorTrapEv+0x110>

            return;
            //break;
    }

    console_handler();
    80002c5c:	00004097          	auipc	ra,0x4
    80002c60:	e04080e7          	jalr	-508(ra) # 80006a60 <console_handler>
}
    80002c64:	07813083          	ld	ra,120(sp)
    80002c68:	07013403          	ld	s0,112(sp)
    80002c6c:	06813483          	ld	s1,104(sp)
    80002c70:	06013903          	ld	s2,96(sp)
    80002c74:	05813983          	ld	s3,88(sp)
    80002c78:	05013a03          	ld	s4,80(sp)
    80002c7c:	04813a83          	ld	s5,72(sp)
    80002c80:	04013b03          	ld	s6,64(sp)
    80002c84:	08010113          	addi	sp,sp,128
    80002c88:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002c8c:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002c90:	14102773          	csrr	a4,sepc
    80002c94:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80002c98:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    80002c9c:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    80002ca0:	00100713          	li	a4,1
    80002ca4:	06e78a63          	beq	a5,a4,80002d18 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
            else if(operation == MemoryAllocator::MEM_FREE)
    80002ca8:	00200713          	li	a4,2
    80002cac:	08e78463          	beq	a5,a4,80002d34 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
            else if(operation == PCB::THREAD_CREATE)
    80002cb0:	01100713          	li	a4,17
    80002cb4:	08e78a63          	beq	a5,a4,80002d48 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
            else if(operation == PCB::THREAD_DISPATCH)
    80002cb8:	01300713          	li	a4,19
    80002cbc:	0ce78c63          	beq	a5,a4,80002d94 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
            else if(operation == PCB::THREAD_EXIT)
    80002cc0:	01200713          	li	a4,18
    80002cc4:	0ee78c63          	beq	a5,a4,80002dbc <_ZN5Riscv20handleSupervisorTrapEv+0x240>
            else if(operation == PCB::TIME_SLEEP)
    80002cc8:	03100713          	li	a4,49
    80002ccc:	14e78863          	beq	a5,a4,80002e1c <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
            else if(operation == KSemaphore::SEM_OPEN)
    80002cd0:	02100713          	li	a4,33
    80002cd4:	18e78863          	beq	a5,a4,80002e64 <_ZN5Riscv20handleSupervisorTrapEv+0x2e8>
            else if(operation == KSemaphore::SEM_WAIT)
    80002cd8:	02300713          	li	a4,35
    80002cdc:	1ce78263          	beq	a5,a4,80002ea0 <_ZN5Riscv20handleSupervisorTrapEv+0x324>
            else if(operation == KSemaphore::SEM_SIGNAL)
    80002ce0:	02400713          	li	a4,36
    80002ce4:	1ce78863          	beq	a5,a4,80002eb4 <_ZN5Riscv20handleSupervisorTrapEv+0x338>
            else if(operation == KSemaphore::SEM_CLOSE)
    80002ce8:	02200713          	li	a4,34
    80002cec:	04e79063          	bne	a5,a4,80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002cf0:	00058913          	mv	s2,a1
                delete kSem;
    80002cf4:	00090e63          	beqz	s2,80002d10 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    80002cf8:	00090513          	mv	a0,s2
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	750080e7          	jalr	1872(ra) # 8000344c <_ZN10KSemaphoreD1Ev>
    80002d04:	00090513          	mv	a0,s2
    80002d08:	00001097          	auipc	ra,0x1
    80002d0c:	880080e7          	jalr	-1920(ra) # 80003588 <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    80002d10:	00000513          	li	a0,0
    80002d14:	0180006f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002d18:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002d1c:	00651513          	slli	a0,a0,0x6
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	594080e7          	jalr	1428(ra) # 800032b4 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002d28:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002d2c:	14149073          	csrw	sepc,s1
}
    80002d30:	f35ff06f          	j	80002c64 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002d34:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	5a4080e7          	jalr	1444(ra) # 800032dc <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002d40:	00050513          	mv	a0,a0
    80002d44:	fe9ff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002d48:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002d4c:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002d50:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002d54:	05800513          	li	a0,88
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	1dc080e7          	jalr	476(ra) # 80001f34 <_ZN3PCBnwEm>
    80002d60:	00050993          	mv	s3,a0
    80002d64:	00300713          	li	a4,3
    80002d68:	00090693          	mv	a3,s2
    80002d6c:	000b0613          	mv	a2,s6
    80002d70:	000a8593          	mv	a1,s5
    80002d74:	fffff097          	auipc	ra,0xfffff
    80002d78:	11c080e7          	jalr	284(ra) # 80001e90 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80002d7c:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002d80:	00098663          	beqz	s3,80002d8c <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    __asm__ volatile("li a0, 0");
    80002d84:	00000513          	li	a0,0
    80002d88:	fa5ff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d8c:	fff00513          	li	a0,-1
    80002d90:	f9dff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d94:	100027f3          	csrr	a5,sstatus
    80002d98:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002d9c:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    80002da0:	00006797          	auipc	a5,0x6
    80002da4:	cd87b783          	ld	a5,-808(a5) # 80008a78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002da8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	204080e7          	jalr	516(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002db4:	10091073          	csrw	sstatus,s2
}
    80002db8:	f75ff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                if(PCB::running == 0)
    80002dbc:	00006797          	auipc	a5,0x6
    80002dc0:	ccc7b783          	ld	a5,-820(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002dc4:	0007b783          	ld	a5,0(a5)
    80002dc8:	04078663          	beqz	a5,80002e14 <_ZN5Riscv20handleSupervisorTrapEv+0x298>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002dcc:	100027f3          	csrr	a5,sstatus
    80002dd0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002dd4:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80002dd8:	00006797          	auipc	a5,0x6
    80002ddc:	ca07b783          	ld	a5,-864(a5) # 80008a78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002de0:	0007b023          	sd	zero,0(a5)
                PCB::exitingPCB = PCB::running;
    80002de4:	00006797          	auipc	a5,0x6
    80002de8:	ca47b783          	ld	a5,-860(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002dec:	0007b783          	ld	a5,0(a5)
    80002df0:	00006717          	auipc	a4,0x6
    80002df4:	c8073703          	ld	a4,-896(a4) # 80008a70 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002df8:	00f73023          	sd	a5,0(a4)
    void setState(State s) {state = s;}
    80002dfc:	00400713          	li	a4,4
    80002e00:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    80002e04:	fffff097          	auipc	ra,0xfffff
    80002e08:	1ac080e7          	jalr	428(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002e0c:	10091073          	csrw	sstatus,s2
}
    80002e10:	f1dff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002e14:	fff00513          	li	a0,-1
                    return;
    80002e18:	e4dff06f          	j	80002c64 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80002e1c:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002e20:	100027f3          	csrr	a5,sstatus
    80002e24:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002e28:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80002e2c:	00006797          	auipc	a5,0x6
    80002e30:	c4c7b783          	ld	a5,-948(a5) # 80008a78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e34:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    80002e38:	00006797          	auipc	a5,0x6
    80002e3c:	c507b783          	ld	a5,-944(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e40:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002e44:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	350080e7          	jalr	848(ra) # 80002198 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80002e50:	fffff097          	auipc	ra,0xfffff
    80002e54:	160080e7          	jalr	352(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002e58:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    80002e5c:	00000513          	li	a0,0
    80002e60:	ecdff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80002e64:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80002e68:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    80002e6c:	01800513          	li	a0,24
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	6f0080e7          	jalr	1776(ra) # 80003560 <_ZN10KSemaphorenwEm>
    80002e78:	00050913          	mv	s2,a0
    80002e7c:	000a059b          	sext.w	a1,s4
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	484080e7          	jalr	1156(ra) # 80003304 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80002e88:	0129b023          	sd	s2,0(s3)
                if(newSem == 0)
    80002e8c:	00090663          	beqz	s2,80002e98 <_ZN5Riscv20handleSupervisorTrapEv+0x31c>
                        __asm__ volatile("li a0, 0");
    80002e90:	00000513          	li	a0,0
    80002e94:	e99ff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002e98:	fff00513          	li	a0,-1
    80002e9c:	e91ff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002ea0:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	508080e7          	jalr	1288(ra) # 800033ac <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002eac:	00050513          	mv	a0,a0
    80002eb0:	e7dff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002eb4:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	658080e7          	jalr	1624(ra) # 80003510 <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002ec0:	00050513          	mv	a0,a0
    80002ec4:	e69ff06f          	j	80002d2c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    80002ec8:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002ecc:	00098513          	mv	a0,s3
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	08c080e7          	jalr	140(ra) # 80001f5c <_ZN3PCBdlEPv>
    80002ed8:	00048513          	mv	a0,s1
    80002edc:	00007097          	auipc	ra,0x7
    80002ee0:	d5c080e7          	jalr	-676(ra) # 80009c38 <_Unwind_Resume>
    80002ee4:	00050493          	mv	s1,a0
                KSemaphore* newSem = new KSemaphore(val);
    80002ee8:	00090513          	mv	a0,s2
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	69c080e7          	jalr	1692(ra) # 80003588 <_ZN10KSemaphoredlEPv>
    80002ef4:	00048513          	mv	a0,s1
    80002ef8:	00007097          	auipc	ra,0x7
    80002efc:	d40080e7          	jalr	-704(ra) # 80009c38 <_Unwind_Resume>

0000000080002f00 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002f00:	ff010113          	addi	sp,sp,-16
    80002f04:	00813423          	sd	s0,8(sp)
    80002f08:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002f0c:	00006717          	auipc	a4,0x6
    80002f10:	c1c72703          	lw	a4,-996(a4) # 80008b28 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002f14:	00100793          	li	a5,1
    80002f18:	04f70263          	beq	a4,a5,80002f5c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002f1c:	00006797          	auipc	a5,0x6
    80002f20:	c0c78793          	addi	a5,a5,-1012 # 80008b28 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002f24:	00100713          	li	a4,1
    80002f28:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002f2c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002f30:	00006717          	auipc	a4,0x6
    80002f34:	b3073703          	ld	a4,-1232(a4) # 80008a60 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f38:	00073703          	ld	a4,0(a4)
    80002f3c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002f40:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002f44:	00006797          	auipc	a5,0x6
    80002f48:	b4c7b783          	ld	a5,-1204(a5) # 80008a90 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002f4c:	0007b783          	ld	a5,0(a5)
    80002f50:	40e787b3          	sub	a5,a5,a4
    80002f54:	ff178793          	addi	a5,a5,-15
    80002f58:	00f73023          	sd	a5,0(a4)
}
    80002f5c:	00813403          	ld	s0,8(sp)
    80002f60:	01010113          	addi	sp,sp,16
    80002f64:	00008067          	ret

0000000080002f68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002f68:	fe010113          	addi	sp,sp,-32
    80002f6c:	00113c23          	sd	ra,24(sp)
    80002f70:	00813823          	sd	s0,16(sp)
    80002f74:	00913423          	sd	s1,8(sp)
    80002f78:	01213023          	sd	s2,0(sp)
    80002f7c:	02010413          	addi	s0,sp,32
    80002f80:	00050493          	mv	s1,a0
    80002f84:	00058913          	mv	s2,a1

    initMemory();
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	f78080e7          	jalr	-136(ra) # 80002f00 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002f90:	00006797          	auipc	a5,0x6
    80002f94:	ba07b783          	ld	a5,-1120(a5) # 80008b30 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002f98:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002f9c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80002fa0:	00000713          	li	a4,0
    while(curr != 0)
    80002fa4:	00078c63          	beqz	a5,80002fbc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002fa8:	00f4e863          	bltu	s1,a5,80002fb8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80002fac:	00078713          	mv	a4,a5
        curr = curr->next;
    80002fb0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002fb4:	ff1ff06f          	j	80002fa4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80002fb8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002fbc:	02070063          	beqz	a4,80002fdc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002fc0:	00973423          	sd	s1,8(a4)
}
    80002fc4:	01813083          	ld	ra,24(sp)
    80002fc8:	01013403          	ld	s0,16(sp)
    80002fcc:	00813483          	ld	s1,8(sp)
    80002fd0:	00013903          	ld	s2,0(sp)
    80002fd4:	02010113          	addi	sp,sp,32
    80002fd8:	00008067          	ret
        headAllocated = newAllocated;
    80002fdc:	00006797          	auipc	a5,0x6
    80002fe0:	b497ba23          	sd	s1,-1196(a5) # 80008b30 <_ZN15MemoryAllocator13headAllocatedE>
    80002fe4:	fe1ff06f          	j	80002fc4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080002fe8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80002fe8:	fe010113          	addi	sp,sp,-32
    80002fec:	00113c23          	sd	ra,24(sp)
    80002ff0:	00813823          	sd	s0,16(sp)
    80002ff4:	00913423          	sd	s1,8(sp)
    80002ff8:	01213023          	sd	s2,0(sp)
    80002ffc:	02010413          	addi	s0,sp,32
    80003000:	00050913          	mv	s2,a0
    initMemory();
    80003004:	00000097          	auipc	ra,0x0
    80003008:	efc080e7          	jalr	-260(ra) # 80002f00 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000300c:	00006497          	auipc	s1,0x6
    80003010:	b2c4b483          	ld	s1,-1236(s1) # 80008b38 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003014:	00000713          	li	a4,0
    while(curr != 0) {
    80003018:	0a048863          	beqz	s1,800030c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>

        if(curr->size >= size) {
    8000301c:	0004b783          	ld	a5,0(s1)
    80003020:	0127f863          	bgeu	a5,s2,80003030 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003024:	00048713          	mv	a4,s1
        curr = curr->next;
    80003028:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    8000302c:	fedff06f          	j	80003018 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003030:	01090693          	addi	a3,s2,16
    80003034:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003038:	00006617          	auipc	a2,0x6
    8000303c:	a5863603          	ld	a2,-1448(a2) # 80008a90 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003040:	00063603          	ld	a2,0(a2)
    80003044:	04d66c63          	bltu	a2,a3,8000309c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003048:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    8000304c:	01000613          	li	a2,16
    80003050:	02f67663          	bgeu	a2,a5,8000307c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003054:	0084b603          	ld	a2,8(s1)
    80003058:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    8000305c:	ff078793          	addi	a5,a5,-16
    80003060:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003064:	00070663          	beqz	a4,80003070 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003068:	00d73423          	sd	a3,8(a4)
    8000306c:	0380006f          	j	800030a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003070:	00006797          	auipc	a5,0x6
    80003074:	acd7b423          	sd	a3,-1336(a5) # 80008b38 <_ZN15MemoryAllocator8headFreeE>
    80003078:	02c0006f          	j	800030a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    8000307c:	00070863          	beqz	a4,8000308c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003080:	0084b783          	ld	a5,8(s1)
    80003084:	00f73423          	sd	a5,8(a4)
    80003088:	01c0006f          	j	800030a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    8000308c:	0084b783          	ld	a5,8(s1)
    80003090:	00006717          	auipc	a4,0x6
    80003094:	aaf73423          	sd	a5,-1368(a4) # 80008b38 <_ZN15MemoryAllocator8headFreeE>
    80003098:	00c0006f          	j	800030a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    8000309c:	02070063          	beqz	a4,800030bc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800030a0:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800030a4:	00090593          	mv	a1,s2
    800030a8:	00048513          	mv	a0,s1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	ebc080e7          	jalr	-324(ra) # 80002f68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800030b4:	01048513          	addi	a0,s1,16
            break;
    800030b8:	0140006f          	j	800030cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800030bc:	00006797          	auipc	a5,0x6
    800030c0:	a607be23          	sd	zero,-1412(a5) # 80008b38 <_ZN15MemoryAllocator8headFreeE>
    800030c4:	fe1ff06f          	j	800030a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800030c8:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800030cc:	01813083          	ld	ra,24(sp)
    800030d0:	01013403          	ld	s0,16(sp)
    800030d4:	00813483          	ld	s1,8(sp)
    800030d8:	00013903          	ld	s2,0(sp)
    800030dc:	02010113          	addi	sp,sp,32
    800030e0:	00008067          	ret

00000000800030e4 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    800030e4:	ff010113          	addi	sp,sp,-16
    800030e8:	00113423          	sd	ra,8(sp)
    800030ec:	00813023          	sd	s0,0(sp)
    800030f0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800030f4:	00000097          	auipc	ra,0x0
    800030f8:	ef4080e7          	jalr	-268(ra) # 80002fe8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800030fc:	00813083          	ld	ra,8(sp)
    80003100:	00013403          	ld	s0,0(sp)
    80003104:	01010113          	addi	sp,sp,16
    80003108:	00008067          	ret

000000008000310c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    8000310c:	fe010113          	addi	sp,sp,-32
    80003110:	00113c23          	sd	ra,24(sp)
    80003114:	00813823          	sd	s0,16(sp)
    80003118:	00913423          	sd	s1,8(sp)
    8000311c:	01213023          	sd	s2,0(sp)
    80003120:	02010413          	addi	s0,sp,32
    80003124:	00050493          	mv	s1,a0
    80003128:	00058913          	mv	s2,a1
    initMemory();
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	dd4080e7          	jalr	-556(ra) # 80002f00 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003134:	00006797          	auipc	a5,0x6
    80003138:	a047b783          	ld	a5,-1532(a5) # 80008b38 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    8000313c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003140:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003144:	00000713          	li	a4,0
    while(curr != 0)
    80003148:	00078c63          	beqz	a5,80003160 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    8000314c:	00f4e863          	bltu	s1,a5,8000315c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003150:	00078713          	mv	a4,a5
        curr = curr->next;
    80003154:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003158:	ff1ff06f          	j	80003148 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    8000315c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003160:	04070663          	beqz	a4,800031ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003164:	00973423          	sd	s1,8(a4)

    //todo
    //kad proradi kfree odkomentarisi ovo
    //test it few times
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003168:	0084b783          	ld	a5,8(s1)
    8000316c:	00078a63          	beqz	a5,80003180 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003170:	0004b603          	ld	a2,0(s1)
    80003174:	01060693          	addi	a3,a2,16
    80003178:	00d486b3          	add	a3,s1,a3
    8000317c:	02d78e63          	beq	a5,a3,800031b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003180:	00070a63          	beqz	a4,80003194 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003184:	00073683          	ld	a3,0(a4)
    80003188:	01068793          	addi	a5,a3,16
    8000318c:	00f707b3          	add	a5,a4,a5
    80003190:	04978263          	beq	a5,s1,800031d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003194:	01813083          	ld	ra,24(sp)
    80003198:	01013403          	ld	s0,16(sp)
    8000319c:	00813483          	ld	s1,8(sp)
    800031a0:	00013903          	ld	s2,0(sp)
    800031a4:	02010113          	addi	sp,sp,32
    800031a8:	00008067          	ret
        headFree = newSegment;
    800031ac:	00006797          	auipc	a5,0x6
    800031b0:	9897b623          	sd	s1,-1652(a5) # 80008b38 <_ZN15MemoryAllocator8headFreeE>
    800031b4:	fb5ff06f          	j	80003168 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800031b8:	0007b683          	ld	a3,0(a5)
    800031bc:	00d60633          	add	a2,a2,a3
    800031c0:	01060613          	addi	a2,a2,16
    800031c4:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800031c8:	0087b783          	ld	a5,8(a5)
    800031cc:	00f4b423          	sd	a5,8(s1)
    800031d0:	fb1ff06f          	j	80003180 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800031d4:	0004b783          	ld	a5,0(s1)
    800031d8:	00f686b3          	add	a3,a3,a5
    800031dc:	01068693          	addi	a3,a3,16
    800031e0:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800031e4:	0084b783          	ld	a5,8(s1)
    800031e8:	00f73423          	sd	a5,8(a4)
}
    800031ec:	fa9ff06f          	j	80003194 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

00000000800031f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00113c23          	sd	ra,24(sp)
    800031f8:	00813823          	sd	s0,16(sp)
    800031fc:	00913423          	sd	s1,8(sp)
    80003200:	01213023          	sd	s2,0(sp)
    80003204:	02010413          	addi	s0,sp,32
    80003208:	00050913          	mv	s2,a0
    initMemory();
    8000320c:	00000097          	auipc	ra,0x0
    80003210:	cf4080e7          	jalr	-780(ra) # 80002f00 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003214:	00006497          	auipc	s1,0x6
    80003218:	91c4b483          	ld	s1,-1764(s1) # 80008b30 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    8000321c:	00000713          	li	a4,0
    while(curr != 0)
    80003220:	02048a63          	beqz	s1,80003254 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003224:	01048793          	addi	a5,s1,16
    80003228:	01278863          	beq	a5,s2,80003238 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    8000322c:	00048713          	mv	a4,s1
        curr = curr->next;
    80003230:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003234:	fedff06f          	j	80003220 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003238:	02070e63          	beqz	a4,80003274 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    8000323c:	0084b783          	ld	a5,8(s1)
    80003240:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003244:	0004b583          	ld	a1,0(s1)
    80003248:	00048513          	mv	a0,s1
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	ec0080e7          	jalr	-320(ra) # 8000310c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003254:	02048863          	beqz	s1,80003284 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003258:	00000513          	li	a0,0
    else
        return 1;
}
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	00813483          	ld	s1,8(sp)
    80003268:	00013903          	ld	s2,0(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret
                headAllocated = curr->next;
    80003274:	0084b783          	ld	a5,8(s1)
    80003278:	00006717          	auipc	a4,0x6
    8000327c:	8af73c23          	sd	a5,-1864(a4) # 80008b30 <_ZN15MemoryAllocator13headAllocatedE>
    80003280:	fc5ff06f          	j	80003244 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003284:	00100513          	li	a0,1
    80003288:	fd5ff06f          	j	8000325c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

000000008000328c <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    8000328c:	ff010113          	addi	sp,sp,-16
    80003290:	00113423          	sd	ra,8(sp)
    80003294:	00813023          	sd	s0,0(sp)
    80003298:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	f54080e7          	jalr	-172(ra) # 800031f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800032a4:	00813083          	ld	ra,8(sp)
    800032a8:	00013403          	ld	s0,0(sp)
    800032ac:	01010113          	addi	sp,sp,16
    800032b0:	00008067          	ret

00000000800032b4 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00113423          	sd	ra,8(sp)
    800032bc:	00813023          	sd	s0,0(sp)
    800032c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	e20080e7          	jalr	-480(ra) # 800030e4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800032cc:	00813083          	ld	ra,8(sp)
    800032d0:	00013403          	ld	s0,0(sp)
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00008067          	ret

00000000800032dc <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800032dc:	ff010113          	addi	sp,sp,-16
    800032e0:	00113423          	sd	ra,8(sp)
    800032e4:	00813023          	sd	s0,0(sp)
    800032e8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	fa0080e7          	jalr	-96(ra) # 8000328c <_ZN15MemoryAllocator8mem_freeEPv>
    800032f4:	00813083          	ld	ra,8(sp)
    800032f8:	00013403          	ld	s0,0(sp)
    800032fc:	01010113          	addi	sp,sp,16
    80003300:	00008067          	ret

0000000080003304 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val) {
    80003304:	ff010113          	addi	sp,sp,-16
    80003308:	00813423          	sd	s0,8(sp)
    8000330c:	01010413          	addi	s0,sp,16
    this->val = this->beginVal = val;
    80003310:	00b52a23          	sw	a1,20(a0)
    80003314:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003318:	00053423          	sd	zero,8(a0)
    8000331c:	00053023          	sd	zero,0(a0)
}
    80003320:	00813403          	ld	s0,8(sp)
    80003324:	01010113          	addi	sp,sp,16
    80003328:	00008067          	ret

000000008000332c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000332c:	ff010113          	addi	sp,sp,-16
    80003330:	00813423          	sd	s0,8(sp)
    80003334:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003338:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    8000333c:	00053783          	ld	a5,0(a0)
    80003340:	00078e63          	beqz	a5,8000335c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003344:	00853783          	ld	a5,8(a0)
    80003348:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    8000334c:	00b53423          	sd	a1,8(a0)
    }
}
    80003350:	00813403          	ld	s0,8(sp)
    80003354:	01010113          	addi	sp,sp,16
    80003358:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000335c:	00b53423          	sd	a1,8(a0)
    80003360:	00b53023          	sd	a1,0(a0)
    80003364:	fedff06f          	j	80003350 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003368 <_ZN10KSemaphore5blockEv>:

//todo
void KSemaphore::block() {
    80003368:	ff010113          	addi	sp,sp,-16
    8000336c:	00113423          	sd	ra,8(sp)
    80003370:	00813023          	sd	s0,0(sp)
    80003374:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003378:	00005797          	auipc	a5,0x5
    8000337c:	7107b783          	ld	a5,1808(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003380:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003384:	00200793          	li	a5,2
    80003388:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	fa0080e7          	jalr	-96(ra) # 8000332c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	c1c080e7          	jalr	-996(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
}
    8000339c:	00813083          	ld	ra,8(sp)
    800033a0:	00013403          	ld	s0,0(sp)
    800033a4:	01010113          	addi	sp,sp,16
    800033a8:	00008067          	ret

00000000800033ac <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800033ac:	01052783          	lw	a5,16(a0)
    800033b0:	fff7879b          	addiw	a5,a5,-1
    800033b4:	00f52823          	sw	a5,16(a0)
    800033b8:	02079713          	slli	a4,a5,0x20
    800033bc:	00074663          	bltz	a4,800033c8 <_ZN10KSemaphore4waitEv+0x1c>
}
    800033c0:	00000513          	li	a0,0
    800033c4:	00008067          	ret
uint64 KSemaphore::wait() {
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00113423          	sd	ra,8(sp)
    800033d0:	00813023          	sd	s0,0(sp)
    800033d4:	01010413          	addi	s0,sp,16
        block();
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	f90080e7          	jalr	-112(ra) # 80003368 <_ZN10KSemaphore5blockEv>
}
    800033e0:	00000513          	li	a0,0
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	01010113          	addi	sp,sp,16
    800033f0:	00008067          	ret

00000000800033f4 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003400:	00053503          	ld	a0,0(a0)
    80003404:	00813403          	ld	s0,8(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret

0000000080003410 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003410:	ff010113          	addi	sp,sp,-16
    80003414:	00813423          	sd	s0,8(sp)
    80003418:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000341c:	00053783          	ld	a5,0(a0)
    80003420:	00078c63          	beqz	a5,80003438 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003424:	0007b703          	ld	a4,0(a5)
    80003428:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000342c:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    80003430:	00053783          	ld	a5,0(a0)
    80003434:	00078863          	beqz	a5,80003444 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003438:	00813403          	ld	s0,8(sp)
    8000343c:	01010113          	addi	sp,sp,16
    80003440:	00008067          	ret
        tailBlocked =0;
    80003444:	00053423          	sd	zero,8(a0)
    80003448:	ff1ff06f          	j	80003438 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000344c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore() {
    8000344c:	fe010113          	addi	sp,sp,-32
    80003450:	00113c23          	sd	ra,24(sp)
    80003454:	00813823          	sd	s0,16(sp)
    80003458:	00913423          	sd	s1,8(sp)
    8000345c:	01213023          	sd	s2,0(sp)
    80003460:	02010413          	addi	s0,sp,32
    80003464:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003468:	00090513          	mv	a0,s2
    8000346c:	00000097          	auipc	ra,0x0
    80003470:	f88080e7          	jalr	-120(ra) # 800033f4 <_ZN10KSemaphore15getFirstBlockedEv>
    80003474:	00050493          	mv	s1,a0
    80003478:	02050063          	beqz	a0,80003498 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    8000347c:	00090513          	mv	a0,s2
    80003480:	00000097          	auipc	ra,0x0
    80003484:	f90080e7          	jalr	-112(ra) # 80003410 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80003488:	00048513          	mv	a0,s1
    8000348c:	fffff097          	auipc	ra,0xfffff
    80003490:	210080e7          	jalr	528(ra) # 8000269c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003494:	fd5ff06f          	j	80003468 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003498:	01813083          	ld	ra,24(sp)
    8000349c:	01013403          	ld	s0,16(sp)
    800034a0:	00813483          	ld	s1,8(sp)
    800034a4:	00013903          	ld	s2,0(sp)
    800034a8:	02010113          	addi	sp,sp,32
    800034ac:	00008067          	ret

00000000800034b0 <_ZN10KSemaphore7unblockEv>:

//todo
void KSemaphore::unblock() {
    800034b0:	fe010113          	addi	sp,sp,-32
    800034b4:	00113c23          	sd	ra,24(sp)
    800034b8:	00813823          	sd	s0,16(sp)
    800034bc:	00913423          	sd	s1,8(sp)
    800034c0:	01213023          	sd	s2,0(sp)
    800034c4:	02010413          	addi	s0,sp,32
    800034c8:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800034cc:	00000097          	auipc	ra,0x0
    800034d0:	f28080e7          	jalr	-216(ra) # 800033f4 <_ZN10KSemaphore15getFirstBlockedEv>
    800034d4:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800034d8:	00090513          	mv	a0,s2
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	f34080e7          	jalr	-204(ra) # 80003410 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800034e4:	00048a63          	beqz	s1,800034f8 <_ZN10KSemaphore7unblockEv+0x48>
    800034e8:	0204a823          	sw	zero,48(s1)
    {
        fr->setState(PCB::READY);
        Scheduler::put(fr);
    800034ec:	00048513          	mv	a0,s1
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	1ac080e7          	jalr	428(ra) # 8000269c <_ZN9Scheduler3putEP3PCB>
    }
}
    800034f8:	01813083          	ld	ra,24(sp)
    800034fc:	01013403          	ld	s0,16(sp)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	00013903          	ld	s2,0(sp)
    80003508:	02010113          	addi	sp,sp,32
    8000350c:	00008067          	ret

0000000080003510 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003510:	01052783          	lw	a5,16(a0)
    80003514:	0017879b          	addiw	a5,a5,1
    80003518:	0007871b          	sext.w	a4,a5
    8000351c:	00f52823          	sw	a5,16(a0)
    80003520:	00e05a63          	blez	a4,80003534 <_ZN10KSemaphore6signalEv+0x24>
        val = beginVal;
    80003524:	01452783          	lw	a5,20(a0)
    80003528:	00f52823          	sw	a5,16(a0)
}
    8000352c:	00000513          	li	a0,0
    80003530:	00008067          	ret
uint64 KSemaphore::signal() {
    80003534:	ff010113          	addi	sp,sp,-16
    80003538:	00113423          	sd	ra,8(sp)
    8000353c:	00813023          	sd	s0,0(sp)
    80003540:	01010413          	addi	s0,sp,16
        unblock();
    80003544:	00000097          	auipc	ra,0x0
    80003548:	f6c080e7          	jalr	-148(ra) # 800034b0 <_ZN10KSemaphore7unblockEv>
}
    8000354c:	00000513          	li	a0,0
    80003550:	00813083          	ld	ra,8(sp)
    80003554:	00013403          	ld	s0,0(sp)
    80003558:	01010113          	addi	sp,sp,16
    8000355c:	00008067          	ret

0000000080003560 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00113423          	sd	ra,8(sp)
    80003568:	00813023          	sd	s0,0(sp)
    8000356c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003570:	00000097          	auipc	ra,0x0
    80003574:	d44080e7          	jalr	-700(ra) # 800032b4 <_Z7kmallocm>
}
    80003578:	00813083          	ld	ra,8(sp)
    8000357c:	00013403          	ld	s0,0(sp)
    80003580:	01010113          	addi	sp,sp,16
    80003584:	00008067          	ret

0000000080003588 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00113423          	sd	ra,8(sp)
    80003590:	00813023          	sd	s0,0(sp)
    80003594:	01010413          	addi	s0,sp,16
    kfree(p);
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	d44080e7          	jalr	-700(ra) # 800032dc <_Z5kfreePv>
}
    800035a0:	00813083          	ld	ra,8(sp)
    800035a4:	00013403          	ld	s0,0(sp)
    800035a8:	01010113          	addi	sp,sp,16
    800035ac:	00008067          	ret

00000000800035b0 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800035b0:	fe010113          	addi	sp,sp,-32
    800035b4:	00113c23          	sd	ra,24(sp)
    800035b8:	00813823          	sd	s0,16(sp)
    800035bc:	00913423          	sd	s1,8(sp)
    800035c0:	01213023          	sd	s2,0(sp)
    800035c4:	02010413          	addi	s0,sp,32
    800035c8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800035cc:	00000913          	li	s2,0
    800035d0:	00c0006f          	j	800035dc <_Z16producerKeyboardPv+0x2c>
    while ((key = __getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	d50080e7          	jalr	-688(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    800035dc:	00003097          	auipc	ra,0x3
    800035e0:	44c080e7          	jalr	1100(ra) # 80006a28 <__getc>
    800035e4:	0005059b          	sext.w	a1,a0
    800035e8:	01b00793          	li	a5,27
    800035ec:	02f58a63          	beq	a1,a5,80003620 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800035f0:	0084b503          	ld	a0,8(s1)
    800035f4:	00001097          	auipc	ra,0x1
    800035f8:	214080e7          	jalr	532(ra) # 80004808 <_ZN6Buffer3putEi>
        i++;
    800035fc:	0019071b          	addiw	a4,s2,1
    80003600:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003604:	0004a683          	lw	a3,0(s1)
    80003608:	0026979b          	slliw	a5,a3,0x2
    8000360c:	00d787bb          	addw	a5,a5,a3
    80003610:	0017979b          	slliw	a5,a5,0x1
    80003614:	02f767bb          	remw	a5,a4,a5
    80003618:	fc0792e3          	bnez	a5,800035dc <_Z16producerKeyboardPv+0x2c>
    8000361c:	fb9ff06f          	j	800035d4 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003620:	00100793          	li	a5,1
    80003624:	00005717          	auipc	a4,0x5
    80003628:	50f72e23          	sw	a5,1308(a4) # 80008b40 <threadEnd>

    delete data->buffer;
    8000362c:	0084b903          	ld	s2,8(s1)
    80003630:	00090e63          	beqz	s2,8000364c <_Z16producerKeyboardPv+0x9c>
    80003634:	00090513          	mv	a0,s2
    80003638:	00001097          	auipc	ra,0x1
    8000363c:	124080e7          	jalr	292(ra) # 8000475c <_ZN6BufferD1Ev>
    80003640:	00090513          	mv	a0,s2
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	178080e7          	jalr	376(ra) # 800027bc <_ZdlPv>

    sem_signal(data->wait);
    8000364c:	0104b503          	ld	a0,16(s1)
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	dac080e7          	jalr	-596(ra) # 800013fc <sem_signal>
}
    80003658:	01813083          	ld	ra,24(sp)
    8000365c:	01013403          	ld	s0,16(sp)
    80003660:	00813483          	ld	s1,8(sp)
    80003664:	00013903          	ld	s2,0(sp)
    80003668:	02010113          	addi	sp,sp,32
    8000366c:	00008067          	ret

0000000080003670 <_Z8producerPv>:

void producer(void *arg) {
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00113c23          	sd	ra,24(sp)
    80003678:	00813823          	sd	s0,16(sp)
    8000367c:	00913423          	sd	s1,8(sp)
    80003680:	01213023          	sd	s2,0(sp)
    80003684:	02010413          	addi	s0,sp,32
    80003688:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000368c:	00000913          	li	s2,0
    80003690:	00c0006f          	j	8000369c <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	c90080e7          	jalr	-880(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    8000369c:	00005797          	auipc	a5,0x5
    800036a0:	4a47a783          	lw	a5,1188(a5) # 80008b40 <threadEnd>
    800036a4:	02079e63          	bnez	a5,800036e0 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800036a8:	0004a583          	lw	a1,0(s1)
    800036ac:	0305859b          	addiw	a1,a1,48
    800036b0:	0084b503          	ld	a0,8(s1)
    800036b4:	00001097          	auipc	ra,0x1
    800036b8:	154080e7          	jalr	340(ra) # 80004808 <_ZN6Buffer3putEi>
        i++;
    800036bc:	0019071b          	addiw	a4,s2,1
    800036c0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800036c4:	0004a683          	lw	a3,0(s1)
    800036c8:	0026979b          	slliw	a5,a3,0x2
    800036cc:	00d787bb          	addw	a5,a5,a3
    800036d0:	0017979b          	slliw	a5,a5,0x1
    800036d4:	02f767bb          	remw	a5,a4,a5
    800036d8:	fc0792e3          	bnez	a5,8000369c <_Z8producerPv+0x2c>
    800036dc:	fb9ff06f          	j	80003694 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800036e0:	0104b503          	ld	a0,16(s1)
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	d18080e7          	jalr	-744(ra) # 800013fc <sem_signal>
}
    800036ec:	01813083          	ld	ra,24(sp)
    800036f0:	01013403          	ld	s0,16(sp)
    800036f4:	00813483          	ld	s1,8(sp)
    800036f8:	00013903          	ld	s2,0(sp)
    800036fc:	02010113          	addi	sp,sp,32
    80003700:	00008067          	ret

0000000080003704 <_Z8consumerPv>:

void consumer(void *arg) {
    80003704:	fd010113          	addi	sp,sp,-48
    80003708:	02113423          	sd	ra,40(sp)
    8000370c:	02813023          	sd	s0,32(sp)
    80003710:	00913c23          	sd	s1,24(sp)
    80003714:	01213823          	sd	s2,16(sp)
    80003718:	01313423          	sd	s3,8(sp)
    8000371c:	03010413          	addi	s0,sp,48
    80003720:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80003724:	00000993          	li	s3,0
    80003728:	01c0006f          	j	80003744 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	bf8080e7          	jalr	-1032(ra) # 80001324 <thread_dispatch>
    80003734:	0500006f          	j	80003784 <_Z8consumerPv+0x80>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    80003738:	00a00513          	li	a0,10
    8000373c:	00003097          	auipc	ra,0x3
    80003740:	2b0080e7          	jalr	688(ra) # 800069ec <__putc>
    while (!threadEnd) {
    80003744:	00005797          	auipc	a5,0x5
    80003748:	3fc7a783          	lw	a5,1020(a5) # 80008b40 <threadEnd>
    8000374c:	04079463          	bnez	a5,80003794 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80003750:	00893503          	ld	a0,8(s2)
    80003754:	00001097          	auipc	ra,0x1
    80003758:	144080e7          	jalr	324(ra) # 80004898 <_ZN6Buffer3getEv>
        i++;
    8000375c:	0019849b          	addiw	s1,s3,1
    80003760:	0004899b          	sext.w	s3,s1
    80003764:	0ff57513          	andi	a0,a0,255
    80003768:	00003097          	auipc	ra,0x3
    8000376c:	284080e7          	jalr	644(ra) # 800069ec <__putc>
        if (i % (5 * data->id) == 0) {
    80003770:	00092703          	lw	a4,0(s2)
    80003774:	0027179b          	slliw	a5,a4,0x2
    80003778:	00e787bb          	addw	a5,a5,a4
    8000377c:	02f4e7bb          	remw	a5,s1,a5
    80003780:	fa0786e3          	beqz	a5,8000372c <_Z8consumerPv+0x28>
        }

        if (i % 80 == 0) {
    80003784:	05000793          	li	a5,80
    80003788:	02f4e4bb          	remw	s1,s1,a5
    8000378c:	fa049ce3          	bnez	s1,80003744 <_Z8consumerPv+0x40>
    80003790:	fa9ff06f          	j	80003738 <_Z8consumerPv+0x34>
            putc('\n');
        }
    }

    sem_signal(data->wait);
    80003794:	01093503          	ld	a0,16(s2)
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	c64080e7          	jalr	-924(ra) # 800013fc <sem_signal>
}
    800037a0:	02813083          	ld	ra,40(sp)
    800037a4:	02013403          	ld	s0,32(sp)
    800037a8:	01813483          	ld	s1,24(sp)
    800037ac:	01013903          	ld	s2,16(sp)
    800037b0:	00813983          	ld	s3,8(sp)
    800037b4:	03010113          	addi	sp,sp,48
    800037b8:	00008067          	ret

00000000800037bc <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    800037bc:	f2010113          	addi	sp,sp,-224
    800037c0:	0c113c23          	sd	ra,216(sp)
    800037c4:	0c813823          	sd	s0,208(sp)
    800037c8:	0c913423          	sd	s1,200(sp)
    800037cc:	0d213023          	sd	s2,192(sp)
    800037d0:	0e010413          	addi	s0,sp,224
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800037d4:	00004517          	auipc	a0,0x4
    800037d8:	9b450513          	addi	a0,a0,-1612 # 80007188 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    800037dc:	00000097          	auipc	ra,0x0
    800037e0:	7e0080e7          	jalr	2016(ra) # 80003fbc <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    800037e4:	00004517          	auipc	a0,0x4
    800037e8:	9c450513          	addi	a0,a0,-1596 # 800071a8 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    800037ec:	00000097          	auipc	ra,0x0
    800037f0:	7d0080e7          	jalr	2000(ra) # 80003fbc <_Z11printStringPKc>
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800037f4:	00004517          	auipc	a0,0x4
    800037f8:	9d450513          	addi	a0,a0,-1580 # 800071c8 <_ZZN5Riscv12printIntegerEmE6digits+0x50>
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	7c0080e7          	jalr	1984(ra) # 80003fbc <_Z11printStringPKc>
    80003804:	00000613          	li	a2,0
    80003808:	00a00593          	li	a1,10
    8000380c:	00500513          	li	a0,5
    80003810:	00001097          	auipc	ra,0x1
    80003814:	944080e7          	jalr	-1724(ra) # 80004154 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003818:	00004517          	auipc	a0,0x4
    8000381c:	9c850513          	addi	a0,a0,-1592 # 800071e0 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80003820:	00000097          	auipc	ra,0x0
    80003824:	79c080e7          	jalr	1948(ra) # 80003fbc <_Z11printStringPKc>
    80003828:	00000613          	li	a2,0
    8000382c:	00a00593          	li	a1,10
    80003830:	00a00513          	li	a0,10
    80003834:	00001097          	auipc	ra,0x1
    80003838:	920080e7          	jalr	-1760(ra) # 80004154 <_Z8printIntiii>
    printString(".\n");
    8000383c:	00004517          	auipc	a0,0x4
    80003840:	90c50513          	addi	a0,a0,-1780 # 80007148 <CONSOLE_STATUS+0x138>
    80003844:	00000097          	auipc	ra,0x0
    80003848:	778080e7          	jalr	1912(ra) # 80003fbc <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    8000384c:	03800513          	li	a0,56
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	f44080e7          	jalr	-188(ra) # 80002794 <_Znwm>
    80003858:	00050913          	mv	s2,a0
    8000385c:	00a00593          	li	a1,10
    80003860:	00001097          	auipc	ra,0x1
    80003864:	e74080e7          	jalr	-396(ra) # 800046d4 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80003868:	00000593          	li	a1,0
    8000386c:	00005517          	auipc	a0,0x5
    80003870:	2dc50513          	addi	a0,a0,732 # 80008b48 <waitForAll>
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	af8080e7          	jalr	-1288(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    8000387c:	00500793          	li	a5,5
    80003880:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    80003884:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    80003888:	00005797          	auipc	a5,0x5
    8000388c:	2c07b783          	ld	a5,704(a5) # 80008b48 <waitForAll>
    80003890:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003894:	fc040613          	addi	a2,s0,-64
    80003898:	00000597          	auipc	a1,0x0
    8000389c:	e6c58593          	addi	a1,a1,-404 # 80003704 <_Z8consumerPv>
    800038a0:	fd840513          	addi	a0,s0,-40
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	a00080e7          	jalr	-1536(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    800038ac:	00000493          	li	s1,0
    800038b0:	00400793          	li	a5,4
    800038b4:	0697cc63          	blt	a5,s1,8000392c <_Z22producerConsumer_C_APIv+0x170>
        data[i].id = i;
    800038b8:	00149793          	slli	a5,s1,0x1
    800038bc:	009787b3          	add	a5,a5,s1
    800038c0:	00379793          	slli	a5,a5,0x3
    800038c4:	fe040713          	addi	a4,s0,-32
    800038c8:	00f707b3          	add	a5,a4,a5
    800038cc:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    800038d0:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    800038d4:	00005717          	auipc	a4,0x5
    800038d8:	27473703          	ld	a4,628(a4) # 80008b48 <waitForAll>
    800038dc:	f6e7bc23          	sd	a4,-136(a5)

        thread_create(threads + i,
    800038e0:	00048613          	mv	a2,s1
    800038e4:	00349513          	slli	a0,s1,0x3
    800038e8:	f2040713          	addi	a4,s0,-224
    800038ec:	00a70533          	add	a0,a4,a0
    800038f0:	02905863          	blez	s1,80003920 <_Z22producerConsumer_C_APIv+0x164>
    800038f4:	00000597          	auipc	a1,0x0
    800038f8:	d7c58593          	addi	a1,a1,-644 # 80003670 <_Z8producerPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    800038fc:	00161793          	slli	a5,a2,0x1
    80003900:	00c787b3          	add	a5,a5,a2
    80003904:	00379793          	slli	a5,a5,0x3
        thread_create(threads + i,
    80003908:	f4840613          	addi	a2,s0,-184
    8000390c:	00f60633          	add	a2,a2,a5
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	994080e7          	jalr	-1644(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003918:	0014849b          	addiw	s1,s1,1
    8000391c:	f95ff06f          	j	800038b0 <_Z22producerConsumer_C_APIv+0xf4>
        thread_create(threads + i,
    80003920:	00000597          	auipc	a1,0x0
    80003924:	c9058593          	addi	a1,a1,-880 # 800035b0 <_Z16producerKeyboardPv>
    80003928:	fd5ff06f          	j	800038fc <_Z22producerConsumer_C_APIv+0x140>
    }

    thread_dispatch();
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	9f8080e7          	jalr	-1544(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80003934:	00000493          	li	s1,0
    80003938:	00500793          	li	a5,5
    8000393c:	0097ce63          	blt	a5,s1,80003958 <_Z22producerConsumer_C_APIv+0x19c>
        sem_wait(waitForAll);
    80003940:	00005517          	auipc	a0,0x5
    80003944:	20853503          	ld	a0,520(a0) # 80008b48 <waitForAll>
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	a88080e7          	jalr	-1400(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003950:	0014849b          	addiw	s1,s1,1
    80003954:	fe5ff06f          	j	80003938 <_Z22producerConsumer_C_APIv+0x17c>
    }

    sem_close(waitForAll);
    80003958:	00005517          	auipc	a0,0x5
    8000395c:	1f053503          	ld	a0,496(a0) # 80008b48 <waitForAll>
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	a44080e7          	jalr	-1468(ra) # 800013a4 <sem_close>
    80003968:	0d813083          	ld	ra,216(sp)
    8000396c:	0d013403          	ld	s0,208(sp)
    80003970:	0c813483          	ld	s1,200(sp)
    80003974:	0c013903          	ld	s2,192(sp)
    80003978:	0e010113          	addi	sp,sp,224
    8000397c:	00008067          	ret
    80003980:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003984:	00090513          	mv	a0,s2
    80003988:	fffff097          	auipc	ra,0xfffff
    8000398c:	e34080e7          	jalr	-460(ra) # 800027bc <_ZdlPv>
    80003990:	00048513          	mv	a0,s1
    80003994:	00006097          	auipc	ra,0x6
    80003998:	2a4080e7          	jalr	676(ra) # 80009c38 <_Unwind_Resume>

000000008000399c <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00113c23          	sd	ra,24(sp)
    800039a4:	00813823          	sd	s0,16(sp)
    800039a8:	00913423          	sd	s1,8(sp)
    800039ac:	01213023          	sd	s2,0(sp)
    800039b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800039b4:	00000913          	li	s2,0
    800039b8:	0380006f          	j	800039f0 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	968080e7          	jalr	-1688(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800039c4:	00148493          	addi	s1,s1,1
    800039c8:	000027b7          	lui	a5,0x2
    800039cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800039d0:	0097ee63          	bltu	a5,s1,800039ec <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800039d4:	00000713          	li	a4,0
    800039d8:	000077b7          	lui	a5,0x7
    800039dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039e0:	fce7eee3          	bltu	a5,a4,800039bc <_Z11workerBodyAPv+0x20>
    800039e4:	00170713          	addi	a4,a4,1
    800039e8:	ff1ff06f          	j	800039d8 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800039ec:	00190913          	addi	s2,s2,1
    800039f0:	00900793          	li	a5,9
    800039f4:	0527e063          	bltu	a5,s2,80003a34 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800039f8:	00004517          	auipc	a0,0x4
    800039fc:	80050513          	addi	a0,a0,-2048 # 800071f8 <_ZZN5Riscv12printIntegerEmE6digits+0x80>
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	5bc080e7          	jalr	1468(ra) # 80003fbc <_Z11printStringPKc>
    80003a08:	00000613          	li	a2,0
    80003a0c:	00a00593          	li	a1,10
    80003a10:	0009051b          	sext.w	a0,s2
    80003a14:	00000097          	auipc	ra,0x0
    80003a18:	740080e7          	jalr	1856(ra) # 80004154 <_Z8printIntiii>
    80003a1c:	00003517          	auipc	a0,0x3
    80003a20:	7a450513          	addi	a0,a0,1956 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003a24:	00000097          	auipc	ra,0x0
    80003a28:	598080e7          	jalr	1432(ra) # 80003fbc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a2c:	00000493          	li	s1,0
    80003a30:	f99ff06f          	j	800039c8 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003a34:	00003517          	auipc	a0,0x3
    80003a38:	7cc50513          	addi	a0,a0,1996 # 80007200 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80003a3c:	00000097          	auipc	ra,0x0
    80003a40:	580080e7          	jalr	1408(ra) # 80003fbc <_Z11printStringPKc>
    finishedA = true;
    80003a44:	00100793          	li	a5,1
    80003a48:	00005717          	auipc	a4,0x5
    80003a4c:	10f70423          	sb	a5,264(a4) # 80008b50 <finishedA>
}
    80003a50:	01813083          	ld	ra,24(sp)
    80003a54:	01013403          	ld	s0,16(sp)
    80003a58:	00813483          	ld	s1,8(sp)
    80003a5c:	00013903          	ld	s2,0(sp)
    80003a60:	02010113          	addi	sp,sp,32
    80003a64:	00008067          	ret

0000000080003a68 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80003a68:	fe010113          	addi	sp,sp,-32
    80003a6c:	00113c23          	sd	ra,24(sp)
    80003a70:	00813823          	sd	s0,16(sp)
    80003a74:	00913423          	sd	s1,8(sp)
    80003a78:	01213023          	sd	s2,0(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003a80:	00000913          	li	s2,0
    80003a84:	0380006f          	j	80003abc <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	89c080e7          	jalr	-1892(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003a90:	00148493          	addi	s1,s1,1
    80003a94:	000027b7          	lui	a5,0x2
    80003a98:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a9c:	0097ee63          	bltu	a5,s1,80003ab8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003aa0:	00000713          	li	a4,0
    80003aa4:	000077b7          	lui	a5,0x7
    80003aa8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003aac:	fce7eee3          	bltu	a5,a4,80003a88 <_Z11workerBodyBPv+0x20>
    80003ab0:	00170713          	addi	a4,a4,1
    80003ab4:	ff1ff06f          	j	80003aa4 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ab8:	00190913          	addi	s2,s2,1
    80003abc:	00f00793          	li	a5,15
    80003ac0:	0527e063          	bltu	a5,s2,80003b00 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ac4:	00003517          	auipc	a0,0x3
    80003ac8:	74c50513          	addi	a0,a0,1868 # 80007210 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	4f0080e7          	jalr	1264(ra) # 80003fbc <_Z11printStringPKc>
    80003ad4:	00000613          	li	a2,0
    80003ad8:	00a00593          	li	a1,10
    80003adc:	0009051b          	sext.w	a0,s2
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	674080e7          	jalr	1652(ra) # 80004154 <_Z8printIntiii>
    80003ae8:	00003517          	auipc	a0,0x3
    80003aec:	6d850513          	addi	a0,a0,1752 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	4cc080e7          	jalr	1228(ra) # 80003fbc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003af8:	00000493          	li	s1,0
    80003afc:	f99ff06f          	j	80003a94 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003b00:	00003517          	auipc	a0,0x3
    80003b04:	71850513          	addi	a0,a0,1816 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	4b4080e7          	jalr	1204(ra) # 80003fbc <_Z11printStringPKc>
    finishedB = true;
    80003b10:	00100793          	li	a5,1
    80003b14:	00005717          	auipc	a4,0x5
    80003b18:	02f70ea3          	sb	a5,61(a4) # 80008b51 <finishedB>
    thread_dispatch();
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	808080e7          	jalr	-2040(ra) # 80001324 <thread_dispatch>
}
    80003b24:	01813083          	ld	ra,24(sp)
    80003b28:	01013403          	ld	s0,16(sp)
    80003b2c:	00813483          	ld	s1,8(sp)
    80003b30:	00013903          	ld	s2,0(sp)
    80003b34:	02010113          	addi	sp,sp,32
    80003b38:	00008067          	ret

0000000080003b3c <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80003b3c:	fe010113          	addi	sp,sp,-32
    80003b40:	00113c23          	sd	ra,24(sp)
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	01213023          	sd	s2,0(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b58:	00100793          	li	a5,1
    80003b5c:	02a7f863          	bgeu	a5,a0,80003b8c <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b60:	00a00793          	li	a5,10
    80003b64:	02f577b3          	remu	a5,a0,a5
    80003b68:	02078e63          	beqz	a5,80003ba4 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b6c:	fff48513          	addi	a0,s1,-1
    80003b70:	00000097          	auipc	ra,0x0
    80003b74:	fcc080e7          	jalr	-52(ra) # 80003b3c <_Z9fibonaccim>
    80003b78:	00050913          	mv	s2,a0
    80003b7c:	ffe48513          	addi	a0,s1,-2
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	fbc080e7          	jalr	-68(ra) # 80003b3c <_Z9fibonaccim>
    80003b88:	00a90533          	add	a0,s2,a0
}
    80003b8c:	01813083          	ld	ra,24(sp)
    80003b90:	01013403          	ld	s0,16(sp)
    80003b94:	00813483          	ld	s1,8(sp)
    80003b98:	00013903          	ld	s2,0(sp)
    80003b9c:	02010113          	addi	sp,sp,32
    80003ba0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ba4:	ffffd097          	auipc	ra,0xffffd
    80003ba8:	780080e7          	jalr	1920(ra) # 80001324 <thread_dispatch>
    80003bac:	fc1ff06f          	j	80003b6c <_Z9fibonaccim+0x30>

0000000080003bb0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003bc8:	00000493          	li	s1,0
    80003bcc:	0400006f          	j	80003c0c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003bd0:	00003517          	auipc	a0,0x3
    80003bd4:	65850513          	addi	a0,a0,1624 # 80007228 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80003bd8:	00000097          	auipc	ra,0x0
    80003bdc:	3e4080e7          	jalr	996(ra) # 80003fbc <_Z11printStringPKc>
    80003be0:	00000613          	li	a2,0
    80003be4:	00a00593          	li	a1,10
    80003be8:	00048513          	mv	a0,s1
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	568080e7          	jalr	1384(ra) # 80004154 <_Z8printIntiii>
    80003bf4:	00003517          	auipc	a0,0x3
    80003bf8:	5cc50513          	addi	a0,a0,1484 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	3c0080e7          	jalr	960(ra) # 80003fbc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c04:	0014849b          	addiw	s1,s1,1
    80003c08:	0ff4f493          	andi	s1,s1,255
    80003c0c:	00200793          	li	a5,2
    80003c10:	fc97f0e3          	bgeu	a5,s1,80003bd0 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80003c14:	00003517          	auipc	a0,0x3
    80003c18:	61c50513          	addi	a0,a0,1564 # 80007230 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	3a0080e7          	jalr	928(ra) # 80003fbc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c24:	00700313          	li	t1,7
    thread_dispatch();
    80003c28:	ffffd097          	auipc	ra,0xffffd
    80003c2c:	6fc080e7          	jalr	1788(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c30:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c34:	00003517          	auipc	a0,0x3
    80003c38:	60c50513          	addi	a0,a0,1548 # 80007240 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	380080e7          	jalr	896(ra) # 80003fbc <_Z11printStringPKc>
    80003c44:	00000613          	li	a2,0
    80003c48:	00a00593          	li	a1,10
    80003c4c:	0009051b          	sext.w	a0,s2
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	504080e7          	jalr	1284(ra) # 80004154 <_Z8printIntiii>
    80003c58:	00003517          	auipc	a0,0x3
    80003c5c:	56850513          	addi	a0,a0,1384 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	35c080e7          	jalr	860(ra) # 80003fbc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003c68:	00c00513          	li	a0,12
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	ed0080e7          	jalr	-304(ra) # 80003b3c <_Z9fibonaccim>
    80003c74:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c78:	00003517          	auipc	a0,0x3
    80003c7c:	5d050513          	addi	a0,a0,1488 # 80007248 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	33c080e7          	jalr	828(ra) # 80003fbc <_Z11printStringPKc>
    80003c88:	00000613          	li	a2,0
    80003c8c:	00a00593          	li	a1,10
    80003c90:	0009051b          	sext.w	a0,s2
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	4c0080e7          	jalr	1216(ra) # 80004154 <_Z8printIntiii>
    80003c9c:	00003517          	auipc	a0,0x3
    80003ca0:	52450513          	addi	a0,a0,1316 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	318080e7          	jalr	792(ra) # 80003fbc <_Z11printStringPKc>
    80003cac:	0400006f          	j	80003cec <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003cb0:	00003517          	auipc	a0,0x3
    80003cb4:	57850513          	addi	a0,a0,1400 # 80007228 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80003cb8:	00000097          	auipc	ra,0x0
    80003cbc:	304080e7          	jalr	772(ra) # 80003fbc <_Z11printStringPKc>
    80003cc0:	00000613          	li	a2,0
    80003cc4:	00a00593          	li	a1,10
    80003cc8:	00048513          	mv	a0,s1
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	488080e7          	jalr	1160(ra) # 80004154 <_Z8printIntiii>
    80003cd4:	00003517          	auipc	a0,0x3
    80003cd8:	4ec50513          	addi	a0,a0,1260 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003cdc:	00000097          	auipc	ra,0x0
    80003ce0:	2e0080e7          	jalr	736(ra) # 80003fbc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003ce4:	0014849b          	addiw	s1,s1,1
    80003ce8:	0ff4f493          	andi	s1,s1,255
    80003cec:	00500793          	li	a5,5
    80003cf0:	fc97f0e3          	bgeu	a5,s1,80003cb0 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80003cf4:	00003517          	auipc	a0,0x3
    80003cf8:	56450513          	addi	a0,a0,1380 # 80007258 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	2c0080e7          	jalr	704(ra) # 80003fbc <_Z11printStringPKc>
    finishedC = true;
    80003d04:	00100793          	li	a5,1
    80003d08:	00005717          	auipc	a4,0x5
    80003d0c:	e4f70523          	sb	a5,-438(a4) # 80008b52 <finishedC>
    thread_dispatch();
    80003d10:	ffffd097          	auipc	ra,0xffffd
    80003d14:	614080e7          	jalr	1556(ra) # 80001324 <thread_dispatch>
}
    80003d18:	01813083          	ld	ra,24(sp)
    80003d1c:	01013403          	ld	s0,16(sp)
    80003d20:	00813483          	ld	s1,8(sp)
    80003d24:	00013903          	ld	s2,0(sp)
    80003d28:	02010113          	addi	sp,sp,32
    80003d2c:	00008067          	ret

0000000080003d30 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80003d30:	fe010113          	addi	sp,sp,-32
    80003d34:	00113c23          	sd	ra,24(sp)
    80003d38:	00813823          	sd	s0,16(sp)
    80003d3c:	00913423          	sd	s1,8(sp)
    80003d40:	01213023          	sd	s2,0(sp)
    80003d44:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d48:	00a00493          	li	s1,10
    80003d4c:	0400006f          	j	80003d8c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d50:	00003517          	auipc	a0,0x3
    80003d54:	51850513          	addi	a0,a0,1304 # 80007268 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    80003d58:	00000097          	auipc	ra,0x0
    80003d5c:	264080e7          	jalr	612(ra) # 80003fbc <_Z11printStringPKc>
    80003d60:	00000613          	li	a2,0
    80003d64:	00a00593          	li	a1,10
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	00000097          	auipc	ra,0x0
    80003d70:	3e8080e7          	jalr	1000(ra) # 80004154 <_Z8printIntiii>
    80003d74:	00003517          	auipc	a0,0x3
    80003d78:	44c50513          	addi	a0,a0,1100 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	240080e7          	jalr	576(ra) # 80003fbc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003d84:	0014849b          	addiw	s1,s1,1
    80003d88:	0ff4f493          	andi	s1,s1,255
    80003d8c:	00c00793          	li	a5,12
    80003d90:	fc97f0e3          	bgeu	a5,s1,80003d50 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003d94:	00003517          	auipc	a0,0x3
    80003d98:	4dc50513          	addi	a0,a0,1244 # 80007270 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80003d9c:	00000097          	auipc	ra,0x0
    80003da0:	220080e7          	jalr	544(ra) # 80003fbc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003da4:	00500313          	li	t1,5
    thread_dispatch();
    80003da8:	ffffd097          	auipc	ra,0xffffd
    80003dac:	57c080e7          	jalr	1404(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80003db0:	01000513          	li	a0,16
    80003db4:	00000097          	auipc	ra,0x0
    80003db8:	d88080e7          	jalr	-632(ra) # 80003b3c <_Z9fibonaccim>
    80003dbc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003dc0:	00003517          	auipc	a0,0x3
    80003dc4:	4c050513          	addi	a0,a0,1216 # 80007280 <_ZZN5Riscv12printIntegerEmE6digits+0x108>
    80003dc8:	00000097          	auipc	ra,0x0
    80003dcc:	1f4080e7          	jalr	500(ra) # 80003fbc <_Z11printStringPKc>
    80003dd0:	00000613          	li	a2,0
    80003dd4:	00a00593          	li	a1,10
    80003dd8:	0009051b          	sext.w	a0,s2
    80003ddc:	00000097          	auipc	ra,0x0
    80003de0:	378080e7          	jalr	888(ra) # 80004154 <_Z8printIntiii>
    80003de4:	00003517          	auipc	a0,0x3
    80003de8:	3dc50513          	addi	a0,a0,988 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	1d0080e7          	jalr	464(ra) # 80003fbc <_Z11printStringPKc>
    80003df4:	0400006f          	j	80003e34 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003df8:	00003517          	auipc	a0,0x3
    80003dfc:	47050513          	addi	a0,a0,1136 # 80007268 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	1bc080e7          	jalr	444(ra) # 80003fbc <_Z11printStringPKc>
    80003e08:	00000613          	li	a2,0
    80003e0c:	00a00593          	li	a1,10
    80003e10:	00048513          	mv	a0,s1
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	340080e7          	jalr	832(ra) # 80004154 <_Z8printIntiii>
    80003e1c:	00003517          	auipc	a0,0x3
    80003e20:	3a450513          	addi	a0,a0,932 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003e24:	00000097          	auipc	ra,0x0
    80003e28:	198080e7          	jalr	408(ra) # 80003fbc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e2c:	0014849b          	addiw	s1,s1,1
    80003e30:	0ff4f493          	andi	s1,s1,255
    80003e34:	00f00793          	li	a5,15
    80003e38:	fc97f0e3          	bgeu	a5,s1,80003df8 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003e3c:	00003517          	auipc	a0,0x3
    80003e40:	45450513          	addi	a0,a0,1108 # 80007290 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80003e44:	00000097          	auipc	ra,0x0
    80003e48:	178080e7          	jalr	376(ra) # 80003fbc <_Z11printStringPKc>
    finishedD = true;
    80003e4c:	00100793          	li	a5,1
    80003e50:	00005717          	auipc	a4,0x5
    80003e54:	d0f701a3          	sb	a5,-765(a4) # 80008b53 <finishedD>
    thread_dispatch();
    80003e58:	ffffd097          	auipc	ra,0xffffd
    80003e5c:	4cc080e7          	jalr	1228(ra) # 80001324 <thread_dispatch>
}
    80003e60:	01813083          	ld	ra,24(sp)
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	00813483          	ld	s1,8(sp)
    80003e6c:	00013903          	ld	s2,0(sp)
    80003e70:	02010113          	addi	sp,sp,32
    80003e74:	00008067          	ret

0000000080003e78 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003e78:	fc010113          	addi	sp,sp,-64
    80003e7c:	02113c23          	sd	ra,56(sp)
    80003e80:	02813823          	sd	s0,48(sp)
    80003e84:	02913423          	sd	s1,40(sp)
    80003e88:	03213023          	sd	s2,32(sp)
    80003e8c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003e90:	00000613          	li	a2,0
    80003e94:	00000597          	auipc	a1,0x0
    80003e98:	b0858593          	addi	a1,a1,-1272 # 8000399c <_Z11workerBodyAPv>
    80003e9c:	fc040513          	addi	a0,s0,-64
    80003ea0:	ffffd097          	auipc	ra,0xffffd
    80003ea4:	404080e7          	jalr	1028(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80003ea8:	00003517          	auipc	a0,0x3
    80003eac:	3f850513          	addi	a0,a0,1016 # 800072a0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	10c080e7          	jalr	268(ra) # 80003fbc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003eb8:	00000613          	li	a2,0
    80003ebc:	00000597          	auipc	a1,0x0
    80003ec0:	bac58593          	addi	a1,a1,-1108 # 80003a68 <_Z11workerBodyBPv>
    80003ec4:	fc840513          	addi	a0,s0,-56
    80003ec8:	ffffd097          	auipc	ra,0xffffd
    80003ecc:	3dc080e7          	jalr	988(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80003ed0:	00003517          	auipc	a0,0x3
    80003ed4:	3e850513          	addi	a0,a0,1000 # 800072b8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	0e4080e7          	jalr	228(ra) # 80003fbc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003ee0:	00000613          	li	a2,0
    80003ee4:	00000597          	auipc	a1,0x0
    80003ee8:	ccc58593          	addi	a1,a1,-820 # 80003bb0 <_Z11workerBodyCPv>
    80003eec:	fd040513          	addi	a0,s0,-48
    80003ef0:	ffffd097          	auipc	ra,0xffffd
    80003ef4:	3b4080e7          	jalr	948(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80003ef8:	00003517          	auipc	a0,0x3
    80003efc:	3d850513          	addi	a0,a0,984 # 800072d0 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    80003f00:	00000097          	auipc	ra,0x0
    80003f04:	0bc080e7          	jalr	188(ra) # 80003fbc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003f08:	00000613          	li	a2,0
    80003f0c:	00000597          	auipc	a1,0x0
    80003f10:	e2458593          	addi	a1,a1,-476 # 80003d30 <_Z11workerBodyDPv>
    80003f14:	fd840513          	addi	a0,s0,-40
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	38c080e7          	jalr	908(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80003f20:	00003517          	auipc	a0,0x3
    80003f24:	3c850513          	addi	a0,a0,968 # 800072e8 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	094080e7          	jalr	148(ra) # 80003fbc <_Z11printStringPKc>
    80003f30:	00c0006f          	j	80003f3c <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80003f34:	ffffd097          	auipc	ra,0xffffd
    80003f38:	3f0080e7          	jalr	1008(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f3c:	00005797          	auipc	a5,0x5
    80003f40:	c147c783          	lbu	a5,-1004(a5) # 80008b50 <finishedA>
    80003f44:	fe0788e3          	beqz	a5,80003f34 <_Z18Threads_C_API_testv+0xbc>
    80003f48:	00005797          	auipc	a5,0x5
    80003f4c:	c097c783          	lbu	a5,-1015(a5) # 80008b51 <finishedB>
    80003f50:	fe0782e3          	beqz	a5,80003f34 <_Z18Threads_C_API_testv+0xbc>
    80003f54:	00005797          	auipc	a5,0x5
    80003f58:	bfe7c783          	lbu	a5,-1026(a5) # 80008b52 <finishedC>
    80003f5c:	fc078ce3          	beqz	a5,80003f34 <_Z18Threads_C_API_testv+0xbc>
    80003f60:	00005797          	auipc	a5,0x5
    80003f64:	bf37c783          	lbu	a5,-1037(a5) # 80008b53 <finishedD>
    80003f68:	fc0786e3          	beqz	a5,80003f34 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    80003f6c:	fc040493          	addi	s1,s0,-64
    80003f70:	0080006f          	j	80003f78 <_Z18Threads_C_API_testv+0x100>
    80003f74:	00848493          	addi	s1,s1,8
    80003f78:	fe040793          	addi	a5,s0,-32
    80003f7c:	02f48463          	beq	s1,a5,80003fa4 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80003f80:	0004b903          	ld	s2,0(s1)
    80003f84:	fe0908e3          	beqz	s2,80003f74 <_Z18Threads_C_API_testv+0xfc>
    80003f88:	00090513          	mv	a0,s2
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	ff8080e7          	jalr	-8(ra) # 80001f84 <_ZN3PCBD1Ev>
    80003f94:	00090513          	mv	a0,s2
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	fc4080e7          	jalr	-60(ra) # 80001f5c <_ZN3PCBdlEPv>
    80003fa0:	fd5ff06f          	j	80003f74 <_Z18Threads_C_API_testv+0xfc>
    }
}
    80003fa4:	03813083          	ld	ra,56(sp)
    80003fa8:	03013403          	ld	s0,48(sp)
    80003fac:	02813483          	ld	s1,40(sp)
    80003fb0:	02013903          	ld	s2,32(sp)
    80003fb4:	04010113          	addi	sp,sp,64
    80003fb8:	00008067          	ret

0000000080003fbc <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80003fbc:	fe010113          	addi	sp,sp,-32
    80003fc0:	00113c23          	sd	ra,24(sp)
    80003fc4:	00813823          	sd	s0,16(sp)
    80003fc8:	00913423          	sd	s1,8(sp)
    80003fcc:	02010413          	addi	s0,sp,32
    80003fd0:	00050493          	mv	s1,a0
    LOCK();
    80003fd4:	00100613          	li	a2,1
    80003fd8:	00000593          	li	a1,0
    80003fdc:	00005517          	auipc	a0,0x5
    80003fe0:	b7c50513          	addi	a0,a0,-1156 # 80008b58 <lockPrint>
    80003fe4:	ffffd097          	auipc	ra,0xffffd
    80003fe8:	224080e7          	jalr	548(ra) # 80001208 <copy_and_swap>
    80003fec:	fe0514e3          	bnez	a0,80003fd4 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80003ff0:	0004c503          	lbu	a0,0(s1)
    80003ff4:	00050a63          	beqz	a0,80004008 <_Z11printStringPKc+0x4c>
    80003ff8:	00003097          	auipc	ra,0x3
    80003ffc:	9f4080e7          	jalr	-1548(ra) # 800069ec <__putc>
        putc(*string);
        string++;
    80004000:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80004004:	fedff06f          	j	80003ff0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004008:	00000613          	li	a2,0
    8000400c:	00100593          	li	a1,1
    80004010:	00005517          	auipc	a0,0x5
    80004014:	b4850513          	addi	a0,a0,-1208 # 80008b58 <lockPrint>
    80004018:	ffffd097          	auipc	ra,0xffffd
    8000401c:	1f0080e7          	jalr	496(ra) # 80001208 <copy_and_swap>
    80004020:	fe0514e3          	bnez	a0,80004008 <_Z11printStringPKc+0x4c>
}
    80004024:	01813083          	ld	ra,24(sp)
    80004028:	01013403          	ld	s0,16(sp)
    8000402c:	00813483          	ld	s1,8(sp)
    80004030:	02010113          	addi	sp,sp,32
    80004034:	00008067          	ret

0000000080004038 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80004038:	fd010113          	addi	sp,sp,-48
    8000403c:	02113423          	sd	ra,40(sp)
    80004040:	02813023          	sd	s0,32(sp)
    80004044:	00913c23          	sd	s1,24(sp)
    80004048:	01213823          	sd	s2,16(sp)
    8000404c:	01313423          	sd	s3,8(sp)
    80004050:	01413023          	sd	s4,0(sp)
    80004054:	03010413          	addi	s0,sp,48
    80004058:	00050993          	mv	s3,a0
    8000405c:	00058a13          	mv	s4,a1
    LOCK();
    80004060:	00100613          	li	a2,1
    80004064:	00000593          	li	a1,0
    80004068:	00005517          	auipc	a0,0x5
    8000406c:	af050513          	addi	a0,a0,-1296 # 80008b58 <lockPrint>
    80004070:	ffffd097          	auipc	ra,0xffffd
    80004074:	198080e7          	jalr	408(ra) # 80001208 <copy_and_swap>
    80004078:	fe0514e3          	bnez	a0,80004060 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    8000407c:	00000913          	li	s2,0
    80004080:	00090493          	mv	s1,s2
    80004084:	0019091b          	addiw	s2,s2,1
    80004088:	03495a63          	bge	s2,s4,800040bc <_Z9getStringPci+0x84>
    return __getc();
    8000408c:	00003097          	auipc	ra,0x3
    80004090:	99c080e7          	jalr	-1636(ra) # 80006a28 <__getc>
        cc = getc();
        if (cc < 1)
    80004094:	02050463          	beqz	a0,800040bc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004098:	009984b3          	add	s1,s3,s1
    8000409c:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    800040a0:	00a00793          	li	a5,10
    800040a4:	00f50a63          	beq	a0,a5,800040b8 <_Z9getStringPci+0x80>
    800040a8:	00d00793          	li	a5,13
    800040ac:	fcf51ae3          	bne	a0,a5,80004080 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800040b0:	00090493          	mv	s1,s2
    800040b4:	0080006f          	j	800040bc <_Z9getStringPci+0x84>
    800040b8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800040bc:	009984b3          	add	s1,s3,s1
    800040c0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800040c4:	00000613          	li	a2,0
    800040c8:	00100593          	li	a1,1
    800040cc:	00005517          	auipc	a0,0x5
    800040d0:	a8c50513          	addi	a0,a0,-1396 # 80008b58 <lockPrint>
    800040d4:	ffffd097          	auipc	ra,0xffffd
    800040d8:	134080e7          	jalr	308(ra) # 80001208 <copy_and_swap>
    800040dc:	fe0514e3          	bnez	a0,800040c4 <_Z9getStringPci+0x8c>
    return buf;
}
    800040e0:	00098513          	mv	a0,s3
    800040e4:	02813083          	ld	ra,40(sp)
    800040e8:	02013403          	ld	s0,32(sp)
    800040ec:	01813483          	ld	s1,24(sp)
    800040f0:	01013903          	ld	s2,16(sp)
    800040f4:	00813983          	ld	s3,8(sp)
    800040f8:	00013a03          	ld	s4,0(sp)
    800040fc:	03010113          	addi	sp,sp,48
    80004100:	00008067          	ret

0000000080004104 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00813423          	sd	s0,8(sp)
    8000410c:	01010413          	addi	s0,sp,16
    80004110:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004114:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004118:	0006c603          	lbu	a2,0(a3)
    8000411c:	fd06071b          	addiw	a4,a2,-48
    80004120:	0ff77713          	andi	a4,a4,255
    80004124:	00900793          	li	a5,9
    80004128:	02e7e063          	bltu	a5,a4,80004148 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000412c:	0025179b          	slliw	a5,a0,0x2
    80004130:	00a787bb          	addw	a5,a5,a0
    80004134:	0017979b          	slliw	a5,a5,0x1
    80004138:	00168693          	addi	a3,a3,1
    8000413c:	00c787bb          	addw	a5,a5,a2
    80004140:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004144:	fd5ff06f          	j	80004118 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004148:	00813403          	ld	s0,8(sp)
    8000414c:	01010113          	addi	sp,sp,16
    80004150:	00008067          	ret

0000000080004154 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80004154:	fc010113          	addi	sp,sp,-64
    80004158:	02113c23          	sd	ra,56(sp)
    8000415c:	02813823          	sd	s0,48(sp)
    80004160:	02913423          	sd	s1,40(sp)
    80004164:	03213023          	sd	s2,32(sp)
    80004168:	01313c23          	sd	s3,24(sp)
    8000416c:	04010413          	addi	s0,sp,64
    80004170:	00050493          	mv	s1,a0
    80004174:	00058913          	mv	s2,a1
    80004178:	00060993          	mv	s3,a2
    LOCK();
    8000417c:	00100613          	li	a2,1
    80004180:	00000593          	li	a1,0
    80004184:	00005517          	auipc	a0,0x5
    80004188:	9d450513          	addi	a0,a0,-1580 # 80008b58 <lockPrint>
    8000418c:	ffffd097          	auipc	ra,0xffffd
    80004190:	07c080e7          	jalr	124(ra) # 80001208 <copy_and_swap>
    80004194:	fe0514e3          	bnez	a0,8000417c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80004198:	00098463          	beqz	s3,800041a0 <_Z8printIntiii+0x4c>
    8000419c:	0804c463          	bltz	s1,80004224 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800041a0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800041a4:	00000593          	li	a1,0
    }

    i = 0;
    800041a8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800041ac:	0009079b          	sext.w	a5,s2
    800041b0:	0325773b          	remuw	a4,a0,s2
    800041b4:	00048613          	mv	a2,s1
    800041b8:	0014849b          	addiw	s1,s1,1
    800041bc:	02071693          	slli	a3,a4,0x20
    800041c0:	0206d693          	srli	a3,a3,0x20
    800041c4:	00003717          	auipc	a4,0x3
    800041c8:	13c70713          	addi	a4,a4,316 # 80007300 <_ZL6digits>
    800041cc:	00d70733          	add	a4,a4,a3
    800041d0:	00074683          	lbu	a3,0(a4)
    800041d4:	fd040713          	addi	a4,s0,-48
    800041d8:	00c70733          	add	a4,a4,a2
    800041dc:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800041e0:	0005071b          	sext.w	a4,a0
    800041e4:	0325553b          	divuw	a0,a0,s2
    800041e8:	fcf772e3          	bgeu	a4,a5,800041ac <_Z8printIntiii+0x58>
    if (neg)
    800041ec:	00058c63          	beqz	a1,80004204 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800041f0:	fd040793          	addi	a5,s0,-48
    800041f4:	009784b3          	add	s1,a5,s1
    800041f8:	02d00793          	li	a5,45
    800041fc:	fef48823          	sb	a5,-16(s1)
    80004200:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80004204:	fff4849b          	addiw	s1,s1,-1
    80004208:	0204c463          	bltz	s1,80004230 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000420c:	fd040793          	addi	a5,s0,-48
    80004210:	009787b3          	add	a5,a5,s1
    __putc(c);
    80004214:	ff07c503          	lbu	a0,-16(a5)
    80004218:	00002097          	auipc	ra,0x2
    8000421c:	7d4080e7          	jalr	2004(ra) # 800069ec <__putc>
}
    80004220:	fe5ff06f          	j	80004204 <_Z8printIntiii+0xb0>
        x = -xx;
    80004224:	4090053b          	negw	a0,s1
        neg = 1;
    80004228:	00100593          	li	a1,1
        x = -xx;
    8000422c:	f7dff06f          	j	800041a8 <_Z8printIntiii+0x54>

    UNLOCK();
    80004230:	00000613          	li	a2,0
    80004234:	00100593          	li	a1,1
    80004238:	00005517          	auipc	a0,0x5
    8000423c:	92050513          	addi	a0,a0,-1760 # 80008b58 <lockPrint>
    80004240:	ffffd097          	auipc	ra,0xffffd
    80004244:	fc8080e7          	jalr	-56(ra) # 80001208 <copy_and_swap>
    80004248:	fe0514e3          	bnez	a0,80004230 <_Z8printIntiii+0xdc>
}
    8000424c:	03813083          	ld	ra,56(sp)
    80004250:	03013403          	ld	s0,48(sp)
    80004254:	02813483          	ld	s1,40(sp)
    80004258:	02013903          	ld	s2,32(sp)
    8000425c:	01813983          	ld	s3,24(sp)
    80004260:	04010113          	addi	sp,sp,64
    80004264:	00008067          	ret

0000000080004268 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80004268:	fe010113          	addi	sp,sp,-32
    8000426c:	00113c23          	sd	ra,24(sp)
    80004270:	00813823          	sd	s0,16(sp)
    80004274:	00913423          	sd	s1,8(sp)
    80004278:	01213023          	sd	s2,0(sp)
    8000427c:	02010413          	addi	s0,sp,32
    80004280:	00050493          	mv	s1,a0
    80004284:	00b52023          	sw	a1,0(a0)
    80004288:	00052823          	sw	zero,16(a0)
    8000428c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004290:	00259513          	slli	a0,a1,0x2
    80004294:	ffffd097          	auipc	ra,0xffffd
    80004298:	fb4080e7          	jalr	-76(ra) # 80001248 <mem_alloc>
    8000429c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800042a0:	00800513          	li	a0,8
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	4f0080e7          	jalr	1264(ra) # 80002794 <_Znwm>
    800042ac:	00050913          	mv	s2,a0
    800042b0:	00000593          	li	a1,0
    800042b4:	ffffe097          	auipc	ra,0xffffe
    800042b8:	614080e7          	jalr	1556(ra) # 800028c8 <_ZN9SemaphoreC1Ej>
    800042bc:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800042c0:	00800513          	li	a0,8
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	4d0080e7          	jalr	1232(ra) # 80002794 <_Znwm>
    800042cc:	00050913          	mv	s2,a0
    800042d0:	0004a583          	lw	a1,0(s1)
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	5f4080e7          	jalr	1524(ra) # 800028c8 <_ZN9SemaphoreC1Ej>
    800042dc:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800042e0:	00800513          	li	a0,8
    800042e4:	ffffe097          	auipc	ra,0xffffe
    800042e8:	4b0080e7          	jalr	1200(ra) # 80002794 <_Znwm>
    800042ec:	00050913          	mv	s2,a0
    800042f0:	00100593          	li	a1,1
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	5d4080e7          	jalr	1492(ra) # 800028c8 <_ZN9SemaphoreC1Ej>
    800042fc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004300:	00800513          	li	a0,8
    80004304:	ffffe097          	auipc	ra,0xffffe
    80004308:	490080e7          	jalr	1168(ra) # 80002794 <_Znwm>
    8000430c:	00050913          	mv	s2,a0
    80004310:	00100593          	li	a1,1
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	5b4080e7          	jalr	1460(ra) # 800028c8 <_ZN9SemaphoreC1Ej>
    8000431c:	0324b823          	sd	s2,48(s1)
}
    80004320:	01813083          	ld	ra,24(sp)
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	00813483          	ld	s1,8(sp)
    8000432c:	00013903          	ld	s2,0(sp)
    80004330:	02010113          	addi	sp,sp,32
    80004334:	00008067          	ret
    80004338:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000433c:	00090513          	mv	a0,s2
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	47c080e7          	jalr	1148(ra) # 800027bc <_ZdlPv>
    80004348:	00048513          	mv	a0,s1
    8000434c:	00006097          	auipc	ra,0x6
    80004350:	8ec080e7          	jalr	-1812(ra) # 80009c38 <_Unwind_Resume>
    80004354:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80004358:	00090513          	mv	a0,s2
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	460080e7          	jalr	1120(ra) # 800027bc <_ZdlPv>
    80004364:	00048513          	mv	a0,s1
    80004368:	00006097          	auipc	ra,0x6
    8000436c:	8d0080e7          	jalr	-1840(ra) # 80009c38 <_Unwind_Resume>
    80004370:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004374:	00090513          	mv	a0,s2
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	444080e7          	jalr	1092(ra) # 800027bc <_ZdlPv>
    80004380:	00048513          	mv	a0,s1
    80004384:	00006097          	auipc	ra,0x6
    80004388:	8b4080e7          	jalr	-1868(ra) # 80009c38 <_Unwind_Resume>
    8000438c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004390:	00090513          	mv	a0,s2
    80004394:	ffffe097          	auipc	ra,0xffffe
    80004398:	428080e7          	jalr	1064(ra) # 800027bc <_ZdlPv>
    8000439c:	00048513          	mv	a0,s1
    800043a0:	00006097          	auipc	ra,0x6
    800043a4:	898080e7          	jalr	-1896(ra) # 80009c38 <_Unwind_Resume>

00000000800043a8 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800043a8:	fe010113          	addi	sp,sp,-32
    800043ac:	00113c23          	sd	ra,24(sp)
    800043b0:	00813823          	sd	s0,16(sp)
    800043b4:	00913423          	sd	s1,8(sp)
    800043b8:	02010413          	addi	s0,sp,32
    800043bc:	00050493          	mv	s1,a0
    __putc(c);
    800043c0:	00a00513          	li	a0,10
    800043c4:	00002097          	auipc	ra,0x2
    800043c8:	628080e7          	jalr	1576(ra) # 800069ec <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800043cc:	0104a783          	lw	a5,16(s1)
    800043d0:	0144a703          	lw	a4,20(s1)
    800043d4:	00e78c63          	beq	a5,a4,800043ec <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800043d8:	0017879b          	addiw	a5,a5,1
    800043dc:	0004a703          	lw	a4,0(s1)
    800043e0:	02e7e7bb          	remw	a5,a5,a4
    800043e4:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800043e8:	fe5ff06f          	j	800043cc <_ZN9BufferCPPD1Ev+0x24>
    800043ec:	02100513          	li	a0,33
    800043f0:	00002097          	auipc	ra,0x2
    800043f4:	5fc080e7          	jalr	1532(ra) # 800069ec <__putc>
    800043f8:	00a00513          	li	a0,10
    800043fc:	00002097          	auipc	ra,0x2
    80004400:	5f0080e7          	jalr	1520(ra) # 800069ec <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80004404:	0084b503          	ld	a0,8(s1)
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	e70080e7          	jalr	-400(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80004410:	0204b503          	ld	a0,32(s1)
    80004414:	00050663          	beqz	a0,80004420 <_ZN9BufferCPPD1Ev+0x78>
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	3a4080e7          	jalr	932(ra) # 800027bc <_ZdlPv>
    delete spaceAvailable;
    80004420:	0184b503          	ld	a0,24(s1)
    80004424:	00050663          	beqz	a0,80004430 <_ZN9BufferCPPD1Ev+0x88>
    80004428:	ffffe097          	auipc	ra,0xffffe
    8000442c:	394080e7          	jalr	916(ra) # 800027bc <_ZdlPv>
    delete mutexTail;
    80004430:	0304b503          	ld	a0,48(s1)
    80004434:	00050663          	beqz	a0,80004440 <_ZN9BufferCPPD1Ev+0x98>
    80004438:	ffffe097          	auipc	ra,0xffffe
    8000443c:	384080e7          	jalr	900(ra) # 800027bc <_ZdlPv>
    delete mutexHead;
    80004440:	0284b503          	ld	a0,40(s1)
    80004444:	00050663          	beqz	a0,80004450 <_ZN9BufferCPPD1Ev+0xa8>
    80004448:	ffffe097          	auipc	ra,0xffffe
    8000444c:	374080e7          	jalr	884(ra) # 800027bc <_ZdlPv>

}
    80004450:	01813083          	ld	ra,24(sp)
    80004454:	01013403          	ld	s0,16(sp)
    80004458:	00813483          	ld	s1,8(sp)
    8000445c:	02010113          	addi	sp,sp,32
    80004460:	00008067          	ret

0000000080004464 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80004464:	fe010113          	addi	sp,sp,-32
    80004468:	00113c23          	sd	ra,24(sp)
    8000446c:	00813823          	sd	s0,16(sp)
    80004470:	00913423          	sd	s1,8(sp)
    80004474:	01213023          	sd	s2,0(sp)
    80004478:	02010413          	addi	s0,sp,32
    8000447c:	00050493          	mv	s1,a0
    80004480:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004484:	01853503          	ld	a0,24(a0)
    80004488:	ffffe097          	auipc	ra,0xffffe
    8000448c:	414080e7          	jalr	1044(ra) # 8000289c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004490:	0304b503          	ld	a0,48(s1)
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	408080e7          	jalr	1032(ra) # 8000289c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000449c:	0084b783          	ld	a5,8(s1)
    800044a0:	0144a703          	lw	a4,20(s1)
    800044a4:	00271713          	slli	a4,a4,0x2
    800044a8:	00e787b3          	add	a5,a5,a4
    800044ac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800044b0:	0144a783          	lw	a5,20(s1)
    800044b4:	0017879b          	addiw	a5,a5,1
    800044b8:	0004a703          	lw	a4,0(s1)
    800044bc:	02e7e7bb          	remw	a5,a5,a4
    800044c0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800044c4:	0304b503          	ld	a0,48(s1)
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	428080e7          	jalr	1064(ra) # 800028f0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800044d0:	0204b503          	ld	a0,32(s1)
    800044d4:	ffffe097          	auipc	ra,0xffffe
    800044d8:	41c080e7          	jalr	1052(ra) # 800028f0 <_ZN9Semaphore6signalEv>

}
    800044dc:	01813083          	ld	ra,24(sp)
    800044e0:	01013403          	ld	s0,16(sp)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	00013903          	ld	s2,0(sp)
    800044ec:	02010113          	addi	sp,sp,32
    800044f0:	00008067          	ret

00000000800044f4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800044f4:	fe010113          	addi	sp,sp,-32
    800044f8:	00113c23          	sd	ra,24(sp)
    800044fc:	00813823          	sd	s0,16(sp)
    80004500:	00913423          	sd	s1,8(sp)
    80004504:	01213023          	sd	s2,0(sp)
    80004508:	02010413          	addi	s0,sp,32
    8000450c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004510:	02053503          	ld	a0,32(a0)
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	388080e7          	jalr	904(ra) # 8000289c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000451c:	0284b503          	ld	a0,40(s1)
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	37c080e7          	jalr	892(ra) # 8000289c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004528:	0084b703          	ld	a4,8(s1)
    8000452c:	0104a783          	lw	a5,16(s1)
    80004530:	00279693          	slli	a3,a5,0x2
    80004534:	00d70733          	add	a4,a4,a3
    80004538:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000453c:	0017879b          	addiw	a5,a5,1
    80004540:	0004a703          	lw	a4,0(s1)
    80004544:	02e7e7bb          	remw	a5,a5,a4
    80004548:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000454c:	0284b503          	ld	a0,40(s1)
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	3a0080e7          	jalr	928(ra) # 800028f0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004558:	0184b503          	ld	a0,24(s1)
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	394080e7          	jalr	916(ra) # 800028f0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004564:	00090513          	mv	a0,s2
    80004568:	01813083          	ld	ra,24(sp)
    8000456c:	01013403          	ld	s0,16(sp)
    80004570:	00813483          	ld	s1,8(sp)
    80004574:	00013903          	ld	s2,0(sp)
    80004578:	02010113          	addi	sp,sp,32
    8000457c:	00008067          	ret

0000000080004580 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80004580:	ff010113          	addi	sp,sp,-16
    80004584:	00113423          	sd	ra,8(sp)
    80004588:	00813023          	sd	s0,0(sp)
    8000458c:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80004590:	00000097          	auipc	ra,0x0
    80004594:	0bc080e7          	jalr	188(ra) # 8000464c <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80004598:	00813083          	ld	ra,8(sp)
    8000459c:	00013403          	ld	s0,0(sp)
    800045a0:	01010113          	addi	sp,sp,16
    800045a4:	00008067          	ret

00000000800045a8 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800045a8:	fe010113          	addi	sp,sp,-32
    800045ac:	00113c23          	sd	ra,24(sp)
    800045b0:	00813823          	sd	s0,16(sp)
    800045b4:	00913423          	sd	s1,8(sp)
    800045b8:	01213023          	sd	s2,0(sp)
    800045bc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800045c0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800045c4:	00600493          	li	s1,6
    while (--i > 0) {
    800045c8:	fff4849b          	addiw	s1,s1,-1
    800045cc:	04905463          	blez	s1,80004614 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800045d0:	00003517          	auipc	a0,0x3
    800045d4:	d4850513          	addi	a0,a0,-696 # 80007318 <_ZL6digits+0x18>
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	9e4080e7          	jalr	-1564(ra) # 80003fbc <_Z11printStringPKc>
        printInt(sleep_time);
    800045e0:	00000613          	li	a2,0
    800045e4:	00a00593          	li	a1,10
    800045e8:	0009051b          	sext.w	a0,s2
    800045ec:	00000097          	auipc	ra,0x0
    800045f0:	b68080e7          	jalr	-1176(ra) # 80004154 <_Z8printIntiii>
        printString(" !\n");
    800045f4:	00003517          	auipc	a0,0x3
    800045f8:	d2c50513          	addi	a0,a0,-724 # 80007320 <_ZL6digits+0x20>
    800045fc:	00000097          	auipc	ra,0x0
    80004600:	9c0080e7          	jalr	-1600(ra) # 80003fbc <_Z11printStringPKc>
        time_sleep(sleep_time);
    80004604:	00090513          	mv	a0,s2
    80004608:	ffffd097          	auipc	ra,0xffffd
    8000460c:	e20080e7          	jalr	-480(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80004610:	fb9ff06f          	j	800045c8 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80004614:	00a00793          	li	a5,10
    80004618:	02f95933          	divu	s2,s2,a5
    8000461c:	fff90913          	addi	s2,s2,-1
    80004620:	00004797          	auipc	a5,0x4
    80004624:	54078793          	addi	a5,a5,1344 # 80008b60 <finished>
    80004628:	01278933          	add	s2,a5,s2
    8000462c:	00100793          	li	a5,1
    80004630:	00f90023          	sb	a5,0(s2)
}
    80004634:	01813083          	ld	ra,24(sp)
    80004638:	01013403          	ld	s0,16(sp)
    8000463c:	00813483          	ld	s1,8(sp)
    80004640:	00013903          	ld	s2,0(sp)
    80004644:	02010113          	addi	sp,sp,32
    80004648:	00008067          	ret

000000008000464c <_Z12testSleepingv>:

void testSleeping() {
    8000464c:	fc010113          	addi	sp,sp,-64
    80004650:	02113c23          	sd	ra,56(sp)
    80004654:	02813823          	sd	s0,48(sp)
    80004658:	02913423          	sd	s1,40(sp)
    8000465c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80004660:	00a00793          	li	a5,10
    80004664:	fcf43823          	sd	a5,-48(s0)
    80004668:	01400793          	li	a5,20
    8000466c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80004670:	00000493          	li	s1,0
    80004674:	02c0006f          	j	800046a0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80004678:	00349793          	slli	a5,s1,0x3
    8000467c:	fd040613          	addi	a2,s0,-48
    80004680:	00f60633          	add	a2,a2,a5
    80004684:	00000597          	auipc	a1,0x0
    80004688:	f2458593          	addi	a1,a1,-220 # 800045a8 <_Z9sleepyRunPv>
    8000468c:	fc040513          	addi	a0,s0,-64
    80004690:	00f50533          	add	a0,a0,a5
    80004694:	ffffd097          	auipc	ra,0xffffd
    80004698:	c10080e7          	jalr	-1008(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000469c:	0014849b          	addiw	s1,s1,1
    800046a0:	00100793          	li	a5,1
    800046a4:	fc97dae3          	bge	a5,s1,80004678 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800046a8:	00004797          	auipc	a5,0x4
    800046ac:	4b87c783          	lbu	a5,1208(a5) # 80008b60 <finished>
    800046b0:	fe078ce3          	beqz	a5,800046a8 <_Z12testSleepingv+0x5c>
    800046b4:	00004797          	auipc	a5,0x4
    800046b8:	4ad7c783          	lbu	a5,1197(a5) # 80008b61 <finished+0x1>
    800046bc:	fe0786e3          	beqz	a5,800046a8 <_Z12testSleepingv+0x5c>
}
    800046c0:	03813083          	ld	ra,56(sp)
    800046c4:	03013403          	ld	s0,48(sp)
    800046c8:	02813483          	ld	s1,40(sp)
    800046cc:	04010113          	addi	sp,sp,64
    800046d0:	00008067          	ret

00000000800046d4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800046d4:	fe010113          	addi	sp,sp,-32
    800046d8:	00113c23          	sd	ra,24(sp)
    800046dc:	00813823          	sd	s0,16(sp)
    800046e0:	00913423          	sd	s1,8(sp)
    800046e4:	02010413          	addi	s0,sp,32
    800046e8:	00050493          	mv	s1,a0
    800046ec:	00b52023          	sw	a1,0(a0)
    800046f0:	00052823          	sw	zero,16(a0)
    800046f4:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800046f8:	00259513          	slli	a0,a1,0x2
    800046fc:	ffffd097          	auipc	ra,0xffffd
    80004700:	b4c080e7          	jalr	-1204(ra) # 80001248 <mem_alloc>
    80004704:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004708:	00000593          	li	a1,0
    8000470c:	02048513          	addi	a0,s1,32
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	c5c080e7          	jalr	-932(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80004718:	0004a583          	lw	a1,0(s1)
    8000471c:	01848513          	addi	a0,s1,24
    80004720:	ffffd097          	auipc	ra,0xffffd
    80004724:	c4c080e7          	jalr	-948(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80004728:	00100593          	li	a1,1
    8000472c:	02848513          	addi	a0,s1,40
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	c3c080e7          	jalr	-964(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80004738:	00100593          	li	a1,1
    8000473c:	03048513          	addi	a0,s1,48
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	c2c080e7          	jalr	-980(ra) # 8000136c <sem_open>
}
    80004748:	01813083          	ld	ra,24(sp)
    8000474c:	01013403          	ld	s0,16(sp)
    80004750:	00813483          	ld	s1,8(sp)
    80004754:	02010113          	addi	sp,sp,32
    80004758:	00008067          	ret

000000008000475c <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    8000475c:	fe010113          	addi	sp,sp,-32
    80004760:	00113c23          	sd	ra,24(sp)
    80004764:	00813823          	sd	s0,16(sp)
    80004768:	00913423          	sd	s1,8(sp)
    8000476c:	02010413          	addi	s0,sp,32
    80004770:	00050493          	mv	s1,a0
    80004774:	00a00513          	li	a0,10
    80004778:	00002097          	auipc	ra,0x2
    8000477c:	274080e7          	jalr	628(ra) # 800069ec <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80004780:	0104a783          	lw	a5,16(s1)
    80004784:	0144a703          	lw	a4,20(s1)
    80004788:	00e78c63          	beq	a5,a4,800047a0 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    8000478c:	0017879b          	addiw	a5,a5,1
    80004790:	0004a703          	lw	a4,0(s1)
    80004794:	02e7e7bb          	remw	a5,a5,a4
    80004798:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    8000479c:	fe5ff06f          	j	80004780 <_ZN6BufferD1Ev+0x24>
    800047a0:	02100513          	li	a0,33
    800047a4:	00002097          	auipc	ra,0x2
    800047a8:	248080e7          	jalr	584(ra) # 800069ec <__putc>
    800047ac:	00a00513          	li	a0,10
    800047b0:	00002097          	auipc	ra,0x2
    800047b4:	23c080e7          	jalr	572(ra) # 800069ec <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    800047b8:	0084b503          	ld	a0,8(s1)
    800047bc:	ffffd097          	auipc	ra,0xffffd
    800047c0:	abc080e7          	jalr	-1348(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    800047c4:	0204b503          	ld	a0,32(s1)
    800047c8:	ffffd097          	auipc	ra,0xffffd
    800047cc:	bdc080e7          	jalr	-1060(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    800047d0:	0184b503          	ld	a0,24(s1)
    800047d4:	ffffd097          	auipc	ra,0xffffd
    800047d8:	bd0080e7          	jalr	-1072(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    800047dc:	0304b503          	ld	a0,48(s1)
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	bc4080e7          	jalr	-1084(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    800047e8:	0284b503          	ld	a0,40(s1)
    800047ec:	ffffd097          	auipc	ra,0xffffd
    800047f0:	bb8080e7          	jalr	-1096(ra) # 800013a4 <sem_close>
}
    800047f4:	01813083          	ld	ra,24(sp)
    800047f8:	01013403          	ld	s0,16(sp)
    800047fc:	00813483          	ld	s1,8(sp)
    80004800:	02010113          	addi	sp,sp,32
    80004804:	00008067          	ret

0000000080004808 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80004808:	fe010113          	addi	sp,sp,-32
    8000480c:	00113c23          	sd	ra,24(sp)
    80004810:	00813823          	sd	s0,16(sp)
    80004814:	00913423          	sd	s1,8(sp)
    80004818:	01213023          	sd	s2,0(sp)
    8000481c:	02010413          	addi	s0,sp,32
    80004820:	00050493          	mv	s1,a0
    80004824:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004828:	01853503          	ld	a0,24(a0)
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	ba4080e7          	jalr	-1116(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80004834:	0304b503          	ld	a0,48(s1)
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	b98080e7          	jalr	-1128(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80004840:	0084b783          	ld	a5,8(s1)
    80004844:	0144a703          	lw	a4,20(s1)
    80004848:	00271713          	slli	a4,a4,0x2
    8000484c:	00e787b3          	add	a5,a5,a4
    80004850:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004854:	0144a783          	lw	a5,20(s1)
    80004858:	0017879b          	addiw	a5,a5,1
    8000485c:	0004a703          	lw	a4,0(s1)
    80004860:	02e7e7bb          	remw	a5,a5,a4
    80004864:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004868:	0304b503          	ld	a0,48(s1)
    8000486c:	ffffd097          	auipc	ra,0xffffd
    80004870:	b90080e7          	jalr	-1136(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80004874:	0204b503          	ld	a0,32(s1)
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	b84080e7          	jalr	-1148(ra) # 800013fc <sem_signal>

}
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	01013403          	ld	s0,16(sp)
    80004888:	00813483          	ld	s1,8(sp)
    8000488c:	00013903          	ld	s2,0(sp)
    80004890:	02010113          	addi	sp,sp,32
    80004894:	00008067          	ret

0000000080004898 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004898:	fe010113          	addi	sp,sp,-32
    8000489c:	00113c23          	sd	ra,24(sp)
    800048a0:	00813823          	sd	s0,16(sp)
    800048a4:	00913423          	sd	s1,8(sp)
    800048a8:	01213023          	sd	s2,0(sp)
    800048ac:	02010413          	addi	s0,sp,32
    800048b0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800048b4:	02053503          	ld	a0,32(a0)
    800048b8:	ffffd097          	auipc	ra,0xffffd
    800048bc:	b18080e7          	jalr	-1256(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    800048c0:	0284b503          	ld	a0,40(s1)
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	b0c080e7          	jalr	-1268(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    800048cc:	0084b703          	ld	a4,8(s1)
    800048d0:	0104a783          	lw	a5,16(s1)
    800048d4:	00279693          	slli	a3,a5,0x2
    800048d8:	00d70733          	add	a4,a4,a3
    800048dc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800048e0:	0017879b          	addiw	a5,a5,1
    800048e4:	0004a703          	lw	a4,0(s1)
    800048e8:	02e7e7bb          	remw	a5,a5,a4
    800048ec:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800048f0:	0284b503          	ld	a0,40(s1)
    800048f4:	ffffd097          	auipc	ra,0xffffd
    800048f8:	b08080e7          	jalr	-1272(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    800048fc:	0184b503          	ld	a0,24(s1)
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	afc080e7          	jalr	-1284(ra) # 800013fc <sem_signal>

    return ret;
}
    80004908:	00090513          	mv	a0,s2
    8000490c:	01813083          	ld	ra,24(sp)
    80004910:	01013403          	ld	s0,16(sp)
    80004914:	00813483          	ld	s1,8(sp)
    80004918:	00013903          	ld	s2,0(sp)
    8000491c:	02010113          	addi	sp,sp,32
    80004920:	00008067          	ret

0000000080004924 <start>:
    80004924:	ff010113          	addi	sp,sp,-16
    80004928:	00813423          	sd	s0,8(sp)
    8000492c:	01010413          	addi	s0,sp,16
    80004930:	300027f3          	csrr	a5,mstatus
    80004934:	ffffe737          	lui	a4,0xffffe
    80004938:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4a2f>
    8000493c:	00e7f7b3          	and	a5,a5,a4
    80004940:	00001737          	lui	a4,0x1
    80004944:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004948:	00e7e7b3          	or	a5,a5,a4
    8000494c:	30079073          	csrw	mstatus,a5
    80004950:	00000797          	auipc	a5,0x0
    80004954:	16078793          	addi	a5,a5,352 # 80004ab0 <system_main>
    80004958:	34179073          	csrw	mepc,a5
    8000495c:	00000793          	li	a5,0
    80004960:	18079073          	csrw	satp,a5
    80004964:	000107b7          	lui	a5,0x10
    80004968:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000496c:	30279073          	csrw	medeleg,a5
    80004970:	30379073          	csrw	mideleg,a5
    80004974:	104027f3          	csrr	a5,sie
    80004978:	2227e793          	ori	a5,a5,546
    8000497c:	10479073          	csrw	sie,a5
    80004980:	fff00793          	li	a5,-1
    80004984:	00a7d793          	srli	a5,a5,0xa
    80004988:	3b079073          	csrw	pmpaddr0,a5
    8000498c:	00f00793          	li	a5,15
    80004990:	3a079073          	csrw	pmpcfg0,a5
    80004994:	f14027f3          	csrr	a5,mhartid
    80004998:	0200c737          	lui	a4,0x200c
    8000499c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800049a0:	0007869b          	sext.w	a3,a5
    800049a4:	00269713          	slli	a4,a3,0x2
    800049a8:	000f4637          	lui	a2,0xf4
    800049ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800049b0:	00d70733          	add	a4,a4,a3
    800049b4:	0037979b          	slliw	a5,a5,0x3
    800049b8:	020046b7          	lui	a3,0x2004
    800049bc:	00d787b3          	add	a5,a5,a3
    800049c0:	00c585b3          	add	a1,a1,a2
    800049c4:	00371693          	slli	a3,a4,0x3
    800049c8:	00004717          	auipc	a4,0x4
    800049cc:	1a870713          	addi	a4,a4,424 # 80008b70 <timer_scratch>
    800049d0:	00b7b023          	sd	a1,0(a5)
    800049d4:	00d70733          	add	a4,a4,a3
    800049d8:	00f73c23          	sd	a5,24(a4)
    800049dc:	02c73023          	sd	a2,32(a4)
    800049e0:	34071073          	csrw	mscratch,a4
    800049e4:	00000797          	auipc	a5,0x0
    800049e8:	6ec78793          	addi	a5,a5,1772 # 800050d0 <timervec>
    800049ec:	30579073          	csrw	mtvec,a5
    800049f0:	300027f3          	csrr	a5,mstatus
    800049f4:	0087e793          	ori	a5,a5,8
    800049f8:	30079073          	csrw	mstatus,a5
    800049fc:	304027f3          	csrr	a5,mie
    80004a00:	0807e793          	ori	a5,a5,128
    80004a04:	30479073          	csrw	mie,a5
    80004a08:	f14027f3          	csrr	a5,mhartid
    80004a0c:	0007879b          	sext.w	a5,a5
    80004a10:	00078213          	mv	tp,a5
    80004a14:	30200073          	mret
    80004a18:	00813403          	ld	s0,8(sp)
    80004a1c:	01010113          	addi	sp,sp,16
    80004a20:	00008067          	ret

0000000080004a24 <timerinit>:
    80004a24:	ff010113          	addi	sp,sp,-16
    80004a28:	00813423          	sd	s0,8(sp)
    80004a2c:	01010413          	addi	s0,sp,16
    80004a30:	f14027f3          	csrr	a5,mhartid
    80004a34:	0200c737          	lui	a4,0x200c
    80004a38:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004a3c:	0007869b          	sext.w	a3,a5
    80004a40:	00269713          	slli	a4,a3,0x2
    80004a44:	000f4637          	lui	a2,0xf4
    80004a48:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004a4c:	00d70733          	add	a4,a4,a3
    80004a50:	0037979b          	slliw	a5,a5,0x3
    80004a54:	020046b7          	lui	a3,0x2004
    80004a58:	00d787b3          	add	a5,a5,a3
    80004a5c:	00c585b3          	add	a1,a1,a2
    80004a60:	00371693          	slli	a3,a4,0x3
    80004a64:	00004717          	auipc	a4,0x4
    80004a68:	10c70713          	addi	a4,a4,268 # 80008b70 <timer_scratch>
    80004a6c:	00b7b023          	sd	a1,0(a5)
    80004a70:	00d70733          	add	a4,a4,a3
    80004a74:	00f73c23          	sd	a5,24(a4)
    80004a78:	02c73023          	sd	a2,32(a4)
    80004a7c:	34071073          	csrw	mscratch,a4
    80004a80:	00000797          	auipc	a5,0x0
    80004a84:	65078793          	addi	a5,a5,1616 # 800050d0 <timervec>
    80004a88:	30579073          	csrw	mtvec,a5
    80004a8c:	300027f3          	csrr	a5,mstatus
    80004a90:	0087e793          	ori	a5,a5,8
    80004a94:	30079073          	csrw	mstatus,a5
    80004a98:	304027f3          	csrr	a5,mie
    80004a9c:	0807e793          	ori	a5,a5,128
    80004aa0:	30479073          	csrw	mie,a5
    80004aa4:	00813403          	ld	s0,8(sp)
    80004aa8:	01010113          	addi	sp,sp,16
    80004aac:	00008067          	ret

0000000080004ab0 <system_main>:
    80004ab0:	fe010113          	addi	sp,sp,-32
    80004ab4:	00813823          	sd	s0,16(sp)
    80004ab8:	00913423          	sd	s1,8(sp)
    80004abc:	00113c23          	sd	ra,24(sp)
    80004ac0:	02010413          	addi	s0,sp,32
    80004ac4:	00000097          	auipc	ra,0x0
    80004ac8:	0c4080e7          	jalr	196(ra) # 80004b88 <cpuid>
    80004acc:	00004497          	auipc	s1,0x4
    80004ad0:	fe448493          	addi	s1,s1,-28 # 80008ab0 <started>
    80004ad4:	02050263          	beqz	a0,80004af8 <system_main+0x48>
    80004ad8:	0004a783          	lw	a5,0(s1)
    80004adc:	0007879b          	sext.w	a5,a5
    80004ae0:	fe078ce3          	beqz	a5,80004ad8 <system_main+0x28>
    80004ae4:	0ff0000f          	fence
    80004ae8:	00003517          	auipc	a0,0x3
    80004aec:	87050513          	addi	a0,a0,-1936 # 80007358 <_ZL6digits+0x58>
    80004af0:	00001097          	auipc	ra,0x1
    80004af4:	a7c080e7          	jalr	-1412(ra) # 8000556c <panic>
    80004af8:	00001097          	auipc	ra,0x1
    80004afc:	9d0080e7          	jalr	-1584(ra) # 800054c8 <consoleinit>
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	15c080e7          	jalr	348(ra) # 80005c5c <printfinit>
    80004b08:	00002517          	auipc	a0,0x2
    80004b0c:	6b850513          	addi	a0,a0,1720 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80004b10:	00001097          	auipc	ra,0x1
    80004b14:	ab8080e7          	jalr	-1352(ra) # 800055c8 <__printf>
    80004b18:	00003517          	auipc	a0,0x3
    80004b1c:	81050513          	addi	a0,a0,-2032 # 80007328 <_ZL6digits+0x28>
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	aa8080e7          	jalr	-1368(ra) # 800055c8 <__printf>
    80004b28:	00002517          	auipc	a0,0x2
    80004b2c:	69850513          	addi	a0,a0,1688 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	a98080e7          	jalr	-1384(ra) # 800055c8 <__printf>
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	4b0080e7          	jalr	1200(ra) # 80005fe8 <kinit>
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	148080e7          	jalr	328(ra) # 80004c88 <trapinit>
    80004b48:	00000097          	auipc	ra,0x0
    80004b4c:	16c080e7          	jalr	364(ra) # 80004cb4 <trapinithart>
    80004b50:	00000097          	auipc	ra,0x0
    80004b54:	5c0080e7          	jalr	1472(ra) # 80005110 <plicinit>
    80004b58:	00000097          	auipc	ra,0x0
    80004b5c:	5e0080e7          	jalr	1504(ra) # 80005138 <plicinithart>
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	078080e7          	jalr	120(ra) # 80004bd8 <userinit>
    80004b68:	0ff0000f          	fence
    80004b6c:	00100793          	li	a5,1
    80004b70:	00002517          	auipc	a0,0x2
    80004b74:	7d050513          	addi	a0,a0,2000 # 80007340 <_ZL6digits+0x40>
    80004b78:	00f4a023          	sw	a5,0(s1)
    80004b7c:	00001097          	auipc	ra,0x1
    80004b80:	a4c080e7          	jalr	-1460(ra) # 800055c8 <__printf>
    80004b84:	0000006f          	j	80004b84 <system_main+0xd4>

0000000080004b88 <cpuid>:
    80004b88:	ff010113          	addi	sp,sp,-16
    80004b8c:	00813423          	sd	s0,8(sp)
    80004b90:	01010413          	addi	s0,sp,16
    80004b94:	00020513          	mv	a0,tp
    80004b98:	00813403          	ld	s0,8(sp)
    80004b9c:	0005051b          	sext.w	a0,a0
    80004ba0:	01010113          	addi	sp,sp,16
    80004ba4:	00008067          	ret

0000000080004ba8 <mycpu>:
    80004ba8:	ff010113          	addi	sp,sp,-16
    80004bac:	00813423          	sd	s0,8(sp)
    80004bb0:	01010413          	addi	s0,sp,16
    80004bb4:	00020793          	mv	a5,tp
    80004bb8:	00813403          	ld	s0,8(sp)
    80004bbc:	0007879b          	sext.w	a5,a5
    80004bc0:	00779793          	slli	a5,a5,0x7
    80004bc4:	00005517          	auipc	a0,0x5
    80004bc8:	fdc50513          	addi	a0,a0,-36 # 80009ba0 <cpus>
    80004bcc:	00f50533          	add	a0,a0,a5
    80004bd0:	01010113          	addi	sp,sp,16
    80004bd4:	00008067          	ret

0000000080004bd8 <userinit>:
    80004bd8:	ff010113          	addi	sp,sp,-16
    80004bdc:	00813423          	sd	s0,8(sp)
    80004be0:	01010413          	addi	s0,sp,16
    80004be4:	00813403          	ld	s0,8(sp)
    80004be8:	01010113          	addi	sp,sp,16
    80004bec:	ffffe317          	auipc	t1,0xffffe
    80004bf0:	b5030067          	jr	-1200(t1) # 8000273c <main>

0000000080004bf4 <either_copyout>:
    80004bf4:	ff010113          	addi	sp,sp,-16
    80004bf8:	00813023          	sd	s0,0(sp)
    80004bfc:	00113423          	sd	ra,8(sp)
    80004c00:	01010413          	addi	s0,sp,16
    80004c04:	02051663          	bnez	a0,80004c30 <either_copyout+0x3c>
    80004c08:	00058513          	mv	a0,a1
    80004c0c:	00060593          	mv	a1,a2
    80004c10:	0006861b          	sext.w	a2,a3
    80004c14:	00002097          	auipc	ra,0x2
    80004c18:	c60080e7          	jalr	-928(ra) # 80006874 <__memmove>
    80004c1c:	00813083          	ld	ra,8(sp)
    80004c20:	00013403          	ld	s0,0(sp)
    80004c24:	00000513          	li	a0,0
    80004c28:	01010113          	addi	sp,sp,16
    80004c2c:	00008067          	ret
    80004c30:	00002517          	auipc	a0,0x2
    80004c34:	75050513          	addi	a0,a0,1872 # 80007380 <_ZL6digits+0x80>
    80004c38:	00001097          	auipc	ra,0x1
    80004c3c:	934080e7          	jalr	-1740(ra) # 8000556c <panic>

0000000080004c40 <either_copyin>:
    80004c40:	ff010113          	addi	sp,sp,-16
    80004c44:	00813023          	sd	s0,0(sp)
    80004c48:	00113423          	sd	ra,8(sp)
    80004c4c:	01010413          	addi	s0,sp,16
    80004c50:	02059463          	bnez	a1,80004c78 <either_copyin+0x38>
    80004c54:	00060593          	mv	a1,a2
    80004c58:	0006861b          	sext.w	a2,a3
    80004c5c:	00002097          	auipc	ra,0x2
    80004c60:	c18080e7          	jalr	-1000(ra) # 80006874 <__memmove>
    80004c64:	00813083          	ld	ra,8(sp)
    80004c68:	00013403          	ld	s0,0(sp)
    80004c6c:	00000513          	li	a0,0
    80004c70:	01010113          	addi	sp,sp,16
    80004c74:	00008067          	ret
    80004c78:	00002517          	auipc	a0,0x2
    80004c7c:	73050513          	addi	a0,a0,1840 # 800073a8 <_ZL6digits+0xa8>
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	8ec080e7          	jalr	-1812(ra) # 8000556c <panic>

0000000080004c88 <trapinit>:
    80004c88:	ff010113          	addi	sp,sp,-16
    80004c8c:	00813423          	sd	s0,8(sp)
    80004c90:	01010413          	addi	s0,sp,16
    80004c94:	00813403          	ld	s0,8(sp)
    80004c98:	00002597          	auipc	a1,0x2
    80004c9c:	73858593          	addi	a1,a1,1848 # 800073d0 <_ZL6digits+0xd0>
    80004ca0:	00005517          	auipc	a0,0x5
    80004ca4:	f8050513          	addi	a0,a0,-128 # 80009c20 <tickslock>
    80004ca8:	01010113          	addi	sp,sp,16
    80004cac:	00001317          	auipc	t1,0x1
    80004cb0:	5cc30067          	jr	1484(t1) # 80006278 <initlock>

0000000080004cb4 <trapinithart>:
    80004cb4:	ff010113          	addi	sp,sp,-16
    80004cb8:	00813423          	sd	s0,8(sp)
    80004cbc:	01010413          	addi	s0,sp,16
    80004cc0:	00000797          	auipc	a5,0x0
    80004cc4:	30078793          	addi	a5,a5,768 # 80004fc0 <kernelvec>
    80004cc8:	10579073          	csrw	stvec,a5
    80004ccc:	00813403          	ld	s0,8(sp)
    80004cd0:	01010113          	addi	sp,sp,16
    80004cd4:	00008067          	ret

0000000080004cd8 <usertrap>:
    80004cd8:	ff010113          	addi	sp,sp,-16
    80004cdc:	00813423          	sd	s0,8(sp)
    80004ce0:	01010413          	addi	s0,sp,16
    80004ce4:	00813403          	ld	s0,8(sp)
    80004ce8:	01010113          	addi	sp,sp,16
    80004cec:	00008067          	ret

0000000080004cf0 <usertrapret>:
    80004cf0:	ff010113          	addi	sp,sp,-16
    80004cf4:	00813423          	sd	s0,8(sp)
    80004cf8:	01010413          	addi	s0,sp,16
    80004cfc:	00813403          	ld	s0,8(sp)
    80004d00:	01010113          	addi	sp,sp,16
    80004d04:	00008067          	ret

0000000080004d08 <kerneltrap>:
    80004d08:	fe010113          	addi	sp,sp,-32
    80004d0c:	00813823          	sd	s0,16(sp)
    80004d10:	00113c23          	sd	ra,24(sp)
    80004d14:	00913423          	sd	s1,8(sp)
    80004d18:	02010413          	addi	s0,sp,32
    80004d1c:	142025f3          	csrr	a1,scause
    80004d20:	100027f3          	csrr	a5,sstatus
    80004d24:	0027f793          	andi	a5,a5,2
    80004d28:	10079c63          	bnez	a5,80004e40 <kerneltrap+0x138>
    80004d2c:	142027f3          	csrr	a5,scause
    80004d30:	0207ce63          	bltz	a5,80004d6c <kerneltrap+0x64>
    80004d34:	00002517          	auipc	a0,0x2
    80004d38:	6e450513          	addi	a0,a0,1764 # 80007418 <_ZL6digits+0x118>
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	88c080e7          	jalr	-1908(ra) # 800055c8 <__printf>
    80004d44:	141025f3          	csrr	a1,sepc
    80004d48:	14302673          	csrr	a2,stval
    80004d4c:	00002517          	auipc	a0,0x2
    80004d50:	6dc50513          	addi	a0,a0,1756 # 80007428 <_ZL6digits+0x128>
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	874080e7          	jalr	-1932(ra) # 800055c8 <__printf>
    80004d5c:	00002517          	auipc	a0,0x2
    80004d60:	6e450513          	addi	a0,a0,1764 # 80007440 <_ZL6digits+0x140>
    80004d64:	00001097          	auipc	ra,0x1
    80004d68:	808080e7          	jalr	-2040(ra) # 8000556c <panic>
    80004d6c:	0ff7f713          	andi	a4,a5,255
    80004d70:	00900693          	li	a3,9
    80004d74:	04d70063          	beq	a4,a3,80004db4 <kerneltrap+0xac>
    80004d78:	fff00713          	li	a4,-1
    80004d7c:	03f71713          	slli	a4,a4,0x3f
    80004d80:	00170713          	addi	a4,a4,1
    80004d84:	fae798e3          	bne	a5,a4,80004d34 <kerneltrap+0x2c>
    80004d88:	00000097          	auipc	ra,0x0
    80004d8c:	e00080e7          	jalr	-512(ra) # 80004b88 <cpuid>
    80004d90:	06050663          	beqz	a0,80004dfc <kerneltrap+0xf4>
    80004d94:	144027f3          	csrr	a5,sip
    80004d98:	ffd7f793          	andi	a5,a5,-3
    80004d9c:	14479073          	csrw	sip,a5
    80004da0:	01813083          	ld	ra,24(sp)
    80004da4:	01013403          	ld	s0,16(sp)
    80004da8:	00813483          	ld	s1,8(sp)
    80004dac:	02010113          	addi	sp,sp,32
    80004db0:	00008067          	ret
    80004db4:	00000097          	auipc	ra,0x0
    80004db8:	3d0080e7          	jalr	976(ra) # 80005184 <plic_claim>
    80004dbc:	00a00793          	li	a5,10
    80004dc0:	00050493          	mv	s1,a0
    80004dc4:	06f50863          	beq	a0,a5,80004e34 <kerneltrap+0x12c>
    80004dc8:	fc050ce3          	beqz	a0,80004da0 <kerneltrap+0x98>
    80004dcc:	00050593          	mv	a1,a0
    80004dd0:	00002517          	auipc	a0,0x2
    80004dd4:	62850513          	addi	a0,a0,1576 # 800073f8 <_ZL6digits+0xf8>
    80004dd8:	00000097          	auipc	ra,0x0
    80004ddc:	7f0080e7          	jalr	2032(ra) # 800055c8 <__printf>
    80004de0:	01013403          	ld	s0,16(sp)
    80004de4:	01813083          	ld	ra,24(sp)
    80004de8:	00048513          	mv	a0,s1
    80004dec:	00813483          	ld	s1,8(sp)
    80004df0:	02010113          	addi	sp,sp,32
    80004df4:	00000317          	auipc	t1,0x0
    80004df8:	3c830067          	jr	968(t1) # 800051bc <plic_complete>
    80004dfc:	00005517          	auipc	a0,0x5
    80004e00:	e2450513          	addi	a0,a0,-476 # 80009c20 <tickslock>
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	498080e7          	jalr	1176(ra) # 8000629c <acquire>
    80004e0c:	00004717          	auipc	a4,0x4
    80004e10:	ca870713          	addi	a4,a4,-856 # 80008ab4 <ticks>
    80004e14:	00072783          	lw	a5,0(a4)
    80004e18:	00005517          	auipc	a0,0x5
    80004e1c:	e0850513          	addi	a0,a0,-504 # 80009c20 <tickslock>
    80004e20:	0017879b          	addiw	a5,a5,1
    80004e24:	00f72023          	sw	a5,0(a4)
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	540080e7          	jalr	1344(ra) # 80006368 <release>
    80004e30:	f65ff06f          	j	80004d94 <kerneltrap+0x8c>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	09c080e7          	jalr	156(ra) # 80005ed0 <uartintr>
    80004e3c:	fa5ff06f          	j	80004de0 <kerneltrap+0xd8>
    80004e40:	00002517          	auipc	a0,0x2
    80004e44:	59850513          	addi	a0,a0,1432 # 800073d8 <_ZL6digits+0xd8>
    80004e48:	00000097          	auipc	ra,0x0
    80004e4c:	724080e7          	jalr	1828(ra) # 8000556c <panic>

0000000080004e50 <clockintr>:
    80004e50:	fe010113          	addi	sp,sp,-32
    80004e54:	00813823          	sd	s0,16(sp)
    80004e58:	00913423          	sd	s1,8(sp)
    80004e5c:	00113c23          	sd	ra,24(sp)
    80004e60:	02010413          	addi	s0,sp,32
    80004e64:	00005497          	auipc	s1,0x5
    80004e68:	dbc48493          	addi	s1,s1,-580 # 80009c20 <tickslock>
    80004e6c:	00048513          	mv	a0,s1
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	42c080e7          	jalr	1068(ra) # 8000629c <acquire>
    80004e78:	00004717          	auipc	a4,0x4
    80004e7c:	c3c70713          	addi	a4,a4,-964 # 80008ab4 <ticks>
    80004e80:	00072783          	lw	a5,0(a4)
    80004e84:	01013403          	ld	s0,16(sp)
    80004e88:	01813083          	ld	ra,24(sp)
    80004e8c:	00048513          	mv	a0,s1
    80004e90:	0017879b          	addiw	a5,a5,1
    80004e94:	00813483          	ld	s1,8(sp)
    80004e98:	00f72023          	sw	a5,0(a4)
    80004e9c:	02010113          	addi	sp,sp,32
    80004ea0:	00001317          	auipc	t1,0x1
    80004ea4:	4c830067          	jr	1224(t1) # 80006368 <release>

0000000080004ea8 <devintr>:
    80004ea8:	142027f3          	csrr	a5,scause
    80004eac:	00000513          	li	a0,0
    80004eb0:	0007c463          	bltz	a5,80004eb8 <devintr+0x10>
    80004eb4:	00008067          	ret
    80004eb8:	fe010113          	addi	sp,sp,-32
    80004ebc:	00813823          	sd	s0,16(sp)
    80004ec0:	00113c23          	sd	ra,24(sp)
    80004ec4:	00913423          	sd	s1,8(sp)
    80004ec8:	02010413          	addi	s0,sp,32
    80004ecc:	0ff7f713          	andi	a4,a5,255
    80004ed0:	00900693          	li	a3,9
    80004ed4:	04d70c63          	beq	a4,a3,80004f2c <devintr+0x84>
    80004ed8:	fff00713          	li	a4,-1
    80004edc:	03f71713          	slli	a4,a4,0x3f
    80004ee0:	00170713          	addi	a4,a4,1
    80004ee4:	00e78c63          	beq	a5,a4,80004efc <devintr+0x54>
    80004ee8:	01813083          	ld	ra,24(sp)
    80004eec:	01013403          	ld	s0,16(sp)
    80004ef0:	00813483          	ld	s1,8(sp)
    80004ef4:	02010113          	addi	sp,sp,32
    80004ef8:	00008067          	ret
    80004efc:	00000097          	auipc	ra,0x0
    80004f00:	c8c080e7          	jalr	-884(ra) # 80004b88 <cpuid>
    80004f04:	06050663          	beqz	a0,80004f70 <devintr+0xc8>
    80004f08:	144027f3          	csrr	a5,sip
    80004f0c:	ffd7f793          	andi	a5,a5,-3
    80004f10:	14479073          	csrw	sip,a5
    80004f14:	01813083          	ld	ra,24(sp)
    80004f18:	01013403          	ld	s0,16(sp)
    80004f1c:	00813483          	ld	s1,8(sp)
    80004f20:	00200513          	li	a0,2
    80004f24:	02010113          	addi	sp,sp,32
    80004f28:	00008067          	ret
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	258080e7          	jalr	600(ra) # 80005184 <plic_claim>
    80004f34:	00a00793          	li	a5,10
    80004f38:	00050493          	mv	s1,a0
    80004f3c:	06f50663          	beq	a0,a5,80004fa8 <devintr+0x100>
    80004f40:	00100513          	li	a0,1
    80004f44:	fa0482e3          	beqz	s1,80004ee8 <devintr+0x40>
    80004f48:	00048593          	mv	a1,s1
    80004f4c:	00002517          	auipc	a0,0x2
    80004f50:	4ac50513          	addi	a0,a0,1196 # 800073f8 <_ZL6digits+0xf8>
    80004f54:	00000097          	auipc	ra,0x0
    80004f58:	674080e7          	jalr	1652(ra) # 800055c8 <__printf>
    80004f5c:	00048513          	mv	a0,s1
    80004f60:	00000097          	auipc	ra,0x0
    80004f64:	25c080e7          	jalr	604(ra) # 800051bc <plic_complete>
    80004f68:	00100513          	li	a0,1
    80004f6c:	f7dff06f          	j	80004ee8 <devintr+0x40>
    80004f70:	00005517          	auipc	a0,0x5
    80004f74:	cb050513          	addi	a0,a0,-848 # 80009c20 <tickslock>
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	324080e7          	jalr	804(ra) # 8000629c <acquire>
    80004f80:	00004717          	auipc	a4,0x4
    80004f84:	b3470713          	addi	a4,a4,-1228 # 80008ab4 <ticks>
    80004f88:	00072783          	lw	a5,0(a4)
    80004f8c:	00005517          	auipc	a0,0x5
    80004f90:	c9450513          	addi	a0,a0,-876 # 80009c20 <tickslock>
    80004f94:	0017879b          	addiw	a5,a5,1
    80004f98:	00f72023          	sw	a5,0(a4)
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	3cc080e7          	jalr	972(ra) # 80006368 <release>
    80004fa4:	f65ff06f          	j	80004f08 <devintr+0x60>
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	f28080e7          	jalr	-216(ra) # 80005ed0 <uartintr>
    80004fb0:	fadff06f          	j	80004f5c <devintr+0xb4>
	...

0000000080004fc0 <kernelvec>:
    80004fc0:	f0010113          	addi	sp,sp,-256
    80004fc4:	00113023          	sd	ra,0(sp)
    80004fc8:	00213423          	sd	sp,8(sp)
    80004fcc:	00313823          	sd	gp,16(sp)
    80004fd0:	00413c23          	sd	tp,24(sp)
    80004fd4:	02513023          	sd	t0,32(sp)
    80004fd8:	02613423          	sd	t1,40(sp)
    80004fdc:	02713823          	sd	t2,48(sp)
    80004fe0:	02813c23          	sd	s0,56(sp)
    80004fe4:	04913023          	sd	s1,64(sp)
    80004fe8:	04a13423          	sd	a0,72(sp)
    80004fec:	04b13823          	sd	a1,80(sp)
    80004ff0:	04c13c23          	sd	a2,88(sp)
    80004ff4:	06d13023          	sd	a3,96(sp)
    80004ff8:	06e13423          	sd	a4,104(sp)
    80004ffc:	06f13823          	sd	a5,112(sp)
    80005000:	07013c23          	sd	a6,120(sp)
    80005004:	09113023          	sd	a7,128(sp)
    80005008:	09213423          	sd	s2,136(sp)
    8000500c:	09313823          	sd	s3,144(sp)
    80005010:	09413c23          	sd	s4,152(sp)
    80005014:	0b513023          	sd	s5,160(sp)
    80005018:	0b613423          	sd	s6,168(sp)
    8000501c:	0b713823          	sd	s7,176(sp)
    80005020:	0b813c23          	sd	s8,184(sp)
    80005024:	0d913023          	sd	s9,192(sp)
    80005028:	0da13423          	sd	s10,200(sp)
    8000502c:	0db13823          	sd	s11,208(sp)
    80005030:	0dc13c23          	sd	t3,216(sp)
    80005034:	0fd13023          	sd	t4,224(sp)
    80005038:	0fe13423          	sd	t5,232(sp)
    8000503c:	0ff13823          	sd	t6,240(sp)
    80005040:	cc9ff0ef          	jal	ra,80004d08 <kerneltrap>
    80005044:	00013083          	ld	ra,0(sp)
    80005048:	00813103          	ld	sp,8(sp)
    8000504c:	01013183          	ld	gp,16(sp)
    80005050:	02013283          	ld	t0,32(sp)
    80005054:	02813303          	ld	t1,40(sp)
    80005058:	03013383          	ld	t2,48(sp)
    8000505c:	03813403          	ld	s0,56(sp)
    80005060:	04013483          	ld	s1,64(sp)
    80005064:	04813503          	ld	a0,72(sp)
    80005068:	05013583          	ld	a1,80(sp)
    8000506c:	05813603          	ld	a2,88(sp)
    80005070:	06013683          	ld	a3,96(sp)
    80005074:	06813703          	ld	a4,104(sp)
    80005078:	07013783          	ld	a5,112(sp)
    8000507c:	07813803          	ld	a6,120(sp)
    80005080:	08013883          	ld	a7,128(sp)
    80005084:	08813903          	ld	s2,136(sp)
    80005088:	09013983          	ld	s3,144(sp)
    8000508c:	09813a03          	ld	s4,152(sp)
    80005090:	0a013a83          	ld	s5,160(sp)
    80005094:	0a813b03          	ld	s6,168(sp)
    80005098:	0b013b83          	ld	s7,176(sp)
    8000509c:	0b813c03          	ld	s8,184(sp)
    800050a0:	0c013c83          	ld	s9,192(sp)
    800050a4:	0c813d03          	ld	s10,200(sp)
    800050a8:	0d013d83          	ld	s11,208(sp)
    800050ac:	0d813e03          	ld	t3,216(sp)
    800050b0:	0e013e83          	ld	t4,224(sp)
    800050b4:	0e813f03          	ld	t5,232(sp)
    800050b8:	0f013f83          	ld	t6,240(sp)
    800050bc:	10010113          	addi	sp,sp,256
    800050c0:	10200073          	sret
    800050c4:	00000013          	nop
    800050c8:	00000013          	nop
    800050cc:	00000013          	nop

00000000800050d0 <timervec>:
    800050d0:	34051573          	csrrw	a0,mscratch,a0
    800050d4:	00b53023          	sd	a1,0(a0)
    800050d8:	00c53423          	sd	a2,8(a0)
    800050dc:	00d53823          	sd	a3,16(a0)
    800050e0:	01853583          	ld	a1,24(a0)
    800050e4:	02053603          	ld	a2,32(a0)
    800050e8:	0005b683          	ld	a3,0(a1)
    800050ec:	00c686b3          	add	a3,a3,a2
    800050f0:	00d5b023          	sd	a3,0(a1)
    800050f4:	00200593          	li	a1,2
    800050f8:	14459073          	csrw	sip,a1
    800050fc:	01053683          	ld	a3,16(a0)
    80005100:	00853603          	ld	a2,8(a0)
    80005104:	00053583          	ld	a1,0(a0)
    80005108:	34051573          	csrrw	a0,mscratch,a0
    8000510c:	30200073          	mret

0000000080005110 <plicinit>:
    80005110:	ff010113          	addi	sp,sp,-16
    80005114:	00813423          	sd	s0,8(sp)
    80005118:	01010413          	addi	s0,sp,16
    8000511c:	00813403          	ld	s0,8(sp)
    80005120:	0c0007b7          	lui	a5,0xc000
    80005124:	00100713          	li	a4,1
    80005128:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000512c:	00e7a223          	sw	a4,4(a5)
    80005130:	01010113          	addi	sp,sp,16
    80005134:	00008067          	ret

0000000080005138 <plicinithart>:
    80005138:	ff010113          	addi	sp,sp,-16
    8000513c:	00813023          	sd	s0,0(sp)
    80005140:	00113423          	sd	ra,8(sp)
    80005144:	01010413          	addi	s0,sp,16
    80005148:	00000097          	auipc	ra,0x0
    8000514c:	a40080e7          	jalr	-1472(ra) # 80004b88 <cpuid>
    80005150:	0085171b          	slliw	a4,a0,0x8
    80005154:	0c0027b7          	lui	a5,0xc002
    80005158:	00e787b3          	add	a5,a5,a4
    8000515c:	40200713          	li	a4,1026
    80005160:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005164:	00813083          	ld	ra,8(sp)
    80005168:	00013403          	ld	s0,0(sp)
    8000516c:	00d5151b          	slliw	a0,a0,0xd
    80005170:	0c2017b7          	lui	a5,0xc201
    80005174:	00a78533          	add	a0,a5,a0
    80005178:	00052023          	sw	zero,0(a0)
    8000517c:	01010113          	addi	sp,sp,16
    80005180:	00008067          	ret

0000000080005184 <plic_claim>:
    80005184:	ff010113          	addi	sp,sp,-16
    80005188:	00813023          	sd	s0,0(sp)
    8000518c:	00113423          	sd	ra,8(sp)
    80005190:	01010413          	addi	s0,sp,16
    80005194:	00000097          	auipc	ra,0x0
    80005198:	9f4080e7          	jalr	-1548(ra) # 80004b88 <cpuid>
    8000519c:	00813083          	ld	ra,8(sp)
    800051a0:	00013403          	ld	s0,0(sp)
    800051a4:	00d5151b          	slliw	a0,a0,0xd
    800051a8:	0c2017b7          	lui	a5,0xc201
    800051ac:	00a78533          	add	a0,a5,a0
    800051b0:	00452503          	lw	a0,4(a0)
    800051b4:	01010113          	addi	sp,sp,16
    800051b8:	00008067          	ret

00000000800051bc <plic_complete>:
    800051bc:	fe010113          	addi	sp,sp,-32
    800051c0:	00813823          	sd	s0,16(sp)
    800051c4:	00913423          	sd	s1,8(sp)
    800051c8:	00113c23          	sd	ra,24(sp)
    800051cc:	02010413          	addi	s0,sp,32
    800051d0:	00050493          	mv	s1,a0
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	9b4080e7          	jalr	-1612(ra) # 80004b88 <cpuid>
    800051dc:	01813083          	ld	ra,24(sp)
    800051e0:	01013403          	ld	s0,16(sp)
    800051e4:	00d5179b          	slliw	a5,a0,0xd
    800051e8:	0c201737          	lui	a4,0xc201
    800051ec:	00f707b3          	add	a5,a4,a5
    800051f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800051f4:	00813483          	ld	s1,8(sp)
    800051f8:	02010113          	addi	sp,sp,32
    800051fc:	00008067          	ret

0000000080005200 <consolewrite>:
    80005200:	fb010113          	addi	sp,sp,-80
    80005204:	04813023          	sd	s0,64(sp)
    80005208:	04113423          	sd	ra,72(sp)
    8000520c:	02913c23          	sd	s1,56(sp)
    80005210:	03213823          	sd	s2,48(sp)
    80005214:	03313423          	sd	s3,40(sp)
    80005218:	03413023          	sd	s4,32(sp)
    8000521c:	01513c23          	sd	s5,24(sp)
    80005220:	05010413          	addi	s0,sp,80
    80005224:	06c05c63          	blez	a2,8000529c <consolewrite+0x9c>
    80005228:	00060993          	mv	s3,a2
    8000522c:	00050a13          	mv	s4,a0
    80005230:	00058493          	mv	s1,a1
    80005234:	00000913          	li	s2,0
    80005238:	fff00a93          	li	s5,-1
    8000523c:	01c0006f          	j	80005258 <consolewrite+0x58>
    80005240:	fbf44503          	lbu	a0,-65(s0)
    80005244:	0019091b          	addiw	s2,s2,1
    80005248:	00148493          	addi	s1,s1,1
    8000524c:	00001097          	auipc	ra,0x1
    80005250:	a9c080e7          	jalr	-1380(ra) # 80005ce8 <uartputc>
    80005254:	03298063          	beq	s3,s2,80005274 <consolewrite+0x74>
    80005258:	00048613          	mv	a2,s1
    8000525c:	00100693          	li	a3,1
    80005260:	000a0593          	mv	a1,s4
    80005264:	fbf40513          	addi	a0,s0,-65
    80005268:	00000097          	auipc	ra,0x0
    8000526c:	9d8080e7          	jalr	-1576(ra) # 80004c40 <either_copyin>
    80005270:	fd5518e3          	bne	a0,s5,80005240 <consolewrite+0x40>
    80005274:	04813083          	ld	ra,72(sp)
    80005278:	04013403          	ld	s0,64(sp)
    8000527c:	03813483          	ld	s1,56(sp)
    80005280:	02813983          	ld	s3,40(sp)
    80005284:	02013a03          	ld	s4,32(sp)
    80005288:	01813a83          	ld	s5,24(sp)
    8000528c:	00090513          	mv	a0,s2
    80005290:	03013903          	ld	s2,48(sp)
    80005294:	05010113          	addi	sp,sp,80
    80005298:	00008067          	ret
    8000529c:	00000913          	li	s2,0
    800052a0:	fd5ff06f          	j	80005274 <consolewrite+0x74>

00000000800052a4 <consoleread>:
    800052a4:	f9010113          	addi	sp,sp,-112
    800052a8:	06813023          	sd	s0,96(sp)
    800052ac:	04913c23          	sd	s1,88(sp)
    800052b0:	05213823          	sd	s2,80(sp)
    800052b4:	05313423          	sd	s3,72(sp)
    800052b8:	05413023          	sd	s4,64(sp)
    800052bc:	03513c23          	sd	s5,56(sp)
    800052c0:	03613823          	sd	s6,48(sp)
    800052c4:	03713423          	sd	s7,40(sp)
    800052c8:	03813023          	sd	s8,32(sp)
    800052cc:	06113423          	sd	ra,104(sp)
    800052d0:	01913c23          	sd	s9,24(sp)
    800052d4:	07010413          	addi	s0,sp,112
    800052d8:	00060b93          	mv	s7,a2
    800052dc:	00050913          	mv	s2,a0
    800052e0:	00058c13          	mv	s8,a1
    800052e4:	00060b1b          	sext.w	s6,a2
    800052e8:	00005497          	auipc	s1,0x5
    800052ec:	96048493          	addi	s1,s1,-1696 # 80009c48 <cons>
    800052f0:	00400993          	li	s3,4
    800052f4:	fff00a13          	li	s4,-1
    800052f8:	00a00a93          	li	s5,10
    800052fc:	05705e63          	blez	s7,80005358 <consoleread+0xb4>
    80005300:	09c4a703          	lw	a4,156(s1)
    80005304:	0984a783          	lw	a5,152(s1)
    80005308:	0007071b          	sext.w	a4,a4
    8000530c:	08e78463          	beq	a5,a4,80005394 <consoleread+0xf0>
    80005310:	07f7f713          	andi	a4,a5,127
    80005314:	00e48733          	add	a4,s1,a4
    80005318:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000531c:	0017869b          	addiw	a3,a5,1
    80005320:	08d4ac23          	sw	a3,152(s1)
    80005324:	00070c9b          	sext.w	s9,a4
    80005328:	0b370663          	beq	a4,s3,800053d4 <consoleread+0x130>
    8000532c:	00100693          	li	a3,1
    80005330:	f9f40613          	addi	a2,s0,-97
    80005334:	000c0593          	mv	a1,s8
    80005338:	00090513          	mv	a0,s2
    8000533c:	f8e40fa3          	sb	a4,-97(s0)
    80005340:	00000097          	auipc	ra,0x0
    80005344:	8b4080e7          	jalr	-1868(ra) # 80004bf4 <either_copyout>
    80005348:	01450863          	beq	a0,s4,80005358 <consoleread+0xb4>
    8000534c:	001c0c13          	addi	s8,s8,1
    80005350:	fffb8b9b          	addiw	s7,s7,-1
    80005354:	fb5c94e3          	bne	s9,s5,800052fc <consoleread+0x58>
    80005358:	000b851b          	sext.w	a0,s7
    8000535c:	06813083          	ld	ra,104(sp)
    80005360:	06013403          	ld	s0,96(sp)
    80005364:	05813483          	ld	s1,88(sp)
    80005368:	05013903          	ld	s2,80(sp)
    8000536c:	04813983          	ld	s3,72(sp)
    80005370:	04013a03          	ld	s4,64(sp)
    80005374:	03813a83          	ld	s5,56(sp)
    80005378:	02813b83          	ld	s7,40(sp)
    8000537c:	02013c03          	ld	s8,32(sp)
    80005380:	01813c83          	ld	s9,24(sp)
    80005384:	40ab053b          	subw	a0,s6,a0
    80005388:	03013b03          	ld	s6,48(sp)
    8000538c:	07010113          	addi	sp,sp,112
    80005390:	00008067          	ret
    80005394:	00001097          	auipc	ra,0x1
    80005398:	1d8080e7          	jalr	472(ra) # 8000656c <push_on>
    8000539c:	0984a703          	lw	a4,152(s1)
    800053a0:	09c4a783          	lw	a5,156(s1)
    800053a4:	0007879b          	sext.w	a5,a5
    800053a8:	fef70ce3          	beq	a4,a5,800053a0 <consoleread+0xfc>
    800053ac:	00001097          	auipc	ra,0x1
    800053b0:	234080e7          	jalr	564(ra) # 800065e0 <pop_on>
    800053b4:	0984a783          	lw	a5,152(s1)
    800053b8:	07f7f713          	andi	a4,a5,127
    800053bc:	00e48733          	add	a4,s1,a4
    800053c0:	01874703          	lbu	a4,24(a4)
    800053c4:	0017869b          	addiw	a3,a5,1
    800053c8:	08d4ac23          	sw	a3,152(s1)
    800053cc:	00070c9b          	sext.w	s9,a4
    800053d0:	f5371ee3          	bne	a4,s3,8000532c <consoleread+0x88>
    800053d4:	000b851b          	sext.w	a0,s7
    800053d8:	f96bf2e3          	bgeu	s7,s6,8000535c <consoleread+0xb8>
    800053dc:	08f4ac23          	sw	a5,152(s1)
    800053e0:	f7dff06f          	j	8000535c <consoleread+0xb8>

00000000800053e4 <consputc>:
    800053e4:	10000793          	li	a5,256
    800053e8:	00f50663          	beq	a0,a5,800053f4 <consputc+0x10>
    800053ec:	00001317          	auipc	t1,0x1
    800053f0:	9f430067          	jr	-1548(t1) # 80005de0 <uartputc_sync>
    800053f4:	ff010113          	addi	sp,sp,-16
    800053f8:	00113423          	sd	ra,8(sp)
    800053fc:	00813023          	sd	s0,0(sp)
    80005400:	01010413          	addi	s0,sp,16
    80005404:	00800513          	li	a0,8
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	9d8080e7          	jalr	-1576(ra) # 80005de0 <uartputc_sync>
    80005410:	02000513          	li	a0,32
    80005414:	00001097          	auipc	ra,0x1
    80005418:	9cc080e7          	jalr	-1588(ra) # 80005de0 <uartputc_sync>
    8000541c:	00013403          	ld	s0,0(sp)
    80005420:	00813083          	ld	ra,8(sp)
    80005424:	00800513          	li	a0,8
    80005428:	01010113          	addi	sp,sp,16
    8000542c:	00001317          	auipc	t1,0x1
    80005430:	9b430067          	jr	-1612(t1) # 80005de0 <uartputc_sync>

0000000080005434 <consoleintr>:
    80005434:	fe010113          	addi	sp,sp,-32
    80005438:	00813823          	sd	s0,16(sp)
    8000543c:	00913423          	sd	s1,8(sp)
    80005440:	01213023          	sd	s2,0(sp)
    80005444:	00113c23          	sd	ra,24(sp)
    80005448:	02010413          	addi	s0,sp,32
    8000544c:	00004917          	auipc	s2,0x4
    80005450:	7fc90913          	addi	s2,s2,2044 # 80009c48 <cons>
    80005454:	00050493          	mv	s1,a0
    80005458:	00090513          	mv	a0,s2
    8000545c:	00001097          	auipc	ra,0x1
    80005460:	e40080e7          	jalr	-448(ra) # 8000629c <acquire>
    80005464:	02048c63          	beqz	s1,8000549c <consoleintr+0x68>
    80005468:	0a092783          	lw	a5,160(s2)
    8000546c:	09892703          	lw	a4,152(s2)
    80005470:	07f00693          	li	a3,127
    80005474:	40e7873b          	subw	a4,a5,a4
    80005478:	02e6e263          	bltu	a3,a4,8000549c <consoleintr+0x68>
    8000547c:	00d00713          	li	a4,13
    80005480:	04e48063          	beq	s1,a4,800054c0 <consoleintr+0x8c>
    80005484:	07f7f713          	andi	a4,a5,127
    80005488:	00e90733          	add	a4,s2,a4
    8000548c:	0017879b          	addiw	a5,a5,1
    80005490:	0af92023          	sw	a5,160(s2)
    80005494:	00970c23          	sb	s1,24(a4)
    80005498:	08f92e23          	sw	a5,156(s2)
    8000549c:	01013403          	ld	s0,16(sp)
    800054a0:	01813083          	ld	ra,24(sp)
    800054a4:	00813483          	ld	s1,8(sp)
    800054a8:	00013903          	ld	s2,0(sp)
    800054ac:	00004517          	auipc	a0,0x4
    800054b0:	79c50513          	addi	a0,a0,1948 # 80009c48 <cons>
    800054b4:	02010113          	addi	sp,sp,32
    800054b8:	00001317          	auipc	t1,0x1
    800054bc:	eb030067          	jr	-336(t1) # 80006368 <release>
    800054c0:	00a00493          	li	s1,10
    800054c4:	fc1ff06f          	j	80005484 <consoleintr+0x50>

00000000800054c8 <consoleinit>:
    800054c8:	fe010113          	addi	sp,sp,-32
    800054cc:	00113c23          	sd	ra,24(sp)
    800054d0:	00813823          	sd	s0,16(sp)
    800054d4:	00913423          	sd	s1,8(sp)
    800054d8:	02010413          	addi	s0,sp,32
    800054dc:	00004497          	auipc	s1,0x4
    800054e0:	76c48493          	addi	s1,s1,1900 # 80009c48 <cons>
    800054e4:	00048513          	mv	a0,s1
    800054e8:	00002597          	auipc	a1,0x2
    800054ec:	f6858593          	addi	a1,a1,-152 # 80007450 <_ZL6digits+0x150>
    800054f0:	00001097          	auipc	ra,0x1
    800054f4:	d88080e7          	jalr	-632(ra) # 80006278 <initlock>
    800054f8:	00000097          	auipc	ra,0x0
    800054fc:	7ac080e7          	jalr	1964(ra) # 80005ca4 <uartinit>
    80005500:	01813083          	ld	ra,24(sp)
    80005504:	01013403          	ld	s0,16(sp)
    80005508:	00000797          	auipc	a5,0x0
    8000550c:	d9c78793          	addi	a5,a5,-612 # 800052a4 <consoleread>
    80005510:	0af4bc23          	sd	a5,184(s1)
    80005514:	00000797          	auipc	a5,0x0
    80005518:	cec78793          	addi	a5,a5,-788 # 80005200 <consolewrite>
    8000551c:	0cf4b023          	sd	a5,192(s1)
    80005520:	00813483          	ld	s1,8(sp)
    80005524:	02010113          	addi	sp,sp,32
    80005528:	00008067          	ret

000000008000552c <console_read>:
    8000552c:	ff010113          	addi	sp,sp,-16
    80005530:	00813423          	sd	s0,8(sp)
    80005534:	01010413          	addi	s0,sp,16
    80005538:	00813403          	ld	s0,8(sp)
    8000553c:	00004317          	auipc	t1,0x4
    80005540:	7c433303          	ld	t1,1988(t1) # 80009d00 <devsw+0x10>
    80005544:	01010113          	addi	sp,sp,16
    80005548:	00030067          	jr	t1

000000008000554c <console_write>:
    8000554c:	ff010113          	addi	sp,sp,-16
    80005550:	00813423          	sd	s0,8(sp)
    80005554:	01010413          	addi	s0,sp,16
    80005558:	00813403          	ld	s0,8(sp)
    8000555c:	00004317          	auipc	t1,0x4
    80005560:	7ac33303          	ld	t1,1964(t1) # 80009d08 <devsw+0x18>
    80005564:	01010113          	addi	sp,sp,16
    80005568:	00030067          	jr	t1

000000008000556c <panic>:
    8000556c:	fe010113          	addi	sp,sp,-32
    80005570:	00113c23          	sd	ra,24(sp)
    80005574:	00813823          	sd	s0,16(sp)
    80005578:	00913423          	sd	s1,8(sp)
    8000557c:	02010413          	addi	s0,sp,32
    80005580:	00050493          	mv	s1,a0
    80005584:	00002517          	auipc	a0,0x2
    80005588:	ed450513          	addi	a0,a0,-300 # 80007458 <_ZL6digits+0x158>
    8000558c:	00005797          	auipc	a5,0x5
    80005590:	8007ae23          	sw	zero,-2020(a5) # 80009da8 <pr+0x18>
    80005594:	00000097          	auipc	ra,0x0
    80005598:	034080e7          	jalr	52(ra) # 800055c8 <__printf>
    8000559c:	00048513          	mv	a0,s1
    800055a0:	00000097          	auipc	ra,0x0
    800055a4:	028080e7          	jalr	40(ra) # 800055c8 <__printf>
    800055a8:	00002517          	auipc	a0,0x2
    800055ac:	c1850513          	addi	a0,a0,-1000 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800055b0:	00000097          	auipc	ra,0x0
    800055b4:	018080e7          	jalr	24(ra) # 800055c8 <__printf>
    800055b8:	00100793          	li	a5,1
    800055bc:	00003717          	auipc	a4,0x3
    800055c0:	4ef72e23          	sw	a5,1276(a4) # 80008ab8 <panicked>
    800055c4:	0000006f          	j	800055c4 <panic+0x58>

00000000800055c8 <__printf>:
    800055c8:	f3010113          	addi	sp,sp,-208
    800055cc:	08813023          	sd	s0,128(sp)
    800055d0:	07313423          	sd	s3,104(sp)
    800055d4:	09010413          	addi	s0,sp,144
    800055d8:	05813023          	sd	s8,64(sp)
    800055dc:	08113423          	sd	ra,136(sp)
    800055e0:	06913c23          	sd	s1,120(sp)
    800055e4:	07213823          	sd	s2,112(sp)
    800055e8:	07413023          	sd	s4,96(sp)
    800055ec:	05513c23          	sd	s5,88(sp)
    800055f0:	05613823          	sd	s6,80(sp)
    800055f4:	05713423          	sd	s7,72(sp)
    800055f8:	03913c23          	sd	s9,56(sp)
    800055fc:	03a13823          	sd	s10,48(sp)
    80005600:	03b13423          	sd	s11,40(sp)
    80005604:	00004317          	auipc	t1,0x4
    80005608:	78c30313          	addi	t1,t1,1932 # 80009d90 <pr>
    8000560c:	01832c03          	lw	s8,24(t1)
    80005610:	00b43423          	sd	a1,8(s0)
    80005614:	00c43823          	sd	a2,16(s0)
    80005618:	00d43c23          	sd	a3,24(s0)
    8000561c:	02e43023          	sd	a4,32(s0)
    80005620:	02f43423          	sd	a5,40(s0)
    80005624:	03043823          	sd	a6,48(s0)
    80005628:	03143c23          	sd	a7,56(s0)
    8000562c:	00050993          	mv	s3,a0
    80005630:	4a0c1663          	bnez	s8,80005adc <__printf+0x514>
    80005634:	60098c63          	beqz	s3,80005c4c <__printf+0x684>
    80005638:	0009c503          	lbu	a0,0(s3)
    8000563c:	00840793          	addi	a5,s0,8
    80005640:	f6f43c23          	sd	a5,-136(s0)
    80005644:	00000493          	li	s1,0
    80005648:	22050063          	beqz	a0,80005868 <__printf+0x2a0>
    8000564c:	00002a37          	lui	s4,0x2
    80005650:	00018ab7          	lui	s5,0x18
    80005654:	000f4b37          	lui	s6,0xf4
    80005658:	00989bb7          	lui	s7,0x989
    8000565c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005660:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005664:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005668:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000566c:	00148c9b          	addiw	s9,s1,1
    80005670:	02500793          	li	a5,37
    80005674:	01998933          	add	s2,s3,s9
    80005678:	38f51263          	bne	a0,a5,800059fc <__printf+0x434>
    8000567c:	00094783          	lbu	a5,0(s2)
    80005680:	00078c9b          	sext.w	s9,a5
    80005684:	1e078263          	beqz	a5,80005868 <__printf+0x2a0>
    80005688:	0024849b          	addiw	s1,s1,2
    8000568c:	07000713          	li	a4,112
    80005690:	00998933          	add	s2,s3,s1
    80005694:	38e78a63          	beq	a5,a4,80005a28 <__printf+0x460>
    80005698:	20f76863          	bltu	a4,a5,800058a8 <__printf+0x2e0>
    8000569c:	42a78863          	beq	a5,a0,80005acc <__printf+0x504>
    800056a0:	06400713          	li	a4,100
    800056a4:	40e79663          	bne	a5,a4,80005ab0 <__printf+0x4e8>
    800056a8:	f7843783          	ld	a5,-136(s0)
    800056ac:	0007a603          	lw	a2,0(a5)
    800056b0:	00878793          	addi	a5,a5,8
    800056b4:	f6f43c23          	sd	a5,-136(s0)
    800056b8:	42064a63          	bltz	a2,80005aec <__printf+0x524>
    800056bc:	00a00713          	li	a4,10
    800056c0:	02e677bb          	remuw	a5,a2,a4
    800056c4:	00002d97          	auipc	s11,0x2
    800056c8:	dbcd8d93          	addi	s11,s11,-580 # 80007480 <digits>
    800056cc:	00900593          	li	a1,9
    800056d0:	0006051b          	sext.w	a0,a2
    800056d4:	00000c93          	li	s9,0
    800056d8:	02079793          	slli	a5,a5,0x20
    800056dc:	0207d793          	srli	a5,a5,0x20
    800056e0:	00fd87b3          	add	a5,s11,a5
    800056e4:	0007c783          	lbu	a5,0(a5)
    800056e8:	02e656bb          	divuw	a3,a2,a4
    800056ec:	f8f40023          	sb	a5,-128(s0)
    800056f0:	14c5d863          	bge	a1,a2,80005840 <__printf+0x278>
    800056f4:	06300593          	li	a1,99
    800056f8:	00100c93          	li	s9,1
    800056fc:	02e6f7bb          	remuw	a5,a3,a4
    80005700:	02079793          	slli	a5,a5,0x20
    80005704:	0207d793          	srli	a5,a5,0x20
    80005708:	00fd87b3          	add	a5,s11,a5
    8000570c:	0007c783          	lbu	a5,0(a5)
    80005710:	02e6d73b          	divuw	a4,a3,a4
    80005714:	f8f400a3          	sb	a5,-127(s0)
    80005718:	12a5f463          	bgeu	a1,a0,80005840 <__printf+0x278>
    8000571c:	00a00693          	li	a3,10
    80005720:	00900593          	li	a1,9
    80005724:	02d777bb          	remuw	a5,a4,a3
    80005728:	02079793          	slli	a5,a5,0x20
    8000572c:	0207d793          	srli	a5,a5,0x20
    80005730:	00fd87b3          	add	a5,s11,a5
    80005734:	0007c503          	lbu	a0,0(a5)
    80005738:	02d757bb          	divuw	a5,a4,a3
    8000573c:	f8a40123          	sb	a0,-126(s0)
    80005740:	48e5f263          	bgeu	a1,a4,80005bc4 <__printf+0x5fc>
    80005744:	06300513          	li	a0,99
    80005748:	02d7f5bb          	remuw	a1,a5,a3
    8000574c:	02059593          	slli	a1,a1,0x20
    80005750:	0205d593          	srli	a1,a1,0x20
    80005754:	00bd85b3          	add	a1,s11,a1
    80005758:	0005c583          	lbu	a1,0(a1)
    8000575c:	02d7d7bb          	divuw	a5,a5,a3
    80005760:	f8b401a3          	sb	a1,-125(s0)
    80005764:	48e57263          	bgeu	a0,a4,80005be8 <__printf+0x620>
    80005768:	3e700513          	li	a0,999
    8000576c:	02d7f5bb          	remuw	a1,a5,a3
    80005770:	02059593          	slli	a1,a1,0x20
    80005774:	0205d593          	srli	a1,a1,0x20
    80005778:	00bd85b3          	add	a1,s11,a1
    8000577c:	0005c583          	lbu	a1,0(a1)
    80005780:	02d7d7bb          	divuw	a5,a5,a3
    80005784:	f8b40223          	sb	a1,-124(s0)
    80005788:	46e57663          	bgeu	a0,a4,80005bf4 <__printf+0x62c>
    8000578c:	02d7f5bb          	remuw	a1,a5,a3
    80005790:	02059593          	slli	a1,a1,0x20
    80005794:	0205d593          	srli	a1,a1,0x20
    80005798:	00bd85b3          	add	a1,s11,a1
    8000579c:	0005c583          	lbu	a1,0(a1)
    800057a0:	02d7d7bb          	divuw	a5,a5,a3
    800057a4:	f8b402a3          	sb	a1,-123(s0)
    800057a8:	46ea7863          	bgeu	s4,a4,80005c18 <__printf+0x650>
    800057ac:	02d7f5bb          	remuw	a1,a5,a3
    800057b0:	02059593          	slli	a1,a1,0x20
    800057b4:	0205d593          	srli	a1,a1,0x20
    800057b8:	00bd85b3          	add	a1,s11,a1
    800057bc:	0005c583          	lbu	a1,0(a1)
    800057c0:	02d7d7bb          	divuw	a5,a5,a3
    800057c4:	f8b40323          	sb	a1,-122(s0)
    800057c8:	3eeaf863          	bgeu	s5,a4,80005bb8 <__printf+0x5f0>
    800057cc:	02d7f5bb          	remuw	a1,a5,a3
    800057d0:	02059593          	slli	a1,a1,0x20
    800057d4:	0205d593          	srli	a1,a1,0x20
    800057d8:	00bd85b3          	add	a1,s11,a1
    800057dc:	0005c583          	lbu	a1,0(a1)
    800057e0:	02d7d7bb          	divuw	a5,a5,a3
    800057e4:	f8b403a3          	sb	a1,-121(s0)
    800057e8:	42eb7e63          	bgeu	s6,a4,80005c24 <__printf+0x65c>
    800057ec:	02d7f5bb          	remuw	a1,a5,a3
    800057f0:	02059593          	slli	a1,a1,0x20
    800057f4:	0205d593          	srli	a1,a1,0x20
    800057f8:	00bd85b3          	add	a1,s11,a1
    800057fc:	0005c583          	lbu	a1,0(a1)
    80005800:	02d7d7bb          	divuw	a5,a5,a3
    80005804:	f8b40423          	sb	a1,-120(s0)
    80005808:	42ebfc63          	bgeu	s7,a4,80005c40 <__printf+0x678>
    8000580c:	02079793          	slli	a5,a5,0x20
    80005810:	0207d793          	srli	a5,a5,0x20
    80005814:	00fd8db3          	add	s11,s11,a5
    80005818:	000dc703          	lbu	a4,0(s11)
    8000581c:	00a00793          	li	a5,10
    80005820:	00900c93          	li	s9,9
    80005824:	f8e404a3          	sb	a4,-119(s0)
    80005828:	00065c63          	bgez	a2,80005840 <__printf+0x278>
    8000582c:	f9040713          	addi	a4,s0,-112
    80005830:	00f70733          	add	a4,a4,a5
    80005834:	02d00693          	li	a3,45
    80005838:	fed70823          	sb	a3,-16(a4)
    8000583c:	00078c93          	mv	s9,a5
    80005840:	f8040793          	addi	a5,s0,-128
    80005844:	01978cb3          	add	s9,a5,s9
    80005848:	f7f40d13          	addi	s10,s0,-129
    8000584c:	000cc503          	lbu	a0,0(s9)
    80005850:	fffc8c93          	addi	s9,s9,-1
    80005854:	00000097          	auipc	ra,0x0
    80005858:	b90080e7          	jalr	-1136(ra) # 800053e4 <consputc>
    8000585c:	ffac98e3          	bne	s9,s10,8000584c <__printf+0x284>
    80005860:	00094503          	lbu	a0,0(s2)
    80005864:	e00514e3          	bnez	a0,8000566c <__printf+0xa4>
    80005868:	1a0c1663          	bnez	s8,80005a14 <__printf+0x44c>
    8000586c:	08813083          	ld	ra,136(sp)
    80005870:	08013403          	ld	s0,128(sp)
    80005874:	07813483          	ld	s1,120(sp)
    80005878:	07013903          	ld	s2,112(sp)
    8000587c:	06813983          	ld	s3,104(sp)
    80005880:	06013a03          	ld	s4,96(sp)
    80005884:	05813a83          	ld	s5,88(sp)
    80005888:	05013b03          	ld	s6,80(sp)
    8000588c:	04813b83          	ld	s7,72(sp)
    80005890:	04013c03          	ld	s8,64(sp)
    80005894:	03813c83          	ld	s9,56(sp)
    80005898:	03013d03          	ld	s10,48(sp)
    8000589c:	02813d83          	ld	s11,40(sp)
    800058a0:	0d010113          	addi	sp,sp,208
    800058a4:	00008067          	ret
    800058a8:	07300713          	li	a4,115
    800058ac:	1ce78a63          	beq	a5,a4,80005a80 <__printf+0x4b8>
    800058b0:	07800713          	li	a4,120
    800058b4:	1ee79e63          	bne	a5,a4,80005ab0 <__printf+0x4e8>
    800058b8:	f7843783          	ld	a5,-136(s0)
    800058bc:	0007a703          	lw	a4,0(a5)
    800058c0:	00878793          	addi	a5,a5,8
    800058c4:	f6f43c23          	sd	a5,-136(s0)
    800058c8:	28074263          	bltz	a4,80005b4c <__printf+0x584>
    800058cc:	00002d97          	auipc	s11,0x2
    800058d0:	bb4d8d93          	addi	s11,s11,-1100 # 80007480 <digits>
    800058d4:	00f77793          	andi	a5,a4,15
    800058d8:	00fd87b3          	add	a5,s11,a5
    800058dc:	0007c683          	lbu	a3,0(a5)
    800058e0:	00f00613          	li	a2,15
    800058e4:	0007079b          	sext.w	a5,a4
    800058e8:	f8d40023          	sb	a3,-128(s0)
    800058ec:	0047559b          	srliw	a1,a4,0x4
    800058f0:	0047569b          	srliw	a3,a4,0x4
    800058f4:	00000c93          	li	s9,0
    800058f8:	0ee65063          	bge	a2,a4,800059d8 <__printf+0x410>
    800058fc:	00f6f693          	andi	a3,a3,15
    80005900:	00dd86b3          	add	a3,s11,a3
    80005904:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005908:	0087d79b          	srliw	a5,a5,0x8
    8000590c:	00100c93          	li	s9,1
    80005910:	f8d400a3          	sb	a3,-127(s0)
    80005914:	0cb67263          	bgeu	a2,a1,800059d8 <__printf+0x410>
    80005918:	00f7f693          	andi	a3,a5,15
    8000591c:	00dd86b3          	add	a3,s11,a3
    80005920:	0006c583          	lbu	a1,0(a3)
    80005924:	00f00613          	li	a2,15
    80005928:	0047d69b          	srliw	a3,a5,0x4
    8000592c:	f8b40123          	sb	a1,-126(s0)
    80005930:	0047d593          	srli	a1,a5,0x4
    80005934:	28f67e63          	bgeu	a2,a5,80005bd0 <__printf+0x608>
    80005938:	00f6f693          	andi	a3,a3,15
    8000593c:	00dd86b3          	add	a3,s11,a3
    80005940:	0006c503          	lbu	a0,0(a3)
    80005944:	0087d813          	srli	a6,a5,0x8
    80005948:	0087d69b          	srliw	a3,a5,0x8
    8000594c:	f8a401a3          	sb	a0,-125(s0)
    80005950:	28b67663          	bgeu	a2,a1,80005bdc <__printf+0x614>
    80005954:	00f6f693          	andi	a3,a3,15
    80005958:	00dd86b3          	add	a3,s11,a3
    8000595c:	0006c583          	lbu	a1,0(a3)
    80005960:	00c7d513          	srli	a0,a5,0xc
    80005964:	00c7d69b          	srliw	a3,a5,0xc
    80005968:	f8b40223          	sb	a1,-124(s0)
    8000596c:	29067a63          	bgeu	a2,a6,80005c00 <__printf+0x638>
    80005970:	00f6f693          	andi	a3,a3,15
    80005974:	00dd86b3          	add	a3,s11,a3
    80005978:	0006c583          	lbu	a1,0(a3)
    8000597c:	0107d813          	srli	a6,a5,0x10
    80005980:	0107d69b          	srliw	a3,a5,0x10
    80005984:	f8b402a3          	sb	a1,-123(s0)
    80005988:	28a67263          	bgeu	a2,a0,80005c0c <__printf+0x644>
    8000598c:	00f6f693          	andi	a3,a3,15
    80005990:	00dd86b3          	add	a3,s11,a3
    80005994:	0006c683          	lbu	a3,0(a3)
    80005998:	0147d79b          	srliw	a5,a5,0x14
    8000599c:	f8d40323          	sb	a3,-122(s0)
    800059a0:	21067663          	bgeu	a2,a6,80005bac <__printf+0x5e4>
    800059a4:	02079793          	slli	a5,a5,0x20
    800059a8:	0207d793          	srli	a5,a5,0x20
    800059ac:	00fd8db3          	add	s11,s11,a5
    800059b0:	000dc683          	lbu	a3,0(s11)
    800059b4:	00800793          	li	a5,8
    800059b8:	00700c93          	li	s9,7
    800059bc:	f8d403a3          	sb	a3,-121(s0)
    800059c0:	00075c63          	bgez	a4,800059d8 <__printf+0x410>
    800059c4:	f9040713          	addi	a4,s0,-112
    800059c8:	00f70733          	add	a4,a4,a5
    800059cc:	02d00693          	li	a3,45
    800059d0:	fed70823          	sb	a3,-16(a4)
    800059d4:	00078c93          	mv	s9,a5
    800059d8:	f8040793          	addi	a5,s0,-128
    800059dc:	01978cb3          	add	s9,a5,s9
    800059e0:	f7f40d13          	addi	s10,s0,-129
    800059e4:	000cc503          	lbu	a0,0(s9)
    800059e8:	fffc8c93          	addi	s9,s9,-1
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	9f8080e7          	jalr	-1544(ra) # 800053e4 <consputc>
    800059f4:	ff9d18e3          	bne	s10,s9,800059e4 <__printf+0x41c>
    800059f8:	0100006f          	j	80005a08 <__printf+0x440>
    800059fc:	00000097          	auipc	ra,0x0
    80005a00:	9e8080e7          	jalr	-1560(ra) # 800053e4 <consputc>
    80005a04:	000c8493          	mv	s1,s9
    80005a08:	00094503          	lbu	a0,0(s2)
    80005a0c:	c60510e3          	bnez	a0,8000566c <__printf+0xa4>
    80005a10:	e40c0ee3          	beqz	s8,8000586c <__printf+0x2a4>
    80005a14:	00004517          	auipc	a0,0x4
    80005a18:	37c50513          	addi	a0,a0,892 # 80009d90 <pr>
    80005a1c:	00001097          	auipc	ra,0x1
    80005a20:	94c080e7          	jalr	-1716(ra) # 80006368 <release>
    80005a24:	e49ff06f          	j	8000586c <__printf+0x2a4>
    80005a28:	f7843783          	ld	a5,-136(s0)
    80005a2c:	03000513          	li	a0,48
    80005a30:	01000d13          	li	s10,16
    80005a34:	00878713          	addi	a4,a5,8
    80005a38:	0007bc83          	ld	s9,0(a5)
    80005a3c:	f6e43c23          	sd	a4,-136(s0)
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	9a4080e7          	jalr	-1628(ra) # 800053e4 <consputc>
    80005a48:	07800513          	li	a0,120
    80005a4c:	00000097          	auipc	ra,0x0
    80005a50:	998080e7          	jalr	-1640(ra) # 800053e4 <consputc>
    80005a54:	00002d97          	auipc	s11,0x2
    80005a58:	a2cd8d93          	addi	s11,s11,-1492 # 80007480 <digits>
    80005a5c:	03ccd793          	srli	a5,s9,0x3c
    80005a60:	00fd87b3          	add	a5,s11,a5
    80005a64:	0007c503          	lbu	a0,0(a5)
    80005a68:	fffd0d1b          	addiw	s10,s10,-1
    80005a6c:	004c9c93          	slli	s9,s9,0x4
    80005a70:	00000097          	auipc	ra,0x0
    80005a74:	974080e7          	jalr	-1676(ra) # 800053e4 <consputc>
    80005a78:	fe0d12e3          	bnez	s10,80005a5c <__printf+0x494>
    80005a7c:	f8dff06f          	j	80005a08 <__printf+0x440>
    80005a80:	f7843783          	ld	a5,-136(s0)
    80005a84:	0007bc83          	ld	s9,0(a5)
    80005a88:	00878793          	addi	a5,a5,8
    80005a8c:	f6f43c23          	sd	a5,-136(s0)
    80005a90:	000c9a63          	bnez	s9,80005aa4 <__printf+0x4dc>
    80005a94:	1080006f          	j	80005b9c <__printf+0x5d4>
    80005a98:	001c8c93          	addi	s9,s9,1
    80005a9c:	00000097          	auipc	ra,0x0
    80005aa0:	948080e7          	jalr	-1720(ra) # 800053e4 <consputc>
    80005aa4:	000cc503          	lbu	a0,0(s9)
    80005aa8:	fe0518e3          	bnez	a0,80005a98 <__printf+0x4d0>
    80005aac:	f5dff06f          	j	80005a08 <__printf+0x440>
    80005ab0:	02500513          	li	a0,37
    80005ab4:	00000097          	auipc	ra,0x0
    80005ab8:	930080e7          	jalr	-1744(ra) # 800053e4 <consputc>
    80005abc:	000c8513          	mv	a0,s9
    80005ac0:	00000097          	auipc	ra,0x0
    80005ac4:	924080e7          	jalr	-1756(ra) # 800053e4 <consputc>
    80005ac8:	f41ff06f          	j	80005a08 <__printf+0x440>
    80005acc:	02500513          	li	a0,37
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	914080e7          	jalr	-1772(ra) # 800053e4 <consputc>
    80005ad8:	f31ff06f          	j	80005a08 <__printf+0x440>
    80005adc:	00030513          	mv	a0,t1
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	7bc080e7          	jalr	1980(ra) # 8000629c <acquire>
    80005ae8:	b4dff06f          	j	80005634 <__printf+0x6c>
    80005aec:	40c0053b          	negw	a0,a2
    80005af0:	00a00713          	li	a4,10
    80005af4:	02e576bb          	remuw	a3,a0,a4
    80005af8:	00002d97          	auipc	s11,0x2
    80005afc:	988d8d93          	addi	s11,s11,-1656 # 80007480 <digits>
    80005b00:	ff700593          	li	a1,-9
    80005b04:	02069693          	slli	a3,a3,0x20
    80005b08:	0206d693          	srli	a3,a3,0x20
    80005b0c:	00dd86b3          	add	a3,s11,a3
    80005b10:	0006c683          	lbu	a3,0(a3)
    80005b14:	02e557bb          	divuw	a5,a0,a4
    80005b18:	f8d40023          	sb	a3,-128(s0)
    80005b1c:	10b65e63          	bge	a2,a1,80005c38 <__printf+0x670>
    80005b20:	06300593          	li	a1,99
    80005b24:	02e7f6bb          	remuw	a3,a5,a4
    80005b28:	02069693          	slli	a3,a3,0x20
    80005b2c:	0206d693          	srli	a3,a3,0x20
    80005b30:	00dd86b3          	add	a3,s11,a3
    80005b34:	0006c683          	lbu	a3,0(a3)
    80005b38:	02e7d73b          	divuw	a4,a5,a4
    80005b3c:	00200793          	li	a5,2
    80005b40:	f8d400a3          	sb	a3,-127(s0)
    80005b44:	bca5ece3          	bltu	a1,a0,8000571c <__printf+0x154>
    80005b48:	ce5ff06f          	j	8000582c <__printf+0x264>
    80005b4c:	40e007bb          	negw	a5,a4
    80005b50:	00002d97          	auipc	s11,0x2
    80005b54:	930d8d93          	addi	s11,s11,-1744 # 80007480 <digits>
    80005b58:	00f7f693          	andi	a3,a5,15
    80005b5c:	00dd86b3          	add	a3,s11,a3
    80005b60:	0006c583          	lbu	a1,0(a3)
    80005b64:	ff100613          	li	a2,-15
    80005b68:	0047d69b          	srliw	a3,a5,0x4
    80005b6c:	f8b40023          	sb	a1,-128(s0)
    80005b70:	0047d59b          	srliw	a1,a5,0x4
    80005b74:	0ac75e63          	bge	a4,a2,80005c30 <__printf+0x668>
    80005b78:	00f6f693          	andi	a3,a3,15
    80005b7c:	00dd86b3          	add	a3,s11,a3
    80005b80:	0006c603          	lbu	a2,0(a3)
    80005b84:	00f00693          	li	a3,15
    80005b88:	0087d79b          	srliw	a5,a5,0x8
    80005b8c:	f8c400a3          	sb	a2,-127(s0)
    80005b90:	d8b6e4e3          	bltu	a3,a1,80005918 <__printf+0x350>
    80005b94:	00200793          	li	a5,2
    80005b98:	e2dff06f          	j	800059c4 <__printf+0x3fc>
    80005b9c:	00002c97          	auipc	s9,0x2
    80005ba0:	8c4c8c93          	addi	s9,s9,-1852 # 80007460 <_ZL6digits+0x160>
    80005ba4:	02800513          	li	a0,40
    80005ba8:	ef1ff06f          	j	80005a98 <__printf+0x4d0>
    80005bac:	00700793          	li	a5,7
    80005bb0:	00600c93          	li	s9,6
    80005bb4:	e0dff06f          	j	800059c0 <__printf+0x3f8>
    80005bb8:	00700793          	li	a5,7
    80005bbc:	00600c93          	li	s9,6
    80005bc0:	c69ff06f          	j	80005828 <__printf+0x260>
    80005bc4:	00300793          	li	a5,3
    80005bc8:	00200c93          	li	s9,2
    80005bcc:	c5dff06f          	j	80005828 <__printf+0x260>
    80005bd0:	00300793          	li	a5,3
    80005bd4:	00200c93          	li	s9,2
    80005bd8:	de9ff06f          	j	800059c0 <__printf+0x3f8>
    80005bdc:	00400793          	li	a5,4
    80005be0:	00300c93          	li	s9,3
    80005be4:	dddff06f          	j	800059c0 <__printf+0x3f8>
    80005be8:	00400793          	li	a5,4
    80005bec:	00300c93          	li	s9,3
    80005bf0:	c39ff06f          	j	80005828 <__printf+0x260>
    80005bf4:	00500793          	li	a5,5
    80005bf8:	00400c93          	li	s9,4
    80005bfc:	c2dff06f          	j	80005828 <__printf+0x260>
    80005c00:	00500793          	li	a5,5
    80005c04:	00400c93          	li	s9,4
    80005c08:	db9ff06f          	j	800059c0 <__printf+0x3f8>
    80005c0c:	00600793          	li	a5,6
    80005c10:	00500c93          	li	s9,5
    80005c14:	dadff06f          	j	800059c0 <__printf+0x3f8>
    80005c18:	00600793          	li	a5,6
    80005c1c:	00500c93          	li	s9,5
    80005c20:	c09ff06f          	j	80005828 <__printf+0x260>
    80005c24:	00800793          	li	a5,8
    80005c28:	00700c93          	li	s9,7
    80005c2c:	bfdff06f          	j	80005828 <__printf+0x260>
    80005c30:	00100793          	li	a5,1
    80005c34:	d91ff06f          	j	800059c4 <__printf+0x3fc>
    80005c38:	00100793          	li	a5,1
    80005c3c:	bf1ff06f          	j	8000582c <__printf+0x264>
    80005c40:	00900793          	li	a5,9
    80005c44:	00800c93          	li	s9,8
    80005c48:	be1ff06f          	j	80005828 <__printf+0x260>
    80005c4c:	00002517          	auipc	a0,0x2
    80005c50:	81c50513          	addi	a0,a0,-2020 # 80007468 <_ZL6digits+0x168>
    80005c54:	00000097          	auipc	ra,0x0
    80005c58:	918080e7          	jalr	-1768(ra) # 8000556c <panic>

0000000080005c5c <printfinit>:
    80005c5c:	fe010113          	addi	sp,sp,-32
    80005c60:	00813823          	sd	s0,16(sp)
    80005c64:	00913423          	sd	s1,8(sp)
    80005c68:	00113c23          	sd	ra,24(sp)
    80005c6c:	02010413          	addi	s0,sp,32
    80005c70:	00004497          	auipc	s1,0x4
    80005c74:	12048493          	addi	s1,s1,288 # 80009d90 <pr>
    80005c78:	00048513          	mv	a0,s1
    80005c7c:	00001597          	auipc	a1,0x1
    80005c80:	7fc58593          	addi	a1,a1,2044 # 80007478 <_ZL6digits+0x178>
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	5f4080e7          	jalr	1524(ra) # 80006278 <initlock>
    80005c8c:	01813083          	ld	ra,24(sp)
    80005c90:	01013403          	ld	s0,16(sp)
    80005c94:	0004ac23          	sw	zero,24(s1)
    80005c98:	00813483          	ld	s1,8(sp)
    80005c9c:	02010113          	addi	sp,sp,32
    80005ca0:	00008067          	ret

0000000080005ca4 <uartinit>:
    80005ca4:	ff010113          	addi	sp,sp,-16
    80005ca8:	00813423          	sd	s0,8(sp)
    80005cac:	01010413          	addi	s0,sp,16
    80005cb0:	100007b7          	lui	a5,0x10000
    80005cb4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005cb8:	f8000713          	li	a4,-128
    80005cbc:	00e781a3          	sb	a4,3(a5)
    80005cc0:	00300713          	li	a4,3
    80005cc4:	00e78023          	sb	a4,0(a5)
    80005cc8:	000780a3          	sb	zero,1(a5)
    80005ccc:	00e781a3          	sb	a4,3(a5)
    80005cd0:	00700693          	li	a3,7
    80005cd4:	00d78123          	sb	a3,2(a5)
    80005cd8:	00e780a3          	sb	a4,1(a5)
    80005cdc:	00813403          	ld	s0,8(sp)
    80005ce0:	01010113          	addi	sp,sp,16
    80005ce4:	00008067          	ret

0000000080005ce8 <uartputc>:
    80005ce8:	00003797          	auipc	a5,0x3
    80005cec:	dd07a783          	lw	a5,-560(a5) # 80008ab8 <panicked>
    80005cf0:	00078463          	beqz	a5,80005cf8 <uartputc+0x10>
    80005cf4:	0000006f          	j	80005cf4 <uartputc+0xc>
    80005cf8:	fd010113          	addi	sp,sp,-48
    80005cfc:	02813023          	sd	s0,32(sp)
    80005d00:	00913c23          	sd	s1,24(sp)
    80005d04:	01213823          	sd	s2,16(sp)
    80005d08:	01313423          	sd	s3,8(sp)
    80005d0c:	02113423          	sd	ra,40(sp)
    80005d10:	03010413          	addi	s0,sp,48
    80005d14:	00003917          	auipc	s2,0x3
    80005d18:	dac90913          	addi	s2,s2,-596 # 80008ac0 <uart_tx_r>
    80005d1c:	00093783          	ld	a5,0(s2)
    80005d20:	00003497          	auipc	s1,0x3
    80005d24:	da848493          	addi	s1,s1,-600 # 80008ac8 <uart_tx_w>
    80005d28:	0004b703          	ld	a4,0(s1)
    80005d2c:	02078693          	addi	a3,a5,32
    80005d30:	00050993          	mv	s3,a0
    80005d34:	02e69c63          	bne	a3,a4,80005d6c <uartputc+0x84>
    80005d38:	00001097          	auipc	ra,0x1
    80005d3c:	834080e7          	jalr	-1996(ra) # 8000656c <push_on>
    80005d40:	00093783          	ld	a5,0(s2)
    80005d44:	0004b703          	ld	a4,0(s1)
    80005d48:	02078793          	addi	a5,a5,32
    80005d4c:	00e79463          	bne	a5,a4,80005d54 <uartputc+0x6c>
    80005d50:	0000006f          	j	80005d50 <uartputc+0x68>
    80005d54:	00001097          	auipc	ra,0x1
    80005d58:	88c080e7          	jalr	-1908(ra) # 800065e0 <pop_on>
    80005d5c:	00093783          	ld	a5,0(s2)
    80005d60:	0004b703          	ld	a4,0(s1)
    80005d64:	02078693          	addi	a3,a5,32
    80005d68:	fce688e3          	beq	a3,a4,80005d38 <uartputc+0x50>
    80005d6c:	01f77693          	andi	a3,a4,31
    80005d70:	00004597          	auipc	a1,0x4
    80005d74:	04058593          	addi	a1,a1,64 # 80009db0 <uart_tx_buf>
    80005d78:	00d586b3          	add	a3,a1,a3
    80005d7c:	00170713          	addi	a4,a4,1
    80005d80:	01368023          	sb	s3,0(a3)
    80005d84:	00e4b023          	sd	a4,0(s1)
    80005d88:	10000637          	lui	a2,0x10000
    80005d8c:	02f71063          	bne	a4,a5,80005dac <uartputc+0xc4>
    80005d90:	0340006f          	j	80005dc4 <uartputc+0xdc>
    80005d94:	00074703          	lbu	a4,0(a4)
    80005d98:	00f93023          	sd	a5,0(s2)
    80005d9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005da0:	00093783          	ld	a5,0(s2)
    80005da4:	0004b703          	ld	a4,0(s1)
    80005da8:	00f70e63          	beq	a4,a5,80005dc4 <uartputc+0xdc>
    80005dac:	00564683          	lbu	a3,5(a2)
    80005db0:	01f7f713          	andi	a4,a5,31
    80005db4:	00e58733          	add	a4,a1,a4
    80005db8:	0206f693          	andi	a3,a3,32
    80005dbc:	00178793          	addi	a5,a5,1
    80005dc0:	fc069ae3          	bnez	a3,80005d94 <uartputc+0xac>
    80005dc4:	02813083          	ld	ra,40(sp)
    80005dc8:	02013403          	ld	s0,32(sp)
    80005dcc:	01813483          	ld	s1,24(sp)
    80005dd0:	01013903          	ld	s2,16(sp)
    80005dd4:	00813983          	ld	s3,8(sp)
    80005dd8:	03010113          	addi	sp,sp,48
    80005ddc:	00008067          	ret

0000000080005de0 <uartputc_sync>:
    80005de0:	ff010113          	addi	sp,sp,-16
    80005de4:	00813423          	sd	s0,8(sp)
    80005de8:	01010413          	addi	s0,sp,16
    80005dec:	00003717          	auipc	a4,0x3
    80005df0:	ccc72703          	lw	a4,-820(a4) # 80008ab8 <panicked>
    80005df4:	02071663          	bnez	a4,80005e20 <uartputc_sync+0x40>
    80005df8:	00050793          	mv	a5,a0
    80005dfc:	100006b7          	lui	a3,0x10000
    80005e00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005e04:	02077713          	andi	a4,a4,32
    80005e08:	fe070ce3          	beqz	a4,80005e00 <uartputc_sync+0x20>
    80005e0c:	0ff7f793          	andi	a5,a5,255
    80005e10:	00f68023          	sb	a5,0(a3)
    80005e14:	00813403          	ld	s0,8(sp)
    80005e18:	01010113          	addi	sp,sp,16
    80005e1c:	00008067          	ret
    80005e20:	0000006f          	j	80005e20 <uartputc_sync+0x40>

0000000080005e24 <uartstart>:
    80005e24:	ff010113          	addi	sp,sp,-16
    80005e28:	00813423          	sd	s0,8(sp)
    80005e2c:	01010413          	addi	s0,sp,16
    80005e30:	00003617          	auipc	a2,0x3
    80005e34:	c9060613          	addi	a2,a2,-880 # 80008ac0 <uart_tx_r>
    80005e38:	00003517          	auipc	a0,0x3
    80005e3c:	c9050513          	addi	a0,a0,-880 # 80008ac8 <uart_tx_w>
    80005e40:	00063783          	ld	a5,0(a2)
    80005e44:	00053703          	ld	a4,0(a0)
    80005e48:	04f70263          	beq	a4,a5,80005e8c <uartstart+0x68>
    80005e4c:	100005b7          	lui	a1,0x10000
    80005e50:	00004817          	auipc	a6,0x4
    80005e54:	f6080813          	addi	a6,a6,-160 # 80009db0 <uart_tx_buf>
    80005e58:	01c0006f          	j	80005e74 <uartstart+0x50>
    80005e5c:	0006c703          	lbu	a4,0(a3)
    80005e60:	00f63023          	sd	a5,0(a2)
    80005e64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005e68:	00063783          	ld	a5,0(a2)
    80005e6c:	00053703          	ld	a4,0(a0)
    80005e70:	00f70e63          	beq	a4,a5,80005e8c <uartstart+0x68>
    80005e74:	01f7f713          	andi	a4,a5,31
    80005e78:	00e806b3          	add	a3,a6,a4
    80005e7c:	0055c703          	lbu	a4,5(a1)
    80005e80:	00178793          	addi	a5,a5,1
    80005e84:	02077713          	andi	a4,a4,32
    80005e88:	fc071ae3          	bnez	a4,80005e5c <uartstart+0x38>
    80005e8c:	00813403          	ld	s0,8(sp)
    80005e90:	01010113          	addi	sp,sp,16
    80005e94:	00008067          	ret

0000000080005e98 <uartgetc>:
    80005e98:	ff010113          	addi	sp,sp,-16
    80005e9c:	00813423          	sd	s0,8(sp)
    80005ea0:	01010413          	addi	s0,sp,16
    80005ea4:	10000737          	lui	a4,0x10000
    80005ea8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005eac:	0017f793          	andi	a5,a5,1
    80005eb0:	00078c63          	beqz	a5,80005ec8 <uartgetc+0x30>
    80005eb4:	00074503          	lbu	a0,0(a4)
    80005eb8:	0ff57513          	andi	a0,a0,255
    80005ebc:	00813403          	ld	s0,8(sp)
    80005ec0:	01010113          	addi	sp,sp,16
    80005ec4:	00008067          	ret
    80005ec8:	fff00513          	li	a0,-1
    80005ecc:	ff1ff06f          	j	80005ebc <uartgetc+0x24>

0000000080005ed0 <uartintr>:
    80005ed0:	100007b7          	lui	a5,0x10000
    80005ed4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005ed8:	0017f793          	andi	a5,a5,1
    80005edc:	0a078463          	beqz	a5,80005f84 <uartintr+0xb4>
    80005ee0:	fe010113          	addi	sp,sp,-32
    80005ee4:	00813823          	sd	s0,16(sp)
    80005ee8:	00913423          	sd	s1,8(sp)
    80005eec:	00113c23          	sd	ra,24(sp)
    80005ef0:	02010413          	addi	s0,sp,32
    80005ef4:	100004b7          	lui	s1,0x10000
    80005ef8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005efc:	0ff57513          	andi	a0,a0,255
    80005f00:	fffff097          	auipc	ra,0xfffff
    80005f04:	534080e7          	jalr	1332(ra) # 80005434 <consoleintr>
    80005f08:	0054c783          	lbu	a5,5(s1)
    80005f0c:	0017f793          	andi	a5,a5,1
    80005f10:	fe0794e3          	bnez	a5,80005ef8 <uartintr+0x28>
    80005f14:	00003617          	auipc	a2,0x3
    80005f18:	bac60613          	addi	a2,a2,-1108 # 80008ac0 <uart_tx_r>
    80005f1c:	00003517          	auipc	a0,0x3
    80005f20:	bac50513          	addi	a0,a0,-1108 # 80008ac8 <uart_tx_w>
    80005f24:	00063783          	ld	a5,0(a2)
    80005f28:	00053703          	ld	a4,0(a0)
    80005f2c:	04f70263          	beq	a4,a5,80005f70 <uartintr+0xa0>
    80005f30:	100005b7          	lui	a1,0x10000
    80005f34:	00004817          	auipc	a6,0x4
    80005f38:	e7c80813          	addi	a6,a6,-388 # 80009db0 <uart_tx_buf>
    80005f3c:	01c0006f          	j	80005f58 <uartintr+0x88>
    80005f40:	0006c703          	lbu	a4,0(a3)
    80005f44:	00f63023          	sd	a5,0(a2)
    80005f48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005f4c:	00063783          	ld	a5,0(a2)
    80005f50:	00053703          	ld	a4,0(a0)
    80005f54:	00f70e63          	beq	a4,a5,80005f70 <uartintr+0xa0>
    80005f58:	01f7f713          	andi	a4,a5,31
    80005f5c:	00e806b3          	add	a3,a6,a4
    80005f60:	0055c703          	lbu	a4,5(a1)
    80005f64:	00178793          	addi	a5,a5,1
    80005f68:	02077713          	andi	a4,a4,32
    80005f6c:	fc071ae3          	bnez	a4,80005f40 <uartintr+0x70>
    80005f70:	01813083          	ld	ra,24(sp)
    80005f74:	01013403          	ld	s0,16(sp)
    80005f78:	00813483          	ld	s1,8(sp)
    80005f7c:	02010113          	addi	sp,sp,32
    80005f80:	00008067          	ret
    80005f84:	00003617          	auipc	a2,0x3
    80005f88:	b3c60613          	addi	a2,a2,-1220 # 80008ac0 <uart_tx_r>
    80005f8c:	00003517          	auipc	a0,0x3
    80005f90:	b3c50513          	addi	a0,a0,-1220 # 80008ac8 <uart_tx_w>
    80005f94:	00063783          	ld	a5,0(a2)
    80005f98:	00053703          	ld	a4,0(a0)
    80005f9c:	04f70263          	beq	a4,a5,80005fe0 <uartintr+0x110>
    80005fa0:	100005b7          	lui	a1,0x10000
    80005fa4:	00004817          	auipc	a6,0x4
    80005fa8:	e0c80813          	addi	a6,a6,-500 # 80009db0 <uart_tx_buf>
    80005fac:	01c0006f          	j	80005fc8 <uartintr+0xf8>
    80005fb0:	0006c703          	lbu	a4,0(a3)
    80005fb4:	00f63023          	sd	a5,0(a2)
    80005fb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005fbc:	00063783          	ld	a5,0(a2)
    80005fc0:	00053703          	ld	a4,0(a0)
    80005fc4:	02f70063          	beq	a4,a5,80005fe4 <uartintr+0x114>
    80005fc8:	01f7f713          	andi	a4,a5,31
    80005fcc:	00e806b3          	add	a3,a6,a4
    80005fd0:	0055c703          	lbu	a4,5(a1)
    80005fd4:	00178793          	addi	a5,a5,1
    80005fd8:	02077713          	andi	a4,a4,32
    80005fdc:	fc071ae3          	bnez	a4,80005fb0 <uartintr+0xe0>
    80005fe0:	00008067          	ret
    80005fe4:	00008067          	ret

0000000080005fe8 <kinit>:
    80005fe8:	fc010113          	addi	sp,sp,-64
    80005fec:	02913423          	sd	s1,40(sp)
    80005ff0:	fffff7b7          	lui	a5,0xfffff
    80005ff4:	00005497          	auipc	s1,0x5
    80005ff8:	ddb48493          	addi	s1,s1,-549 # 8000adcf <end+0xfff>
    80005ffc:	02813823          	sd	s0,48(sp)
    80006000:	01313c23          	sd	s3,24(sp)
    80006004:	00f4f4b3          	and	s1,s1,a5
    80006008:	02113c23          	sd	ra,56(sp)
    8000600c:	03213023          	sd	s2,32(sp)
    80006010:	01413823          	sd	s4,16(sp)
    80006014:	01513423          	sd	s5,8(sp)
    80006018:	04010413          	addi	s0,sp,64
    8000601c:	000017b7          	lui	a5,0x1
    80006020:	01100993          	li	s3,17
    80006024:	00f487b3          	add	a5,s1,a5
    80006028:	01b99993          	slli	s3,s3,0x1b
    8000602c:	06f9e063          	bltu	s3,a5,8000608c <kinit+0xa4>
    80006030:	00004a97          	auipc	s5,0x4
    80006034:	da0a8a93          	addi	s5,s5,-608 # 80009dd0 <end>
    80006038:	0754ec63          	bltu	s1,s5,800060b0 <kinit+0xc8>
    8000603c:	0734fa63          	bgeu	s1,s3,800060b0 <kinit+0xc8>
    80006040:	00088a37          	lui	s4,0x88
    80006044:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006048:	00003917          	auipc	s2,0x3
    8000604c:	a8890913          	addi	s2,s2,-1400 # 80008ad0 <kmem>
    80006050:	00ca1a13          	slli	s4,s4,0xc
    80006054:	0140006f          	j	80006068 <kinit+0x80>
    80006058:	000017b7          	lui	a5,0x1
    8000605c:	00f484b3          	add	s1,s1,a5
    80006060:	0554e863          	bltu	s1,s5,800060b0 <kinit+0xc8>
    80006064:	0534f663          	bgeu	s1,s3,800060b0 <kinit+0xc8>
    80006068:	00001637          	lui	a2,0x1
    8000606c:	00100593          	li	a1,1
    80006070:	00048513          	mv	a0,s1
    80006074:	00000097          	auipc	ra,0x0
    80006078:	5e4080e7          	jalr	1508(ra) # 80006658 <__memset>
    8000607c:	00093783          	ld	a5,0(s2)
    80006080:	00f4b023          	sd	a5,0(s1)
    80006084:	00993023          	sd	s1,0(s2)
    80006088:	fd4498e3          	bne	s1,s4,80006058 <kinit+0x70>
    8000608c:	03813083          	ld	ra,56(sp)
    80006090:	03013403          	ld	s0,48(sp)
    80006094:	02813483          	ld	s1,40(sp)
    80006098:	02013903          	ld	s2,32(sp)
    8000609c:	01813983          	ld	s3,24(sp)
    800060a0:	01013a03          	ld	s4,16(sp)
    800060a4:	00813a83          	ld	s5,8(sp)
    800060a8:	04010113          	addi	sp,sp,64
    800060ac:	00008067          	ret
    800060b0:	00001517          	auipc	a0,0x1
    800060b4:	3e850513          	addi	a0,a0,1000 # 80007498 <digits+0x18>
    800060b8:	fffff097          	auipc	ra,0xfffff
    800060bc:	4b4080e7          	jalr	1204(ra) # 8000556c <panic>

00000000800060c0 <freerange>:
    800060c0:	fc010113          	addi	sp,sp,-64
    800060c4:	000017b7          	lui	a5,0x1
    800060c8:	02913423          	sd	s1,40(sp)
    800060cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800060d0:	009504b3          	add	s1,a0,s1
    800060d4:	fffff537          	lui	a0,0xfffff
    800060d8:	02813823          	sd	s0,48(sp)
    800060dc:	02113c23          	sd	ra,56(sp)
    800060e0:	03213023          	sd	s2,32(sp)
    800060e4:	01313c23          	sd	s3,24(sp)
    800060e8:	01413823          	sd	s4,16(sp)
    800060ec:	01513423          	sd	s5,8(sp)
    800060f0:	01613023          	sd	s6,0(sp)
    800060f4:	04010413          	addi	s0,sp,64
    800060f8:	00a4f4b3          	and	s1,s1,a0
    800060fc:	00f487b3          	add	a5,s1,a5
    80006100:	06f5e463          	bltu	a1,a5,80006168 <freerange+0xa8>
    80006104:	00004a97          	auipc	s5,0x4
    80006108:	ccca8a93          	addi	s5,s5,-820 # 80009dd0 <end>
    8000610c:	0954e263          	bltu	s1,s5,80006190 <freerange+0xd0>
    80006110:	01100993          	li	s3,17
    80006114:	01b99993          	slli	s3,s3,0x1b
    80006118:	0734fc63          	bgeu	s1,s3,80006190 <freerange+0xd0>
    8000611c:	00058a13          	mv	s4,a1
    80006120:	00003917          	auipc	s2,0x3
    80006124:	9b090913          	addi	s2,s2,-1616 # 80008ad0 <kmem>
    80006128:	00002b37          	lui	s6,0x2
    8000612c:	0140006f          	j	80006140 <freerange+0x80>
    80006130:	000017b7          	lui	a5,0x1
    80006134:	00f484b3          	add	s1,s1,a5
    80006138:	0554ec63          	bltu	s1,s5,80006190 <freerange+0xd0>
    8000613c:	0534fa63          	bgeu	s1,s3,80006190 <freerange+0xd0>
    80006140:	00001637          	lui	a2,0x1
    80006144:	00100593          	li	a1,1
    80006148:	00048513          	mv	a0,s1
    8000614c:	00000097          	auipc	ra,0x0
    80006150:	50c080e7          	jalr	1292(ra) # 80006658 <__memset>
    80006154:	00093703          	ld	a4,0(s2)
    80006158:	016487b3          	add	a5,s1,s6
    8000615c:	00e4b023          	sd	a4,0(s1)
    80006160:	00993023          	sd	s1,0(s2)
    80006164:	fcfa76e3          	bgeu	s4,a5,80006130 <freerange+0x70>
    80006168:	03813083          	ld	ra,56(sp)
    8000616c:	03013403          	ld	s0,48(sp)
    80006170:	02813483          	ld	s1,40(sp)
    80006174:	02013903          	ld	s2,32(sp)
    80006178:	01813983          	ld	s3,24(sp)
    8000617c:	01013a03          	ld	s4,16(sp)
    80006180:	00813a83          	ld	s5,8(sp)
    80006184:	00013b03          	ld	s6,0(sp)
    80006188:	04010113          	addi	sp,sp,64
    8000618c:	00008067          	ret
    80006190:	00001517          	auipc	a0,0x1
    80006194:	30850513          	addi	a0,a0,776 # 80007498 <digits+0x18>
    80006198:	fffff097          	auipc	ra,0xfffff
    8000619c:	3d4080e7          	jalr	980(ra) # 8000556c <panic>

00000000800061a0 <kfree>:
    800061a0:	fe010113          	addi	sp,sp,-32
    800061a4:	00813823          	sd	s0,16(sp)
    800061a8:	00113c23          	sd	ra,24(sp)
    800061ac:	00913423          	sd	s1,8(sp)
    800061b0:	02010413          	addi	s0,sp,32
    800061b4:	03451793          	slli	a5,a0,0x34
    800061b8:	04079c63          	bnez	a5,80006210 <kfree+0x70>
    800061bc:	00004797          	auipc	a5,0x4
    800061c0:	c1478793          	addi	a5,a5,-1004 # 80009dd0 <end>
    800061c4:	00050493          	mv	s1,a0
    800061c8:	04f56463          	bltu	a0,a5,80006210 <kfree+0x70>
    800061cc:	01100793          	li	a5,17
    800061d0:	01b79793          	slli	a5,a5,0x1b
    800061d4:	02f57e63          	bgeu	a0,a5,80006210 <kfree+0x70>
    800061d8:	00001637          	lui	a2,0x1
    800061dc:	00100593          	li	a1,1
    800061e0:	00000097          	auipc	ra,0x0
    800061e4:	478080e7          	jalr	1144(ra) # 80006658 <__memset>
    800061e8:	00003797          	auipc	a5,0x3
    800061ec:	8e878793          	addi	a5,a5,-1816 # 80008ad0 <kmem>
    800061f0:	0007b703          	ld	a4,0(a5)
    800061f4:	01813083          	ld	ra,24(sp)
    800061f8:	01013403          	ld	s0,16(sp)
    800061fc:	00e4b023          	sd	a4,0(s1)
    80006200:	0097b023          	sd	s1,0(a5)
    80006204:	00813483          	ld	s1,8(sp)
    80006208:	02010113          	addi	sp,sp,32
    8000620c:	00008067          	ret
    80006210:	00001517          	auipc	a0,0x1
    80006214:	28850513          	addi	a0,a0,648 # 80007498 <digits+0x18>
    80006218:	fffff097          	auipc	ra,0xfffff
    8000621c:	354080e7          	jalr	852(ra) # 8000556c <panic>

0000000080006220 <kalloc>:
    80006220:	fe010113          	addi	sp,sp,-32
    80006224:	00813823          	sd	s0,16(sp)
    80006228:	00913423          	sd	s1,8(sp)
    8000622c:	00113c23          	sd	ra,24(sp)
    80006230:	02010413          	addi	s0,sp,32
    80006234:	00003797          	auipc	a5,0x3
    80006238:	89c78793          	addi	a5,a5,-1892 # 80008ad0 <kmem>
    8000623c:	0007b483          	ld	s1,0(a5)
    80006240:	02048063          	beqz	s1,80006260 <kalloc+0x40>
    80006244:	0004b703          	ld	a4,0(s1)
    80006248:	00001637          	lui	a2,0x1
    8000624c:	00500593          	li	a1,5
    80006250:	00048513          	mv	a0,s1
    80006254:	00e7b023          	sd	a4,0(a5)
    80006258:	00000097          	auipc	ra,0x0
    8000625c:	400080e7          	jalr	1024(ra) # 80006658 <__memset>
    80006260:	01813083          	ld	ra,24(sp)
    80006264:	01013403          	ld	s0,16(sp)
    80006268:	00048513          	mv	a0,s1
    8000626c:	00813483          	ld	s1,8(sp)
    80006270:	02010113          	addi	sp,sp,32
    80006274:	00008067          	ret

0000000080006278 <initlock>:
    80006278:	ff010113          	addi	sp,sp,-16
    8000627c:	00813423          	sd	s0,8(sp)
    80006280:	01010413          	addi	s0,sp,16
    80006284:	00813403          	ld	s0,8(sp)
    80006288:	00b53423          	sd	a1,8(a0)
    8000628c:	00052023          	sw	zero,0(a0)
    80006290:	00053823          	sd	zero,16(a0)
    80006294:	01010113          	addi	sp,sp,16
    80006298:	00008067          	ret

000000008000629c <acquire>:
    8000629c:	fe010113          	addi	sp,sp,-32
    800062a0:	00813823          	sd	s0,16(sp)
    800062a4:	00913423          	sd	s1,8(sp)
    800062a8:	00113c23          	sd	ra,24(sp)
    800062ac:	01213023          	sd	s2,0(sp)
    800062b0:	02010413          	addi	s0,sp,32
    800062b4:	00050493          	mv	s1,a0
    800062b8:	10002973          	csrr	s2,sstatus
    800062bc:	100027f3          	csrr	a5,sstatus
    800062c0:	ffd7f793          	andi	a5,a5,-3
    800062c4:	10079073          	csrw	sstatus,a5
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	8e0080e7          	jalr	-1824(ra) # 80004ba8 <mycpu>
    800062d0:	07852783          	lw	a5,120(a0)
    800062d4:	06078e63          	beqz	a5,80006350 <acquire+0xb4>
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	8d0080e7          	jalr	-1840(ra) # 80004ba8 <mycpu>
    800062e0:	07852783          	lw	a5,120(a0)
    800062e4:	0004a703          	lw	a4,0(s1)
    800062e8:	0017879b          	addiw	a5,a5,1
    800062ec:	06f52c23          	sw	a5,120(a0)
    800062f0:	04071063          	bnez	a4,80006330 <acquire+0x94>
    800062f4:	00100713          	li	a4,1
    800062f8:	00070793          	mv	a5,a4
    800062fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006300:	0007879b          	sext.w	a5,a5
    80006304:	fe079ae3          	bnez	a5,800062f8 <acquire+0x5c>
    80006308:	0ff0000f          	fence
    8000630c:	fffff097          	auipc	ra,0xfffff
    80006310:	89c080e7          	jalr	-1892(ra) # 80004ba8 <mycpu>
    80006314:	01813083          	ld	ra,24(sp)
    80006318:	01013403          	ld	s0,16(sp)
    8000631c:	00a4b823          	sd	a0,16(s1)
    80006320:	00013903          	ld	s2,0(sp)
    80006324:	00813483          	ld	s1,8(sp)
    80006328:	02010113          	addi	sp,sp,32
    8000632c:	00008067          	ret
    80006330:	0104b903          	ld	s2,16(s1)
    80006334:	fffff097          	auipc	ra,0xfffff
    80006338:	874080e7          	jalr	-1932(ra) # 80004ba8 <mycpu>
    8000633c:	faa91ce3          	bne	s2,a0,800062f4 <acquire+0x58>
    80006340:	00001517          	auipc	a0,0x1
    80006344:	16050513          	addi	a0,a0,352 # 800074a0 <digits+0x20>
    80006348:	fffff097          	auipc	ra,0xfffff
    8000634c:	224080e7          	jalr	548(ra) # 8000556c <panic>
    80006350:	00195913          	srli	s2,s2,0x1
    80006354:	fffff097          	auipc	ra,0xfffff
    80006358:	854080e7          	jalr	-1964(ra) # 80004ba8 <mycpu>
    8000635c:	00197913          	andi	s2,s2,1
    80006360:	07252e23          	sw	s2,124(a0)
    80006364:	f75ff06f          	j	800062d8 <acquire+0x3c>

0000000080006368 <release>:
    80006368:	fe010113          	addi	sp,sp,-32
    8000636c:	00813823          	sd	s0,16(sp)
    80006370:	00113c23          	sd	ra,24(sp)
    80006374:	00913423          	sd	s1,8(sp)
    80006378:	01213023          	sd	s2,0(sp)
    8000637c:	02010413          	addi	s0,sp,32
    80006380:	00052783          	lw	a5,0(a0)
    80006384:	00079a63          	bnez	a5,80006398 <release+0x30>
    80006388:	00001517          	auipc	a0,0x1
    8000638c:	12050513          	addi	a0,a0,288 # 800074a8 <digits+0x28>
    80006390:	fffff097          	auipc	ra,0xfffff
    80006394:	1dc080e7          	jalr	476(ra) # 8000556c <panic>
    80006398:	01053903          	ld	s2,16(a0)
    8000639c:	00050493          	mv	s1,a0
    800063a0:	fffff097          	auipc	ra,0xfffff
    800063a4:	808080e7          	jalr	-2040(ra) # 80004ba8 <mycpu>
    800063a8:	fea910e3          	bne	s2,a0,80006388 <release+0x20>
    800063ac:	0004b823          	sd	zero,16(s1)
    800063b0:	0ff0000f          	fence
    800063b4:	0f50000f          	fence	iorw,ow
    800063b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800063bc:	ffffe097          	auipc	ra,0xffffe
    800063c0:	7ec080e7          	jalr	2028(ra) # 80004ba8 <mycpu>
    800063c4:	100027f3          	csrr	a5,sstatus
    800063c8:	0027f793          	andi	a5,a5,2
    800063cc:	04079a63          	bnez	a5,80006420 <release+0xb8>
    800063d0:	07852783          	lw	a5,120(a0)
    800063d4:	02f05e63          	blez	a5,80006410 <release+0xa8>
    800063d8:	fff7871b          	addiw	a4,a5,-1
    800063dc:	06e52c23          	sw	a4,120(a0)
    800063e0:	00071c63          	bnez	a4,800063f8 <release+0x90>
    800063e4:	07c52783          	lw	a5,124(a0)
    800063e8:	00078863          	beqz	a5,800063f8 <release+0x90>
    800063ec:	100027f3          	csrr	a5,sstatus
    800063f0:	0027e793          	ori	a5,a5,2
    800063f4:	10079073          	csrw	sstatus,a5
    800063f8:	01813083          	ld	ra,24(sp)
    800063fc:	01013403          	ld	s0,16(sp)
    80006400:	00813483          	ld	s1,8(sp)
    80006404:	00013903          	ld	s2,0(sp)
    80006408:	02010113          	addi	sp,sp,32
    8000640c:	00008067          	ret
    80006410:	00001517          	auipc	a0,0x1
    80006414:	0b850513          	addi	a0,a0,184 # 800074c8 <digits+0x48>
    80006418:	fffff097          	auipc	ra,0xfffff
    8000641c:	154080e7          	jalr	340(ra) # 8000556c <panic>
    80006420:	00001517          	auipc	a0,0x1
    80006424:	09050513          	addi	a0,a0,144 # 800074b0 <digits+0x30>
    80006428:	fffff097          	auipc	ra,0xfffff
    8000642c:	144080e7          	jalr	324(ra) # 8000556c <panic>

0000000080006430 <holding>:
    80006430:	00052783          	lw	a5,0(a0)
    80006434:	00079663          	bnez	a5,80006440 <holding+0x10>
    80006438:	00000513          	li	a0,0
    8000643c:	00008067          	ret
    80006440:	fe010113          	addi	sp,sp,-32
    80006444:	00813823          	sd	s0,16(sp)
    80006448:	00913423          	sd	s1,8(sp)
    8000644c:	00113c23          	sd	ra,24(sp)
    80006450:	02010413          	addi	s0,sp,32
    80006454:	01053483          	ld	s1,16(a0)
    80006458:	ffffe097          	auipc	ra,0xffffe
    8000645c:	750080e7          	jalr	1872(ra) # 80004ba8 <mycpu>
    80006460:	01813083          	ld	ra,24(sp)
    80006464:	01013403          	ld	s0,16(sp)
    80006468:	40a48533          	sub	a0,s1,a0
    8000646c:	00153513          	seqz	a0,a0
    80006470:	00813483          	ld	s1,8(sp)
    80006474:	02010113          	addi	sp,sp,32
    80006478:	00008067          	ret

000000008000647c <push_off>:
    8000647c:	fe010113          	addi	sp,sp,-32
    80006480:	00813823          	sd	s0,16(sp)
    80006484:	00113c23          	sd	ra,24(sp)
    80006488:	00913423          	sd	s1,8(sp)
    8000648c:	02010413          	addi	s0,sp,32
    80006490:	100024f3          	csrr	s1,sstatus
    80006494:	100027f3          	csrr	a5,sstatus
    80006498:	ffd7f793          	andi	a5,a5,-3
    8000649c:	10079073          	csrw	sstatus,a5
    800064a0:	ffffe097          	auipc	ra,0xffffe
    800064a4:	708080e7          	jalr	1800(ra) # 80004ba8 <mycpu>
    800064a8:	07852783          	lw	a5,120(a0)
    800064ac:	02078663          	beqz	a5,800064d8 <push_off+0x5c>
    800064b0:	ffffe097          	auipc	ra,0xffffe
    800064b4:	6f8080e7          	jalr	1784(ra) # 80004ba8 <mycpu>
    800064b8:	07852783          	lw	a5,120(a0)
    800064bc:	01813083          	ld	ra,24(sp)
    800064c0:	01013403          	ld	s0,16(sp)
    800064c4:	0017879b          	addiw	a5,a5,1
    800064c8:	06f52c23          	sw	a5,120(a0)
    800064cc:	00813483          	ld	s1,8(sp)
    800064d0:	02010113          	addi	sp,sp,32
    800064d4:	00008067          	ret
    800064d8:	0014d493          	srli	s1,s1,0x1
    800064dc:	ffffe097          	auipc	ra,0xffffe
    800064e0:	6cc080e7          	jalr	1740(ra) # 80004ba8 <mycpu>
    800064e4:	0014f493          	andi	s1,s1,1
    800064e8:	06952e23          	sw	s1,124(a0)
    800064ec:	fc5ff06f          	j	800064b0 <push_off+0x34>

00000000800064f0 <pop_off>:
    800064f0:	ff010113          	addi	sp,sp,-16
    800064f4:	00813023          	sd	s0,0(sp)
    800064f8:	00113423          	sd	ra,8(sp)
    800064fc:	01010413          	addi	s0,sp,16
    80006500:	ffffe097          	auipc	ra,0xffffe
    80006504:	6a8080e7          	jalr	1704(ra) # 80004ba8 <mycpu>
    80006508:	100027f3          	csrr	a5,sstatus
    8000650c:	0027f793          	andi	a5,a5,2
    80006510:	04079663          	bnez	a5,8000655c <pop_off+0x6c>
    80006514:	07852783          	lw	a5,120(a0)
    80006518:	02f05a63          	blez	a5,8000654c <pop_off+0x5c>
    8000651c:	fff7871b          	addiw	a4,a5,-1
    80006520:	06e52c23          	sw	a4,120(a0)
    80006524:	00071c63          	bnez	a4,8000653c <pop_off+0x4c>
    80006528:	07c52783          	lw	a5,124(a0)
    8000652c:	00078863          	beqz	a5,8000653c <pop_off+0x4c>
    80006530:	100027f3          	csrr	a5,sstatus
    80006534:	0027e793          	ori	a5,a5,2
    80006538:	10079073          	csrw	sstatus,a5
    8000653c:	00813083          	ld	ra,8(sp)
    80006540:	00013403          	ld	s0,0(sp)
    80006544:	01010113          	addi	sp,sp,16
    80006548:	00008067          	ret
    8000654c:	00001517          	auipc	a0,0x1
    80006550:	f7c50513          	addi	a0,a0,-132 # 800074c8 <digits+0x48>
    80006554:	fffff097          	auipc	ra,0xfffff
    80006558:	018080e7          	jalr	24(ra) # 8000556c <panic>
    8000655c:	00001517          	auipc	a0,0x1
    80006560:	f5450513          	addi	a0,a0,-172 # 800074b0 <digits+0x30>
    80006564:	fffff097          	auipc	ra,0xfffff
    80006568:	008080e7          	jalr	8(ra) # 8000556c <panic>

000000008000656c <push_on>:
    8000656c:	fe010113          	addi	sp,sp,-32
    80006570:	00813823          	sd	s0,16(sp)
    80006574:	00113c23          	sd	ra,24(sp)
    80006578:	00913423          	sd	s1,8(sp)
    8000657c:	02010413          	addi	s0,sp,32
    80006580:	100024f3          	csrr	s1,sstatus
    80006584:	100027f3          	csrr	a5,sstatus
    80006588:	0027e793          	ori	a5,a5,2
    8000658c:	10079073          	csrw	sstatus,a5
    80006590:	ffffe097          	auipc	ra,0xffffe
    80006594:	618080e7          	jalr	1560(ra) # 80004ba8 <mycpu>
    80006598:	07852783          	lw	a5,120(a0)
    8000659c:	02078663          	beqz	a5,800065c8 <push_on+0x5c>
    800065a0:	ffffe097          	auipc	ra,0xffffe
    800065a4:	608080e7          	jalr	1544(ra) # 80004ba8 <mycpu>
    800065a8:	07852783          	lw	a5,120(a0)
    800065ac:	01813083          	ld	ra,24(sp)
    800065b0:	01013403          	ld	s0,16(sp)
    800065b4:	0017879b          	addiw	a5,a5,1
    800065b8:	06f52c23          	sw	a5,120(a0)
    800065bc:	00813483          	ld	s1,8(sp)
    800065c0:	02010113          	addi	sp,sp,32
    800065c4:	00008067          	ret
    800065c8:	0014d493          	srli	s1,s1,0x1
    800065cc:	ffffe097          	auipc	ra,0xffffe
    800065d0:	5dc080e7          	jalr	1500(ra) # 80004ba8 <mycpu>
    800065d4:	0014f493          	andi	s1,s1,1
    800065d8:	06952e23          	sw	s1,124(a0)
    800065dc:	fc5ff06f          	j	800065a0 <push_on+0x34>

00000000800065e0 <pop_on>:
    800065e0:	ff010113          	addi	sp,sp,-16
    800065e4:	00813023          	sd	s0,0(sp)
    800065e8:	00113423          	sd	ra,8(sp)
    800065ec:	01010413          	addi	s0,sp,16
    800065f0:	ffffe097          	auipc	ra,0xffffe
    800065f4:	5b8080e7          	jalr	1464(ra) # 80004ba8 <mycpu>
    800065f8:	100027f3          	csrr	a5,sstatus
    800065fc:	0027f793          	andi	a5,a5,2
    80006600:	04078463          	beqz	a5,80006648 <pop_on+0x68>
    80006604:	07852783          	lw	a5,120(a0)
    80006608:	02f05863          	blez	a5,80006638 <pop_on+0x58>
    8000660c:	fff7879b          	addiw	a5,a5,-1
    80006610:	06f52c23          	sw	a5,120(a0)
    80006614:	07853783          	ld	a5,120(a0)
    80006618:	00079863          	bnez	a5,80006628 <pop_on+0x48>
    8000661c:	100027f3          	csrr	a5,sstatus
    80006620:	ffd7f793          	andi	a5,a5,-3
    80006624:	10079073          	csrw	sstatus,a5
    80006628:	00813083          	ld	ra,8(sp)
    8000662c:	00013403          	ld	s0,0(sp)
    80006630:	01010113          	addi	sp,sp,16
    80006634:	00008067          	ret
    80006638:	00001517          	auipc	a0,0x1
    8000663c:	eb850513          	addi	a0,a0,-328 # 800074f0 <digits+0x70>
    80006640:	fffff097          	auipc	ra,0xfffff
    80006644:	f2c080e7          	jalr	-212(ra) # 8000556c <panic>
    80006648:	00001517          	auipc	a0,0x1
    8000664c:	e8850513          	addi	a0,a0,-376 # 800074d0 <digits+0x50>
    80006650:	fffff097          	auipc	ra,0xfffff
    80006654:	f1c080e7          	jalr	-228(ra) # 8000556c <panic>

0000000080006658 <__memset>:
    80006658:	ff010113          	addi	sp,sp,-16
    8000665c:	00813423          	sd	s0,8(sp)
    80006660:	01010413          	addi	s0,sp,16
    80006664:	1a060e63          	beqz	a2,80006820 <__memset+0x1c8>
    80006668:	40a007b3          	neg	a5,a0
    8000666c:	0077f793          	andi	a5,a5,7
    80006670:	00778693          	addi	a3,a5,7
    80006674:	00b00813          	li	a6,11
    80006678:	0ff5f593          	andi	a1,a1,255
    8000667c:	fff6071b          	addiw	a4,a2,-1
    80006680:	1b06e663          	bltu	a3,a6,8000682c <__memset+0x1d4>
    80006684:	1cd76463          	bltu	a4,a3,8000684c <__memset+0x1f4>
    80006688:	1a078e63          	beqz	a5,80006844 <__memset+0x1ec>
    8000668c:	00b50023          	sb	a1,0(a0)
    80006690:	00100713          	li	a4,1
    80006694:	1ae78463          	beq	a5,a4,8000683c <__memset+0x1e4>
    80006698:	00b500a3          	sb	a1,1(a0)
    8000669c:	00200713          	li	a4,2
    800066a0:	1ae78a63          	beq	a5,a4,80006854 <__memset+0x1fc>
    800066a4:	00b50123          	sb	a1,2(a0)
    800066a8:	00300713          	li	a4,3
    800066ac:	18e78463          	beq	a5,a4,80006834 <__memset+0x1dc>
    800066b0:	00b501a3          	sb	a1,3(a0)
    800066b4:	00400713          	li	a4,4
    800066b8:	1ae78263          	beq	a5,a4,8000685c <__memset+0x204>
    800066bc:	00b50223          	sb	a1,4(a0)
    800066c0:	00500713          	li	a4,5
    800066c4:	1ae78063          	beq	a5,a4,80006864 <__memset+0x20c>
    800066c8:	00b502a3          	sb	a1,5(a0)
    800066cc:	00700713          	li	a4,7
    800066d0:	18e79e63          	bne	a5,a4,8000686c <__memset+0x214>
    800066d4:	00b50323          	sb	a1,6(a0)
    800066d8:	00700e93          	li	t4,7
    800066dc:	00859713          	slli	a4,a1,0x8
    800066e0:	00e5e733          	or	a4,a1,a4
    800066e4:	01059e13          	slli	t3,a1,0x10
    800066e8:	01c76e33          	or	t3,a4,t3
    800066ec:	01859313          	slli	t1,a1,0x18
    800066f0:	006e6333          	or	t1,t3,t1
    800066f4:	02059893          	slli	a7,a1,0x20
    800066f8:	40f60e3b          	subw	t3,a2,a5
    800066fc:	011368b3          	or	a7,t1,a7
    80006700:	02859813          	slli	a6,a1,0x28
    80006704:	0108e833          	or	a6,a7,a6
    80006708:	03059693          	slli	a3,a1,0x30
    8000670c:	003e589b          	srliw	a7,t3,0x3
    80006710:	00d866b3          	or	a3,a6,a3
    80006714:	03859713          	slli	a4,a1,0x38
    80006718:	00389813          	slli	a6,a7,0x3
    8000671c:	00f507b3          	add	a5,a0,a5
    80006720:	00e6e733          	or	a4,a3,a4
    80006724:	000e089b          	sext.w	a7,t3
    80006728:	00f806b3          	add	a3,a6,a5
    8000672c:	00e7b023          	sd	a4,0(a5)
    80006730:	00878793          	addi	a5,a5,8
    80006734:	fed79ce3          	bne	a5,a3,8000672c <__memset+0xd4>
    80006738:	ff8e7793          	andi	a5,t3,-8
    8000673c:	0007871b          	sext.w	a4,a5
    80006740:	01d787bb          	addw	a5,a5,t4
    80006744:	0ce88e63          	beq	a7,a4,80006820 <__memset+0x1c8>
    80006748:	00f50733          	add	a4,a0,a5
    8000674c:	00b70023          	sb	a1,0(a4)
    80006750:	0017871b          	addiw	a4,a5,1
    80006754:	0cc77663          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    80006758:	00e50733          	add	a4,a0,a4
    8000675c:	00b70023          	sb	a1,0(a4)
    80006760:	0027871b          	addiw	a4,a5,2
    80006764:	0ac77e63          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    80006768:	00e50733          	add	a4,a0,a4
    8000676c:	00b70023          	sb	a1,0(a4)
    80006770:	0037871b          	addiw	a4,a5,3
    80006774:	0ac77663          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    80006778:	00e50733          	add	a4,a0,a4
    8000677c:	00b70023          	sb	a1,0(a4)
    80006780:	0047871b          	addiw	a4,a5,4
    80006784:	08c77e63          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    80006788:	00e50733          	add	a4,a0,a4
    8000678c:	00b70023          	sb	a1,0(a4)
    80006790:	0057871b          	addiw	a4,a5,5
    80006794:	08c77663          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    80006798:	00e50733          	add	a4,a0,a4
    8000679c:	00b70023          	sb	a1,0(a4)
    800067a0:	0067871b          	addiw	a4,a5,6
    800067a4:	06c77e63          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    800067a8:	00e50733          	add	a4,a0,a4
    800067ac:	00b70023          	sb	a1,0(a4)
    800067b0:	0077871b          	addiw	a4,a5,7
    800067b4:	06c77663          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    800067b8:	00e50733          	add	a4,a0,a4
    800067bc:	00b70023          	sb	a1,0(a4)
    800067c0:	0087871b          	addiw	a4,a5,8
    800067c4:	04c77e63          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    800067c8:	00e50733          	add	a4,a0,a4
    800067cc:	00b70023          	sb	a1,0(a4)
    800067d0:	0097871b          	addiw	a4,a5,9
    800067d4:	04c77663          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    800067d8:	00e50733          	add	a4,a0,a4
    800067dc:	00b70023          	sb	a1,0(a4)
    800067e0:	00a7871b          	addiw	a4,a5,10
    800067e4:	02c77e63          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    800067e8:	00e50733          	add	a4,a0,a4
    800067ec:	00b70023          	sb	a1,0(a4)
    800067f0:	00b7871b          	addiw	a4,a5,11
    800067f4:	02c77663          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    800067f8:	00e50733          	add	a4,a0,a4
    800067fc:	00b70023          	sb	a1,0(a4)
    80006800:	00c7871b          	addiw	a4,a5,12
    80006804:	00c77e63          	bgeu	a4,a2,80006820 <__memset+0x1c8>
    80006808:	00e50733          	add	a4,a0,a4
    8000680c:	00b70023          	sb	a1,0(a4)
    80006810:	00d7879b          	addiw	a5,a5,13
    80006814:	00c7f663          	bgeu	a5,a2,80006820 <__memset+0x1c8>
    80006818:	00f507b3          	add	a5,a0,a5
    8000681c:	00b78023          	sb	a1,0(a5)
    80006820:	00813403          	ld	s0,8(sp)
    80006824:	01010113          	addi	sp,sp,16
    80006828:	00008067          	ret
    8000682c:	00b00693          	li	a3,11
    80006830:	e55ff06f          	j	80006684 <__memset+0x2c>
    80006834:	00300e93          	li	t4,3
    80006838:	ea5ff06f          	j	800066dc <__memset+0x84>
    8000683c:	00100e93          	li	t4,1
    80006840:	e9dff06f          	j	800066dc <__memset+0x84>
    80006844:	00000e93          	li	t4,0
    80006848:	e95ff06f          	j	800066dc <__memset+0x84>
    8000684c:	00000793          	li	a5,0
    80006850:	ef9ff06f          	j	80006748 <__memset+0xf0>
    80006854:	00200e93          	li	t4,2
    80006858:	e85ff06f          	j	800066dc <__memset+0x84>
    8000685c:	00400e93          	li	t4,4
    80006860:	e7dff06f          	j	800066dc <__memset+0x84>
    80006864:	00500e93          	li	t4,5
    80006868:	e75ff06f          	j	800066dc <__memset+0x84>
    8000686c:	00600e93          	li	t4,6
    80006870:	e6dff06f          	j	800066dc <__memset+0x84>

0000000080006874 <__memmove>:
    80006874:	ff010113          	addi	sp,sp,-16
    80006878:	00813423          	sd	s0,8(sp)
    8000687c:	01010413          	addi	s0,sp,16
    80006880:	0e060863          	beqz	a2,80006970 <__memmove+0xfc>
    80006884:	fff6069b          	addiw	a3,a2,-1
    80006888:	0006881b          	sext.w	a6,a3
    8000688c:	0ea5e863          	bltu	a1,a0,8000697c <__memmove+0x108>
    80006890:	00758713          	addi	a4,a1,7
    80006894:	00a5e7b3          	or	a5,a1,a0
    80006898:	40a70733          	sub	a4,a4,a0
    8000689c:	0077f793          	andi	a5,a5,7
    800068a0:	00f73713          	sltiu	a4,a4,15
    800068a4:	00174713          	xori	a4,a4,1
    800068a8:	0017b793          	seqz	a5,a5
    800068ac:	00e7f7b3          	and	a5,a5,a4
    800068b0:	10078863          	beqz	a5,800069c0 <__memmove+0x14c>
    800068b4:	00900793          	li	a5,9
    800068b8:	1107f463          	bgeu	a5,a6,800069c0 <__memmove+0x14c>
    800068bc:	0036581b          	srliw	a6,a2,0x3
    800068c0:	fff8081b          	addiw	a6,a6,-1
    800068c4:	02081813          	slli	a6,a6,0x20
    800068c8:	01d85893          	srli	a7,a6,0x1d
    800068cc:	00858813          	addi	a6,a1,8
    800068d0:	00058793          	mv	a5,a1
    800068d4:	00050713          	mv	a4,a0
    800068d8:	01088833          	add	a6,a7,a6
    800068dc:	0007b883          	ld	a7,0(a5)
    800068e0:	00878793          	addi	a5,a5,8
    800068e4:	00870713          	addi	a4,a4,8
    800068e8:	ff173c23          	sd	a7,-8(a4)
    800068ec:	ff0798e3          	bne	a5,a6,800068dc <__memmove+0x68>
    800068f0:	ff867713          	andi	a4,a2,-8
    800068f4:	02071793          	slli	a5,a4,0x20
    800068f8:	0207d793          	srli	a5,a5,0x20
    800068fc:	00f585b3          	add	a1,a1,a5
    80006900:	40e686bb          	subw	a3,a3,a4
    80006904:	00f507b3          	add	a5,a0,a5
    80006908:	06e60463          	beq	a2,a4,80006970 <__memmove+0xfc>
    8000690c:	0005c703          	lbu	a4,0(a1)
    80006910:	00e78023          	sb	a4,0(a5)
    80006914:	04068e63          	beqz	a3,80006970 <__memmove+0xfc>
    80006918:	0015c603          	lbu	a2,1(a1)
    8000691c:	00100713          	li	a4,1
    80006920:	00c780a3          	sb	a2,1(a5)
    80006924:	04e68663          	beq	a3,a4,80006970 <__memmove+0xfc>
    80006928:	0025c603          	lbu	a2,2(a1)
    8000692c:	00200713          	li	a4,2
    80006930:	00c78123          	sb	a2,2(a5)
    80006934:	02e68e63          	beq	a3,a4,80006970 <__memmove+0xfc>
    80006938:	0035c603          	lbu	a2,3(a1)
    8000693c:	00300713          	li	a4,3
    80006940:	00c781a3          	sb	a2,3(a5)
    80006944:	02e68663          	beq	a3,a4,80006970 <__memmove+0xfc>
    80006948:	0045c603          	lbu	a2,4(a1)
    8000694c:	00400713          	li	a4,4
    80006950:	00c78223          	sb	a2,4(a5)
    80006954:	00e68e63          	beq	a3,a4,80006970 <__memmove+0xfc>
    80006958:	0055c603          	lbu	a2,5(a1)
    8000695c:	00500713          	li	a4,5
    80006960:	00c782a3          	sb	a2,5(a5)
    80006964:	00e68663          	beq	a3,a4,80006970 <__memmove+0xfc>
    80006968:	0065c703          	lbu	a4,6(a1)
    8000696c:	00e78323          	sb	a4,6(a5)
    80006970:	00813403          	ld	s0,8(sp)
    80006974:	01010113          	addi	sp,sp,16
    80006978:	00008067          	ret
    8000697c:	02061713          	slli	a4,a2,0x20
    80006980:	02075713          	srli	a4,a4,0x20
    80006984:	00e587b3          	add	a5,a1,a4
    80006988:	f0f574e3          	bgeu	a0,a5,80006890 <__memmove+0x1c>
    8000698c:	02069613          	slli	a2,a3,0x20
    80006990:	02065613          	srli	a2,a2,0x20
    80006994:	fff64613          	not	a2,a2
    80006998:	00e50733          	add	a4,a0,a4
    8000699c:	00c78633          	add	a2,a5,a2
    800069a0:	fff7c683          	lbu	a3,-1(a5)
    800069a4:	fff78793          	addi	a5,a5,-1
    800069a8:	fff70713          	addi	a4,a4,-1
    800069ac:	00d70023          	sb	a3,0(a4)
    800069b0:	fec798e3          	bne	a5,a2,800069a0 <__memmove+0x12c>
    800069b4:	00813403          	ld	s0,8(sp)
    800069b8:	01010113          	addi	sp,sp,16
    800069bc:	00008067          	ret
    800069c0:	02069713          	slli	a4,a3,0x20
    800069c4:	02075713          	srli	a4,a4,0x20
    800069c8:	00170713          	addi	a4,a4,1
    800069cc:	00e50733          	add	a4,a0,a4
    800069d0:	00050793          	mv	a5,a0
    800069d4:	0005c683          	lbu	a3,0(a1)
    800069d8:	00178793          	addi	a5,a5,1
    800069dc:	00158593          	addi	a1,a1,1
    800069e0:	fed78fa3          	sb	a3,-1(a5)
    800069e4:	fee798e3          	bne	a5,a4,800069d4 <__memmove+0x160>
    800069e8:	f89ff06f          	j	80006970 <__memmove+0xfc>

00000000800069ec <__putc>:
    800069ec:	fe010113          	addi	sp,sp,-32
    800069f0:	00813823          	sd	s0,16(sp)
    800069f4:	00113c23          	sd	ra,24(sp)
    800069f8:	02010413          	addi	s0,sp,32
    800069fc:	00050793          	mv	a5,a0
    80006a00:	fef40593          	addi	a1,s0,-17
    80006a04:	00100613          	li	a2,1
    80006a08:	00000513          	li	a0,0
    80006a0c:	fef407a3          	sb	a5,-17(s0)
    80006a10:	fffff097          	auipc	ra,0xfffff
    80006a14:	b3c080e7          	jalr	-1220(ra) # 8000554c <console_write>
    80006a18:	01813083          	ld	ra,24(sp)
    80006a1c:	01013403          	ld	s0,16(sp)
    80006a20:	02010113          	addi	sp,sp,32
    80006a24:	00008067          	ret

0000000080006a28 <__getc>:
    80006a28:	fe010113          	addi	sp,sp,-32
    80006a2c:	00813823          	sd	s0,16(sp)
    80006a30:	00113c23          	sd	ra,24(sp)
    80006a34:	02010413          	addi	s0,sp,32
    80006a38:	fe840593          	addi	a1,s0,-24
    80006a3c:	00100613          	li	a2,1
    80006a40:	00000513          	li	a0,0
    80006a44:	fffff097          	auipc	ra,0xfffff
    80006a48:	ae8080e7          	jalr	-1304(ra) # 8000552c <console_read>
    80006a4c:	fe844503          	lbu	a0,-24(s0)
    80006a50:	01813083          	ld	ra,24(sp)
    80006a54:	01013403          	ld	s0,16(sp)
    80006a58:	02010113          	addi	sp,sp,32
    80006a5c:	00008067          	ret

0000000080006a60 <console_handler>:
    80006a60:	fe010113          	addi	sp,sp,-32
    80006a64:	00813823          	sd	s0,16(sp)
    80006a68:	00113c23          	sd	ra,24(sp)
    80006a6c:	00913423          	sd	s1,8(sp)
    80006a70:	02010413          	addi	s0,sp,32
    80006a74:	14202773          	csrr	a4,scause
    80006a78:	100027f3          	csrr	a5,sstatus
    80006a7c:	0027f793          	andi	a5,a5,2
    80006a80:	06079e63          	bnez	a5,80006afc <console_handler+0x9c>
    80006a84:	00074c63          	bltz	a4,80006a9c <console_handler+0x3c>
    80006a88:	01813083          	ld	ra,24(sp)
    80006a8c:	01013403          	ld	s0,16(sp)
    80006a90:	00813483          	ld	s1,8(sp)
    80006a94:	02010113          	addi	sp,sp,32
    80006a98:	00008067          	ret
    80006a9c:	0ff77713          	andi	a4,a4,255
    80006aa0:	00900793          	li	a5,9
    80006aa4:	fef712e3          	bne	a4,a5,80006a88 <console_handler+0x28>
    80006aa8:	ffffe097          	auipc	ra,0xffffe
    80006aac:	6dc080e7          	jalr	1756(ra) # 80005184 <plic_claim>
    80006ab0:	00a00793          	li	a5,10
    80006ab4:	00050493          	mv	s1,a0
    80006ab8:	02f50c63          	beq	a0,a5,80006af0 <console_handler+0x90>
    80006abc:	fc0506e3          	beqz	a0,80006a88 <console_handler+0x28>
    80006ac0:	00050593          	mv	a1,a0
    80006ac4:	00001517          	auipc	a0,0x1
    80006ac8:	93450513          	addi	a0,a0,-1740 # 800073f8 <_ZL6digits+0xf8>
    80006acc:	fffff097          	auipc	ra,0xfffff
    80006ad0:	afc080e7          	jalr	-1284(ra) # 800055c8 <__printf>
    80006ad4:	01013403          	ld	s0,16(sp)
    80006ad8:	01813083          	ld	ra,24(sp)
    80006adc:	00048513          	mv	a0,s1
    80006ae0:	00813483          	ld	s1,8(sp)
    80006ae4:	02010113          	addi	sp,sp,32
    80006ae8:	ffffe317          	auipc	t1,0xffffe
    80006aec:	6d430067          	jr	1748(t1) # 800051bc <plic_complete>
    80006af0:	fffff097          	auipc	ra,0xfffff
    80006af4:	3e0080e7          	jalr	992(ra) # 80005ed0 <uartintr>
    80006af8:	fddff06f          	j	80006ad4 <console_handler+0x74>
    80006afc:	00001517          	auipc	a0,0x1
    80006b00:	9fc50513          	addi	a0,a0,-1540 # 800074f8 <digits+0x78>
    80006b04:	fffff097          	auipc	ra,0xfffff
    80006b08:	a68080e7          	jalr	-1432(ra) # 8000556c <panic>
	...
