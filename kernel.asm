
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	c7813103          	ld	sp,-904(sp) # 80008c78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	349040ef          	jal	ra,80004b64 <start>

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
    80001080:	54d010ef          	jal	ra,80002dcc <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001464:	00006517          	auipc	a0,0x6
    80001468:	bbc50513          	addi	a0,a0,-1092 # 80007020 <CONSOLE_STATUS+0x10>
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	828080e7          	jalr	-2008(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
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
    800014a0:	7f8080e7          	jalr	2040(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
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
    800014b4:	00006517          	auipc	a0,0x6
    800014b8:	b8c50513          	addi	a0,a0,-1140 # 80007040 <CONSOLE_STATUS+0x30>
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	7d8080e7          	jalr	2008(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	83c080e7          	jalr	-1988(ra) # 80002d04 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00006517          	auipc	a0,0x6
    800014d4:	d3850513          	addi	a0,a0,-712 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	7bc080e7          	jalr	1980(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
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
    8000152c:	00006517          	auipc	a0,0x6
    80001530:	b1c50513          	addi	a0,a0,-1252 # 80007048 <CONSOLE_STATUS+0x38>
    80001534:	00001097          	auipc	ra,0x1
    80001538:	760080e7          	jalr	1888(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
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
    8000154c:	00006517          	auipc	a0,0x6
    80001550:	b1450513          	addi	a0,a0,-1260 # 80007060 <CONSOLE_STATUS+0x50>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	740080e7          	jalr	1856(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00001097          	auipc	ra,0x1
    80001564:	7a4080e7          	jalr	1956(ra) # 80002d04 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00006517          	auipc	a0,0x6
    8000156c:	ca050513          	addi	a0,a0,-864 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80001570:	00001097          	auipc	ra,0x1
    80001574:	724080e7          	jalr	1828(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
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

00000000800015b0 <_Z20thread2FunctionTest2Pv>:

void thread2FunctionTest2(void* p)
{
    800015b0:	fe010113          	addi	sp,sp,-32
    800015b4:	00113c23          	sd	ra,24(sp)
    800015b8:	00813823          	sd	s0,16(sp)
    800015bc:	00913423          	sd	s1,8(sp)
    800015c0:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    800015c4:	00006517          	auipc	a0,0x6
    800015c8:	a8450513          	addi	a0,a0,-1404 # 80007048 <CONSOLE_STATUS+0x38>
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	6c8080e7          	jalr	1736(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    800015d4:	00000493          	li	s1,0
    800015d8:	0480006f          	j	80001620 <_Z20thread2FunctionTest2Pv+0x70>
    {
        if(j == 200)
            thread_exit();
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	d68080e7          	jalr	-664(ra) # 80001344 <thread_exit>
    800015e4:	0500006f          	j	80001634 <_Z20thread2FunctionTest2Pv+0x84>
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	d3c080e7          	jalr	-708(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    800015f0:	00006517          	auipc	a0,0x6
    800015f4:	a7050513          	addi	a0,a0,-1424 # 80007060 <CONSOLE_STATUS+0x50>
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	69c080e7          	jalr	1692(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001600:	00048513          	mv	a0,s1
    80001604:	00001097          	auipc	ra,0x1
    80001608:	700080e7          	jalr	1792(ra) # 80002d04 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000160c:	00006517          	auipc	a0,0x6
    80001610:	bfc50513          	addi	a0,a0,-1028 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80001614:	00001097          	auipc	ra,0x1
    80001618:	680080e7          	jalr	1664(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    8000161c:	00148493          	addi	s1,s1,1
    80001620:	000027b7          	lui	a5,0x2
    80001624:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001628:	0297e063          	bltu	a5,s1,80001648 <_Z20thread2FunctionTest2Pv+0x98>
        if(j == 200)
    8000162c:	0c800793          	li	a5,200
    80001630:	faf486e3          	beq	s1,a5,800015dc <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    80001634:	03200793          	li	a5,50
    80001638:	02f4f7b3          	remu	a5,s1,a5
    8000163c:	fa079ae3          	bnez	a5,800015f0 <_Z20thread2FunctionTest2Pv+0x40>
    80001640:	fa0488e3          	beqz	s1,800015f0 <_Z20thread2FunctionTest2Pv+0x40>
    80001644:	fa5ff06f          	j	800015e8 <_Z20thread2FunctionTest2Pv+0x38>
    }
}
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	00813483          	ld	s1,8(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret

000000008000165c <_Z2f1Pv>:

//semaphore tests
static Semaphore* mutex;

void f1(void* p)
{
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	01213023          	sd	s2,0(sp)
    80001670:	02010413          	addi	s0,sp,32
    Riscv::printString("f1 started\n");
    80001674:	00006517          	auipc	a0,0x6
    80001678:	9f450513          	addi	a0,a0,-1548 # 80007068 <CONSOLE_STATUS+0x58>
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	618080e7          	jalr	1560(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    80001684:	00000493          	li	s1,0
    80001688:	00c0006f          	j	80001694 <_Z2f1Pv+0x38>
        //__putc('\n');
        mutex->signal();
        if(x < 50000)
            thread_dispatch();
        else
            thread_exit();
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	cb8080e7          	jalr	-840(ra) # 80001344 <thread_exit>
        x++;
    80001694:	0014849b          	addiw	s1,s1,1
        mutex->wait();
    80001698:	00007917          	auipc	s2,0x7
    8000169c:	63890913          	addi	s2,s2,1592 # 80008cd0 <_ZL5mutex>
    800016a0:	00093503          	ld	a0,0(s2)
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	448080e7          	jalr	1096(ra) # 80002aec <_ZN9Semaphore4waitEv>
        mutex->signal();
    800016ac:	00093503          	ld	a0,0(s2)
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	490080e7          	jalr	1168(ra) # 80002b40 <_ZN9Semaphore6signalEv>
        if(x < 50000)
    800016b8:	0000c7b7          	lui	a5,0xc
    800016bc:	34f78793          	addi	a5,a5,847 # c34f <_entry-0x7fff3cb1>
    800016c0:	fc97c6e3          	blt	a5,s1,8000168c <_Z2f1Pv+0x30>
            thread_dispatch();
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	c60080e7          	jalr	-928(ra) # 80001324 <thread_dispatch>
    800016cc:	fc9ff06f          	j	80001694 <_Z2f1Pv+0x38>

00000000800016d0 <_Z2f2Pv>:
    }
}

void f2(void* p)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	02010413          	addi	s0,sp,32
    Riscv::printString("f2 started\n");
    800016e4:	00006517          	auipc	a0,0x6
    800016e8:	99450513          	addi	a0,a0,-1644 # 80007078 <CONSOLE_STATUS+0x68>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	5a8080e7          	jalr	1448(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    while(true)
    {
        mutex->wait();
    800016f4:	00007497          	auipc	s1,0x7
    800016f8:	5dc48493          	addi	s1,s1,1500 # 80008cd0 <_ZL5mutex>
    800016fc:	0004b503          	ld	a0,0(s1)
    80001700:	00001097          	auipc	ra,0x1
    80001704:	3ec080e7          	jalr	1004(ra) # 80002aec <_ZN9Semaphore4waitEv>
        //__putc('2');
        //__putc('\n');
        mutex->signal();
    80001708:	0004b503          	ld	a0,0(s1)
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	434080e7          	jalr	1076(ra) # 80002b40 <_ZN9Semaphore6signalEv>
        if(x < 50000)
            thread_dispatch();
    80001714:	00000097          	auipc	ra,0x0
    80001718:	c10080e7          	jalr	-1008(ra) # 80001324 <thread_dispatch>
    8000171c:	fd9ff06f          	j	800016f4 <_Z2f2Pv+0x24>

0000000080001720 <_Z4f1_2Pv>:
static Semaphore* s1;
static Semaphore* s2;
static Semaphore* s3;

void f1_2(void* p)
{
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	00913423          	sd	s1,8(sp)
    80001730:	01213023          	sd	s2,0(sp)
    80001734:	02010413          	addi	s0,sp,32
    Riscv::printString("f1_2 started\n");
    80001738:	00006517          	auipc	a0,0x6
    8000173c:	95050513          	addi	a0,a0,-1712 # 80007088 <CONSOLE_STATUS+0x78>
    80001740:	00001097          	auipc	ra,0x1
    80001744:	554080e7          	jalr	1364(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    80001748:	00000493          	li	s1,0
    8000174c:	00c0006f          	j	80001758 <_Z4f1_2Pv+0x38>
        __putc('\n');
        s2->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    80001750:	00000097          	auipc	ra,0x0
    80001754:	bf4080e7          	jalr	-1036(ra) # 80001344 <thread_exit>
        x++;
    80001758:	0014849b          	addiw	s1,s1,1
        s1->wait();
    8000175c:	00007917          	auipc	s2,0x7
    80001760:	57490913          	addi	s2,s2,1396 # 80008cd0 <_ZL5mutex>
    80001764:	00893503          	ld	a0,8(s2)
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	384080e7          	jalr	900(ra) # 80002aec <_ZN9Semaphore4waitEv>
        __putc('1');
    80001770:	03100513          	li	a0,49
    80001774:	00005097          	auipc	ra,0x5
    80001778:	4b8080e7          	jalr	1208(ra) # 80006c2c <__putc>
        __putc('\n');
    8000177c:	00a00513          	li	a0,10
    80001780:	00005097          	auipc	ra,0x5
    80001784:	4ac080e7          	jalr	1196(ra) # 80006c2c <__putc>
        s2->signal();
    80001788:	01093503          	ld	a0,16(s2)
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	3b4080e7          	jalr	948(ra) # 80002b40 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    80001794:	000017b7          	lui	a5,0x1
    80001798:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    8000179c:	fa97cae3          	blt	a5,s1,80001750 <_Z4f1_2Pv+0x30>
            thread_dispatch();
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	b84080e7          	jalr	-1148(ra) # 80001324 <thread_dispatch>
    800017a8:	fb1ff06f          	j	80001758 <_Z4f1_2Pv+0x38>

00000000800017ac <_Z4f2_2Pv>:
    }
}

void f2_2(void* p)
{
    800017ac:	fe010113          	addi	sp,sp,-32
    800017b0:	00113c23          	sd	ra,24(sp)
    800017b4:	00813823          	sd	s0,16(sp)
    800017b8:	00913423          	sd	s1,8(sp)
    800017bc:	01213023          	sd	s2,0(sp)
    800017c0:	02010413          	addi	s0,sp,32
    Riscv::printString("f2_2 started\n");
    800017c4:	00006517          	auipc	a0,0x6
    800017c8:	8d450513          	addi	a0,a0,-1836 # 80007098 <CONSOLE_STATUS+0x88>
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	4c8080e7          	jalr	1224(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800017d4:	00000493          	li	s1,0
    800017d8:	00c0006f          	j	800017e4 <_Z4f2_2Pv+0x38>
        __putc('\n');
        s3->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	b68080e7          	jalr	-1176(ra) # 80001344 <thread_exit>
        x++;
    800017e4:	0014849b          	addiw	s1,s1,1
        s2->wait();
    800017e8:	00007917          	auipc	s2,0x7
    800017ec:	4e890913          	addi	s2,s2,1256 # 80008cd0 <_ZL5mutex>
    800017f0:	01093503          	ld	a0,16(s2)
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	2f8080e7          	jalr	760(ra) # 80002aec <_ZN9Semaphore4waitEv>
        __putc('2');
    800017fc:	03200513          	li	a0,50
    80001800:	00005097          	auipc	ra,0x5
    80001804:	42c080e7          	jalr	1068(ra) # 80006c2c <__putc>
        __putc('\n');
    80001808:	00a00513          	li	a0,10
    8000180c:	00005097          	auipc	ra,0x5
    80001810:	420080e7          	jalr	1056(ra) # 80006c2c <__putc>
        s3->signal();
    80001814:	01893503          	ld	a0,24(s2)
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	328080e7          	jalr	808(ra) # 80002b40 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    80001820:	000017b7          	lui	a5,0x1
    80001824:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80001828:	fa97cae3          	blt	a5,s1,800017dc <_Z4f2_2Pv+0x30>
            thread_dispatch();
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	af8080e7          	jalr	-1288(ra) # 80001324 <thread_dispatch>
    80001834:	fb1ff06f          	j	800017e4 <_Z4f2_2Pv+0x38>

0000000080001838 <_Z4f3_2Pv>:
    }
}

void f3_2(void* p)
{
    80001838:	fe010113          	addi	sp,sp,-32
    8000183c:	00113c23          	sd	ra,24(sp)
    80001840:	00813823          	sd	s0,16(sp)
    80001844:	00913423          	sd	s1,8(sp)
    80001848:	01213023          	sd	s2,0(sp)
    8000184c:	02010413          	addi	s0,sp,32
    Riscv::printString("f3_2 started\n");
    80001850:	00006517          	auipc	a0,0x6
    80001854:	85850513          	addi	a0,a0,-1960 # 800070a8 <CONSOLE_STATUS+0x98>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	43c080e7          	jalr	1084(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    80001860:	00000493          	li	s1,0
    80001864:	00c0006f          	j	80001870 <_Z4f3_2Pv+0x38>
        __putc('\n');
        s1->signal();
        if(x < 5000)
            thread_dispatch();
        else
            thread_exit();
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	adc080e7          	jalr	-1316(ra) # 80001344 <thread_exit>
        x++;
    80001870:	0014849b          	addiw	s1,s1,1
        s3->wait();
    80001874:	00007917          	auipc	s2,0x7
    80001878:	45c90913          	addi	s2,s2,1116 # 80008cd0 <_ZL5mutex>
    8000187c:	01893503          	ld	a0,24(s2)
    80001880:	00001097          	auipc	ra,0x1
    80001884:	26c080e7          	jalr	620(ra) # 80002aec <_ZN9Semaphore4waitEv>
        __putc('3');
    80001888:	03300513          	li	a0,51
    8000188c:	00005097          	auipc	ra,0x5
    80001890:	3a0080e7          	jalr	928(ra) # 80006c2c <__putc>
        __putc('\n');
    80001894:	00a00513          	li	a0,10
    80001898:	00005097          	auipc	ra,0x5
    8000189c:	394080e7          	jalr	916(ra) # 80006c2c <__putc>
        s1->signal();
    800018a0:	00893503          	ld	a0,8(s2)
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	29c080e7          	jalr	668(ra) # 80002b40 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    800018ac:	000017b7          	lui	a5,0x1
    800018b0:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    800018b4:	fa97cae3          	blt	a5,s1,80001868 <_Z4f3_2Pv+0x30>
            thread_dispatch();
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	a6c080e7          	jalr	-1428(ra) # 80001324 <thread_dispatch>
    800018c0:	fb1ff06f          	j	80001870 <_Z4f3_2Pv+0x38>

00000000800018c4 <_Z11threadTest1v>:
{
    800018c4:	fe010113          	addi	sp,sp,-32
    800018c8:	00113c23          	sd	ra,24(sp)
    800018cc:	00813823          	sd	s0,16(sp)
    800018d0:	00913423          	sd	s1,8(sp)
    800018d4:	01213023          	sd	s2,0(sp)
    800018d8:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    800018dc:	01800513          	li	a0,24
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	0bc080e7          	jalr	188(ra) # 8000299c <_Znwm>
    800018e8:	00050493          	mv	s1,a0
    800018ec:	00000613          	li	a2,0
    800018f0:	00000597          	auipc	a1,0x0
    800018f4:	b9058593          	addi	a1,a1,-1136 # 80001480 <_Z15thread1FunctionPv>
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	180080e7          	jalr	384(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001900:	00048513          	mv	a0,s1
    80001904:	00001097          	auipc	ra,0x1
    80001908:	0e8080e7          	jalr	232(ra) # 800029ec <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    8000190c:	01800513          	li	a0,24
    80001910:	00001097          	auipc	ra,0x1
    80001914:	08c080e7          	jalr	140(ra) # 8000299c <_Znwm>
    80001918:	00050913          	mv	s2,a0
    8000191c:	00000613          	li	a2,0
    80001920:	00000597          	auipc	a1,0x0
    80001924:	bf858593          	addi	a1,a1,-1032 # 80001518 <_Z15thread2FunctionPv>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	150080e7          	jalr	336(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001930:	00090513          	mv	a0,s2
    80001934:	00001097          	auipc	ra,0x1
    80001938:	0b8080e7          	jalr	184(ra) # 800029ec <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	2d0080e7          	jalr	720(ra) # 80002c0c <_ZN5Riscv16enableInterruptsEv>
    80001944:	01c0006f          	j	80001960 <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    80001948:	00005517          	auipc	a0,0x5
    8000194c:	77050513          	addi	a0,a0,1904 # 800070b8 <CONSOLE_STATUS+0xa8>
    80001950:	00001097          	auipc	ra,0x1
    80001954:	344080e7          	jalr	836(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	9cc080e7          	jalr	-1588(ra) # 80001324 <thread_dispatch>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    80001960:	0004b783          	ld	a5,0(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80001964:	0307a703          	lw	a4,48(a5)
    80001968:	00300793          	li	a5,3
    8000196c:	fcf71ee3          	bne	a4,a5,80001948 <_Z11threadTest1v+0x84>
    80001970:	00093783          	ld	a5,0(s2)
    80001974:	0307a703          	lw	a4,48(a5)
    80001978:	00300793          	li	a5,3
    8000197c:	fcf716e3          	bne	a4,a5,80001948 <_Z11threadTest1v+0x84>
    Riscv::printString("End...\n");
    80001980:	00005517          	auipc	a0,0x5
    80001984:	74850513          	addi	a0,a0,1864 # 800070c8 <CONSOLE_STATUS+0xb8>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	30c080e7          	jalr	780(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001990:	00001097          	auipc	ra,0x1
    80001994:	29c080e7          	jalr	668(ra) # 80002c2c <_ZN5Riscv17disableInterruptsEv>
}
    80001998:	01813083          	ld	ra,24(sp)
    8000199c:	01013403          	ld	s0,16(sp)
    800019a0:	00813483          	ld	s1,8(sp)
    800019a4:	00013903          	ld	s2,0(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret
    800019b0:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800019b4:	00048513          	mv	a0,s1
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	00c080e7          	jalr	12(ra) # 800029c4 <_ZdlPv>
    800019c0:	00090513          	mv	a0,s2
    800019c4:	00008097          	auipc	ra,0x8
    800019c8:	464080e7          	jalr	1124(ra) # 80009e28 <_Unwind_Resume>
    800019cc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	ff0080e7          	jalr	-16(ra) # 800029c4 <_ZdlPv>
    800019dc:	00048513          	mv	a0,s1
    800019e0:	00008097          	auipc	ra,0x8
    800019e4:	448080e7          	jalr	1096(ra) # 80009e28 <_Unwind_Resume>

00000000800019e8 <_Z11threadTest2v>:
{
    800019e8:	fe010113          	addi	sp,sp,-32
    800019ec:	00113c23          	sd	ra,24(sp)
    800019f0:	00813823          	sd	s0,16(sp)
    800019f4:	00913423          	sd	s1,8(sp)
    800019f8:	01213023          	sd	s2,0(sp)
    800019fc:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001a00:	01800513          	li	a0,24
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	f98080e7          	jalr	-104(ra) # 8000299c <_Znwm>
    80001a0c:	00050493          	mv	s1,a0
    80001a10:	00000613          	li	a2,0
    80001a14:	00000597          	auipc	a1,0x0
    80001a18:	a4058593          	addi	a1,a1,-1472 # 80001454 <_Z4idlePv>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	05c080e7          	jalr	92(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a24:	00048513          	mv	a0,s1
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	fc4080e7          	jalr	-60(ra) # 800029ec <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a30:	01800513          	li	a0,24
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	f68080e7          	jalr	-152(ra) # 8000299c <_Znwm>
    80001a3c:	00050913          	mv	s2,a0
    80001a40:	00000613          	li	a2,0
    80001a44:	00000597          	auipc	a1,0x0
    80001a48:	a3c58593          	addi	a1,a1,-1476 # 80001480 <_Z15thread1FunctionPv>
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	02c080e7          	jalr	44(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a54:	00090513          	mv	a0,s2
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	f94080e7          	jalr	-108(ra) # 800029ec <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a60:	01800513          	li	a0,24
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	f38080e7          	jalr	-200(ra) # 8000299c <_Znwm>
    80001a6c:	00050913          	mv	s2,a0
    80001a70:	00000613          	li	a2,0
    80001a74:	00000597          	auipc	a1,0x0
    80001a78:	b3c58593          	addi	a1,a1,-1220 # 800015b0 <_Z20thread2FunctionTest2Pv>
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	ffc080e7          	jalr	-4(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a84:	00090513          	mv	a0,s2
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	f64080e7          	jalr	-156(ra) # 800029ec <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	17c080e7          	jalr	380(ra) # 80002c0c <_ZN5Riscv16enableInterruptsEv>
    while(idleThread->myHandle->getState() != PCB::FINISHED);
    80001a98:	0004b783          	ld	a5,0(s1)
    80001a9c:	0307a703          	lw	a4,48(a5)
    80001aa0:	00300793          	li	a5,3
    80001aa4:	fef71ae3          	bne	a4,a5,80001a98 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001aa8:	00005517          	auipc	a0,0x5
    80001aac:	62050513          	addi	a0,a0,1568 # 800070c8 <CONSOLE_STATUS+0xb8>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	1e4080e7          	jalr	484(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	174080e7          	jalr	372(ra) # 80002c2c <_ZN5Riscv17disableInterruptsEv>
}
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	00013903          	ld	s2,0(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret
    80001ad8:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001adc:	00048513          	mv	a0,s1
    80001ae0:	00001097          	auipc	ra,0x1
    80001ae4:	ee4080e7          	jalr	-284(ra) # 800029c4 <_ZdlPv>
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	00008097          	auipc	ra,0x8
    80001af0:	33c080e7          	jalr	828(ra) # 80009e28 <_Unwind_Resume>
    80001af4:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	ec8080e7          	jalr	-312(ra) # 800029c4 <_ZdlPv>
    80001b04:	00048513          	mv	a0,s1
    80001b08:	00008097          	auipc	ra,0x8
    80001b0c:	320080e7          	jalr	800(ra) # 80009e28 <_Unwind_Resume>
    80001b10:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b14:	00090513          	mv	a0,s2
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	eac080e7          	jalr	-340(ra) # 800029c4 <_ZdlPv>
    80001b20:	00048513          	mv	a0,s1
    80001b24:	00008097          	auipc	ra,0x8
    80001b28:	304080e7          	jalr	772(ra) # 80009e28 <_Unwind_Resume>

0000000080001b2c <_Z11threadTestsv>:
{
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    threadTest2();
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	eac080e7          	jalr	-340(ra) # 800019e8 <_Z11threadTest2v>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret

0000000080001b54 <_Z10mallocFreev>:
{
    80001b54:	cc010113          	addi	sp,sp,-832
    80001b58:	32113c23          	sd	ra,824(sp)
    80001b5c:	32813823          	sd	s0,816(sp)
    80001b60:	32913423          	sd	s1,808(sp)
    80001b64:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001b68:	00005517          	auipc	a0,0x5
    80001b6c:	56850513          	addi	a0,a0,1384 # 800070d0 <CONSOLE_STATUS+0xc0>
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	124080e7          	jalr	292(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001b78:	00000493          	li	s1,0
    80001b7c:	0080006f          	j	80001b84 <_Z10mallocFreev+0x30>
    80001b80:	0014849b          	addiw	s1,s1,1
    80001b84:	06300793          	li	a5,99
    80001b88:	0497c463          	blt	a5,s1,80001bd0 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b8c:	06400513          	li	a0,100
    80001b90:	fffff097          	auipc	ra,0xfffff
    80001b94:	6b8080e7          	jalr	1720(ra) # 80001248 <mem_alloc>
    80001b98:	00349793          	slli	a5,s1,0x3
    80001b9c:	fe040713          	addi	a4,s0,-32
    80001ba0:	00f707b3          	add	a5,a4,a5
    80001ba4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001ba8:	fc051ce3          	bnez	a0,80001b80 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001bac:	00005517          	auipc	a0,0x5
    80001bb0:	53450513          	addi	a0,a0,1332 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001bb4:	00001097          	auipc	ra,0x1
    80001bb8:	0e0080e7          	jalr	224(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
}
    80001bbc:	33813083          	ld	ra,824(sp)
    80001bc0:	33013403          	ld	s0,816(sp)
    80001bc4:	32813483          	ld	s1,808(sp)
    80001bc8:	34010113          	addi	sp,sp,832
    80001bcc:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001bd0:	00000493          	li	s1,0
    80001bd4:	06300793          	li	a5,99
    80001bd8:	0297ce63          	blt	a5,s1,80001c14 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001bdc:	00349793          	slli	a5,s1,0x3
    80001be0:	fe040713          	addi	a4,s0,-32
    80001be4:	00f707b3          	add	a5,a4,a5
    80001be8:	ce07b503          	ld	a0,-800(a5)
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	68c080e7          	jalr	1676(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001bf4:	00051663          	bnez	a0,80001c00 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001bf8:	0024849b          	addiw	s1,s1,2
    80001bfc:	fd9ff06f          	j	80001bd4 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001c00:	00005517          	auipc	a0,0x5
    80001c04:	4e050513          	addi	a0,a0,1248 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	08c080e7          	jalr	140(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
            return;
    80001c10:	fadff06f          	j	80001bbc <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001c14:	00000493          	li	s1,0
    80001c18:	0080006f          	j	80001c20 <_Z10mallocFreev+0xcc>
    80001c1c:	0024849b          	addiw	s1,s1,2
    80001c20:	06300793          	li	a5,99
    80001c24:	0297cc63          	blt	a5,s1,80001c5c <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001c28:	01400513          	li	a0,20
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	61c080e7          	jalr	1564(ra) # 80001248 <mem_alloc>
    80001c34:	00349793          	slli	a5,s1,0x3
    80001c38:	fe040713          	addi	a4,s0,-32
    80001c3c:	00f707b3          	add	a5,a4,a5
    80001c40:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c44:	fc051ce3          	bnez	a0,80001c1c <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001c48:	00005517          	auipc	a0,0x5
    80001c4c:	49850513          	addi	a0,a0,1176 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	044080e7          	jalr	68(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
            return;
    80001c58:	f65ff06f          	j	80001bbc <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001c5c:	00000493          	li	s1,0
    80001c60:	06300793          	li	a5,99
    80001c64:	0297ce63          	blt	a5,s1,80001ca0 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001c68:	00349793          	slli	a5,s1,0x3
    80001c6c:	fe040713          	addi	a4,s0,-32
    80001c70:	00f707b3          	add	a5,a4,a5
    80001c74:	ce07b503          	ld	a0,-800(a5)
    80001c78:	fffff097          	auipc	ra,0xfffff
    80001c7c:	600080e7          	jalr	1536(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001c80:	00051663          	bnez	a0,80001c8c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c84:	0014849b          	addiw	s1,s1,1
    80001c88:	fd9ff06f          	j	80001c60 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001c8c:	00005517          	auipc	a0,0x5
    80001c90:	45450513          	addi	a0,a0,1108 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	000080e7          	jalr	ra # 80002c94 <_ZN5Riscv11printStringEPKc>
            return;
    80001c9c:	f21ff06f          	j	80001bbc <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001ca0:	00005517          	auipc	a0,0x5
    80001ca4:	44850513          	addi	a0,a0,1096 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	fec080e7          	jalr	-20(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    80001cb0:	f0dff06f          	j	80001bbc <_Z10mallocFreev+0x68>

0000000080001cb4 <_Z9bigMallocv>:
{
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00113423          	sd	ra,8(sp)
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001cc4:	00005517          	auipc	a0,0x5
    80001cc8:	42c50513          	addi	a0,a0,1068 # 800070f0 <CONSOLE_STATUS+0xe0>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	fc8080e7          	jalr	-56(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001cd4:	00007797          	auipc	a5,0x7
    80001cd8:	fb47b783          	ld	a5,-76(a5) # 80008c88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cdc:	0007b503          	ld	a0,0(a5)
    80001ce0:	00007797          	auipc	a5,0x7
    80001ce4:	f807b783          	ld	a5,-128(a5) # 80008c60 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ce8:	0007b783          	ld	a5,0(a5)
    80001cec:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cf0:	06450513          	addi	a0,a0,100
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	554080e7          	jalr	1364(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001cfc:	02050263          	beqz	a0,80001d20 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001d00:	00005517          	auipc	a0,0x5
    80001d04:	3e050513          	addi	a0,a0,992 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	f8c080e7          	jalr	-116(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
}
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret
        Riscv::printString("OK\n");
    80001d20:	00005517          	auipc	a0,0x5
    80001d24:	3c850513          	addi	a0,a0,968 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	f6c080e7          	jalr	-148(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    80001d30:	fe1ff06f          	j	80001d10 <_Z9bigMallocv+0x5c>

0000000080001d34 <_Z17lotOfSmallMallocsv>:
{
    80001d34:	fd010113          	addi	sp,sp,-48
    80001d38:	02113423          	sd	ra,40(sp)
    80001d3c:	02813023          	sd	s0,32(sp)
    80001d40:	00913c23          	sd	s1,24(sp)
    80001d44:	01213823          	sd	s2,16(sp)
    80001d48:	01313423          	sd	s3,8(sp)
    80001d4c:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001d50:	00005517          	auipc	a0,0x5
    80001d54:	3b050513          	addi	a0,a0,944 # 80007100 <CONSOLE_STATUS+0xf0>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	f3c080e7          	jalr	-196(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001d60:	00000493          	li	s1,0
    uint64 sum = 0;
    80001d64:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001d68:	00000913          	li	s2,0
    80001d6c:	0180006f          	j	80001d84 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d70:	00a00793          	li	a5,10
    80001d74:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d78:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d7c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d80:	00148493          	addi	s1,s1,1
    80001d84:	000027b7          	lui	a5,0x2
    80001d88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d8c:	0097ea63          	bltu	a5,s1,80001da0 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d90:	00800513          	li	a0,8
    80001d94:	fffff097          	auipc	ra,0xfffff
    80001d98:	4b4080e7          	jalr	1204(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001d9c:	fc051ae3          	bnez	a0,80001d70 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001da0:	00090513          	mv	a0,s2
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	f60080e7          	jalr	-160(ra) # 80002d04 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001dac:	00005517          	auipc	a0,0x5
    80001db0:	45c50513          	addi	a0,a0,1116 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	ee0080e7          	jalr	-288(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001dbc:	00291793          	slli	a5,s2,0x2
    80001dc0:	01278933          	add	s2,a5,s2
    80001dc4:	00191913          	slli	s2,s2,0x1
    80001dc8:	03390863          	beq	s2,s3,80001df8 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001dcc:	00005517          	auipc	a0,0x5
    80001dd0:	31450513          	addi	a0,a0,788 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	ec0080e7          	jalr	-320(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
}
    80001ddc:	02813083          	ld	ra,40(sp)
    80001de0:	02013403          	ld	s0,32(sp)
    80001de4:	01813483          	ld	s1,24(sp)
    80001de8:	01013903          	ld	s2,16(sp)
    80001dec:	00813983          	ld	s3,8(sp)
    80001df0:	03010113          	addi	sp,sp,48
    80001df4:	00008067          	ret
        Riscv::printString("OK\n");
    80001df8:	00005517          	auipc	a0,0x5
    80001dfc:	2f050513          	addi	a0,a0,752 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	e94080e7          	jalr	-364(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    80001e08:	fd5ff06f          	j	80001ddc <_Z17lotOfSmallMallocsv+0xa8>

0000000080001e0c <_Z7badFreev>:
{
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	00813023          	sd	s0,0(sp)
    80001e18:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001e1c:	00005517          	auipc	a0,0x5
    80001e20:	2fc50513          	addi	a0,a0,764 # 80007118 <CONSOLE_STATUS+0x108>
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	e70080e7          	jalr	-400(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001e2c:	00800513          	li	a0,8
    80001e30:	fffff097          	auipc	ra,0xfffff
    80001e34:	418080e7          	jalr	1048(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001e38:	00250513          	addi	a0,a0,2
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	43c080e7          	jalr	1084(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001e44:	02051263          	bnez	a0,80001e68 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001e48:	00005517          	auipc	a0,0x5
    80001e4c:	29850513          	addi	a0,a0,664 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	e44080e7          	jalr	-444(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret
        Riscv::printString("OK\n");
    80001e68:	00005517          	auipc	a0,0x5
    80001e6c:	28050513          	addi	a0,a0,640 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	e24080e7          	jalr	-476(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
}
    80001e78:	fe1ff06f          	j	80001e58 <_Z7badFreev+0x4c>

0000000080001e7c <_Z13stressTestingv>:
{
    80001e7c:	cc010113          	addi	sp,sp,-832
    80001e80:	32113c23          	sd	ra,824(sp)
    80001e84:	32813823          	sd	s0,816(sp)
    80001e88:	32913423          	sd	s1,808(sp)
    80001e8c:	33213023          	sd	s2,800(sp)
    80001e90:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001e94:	00005517          	auipc	a0,0x5
    80001e98:	29450513          	addi	a0,a0,660 # 80007128 <CONSOLE_STATUS+0x118>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	df8080e7          	jalr	-520(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001ea4:	00000493          	li	s1,0
    80001ea8:	0080006f          	j	80001eb0 <_Z13stressTestingv+0x34>
    80001eac:	0014849b          	addiw	s1,s1,1
    80001eb0:	06300793          	li	a5,99
    80001eb4:	0297ce63          	blt	a5,s1,80001ef0 <_Z13stressTestingv+0x74>
        addrs[i] = mem_alloc(1);
    80001eb8:	00100513          	li	a0,1
    80001ebc:	fffff097          	auipc	ra,0xfffff
    80001ec0:	38c080e7          	jalr	908(ra) # 80001248 <mem_alloc>
    80001ec4:	00349793          	slli	a5,s1,0x3
    80001ec8:	fe040713          	addi	a4,s0,-32
    80001ecc:	00f707b3          	add	a5,a4,a5
    80001ed0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001ed4:	fc051ce3          	bnez	a0,80001eac <_Z13stressTestingv+0x30>
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
    80001ef4:	0b205a63          	blez	s2,80001fa8 <_Z13stressTestingv+0x12c>
        for(int i = 0 ; i < num;i+=2)
    80001ef8:	00000493          	li	s1,0
    80001efc:	06300793          	li	a5,99
    80001f00:	0497c863          	blt	a5,s1,80001f50 <_Z13stressTestingv+0xd4>
            int retval = mem_free(addrs[i]);
    80001f04:	00349793          	slli	a5,s1,0x3
    80001f08:	fe040713          	addi	a4,s0,-32
    80001f0c:	00f707b3          	add	a5,a4,a5
    80001f10:	ce07b503          	ld	a0,-800(a5)
    80001f14:	fffff097          	auipc	ra,0xfffff
    80001f18:	364080e7          	jalr	868(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001f1c:	fa051ee3          	bnez	a0,80001ed8 <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz/2);
    80001f20:	01f9551b          	srliw	a0,s2,0x1f
    80001f24:	0125053b          	addw	a0,a0,s2
    80001f28:	4015551b          	sraiw	a0,a0,0x1
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	31c080e7          	jalr	796(ra) # 80001248 <mem_alloc>
    80001f34:	00349793          	slli	a5,s1,0x3
    80001f38:	fe040713          	addi	a4,s0,-32
    80001f3c:	00f707b3          	add	a5,a4,a5
    80001f40:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f44:	f8050ae3          	beqz	a0,80001ed8 <_Z13stressTestingv+0x5c>
        for(int i = 0 ; i < num;i+=2)
    80001f48:	0024849b          	addiw	s1,s1,2
    80001f4c:	fb1ff06f          	j	80001efc <_Z13stressTestingv+0x80>
        for(int i = 1 ; i < num;i+=2)
    80001f50:	00100493          	li	s1,1
    80001f54:	06300793          	li	a5,99
    80001f58:	0497c463          	blt	a5,s1,80001fa0 <_Z13stressTestingv+0x124>
            int retval = mem_free(addrs[i]);
    80001f5c:	00349793          	slli	a5,s1,0x3
    80001f60:	fe040713          	addi	a4,s0,-32
    80001f64:	00f707b3          	add	a5,a4,a5
    80001f68:	ce07b503          	ld	a0,-800(a5)
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	30c080e7          	jalr	780(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001f74:	f60512e3          	bnez	a0,80001ed8 <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz);
    80001f78:	00090513          	mv	a0,s2
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	2cc080e7          	jalr	716(ra) # 80001248 <mem_alloc>
    80001f84:	00349793          	slli	a5,s1,0x3
    80001f88:	fe040713          	addi	a4,s0,-32
    80001f8c:	00f707b3          	add	a5,a4,a5
    80001f90:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f94:	f40502e3          	beqz	a0,80001ed8 <_Z13stressTestingv+0x5c>
        for(int i = 1 ; i < num;i+=2)
    80001f98:	0024849b          	addiw	s1,s1,2
    80001f9c:	fb9ff06f          	j	80001f54 <_Z13stressTestingv+0xd8>
        sz-=10;
    80001fa0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001fa4:	f51ff06f          	j	80001ef4 <_Z13stressTestingv+0x78>
    Riscv::printString("OK\n");
    80001fa8:	00005517          	auipc	a0,0x5
    80001fac:	14050513          	addi	a0,a0,320 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	ce4080e7          	jalr	-796(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    80001fb8:	f21ff06f          	j	80001ed8 <_Z13stressTestingv+0x5c>

0000000080001fbc <_Z21memoryAllocationTestsv>:
{
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00113423          	sd	ra,8(sp)
    80001fc4:	00813023          	sd	s0,0(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    stressTesting();
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	eb0080e7          	jalr	-336(ra) # 80001e7c <_Z13stressTestingv>
}
    80001fd4:	00813083          	ld	ra,8(sp)
    80001fd8:	00013403          	ld	s0,0(sp)
    80001fdc:	01010113          	addi	sp,sp,16
    80001fe0:	00008067          	ret

0000000080001fe4 <_Z8semTest1v>:
{
    80001fe4:	fe010113          	addi	sp,sp,-32
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00813823          	sd	s0,16(sp)
    80001ff0:	00913423          	sd	s1,8(sp)
    80001ff4:	01213023          	sd	s2,0(sp)
    80001ff8:	02010413          	addi	s0,sp,32
    mutex = new Semaphore(1);
    80001ffc:	00800513          	li	a0,8
    80002000:	00001097          	auipc	ra,0x1
    80002004:	99c080e7          	jalr	-1636(ra) # 8000299c <_Znwm>
    80002008:	00050493          	mv	s1,a0
    8000200c:	00100593          	li	a1,1
    80002010:	00001097          	auipc	ra,0x1
    80002014:	b08080e7          	jalr	-1272(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80002018:	00007797          	auipc	a5,0x7
    8000201c:	ca97bc23          	sd	s1,-840(a5) # 80008cd0 <_ZL5mutex>
    Thread* t1 = new Thread(&f1, 0);
    80002020:	01800513          	li	a0,24
    80002024:	00001097          	auipc	ra,0x1
    80002028:	978080e7          	jalr	-1672(ra) # 8000299c <_Znwm>
    8000202c:	00050913          	mv	s2,a0
    80002030:	00000613          	li	a2,0
    80002034:	fffff597          	auipc	a1,0xfffff
    80002038:	62858593          	addi	a1,a1,1576 # 8000165c <_Z2f1Pv>
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	a3c080e7          	jalr	-1476(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2, 0);
    80002044:	01800513          	li	a0,24
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	954080e7          	jalr	-1708(ra) # 8000299c <_Znwm>
    80002050:	00050493          	mv	s1,a0
    80002054:	00000613          	li	a2,0
    80002058:	fffff597          	auipc	a1,0xfffff
    8000205c:	67858593          	addi	a1,a1,1656 # 800016d0 <_Z2f2Pv>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	a18080e7          	jalr	-1512(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80002068:	00090513          	mv	a0,s2
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	980080e7          	jalr	-1664(ra) # 800029ec <_ZN6Thread5startEv>
    t2->start();
    80002074:	00048513          	mv	a0,s1
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	974080e7          	jalr	-1676(ra) # 800029ec <_ZN6Thread5startEv>
    int y = 0;
    80002080:	00000493          	li	s1,0
        y++;
    80002084:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	29c080e7          	jalr	668(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    80002090:	000317b7          	lui	a5,0x31
    80002094:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    80002098:	fef496e3          	bne	s1,a5,80002084 <_Z8semTest1v+0xa0>
}
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	01013403          	ld	s0,16(sp)
    800020a4:	00813483          	ld	s1,8(sp)
    800020a8:	00013903          	ld	s2,0(sp)
    800020ac:	02010113          	addi	sp,sp,32
    800020b0:	00008067          	ret
    800020b4:	00050913          	mv	s2,a0
    mutex = new Semaphore(1);
    800020b8:	00048513          	mv	a0,s1
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	908080e7          	jalr	-1784(ra) # 800029c4 <_ZdlPv>
    800020c4:	00090513          	mv	a0,s2
    800020c8:	00008097          	auipc	ra,0x8
    800020cc:	d60080e7          	jalr	-672(ra) # 80009e28 <_Unwind_Resume>
    800020d0:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    800020d4:	00090513          	mv	a0,s2
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	8ec080e7          	jalr	-1812(ra) # 800029c4 <_ZdlPv>
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00008097          	auipc	ra,0x8
    800020e8:	d44080e7          	jalr	-700(ra) # 80009e28 <_Unwind_Resume>
    800020ec:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&f2, 0);
    800020f0:	00048513          	mv	a0,s1
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	8d0080e7          	jalr	-1840(ra) # 800029c4 <_ZdlPv>
    800020fc:	00090513          	mv	a0,s2
    80002100:	00008097          	auipc	ra,0x8
    80002104:	d28080e7          	jalr	-728(ra) # 80009e28 <_Unwind_Resume>

0000000080002108 <_Z8semTest2v>:
    }
}

void semTest2()
{
    80002108:	fd010113          	addi	sp,sp,-48
    8000210c:	02113423          	sd	ra,40(sp)
    80002110:	02813023          	sd	s0,32(sp)
    80002114:	00913c23          	sd	s1,24(sp)
    80002118:	01213823          	sd	s2,16(sp)
    8000211c:	01313423          	sd	s3,8(sp)
    80002120:	03010413          	addi	s0,sp,48
    s1 = new Semaphore(1);
    80002124:	00800513          	li	a0,8
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	874080e7          	jalr	-1932(ra) # 8000299c <_Znwm>
    80002130:	00050493          	mv	s1,a0
    80002134:	00100593          	li	a1,1
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	9e0080e7          	jalr	-1568(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80002140:	00007797          	auipc	a5,0x7
    80002144:	b897bc23          	sd	s1,-1128(a5) # 80008cd8 <_ZL2s1>
    s2 = new Semaphore(0);
    80002148:	00800513          	li	a0,8
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	850080e7          	jalr	-1968(ra) # 8000299c <_Znwm>
    80002154:	00050493          	mv	s1,a0
    80002158:	00000593          	li	a1,0
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	9bc080e7          	jalr	-1604(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80002164:	00007797          	auipc	a5,0x7
    80002168:	b697be23          	sd	s1,-1156(a5) # 80008ce0 <_ZL2s2>
    s3 = new Semaphore(0);
    8000216c:	00800513          	li	a0,8
    80002170:	00001097          	auipc	ra,0x1
    80002174:	82c080e7          	jalr	-2004(ra) # 8000299c <_Znwm>
    80002178:	00050493          	mv	s1,a0
    8000217c:	00000593          	li	a1,0
    80002180:	00001097          	auipc	ra,0x1
    80002184:	998080e7          	jalr	-1640(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80002188:	00007797          	auipc	a5,0x7
    8000218c:	b697b023          	sd	s1,-1184(a5) # 80008ce8 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    80002190:	01800513          	li	a0,24
    80002194:	00001097          	auipc	ra,0x1
    80002198:	808080e7          	jalr	-2040(ra) # 8000299c <_Znwm>
    8000219c:	00050993          	mv	s3,a0
    800021a0:	00000613          	li	a2,0
    800021a4:	fffff597          	auipc	a1,0xfffff
    800021a8:	57c58593          	addi	a1,a1,1404 # 80001720 <_Z4f1_2Pv>
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	8cc080e7          	jalr	-1844(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    800021b4:	01800513          	li	a0,24
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	7e4080e7          	jalr	2020(ra) # 8000299c <_Znwm>
    800021c0:	00050913          	mv	s2,a0
    800021c4:	00000613          	li	a2,0
    800021c8:	fffff597          	auipc	a1,0xfffff
    800021cc:	5e458593          	addi	a1,a1,1508 # 800017ac <_Z4f2_2Pv>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	8a8080e7          	jalr	-1880(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    800021d8:	01800513          	li	a0,24
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	7c0080e7          	jalr	1984(ra) # 8000299c <_Znwm>
    800021e4:	00050493          	mv	s1,a0
    800021e8:	00000613          	li	a2,0
    800021ec:	fffff597          	auipc	a1,0xfffff
    800021f0:	64c58593          	addi	a1,a1,1612 # 80001838 <_Z4f3_2Pv>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	884080e7          	jalr	-1916(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    800021fc:	00048513          	mv	a0,s1
    80002200:	00000097          	auipc	ra,0x0
    80002204:	7ec080e7          	jalr	2028(ra) # 800029ec <_ZN6Thread5startEv>
    t2->start();
    80002208:	00090513          	mv	a0,s2
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	7e0080e7          	jalr	2016(ra) # 800029ec <_ZN6Thread5startEv>
    t1->start();
    80002214:	00098513          	mv	a0,s3
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	7d4080e7          	jalr	2004(ra) # 800029ec <_ZN6Thread5startEv>

    int y = 0;
    80002220:	00000493          	li	s1,0
    while(true)
    {
        y++;
    80002224:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	0fc080e7          	jalr	252(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    80002230:	000317b7          	lui	a5,0x31
    80002234:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    80002238:	fef496e3          	bne	s1,a5,80002224 <_Z8semTest2v+0x11c>
            break;
    }

}
    8000223c:	02813083          	ld	ra,40(sp)
    80002240:	02013403          	ld	s0,32(sp)
    80002244:	01813483          	ld	s1,24(sp)
    80002248:	01013903          	ld	s2,16(sp)
    8000224c:	00813983          	ld	s3,8(sp)
    80002250:	03010113          	addi	sp,sp,48
    80002254:	00008067          	ret
    80002258:	00050913          	mv	s2,a0
    s1 = new Semaphore(1);
    8000225c:	00048513          	mv	a0,s1
    80002260:	00000097          	auipc	ra,0x0
    80002264:	764080e7          	jalr	1892(ra) # 800029c4 <_ZdlPv>
    80002268:	00090513          	mv	a0,s2
    8000226c:	00008097          	auipc	ra,0x8
    80002270:	bbc080e7          	jalr	-1092(ra) # 80009e28 <_Unwind_Resume>
    80002274:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    80002278:	00048513          	mv	a0,s1
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	748080e7          	jalr	1864(ra) # 800029c4 <_ZdlPv>
    80002284:	00090513          	mv	a0,s2
    80002288:	00008097          	auipc	ra,0x8
    8000228c:	ba0080e7          	jalr	-1120(ra) # 80009e28 <_Unwind_Resume>
    80002290:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    80002294:	00048513          	mv	a0,s1
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	72c080e7          	jalr	1836(ra) # 800029c4 <_ZdlPv>
    800022a0:	00090513          	mv	a0,s2
    800022a4:	00008097          	auipc	ra,0x8
    800022a8:	b84080e7          	jalr	-1148(ra) # 80009e28 <_Unwind_Resume>
    800022ac:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    800022b0:	00098513          	mv	a0,s3
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	710080e7          	jalr	1808(ra) # 800029c4 <_ZdlPv>
    800022bc:	00048513          	mv	a0,s1
    800022c0:	00008097          	auipc	ra,0x8
    800022c4:	b68080e7          	jalr	-1176(ra) # 80009e28 <_Unwind_Resume>
    800022c8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    800022cc:	00090513          	mv	a0,s2
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	6f4080e7          	jalr	1780(ra) # 800029c4 <_ZdlPv>
    800022d8:	00048513          	mv	a0,s1
    800022dc:	00008097          	auipc	ra,0x8
    800022e0:	b4c080e7          	jalr	-1204(ra) # 80009e28 <_Unwind_Resume>
    800022e4:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	6d8080e7          	jalr	1752(ra) # 800029c4 <_ZdlPv>
    800022f4:	00090513          	mv	a0,s2
    800022f8:	00008097          	auipc	ra,0x8
    800022fc:	b30080e7          	jalr	-1232(ra) # 80009e28 <_Unwind_Resume>

0000000080002300 <_Z14semaphoreTestsv>:

void semaphoreTests()
{
    80002300:	ff010113          	addi	sp,sp,-16
    80002304:	00113423          	sd	ra,8(sp)
    80002308:	00813023          	sd	s0,0(sp)
    8000230c:	01010413          	addi	s0,sp,16
    //semTest1();
    semTest2();
    80002310:	00000097          	auipc	ra,0x0
    80002314:	df8080e7          	jalr	-520(ra) # 80002108 <_Z8semTest2v>
}
    80002318:	00813083          	ld	ra,8(sp)
    8000231c:	00013403          	ld	s0,0(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <_Z7myTestsv>:

void myTests()
{
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00113423          	sd	ra,8(sp)
    80002330:	00813023          	sd	s0,0(sp)
    80002334:	01010413          	addi	s0,sp,16
    //memoryAllocationTests();
    //threadTests();
    //testQueue();
    semaphoreTests();
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	fc8080e7          	jalr	-56(ra) # 80002300 <_Z14semaphoreTestsv>
}
    80002340:	00813083          	ld	ra,8(sp)
    80002344:	00013403          	ld	s0,0(sp)
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00008067          	ret

0000000080002350 <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    80002350:	fe010113          	addi	sp,sp,-32
    80002354:	00113c23          	sd	ra,24(sp)
    80002358:	00813823          	sd	s0,16(sp)
    8000235c:	00913423          	sd	s1,8(sp)
    80002360:	02010413          	addi	s0,sp,32
    Riscv::printString("Runner started...\n");
    80002364:	00005517          	auipc	a0,0x5
    80002368:	dd450513          	addi	a0,a0,-556 # 80007138 <CONSOLE_STATUS+0x128>
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	928080e7          	jalr	-1752(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80002374:	00001097          	auipc	ra,0x1
    80002378:	900080e7          	jalr	-1792(ra) # 80002c74 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    8000237c:	00007497          	auipc	s1,0x7
    80002380:	97448493          	addi	s1,s1,-1676 # 80008cf0 <_ZN3PCB7runningE>
    80002384:	0004b783          	ld	a5,0(s1)
    80002388:	0187b703          	ld	a4,24(a5)
    8000238c:	0207b503          	ld	a0,32(a5)
    80002390:	000700e7          	jalr	a4

    //todo
    //da li ovde treba da se predje u kernel rezim mozda
    running->setState(PCB::FINISHED);
    80002394:	0004b783          	ld	a5,0(s1)
    void setState(State s) {state = s;}
    80002398:	00300713          	li	a4,3
    8000239c:	02e7a823          	sw	a4,48(a5)
    Riscv::printString("PCB finished\n");
    800023a0:	00005517          	auipc	a0,0x5
    800023a4:	db050513          	addi	a0,a0,-592 # 80007150 <CONSOLE_STATUS+0x140>
    800023a8:	00001097          	auipc	ra,0x1
    800023ac:	8ec080e7          	jalr	-1812(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    //thread_exit();
    thread_dispatch();
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	f74080e7          	jalr	-140(ra) # 80001324 <thread_dispatch>
}
    800023b8:	01813083          	ld	ra,24(sp)
    800023bc:	01013403          	ld	s0,16(sp)
    800023c0:	00813483          	ld	s1,8(sp)
    800023c4:	02010113          	addi	sp,sp,32
    800023c8:	00008067          	ret

00000000800023cc <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00113c23          	sd	ra,24(sp)
    800023d4:	00813823          	sd	s0,16(sp)
    800023d8:	00913423          	sd	s1,8(sp)
    800023dc:	02010413          	addi	s0,sp,32
    800023e0:	00050493          	mv	s1,a0
    })
    800023e4:	00e53423          	sd	a4,8(a0)
    800023e8:	00053823          	sd	zero,16(a0)
    800023ec:	00b53c23          	sd	a1,24(a0)
    800023f0:	02c53023          	sd	a2,32(a0)
    800023f4:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800023f8:	000017b7          	lui	a5,0x1
    800023fc:	00f686b3          	add	a3,a3,a5
    })
    80002400:	02d53c23          	sd	a3,56(a0)
    80002404:	00000797          	auipc	a5,0x0
    80002408:	f4c78793          	addi	a5,a5,-180 # 80002350 <_ZN3PCB6runnerEv>
    8000240c:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    80002410:	00000097          	auipc	ra,0x0
    80002414:	4a4080e7          	jalr	1188(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80002418:	0004b023          	sd	zero,0(s1)
}
    8000241c:	01813083          	ld	ra,24(sp)
    80002420:	01013403          	ld	s0,16(sp)
    80002424:	00813483          	ld	s1,8(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret

0000000080002430 <_ZN3PCB5sleepEm>:
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00813423          	sd	s0,8(sp)
    80002438:	01010413          	addi	s0,sp,16
}
    8000243c:	00813403          	ld	s0,8(sp)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret

0000000080002448 <_ZN3PCB5startEv>:
{
    80002448:	ff010113          	addi	sp,sp,-16
    8000244c:	00113423          	sd	ra,8(sp)
    80002450:	00813023          	sd	s0,0(sp)
    80002454:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	45c080e7          	jalr	1116(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
}
    80002460:	00813083          	ld	ra,8(sp)
    80002464:	00013403          	ld	s0,0(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002470:	fe010113          	addi	sp,sp,-32
    80002474:	00113c23          	sd	ra,24(sp)
    80002478:	00813823          	sd	s0,16(sp)
    8000247c:	00913423          	sd	s1,8(sp)
    80002480:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    80002484:	00007497          	auipc	s1,0x7
    80002488:	86c4b483          	ld	s1,-1940(s1) # 80008cf0 <_ZN3PCB7runningE>
    State getState() {return state;}
    8000248c:	0304a703          	lw	a4,48(s1)
    if(old->getState() == PCB::RUNNING)
    80002490:	00100793          	li	a5,1
    80002494:	04f70063          	beq	a4,a5,800024d4 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	470080e7          	jalr	1136(ra) # 80002908 <_ZN9Scheduler3getEv>
    800024a0:	00007797          	auipc	a5,0x7
    800024a4:	84a7b823          	sd	a0,-1968(a5) # 80008cf0 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800024a8:	00100793          	li	a5,1
    800024ac:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    PCB::contextSwitch(&old->context, &running->context);
    800024b0:	03850593          	addi	a1,a0,56
    800024b4:	03848513          	addi	a0,s1,56
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	d70080e7          	jalr	-656(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800024c0:	01813083          	ld	ra,24(sp)
    800024c4:	01013403          	ld	s0,16(sp)
    800024c8:	00813483          	ld	s1,8(sp)
    800024cc:	02010113          	addi	sp,sp,32
    800024d0:	00008067          	ret
        Scheduler::put(old);
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	3dc080e7          	jalr	988(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
    800024e0:	fb9ff06f          	j	80002498 <_ZN3PCB8dispatchEv+0x28>

00000000800024e4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00113423          	sd	ra,8(sp)
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800024f4:	00001097          	auipc	ra,0x1
    800024f8:	000080e7          	jalr	ra # 800034f4 <_Z7kmallocm>
}
    800024fc:	00813083          	ld	ra,8(sp)
    80002500:	00013403          	ld	s0,0(sp)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret

000000008000250c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00113423          	sd	ra,8(sp)
    80002514:	00813023          	sd	s0,0(sp)
    80002518:	01010413          	addi	s0,sp,16
    kfree(p);
    8000251c:	00001097          	auipc	ra,0x1
    80002520:	000080e7          	jalr	ra # 8000351c <_Z5kfreePv>
}
    80002524:	00813083          	ld	ra,8(sp)
    80002528:	00013403          	ld	s0,0(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00113423          	sd	ra,8(sp)
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80002544:	02853503          	ld	a0,40(a0)
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	fd4080e7          	jalr	-44(ra) # 8000351c <_Z5kfreePv>
    80002550:	00813083          	ld	ra,8(sp)
    80002554:	00013403          	ld	s0,0(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret

0000000080002560 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00813423          	sd	s0,8(sp)
    80002568:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000256c:	00006797          	auipc	a5,0x6
    80002570:	7147b783          	ld	a5,1812(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002574:	0007b583          	ld	a1,0(a5)
    80002578:	00500793          	li	a5,5
    8000257c:	02f5a823          	sw	a5,48(a1)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002580:	00006797          	auipc	a5,0x6
    80002584:	7887b783          	ld	a5,1928(a5) # 80008d08 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002588:	00000613          	li	a2,0
    while(curr != 0)
    8000258c:	02078063          	beqz	a5,800025ac <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002590:	0105b683          	ld	a3,16(a1)
    80002594:	0107b703          	ld	a4,16(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002598:	00e6e863          	bltu	a3,a4,800025a8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000259c:	00078613          	mv	a2,a5
        curr=curr->nextPCB;
    800025a0:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800025a4:	fe9ff06f          	j	8000258c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800025a8:	00f5b023          	sd	a5,0(a1)
    }

    if(prev == 0)
    800025ac:	02060863          	beqz	a2,800025dc <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800025b0:	00006797          	auipc	a5,0x6
    800025b4:	6d07b783          	ld	a5,1744(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025b8:	0007b783          	ld	a5,0(a5)
    800025bc:	0107b703          	ld	a4,16(a5)
    800025c0:	01063683          	ld	a3,16(a2)
    800025c4:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800025c8:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    800025cc:	00f63023          	sd	a5,0(a2)
    }
}
    800025d0:	00813403          	ld	s0,8(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800025dc:	00006797          	auipc	a5,0x6
    800025e0:	6a47b783          	ld	a5,1700(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025e4:	0007b783          	ld	a5,0(a5)
    800025e8:	00006717          	auipc	a4,0x6
    800025ec:	72f73023          	sd	a5,1824(a4) # 80008d08 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800025f0:	0007b703          	ld	a4,0(a5)
    800025f4:	fc070ee3          	beqz	a4,800025d0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    uint64 getTimeToSleep() {return timeToSleep;}
    800025f8:	01073683          	ld	a3,16(a4)
    800025fc:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002600:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002604:	00f73823          	sd	a5,16(a4)
    80002608:	fc9ff06f          	j	800025d0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>

000000008000260c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	02010413          	addi	s0,sp,32
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002620:	00006517          	auipc	a0,0x6
    80002624:	6e853503          	ld	a0,1768(a0) # 80008d08 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002628:	02050663          	beqz	a0,80002654 <_ZN12SleepPCBList13tryToWakePCBsEv+0x48>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000262c:	01053783          	ld	a5,16(a0)
    {
        Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002630:	00100713          	li	a4,1
    80002634:	04e78863          	beq	a5,a4,80002684 <_ZN12SleepPCBList13tryToWakePCBsEv+0x78>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002638:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000263c:	00f53823          	sd	a5,16(a0)
    }
}
    80002640:	01813083          	ld	ra,24(sp)
    80002644:	01013403          	ld	s0,16(sp)
    80002648:	00813483          	ld	s1,8(sp)
    8000264c:	02010113          	addi	sp,sp,32
    80002650:	00008067          	ret
        Riscv::printString("No sleeping PCBs...\n");
    80002654:	00005517          	auipc	a0,0x5
    80002658:	b0c50513          	addi	a0,a0,-1268 # 80007160 <CONSOLE_STATUS+0x150>
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	638080e7          	jalr	1592(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
        return;
    80002664:	fddff06f          	j	80002640 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>
            curr = curr->nextPCB;
    80002668:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    8000266c:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    80002670:	00000097          	auipc	ra,0x0
    80002674:	244080e7          	jalr	580(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002678:	00006797          	auipc	a5,0x6
    8000267c:	6897b823          	sd	s1,1680(a5) # 80008d08 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002680:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002684:	fa050ee3          	beqz	a0,80002640 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>
    80002688:	00006797          	auipc	a5,0x6
    8000268c:	6807b783          	ld	a5,1664(a5) # 80008d08 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002690:	fca78ce3          	beq	a5,a0,80002668 <_ZN12SleepPCBList13tryToWakePCBsEv+0x5c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002694:	01053783          	ld	a5,16(a0)
    80002698:	fc0788e3          	beqz	a5,80002668 <_ZN12SleepPCBList13tryToWakePCBsEv+0x5c>
    8000269c:	fa5ff06f          	j	80002640 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>

00000000800026a0 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    800026a0:	fe010113          	addi	sp,sp,-32
    800026a4:	00113c23          	sd	ra,24(sp)
    800026a8:	00813823          	sd	s0,16(sp)
    800026ac:	00913423          	sd	s1,8(sp)
    800026b0:	01213023          	sd	s2,0(sp)
    800026b4:	02010413          	addi	s0,sp,32
    800026b8:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800026bc:	00053503          	ld	a0,0(a0)
    800026c0:	00853903          	ld	s2,8(a0)
    kfree(first);
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	e58080e7          	jalr	-424(ra) # 8000351c <_Z5kfreePv>
    first = newFirst;
    800026cc:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800026d0:	00090e63          	beqz	s2,800026ec <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800026d4:	01813083          	ld	ra,24(sp)
    800026d8:	01013403          	ld	s0,16(sp)
    800026dc:	00813483          	ld	s1,8(sp)
    800026e0:	00013903          	ld	s2,0(sp)
    800026e4:	02010113          	addi	sp,sp,32
    800026e8:	00008067          	ret
        first = last = 0;
    800026ec:	0004b423          	sd	zero,8(s1)
    800026f0:	0004b023          	sd	zero,0(s1)
}
    800026f4:	fe1ff06f          	j	800026d4 <_ZN5Queue3popEv+0x34>

00000000800026f8 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    800026f8:	fe010113          	addi	sp,sp,-32
    800026fc:	00113c23          	sd	ra,24(sp)
    80002700:	00813823          	sd	s0,16(sp)
    80002704:	00913423          	sd	s1,8(sp)
    80002708:	01213023          	sd	s2,0(sp)
    8000270c:	02010413          	addi	s0,sp,32
    80002710:	00050493          	mv	s1,a0
    80002714:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002718:	01000513          	li	a0,16
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	dd8080e7          	jalr	-552(ra) # 800034f4 <_Z7kmallocm>
    newElem->data = t;
    80002724:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002728:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    8000272c:	0004b783          	ld	a5,0(s1)
    80002730:	02078463          	beqz	a5,80002758 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002734:	0084b783          	ld	a5,8(s1)
    80002738:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    8000273c:	00a4b423          	sd	a0,8(s1)
    }
}
    80002740:	01813083          	ld	ra,24(sp)
    80002744:	01013403          	ld	s0,16(sp)
    80002748:	00813483          	ld	s1,8(sp)
    8000274c:	00013903          	ld	s2,0(sp)
    80002750:	02010113          	addi	sp,sp,32
    80002754:	00008067          	ret
        first = newElem;
    80002758:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    8000275c:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002760:	00053423          	sd	zero,8(a0)
    80002764:	0004b783          	ld	a5,0(s1)
    80002768:	0007b423          	sd	zero,8(a5)
    8000276c:	fd5ff06f          	j	80002740 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002770 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002770:	ff010113          	addi	sp,sp,-16
    80002774:	00813423          	sd	s0,8(sp)
    80002778:	01010413          	addi	s0,sp,16
    if(first == 0)
    8000277c:	00053503          	ld	a0,0(a0)
    80002780:	00050463          	beqz	a0,80002788 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002784:	00053503          	ld	a0,0(a0)
}
    80002788:	00813403          	ld	s0,8(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00813423          	sd	s0,8(sp)
    8000279c:	01010413          	addi	s0,sp,16
    first = last = 0;
    800027a0:	00053423          	sd	zero,8(a0)
    800027a4:	00053023          	sd	zero,0(a0)
}
    800027a8:	00813403          	ld	s0,8(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    800027b4:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    800027b8:	04050063          	beqz	a0,800027f8 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    800027bc:	fe010113          	addi	sp,sp,-32
    800027c0:	00113c23          	sd	ra,24(sp)
    800027c4:	00813823          	sd	s0,16(sp)
    800027c8:	00913423          	sd	s1,8(sp)
    800027cc:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800027d0:	00853483          	ld	s1,8(a0)
        kfree(old);
    800027d4:	00001097          	auipc	ra,0x1
    800027d8:	d48080e7          	jalr	-696(ra) # 8000351c <_Z5kfreePv>
        curr = curr->next;
    800027dc:	00048513          	mv	a0,s1
    while(curr != 0)
    800027e0:	fe0498e3          	bnez	s1,800027d0 <_ZN5QueueD1Ev+0x1c>
    }
}
    800027e4:	01813083          	ld	ra,24(sp)
    800027e8:	01013403          	ld	s0,16(sp)
    800027ec:	00813483          	ld	s1,8(sp)
    800027f0:	02010113          	addi	sp,sp,32
    800027f4:	00008067          	ret
    800027f8:	00008067          	ret

00000000800027fc <_ZN5Queue4sizeEv>:

int Queue::size() {
    800027fc:	ff010113          	addi	sp,sp,-16
    80002800:	00813423          	sd	s0,8(sp)
    80002804:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002808:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    8000280c:	00000513          	li	a0,0
    while(curr != 0)
    80002810:	00078863          	beqz	a5,80002820 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002814:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002818:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000281c:	ff5ff06f          	j	80002810 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002820:	00813403          	ld	s0,8(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00113423          	sd	ra,8(sp)
    80002834:	00813023          	sd	s0,0(sp)
    80002838:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	cb8080e7          	jalr	-840(ra) # 800034f4 <_Z7kmallocm>
}
    80002844:	00813083          	ld	ra,8(sp)
    80002848:	00013403          	ld	s0,0(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00113423          	sd	ra,8(sp)
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	01010413          	addi	s0,sp,16
    kfree(p);
    80002864:	00001097          	auipc	ra,0x1
    80002868:	cb8080e7          	jalr	-840(ra) # 8000351c <_Z5kfreePv>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00813423          	sd	s0,8(sp)
    80002884:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002888:	00006797          	auipc	a5,0x6
    8000288c:	4887b783          	ld	a5,1160(a5) # 80008d10 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002890:	00000513          	li	a0,0
    while(curr != 0)
    80002894:	00078863          	beqz	a5,800028a4 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002898:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    8000289c:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800028a0:	ff5ff06f          	j	80002894 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800028a4:	0005051b          	sext.w	a0,a0
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813423          	sd	s0,8(sp)
    800028bc:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800028c0:	02052823          	sw	zero,48(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800028c4:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    800028c8:	00006797          	auipc	a5,0x6
    800028cc:	4487b783          	ld	a5,1096(a5) # 80008d10 <_ZN9Scheduler16schedulerPCBHeadE>
    800028d0:	02078263          	beqz	a5,800028f4 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800028d4:	00006797          	auipc	a5,0x6
    800028d8:	43c78793          	addi	a5,a5,1084 # 80008d10 <_ZN9Scheduler16schedulerPCBHeadE>
    800028dc:	0087b703          	ld	a4,8(a5)
    800028e0:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    800028e4:	00a7b423          	sd	a0,8(a5)
    }
}
    800028e8:	00813403          	ld	s0,8(sp)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800028f4:	00006797          	auipc	a5,0x6
    800028f8:	41c78793          	addi	a5,a5,1052 # 80008d10 <_ZN9Scheduler16schedulerPCBHeadE>
    800028fc:	00a7b423          	sd	a0,8(a5)
    80002900:	00a7b023          	sd	a0,0(a5)
    80002904:	fe5ff06f          	j	800028e8 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002908 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00813423          	sd	s0,8(sp)
    80002910:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002914:	00006517          	auipc	a0,0x6
    80002918:	3fc53503          	ld	a0,1020(a0) # 80008d10 <_ZN9Scheduler16schedulerPCBHeadE>
    8000291c:	00050c63          	beqz	a0,80002934 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002920:	00053783          	ld	a5,0(a0)
    80002924:	00078e63          	beqz	a5,80002940 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002928:	00006717          	auipc	a4,0x6
    8000292c:	3ef73423          	sd	a5,1000(a4) # 80008d10 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002930:	00053023          	sd	zero,0(a0)
    return retval;
}
    80002934:	00813403          	ld	s0,8(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002940:	00006797          	auipc	a5,0x6
    80002944:	3d078793          	addi	a5,a5,976 # 80008d10 <_ZN9Scheduler16schedulerPCBHeadE>
    80002948:	0007b423          	sd	zero,8(a5)
    8000294c:	0007b023          	sd	zero,0(a5)
    80002950:	fe1ff06f          	j	80002930 <_ZN9Scheduler3getEv+0x28>

0000000080002954 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00113423          	sd	ra,8(sp)
    8000295c:	00813023          	sd	s0,0(sp)
    80002960:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80002964:	00000097          	auipc	ra,0x0
    80002968:	208080e7          	jalr	520(ra) # 80002b6c <_ZN5Riscv10initSystemEv>
    //todo
    //go to unprivileged mode
    //userMain();
    //Riscv::disableInterrupts();

    myTests();
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	9bc080e7          	jalr	-1604(ra) # 80002328 <_Z7myTestsv>

    Riscv::endSystem();
    80002974:	00000097          	auipc	ra,0x0
    80002978:	2d8080e7          	jalr	728(ra) # 80002c4c <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    8000297c:	00004517          	auipc	a0,0x4
    80002980:	7fc50513          	addi	a0,a0,2044 # 80007178 <CONSOLE_STATUS+0x168>
    80002984:	00000097          	auipc	ra,0x0
    80002988:	310080e7          	jalr	784(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>
    8000298c:	00813083          	ld	ra,8(sp)
    80002990:	00013403          	ld	s0,0(sp)
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00008067          	ret

000000008000299c <_Znwm>:

#include "../h/syscall_cpp.hpp"

//general
void * operator new(size_t size)
{
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00113423          	sd	ra,8(sp)
    800029a4:	00813023          	sd	s0,0(sp)
    800029a8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	89c080e7          	jalr	-1892(ra) # 80001248 <mem_alloc>
}
    800029b4:	00813083          	ld	ra,8(sp)
    800029b8:	00013403          	ld	s0,0(sp)
    800029bc:	01010113          	addi	sp,sp,16
    800029c0:	00008067          	ret

00000000800029c4 <_ZdlPv>:

void operator delete(void * p)
{
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00113423          	sd	ra,8(sp)
    800029cc:	00813023          	sd	s0,0(sp)
    800029d0:	01010413          	addi	s0,sp,16
   mem_free(p);
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	8a4080e7          	jalr	-1884(ra) # 80001278 <mem_free>
}
    800029dc:	00813083          	ld	ra,8(sp)
    800029e0:	00013403          	ld	s0,0(sp)
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00008067          	ret

00000000800029ec <_ZN6Thread5startEv>:

//todo
//diskusija u os1 proj sheet-u
void Thread::start()
{
    if(myHandle == 0)
    800029ec:	00053783          	ld	a5,0(a0)
    800029f0:	00078463          	beqz	a5,800029f8 <_ZN6Thread5startEv+0xc>
    800029f4:	00008067          	ret
{
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	00813023          	sd	s0,0(sp)
    80002a04:	01010413          	addi	s0,sp,16
    {
        int retval = thread_create((void**)&myHandle, f, args);
    80002a08:	01053603          	ld	a2,16(a0)
    80002a0c:	00853583          	ld	a1,8(a0)
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	894080e7          	jalr	-1900(ra) # 800012a4 <thread_create>
    {
        //todo
        //what
    }

}
    80002a18:	00813083          	ld	ra,8(sp)
    80002a1c:	00013403          	ld	s0,0(sp)
    80002a20:	01010113          	addi	sp,sp,16
    80002a24:	00008067          	ret

0000000080002a28 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00113423          	sd	ra,8(sp)
    80002a30:	00813023          	sd	s0,0(sp)
    80002a34:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	8ec080e7          	jalr	-1812(ra) # 80001324 <thread_dispatch>
}
    80002a40:	00813083          	ld	ra,8(sp)
    80002a44:	00013403          	ld	s0,0(sp)
    80002a48:	01010113          	addi	sp,sp,16
    80002a4c:	00008067          	ret

0000000080002a50 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80002a50:	ff010113          	addi	sp,sp,-16
    80002a54:	00113423          	sd	ra,8(sp)
    80002a58:	00813023          	sd	s0,0(sp)
    80002a5c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	9c8080e7          	jalr	-1592(ra) # 80001428 <time_sleep>
}
    80002a68:	00813083          	ld	ra,8(sp)
    80002a6c:	00013403          	ld	s0,0(sp)
    80002a70:	01010113          	addi	sp,sp,16
    80002a74:	00008067          	ret

0000000080002a78 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    80002a78:	ff010113          	addi	sp,sp,-16
    80002a7c:	00813423          	sd	s0,8(sp)
    80002a80:	01010413          	addi	s0,sp,16
    myHandle = 0;
    80002a84:	00053023          	sd	zero,0(a0)
    f = body;
    80002a88:	00b53423          	sd	a1,8(a0)
    this->args = args;
    80002a8c:	00c53823          	sd	a2,16(a0)
}
    80002a90:	00813403          	ld	s0,8(sp)
    80002a94:	01010113          	addi	sp,sp,16
    80002a98:	00008067          	ret

0000000080002a9c <_ZN6ThreadC1Ev>:

Thread::Thread()
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00813423          	sd	s0,8(sp)
    80002aa4:	01010413          	addi	s0,sp,16
{
    myHandle = 0;
    80002aa8:	00053023          	sd	zero,0(a0)

    args = (void*)this;
    80002aac:	00a53823          	sd	a0,16(a0)
}
    80002ab0:	00813403          	ld	s0,8(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret

0000000080002abc <_ZN6Thread6runnerEPS_>:

void Thread::runner(Thread *t) {
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00113423          	sd	ra,8(sp)
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002acc:	00000097          	auipc	ra,0x0
    80002ad0:	1a8080e7          	jalr	424(ra) # 80002c74 <_ZN5Riscv10popSppSpieEv>
    //t->run();
    //todo
    //sta ovde treba da se uradi, mozda thread_exit()
    thread_dispatch();
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	850080e7          	jalr	-1968(ra) # 80001324 <thread_dispatch>
}
    80002adc:	00813083          	ld	ra,8(sp)
    80002ae0:	00013403          	ld	s0,0(sp)
    80002ae4:	01010113          	addi	sp,sp,16
    80002ae8:	00008067          	ret

0000000080002aec <_ZN9Semaphore4waitEv>:

//Semaphore

void Semaphore::wait() {
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00113423          	sd	ra,8(sp)
    80002af4:	00813023          	sd	s0,0(sp)
    80002af8:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    80002afc:	00053503          	ld	a0,0(a0)
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	8d0080e7          	jalr	-1840(ra) # 800013d0 <sem_wait>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80002b08:	00813083          	ld	ra,8(sp)
    80002b0c:	00013403          	ld	s0,0(sp)
    80002b10:	01010113          	addi	sp,sp,16
    80002b14:	00008067          	ret

0000000080002b18 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    80002b18:	ff010113          	addi	sp,sp,-16
    80002b1c:	00113423          	sd	ra,8(sp)
    80002b20:	00813023          	sd	s0,0(sp)
    80002b24:	01010413          	addi	s0,sp,16
    int retval = sem_open((void**)&myHandle, init);
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	844080e7          	jalr	-1980(ra) # 8000136c <sem_open>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80002b30:	00813083          	ld	ra,8(sp)
    80002b34:	00013403          	ld	s0,0(sp)
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00008067          	ret

0000000080002b40 <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00113423          	sd	ra,8(sp)
    80002b48:	00813023          	sd	s0,0(sp)
    80002b4c:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    80002b50:	00053503          	ld	a0,0(a0)
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	8a8080e7          	jalr	-1880(ra) # 800013fc <sem_signal>
    {
        //todo
        //what then
    }

}
    80002b5c:	00813083          	ld	ra,8(sp)
    80002b60:	00013403          	ld	s0,0(sp)
    80002b64:	01010113          	addi	sp,sp,16
    80002b68:	00008067          	ret

0000000080002b6c <_ZN5Riscv10initSystemEv>:
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem()
{
    80002b6c:	fe010113          	addi	sp,sp,-32
    80002b70:	00113c23          	sd	ra,24(sp)
    80002b74:	00813823          	sd	s0,16(sp)
    80002b78:	00913423          	sd	s1,8(sp)
    80002b7c:	01213023          	sd	s2,0(sp)
    80002b80:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002b84:	00006797          	auipc	a5,0x6
    80002b88:	0e47b783          	ld	a5,228(a5) # 80008c68 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002b8c:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    80002b90:	01800513          	li	a0,24
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	e08080e7          	jalr	-504(ra) # 8000299c <_Znwm>
    80002b9c:	00050493          	mv	s1,a0
    80002ba0:	00000613          	li	a2,0
    80002ba4:	00000593          	li	a1,0
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	ed0080e7          	jalr	-304(ra) # 80002a78 <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	e38080e7          	jalr	-456(ra) # 800029ec <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	d4c080e7          	jalr	-692(ra) # 80002908 <_ZN9Scheduler3getEv>
    80002bc4:	00006797          	auipc	a5,0x6
    80002bc8:	0bc7b783          	ld	a5,188(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bcc:	00a7b023          	sd	a0,0(a5)
    80002bd0:	00100793          	li	a5,1
    80002bd4:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002bd8:	01813083          	ld	ra,24(sp)
    80002bdc:	01013403          	ld	s0,16(sp)
    80002be0:	00813483          	ld	s1,8(sp)
    80002be4:	00013903          	ld	s2,0(sp)
    80002be8:	02010113          	addi	sp,sp,32
    80002bec:	00008067          	ret
    80002bf0:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	dcc080e7          	jalr	-564(ra) # 800029c4 <_ZdlPv>
    80002c00:	00090513          	mv	a0,s2
    80002c04:	00007097          	auipc	ra,0x7
    80002c08:	224080e7          	jalr	548(ra) # 80009e28 <_Unwind_Resume>

0000000080002c0c <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80002c0c:	ff010113          	addi	sp,sp,-16
    80002c10:	00813423          	sd	s0,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002c18:	00200793          	li	a5,2
    80002c1c:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002c20:	00813403          	ld	s0,8(sp)
    80002c24:	01010113          	addi	sp,sp,16
    80002c28:	00008067          	ret

0000000080002c2c <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80002c2c:	ff010113          	addi	sp,sp,-16
    80002c30:	00813423          	sd	s0,8(sp)
    80002c34:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002c38:	00200793          	li	a5,2
    80002c3c:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80002c40:	00813403          	ld	s0,8(sp)
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00008067          	ret

0000000080002c4c <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00113423          	sd	ra,8(sp)
    80002c54:	00813023          	sd	s0,0(sp)
    80002c58:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	fd0080e7          	jalr	-48(ra) # 80002c2c <_ZN5Riscv17disableInterruptsEv>
}
    80002c64:	00813083          	ld	ra,8(sp)
    80002c68:	00013403          	ld	s0,0(sp)
    80002c6c:	01010113          	addi	sp,sp,16
    80002c70:	00008067          	ret

0000000080002c74 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00813423          	sd	s0,8(sp)
    80002c7c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002c80:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002c84:	10200073          	sret
}
    80002c88:	00813403          	ld	s0,8(sp)
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00008067          	ret

0000000080002c94 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80002c94:	fd010113          	addi	sp,sp,-48
    80002c98:	02113423          	sd	ra,40(sp)
    80002c9c:	02813023          	sd	s0,32(sp)
    80002ca0:	00913c23          	sd	s1,24(sp)
    80002ca4:	01213823          	sd	s2,16(sp)
    80002ca8:	03010413          	addi	s0,sp,48
    80002cac:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002cb0:	100027f3          	csrr	a5,sstatus
    80002cb4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002cb8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002cbc:	00200793          	li	a5,2
    80002cc0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80002cc4:	0004c503          	lbu	a0,0(s1)
    80002cc8:	00050a63          	beqz	a0,80002cdc <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80002ccc:	00004097          	auipc	ra,0x4
    80002cd0:	f60080e7          	jalr	-160(ra) # 80006c2c <__putc>
        string++;
    80002cd4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002cd8:	fedff06f          	j	80002cc4 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002cdc:	0009091b          	sext.w	s2,s2
    80002ce0:	00297913          	andi	s2,s2,2
    80002ce4:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002ce8:	10092073          	csrs	sstatus,s2
}
    80002cec:	02813083          	ld	ra,40(sp)
    80002cf0:	02013403          	ld	s0,32(sp)
    80002cf4:	01813483          	ld	s1,24(sp)
    80002cf8:	01013903          	ld	s2,16(sp)
    80002cfc:	03010113          	addi	sp,sp,48
    80002d00:	00008067          	ret

0000000080002d04 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002d04:	fc010113          	addi	sp,sp,-64
    80002d08:	02113c23          	sd	ra,56(sp)
    80002d0c:	02813823          	sd	s0,48(sp)
    80002d10:	02913423          	sd	s1,40(sp)
    80002d14:	03213023          	sd	s2,32(sp)
    80002d18:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d1c:	100027f3          	csrr	a5,sstatus
    80002d20:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002d24:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002d28:	00200793          	li	a5,2
    80002d2c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002d30:	0005051b          	sext.w	a0,a0

    i = 0;
    80002d34:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002d38:	00a00613          	li	a2,10
    80002d3c:	02c5773b          	remuw	a4,a0,a2
    80002d40:	02071693          	slli	a3,a4,0x20
    80002d44:	0206d693          	srli	a3,a3,0x20
    80002d48:	00004717          	auipc	a4,0x4
    80002d4c:	44870713          	addi	a4,a4,1096 # 80007190 <_ZZN5Riscv12printIntegerEmE6digits>
    80002d50:	00d70733          	add	a4,a4,a3
    80002d54:	00074703          	lbu	a4,0(a4)
    80002d58:	fe040693          	addi	a3,s0,-32
    80002d5c:	009687b3          	add	a5,a3,s1
    80002d60:	0014849b          	addiw	s1,s1,1
    80002d64:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002d68:	0005071b          	sext.w	a4,a0
    80002d6c:	02c5553b          	divuw	a0,a0,a2
    80002d70:	00900793          	li	a5,9
    80002d74:	fce7e2e3          	bltu	a5,a4,80002d38 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002d78:	fff4849b          	addiw	s1,s1,-1
    80002d7c:	0004ce63          	bltz	s1,80002d98 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002d80:	fe040793          	addi	a5,s0,-32
    80002d84:	009787b3          	add	a5,a5,s1
    80002d88:	ff07c503          	lbu	a0,-16(a5)
    80002d8c:	00004097          	auipc	ra,0x4
    80002d90:	ea0080e7          	jalr	-352(ra) # 80006c2c <__putc>
    80002d94:	fe5ff06f          	j	80002d78 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80002d98:	00a00513          	li	a0,10
    80002d9c:	00004097          	auipc	ra,0x4
    80002da0:	e90080e7          	jalr	-368(ra) # 80006c2c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002da4:	0009091b          	sext.w	s2,s2
    80002da8:	00297913          	andi	s2,s2,2
    80002dac:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002db0:	10092073          	csrs	sstatus,s2
}
    80002db4:	03813083          	ld	ra,56(sp)
    80002db8:	03013403          	ld	s0,48(sp)
    80002dbc:	02813483          	ld	s1,40(sp)
    80002dc0:	02013903          	ld	s2,32(sp)
    80002dc4:	04010113          	addi	sp,sp,64
    80002dc8:	00008067          	ret

0000000080002dcc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002dcc:	f8010113          	addi	sp,sp,-128
    80002dd0:	06113c23          	sd	ra,120(sp)
    80002dd4:	06813823          	sd	s0,112(sp)
    80002dd8:	06913423          	sd	s1,104(sp)
    80002ddc:	07213023          	sd	s2,96(sp)
    80002de0:	05313c23          	sd	s3,88(sp)
    80002de4:	05413823          	sd	s4,80(sp)
    80002de8:	05513423          	sd	s5,72(sp)
    80002dec:	05613023          	sd	s6,64(sp)
    80002df0:	08010413          	addi	s0,sp,128
    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002df4:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002df8:	142027f3          	csrr	a5,scause
    80002dfc:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80002e00:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    80002e04:	00900793          	li	a5,9
    80002e08:	08e7fc63          	bgeu	a5,a4,80002ea0 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
    80002e0c:	fff00793          	li	a5,-1
    80002e10:	03f79793          	slli	a5,a5,0x3f
    80002e14:	00178793          	addi	a5,a5,1
    80002e18:	08f71863          	bne	a4,a5,80002ea8 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002e1c:	00200793          	li	a5,2
    80002e20:	1447b073          	csrc	sip,a5
    {

        case timerInterrupt:

            Riscv::mc_sip(Riscv::SIP_SSIP);
            Riscv::printString("timerInterrupt\n");
    80002e24:	00004517          	auipc	a0,0x4
    80002e28:	35c50513          	addi	a0,a0,860 # 80007180 <CONSOLE_STATUS+0x170>
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	e68080e7          	jalr	-408(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>

            PCB::timeSliceCounter++;
    80002e34:	00006497          	auipc	s1,0x6
    80002e38:	e3c4b483          	ld	s1,-452(s1) # 80008c70 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002e3c:	0004b783          	ld	a5,0(s1)
    80002e40:	00178793          	addi	a5,a5,1
    80002e44:	00f4b023          	sd	a5,0(s1)

            SleepPCBList::tryToWakePCBs();
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	7c4080e7          	jalr	1988(ra) # 8000260c <_ZN12SleepPCBList13tryToWakePCBsEv>

            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80002e50:	00006797          	auipc	a5,0x6
    80002e54:	e307b783          	ld	a5,-464(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e58:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002e5c:	0087b783          	ld	a5,8(a5)
    80002e60:	0004b703          	ld	a4,0(s1)
    80002e64:	04f76263          	bltu	a4,a5,80002ea8 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002e68:	141027f3          	csrr	a5,sepc
    80002e6c:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002e70:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002e74:	100027f3          	csrr	a5,sstatus
    80002e78:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80002e7c:	f9043903          	ld	s2,-112(s0)
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    80002e80:	00006797          	auipc	a5,0x6
    80002e84:	df07b783          	ld	a5,-528(a5) # 80008c70 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002e88:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	5e4080e7          	jalr	1508(ra) # 80002470 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002e94:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002e98:	14149073          	csrw	sepc,s1
}
    80002e9c:	00c0006f          	j	80002ea8 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    switch(scause)
    80002ea0:	00800793          	li	a5,8
    80002ea4:	02f77a63          	bgeu	a4,a5,80002ed8 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
            Riscv::w_sepc(sepc);

            return;
    }

    console_handler();
    80002ea8:	00004097          	auipc	ra,0x4
    80002eac:	df8080e7          	jalr	-520(ra) # 80006ca0 <console_handler>
}
    80002eb0:	07813083          	ld	ra,120(sp)
    80002eb4:	07013403          	ld	s0,112(sp)
    80002eb8:	06813483          	ld	s1,104(sp)
    80002ebc:	06013903          	ld	s2,96(sp)
    80002ec0:	05813983          	ld	s3,88(sp)
    80002ec4:	05013a03          	ld	s4,80(sp)
    80002ec8:	04813a83          	ld	s5,72(sp)
    80002ecc:	04013b03          	ld	s6,64(sp)
    80002ed0:	08010113          	addi	sp,sp,128
    80002ed4:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ed8:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002edc:	14102773          	csrr	a4,sepc
    80002ee0:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80002ee4:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    80002ee8:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    80002eec:	00100713          	li	a4,1
    80002ef0:	06e78a63          	beq	a5,a4,80002f64 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
            else if(operation == MemoryAllocator::MEM_FREE)
    80002ef4:	00200713          	li	a4,2
    80002ef8:	08e78463          	beq	a5,a4,80002f80 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
            else if(operation == PCB::THREAD_CREATE)
    80002efc:	01100713          	li	a4,17
    80002f00:	08e78a63          	beq	a5,a4,80002f94 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
            else if(operation == PCB::THREAD_DISPATCH)
    80002f04:	01300713          	li	a4,19
    80002f08:	0ce78c63          	beq	a5,a4,80002fe0 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
            else if(operation == PCB::THREAD_EXIT)
    80002f0c:	01200713          	li	a4,18
    80002f10:	0ee78c63          	beq	a5,a4,80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
            else if(operation == PCB::TIME_SLEEP)
    80002f14:	03100713          	li	a4,49
    80002f18:	14e78263          	beq	a5,a4,8000305c <_ZN5Riscv20handleSupervisorTrapEv+0x290>
            else if(operation == KSemaphore::SEM_OPEN)
    80002f1c:	02100713          	li	a4,33
    80002f20:	18e78263          	beq	a5,a4,800030a4 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
            else if(operation == KSemaphore::SEM_WAIT)
    80002f24:	02300713          	li	a4,35
    80002f28:	1ae78c63          	beq	a5,a4,800030e0 <_ZN5Riscv20handleSupervisorTrapEv+0x314>
            else if(operation == KSemaphore::SEM_SIGNAL)
    80002f2c:	02400713          	li	a4,36
    80002f30:	1ce78263          	beq	a5,a4,800030f4 <_ZN5Riscv20handleSupervisorTrapEv+0x328>
            else if(operation == KSemaphore::SEM_CLOSE)
    80002f34:	02200713          	li	a4,34
    80002f38:	04e79063          	bne	a5,a4,80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002f3c:	00058913          	mv	s2,a1
                delete kSem;
    80002f40:	00090e63          	beqz	s2,80002f5c <_ZN5Riscv20handleSupervisorTrapEv+0x190>
    80002f44:	00090513          	mv	a0,s2
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	744080e7          	jalr	1860(ra) # 8000368c <_ZN10KSemaphoreD1Ev>
    80002f50:	00090513          	mv	a0,s2
    80002f54:	00001097          	auipc	ra,0x1
    80002f58:	870080e7          	jalr	-1936(ra) # 800037c4 <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    80002f5c:	00000513          	li	a0,0
    80002f60:	0180006f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002f64:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002f68:	00651513          	slli	a0,a0,0x6
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	588080e7          	jalr	1416(ra) # 800034f4 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002f74:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002f78:	14149073          	csrw	sepc,s1
}
    80002f7c:	f35ff06f          	j	80002eb0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002f80:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	598080e7          	jalr	1432(ra) # 8000351c <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002f8c:	00050513          	mv	a0,a0
    80002f90:	fe9ff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002f94:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002f98:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002f9c:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80002fa0:	05000513          	li	a0,80
    80002fa4:	fffff097          	auipc	ra,0xfffff
    80002fa8:	540080e7          	jalr	1344(ra) # 800024e4 <_ZN3PCBnwEm>
    80002fac:	00050993          	mv	s3,a0
    80002fb0:	00200713          	li	a4,2
    80002fb4:	00090693          	mv	a3,s2
    80002fb8:	000b0613          	mv	a2,s6
    80002fbc:	000a8593          	mv	a1,s5
    80002fc0:	fffff097          	auipc	ra,0xfffff
    80002fc4:	40c080e7          	jalr	1036(ra) # 800023cc <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80002fc8:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002fcc:	00098663          	beqz	s3,80002fd8 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                    __asm__ volatile("li a0, 0");
    80002fd0:	00000513          	li	a0,0
    80002fd4:	fa5ff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002fd8:	fff00513          	li	a0,-1
    80002fdc:	f9dff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002fe0:	100027f3          	csrr	a5,sstatus
    80002fe4:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002fe8:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    80002fec:	00006797          	auipc	a5,0x6
    80002ff0:	c847b783          	ld	a5,-892(a5) # 80008c70 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002ff4:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002ff8:	fffff097          	auipc	ra,0xfffff
    80002ffc:	478080e7          	jalr	1144(ra) # 80002470 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003000:	10091073          	csrw	sstatus,s2
}
    80003004:	f75ff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                if(PCB::running == 0)
    80003008:	00006797          	auipc	a5,0x6
    8000300c:	c787b783          	ld	a5,-904(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003010:	0007b783          	ld	a5,0(a5)
    80003014:	04078063          	beqz	a5,80003054 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003018:	100027f3          	csrr	a5,sstatus
    8000301c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003020:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80003024:	00006797          	auipc	a5,0x6
    80003028:	c4c7b783          	ld	a5,-948(a5) # 80008c70 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000302c:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    80003030:	00006797          	auipc	a5,0x6
    80003034:	c507b783          	ld	a5,-944(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003038:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    8000303c:	00400713          	li	a4,4
    80003040:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	42c080e7          	jalr	1068(ra) # 80002470 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000304c:	10091073          	csrw	sstatus,s2
}
    80003050:	f29ff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003054:	fff00513          	li	a0,-1
                    return;
    80003058:	e59ff06f          	j	80002eb0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    8000305c:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003060:	100027f3          	csrr	a5,sstatus
    80003064:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80003068:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    8000306c:	00006797          	auipc	a5,0x6
    80003070:	c047b783          	ld	a5,-1020(a5) # 80008c70 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003074:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    80003078:	00006797          	auipc	a5,0x6
    8000307c:	c087b783          	ld	a5,-1016(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003080:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003084:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	4d8080e7          	jalr	1240(ra) # 80002560 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	3e0080e7          	jalr	992(ra) # 80002470 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003098:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    8000309c:	00000513          	li	a0,0
    800030a0:	ed9ff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800030a4:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    800030a8:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    800030ac:	01800513          	li	a0,24
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	6ec080e7          	jalr	1772(ra) # 8000379c <_ZN10KSemaphorenwEm>
    800030b8:	00050913          	mv	s2,a0
    800030bc:	000a059b          	sext.w	a1,s4
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	484080e7          	jalr	1156(ra) # 80003544 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    800030c8:	0129b023          	sd	s2,0(s3)
                if(newSem == 0)
    800030cc:	00090663          	beqz	s2,800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x30c>
                        __asm__ volatile("li a0, 0");
    800030d0:	00000513          	li	a0,0
    800030d4:	ea5ff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    800030d8:	fff00513          	li	a0,-1
    800030dc:	e9dff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800030e0:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	508080e7          	jalr	1288(ra) # 800035ec <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800030ec:	00050513          	mv	a0,a0
    800030f0:	e89ff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800030f4:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	654080e7          	jalr	1620(ra) # 8000374c <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003100:	00050513          	mv	a0,a0
    80003104:	e75ff06f          	j	80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    80003108:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    8000310c:	00098513          	mv	a0,s3
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	3fc080e7          	jalr	1020(ra) # 8000250c <_ZN3PCBdlEPv>
    80003118:	00048513          	mv	a0,s1
    8000311c:	00007097          	auipc	ra,0x7
    80003120:	d0c080e7          	jalr	-756(ra) # 80009e28 <_Unwind_Resume>
    80003124:	00050493          	mv	s1,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003128:	00090513          	mv	a0,s2
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	698080e7          	jalr	1688(ra) # 800037c4 <_ZN10KSemaphoredlEPv>
    80003134:	00048513          	mv	a0,s1
    80003138:	00007097          	auipc	ra,0x7
    8000313c:	cf0080e7          	jalr	-784(ra) # 80009e28 <_Unwind_Resume>

0000000080003140 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003140:	ff010113          	addi	sp,sp,-16
    80003144:	00813423          	sd	s0,8(sp)
    80003148:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    8000314c:	00006717          	auipc	a4,0x6
    80003150:	bd472703          	lw	a4,-1068(a4) # 80008d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003154:	00100793          	li	a5,1
    80003158:	04f70263          	beq	a4,a5,8000319c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    8000315c:	00006797          	auipc	a5,0x6
    80003160:	bc478793          	addi	a5,a5,-1084 # 80008d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003164:	00100713          	li	a4,1
    80003168:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    8000316c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003170:	00006717          	auipc	a4,0x6
    80003174:	af073703          	ld	a4,-1296(a4) # 80008c60 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003178:	00073703          	ld	a4,0(a4)
    8000317c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003180:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003184:	00006797          	auipc	a5,0x6
    80003188:	b047b783          	ld	a5,-1276(a5) # 80008c88 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000318c:	0007b783          	ld	a5,0(a5)
    80003190:	40e787b3          	sub	a5,a5,a4
    80003194:	ff178793          	addi	a5,a5,-15
    80003198:	00f73023          	sd	a5,0(a4)
}
    8000319c:	00813403          	ld	s0,8(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    800031a8:	fe010113          	addi	sp,sp,-32
    800031ac:	00113c23          	sd	ra,24(sp)
    800031b0:	00813823          	sd	s0,16(sp)
    800031b4:	00913423          	sd	s1,8(sp)
    800031b8:	01213023          	sd	s2,0(sp)
    800031bc:	02010413          	addi	s0,sp,32
    800031c0:	00050493          	mv	s1,a0
    800031c4:	00058913          	mv	s2,a1

    initMemory();
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	f78080e7          	jalr	-136(ra) # 80003140 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800031d0:	00006797          	auipc	a5,0x6
    800031d4:	b587b783          	ld	a5,-1192(a5) # 80008d28 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800031d8:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800031dc:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800031e0:	00000713          	li	a4,0
    while(curr != 0)
    800031e4:	00078c63          	beqz	a5,800031fc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800031e8:	00f4e863          	bltu	s1,a5,800031f8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800031ec:	00078713          	mv	a4,a5
        curr = curr->next;
    800031f0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031f4:	ff1ff06f          	j	800031e4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800031f8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800031fc:	02070063          	beqz	a4,8000321c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003200:	00973423          	sd	s1,8(a4)
}
    80003204:	01813083          	ld	ra,24(sp)
    80003208:	01013403          	ld	s0,16(sp)
    8000320c:	00813483          	ld	s1,8(sp)
    80003210:	00013903          	ld	s2,0(sp)
    80003214:	02010113          	addi	sp,sp,32
    80003218:	00008067          	ret
        headAllocated = newAllocated;
    8000321c:	00006797          	auipc	a5,0x6
    80003220:	b097b623          	sd	s1,-1268(a5) # 80008d28 <_ZN15MemoryAllocator13headAllocatedE>
    80003224:	fe1ff06f          	j	80003204 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003228 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80003228:	fe010113          	addi	sp,sp,-32
    8000322c:	00113c23          	sd	ra,24(sp)
    80003230:	00813823          	sd	s0,16(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	01213023          	sd	s2,0(sp)
    8000323c:	02010413          	addi	s0,sp,32
    80003240:	00050913          	mv	s2,a0
    initMemory();
    80003244:	00000097          	auipc	ra,0x0
    80003248:	efc080e7          	jalr	-260(ra) # 80003140 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000324c:	00006497          	auipc	s1,0x6
    80003250:	ae44b483          	ld	s1,-1308(s1) # 80008d30 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003254:	00000713          	li	a4,0
    while(curr != 0)
    80003258:	0a048863          	beqz	s1,80003308 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    8000325c:	0004b783          	ld	a5,0(s1)
    80003260:	0127f863          	bgeu	a5,s2,80003270 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003264:	00048713          	mv	a4,s1
        curr = curr->next;
    80003268:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000326c:	fedff06f          	j	80003258 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003270:	01090693          	addi	a3,s2,16
    80003274:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003278:	00006617          	auipc	a2,0x6
    8000327c:	a1063603          	ld	a2,-1520(a2) # 80008c88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003280:	00063603          	ld	a2,0(a2)
    80003284:	04d66c63          	bltu	a2,a3,800032dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003288:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    8000328c:	01000613          	li	a2,16
    80003290:	02f67663          	bgeu	a2,a5,800032bc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003294:	0084b603          	ld	a2,8(s1)
    80003298:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    8000329c:	ff078793          	addi	a5,a5,-16
    800032a0:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    800032a4:	00070663          	beqz	a4,800032b0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    800032a8:	00d73423          	sd	a3,8(a4)
    800032ac:	0380006f          	j	800032e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    800032b0:	00006797          	auipc	a5,0x6
    800032b4:	a8d7b023          	sd	a3,-1408(a5) # 80008d30 <_ZN15MemoryAllocator8headFreeE>
    800032b8:	02c0006f          	j	800032e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    800032bc:	00070863          	beqz	a4,800032cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    800032c0:	0084b783          	ld	a5,8(s1)
    800032c4:	00f73423          	sd	a5,8(a4)
    800032c8:	01c0006f          	j	800032e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    800032cc:	0084b783          	ld	a5,8(s1)
    800032d0:	00006717          	auipc	a4,0x6
    800032d4:	a6f73023          	sd	a5,-1440(a4) # 80008d30 <_ZN15MemoryAllocator8headFreeE>
    800032d8:	00c0006f          	j	800032e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    800032dc:	02070063          	beqz	a4,800032fc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800032e0:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800032e4:	00090593          	mv	a1,s2
    800032e8:	00048513          	mv	a0,s1
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	ebc080e7          	jalr	-324(ra) # 800031a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800032f4:	01048513          	addi	a0,s1,16
            break;
    800032f8:	0140006f          	j	8000330c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800032fc:	00006797          	auipc	a5,0x6
    80003300:	a207ba23          	sd	zero,-1484(a5) # 80008d30 <_ZN15MemoryAllocator8headFreeE>
    80003304:	fe1ff06f          	j	800032e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003308:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000330c:	01813083          	ld	ra,24(sp)
    80003310:	01013403          	ld	s0,16(sp)
    80003314:	00813483          	ld	s1,8(sp)
    80003318:	00013903          	ld	s2,0(sp)
    8000331c:	02010113          	addi	sp,sp,32
    80003320:	00008067          	ret

0000000080003324 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00113423          	sd	ra,8(sp)
    8000332c:	00813023          	sd	s0,0(sp)
    80003330:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003334:	00000097          	auipc	ra,0x0
    80003338:	ef4080e7          	jalr	-268(ra) # 80003228 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    8000333c:	00813083          	ld	ra,8(sp)
    80003340:	00013403          	ld	s0,0(sp)
    80003344:	01010113          	addi	sp,sp,16
    80003348:	00008067          	ret

000000008000334c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    8000334c:	fe010113          	addi	sp,sp,-32
    80003350:	00113c23          	sd	ra,24(sp)
    80003354:	00813823          	sd	s0,16(sp)
    80003358:	00913423          	sd	s1,8(sp)
    8000335c:	01213023          	sd	s2,0(sp)
    80003360:	02010413          	addi	s0,sp,32
    80003364:	00050493          	mv	s1,a0
    80003368:	00058913          	mv	s2,a1
    initMemory();
    8000336c:	00000097          	auipc	ra,0x0
    80003370:	dd4080e7          	jalr	-556(ra) # 80003140 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003374:	00006797          	auipc	a5,0x6
    80003378:	9bc7b783          	ld	a5,-1604(a5) # 80008d30 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    8000337c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003380:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003384:	00000713          	li	a4,0
    while(curr != 0)
    80003388:	00078c63          	beqz	a5,800033a0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    8000338c:	00f4e863          	bltu	s1,a5,8000339c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003390:	00078713          	mv	a4,a5
        curr = curr->next;
    80003394:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003398:	ff1ff06f          	j	80003388 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    8000339c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800033a0:	04070663          	beqz	a4,800033ec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800033a4:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800033a8:	0084b783          	ld	a5,8(s1)
    800033ac:	00078a63          	beqz	a5,800033c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800033b0:	0004b603          	ld	a2,0(s1)
    800033b4:	01060693          	addi	a3,a2,16
    800033b8:	00d486b3          	add	a3,s1,a3
    800033bc:	02d78e63          	beq	a5,a3,800033f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800033c0:	00070a63          	beqz	a4,800033d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800033c4:	00073683          	ld	a3,0(a4)
    800033c8:	01068793          	addi	a5,a3,16
    800033cc:	00f707b3          	add	a5,a4,a5
    800033d0:	04978263          	beq	a5,s1,80003414 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800033d4:	01813083          	ld	ra,24(sp)
    800033d8:	01013403          	ld	s0,16(sp)
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	00013903          	ld	s2,0(sp)
    800033e4:	02010113          	addi	sp,sp,32
    800033e8:	00008067          	ret
        headFree = newSegment;
    800033ec:	00006797          	auipc	a5,0x6
    800033f0:	9497b223          	sd	s1,-1724(a5) # 80008d30 <_ZN15MemoryAllocator8headFreeE>
    800033f4:	fb5ff06f          	j	800033a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800033f8:	0007b683          	ld	a3,0(a5)
    800033fc:	00d60633          	add	a2,a2,a3
    80003400:	01060613          	addi	a2,a2,16
    80003404:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003408:	0087b783          	ld	a5,8(a5)
    8000340c:	00f4b423          	sd	a5,8(s1)
    80003410:	fb1ff06f          	j	800033c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003414:	0004b783          	ld	a5,0(s1)
    80003418:	00f686b3          	add	a3,a3,a5
    8000341c:	01068693          	addi	a3,a3,16
    80003420:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003424:	0084b783          	ld	a5,8(s1)
    80003428:	00f73423          	sd	a5,8(a4)
}
    8000342c:	fa9ff06f          	j	800033d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003430 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00113c23          	sd	ra,24(sp)
    80003438:	00813823          	sd	s0,16(sp)
    8000343c:	00913423          	sd	s1,8(sp)
    80003440:	01213023          	sd	s2,0(sp)
    80003444:	02010413          	addi	s0,sp,32
    80003448:	00050913          	mv	s2,a0
    initMemory();
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	cf4080e7          	jalr	-780(ra) # 80003140 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003454:	00006497          	auipc	s1,0x6
    80003458:	8d44b483          	ld	s1,-1836(s1) # 80008d28 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    8000345c:	00000713          	li	a4,0
    while(curr != 0)
    80003460:	02048a63          	beqz	s1,80003494 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003464:	01048793          	addi	a5,s1,16
    80003468:	01278863          	beq	a5,s2,80003478 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    8000346c:	00048713          	mv	a4,s1
        curr = curr->next;
    80003470:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003474:	fedff06f          	j	80003460 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003478:	02070e63          	beqz	a4,800034b4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    8000347c:	0084b783          	ld	a5,8(s1)
    80003480:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003484:	0004b583          	ld	a1,0(s1)
    80003488:	00048513          	mv	a0,s1
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	ec0080e7          	jalr	-320(ra) # 8000334c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003494:	02048863          	beqz	s1,800034c4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003498:	00000513          	li	a0,0
    else
        return 1;
}
    8000349c:	01813083          	ld	ra,24(sp)
    800034a0:	01013403          	ld	s0,16(sp)
    800034a4:	00813483          	ld	s1,8(sp)
    800034a8:	00013903          	ld	s2,0(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret
                headAllocated = curr->next;
    800034b4:	0084b783          	ld	a5,8(s1)
    800034b8:	00006717          	auipc	a4,0x6
    800034bc:	86f73823          	sd	a5,-1936(a4) # 80008d28 <_ZN15MemoryAllocator13headAllocatedE>
    800034c0:	fc5ff06f          	j	80003484 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800034c4:	00100513          	li	a0,1
    800034c8:	fd5ff06f          	j	8000349c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800034cc <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    800034cc:	ff010113          	addi	sp,sp,-16
    800034d0:	00113423          	sd	ra,8(sp)
    800034d4:	00813023          	sd	s0,0(sp)
    800034d8:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	f54080e7          	jalr	-172(ra) # 80003430 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800034e4:	00813083          	ld	ra,8(sp)
    800034e8:	00013403          	ld	s0,0(sp)
    800034ec:	01010113          	addi	sp,sp,16
    800034f0:	00008067          	ret

00000000800034f4 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    800034f4:	ff010113          	addi	sp,sp,-16
    800034f8:	00113423          	sd	ra,8(sp)
    800034fc:	00813023          	sd	s0,0(sp)
    80003500:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003504:	00000097          	auipc	ra,0x0
    80003508:	e20080e7          	jalr	-480(ra) # 80003324 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000350c:	00813083          	ld	ra,8(sp)
    80003510:	00013403          	ld	s0,0(sp)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret

000000008000351c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    8000351c:	ff010113          	addi	sp,sp,-16
    80003520:	00113423          	sd	ra,8(sp)
    80003524:	00813023          	sd	s0,0(sp)
    80003528:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	fa0080e7          	jalr	-96(ra) # 800034cc <_ZN15MemoryAllocator8mem_freeEPv>
    80003534:	00813083          	ld	ra,8(sp)
    80003538:	00013403          	ld	s0,0(sp)
    8000353c:	01010113          	addi	sp,sp,16
    80003540:	00008067          	ret

0000000080003544 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003544:	ff010113          	addi	sp,sp,-16
    80003548:	00813423          	sd	s0,8(sp)
    8000354c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003550:	00b52a23          	sw	a1,20(a0)
    80003554:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003558:	00053423          	sd	zero,8(a0)
    8000355c:	00053023          	sd	zero,0(a0)
}
    80003560:	00813403          	ld	s0,8(sp)
    80003564:	01010113          	addi	sp,sp,16
    80003568:	00008067          	ret

000000008000356c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00813423          	sd	s0,8(sp)
    80003574:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003578:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    8000357c:	00053783          	ld	a5,0(a0)
    80003580:	00078e63          	beqz	a5,8000359c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003584:	00853783          	ld	a5,8(a0)
    80003588:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    8000358c:	00b53423          	sd	a1,8(a0)
    }
}
    80003590:	00813403          	ld	s0,8(sp)
    80003594:	01010113          	addi	sp,sp,16
    80003598:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000359c:	00b53423          	sd	a1,8(a0)
    800035a0:	00b53023          	sd	a1,0(a0)
    800035a4:	fedff06f          	j	80003590 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800035a8 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    800035a8:	ff010113          	addi	sp,sp,-16
    800035ac:	00113423          	sd	ra,8(sp)
    800035b0:	00813023          	sd	s0,0(sp)
    800035b4:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800035b8:	00005797          	auipc	a5,0x5
    800035bc:	6c87b783          	ld	a5,1736(a5) # 80008c80 <_GLOBAL_OFFSET_TABLE_+0x28>
    800035c0:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800035c4:	00200793          	li	a5,2
    800035c8:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	fa0080e7          	jalr	-96(ra) # 8000356c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	e9c080e7          	jalr	-356(ra) # 80002470 <_ZN3PCB8dispatchEv>
}
    800035dc:	00813083          	ld	ra,8(sp)
    800035e0:	00013403          	ld	s0,0(sp)
    800035e4:	01010113          	addi	sp,sp,16
    800035e8:	00008067          	ret

00000000800035ec <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800035ec:	01052783          	lw	a5,16(a0)
    800035f0:	fff7879b          	addiw	a5,a5,-1
    800035f4:	00f52823          	sw	a5,16(a0)
    800035f8:	02079713          	slli	a4,a5,0x20
    800035fc:	00074663          	bltz	a4,80003608 <_ZN10KSemaphore4waitEv+0x1c>
}
    80003600:	00000513          	li	a0,0
    80003604:	00008067          	ret
uint64 KSemaphore::wait() {
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00113423          	sd	ra,8(sp)
    80003610:	00813023          	sd	s0,0(sp)
    80003614:	01010413          	addi	s0,sp,16
        block();
    80003618:	00000097          	auipc	ra,0x0
    8000361c:	f90080e7          	jalr	-112(ra) # 800035a8 <_ZN10KSemaphore5blockEv>
}
    80003620:	00000513          	li	a0,0
    80003624:	00813083          	ld	ra,8(sp)
    80003628:	00013403          	ld	s0,0(sp)
    8000362c:	01010113          	addi	sp,sp,16
    80003630:	00008067          	ret

0000000080003634 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003634:	ff010113          	addi	sp,sp,-16
    80003638:	00813423          	sd	s0,8(sp)
    8000363c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003640:	00053503          	ld	a0,0(a0)
    80003644:	00813403          	ld	s0,8(sp)
    80003648:	01010113          	addi	sp,sp,16
    8000364c:	00008067          	ret

0000000080003650 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003650:	ff010113          	addi	sp,sp,-16
    80003654:	00813423          	sd	s0,8(sp)
    80003658:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000365c:	00053783          	ld	a5,0(a0)
    80003660:	00078c63          	beqz	a5,80003678 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003664:	0007b703          	ld	a4,0(a5)
    80003668:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000366c:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    80003670:	00053783          	ld	a5,0(a0)
    80003674:	00078863          	beqz	a5,80003684 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003678:	00813403          	ld	s0,8(sp)
    8000367c:	01010113          	addi	sp,sp,16
    80003680:	00008067          	ret
        tailBlocked =0;
    80003684:	00053423          	sd	zero,8(a0)
    80003688:	ff1ff06f          	j	80003678 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000368c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000368c:	fe010113          	addi	sp,sp,-32
    80003690:	00113c23          	sd	ra,24(sp)
    80003694:	00813823          	sd	s0,16(sp)
    80003698:	00913423          	sd	s1,8(sp)
    8000369c:	01213023          	sd	s2,0(sp)
    800036a0:	02010413          	addi	s0,sp,32
    800036a4:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800036a8:	00090513          	mv	a0,s2
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	f88080e7          	jalr	-120(ra) # 80003634 <_ZN10KSemaphore15getFirstBlockedEv>
    800036b4:	00050493          	mv	s1,a0
    800036b8:	02050063          	beqz	a0,800036d8 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800036bc:	00090513          	mv	a0,s2
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	f90080e7          	jalr	-112(ra) # 80003650 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800036c8:	00048513          	mv	a0,s1
    800036cc:	fffff097          	auipc	ra,0xfffff
    800036d0:	1e8080e7          	jalr	488(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800036d4:	fd5ff06f          	j	800036a8 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800036d8:	01813083          	ld	ra,24(sp)
    800036dc:	01013403          	ld	s0,16(sp)
    800036e0:	00813483          	ld	s1,8(sp)
    800036e4:	00013903          	ld	s2,0(sp)
    800036e8:	02010113          	addi	sp,sp,32
    800036ec:	00008067          	ret

00000000800036f0 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800036f0:	fe010113          	addi	sp,sp,-32
    800036f4:	00113c23          	sd	ra,24(sp)
    800036f8:	00813823          	sd	s0,16(sp)
    800036fc:	00913423          	sd	s1,8(sp)
    80003700:	01213023          	sd	s2,0(sp)
    80003704:	02010413          	addi	s0,sp,32
    80003708:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000370c:	00000097          	auipc	ra,0x0
    80003710:	f28080e7          	jalr	-216(ra) # 80003634 <_ZN10KSemaphore15getFirstBlockedEv>
    80003714:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003718:	00090513          	mv	a0,s2
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	f34080e7          	jalr	-204(ra) # 80003650 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003724:	00048863          	beqz	s1,80003734 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80003728:	00048513          	mv	a0,s1
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	188080e7          	jalr	392(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
}
    80003734:	01813083          	ld	ra,24(sp)
    80003738:	01013403          	ld	s0,16(sp)
    8000373c:	00813483          	ld	s1,8(sp)
    80003740:	00013903          	ld	s2,0(sp)
    80003744:	02010113          	addi	sp,sp,32
    80003748:	00008067          	ret

000000008000374c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000374c:	01052783          	lw	a5,16(a0)
    80003750:	0017879b          	addiw	a5,a5,1
    80003754:	0007871b          	sext.w	a4,a5
    80003758:	00f52823          	sw	a5,16(a0)
    8000375c:	00e05a63          	blez	a4,80003770 <_ZN10KSemaphore6signalEv+0x24>
        val = beginVal;
    80003760:	01452783          	lw	a5,20(a0)
    80003764:	00f52823          	sw	a5,16(a0)
}
    80003768:	00000513          	li	a0,0
    8000376c:	00008067          	ret
uint64 KSemaphore::signal() {
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00113423          	sd	ra,8(sp)
    80003778:	00813023          	sd	s0,0(sp)
    8000377c:	01010413          	addi	s0,sp,16
        unblock();
    80003780:	00000097          	auipc	ra,0x0
    80003784:	f70080e7          	jalr	-144(ra) # 800036f0 <_ZN10KSemaphore7unblockEv>
}
    80003788:	00000513          	li	a0,0
    8000378c:	00813083          	ld	ra,8(sp)
    80003790:	00013403          	ld	s0,0(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00113423          	sd	ra,8(sp)
    800037a4:	00813023          	sd	s0,0(sp)
    800037a8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	d48080e7          	jalr	-696(ra) # 800034f4 <_Z7kmallocm>
}
    800037b4:	00813083          	ld	ra,8(sp)
    800037b8:	00013403          	ld	s0,0(sp)
    800037bc:	01010113          	addi	sp,sp,16
    800037c0:	00008067          	ret

00000000800037c4 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    800037c4:	ff010113          	addi	sp,sp,-16
    800037c8:	00113423          	sd	ra,8(sp)
    800037cc:	00813023          	sd	s0,0(sp)
    800037d0:	01010413          	addi	s0,sp,16
    kfree(p);
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	d48080e7          	jalr	-696(ra) # 8000351c <_Z5kfreePv>
}
    800037dc:	00813083          	ld	ra,8(sp)
    800037e0:	00013403          	ld	s0,0(sp)
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00008067          	ret

00000000800037ec <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    800037ec:	fe010113          	addi	sp,sp,-32
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	01213023          	sd	s2,0(sp)
    80003800:	02010413          	addi	s0,sp,32
    80003804:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Producer started...\n");
    80003808:	00004517          	auipc	a0,0x4
    8000380c:	99850513          	addi	a0,a0,-1640 # 800071a0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003810:	fffff097          	auipc	ra,0xfffff
    80003814:	484080e7          	jalr	1156(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003818:	00000913          	li	s2,0
    8000381c:	00c0006f          	j	80003828 <_Z8producerPv+0x3c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	b04080e7          	jalr	-1276(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    80003828:	00005797          	auipc	a5,0x5
    8000382c:	5107a783          	lw	a5,1296(a5) # 80008d38 <threadEnd>
    80003830:	02079e63          	bnez	a5,8000386c <_Z8producerPv+0x80>
        data->buffer->put(data->id + '0');
    80003834:	0004a583          	lw	a1,0(s1)
    80003838:	0305859b          	addiw	a1,a1,48
    8000383c:	0084b503          	ld	a0,8(s1)
    80003840:	00001097          	auipc	ra,0x1
    80003844:	208080e7          	jalr	520(ra) # 80004a48 <_ZN6Buffer3putEi>
        i++;
    80003848:	0019071b          	addiw	a4,s2,1
    8000384c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003850:	0004a683          	lw	a3,0(s1)
    80003854:	0026979b          	slliw	a5,a3,0x2
    80003858:	00d787bb          	addw	a5,a5,a3
    8000385c:	0017979b          	slliw	a5,a5,0x1
    80003860:	02f767bb          	remw	a5,a4,a5
    80003864:	fc0792e3          	bnez	a5,80003828 <_Z8producerPv+0x3c>
    80003868:	fb9ff06f          	j	80003820 <_Z8producerPv+0x34>
        }
    }

    sem_signal(data->wait);
    8000386c:	0104b503          	ld	a0,16(s1)
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	b8c080e7          	jalr	-1140(ra) # 800013fc <sem_signal>
}
    80003878:	01813083          	ld	ra,24(sp)
    8000387c:	01013403          	ld	s0,16(sp)
    80003880:	00813483          	ld	s1,8(sp)
    80003884:	00013903          	ld	s2,0(sp)
    80003888:	02010113          	addi	sp,sp,32
    8000388c:	00008067          	ret

0000000080003890 <_Z8consumerPv>:

void consumer(void *arg) {
    80003890:	fd010113          	addi	sp,sp,-48
    80003894:	02113423          	sd	ra,40(sp)
    80003898:	02813023          	sd	s0,32(sp)
    8000389c:	00913c23          	sd	s1,24(sp)
    800038a0:	01213823          	sd	s2,16(sp)
    800038a4:	01313423          	sd	s3,8(sp)
    800038a8:	03010413          	addi	s0,sp,48
    800038ac:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");
    800038b0:	00004517          	auipc	a0,0x4
    800038b4:	90850513          	addi	a0,a0,-1784 # 800071b8 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	3dc080e7          	jalr	988(ra) # 80002c94 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    800038c0:	00000993          	li	s3,0
    800038c4:	01c0006f          	j	800038e0 <_Z8consumerPv+0x50>

        //putc(key);
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	a5c080e7          	jalr	-1444(ra) # 80001324 <thread_dispatch>
    800038d0:	04c0006f          	j	8000391c <_Z8consumerPv+0x8c>
        }

        if (i % 80 == 0) {
            __putc('\n');
    800038d4:	00a00513          	li	a0,10
    800038d8:	00003097          	auipc	ra,0x3
    800038dc:	354080e7          	jalr	852(ra) # 80006c2c <__putc>
    while (!threadEnd) {
    800038e0:	00005797          	auipc	a5,0x5
    800038e4:	4587a783          	lw	a5,1112(a5) # 80008d38 <threadEnd>
    800038e8:	04079263          	bnez	a5,8000392c <_Z8consumerPv+0x9c>
        int key = data->buffer->get();
    800038ec:	00893503          	ld	a0,8(s2)
    800038f0:	00001097          	auipc	ra,0x1
    800038f4:	1e8080e7          	jalr	488(ra) # 80004ad8 <_ZN6Buffer3getEv>
        i++;
    800038f8:	0019849b          	addiw	s1,s3,1
    800038fc:	0004899b          	sext.w	s3,s1
        Riscv::printInteger(key);
    80003900:	fffff097          	auipc	ra,0xfffff
    80003904:	404080e7          	jalr	1028(ra) # 80002d04 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    80003908:	00092703          	lw	a4,0(s2)
    8000390c:	0027179b          	slliw	a5,a4,0x2
    80003910:	00e787bb          	addw	a5,a5,a4
    80003914:	02f4e7bb          	remw	a5,s1,a5
    80003918:	fa0788e3          	beqz	a5,800038c8 <_Z8consumerPv+0x38>
        if (i % 80 == 0) {
    8000391c:	05000793          	li	a5,80
    80003920:	02f4e4bb          	remw	s1,s1,a5
    80003924:	fa049ee3          	bnez	s1,800038e0 <_Z8consumerPv+0x50>
    80003928:	fadff06f          	j	800038d4 <_Z8consumerPv+0x44>
        }
    }

    sem_signal(data->wait);
    8000392c:	01093503          	ld	a0,16(s2)
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	acc080e7          	jalr	-1332(ra) # 800013fc <sem_signal>
}
    80003938:	02813083          	ld	ra,40(sp)
    8000393c:	02013403          	ld	s0,32(sp)
    80003940:	01813483          	ld	s1,24(sp)
    80003944:	01013903          	ld	s2,16(sp)
    80003948:	00813983          	ld	s3,8(sp)
    8000394c:	03010113          	addi	sp,sp,48
    80003950:	00008067          	ret

0000000080003954 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80003954:	fe010113          	addi	sp,sp,-32
    80003958:	00113c23          	sd	ra,24(sp)
    8000395c:	00813823          	sd	s0,16(sp)
    80003960:	00913423          	sd	s1,8(sp)
    80003964:	01213023          	sd	s2,0(sp)
    80003968:	02010413          	addi	s0,sp,32
    8000396c:	00050493          	mv	s1,a0
    int i = 0;
    80003970:	00000913          	li	s2,0
    80003974:	00c0006f          	j	80003980 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	9ac080e7          	jalr	-1620(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    80003980:	00003097          	auipc	ra,0x3
    80003984:	2e8080e7          	jalr	744(ra) # 80006c68 <__getc>
    80003988:	0005059b          	sext.w	a1,a0
    8000398c:	01b00793          	li	a5,27
    80003990:	02f58a63          	beq	a1,a5,800039c4 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003994:	0084b503          	ld	a0,8(s1)
    80003998:	00001097          	auipc	ra,0x1
    8000399c:	0b0080e7          	jalr	176(ra) # 80004a48 <_ZN6Buffer3putEi>
        i++;
    800039a0:	0019071b          	addiw	a4,s2,1
    800039a4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800039a8:	0004a683          	lw	a3,0(s1)
    800039ac:	0026979b          	slliw	a5,a3,0x2
    800039b0:	00d787bb          	addw	a5,a5,a3
    800039b4:	0017979b          	slliw	a5,a5,0x1
    800039b8:	02f767bb          	remw	a5,a4,a5
    800039bc:	fc0792e3          	bnez	a5,80003980 <_Z16producerKeyboardPv+0x2c>
    800039c0:	fb9ff06f          	j	80003978 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    800039c4:	00100793          	li	a5,1
    800039c8:	00005717          	auipc	a4,0x5
    800039cc:	36f72823          	sw	a5,880(a4) # 80008d38 <threadEnd>
    delete data->buffer;
    800039d0:	0084b903          	ld	s2,8(s1)
    800039d4:	00090e63          	beqz	s2,800039f0 <_Z16producerKeyboardPv+0x9c>
    800039d8:	00090513          	mv	a0,s2
    800039dc:	00001097          	auipc	ra,0x1
    800039e0:	fc0080e7          	jalr	-64(ra) # 8000499c <_ZN6BufferD1Ev>
    800039e4:	00090513          	mv	a0,s2
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	fdc080e7          	jalr	-36(ra) # 800029c4 <_ZdlPv>
    sem_signal(data->wait);
    800039f0:	0104b503          	ld	a0,16(s1)
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	a08080e7          	jalr	-1528(ra) # 800013fc <sem_signal>
}
    800039fc:	01813083          	ld	ra,24(sp)
    80003a00:	01013403          	ld	s0,16(sp)
    80003a04:	00813483          	ld	s1,8(sp)
    80003a08:	00013903          	ld	s2,0(sp)
    80003a0c:	02010113          	addi	sp,sp,32
    80003a10:	00008067          	ret

0000000080003a14 <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    80003a14:	f2010113          	addi	sp,sp,-224
    80003a18:	0c113c23          	sd	ra,216(sp)
    80003a1c:	0c813823          	sd	s0,208(sp)
    80003a20:	0c913423          	sd	s1,200(sp)
    80003a24:	0d213023          	sd	s2,192(sp)
    80003a28:	0e010413          	addi	s0,sp,224
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80003a2c:	00003517          	auipc	a0,0x3
    80003a30:	7a450513          	addi	a0,a0,1956 # 800071d0 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80003a34:	00000097          	auipc	ra,0x0
    80003a38:	7c8080e7          	jalr	1992(ra) # 800041fc <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    80003a3c:	00003517          	auipc	a0,0x3
    80003a40:	7b450513          	addi	a0,a0,1972 # 800071f0 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	7b8080e7          	jalr	1976(ra) # 800041fc <_Z11printStringPKc>
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80003a4c:	00003517          	auipc	a0,0x3
    80003a50:	7c450513          	addi	a0,a0,1988 # 80007210 <_ZZN5Riscv12printIntegerEmE6digits+0x80>
    80003a54:	00000097          	auipc	ra,0x0
    80003a58:	7a8080e7          	jalr	1960(ra) # 800041fc <_Z11printStringPKc>
    80003a5c:	00000613          	li	a2,0
    80003a60:	00a00593          	li	a1,10
    80003a64:	00500513          	li	a0,5
    80003a68:	00001097          	auipc	ra,0x1
    80003a6c:	92c080e7          	jalr	-1748(ra) # 80004394 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003a70:	00003517          	auipc	a0,0x3
    80003a74:	7b850513          	addi	a0,a0,1976 # 80007228 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    80003a78:	00000097          	auipc	ra,0x0
    80003a7c:	784080e7          	jalr	1924(ra) # 800041fc <_Z11printStringPKc>
    80003a80:	00000613          	li	a2,0
    80003a84:	00a00593          	li	a1,10
    80003a88:	00a00513          	li	a0,10
    80003a8c:	00001097          	auipc	ra,0x1
    80003a90:	908080e7          	jalr	-1784(ra) # 80004394 <_Z8printIntiii>
    printString(".\n");
    80003a94:	00003517          	auipc	a0,0x3
    80003a98:	6b450513          	addi	a0,a0,1716 # 80007148 <CONSOLE_STATUS+0x138>
    80003a9c:	00000097          	auipc	ra,0x0
    80003aa0:	760080e7          	jalr	1888(ra) # 800041fc <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80003aa4:	03800513          	li	a0,56
    80003aa8:	fffff097          	auipc	ra,0xfffff
    80003aac:	ef4080e7          	jalr	-268(ra) # 8000299c <_Znwm>
    80003ab0:	00050913          	mv	s2,a0
    80003ab4:	00a00593          	li	a1,10
    80003ab8:	00001097          	auipc	ra,0x1
    80003abc:	e5c080e7          	jalr	-420(ra) # 80004914 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80003ac0:	00000593          	li	a1,0
    80003ac4:	00005517          	auipc	a0,0x5
    80003ac8:	27c50513          	addi	a0,a0,636 # 80008d40 <waitForAll>
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	8a0080e7          	jalr	-1888(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80003ad4:	00500793          	li	a5,5
    80003ad8:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    80003adc:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    80003ae0:	00005797          	auipc	a5,0x5
    80003ae4:	2607b783          	ld	a5,608(a5) # 80008d40 <waitForAll>
    80003ae8:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003aec:	fc040613          	addi	a2,s0,-64
    80003af0:	00000597          	auipc	a1,0x0
    80003af4:	da058593          	addi	a1,a1,-608 # 80003890 <_Z8consumerPv>
    80003af8:	fd840513          	addi	a0,s0,-40
    80003afc:	ffffd097          	auipc	ra,0xffffd
    80003b00:	7a8080e7          	jalr	1960(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80003b04:	00000493          	li	s1,0
    80003b08:	00400793          	li	a5,4
    80003b0c:	0697c063          	blt	a5,s1,80003b6c <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80003b10:	00149613          	slli	a2,s1,0x1
    80003b14:	009607b3          	add	a5,a2,s1
    80003b18:	00379793          	slli	a5,a5,0x3
    80003b1c:	fe040713          	addi	a4,s0,-32
    80003b20:	00f707b3          	add	a5,a4,a5
    80003b24:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    80003b28:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80003b2c:	00005717          	auipc	a4,0x5
    80003b30:	21473703          	ld	a4,532(a4) # 80008d40 <waitForAll>
    80003b34:	f6e7bc23          	sd	a4,-136(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);
    80003b38:	00349793          	slli	a5,s1,0x3
    80003b3c:	00960633          	add	a2,a2,s1
    80003b40:	00361613          	slli	a2,a2,0x3
    80003b44:	f4840713          	addi	a4,s0,-184
    80003b48:	00c70633          	add	a2,a4,a2
    80003b4c:	00000597          	auipc	a1,0x0
    80003b50:	ca058593          	addi	a1,a1,-864 # 800037ec <_Z8producerPv>
    80003b54:	f2040513          	addi	a0,s0,-224
    80003b58:	00f50533          	add	a0,a0,a5
    80003b5c:	ffffd097          	auipc	ra,0xffffd
    80003b60:	748080e7          	jalr	1864(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003b64:	0014849b          	addiw	s1,s1,1
    80003b68:	fa1ff06f          	j	80003b08 <_Z22producerConsumer_C_APIv+0xf4>

    }

    thread_dispatch();
    80003b6c:	ffffd097          	auipc	ra,0xffffd
    80003b70:	7b8080e7          	jalr	1976(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80003b74:	00000493          	li	s1,0
    80003b78:	00500793          	li	a5,5
    80003b7c:	0097ce63          	blt	a5,s1,80003b98 <_Z22producerConsumer_C_APIv+0x184>
        sem_wait(waitForAll);
    80003b80:	00005517          	auipc	a0,0x5
    80003b84:	1c053503          	ld	a0,448(a0) # 80008d40 <waitForAll>
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	848080e7          	jalr	-1976(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003b90:	0014849b          	addiw	s1,s1,1
    80003b94:	fe5ff06f          	j	80003b78 <_Z22producerConsumer_C_APIv+0x164>
    }

    sem_close(waitForAll);
    80003b98:	00005517          	auipc	a0,0x5
    80003b9c:	1a853503          	ld	a0,424(a0) # 80008d40 <waitForAll>
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	804080e7          	jalr	-2044(ra) # 800013a4 <sem_close>
    80003ba8:	0d813083          	ld	ra,216(sp)
    80003bac:	0d013403          	ld	s0,208(sp)
    80003bb0:	0c813483          	ld	s1,200(sp)
    80003bb4:	0c013903          	ld	s2,192(sp)
    80003bb8:	0e010113          	addi	sp,sp,224
    80003bbc:	00008067          	ret
    80003bc0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003bc4:	00090513          	mv	a0,s2
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	dfc080e7          	jalr	-516(ra) # 800029c4 <_ZdlPv>
    80003bd0:	00048513          	mv	a0,s1
    80003bd4:	00006097          	auipc	ra,0x6
    80003bd8:	254080e7          	jalr	596(ra) # 80009e28 <_Unwind_Resume>

0000000080003bdc <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80003bdc:	fe010113          	addi	sp,sp,-32
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	00813823          	sd	s0,16(sp)
    80003be8:	00913423          	sd	s1,8(sp)
    80003bec:	01213023          	sd	s2,0(sp)
    80003bf0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003bf4:	00000913          	li	s2,0
    80003bf8:	0380006f          	j	80003c30 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003bfc:	ffffd097          	auipc	ra,0xffffd
    80003c00:	728080e7          	jalr	1832(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003c04:	00148493          	addi	s1,s1,1
    80003c08:	000027b7          	lui	a5,0x2
    80003c0c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c10:	0097ee63          	bltu	a5,s1,80003c2c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c14:	00000713          	li	a4,0
    80003c18:	000077b7          	lui	a5,0x7
    80003c1c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c20:	fce7eee3          	bltu	a5,a4,80003bfc <_Z11workerBodyAPv+0x20>
    80003c24:	00170713          	addi	a4,a4,1
    80003c28:	ff1ff06f          	j	80003c18 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003c2c:	00190913          	addi	s2,s2,1
    80003c30:	00900793          	li	a5,9
    80003c34:	0527e063          	bltu	a5,s2,80003c74 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003c38:	00003517          	auipc	a0,0x3
    80003c3c:	60850513          	addi	a0,a0,1544 # 80007240 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	5bc080e7          	jalr	1468(ra) # 800041fc <_Z11printStringPKc>
    80003c48:	00000613          	li	a2,0
    80003c4c:	00a00593          	li	a1,10
    80003c50:	0009051b          	sext.w	a0,s2
    80003c54:	00000097          	auipc	ra,0x0
    80003c58:	740080e7          	jalr	1856(ra) # 80004394 <_Z8printIntiii>
    80003c5c:	00003517          	auipc	a0,0x3
    80003c60:	5ac50513          	addi	a0,a0,1452 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	598080e7          	jalr	1432(ra) # 800041fc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c6c:	00000493          	li	s1,0
    80003c70:	f99ff06f          	j	80003c08 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003c74:	00003517          	auipc	a0,0x3
    80003c78:	5d450513          	addi	a0,a0,1492 # 80007248 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	580080e7          	jalr	1408(ra) # 800041fc <_Z11printStringPKc>
    finishedA = true;
    80003c84:	00100793          	li	a5,1
    80003c88:	00005717          	auipc	a4,0x5
    80003c8c:	0cf70023          	sb	a5,192(a4) # 80008d48 <finishedA>
}
    80003c90:	01813083          	ld	ra,24(sp)
    80003c94:	01013403          	ld	s0,16(sp)
    80003c98:	00813483          	ld	s1,8(sp)
    80003c9c:	00013903          	ld	s2,0(sp)
    80003ca0:	02010113          	addi	sp,sp,32
    80003ca4:	00008067          	ret

0000000080003ca8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80003ca8:	fe010113          	addi	sp,sp,-32
    80003cac:	00113c23          	sd	ra,24(sp)
    80003cb0:	00813823          	sd	s0,16(sp)
    80003cb4:	00913423          	sd	s1,8(sp)
    80003cb8:	01213023          	sd	s2,0(sp)
    80003cbc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003cc0:	00000913          	li	s2,0
    80003cc4:	0380006f          	j	80003cfc <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003cc8:	ffffd097          	auipc	ra,0xffffd
    80003ccc:	65c080e7          	jalr	1628(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003cd0:	00148493          	addi	s1,s1,1
    80003cd4:	000027b7          	lui	a5,0x2
    80003cd8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003cdc:	0097ee63          	bltu	a5,s1,80003cf8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ce0:	00000713          	li	a4,0
    80003ce4:	000077b7          	lui	a5,0x7
    80003ce8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003cec:	fce7eee3          	bltu	a5,a4,80003cc8 <_Z11workerBodyBPv+0x20>
    80003cf0:	00170713          	addi	a4,a4,1
    80003cf4:	ff1ff06f          	j	80003ce4 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003cf8:	00190913          	addi	s2,s2,1
    80003cfc:	00f00793          	li	a5,15
    80003d00:	0527e063          	bltu	a5,s2,80003d40 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003d04:	00003517          	auipc	a0,0x3
    80003d08:	55450513          	addi	a0,a0,1364 # 80007258 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	4f0080e7          	jalr	1264(ra) # 800041fc <_Z11printStringPKc>
    80003d14:	00000613          	li	a2,0
    80003d18:	00a00593          	li	a1,10
    80003d1c:	0009051b          	sext.w	a0,s2
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	674080e7          	jalr	1652(ra) # 80004394 <_Z8printIntiii>
    80003d28:	00003517          	auipc	a0,0x3
    80003d2c:	4e050513          	addi	a0,a0,1248 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	4cc080e7          	jalr	1228(ra) # 800041fc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d38:	00000493          	li	s1,0
    80003d3c:	f99ff06f          	j	80003cd4 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003d40:	00003517          	auipc	a0,0x3
    80003d44:	52050513          	addi	a0,a0,1312 # 80007260 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	4b4080e7          	jalr	1204(ra) # 800041fc <_Z11printStringPKc>
    finishedB = true;
    80003d50:	00100793          	li	a5,1
    80003d54:	00005717          	auipc	a4,0x5
    80003d58:	fef70aa3          	sb	a5,-11(a4) # 80008d49 <finishedB>
    thread_dispatch();
    80003d5c:	ffffd097          	auipc	ra,0xffffd
    80003d60:	5c8080e7          	jalr	1480(ra) # 80001324 <thread_dispatch>
}
    80003d64:	01813083          	ld	ra,24(sp)
    80003d68:	01013403          	ld	s0,16(sp)
    80003d6c:	00813483          	ld	s1,8(sp)
    80003d70:	00013903          	ld	s2,0(sp)
    80003d74:	02010113          	addi	sp,sp,32
    80003d78:	00008067          	ret

0000000080003d7c <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80003d7c:	fe010113          	addi	sp,sp,-32
    80003d80:	00113c23          	sd	ra,24(sp)
    80003d84:	00813823          	sd	s0,16(sp)
    80003d88:	00913423          	sd	s1,8(sp)
    80003d8c:	01213023          	sd	s2,0(sp)
    80003d90:	02010413          	addi	s0,sp,32
    80003d94:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d98:	00100793          	li	a5,1
    80003d9c:	02a7f863          	bgeu	a5,a0,80003dcc <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003da0:	00a00793          	li	a5,10
    80003da4:	02f577b3          	remu	a5,a0,a5
    80003da8:	02078e63          	beqz	a5,80003de4 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003dac:	fff48513          	addi	a0,s1,-1
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	fcc080e7          	jalr	-52(ra) # 80003d7c <_Z9fibonaccim>
    80003db8:	00050913          	mv	s2,a0
    80003dbc:	ffe48513          	addi	a0,s1,-2
    80003dc0:	00000097          	auipc	ra,0x0
    80003dc4:	fbc080e7          	jalr	-68(ra) # 80003d7c <_Z9fibonaccim>
    80003dc8:	00a90533          	add	a0,s2,a0
}
    80003dcc:	01813083          	ld	ra,24(sp)
    80003dd0:	01013403          	ld	s0,16(sp)
    80003dd4:	00813483          	ld	s1,8(sp)
    80003dd8:	00013903          	ld	s2,0(sp)
    80003ddc:	02010113          	addi	sp,sp,32
    80003de0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003de4:	ffffd097          	auipc	ra,0xffffd
    80003de8:	540080e7          	jalr	1344(ra) # 80001324 <thread_dispatch>
    80003dec:	fc1ff06f          	j	80003dac <_Z9fibonaccim+0x30>

0000000080003df0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80003df0:	fe010113          	addi	sp,sp,-32
    80003df4:	00113c23          	sd	ra,24(sp)
    80003df8:	00813823          	sd	s0,16(sp)
    80003dfc:	00913423          	sd	s1,8(sp)
    80003e00:	01213023          	sd	s2,0(sp)
    80003e04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003e08:	00000493          	li	s1,0
    80003e0c:	0400006f          	j	80003e4c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003e10:	00003517          	auipc	a0,0x3
    80003e14:	46050513          	addi	a0,a0,1120 # 80007270 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003e18:	00000097          	auipc	ra,0x0
    80003e1c:	3e4080e7          	jalr	996(ra) # 800041fc <_Z11printStringPKc>
    80003e20:	00000613          	li	a2,0
    80003e24:	00a00593          	li	a1,10
    80003e28:	00048513          	mv	a0,s1
    80003e2c:	00000097          	auipc	ra,0x0
    80003e30:	568080e7          	jalr	1384(ra) # 80004394 <_Z8printIntiii>
    80003e34:	00003517          	auipc	a0,0x3
    80003e38:	3d450513          	addi	a0,a0,980 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	3c0080e7          	jalr	960(ra) # 800041fc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e44:	0014849b          	addiw	s1,s1,1
    80003e48:	0ff4f493          	andi	s1,s1,255
    80003e4c:	00200793          	li	a5,2
    80003e50:	fc97f0e3          	bgeu	a5,s1,80003e10 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80003e54:	00003517          	auipc	a0,0x3
    80003e58:	42450513          	addi	a0,a0,1060 # 80007278 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80003e5c:	00000097          	auipc	ra,0x0
    80003e60:	3a0080e7          	jalr	928(ra) # 800041fc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e64:	00700313          	li	t1,7
    thread_dispatch();
    80003e68:	ffffd097          	auipc	ra,0xffffd
    80003e6c:	4bc080e7          	jalr	1212(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003e70:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003e74:	00003517          	auipc	a0,0x3
    80003e78:	41450513          	addi	a0,a0,1044 # 80007288 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	380080e7          	jalr	896(ra) # 800041fc <_Z11printStringPKc>
    80003e84:	00000613          	li	a2,0
    80003e88:	00a00593          	li	a1,10
    80003e8c:	0009051b          	sext.w	a0,s2
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	504080e7          	jalr	1284(ra) # 80004394 <_Z8printIntiii>
    80003e98:	00003517          	auipc	a0,0x3
    80003e9c:	37050513          	addi	a0,a0,880 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	35c080e7          	jalr	860(ra) # 800041fc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003ea8:	00c00513          	li	a0,12
    80003eac:	00000097          	auipc	ra,0x0
    80003eb0:	ed0080e7          	jalr	-304(ra) # 80003d7c <_Z9fibonaccim>
    80003eb4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003eb8:	00003517          	auipc	a0,0x3
    80003ebc:	3d850513          	addi	a0,a0,984 # 80007290 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	33c080e7          	jalr	828(ra) # 800041fc <_Z11printStringPKc>
    80003ec8:	00000613          	li	a2,0
    80003ecc:	00a00593          	li	a1,10
    80003ed0:	0009051b          	sext.w	a0,s2
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	4c0080e7          	jalr	1216(ra) # 80004394 <_Z8printIntiii>
    80003edc:	00003517          	auipc	a0,0x3
    80003ee0:	32c50513          	addi	a0,a0,812 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	318080e7          	jalr	792(ra) # 800041fc <_Z11printStringPKc>
    80003eec:	0400006f          	j	80003f2c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ef0:	00003517          	auipc	a0,0x3
    80003ef4:	38050513          	addi	a0,a0,896 # 80007270 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003ef8:	00000097          	auipc	ra,0x0
    80003efc:	304080e7          	jalr	772(ra) # 800041fc <_Z11printStringPKc>
    80003f00:	00000613          	li	a2,0
    80003f04:	00a00593          	li	a1,10
    80003f08:	00048513          	mv	a0,s1
    80003f0c:	00000097          	auipc	ra,0x0
    80003f10:	488080e7          	jalr	1160(ra) # 80004394 <_Z8printIntiii>
    80003f14:	00003517          	auipc	a0,0x3
    80003f18:	2f450513          	addi	a0,a0,756 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	2e0080e7          	jalr	736(ra) # 800041fc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003f24:	0014849b          	addiw	s1,s1,1
    80003f28:	0ff4f493          	andi	s1,s1,255
    80003f2c:	00500793          	li	a5,5
    80003f30:	fc97f0e3          	bgeu	a5,s1,80003ef0 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80003f34:	00003517          	auipc	a0,0x3
    80003f38:	36c50513          	addi	a0,a0,876 # 800072a0 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80003f3c:	00000097          	auipc	ra,0x0
    80003f40:	2c0080e7          	jalr	704(ra) # 800041fc <_Z11printStringPKc>
    finishedC = true;
    80003f44:	00100793          	li	a5,1
    80003f48:	00005717          	auipc	a4,0x5
    80003f4c:	e0f70123          	sb	a5,-510(a4) # 80008d4a <finishedC>
    thread_dispatch();
    80003f50:	ffffd097          	auipc	ra,0xffffd
    80003f54:	3d4080e7          	jalr	980(ra) # 80001324 <thread_dispatch>
}
    80003f58:	01813083          	ld	ra,24(sp)
    80003f5c:	01013403          	ld	s0,16(sp)
    80003f60:	00813483          	ld	s1,8(sp)
    80003f64:	00013903          	ld	s2,0(sp)
    80003f68:	02010113          	addi	sp,sp,32
    80003f6c:	00008067          	ret

0000000080003f70 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80003f70:	fe010113          	addi	sp,sp,-32
    80003f74:	00113c23          	sd	ra,24(sp)
    80003f78:	00813823          	sd	s0,16(sp)
    80003f7c:	00913423          	sd	s1,8(sp)
    80003f80:	01213023          	sd	s2,0(sp)
    80003f84:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003f88:	00a00493          	li	s1,10
    80003f8c:	0400006f          	j	80003fcc <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f90:	00003517          	auipc	a0,0x3
    80003f94:	32050513          	addi	a0,a0,800 # 800072b0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003f98:	00000097          	auipc	ra,0x0
    80003f9c:	264080e7          	jalr	612(ra) # 800041fc <_Z11printStringPKc>
    80003fa0:	00000613          	li	a2,0
    80003fa4:	00a00593          	li	a1,10
    80003fa8:	00048513          	mv	a0,s1
    80003fac:	00000097          	auipc	ra,0x0
    80003fb0:	3e8080e7          	jalr	1000(ra) # 80004394 <_Z8printIntiii>
    80003fb4:	00003517          	auipc	a0,0x3
    80003fb8:	25450513          	addi	a0,a0,596 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003fbc:	00000097          	auipc	ra,0x0
    80003fc0:	240080e7          	jalr	576(ra) # 800041fc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003fc4:	0014849b          	addiw	s1,s1,1
    80003fc8:	0ff4f493          	andi	s1,s1,255
    80003fcc:	00c00793          	li	a5,12
    80003fd0:	fc97f0e3          	bgeu	a5,s1,80003f90 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003fd4:	00003517          	auipc	a0,0x3
    80003fd8:	2e450513          	addi	a0,a0,740 # 800072b8 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	220080e7          	jalr	544(ra) # 800041fc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003fe4:	00500313          	li	t1,5
    thread_dispatch();
    80003fe8:	ffffd097          	auipc	ra,0xffffd
    80003fec:	33c080e7          	jalr	828(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80003ff0:	01000513          	li	a0,16
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	d88080e7          	jalr	-632(ra) # 80003d7c <_Z9fibonaccim>
    80003ffc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004000:	00003517          	auipc	a0,0x3
    80004004:	2c850513          	addi	a0,a0,712 # 800072c8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004008:	00000097          	auipc	ra,0x0
    8000400c:	1f4080e7          	jalr	500(ra) # 800041fc <_Z11printStringPKc>
    80004010:	00000613          	li	a2,0
    80004014:	00a00593          	li	a1,10
    80004018:	0009051b          	sext.w	a0,s2
    8000401c:	00000097          	auipc	ra,0x0
    80004020:	378080e7          	jalr	888(ra) # 80004394 <_Z8printIntiii>
    80004024:	00003517          	auipc	a0,0x3
    80004028:	1e450513          	addi	a0,a0,484 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	1d0080e7          	jalr	464(ra) # 800041fc <_Z11printStringPKc>
    80004034:	0400006f          	j	80004074 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004038:	00003517          	auipc	a0,0x3
    8000403c:	27850513          	addi	a0,a0,632 # 800072b0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004040:	00000097          	auipc	ra,0x0
    80004044:	1bc080e7          	jalr	444(ra) # 800041fc <_Z11printStringPKc>
    80004048:	00000613          	li	a2,0
    8000404c:	00a00593          	li	a1,10
    80004050:	00048513          	mv	a0,s1
    80004054:	00000097          	auipc	ra,0x0
    80004058:	340080e7          	jalr	832(ra) # 80004394 <_Z8printIntiii>
    8000405c:	00003517          	auipc	a0,0x3
    80004060:	1ac50513          	addi	a0,a0,428 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004064:	00000097          	auipc	ra,0x0
    80004068:	198080e7          	jalr	408(ra) # 800041fc <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000406c:	0014849b          	addiw	s1,s1,1
    80004070:	0ff4f493          	andi	s1,s1,255
    80004074:	00f00793          	li	a5,15
    80004078:	fc97f0e3          	bgeu	a5,s1,80004038 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000407c:	00003517          	auipc	a0,0x3
    80004080:	25c50513          	addi	a0,a0,604 # 800072d8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004084:	00000097          	auipc	ra,0x0
    80004088:	178080e7          	jalr	376(ra) # 800041fc <_Z11printStringPKc>
    finishedD = true;
    8000408c:	00100793          	li	a5,1
    80004090:	00005717          	auipc	a4,0x5
    80004094:	caf70da3          	sb	a5,-837(a4) # 80008d4b <finishedD>
    thread_dispatch();
    80004098:	ffffd097          	auipc	ra,0xffffd
    8000409c:	28c080e7          	jalr	652(ra) # 80001324 <thread_dispatch>
}
    800040a0:	01813083          	ld	ra,24(sp)
    800040a4:	01013403          	ld	s0,16(sp)
    800040a8:	00813483          	ld	s1,8(sp)
    800040ac:	00013903          	ld	s2,0(sp)
    800040b0:	02010113          	addi	sp,sp,32
    800040b4:	00008067          	ret

00000000800040b8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800040b8:	fc010113          	addi	sp,sp,-64
    800040bc:	02113c23          	sd	ra,56(sp)
    800040c0:	02813823          	sd	s0,48(sp)
    800040c4:	02913423          	sd	s1,40(sp)
    800040c8:	03213023          	sd	s2,32(sp)
    800040cc:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800040d0:	00000613          	li	a2,0
    800040d4:	00000597          	auipc	a1,0x0
    800040d8:	b0858593          	addi	a1,a1,-1272 # 80003bdc <_Z11workerBodyAPv>
    800040dc:	fc040513          	addi	a0,s0,-64
    800040e0:	ffffd097          	auipc	ra,0xffffd
    800040e4:	1c4080e7          	jalr	452(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    800040e8:	00003517          	auipc	a0,0x3
    800040ec:	20050513          	addi	a0,a0,512 # 800072e8 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    800040f0:	00000097          	auipc	ra,0x0
    800040f4:	10c080e7          	jalr	268(ra) # 800041fc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800040f8:	00000613          	li	a2,0
    800040fc:	00000597          	auipc	a1,0x0
    80004100:	bac58593          	addi	a1,a1,-1108 # 80003ca8 <_Z11workerBodyBPv>
    80004104:	fc840513          	addi	a0,s0,-56
    80004108:	ffffd097          	auipc	ra,0xffffd
    8000410c:	19c080e7          	jalr	412(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80004110:	00003517          	auipc	a0,0x3
    80004114:	1f050513          	addi	a0,a0,496 # 80007300 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	0e4080e7          	jalr	228(ra) # 800041fc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004120:	00000613          	li	a2,0
    80004124:	00000597          	auipc	a1,0x0
    80004128:	ccc58593          	addi	a1,a1,-820 # 80003df0 <_Z11workerBodyCPv>
    8000412c:	fd040513          	addi	a0,s0,-48
    80004130:	ffffd097          	auipc	ra,0xffffd
    80004134:	174080e7          	jalr	372(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80004138:	00003517          	auipc	a0,0x3
    8000413c:	1e050513          	addi	a0,a0,480 # 80007318 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80004140:	00000097          	auipc	ra,0x0
    80004144:	0bc080e7          	jalr	188(ra) # 800041fc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004148:	00000613          	li	a2,0
    8000414c:	00000597          	auipc	a1,0x0
    80004150:	e2458593          	addi	a1,a1,-476 # 80003f70 <_Z11workerBodyDPv>
    80004154:	fd840513          	addi	a0,s0,-40
    80004158:	ffffd097          	auipc	ra,0xffffd
    8000415c:	14c080e7          	jalr	332(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80004160:	00003517          	auipc	a0,0x3
    80004164:	1d050513          	addi	a0,a0,464 # 80007330 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80004168:	00000097          	auipc	ra,0x0
    8000416c:	094080e7          	jalr	148(ra) # 800041fc <_Z11printStringPKc>
    80004170:	00c0006f          	j	8000417c <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80004174:	ffffd097          	auipc	ra,0xffffd
    80004178:	1b0080e7          	jalr	432(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000417c:	00005797          	auipc	a5,0x5
    80004180:	bcc7c783          	lbu	a5,-1076(a5) # 80008d48 <finishedA>
    80004184:	fe0788e3          	beqz	a5,80004174 <_Z18Threads_C_API_testv+0xbc>
    80004188:	00005797          	auipc	a5,0x5
    8000418c:	bc17c783          	lbu	a5,-1087(a5) # 80008d49 <finishedB>
    80004190:	fe0782e3          	beqz	a5,80004174 <_Z18Threads_C_API_testv+0xbc>
    80004194:	00005797          	auipc	a5,0x5
    80004198:	bb67c783          	lbu	a5,-1098(a5) # 80008d4a <finishedC>
    8000419c:	fc078ce3          	beqz	a5,80004174 <_Z18Threads_C_API_testv+0xbc>
    800041a0:	00005797          	auipc	a5,0x5
    800041a4:	bab7c783          	lbu	a5,-1109(a5) # 80008d4b <finishedD>
    800041a8:	fc0786e3          	beqz	a5,80004174 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    800041ac:	fc040493          	addi	s1,s0,-64
    800041b0:	0080006f          	j	800041b8 <_Z18Threads_C_API_testv+0x100>
    800041b4:	00848493          	addi	s1,s1,8
    800041b8:	fe040793          	addi	a5,s0,-32
    800041bc:	02f48463          	beq	s1,a5,800041e4 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    800041c0:	0004b903          	ld	s2,0(s1)
    800041c4:	fe0908e3          	beqz	s2,800041b4 <_Z18Threads_C_API_testv+0xfc>
    800041c8:	00090513          	mv	a0,s2
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	368080e7          	jalr	872(ra) # 80002534 <_ZN3PCBD1Ev>
    800041d4:	00090513          	mv	a0,s2
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	334080e7          	jalr	820(ra) # 8000250c <_ZN3PCBdlEPv>
    800041e0:	fd5ff06f          	j	800041b4 <_Z18Threads_C_API_testv+0xfc>
    }
}
    800041e4:	03813083          	ld	ra,56(sp)
    800041e8:	03013403          	ld	s0,48(sp)
    800041ec:	02813483          	ld	s1,40(sp)
    800041f0:	02013903          	ld	s2,32(sp)
    800041f4:	04010113          	addi	sp,sp,64
    800041f8:	00008067          	ret

00000000800041fc <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00113c23          	sd	ra,24(sp)
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	02010413          	addi	s0,sp,32
    80004210:	00050493          	mv	s1,a0
    LOCK();
    80004214:	00100613          	li	a2,1
    80004218:	00000593          	li	a1,0
    8000421c:	00005517          	auipc	a0,0x5
    80004220:	b3450513          	addi	a0,a0,-1228 # 80008d50 <lockPrint>
    80004224:	ffffd097          	auipc	ra,0xffffd
    80004228:	fe4080e7          	jalr	-28(ra) # 80001208 <copy_and_swap>
    8000422c:	fe0514e3          	bnez	a0,80004214 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80004230:	0004c503          	lbu	a0,0(s1)
    80004234:	00050a63          	beqz	a0,80004248 <_Z11printStringPKc+0x4c>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    80004238:	00003097          	auipc	ra,0x3
    8000423c:	9f4080e7          	jalr	-1548(ra) # 80006c2c <__putc>
        putc(*string);
        string++;
    80004240:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80004244:	fedff06f          	j	80004230 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004248:	00000613          	li	a2,0
    8000424c:	00100593          	li	a1,1
    80004250:	00005517          	auipc	a0,0x5
    80004254:	b0050513          	addi	a0,a0,-1280 # 80008d50 <lockPrint>
    80004258:	ffffd097          	auipc	ra,0xffffd
    8000425c:	fb0080e7          	jalr	-80(ra) # 80001208 <copy_and_swap>
    80004260:	fe0514e3          	bnez	a0,80004248 <_Z11printStringPKc+0x4c>
}
    80004264:	01813083          	ld	ra,24(sp)
    80004268:	01013403          	ld	s0,16(sp)
    8000426c:	00813483          	ld	s1,8(sp)
    80004270:	02010113          	addi	sp,sp,32
    80004274:	00008067          	ret

0000000080004278 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80004278:	fd010113          	addi	sp,sp,-48
    8000427c:	02113423          	sd	ra,40(sp)
    80004280:	02813023          	sd	s0,32(sp)
    80004284:	00913c23          	sd	s1,24(sp)
    80004288:	01213823          	sd	s2,16(sp)
    8000428c:	01313423          	sd	s3,8(sp)
    80004290:	01413023          	sd	s4,0(sp)
    80004294:	03010413          	addi	s0,sp,48
    80004298:	00050993          	mv	s3,a0
    8000429c:	00058a13          	mv	s4,a1
    LOCK();
    800042a0:	00100613          	li	a2,1
    800042a4:	00000593          	li	a1,0
    800042a8:	00005517          	auipc	a0,0x5
    800042ac:	aa850513          	addi	a0,a0,-1368 # 80008d50 <lockPrint>
    800042b0:	ffffd097          	auipc	ra,0xffffd
    800042b4:	f58080e7          	jalr	-168(ra) # 80001208 <copy_and_swap>
    800042b8:	fe0514e3          	bnez	a0,800042a0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    800042bc:	00000913          	li	s2,0
    800042c0:	00090493          	mv	s1,s2
    800042c4:	0019091b          	addiw	s2,s2,1
    800042c8:	03495a63          	bge	s2,s4,800042fc <_Z9getStringPci+0x84>
    return __getc();
    800042cc:	00003097          	auipc	ra,0x3
    800042d0:	99c080e7          	jalr	-1636(ra) # 80006c68 <__getc>
        cc = getc();
        if (cc < 1)
    800042d4:	02050463          	beqz	a0,800042fc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800042d8:	009984b3          	add	s1,s3,s1
    800042dc:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    800042e0:	00a00793          	li	a5,10
    800042e4:	00f50a63          	beq	a0,a5,800042f8 <_Z9getStringPci+0x80>
    800042e8:	00d00793          	li	a5,13
    800042ec:	fcf51ae3          	bne	a0,a5,800042c0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800042f0:	00090493          	mv	s1,s2
    800042f4:	0080006f          	j	800042fc <_Z9getStringPci+0x84>
    800042f8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800042fc:	009984b3          	add	s1,s3,s1
    80004300:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004304:	00000613          	li	a2,0
    80004308:	00100593          	li	a1,1
    8000430c:	00005517          	auipc	a0,0x5
    80004310:	a4450513          	addi	a0,a0,-1468 # 80008d50 <lockPrint>
    80004314:	ffffd097          	auipc	ra,0xffffd
    80004318:	ef4080e7          	jalr	-268(ra) # 80001208 <copy_and_swap>
    8000431c:	fe0514e3          	bnez	a0,80004304 <_Z9getStringPci+0x8c>
    return buf;
}
    80004320:	00098513          	mv	a0,s3
    80004324:	02813083          	ld	ra,40(sp)
    80004328:	02013403          	ld	s0,32(sp)
    8000432c:	01813483          	ld	s1,24(sp)
    80004330:	01013903          	ld	s2,16(sp)
    80004334:	00813983          	ld	s3,8(sp)
    80004338:	00013a03          	ld	s4,0(sp)
    8000433c:	03010113          	addi	sp,sp,48
    80004340:	00008067          	ret

0000000080004344 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004344:	ff010113          	addi	sp,sp,-16
    80004348:	00813423          	sd	s0,8(sp)
    8000434c:	01010413          	addi	s0,sp,16
    80004350:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004354:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004358:	0006c603          	lbu	a2,0(a3)
    8000435c:	fd06071b          	addiw	a4,a2,-48
    80004360:	0ff77713          	andi	a4,a4,255
    80004364:	00900793          	li	a5,9
    80004368:	02e7e063          	bltu	a5,a4,80004388 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000436c:	0025179b          	slliw	a5,a0,0x2
    80004370:	00a787bb          	addw	a5,a5,a0
    80004374:	0017979b          	slliw	a5,a5,0x1
    80004378:	00168693          	addi	a3,a3,1
    8000437c:	00c787bb          	addw	a5,a5,a2
    80004380:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004384:	fd5ff06f          	j	80004358 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004388:	00813403          	ld	s0,8(sp)
    8000438c:	01010113          	addi	sp,sp,16
    80004390:	00008067          	ret

0000000080004394 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80004394:	fc010113          	addi	sp,sp,-64
    80004398:	02113c23          	sd	ra,56(sp)
    8000439c:	02813823          	sd	s0,48(sp)
    800043a0:	02913423          	sd	s1,40(sp)
    800043a4:	03213023          	sd	s2,32(sp)
    800043a8:	01313c23          	sd	s3,24(sp)
    800043ac:	04010413          	addi	s0,sp,64
    800043b0:	00050493          	mv	s1,a0
    800043b4:	00058913          	mv	s2,a1
    800043b8:	00060993          	mv	s3,a2
    LOCK();
    800043bc:	00100613          	li	a2,1
    800043c0:	00000593          	li	a1,0
    800043c4:	00005517          	auipc	a0,0x5
    800043c8:	98c50513          	addi	a0,a0,-1652 # 80008d50 <lockPrint>
    800043cc:	ffffd097          	auipc	ra,0xffffd
    800043d0:	e3c080e7          	jalr	-452(ra) # 80001208 <copy_and_swap>
    800043d4:	fe0514e3          	bnez	a0,800043bc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    800043d8:	00098463          	beqz	s3,800043e0 <_Z8printIntiii+0x4c>
    800043dc:	0804c463          	bltz	s1,80004464 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800043e0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800043e4:	00000593          	li	a1,0
    }

    i = 0;
    800043e8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800043ec:	0009079b          	sext.w	a5,s2
    800043f0:	0325773b          	remuw	a4,a0,s2
    800043f4:	00048613          	mv	a2,s1
    800043f8:	0014849b          	addiw	s1,s1,1
    800043fc:	02071693          	slli	a3,a4,0x20
    80004400:	0206d693          	srli	a3,a3,0x20
    80004404:	00003717          	auipc	a4,0x3
    80004408:	f4470713          	addi	a4,a4,-188 # 80007348 <_ZL6digits>
    8000440c:	00d70733          	add	a4,a4,a3
    80004410:	00074683          	lbu	a3,0(a4)
    80004414:	fd040713          	addi	a4,s0,-48
    80004418:	00c70733          	add	a4,a4,a2
    8000441c:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80004420:	0005071b          	sext.w	a4,a0
    80004424:	0325553b          	divuw	a0,a0,s2
    80004428:	fcf772e3          	bgeu	a4,a5,800043ec <_Z8printIntiii+0x58>
    if (neg)
    8000442c:	00058c63          	beqz	a1,80004444 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004430:	fd040793          	addi	a5,s0,-48
    80004434:	009784b3          	add	s1,a5,s1
    80004438:	02d00793          	li	a5,45
    8000443c:	fef48823          	sb	a5,-16(s1)
    80004440:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80004444:	fff4849b          	addiw	s1,s1,-1
    80004448:	0204c463          	bltz	s1,80004470 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000444c:	fd040793          	addi	a5,s0,-48
    80004450:	009787b3          	add	a5,a5,s1
    __putc(c);
    80004454:	ff07c503          	lbu	a0,-16(a5)
    80004458:	00002097          	auipc	ra,0x2
    8000445c:	7d4080e7          	jalr	2004(ra) # 80006c2c <__putc>
}
    80004460:	fe5ff06f          	j	80004444 <_Z8printIntiii+0xb0>
        x = -xx;
    80004464:	4090053b          	negw	a0,s1
        neg = 1;
    80004468:	00100593          	li	a1,1
        x = -xx;
    8000446c:	f7dff06f          	j	800043e8 <_Z8printIntiii+0x54>

    UNLOCK();
    80004470:	00000613          	li	a2,0
    80004474:	00100593          	li	a1,1
    80004478:	00005517          	auipc	a0,0x5
    8000447c:	8d850513          	addi	a0,a0,-1832 # 80008d50 <lockPrint>
    80004480:	ffffd097          	auipc	ra,0xffffd
    80004484:	d88080e7          	jalr	-632(ra) # 80001208 <copy_and_swap>
    80004488:	fe0514e3          	bnez	a0,80004470 <_Z8printIntiii+0xdc>
}
    8000448c:	03813083          	ld	ra,56(sp)
    80004490:	03013403          	ld	s0,48(sp)
    80004494:	02813483          	ld	s1,40(sp)
    80004498:	02013903          	ld	s2,32(sp)
    8000449c:	01813983          	ld	s3,24(sp)
    800044a0:	04010113          	addi	sp,sp,64
    800044a4:	00008067          	ret

00000000800044a8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    800044a8:	fe010113          	addi	sp,sp,-32
    800044ac:	00113c23          	sd	ra,24(sp)
    800044b0:	00813823          	sd	s0,16(sp)
    800044b4:	00913423          	sd	s1,8(sp)
    800044b8:	01213023          	sd	s2,0(sp)
    800044bc:	02010413          	addi	s0,sp,32
    800044c0:	00050493          	mv	s1,a0
    800044c4:	00b52023          	sw	a1,0(a0)
    800044c8:	00052823          	sw	zero,16(a0)
    800044cc:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800044d0:	00259513          	slli	a0,a1,0x2
    800044d4:	ffffd097          	auipc	ra,0xffffd
    800044d8:	d74080e7          	jalr	-652(ra) # 80001248 <mem_alloc>
    800044dc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800044e0:	00800513          	li	a0,8
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	4b8080e7          	jalr	1208(ra) # 8000299c <_Znwm>
    800044ec:	00050913          	mv	s2,a0
    800044f0:	00000593          	li	a1,0
    800044f4:	ffffe097          	auipc	ra,0xffffe
    800044f8:	624080e7          	jalr	1572(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    800044fc:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80004500:	00800513          	li	a0,8
    80004504:	ffffe097          	auipc	ra,0xffffe
    80004508:	498080e7          	jalr	1176(ra) # 8000299c <_Znwm>
    8000450c:	00050913          	mv	s2,a0
    80004510:	0004a583          	lw	a1,0(s1)
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	604080e7          	jalr	1540(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    8000451c:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80004520:	00800513          	li	a0,8
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	478080e7          	jalr	1144(ra) # 8000299c <_Znwm>
    8000452c:	00050913          	mv	s2,a0
    80004530:	00100593          	li	a1,1
    80004534:	ffffe097          	auipc	ra,0xffffe
    80004538:	5e4080e7          	jalr	1508(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    8000453c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004540:	00800513          	li	a0,8
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	458080e7          	jalr	1112(ra) # 8000299c <_Znwm>
    8000454c:	00050913          	mv	s2,a0
    80004550:	00100593          	li	a1,1
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	5c4080e7          	jalr	1476(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    8000455c:	0324b823          	sd	s2,48(s1)
}
    80004560:	01813083          	ld	ra,24(sp)
    80004564:	01013403          	ld	s0,16(sp)
    80004568:	00813483          	ld	s1,8(sp)
    8000456c:	00013903          	ld	s2,0(sp)
    80004570:	02010113          	addi	sp,sp,32
    80004574:	00008067          	ret
    80004578:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000457c:	00090513          	mv	a0,s2
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	444080e7          	jalr	1092(ra) # 800029c4 <_ZdlPv>
    80004588:	00048513          	mv	a0,s1
    8000458c:	00006097          	auipc	ra,0x6
    80004590:	89c080e7          	jalr	-1892(ra) # 80009e28 <_Unwind_Resume>
    80004594:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80004598:	00090513          	mv	a0,s2
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	428080e7          	jalr	1064(ra) # 800029c4 <_ZdlPv>
    800045a4:	00048513          	mv	a0,s1
    800045a8:	00006097          	auipc	ra,0x6
    800045ac:	880080e7          	jalr	-1920(ra) # 80009e28 <_Unwind_Resume>
    800045b0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800045b4:	00090513          	mv	a0,s2
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	40c080e7          	jalr	1036(ra) # 800029c4 <_ZdlPv>
    800045c0:	00048513          	mv	a0,s1
    800045c4:	00006097          	auipc	ra,0x6
    800045c8:	864080e7          	jalr	-1948(ra) # 80009e28 <_Unwind_Resume>
    800045cc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800045d0:	00090513          	mv	a0,s2
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	3f0080e7          	jalr	1008(ra) # 800029c4 <_ZdlPv>
    800045dc:	00048513          	mv	a0,s1
    800045e0:	00006097          	auipc	ra,0x6
    800045e4:	848080e7          	jalr	-1976(ra) # 80009e28 <_Unwind_Resume>

00000000800045e8 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	00813823          	sd	s0,16(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	02010413          	addi	s0,sp,32
    800045fc:	00050493          	mv	s1,a0
    __putc(c);
    80004600:	00a00513          	li	a0,10
    80004604:	00002097          	auipc	ra,0x2
    80004608:	628080e7          	jalr	1576(ra) # 80006c2c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    8000460c:	0104a783          	lw	a5,16(s1)
    80004610:	0144a703          	lw	a4,20(s1)
    80004614:	00e78c63          	beq	a5,a4,8000462c <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80004618:	0017879b          	addiw	a5,a5,1
    8000461c:	0004a703          	lw	a4,0(s1)
    80004620:	02e7e7bb          	remw	a5,a5,a4
    80004624:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80004628:	fe5ff06f          	j	8000460c <_ZN9BufferCPPD1Ev+0x24>
    8000462c:	02100513          	li	a0,33
    80004630:	00002097          	auipc	ra,0x2
    80004634:	5fc080e7          	jalr	1532(ra) # 80006c2c <__putc>
    80004638:	00a00513          	li	a0,10
    8000463c:	00002097          	auipc	ra,0x2
    80004640:	5f0080e7          	jalr	1520(ra) # 80006c2c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80004644:	0084b503          	ld	a0,8(s1)
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	c30080e7          	jalr	-976(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80004650:	0204b503          	ld	a0,32(s1)
    80004654:	00050663          	beqz	a0,80004660 <_ZN9BufferCPPD1Ev+0x78>
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	36c080e7          	jalr	876(ra) # 800029c4 <_ZdlPv>
    delete spaceAvailable;
    80004660:	0184b503          	ld	a0,24(s1)
    80004664:	00050663          	beqz	a0,80004670 <_ZN9BufferCPPD1Ev+0x88>
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	35c080e7          	jalr	860(ra) # 800029c4 <_ZdlPv>
    delete mutexTail;
    80004670:	0304b503          	ld	a0,48(s1)
    80004674:	00050663          	beqz	a0,80004680 <_ZN9BufferCPPD1Ev+0x98>
    80004678:	ffffe097          	auipc	ra,0xffffe
    8000467c:	34c080e7          	jalr	844(ra) # 800029c4 <_ZdlPv>
    delete mutexHead;
    80004680:	0284b503          	ld	a0,40(s1)
    80004684:	00050663          	beqz	a0,80004690 <_ZN9BufferCPPD1Ev+0xa8>
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	33c080e7          	jalr	828(ra) # 800029c4 <_ZdlPv>

}
    80004690:	01813083          	ld	ra,24(sp)
    80004694:	01013403          	ld	s0,16(sp)
    80004698:	00813483          	ld	s1,8(sp)
    8000469c:	02010113          	addi	sp,sp,32
    800046a0:	00008067          	ret

00000000800046a4 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    800046a4:	fe010113          	addi	sp,sp,-32
    800046a8:	00113c23          	sd	ra,24(sp)
    800046ac:	00813823          	sd	s0,16(sp)
    800046b0:	00913423          	sd	s1,8(sp)
    800046b4:	01213023          	sd	s2,0(sp)
    800046b8:	02010413          	addi	s0,sp,32
    800046bc:	00050493          	mv	s1,a0
    800046c0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800046c4:	01853503          	ld	a0,24(a0)
    800046c8:	ffffe097          	auipc	ra,0xffffe
    800046cc:	424080e7          	jalr	1060(ra) # 80002aec <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800046d0:	0304b503          	ld	a0,48(s1)
    800046d4:	ffffe097          	auipc	ra,0xffffe
    800046d8:	418080e7          	jalr	1048(ra) # 80002aec <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800046dc:	0084b783          	ld	a5,8(s1)
    800046e0:	0144a703          	lw	a4,20(s1)
    800046e4:	00271713          	slli	a4,a4,0x2
    800046e8:	00e787b3          	add	a5,a5,a4
    800046ec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800046f0:	0144a783          	lw	a5,20(s1)
    800046f4:	0017879b          	addiw	a5,a5,1
    800046f8:	0004a703          	lw	a4,0(s1)
    800046fc:	02e7e7bb          	remw	a5,a5,a4
    80004700:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004704:	0304b503          	ld	a0,48(s1)
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	438080e7          	jalr	1080(ra) # 80002b40 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004710:	0204b503          	ld	a0,32(s1)
    80004714:	ffffe097          	auipc	ra,0xffffe
    80004718:	42c080e7          	jalr	1068(ra) # 80002b40 <_ZN9Semaphore6signalEv>

}
    8000471c:	01813083          	ld	ra,24(sp)
    80004720:	01013403          	ld	s0,16(sp)
    80004724:	00813483          	ld	s1,8(sp)
    80004728:	00013903          	ld	s2,0(sp)
    8000472c:	02010113          	addi	sp,sp,32
    80004730:	00008067          	ret

0000000080004734 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004734:	fe010113          	addi	sp,sp,-32
    80004738:	00113c23          	sd	ra,24(sp)
    8000473c:	00813823          	sd	s0,16(sp)
    80004740:	00913423          	sd	s1,8(sp)
    80004744:	01213023          	sd	s2,0(sp)
    80004748:	02010413          	addi	s0,sp,32
    8000474c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004750:	02053503          	ld	a0,32(a0)
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	398080e7          	jalr	920(ra) # 80002aec <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000475c:	0284b503          	ld	a0,40(s1)
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	38c080e7          	jalr	908(ra) # 80002aec <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004768:	0084b703          	ld	a4,8(s1)
    8000476c:	0104a783          	lw	a5,16(s1)
    80004770:	00279693          	slli	a3,a5,0x2
    80004774:	00d70733          	add	a4,a4,a3
    80004778:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000477c:	0017879b          	addiw	a5,a5,1
    80004780:	0004a703          	lw	a4,0(s1)
    80004784:	02e7e7bb          	remw	a5,a5,a4
    80004788:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000478c:	0284b503          	ld	a0,40(s1)
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	3b0080e7          	jalr	944(ra) # 80002b40 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004798:	0184b503          	ld	a0,24(s1)
    8000479c:	ffffe097          	auipc	ra,0xffffe
    800047a0:	3a4080e7          	jalr	932(ra) # 80002b40 <_ZN9Semaphore6signalEv>

    return ret;
}
    800047a4:	00090513          	mv	a0,s2
    800047a8:	01813083          	ld	ra,24(sp)
    800047ac:	01013403          	ld	s0,16(sp)
    800047b0:	00813483          	ld	s1,8(sp)
    800047b4:	00013903          	ld	s2,0(sp)
    800047b8:	02010113          	addi	sp,sp,32
    800047bc:	00008067          	ret

00000000800047c0 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800047c0:	ff010113          	addi	sp,sp,-16
    800047c4:	00113423          	sd	ra,8(sp)
    800047c8:	00813023          	sd	s0,0(sp)
    800047cc:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    800047d0:	00000097          	auipc	ra,0x0
    800047d4:	0bc080e7          	jalr	188(ra) # 8000488c <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800047d8:	00813083          	ld	ra,8(sp)
    800047dc:	00013403          	ld	s0,0(sp)
    800047e0:	01010113          	addi	sp,sp,16
    800047e4:	00008067          	ret

00000000800047e8 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800047e8:	fe010113          	addi	sp,sp,-32
    800047ec:	00113c23          	sd	ra,24(sp)
    800047f0:	00813823          	sd	s0,16(sp)
    800047f4:	00913423          	sd	s1,8(sp)
    800047f8:	01213023          	sd	s2,0(sp)
    800047fc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80004800:	00053903          	ld	s2,0(a0)
    int i = 6;
    80004804:	00600493          	li	s1,6
    while (--i > 0) {
    80004808:	fff4849b          	addiw	s1,s1,-1
    8000480c:	04905463          	blez	s1,80004854 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80004810:	00003517          	auipc	a0,0x3
    80004814:	b5050513          	addi	a0,a0,-1200 # 80007360 <_ZL6digits+0x18>
    80004818:	00000097          	auipc	ra,0x0
    8000481c:	9e4080e7          	jalr	-1564(ra) # 800041fc <_Z11printStringPKc>
        printInt(sleep_time);
    80004820:	00000613          	li	a2,0
    80004824:	00a00593          	li	a1,10
    80004828:	0009051b          	sext.w	a0,s2
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	b68080e7          	jalr	-1176(ra) # 80004394 <_Z8printIntiii>
        printString(" !\n");
    80004834:	00003517          	auipc	a0,0x3
    80004838:	b3450513          	addi	a0,a0,-1228 # 80007368 <_ZL6digits+0x20>
    8000483c:	00000097          	auipc	ra,0x0
    80004840:	9c0080e7          	jalr	-1600(ra) # 800041fc <_Z11printStringPKc>
        time_sleep(sleep_time);
    80004844:	00090513          	mv	a0,s2
    80004848:	ffffd097          	auipc	ra,0xffffd
    8000484c:	be0080e7          	jalr	-1056(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80004850:	fb9ff06f          	j	80004808 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80004854:	00a00793          	li	a5,10
    80004858:	02f95933          	divu	s2,s2,a5
    8000485c:	fff90913          	addi	s2,s2,-1
    80004860:	00004797          	auipc	a5,0x4
    80004864:	4f878793          	addi	a5,a5,1272 # 80008d58 <finished>
    80004868:	01278933          	add	s2,a5,s2
    8000486c:	00100793          	li	a5,1
    80004870:	00f90023          	sb	a5,0(s2)
}
    80004874:	01813083          	ld	ra,24(sp)
    80004878:	01013403          	ld	s0,16(sp)
    8000487c:	00813483          	ld	s1,8(sp)
    80004880:	00013903          	ld	s2,0(sp)
    80004884:	02010113          	addi	sp,sp,32
    80004888:	00008067          	ret

000000008000488c <_Z12testSleepingv>:

void testSleeping() {
    8000488c:	fc010113          	addi	sp,sp,-64
    80004890:	02113c23          	sd	ra,56(sp)
    80004894:	02813823          	sd	s0,48(sp)
    80004898:	02913423          	sd	s1,40(sp)
    8000489c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800048a0:	00a00793          	li	a5,10
    800048a4:	fcf43823          	sd	a5,-48(s0)
    800048a8:	01400793          	li	a5,20
    800048ac:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800048b0:	00000493          	li	s1,0
    800048b4:	02c0006f          	j	800048e0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800048b8:	00349793          	slli	a5,s1,0x3
    800048bc:	fd040613          	addi	a2,s0,-48
    800048c0:	00f60633          	add	a2,a2,a5
    800048c4:	00000597          	auipc	a1,0x0
    800048c8:	f2458593          	addi	a1,a1,-220 # 800047e8 <_Z9sleepyRunPv>
    800048cc:	fc040513          	addi	a0,s0,-64
    800048d0:	00f50533          	add	a0,a0,a5
    800048d4:	ffffd097          	auipc	ra,0xffffd
    800048d8:	9d0080e7          	jalr	-1584(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800048dc:	0014849b          	addiw	s1,s1,1
    800048e0:	00100793          	li	a5,1
    800048e4:	fc97dae3          	bge	a5,s1,800048b8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800048e8:	00004797          	auipc	a5,0x4
    800048ec:	4707c783          	lbu	a5,1136(a5) # 80008d58 <finished>
    800048f0:	fe078ce3          	beqz	a5,800048e8 <_Z12testSleepingv+0x5c>
    800048f4:	00004797          	auipc	a5,0x4
    800048f8:	4657c783          	lbu	a5,1125(a5) # 80008d59 <finished+0x1>
    800048fc:	fe0786e3          	beqz	a5,800048e8 <_Z12testSleepingv+0x5c>
}
    80004900:	03813083          	ld	ra,56(sp)
    80004904:	03013403          	ld	s0,48(sp)
    80004908:	02813483          	ld	s1,40(sp)
    8000490c:	04010113          	addi	sp,sp,64
    80004910:	00008067          	ret

0000000080004914 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80004914:	fe010113          	addi	sp,sp,-32
    80004918:	00113c23          	sd	ra,24(sp)
    8000491c:	00813823          	sd	s0,16(sp)
    80004920:	00913423          	sd	s1,8(sp)
    80004924:	02010413          	addi	s0,sp,32
    80004928:	00050493          	mv	s1,a0
    8000492c:	00b52023          	sw	a1,0(a0)
    80004930:	00052823          	sw	zero,16(a0)
    80004934:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004938:	00259513          	slli	a0,a1,0x2
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	90c080e7          	jalr	-1780(ra) # 80001248 <mem_alloc>
    80004944:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004948:	00000593          	li	a1,0
    8000494c:	02048513          	addi	a0,s1,32
    80004950:	ffffd097          	auipc	ra,0xffffd
    80004954:	a1c080e7          	jalr	-1508(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80004958:	0004a583          	lw	a1,0(s1)
    8000495c:	01848513          	addi	a0,s1,24
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	a0c080e7          	jalr	-1524(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80004968:	00100593          	li	a1,1
    8000496c:	02848513          	addi	a0,s1,40
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	9fc080e7          	jalr	-1540(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80004978:	00100593          	li	a1,1
    8000497c:	03048513          	addi	a0,s1,48
    80004980:	ffffd097          	auipc	ra,0xffffd
    80004984:	9ec080e7          	jalr	-1556(ra) # 8000136c <sem_open>
}
    80004988:	01813083          	ld	ra,24(sp)
    8000498c:	01013403          	ld	s0,16(sp)
    80004990:	00813483          	ld	s1,8(sp)
    80004994:	02010113          	addi	sp,sp,32
    80004998:	00008067          	ret

000000008000499c <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    8000499c:	fe010113          	addi	sp,sp,-32
    800049a0:	00113c23          	sd	ra,24(sp)
    800049a4:	00813823          	sd	s0,16(sp)
    800049a8:	00913423          	sd	s1,8(sp)
    800049ac:	02010413          	addi	s0,sp,32
    800049b0:	00050493          	mv	s1,a0
    800049b4:	00a00513          	li	a0,10
    800049b8:	00002097          	auipc	ra,0x2
    800049bc:	274080e7          	jalr	628(ra) # 80006c2c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800049c0:	0104a783          	lw	a5,16(s1)
    800049c4:	0144a703          	lw	a4,20(s1)
    800049c8:	00e78c63          	beq	a5,a4,800049e0 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800049cc:	0017879b          	addiw	a5,a5,1
    800049d0:	0004a703          	lw	a4,0(s1)
    800049d4:	02e7e7bb          	remw	a5,a5,a4
    800049d8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800049dc:	fe5ff06f          	j	800049c0 <_ZN6BufferD1Ev+0x24>
    800049e0:	02100513          	li	a0,33
    800049e4:	00002097          	auipc	ra,0x2
    800049e8:	248080e7          	jalr	584(ra) # 80006c2c <__putc>
    800049ec:	00a00513          	li	a0,10
    800049f0:	00002097          	auipc	ra,0x2
    800049f4:	23c080e7          	jalr	572(ra) # 80006c2c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    800049f8:	0084b503          	ld	a0,8(s1)
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	87c080e7          	jalr	-1924(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80004a04:	0204b503          	ld	a0,32(s1)
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	99c080e7          	jalr	-1636(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80004a10:	0184b503          	ld	a0,24(s1)
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	990080e7          	jalr	-1648(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80004a1c:	0304b503          	ld	a0,48(s1)
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	984080e7          	jalr	-1660(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80004a28:	0284b503          	ld	a0,40(s1)
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	978080e7          	jalr	-1672(ra) # 800013a4 <sem_close>
}
    80004a34:	01813083          	ld	ra,24(sp)
    80004a38:	01013403          	ld	s0,16(sp)
    80004a3c:	00813483          	ld	s1,8(sp)
    80004a40:	02010113          	addi	sp,sp,32
    80004a44:	00008067          	ret

0000000080004a48 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80004a48:	fe010113          	addi	sp,sp,-32
    80004a4c:	00113c23          	sd	ra,24(sp)
    80004a50:	00813823          	sd	s0,16(sp)
    80004a54:	00913423          	sd	s1,8(sp)
    80004a58:	01213023          	sd	s2,0(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    80004a60:	00050493          	mv	s1,a0
    80004a64:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004a68:	01853503          	ld	a0,24(a0)
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	964080e7          	jalr	-1692(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80004a74:	0304b503          	ld	a0,48(s1)
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	958080e7          	jalr	-1704(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80004a80:	0084b783          	ld	a5,8(s1)
    80004a84:	0144a703          	lw	a4,20(s1)
    80004a88:	00271713          	slli	a4,a4,0x2
    80004a8c:	00e787b3          	add	a5,a5,a4
    80004a90:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004a94:	0144a783          	lw	a5,20(s1)
    80004a98:	0017879b          	addiw	a5,a5,1
    80004a9c:	0004a703          	lw	a4,0(s1)
    80004aa0:	02e7e7bb          	remw	a5,a5,a4
    80004aa4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004aa8:	0304b503          	ld	a0,48(s1)
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	950080e7          	jalr	-1712(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80004ab4:	0204b503          	ld	a0,32(s1)
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	944080e7          	jalr	-1724(ra) # 800013fc <sem_signal>

}
    80004ac0:	01813083          	ld	ra,24(sp)
    80004ac4:	01013403          	ld	s0,16(sp)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	00013903          	ld	s2,0(sp)
    80004ad0:	02010113          	addi	sp,sp,32
    80004ad4:	00008067          	ret

0000000080004ad8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004ad8:	fe010113          	addi	sp,sp,-32
    80004adc:	00113c23          	sd	ra,24(sp)
    80004ae0:	00813823          	sd	s0,16(sp)
    80004ae4:	00913423          	sd	s1,8(sp)
    80004ae8:	01213023          	sd	s2,0(sp)
    80004aec:	02010413          	addi	s0,sp,32
    80004af0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004af4:	02053503          	ld	a0,32(a0)
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	8d8080e7          	jalr	-1832(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80004b00:	0284b503          	ld	a0,40(s1)
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	8cc080e7          	jalr	-1844(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80004b0c:	0084b703          	ld	a4,8(s1)
    80004b10:	0104a783          	lw	a5,16(s1)
    80004b14:	00279693          	slli	a3,a5,0x2
    80004b18:	00d70733          	add	a4,a4,a3
    80004b1c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004b20:	0017879b          	addiw	a5,a5,1
    80004b24:	0004a703          	lw	a4,0(s1)
    80004b28:	02e7e7bb          	remw	a5,a5,a4
    80004b2c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004b30:	0284b503          	ld	a0,40(s1)
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	8c8080e7          	jalr	-1848(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80004b3c:	0184b503          	ld	a0,24(s1)
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	8bc080e7          	jalr	-1860(ra) # 800013fc <sem_signal>

    return ret;
}
    80004b48:	00090513          	mv	a0,s2
    80004b4c:	01813083          	ld	ra,24(sp)
    80004b50:	01013403          	ld	s0,16(sp)
    80004b54:	00813483          	ld	s1,8(sp)
    80004b58:	00013903          	ld	s2,0(sp)
    80004b5c:	02010113          	addi	sp,sp,32
    80004b60:	00008067          	ret

0000000080004b64 <start>:
    80004b64:	ff010113          	addi	sp,sp,-16
    80004b68:	00813423          	sd	s0,8(sp)
    80004b6c:	01010413          	addi	s0,sp,16
    80004b70:	300027f3          	csrr	a5,mstatus
    80004b74:	ffffe737          	lui	a4,0xffffe
    80004b78:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff483f>
    80004b7c:	00e7f7b3          	and	a5,a5,a4
    80004b80:	00001737          	lui	a4,0x1
    80004b84:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004b88:	00e7e7b3          	or	a5,a5,a4
    80004b8c:	30079073          	csrw	mstatus,a5
    80004b90:	00000797          	auipc	a5,0x0
    80004b94:	16078793          	addi	a5,a5,352 # 80004cf0 <system_main>
    80004b98:	34179073          	csrw	mepc,a5
    80004b9c:	00000793          	li	a5,0
    80004ba0:	18079073          	csrw	satp,a5
    80004ba4:	000107b7          	lui	a5,0x10
    80004ba8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004bac:	30279073          	csrw	medeleg,a5
    80004bb0:	30379073          	csrw	mideleg,a5
    80004bb4:	104027f3          	csrr	a5,sie
    80004bb8:	2227e793          	ori	a5,a5,546
    80004bbc:	10479073          	csrw	sie,a5
    80004bc0:	fff00793          	li	a5,-1
    80004bc4:	00a7d793          	srli	a5,a5,0xa
    80004bc8:	3b079073          	csrw	pmpaddr0,a5
    80004bcc:	00f00793          	li	a5,15
    80004bd0:	3a079073          	csrw	pmpcfg0,a5
    80004bd4:	f14027f3          	csrr	a5,mhartid
    80004bd8:	0200c737          	lui	a4,0x200c
    80004bdc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004be0:	0007869b          	sext.w	a3,a5
    80004be4:	00269713          	slli	a4,a3,0x2
    80004be8:	000f4637          	lui	a2,0xf4
    80004bec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004bf0:	00d70733          	add	a4,a4,a3
    80004bf4:	0037979b          	slliw	a5,a5,0x3
    80004bf8:	020046b7          	lui	a3,0x2004
    80004bfc:	00d787b3          	add	a5,a5,a3
    80004c00:	00c585b3          	add	a1,a1,a2
    80004c04:	00371693          	slli	a3,a4,0x3
    80004c08:	00004717          	auipc	a4,0x4
    80004c0c:	15870713          	addi	a4,a4,344 # 80008d60 <timer_scratch>
    80004c10:	00b7b023          	sd	a1,0(a5)
    80004c14:	00d70733          	add	a4,a4,a3
    80004c18:	00f73c23          	sd	a5,24(a4)
    80004c1c:	02c73023          	sd	a2,32(a4)
    80004c20:	34071073          	csrw	mscratch,a4
    80004c24:	00000797          	auipc	a5,0x0
    80004c28:	6ec78793          	addi	a5,a5,1772 # 80005310 <timervec>
    80004c2c:	30579073          	csrw	mtvec,a5
    80004c30:	300027f3          	csrr	a5,mstatus
    80004c34:	0087e793          	ori	a5,a5,8
    80004c38:	30079073          	csrw	mstatus,a5
    80004c3c:	304027f3          	csrr	a5,mie
    80004c40:	0807e793          	ori	a5,a5,128
    80004c44:	30479073          	csrw	mie,a5
    80004c48:	f14027f3          	csrr	a5,mhartid
    80004c4c:	0007879b          	sext.w	a5,a5
    80004c50:	00078213          	mv	tp,a5
    80004c54:	30200073          	mret
    80004c58:	00813403          	ld	s0,8(sp)
    80004c5c:	01010113          	addi	sp,sp,16
    80004c60:	00008067          	ret

0000000080004c64 <timerinit>:
    80004c64:	ff010113          	addi	sp,sp,-16
    80004c68:	00813423          	sd	s0,8(sp)
    80004c6c:	01010413          	addi	s0,sp,16
    80004c70:	f14027f3          	csrr	a5,mhartid
    80004c74:	0200c737          	lui	a4,0x200c
    80004c78:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004c7c:	0007869b          	sext.w	a3,a5
    80004c80:	00269713          	slli	a4,a3,0x2
    80004c84:	000f4637          	lui	a2,0xf4
    80004c88:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004c8c:	00d70733          	add	a4,a4,a3
    80004c90:	0037979b          	slliw	a5,a5,0x3
    80004c94:	020046b7          	lui	a3,0x2004
    80004c98:	00d787b3          	add	a5,a5,a3
    80004c9c:	00c585b3          	add	a1,a1,a2
    80004ca0:	00371693          	slli	a3,a4,0x3
    80004ca4:	00004717          	auipc	a4,0x4
    80004ca8:	0bc70713          	addi	a4,a4,188 # 80008d60 <timer_scratch>
    80004cac:	00b7b023          	sd	a1,0(a5)
    80004cb0:	00d70733          	add	a4,a4,a3
    80004cb4:	00f73c23          	sd	a5,24(a4)
    80004cb8:	02c73023          	sd	a2,32(a4)
    80004cbc:	34071073          	csrw	mscratch,a4
    80004cc0:	00000797          	auipc	a5,0x0
    80004cc4:	65078793          	addi	a5,a5,1616 # 80005310 <timervec>
    80004cc8:	30579073          	csrw	mtvec,a5
    80004ccc:	300027f3          	csrr	a5,mstatus
    80004cd0:	0087e793          	ori	a5,a5,8
    80004cd4:	30079073          	csrw	mstatus,a5
    80004cd8:	304027f3          	csrr	a5,mie
    80004cdc:	0807e793          	ori	a5,a5,128
    80004ce0:	30479073          	csrw	mie,a5
    80004ce4:	00813403          	ld	s0,8(sp)
    80004ce8:	01010113          	addi	sp,sp,16
    80004cec:	00008067          	ret

0000000080004cf0 <system_main>:
    80004cf0:	fe010113          	addi	sp,sp,-32
    80004cf4:	00813823          	sd	s0,16(sp)
    80004cf8:	00913423          	sd	s1,8(sp)
    80004cfc:	00113c23          	sd	ra,24(sp)
    80004d00:	02010413          	addi	s0,sp,32
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	0c4080e7          	jalr	196(ra) # 80004dc8 <cpuid>
    80004d0c:	00004497          	auipc	s1,0x4
    80004d10:	f9448493          	addi	s1,s1,-108 # 80008ca0 <started>
    80004d14:	02050263          	beqz	a0,80004d38 <system_main+0x48>
    80004d18:	0004a783          	lw	a5,0(s1)
    80004d1c:	0007879b          	sext.w	a5,a5
    80004d20:	fe078ce3          	beqz	a5,80004d18 <system_main+0x28>
    80004d24:	0ff0000f          	fence
    80004d28:	00002517          	auipc	a0,0x2
    80004d2c:	67850513          	addi	a0,a0,1656 # 800073a0 <_ZL6digits+0x58>
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	a7c080e7          	jalr	-1412(ra) # 800057ac <panic>
    80004d38:	00001097          	auipc	ra,0x1
    80004d3c:	9d0080e7          	jalr	-1584(ra) # 80005708 <consoleinit>
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	15c080e7          	jalr	348(ra) # 80005e9c <printfinit>
    80004d48:	00002517          	auipc	a0,0x2
    80004d4c:	4c050513          	addi	a0,a0,1216 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	ab8080e7          	jalr	-1352(ra) # 80005808 <__printf>
    80004d58:	00002517          	auipc	a0,0x2
    80004d5c:	61850513          	addi	a0,a0,1560 # 80007370 <_ZL6digits+0x28>
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	aa8080e7          	jalr	-1368(ra) # 80005808 <__printf>
    80004d68:	00002517          	auipc	a0,0x2
    80004d6c:	4a050513          	addi	a0,a0,1184 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	a98080e7          	jalr	-1384(ra) # 80005808 <__printf>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	4b0080e7          	jalr	1200(ra) # 80006228 <kinit>
    80004d80:	00000097          	auipc	ra,0x0
    80004d84:	148080e7          	jalr	328(ra) # 80004ec8 <trapinit>
    80004d88:	00000097          	auipc	ra,0x0
    80004d8c:	16c080e7          	jalr	364(ra) # 80004ef4 <trapinithart>
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	5c0080e7          	jalr	1472(ra) # 80005350 <plicinit>
    80004d98:	00000097          	auipc	ra,0x0
    80004d9c:	5e0080e7          	jalr	1504(ra) # 80005378 <plicinithart>
    80004da0:	00000097          	auipc	ra,0x0
    80004da4:	078080e7          	jalr	120(ra) # 80004e18 <userinit>
    80004da8:	0ff0000f          	fence
    80004dac:	00100793          	li	a5,1
    80004db0:	00002517          	auipc	a0,0x2
    80004db4:	5d850513          	addi	a0,a0,1496 # 80007388 <_ZL6digits+0x40>
    80004db8:	00f4a023          	sw	a5,0(s1)
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	a4c080e7          	jalr	-1460(ra) # 80005808 <__printf>
    80004dc4:	0000006f          	j	80004dc4 <system_main+0xd4>

0000000080004dc8 <cpuid>:
    80004dc8:	ff010113          	addi	sp,sp,-16
    80004dcc:	00813423          	sd	s0,8(sp)
    80004dd0:	01010413          	addi	s0,sp,16
    80004dd4:	00020513          	mv	a0,tp
    80004dd8:	00813403          	ld	s0,8(sp)
    80004ddc:	0005051b          	sext.w	a0,a0
    80004de0:	01010113          	addi	sp,sp,16
    80004de4:	00008067          	ret

0000000080004de8 <mycpu>:
    80004de8:	ff010113          	addi	sp,sp,-16
    80004dec:	00813423          	sd	s0,8(sp)
    80004df0:	01010413          	addi	s0,sp,16
    80004df4:	00020793          	mv	a5,tp
    80004df8:	00813403          	ld	s0,8(sp)
    80004dfc:	0007879b          	sext.w	a5,a5
    80004e00:	00779793          	slli	a5,a5,0x7
    80004e04:	00005517          	auipc	a0,0x5
    80004e08:	f8c50513          	addi	a0,a0,-116 # 80009d90 <cpus>
    80004e0c:	00f50533          	add	a0,a0,a5
    80004e10:	01010113          	addi	sp,sp,16
    80004e14:	00008067          	ret

0000000080004e18 <userinit>:
    80004e18:	ff010113          	addi	sp,sp,-16
    80004e1c:	00813423          	sd	s0,8(sp)
    80004e20:	01010413          	addi	s0,sp,16
    80004e24:	00813403          	ld	s0,8(sp)
    80004e28:	01010113          	addi	sp,sp,16
    80004e2c:	ffffe317          	auipc	t1,0xffffe
    80004e30:	b2830067          	jr	-1240(t1) # 80002954 <main>

0000000080004e34 <either_copyout>:
    80004e34:	ff010113          	addi	sp,sp,-16
    80004e38:	00813023          	sd	s0,0(sp)
    80004e3c:	00113423          	sd	ra,8(sp)
    80004e40:	01010413          	addi	s0,sp,16
    80004e44:	02051663          	bnez	a0,80004e70 <either_copyout+0x3c>
    80004e48:	00058513          	mv	a0,a1
    80004e4c:	00060593          	mv	a1,a2
    80004e50:	0006861b          	sext.w	a2,a3
    80004e54:	00002097          	auipc	ra,0x2
    80004e58:	c60080e7          	jalr	-928(ra) # 80006ab4 <__memmove>
    80004e5c:	00813083          	ld	ra,8(sp)
    80004e60:	00013403          	ld	s0,0(sp)
    80004e64:	00000513          	li	a0,0
    80004e68:	01010113          	addi	sp,sp,16
    80004e6c:	00008067          	ret
    80004e70:	00002517          	auipc	a0,0x2
    80004e74:	55850513          	addi	a0,a0,1368 # 800073c8 <_ZL6digits+0x80>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	934080e7          	jalr	-1740(ra) # 800057ac <panic>

0000000080004e80 <either_copyin>:
    80004e80:	ff010113          	addi	sp,sp,-16
    80004e84:	00813023          	sd	s0,0(sp)
    80004e88:	00113423          	sd	ra,8(sp)
    80004e8c:	01010413          	addi	s0,sp,16
    80004e90:	02059463          	bnez	a1,80004eb8 <either_copyin+0x38>
    80004e94:	00060593          	mv	a1,a2
    80004e98:	0006861b          	sext.w	a2,a3
    80004e9c:	00002097          	auipc	ra,0x2
    80004ea0:	c18080e7          	jalr	-1000(ra) # 80006ab4 <__memmove>
    80004ea4:	00813083          	ld	ra,8(sp)
    80004ea8:	00013403          	ld	s0,0(sp)
    80004eac:	00000513          	li	a0,0
    80004eb0:	01010113          	addi	sp,sp,16
    80004eb4:	00008067          	ret
    80004eb8:	00002517          	auipc	a0,0x2
    80004ebc:	53850513          	addi	a0,a0,1336 # 800073f0 <_ZL6digits+0xa8>
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	8ec080e7          	jalr	-1812(ra) # 800057ac <panic>

0000000080004ec8 <trapinit>:
    80004ec8:	ff010113          	addi	sp,sp,-16
    80004ecc:	00813423          	sd	s0,8(sp)
    80004ed0:	01010413          	addi	s0,sp,16
    80004ed4:	00813403          	ld	s0,8(sp)
    80004ed8:	00002597          	auipc	a1,0x2
    80004edc:	54058593          	addi	a1,a1,1344 # 80007418 <_ZL6digits+0xd0>
    80004ee0:	00005517          	auipc	a0,0x5
    80004ee4:	f3050513          	addi	a0,a0,-208 # 80009e10 <tickslock>
    80004ee8:	01010113          	addi	sp,sp,16
    80004eec:	00001317          	auipc	t1,0x1
    80004ef0:	5cc30067          	jr	1484(t1) # 800064b8 <initlock>

0000000080004ef4 <trapinithart>:
    80004ef4:	ff010113          	addi	sp,sp,-16
    80004ef8:	00813423          	sd	s0,8(sp)
    80004efc:	01010413          	addi	s0,sp,16
    80004f00:	00000797          	auipc	a5,0x0
    80004f04:	30078793          	addi	a5,a5,768 # 80005200 <kernelvec>
    80004f08:	10579073          	csrw	stvec,a5
    80004f0c:	00813403          	ld	s0,8(sp)
    80004f10:	01010113          	addi	sp,sp,16
    80004f14:	00008067          	ret

0000000080004f18 <usertrap>:
    80004f18:	ff010113          	addi	sp,sp,-16
    80004f1c:	00813423          	sd	s0,8(sp)
    80004f20:	01010413          	addi	s0,sp,16
    80004f24:	00813403          	ld	s0,8(sp)
    80004f28:	01010113          	addi	sp,sp,16
    80004f2c:	00008067          	ret

0000000080004f30 <usertrapret>:
    80004f30:	ff010113          	addi	sp,sp,-16
    80004f34:	00813423          	sd	s0,8(sp)
    80004f38:	01010413          	addi	s0,sp,16
    80004f3c:	00813403          	ld	s0,8(sp)
    80004f40:	01010113          	addi	sp,sp,16
    80004f44:	00008067          	ret

0000000080004f48 <kerneltrap>:
    80004f48:	fe010113          	addi	sp,sp,-32
    80004f4c:	00813823          	sd	s0,16(sp)
    80004f50:	00113c23          	sd	ra,24(sp)
    80004f54:	00913423          	sd	s1,8(sp)
    80004f58:	02010413          	addi	s0,sp,32
    80004f5c:	142025f3          	csrr	a1,scause
    80004f60:	100027f3          	csrr	a5,sstatus
    80004f64:	0027f793          	andi	a5,a5,2
    80004f68:	10079c63          	bnez	a5,80005080 <kerneltrap+0x138>
    80004f6c:	142027f3          	csrr	a5,scause
    80004f70:	0207ce63          	bltz	a5,80004fac <kerneltrap+0x64>
    80004f74:	00002517          	auipc	a0,0x2
    80004f78:	4ec50513          	addi	a0,a0,1260 # 80007460 <_ZL6digits+0x118>
    80004f7c:	00001097          	auipc	ra,0x1
    80004f80:	88c080e7          	jalr	-1908(ra) # 80005808 <__printf>
    80004f84:	141025f3          	csrr	a1,sepc
    80004f88:	14302673          	csrr	a2,stval
    80004f8c:	00002517          	auipc	a0,0x2
    80004f90:	4e450513          	addi	a0,a0,1252 # 80007470 <_ZL6digits+0x128>
    80004f94:	00001097          	auipc	ra,0x1
    80004f98:	874080e7          	jalr	-1932(ra) # 80005808 <__printf>
    80004f9c:	00002517          	auipc	a0,0x2
    80004fa0:	4ec50513          	addi	a0,a0,1260 # 80007488 <_ZL6digits+0x140>
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	808080e7          	jalr	-2040(ra) # 800057ac <panic>
    80004fac:	0ff7f713          	andi	a4,a5,255
    80004fb0:	00900693          	li	a3,9
    80004fb4:	04d70063          	beq	a4,a3,80004ff4 <kerneltrap+0xac>
    80004fb8:	fff00713          	li	a4,-1
    80004fbc:	03f71713          	slli	a4,a4,0x3f
    80004fc0:	00170713          	addi	a4,a4,1
    80004fc4:	fae798e3          	bne	a5,a4,80004f74 <kerneltrap+0x2c>
    80004fc8:	00000097          	auipc	ra,0x0
    80004fcc:	e00080e7          	jalr	-512(ra) # 80004dc8 <cpuid>
    80004fd0:	06050663          	beqz	a0,8000503c <kerneltrap+0xf4>
    80004fd4:	144027f3          	csrr	a5,sip
    80004fd8:	ffd7f793          	andi	a5,a5,-3
    80004fdc:	14479073          	csrw	sip,a5
    80004fe0:	01813083          	ld	ra,24(sp)
    80004fe4:	01013403          	ld	s0,16(sp)
    80004fe8:	00813483          	ld	s1,8(sp)
    80004fec:	02010113          	addi	sp,sp,32
    80004ff0:	00008067          	ret
    80004ff4:	00000097          	auipc	ra,0x0
    80004ff8:	3d0080e7          	jalr	976(ra) # 800053c4 <plic_claim>
    80004ffc:	00a00793          	li	a5,10
    80005000:	00050493          	mv	s1,a0
    80005004:	06f50863          	beq	a0,a5,80005074 <kerneltrap+0x12c>
    80005008:	fc050ce3          	beqz	a0,80004fe0 <kerneltrap+0x98>
    8000500c:	00050593          	mv	a1,a0
    80005010:	00002517          	auipc	a0,0x2
    80005014:	43050513          	addi	a0,a0,1072 # 80007440 <_ZL6digits+0xf8>
    80005018:	00000097          	auipc	ra,0x0
    8000501c:	7f0080e7          	jalr	2032(ra) # 80005808 <__printf>
    80005020:	01013403          	ld	s0,16(sp)
    80005024:	01813083          	ld	ra,24(sp)
    80005028:	00048513          	mv	a0,s1
    8000502c:	00813483          	ld	s1,8(sp)
    80005030:	02010113          	addi	sp,sp,32
    80005034:	00000317          	auipc	t1,0x0
    80005038:	3c830067          	jr	968(t1) # 800053fc <plic_complete>
    8000503c:	00005517          	auipc	a0,0x5
    80005040:	dd450513          	addi	a0,a0,-556 # 80009e10 <tickslock>
    80005044:	00001097          	auipc	ra,0x1
    80005048:	498080e7          	jalr	1176(ra) # 800064dc <acquire>
    8000504c:	00004717          	auipc	a4,0x4
    80005050:	c5870713          	addi	a4,a4,-936 # 80008ca4 <ticks>
    80005054:	00072783          	lw	a5,0(a4)
    80005058:	00005517          	auipc	a0,0x5
    8000505c:	db850513          	addi	a0,a0,-584 # 80009e10 <tickslock>
    80005060:	0017879b          	addiw	a5,a5,1
    80005064:	00f72023          	sw	a5,0(a4)
    80005068:	00001097          	auipc	ra,0x1
    8000506c:	540080e7          	jalr	1344(ra) # 800065a8 <release>
    80005070:	f65ff06f          	j	80004fd4 <kerneltrap+0x8c>
    80005074:	00001097          	auipc	ra,0x1
    80005078:	09c080e7          	jalr	156(ra) # 80006110 <uartintr>
    8000507c:	fa5ff06f          	j	80005020 <kerneltrap+0xd8>
    80005080:	00002517          	auipc	a0,0x2
    80005084:	3a050513          	addi	a0,a0,928 # 80007420 <_ZL6digits+0xd8>
    80005088:	00000097          	auipc	ra,0x0
    8000508c:	724080e7          	jalr	1828(ra) # 800057ac <panic>

0000000080005090 <clockintr>:
    80005090:	fe010113          	addi	sp,sp,-32
    80005094:	00813823          	sd	s0,16(sp)
    80005098:	00913423          	sd	s1,8(sp)
    8000509c:	00113c23          	sd	ra,24(sp)
    800050a0:	02010413          	addi	s0,sp,32
    800050a4:	00005497          	auipc	s1,0x5
    800050a8:	d6c48493          	addi	s1,s1,-660 # 80009e10 <tickslock>
    800050ac:	00048513          	mv	a0,s1
    800050b0:	00001097          	auipc	ra,0x1
    800050b4:	42c080e7          	jalr	1068(ra) # 800064dc <acquire>
    800050b8:	00004717          	auipc	a4,0x4
    800050bc:	bec70713          	addi	a4,a4,-1044 # 80008ca4 <ticks>
    800050c0:	00072783          	lw	a5,0(a4)
    800050c4:	01013403          	ld	s0,16(sp)
    800050c8:	01813083          	ld	ra,24(sp)
    800050cc:	00048513          	mv	a0,s1
    800050d0:	0017879b          	addiw	a5,a5,1
    800050d4:	00813483          	ld	s1,8(sp)
    800050d8:	00f72023          	sw	a5,0(a4)
    800050dc:	02010113          	addi	sp,sp,32
    800050e0:	00001317          	auipc	t1,0x1
    800050e4:	4c830067          	jr	1224(t1) # 800065a8 <release>

00000000800050e8 <devintr>:
    800050e8:	142027f3          	csrr	a5,scause
    800050ec:	00000513          	li	a0,0
    800050f0:	0007c463          	bltz	a5,800050f8 <devintr+0x10>
    800050f4:	00008067          	ret
    800050f8:	fe010113          	addi	sp,sp,-32
    800050fc:	00813823          	sd	s0,16(sp)
    80005100:	00113c23          	sd	ra,24(sp)
    80005104:	00913423          	sd	s1,8(sp)
    80005108:	02010413          	addi	s0,sp,32
    8000510c:	0ff7f713          	andi	a4,a5,255
    80005110:	00900693          	li	a3,9
    80005114:	04d70c63          	beq	a4,a3,8000516c <devintr+0x84>
    80005118:	fff00713          	li	a4,-1
    8000511c:	03f71713          	slli	a4,a4,0x3f
    80005120:	00170713          	addi	a4,a4,1
    80005124:	00e78c63          	beq	a5,a4,8000513c <devintr+0x54>
    80005128:	01813083          	ld	ra,24(sp)
    8000512c:	01013403          	ld	s0,16(sp)
    80005130:	00813483          	ld	s1,8(sp)
    80005134:	02010113          	addi	sp,sp,32
    80005138:	00008067          	ret
    8000513c:	00000097          	auipc	ra,0x0
    80005140:	c8c080e7          	jalr	-884(ra) # 80004dc8 <cpuid>
    80005144:	06050663          	beqz	a0,800051b0 <devintr+0xc8>
    80005148:	144027f3          	csrr	a5,sip
    8000514c:	ffd7f793          	andi	a5,a5,-3
    80005150:	14479073          	csrw	sip,a5
    80005154:	01813083          	ld	ra,24(sp)
    80005158:	01013403          	ld	s0,16(sp)
    8000515c:	00813483          	ld	s1,8(sp)
    80005160:	00200513          	li	a0,2
    80005164:	02010113          	addi	sp,sp,32
    80005168:	00008067          	ret
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	258080e7          	jalr	600(ra) # 800053c4 <plic_claim>
    80005174:	00a00793          	li	a5,10
    80005178:	00050493          	mv	s1,a0
    8000517c:	06f50663          	beq	a0,a5,800051e8 <devintr+0x100>
    80005180:	00100513          	li	a0,1
    80005184:	fa0482e3          	beqz	s1,80005128 <devintr+0x40>
    80005188:	00048593          	mv	a1,s1
    8000518c:	00002517          	auipc	a0,0x2
    80005190:	2b450513          	addi	a0,a0,692 # 80007440 <_ZL6digits+0xf8>
    80005194:	00000097          	auipc	ra,0x0
    80005198:	674080e7          	jalr	1652(ra) # 80005808 <__printf>
    8000519c:	00048513          	mv	a0,s1
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	25c080e7          	jalr	604(ra) # 800053fc <plic_complete>
    800051a8:	00100513          	li	a0,1
    800051ac:	f7dff06f          	j	80005128 <devintr+0x40>
    800051b0:	00005517          	auipc	a0,0x5
    800051b4:	c6050513          	addi	a0,a0,-928 # 80009e10 <tickslock>
    800051b8:	00001097          	auipc	ra,0x1
    800051bc:	324080e7          	jalr	804(ra) # 800064dc <acquire>
    800051c0:	00004717          	auipc	a4,0x4
    800051c4:	ae470713          	addi	a4,a4,-1308 # 80008ca4 <ticks>
    800051c8:	00072783          	lw	a5,0(a4)
    800051cc:	00005517          	auipc	a0,0x5
    800051d0:	c4450513          	addi	a0,a0,-956 # 80009e10 <tickslock>
    800051d4:	0017879b          	addiw	a5,a5,1
    800051d8:	00f72023          	sw	a5,0(a4)
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	3cc080e7          	jalr	972(ra) # 800065a8 <release>
    800051e4:	f65ff06f          	j	80005148 <devintr+0x60>
    800051e8:	00001097          	auipc	ra,0x1
    800051ec:	f28080e7          	jalr	-216(ra) # 80006110 <uartintr>
    800051f0:	fadff06f          	j	8000519c <devintr+0xb4>
	...

0000000080005200 <kernelvec>:
    80005200:	f0010113          	addi	sp,sp,-256
    80005204:	00113023          	sd	ra,0(sp)
    80005208:	00213423          	sd	sp,8(sp)
    8000520c:	00313823          	sd	gp,16(sp)
    80005210:	00413c23          	sd	tp,24(sp)
    80005214:	02513023          	sd	t0,32(sp)
    80005218:	02613423          	sd	t1,40(sp)
    8000521c:	02713823          	sd	t2,48(sp)
    80005220:	02813c23          	sd	s0,56(sp)
    80005224:	04913023          	sd	s1,64(sp)
    80005228:	04a13423          	sd	a0,72(sp)
    8000522c:	04b13823          	sd	a1,80(sp)
    80005230:	04c13c23          	sd	a2,88(sp)
    80005234:	06d13023          	sd	a3,96(sp)
    80005238:	06e13423          	sd	a4,104(sp)
    8000523c:	06f13823          	sd	a5,112(sp)
    80005240:	07013c23          	sd	a6,120(sp)
    80005244:	09113023          	sd	a7,128(sp)
    80005248:	09213423          	sd	s2,136(sp)
    8000524c:	09313823          	sd	s3,144(sp)
    80005250:	09413c23          	sd	s4,152(sp)
    80005254:	0b513023          	sd	s5,160(sp)
    80005258:	0b613423          	sd	s6,168(sp)
    8000525c:	0b713823          	sd	s7,176(sp)
    80005260:	0b813c23          	sd	s8,184(sp)
    80005264:	0d913023          	sd	s9,192(sp)
    80005268:	0da13423          	sd	s10,200(sp)
    8000526c:	0db13823          	sd	s11,208(sp)
    80005270:	0dc13c23          	sd	t3,216(sp)
    80005274:	0fd13023          	sd	t4,224(sp)
    80005278:	0fe13423          	sd	t5,232(sp)
    8000527c:	0ff13823          	sd	t6,240(sp)
    80005280:	cc9ff0ef          	jal	ra,80004f48 <kerneltrap>
    80005284:	00013083          	ld	ra,0(sp)
    80005288:	00813103          	ld	sp,8(sp)
    8000528c:	01013183          	ld	gp,16(sp)
    80005290:	02013283          	ld	t0,32(sp)
    80005294:	02813303          	ld	t1,40(sp)
    80005298:	03013383          	ld	t2,48(sp)
    8000529c:	03813403          	ld	s0,56(sp)
    800052a0:	04013483          	ld	s1,64(sp)
    800052a4:	04813503          	ld	a0,72(sp)
    800052a8:	05013583          	ld	a1,80(sp)
    800052ac:	05813603          	ld	a2,88(sp)
    800052b0:	06013683          	ld	a3,96(sp)
    800052b4:	06813703          	ld	a4,104(sp)
    800052b8:	07013783          	ld	a5,112(sp)
    800052bc:	07813803          	ld	a6,120(sp)
    800052c0:	08013883          	ld	a7,128(sp)
    800052c4:	08813903          	ld	s2,136(sp)
    800052c8:	09013983          	ld	s3,144(sp)
    800052cc:	09813a03          	ld	s4,152(sp)
    800052d0:	0a013a83          	ld	s5,160(sp)
    800052d4:	0a813b03          	ld	s6,168(sp)
    800052d8:	0b013b83          	ld	s7,176(sp)
    800052dc:	0b813c03          	ld	s8,184(sp)
    800052e0:	0c013c83          	ld	s9,192(sp)
    800052e4:	0c813d03          	ld	s10,200(sp)
    800052e8:	0d013d83          	ld	s11,208(sp)
    800052ec:	0d813e03          	ld	t3,216(sp)
    800052f0:	0e013e83          	ld	t4,224(sp)
    800052f4:	0e813f03          	ld	t5,232(sp)
    800052f8:	0f013f83          	ld	t6,240(sp)
    800052fc:	10010113          	addi	sp,sp,256
    80005300:	10200073          	sret
    80005304:	00000013          	nop
    80005308:	00000013          	nop
    8000530c:	00000013          	nop

0000000080005310 <timervec>:
    80005310:	34051573          	csrrw	a0,mscratch,a0
    80005314:	00b53023          	sd	a1,0(a0)
    80005318:	00c53423          	sd	a2,8(a0)
    8000531c:	00d53823          	sd	a3,16(a0)
    80005320:	01853583          	ld	a1,24(a0)
    80005324:	02053603          	ld	a2,32(a0)
    80005328:	0005b683          	ld	a3,0(a1)
    8000532c:	00c686b3          	add	a3,a3,a2
    80005330:	00d5b023          	sd	a3,0(a1)
    80005334:	00200593          	li	a1,2
    80005338:	14459073          	csrw	sip,a1
    8000533c:	01053683          	ld	a3,16(a0)
    80005340:	00853603          	ld	a2,8(a0)
    80005344:	00053583          	ld	a1,0(a0)
    80005348:	34051573          	csrrw	a0,mscratch,a0
    8000534c:	30200073          	mret

0000000080005350 <plicinit>:
    80005350:	ff010113          	addi	sp,sp,-16
    80005354:	00813423          	sd	s0,8(sp)
    80005358:	01010413          	addi	s0,sp,16
    8000535c:	00813403          	ld	s0,8(sp)
    80005360:	0c0007b7          	lui	a5,0xc000
    80005364:	00100713          	li	a4,1
    80005368:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000536c:	00e7a223          	sw	a4,4(a5)
    80005370:	01010113          	addi	sp,sp,16
    80005374:	00008067          	ret

0000000080005378 <plicinithart>:
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00813023          	sd	s0,0(sp)
    80005380:	00113423          	sd	ra,8(sp)
    80005384:	01010413          	addi	s0,sp,16
    80005388:	00000097          	auipc	ra,0x0
    8000538c:	a40080e7          	jalr	-1472(ra) # 80004dc8 <cpuid>
    80005390:	0085171b          	slliw	a4,a0,0x8
    80005394:	0c0027b7          	lui	a5,0xc002
    80005398:	00e787b3          	add	a5,a5,a4
    8000539c:	40200713          	li	a4,1026
    800053a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800053a4:	00813083          	ld	ra,8(sp)
    800053a8:	00013403          	ld	s0,0(sp)
    800053ac:	00d5151b          	slliw	a0,a0,0xd
    800053b0:	0c2017b7          	lui	a5,0xc201
    800053b4:	00a78533          	add	a0,a5,a0
    800053b8:	00052023          	sw	zero,0(a0)
    800053bc:	01010113          	addi	sp,sp,16
    800053c0:	00008067          	ret

00000000800053c4 <plic_claim>:
    800053c4:	ff010113          	addi	sp,sp,-16
    800053c8:	00813023          	sd	s0,0(sp)
    800053cc:	00113423          	sd	ra,8(sp)
    800053d0:	01010413          	addi	s0,sp,16
    800053d4:	00000097          	auipc	ra,0x0
    800053d8:	9f4080e7          	jalr	-1548(ra) # 80004dc8 <cpuid>
    800053dc:	00813083          	ld	ra,8(sp)
    800053e0:	00013403          	ld	s0,0(sp)
    800053e4:	00d5151b          	slliw	a0,a0,0xd
    800053e8:	0c2017b7          	lui	a5,0xc201
    800053ec:	00a78533          	add	a0,a5,a0
    800053f0:	00452503          	lw	a0,4(a0)
    800053f4:	01010113          	addi	sp,sp,16
    800053f8:	00008067          	ret

00000000800053fc <plic_complete>:
    800053fc:	fe010113          	addi	sp,sp,-32
    80005400:	00813823          	sd	s0,16(sp)
    80005404:	00913423          	sd	s1,8(sp)
    80005408:	00113c23          	sd	ra,24(sp)
    8000540c:	02010413          	addi	s0,sp,32
    80005410:	00050493          	mv	s1,a0
    80005414:	00000097          	auipc	ra,0x0
    80005418:	9b4080e7          	jalr	-1612(ra) # 80004dc8 <cpuid>
    8000541c:	01813083          	ld	ra,24(sp)
    80005420:	01013403          	ld	s0,16(sp)
    80005424:	00d5179b          	slliw	a5,a0,0xd
    80005428:	0c201737          	lui	a4,0xc201
    8000542c:	00f707b3          	add	a5,a4,a5
    80005430:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005434:	00813483          	ld	s1,8(sp)
    80005438:	02010113          	addi	sp,sp,32
    8000543c:	00008067          	ret

0000000080005440 <consolewrite>:
    80005440:	fb010113          	addi	sp,sp,-80
    80005444:	04813023          	sd	s0,64(sp)
    80005448:	04113423          	sd	ra,72(sp)
    8000544c:	02913c23          	sd	s1,56(sp)
    80005450:	03213823          	sd	s2,48(sp)
    80005454:	03313423          	sd	s3,40(sp)
    80005458:	03413023          	sd	s4,32(sp)
    8000545c:	01513c23          	sd	s5,24(sp)
    80005460:	05010413          	addi	s0,sp,80
    80005464:	06c05c63          	blez	a2,800054dc <consolewrite+0x9c>
    80005468:	00060993          	mv	s3,a2
    8000546c:	00050a13          	mv	s4,a0
    80005470:	00058493          	mv	s1,a1
    80005474:	00000913          	li	s2,0
    80005478:	fff00a93          	li	s5,-1
    8000547c:	01c0006f          	j	80005498 <consolewrite+0x58>
    80005480:	fbf44503          	lbu	a0,-65(s0)
    80005484:	0019091b          	addiw	s2,s2,1
    80005488:	00148493          	addi	s1,s1,1
    8000548c:	00001097          	auipc	ra,0x1
    80005490:	a9c080e7          	jalr	-1380(ra) # 80005f28 <uartputc>
    80005494:	03298063          	beq	s3,s2,800054b4 <consolewrite+0x74>
    80005498:	00048613          	mv	a2,s1
    8000549c:	00100693          	li	a3,1
    800054a0:	000a0593          	mv	a1,s4
    800054a4:	fbf40513          	addi	a0,s0,-65
    800054a8:	00000097          	auipc	ra,0x0
    800054ac:	9d8080e7          	jalr	-1576(ra) # 80004e80 <either_copyin>
    800054b0:	fd5518e3          	bne	a0,s5,80005480 <consolewrite+0x40>
    800054b4:	04813083          	ld	ra,72(sp)
    800054b8:	04013403          	ld	s0,64(sp)
    800054bc:	03813483          	ld	s1,56(sp)
    800054c0:	02813983          	ld	s3,40(sp)
    800054c4:	02013a03          	ld	s4,32(sp)
    800054c8:	01813a83          	ld	s5,24(sp)
    800054cc:	00090513          	mv	a0,s2
    800054d0:	03013903          	ld	s2,48(sp)
    800054d4:	05010113          	addi	sp,sp,80
    800054d8:	00008067          	ret
    800054dc:	00000913          	li	s2,0
    800054e0:	fd5ff06f          	j	800054b4 <consolewrite+0x74>

00000000800054e4 <consoleread>:
    800054e4:	f9010113          	addi	sp,sp,-112
    800054e8:	06813023          	sd	s0,96(sp)
    800054ec:	04913c23          	sd	s1,88(sp)
    800054f0:	05213823          	sd	s2,80(sp)
    800054f4:	05313423          	sd	s3,72(sp)
    800054f8:	05413023          	sd	s4,64(sp)
    800054fc:	03513c23          	sd	s5,56(sp)
    80005500:	03613823          	sd	s6,48(sp)
    80005504:	03713423          	sd	s7,40(sp)
    80005508:	03813023          	sd	s8,32(sp)
    8000550c:	06113423          	sd	ra,104(sp)
    80005510:	01913c23          	sd	s9,24(sp)
    80005514:	07010413          	addi	s0,sp,112
    80005518:	00060b93          	mv	s7,a2
    8000551c:	00050913          	mv	s2,a0
    80005520:	00058c13          	mv	s8,a1
    80005524:	00060b1b          	sext.w	s6,a2
    80005528:	00005497          	auipc	s1,0x5
    8000552c:	91048493          	addi	s1,s1,-1776 # 80009e38 <cons>
    80005530:	00400993          	li	s3,4
    80005534:	fff00a13          	li	s4,-1
    80005538:	00a00a93          	li	s5,10
    8000553c:	05705e63          	blez	s7,80005598 <consoleread+0xb4>
    80005540:	09c4a703          	lw	a4,156(s1)
    80005544:	0984a783          	lw	a5,152(s1)
    80005548:	0007071b          	sext.w	a4,a4
    8000554c:	08e78463          	beq	a5,a4,800055d4 <consoleread+0xf0>
    80005550:	07f7f713          	andi	a4,a5,127
    80005554:	00e48733          	add	a4,s1,a4
    80005558:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000555c:	0017869b          	addiw	a3,a5,1
    80005560:	08d4ac23          	sw	a3,152(s1)
    80005564:	00070c9b          	sext.w	s9,a4
    80005568:	0b370663          	beq	a4,s3,80005614 <consoleread+0x130>
    8000556c:	00100693          	li	a3,1
    80005570:	f9f40613          	addi	a2,s0,-97
    80005574:	000c0593          	mv	a1,s8
    80005578:	00090513          	mv	a0,s2
    8000557c:	f8e40fa3          	sb	a4,-97(s0)
    80005580:	00000097          	auipc	ra,0x0
    80005584:	8b4080e7          	jalr	-1868(ra) # 80004e34 <either_copyout>
    80005588:	01450863          	beq	a0,s4,80005598 <consoleread+0xb4>
    8000558c:	001c0c13          	addi	s8,s8,1
    80005590:	fffb8b9b          	addiw	s7,s7,-1
    80005594:	fb5c94e3          	bne	s9,s5,8000553c <consoleread+0x58>
    80005598:	000b851b          	sext.w	a0,s7
    8000559c:	06813083          	ld	ra,104(sp)
    800055a0:	06013403          	ld	s0,96(sp)
    800055a4:	05813483          	ld	s1,88(sp)
    800055a8:	05013903          	ld	s2,80(sp)
    800055ac:	04813983          	ld	s3,72(sp)
    800055b0:	04013a03          	ld	s4,64(sp)
    800055b4:	03813a83          	ld	s5,56(sp)
    800055b8:	02813b83          	ld	s7,40(sp)
    800055bc:	02013c03          	ld	s8,32(sp)
    800055c0:	01813c83          	ld	s9,24(sp)
    800055c4:	40ab053b          	subw	a0,s6,a0
    800055c8:	03013b03          	ld	s6,48(sp)
    800055cc:	07010113          	addi	sp,sp,112
    800055d0:	00008067          	ret
    800055d4:	00001097          	auipc	ra,0x1
    800055d8:	1d8080e7          	jalr	472(ra) # 800067ac <push_on>
    800055dc:	0984a703          	lw	a4,152(s1)
    800055e0:	09c4a783          	lw	a5,156(s1)
    800055e4:	0007879b          	sext.w	a5,a5
    800055e8:	fef70ce3          	beq	a4,a5,800055e0 <consoleread+0xfc>
    800055ec:	00001097          	auipc	ra,0x1
    800055f0:	234080e7          	jalr	564(ra) # 80006820 <pop_on>
    800055f4:	0984a783          	lw	a5,152(s1)
    800055f8:	07f7f713          	andi	a4,a5,127
    800055fc:	00e48733          	add	a4,s1,a4
    80005600:	01874703          	lbu	a4,24(a4)
    80005604:	0017869b          	addiw	a3,a5,1
    80005608:	08d4ac23          	sw	a3,152(s1)
    8000560c:	00070c9b          	sext.w	s9,a4
    80005610:	f5371ee3          	bne	a4,s3,8000556c <consoleread+0x88>
    80005614:	000b851b          	sext.w	a0,s7
    80005618:	f96bf2e3          	bgeu	s7,s6,8000559c <consoleread+0xb8>
    8000561c:	08f4ac23          	sw	a5,152(s1)
    80005620:	f7dff06f          	j	8000559c <consoleread+0xb8>

0000000080005624 <consputc>:
    80005624:	10000793          	li	a5,256
    80005628:	00f50663          	beq	a0,a5,80005634 <consputc+0x10>
    8000562c:	00001317          	auipc	t1,0x1
    80005630:	9f430067          	jr	-1548(t1) # 80006020 <uartputc_sync>
    80005634:	ff010113          	addi	sp,sp,-16
    80005638:	00113423          	sd	ra,8(sp)
    8000563c:	00813023          	sd	s0,0(sp)
    80005640:	01010413          	addi	s0,sp,16
    80005644:	00800513          	li	a0,8
    80005648:	00001097          	auipc	ra,0x1
    8000564c:	9d8080e7          	jalr	-1576(ra) # 80006020 <uartputc_sync>
    80005650:	02000513          	li	a0,32
    80005654:	00001097          	auipc	ra,0x1
    80005658:	9cc080e7          	jalr	-1588(ra) # 80006020 <uartputc_sync>
    8000565c:	00013403          	ld	s0,0(sp)
    80005660:	00813083          	ld	ra,8(sp)
    80005664:	00800513          	li	a0,8
    80005668:	01010113          	addi	sp,sp,16
    8000566c:	00001317          	auipc	t1,0x1
    80005670:	9b430067          	jr	-1612(t1) # 80006020 <uartputc_sync>

0000000080005674 <consoleintr>:
    80005674:	fe010113          	addi	sp,sp,-32
    80005678:	00813823          	sd	s0,16(sp)
    8000567c:	00913423          	sd	s1,8(sp)
    80005680:	01213023          	sd	s2,0(sp)
    80005684:	00113c23          	sd	ra,24(sp)
    80005688:	02010413          	addi	s0,sp,32
    8000568c:	00004917          	auipc	s2,0x4
    80005690:	7ac90913          	addi	s2,s2,1964 # 80009e38 <cons>
    80005694:	00050493          	mv	s1,a0
    80005698:	00090513          	mv	a0,s2
    8000569c:	00001097          	auipc	ra,0x1
    800056a0:	e40080e7          	jalr	-448(ra) # 800064dc <acquire>
    800056a4:	02048c63          	beqz	s1,800056dc <consoleintr+0x68>
    800056a8:	0a092783          	lw	a5,160(s2)
    800056ac:	09892703          	lw	a4,152(s2)
    800056b0:	07f00693          	li	a3,127
    800056b4:	40e7873b          	subw	a4,a5,a4
    800056b8:	02e6e263          	bltu	a3,a4,800056dc <consoleintr+0x68>
    800056bc:	00d00713          	li	a4,13
    800056c0:	04e48063          	beq	s1,a4,80005700 <consoleintr+0x8c>
    800056c4:	07f7f713          	andi	a4,a5,127
    800056c8:	00e90733          	add	a4,s2,a4
    800056cc:	0017879b          	addiw	a5,a5,1
    800056d0:	0af92023          	sw	a5,160(s2)
    800056d4:	00970c23          	sb	s1,24(a4)
    800056d8:	08f92e23          	sw	a5,156(s2)
    800056dc:	01013403          	ld	s0,16(sp)
    800056e0:	01813083          	ld	ra,24(sp)
    800056e4:	00813483          	ld	s1,8(sp)
    800056e8:	00013903          	ld	s2,0(sp)
    800056ec:	00004517          	auipc	a0,0x4
    800056f0:	74c50513          	addi	a0,a0,1868 # 80009e38 <cons>
    800056f4:	02010113          	addi	sp,sp,32
    800056f8:	00001317          	auipc	t1,0x1
    800056fc:	eb030067          	jr	-336(t1) # 800065a8 <release>
    80005700:	00a00493          	li	s1,10
    80005704:	fc1ff06f          	j	800056c4 <consoleintr+0x50>

0000000080005708 <consoleinit>:
    80005708:	fe010113          	addi	sp,sp,-32
    8000570c:	00113c23          	sd	ra,24(sp)
    80005710:	00813823          	sd	s0,16(sp)
    80005714:	00913423          	sd	s1,8(sp)
    80005718:	02010413          	addi	s0,sp,32
    8000571c:	00004497          	auipc	s1,0x4
    80005720:	71c48493          	addi	s1,s1,1820 # 80009e38 <cons>
    80005724:	00048513          	mv	a0,s1
    80005728:	00002597          	auipc	a1,0x2
    8000572c:	d7058593          	addi	a1,a1,-656 # 80007498 <_ZL6digits+0x150>
    80005730:	00001097          	auipc	ra,0x1
    80005734:	d88080e7          	jalr	-632(ra) # 800064b8 <initlock>
    80005738:	00000097          	auipc	ra,0x0
    8000573c:	7ac080e7          	jalr	1964(ra) # 80005ee4 <uartinit>
    80005740:	01813083          	ld	ra,24(sp)
    80005744:	01013403          	ld	s0,16(sp)
    80005748:	00000797          	auipc	a5,0x0
    8000574c:	d9c78793          	addi	a5,a5,-612 # 800054e4 <consoleread>
    80005750:	0af4bc23          	sd	a5,184(s1)
    80005754:	00000797          	auipc	a5,0x0
    80005758:	cec78793          	addi	a5,a5,-788 # 80005440 <consolewrite>
    8000575c:	0cf4b023          	sd	a5,192(s1)
    80005760:	00813483          	ld	s1,8(sp)
    80005764:	02010113          	addi	sp,sp,32
    80005768:	00008067          	ret

000000008000576c <console_read>:
    8000576c:	ff010113          	addi	sp,sp,-16
    80005770:	00813423          	sd	s0,8(sp)
    80005774:	01010413          	addi	s0,sp,16
    80005778:	00813403          	ld	s0,8(sp)
    8000577c:	00004317          	auipc	t1,0x4
    80005780:	77433303          	ld	t1,1908(t1) # 80009ef0 <devsw+0x10>
    80005784:	01010113          	addi	sp,sp,16
    80005788:	00030067          	jr	t1

000000008000578c <console_write>:
    8000578c:	ff010113          	addi	sp,sp,-16
    80005790:	00813423          	sd	s0,8(sp)
    80005794:	01010413          	addi	s0,sp,16
    80005798:	00813403          	ld	s0,8(sp)
    8000579c:	00004317          	auipc	t1,0x4
    800057a0:	75c33303          	ld	t1,1884(t1) # 80009ef8 <devsw+0x18>
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00030067          	jr	t1

00000000800057ac <panic>:
    800057ac:	fe010113          	addi	sp,sp,-32
    800057b0:	00113c23          	sd	ra,24(sp)
    800057b4:	00813823          	sd	s0,16(sp)
    800057b8:	00913423          	sd	s1,8(sp)
    800057bc:	02010413          	addi	s0,sp,32
    800057c0:	00050493          	mv	s1,a0
    800057c4:	00002517          	auipc	a0,0x2
    800057c8:	cdc50513          	addi	a0,a0,-804 # 800074a0 <_ZL6digits+0x158>
    800057cc:	00004797          	auipc	a5,0x4
    800057d0:	7c07a623          	sw	zero,1996(a5) # 80009f98 <pr+0x18>
    800057d4:	00000097          	auipc	ra,0x0
    800057d8:	034080e7          	jalr	52(ra) # 80005808 <__printf>
    800057dc:	00048513          	mv	a0,s1
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	028080e7          	jalr	40(ra) # 80005808 <__printf>
    800057e8:	00002517          	auipc	a0,0x2
    800057ec:	a2050513          	addi	a0,a0,-1504 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    800057f0:	00000097          	auipc	ra,0x0
    800057f4:	018080e7          	jalr	24(ra) # 80005808 <__printf>
    800057f8:	00100793          	li	a5,1
    800057fc:	00003717          	auipc	a4,0x3
    80005800:	4af72623          	sw	a5,1196(a4) # 80008ca8 <panicked>
    80005804:	0000006f          	j	80005804 <panic+0x58>

0000000080005808 <__printf>:
    80005808:	f3010113          	addi	sp,sp,-208
    8000580c:	08813023          	sd	s0,128(sp)
    80005810:	07313423          	sd	s3,104(sp)
    80005814:	09010413          	addi	s0,sp,144
    80005818:	05813023          	sd	s8,64(sp)
    8000581c:	08113423          	sd	ra,136(sp)
    80005820:	06913c23          	sd	s1,120(sp)
    80005824:	07213823          	sd	s2,112(sp)
    80005828:	07413023          	sd	s4,96(sp)
    8000582c:	05513c23          	sd	s5,88(sp)
    80005830:	05613823          	sd	s6,80(sp)
    80005834:	05713423          	sd	s7,72(sp)
    80005838:	03913c23          	sd	s9,56(sp)
    8000583c:	03a13823          	sd	s10,48(sp)
    80005840:	03b13423          	sd	s11,40(sp)
    80005844:	00004317          	auipc	t1,0x4
    80005848:	73c30313          	addi	t1,t1,1852 # 80009f80 <pr>
    8000584c:	01832c03          	lw	s8,24(t1)
    80005850:	00b43423          	sd	a1,8(s0)
    80005854:	00c43823          	sd	a2,16(s0)
    80005858:	00d43c23          	sd	a3,24(s0)
    8000585c:	02e43023          	sd	a4,32(s0)
    80005860:	02f43423          	sd	a5,40(s0)
    80005864:	03043823          	sd	a6,48(s0)
    80005868:	03143c23          	sd	a7,56(s0)
    8000586c:	00050993          	mv	s3,a0
    80005870:	4a0c1663          	bnez	s8,80005d1c <__printf+0x514>
    80005874:	60098c63          	beqz	s3,80005e8c <__printf+0x684>
    80005878:	0009c503          	lbu	a0,0(s3)
    8000587c:	00840793          	addi	a5,s0,8
    80005880:	f6f43c23          	sd	a5,-136(s0)
    80005884:	00000493          	li	s1,0
    80005888:	22050063          	beqz	a0,80005aa8 <__printf+0x2a0>
    8000588c:	00002a37          	lui	s4,0x2
    80005890:	00018ab7          	lui	s5,0x18
    80005894:	000f4b37          	lui	s6,0xf4
    80005898:	00989bb7          	lui	s7,0x989
    8000589c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800058a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800058a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800058a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800058ac:	00148c9b          	addiw	s9,s1,1
    800058b0:	02500793          	li	a5,37
    800058b4:	01998933          	add	s2,s3,s9
    800058b8:	38f51263          	bne	a0,a5,80005c3c <__printf+0x434>
    800058bc:	00094783          	lbu	a5,0(s2)
    800058c0:	00078c9b          	sext.w	s9,a5
    800058c4:	1e078263          	beqz	a5,80005aa8 <__printf+0x2a0>
    800058c8:	0024849b          	addiw	s1,s1,2
    800058cc:	07000713          	li	a4,112
    800058d0:	00998933          	add	s2,s3,s1
    800058d4:	38e78a63          	beq	a5,a4,80005c68 <__printf+0x460>
    800058d8:	20f76863          	bltu	a4,a5,80005ae8 <__printf+0x2e0>
    800058dc:	42a78863          	beq	a5,a0,80005d0c <__printf+0x504>
    800058e0:	06400713          	li	a4,100
    800058e4:	40e79663          	bne	a5,a4,80005cf0 <__printf+0x4e8>
    800058e8:	f7843783          	ld	a5,-136(s0)
    800058ec:	0007a603          	lw	a2,0(a5)
    800058f0:	00878793          	addi	a5,a5,8
    800058f4:	f6f43c23          	sd	a5,-136(s0)
    800058f8:	42064a63          	bltz	a2,80005d2c <__printf+0x524>
    800058fc:	00a00713          	li	a4,10
    80005900:	02e677bb          	remuw	a5,a2,a4
    80005904:	00002d97          	auipc	s11,0x2
    80005908:	bc4d8d93          	addi	s11,s11,-1084 # 800074c8 <digits>
    8000590c:	00900593          	li	a1,9
    80005910:	0006051b          	sext.w	a0,a2
    80005914:	00000c93          	li	s9,0
    80005918:	02079793          	slli	a5,a5,0x20
    8000591c:	0207d793          	srli	a5,a5,0x20
    80005920:	00fd87b3          	add	a5,s11,a5
    80005924:	0007c783          	lbu	a5,0(a5)
    80005928:	02e656bb          	divuw	a3,a2,a4
    8000592c:	f8f40023          	sb	a5,-128(s0)
    80005930:	14c5d863          	bge	a1,a2,80005a80 <__printf+0x278>
    80005934:	06300593          	li	a1,99
    80005938:	00100c93          	li	s9,1
    8000593c:	02e6f7bb          	remuw	a5,a3,a4
    80005940:	02079793          	slli	a5,a5,0x20
    80005944:	0207d793          	srli	a5,a5,0x20
    80005948:	00fd87b3          	add	a5,s11,a5
    8000594c:	0007c783          	lbu	a5,0(a5)
    80005950:	02e6d73b          	divuw	a4,a3,a4
    80005954:	f8f400a3          	sb	a5,-127(s0)
    80005958:	12a5f463          	bgeu	a1,a0,80005a80 <__printf+0x278>
    8000595c:	00a00693          	li	a3,10
    80005960:	00900593          	li	a1,9
    80005964:	02d777bb          	remuw	a5,a4,a3
    80005968:	02079793          	slli	a5,a5,0x20
    8000596c:	0207d793          	srli	a5,a5,0x20
    80005970:	00fd87b3          	add	a5,s11,a5
    80005974:	0007c503          	lbu	a0,0(a5)
    80005978:	02d757bb          	divuw	a5,a4,a3
    8000597c:	f8a40123          	sb	a0,-126(s0)
    80005980:	48e5f263          	bgeu	a1,a4,80005e04 <__printf+0x5fc>
    80005984:	06300513          	li	a0,99
    80005988:	02d7f5bb          	remuw	a1,a5,a3
    8000598c:	02059593          	slli	a1,a1,0x20
    80005990:	0205d593          	srli	a1,a1,0x20
    80005994:	00bd85b3          	add	a1,s11,a1
    80005998:	0005c583          	lbu	a1,0(a1)
    8000599c:	02d7d7bb          	divuw	a5,a5,a3
    800059a0:	f8b401a3          	sb	a1,-125(s0)
    800059a4:	48e57263          	bgeu	a0,a4,80005e28 <__printf+0x620>
    800059a8:	3e700513          	li	a0,999
    800059ac:	02d7f5bb          	remuw	a1,a5,a3
    800059b0:	02059593          	slli	a1,a1,0x20
    800059b4:	0205d593          	srli	a1,a1,0x20
    800059b8:	00bd85b3          	add	a1,s11,a1
    800059bc:	0005c583          	lbu	a1,0(a1)
    800059c0:	02d7d7bb          	divuw	a5,a5,a3
    800059c4:	f8b40223          	sb	a1,-124(s0)
    800059c8:	46e57663          	bgeu	a0,a4,80005e34 <__printf+0x62c>
    800059cc:	02d7f5bb          	remuw	a1,a5,a3
    800059d0:	02059593          	slli	a1,a1,0x20
    800059d4:	0205d593          	srli	a1,a1,0x20
    800059d8:	00bd85b3          	add	a1,s11,a1
    800059dc:	0005c583          	lbu	a1,0(a1)
    800059e0:	02d7d7bb          	divuw	a5,a5,a3
    800059e4:	f8b402a3          	sb	a1,-123(s0)
    800059e8:	46ea7863          	bgeu	s4,a4,80005e58 <__printf+0x650>
    800059ec:	02d7f5bb          	remuw	a1,a5,a3
    800059f0:	02059593          	slli	a1,a1,0x20
    800059f4:	0205d593          	srli	a1,a1,0x20
    800059f8:	00bd85b3          	add	a1,s11,a1
    800059fc:	0005c583          	lbu	a1,0(a1)
    80005a00:	02d7d7bb          	divuw	a5,a5,a3
    80005a04:	f8b40323          	sb	a1,-122(s0)
    80005a08:	3eeaf863          	bgeu	s5,a4,80005df8 <__printf+0x5f0>
    80005a0c:	02d7f5bb          	remuw	a1,a5,a3
    80005a10:	02059593          	slli	a1,a1,0x20
    80005a14:	0205d593          	srli	a1,a1,0x20
    80005a18:	00bd85b3          	add	a1,s11,a1
    80005a1c:	0005c583          	lbu	a1,0(a1)
    80005a20:	02d7d7bb          	divuw	a5,a5,a3
    80005a24:	f8b403a3          	sb	a1,-121(s0)
    80005a28:	42eb7e63          	bgeu	s6,a4,80005e64 <__printf+0x65c>
    80005a2c:	02d7f5bb          	remuw	a1,a5,a3
    80005a30:	02059593          	slli	a1,a1,0x20
    80005a34:	0205d593          	srli	a1,a1,0x20
    80005a38:	00bd85b3          	add	a1,s11,a1
    80005a3c:	0005c583          	lbu	a1,0(a1)
    80005a40:	02d7d7bb          	divuw	a5,a5,a3
    80005a44:	f8b40423          	sb	a1,-120(s0)
    80005a48:	42ebfc63          	bgeu	s7,a4,80005e80 <__printf+0x678>
    80005a4c:	02079793          	slli	a5,a5,0x20
    80005a50:	0207d793          	srli	a5,a5,0x20
    80005a54:	00fd8db3          	add	s11,s11,a5
    80005a58:	000dc703          	lbu	a4,0(s11)
    80005a5c:	00a00793          	li	a5,10
    80005a60:	00900c93          	li	s9,9
    80005a64:	f8e404a3          	sb	a4,-119(s0)
    80005a68:	00065c63          	bgez	a2,80005a80 <__printf+0x278>
    80005a6c:	f9040713          	addi	a4,s0,-112
    80005a70:	00f70733          	add	a4,a4,a5
    80005a74:	02d00693          	li	a3,45
    80005a78:	fed70823          	sb	a3,-16(a4)
    80005a7c:	00078c93          	mv	s9,a5
    80005a80:	f8040793          	addi	a5,s0,-128
    80005a84:	01978cb3          	add	s9,a5,s9
    80005a88:	f7f40d13          	addi	s10,s0,-129
    80005a8c:	000cc503          	lbu	a0,0(s9)
    80005a90:	fffc8c93          	addi	s9,s9,-1
    80005a94:	00000097          	auipc	ra,0x0
    80005a98:	b90080e7          	jalr	-1136(ra) # 80005624 <consputc>
    80005a9c:	ffac98e3          	bne	s9,s10,80005a8c <__printf+0x284>
    80005aa0:	00094503          	lbu	a0,0(s2)
    80005aa4:	e00514e3          	bnez	a0,800058ac <__printf+0xa4>
    80005aa8:	1a0c1663          	bnez	s8,80005c54 <__printf+0x44c>
    80005aac:	08813083          	ld	ra,136(sp)
    80005ab0:	08013403          	ld	s0,128(sp)
    80005ab4:	07813483          	ld	s1,120(sp)
    80005ab8:	07013903          	ld	s2,112(sp)
    80005abc:	06813983          	ld	s3,104(sp)
    80005ac0:	06013a03          	ld	s4,96(sp)
    80005ac4:	05813a83          	ld	s5,88(sp)
    80005ac8:	05013b03          	ld	s6,80(sp)
    80005acc:	04813b83          	ld	s7,72(sp)
    80005ad0:	04013c03          	ld	s8,64(sp)
    80005ad4:	03813c83          	ld	s9,56(sp)
    80005ad8:	03013d03          	ld	s10,48(sp)
    80005adc:	02813d83          	ld	s11,40(sp)
    80005ae0:	0d010113          	addi	sp,sp,208
    80005ae4:	00008067          	ret
    80005ae8:	07300713          	li	a4,115
    80005aec:	1ce78a63          	beq	a5,a4,80005cc0 <__printf+0x4b8>
    80005af0:	07800713          	li	a4,120
    80005af4:	1ee79e63          	bne	a5,a4,80005cf0 <__printf+0x4e8>
    80005af8:	f7843783          	ld	a5,-136(s0)
    80005afc:	0007a703          	lw	a4,0(a5)
    80005b00:	00878793          	addi	a5,a5,8
    80005b04:	f6f43c23          	sd	a5,-136(s0)
    80005b08:	28074263          	bltz	a4,80005d8c <__printf+0x584>
    80005b0c:	00002d97          	auipc	s11,0x2
    80005b10:	9bcd8d93          	addi	s11,s11,-1604 # 800074c8 <digits>
    80005b14:	00f77793          	andi	a5,a4,15
    80005b18:	00fd87b3          	add	a5,s11,a5
    80005b1c:	0007c683          	lbu	a3,0(a5)
    80005b20:	00f00613          	li	a2,15
    80005b24:	0007079b          	sext.w	a5,a4
    80005b28:	f8d40023          	sb	a3,-128(s0)
    80005b2c:	0047559b          	srliw	a1,a4,0x4
    80005b30:	0047569b          	srliw	a3,a4,0x4
    80005b34:	00000c93          	li	s9,0
    80005b38:	0ee65063          	bge	a2,a4,80005c18 <__printf+0x410>
    80005b3c:	00f6f693          	andi	a3,a3,15
    80005b40:	00dd86b3          	add	a3,s11,a3
    80005b44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005b48:	0087d79b          	srliw	a5,a5,0x8
    80005b4c:	00100c93          	li	s9,1
    80005b50:	f8d400a3          	sb	a3,-127(s0)
    80005b54:	0cb67263          	bgeu	a2,a1,80005c18 <__printf+0x410>
    80005b58:	00f7f693          	andi	a3,a5,15
    80005b5c:	00dd86b3          	add	a3,s11,a3
    80005b60:	0006c583          	lbu	a1,0(a3)
    80005b64:	00f00613          	li	a2,15
    80005b68:	0047d69b          	srliw	a3,a5,0x4
    80005b6c:	f8b40123          	sb	a1,-126(s0)
    80005b70:	0047d593          	srli	a1,a5,0x4
    80005b74:	28f67e63          	bgeu	a2,a5,80005e10 <__printf+0x608>
    80005b78:	00f6f693          	andi	a3,a3,15
    80005b7c:	00dd86b3          	add	a3,s11,a3
    80005b80:	0006c503          	lbu	a0,0(a3)
    80005b84:	0087d813          	srli	a6,a5,0x8
    80005b88:	0087d69b          	srliw	a3,a5,0x8
    80005b8c:	f8a401a3          	sb	a0,-125(s0)
    80005b90:	28b67663          	bgeu	a2,a1,80005e1c <__printf+0x614>
    80005b94:	00f6f693          	andi	a3,a3,15
    80005b98:	00dd86b3          	add	a3,s11,a3
    80005b9c:	0006c583          	lbu	a1,0(a3)
    80005ba0:	00c7d513          	srli	a0,a5,0xc
    80005ba4:	00c7d69b          	srliw	a3,a5,0xc
    80005ba8:	f8b40223          	sb	a1,-124(s0)
    80005bac:	29067a63          	bgeu	a2,a6,80005e40 <__printf+0x638>
    80005bb0:	00f6f693          	andi	a3,a3,15
    80005bb4:	00dd86b3          	add	a3,s11,a3
    80005bb8:	0006c583          	lbu	a1,0(a3)
    80005bbc:	0107d813          	srli	a6,a5,0x10
    80005bc0:	0107d69b          	srliw	a3,a5,0x10
    80005bc4:	f8b402a3          	sb	a1,-123(s0)
    80005bc8:	28a67263          	bgeu	a2,a0,80005e4c <__printf+0x644>
    80005bcc:	00f6f693          	andi	a3,a3,15
    80005bd0:	00dd86b3          	add	a3,s11,a3
    80005bd4:	0006c683          	lbu	a3,0(a3)
    80005bd8:	0147d79b          	srliw	a5,a5,0x14
    80005bdc:	f8d40323          	sb	a3,-122(s0)
    80005be0:	21067663          	bgeu	a2,a6,80005dec <__printf+0x5e4>
    80005be4:	02079793          	slli	a5,a5,0x20
    80005be8:	0207d793          	srli	a5,a5,0x20
    80005bec:	00fd8db3          	add	s11,s11,a5
    80005bf0:	000dc683          	lbu	a3,0(s11)
    80005bf4:	00800793          	li	a5,8
    80005bf8:	00700c93          	li	s9,7
    80005bfc:	f8d403a3          	sb	a3,-121(s0)
    80005c00:	00075c63          	bgez	a4,80005c18 <__printf+0x410>
    80005c04:	f9040713          	addi	a4,s0,-112
    80005c08:	00f70733          	add	a4,a4,a5
    80005c0c:	02d00693          	li	a3,45
    80005c10:	fed70823          	sb	a3,-16(a4)
    80005c14:	00078c93          	mv	s9,a5
    80005c18:	f8040793          	addi	a5,s0,-128
    80005c1c:	01978cb3          	add	s9,a5,s9
    80005c20:	f7f40d13          	addi	s10,s0,-129
    80005c24:	000cc503          	lbu	a0,0(s9)
    80005c28:	fffc8c93          	addi	s9,s9,-1
    80005c2c:	00000097          	auipc	ra,0x0
    80005c30:	9f8080e7          	jalr	-1544(ra) # 80005624 <consputc>
    80005c34:	ff9d18e3          	bne	s10,s9,80005c24 <__printf+0x41c>
    80005c38:	0100006f          	j	80005c48 <__printf+0x440>
    80005c3c:	00000097          	auipc	ra,0x0
    80005c40:	9e8080e7          	jalr	-1560(ra) # 80005624 <consputc>
    80005c44:	000c8493          	mv	s1,s9
    80005c48:	00094503          	lbu	a0,0(s2)
    80005c4c:	c60510e3          	bnez	a0,800058ac <__printf+0xa4>
    80005c50:	e40c0ee3          	beqz	s8,80005aac <__printf+0x2a4>
    80005c54:	00004517          	auipc	a0,0x4
    80005c58:	32c50513          	addi	a0,a0,812 # 80009f80 <pr>
    80005c5c:	00001097          	auipc	ra,0x1
    80005c60:	94c080e7          	jalr	-1716(ra) # 800065a8 <release>
    80005c64:	e49ff06f          	j	80005aac <__printf+0x2a4>
    80005c68:	f7843783          	ld	a5,-136(s0)
    80005c6c:	03000513          	li	a0,48
    80005c70:	01000d13          	li	s10,16
    80005c74:	00878713          	addi	a4,a5,8
    80005c78:	0007bc83          	ld	s9,0(a5)
    80005c7c:	f6e43c23          	sd	a4,-136(s0)
    80005c80:	00000097          	auipc	ra,0x0
    80005c84:	9a4080e7          	jalr	-1628(ra) # 80005624 <consputc>
    80005c88:	07800513          	li	a0,120
    80005c8c:	00000097          	auipc	ra,0x0
    80005c90:	998080e7          	jalr	-1640(ra) # 80005624 <consputc>
    80005c94:	00002d97          	auipc	s11,0x2
    80005c98:	834d8d93          	addi	s11,s11,-1996 # 800074c8 <digits>
    80005c9c:	03ccd793          	srli	a5,s9,0x3c
    80005ca0:	00fd87b3          	add	a5,s11,a5
    80005ca4:	0007c503          	lbu	a0,0(a5)
    80005ca8:	fffd0d1b          	addiw	s10,s10,-1
    80005cac:	004c9c93          	slli	s9,s9,0x4
    80005cb0:	00000097          	auipc	ra,0x0
    80005cb4:	974080e7          	jalr	-1676(ra) # 80005624 <consputc>
    80005cb8:	fe0d12e3          	bnez	s10,80005c9c <__printf+0x494>
    80005cbc:	f8dff06f          	j	80005c48 <__printf+0x440>
    80005cc0:	f7843783          	ld	a5,-136(s0)
    80005cc4:	0007bc83          	ld	s9,0(a5)
    80005cc8:	00878793          	addi	a5,a5,8
    80005ccc:	f6f43c23          	sd	a5,-136(s0)
    80005cd0:	000c9a63          	bnez	s9,80005ce4 <__printf+0x4dc>
    80005cd4:	1080006f          	j	80005ddc <__printf+0x5d4>
    80005cd8:	001c8c93          	addi	s9,s9,1
    80005cdc:	00000097          	auipc	ra,0x0
    80005ce0:	948080e7          	jalr	-1720(ra) # 80005624 <consputc>
    80005ce4:	000cc503          	lbu	a0,0(s9)
    80005ce8:	fe0518e3          	bnez	a0,80005cd8 <__printf+0x4d0>
    80005cec:	f5dff06f          	j	80005c48 <__printf+0x440>
    80005cf0:	02500513          	li	a0,37
    80005cf4:	00000097          	auipc	ra,0x0
    80005cf8:	930080e7          	jalr	-1744(ra) # 80005624 <consputc>
    80005cfc:	000c8513          	mv	a0,s9
    80005d00:	00000097          	auipc	ra,0x0
    80005d04:	924080e7          	jalr	-1756(ra) # 80005624 <consputc>
    80005d08:	f41ff06f          	j	80005c48 <__printf+0x440>
    80005d0c:	02500513          	li	a0,37
    80005d10:	00000097          	auipc	ra,0x0
    80005d14:	914080e7          	jalr	-1772(ra) # 80005624 <consputc>
    80005d18:	f31ff06f          	j	80005c48 <__printf+0x440>
    80005d1c:	00030513          	mv	a0,t1
    80005d20:	00000097          	auipc	ra,0x0
    80005d24:	7bc080e7          	jalr	1980(ra) # 800064dc <acquire>
    80005d28:	b4dff06f          	j	80005874 <__printf+0x6c>
    80005d2c:	40c0053b          	negw	a0,a2
    80005d30:	00a00713          	li	a4,10
    80005d34:	02e576bb          	remuw	a3,a0,a4
    80005d38:	00001d97          	auipc	s11,0x1
    80005d3c:	790d8d93          	addi	s11,s11,1936 # 800074c8 <digits>
    80005d40:	ff700593          	li	a1,-9
    80005d44:	02069693          	slli	a3,a3,0x20
    80005d48:	0206d693          	srli	a3,a3,0x20
    80005d4c:	00dd86b3          	add	a3,s11,a3
    80005d50:	0006c683          	lbu	a3,0(a3)
    80005d54:	02e557bb          	divuw	a5,a0,a4
    80005d58:	f8d40023          	sb	a3,-128(s0)
    80005d5c:	10b65e63          	bge	a2,a1,80005e78 <__printf+0x670>
    80005d60:	06300593          	li	a1,99
    80005d64:	02e7f6bb          	remuw	a3,a5,a4
    80005d68:	02069693          	slli	a3,a3,0x20
    80005d6c:	0206d693          	srli	a3,a3,0x20
    80005d70:	00dd86b3          	add	a3,s11,a3
    80005d74:	0006c683          	lbu	a3,0(a3)
    80005d78:	02e7d73b          	divuw	a4,a5,a4
    80005d7c:	00200793          	li	a5,2
    80005d80:	f8d400a3          	sb	a3,-127(s0)
    80005d84:	bca5ece3          	bltu	a1,a0,8000595c <__printf+0x154>
    80005d88:	ce5ff06f          	j	80005a6c <__printf+0x264>
    80005d8c:	40e007bb          	negw	a5,a4
    80005d90:	00001d97          	auipc	s11,0x1
    80005d94:	738d8d93          	addi	s11,s11,1848 # 800074c8 <digits>
    80005d98:	00f7f693          	andi	a3,a5,15
    80005d9c:	00dd86b3          	add	a3,s11,a3
    80005da0:	0006c583          	lbu	a1,0(a3)
    80005da4:	ff100613          	li	a2,-15
    80005da8:	0047d69b          	srliw	a3,a5,0x4
    80005dac:	f8b40023          	sb	a1,-128(s0)
    80005db0:	0047d59b          	srliw	a1,a5,0x4
    80005db4:	0ac75e63          	bge	a4,a2,80005e70 <__printf+0x668>
    80005db8:	00f6f693          	andi	a3,a3,15
    80005dbc:	00dd86b3          	add	a3,s11,a3
    80005dc0:	0006c603          	lbu	a2,0(a3)
    80005dc4:	00f00693          	li	a3,15
    80005dc8:	0087d79b          	srliw	a5,a5,0x8
    80005dcc:	f8c400a3          	sb	a2,-127(s0)
    80005dd0:	d8b6e4e3          	bltu	a3,a1,80005b58 <__printf+0x350>
    80005dd4:	00200793          	li	a5,2
    80005dd8:	e2dff06f          	j	80005c04 <__printf+0x3fc>
    80005ddc:	00001c97          	auipc	s9,0x1
    80005de0:	6ccc8c93          	addi	s9,s9,1740 # 800074a8 <_ZL6digits+0x160>
    80005de4:	02800513          	li	a0,40
    80005de8:	ef1ff06f          	j	80005cd8 <__printf+0x4d0>
    80005dec:	00700793          	li	a5,7
    80005df0:	00600c93          	li	s9,6
    80005df4:	e0dff06f          	j	80005c00 <__printf+0x3f8>
    80005df8:	00700793          	li	a5,7
    80005dfc:	00600c93          	li	s9,6
    80005e00:	c69ff06f          	j	80005a68 <__printf+0x260>
    80005e04:	00300793          	li	a5,3
    80005e08:	00200c93          	li	s9,2
    80005e0c:	c5dff06f          	j	80005a68 <__printf+0x260>
    80005e10:	00300793          	li	a5,3
    80005e14:	00200c93          	li	s9,2
    80005e18:	de9ff06f          	j	80005c00 <__printf+0x3f8>
    80005e1c:	00400793          	li	a5,4
    80005e20:	00300c93          	li	s9,3
    80005e24:	dddff06f          	j	80005c00 <__printf+0x3f8>
    80005e28:	00400793          	li	a5,4
    80005e2c:	00300c93          	li	s9,3
    80005e30:	c39ff06f          	j	80005a68 <__printf+0x260>
    80005e34:	00500793          	li	a5,5
    80005e38:	00400c93          	li	s9,4
    80005e3c:	c2dff06f          	j	80005a68 <__printf+0x260>
    80005e40:	00500793          	li	a5,5
    80005e44:	00400c93          	li	s9,4
    80005e48:	db9ff06f          	j	80005c00 <__printf+0x3f8>
    80005e4c:	00600793          	li	a5,6
    80005e50:	00500c93          	li	s9,5
    80005e54:	dadff06f          	j	80005c00 <__printf+0x3f8>
    80005e58:	00600793          	li	a5,6
    80005e5c:	00500c93          	li	s9,5
    80005e60:	c09ff06f          	j	80005a68 <__printf+0x260>
    80005e64:	00800793          	li	a5,8
    80005e68:	00700c93          	li	s9,7
    80005e6c:	bfdff06f          	j	80005a68 <__printf+0x260>
    80005e70:	00100793          	li	a5,1
    80005e74:	d91ff06f          	j	80005c04 <__printf+0x3fc>
    80005e78:	00100793          	li	a5,1
    80005e7c:	bf1ff06f          	j	80005a6c <__printf+0x264>
    80005e80:	00900793          	li	a5,9
    80005e84:	00800c93          	li	s9,8
    80005e88:	be1ff06f          	j	80005a68 <__printf+0x260>
    80005e8c:	00001517          	auipc	a0,0x1
    80005e90:	62450513          	addi	a0,a0,1572 # 800074b0 <_ZL6digits+0x168>
    80005e94:	00000097          	auipc	ra,0x0
    80005e98:	918080e7          	jalr	-1768(ra) # 800057ac <panic>

0000000080005e9c <printfinit>:
    80005e9c:	fe010113          	addi	sp,sp,-32
    80005ea0:	00813823          	sd	s0,16(sp)
    80005ea4:	00913423          	sd	s1,8(sp)
    80005ea8:	00113c23          	sd	ra,24(sp)
    80005eac:	02010413          	addi	s0,sp,32
    80005eb0:	00004497          	auipc	s1,0x4
    80005eb4:	0d048493          	addi	s1,s1,208 # 80009f80 <pr>
    80005eb8:	00048513          	mv	a0,s1
    80005ebc:	00001597          	auipc	a1,0x1
    80005ec0:	60458593          	addi	a1,a1,1540 # 800074c0 <_ZL6digits+0x178>
    80005ec4:	00000097          	auipc	ra,0x0
    80005ec8:	5f4080e7          	jalr	1524(ra) # 800064b8 <initlock>
    80005ecc:	01813083          	ld	ra,24(sp)
    80005ed0:	01013403          	ld	s0,16(sp)
    80005ed4:	0004ac23          	sw	zero,24(s1)
    80005ed8:	00813483          	ld	s1,8(sp)
    80005edc:	02010113          	addi	sp,sp,32
    80005ee0:	00008067          	ret

0000000080005ee4 <uartinit>:
    80005ee4:	ff010113          	addi	sp,sp,-16
    80005ee8:	00813423          	sd	s0,8(sp)
    80005eec:	01010413          	addi	s0,sp,16
    80005ef0:	100007b7          	lui	a5,0x10000
    80005ef4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005ef8:	f8000713          	li	a4,-128
    80005efc:	00e781a3          	sb	a4,3(a5)
    80005f00:	00300713          	li	a4,3
    80005f04:	00e78023          	sb	a4,0(a5)
    80005f08:	000780a3          	sb	zero,1(a5)
    80005f0c:	00e781a3          	sb	a4,3(a5)
    80005f10:	00700693          	li	a3,7
    80005f14:	00d78123          	sb	a3,2(a5)
    80005f18:	00e780a3          	sb	a4,1(a5)
    80005f1c:	00813403          	ld	s0,8(sp)
    80005f20:	01010113          	addi	sp,sp,16
    80005f24:	00008067          	ret

0000000080005f28 <uartputc>:
    80005f28:	00003797          	auipc	a5,0x3
    80005f2c:	d807a783          	lw	a5,-640(a5) # 80008ca8 <panicked>
    80005f30:	00078463          	beqz	a5,80005f38 <uartputc+0x10>
    80005f34:	0000006f          	j	80005f34 <uartputc+0xc>
    80005f38:	fd010113          	addi	sp,sp,-48
    80005f3c:	02813023          	sd	s0,32(sp)
    80005f40:	00913c23          	sd	s1,24(sp)
    80005f44:	01213823          	sd	s2,16(sp)
    80005f48:	01313423          	sd	s3,8(sp)
    80005f4c:	02113423          	sd	ra,40(sp)
    80005f50:	03010413          	addi	s0,sp,48
    80005f54:	00003917          	auipc	s2,0x3
    80005f58:	d5c90913          	addi	s2,s2,-676 # 80008cb0 <uart_tx_r>
    80005f5c:	00093783          	ld	a5,0(s2)
    80005f60:	00003497          	auipc	s1,0x3
    80005f64:	d5848493          	addi	s1,s1,-680 # 80008cb8 <uart_tx_w>
    80005f68:	0004b703          	ld	a4,0(s1)
    80005f6c:	02078693          	addi	a3,a5,32
    80005f70:	00050993          	mv	s3,a0
    80005f74:	02e69c63          	bne	a3,a4,80005fac <uartputc+0x84>
    80005f78:	00001097          	auipc	ra,0x1
    80005f7c:	834080e7          	jalr	-1996(ra) # 800067ac <push_on>
    80005f80:	00093783          	ld	a5,0(s2)
    80005f84:	0004b703          	ld	a4,0(s1)
    80005f88:	02078793          	addi	a5,a5,32
    80005f8c:	00e79463          	bne	a5,a4,80005f94 <uartputc+0x6c>
    80005f90:	0000006f          	j	80005f90 <uartputc+0x68>
    80005f94:	00001097          	auipc	ra,0x1
    80005f98:	88c080e7          	jalr	-1908(ra) # 80006820 <pop_on>
    80005f9c:	00093783          	ld	a5,0(s2)
    80005fa0:	0004b703          	ld	a4,0(s1)
    80005fa4:	02078693          	addi	a3,a5,32
    80005fa8:	fce688e3          	beq	a3,a4,80005f78 <uartputc+0x50>
    80005fac:	01f77693          	andi	a3,a4,31
    80005fb0:	00004597          	auipc	a1,0x4
    80005fb4:	ff058593          	addi	a1,a1,-16 # 80009fa0 <uart_tx_buf>
    80005fb8:	00d586b3          	add	a3,a1,a3
    80005fbc:	00170713          	addi	a4,a4,1
    80005fc0:	01368023          	sb	s3,0(a3)
    80005fc4:	00e4b023          	sd	a4,0(s1)
    80005fc8:	10000637          	lui	a2,0x10000
    80005fcc:	02f71063          	bne	a4,a5,80005fec <uartputc+0xc4>
    80005fd0:	0340006f          	j	80006004 <uartputc+0xdc>
    80005fd4:	00074703          	lbu	a4,0(a4)
    80005fd8:	00f93023          	sd	a5,0(s2)
    80005fdc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005fe0:	00093783          	ld	a5,0(s2)
    80005fe4:	0004b703          	ld	a4,0(s1)
    80005fe8:	00f70e63          	beq	a4,a5,80006004 <uartputc+0xdc>
    80005fec:	00564683          	lbu	a3,5(a2)
    80005ff0:	01f7f713          	andi	a4,a5,31
    80005ff4:	00e58733          	add	a4,a1,a4
    80005ff8:	0206f693          	andi	a3,a3,32
    80005ffc:	00178793          	addi	a5,a5,1
    80006000:	fc069ae3          	bnez	a3,80005fd4 <uartputc+0xac>
    80006004:	02813083          	ld	ra,40(sp)
    80006008:	02013403          	ld	s0,32(sp)
    8000600c:	01813483          	ld	s1,24(sp)
    80006010:	01013903          	ld	s2,16(sp)
    80006014:	00813983          	ld	s3,8(sp)
    80006018:	03010113          	addi	sp,sp,48
    8000601c:	00008067          	ret

0000000080006020 <uartputc_sync>:
    80006020:	ff010113          	addi	sp,sp,-16
    80006024:	00813423          	sd	s0,8(sp)
    80006028:	01010413          	addi	s0,sp,16
    8000602c:	00003717          	auipc	a4,0x3
    80006030:	c7c72703          	lw	a4,-900(a4) # 80008ca8 <panicked>
    80006034:	02071663          	bnez	a4,80006060 <uartputc_sync+0x40>
    80006038:	00050793          	mv	a5,a0
    8000603c:	100006b7          	lui	a3,0x10000
    80006040:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006044:	02077713          	andi	a4,a4,32
    80006048:	fe070ce3          	beqz	a4,80006040 <uartputc_sync+0x20>
    8000604c:	0ff7f793          	andi	a5,a5,255
    80006050:	00f68023          	sb	a5,0(a3)
    80006054:	00813403          	ld	s0,8(sp)
    80006058:	01010113          	addi	sp,sp,16
    8000605c:	00008067          	ret
    80006060:	0000006f          	j	80006060 <uartputc_sync+0x40>

0000000080006064 <uartstart>:
    80006064:	ff010113          	addi	sp,sp,-16
    80006068:	00813423          	sd	s0,8(sp)
    8000606c:	01010413          	addi	s0,sp,16
    80006070:	00003617          	auipc	a2,0x3
    80006074:	c4060613          	addi	a2,a2,-960 # 80008cb0 <uart_tx_r>
    80006078:	00003517          	auipc	a0,0x3
    8000607c:	c4050513          	addi	a0,a0,-960 # 80008cb8 <uart_tx_w>
    80006080:	00063783          	ld	a5,0(a2)
    80006084:	00053703          	ld	a4,0(a0)
    80006088:	04f70263          	beq	a4,a5,800060cc <uartstart+0x68>
    8000608c:	100005b7          	lui	a1,0x10000
    80006090:	00004817          	auipc	a6,0x4
    80006094:	f1080813          	addi	a6,a6,-240 # 80009fa0 <uart_tx_buf>
    80006098:	01c0006f          	j	800060b4 <uartstart+0x50>
    8000609c:	0006c703          	lbu	a4,0(a3)
    800060a0:	00f63023          	sd	a5,0(a2)
    800060a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800060a8:	00063783          	ld	a5,0(a2)
    800060ac:	00053703          	ld	a4,0(a0)
    800060b0:	00f70e63          	beq	a4,a5,800060cc <uartstart+0x68>
    800060b4:	01f7f713          	andi	a4,a5,31
    800060b8:	00e806b3          	add	a3,a6,a4
    800060bc:	0055c703          	lbu	a4,5(a1)
    800060c0:	00178793          	addi	a5,a5,1
    800060c4:	02077713          	andi	a4,a4,32
    800060c8:	fc071ae3          	bnez	a4,8000609c <uartstart+0x38>
    800060cc:	00813403          	ld	s0,8(sp)
    800060d0:	01010113          	addi	sp,sp,16
    800060d4:	00008067          	ret

00000000800060d8 <uartgetc>:
    800060d8:	ff010113          	addi	sp,sp,-16
    800060dc:	00813423          	sd	s0,8(sp)
    800060e0:	01010413          	addi	s0,sp,16
    800060e4:	10000737          	lui	a4,0x10000
    800060e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800060ec:	0017f793          	andi	a5,a5,1
    800060f0:	00078c63          	beqz	a5,80006108 <uartgetc+0x30>
    800060f4:	00074503          	lbu	a0,0(a4)
    800060f8:	0ff57513          	andi	a0,a0,255
    800060fc:	00813403          	ld	s0,8(sp)
    80006100:	01010113          	addi	sp,sp,16
    80006104:	00008067          	ret
    80006108:	fff00513          	li	a0,-1
    8000610c:	ff1ff06f          	j	800060fc <uartgetc+0x24>

0000000080006110 <uartintr>:
    80006110:	100007b7          	lui	a5,0x10000
    80006114:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006118:	0017f793          	andi	a5,a5,1
    8000611c:	0a078463          	beqz	a5,800061c4 <uartintr+0xb4>
    80006120:	fe010113          	addi	sp,sp,-32
    80006124:	00813823          	sd	s0,16(sp)
    80006128:	00913423          	sd	s1,8(sp)
    8000612c:	00113c23          	sd	ra,24(sp)
    80006130:	02010413          	addi	s0,sp,32
    80006134:	100004b7          	lui	s1,0x10000
    80006138:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000613c:	0ff57513          	andi	a0,a0,255
    80006140:	fffff097          	auipc	ra,0xfffff
    80006144:	534080e7          	jalr	1332(ra) # 80005674 <consoleintr>
    80006148:	0054c783          	lbu	a5,5(s1)
    8000614c:	0017f793          	andi	a5,a5,1
    80006150:	fe0794e3          	bnez	a5,80006138 <uartintr+0x28>
    80006154:	00003617          	auipc	a2,0x3
    80006158:	b5c60613          	addi	a2,a2,-1188 # 80008cb0 <uart_tx_r>
    8000615c:	00003517          	auipc	a0,0x3
    80006160:	b5c50513          	addi	a0,a0,-1188 # 80008cb8 <uart_tx_w>
    80006164:	00063783          	ld	a5,0(a2)
    80006168:	00053703          	ld	a4,0(a0)
    8000616c:	04f70263          	beq	a4,a5,800061b0 <uartintr+0xa0>
    80006170:	100005b7          	lui	a1,0x10000
    80006174:	00004817          	auipc	a6,0x4
    80006178:	e2c80813          	addi	a6,a6,-468 # 80009fa0 <uart_tx_buf>
    8000617c:	01c0006f          	j	80006198 <uartintr+0x88>
    80006180:	0006c703          	lbu	a4,0(a3)
    80006184:	00f63023          	sd	a5,0(a2)
    80006188:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000618c:	00063783          	ld	a5,0(a2)
    80006190:	00053703          	ld	a4,0(a0)
    80006194:	00f70e63          	beq	a4,a5,800061b0 <uartintr+0xa0>
    80006198:	01f7f713          	andi	a4,a5,31
    8000619c:	00e806b3          	add	a3,a6,a4
    800061a0:	0055c703          	lbu	a4,5(a1)
    800061a4:	00178793          	addi	a5,a5,1
    800061a8:	02077713          	andi	a4,a4,32
    800061ac:	fc071ae3          	bnez	a4,80006180 <uartintr+0x70>
    800061b0:	01813083          	ld	ra,24(sp)
    800061b4:	01013403          	ld	s0,16(sp)
    800061b8:	00813483          	ld	s1,8(sp)
    800061bc:	02010113          	addi	sp,sp,32
    800061c0:	00008067          	ret
    800061c4:	00003617          	auipc	a2,0x3
    800061c8:	aec60613          	addi	a2,a2,-1300 # 80008cb0 <uart_tx_r>
    800061cc:	00003517          	auipc	a0,0x3
    800061d0:	aec50513          	addi	a0,a0,-1300 # 80008cb8 <uart_tx_w>
    800061d4:	00063783          	ld	a5,0(a2)
    800061d8:	00053703          	ld	a4,0(a0)
    800061dc:	04f70263          	beq	a4,a5,80006220 <uartintr+0x110>
    800061e0:	100005b7          	lui	a1,0x10000
    800061e4:	00004817          	auipc	a6,0x4
    800061e8:	dbc80813          	addi	a6,a6,-580 # 80009fa0 <uart_tx_buf>
    800061ec:	01c0006f          	j	80006208 <uartintr+0xf8>
    800061f0:	0006c703          	lbu	a4,0(a3)
    800061f4:	00f63023          	sd	a5,0(a2)
    800061f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800061fc:	00063783          	ld	a5,0(a2)
    80006200:	00053703          	ld	a4,0(a0)
    80006204:	02f70063          	beq	a4,a5,80006224 <uartintr+0x114>
    80006208:	01f7f713          	andi	a4,a5,31
    8000620c:	00e806b3          	add	a3,a6,a4
    80006210:	0055c703          	lbu	a4,5(a1)
    80006214:	00178793          	addi	a5,a5,1
    80006218:	02077713          	andi	a4,a4,32
    8000621c:	fc071ae3          	bnez	a4,800061f0 <uartintr+0xe0>
    80006220:	00008067          	ret
    80006224:	00008067          	ret

0000000080006228 <kinit>:
    80006228:	fc010113          	addi	sp,sp,-64
    8000622c:	02913423          	sd	s1,40(sp)
    80006230:	fffff7b7          	lui	a5,0xfffff
    80006234:	00005497          	auipc	s1,0x5
    80006238:	d8b48493          	addi	s1,s1,-629 # 8000afbf <end+0xfff>
    8000623c:	02813823          	sd	s0,48(sp)
    80006240:	01313c23          	sd	s3,24(sp)
    80006244:	00f4f4b3          	and	s1,s1,a5
    80006248:	02113c23          	sd	ra,56(sp)
    8000624c:	03213023          	sd	s2,32(sp)
    80006250:	01413823          	sd	s4,16(sp)
    80006254:	01513423          	sd	s5,8(sp)
    80006258:	04010413          	addi	s0,sp,64
    8000625c:	000017b7          	lui	a5,0x1
    80006260:	01100993          	li	s3,17
    80006264:	00f487b3          	add	a5,s1,a5
    80006268:	01b99993          	slli	s3,s3,0x1b
    8000626c:	06f9e063          	bltu	s3,a5,800062cc <kinit+0xa4>
    80006270:	00004a97          	auipc	s5,0x4
    80006274:	d50a8a93          	addi	s5,s5,-688 # 80009fc0 <end>
    80006278:	0754ec63          	bltu	s1,s5,800062f0 <kinit+0xc8>
    8000627c:	0734fa63          	bgeu	s1,s3,800062f0 <kinit+0xc8>
    80006280:	00088a37          	lui	s4,0x88
    80006284:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006288:	00003917          	auipc	s2,0x3
    8000628c:	a3890913          	addi	s2,s2,-1480 # 80008cc0 <kmem>
    80006290:	00ca1a13          	slli	s4,s4,0xc
    80006294:	0140006f          	j	800062a8 <kinit+0x80>
    80006298:	000017b7          	lui	a5,0x1
    8000629c:	00f484b3          	add	s1,s1,a5
    800062a0:	0554e863          	bltu	s1,s5,800062f0 <kinit+0xc8>
    800062a4:	0534f663          	bgeu	s1,s3,800062f0 <kinit+0xc8>
    800062a8:	00001637          	lui	a2,0x1
    800062ac:	00100593          	li	a1,1
    800062b0:	00048513          	mv	a0,s1
    800062b4:	00000097          	auipc	ra,0x0
    800062b8:	5e4080e7          	jalr	1508(ra) # 80006898 <__memset>
    800062bc:	00093783          	ld	a5,0(s2)
    800062c0:	00f4b023          	sd	a5,0(s1)
    800062c4:	00993023          	sd	s1,0(s2)
    800062c8:	fd4498e3          	bne	s1,s4,80006298 <kinit+0x70>
    800062cc:	03813083          	ld	ra,56(sp)
    800062d0:	03013403          	ld	s0,48(sp)
    800062d4:	02813483          	ld	s1,40(sp)
    800062d8:	02013903          	ld	s2,32(sp)
    800062dc:	01813983          	ld	s3,24(sp)
    800062e0:	01013a03          	ld	s4,16(sp)
    800062e4:	00813a83          	ld	s5,8(sp)
    800062e8:	04010113          	addi	sp,sp,64
    800062ec:	00008067          	ret
    800062f0:	00001517          	auipc	a0,0x1
    800062f4:	1f050513          	addi	a0,a0,496 # 800074e0 <digits+0x18>
    800062f8:	fffff097          	auipc	ra,0xfffff
    800062fc:	4b4080e7          	jalr	1204(ra) # 800057ac <panic>

0000000080006300 <freerange>:
    80006300:	fc010113          	addi	sp,sp,-64
    80006304:	000017b7          	lui	a5,0x1
    80006308:	02913423          	sd	s1,40(sp)
    8000630c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006310:	009504b3          	add	s1,a0,s1
    80006314:	fffff537          	lui	a0,0xfffff
    80006318:	02813823          	sd	s0,48(sp)
    8000631c:	02113c23          	sd	ra,56(sp)
    80006320:	03213023          	sd	s2,32(sp)
    80006324:	01313c23          	sd	s3,24(sp)
    80006328:	01413823          	sd	s4,16(sp)
    8000632c:	01513423          	sd	s5,8(sp)
    80006330:	01613023          	sd	s6,0(sp)
    80006334:	04010413          	addi	s0,sp,64
    80006338:	00a4f4b3          	and	s1,s1,a0
    8000633c:	00f487b3          	add	a5,s1,a5
    80006340:	06f5e463          	bltu	a1,a5,800063a8 <freerange+0xa8>
    80006344:	00004a97          	auipc	s5,0x4
    80006348:	c7ca8a93          	addi	s5,s5,-900 # 80009fc0 <end>
    8000634c:	0954e263          	bltu	s1,s5,800063d0 <freerange+0xd0>
    80006350:	01100993          	li	s3,17
    80006354:	01b99993          	slli	s3,s3,0x1b
    80006358:	0734fc63          	bgeu	s1,s3,800063d0 <freerange+0xd0>
    8000635c:	00058a13          	mv	s4,a1
    80006360:	00003917          	auipc	s2,0x3
    80006364:	96090913          	addi	s2,s2,-1696 # 80008cc0 <kmem>
    80006368:	00002b37          	lui	s6,0x2
    8000636c:	0140006f          	j	80006380 <freerange+0x80>
    80006370:	000017b7          	lui	a5,0x1
    80006374:	00f484b3          	add	s1,s1,a5
    80006378:	0554ec63          	bltu	s1,s5,800063d0 <freerange+0xd0>
    8000637c:	0534fa63          	bgeu	s1,s3,800063d0 <freerange+0xd0>
    80006380:	00001637          	lui	a2,0x1
    80006384:	00100593          	li	a1,1
    80006388:	00048513          	mv	a0,s1
    8000638c:	00000097          	auipc	ra,0x0
    80006390:	50c080e7          	jalr	1292(ra) # 80006898 <__memset>
    80006394:	00093703          	ld	a4,0(s2)
    80006398:	016487b3          	add	a5,s1,s6
    8000639c:	00e4b023          	sd	a4,0(s1)
    800063a0:	00993023          	sd	s1,0(s2)
    800063a4:	fcfa76e3          	bgeu	s4,a5,80006370 <freerange+0x70>
    800063a8:	03813083          	ld	ra,56(sp)
    800063ac:	03013403          	ld	s0,48(sp)
    800063b0:	02813483          	ld	s1,40(sp)
    800063b4:	02013903          	ld	s2,32(sp)
    800063b8:	01813983          	ld	s3,24(sp)
    800063bc:	01013a03          	ld	s4,16(sp)
    800063c0:	00813a83          	ld	s5,8(sp)
    800063c4:	00013b03          	ld	s6,0(sp)
    800063c8:	04010113          	addi	sp,sp,64
    800063cc:	00008067          	ret
    800063d0:	00001517          	auipc	a0,0x1
    800063d4:	11050513          	addi	a0,a0,272 # 800074e0 <digits+0x18>
    800063d8:	fffff097          	auipc	ra,0xfffff
    800063dc:	3d4080e7          	jalr	980(ra) # 800057ac <panic>

00000000800063e0 <kfree>:
    800063e0:	fe010113          	addi	sp,sp,-32
    800063e4:	00813823          	sd	s0,16(sp)
    800063e8:	00113c23          	sd	ra,24(sp)
    800063ec:	00913423          	sd	s1,8(sp)
    800063f0:	02010413          	addi	s0,sp,32
    800063f4:	03451793          	slli	a5,a0,0x34
    800063f8:	04079c63          	bnez	a5,80006450 <kfree+0x70>
    800063fc:	00004797          	auipc	a5,0x4
    80006400:	bc478793          	addi	a5,a5,-1084 # 80009fc0 <end>
    80006404:	00050493          	mv	s1,a0
    80006408:	04f56463          	bltu	a0,a5,80006450 <kfree+0x70>
    8000640c:	01100793          	li	a5,17
    80006410:	01b79793          	slli	a5,a5,0x1b
    80006414:	02f57e63          	bgeu	a0,a5,80006450 <kfree+0x70>
    80006418:	00001637          	lui	a2,0x1
    8000641c:	00100593          	li	a1,1
    80006420:	00000097          	auipc	ra,0x0
    80006424:	478080e7          	jalr	1144(ra) # 80006898 <__memset>
    80006428:	00003797          	auipc	a5,0x3
    8000642c:	89878793          	addi	a5,a5,-1896 # 80008cc0 <kmem>
    80006430:	0007b703          	ld	a4,0(a5)
    80006434:	01813083          	ld	ra,24(sp)
    80006438:	01013403          	ld	s0,16(sp)
    8000643c:	00e4b023          	sd	a4,0(s1)
    80006440:	0097b023          	sd	s1,0(a5)
    80006444:	00813483          	ld	s1,8(sp)
    80006448:	02010113          	addi	sp,sp,32
    8000644c:	00008067          	ret
    80006450:	00001517          	auipc	a0,0x1
    80006454:	09050513          	addi	a0,a0,144 # 800074e0 <digits+0x18>
    80006458:	fffff097          	auipc	ra,0xfffff
    8000645c:	354080e7          	jalr	852(ra) # 800057ac <panic>

0000000080006460 <kalloc>:
    80006460:	fe010113          	addi	sp,sp,-32
    80006464:	00813823          	sd	s0,16(sp)
    80006468:	00913423          	sd	s1,8(sp)
    8000646c:	00113c23          	sd	ra,24(sp)
    80006470:	02010413          	addi	s0,sp,32
    80006474:	00003797          	auipc	a5,0x3
    80006478:	84c78793          	addi	a5,a5,-1972 # 80008cc0 <kmem>
    8000647c:	0007b483          	ld	s1,0(a5)
    80006480:	02048063          	beqz	s1,800064a0 <kalloc+0x40>
    80006484:	0004b703          	ld	a4,0(s1)
    80006488:	00001637          	lui	a2,0x1
    8000648c:	00500593          	li	a1,5
    80006490:	00048513          	mv	a0,s1
    80006494:	00e7b023          	sd	a4,0(a5)
    80006498:	00000097          	auipc	ra,0x0
    8000649c:	400080e7          	jalr	1024(ra) # 80006898 <__memset>
    800064a0:	01813083          	ld	ra,24(sp)
    800064a4:	01013403          	ld	s0,16(sp)
    800064a8:	00048513          	mv	a0,s1
    800064ac:	00813483          	ld	s1,8(sp)
    800064b0:	02010113          	addi	sp,sp,32
    800064b4:	00008067          	ret

00000000800064b8 <initlock>:
    800064b8:	ff010113          	addi	sp,sp,-16
    800064bc:	00813423          	sd	s0,8(sp)
    800064c0:	01010413          	addi	s0,sp,16
    800064c4:	00813403          	ld	s0,8(sp)
    800064c8:	00b53423          	sd	a1,8(a0)
    800064cc:	00052023          	sw	zero,0(a0)
    800064d0:	00053823          	sd	zero,16(a0)
    800064d4:	01010113          	addi	sp,sp,16
    800064d8:	00008067          	ret

00000000800064dc <acquire>:
    800064dc:	fe010113          	addi	sp,sp,-32
    800064e0:	00813823          	sd	s0,16(sp)
    800064e4:	00913423          	sd	s1,8(sp)
    800064e8:	00113c23          	sd	ra,24(sp)
    800064ec:	01213023          	sd	s2,0(sp)
    800064f0:	02010413          	addi	s0,sp,32
    800064f4:	00050493          	mv	s1,a0
    800064f8:	10002973          	csrr	s2,sstatus
    800064fc:	100027f3          	csrr	a5,sstatus
    80006500:	ffd7f793          	andi	a5,a5,-3
    80006504:	10079073          	csrw	sstatus,a5
    80006508:	fffff097          	auipc	ra,0xfffff
    8000650c:	8e0080e7          	jalr	-1824(ra) # 80004de8 <mycpu>
    80006510:	07852783          	lw	a5,120(a0)
    80006514:	06078e63          	beqz	a5,80006590 <acquire+0xb4>
    80006518:	fffff097          	auipc	ra,0xfffff
    8000651c:	8d0080e7          	jalr	-1840(ra) # 80004de8 <mycpu>
    80006520:	07852783          	lw	a5,120(a0)
    80006524:	0004a703          	lw	a4,0(s1)
    80006528:	0017879b          	addiw	a5,a5,1
    8000652c:	06f52c23          	sw	a5,120(a0)
    80006530:	04071063          	bnez	a4,80006570 <acquire+0x94>
    80006534:	00100713          	li	a4,1
    80006538:	00070793          	mv	a5,a4
    8000653c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006540:	0007879b          	sext.w	a5,a5
    80006544:	fe079ae3          	bnez	a5,80006538 <acquire+0x5c>
    80006548:	0ff0000f          	fence
    8000654c:	fffff097          	auipc	ra,0xfffff
    80006550:	89c080e7          	jalr	-1892(ra) # 80004de8 <mycpu>
    80006554:	01813083          	ld	ra,24(sp)
    80006558:	01013403          	ld	s0,16(sp)
    8000655c:	00a4b823          	sd	a0,16(s1)
    80006560:	00013903          	ld	s2,0(sp)
    80006564:	00813483          	ld	s1,8(sp)
    80006568:	02010113          	addi	sp,sp,32
    8000656c:	00008067          	ret
    80006570:	0104b903          	ld	s2,16(s1)
    80006574:	fffff097          	auipc	ra,0xfffff
    80006578:	874080e7          	jalr	-1932(ra) # 80004de8 <mycpu>
    8000657c:	faa91ce3          	bne	s2,a0,80006534 <acquire+0x58>
    80006580:	00001517          	auipc	a0,0x1
    80006584:	f6850513          	addi	a0,a0,-152 # 800074e8 <digits+0x20>
    80006588:	fffff097          	auipc	ra,0xfffff
    8000658c:	224080e7          	jalr	548(ra) # 800057ac <panic>
    80006590:	00195913          	srli	s2,s2,0x1
    80006594:	fffff097          	auipc	ra,0xfffff
    80006598:	854080e7          	jalr	-1964(ra) # 80004de8 <mycpu>
    8000659c:	00197913          	andi	s2,s2,1
    800065a0:	07252e23          	sw	s2,124(a0)
    800065a4:	f75ff06f          	j	80006518 <acquire+0x3c>

00000000800065a8 <release>:
    800065a8:	fe010113          	addi	sp,sp,-32
    800065ac:	00813823          	sd	s0,16(sp)
    800065b0:	00113c23          	sd	ra,24(sp)
    800065b4:	00913423          	sd	s1,8(sp)
    800065b8:	01213023          	sd	s2,0(sp)
    800065bc:	02010413          	addi	s0,sp,32
    800065c0:	00052783          	lw	a5,0(a0)
    800065c4:	00079a63          	bnez	a5,800065d8 <release+0x30>
    800065c8:	00001517          	auipc	a0,0x1
    800065cc:	f2850513          	addi	a0,a0,-216 # 800074f0 <digits+0x28>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	1dc080e7          	jalr	476(ra) # 800057ac <panic>
    800065d8:	01053903          	ld	s2,16(a0)
    800065dc:	00050493          	mv	s1,a0
    800065e0:	fffff097          	auipc	ra,0xfffff
    800065e4:	808080e7          	jalr	-2040(ra) # 80004de8 <mycpu>
    800065e8:	fea910e3          	bne	s2,a0,800065c8 <release+0x20>
    800065ec:	0004b823          	sd	zero,16(s1)
    800065f0:	0ff0000f          	fence
    800065f4:	0f50000f          	fence	iorw,ow
    800065f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800065fc:	ffffe097          	auipc	ra,0xffffe
    80006600:	7ec080e7          	jalr	2028(ra) # 80004de8 <mycpu>
    80006604:	100027f3          	csrr	a5,sstatus
    80006608:	0027f793          	andi	a5,a5,2
    8000660c:	04079a63          	bnez	a5,80006660 <release+0xb8>
    80006610:	07852783          	lw	a5,120(a0)
    80006614:	02f05e63          	blez	a5,80006650 <release+0xa8>
    80006618:	fff7871b          	addiw	a4,a5,-1
    8000661c:	06e52c23          	sw	a4,120(a0)
    80006620:	00071c63          	bnez	a4,80006638 <release+0x90>
    80006624:	07c52783          	lw	a5,124(a0)
    80006628:	00078863          	beqz	a5,80006638 <release+0x90>
    8000662c:	100027f3          	csrr	a5,sstatus
    80006630:	0027e793          	ori	a5,a5,2
    80006634:	10079073          	csrw	sstatus,a5
    80006638:	01813083          	ld	ra,24(sp)
    8000663c:	01013403          	ld	s0,16(sp)
    80006640:	00813483          	ld	s1,8(sp)
    80006644:	00013903          	ld	s2,0(sp)
    80006648:	02010113          	addi	sp,sp,32
    8000664c:	00008067          	ret
    80006650:	00001517          	auipc	a0,0x1
    80006654:	ec050513          	addi	a0,a0,-320 # 80007510 <digits+0x48>
    80006658:	fffff097          	auipc	ra,0xfffff
    8000665c:	154080e7          	jalr	340(ra) # 800057ac <panic>
    80006660:	00001517          	auipc	a0,0x1
    80006664:	e9850513          	addi	a0,a0,-360 # 800074f8 <digits+0x30>
    80006668:	fffff097          	auipc	ra,0xfffff
    8000666c:	144080e7          	jalr	324(ra) # 800057ac <panic>

0000000080006670 <holding>:
    80006670:	00052783          	lw	a5,0(a0)
    80006674:	00079663          	bnez	a5,80006680 <holding+0x10>
    80006678:	00000513          	li	a0,0
    8000667c:	00008067          	ret
    80006680:	fe010113          	addi	sp,sp,-32
    80006684:	00813823          	sd	s0,16(sp)
    80006688:	00913423          	sd	s1,8(sp)
    8000668c:	00113c23          	sd	ra,24(sp)
    80006690:	02010413          	addi	s0,sp,32
    80006694:	01053483          	ld	s1,16(a0)
    80006698:	ffffe097          	auipc	ra,0xffffe
    8000669c:	750080e7          	jalr	1872(ra) # 80004de8 <mycpu>
    800066a0:	01813083          	ld	ra,24(sp)
    800066a4:	01013403          	ld	s0,16(sp)
    800066a8:	40a48533          	sub	a0,s1,a0
    800066ac:	00153513          	seqz	a0,a0
    800066b0:	00813483          	ld	s1,8(sp)
    800066b4:	02010113          	addi	sp,sp,32
    800066b8:	00008067          	ret

00000000800066bc <push_off>:
    800066bc:	fe010113          	addi	sp,sp,-32
    800066c0:	00813823          	sd	s0,16(sp)
    800066c4:	00113c23          	sd	ra,24(sp)
    800066c8:	00913423          	sd	s1,8(sp)
    800066cc:	02010413          	addi	s0,sp,32
    800066d0:	100024f3          	csrr	s1,sstatus
    800066d4:	100027f3          	csrr	a5,sstatus
    800066d8:	ffd7f793          	andi	a5,a5,-3
    800066dc:	10079073          	csrw	sstatus,a5
    800066e0:	ffffe097          	auipc	ra,0xffffe
    800066e4:	708080e7          	jalr	1800(ra) # 80004de8 <mycpu>
    800066e8:	07852783          	lw	a5,120(a0)
    800066ec:	02078663          	beqz	a5,80006718 <push_off+0x5c>
    800066f0:	ffffe097          	auipc	ra,0xffffe
    800066f4:	6f8080e7          	jalr	1784(ra) # 80004de8 <mycpu>
    800066f8:	07852783          	lw	a5,120(a0)
    800066fc:	01813083          	ld	ra,24(sp)
    80006700:	01013403          	ld	s0,16(sp)
    80006704:	0017879b          	addiw	a5,a5,1
    80006708:	06f52c23          	sw	a5,120(a0)
    8000670c:	00813483          	ld	s1,8(sp)
    80006710:	02010113          	addi	sp,sp,32
    80006714:	00008067          	ret
    80006718:	0014d493          	srli	s1,s1,0x1
    8000671c:	ffffe097          	auipc	ra,0xffffe
    80006720:	6cc080e7          	jalr	1740(ra) # 80004de8 <mycpu>
    80006724:	0014f493          	andi	s1,s1,1
    80006728:	06952e23          	sw	s1,124(a0)
    8000672c:	fc5ff06f          	j	800066f0 <push_off+0x34>

0000000080006730 <pop_off>:
    80006730:	ff010113          	addi	sp,sp,-16
    80006734:	00813023          	sd	s0,0(sp)
    80006738:	00113423          	sd	ra,8(sp)
    8000673c:	01010413          	addi	s0,sp,16
    80006740:	ffffe097          	auipc	ra,0xffffe
    80006744:	6a8080e7          	jalr	1704(ra) # 80004de8 <mycpu>
    80006748:	100027f3          	csrr	a5,sstatus
    8000674c:	0027f793          	andi	a5,a5,2
    80006750:	04079663          	bnez	a5,8000679c <pop_off+0x6c>
    80006754:	07852783          	lw	a5,120(a0)
    80006758:	02f05a63          	blez	a5,8000678c <pop_off+0x5c>
    8000675c:	fff7871b          	addiw	a4,a5,-1
    80006760:	06e52c23          	sw	a4,120(a0)
    80006764:	00071c63          	bnez	a4,8000677c <pop_off+0x4c>
    80006768:	07c52783          	lw	a5,124(a0)
    8000676c:	00078863          	beqz	a5,8000677c <pop_off+0x4c>
    80006770:	100027f3          	csrr	a5,sstatus
    80006774:	0027e793          	ori	a5,a5,2
    80006778:	10079073          	csrw	sstatus,a5
    8000677c:	00813083          	ld	ra,8(sp)
    80006780:	00013403          	ld	s0,0(sp)
    80006784:	01010113          	addi	sp,sp,16
    80006788:	00008067          	ret
    8000678c:	00001517          	auipc	a0,0x1
    80006790:	d8450513          	addi	a0,a0,-636 # 80007510 <digits+0x48>
    80006794:	fffff097          	auipc	ra,0xfffff
    80006798:	018080e7          	jalr	24(ra) # 800057ac <panic>
    8000679c:	00001517          	auipc	a0,0x1
    800067a0:	d5c50513          	addi	a0,a0,-676 # 800074f8 <digits+0x30>
    800067a4:	fffff097          	auipc	ra,0xfffff
    800067a8:	008080e7          	jalr	8(ra) # 800057ac <panic>

00000000800067ac <push_on>:
    800067ac:	fe010113          	addi	sp,sp,-32
    800067b0:	00813823          	sd	s0,16(sp)
    800067b4:	00113c23          	sd	ra,24(sp)
    800067b8:	00913423          	sd	s1,8(sp)
    800067bc:	02010413          	addi	s0,sp,32
    800067c0:	100024f3          	csrr	s1,sstatus
    800067c4:	100027f3          	csrr	a5,sstatus
    800067c8:	0027e793          	ori	a5,a5,2
    800067cc:	10079073          	csrw	sstatus,a5
    800067d0:	ffffe097          	auipc	ra,0xffffe
    800067d4:	618080e7          	jalr	1560(ra) # 80004de8 <mycpu>
    800067d8:	07852783          	lw	a5,120(a0)
    800067dc:	02078663          	beqz	a5,80006808 <push_on+0x5c>
    800067e0:	ffffe097          	auipc	ra,0xffffe
    800067e4:	608080e7          	jalr	1544(ra) # 80004de8 <mycpu>
    800067e8:	07852783          	lw	a5,120(a0)
    800067ec:	01813083          	ld	ra,24(sp)
    800067f0:	01013403          	ld	s0,16(sp)
    800067f4:	0017879b          	addiw	a5,a5,1
    800067f8:	06f52c23          	sw	a5,120(a0)
    800067fc:	00813483          	ld	s1,8(sp)
    80006800:	02010113          	addi	sp,sp,32
    80006804:	00008067          	ret
    80006808:	0014d493          	srli	s1,s1,0x1
    8000680c:	ffffe097          	auipc	ra,0xffffe
    80006810:	5dc080e7          	jalr	1500(ra) # 80004de8 <mycpu>
    80006814:	0014f493          	andi	s1,s1,1
    80006818:	06952e23          	sw	s1,124(a0)
    8000681c:	fc5ff06f          	j	800067e0 <push_on+0x34>

0000000080006820 <pop_on>:
    80006820:	ff010113          	addi	sp,sp,-16
    80006824:	00813023          	sd	s0,0(sp)
    80006828:	00113423          	sd	ra,8(sp)
    8000682c:	01010413          	addi	s0,sp,16
    80006830:	ffffe097          	auipc	ra,0xffffe
    80006834:	5b8080e7          	jalr	1464(ra) # 80004de8 <mycpu>
    80006838:	100027f3          	csrr	a5,sstatus
    8000683c:	0027f793          	andi	a5,a5,2
    80006840:	04078463          	beqz	a5,80006888 <pop_on+0x68>
    80006844:	07852783          	lw	a5,120(a0)
    80006848:	02f05863          	blez	a5,80006878 <pop_on+0x58>
    8000684c:	fff7879b          	addiw	a5,a5,-1
    80006850:	06f52c23          	sw	a5,120(a0)
    80006854:	07853783          	ld	a5,120(a0)
    80006858:	00079863          	bnez	a5,80006868 <pop_on+0x48>
    8000685c:	100027f3          	csrr	a5,sstatus
    80006860:	ffd7f793          	andi	a5,a5,-3
    80006864:	10079073          	csrw	sstatus,a5
    80006868:	00813083          	ld	ra,8(sp)
    8000686c:	00013403          	ld	s0,0(sp)
    80006870:	01010113          	addi	sp,sp,16
    80006874:	00008067          	ret
    80006878:	00001517          	auipc	a0,0x1
    8000687c:	cc050513          	addi	a0,a0,-832 # 80007538 <digits+0x70>
    80006880:	fffff097          	auipc	ra,0xfffff
    80006884:	f2c080e7          	jalr	-212(ra) # 800057ac <panic>
    80006888:	00001517          	auipc	a0,0x1
    8000688c:	c9050513          	addi	a0,a0,-880 # 80007518 <digits+0x50>
    80006890:	fffff097          	auipc	ra,0xfffff
    80006894:	f1c080e7          	jalr	-228(ra) # 800057ac <panic>

0000000080006898 <__memset>:
    80006898:	ff010113          	addi	sp,sp,-16
    8000689c:	00813423          	sd	s0,8(sp)
    800068a0:	01010413          	addi	s0,sp,16
    800068a4:	1a060e63          	beqz	a2,80006a60 <__memset+0x1c8>
    800068a8:	40a007b3          	neg	a5,a0
    800068ac:	0077f793          	andi	a5,a5,7
    800068b0:	00778693          	addi	a3,a5,7
    800068b4:	00b00813          	li	a6,11
    800068b8:	0ff5f593          	andi	a1,a1,255
    800068bc:	fff6071b          	addiw	a4,a2,-1
    800068c0:	1b06e663          	bltu	a3,a6,80006a6c <__memset+0x1d4>
    800068c4:	1cd76463          	bltu	a4,a3,80006a8c <__memset+0x1f4>
    800068c8:	1a078e63          	beqz	a5,80006a84 <__memset+0x1ec>
    800068cc:	00b50023          	sb	a1,0(a0)
    800068d0:	00100713          	li	a4,1
    800068d4:	1ae78463          	beq	a5,a4,80006a7c <__memset+0x1e4>
    800068d8:	00b500a3          	sb	a1,1(a0)
    800068dc:	00200713          	li	a4,2
    800068e0:	1ae78a63          	beq	a5,a4,80006a94 <__memset+0x1fc>
    800068e4:	00b50123          	sb	a1,2(a0)
    800068e8:	00300713          	li	a4,3
    800068ec:	18e78463          	beq	a5,a4,80006a74 <__memset+0x1dc>
    800068f0:	00b501a3          	sb	a1,3(a0)
    800068f4:	00400713          	li	a4,4
    800068f8:	1ae78263          	beq	a5,a4,80006a9c <__memset+0x204>
    800068fc:	00b50223          	sb	a1,4(a0)
    80006900:	00500713          	li	a4,5
    80006904:	1ae78063          	beq	a5,a4,80006aa4 <__memset+0x20c>
    80006908:	00b502a3          	sb	a1,5(a0)
    8000690c:	00700713          	li	a4,7
    80006910:	18e79e63          	bne	a5,a4,80006aac <__memset+0x214>
    80006914:	00b50323          	sb	a1,6(a0)
    80006918:	00700e93          	li	t4,7
    8000691c:	00859713          	slli	a4,a1,0x8
    80006920:	00e5e733          	or	a4,a1,a4
    80006924:	01059e13          	slli	t3,a1,0x10
    80006928:	01c76e33          	or	t3,a4,t3
    8000692c:	01859313          	slli	t1,a1,0x18
    80006930:	006e6333          	or	t1,t3,t1
    80006934:	02059893          	slli	a7,a1,0x20
    80006938:	40f60e3b          	subw	t3,a2,a5
    8000693c:	011368b3          	or	a7,t1,a7
    80006940:	02859813          	slli	a6,a1,0x28
    80006944:	0108e833          	or	a6,a7,a6
    80006948:	03059693          	slli	a3,a1,0x30
    8000694c:	003e589b          	srliw	a7,t3,0x3
    80006950:	00d866b3          	or	a3,a6,a3
    80006954:	03859713          	slli	a4,a1,0x38
    80006958:	00389813          	slli	a6,a7,0x3
    8000695c:	00f507b3          	add	a5,a0,a5
    80006960:	00e6e733          	or	a4,a3,a4
    80006964:	000e089b          	sext.w	a7,t3
    80006968:	00f806b3          	add	a3,a6,a5
    8000696c:	00e7b023          	sd	a4,0(a5)
    80006970:	00878793          	addi	a5,a5,8
    80006974:	fed79ce3          	bne	a5,a3,8000696c <__memset+0xd4>
    80006978:	ff8e7793          	andi	a5,t3,-8
    8000697c:	0007871b          	sext.w	a4,a5
    80006980:	01d787bb          	addw	a5,a5,t4
    80006984:	0ce88e63          	beq	a7,a4,80006a60 <__memset+0x1c8>
    80006988:	00f50733          	add	a4,a0,a5
    8000698c:	00b70023          	sb	a1,0(a4)
    80006990:	0017871b          	addiw	a4,a5,1
    80006994:	0cc77663          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    80006998:	00e50733          	add	a4,a0,a4
    8000699c:	00b70023          	sb	a1,0(a4)
    800069a0:	0027871b          	addiw	a4,a5,2
    800069a4:	0ac77e63          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    800069a8:	00e50733          	add	a4,a0,a4
    800069ac:	00b70023          	sb	a1,0(a4)
    800069b0:	0037871b          	addiw	a4,a5,3
    800069b4:	0ac77663          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    800069b8:	00e50733          	add	a4,a0,a4
    800069bc:	00b70023          	sb	a1,0(a4)
    800069c0:	0047871b          	addiw	a4,a5,4
    800069c4:	08c77e63          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    800069c8:	00e50733          	add	a4,a0,a4
    800069cc:	00b70023          	sb	a1,0(a4)
    800069d0:	0057871b          	addiw	a4,a5,5
    800069d4:	08c77663          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    800069d8:	00e50733          	add	a4,a0,a4
    800069dc:	00b70023          	sb	a1,0(a4)
    800069e0:	0067871b          	addiw	a4,a5,6
    800069e4:	06c77e63          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    800069e8:	00e50733          	add	a4,a0,a4
    800069ec:	00b70023          	sb	a1,0(a4)
    800069f0:	0077871b          	addiw	a4,a5,7
    800069f4:	06c77663          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    800069f8:	00e50733          	add	a4,a0,a4
    800069fc:	00b70023          	sb	a1,0(a4)
    80006a00:	0087871b          	addiw	a4,a5,8
    80006a04:	04c77e63          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    80006a08:	00e50733          	add	a4,a0,a4
    80006a0c:	00b70023          	sb	a1,0(a4)
    80006a10:	0097871b          	addiw	a4,a5,9
    80006a14:	04c77663          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    80006a18:	00e50733          	add	a4,a0,a4
    80006a1c:	00b70023          	sb	a1,0(a4)
    80006a20:	00a7871b          	addiw	a4,a5,10
    80006a24:	02c77e63          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    80006a28:	00e50733          	add	a4,a0,a4
    80006a2c:	00b70023          	sb	a1,0(a4)
    80006a30:	00b7871b          	addiw	a4,a5,11
    80006a34:	02c77663          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    80006a38:	00e50733          	add	a4,a0,a4
    80006a3c:	00b70023          	sb	a1,0(a4)
    80006a40:	00c7871b          	addiw	a4,a5,12
    80006a44:	00c77e63          	bgeu	a4,a2,80006a60 <__memset+0x1c8>
    80006a48:	00e50733          	add	a4,a0,a4
    80006a4c:	00b70023          	sb	a1,0(a4)
    80006a50:	00d7879b          	addiw	a5,a5,13
    80006a54:	00c7f663          	bgeu	a5,a2,80006a60 <__memset+0x1c8>
    80006a58:	00f507b3          	add	a5,a0,a5
    80006a5c:	00b78023          	sb	a1,0(a5)
    80006a60:	00813403          	ld	s0,8(sp)
    80006a64:	01010113          	addi	sp,sp,16
    80006a68:	00008067          	ret
    80006a6c:	00b00693          	li	a3,11
    80006a70:	e55ff06f          	j	800068c4 <__memset+0x2c>
    80006a74:	00300e93          	li	t4,3
    80006a78:	ea5ff06f          	j	8000691c <__memset+0x84>
    80006a7c:	00100e93          	li	t4,1
    80006a80:	e9dff06f          	j	8000691c <__memset+0x84>
    80006a84:	00000e93          	li	t4,0
    80006a88:	e95ff06f          	j	8000691c <__memset+0x84>
    80006a8c:	00000793          	li	a5,0
    80006a90:	ef9ff06f          	j	80006988 <__memset+0xf0>
    80006a94:	00200e93          	li	t4,2
    80006a98:	e85ff06f          	j	8000691c <__memset+0x84>
    80006a9c:	00400e93          	li	t4,4
    80006aa0:	e7dff06f          	j	8000691c <__memset+0x84>
    80006aa4:	00500e93          	li	t4,5
    80006aa8:	e75ff06f          	j	8000691c <__memset+0x84>
    80006aac:	00600e93          	li	t4,6
    80006ab0:	e6dff06f          	j	8000691c <__memset+0x84>

0000000080006ab4 <__memmove>:
    80006ab4:	ff010113          	addi	sp,sp,-16
    80006ab8:	00813423          	sd	s0,8(sp)
    80006abc:	01010413          	addi	s0,sp,16
    80006ac0:	0e060863          	beqz	a2,80006bb0 <__memmove+0xfc>
    80006ac4:	fff6069b          	addiw	a3,a2,-1
    80006ac8:	0006881b          	sext.w	a6,a3
    80006acc:	0ea5e863          	bltu	a1,a0,80006bbc <__memmove+0x108>
    80006ad0:	00758713          	addi	a4,a1,7
    80006ad4:	00a5e7b3          	or	a5,a1,a0
    80006ad8:	40a70733          	sub	a4,a4,a0
    80006adc:	0077f793          	andi	a5,a5,7
    80006ae0:	00f73713          	sltiu	a4,a4,15
    80006ae4:	00174713          	xori	a4,a4,1
    80006ae8:	0017b793          	seqz	a5,a5
    80006aec:	00e7f7b3          	and	a5,a5,a4
    80006af0:	10078863          	beqz	a5,80006c00 <__memmove+0x14c>
    80006af4:	00900793          	li	a5,9
    80006af8:	1107f463          	bgeu	a5,a6,80006c00 <__memmove+0x14c>
    80006afc:	0036581b          	srliw	a6,a2,0x3
    80006b00:	fff8081b          	addiw	a6,a6,-1
    80006b04:	02081813          	slli	a6,a6,0x20
    80006b08:	01d85893          	srli	a7,a6,0x1d
    80006b0c:	00858813          	addi	a6,a1,8
    80006b10:	00058793          	mv	a5,a1
    80006b14:	00050713          	mv	a4,a0
    80006b18:	01088833          	add	a6,a7,a6
    80006b1c:	0007b883          	ld	a7,0(a5)
    80006b20:	00878793          	addi	a5,a5,8
    80006b24:	00870713          	addi	a4,a4,8
    80006b28:	ff173c23          	sd	a7,-8(a4)
    80006b2c:	ff0798e3          	bne	a5,a6,80006b1c <__memmove+0x68>
    80006b30:	ff867713          	andi	a4,a2,-8
    80006b34:	02071793          	slli	a5,a4,0x20
    80006b38:	0207d793          	srli	a5,a5,0x20
    80006b3c:	00f585b3          	add	a1,a1,a5
    80006b40:	40e686bb          	subw	a3,a3,a4
    80006b44:	00f507b3          	add	a5,a0,a5
    80006b48:	06e60463          	beq	a2,a4,80006bb0 <__memmove+0xfc>
    80006b4c:	0005c703          	lbu	a4,0(a1)
    80006b50:	00e78023          	sb	a4,0(a5)
    80006b54:	04068e63          	beqz	a3,80006bb0 <__memmove+0xfc>
    80006b58:	0015c603          	lbu	a2,1(a1)
    80006b5c:	00100713          	li	a4,1
    80006b60:	00c780a3          	sb	a2,1(a5)
    80006b64:	04e68663          	beq	a3,a4,80006bb0 <__memmove+0xfc>
    80006b68:	0025c603          	lbu	a2,2(a1)
    80006b6c:	00200713          	li	a4,2
    80006b70:	00c78123          	sb	a2,2(a5)
    80006b74:	02e68e63          	beq	a3,a4,80006bb0 <__memmove+0xfc>
    80006b78:	0035c603          	lbu	a2,3(a1)
    80006b7c:	00300713          	li	a4,3
    80006b80:	00c781a3          	sb	a2,3(a5)
    80006b84:	02e68663          	beq	a3,a4,80006bb0 <__memmove+0xfc>
    80006b88:	0045c603          	lbu	a2,4(a1)
    80006b8c:	00400713          	li	a4,4
    80006b90:	00c78223          	sb	a2,4(a5)
    80006b94:	00e68e63          	beq	a3,a4,80006bb0 <__memmove+0xfc>
    80006b98:	0055c603          	lbu	a2,5(a1)
    80006b9c:	00500713          	li	a4,5
    80006ba0:	00c782a3          	sb	a2,5(a5)
    80006ba4:	00e68663          	beq	a3,a4,80006bb0 <__memmove+0xfc>
    80006ba8:	0065c703          	lbu	a4,6(a1)
    80006bac:	00e78323          	sb	a4,6(a5)
    80006bb0:	00813403          	ld	s0,8(sp)
    80006bb4:	01010113          	addi	sp,sp,16
    80006bb8:	00008067          	ret
    80006bbc:	02061713          	slli	a4,a2,0x20
    80006bc0:	02075713          	srli	a4,a4,0x20
    80006bc4:	00e587b3          	add	a5,a1,a4
    80006bc8:	f0f574e3          	bgeu	a0,a5,80006ad0 <__memmove+0x1c>
    80006bcc:	02069613          	slli	a2,a3,0x20
    80006bd0:	02065613          	srli	a2,a2,0x20
    80006bd4:	fff64613          	not	a2,a2
    80006bd8:	00e50733          	add	a4,a0,a4
    80006bdc:	00c78633          	add	a2,a5,a2
    80006be0:	fff7c683          	lbu	a3,-1(a5)
    80006be4:	fff78793          	addi	a5,a5,-1
    80006be8:	fff70713          	addi	a4,a4,-1
    80006bec:	00d70023          	sb	a3,0(a4)
    80006bf0:	fec798e3          	bne	a5,a2,80006be0 <__memmove+0x12c>
    80006bf4:	00813403          	ld	s0,8(sp)
    80006bf8:	01010113          	addi	sp,sp,16
    80006bfc:	00008067          	ret
    80006c00:	02069713          	slli	a4,a3,0x20
    80006c04:	02075713          	srli	a4,a4,0x20
    80006c08:	00170713          	addi	a4,a4,1
    80006c0c:	00e50733          	add	a4,a0,a4
    80006c10:	00050793          	mv	a5,a0
    80006c14:	0005c683          	lbu	a3,0(a1)
    80006c18:	00178793          	addi	a5,a5,1
    80006c1c:	00158593          	addi	a1,a1,1
    80006c20:	fed78fa3          	sb	a3,-1(a5)
    80006c24:	fee798e3          	bne	a5,a4,80006c14 <__memmove+0x160>
    80006c28:	f89ff06f          	j	80006bb0 <__memmove+0xfc>

0000000080006c2c <__putc>:
    80006c2c:	fe010113          	addi	sp,sp,-32
    80006c30:	00813823          	sd	s0,16(sp)
    80006c34:	00113c23          	sd	ra,24(sp)
    80006c38:	02010413          	addi	s0,sp,32
    80006c3c:	00050793          	mv	a5,a0
    80006c40:	fef40593          	addi	a1,s0,-17
    80006c44:	00100613          	li	a2,1
    80006c48:	00000513          	li	a0,0
    80006c4c:	fef407a3          	sb	a5,-17(s0)
    80006c50:	fffff097          	auipc	ra,0xfffff
    80006c54:	b3c080e7          	jalr	-1220(ra) # 8000578c <console_write>
    80006c58:	01813083          	ld	ra,24(sp)
    80006c5c:	01013403          	ld	s0,16(sp)
    80006c60:	02010113          	addi	sp,sp,32
    80006c64:	00008067          	ret

0000000080006c68 <__getc>:
    80006c68:	fe010113          	addi	sp,sp,-32
    80006c6c:	00813823          	sd	s0,16(sp)
    80006c70:	00113c23          	sd	ra,24(sp)
    80006c74:	02010413          	addi	s0,sp,32
    80006c78:	fe840593          	addi	a1,s0,-24
    80006c7c:	00100613          	li	a2,1
    80006c80:	00000513          	li	a0,0
    80006c84:	fffff097          	auipc	ra,0xfffff
    80006c88:	ae8080e7          	jalr	-1304(ra) # 8000576c <console_read>
    80006c8c:	fe844503          	lbu	a0,-24(s0)
    80006c90:	01813083          	ld	ra,24(sp)
    80006c94:	01013403          	ld	s0,16(sp)
    80006c98:	02010113          	addi	sp,sp,32
    80006c9c:	00008067          	ret

0000000080006ca0 <console_handler>:
    80006ca0:	fe010113          	addi	sp,sp,-32
    80006ca4:	00813823          	sd	s0,16(sp)
    80006ca8:	00113c23          	sd	ra,24(sp)
    80006cac:	00913423          	sd	s1,8(sp)
    80006cb0:	02010413          	addi	s0,sp,32
    80006cb4:	14202773          	csrr	a4,scause
    80006cb8:	100027f3          	csrr	a5,sstatus
    80006cbc:	0027f793          	andi	a5,a5,2
    80006cc0:	06079e63          	bnez	a5,80006d3c <console_handler+0x9c>
    80006cc4:	00074c63          	bltz	a4,80006cdc <console_handler+0x3c>
    80006cc8:	01813083          	ld	ra,24(sp)
    80006ccc:	01013403          	ld	s0,16(sp)
    80006cd0:	00813483          	ld	s1,8(sp)
    80006cd4:	02010113          	addi	sp,sp,32
    80006cd8:	00008067          	ret
    80006cdc:	0ff77713          	andi	a4,a4,255
    80006ce0:	00900793          	li	a5,9
    80006ce4:	fef712e3          	bne	a4,a5,80006cc8 <console_handler+0x28>
    80006ce8:	ffffe097          	auipc	ra,0xffffe
    80006cec:	6dc080e7          	jalr	1756(ra) # 800053c4 <plic_claim>
    80006cf0:	00a00793          	li	a5,10
    80006cf4:	00050493          	mv	s1,a0
    80006cf8:	02f50c63          	beq	a0,a5,80006d30 <console_handler+0x90>
    80006cfc:	fc0506e3          	beqz	a0,80006cc8 <console_handler+0x28>
    80006d00:	00050593          	mv	a1,a0
    80006d04:	00000517          	auipc	a0,0x0
    80006d08:	73c50513          	addi	a0,a0,1852 # 80007440 <_ZL6digits+0xf8>
    80006d0c:	fffff097          	auipc	ra,0xfffff
    80006d10:	afc080e7          	jalr	-1284(ra) # 80005808 <__printf>
    80006d14:	01013403          	ld	s0,16(sp)
    80006d18:	01813083          	ld	ra,24(sp)
    80006d1c:	00048513          	mv	a0,s1
    80006d20:	00813483          	ld	s1,8(sp)
    80006d24:	02010113          	addi	sp,sp,32
    80006d28:	ffffe317          	auipc	t1,0xffffe
    80006d2c:	6d430067          	jr	1748(t1) # 800053fc <plic_complete>
    80006d30:	fffff097          	auipc	ra,0xfffff
    80006d34:	3e0080e7          	jalr	992(ra) # 80006110 <uartintr>
    80006d38:	fddff06f          	j	80006d14 <console_handler+0x74>
    80006d3c:	00001517          	auipc	a0,0x1
    80006d40:	80450513          	addi	a0,a0,-2044 # 80007540 <digits+0x78>
    80006d44:	fffff097          	auipc	ra,0xfffff
    80006d48:	a68080e7          	jalr	-1432(ra) # 800057ac <panic>
	...
