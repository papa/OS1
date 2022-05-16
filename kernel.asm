
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	93013103          	ld	sp,-1744(sp) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	64c040ef          	jal	ra,80004668 <start>

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
    80001080:	045010ef          	jal	ra,800028c4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	320080e7          	jalr	800(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    800014a0:	2f0080e7          	jalr	752(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    800014c0:	2d0080e7          	jalr	720(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	334080e7          	jalr	820(ra) # 800027fc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00006517          	auipc	a0,0x6
    800014d4:	cb050513          	addi	a0,a0,-848 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	2b4080e7          	jalr	692(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    8000151c:	274080e7          	jalr	628(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    8000153c:	254080e7          	jalr	596(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001540:	00048513          	mv	a0,s1
    80001544:	00001097          	auipc	ra,0x1
    80001548:	2b8080e7          	jalr	696(ra) # 800027fc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000154c:	00006517          	auipc	a0,0x6
    80001550:	c3450513          	addi	a0,a0,-972 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	238080e7          	jalr	568(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001598:	1f8080e7          	jalr	504(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    800015b8:	1d8080e7          	jalr	472(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	23c080e7          	jalr	572(ra) # 800027fc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015c8:	00006517          	auipc	a0,0x6
    800015cc:	bb850513          	addi	a0,a0,-1096 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	1bc080e7          	jalr	444(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001614:	ecc080e7          	jalr	-308(ra) # 800024dc <_Znwm>
    80001618:	00050493          	mv	s1,a0
    8000161c:	00000613          	li	a2,0
    80001620:	00000597          	auipc	a1,0x0
    80001624:	e6058593          	addi	a1,a1,-416 # 80001480 <_Z15thread1FunctionPv>
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	f80080e7          	jalr	-128(ra) # 800025a8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001630:	00048513          	mv	a0,s1
    80001634:	00001097          	auipc	ra,0x1
    80001638:	ef8080e7          	jalr	-264(ra) # 8000252c <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    8000163c:	01800513          	li	a0,24
    80001640:	00001097          	auipc	ra,0x1
    80001644:	e9c080e7          	jalr	-356(ra) # 800024dc <_Znwm>
    80001648:	00050913          	mv	s2,a0
    8000164c:	00000613          	li	a2,0
    80001650:	00000597          	auipc	a1,0x0
    80001654:	eac58593          	addi	a1,a1,-340 # 800014fc <_Z15thread2FunctionPv>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	f50080e7          	jalr	-176(ra) # 800025a8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001660:	00090513          	mv	a0,s2
    80001664:	00001097          	auipc	ra,0x1
    80001668:	ec8080e7          	jalr	-312(ra) # 8000252c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000166c:	00001097          	auipc	ra,0x1
    80001670:	098080e7          	jalr	152(ra) # 80002704 <_ZN5Riscv16enableInterruptsEv>
    80001674:	01c0006f          	j	80001690 <_Z11threadTest1v+0x9c>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    {
        Riscv::printString("Main thread\n");
    80001678:	00006517          	auipc	a0,0x6
    8000167c:	9f050513          	addi	a0,a0,-1552 # 80007068 <CONSOLE_STATUS+0x58>
    80001680:	00001097          	auipc	ra,0x1
    80001684:	10c080e7          	jalr	268(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    800016bc:	0d4080e7          	jalr	212(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	064080e7          	jalr	100(ra) # 80002724 <_ZN5Riscv17disableInterruptsEv>
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
    800016ec:	e1c080e7          	jalr	-484(ra) # 80002504 <_ZdlPv>
    800016f0:	00090513          	mv	a0,s2
    800016f4:	00008097          	auipc	ra,0x8
    800016f8:	3e4080e7          	jalr	996(ra) # 80009ad8 <_Unwind_Resume>
    800016fc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001700:	00090513          	mv	a0,s2
    80001704:	00001097          	auipc	ra,0x1
    80001708:	e00080e7          	jalr	-512(ra) # 80002504 <_ZdlPv>
    8000170c:	00048513          	mv	a0,s1
    80001710:	00008097          	auipc	ra,0x8
    80001714:	3c8080e7          	jalr	968(ra) # 80009ad8 <_Unwind_Resume>

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
    80001738:	da8080e7          	jalr	-600(ra) # 800024dc <_Znwm>
    8000173c:	00050493          	mv	s1,a0
    80001740:	00000613          	li	a2,0
    80001744:	00000597          	auipc	a1,0x0
    80001748:	d1058593          	addi	a1,a1,-752 # 80001454 <_Z4idlePv>
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	e5c080e7          	jalr	-420(ra) # 800025a8 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001754:	00048513          	mv	a0,s1
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	dd4080e7          	jalr	-556(ra) # 8000252c <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001760:	01800513          	li	a0,24
    80001764:	00001097          	auipc	ra,0x1
    80001768:	d78080e7          	jalr	-648(ra) # 800024dc <_Znwm>
    8000176c:	00050913          	mv	s2,a0
    80001770:	00000613          	li	a2,0
    80001774:	00000597          	auipc	a1,0x0
    80001778:	d0c58593          	addi	a1,a1,-756 # 80001480 <_Z15thread1FunctionPv>
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	e2c080e7          	jalr	-468(ra) # 800025a8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001784:	00090513          	mv	a0,s2
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	da4080e7          	jalr	-604(ra) # 8000252c <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001790:	01800513          	li	a0,24
    80001794:	00001097          	auipc	ra,0x1
    80001798:	d48080e7          	jalr	-696(ra) # 800024dc <_Znwm>
    8000179c:	00050913          	mv	s2,a0
    800017a0:	00000613          	li	a2,0
    800017a4:	00000597          	auipc	a1,0x0
    800017a8:	dd458593          	addi	a1,a1,-556 # 80001578 <_Z20thread2FunctionTest2Pv>
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	dfc080e7          	jalr	-516(ra) # 800025a8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800017b4:	00090513          	mv	a0,s2
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	d74080e7          	jalr	-652(ra) # 8000252c <_ZN6Thread5startEv>

    Riscv::enableInterrupts();
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	f44080e7          	jalr	-188(ra) # 80002704 <_ZN5Riscv16enableInterruptsEv>

    while(idleThread->myHandle->getState() != PCB::FINISHED);
    800017c8:	0004b783          	ld	a5,0(s1)
    800017cc:	0307a703          	lw	a4,48(a5)
    800017d0:	00300793          	li	a5,3
    800017d4:	fef71ae3          	bne	a4,a5,800017c8 <_Z11threadTest2v+0xb0>

    Riscv::printString("End...\n");
    800017d8:	00006517          	auipc	a0,0x6
    800017dc:	8a050513          	addi	a0,a0,-1888 # 80007078 <CONSOLE_STATUS+0x68>
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	fac080e7          	jalr	-84(ra) # 8000278c <_ZN5Riscv11printStringEPKc>

    Riscv::disableInterrupts();
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	f3c080e7          	jalr	-196(ra) # 80002724 <_ZN5Riscv17disableInterruptsEv>
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
    80001814:	cf4080e7          	jalr	-780(ra) # 80002504 <_ZdlPv>
    80001818:	00090513          	mv	a0,s2
    8000181c:	00008097          	auipc	ra,0x8
    80001820:	2bc080e7          	jalr	700(ra) # 80009ad8 <_Unwind_Resume>
    80001824:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001828:	00090513          	mv	a0,s2
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	cd8080e7          	jalr	-808(ra) # 80002504 <_ZdlPv>
    80001834:	00048513          	mv	a0,s1
    80001838:	00008097          	auipc	ra,0x8
    8000183c:	2a0080e7          	jalr	672(ra) # 80009ad8 <_Unwind_Resume>
    80001840:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001844:	00090513          	mv	a0,s2
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	cbc080e7          	jalr	-836(ra) # 80002504 <_ZdlPv>
    80001850:	00048513          	mv	a0,s1
    80001854:	00008097          	auipc	ra,0x8
    80001858:	284080e7          	jalr	644(ra) # 80009ad8 <_Unwind_Resume>

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
    800018a4:	eec080e7          	jalr	-276(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    800018e8:	ea8080e7          	jalr	-344(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    8000193c:	e54080e7          	jalr	-428(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001984:	e0c080e7          	jalr	-500(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    800019c8:	dc8080e7          	jalr	-568(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
            return;
    800019cc:	f21ff06f          	j	800018ec <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    800019d0:	00005517          	auipc	a0,0x5
    800019d4:	6c850513          	addi	a0,a0,1736 # 80007098 <CONSOLE_STATUS+0x88>
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	db4080e7          	jalr	-588(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001a00:	d90080e7          	jalr	-624(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001a04:	00007797          	auipc	a5,0x7
    80001a08:	f3c7b783          	ld	a5,-196(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a0c:	0007b503          	ld	a0,0(a5)
    80001a10:	00007797          	auipc	a5,0x7
    80001a14:	f007b783          	ld	a5,-256(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001a3c:	d54080e7          	jalr	-684(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
}
    80001a40:	00813083          	ld	ra,8(sp)
    80001a44:	00013403          	ld	s0,0(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret
        Riscv::printString("OK\n");
    80001a50:	00005517          	auipc	a0,0x5
    80001a54:	64850513          	addi	a0,a0,1608 # 80007098 <CONSOLE_STATUS+0x88>
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	d34080e7          	jalr	-716(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001a8c:	d04080e7          	jalr	-764(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001ad8:	d28080e7          	jalr	-728(ra) # 800027fc <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001adc:	00005517          	auipc	a0,0x5
    80001ae0:	6a450513          	addi	a0,a0,1700 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	ca8080e7          	jalr	-856(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001b08:	c88080e7          	jalr	-888(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001b34:	c5c080e7          	jalr	-932(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001b58:	c38080e7          	jalr	-968(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001b84:	c0c080e7          	jalr	-1012(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001ba4:	bec080e7          	jalr	-1044(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001bd4:	bbc080e7          	jalr	-1092(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001c18:	b78080e7          	jalr	-1160(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001c4c:	b44080e7          	jalr	-1212(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(sz);
    80001c50:	00090993          	mv	s3,s2
    80001c54:	00090513          	mv	a0,s2
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	ba4080e7          	jalr	-1116(ra) # 800027fc <_ZN5Riscv12printIntegerEm>
        for(int i = 0 ; i < num;i+=2)
    80001c60:	00000493          	li	s1,0
    80001c64:	06300793          	li	a5,99
    80001c68:	0a97ca63          	blt	a5,s1,80001d1c <_Z13stressTestingv+0x170>
            Riscv::printString("i : ");
    80001c6c:	00005517          	auipc	a0,0x5
    80001c70:	3d450513          	addi	a0,a0,980 # 80007040 <CONSOLE_STATUS+0x30>
    80001c74:	00001097          	auipc	ra,0x1
    80001c78:	b18080e7          	jalr	-1256(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	b7c080e7          	jalr	-1156(ra) # 800027fc <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001c88:	00005517          	auipc	a0,0x5
    80001c8c:	46850513          	addi	a0,a0,1128 # 800070f0 <CONSOLE_STATUS+0xe0>
    80001c90:	00001097          	auipc	ra,0x1
    80001c94:	afc080e7          	jalr	-1284(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001cc0:	ad0080e7          	jalr	-1328(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001d00:	a90080e7          	jalr	-1392(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
                return;
    80001d04:	f19ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001d08:	00005517          	auipc	a0,0x5
    80001d0c:	3f850513          	addi	a0,a0,1016 # 80007100 <CONSOLE_STATUS+0xf0>
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	a7c080e7          	jalr	-1412(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001d34:	a5c080e7          	jalr	-1444(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001d38:	00048513          	mv	a0,s1
    80001d3c:	00001097          	auipc	ra,0x1
    80001d40:	ac0080e7          	jalr	-1344(ra) # 800027fc <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001d44:	00005517          	auipc	a0,0x5
    80001d48:	3ac50513          	addi	a0,a0,940 # 800070f0 <CONSOLE_STATUS+0xe0>
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	a40080e7          	jalr	-1472(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001d7c:	a14080e7          	jalr	-1516(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001db4:	9dc080e7          	jalr	-1572(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
                return;
    80001db8:	e65ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001dbc:	00005517          	auipc	a0,0x5
    80001dc0:	34450513          	addi	a0,a0,836 # 80007100 <CONSOLE_STATUS+0xf0>
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	9c8080e7          	jalr	-1592(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001de4:	9ac080e7          	jalr	-1620(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
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
    80001e34:	95c080e7          	jalr	-1700(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	934080e7          	jalr	-1740(ra) # 8000276c <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001e40:	00007497          	auipc	s1,0x7
    80001e44:	b5048493          	addi	s1,s1,-1200 # 80008990 <_ZN3PCB7runningE>
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
    80001e70:	920080e7          	jalr	-1760(ra) # 8000278c <_ZN5Riscv11printStringEPKc>

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
    80001ed8:	510080e7          	jalr	1296(ra) # 800023e4 <_ZN9Scheduler3putEP3PCB>
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
    80001f20:	4c8080e7          	jalr	1224(ra) # 800023e4 <_ZN9Scheduler3putEP3PCB>
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
    80001f48:	0b8080e7          	jalr	184(ra) # 80002ffc <_Z7kmallocm>
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
    80001f70:	0b8080e7          	jalr	184(ra) # 80003024 <_Z5kfreePv>
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
    80001f9c:	08c080e7          	jalr	140(ra) # 80003024 <_Z5kfreePv>
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
    80001fcc:	9c893903          	ld	s2,-1592(s2) # 80008990 <_ZN3PCB7runningE>
    State getState() {return state;}
    80001fd0:	03092703          	lw	a4,48(s2)
    if(old->getState() == PCB::RUNNING)
    80001fd4:	00100793          	li	a5,1
    80001fd8:	06f70a63          	beq	a4,a5,8000204c <_ZN3PCB8dispatchEv+0x9c>
    PCB::running = Scheduler::get();
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	45c080e7          	jalr	1116(ra) # 80002438 <_ZN9Scheduler3getEv>
    80001fe4:	00007797          	auipc	a5,0x7
    80001fe8:	9ac78793          	addi	a5,a5,-1620 # 80008990 <_ZN3PCB7runningE>
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
    8000201c:	97878793          	addi	a5,a5,-1672 # 80008990 <_ZN3PCB7runningE>
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
    80002054:	394080e7          	jalr	916(ra) # 800023e4 <_ZN9Scheduler3putEP3PCB>
    80002058:	f85ff06f          	j	80001fdc <_ZN3PCB8dispatchEv+0x2c>
        PCB::contextSwitch(&old->context, &running->context);
    8000205c:	03850593          	addi	a1,a0,56
    80002060:	03890513          	addi	a0,s2,56
    80002064:	fffff097          	auipc	ra,0xfffff
    80002068:	1c4080e7          	jalr	452(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    8000206c:	fc9ff06f          	j	80002034 <_ZN3PCB8dispatchEv+0x84>

0000000080002070 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00813423          	sd	s0,8(sp)
    80002078:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000207c:	00007797          	auipc	a5,0x7
    80002080:	8bc7b783          	ld	a5,-1860(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002084:	0007b583          	ld	a1,0(a5)
    80002088:	00500793          	li	a5,5
    8000208c:	02f5a823          	sw	a5,48(a1)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002090:	00007797          	auipc	a5,0x7
    80002094:	9207b783          	ld	a5,-1760(a5) # 800089b0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002098:	00000613          	li	a2,0
    while(curr != 0)
    8000209c:	02078063          	beqz	a5,800020bc <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    800020a0:	0105b683          	ld	a3,16(a1)
    800020a4:	0107b703          	ld	a4,16(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800020a8:	00e6e863          	bltu	a3,a4,800020b8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800020ac:	00078613          	mv	a2,a5
        curr=curr->nextPCB;
    800020b0:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800020b4:	fe9ff06f          	j	8000209c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800020b8:	00f5b023          	sd	a5,0(a1)
    }

    if(prev == 0)
    800020bc:	02060863          	beqz	a2,800020ec <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800020c0:	00007797          	auipc	a5,0x7
    800020c4:	8787b783          	ld	a5,-1928(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020c8:	0007b783          	ld	a5,0(a5)
    800020cc:	0107b703          	ld	a4,16(a5)
    800020d0:	01063683          	ld	a3,16(a2)
    800020d4:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800020d8:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    800020dc:	00f63023          	sd	a5,0(a2)
    }
}
    800020e0:	00813403          	ld	s0,8(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800020ec:	00007797          	auipc	a5,0x7
    800020f0:	84c7b783          	ld	a5,-1972(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020f4:	0007b783          	ld	a5,0(a5)
    800020f8:	00007717          	auipc	a4,0x7
    800020fc:	8af73c23          	sd	a5,-1864(a4) # 800089b0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002100:	0007b703          	ld	a4,0(a5)
    80002104:	fc070ee3          	beqz	a4,800020e0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002108:	01073683          	ld	a3,16(a4)
    8000210c:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002110:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002114:	00f73823          	sd	a5,16(a4)
    80002118:	fc9ff06f          	j	800020e0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>

000000008000211c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking pcbs...\n");
    PCB* curr = sleepingPCBHead;
    8000211c:	00007517          	auipc	a0,0x7
    80002120:	89453503          	ld	a0,-1900(a0) # 800089b0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002124:	08050863          	beqz	a0,800021b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002128:	01053783          	ld	a5,16(a0)
    {
        //Riscv::printString("NULL\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    8000212c:	00100713          	li	a4,1
    80002130:	00e78863          	beq	a5,a4,80002140 <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002134:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002138:	00f53823          	sd	a5,16(a0)
    8000213c:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002140:	06050a63          	beqz	a0,800021b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002144:	00007797          	auipc	a5,0x7
    80002148:	86c7b783          	ld	a5,-1940(a5) # 800089b0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    8000214c:	00a78663          	beq	a5,a0,80002158 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002150:	01053783          	ld	a5,16(a0)
    80002154:	06079063          	bnez	a5,800021b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00113c23          	sd	ra,24(sp)
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    8000216c:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    80002170:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    80002174:	00000097          	auipc	ra,0x0
    80002178:	270080e7          	jalr	624(ra) # 800023e4 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    8000217c:	00007797          	auipc	a5,0x7
    80002180:	8297ba23          	sd	s1,-1996(a5) # 800089b0 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002184:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002188:	00048c63          	beqz	s1,800021a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000218c:	00007797          	auipc	a5,0x7
    80002190:	8247b783          	ld	a5,-2012(a5) # 800089b0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002194:	fc978ce3          	beq	a5,s1,8000216c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002198:	0104b783          	ld	a5,16(s1)
    8000219c:	fc0788e3          	beqz	a5,8000216c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    800021a0:	01813083          	ld	ra,24(sp)
    800021a4:	01013403          	ld	s0,16(sp)
    800021a8:	00813483          	ld	s1,8(sp)
    800021ac:	02010113          	addi	sp,sp,32
    800021b0:	00008067          	ret
    800021b4:	00008067          	ret

00000000800021b8 <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.hpp"

void Queue::pop() {
    800021b8:	fe010113          	addi	sp,sp,-32
    800021bc:	00113c23          	sd	ra,24(sp)
    800021c0:	00813823          	sd	s0,16(sp)
    800021c4:	00913423          	sd	s1,8(sp)
    800021c8:	01213023          	sd	s2,0(sp)
    800021cc:	02010413          	addi	s0,sp,32
    800021d0:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800021d4:	00053503          	ld	a0,0(a0)
    800021d8:	00853903          	ld	s2,8(a0)
    kfree(first);
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	e48080e7          	jalr	-440(ra) # 80003024 <_Z5kfreePv>
    first = newFirst;
    800021e4:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800021e8:	00090e63          	beqz	s2,80002204 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	00013903          	ld	s2,0(sp)
    800021fc:	02010113          	addi	sp,sp,32
    80002200:	00008067          	ret
        first = last = 0;
    80002204:	0004b423          	sd	zero,8(s1)
    80002208:	0004b023          	sd	zero,0(s1)
}
    8000220c:	fe1ff06f          	j	800021ec <_ZN5Queue3popEv+0x34>

0000000080002210 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002210:	fe010113          	addi	sp,sp,-32
    80002214:	00113c23          	sd	ra,24(sp)
    80002218:	00813823          	sd	s0,16(sp)
    8000221c:	00913423          	sd	s1,8(sp)
    80002220:	01213023          	sd	s2,0(sp)
    80002224:	02010413          	addi	s0,sp,32
    80002228:	00050493          	mv	s1,a0
    8000222c:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002230:	01000513          	li	a0,16
    80002234:	00001097          	auipc	ra,0x1
    80002238:	dc8080e7          	jalr	-568(ra) # 80002ffc <_Z7kmallocm>
    newElem->data = t;
    8000223c:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002240:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002244:	0004b783          	ld	a5,0(s1)
    80002248:	02078463          	beqz	a5,80002270 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    8000224c:	0084b783          	ld	a5,8(s1)
    80002250:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002254:	00a4b423          	sd	a0,8(s1)
    }
}
    80002258:	01813083          	ld	ra,24(sp)
    8000225c:	01013403          	ld	s0,16(sp)
    80002260:	00813483          	ld	s1,8(sp)
    80002264:	00013903          	ld	s2,0(sp)
    80002268:	02010113          	addi	sp,sp,32
    8000226c:	00008067          	ret
        first = newElem;
    80002270:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002274:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002278:	00053423          	sd	zero,8(a0)
    8000227c:	0004b783          	ld	a5,0(s1)
    80002280:	0007b423          	sd	zero,8(a5)
    80002284:	fd5ff06f          	j	80002258 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002288 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00813423          	sd	s0,8(sp)
    80002290:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002294:	00053503          	ld	a0,0(a0)
    80002298:	00050463          	beqz	a0,800022a0 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    8000229c:	00053503          	ld	a0,0(a0)
}
    800022a0:	00813403          	ld	s0,8(sp)
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret

00000000800022ac <_ZN5QueueC1Ev>:

Queue::Queue() {
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00813423          	sd	s0,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
    first = last = 0;
    800022b8:	00053423          	sd	zero,8(a0)
    800022bc:	00053023          	sd	zero,0(a0)
}
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    800022cc:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    800022d0:	04050063          	beqz	a0,80002310 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    800022d4:	fe010113          	addi	sp,sp,-32
    800022d8:	00113c23          	sd	ra,24(sp)
    800022dc:	00813823          	sd	s0,16(sp)
    800022e0:	00913423          	sd	s1,8(sp)
    800022e4:	02010413          	addi	s0,sp,32
    {
        //todo
        //vrati ovo
        //sad je zakomentarisano zbog kfree
        Elem* old = curr;
        curr = curr->next;
    800022e8:	00853483          	ld	s1,8(a0)
        kfree(old);
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	d38080e7          	jalr	-712(ra) # 80003024 <_Z5kfreePv>
        curr = curr->next;
    800022f4:	00048513          	mv	a0,s1
    while(curr != 0)
    800022f8:	fe0498e3          	bnez	s1,800022e8 <_ZN5QueueD1Ev+0x1c>
    }
}
    800022fc:	01813083          	ld	ra,24(sp)
    80002300:	01013403          	ld	s0,16(sp)
    80002304:	00813483          	ld	s1,8(sp)
    80002308:	02010113          	addi	sp,sp,32
    8000230c:	00008067          	ret
    80002310:	00008067          	ret

0000000080002314 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00813423          	sd	s0,8(sp)
    8000231c:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002320:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002324:	00000513          	li	a0,0
    while(curr != 0)
    80002328:	00078863          	beqz	a5,80002338 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    8000232c:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002330:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002334:	ff5ff06f          	j	80002328 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_ZN9Scheduler4put2EP3PCB>:
//todo
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

//todo
void Scheduler::put2(PCB *pcb) {
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    //pcb->setState(PCB::READY);
    //if(scheduler == 0)
    //    scheduler = new Scheduler();
    //scheduler->queuePCB.push(pcb);
}
    80002350:	00813403          	ld	s0,8(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZN9Scheduler4get2Ev>:

//todo
PCB *Scheduler::get2() {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00813423          	sd	s0,8(sp)
    80002364:	01010413          	addi	s0,sp,16
    //if(scheduler == 0)
    //    scheduler = new Scheduler();
    //PCB* fr = scheduler->queuePCB.front();
    //scheduler->queuePCB.pop();
    return 0;
}
    80002368:	00000513          	li	a0,0
    8000236c:	00813403          	ld	s0,8(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80002378:	ff010113          	addi	sp,sp,-16
    8000237c:	00113423          	sd	ra,8(sp)
    80002380:	00813023          	sd	s0,0(sp)
    80002384:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	c74080e7          	jalr	-908(ra) # 80002ffc <_Z7kmallocm>
}
    80002390:	00813083          	ld	ra,8(sp)
    80002394:	00013403          	ld	s0,0(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00113423          	sd	ra,8(sp)
    800023a8:	00813023          	sd	s0,0(sp)
    800023ac:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	c74080e7          	jalr	-908(ra) # 80003024 <_Z5kfreePv>
}
    800023b8:	00813083          	ld	ra,8(sp)
    800023bc:	00013403          	ld	s0,0(sp)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret

00000000800023c8 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    800023c8:	ff010113          	addi	sp,sp,-16
    800023cc:	00813423          	sd	s0,8(sp)
    800023d0:	01010413          	addi	s0,sp,16
    //todo
    //if(scheduler == 0)
    //    scheduler = new Scheduler();
    //return scheduler->queuePCB.size();
    return 0;
}
    800023d4:	00000513          	li	a0,0
    800023d8:	00813403          	ld	s0,8(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb) {
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00813423          	sd	s0,8(sp)
    800023ec:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800023f0:	02052823          	sw	zero,48(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800023f4:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    800023f8:	00006797          	auipc	a5,0x6
    800023fc:	5c07b783          	ld	a5,1472(a5) # 800089b8 <_ZN9Scheduler16schedulerPCBHeadE>
    80002400:	02078263          	beqz	a5,80002424 <_ZN9Scheduler3putEP3PCB+0x40>
    {
        schedulerPCBHead = schedulerPCBTail = pcb;
    }
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002404:	00006797          	auipc	a5,0x6
    80002408:	5b478793          	addi	a5,a5,1460 # 800089b8 <_ZN9Scheduler16schedulerPCBHeadE>
    8000240c:	0087b703          	ld	a4,8(a5)
    80002410:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    80002414:	00a7b423          	sd	a0,8(a5)
    }
}
    80002418:	00813403          	ld	s0,8(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002424:	00006797          	auipc	a5,0x6
    80002428:	59478793          	addi	a5,a5,1428 # 800089b8 <_ZN9Scheduler16schedulerPCBHeadE>
    8000242c:	00a7b423          	sd	a0,8(a5)
    80002430:	00a7b023          	sd	a0,0(a5)
    80002434:	fe5ff06f          	j	80002418 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002438 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get() {
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00813423          	sd	s0,8(sp)
    80002440:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002444:	00006517          	auipc	a0,0x6
    80002448:	57453503          	ld	a0,1396(a0) # 800089b8 <_ZN9Scheduler16schedulerPCBHeadE>
    8000244c:	00050c63          	beqz	a0,80002464 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002450:	00053783          	ld	a5,0(a0)
    80002454:	00078e63          	beqz	a5,80002470 <_ZN9Scheduler3getEv+0x38>
    {
        schedulerPCBHead = schedulerPCBTail = 0;
    }
    else
    {
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002458:	00006717          	auipc	a4,0x6
    8000245c:	56f73023          	sd	a5,1376(a4) # 800089b8 <_ZN9Scheduler16schedulerPCBHeadE>
    }
    retval->nextPCB = 0;
    80002460:	00053023          	sd	zero,0(a0)
    return retval;
}
    80002464:	00813403          	ld	s0,8(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002470:	00006797          	auipc	a5,0x6
    80002474:	54878793          	addi	a5,a5,1352 # 800089b8 <_ZN9Scheduler16schedulerPCBHeadE>
    80002478:	0007b423          	sd	zero,8(a5)
    8000247c:	0007b023          	sd	zero,0(a5)
    80002480:	fe1ff06f          	j	80002460 <_ZN9Scheduler3getEv+0x28>

0000000080002484 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00113423          	sd	ra,8(sp)
    8000248c:	00813023          	sd	s0,0(sp)
    80002490:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80002494:	00000097          	auipc	ra,0x0
    80002498:	1d0080e7          	jalr	464(ra) # 80002664 <_ZN5Riscv10initSystemEv>

    //todo
    //go to unpriviliged mode

    Riscv::enableInterrupts();
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	268080e7          	jalr	616(ra) # 80002704 <_ZN5Riscv16enableInterruptsEv>
    userMain();
    800024a4:	00002097          	auipc	ra,0x2
    800024a8:	e20080e7          	jalr	-480(ra) # 800042c4 <_Z8userMainv>
    Riscv::disableInterrupts();
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	278080e7          	jalr	632(ra) # 80002724 <_ZN5Riscv17disableInterruptsEv>

    //memoryAllocationTests();
    //threadTests();
    //testQueue();

    Riscv::endSystem();
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	290080e7          	jalr	656(ra) # 80002744 <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    800024bc:	00005517          	auipc	a0,0x5
    800024c0:	c7450513          	addi	a0,a0,-908 # 80007130 <CONSOLE_STATUS+0x120>
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	2c8080e7          	jalr	712(ra) # 8000278c <_ZN5Riscv11printStringEPKc>
    800024cc:	00813083          	ld	ra,8(sp)
    800024d0:	00013403          	ld	s0,0(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_Znwm>:

#include "../h/syscall_cpp.hpp"

//general
void * operator new(size_t size)
{
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00113423          	sd	ra,8(sp)
    800024e4:	00813023          	sd	s0,0(sp)
    800024e8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	d5c080e7          	jalr	-676(ra) # 80001248 <mem_alloc>
}
    800024f4:	00813083          	ld	ra,8(sp)
    800024f8:	00013403          	ld	s0,0(sp)
    800024fc:	01010113          	addi	sp,sp,16
    80002500:	00008067          	ret

0000000080002504 <_ZdlPv>:

void operator delete(void * p)
{
    80002504:	ff010113          	addi	sp,sp,-16
    80002508:	00113423          	sd	ra,8(sp)
    8000250c:	00813023          	sd	s0,0(sp)
    80002510:	01010413          	addi	s0,sp,16
   mem_free(p);
    80002514:	fffff097          	auipc	ra,0xfffff
    80002518:	d64080e7          	jalr	-668(ra) # 80001278 <mem_free>
}
    8000251c:	00813083          	ld	ra,8(sp)
    80002520:	00013403          	ld	s0,0(sp)
    80002524:	01010113          	addi	sp,sp,16
    80002528:	00008067          	ret

000000008000252c <_ZN6Thread5startEv>:
//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    if(myHandle == 0)
    8000252c:	00053783          	ld	a5,0(a0)
    80002530:	00078463          	beqz	a5,80002538 <_ZN6Thread5startEv+0xc>
    80002534:	00008067          	ret
void Thread::start() {
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00113423          	sd	ra,8(sp)
    80002540:	00813023          	sd	s0,0(sp)
    80002544:	01010413          	addi	s0,sp,16
    {
        int retval = thread_create((void**)&myHandle, f, args);
    80002548:	01053603          	ld	a2,16(a0)
    8000254c:	00853583          	ld	a1,8(a0)
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	d54080e7          	jalr	-684(ra) # 800012a4 <thread_create>
        {
        //todo
        //what then
        }
    }
}
    80002558:	00813083          	ld	ra,8(sp)
    8000255c:	00013403          	ld	s0,0(sp)
    80002560:	01010113          	addi	sp,sp,16
    80002564:	00008067          	ret

0000000080002568 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002568:	ff010113          	addi	sp,sp,-16
    8000256c:	00113423          	sd	ra,8(sp)
    80002570:	00813023          	sd	s0,0(sp)
    80002574:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	dac080e7          	jalr	-596(ra) # 80001324 <thread_dispatch>
}
    80002580:	00813083          	ld	ra,8(sp)
    80002584:	00013403          	ld	s0,0(sp)
    80002588:	01010113          	addi	sp,sp,16
    8000258c:	00008067          	ret

0000000080002590 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80002590:	ff010113          	addi	sp,sp,-16
    80002594:	00813423          	sd	s0,8(sp)
    80002598:	01010413          	addi	s0,sp,16
    //PCB::sleep(time);
}
    8000259c:	00813403          	ld	s0,8(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret

00000000800025a8 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00813423          	sd	s0,8(sp)
    800025b0:	01010413          	addi	s0,sp,16
    myHandle = 0;
    800025b4:	00053023          	sd	zero,0(a0)
    f = body;
    800025b8:	00b53423          	sd	a1,8(a0)
    this->args = args;
    800025bc:	00c53823          	sd	a2,16(a0)
    //if(retval != 0)
    //{
        //todo
        //what then
    //}
}
    800025c0:	00813403          	ld	s0,8(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800025cc:	ff010113          	addi	sp,sp,-16
    800025d0:	00813423          	sd	s0,8(sp)
    800025d4:	01010413          	addi	s0,sp,16

}
    800025d8:	00813403          	ld	s0,8(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <_ZN9Semaphore4waitEv>:

//Semaphore

void Semaphore::wait() {
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00113423          	sd	ra,8(sp)
    800025ec:	00813023          	sd	s0,0(sp)
    800025f0:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    800025f4:	00053503          	ld	a0,0(a0)
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	dd8080e7          	jalr	-552(ra) # 800013d0 <sem_wait>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80002600:	00813083          	ld	ra,8(sp)
    80002604:	00013403          	ld	s0,0(sp)
    80002608:	01010113          	addi	sp,sp,16
    8000260c:	00008067          	ret

0000000080002610 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    80002610:	ff010113          	addi	sp,sp,-16
    80002614:	00113423          	sd	ra,8(sp)
    80002618:	00813023          	sd	s0,0(sp)
    8000261c:	01010413          	addi	s0,sp,16
    int retval = sem_open((void**)&myHandle, init);
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	d4c080e7          	jalr	-692(ra) # 8000136c <sem_open>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80002628:	00813083          	ld	ra,8(sp)
    8000262c:	00013403          	ld	s0,0(sp)
    80002630:	01010113          	addi	sp,sp,16
    80002634:	00008067          	ret

0000000080002638 <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00113423          	sd	ra,8(sp)
    80002640:	00813023          	sd	s0,0(sp)
    80002644:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    80002648:	00053503          	ld	a0,0(a0)
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	db0080e7          	jalr	-592(ra) # 800013fc <sem_signal>
    {
        //todo
        //what then
    }

}
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_ZN5Riscv10initSystemEv>:
#include "../h/syscall_cpp.hpp"
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	01213023          	sd	s2,0(sp)
    80002678:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    8000267c:	00006797          	auipc	a5,0x6
    80002680:	29c7b783          	ld	a5,668(a5) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002684:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    80002688:	01800513          	li	a0,24
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	e50080e7          	jalr	-432(ra) # 800024dc <_Znwm>
    80002694:	00050493          	mv	s1,a0
    80002698:	00000613          	li	a2,0
    8000269c:	00000593          	li	a1,0
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	f08080e7          	jalr	-248(ra) # 800025a8 <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    800026a8:	00048513          	mv	a0,s1
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	e80080e7          	jalr	-384(ra) # 8000252c <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	d84080e7          	jalr	-636(ra) # 80002438 <_ZN9Scheduler3getEv>
    800026bc:	00006797          	auipc	a5,0x6
    800026c0:	27c7b783          	ld	a5,636(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026c4:	00a7b023          	sd	a0,0(a5)
    800026c8:	00100793          	li	a5,1
    800026cc:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    800026d0:	01813083          	ld	ra,24(sp)
    800026d4:	01013403          	ld	s0,16(sp)
    800026d8:	00813483          	ld	s1,8(sp)
    800026dc:	00013903          	ld	s2,0(sp)
    800026e0:	02010113          	addi	sp,sp,32
    800026e4:	00008067          	ret
    800026e8:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	e14080e7          	jalr	-492(ra) # 80002504 <_ZdlPv>
    800026f8:	00090513          	mv	a0,s2
    800026fc:	00007097          	auipc	ra,0x7
    80002700:	3dc080e7          	jalr	988(ra) # 80009ad8 <_Unwind_Resume>

0000000080002704 <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00813423          	sd	s0,8(sp)
    8000270c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002710:	00200793          	li	a5,2
    80002714:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002718:	00813403          	ld	s0,8(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00813423          	sd	s0,8(sp)
    8000272c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002730:	00200793          	li	a5,2
    80002734:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80002738:	00813403          	ld	s0,8(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret

0000000080002744 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00113423          	sd	ra,8(sp)
    8000274c:	00813023          	sd	s0,0(sp)
    80002750:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80002754:	00000097          	auipc	ra,0x0
    80002758:	fd0080e7          	jalr	-48(ra) # 80002724 <_ZN5Riscv17disableInterruptsEv>
}
    8000275c:	00813083          	ld	ra,8(sp)
    80002760:	00013403          	ld	s0,0(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret

000000008000276c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00813423          	sd	s0,8(sp)
    80002774:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002778:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000277c:	10200073          	sret
}
    80002780:	00813403          	ld	s0,8(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    8000278c:	fd010113          	addi	sp,sp,-48
    80002790:	02113423          	sd	ra,40(sp)
    80002794:	02813023          	sd	s0,32(sp)
    80002798:	00913c23          	sd	s1,24(sp)
    8000279c:	01213823          	sd	s2,16(sp)
    800027a0:	03010413          	addi	s0,sp,48
    800027a4:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800027a8:	100027f3          	csrr	a5,sstatus
    800027ac:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800027b0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800027b4:	00200793          	li	a5,2
    800027b8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    800027bc:	0004c503          	lbu	a0,0(s1)
    800027c0:	00050a63          	beqz	a0,800027d4 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800027c4:	00004097          	auipc	ra,0x4
    800027c8:	f68080e7          	jalr	-152(ra) # 8000672c <__putc>
        string++;
    800027cc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800027d0:	fedff06f          	j	800027bc <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800027d4:	0009091b          	sext.w	s2,s2
    800027d8:	00297913          	andi	s2,s2,2
    800027dc:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800027e0:	10092073          	csrs	sstatus,s2
}
    800027e4:	02813083          	ld	ra,40(sp)
    800027e8:	02013403          	ld	s0,32(sp)
    800027ec:	01813483          	ld	s1,24(sp)
    800027f0:	01013903          	ld	s2,16(sp)
    800027f4:	03010113          	addi	sp,sp,48
    800027f8:	00008067          	ret

00000000800027fc <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    800027fc:	fc010113          	addi	sp,sp,-64
    80002800:	02113c23          	sd	ra,56(sp)
    80002804:	02813823          	sd	s0,48(sp)
    80002808:	02913423          	sd	s1,40(sp)
    8000280c:	03213023          	sd	s2,32(sp)
    80002810:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002814:	100027f3          	csrr	a5,sstatus
    80002818:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000281c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002820:	00200793          	li	a5,2
    80002824:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002828:	0005051b          	sext.w	a0,a0

    i = 0;
    8000282c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002830:	00a00613          	li	a2,10
    80002834:	02c5773b          	remuw	a4,a0,a2
    80002838:	02071693          	slli	a3,a4,0x20
    8000283c:	0206d693          	srli	a3,a3,0x20
    80002840:	00005717          	auipc	a4,0x5
    80002844:	8f870713          	addi	a4,a4,-1800 # 80007138 <_ZZN5Riscv12printIntegerEmE6digits>
    80002848:	00d70733          	add	a4,a4,a3
    8000284c:	00074703          	lbu	a4,0(a4)
    80002850:	fe040693          	addi	a3,s0,-32
    80002854:	009687b3          	add	a5,a3,s1
    80002858:	0014849b          	addiw	s1,s1,1
    8000285c:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002860:	0005071b          	sext.w	a4,a0
    80002864:	02c5553b          	divuw	a0,a0,a2
    80002868:	00900793          	li	a5,9
    8000286c:	fce7e2e3          	bltu	a5,a4,80002830 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002870:	fff4849b          	addiw	s1,s1,-1
    80002874:	0004ce63          	bltz	s1,80002890 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002878:	fe040793          	addi	a5,s0,-32
    8000287c:	009787b3          	add	a5,a5,s1
    80002880:	ff07c503          	lbu	a0,-16(a5)
    80002884:	00004097          	auipc	ra,0x4
    80002888:	ea8080e7          	jalr	-344(ra) # 8000672c <__putc>
    8000288c:	fe5ff06f          	j	80002870 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80002890:	00a00513          	li	a0,10
    80002894:	00004097          	auipc	ra,0x4
    80002898:	e98080e7          	jalr	-360(ra) # 8000672c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    8000289c:	0009091b          	sext.w	s2,s2
    800028a0:	00297913          	andi	s2,s2,2
    800028a4:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800028a8:	10092073          	csrs	sstatus,s2
}
    800028ac:	03813083          	ld	ra,56(sp)
    800028b0:	03013403          	ld	s0,48(sp)
    800028b4:	02813483          	ld	s1,40(sp)
    800028b8:	02013903          	ld	s2,32(sp)
    800028bc:	04010113          	addi	sp,sp,64
    800028c0:	00008067          	ret

00000000800028c4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800028c4:	f8010113          	addi	sp,sp,-128
    800028c8:	06113c23          	sd	ra,120(sp)
    800028cc:	06813823          	sd	s0,112(sp)
    800028d0:	06913423          	sd	s1,104(sp)
    800028d4:	07213023          	sd	s2,96(sp)
    800028d8:	05313c23          	sd	s3,88(sp)
    800028dc:	05413823          	sd	s4,80(sp)
    800028e0:	05513423          	sd	s5,72(sp)
    800028e4:	05613023          	sd	s6,64(sp)
    800028e8:	08010413          	addi	s0,sp,128

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    800028ec:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800028f0:	142027f3          	csrr	a5,scause
    800028f4:	f8f43423          	sd	a5,-120(s0)
    return scause;
    800028f8:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause) {
    800028fc:	00900793          	li	a5,9
    80002900:	08e7fe63          	bgeu	a5,a4,8000299c <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    80002904:	fff00793          	li	a5,-1
    80002908:	03f79793          	slli	a5,a5,0x3f
    8000290c:	00178793          	addi	a5,a5,1
    80002910:	08f71a63          	bne	a4,a5,800029a4 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002914:	00200793          	li	a5,2
    80002918:	1447b073          	csrc	sip,a5

        case timerInterrupt:

            Riscv::mc_sip(Riscv::SIP_SSIP);
            //Riscv::printString("timerInterrupt\n");
            PCB::timeSliceCounter++;
    8000291c:	00006497          	auipc	s1,0x6
    80002920:	00c4b483          	ld	s1,12(s1) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002924:	0004b783          	ld	a5,0(s1)
    80002928:	00178793          	addi	a5,a5,1
    8000292c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	7ec080e7          	jalr	2028(ra) # 8000211c <_ZN12SleepPCBList13tryToWakePCBsEv>
            static uint64 sumInterrupts = 0;
            sumInterrupts++;
    80002938:	00006717          	auipc	a4,0x6
    8000293c:	09070713          	addi	a4,a4,144 # 800089c8 <_ZZN5Riscv20handleSupervisorTrapEvE13sumInterrupts>
    80002940:	00073783          	ld	a5,0(a4)
    80002944:	00178793          	addi	a5,a5,1
    80002948:	00f73023          	sd	a5,0(a4)
            //Riscv::printInteger(sumInterrupts);
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    8000294c:	00006797          	auipc	a5,0x6
    80002950:	fec7b783          	ld	a5,-20(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002954:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002958:	0087b783          	ld	a5,8(a5)
    8000295c:	0004b703          	ld	a4,0(s1)
    80002960:	04f76263          	bltu	a4,a5,800029a4 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002964:	141027f3          	csrr	a5,sepc
    80002968:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    8000296c:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002970:	100027f3          	csrr	a5,sstatus
    80002974:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80002978:	f9043903          	ld	s2,-112(s0)
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    8000297c:	00006797          	auipc	a5,0x6
    80002980:	fac7b783          	ld	a5,-84(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002984:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002988:	fffff097          	auipc	ra,0xfffff
    8000298c:	628080e7          	jalr	1576(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002990:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002994:	14149073          	csrw	sepc,s1
}
    80002998:	00c0006f          	j	800029a4 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    switch(scause) {
    8000299c:	00800793          	li	a5,8
    800029a0:	02f77a63          	bgeu	a4,a5,800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>

            return;
            //break;
    }

    console_handler();
    800029a4:	00004097          	auipc	ra,0x4
    800029a8:	dfc080e7          	jalr	-516(ra) # 800067a0 <console_handler>
}
    800029ac:	07813083          	ld	ra,120(sp)
    800029b0:	07013403          	ld	s0,112(sp)
    800029b4:	06813483          	ld	s1,104(sp)
    800029b8:	06013903          	ld	s2,96(sp)
    800029bc:	05813983          	ld	s3,88(sp)
    800029c0:	05013a03          	ld	s4,80(sp)
    800029c4:	04813a83          	ld	s5,72(sp)
    800029c8:	04013b03          	ld	s6,64(sp)
    800029cc:	08010113          	addi	sp,sp,128
    800029d0:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800029d4:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800029d8:	14102773          	csrr	a4,sepc
    800029dc:	fae43023          	sd	a4,-96(s0)
    return sepc;
    800029e0:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    800029e4:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    800029e8:	00100713          	li	a4,1
    800029ec:	06e78a63          	beq	a5,a4,80002a60 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
            else if(operation == MemoryAllocator::MEM_FREE)
    800029f0:	00200713          	li	a4,2
    800029f4:	08e78463          	beq	a5,a4,80002a7c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
            else if(operation == PCB::THREAD_CREATE)
    800029f8:	01100713          	li	a4,17
    800029fc:	08e78a63          	beq	a5,a4,80002a90 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
            else if(operation == PCB::THREAD_DISPATCH)
    80002a00:	01300713          	li	a4,19
    80002a04:	0ce78c63          	beq	a5,a4,80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x218>
            else if(operation == PCB::THREAD_EXIT)
    80002a08:	01200713          	li	a4,18
    80002a0c:	0ee78c63          	beq	a5,a4,80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
            else if(operation == PCB::TIME_SLEEP)
    80002a10:	03100713          	li	a4,49
    80002a14:	14e78863          	beq	a5,a4,80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
            else if(operation == KSemaphore::SEM_OPEN)
    80002a18:	02100713          	li	a4,33
    80002a1c:	18e78863          	beq	a5,a4,80002bac <_ZN5Riscv20handleSupervisorTrapEv+0x2e8>
            else if(operation == KSemaphore::SEM_WAIT)
    80002a20:	02300713          	li	a4,35
    80002a24:	1ce78263          	beq	a5,a4,80002be8 <_ZN5Riscv20handleSupervisorTrapEv+0x324>
            else if(operation == KSemaphore::SEM_SIGNAL)
    80002a28:	02400713          	li	a4,36
    80002a2c:	1ce78863          	beq	a5,a4,80002bfc <_ZN5Riscv20handleSupervisorTrapEv+0x338>
            else if(operation == KSemaphore::SEM_CLOSE)
    80002a30:	02200713          	li	a4,34
    80002a34:	04e79063          	bne	a5,a4,80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002a38:	00058913          	mv	s2,a1
                delete kSem;
    80002a3c:	00090e63          	beqz	s2,80002a58 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    80002a40:	00090513          	mv	a0,s2
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	750080e7          	jalr	1872(ra) # 80003194 <_ZN10KSemaphoreD1Ev>
    80002a4c:	00090513          	mv	a0,s2
    80002a50:	00001097          	auipc	ra,0x1
    80002a54:	87c080e7          	jalr	-1924(ra) # 800032cc <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    80002a58:	00000513          	li	a0,0
    80002a5c:	0180006f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002a60:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002a64:	00651513          	slli	a0,a0,0x6
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	594080e7          	jalr	1428(ra) # 80002ffc <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002a70:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002a74:	14149073          	csrw	sepc,s1
}
    80002a78:	f35ff06f          	j	800029ac <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002a7c:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	5a4080e7          	jalr	1444(ra) # 80003024 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002a88:	00050513          	mv	a0,a0
    80002a8c:	fe9ff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002a90:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002a94:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002a98:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002a9c:	05000513          	li	a0,80
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	494080e7          	jalr	1172(ra) # 80001f34 <_ZN3PCBnwEm>
    80002aa8:	00050993          	mv	s3,a0
    80002aac:	00300713          	li	a4,3
    80002ab0:	00090693          	mv	a3,s2
    80002ab4:	000b0613          	mv	a2,s6
    80002ab8:	000a8593          	mv	a1,s5
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	3d4080e7          	jalr	980(ra) # 80001e90 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80002ac4:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002ac8:	00098663          	beqz	s3,80002ad4 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    __asm__ volatile("li a0, 0");
    80002acc:	00000513          	li	a0,0
    80002ad0:	fa5ff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002ad4:	fff00513          	li	a0,-1
    80002ad8:	f9dff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002adc:	100027f3          	csrr	a5,sstatus
    80002ae0:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002ae4:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    80002ae8:	00006797          	auipc	a5,0x6
    80002aec:	e407b783          	ld	a5,-448(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002af0:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002af4:	fffff097          	auipc	ra,0xfffff
    80002af8:	4bc080e7          	jalr	1212(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002afc:	10091073          	csrw	sstatus,s2
}
    80002b00:	f75ff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                if(PCB::running == 0)
    80002b04:	00006797          	auipc	a5,0x6
    80002b08:	e347b783          	ld	a5,-460(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b0c:	0007b783          	ld	a5,0(a5)
    80002b10:	04078663          	beqz	a5,80002b5c <_ZN5Riscv20handleSupervisorTrapEv+0x298>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002b14:	100027f3          	csrr	a5,sstatus
    80002b18:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002b1c:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80002b20:	00006797          	auipc	a5,0x6
    80002b24:	e087b783          	ld	a5,-504(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002b28:	0007b023          	sd	zero,0(a5)
                PCB::exitingPCB = PCB::running;
    80002b2c:	00006797          	auipc	a5,0x6
    80002b30:	e0c7b783          	ld	a5,-500(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b34:	0007b783          	ld	a5,0(a5)
    80002b38:	00006717          	auipc	a4,0x6
    80002b3c:	de873703          	ld	a4,-536(a4) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002b40:	00f73023          	sd	a5,0(a4)
    void setState(State s) {state = s;}
    80002b44:	00400713          	li	a4,4
    80002b48:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    80002b4c:	fffff097          	auipc	ra,0xfffff
    80002b50:	464080e7          	jalr	1124(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002b54:	10091073          	csrw	sstatus,s2
}
    80002b58:	f1dff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b5c:	fff00513          	li	a0,-1
                    return;
    80002b60:	e4dff06f          	j	800029ac <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b64:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002b68:	100027f3          	csrr	a5,sstatus
    80002b6c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002b70:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80002b74:	00006797          	auipc	a5,0x6
    80002b78:	db47b783          	ld	a5,-588(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002b7c:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    80002b80:	00006797          	auipc	a5,0x6
    80002b84:	db87b783          	ld	a5,-584(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b88:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b8c:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	4e0080e7          	jalr	1248(ra) # 80002070 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	418080e7          	jalr	1048(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002ba0:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    80002ba4:	00000513          	li	a0,0
    80002ba8:	ecdff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80002bac:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80002bb0:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    80002bb4:	01800513          	li	a0,24
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	6ec080e7          	jalr	1772(ra) # 800032a4 <_ZN10KSemaphorenwEm>
    80002bc0:	00050913          	mv	s2,a0
    80002bc4:	000a059b          	sext.w	a1,s4
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	484080e7          	jalr	1156(ra) # 8000304c <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80002bd0:	0129b023          	sd	s2,0(s3)
                if(newSem == 0)
    80002bd4:	00090663          	beqz	s2,80002be0 <_ZN5Riscv20handleSupervisorTrapEv+0x31c>
                        __asm__ volatile("li a0, 0");
    80002bd8:	00000513          	li	a0,0
    80002bdc:	e99ff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002be0:	fff00513          	li	a0,-1
    80002be4:	e91ff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002be8:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	508080e7          	jalr	1288(ra) # 800030f4 <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002bf4:	00050513          	mv	a0,a0
    80002bf8:	e7dff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002bfc:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	654080e7          	jalr	1620(ra) # 80003254 <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002c08:	00050513          	mv	a0,a0
    80002c0c:	e69ff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    80002c10:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002c14:	00098513          	mv	a0,s3
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	344080e7          	jalr	836(ra) # 80001f5c <_ZN3PCBdlEPv>
    80002c20:	00048513          	mv	a0,s1
    80002c24:	00007097          	auipc	ra,0x7
    80002c28:	eb4080e7          	jalr	-332(ra) # 80009ad8 <_Unwind_Resume>
    80002c2c:	00050493          	mv	s1,a0
                KSemaphore* newSem = new KSemaphore(val);
    80002c30:	00090513          	mv	a0,s2
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	698080e7          	jalr	1688(ra) # 800032cc <_ZN10KSemaphoredlEPv>
    80002c3c:	00048513          	mv	a0,s1
    80002c40:	00007097          	auipc	ra,0x7
    80002c44:	e98080e7          	jalr	-360(ra) # 80009ad8 <_Unwind_Resume>

0000000080002c48 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002c48:	ff010113          	addi	sp,sp,-16
    80002c4c:	00813423          	sd	s0,8(sp)
    80002c50:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002c54:	00006717          	auipc	a4,0x6
    80002c58:	d7c72703          	lw	a4,-644(a4) # 800089d0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002c5c:	00100793          	li	a5,1
    80002c60:	04f70263          	beq	a4,a5,80002ca4 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002c64:	00006797          	auipc	a5,0x6
    80002c68:	d6c78793          	addi	a5,a5,-660 # 800089d0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002c6c:	00100713          	li	a4,1
    80002c70:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002c74:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002c78:	00006717          	auipc	a4,0x6
    80002c7c:	c9873703          	ld	a4,-872(a4) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002c80:	00073703          	ld	a4,0(a4)
    80002c84:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002c88:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002c8c:	00006797          	auipc	a5,0x6
    80002c90:	cb47b783          	ld	a5,-844(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002c94:	0007b783          	ld	a5,0(a5)
    80002c98:	40e787b3          	sub	a5,a5,a4
    80002c9c:	ff178793          	addi	a5,a5,-15
    80002ca0:	00f73023          	sd	a5,0(a4)
}
    80002ca4:	00813403          	ld	s0,8(sp)
    80002ca8:	01010113          	addi	sp,sp,16
    80002cac:	00008067          	ret

0000000080002cb0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002cb0:	fe010113          	addi	sp,sp,-32
    80002cb4:	00113c23          	sd	ra,24(sp)
    80002cb8:	00813823          	sd	s0,16(sp)
    80002cbc:	00913423          	sd	s1,8(sp)
    80002cc0:	01213023          	sd	s2,0(sp)
    80002cc4:	02010413          	addi	s0,sp,32
    80002cc8:	00050493          	mv	s1,a0
    80002ccc:	00058913          	mv	s2,a1

    initMemory();
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	f78080e7          	jalr	-136(ra) # 80002c48 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002cd8:	00006797          	auipc	a5,0x6
    80002cdc:	d007b783          	ld	a5,-768(a5) # 800089d8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002ce0:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002ce4:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80002ce8:	00000713          	li	a4,0
    while(curr != 0)
    80002cec:	00078c63          	beqz	a5,80002d04 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002cf0:	00f4e863          	bltu	s1,a5,80002d00 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80002cf4:	00078713          	mv	a4,a5
        curr = curr->next;
    80002cf8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002cfc:	ff1ff06f          	j	80002cec <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80002d00:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002d04:	02070063          	beqz	a4,80002d24 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002d08:	00973423          	sd	s1,8(a4)
}
    80002d0c:	01813083          	ld	ra,24(sp)
    80002d10:	01013403          	ld	s0,16(sp)
    80002d14:	00813483          	ld	s1,8(sp)
    80002d18:	00013903          	ld	s2,0(sp)
    80002d1c:	02010113          	addi	sp,sp,32
    80002d20:	00008067          	ret
        headAllocated = newAllocated;
    80002d24:	00006797          	auipc	a5,0x6
    80002d28:	ca97ba23          	sd	s1,-844(a5) # 800089d8 <_ZN15MemoryAllocator13headAllocatedE>
    80002d2c:	fe1ff06f          	j	80002d0c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080002d30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80002d30:	fe010113          	addi	sp,sp,-32
    80002d34:	00113c23          	sd	ra,24(sp)
    80002d38:	00813823          	sd	s0,16(sp)
    80002d3c:	00913423          	sd	s1,8(sp)
    80002d40:	01213023          	sd	s2,0(sp)
    80002d44:	02010413          	addi	s0,sp,32
    80002d48:	00050913          	mv	s2,a0
    initMemory();
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	efc080e7          	jalr	-260(ra) # 80002c48 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002d54:	00006497          	auipc	s1,0x6
    80002d58:	c8c4b483          	ld	s1,-884(s1) # 800089e0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80002d5c:	00000713          	li	a4,0
    while(curr != 0) {
    80002d60:	0a048863          	beqz	s1,80002e10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>

        if(curr->size >= size) {
    80002d64:	0004b783          	ld	a5,0(s1)
    80002d68:	0127f863          	bgeu	a5,s2,80002d78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80002d6c:	00048713          	mv	a4,s1
        curr = curr->next;
    80002d70:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80002d74:	fedff06f          	j	80002d60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80002d78:	01090693          	addi	a3,s2,16
    80002d7c:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80002d80:	00006617          	auipc	a2,0x6
    80002d84:	bc063603          	ld	a2,-1088(a2) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d88:	00063603          	ld	a2,0(a2)
    80002d8c:	04d66c63          	bltu	a2,a3,80002de4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80002d90:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80002d94:	01000613          	li	a2,16
    80002d98:	02f67663          	bgeu	a2,a5,80002dc4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80002d9c:	0084b603          	ld	a2,8(s1)
    80002da0:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80002da4:	ff078793          	addi	a5,a5,-16
    80002da8:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80002dac:	00070663          	beqz	a4,80002db8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80002db0:	00d73423          	sd	a3,8(a4)
    80002db4:	0380006f          	j	80002dec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80002db8:	00006797          	auipc	a5,0x6
    80002dbc:	c2d7b423          	sd	a3,-984(a5) # 800089e0 <_ZN15MemoryAllocator8headFreeE>
    80002dc0:	02c0006f          	j	80002dec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80002dc4:	00070863          	beqz	a4,80002dd4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80002dc8:	0084b783          	ld	a5,8(s1)
    80002dcc:	00f73423          	sd	a5,8(a4)
    80002dd0:	01c0006f          	j	80002dec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80002dd4:	0084b783          	ld	a5,8(s1)
    80002dd8:	00006717          	auipc	a4,0x6
    80002ddc:	c0f73423          	sd	a5,-1016(a4) # 800089e0 <_ZN15MemoryAllocator8headFreeE>
    80002de0:	00c0006f          	j	80002dec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80002de4:	02070063          	beqz	a4,80002e04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80002de8:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80002dec:	00090593          	mv	a1,s2
    80002df0:	00048513          	mv	a0,s1
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	ebc080e7          	jalr	-324(ra) # 80002cb0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80002dfc:	01048513          	addi	a0,s1,16
            break;
    80002e00:	0140006f          	j	80002e14 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80002e04:	00006797          	auipc	a5,0x6
    80002e08:	bc07be23          	sd	zero,-1060(a5) # 800089e0 <_ZN15MemoryAllocator8headFreeE>
    80002e0c:	fe1ff06f          	j	80002dec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80002e10:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80002e14:	01813083          	ld	ra,24(sp)
    80002e18:	01013403          	ld	s0,16(sp)
    80002e1c:	00813483          	ld	s1,8(sp)
    80002e20:	00013903          	ld	s2,0(sp)
    80002e24:	02010113          	addi	sp,sp,32
    80002e28:	00008067          	ret

0000000080002e2c <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80002e2c:	ff010113          	addi	sp,sp,-16
    80002e30:	00113423          	sd	ra,8(sp)
    80002e34:	00813023          	sd	s0,0(sp)
    80002e38:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	ef4080e7          	jalr	-268(ra) # 80002d30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80002e44:	00813083          	ld	ra,8(sp)
    80002e48:	00013403          	ld	s0,0(sp)
    80002e4c:	01010113          	addi	sp,sp,16
    80002e50:	00008067          	ret

0000000080002e54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80002e54:	fe010113          	addi	sp,sp,-32
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00813823          	sd	s0,16(sp)
    80002e60:	00913423          	sd	s1,8(sp)
    80002e64:	01213023          	sd	s2,0(sp)
    80002e68:	02010413          	addi	s0,sp,32
    80002e6c:	00050493          	mv	s1,a0
    80002e70:	00058913          	mv	s2,a1
    initMemory();
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	dd4080e7          	jalr	-556(ra) # 80002c48 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002e7c:	00006797          	auipc	a5,0x6
    80002e80:	b647b783          	ld	a5,-1180(a5) # 800089e0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80002e84:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80002e88:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80002e8c:	00000713          	li	a4,0
    while(curr != 0)
    80002e90:	00078c63          	beqz	a5,80002ea8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002e94:	00f4e863          	bltu	s1,a5,80002ea4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80002e98:	00078713          	mv	a4,a5
        curr = curr->next;
    80002e9c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002ea0:	ff1ff06f          	j	80002e90 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80002ea4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002ea8:	04070663          	beqz	a4,80002ef4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80002eac:	00973423          	sd	s1,8(a4)

    //todo
    //kad proradi kfree otkomentarisi ovo
    //test it few times
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80002eb0:	0084b783          	ld	a5,8(s1)
    80002eb4:	00078a63          	beqz	a5,80002ec8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80002eb8:	0004b603          	ld	a2,0(s1)
    80002ebc:	01060693          	addi	a3,a2,16
    80002ec0:	00d486b3          	add	a3,s1,a3
    80002ec4:	02d78e63          	beq	a5,a3,80002f00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80002ec8:	00070a63          	beqz	a4,80002edc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80002ecc:	00073683          	ld	a3,0(a4)
    80002ed0:	01068793          	addi	a5,a3,16
    80002ed4:	00f707b3          	add	a5,a4,a5
    80002ed8:	04978263          	beq	a5,s1,80002f1c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80002edc:	01813083          	ld	ra,24(sp)
    80002ee0:	01013403          	ld	s0,16(sp)
    80002ee4:	00813483          	ld	s1,8(sp)
    80002ee8:	00013903          	ld	s2,0(sp)
    80002eec:	02010113          	addi	sp,sp,32
    80002ef0:	00008067          	ret
        headFree = newSegment;
    80002ef4:	00006797          	auipc	a5,0x6
    80002ef8:	ae97b623          	sd	s1,-1300(a5) # 800089e0 <_ZN15MemoryAllocator8headFreeE>
    80002efc:	fb5ff06f          	j	80002eb0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80002f00:	0007b683          	ld	a3,0(a5)
    80002f04:	00d60633          	add	a2,a2,a3
    80002f08:	01060613          	addi	a2,a2,16
    80002f0c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80002f10:	0087b783          	ld	a5,8(a5)
    80002f14:	00f4b423          	sd	a5,8(s1)
    80002f18:	fb1ff06f          	j	80002ec8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80002f1c:	0004b783          	ld	a5,0(s1)
    80002f20:	00f686b3          	add	a3,a3,a5
    80002f24:	01068693          	addi	a3,a3,16
    80002f28:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80002f2c:	0084b783          	ld	a5,8(s1)
    80002f30:	00f73423          	sd	a5,8(a4)
}
    80002f34:	fa9ff06f          	j	80002edc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080002f38 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80002f38:	fe010113          	addi	sp,sp,-32
    80002f3c:	00113c23          	sd	ra,24(sp)
    80002f40:	00813823          	sd	s0,16(sp)
    80002f44:	00913423          	sd	s1,8(sp)
    80002f48:	01213023          	sd	s2,0(sp)
    80002f4c:	02010413          	addi	s0,sp,32
    80002f50:	00050913          	mv	s2,a0
    initMemory();
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	cf4080e7          	jalr	-780(ra) # 80002c48 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80002f5c:	00006497          	auipc	s1,0x6
    80002f60:	a7c4b483          	ld	s1,-1412(s1) # 800089d8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80002f64:	00000713          	li	a4,0
    while(curr != 0)
    80002f68:	02048a63          	beqz	s1,80002f9c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80002f6c:	01048793          	addi	a5,s1,16
    80002f70:	01278863          	beq	a5,s2,80002f80 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80002f74:	00048713          	mv	a4,s1
        curr = curr->next;
    80002f78:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002f7c:	fedff06f          	j	80002f68 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80002f80:	02070e63          	beqz	a4,80002fbc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80002f84:	0084b783          	ld	a5,8(s1)
    80002f88:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80002f8c:	0004b583          	ld	a1,0(s1)
    80002f90:	00048513          	mv	a0,s1
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	ec0080e7          	jalr	-320(ra) # 80002e54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80002f9c:	02048863          	beqz	s1,80002fcc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80002fa0:	00000513          	li	a0,0
    else
        return 1;
}
    80002fa4:	01813083          	ld	ra,24(sp)
    80002fa8:	01013403          	ld	s0,16(sp)
    80002fac:	00813483          	ld	s1,8(sp)
    80002fb0:	00013903          	ld	s2,0(sp)
    80002fb4:	02010113          	addi	sp,sp,32
    80002fb8:	00008067          	ret
                headAllocated = curr->next;
    80002fbc:	0084b783          	ld	a5,8(s1)
    80002fc0:	00006717          	auipc	a4,0x6
    80002fc4:	a0f73c23          	sd	a5,-1512(a4) # 800089d8 <_ZN15MemoryAllocator13headAllocatedE>
    80002fc8:	fc5ff06f          	j	80002f8c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80002fcc:	00100513          	li	a0,1
    80002fd0:	fd5ff06f          	j	80002fa4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080002fd4 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80002fd4:	ff010113          	addi	sp,sp,-16
    80002fd8:	00113423          	sd	ra,8(sp)
    80002fdc:	00813023          	sd	s0,0(sp)
    80002fe0:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	f54080e7          	jalr	-172(ra) # 80002f38 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80002fec:	00813083          	ld	ra,8(sp)
    80002ff0:	00013403          	ld	s0,0(sp)
    80002ff4:	01010113          	addi	sp,sp,16
    80002ff8:	00008067          	ret

0000000080002ffc <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00113423          	sd	ra,8(sp)
    80003004:	00813023          	sd	s0,0(sp)
    80003008:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	e20080e7          	jalr	-480(ra) # 80002e2c <_ZN15MemoryAllocator9mem_allocEm>
}
    80003014:	00813083          	ld	ra,8(sp)
    80003018:	00013403          	ld	s0,0(sp)
    8000301c:	01010113          	addi	sp,sp,16
    80003020:	00008067          	ret

0000000080003024 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003024:	ff010113          	addi	sp,sp,-16
    80003028:	00113423          	sd	ra,8(sp)
    8000302c:	00813023          	sd	s0,0(sp)
    80003030:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003034:	00000097          	auipc	ra,0x0
    80003038:	fa0080e7          	jalr	-96(ra) # 80002fd4 <_ZN15MemoryAllocator8mem_freeEPv>
    8000303c:	00813083          	ld	ra,8(sp)
    80003040:	00013403          	ld	s0,0(sp)
    80003044:	01010113          	addi	sp,sp,16
    80003048:	00008067          	ret

000000008000304c <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val) {
    8000304c:	ff010113          	addi	sp,sp,-16
    80003050:	00813423          	sd	s0,8(sp)
    80003054:	01010413          	addi	s0,sp,16
    this->val = this->beginVal = val;
    80003058:	00b52a23          	sw	a1,20(a0)
    8000305c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003060:	00053423          	sd	zero,8(a0)
    80003064:	00053023          	sd	zero,0(a0)
}
    80003068:	00813403          	ld	s0,8(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00813423          	sd	s0,8(sp)
    8000307c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003080:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    80003084:	00053783          	ld	a5,0(a0)
    80003088:	00078e63          	beqz	a5,800030a4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000308c:	00853783          	ld	a5,8(a0)
    80003090:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    80003094:	00b53423          	sd	a1,8(a0)
    }
}
    80003098:	00813403          	ld	s0,8(sp)
    8000309c:	01010113          	addi	sp,sp,16
    800030a0:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800030a4:	00b53423          	sd	a1,8(a0)
    800030a8:	00b53023          	sd	a1,0(a0)
    800030ac:	fedff06f          	j	80003098 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800030b0 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    800030b0:	ff010113          	addi	sp,sp,-16
    800030b4:	00113423          	sd	ra,8(sp)
    800030b8:	00813023          	sd	s0,0(sp)
    800030bc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800030c0:	00006797          	auipc	a5,0x6
    800030c4:	8787b783          	ld	a5,-1928(a5) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    800030c8:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800030cc:	00200793          	li	a5,2
    800030d0:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	fa0080e7          	jalr	-96(ra) # 80003074 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	ed4080e7          	jalr	-300(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
}
    800030e4:	00813083          	ld	ra,8(sp)
    800030e8:	00013403          	ld	s0,0(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret

00000000800030f4 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800030f4:	01052783          	lw	a5,16(a0)
    800030f8:	fff7879b          	addiw	a5,a5,-1
    800030fc:	00f52823          	sw	a5,16(a0)
    80003100:	02079713          	slli	a4,a5,0x20
    80003104:	00074663          	bltz	a4,80003110 <_ZN10KSemaphore4waitEv+0x1c>
}
    80003108:	00000513          	li	a0,0
    8000310c:	00008067          	ret
uint64 KSemaphore::wait() {
    80003110:	ff010113          	addi	sp,sp,-16
    80003114:	00113423          	sd	ra,8(sp)
    80003118:	00813023          	sd	s0,0(sp)
    8000311c:	01010413          	addi	s0,sp,16
        block();
    80003120:	00000097          	auipc	ra,0x0
    80003124:	f90080e7          	jalr	-112(ra) # 800030b0 <_ZN10KSemaphore5blockEv>
}
    80003128:	00000513          	li	a0,0
    8000312c:	00813083          	ld	ra,8(sp)
    80003130:	00013403          	ld	s0,0(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret

000000008000313c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00813423          	sd	s0,8(sp)
    80003144:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003148:	00053503          	ld	a0,0(a0)
    8000314c:	00813403          	ld	s0,8(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00813423          	sd	s0,8(sp)
    80003160:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003164:	00053783          	ld	a5,0(a0)
    80003168:	00078c63          	beqz	a5,80003180 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000316c:	0007b703          	ld	a4,0(a5)
    80003170:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003174:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    80003178:	00053783          	ld	a5,0(a0)
    8000317c:	00078863          	beqz	a5,8000318c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003180:	00813403          	ld	s0,8(sp)
    80003184:	01010113          	addi	sp,sp,16
    80003188:	00008067          	ret
        tailBlocked =0;
    8000318c:	00053423          	sd	zero,8(a0)
    80003190:	ff1ff06f          	j	80003180 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003194 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore() {
    80003194:	fe010113          	addi	sp,sp,-32
    80003198:	00113c23          	sd	ra,24(sp)
    8000319c:	00813823          	sd	s0,16(sp)
    800031a0:	00913423          	sd	s1,8(sp)
    800031a4:	01213023          	sd	s2,0(sp)
    800031a8:	02010413          	addi	s0,sp,32
    800031ac:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800031b0:	00090513          	mv	a0,s2
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	f88080e7          	jalr	-120(ra) # 8000313c <_ZN10KSemaphore15getFirstBlockedEv>
    800031bc:	00050493          	mv	s1,a0
    800031c0:	02050063          	beqz	a0,800031e0 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800031c4:	00090513          	mv	a0,s2
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	f90080e7          	jalr	-112(ra) # 80003158 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800031d0:	00048513          	mv	a0,s1
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	210080e7          	jalr	528(ra) # 800023e4 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800031dc:	fd5ff06f          	j	800031b0 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800031e0:	01813083          	ld	ra,24(sp)
    800031e4:	01013403          	ld	s0,16(sp)
    800031e8:	00813483          	ld	s1,8(sp)
    800031ec:	00013903          	ld	s2,0(sp)
    800031f0:	02010113          	addi	sp,sp,32
    800031f4:	00008067          	ret

00000000800031f8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800031f8:	fe010113          	addi	sp,sp,-32
    800031fc:	00113c23          	sd	ra,24(sp)
    80003200:	00813823          	sd	s0,16(sp)
    80003204:	00913423          	sd	s1,8(sp)
    80003208:	01213023          	sd	s2,0(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003214:	00000097          	auipc	ra,0x0
    80003218:	f28080e7          	jalr	-216(ra) # 8000313c <_ZN10KSemaphore15getFirstBlockedEv>
    8000321c:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003220:	00090513          	mv	a0,s2
    80003224:	00000097          	auipc	ra,0x0
    80003228:	f34080e7          	jalr	-204(ra) # 80003158 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    8000322c:	00048863          	beqz	s1,8000323c <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80003230:	00048513          	mv	a0,s1
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	1b0080e7          	jalr	432(ra) # 800023e4 <_ZN9Scheduler3putEP3PCB>
}
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	00813483          	ld	s1,8(sp)
    80003248:	00013903          	ld	s2,0(sp)
    8000324c:	02010113          	addi	sp,sp,32
    80003250:	00008067          	ret

0000000080003254 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003254:	01052783          	lw	a5,16(a0)
    80003258:	0017879b          	addiw	a5,a5,1
    8000325c:	0007871b          	sext.w	a4,a5
    80003260:	00f52823          	sw	a5,16(a0)
    80003264:	00e05a63          	blez	a4,80003278 <_ZN10KSemaphore6signalEv+0x24>
        val = beginVal;
    80003268:	01452783          	lw	a5,20(a0)
    8000326c:	00f52823          	sw	a5,16(a0)
}
    80003270:	00000513          	li	a0,0
    80003274:	00008067          	ret
uint64 KSemaphore::signal() {
    80003278:	ff010113          	addi	sp,sp,-16
    8000327c:	00113423          	sd	ra,8(sp)
    80003280:	00813023          	sd	s0,0(sp)
    80003284:	01010413          	addi	s0,sp,16
        unblock();
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	f70080e7          	jalr	-144(ra) # 800031f8 <_ZN10KSemaphore7unblockEv>
}
    80003290:	00000513          	li	a0,0
    80003294:	00813083          	ld	ra,8(sp)
    80003298:	00013403          	ld	s0,0(sp)
    8000329c:	01010113          	addi	sp,sp,16
    800032a0:	00008067          	ret

00000000800032a4 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    800032a4:	ff010113          	addi	sp,sp,-16
    800032a8:	00113423          	sd	ra,8(sp)
    800032ac:	00813023          	sd	s0,0(sp)
    800032b0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	d48080e7          	jalr	-696(ra) # 80002ffc <_Z7kmallocm>
}
    800032bc:	00813083          	ld	ra,8(sp)
    800032c0:	00013403          	ld	s0,0(sp)
    800032c4:	01010113          	addi	sp,sp,16
    800032c8:	00008067          	ret

00000000800032cc <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    800032cc:	ff010113          	addi	sp,sp,-16
    800032d0:	00113423          	sd	ra,8(sp)
    800032d4:	00813023          	sd	s0,0(sp)
    800032d8:	01010413          	addi	s0,sp,16
    kfree(p);
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	d48080e7          	jalr	-696(ra) # 80003024 <_Z5kfreePv>
}
    800032e4:	00813083          	ld	ra,8(sp)
    800032e8:	00013403          	ld	s0,0(sp)
    800032ec:	01010113          	addi	sp,sp,16
    800032f0:	00008067          	ret

00000000800032f4 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800032f4:	fe010113          	addi	sp,sp,-32
    800032f8:	00113c23          	sd	ra,24(sp)
    800032fc:	00813823          	sd	s0,16(sp)
    80003300:	00913423          	sd	s1,8(sp)
    80003304:	01213023          	sd	s2,0(sp)
    80003308:	02010413          	addi	s0,sp,32
    8000330c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003310:	00000913          	li	s2,0
    80003314:	00c0006f          	j	80003320 <_Z16producerKeyboardPv+0x2c>
    while ((key = __getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	00c080e7          	jalr	12(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    80003320:	00003097          	auipc	ra,0x3
    80003324:	448080e7          	jalr	1096(ra) # 80006768 <__getc>
    80003328:	0005059b          	sext.w	a1,a0
    8000332c:	01b00793          	li	a5,27
    80003330:	02f58a63          	beq	a1,a5,80003364 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003334:	0084b503          	ld	a0,8(s1)
    80003338:	00001097          	auipc	ra,0x1
    8000333c:	214080e7          	jalr	532(ra) # 8000454c <_ZN6Buffer3putEi>
        i++;
    80003340:	0019071b          	addiw	a4,s2,1
    80003344:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003348:	0004a683          	lw	a3,0(s1)
    8000334c:	0026979b          	slliw	a5,a3,0x2
    80003350:	00d787bb          	addw	a5,a5,a3
    80003354:	0017979b          	slliw	a5,a5,0x1
    80003358:	02f767bb          	remw	a5,a4,a5
    8000335c:	fc0792e3          	bnez	a5,80003320 <_Z16producerKeyboardPv+0x2c>
    80003360:	fb9ff06f          	j	80003318 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003364:	00100793          	li	a5,1
    80003368:	00005717          	auipc	a4,0x5
    8000336c:	68f72023          	sw	a5,1664(a4) # 800089e8 <threadEnd>

    delete data->buffer;
    80003370:	0084b903          	ld	s2,8(s1)
    80003374:	00090e63          	beqz	s2,80003390 <_Z16producerKeyboardPv+0x9c>
    80003378:	00090513          	mv	a0,s2
    8000337c:	00001097          	auipc	ra,0x1
    80003380:	124080e7          	jalr	292(ra) # 800044a0 <_ZN6BufferD1Ev>
    80003384:	00090513          	mv	a0,s2
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	17c080e7          	jalr	380(ra) # 80002504 <_ZdlPv>

    sem_signal(data->wait);
    80003390:	0104b503          	ld	a0,16(s1)
    80003394:	ffffe097          	auipc	ra,0xffffe
    80003398:	068080e7          	jalr	104(ra) # 800013fc <sem_signal>
}
    8000339c:	01813083          	ld	ra,24(sp)
    800033a0:	01013403          	ld	s0,16(sp)
    800033a4:	00813483          	ld	s1,8(sp)
    800033a8:	00013903          	ld	s2,0(sp)
    800033ac:	02010113          	addi	sp,sp,32
    800033b0:	00008067          	ret

00000000800033b4 <_Z8producerPv>:

void producer(void *arg) {
    800033b4:	fe010113          	addi	sp,sp,-32
    800033b8:	00113c23          	sd	ra,24(sp)
    800033bc:	00813823          	sd	s0,16(sp)
    800033c0:	00913423          	sd	s1,8(sp)
    800033c4:	01213023          	sd	s2,0(sp)
    800033c8:	02010413          	addi	s0,sp,32
    800033cc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033d0:	00000913          	li	s2,0
    800033d4:	00c0006f          	j	800033e0 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800033d8:	ffffe097          	auipc	ra,0xffffe
    800033dc:	f4c080e7          	jalr	-180(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    800033e0:	00005797          	auipc	a5,0x5
    800033e4:	6087a783          	lw	a5,1544(a5) # 800089e8 <threadEnd>
    800033e8:	02079e63          	bnez	a5,80003424 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800033ec:	0004a583          	lw	a1,0(s1)
    800033f0:	0305859b          	addiw	a1,a1,48
    800033f4:	0084b503          	ld	a0,8(s1)
    800033f8:	00001097          	auipc	ra,0x1
    800033fc:	154080e7          	jalr	340(ra) # 8000454c <_ZN6Buffer3putEi>
        i++;
    80003400:	0019071b          	addiw	a4,s2,1
    80003404:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003408:	0004a683          	lw	a3,0(s1)
    8000340c:	0026979b          	slliw	a5,a3,0x2
    80003410:	00d787bb          	addw	a5,a5,a3
    80003414:	0017979b          	slliw	a5,a5,0x1
    80003418:	02f767bb          	remw	a5,a4,a5
    8000341c:	fc0792e3          	bnez	a5,800033e0 <_Z8producerPv+0x2c>
    80003420:	fb9ff06f          	j	800033d8 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003424:	0104b503          	ld	a0,16(s1)
    80003428:	ffffe097          	auipc	ra,0xffffe
    8000342c:	fd4080e7          	jalr	-44(ra) # 800013fc <sem_signal>
}
    80003430:	01813083          	ld	ra,24(sp)
    80003434:	01013403          	ld	s0,16(sp)
    80003438:	00813483          	ld	s1,8(sp)
    8000343c:	00013903          	ld	s2,0(sp)
    80003440:	02010113          	addi	sp,sp,32
    80003444:	00008067          	ret

0000000080003448 <_Z8consumerPv>:

void consumer(void *arg) {
    80003448:	fd010113          	addi	sp,sp,-48
    8000344c:	02113423          	sd	ra,40(sp)
    80003450:	02813023          	sd	s0,32(sp)
    80003454:	00913c23          	sd	s1,24(sp)
    80003458:	01213823          	sd	s2,16(sp)
    8000345c:	01313423          	sd	s3,8(sp)
    80003460:	03010413          	addi	s0,sp,48
    80003464:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80003468:	00000993          	li	s3,0
    8000346c:	01c0006f          	j	80003488 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	eb4080e7          	jalr	-332(ra) # 80001324 <thread_dispatch>
    80003478:	0500006f          	j	800034c8 <_Z8consumerPv+0x80>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    8000347c:	00a00513          	li	a0,10
    80003480:	00003097          	auipc	ra,0x3
    80003484:	2ac080e7          	jalr	684(ra) # 8000672c <__putc>
    while (!threadEnd) {
    80003488:	00005797          	auipc	a5,0x5
    8000348c:	5607a783          	lw	a5,1376(a5) # 800089e8 <threadEnd>
    80003490:	04079463          	bnez	a5,800034d8 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80003494:	00893503          	ld	a0,8(s2)
    80003498:	00001097          	auipc	ra,0x1
    8000349c:	144080e7          	jalr	324(ra) # 800045dc <_ZN6Buffer3getEv>
        i++;
    800034a0:	0019849b          	addiw	s1,s3,1
    800034a4:	0004899b          	sext.w	s3,s1
    800034a8:	0ff57513          	andi	a0,a0,255
    800034ac:	00003097          	auipc	ra,0x3
    800034b0:	280080e7          	jalr	640(ra) # 8000672c <__putc>
        if (i % (5 * data->id) == 0) {
    800034b4:	00092703          	lw	a4,0(s2)
    800034b8:	0027179b          	slliw	a5,a4,0x2
    800034bc:	00e787bb          	addw	a5,a5,a4
    800034c0:	02f4e7bb          	remw	a5,s1,a5
    800034c4:	fa0786e3          	beqz	a5,80003470 <_Z8consumerPv+0x28>
        }

        if (i % 80 == 0) {
    800034c8:	05000793          	li	a5,80
    800034cc:	02f4e4bb          	remw	s1,s1,a5
    800034d0:	fa049ce3          	bnez	s1,80003488 <_Z8consumerPv+0x40>
    800034d4:	fa9ff06f          	j	8000347c <_Z8consumerPv+0x34>
            putc('\n');
        }
    }

    sem_signal(data->wait);
    800034d8:	01093503          	ld	a0,16(s2)
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	f20080e7          	jalr	-224(ra) # 800013fc <sem_signal>
}
    800034e4:	02813083          	ld	ra,40(sp)
    800034e8:	02013403          	ld	s0,32(sp)
    800034ec:	01813483          	ld	s1,24(sp)
    800034f0:	01013903          	ld	s2,16(sp)
    800034f4:	00813983          	ld	s3,8(sp)
    800034f8:	03010113          	addi	sp,sp,48
    800034fc:	00008067          	ret

0000000080003500 <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    80003500:	f2010113          	addi	sp,sp,-224
    80003504:	0c113c23          	sd	ra,216(sp)
    80003508:	0c813823          	sd	s0,208(sp)
    8000350c:	0c913423          	sd	s1,200(sp)
    80003510:	0d213023          	sd	s2,192(sp)
    80003514:	0e010413          	addi	s0,sp,224
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80003518:	00004517          	auipc	a0,0x4
    8000351c:	c3050513          	addi	a0,a0,-976 # 80007148 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003520:	00000097          	auipc	ra,0x0
    80003524:	7e0080e7          	jalr	2016(ra) # 80003d00 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    80003528:	00004517          	auipc	a0,0x4
    8000352c:	c4050513          	addi	a0,a0,-960 # 80007168 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    80003530:	00000097          	auipc	ra,0x0
    80003534:	7d0080e7          	jalr	2000(ra) # 80003d00 <_Z11printStringPKc>
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80003538:	00004517          	auipc	a0,0x4
    8000353c:	c5050513          	addi	a0,a0,-944 # 80007188 <_ZZN5Riscv12printIntegerEmE6digits+0x50>
    80003540:	00000097          	auipc	ra,0x0
    80003544:	7c0080e7          	jalr	1984(ra) # 80003d00 <_Z11printStringPKc>
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	00500513          	li	a0,5
    80003554:	00001097          	auipc	ra,0x1
    80003558:	944080e7          	jalr	-1724(ra) # 80003e98 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000355c:	00004517          	auipc	a0,0x4
    80003560:	c4450513          	addi	a0,a0,-956 # 800071a0 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80003564:	00000097          	auipc	ra,0x0
    80003568:	79c080e7          	jalr	1948(ra) # 80003d00 <_Z11printStringPKc>
    8000356c:	00000613          	li	a2,0
    80003570:	00a00593          	li	a1,10
    80003574:	00a00513          	li	a0,10
    80003578:	00001097          	auipc	ra,0x1
    8000357c:	920080e7          	jalr	-1760(ra) # 80003e98 <_Z8printIntiii>
    printString(".\n");
    80003580:	00004517          	auipc	a0,0x4
    80003584:	b9850513          	addi	a0,a0,-1128 # 80007118 <CONSOLE_STATUS+0x108>
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	778080e7          	jalr	1912(ra) # 80003d00 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80003590:	03800513          	li	a0,56
    80003594:	fffff097          	auipc	ra,0xfffff
    80003598:	f48080e7          	jalr	-184(ra) # 800024dc <_Znwm>
    8000359c:	00050913          	mv	s2,a0
    800035a0:	00a00593          	li	a1,10
    800035a4:	00001097          	auipc	ra,0x1
    800035a8:	e74080e7          	jalr	-396(ra) # 80004418 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    800035ac:	00000593          	li	a1,0
    800035b0:	00005517          	auipc	a0,0x5
    800035b4:	44050513          	addi	a0,a0,1088 # 800089f0 <waitForAll>
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	db4080e7          	jalr	-588(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    800035c0:	00500793          	li	a5,5
    800035c4:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    800035c8:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    800035cc:	00005797          	auipc	a5,0x5
    800035d0:	4247b783          	ld	a5,1060(a5) # 800089f0 <waitForAll>
    800035d4:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    800035d8:	fc040613          	addi	a2,s0,-64
    800035dc:	00000597          	auipc	a1,0x0
    800035e0:	e6c58593          	addi	a1,a1,-404 # 80003448 <_Z8consumerPv>
    800035e4:	fd840513          	addi	a0,s0,-40
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	cbc080e7          	jalr	-836(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    800035f0:	00000493          	li	s1,0
    800035f4:	00400793          	li	a5,4
    800035f8:	0697cc63          	blt	a5,s1,80003670 <_Z22producerConsumer_C_APIv+0x170>
        data[i].id = i;
    800035fc:	00149793          	slli	a5,s1,0x1
    80003600:	009787b3          	add	a5,a5,s1
    80003604:	00379793          	slli	a5,a5,0x3
    80003608:	fe040713          	addi	a4,s0,-32
    8000360c:	00f707b3          	add	a5,a4,a5
    80003610:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    80003614:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80003618:	00005717          	auipc	a4,0x5
    8000361c:	3d873703          	ld	a4,984(a4) # 800089f0 <waitForAll>
    80003620:	f6e7bc23          	sd	a4,-136(a5)

        thread_create(threads + i,
    80003624:	00048613          	mv	a2,s1
    80003628:	00349513          	slli	a0,s1,0x3
    8000362c:	f2040713          	addi	a4,s0,-224
    80003630:	00a70533          	add	a0,a4,a0
    80003634:	02905863          	blez	s1,80003664 <_Z22producerConsumer_C_APIv+0x164>
    80003638:	00000597          	auipc	a1,0x0
    8000363c:	d7c58593          	addi	a1,a1,-644 # 800033b4 <_Z8producerPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80003640:	00161793          	slli	a5,a2,0x1
    80003644:	00c787b3          	add	a5,a5,a2
    80003648:	00379793          	slli	a5,a5,0x3
        thread_create(threads + i,
    8000364c:	f4840613          	addi	a2,s0,-184
    80003650:	00f60633          	add	a2,a2,a5
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	c50080e7          	jalr	-944(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000365c:	0014849b          	addiw	s1,s1,1
    80003660:	f95ff06f          	j	800035f4 <_Z22producerConsumer_C_APIv+0xf4>
        thread_create(threads + i,
    80003664:	00000597          	auipc	a1,0x0
    80003668:	c9058593          	addi	a1,a1,-880 # 800032f4 <_Z16producerKeyboardPv>
    8000366c:	fd5ff06f          	j	80003640 <_Z22producerConsumer_C_APIv+0x140>
    }

    thread_dispatch();
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	cb4080e7          	jalr	-844(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80003678:	00000493          	li	s1,0
    8000367c:	00500793          	li	a5,5
    80003680:	0097ce63          	blt	a5,s1,8000369c <_Z22producerConsumer_C_APIv+0x19c>
        sem_wait(waitForAll);
    80003684:	00005517          	auipc	a0,0x5
    80003688:	36c53503          	ld	a0,876(a0) # 800089f0 <waitForAll>
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	d44080e7          	jalr	-700(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003694:	0014849b          	addiw	s1,s1,1
    80003698:	fe5ff06f          	j	8000367c <_Z22producerConsumer_C_APIv+0x17c>
    }

    sem_close(waitForAll);
    8000369c:	00005517          	auipc	a0,0x5
    800036a0:	35453503          	ld	a0,852(a0) # 800089f0 <waitForAll>
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	d00080e7          	jalr	-768(ra) # 800013a4 <sem_close>
    800036ac:	0d813083          	ld	ra,216(sp)
    800036b0:	0d013403          	ld	s0,208(sp)
    800036b4:	0c813483          	ld	s1,200(sp)
    800036b8:	0c013903          	ld	s2,192(sp)
    800036bc:	0e010113          	addi	sp,sp,224
    800036c0:	00008067          	ret
    800036c4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800036c8:	00090513          	mv	a0,s2
    800036cc:	fffff097          	auipc	ra,0xfffff
    800036d0:	e38080e7          	jalr	-456(ra) # 80002504 <_ZdlPv>
    800036d4:	00048513          	mv	a0,s1
    800036d8:	00006097          	auipc	ra,0x6
    800036dc:	400080e7          	jalr	1024(ra) # 80009ad8 <_Unwind_Resume>

00000000800036e0 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800036e0:	fe010113          	addi	sp,sp,-32
    800036e4:	00113c23          	sd	ra,24(sp)
    800036e8:	00813823          	sd	s0,16(sp)
    800036ec:	00913423          	sd	s1,8(sp)
    800036f0:	01213023          	sd	s2,0(sp)
    800036f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800036f8:	00000913          	li	s2,0
    800036fc:	0380006f          	j	80003734 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	c24080e7          	jalr	-988(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003708:	00148493          	addi	s1,s1,1
    8000370c:	000027b7          	lui	a5,0x2
    80003710:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003714:	0097ee63          	bltu	a5,s1,80003730 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003718:	00000713          	li	a4,0
    8000371c:	000077b7          	lui	a5,0x7
    80003720:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003724:	fce7eee3          	bltu	a5,a4,80003700 <_Z11workerBodyAPv+0x20>
    80003728:	00170713          	addi	a4,a4,1
    8000372c:	ff1ff06f          	j	8000371c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003730:	00190913          	addi	s2,s2,1
    80003734:	00900793          	li	a5,9
    80003738:	0527e063          	bltu	a5,s2,80003778 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000373c:	00004517          	auipc	a0,0x4
    80003740:	a7c50513          	addi	a0,a0,-1412 # 800071b8 <_ZZN5Riscv12printIntegerEmE6digits+0x80>
    80003744:	00000097          	auipc	ra,0x0
    80003748:	5bc080e7          	jalr	1468(ra) # 80003d00 <_Z11printStringPKc>
    8000374c:	00000613          	li	a2,0
    80003750:	00a00593          	li	a1,10
    80003754:	0009051b          	sext.w	a0,s2
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	740080e7          	jalr	1856(ra) # 80003e98 <_Z8printIntiii>
    80003760:	00004517          	auipc	a0,0x4
    80003764:	a2050513          	addi	a0,a0,-1504 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	598080e7          	jalr	1432(ra) # 80003d00 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003770:	00000493          	li	s1,0
    80003774:	f99ff06f          	j	8000370c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003778:	00004517          	auipc	a0,0x4
    8000377c:	a4850513          	addi	a0,a0,-1464 # 800071c0 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80003780:	00000097          	auipc	ra,0x0
    80003784:	580080e7          	jalr	1408(ra) # 80003d00 <_Z11printStringPKc>
    finishedA = true;
    80003788:	00100793          	li	a5,1
    8000378c:	00005717          	auipc	a4,0x5
    80003790:	26f70623          	sb	a5,620(a4) # 800089f8 <finishedA>
}
    80003794:	01813083          	ld	ra,24(sp)
    80003798:	01013403          	ld	s0,16(sp)
    8000379c:	00813483          	ld	s1,8(sp)
    800037a0:	00013903          	ld	s2,0(sp)
    800037a4:	02010113          	addi	sp,sp,32
    800037a8:	00008067          	ret

00000000800037ac <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00913423          	sd	s1,8(sp)
    800037bc:	01213023          	sd	s2,0(sp)
    800037c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800037c4:	00000913          	li	s2,0
    800037c8:	0380006f          	j	80003800 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	b58080e7          	jalr	-1192(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800037d4:	00148493          	addi	s1,s1,1
    800037d8:	000027b7          	lui	a5,0x2
    800037dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800037e0:	0097ee63          	bltu	a5,s1,800037fc <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800037e4:	00000713          	li	a4,0
    800037e8:	000077b7          	lui	a5,0x7
    800037ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800037f0:	fce7eee3          	bltu	a5,a4,800037cc <_Z11workerBodyBPv+0x20>
    800037f4:	00170713          	addi	a4,a4,1
    800037f8:	ff1ff06f          	j	800037e8 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800037fc:	00190913          	addi	s2,s2,1
    80003800:	00f00793          	li	a5,15
    80003804:	0527e063          	bltu	a5,s2,80003844 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003808:	00004517          	auipc	a0,0x4
    8000380c:	9c850513          	addi	a0,a0,-1592 # 800071d0 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    80003810:	00000097          	auipc	ra,0x0
    80003814:	4f0080e7          	jalr	1264(ra) # 80003d00 <_Z11printStringPKc>
    80003818:	00000613          	li	a2,0
    8000381c:	00a00593          	li	a1,10
    80003820:	0009051b          	sext.w	a0,s2
    80003824:	00000097          	auipc	ra,0x0
    80003828:	674080e7          	jalr	1652(ra) # 80003e98 <_Z8printIntiii>
    8000382c:	00004517          	auipc	a0,0x4
    80003830:	95450513          	addi	a0,a0,-1708 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003834:	00000097          	auipc	ra,0x0
    80003838:	4cc080e7          	jalr	1228(ra) # 80003d00 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000383c:	00000493          	li	s1,0
    80003840:	f99ff06f          	j	800037d8 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003844:	00004517          	auipc	a0,0x4
    80003848:	99450513          	addi	a0,a0,-1644 # 800071d8 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    8000384c:	00000097          	auipc	ra,0x0
    80003850:	4b4080e7          	jalr	1204(ra) # 80003d00 <_Z11printStringPKc>
    finishedB = true;
    80003854:	00100793          	li	a5,1
    80003858:	00005717          	auipc	a4,0x5
    8000385c:	1af700a3          	sb	a5,417(a4) # 800089f9 <finishedB>
    thread_dispatch();
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	ac4080e7          	jalr	-1340(ra) # 80001324 <thread_dispatch>
}
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	00013903          	ld	s2,0(sp)
    80003878:	02010113          	addi	sp,sp,32
    8000387c:	00008067          	ret

0000000080003880 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80003880:	fe010113          	addi	sp,sp,-32
    80003884:	00113c23          	sd	ra,24(sp)
    80003888:	00813823          	sd	s0,16(sp)
    8000388c:	00913423          	sd	s1,8(sp)
    80003890:	01213023          	sd	s2,0(sp)
    80003894:	02010413          	addi	s0,sp,32
    80003898:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000389c:	00100793          	li	a5,1
    800038a0:	02a7f863          	bgeu	a5,a0,800038d0 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800038a4:	00a00793          	li	a5,10
    800038a8:	02f577b3          	remu	a5,a0,a5
    800038ac:	02078e63          	beqz	a5,800038e8 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800038b0:	fff48513          	addi	a0,s1,-1
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	fcc080e7          	jalr	-52(ra) # 80003880 <_Z9fibonaccim>
    800038bc:	00050913          	mv	s2,a0
    800038c0:	ffe48513          	addi	a0,s1,-2
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	fbc080e7          	jalr	-68(ra) # 80003880 <_Z9fibonaccim>
    800038cc:	00a90533          	add	a0,s2,a0
}
    800038d0:	01813083          	ld	ra,24(sp)
    800038d4:	01013403          	ld	s0,16(sp)
    800038d8:	00813483          	ld	s1,8(sp)
    800038dc:	00013903          	ld	s2,0(sp)
    800038e0:	02010113          	addi	sp,sp,32
    800038e4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	a3c080e7          	jalr	-1476(ra) # 80001324 <thread_dispatch>
    800038f0:	fc1ff06f          	j	800038b0 <_Z9fibonaccim+0x30>

00000000800038f4 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	01213023          	sd	s2,0(sp)
    80003908:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000390c:	00000493          	li	s1,0
    80003910:	0400006f          	j	80003950 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003914:	00004517          	auipc	a0,0x4
    80003918:	8d450513          	addi	a0,a0,-1836 # 800071e8 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    8000391c:	00000097          	auipc	ra,0x0
    80003920:	3e4080e7          	jalr	996(ra) # 80003d00 <_Z11printStringPKc>
    80003924:	00000613          	li	a2,0
    80003928:	00a00593          	li	a1,10
    8000392c:	00048513          	mv	a0,s1
    80003930:	00000097          	auipc	ra,0x0
    80003934:	568080e7          	jalr	1384(ra) # 80003e98 <_Z8printIntiii>
    80003938:	00004517          	auipc	a0,0x4
    8000393c:	84850513          	addi	a0,a0,-1976 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003940:	00000097          	auipc	ra,0x0
    80003944:	3c0080e7          	jalr	960(ra) # 80003d00 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003948:	0014849b          	addiw	s1,s1,1
    8000394c:	0ff4f493          	andi	s1,s1,255
    80003950:	00200793          	li	a5,2
    80003954:	fc97f0e3          	bgeu	a5,s1,80003914 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80003958:	00004517          	auipc	a0,0x4
    8000395c:	89850513          	addi	a0,a0,-1896 # 800071f0 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003960:	00000097          	auipc	ra,0x0
    80003964:	3a0080e7          	jalr	928(ra) # 80003d00 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003968:	00700313          	li	t1,7
    thread_dispatch();
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	9b8080e7          	jalr	-1608(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003974:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003978:	00004517          	auipc	a0,0x4
    8000397c:	88850513          	addi	a0,a0,-1912 # 80007200 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80003980:	00000097          	auipc	ra,0x0
    80003984:	380080e7          	jalr	896(ra) # 80003d00 <_Z11printStringPKc>
    80003988:	00000613          	li	a2,0
    8000398c:	00a00593          	li	a1,10
    80003990:	0009051b          	sext.w	a0,s2
    80003994:	00000097          	auipc	ra,0x0
    80003998:	504080e7          	jalr	1284(ra) # 80003e98 <_Z8printIntiii>
    8000399c:	00003517          	auipc	a0,0x3
    800039a0:	7e450513          	addi	a0,a0,2020 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	35c080e7          	jalr	860(ra) # 80003d00 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800039ac:	00c00513          	li	a0,12
    800039b0:	00000097          	auipc	ra,0x0
    800039b4:	ed0080e7          	jalr	-304(ra) # 80003880 <_Z9fibonaccim>
    800039b8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800039bc:	00004517          	auipc	a0,0x4
    800039c0:	84c50513          	addi	a0,a0,-1972 # 80007208 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    800039c4:	00000097          	auipc	ra,0x0
    800039c8:	33c080e7          	jalr	828(ra) # 80003d00 <_Z11printStringPKc>
    800039cc:	00000613          	li	a2,0
    800039d0:	00a00593          	li	a1,10
    800039d4:	0009051b          	sext.w	a0,s2
    800039d8:	00000097          	auipc	ra,0x0
    800039dc:	4c0080e7          	jalr	1216(ra) # 80003e98 <_Z8printIntiii>
    800039e0:	00003517          	auipc	a0,0x3
    800039e4:	7a050513          	addi	a0,a0,1952 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800039e8:	00000097          	auipc	ra,0x0
    800039ec:	318080e7          	jalr	792(ra) # 80003d00 <_Z11printStringPKc>
    800039f0:	0400006f          	j	80003a30 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800039f4:	00003517          	auipc	a0,0x3
    800039f8:	7f450513          	addi	a0,a0,2036 # 800071e8 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    800039fc:	00000097          	auipc	ra,0x0
    80003a00:	304080e7          	jalr	772(ra) # 80003d00 <_Z11printStringPKc>
    80003a04:	00000613          	li	a2,0
    80003a08:	00a00593          	li	a1,10
    80003a0c:	00048513          	mv	a0,s1
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	488080e7          	jalr	1160(ra) # 80003e98 <_Z8printIntiii>
    80003a18:	00003517          	auipc	a0,0x3
    80003a1c:	76850513          	addi	a0,a0,1896 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	2e0080e7          	jalr	736(ra) # 80003d00 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003a28:	0014849b          	addiw	s1,s1,1
    80003a2c:	0ff4f493          	andi	s1,s1,255
    80003a30:	00500793          	li	a5,5
    80003a34:	fc97f0e3          	bgeu	a5,s1,800039f4 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80003a38:	00003517          	auipc	a0,0x3
    80003a3c:	7e050513          	addi	a0,a0,2016 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003a40:	00000097          	auipc	ra,0x0
    80003a44:	2c0080e7          	jalr	704(ra) # 80003d00 <_Z11printStringPKc>
    finishedC = true;
    80003a48:	00100793          	li	a5,1
    80003a4c:	00005717          	auipc	a4,0x5
    80003a50:	faf70723          	sb	a5,-82(a4) # 800089fa <finishedC>
    thread_dispatch();
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	8d0080e7          	jalr	-1840(ra) # 80001324 <thread_dispatch>
}
    80003a5c:	01813083          	ld	ra,24(sp)
    80003a60:	01013403          	ld	s0,16(sp)
    80003a64:	00813483          	ld	s1,8(sp)
    80003a68:	00013903          	ld	s2,0(sp)
    80003a6c:	02010113          	addi	sp,sp,32
    80003a70:	00008067          	ret

0000000080003a74 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80003a74:	fe010113          	addi	sp,sp,-32
    80003a78:	00113c23          	sd	ra,24(sp)
    80003a7c:	00813823          	sd	s0,16(sp)
    80003a80:	00913423          	sd	s1,8(sp)
    80003a84:	01213023          	sd	s2,0(sp)
    80003a88:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a8c:	00a00493          	li	s1,10
    80003a90:	0400006f          	j	80003ad0 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a94:	00003517          	auipc	a0,0x3
    80003a98:	79450513          	addi	a0,a0,1940 # 80007228 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    80003a9c:	00000097          	auipc	ra,0x0
    80003aa0:	264080e7          	jalr	612(ra) # 80003d00 <_Z11printStringPKc>
    80003aa4:	00000613          	li	a2,0
    80003aa8:	00a00593          	li	a1,10
    80003aac:	00048513          	mv	a0,s1
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	3e8080e7          	jalr	1000(ra) # 80003e98 <_Z8printIntiii>
    80003ab8:	00003517          	auipc	a0,0x3
    80003abc:	6c850513          	addi	a0,a0,1736 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	240080e7          	jalr	576(ra) # 80003d00 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ac8:	0014849b          	addiw	s1,s1,1
    80003acc:	0ff4f493          	andi	s1,s1,255
    80003ad0:	00c00793          	li	a5,12
    80003ad4:	fc97f0e3          	bgeu	a5,s1,80003a94 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003ad8:	00003517          	auipc	a0,0x3
    80003adc:	75850513          	addi	a0,a0,1880 # 80007230 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	220080e7          	jalr	544(ra) # 80003d00 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ae8:	00500313          	li	t1,5
    thread_dispatch();
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	838080e7          	jalr	-1992(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80003af4:	01000513          	li	a0,16
    80003af8:	00000097          	auipc	ra,0x0
    80003afc:	d88080e7          	jalr	-632(ra) # 80003880 <_Z9fibonaccim>
    80003b00:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003b04:	00003517          	auipc	a0,0x3
    80003b08:	73c50513          	addi	a0,a0,1852 # 80007240 <_ZZN5Riscv12printIntegerEmE6digits+0x108>
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	1f4080e7          	jalr	500(ra) # 80003d00 <_Z11printStringPKc>
    80003b14:	00000613          	li	a2,0
    80003b18:	00a00593          	li	a1,10
    80003b1c:	0009051b          	sext.w	a0,s2
    80003b20:	00000097          	auipc	ra,0x0
    80003b24:	378080e7          	jalr	888(ra) # 80003e98 <_Z8printIntiii>
    80003b28:	00003517          	auipc	a0,0x3
    80003b2c:	65850513          	addi	a0,a0,1624 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	1d0080e7          	jalr	464(ra) # 80003d00 <_Z11printStringPKc>
    80003b38:	0400006f          	j	80003b78 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b3c:	00003517          	auipc	a0,0x3
    80003b40:	6ec50513          	addi	a0,a0,1772 # 80007228 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	1bc080e7          	jalr	444(ra) # 80003d00 <_Z11printStringPKc>
    80003b4c:	00000613          	li	a2,0
    80003b50:	00a00593          	li	a1,10
    80003b54:	00048513          	mv	a0,s1
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	340080e7          	jalr	832(ra) # 80003e98 <_Z8printIntiii>
    80003b60:	00003517          	auipc	a0,0x3
    80003b64:	62050513          	addi	a0,a0,1568 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	198080e7          	jalr	408(ra) # 80003d00 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003b70:	0014849b          	addiw	s1,s1,1
    80003b74:	0ff4f493          	andi	s1,s1,255
    80003b78:	00f00793          	li	a5,15
    80003b7c:	fc97f0e3          	bgeu	a5,s1,80003b3c <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003b80:	00003517          	auipc	a0,0x3
    80003b84:	6d050513          	addi	a0,a0,1744 # 80007250 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80003b88:	00000097          	auipc	ra,0x0
    80003b8c:	178080e7          	jalr	376(ra) # 80003d00 <_Z11printStringPKc>
    finishedD = true;
    80003b90:	00100793          	li	a5,1
    80003b94:	00005717          	auipc	a4,0x5
    80003b98:	e6f703a3          	sb	a5,-409(a4) # 800089fb <finishedD>
    thread_dispatch();
    80003b9c:	ffffd097          	auipc	ra,0xffffd
    80003ba0:	788080e7          	jalr	1928(ra) # 80001324 <thread_dispatch>
}
    80003ba4:	01813083          	ld	ra,24(sp)
    80003ba8:	01013403          	ld	s0,16(sp)
    80003bac:	00813483          	ld	s1,8(sp)
    80003bb0:	00013903          	ld	s2,0(sp)
    80003bb4:	02010113          	addi	sp,sp,32
    80003bb8:	00008067          	ret

0000000080003bbc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003bbc:	fc010113          	addi	sp,sp,-64
    80003bc0:	02113c23          	sd	ra,56(sp)
    80003bc4:	02813823          	sd	s0,48(sp)
    80003bc8:	02913423          	sd	s1,40(sp)
    80003bcc:	03213023          	sd	s2,32(sp)
    80003bd0:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003bd4:	00000613          	li	a2,0
    80003bd8:	00000597          	auipc	a1,0x0
    80003bdc:	b0858593          	addi	a1,a1,-1272 # 800036e0 <_Z11workerBodyAPv>
    80003be0:	fc040513          	addi	a0,s0,-64
    80003be4:	ffffd097          	auipc	ra,0xffffd
    80003be8:	6c0080e7          	jalr	1728(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80003bec:	00003517          	auipc	a0,0x3
    80003bf0:	67450513          	addi	a0,a0,1652 # 80007260 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	10c080e7          	jalr	268(ra) # 80003d00 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003bfc:	00000613          	li	a2,0
    80003c00:	00000597          	auipc	a1,0x0
    80003c04:	bac58593          	addi	a1,a1,-1108 # 800037ac <_Z11workerBodyBPv>
    80003c08:	fc840513          	addi	a0,s0,-56
    80003c0c:	ffffd097          	auipc	ra,0xffffd
    80003c10:	698080e7          	jalr	1688(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80003c14:	00003517          	auipc	a0,0x3
    80003c18:	66450513          	addi	a0,a0,1636 # 80007278 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	0e4080e7          	jalr	228(ra) # 80003d00 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003c24:	00000613          	li	a2,0
    80003c28:	00000597          	auipc	a1,0x0
    80003c2c:	ccc58593          	addi	a1,a1,-820 # 800038f4 <_Z11workerBodyCPv>
    80003c30:	fd040513          	addi	a0,s0,-48
    80003c34:	ffffd097          	auipc	ra,0xffffd
    80003c38:	670080e7          	jalr	1648(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80003c3c:	00003517          	auipc	a0,0x3
    80003c40:	65450513          	addi	a0,a0,1620 # 80007290 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    80003c44:	00000097          	auipc	ra,0x0
    80003c48:	0bc080e7          	jalr	188(ra) # 80003d00 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003c4c:	00000613          	li	a2,0
    80003c50:	00000597          	auipc	a1,0x0
    80003c54:	e2458593          	addi	a1,a1,-476 # 80003a74 <_Z11workerBodyDPv>
    80003c58:	fd840513          	addi	a0,s0,-40
    80003c5c:	ffffd097          	auipc	ra,0xffffd
    80003c60:	648080e7          	jalr	1608(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80003c64:	00003517          	auipc	a0,0x3
    80003c68:	64450513          	addi	a0,a0,1604 # 800072a8 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	094080e7          	jalr	148(ra) # 80003d00 <_Z11printStringPKc>
    80003c74:	00c0006f          	j	80003c80 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80003c78:	ffffd097          	auipc	ra,0xffffd
    80003c7c:	6ac080e7          	jalr	1708(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003c80:	00005797          	auipc	a5,0x5
    80003c84:	d787c783          	lbu	a5,-648(a5) # 800089f8 <finishedA>
    80003c88:	fe0788e3          	beqz	a5,80003c78 <_Z18Threads_C_API_testv+0xbc>
    80003c8c:	00005797          	auipc	a5,0x5
    80003c90:	d6d7c783          	lbu	a5,-659(a5) # 800089f9 <finishedB>
    80003c94:	fe0782e3          	beqz	a5,80003c78 <_Z18Threads_C_API_testv+0xbc>
    80003c98:	00005797          	auipc	a5,0x5
    80003c9c:	d627c783          	lbu	a5,-670(a5) # 800089fa <finishedC>
    80003ca0:	fc078ce3          	beqz	a5,80003c78 <_Z18Threads_C_API_testv+0xbc>
    80003ca4:	00005797          	auipc	a5,0x5
    80003ca8:	d577c783          	lbu	a5,-681(a5) # 800089fb <finishedD>
    80003cac:	fc0786e3          	beqz	a5,80003c78 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    80003cb0:	fc040493          	addi	s1,s0,-64
    80003cb4:	0080006f          	j	80003cbc <_Z18Threads_C_API_testv+0x100>
    80003cb8:	00848493          	addi	s1,s1,8
    80003cbc:	fe040793          	addi	a5,s0,-32
    80003cc0:	02f48463          	beq	s1,a5,80003ce8 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80003cc4:	0004b903          	ld	s2,0(s1)
    80003cc8:	fe0908e3          	beqz	s2,80003cb8 <_Z18Threads_C_API_testv+0xfc>
    80003ccc:	00090513          	mv	a0,s2
    80003cd0:	ffffe097          	auipc	ra,0xffffe
    80003cd4:	2b4080e7          	jalr	692(ra) # 80001f84 <_ZN3PCBD1Ev>
    80003cd8:	00090513          	mv	a0,s2
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	280080e7          	jalr	640(ra) # 80001f5c <_ZN3PCBdlEPv>
    80003ce4:	fd5ff06f          	j	80003cb8 <_Z18Threads_C_API_testv+0xfc>
    }
}
    80003ce8:	03813083          	ld	ra,56(sp)
    80003cec:	03013403          	ld	s0,48(sp)
    80003cf0:	02813483          	ld	s1,40(sp)
    80003cf4:	02013903          	ld	s2,32(sp)
    80003cf8:	04010113          	addi	sp,sp,64
    80003cfc:	00008067          	ret

0000000080003d00 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80003d00:	fe010113          	addi	sp,sp,-32
    80003d04:	00113c23          	sd	ra,24(sp)
    80003d08:	00813823          	sd	s0,16(sp)
    80003d0c:	00913423          	sd	s1,8(sp)
    80003d10:	02010413          	addi	s0,sp,32
    80003d14:	00050493          	mv	s1,a0
    LOCK();
    80003d18:	00100613          	li	a2,1
    80003d1c:	00000593          	li	a1,0
    80003d20:	00005517          	auipc	a0,0x5
    80003d24:	ce050513          	addi	a0,a0,-800 # 80008a00 <lockPrint>
    80003d28:	ffffd097          	auipc	ra,0xffffd
    80003d2c:	4e0080e7          	jalr	1248(ra) # 80001208 <copy_and_swap>
    80003d30:	fe0514e3          	bnez	a0,80003d18 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80003d34:	0004c503          	lbu	a0,0(s1)
    80003d38:	00050a63          	beqz	a0,80003d4c <_Z11printStringPKc+0x4c>
    80003d3c:	00003097          	auipc	ra,0x3
    80003d40:	9f0080e7          	jalr	-1552(ra) # 8000672c <__putc>
        putc(*string);
        string++;
    80003d44:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80003d48:	fedff06f          	j	80003d34 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003d4c:	00000613          	li	a2,0
    80003d50:	00100593          	li	a1,1
    80003d54:	00005517          	auipc	a0,0x5
    80003d58:	cac50513          	addi	a0,a0,-852 # 80008a00 <lockPrint>
    80003d5c:	ffffd097          	auipc	ra,0xffffd
    80003d60:	4ac080e7          	jalr	1196(ra) # 80001208 <copy_and_swap>
    80003d64:	fe0514e3          	bnez	a0,80003d4c <_Z11printStringPKc+0x4c>
}
    80003d68:	01813083          	ld	ra,24(sp)
    80003d6c:	01013403          	ld	s0,16(sp)
    80003d70:	00813483          	ld	s1,8(sp)
    80003d74:	02010113          	addi	sp,sp,32
    80003d78:	00008067          	ret

0000000080003d7c <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80003d7c:	fd010113          	addi	sp,sp,-48
    80003d80:	02113423          	sd	ra,40(sp)
    80003d84:	02813023          	sd	s0,32(sp)
    80003d88:	00913c23          	sd	s1,24(sp)
    80003d8c:	01213823          	sd	s2,16(sp)
    80003d90:	01313423          	sd	s3,8(sp)
    80003d94:	01413023          	sd	s4,0(sp)
    80003d98:	03010413          	addi	s0,sp,48
    80003d9c:	00050993          	mv	s3,a0
    80003da0:	00058a13          	mv	s4,a1
    LOCK();
    80003da4:	00100613          	li	a2,1
    80003da8:	00000593          	li	a1,0
    80003dac:	00005517          	auipc	a0,0x5
    80003db0:	c5450513          	addi	a0,a0,-940 # 80008a00 <lockPrint>
    80003db4:	ffffd097          	auipc	ra,0xffffd
    80003db8:	454080e7          	jalr	1108(ra) # 80001208 <copy_and_swap>
    80003dbc:	fe0514e3          	bnez	a0,80003da4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80003dc0:	00000913          	li	s2,0
    80003dc4:	00090493          	mv	s1,s2
    80003dc8:	0019091b          	addiw	s2,s2,1
    80003dcc:	03495a63          	bge	s2,s4,80003e00 <_Z9getStringPci+0x84>
    return __getc();
    80003dd0:	00003097          	auipc	ra,0x3
    80003dd4:	998080e7          	jalr	-1640(ra) # 80006768 <__getc>
        cc = getc();
        if (cc < 1)
    80003dd8:	02050463          	beqz	a0,80003e00 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003ddc:	009984b3          	add	s1,s3,s1
    80003de0:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80003de4:	00a00793          	li	a5,10
    80003de8:	00f50a63          	beq	a0,a5,80003dfc <_Z9getStringPci+0x80>
    80003dec:	00d00793          	li	a5,13
    80003df0:	fcf51ae3          	bne	a0,a5,80003dc4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003df4:	00090493          	mv	s1,s2
    80003df8:	0080006f          	j	80003e00 <_Z9getStringPci+0x84>
    80003dfc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003e00:	009984b3          	add	s1,s3,s1
    80003e04:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003e08:	00000613          	li	a2,0
    80003e0c:	00100593          	li	a1,1
    80003e10:	00005517          	auipc	a0,0x5
    80003e14:	bf050513          	addi	a0,a0,-1040 # 80008a00 <lockPrint>
    80003e18:	ffffd097          	auipc	ra,0xffffd
    80003e1c:	3f0080e7          	jalr	1008(ra) # 80001208 <copy_and_swap>
    80003e20:	fe0514e3          	bnez	a0,80003e08 <_Z9getStringPci+0x8c>
    return buf;
}
    80003e24:	00098513          	mv	a0,s3
    80003e28:	02813083          	ld	ra,40(sp)
    80003e2c:	02013403          	ld	s0,32(sp)
    80003e30:	01813483          	ld	s1,24(sp)
    80003e34:	01013903          	ld	s2,16(sp)
    80003e38:	00813983          	ld	s3,8(sp)
    80003e3c:	00013a03          	ld	s4,0(sp)
    80003e40:	03010113          	addi	sp,sp,48
    80003e44:	00008067          	ret

0000000080003e48 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003e48:	ff010113          	addi	sp,sp,-16
    80003e4c:	00813423          	sd	s0,8(sp)
    80003e50:	01010413          	addi	s0,sp,16
    80003e54:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003e58:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003e5c:	0006c603          	lbu	a2,0(a3)
    80003e60:	fd06071b          	addiw	a4,a2,-48
    80003e64:	0ff77713          	andi	a4,a4,255
    80003e68:	00900793          	li	a5,9
    80003e6c:	02e7e063          	bltu	a5,a4,80003e8c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003e70:	0025179b          	slliw	a5,a0,0x2
    80003e74:	00a787bb          	addw	a5,a5,a0
    80003e78:	0017979b          	slliw	a5,a5,0x1
    80003e7c:	00168693          	addi	a3,a3,1
    80003e80:	00c787bb          	addw	a5,a5,a2
    80003e84:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003e88:	fd5ff06f          	j	80003e5c <_Z11stringToIntPKc+0x14>
    return n;
}
    80003e8c:	00813403          	ld	s0,8(sp)
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80003e98:	fc010113          	addi	sp,sp,-64
    80003e9c:	02113c23          	sd	ra,56(sp)
    80003ea0:	02813823          	sd	s0,48(sp)
    80003ea4:	02913423          	sd	s1,40(sp)
    80003ea8:	03213023          	sd	s2,32(sp)
    80003eac:	01313c23          	sd	s3,24(sp)
    80003eb0:	04010413          	addi	s0,sp,64
    80003eb4:	00050493          	mv	s1,a0
    80003eb8:	00058913          	mv	s2,a1
    80003ebc:	00060993          	mv	s3,a2
    LOCK();
    80003ec0:	00100613          	li	a2,1
    80003ec4:	00000593          	li	a1,0
    80003ec8:	00005517          	auipc	a0,0x5
    80003ecc:	b3850513          	addi	a0,a0,-1224 # 80008a00 <lockPrint>
    80003ed0:	ffffd097          	auipc	ra,0xffffd
    80003ed4:	338080e7          	jalr	824(ra) # 80001208 <copy_and_swap>
    80003ed8:	fe0514e3          	bnez	a0,80003ec0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80003edc:	00098463          	beqz	s3,80003ee4 <_Z8printIntiii+0x4c>
    80003ee0:	0804c463          	bltz	s1,80003f68 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003ee4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003ee8:	00000593          	li	a1,0
    }

    i = 0;
    80003eec:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003ef0:	0009079b          	sext.w	a5,s2
    80003ef4:	0325773b          	remuw	a4,a0,s2
    80003ef8:	00048613          	mv	a2,s1
    80003efc:	0014849b          	addiw	s1,s1,1
    80003f00:	02071693          	slli	a3,a4,0x20
    80003f04:	0206d693          	srli	a3,a3,0x20
    80003f08:	00003717          	auipc	a4,0x3
    80003f0c:	3b870713          	addi	a4,a4,952 # 800072c0 <_ZL6digits>
    80003f10:	00d70733          	add	a4,a4,a3
    80003f14:	00074683          	lbu	a3,0(a4)
    80003f18:	fd040713          	addi	a4,s0,-48
    80003f1c:	00c70733          	add	a4,a4,a2
    80003f20:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80003f24:	0005071b          	sext.w	a4,a0
    80003f28:	0325553b          	divuw	a0,a0,s2
    80003f2c:	fcf772e3          	bgeu	a4,a5,80003ef0 <_Z8printIntiii+0x58>
    if (neg)
    80003f30:	00058c63          	beqz	a1,80003f48 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003f34:	fd040793          	addi	a5,s0,-48
    80003f38:	009784b3          	add	s1,a5,s1
    80003f3c:	02d00793          	li	a5,45
    80003f40:	fef48823          	sb	a5,-16(s1)
    80003f44:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80003f48:	fff4849b          	addiw	s1,s1,-1
    80003f4c:	0204c463          	bltz	s1,80003f74 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003f50:	fd040793          	addi	a5,s0,-48
    80003f54:	009787b3          	add	a5,a5,s1
    __putc(c);
    80003f58:	ff07c503          	lbu	a0,-16(a5)
    80003f5c:	00002097          	auipc	ra,0x2
    80003f60:	7d0080e7          	jalr	2000(ra) # 8000672c <__putc>
}
    80003f64:	fe5ff06f          	j	80003f48 <_Z8printIntiii+0xb0>
        x = -xx;
    80003f68:	4090053b          	negw	a0,s1
        neg = 1;
    80003f6c:	00100593          	li	a1,1
        x = -xx;
    80003f70:	f7dff06f          	j	80003eec <_Z8printIntiii+0x54>

    UNLOCK();
    80003f74:	00000613          	li	a2,0
    80003f78:	00100593          	li	a1,1
    80003f7c:	00005517          	auipc	a0,0x5
    80003f80:	a8450513          	addi	a0,a0,-1404 # 80008a00 <lockPrint>
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	284080e7          	jalr	644(ra) # 80001208 <copy_and_swap>
    80003f8c:	fe0514e3          	bnez	a0,80003f74 <_Z8printIntiii+0xdc>
}
    80003f90:	03813083          	ld	ra,56(sp)
    80003f94:	03013403          	ld	s0,48(sp)
    80003f98:	02813483          	ld	s1,40(sp)
    80003f9c:	02013903          	ld	s2,32(sp)
    80003fa0:	01813983          	ld	s3,24(sp)
    80003fa4:	04010113          	addi	sp,sp,64
    80003fa8:	00008067          	ret

0000000080003fac <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80003fac:	fe010113          	addi	sp,sp,-32
    80003fb0:	00113c23          	sd	ra,24(sp)
    80003fb4:	00813823          	sd	s0,16(sp)
    80003fb8:	00913423          	sd	s1,8(sp)
    80003fbc:	01213023          	sd	s2,0(sp)
    80003fc0:	02010413          	addi	s0,sp,32
    80003fc4:	00050493          	mv	s1,a0
    80003fc8:	00b52023          	sw	a1,0(a0)
    80003fcc:	00052823          	sw	zero,16(a0)
    80003fd0:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003fd4:	00259513          	slli	a0,a1,0x2
    80003fd8:	ffffd097          	auipc	ra,0xffffd
    80003fdc:	270080e7          	jalr	624(ra) # 80001248 <mem_alloc>
    80003fe0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003fe4:	00800513          	li	a0,8
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	4f4080e7          	jalr	1268(ra) # 800024dc <_Znwm>
    80003ff0:	00050913          	mv	s2,a0
    80003ff4:	00000593          	li	a1,0
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	618080e7          	jalr	1560(ra) # 80002610 <_ZN9SemaphoreC1Ej>
    80004000:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80004004:	00800513          	li	a0,8
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	4d4080e7          	jalr	1236(ra) # 800024dc <_Znwm>
    80004010:	00050913          	mv	s2,a0
    80004014:	0004a583          	lw	a1,0(s1)
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	5f8080e7          	jalr	1528(ra) # 80002610 <_ZN9SemaphoreC1Ej>
    80004020:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80004024:	00800513          	li	a0,8
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	4b4080e7          	jalr	1204(ra) # 800024dc <_Znwm>
    80004030:	00050913          	mv	s2,a0
    80004034:	00100593          	li	a1,1
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	5d8080e7          	jalr	1496(ra) # 80002610 <_ZN9SemaphoreC1Ej>
    80004040:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004044:	00800513          	li	a0,8
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	494080e7          	jalr	1172(ra) # 800024dc <_Znwm>
    80004050:	00050913          	mv	s2,a0
    80004054:	00100593          	li	a1,1
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	5b8080e7          	jalr	1464(ra) # 80002610 <_ZN9SemaphoreC1Ej>
    80004060:	0324b823          	sd	s2,48(s1)
}
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	01013403          	ld	s0,16(sp)
    8000406c:	00813483          	ld	s1,8(sp)
    80004070:	00013903          	ld	s2,0(sp)
    80004074:	02010113          	addi	sp,sp,32
    80004078:	00008067          	ret
    8000407c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004080:	00090513          	mv	a0,s2
    80004084:	ffffe097          	auipc	ra,0xffffe
    80004088:	480080e7          	jalr	1152(ra) # 80002504 <_ZdlPv>
    8000408c:	00048513          	mv	a0,s1
    80004090:	00006097          	auipc	ra,0x6
    80004094:	a48080e7          	jalr	-1464(ra) # 80009ad8 <_Unwind_Resume>
    80004098:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    8000409c:	00090513          	mv	a0,s2
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	464080e7          	jalr	1124(ra) # 80002504 <_ZdlPv>
    800040a8:	00048513          	mv	a0,s1
    800040ac:	00006097          	auipc	ra,0x6
    800040b0:	a2c080e7          	jalr	-1492(ra) # 80009ad8 <_Unwind_Resume>
    800040b4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800040b8:	00090513          	mv	a0,s2
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	448080e7          	jalr	1096(ra) # 80002504 <_ZdlPv>
    800040c4:	00048513          	mv	a0,s1
    800040c8:	00006097          	auipc	ra,0x6
    800040cc:	a10080e7          	jalr	-1520(ra) # 80009ad8 <_Unwind_Resume>
    800040d0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800040d4:	00090513          	mv	a0,s2
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	42c080e7          	jalr	1068(ra) # 80002504 <_ZdlPv>
    800040e0:	00048513          	mv	a0,s1
    800040e4:	00006097          	auipc	ra,0x6
    800040e8:	9f4080e7          	jalr	-1548(ra) # 80009ad8 <_Unwind_Resume>

00000000800040ec <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800040ec:	fe010113          	addi	sp,sp,-32
    800040f0:	00113c23          	sd	ra,24(sp)
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00913423          	sd	s1,8(sp)
    800040fc:	02010413          	addi	s0,sp,32
    80004100:	00050493          	mv	s1,a0
    __putc(c);
    80004104:	00a00513          	li	a0,10
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	624080e7          	jalr	1572(ra) # 8000672c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80004110:	0104a783          	lw	a5,16(s1)
    80004114:	0144a703          	lw	a4,20(s1)
    80004118:	00e78c63          	beq	a5,a4,80004130 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    8000411c:	0017879b          	addiw	a5,a5,1
    80004120:	0004a703          	lw	a4,0(s1)
    80004124:	02e7e7bb          	remw	a5,a5,a4
    80004128:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    8000412c:	fe5ff06f          	j	80004110 <_ZN9BufferCPPD1Ev+0x24>
    80004130:	02100513          	li	a0,33
    80004134:	00002097          	auipc	ra,0x2
    80004138:	5f8080e7          	jalr	1528(ra) # 8000672c <__putc>
    8000413c:	00a00513          	li	a0,10
    80004140:	00002097          	auipc	ra,0x2
    80004144:	5ec080e7          	jalr	1516(ra) # 8000672c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80004148:	0084b503          	ld	a0,8(s1)
    8000414c:	ffffd097          	auipc	ra,0xffffd
    80004150:	12c080e7          	jalr	300(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80004154:	0204b503          	ld	a0,32(s1)
    80004158:	00050663          	beqz	a0,80004164 <_ZN9BufferCPPD1Ev+0x78>
    8000415c:	ffffe097          	auipc	ra,0xffffe
    80004160:	3a8080e7          	jalr	936(ra) # 80002504 <_ZdlPv>
    delete spaceAvailable;
    80004164:	0184b503          	ld	a0,24(s1)
    80004168:	00050663          	beqz	a0,80004174 <_ZN9BufferCPPD1Ev+0x88>
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	398080e7          	jalr	920(ra) # 80002504 <_ZdlPv>
    delete mutexTail;
    80004174:	0304b503          	ld	a0,48(s1)
    80004178:	00050663          	beqz	a0,80004184 <_ZN9BufferCPPD1Ev+0x98>
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	388080e7          	jalr	904(ra) # 80002504 <_ZdlPv>
    delete mutexHead;
    80004184:	0284b503          	ld	a0,40(s1)
    80004188:	00050663          	beqz	a0,80004194 <_ZN9BufferCPPD1Ev+0xa8>
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	378080e7          	jalr	888(ra) # 80002504 <_ZdlPv>

}
    80004194:	01813083          	ld	ra,24(sp)
    80004198:	01013403          	ld	s0,16(sp)
    8000419c:	00813483          	ld	s1,8(sp)
    800041a0:	02010113          	addi	sp,sp,32
    800041a4:	00008067          	ret

00000000800041a8 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    800041a8:	fe010113          	addi	sp,sp,-32
    800041ac:	00113c23          	sd	ra,24(sp)
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	01213023          	sd	s2,0(sp)
    800041bc:	02010413          	addi	s0,sp,32
    800041c0:	00050493          	mv	s1,a0
    800041c4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800041c8:	01853503          	ld	a0,24(a0)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	418080e7          	jalr	1048(ra) # 800025e4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800041d4:	0304b503          	ld	a0,48(s1)
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	40c080e7          	jalr	1036(ra) # 800025e4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800041e0:	0084b783          	ld	a5,8(s1)
    800041e4:	0144a703          	lw	a4,20(s1)
    800041e8:	00271713          	slli	a4,a4,0x2
    800041ec:	00e787b3          	add	a5,a5,a4
    800041f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800041f4:	0144a783          	lw	a5,20(s1)
    800041f8:	0017879b          	addiw	a5,a5,1
    800041fc:	0004a703          	lw	a4,0(s1)
    80004200:	02e7e7bb          	remw	a5,a5,a4
    80004204:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004208:	0304b503          	ld	a0,48(s1)
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	42c080e7          	jalr	1068(ra) # 80002638 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004214:	0204b503          	ld	a0,32(s1)
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	420080e7          	jalr	1056(ra) # 80002638 <_ZN9Semaphore6signalEv>

}
    80004220:	01813083          	ld	ra,24(sp)
    80004224:	01013403          	ld	s0,16(sp)
    80004228:	00813483          	ld	s1,8(sp)
    8000422c:	00013903          	ld	s2,0(sp)
    80004230:	02010113          	addi	sp,sp,32
    80004234:	00008067          	ret

0000000080004238 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004238:	fe010113          	addi	sp,sp,-32
    8000423c:	00113c23          	sd	ra,24(sp)
    80004240:	00813823          	sd	s0,16(sp)
    80004244:	00913423          	sd	s1,8(sp)
    80004248:	01213023          	sd	s2,0(sp)
    8000424c:	02010413          	addi	s0,sp,32
    80004250:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004254:	02053503          	ld	a0,32(a0)
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	38c080e7          	jalr	908(ra) # 800025e4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004260:	0284b503          	ld	a0,40(s1)
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	380080e7          	jalr	896(ra) # 800025e4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000426c:	0084b703          	ld	a4,8(s1)
    80004270:	0104a783          	lw	a5,16(s1)
    80004274:	00279693          	slli	a3,a5,0x2
    80004278:	00d70733          	add	a4,a4,a3
    8000427c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004280:	0017879b          	addiw	a5,a5,1
    80004284:	0004a703          	lw	a4,0(s1)
    80004288:	02e7e7bb          	remw	a5,a5,a4
    8000428c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004290:	0284b503          	ld	a0,40(s1)
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	3a4080e7          	jalr	932(ra) # 80002638 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000429c:	0184b503          	ld	a0,24(s1)
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	398080e7          	jalr	920(ra) # 80002638 <_ZN9Semaphore6signalEv>

    return ret;
}
    800042a8:	00090513          	mv	a0,s2
    800042ac:	01813083          	ld	ra,24(sp)
    800042b0:	01013403          	ld	s0,16(sp)
    800042b4:	00813483          	ld	s1,8(sp)
    800042b8:	00013903          	ld	s2,0(sp)
    800042bc:	02010113          	addi	sp,sp,32
    800042c0:	00008067          	ret

00000000800042c4 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800042c4:	ff010113          	addi	sp,sp,-16
    800042c8:	00113423          	sd	ra,8(sp)
    800042cc:	00813023          	sd	s0,0(sp)
    800042d0:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	0bc080e7          	jalr	188(ra) # 80004390 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800042dc:	00813083          	ld	ra,8(sp)
    800042e0:	00013403          	ld	s0,0(sp)
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00008067          	ret

00000000800042ec <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800042ec:	fe010113          	addi	sp,sp,-32
    800042f0:	00113c23          	sd	ra,24(sp)
    800042f4:	00813823          	sd	s0,16(sp)
    800042f8:	00913423          	sd	s1,8(sp)
    800042fc:	01213023          	sd	s2,0(sp)
    80004300:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80004304:	00053903          	ld	s2,0(a0)
    int i = 6;
    80004308:	00600493          	li	s1,6
    while (--i > 0) {
    8000430c:	fff4849b          	addiw	s1,s1,-1
    80004310:	04905463          	blez	s1,80004358 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80004314:	00003517          	auipc	a0,0x3
    80004318:	fc450513          	addi	a0,a0,-60 # 800072d8 <_ZL6digits+0x18>
    8000431c:	00000097          	auipc	ra,0x0
    80004320:	9e4080e7          	jalr	-1564(ra) # 80003d00 <_Z11printStringPKc>
        printInt(sleep_time);
    80004324:	00000613          	li	a2,0
    80004328:	00a00593          	li	a1,10
    8000432c:	0009051b          	sext.w	a0,s2
    80004330:	00000097          	auipc	ra,0x0
    80004334:	b68080e7          	jalr	-1176(ra) # 80003e98 <_Z8printIntiii>
        printString(" !\n");
    80004338:	00003517          	auipc	a0,0x3
    8000433c:	fa850513          	addi	a0,a0,-88 # 800072e0 <_ZL6digits+0x20>
    80004340:	00000097          	auipc	ra,0x0
    80004344:	9c0080e7          	jalr	-1600(ra) # 80003d00 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80004348:	00090513          	mv	a0,s2
    8000434c:	ffffd097          	auipc	ra,0xffffd
    80004350:	0dc080e7          	jalr	220(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80004354:	fb9ff06f          	j	8000430c <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80004358:	00a00793          	li	a5,10
    8000435c:	02f95933          	divu	s2,s2,a5
    80004360:	fff90913          	addi	s2,s2,-1
    80004364:	00004797          	auipc	a5,0x4
    80004368:	6a478793          	addi	a5,a5,1700 # 80008a08 <finished>
    8000436c:	01278933          	add	s2,a5,s2
    80004370:	00100793          	li	a5,1
    80004374:	00f90023          	sb	a5,0(s2)
}
    80004378:	01813083          	ld	ra,24(sp)
    8000437c:	01013403          	ld	s0,16(sp)
    80004380:	00813483          	ld	s1,8(sp)
    80004384:	00013903          	ld	s2,0(sp)
    80004388:	02010113          	addi	sp,sp,32
    8000438c:	00008067          	ret

0000000080004390 <_Z12testSleepingv>:

void testSleeping() {
    80004390:	fc010113          	addi	sp,sp,-64
    80004394:	02113c23          	sd	ra,56(sp)
    80004398:	02813823          	sd	s0,48(sp)
    8000439c:	02913423          	sd	s1,40(sp)
    800043a0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800043a4:	00a00793          	li	a5,10
    800043a8:	fcf43823          	sd	a5,-48(s0)
    800043ac:	01400793          	li	a5,20
    800043b0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800043b4:	00000493          	li	s1,0
    800043b8:	02c0006f          	j	800043e4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800043bc:	00349793          	slli	a5,s1,0x3
    800043c0:	fd040613          	addi	a2,s0,-48
    800043c4:	00f60633          	add	a2,a2,a5
    800043c8:	00000597          	auipc	a1,0x0
    800043cc:	f2458593          	addi	a1,a1,-220 # 800042ec <_Z9sleepyRunPv>
    800043d0:	fc040513          	addi	a0,s0,-64
    800043d4:	00f50533          	add	a0,a0,a5
    800043d8:	ffffd097          	auipc	ra,0xffffd
    800043dc:	ecc080e7          	jalr	-308(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800043e0:	0014849b          	addiw	s1,s1,1
    800043e4:	00100793          	li	a5,1
    800043e8:	fc97dae3          	bge	a5,s1,800043bc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800043ec:	00004797          	auipc	a5,0x4
    800043f0:	61c7c783          	lbu	a5,1564(a5) # 80008a08 <finished>
    800043f4:	fe078ce3          	beqz	a5,800043ec <_Z12testSleepingv+0x5c>
    800043f8:	00004797          	auipc	a5,0x4
    800043fc:	6117c783          	lbu	a5,1553(a5) # 80008a09 <finished+0x1>
    80004400:	fe0786e3          	beqz	a5,800043ec <_Z12testSleepingv+0x5c>
}
    80004404:	03813083          	ld	ra,56(sp)
    80004408:	03013403          	ld	s0,48(sp)
    8000440c:	02813483          	ld	s1,40(sp)
    80004410:	04010113          	addi	sp,sp,64
    80004414:	00008067          	ret

0000000080004418 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80004418:	fe010113          	addi	sp,sp,-32
    8000441c:	00113c23          	sd	ra,24(sp)
    80004420:	00813823          	sd	s0,16(sp)
    80004424:	00913423          	sd	s1,8(sp)
    80004428:	02010413          	addi	s0,sp,32
    8000442c:	00050493          	mv	s1,a0
    80004430:	00b52023          	sw	a1,0(a0)
    80004434:	00052823          	sw	zero,16(a0)
    80004438:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000443c:	00259513          	slli	a0,a1,0x2
    80004440:	ffffd097          	auipc	ra,0xffffd
    80004444:	e08080e7          	jalr	-504(ra) # 80001248 <mem_alloc>
    80004448:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000444c:	00000593          	li	a1,0
    80004450:	02048513          	addi	a0,s1,32
    80004454:	ffffd097          	auipc	ra,0xffffd
    80004458:	f18080e7          	jalr	-232(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    8000445c:	0004a583          	lw	a1,0(s1)
    80004460:	01848513          	addi	a0,s1,24
    80004464:	ffffd097          	auipc	ra,0xffffd
    80004468:	f08080e7          	jalr	-248(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    8000446c:	00100593          	li	a1,1
    80004470:	02848513          	addi	a0,s1,40
    80004474:	ffffd097          	auipc	ra,0xffffd
    80004478:	ef8080e7          	jalr	-264(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    8000447c:	00100593          	li	a1,1
    80004480:	03048513          	addi	a0,s1,48
    80004484:	ffffd097          	auipc	ra,0xffffd
    80004488:	ee8080e7          	jalr	-280(ra) # 8000136c <sem_open>
}
    8000448c:	01813083          	ld	ra,24(sp)
    80004490:	01013403          	ld	s0,16(sp)
    80004494:	00813483          	ld	s1,8(sp)
    80004498:	02010113          	addi	sp,sp,32
    8000449c:	00008067          	ret

00000000800044a0 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    800044a0:	fe010113          	addi	sp,sp,-32
    800044a4:	00113c23          	sd	ra,24(sp)
    800044a8:	00813823          	sd	s0,16(sp)
    800044ac:	00913423          	sd	s1,8(sp)
    800044b0:	02010413          	addi	s0,sp,32
    800044b4:	00050493          	mv	s1,a0
    800044b8:	00a00513          	li	a0,10
    800044bc:	00002097          	auipc	ra,0x2
    800044c0:	270080e7          	jalr	624(ra) # 8000672c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800044c4:	0104a783          	lw	a5,16(s1)
    800044c8:	0144a703          	lw	a4,20(s1)
    800044cc:	00e78c63          	beq	a5,a4,800044e4 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800044d0:	0017879b          	addiw	a5,a5,1
    800044d4:	0004a703          	lw	a4,0(s1)
    800044d8:	02e7e7bb          	remw	a5,a5,a4
    800044dc:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800044e0:	fe5ff06f          	j	800044c4 <_ZN6BufferD1Ev+0x24>
    800044e4:	02100513          	li	a0,33
    800044e8:	00002097          	auipc	ra,0x2
    800044ec:	244080e7          	jalr	580(ra) # 8000672c <__putc>
    800044f0:	00a00513          	li	a0,10
    800044f4:	00002097          	auipc	ra,0x2
    800044f8:	238080e7          	jalr	568(ra) # 8000672c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    800044fc:	0084b503          	ld	a0,8(s1)
    80004500:	ffffd097          	auipc	ra,0xffffd
    80004504:	d78080e7          	jalr	-648(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80004508:	0204b503          	ld	a0,32(s1)
    8000450c:	ffffd097          	auipc	ra,0xffffd
    80004510:	e98080e7          	jalr	-360(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80004514:	0184b503          	ld	a0,24(s1)
    80004518:	ffffd097          	auipc	ra,0xffffd
    8000451c:	e8c080e7          	jalr	-372(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80004520:	0304b503          	ld	a0,48(s1)
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	e80080e7          	jalr	-384(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    8000452c:	0284b503          	ld	a0,40(s1)
    80004530:	ffffd097          	auipc	ra,0xffffd
    80004534:	e74080e7          	jalr	-396(ra) # 800013a4 <sem_close>
}
    80004538:	01813083          	ld	ra,24(sp)
    8000453c:	01013403          	ld	s0,16(sp)
    80004540:	00813483          	ld	s1,8(sp)
    80004544:	02010113          	addi	sp,sp,32
    80004548:	00008067          	ret

000000008000454c <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    8000454c:	fe010113          	addi	sp,sp,-32
    80004550:	00113c23          	sd	ra,24(sp)
    80004554:	00813823          	sd	s0,16(sp)
    80004558:	00913423          	sd	s1,8(sp)
    8000455c:	01213023          	sd	s2,0(sp)
    80004560:	02010413          	addi	s0,sp,32
    80004564:	00050493          	mv	s1,a0
    80004568:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000456c:	01853503          	ld	a0,24(a0)
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	e60080e7          	jalr	-416(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80004578:	0304b503          	ld	a0,48(s1)
    8000457c:	ffffd097          	auipc	ra,0xffffd
    80004580:	e54080e7          	jalr	-428(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80004584:	0084b783          	ld	a5,8(s1)
    80004588:	0144a703          	lw	a4,20(s1)
    8000458c:	00271713          	slli	a4,a4,0x2
    80004590:	00e787b3          	add	a5,a5,a4
    80004594:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004598:	0144a783          	lw	a5,20(s1)
    8000459c:	0017879b          	addiw	a5,a5,1
    800045a0:	0004a703          	lw	a4,0(s1)
    800045a4:	02e7e7bb          	remw	a5,a5,a4
    800045a8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800045ac:	0304b503          	ld	a0,48(s1)
    800045b0:	ffffd097          	auipc	ra,0xffffd
    800045b4:	e4c080e7          	jalr	-436(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    800045b8:	0204b503          	ld	a0,32(s1)
    800045bc:	ffffd097          	auipc	ra,0xffffd
    800045c0:	e40080e7          	jalr	-448(ra) # 800013fc <sem_signal>

}
    800045c4:	01813083          	ld	ra,24(sp)
    800045c8:	01013403          	ld	s0,16(sp)
    800045cc:	00813483          	ld	s1,8(sp)
    800045d0:	00013903          	ld	s2,0(sp)
    800045d4:	02010113          	addi	sp,sp,32
    800045d8:	00008067          	ret

00000000800045dc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00913423          	sd	s1,8(sp)
    800045ec:	01213023          	sd	s2,0(sp)
    800045f0:	02010413          	addi	s0,sp,32
    800045f4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800045f8:	02053503          	ld	a0,32(a0)
    800045fc:	ffffd097          	auipc	ra,0xffffd
    80004600:	dd4080e7          	jalr	-556(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80004604:	0284b503          	ld	a0,40(s1)
    80004608:	ffffd097          	auipc	ra,0xffffd
    8000460c:	dc8080e7          	jalr	-568(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80004610:	0084b703          	ld	a4,8(s1)
    80004614:	0104a783          	lw	a5,16(s1)
    80004618:	00279693          	slli	a3,a5,0x2
    8000461c:	00d70733          	add	a4,a4,a3
    80004620:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004624:	0017879b          	addiw	a5,a5,1
    80004628:	0004a703          	lw	a4,0(s1)
    8000462c:	02e7e7bb          	remw	a5,a5,a4
    80004630:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004634:	0284b503          	ld	a0,40(s1)
    80004638:	ffffd097          	auipc	ra,0xffffd
    8000463c:	dc4080e7          	jalr	-572(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80004640:	0184b503          	ld	a0,24(s1)
    80004644:	ffffd097          	auipc	ra,0xffffd
    80004648:	db8080e7          	jalr	-584(ra) # 800013fc <sem_signal>

    return ret;
}
    8000464c:	00090513          	mv	a0,s2
    80004650:	01813083          	ld	ra,24(sp)
    80004654:	01013403          	ld	s0,16(sp)
    80004658:	00813483          	ld	s1,8(sp)
    8000465c:	00013903          	ld	s2,0(sp)
    80004660:	02010113          	addi	sp,sp,32
    80004664:	00008067          	ret

0000000080004668 <start>:
    80004668:	ff010113          	addi	sp,sp,-16
    8000466c:	00813423          	sd	s0,8(sp)
    80004670:	01010413          	addi	s0,sp,16
    80004674:	300027f3          	csrr	a5,mstatus
    80004678:	ffffe737          	lui	a4,0xffffe
    8000467c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4b8f>
    80004680:	00e7f7b3          	and	a5,a5,a4
    80004684:	00001737          	lui	a4,0x1
    80004688:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000468c:	00e7e7b3          	or	a5,a5,a4
    80004690:	30079073          	csrw	mstatus,a5
    80004694:	00000797          	auipc	a5,0x0
    80004698:	16078793          	addi	a5,a5,352 # 800047f4 <system_main>
    8000469c:	34179073          	csrw	mepc,a5
    800046a0:	00000793          	li	a5,0
    800046a4:	18079073          	csrw	satp,a5
    800046a8:	000107b7          	lui	a5,0x10
    800046ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800046b0:	30279073          	csrw	medeleg,a5
    800046b4:	30379073          	csrw	mideleg,a5
    800046b8:	104027f3          	csrr	a5,sie
    800046bc:	2227e793          	ori	a5,a5,546
    800046c0:	10479073          	csrw	sie,a5
    800046c4:	fff00793          	li	a5,-1
    800046c8:	00a7d793          	srli	a5,a5,0xa
    800046cc:	3b079073          	csrw	pmpaddr0,a5
    800046d0:	00f00793          	li	a5,15
    800046d4:	3a079073          	csrw	pmpcfg0,a5
    800046d8:	f14027f3          	csrr	a5,mhartid
    800046dc:	0200c737          	lui	a4,0x200c
    800046e0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800046e4:	0007869b          	sext.w	a3,a5
    800046e8:	00269713          	slli	a4,a3,0x2
    800046ec:	000f4637          	lui	a2,0xf4
    800046f0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800046f4:	00d70733          	add	a4,a4,a3
    800046f8:	0037979b          	slliw	a5,a5,0x3
    800046fc:	020046b7          	lui	a3,0x2004
    80004700:	00d787b3          	add	a5,a5,a3
    80004704:	00c585b3          	add	a1,a1,a2
    80004708:	00371693          	slli	a3,a4,0x3
    8000470c:	00004717          	auipc	a4,0x4
    80004710:	30470713          	addi	a4,a4,772 # 80008a10 <timer_scratch>
    80004714:	00b7b023          	sd	a1,0(a5)
    80004718:	00d70733          	add	a4,a4,a3
    8000471c:	00f73c23          	sd	a5,24(a4)
    80004720:	02c73023          	sd	a2,32(a4)
    80004724:	34071073          	csrw	mscratch,a4
    80004728:	00000797          	auipc	a5,0x0
    8000472c:	6e878793          	addi	a5,a5,1768 # 80004e10 <timervec>
    80004730:	30579073          	csrw	mtvec,a5
    80004734:	300027f3          	csrr	a5,mstatus
    80004738:	0087e793          	ori	a5,a5,8
    8000473c:	30079073          	csrw	mstatus,a5
    80004740:	304027f3          	csrr	a5,mie
    80004744:	0807e793          	ori	a5,a5,128
    80004748:	30479073          	csrw	mie,a5
    8000474c:	f14027f3          	csrr	a5,mhartid
    80004750:	0007879b          	sext.w	a5,a5
    80004754:	00078213          	mv	tp,a5
    80004758:	30200073          	mret
    8000475c:	00813403          	ld	s0,8(sp)
    80004760:	01010113          	addi	sp,sp,16
    80004764:	00008067          	ret

0000000080004768 <timerinit>:
    80004768:	ff010113          	addi	sp,sp,-16
    8000476c:	00813423          	sd	s0,8(sp)
    80004770:	01010413          	addi	s0,sp,16
    80004774:	f14027f3          	csrr	a5,mhartid
    80004778:	0200c737          	lui	a4,0x200c
    8000477c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004780:	0007869b          	sext.w	a3,a5
    80004784:	00269713          	slli	a4,a3,0x2
    80004788:	000f4637          	lui	a2,0xf4
    8000478c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004790:	00d70733          	add	a4,a4,a3
    80004794:	0037979b          	slliw	a5,a5,0x3
    80004798:	020046b7          	lui	a3,0x2004
    8000479c:	00d787b3          	add	a5,a5,a3
    800047a0:	00c585b3          	add	a1,a1,a2
    800047a4:	00371693          	slli	a3,a4,0x3
    800047a8:	00004717          	auipc	a4,0x4
    800047ac:	26870713          	addi	a4,a4,616 # 80008a10 <timer_scratch>
    800047b0:	00b7b023          	sd	a1,0(a5)
    800047b4:	00d70733          	add	a4,a4,a3
    800047b8:	00f73c23          	sd	a5,24(a4)
    800047bc:	02c73023          	sd	a2,32(a4)
    800047c0:	34071073          	csrw	mscratch,a4
    800047c4:	00000797          	auipc	a5,0x0
    800047c8:	64c78793          	addi	a5,a5,1612 # 80004e10 <timervec>
    800047cc:	30579073          	csrw	mtvec,a5
    800047d0:	300027f3          	csrr	a5,mstatus
    800047d4:	0087e793          	ori	a5,a5,8
    800047d8:	30079073          	csrw	mstatus,a5
    800047dc:	304027f3          	csrr	a5,mie
    800047e0:	0807e793          	ori	a5,a5,128
    800047e4:	30479073          	csrw	mie,a5
    800047e8:	00813403          	ld	s0,8(sp)
    800047ec:	01010113          	addi	sp,sp,16
    800047f0:	00008067          	ret

00000000800047f4 <system_main>:
    800047f4:	fe010113          	addi	sp,sp,-32
    800047f8:	00813823          	sd	s0,16(sp)
    800047fc:	00913423          	sd	s1,8(sp)
    80004800:	00113c23          	sd	ra,24(sp)
    80004804:	02010413          	addi	s0,sp,32
    80004808:	00000097          	auipc	ra,0x0
    8000480c:	0c4080e7          	jalr	196(ra) # 800048cc <cpuid>
    80004810:	00004497          	auipc	s1,0x4
    80004814:	15048493          	addi	s1,s1,336 # 80008960 <started>
    80004818:	02050263          	beqz	a0,8000483c <system_main+0x48>
    8000481c:	0004a783          	lw	a5,0(s1)
    80004820:	0007879b          	sext.w	a5,a5
    80004824:	fe078ce3          	beqz	a5,8000481c <system_main+0x28>
    80004828:	0ff0000f          	fence
    8000482c:	00003517          	auipc	a0,0x3
    80004830:	aec50513          	addi	a0,a0,-1300 # 80007318 <_ZL6digits+0x58>
    80004834:	00001097          	auipc	ra,0x1
    80004838:	a78080e7          	jalr	-1416(ra) # 800052ac <panic>
    8000483c:	00001097          	auipc	ra,0x1
    80004840:	9cc080e7          	jalr	-1588(ra) # 80005208 <consoleinit>
    80004844:	00001097          	auipc	ra,0x1
    80004848:	158080e7          	jalr	344(ra) # 8000599c <printfinit>
    8000484c:	00003517          	auipc	a0,0x3
    80004850:	93450513          	addi	a0,a0,-1740 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80004854:	00001097          	auipc	ra,0x1
    80004858:	ab4080e7          	jalr	-1356(ra) # 80005308 <__printf>
    8000485c:	00003517          	auipc	a0,0x3
    80004860:	a8c50513          	addi	a0,a0,-1396 # 800072e8 <_ZL6digits+0x28>
    80004864:	00001097          	auipc	ra,0x1
    80004868:	aa4080e7          	jalr	-1372(ra) # 80005308 <__printf>
    8000486c:	00003517          	auipc	a0,0x3
    80004870:	91450513          	addi	a0,a0,-1772 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80004874:	00001097          	auipc	ra,0x1
    80004878:	a94080e7          	jalr	-1388(ra) # 80005308 <__printf>
    8000487c:	00001097          	auipc	ra,0x1
    80004880:	4ac080e7          	jalr	1196(ra) # 80005d28 <kinit>
    80004884:	00000097          	auipc	ra,0x0
    80004888:	148080e7          	jalr	328(ra) # 800049cc <trapinit>
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	16c080e7          	jalr	364(ra) # 800049f8 <trapinithart>
    80004894:	00000097          	auipc	ra,0x0
    80004898:	5bc080e7          	jalr	1468(ra) # 80004e50 <plicinit>
    8000489c:	00000097          	auipc	ra,0x0
    800048a0:	5dc080e7          	jalr	1500(ra) # 80004e78 <plicinithart>
    800048a4:	00000097          	auipc	ra,0x0
    800048a8:	078080e7          	jalr	120(ra) # 8000491c <userinit>
    800048ac:	0ff0000f          	fence
    800048b0:	00100793          	li	a5,1
    800048b4:	00003517          	auipc	a0,0x3
    800048b8:	a4c50513          	addi	a0,a0,-1460 # 80007300 <_ZL6digits+0x40>
    800048bc:	00f4a023          	sw	a5,0(s1)
    800048c0:	00001097          	auipc	ra,0x1
    800048c4:	a48080e7          	jalr	-1464(ra) # 80005308 <__printf>
    800048c8:	0000006f          	j	800048c8 <system_main+0xd4>

00000000800048cc <cpuid>:
    800048cc:	ff010113          	addi	sp,sp,-16
    800048d0:	00813423          	sd	s0,8(sp)
    800048d4:	01010413          	addi	s0,sp,16
    800048d8:	00020513          	mv	a0,tp
    800048dc:	00813403          	ld	s0,8(sp)
    800048e0:	0005051b          	sext.w	a0,a0
    800048e4:	01010113          	addi	sp,sp,16
    800048e8:	00008067          	ret

00000000800048ec <mycpu>:
    800048ec:	ff010113          	addi	sp,sp,-16
    800048f0:	00813423          	sd	s0,8(sp)
    800048f4:	01010413          	addi	s0,sp,16
    800048f8:	00020793          	mv	a5,tp
    800048fc:	00813403          	ld	s0,8(sp)
    80004900:	0007879b          	sext.w	a5,a5
    80004904:	00779793          	slli	a5,a5,0x7
    80004908:	00005517          	auipc	a0,0x5
    8000490c:	13850513          	addi	a0,a0,312 # 80009a40 <cpus>
    80004910:	00f50533          	add	a0,a0,a5
    80004914:	01010113          	addi	sp,sp,16
    80004918:	00008067          	ret

000000008000491c <userinit>:
    8000491c:	ff010113          	addi	sp,sp,-16
    80004920:	00813423          	sd	s0,8(sp)
    80004924:	01010413          	addi	s0,sp,16
    80004928:	00813403          	ld	s0,8(sp)
    8000492c:	01010113          	addi	sp,sp,16
    80004930:	ffffe317          	auipc	t1,0xffffe
    80004934:	b5430067          	jr	-1196(t1) # 80002484 <main>

0000000080004938 <either_copyout>:
    80004938:	ff010113          	addi	sp,sp,-16
    8000493c:	00813023          	sd	s0,0(sp)
    80004940:	00113423          	sd	ra,8(sp)
    80004944:	01010413          	addi	s0,sp,16
    80004948:	02051663          	bnez	a0,80004974 <either_copyout+0x3c>
    8000494c:	00058513          	mv	a0,a1
    80004950:	00060593          	mv	a1,a2
    80004954:	0006861b          	sext.w	a2,a3
    80004958:	00002097          	auipc	ra,0x2
    8000495c:	c5c080e7          	jalr	-932(ra) # 800065b4 <__memmove>
    80004960:	00813083          	ld	ra,8(sp)
    80004964:	00013403          	ld	s0,0(sp)
    80004968:	00000513          	li	a0,0
    8000496c:	01010113          	addi	sp,sp,16
    80004970:	00008067          	ret
    80004974:	00003517          	auipc	a0,0x3
    80004978:	9cc50513          	addi	a0,a0,-1588 # 80007340 <_ZL6digits+0x80>
    8000497c:	00001097          	auipc	ra,0x1
    80004980:	930080e7          	jalr	-1744(ra) # 800052ac <panic>

0000000080004984 <either_copyin>:
    80004984:	ff010113          	addi	sp,sp,-16
    80004988:	00813023          	sd	s0,0(sp)
    8000498c:	00113423          	sd	ra,8(sp)
    80004990:	01010413          	addi	s0,sp,16
    80004994:	02059463          	bnez	a1,800049bc <either_copyin+0x38>
    80004998:	00060593          	mv	a1,a2
    8000499c:	0006861b          	sext.w	a2,a3
    800049a0:	00002097          	auipc	ra,0x2
    800049a4:	c14080e7          	jalr	-1004(ra) # 800065b4 <__memmove>
    800049a8:	00813083          	ld	ra,8(sp)
    800049ac:	00013403          	ld	s0,0(sp)
    800049b0:	00000513          	li	a0,0
    800049b4:	01010113          	addi	sp,sp,16
    800049b8:	00008067          	ret
    800049bc:	00003517          	auipc	a0,0x3
    800049c0:	9ac50513          	addi	a0,a0,-1620 # 80007368 <_ZL6digits+0xa8>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	8e8080e7          	jalr	-1816(ra) # 800052ac <panic>

00000000800049cc <trapinit>:
    800049cc:	ff010113          	addi	sp,sp,-16
    800049d0:	00813423          	sd	s0,8(sp)
    800049d4:	01010413          	addi	s0,sp,16
    800049d8:	00813403          	ld	s0,8(sp)
    800049dc:	00003597          	auipc	a1,0x3
    800049e0:	9b458593          	addi	a1,a1,-1612 # 80007390 <_ZL6digits+0xd0>
    800049e4:	00005517          	auipc	a0,0x5
    800049e8:	0dc50513          	addi	a0,a0,220 # 80009ac0 <tickslock>
    800049ec:	01010113          	addi	sp,sp,16
    800049f0:	00001317          	auipc	t1,0x1
    800049f4:	5c830067          	jr	1480(t1) # 80005fb8 <initlock>

00000000800049f8 <trapinithart>:
    800049f8:	ff010113          	addi	sp,sp,-16
    800049fc:	00813423          	sd	s0,8(sp)
    80004a00:	01010413          	addi	s0,sp,16
    80004a04:	00000797          	auipc	a5,0x0
    80004a08:	2fc78793          	addi	a5,a5,764 # 80004d00 <kernelvec>
    80004a0c:	10579073          	csrw	stvec,a5
    80004a10:	00813403          	ld	s0,8(sp)
    80004a14:	01010113          	addi	sp,sp,16
    80004a18:	00008067          	ret

0000000080004a1c <usertrap>:
    80004a1c:	ff010113          	addi	sp,sp,-16
    80004a20:	00813423          	sd	s0,8(sp)
    80004a24:	01010413          	addi	s0,sp,16
    80004a28:	00813403          	ld	s0,8(sp)
    80004a2c:	01010113          	addi	sp,sp,16
    80004a30:	00008067          	ret

0000000080004a34 <usertrapret>:
    80004a34:	ff010113          	addi	sp,sp,-16
    80004a38:	00813423          	sd	s0,8(sp)
    80004a3c:	01010413          	addi	s0,sp,16
    80004a40:	00813403          	ld	s0,8(sp)
    80004a44:	01010113          	addi	sp,sp,16
    80004a48:	00008067          	ret

0000000080004a4c <kerneltrap>:
    80004a4c:	fe010113          	addi	sp,sp,-32
    80004a50:	00813823          	sd	s0,16(sp)
    80004a54:	00113c23          	sd	ra,24(sp)
    80004a58:	00913423          	sd	s1,8(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    80004a60:	142025f3          	csrr	a1,scause
    80004a64:	100027f3          	csrr	a5,sstatus
    80004a68:	0027f793          	andi	a5,a5,2
    80004a6c:	10079c63          	bnez	a5,80004b84 <kerneltrap+0x138>
    80004a70:	142027f3          	csrr	a5,scause
    80004a74:	0207ce63          	bltz	a5,80004ab0 <kerneltrap+0x64>
    80004a78:	00003517          	auipc	a0,0x3
    80004a7c:	96050513          	addi	a0,a0,-1696 # 800073d8 <_ZL6digits+0x118>
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	888080e7          	jalr	-1912(ra) # 80005308 <__printf>
    80004a88:	141025f3          	csrr	a1,sepc
    80004a8c:	14302673          	csrr	a2,stval
    80004a90:	00003517          	auipc	a0,0x3
    80004a94:	95850513          	addi	a0,a0,-1704 # 800073e8 <_ZL6digits+0x128>
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	870080e7          	jalr	-1936(ra) # 80005308 <__printf>
    80004aa0:	00003517          	auipc	a0,0x3
    80004aa4:	96050513          	addi	a0,a0,-1696 # 80007400 <_ZL6digits+0x140>
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	804080e7          	jalr	-2044(ra) # 800052ac <panic>
    80004ab0:	0ff7f713          	andi	a4,a5,255
    80004ab4:	00900693          	li	a3,9
    80004ab8:	04d70063          	beq	a4,a3,80004af8 <kerneltrap+0xac>
    80004abc:	fff00713          	li	a4,-1
    80004ac0:	03f71713          	slli	a4,a4,0x3f
    80004ac4:	00170713          	addi	a4,a4,1
    80004ac8:	fae798e3          	bne	a5,a4,80004a78 <kerneltrap+0x2c>
    80004acc:	00000097          	auipc	ra,0x0
    80004ad0:	e00080e7          	jalr	-512(ra) # 800048cc <cpuid>
    80004ad4:	06050663          	beqz	a0,80004b40 <kerneltrap+0xf4>
    80004ad8:	144027f3          	csrr	a5,sip
    80004adc:	ffd7f793          	andi	a5,a5,-3
    80004ae0:	14479073          	csrw	sip,a5
    80004ae4:	01813083          	ld	ra,24(sp)
    80004ae8:	01013403          	ld	s0,16(sp)
    80004aec:	00813483          	ld	s1,8(sp)
    80004af0:	02010113          	addi	sp,sp,32
    80004af4:	00008067          	ret
    80004af8:	00000097          	auipc	ra,0x0
    80004afc:	3cc080e7          	jalr	972(ra) # 80004ec4 <plic_claim>
    80004b00:	00a00793          	li	a5,10
    80004b04:	00050493          	mv	s1,a0
    80004b08:	06f50863          	beq	a0,a5,80004b78 <kerneltrap+0x12c>
    80004b0c:	fc050ce3          	beqz	a0,80004ae4 <kerneltrap+0x98>
    80004b10:	00050593          	mv	a1,a0
    80004b14:	00003517          	auipc	a0,0x3
    80004b18:	8a450513          	addi	a0,a0,-1884 # 800073b8 <_ZL6digits+0xf8>
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	7ec080e7          	jalr	2028(ra) # 80005308 <__printf>
    80004b24:	01013403          	ld	s0,16(sp)
    80004b28:	01813083          	ld	ra,24(sp)
    80004b2c:	00048513          	mv	a0,s1
    80004b30:	00813483          	ld	s1,8(sp)
    80004b34:	02010113          	addi	sp,sp,32
    80004b38:	00000317          	auipc	t1,0x0
    80004b3c:	3c430067          	jr	964(t1) # 80004efc <plic_complete>
    80004b40:	00005517          	auipc	a0,0x5
    80004b44:	f8050513          	addi	a0,a0,-128 # 80009ac0 <tickslock>
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	494080e7          	jalr	1172(ra) # 80005fdc <acquire>
    80004b50:	00004717          	auipc	a4,0x4
    80004b54:	e1470713          	addi	a4,a4,-492 # 80008964 <ticks>
    80004b58:	00072783          	lw	a5,0(a4)
    80004b5c:	00005517          	auipc	a0,0x5
    80004b60:	f6450513          	addi	a0,a0,-156 # 80009ac0 <tickslock>
    80004b64:	0017879b          	addiw	a5,a5,1
    80004b68:	00f72023          	sw	a5,0(a4)
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	53c080e7          	jalr	1340(ra) # 800060a8 <release>
    80004b74:	f65ff06f          	j	80004ad8 <kerneltrap+0x8c>
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	098080e7          	jalr	152(ra) # 80005c10 <uartintr>
    80004b80:	fa5ff06f          	j	80004b24 <kerneltrap+0xd8>
    80004b84:	00003517          	auipc	a0,0x3
    80004b88:	81450513          	addi	a0,a0,-2028 # 80007398 <_ZL6digits+0xd8>
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	720080e7          	jalr	1824(ra) # 800052ac <panic>

0000000080004b94 <clockintr>:
    80004b94:	fe010113          	addi	sp,sp,-32
    80004b98:	00813823          	sd	s0,16(sp)
    80004b9c:	00913423          	sd	s1,8(sp)
    80004ba0:	00113c23          	sd	ra,24(sp)
    80004ba4:	02010413          	addi	s0,sp,32
    80004ba8:	00005497          	auipc	s1,0x5
    80004bac:	f1848493          	addi	s1,s1,-232 # 80009ac0 <tickslock>
    80004bb0:	00048513          	mv	a0,s1
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	428080e7          	jalr	1064(ra) # 80005fdc <acquire>
    80004bbc:	00004717          	auipc	a4,0x4
    80004bc0:	da870713          	addi	a4,a4,-600 # 80008964 <ticks>
    80004bc4:	00072783          	lw	a5,0(a4)
    80004bc8:	01013403          	ld	s0,16(sp)
    80004bcc:	01813083          	ld	ra,24(sp)
    80004bd0:	00048513          	mv	a0,s1
    80004bd4:	0017879b          	addiw	a5,a5,1
    80004bd8:	00813483          	ld	s1,8(sp)
    80004bdc:	00f72023          	sw	a5,0(a4)
    80004be0:	02010113          	addi	sp,sp,32
    80004be4:	00001317          	auipc	t1,0x1
    80004be8:	4c430067          	jr	1220(t1) # 800060a8 <release>

0000000080004bec <devintr>:
    80004bec:	142027f3          	csrr	a5,scause
    80004bf0:	00000513          	li	a0,0
    80004bf4:	0007c463          	bltz	a5,80004bfc <devintr+0x10>
    80004bf8:	00008067          	ret
    80004bfc:	fe010113          	addi	sp,sp,-32
    80004c00:	00813823          	sd	s0,16(sp)
    80004c04:	00113c23          	sd	ra,24(sp)
    80004c08:	00913423          	sd	s1,8(sp)
    80004c0c:	02010413          	addi	s0,sp,32
    80004c10:	0ff7f713          	andi	a4,a5,255
    80004c14:	00900693          	li	a3,9
    80004c18:	04d70c63          	beq	a4,a3,80004c70 <devintr+0x84>
    80004c1c:	fff00713          	li	a4,-1
    80004c20:	03f71713          	slli	a4,a4,0x3f
    80004c24:	00170713          	addi	a4,a4,1
    80004c28:	00e78c63          	beq	a5,a4,80004c40 <devintr+0x54>
    80004c2c:	01813083          	ld	ra,24(sp)
    80004c30:	01013403          	ld	s0,16(sp)
    80004c34:	00813483          	ld	s1,8(sp)
    80004c38:	02010113          	addi	sp,sp,32
    80004c3c:	00008067          	ret
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	c8c080e7          	jalr	-884(ra) # 800048cc <cpuid>
    80004c48:	06050663          	beqz	a0,80004cb4 <devintr+0xc8>
    80004c4c:	144027f3          	csrr	a5,sip
    80004c50:	ffd7f793          	andi	a5,a5,-3
    80004c54:	14479073          	csrw	sip,a5
    80004c58:	01813083          	ld	ra,24(sp)
    80004c5c:	01013403          	ld	s0,16(sp)
    80004c60:	00813483          	ld	s1,8(sp)
    80004c64:	00200513          	li	a0,2
    80004c68:	02010113          	addi	sp,sp,32
    80004c6c:	00008067          	ret
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	254080e7          	jalr	596(ra) # 80004ec4 <plic_claim>
    80004c78:	00a00793          	li	a5,10
    80004c7c:	00050493          	mv	s1,a0
    80004c80:	06f50663          	beq	a0,a5,80004cec <devintr+0x100>
    80004c84:	00100513          	li	a0,1
    80004c88:	fa0482e3          	beqz	s1,80004c2c <devintr+0x40>
    80004c8c:	00048593          	mv	a1,s1
    80004c90:	00002517          	auipc	a0,0x2
    80004c94:	72850513          	addi	a0,a0,1832 # 800073b8 <_ZL6digits+0xf8>
    80004c98:	00000097          	auipc	ra,0x0
    80004c9c:	670080e7          	jalr	1648(ra) # 80005308 <__printf>
    80004ca0:	00048513          	mv	a0,s1
    80004ca4:	00000097          	auipc	ra,0x0
    80004ca8:	258080e7          	jalr	600(ra) # 80004efc <plic_complete>
    80004cac:	00100513          	li	a0,1
    80004cb0:	f7dff06f          	j	80004c2c <devintr+0x40>
    80004cb4:	00005517          	auipc	a0,0x5
    80004cb8:	e0c50513          	addi	a0,a0,-500 # 80009ac0 <tickslock>
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	320080e7          	jalr	800(ra) # 80005fdc <acquire>
    80004cc4:	00004717          	auipc	a4,0x4
    80004cc8:	ca070713          	addi	a4,a4,-864 # 80008964 <ticks>
    80004ccc:	00072783          	lw	a5,0(a4)
    80004cd0:	00005517          	auipc	a0,0x5
    80004cd4:	df050513          	addi	a0,a0,-528 # 80009ac0 <tickslock>
    80004cd8:	0017879b          	addiw	a5,a5,1
    80004cdc:	00f72023          	sw	a5,0(a4)
    80004ce0:	00001097          	auipc	ra,0x1
    80004ce4:	3c8080e7          	jalr	968(ra) # 800060a8 <release>
    80004ce8:	f65ff06f          	j	80004c4c <devintr+0x60>
    80004cec:	00001097          	auipc	ra,0x1
    80004cf0:	f24080e7          	jalr	-220(ra) # 80005c10 <uartintr>
    80004cf4:	fadff06f          	j	80004ca0 <devintr+0xb4>
	...

0000000080004d00 <kernelvec>:
    80004d00:	f0010113          	addi	sp,sp,-256
    80004d04:	00113023          	sd	ra,0(sp)
    80004d08:	00213423          	sd	sp,8(sp)
    80004d0c:	00313823          	sd	gp,16(sp)
    80004d10:	00413c23          	sd	tp,24(sp)
    80004d14:	02513023          	sd	t0,32(sp)
    80004d18:	02613423          	sd	t1,40(sp)
    80004d1c:	02713823          	sd	t2,48(sp)
    80004d20:	02813c23          	sd	s0,56(sp)
    80004d24:	04913023          	sd	s1,64(sp)
    80004d28:	04a13423          	sd	a0,72(sp)
    80004d2c:	04b13823          	sd	a1,80(sp)
    80004d30:	04c13c23          	sd	a2,88(sp)
    80004d34:	06d13023          	sd	a3,96(sp)
    80004d38:	06e13423          	sd	a4,104(sp)
    80004d3c:	06f13823          	sd	a5,112(sp)
    80004d40:	07013c23          	sd	a6,120(sp)
    80004d44:	09113023          	sd	a7,128(sp)
    80004d48:	09213423          	sd	s2,136(sp)
    80004d4c:	09313823          	sd	s3,144(sp)
    80004d50:	09413c23          	sd	s4,152(sp)
    80004d54:	0b513023          	sd	s5,160(sp)
    80004d58:	0b613423          	sd	s6,168(sp)
    80004d5c:	0b713823          	sd	s7,176(sp)
    80004d60:	0b813c23          	sd	s8,184(sp)
    80004d64:	0d913023          	sd	s9,192(sp)
    80004d68:	0da13423          	sd	s10,200(sp)
    80004d6c:	0db13823          	sd	s11,208(sp)
    80004d70:	0dc13c23          	sd	t3,216(sp)
    80004d74:	0fd13023          	sd	t4,224(sp)
    80004d78:	0fe13423          	sd	t5,232(sp)
    80004d7c:	0ff13823          	sd	t6,240(sp)
    80004d80:	ccdff0ef          	jal	ra,80004a4c <kerneltrap>
    80004d84:	00013083          	ld	ra,0(sp)
    80004d88:	00813103          	ld	sp,8(sp)
    80004d8c:	01013183          	ld	gp,16(sp)
    80004d90:	02013283          	ld	t0,32(sp)
    80004d94:	02813303          	ld	t1,40(sp)
    80004d98:	03013383          	ld	t2,48(sp)
    80004d9c:	03813403          	ld	s0,56(sp)
    80004da0:	04013483          	ld	s1,64(sp)
    80004da4:	04813503          	ld	a0,72(sp)
    80004da8:	05013583          	ld	a1,80(sp)
    80004dac:	05813603          	ld	a2,88(sp)
    80004db0:	06013683          	ld	a3,96(sp)
    80004db4:	06813703          	ld	a4,104(sp)
    80004db8:	07013783          	ld	a5,112(sp)
    80004dbc:	07813803          	ld	a6,120(sp)
    80004dc0:	08013883          	ld	a7,128(sp)
    80004dc4:	08813903          	ld	s2,136(sp)
    80004dc8:	09013983          	ld	s3,144(sp)
    80004dcc:	09813a03          	ld	s4,152(sp)
    80004dd0:	0a013a83          	ld	s5,160(sp)
    80004dd4:	0a813b03          	ld	s6,168(sp)
    80004dd8:	0b013b83          	ld	s7,176(sp)
    80004ddc:	0b813c03          	ld	s8,184(sp)
    80004de0:	0c013c83          	ld	s9,192(sp)
    80004de4:	0c813d03          	ld	s10,200(sp)
    80004de8:	0d013d83          	ld	s11,208(sp)
    80004dec:	0d813e03          	ld	t3,216(sp)
    80004df0:	0e013e83          	ld	t4,224(sp)
    80004df4:	0e813f03          	ld	t5,232(sp)
    80004df8:	0f013f83          	ld	t6,240(sp)
    80004dfc:	10010113          	addi	sp,sp,256
    80004e00:	10200073          	sret
    80004e04:	00000013          	nop
    80004e08:	00000013          	nop
    80004e0c:	00000013          	nop

0000000080004e10 <timervec>:
    80004e10:	34051573          	csrrw	a0,mscratch,a0
    80004e14:	00b53023          	sd	a1,0(a0)
    80004e18:	00c53423          	sd	a2,8(a0)
    80004e1c:	00d53823          	sd	a3,16(a0)
    80004e20:	01853583          	ld	a1,24(a0)
    80004e24:	02053603          	ld	a2,32(a0)
    80004e28:	0005b683          	ld	a3,0(a1)
    80004e2c:	00c686b3          	add	a3,a3,a2
    80004e30:	00d5b023          	sd	a3,0(a1)
    80004e34:	00200593          	li	a1,2
    80004e38:	14459073          	csrw	sip,a1
    80004e3c:	01053683          	ld	a3,16(a0)
    80004e40:	00853603          	ld	a2,8(a0)
    80004e44:	00053583          	ld	a1,0(a0)
    80004e48:	34051573          	csrrw	a0,mscratch,a0
    80004e4c:	30200073          	mret

0000000080004e50 <plicinit>:
    80004e50:	ff010113          	addi	sp,sp,-16
    80004e54:	00813423          	sd	s0,8(sp)
    80004e58:	01010413          	addi	s0,sp,16
    80004e5c:	00813403          	ld	s0,8(sp)
    80004e60:	0c0007b7          	lui	a5,0xc000
    80004e64:	00100713          	li	a4,1
    80004e68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80004e6c:	00e7a223          	sw	a4,4(a5)
    80004e70:	01010113          	addi	sp,sp,16
    80004e74:	00008067          	ret

0000000080004e78 <plicinithart>:
    80004e78:	ff010113          	addi	sp,sp,-16
    80004e7c:	00813023          	sd	s0,0(sp)
    80004e80:	00113423          	sd	ra,8(sp)
    80004e84:	01010413          	addi	s0,sp,16
    80004e88:	00000097          	auipc	ra,0x0
    80004e8c:	a44080e7          	jalr	-1468(ra) # 800048cc <cpuid>
    80004e90:	0085171b          	slliw	a4,a0,0x8
    80004e94:	0c0027b7          	lui	a5,0xc002
    80004e98:	00e787b3          	add	a5,a5,a4
    80004e9c:	40200713          	li	a4,1026
    80004ea0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004ea4:	00813083          	ld	ra,8(sp)
    80004ea8:	00013403          	ld	s0,0(sp)
    80004eac:	00d5151b          	slliw	a0,a0,0xd
    80004eb0:	0c2017b7          	lui	a5,0xc201
    80004eb4:	00a78533          	add	a0,a5,a0
    80004eb8:	00052023          	sw	zero,0(a0)
    80004ebc:	01010113          	addi	sp,sp,16
    80004ec0:	00008067          	ret

0000000080004ec4 <plic_claim>:
    80004ec4:	ff010113          	addi	sp,sp,-16
    80004ec8:	00813023          	sd	s0,0(sp)
    80004ecc:	00113423          	sd	ra,8(sp)
    80004ed0:	01010413          	addi	s0,sp,16
    80004ed4:	00000097          	auipc	ra,0x0
    80004ed8:	9f8080e7          	jalr	-1544(ra) # 800048cc <cpuid>
    80004edc:	00813083          	ld	ra,8(sp)
    80004ee0:	00013403          	ld	s0,0(sp)
    80004ee4:	00d5151b          	slliw	a0,a0,0xd
    80004ee8:	0c2017b7          	lui	a5,0xc201
    80004eec:	00a78533          	add	a0,a5,a0
    80004ef0:	00452503          	lw	a0,4(a0)
    80004ef4:	01010113          	addi	sp,sp,16
    80004ef8:	00008067          	ret

0000000080004efc <plic_complete>:
    80004efc:	fe010113          	addi	sp,sp,-32
    80004f00:	00813823          	sd	s0,16(sp)
    80004f04:	00913423          	sd	s1,8(sp)
    80004f08:	00113c23          	sd	ra,24(sp)
    80004f0c:	02010413          	addi	s0,sp,32
    80004f10:	00050493          	mv	s1,a0
    80004f14:	00000097          	auipc	ra,0x0
    80004f18:	9b8080e7          	jalr	-1608(ra) # 800048cc <cpuid>
    80004f1c:	01813083          	ld	ra,24(sp)
    80004f20:	01013403          	ld	s0,16(sp)
    80004f24:	00d5179b          	slliw	a5,a0,0xd
    80004f28:	0c201737          	lui	a4,0xc201
    80004f2c:	00f707b3          	add	a5,a4,a5
    80004f30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004f34:	00813483          	ld	s1,8(sp)
    80004f38:	02010113          	addi	sp,sp,32
    80004f3c:	00008067          	ret

0000000080004f40 <consolewrite>:
    80004f40:	fb010113          	addi	sp,sp,-80
    80004f44:	04813023          	sd	s0,64(sp)
    80004f48:	04113423          	sd	ra,72(sp)
    80004f4c:	02913c23          	sd	s1,56(sp)
    80004f50:	03213823          	sd	s2,48(sp)
    80004f54:	03313423          	sd	s3,40(sp)
    80004f58:	03413023          	sd	s4,32(sp)
    80004f5c:	01513c23          	sd	s5,24(sp)
    80004f60:	05010413          	addi	s0,sp,80
    80004f64:	06c05c63          	blez	a2,80004fdc <consolewrite+0x9c>
    80004f68:	00060993          	mv	s3,a2
    80004f6c:	00050a13          	mv	s4,a0
    80004f70:	00058493          	mv	s1,a1
    80004f74:	00000913          	li	s2,0
    80004f78:	fff00a93          	li	s5,-1
    80004f7c:	01c0006f          	j	80004f98 <consolewrite+0x58>
    80004f80:	fbf44503          	lbu	a0,-65(s0)
    80004f84:	0019091b          	addiw	s2,s2,1
    80004f88:	00148493          	addi	s1,s1,1
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	a9c080e7          	jalr	-1380(ra) # 80005a28 <uartputc>
    80004f94:	03298063          	beq	s3,s2,80004fb4 <consolewrite+0x74>
    80004f98:	00048613          	mv	a2,s1
    80004f9c:	00100693          	li	a3,1
    80004fa0:	000a0593          	mv	a1,s4
    80004fa4:	fbf40513          	addi	a0,s0,-65
    80004fa8:	00000097          	auipc	ra,0x0
    80004fac:	9dc080e7          	jalr	-1572(ra) # 80004984 <either_copyin>
    80004fb0:	fd5518e3          	bne	a0,s5,80004f80 <consolewrite+0x40>
    80004fb4:	04813083          	ld	ra,72(sp)
    80004fb8:	04013403          	ld	s0,64(sp)
    80004fbc:	03813483          	ld	s1,56(sp)
    80004fc0:	02813983          	ld	s3,40(sp)
    80004fc4:	02013a03          	ld	s4,32(sp)
    80004fc8:	01813a83          	ld	s5,24(sp)
    80004fcc:	00090513          	mv	a0,s2
    80004fd0:	03013903          	ld	s2,48(sp)
    80004fd4:	05010113          	addi	sp,sp,80
    80004fd8:	00008067          	ret
    80004fdc:	00000913          	li	s2,0
    80004fe0:	fd5ff06f          	j	80004fb4 <consolewrite+0x74>

0000000080004fe4 <consoleread>:
    80004fe4:	f9010113          	addi	sp,sp,-112
    80004fe8:	06813023          	sd	s0,96(sp)
    80004fec:	04913c23          	sd	s1,88(sp)
    80004ff0:	05213823          	sd	s2,80(sp)
    80004ff4:	05313423          	sd	s3,72(sp)
    80004ff8:	05413023          	sd	s4,64(sp)
    80004ffc:	03513c23          	sd	s5,56(sp)
    80005000:	03613823          	sd	s6,48(sp)
    80005004:	03713423          	sd	s7,40(sp)
    80005008:	03813023          	sd	s8,32(sp)
    8000500c:	06113423          	sd	ra,104(sp)
    80005010:	01913c23          	sd	s9,24(sp)
    80005014:	07010413          	addi	s0,sp,112
    80005018:	00060b93          	mv	s7,a2
    8000501c:	00050913          	mv	s2,a0
    80005020:	00058c13          	mv	s8,a1
    80005024:	00060b1b          	sext.w	s6,a2
    80005028:	00005497          	auipc	s1,0x5
    8000502c:	ac048493          	addi	s1,s1,-1344 # 80009ae8 <cons>
    80005030:	00400993          	li	s3,4
    80005034:	fff00a13          	li	s4,-1
    80005038:	00a00a93          	li	s5,10
    8000503c:	05705e63          	blez	s7,80005098 <consoleread+0xb4>
    80005040:	09c4a703          	lw	a4,156(s1)
    80005044:	0984a783          	lw	a5,152(s1)
    80005048:	0007071b          	sext.w	a4,a4
    8000504c:	08e78463          	beq	a5,a4,800050d4 <consoleread+0xf0>
    80005050:	07f7f713          	andi	a4,a5,127
    80005054:	00e48733          	add	a4,s1,a4
    80005058:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000505c:	0017869b          	addiw	a3,a5,1
    80005060:	08d4ac23          	sw	a3,152(s1)
    80005064:	00070c9b          	sext.w	s9,a4
    80005068:	0b370663          	beq	a4,s3,80005114 <consoleread+0x130>
    8000506c:	00100693          	li	a3,1
    80005070:	f9f40613          	addi	a2,s0,-97
    80005074:	000c0593          	mv	a1,s8
    80005078:	00090513          	mv	a0,s2
    8000507c:	f8e40fa3          	sb	a4,-97(s0)
    80005080:	00000097          	auipc	ra,0x0
    80005084:	8b8080e7          	jalr	-1864(ra) # 80004938 <either_copyout>
    80005088:	01450863          	beq	a0,s4,80005098 <consoleread+0xb4>
    8000508c:	001c0c13          	addi	s8,s8,1
    80005090:	fffb8b9b          	addiw	s7,s7,-1
    80005094:	fb5c94e3          	bne	s9,s5,8000503c <consoleread+0x58>
    80005098:	000b851b          	sext.w	a0,s7
    8000509c:	06813083          	ld	ra,104(sp)
    800050a0:	06013403          	ld	s0,96(sp)
    800050a4:	05813483          	ld	s1,88(sp)
    800050a8:	05013903          	ld	s2,80(sp)
    800050ac:	04813983          	ld	s3,72(sp)
    800050b0:	04013a03          	ld	s4,64(sp)
    800050b4:	03813a83          	ld	s5,56(sp)
    800050b8:	02813b83          	ld	s7,40(sp)
    800050bc:	02013c03          	ld	s8,32(sp)
    800050c0:	01813c83          	ld	s9,24(sp)
    800050c4:	40ab053b          	subw	a0,s6,a0
    800050c8:	03013b03          	ld	s6,48(sp)
    800050cc:	07010113          	addi	sp,sp,112
    800050d0:	00008067          	ret
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	1d8080e7          	jalr	472(ra) # 800062ac <push_on>
    800050dc:	0984a703          	lw	a4,152(s1)
    800050e0:	09c4a783          	lw	a5,156(s1)
    800050e4:	0007879b          	sext.w	a5,a5
    800050e8:	fef70ce3          	beq	a4,a5,800050e0 <consoleread+0xfc>
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	234080e7          	jalr	564(ra) # 80006320 <pop_on>
    800050f4:	0984a783          	lw	a5,152(s1)
    800050f8:	07f7f713          	andi	a4,a5,127
    800050fc:	00e48733          	add	a4,s1,a4
    80005100:	01874703          	lbu	a4,24(a4)
    80005104:	0017869b          	addiw	a3,a5,1
    80005108:	08d4ac23          	sw	a3,152(s1)
    8000510c:	00070c9b          	sext.w	s9,a4
    80005110:	f5371ee3          	bne	a4,s3,8000506c <consoleread+0x88>
    80005114:	000b851b          	sext.w	a0,s7
    80005118:	f96bf2e3          	bgeu	s7,s6,8000509c <consoleread+0xb8>
    8000511c:	08f4ac23          	sw	a5,152(s1)
    80005120:	f7dff06f          	j	8000509c <consoleread+0xb8>

0000000080005124 <consputc>:
    80005124:	10000793          	li	a5,256
    80005128:	00f50663          	beq	a0,a5,80005134 <consputc+0x10>
    8000512c:	00001317          	auipc	t1,0x1
    80005130:	9f430067          	jr	-1548(t1) # 80005b20 <uartputc_sync>
    80005134:	ff010113          	addi	sp,sp,-16
    80005138:	00113423          	sd	ra,8(sp)
    8000513c:	00813023          	sd	s0,0(sp)
    80005140:	01010413          	addi	s0,sp,16
    80005144:	00800513          	li	a0,8
    80005148:	00001097          	auipc	ra,0x1
    8000514c:	9d8080e7          	jalr	-1576(ra) # 80005b20 <uartputc_sync>
    80005150:	02000513          	li	a0,32
    80005154:	00001097          	auipc	ra,0x1
    80005158:	9cc080e7          	jalr	-1588(ra) # 80005b20 <uartputc_sync>
    8000515c:	00013403          	ld	s0,0(sp)
    80005160:	00813083          	ld	ra,8(sp)
    80005164:	00800513          	li	a0,8
    80005168:	01010113          	addi	sp,sp,16
    8000516c:	00001317          	auipc	t1,0x1
    80005170:	9b430067          	jr	-1612(t1) # 80005b20 <uartputc_sync>

0000000080005174 <consoleintr>:
    80005174:	fe010113          	addi	sp,sp,-32
    80005178:	00813823          	sd	s0,16(sp)
    8000517c:	00913423          	sd	s1,8(sp)
    80005180:	01213023          	sd	s2,0(sp)
    80005184:	00113c23          	sd	ra,24(sp)
    80005188:	02010413          	addi	s0,sp,32
    8000518c:	00005917          	auipc	s2,0x5
    80005190:	95c90913          	addi	s2,s2,-1700 # 80009ae8 <cons>
    80005194:	00050493          	mv	s1,a0
    80005198:	00090513          	mv	a0,s2
    8000519c:	00001097          	auipc	ra,0x1
    800051a0:	e40080e7          	jalr	-448(ra) # 80005fdc <acquire>
    800051a4:	02048c63          	beqz	s1,800051dc <consoleintr+0x68>
    800051a8:	0a092783          	lw	a5,160(s2)
    800051ac:	09892703          	lw	a4,152(s2)
    800051b0:	07f00693          	li	a3,127
    800051b4:	40e7873b          	subw	a4,a5,a4
    800051b8:	02e6e263          	bltu	a3,a4,800051dc <consoleintr+0x68>
    800051bc:	00d00713          	li	a4,13
    800051c0:	04e48063          	beq	s1,a4,80005200 <consoleintr+0x8c>
    800051c4:	07f7f713          	andi	a4,a5,127
    800051c8:	00e90733          	add	a4,s2,a4
    800051cc:	0017879b          	addiw	a5,a5,1
    800051d0:	0af92023          	sw	a5,160(s2)
    800051d4:	00970c23          	sb	s1,24(a4)
    800051d8:	08f92e23          	sw	a5,156(s2)
    800051dc:	01013403          	ld	s0,16(sp)
    800051e0:	01813083          	ld	ra,24(sp)
    800051e4:	00813483          	ld	s1,8(sp)
    800051e8:	00013903          	ld	s2,0(sp)
    800051ec:	00005517          	auipc	a0,0x5
    800051f0:	8fc50513          	addi	a0,a0,-1796 # 80009ae8 <cons>
    800051f4:	02010113          	addi	sp,sp,32
    800051f8:	00001317          	auipc	t1,0x1
    800051fc:	eb030067          	jr	-336(t1) # 800060a8 <release>
    80005200:	00a00493          	li	s1,10
    80005204:	fc1ff06f          	j	800051c4 <consoleintr+0x50>

0000000080005208 <consoleinit>:
    80005208:	fe010113          	addi	sp,sp,-32
    8000520c:	00113c23          	sd	ra,24(sp)
    80005210:	00813823          	sd	s0,16(sp)
    80005214:	00913423          	sd	s1,8(sp)
    80005218:	02010413          	addi	s0,sp,32
    8000521c:	00005497          	auipc	s1,0x5
    80005220:	8cc48493          	addi	s1,s1,-1844 # 80009ae8 <cons>
    80005224:	00048513          	mv	a0,s1
    80005228:	00002597          	auipc	a1,0x2
    8000522c:	1e858593          	addi	a1,a1,488 # 80007410 <_ZL6digits+0x150>
    80005230:	00001097          	auipc	ra,0x1
    80005234:	d88080e7          	jalr	-632(ra) # 80005fb8 <initlock>
    80005238:	00000097          	auipc	ra,0x0
    8000523c:	7ac080e7          	jalr	1964(ra) # 800059e4 <uartinit>
    80005240:	01813083          	ld	ra,24(sp)
    80005244:	01013403          	ld	s0,16(sp)
    80005248:	00000797          	auipc	a5,0x0
    8000524c:	d9c78793          	addi	a5,a5,-612 # 80004fe4 <consoleread>
    80005250:	0af4bc23          	sd	a5,184(s1)
    80005254:	00000797          	auipc	a5,0x0
    80005258:	cec78793          	addi	a5,a5,-788 # 80004f40 <consolewrite>
    8000525c:	0cf4b023          	sd	a5,192(s1)
    80005260:	00813483          	ld	s1,8(sp)
    80005264:	02010113          	addi	sp,sp,32
    80005268:	00008067          	ret

000000008000526c <console_read>:
    8000526c:	ff010113          	addi	sp,sp,-16
    80005270:	00813423          	sd	s0,8(sp)
    80005274:	01010413          	addi	s0,sp,16
    80005278:	00813403          	ld	s0,8(sp)
    8000527c:	00005317          	auipc	t1,0x5
    80005280:	92433303          	ld	t1,-1756(t1) # 80009ba0 <devsw+0x10>
    80005284:	01010113          	addi	sp,sp,16
    80005288:	00030067          	jr	t1

000000008000528c <console_write>:
    8000528c:	ff010113          	addi	sp,sp,-16
    80005290:	00813423          	sd	s0,8(sp)
    80005294:	01010413          	addi	s0,sp,16
    80005298:	00813403          	ld	s0,8(sp)
    8000529c:	00005317          	auipc	t1,0x5
    800052a0:	90c33303          	ld	t1,-1780(t1) # 80009ba8 <devsw+0x18>
    800052a4:	01010113          	addi	sp,sp,16
    800052a8:	00030067          	jr	t1

00000000800052ac <panic>:
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00113c23          	sd	ra,24(sp)
    800052b4:	00813823          	sd	s0,16(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	02010413          	addi	s0,sp,32
    800052c0:	00050493          	mv	s1,a0
    800052c4:	00002517          	auipc	a0,0x2
    800052c8:	15450513          	addi	a0,a0,340 # 80007418 <_ZL6digits+0x158>
    800052cc:	00005797          	auipc	a5,0x5
    800052d0:	9607ae23          	sw	zero,-1668(a5) # 80009c48 <pr+0x18>
    800052d4:	00000097          	auipc	ra,0x0
    800052d8:	034080e7          	jalr	52(ra) # 80005308 <__printf>
    800052dc:	00048513          	mv	a0,s1
    800052e0:	00000097          	auipc	ra,0x0
    800052e4:	028080e7          	jalr	40(ra) # 80005308 <__printf>
    800052e8:	00002517          	auipc	a0,0x2
    800052ec:	e9850513          	addi	a0,a0,-360 # 80007180 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800052f0:	00000097          	auipc	ra,0x0
    800052f4:	018080e7          	jalr	24(ra) # 80005308 <__printf>
    800052f8:	00100793          	li	a5,1
    800052fc:	00003717          	auipc	a4,0x3
    80005300:	66f72623          	sw	a5,1644(a4) # 80008968 <panicked>
    80005304:	0000006f          	j	80005304 <panic+0x58>

0000000080005308 <__printf>:
    80005308:	f3010113          	addi	sp,sp,-208
    8000530c:	08813023          	sd	s0,128(sp)
    80005310:	07313423          	sd	s3,104(sp)
    80005314:	09010413          	addi	s0,sp,144
    80005318:	05813023          	sd	s8,64(sp)
    8000531c:	08113423          	sd	ra,136(sp)
    80005320:	06913c23          	sd	s1,120(sp)
    80005324:	07213823          	sd	s2,112(sp)
    80005328:	07413023          	sd	s4,96(sp)
    8000532c:	05513c23          	sd	s5,88(sp)
    80005330:	05613823          	sd	s6,80(sp)
    80005334:	05713423          	sd	s7,72(sp)
    80005338:	03913c23          	sd	s9,56(sp)
    8000533c:	03a13823          	sd	s10,48(sp)
    80005340:	03b13423          	sd	s11,40(sp)
    80005344:	00005317          	auipc	t1,0x5
    80005348:	8ec30313          	addi	t1,t1,-1812 # 80009c30 <pr>
    8000534c:	01832c03          	lw	s8,24(t1)
    80005350:	00b43423          	sd	a1,8(s0)
    80005354:	00c43823          	sd	a2,16(s0)
    80005358:	00d43c23          	sd	a3,24(s0)
    8000535c:	02e43023          	sd	a4,32(s0)
    80005360:	02f43423          	sd	a5,40(s0)
    80005364:	03043823          	sd	a6,48(s0)
    80005368:	03143c23          	sd	a7,56(s0)
    8000536c:	00050993          	mv	s3,a0
    80005370:	4a0c1663          	bnez	s8,8000581c <__printf+0x514>
    80005374:	60098c63          	beqz	s3,8000598c <__printf+0x684>
    80005378:	0009c503          	lbu	a0,0(s3)
    8000537c:	00840793          	addi	a5,s0,8
    80005380:	f6f43c23          	sd	a5,-136(s0)
    80005384:	00000493          	li	s1,0
    80005388:	22050063          	beqz	a0,800055a8 <__printf+0x2a0>
    8000538c:	00002a37          	lui	s4,0x2
    80005390:	00018ab7          	lui	s5,0x18
    80005394:	000f4b37          	lui	s6,0xf4
    80005398:	00989bb7          	lui	s7,0x989
    8000539c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800053a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800053a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800053a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800053ac:	00148c9b          	addiw	s9,s1,1
    800053b0:	02500793          	li	a5,37
    800053b4:	01998933          	add	s2,s3,s9
    800053b8:	38f51263          	bne	a0,a5,8000573c <__printf+0x434>
    800053bc:	00094783          	lbu	a5,0(s2)
    800053c0:	00078c9b          	sext.w	s9,a5
    800053c4:	1e078263          	beqz	a5,800055a8 <__printf+0x2a0>
    800053c8:	0024849b          	addiw	s1,s1,2
    800053cc:	07000713          	li	a4,112
    800053d0:	00998933          	add	s2,s3,s1
    800053d4:	38e78a63          	beq	a5,a4,80005768 <__printf+0x460>
    800053d8:	20f76863          	bltu	a4,a5,800055e8 <__printf+0x2e0>
    800053dc:	42a78863          	beq	a5,a0,8000580c <__printf+0x504>
    800053e0:	06400713          	li	a4,100
    800053e4:	40e79663          	bne	a5,a4,800057f0 <__printf+0x4e8>
    800053e8:	f7843783          	ld	a5,-136(s0)
    800053ec:	0007a603          	lw	a2,0(a5)
    800053f0:	00878793          	addi	a5,a5,8
    800053f4:	f6f43c23          	sd	a5,-136(s0)
    800053f8:	42064a63          	bltz	a2,8000582c <__printf+0x524>
    800053fc:	00a00713          	li	a4,10
    80005400:	02e677bb          	remuw	a5,a2,a4
    80005404:	00002d97          	auipc	s11,0x2
    80005408:	03cd8d93          	addi	s11,s11,60 # 80007440 <digits>
    8000540c:	00900593          	li	a1,9
    80005410:	0006051b          	sext.w	a0,a2
    80005414:	00000c93          	li	s9,0
    80005418:	02079793          	slli	a5,a5,0x20
    8000541c:	0207d793          	srli	a5,a5,0x20
    80005420:	00fd87b3          	add	a5,s11,a5
    80005424:	0007c783          	lbu	a5,0(a5)
    80005428:	02e656bb          	divuw	a3,a2,a4
    8000542c:	f8f40023          	sb	a5,-128(s0)
    80005430:	14c5d863          	bge	a1,a2,80005580 <__printf+0x278>
    80005434:	06300593          	li	a1,99
    80005438:	00100c93          	li	s9,1
    8000543c:	02e6f7bb          	remuw	a5,a3,a4
    80005440:	02079793          	slli	a5,a5,0x20
    80005444:	0207d793          	srli	a5,a5,0x20
    80005448:	00fd87b3          	add	a5,s11,a5
    8000544c:	0007c783          	lbu	a5,0(a5)
    80005450:	02e6d73b          	divuw	a4,a3,a4
    80005454:	f8f400a3          	sb	a5,-127(s0)
    80005458:	12a5f463          	bgeu	a1,a0,80005580 <__printf+0x278>
    8000545c:	00a00693          	li	a3,10
    80005460:	00900593          	li	a1,9
    80005464:	02d777bb          	remuw	a5,a4,a3
    80005468:	02079793          	slli	a5,a5,0x20
    8000546c:	0207d793          	srli	a5,a5,0x20
    80005470:	00fd87b3          	add	a5,s11,a5
    80005474:	0007c503          	lbu	a0,0(a5)
    80005478:	02d757bb          	divuw	a5,a4,a3
    8000547c:	f8a40123          	sb	a0,-126(s0)
    80005480:	48e5f263          	bgeu	a1,a4,80005904 <__printf+0x5fc>
    80005484:	06300513          	li	a0,99
    80005488:	02d7f5bb          	remuw	a1,a5,a3
    8000548c:	02059593          	slli	a1,a1,0x20
    80005490:	0205d593          	srli	a1,a1,0x20
    80005494:	00bd85b3          	add	a1,s11,a1
    80005498:	0005c583          	lbu	a1,0(a1)
    8000549c:	02d7d7bb          	divuw	a5,a5,a3
    800054a0:	f8b401a3          	sb	a1,-125(s0)
    800054a4:	48e57263          	bgeu	a0,a4,80005928 <__printf+0x620>
    800054a8:	3e700513          	li	a0,999
    800054ac:	02d7f5bb          	remuw	a1,a5,a3
    800054b0:	02059593          	slli	a1,a1,0x20
    800054b4:	0205d593          	srli	a1,a1,0x20
    800054b8:	00bd85b3          	add	a1,s11,a1
    800054bc:	0005c583          	lbu	a1,0(a1)
    800054c0:	02d7d7bb          	divuw	a5,a5,a3
    800054c4:	f8b40223          	sb	a1,-124(s0)
    800054c8:	46e57663          	bgeu	a0,a4,80005934 <__printf+0x62c>
    800054cc:	02d7f5bb          	remuw	a1,a5,a3
    800054d0:	02059593          	slli	a1,a1,0x20
    800054d4:	0205d593          	srli	a1,a1,0x20
    800054d8:	00bd85b3          	add	a1,s11,a1
    800054dc:	0005c583          	lbu	a1,0(a1)
    800054e0:	02d7d7bb          	divuw	a5,a5,a3
    800054e4:	f8b402a3          	sb	a1,-123(s0)
    800054e8:	46ea7863          	bgeu	s4,a4,80005958 <__printf+0x650>
    800054ec:	02d7f5bb          	remuw	a1,a5,a3
    800054f0:	02059593          	slli	a1,a1,0x20
    800054f4:	0205d593          	srli	a1,a1,0x20
    800054f8:	00bd85b3          	add	a1,s11,a1
    800054fc:	0005c583          	lbu	a1,0(a1)
    80005500:	02d7d7bb          	divuw	a5,a5,a3
    80005504:	f8b40323          	sb	a1,-122(s0)
    80005508:	3eeaf863          	bgeu	s5,a4,800058f8 <__printf+0x5f0>
    8000550c:	02d7f5bb          	remuw	a1,a5,a3
    80005510:	02059593          	slli	a1,a1,0x20
    80005514:	0205d593          	srli	a1,a1,0x20
    80005518:	00bd85b3          	add	a1,s11,a1
    8000551c:	0005c583          	lbu	a1,0(a1)
    80005520:	02d7d7bb          	divuw	a5,a5,a3
    80005524:	f8b403a3          	sb	a1,-121(s0)
    80005528:	42eb7e63          	bgeu	s6,a4,80005964 <__printf+0x65c>
    8000552c:	02d7f5bb          	remuw	a1,a5,a3
    80005530:	02059593          	slli	a1,a1,0x20
    80005534:	0205d593          	srli	a1,a1,0x20
    80005538:	00bd85b3          	add	a1,s11,a1
    8000553c:	0005c583          	lbu	a1,0(a1)
    80005540:	02d7d7bb          	divuw	a5,a5,a3
    80005544:	f8b40423          	sb	a1,-120(s0)
    80005548:	42ebfc63          	bgeu	s7,a4,80005980 <__printf+0x678>
    8000554c:	02079793          	slli	a5,a5,0x20
    80005550:	0207d793          	srli	a5,a5,0x20
    80005554:	00fd8db3          	add	s11,s11,a5
    80005558:	000dc703          	lbu	a4,0(s11)
    8000555c:	00a00793          	li	a5,10
    80005560:	00900c93          	li	s9,9
    80005564:	f8e404a3          	sb	a4,-119(s0)
    80005568:	00065c63          	bgez	a2,80005580 <__printf+0x278>
    8000556c:	f9040713          	addi	a4,s0,-112
    80005570:	00f70733          	add	a4,a4,a5
    80005574:	02d00693          	li	a3,45
    80005578:	fed70823          	sb	a3,-16(a4)
    8000557c:	00078c93          	mv	s9,a5
    80005580:	f8040793          	addi	a5,s0,-128
    80005584:	01978cb3          	add	s9,a5,s9
    80005588:	f7f40d13          	addi	s10,s0,-129
    8000558c:	000cc503          	lbu	a0,0(s9)
    80005590:	fffc8c93          	addi	s9,s9,-1
    80005594:	00000097          	auipc	ra,0x0
    80005598:	b90080e7          	jalr	-1136(ra) # 80005124 <consputc>
    8000559c:	ffac98e3          	bne	s9,s10,8000558c <__printf+0x284>
    800055a0:	00094503          	lbu	a0,0(s2)
    800055a4:	e00514e3          	bnez	a0,800053ac <__printf+0xa4>
    800055a8:	1a0c1663          	bnez	s8,80005754 <__printf+0x44c>
    800055ac:	08813083          	ld	ra,136(sp)
    800055b0:	08013403          	ld	s0,128(sp)
    800055b4:	07813483          	ld	s1,120(sp)
    800055b8:	07013903          	ld	s2,112(sp)
    800055bc:	06813983          	ld	s3,104(sp)
    800055c0:	06013a03          	ld	s4,96(sp)
    800055c4:	05813a83          	ld	s5,88(sp)
    800055c8:	05013b03          	ld	s6,80(sp)
    800055cc:	04813b83          	ld	s7,72(sp)
    800055d0:	04013c03          	ld	s8,64(sp)
    800055d4:	03813c83          	ld	s9,56(sp)
    800055d8:	03013d03          	ld	s10,48(sp)
    800055dc:	02813d83          	ld	s11,40(sp)
    800055e0:	0d010113          	addi	sp,sp,208
    800055e4:	00008067          	ret
    800055e8:	07300713          	li	a4,115
    800055ec:	1ce78a63          	beq	a5,a4,800057c0 <__printf+0x4b8>
    800055f0:	07800713          	li	a4,120
    800055f4:	1ee79e63          	bne	a5,a4,800057f0 <__printf+0x4e8>
    800055f8:	f7843783          	ld	a5,-136(s0)
    800055fc:	0007a703          	lw	a4,0(a5)
    80005600:	00878793          	addi	a5,a5,8
    80005604:	f6f43c23          	sd	a5,-136(s0)
    80005608:	28074263          	bltz	a4,8000588c <__printf+0x584>
    8000560c:	00002d97          	auipc	s11,0x2
    80005610:	e34d8d93          	addi	s11,s11,-460 # 80007440 <digits>
    80005614:	00f77793          	andi	a5,a4,15
    80005618:	00fd87b3          	add	a5,s11,a5
    8000561c:	0007c683          	lbu	a3,0(a5)
    80005620:	00f00613          	li	a2,15
    80005624:	0007079b          	sext.w	a5,a4
    80005628:	f8d40023          	sb	a3,-128(s0)
    8000562c:	0047559b          	srliw	a1,a4,0x4
    80005630:	0047569b          	srliw	a3,a4,0x4
    80005634:	00000c93          	li	s9,0
    80005638:	0ee65063          	bge	a2,a4,80005718 <__printf+0x410>
    8000563c:	00f6f693          	andi	a3,a3,15
    80005640:	00dd86b3          	add	a3,s11,a3
    80005644:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005648:	0087d79b          	srliw	a5,a5,0x8
    8000564c:	00100c93          	li	s9,1
    80005650:	f8d400a3          	sb	a3,-127(s0)
    80005654:	0cb67263          	bgeu	a2,a1,80005718 <__printf+0x410>
    80005658:	00f7f693          	andi	a3,a5,15
    8000565c:	00dd86b3          	add	a3,s11,a3
    80005660:	0006c583          	lbu	a1,0(a3)
    80005664:	00f00613          	li	a2,15
    80005668:	0047d69b          	srliw	a3,a5,0x4
    8000566c:	f8b40123          	sb	a1,-126(s0)
    80005670:	0047d593          	srli	a1,a5,0x4
    80005674:	28f67e63          	bgeu	a2,a5,80005910 <__printf+0x608>
    80005678:	00f6f693          	andi	a3,a3,15
    8000567c:	00dd86b3          	add	a3,s11,a3
    80005680:	0006c503          	lbu	a0,0(a3)
    80005684:	0087d813          	srli	a6,a5,0x8
    80005688:	0087d69b          	srliw	a3,a5,0x8
    8000568c:	f8a401a3          	sb	a0,-125(s0)
    80005690:	28b67663          	bgeu	a2,a1,8000591c <__printf+0x614>
    80005694:	00f6f693          	andi	a3,a3,15
    80005698:	00dd86b3          	add	a3,s11,a3
    8000569c:	0006c583          	lbu	a1,0(a3)
    800056a0:	00c7d513          	srli	a0,a5,0xc
    800056a4:	00c7d69b          	srliw	a3,a5,0xc
    800056a8:	f8b40223          	sb	a1,-124(s0)
    800056ac:	29067a63          	bgeu	a2,a6,80005940 <__printf+0x638>
    800056b0:	00f6f693          	andi	a3,a3,15
    800056b4:	00dd86b3          	add	a3,s11,a3
    800056b8:	0006c583          	lbu	a1,0(a3)
    800056bc:	0107d813          	srli	a6,a5,0x10
    800056c0:	0107d69b          	srliw	a3,a5,0x10
    800056c4:	f8b402a3          	sb	a1,-123(s0)
    800056c8:	28a67263          	bgeu	a2,a0,8000594c <__printf+0x644>
    800056cc:	00f6f693          	andi	a3,a3,15
    800056d0:	00dd86b3          	add	a3,s11,a3
    800056d4:	0006c683          	lbu	a3,0(a3)
    800056d8:	0147d79b          	srliw	a5,a5,0x14
    800056dc:	f8d40323          	sb	a3,-122(s0)
    800056e0:	21067663          	bgeu	a2,a6,800058ec <__printf+0x5e4>
    800056e4:	02079793          	slli	a5,a5,0x20
    800056e8:	0207d793          	srli	a5,a5,0x20
    800056ec:	00fd8db3          	add	s11,s11,a5
    800056f0:	000dc683          	lbu	a3,0(s11)
    800056f4:	00800793          	li	a5,8
    800056f8:	00700c93          	li	s9,7
    800056fc:	f8d403a3          	sb	a3,-121(s0)
    80005700:	00075c63          	bgez	a4,80005718 <__printf+0x410>
    80005704:	f9040713          	addi	a4,s0,-112
    80005708:	00f70733          	add	a4,a4,a5
    8000570c:	02d00693          	li	a3,45
    80005710:	fed70823          	sb	a3,-16(a4)
    80005714:	00078c93          	mv	s9,a5
    80005718:	f8040793          	addi	a5,s0,-128
    8000571c:	01978cb3          	add	s9,a5,s9
    80005720:	f7f40d13          	addi	s10,s0,-129
    80005724:	000cc503          	lbu	a0,0(s9)
    80005728:	fffc8c93          	addi	s9,s9,-1
    8000572c:	00000097          	auipc	ra,0x0
    80005730:	9f8080e7          	jalr	-1544(ra) # 80005124 <consputc>
    80005734:	ff9d18e3          	bne	s10,s9,80005724 <__printf+0x41c>
    80005738:	0100006f          	j	80005748 <__printf+0x440>
    8000573c:	00000097          	auipc	ra,0x0
    80005740:	9e8080e7          	jalr	-1560(ra) # 80005124 <consputc>
    80005744:	000c8493          	mv	s1,s9
    80005748:	00094503          	lbu	a0,0(s2)
    8000574c:	c60510e3          	bnez	a0,800053ac <__printf+0xa4>
    80005750:	e40c0ee3          	beqz	s8,800055ac <__printf+0x2a4>
    80005754:	00004517          	auipc	a0,0x4
    80005758:	4dc50513          	addi	a0,a0,1244 # 80009c30 <pr>
    8000575c:	00001097          	auipc	ra,0x1
    80005760:	94c080e7          	jalr	-1716(ra) # 800060a8 <release>
    80005764:	e49ff06f          	j	800055ac <__printf+0x2a4>
    80005768:	f7843783          	ld	a5,-136(s0)
    8000576c:	03000513          	li	a0,48
    80005770:	01000d13          	li	s10,16
    80005774:	00878713          	addi	a4,a5,8
    80005778:	0007bc83          	ld	s9,0(a5)
    8000577c:	f6e43c23          	sd	a4,-136(s0)
    80005780:	00000097          	auipc	ra,0x0
    80005784:	9a4080e7          	jalr	-1628(ra) # 80005124 <consputc>
    80005788:	07800513          	li	a0,120
    8000578c:	00000097          	auipc	ra,0x0
    80005790:	998080e7          	jalr	-1640(ra) # 80005124 <consputc>
    80005794:	00002d97          	auipc	s11,0x2
    80005798:	cacd8d93          	addi	s11,s11,-852 # 80007440 <digits>
    8000579c:	03ccd793          	srli	a5,s9,0x3c
    800057a0:	00fd87b3          	add	a5,s11,a5
    800057a4:	0007c503          	lbu	a0,0(a5)
    800057a8:	fffd0d1b          	addiw	s10,s10,-1
    800057ac:	004c9c93          	slli	s9,s9,0x4
    800057b0:	00000097          	auipc	ra,0x0
    800057b4:	974080e7          	jalr	-1676(ra) # 80005124 <consputc>
    800057b8:	fe0d12e3          	bnez	s10,8000579c <__printf+0x494>
    800057bc:	f8dff06f          	j	80005748 <__printf+0x440>
    800057c0:	f7843783          	ld	a5,-136(s0)
    800057c4:	0007bc83          	ld	s9,0(a5)
    800057c8:	00878793          	addi	a5,a5,8
    800057cc:	f6f43c23          	sd	a5,-136(s0)
    800057d0:	000c9a63          	bnez	s9,800057e4 <__printf+0x4dc>
    800057d4:	1080006f          	j	800058dc <__printf+0x5d4>
    800057d8:	001c8c93          	addi	s9,s9,1
    800057dc:	00000097          	auipc	ra,0x0
    800057e0:	948080e7          	jalr	-1720(ra) # 80005124 <consputc>
    800057e4:	000cc503          	lbu	a0,0(s9)
    800057e8:	fe0518e3          	bnez	a0,800057d8 <__printf+0x4d0>
    800057ec:	f5dff06f          	j	80005748 <__printf+0x440>
    800057f0:	02500513          	li	a0,37
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	930080e7          	jalr	-1744(ra) # 80005124 <consputc>
    800057fc:	000c8513          	mv	a0,s9
    80005800:	00000097          	auipc	ra,0x0
    80005804:	924080e7          	jalr	-1756(ra) # 80005124 <consputc>
    80005808:	f41ff06f          	j	80005748 <__printf+0x440>
    8000580c:	02500513          	li	a0,37
    80005810:	00000097          	auipc	ra,0x0
    80005814:	914080e7          	jalr	-1772(ra) # 80005124 <consputc>
    80005818:	f31ff06f          	j	80005748 <__printf+0x440>
    8000581c:	00030513          	mv	a0,t1
    80005820:	00000097          	auipc	ra,0x0
    80005824:	7bc080e7          	jalr	1980(ra) # 80005fdc <acquire>
    80005828:	b4dff06f          	j	80005374 <__printf+0x6c>
    8000582c:	40c0053b          	negw	a0,a2
    80005830:	00a00713          	li	a4,10
    80005834:	02e576bb          	remuw	a3,a0,a4
    80005838:	00002d97          	auipc	s11,0x2
    8000583c:	c08d8d93          	addi	s11,s11,-1016 # 80007440 <digits>
    80005840:	ff700593          	li	a1,-9
    80005844:	02069693          	slli	a3,a3,0x20
    80005848:	0206d693          	srli	a3,a3,0x20
    8000584c:	00dd86b3          	add	a3,s11,a3
    80005850:	0006c683          	lbu	a3,0(a3)
    80005854:	02e557bb          	divuw	a5,a0,a4
    80005858:	f8d40023          	sb	a3,-128(s0)
    8000585c:	10b65e63          	bge	a2,a1,80005978 <__printf+0x670>
    80005860:	06300593          	li	a1,99
    80005864:	02e7f6bb          	remuw	a3,a5,a4
    80005868:	02069693          	slli	a3,a3,0x20
    8000586c:	0206d693          	srli	a3,a3,0x20
    80005870:	00dd86b3          	add	a3,s11,a3
    80005874:	0006c683          	lbu	a3,0(a3)
    80005878:	02e7d73b          	divuw	a4,a5,a4
    8000587c:	00200793          	li	a5,2
    80005880:	f8d400a3          	sb	a3,-127(s0)
    80005884:	bca5ece3          	bltu	a1,a0,8000545c <__printf+0x154>
    80005888:	ce5ff06f          	j	8000556c <__printf+0x264>
    8000588c:	40e007bb          	negw	a5,a4
    80005890:	00002d97          	auipc	s11,0x2
    80005894:	bb0d8d93          	addi	s11,s11,-1104 # 80007440 <digits>
    80005898:	00f7f693          	andi	a3,a5,15
    8000589c:	00dd86b3          	add	a3,s11,a3
    800058a0:	0006c583          	lbu	a1,0(a3)
    800058a4:	ff100613          	li	a2,-15
    800058a8:	0047d69b          	srliw	a3,a5,0x4
    800058ac:	f8b40023          	sb	a1,-128(s0)
    800058b0:	0047d59b          	srliw	a1,a5,0x4
    800058b4:	0ac75e63          	bge	a4,a2,80005970 <__printf+0x668>
    800058b8:	00f6f693          	andi	a3,a3,15
    800058bc:	00dd86b3          	add	a3,s11,a3
    800058c0:	0006c603          	lbu	a2,0(a3)
    800058c4:	00f00693          	li	a3,15
    800058c8:	0087d79b          	srliw	a5,a5,0x8
    800058cc:	f8c400a3          	sb	a2,-127(s0)
    800058d0:	d8b6e4e3          	bltu	a3,a1,80005658 <__printf+0x350>
    800058d4:	00200793          	li	a5,2
    800058d8:	e2dff06f          	j	80005704 <__printf+0x3fc>
    800058dc:	00002c97          	auipc	s9,0x2
    800058e0:	b44c8c93          	addi	s9,s9,-1212 # 80007420 <_ZL6digits+0x160>
    800058e4:	02800513          	li	a0,40
    800058e8:	ef1ff06f          	j	800057d8 <__printf+0x4d0>
    800058ec:	00700793          	li	a5,7
    800058f0:	00600c93          	li	s9,6
    800058f4:	e0dff06f          	j	80005700 <__printf+0x3f8>
    800058f8:	00700793          	li	a5,7
    800058fc:	00600c93          	li	s9,6
    80005900:	c69ff06f          	j	80005568 <__printf+0x260>
    80005904:	00300793          	li	a5,3
    80005908:	00200c93          	li	s9,2
    8000590c:	c5dff06f          	j	80005568 <__printf+0x260>
    80005910:	00300793          	li	a5,3
    80005914:	00200c93          	li	s9,2
    80005918:	de9ff06f          	j	80005700 <__printf+0x3f8>
    8000591c:	00400793          	li	a5,4
    80005920:	00300c93          	li	s9,3
    80005924:	dddff06f          	j	80005700 <__printf+0x3f8>
    80005928:	00400793          	li	a5,4
    8000592c:	00300c93          	li	s9,3
    80005930:	c39ff06f          	j	80005568 <__printf+0x260>
    80005934:	00500793          	li	a5,5
    80005938:	00400c93          	li	s9,4
    8000593c:	c2dff06f          	j	80005568 <__printf+0x260>
    80005940:	00500793          	li	a5,5
    80005944:	00400c93          	li	s9,4
    80005948:	db9ff06f          	j	80005700 <__printf+0x3f8>
    8000594c:	00600793          	li	a5,6
    80005950:	00500c93          	li	s9,5
    80005954:	dadff06f          	j	80005700 <__printf+0x3f8>
    80005958:	00600793          	li	a5,6
    8000595c:	00500c93          	li	s9,5
    80005960:	c09ff06f          	j	80005568 <__printf+0x260>
    80005964:	00800793          	li	a5,8
    80005968:	00700c93          	li	s9,7
    8000596c:	bfdff06f          	j	80005568 <__printf+0x260>
    80005970:	00100793          	li	a5,1
    80005974:	d91ff06f          	j	80005704 <__printf+0x3fc>
    80005978:	00100793          	li	a5,1
    8000597c:	bf1ff06f          	j	8000556c <__printf+0x264>
    80005980:	00900793          	li	a5,9
    80005984:	00800c93          	li	s9,8
    80005988:	be1ff06f          	j	80005568 <__printf+0x260>
    8000598c:	00002517          	auipc	a0,0x2
    80005990:	a9c50513          	addi	a0,a0,-1380 # 80007428 <_ZL6digits+0x168>
    80005994:	00000097          	auipc	ra,0x0
    80005998:	918080e7          	jalr	-1768(ra) # 800052ac <panic>

000000008000599c <printfinit>:
    8000599c:	fe010113          	addi	sp,sp,-32
    800059a0:	00813823          	sd	s0,16(sp)
    800059a4:	00913423          	sd	s1,8(sp)
    800059a8:	00113c23          	sd	ra,24(sp)
    800059ac:	02010413          	addi	s0,sp,32
    800059b0:	00004497          	auipc	s1,0x4
    800059b4:	28048493          	addi	s1,s1,640 # 80009c30 <pr>
    800059b8:	00048513          	mv	a0,s1
    800059bc:	00002597          	auipc	a1,0x2
    800059c0:	a7c58593          	addi	a1,a1,-1412 # 80007438 <_ZL6digits+0x178>
    800059c4:	00000097          	auipc	ra,0x0
    800059c8:	5f4080e7          	jalr	1524(ra) # 80005fb8 <initlock>
    800059cc:	01813083          	ld	ra,24(sp)
    800059d0:	01013403          	ld	s0,16(sp)
    800059d4:	0004ac23          	sw	zero,24(s1)
    800059d8:	00813483          	ld	s1,8(sp)
    800059dc:	02010113          	addi	sp,sp,32
    800059e0:	00008067          	ret

00000000800059e4 <uartinit>:
    800059e4:	ff010113          	addi	sp,sp,-16
    800059e8:	00813423          	sd	s0,8(sp)
    800059ec:	01010413          	addi	s0,sp,16
    800059f0:	100007b7          	lui	a5,0x10000
    800059f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800059f8:	f8000713          	li	a4,-128
    800059fc:	00e781a3          	sb	a4,3(a5)
    80005a00:	00300713          	li	a4,3
    80005a04:	00e78023          	sb	a4,0(a5)
    80005a08:	000780a3          	sb	zero,1(a5)
    80005a0c:	00e781a3          	sb	a4,3(a5)
    80005a10:	00700693          	li	a3,7
    80005a14:	00d78123          	sb	a3,2(a5)
    80005a18:	00e780a3          	sb	a4,1(a5)
    80005a1c:	00813403          	ld	s0,8(sp)
    80005a20:	01010113          	addi	sp,sp,16
    80005a24:	00008067          	ret

0000000080005a28 <uartputc>:
    80005a28:	00003797          	auipc	a5,0x3
    80005a2c:	f407a783          	lw	a5,-192(a5) # 80008968 <panicked>
    80005a30:	00078463          	beqz	a5,80005a38 <uartputc+0x10>
    80005a34:	0000006f          	j	80005a34 <uartputc+0xc>
    80005a38:	fd010113          	addi	sp,sp,-48
    80005a3c:	02813023          	sd	s0,32(sp)
    80005a40:	00913c23          	sd	s1,24(sp)
    80005a44:	01213823          	sd	s2,16(sp)
    80005a48:	01313423          	sd	s3,8(sp)
    80005a4c:	02113423          	sd	ra,40(sp)
    80005a50:	03010413          	addi	s0,sp,48
    80005a54:	00003917          	auipc	s2,0x3
    80005a58:	f1c90913          	addi	s2,s2,-228 # 80008970 <uart_tx_r>
    80005a5c:	00093783          	ld	a5,0(s2)
    80005a60:	00003497          	auipc	s1,0x3
    80005a64:	f1848493          	addi	s1,s1,-232 # 80008978 <uart_tx_w>
    80005a68:	0004b703          	ld	a4,0(s1)
    80005a6c:	02078693          	addi	a3,a5,32
    80005a70:	00050993          	mv	s3,a0
    80005a74:	02e69c63          	bne	a3,a4,80005aac <uartputc+0x84>
    80005a78:	00001097          	auipc	ra,0x1
    80005a7c:	834080e7          	jalr	-1996(ra) # 800062ac <push_on>
    80005a80:	00093783          	ld	a5,0(s2)
    80005a84:	0004b703          	ld	a4,0(s1)
    80005a88:	02078793          	addi	a5,a5,32
    80005a8c:	00e79463          	bne	a5,a4,80005a94 <uartputc+0x6c>
    80005a90:	0000006f          	j	80005a90 <uartputc+0x68>
    80005a94:	00001097          	auipc	ra,0x1
    80005a98:	88c080e7          	jalr	-1908(ra) # 80006320 <pop_on>
    80005a9c:	00093783          	ld	a5,0(s2)
    80005aa0:	0004b703          	ld	a4,0(s1)
    80005aa4:	02078693          	addi	a3,a5,32
    80005aa8:	fce688e3          	beq	a3,a4,80005a78 <uartputc+0x50>
    80005aac:	01f77693          	andi	a3,a4,31
    80005ab0:	00004597          	auipc	a1,0x4
    80005ab4:	1a058593          	addi	a1,a1,416 # 80009c50 <uart_tx_buf>
    80005ab8:	00d586b3          	add	a3,a1,a3
    80005abc:	00170713          	addi	a4,a4,1
    80005ac0:	01368023          	sb	s3,0(a3)
    80005ac4:	00e4b023          	sd	a4,0(s1)
    80005ac8:	10000637          	lui	a2,0x10000
    80005acc:	02f71063          	bne	a4,a5,80005aec <uartputc+0xc4>
    80005ad0:	0340006f          	j	80005b04 <uartputc+0xdc>
    80005ad4:	00074703          	lbu	a4,0(a4)
    80005ad8:	00f93023          	sd	a5,0(s2)
    80005adc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005ae0:	00093783          	ld	a5,0(s2)
    80005ae4:	0004b703          	ld	a4,0(s1)
    80005ae8:	00f70e63          	beq	a4,a5,80005b04 <uartputc+0xdc>
    80005aec:	00564683          	lbu	a3,5(a2)
    80005af0:	01f7f713          	andi	a4,a5,31
    80005af4:	00e58733          	add	a4,a1,a4
    80005af8:	0206f693          	andi	a3,a3,32
    80005afc:	00178793          	addi	a5,a5,1
    80005b00:	fc069ae3          	bnez	a3,80005ad4 <uartputc+0xac>
    80005b04:	02813083          	ld	ra,40(sp)
    80005b08:	02013403          	ld	s0,32(sp)
    80005b0c:	01813483          	ld	s1,24(sp)
    80005b10:	01013903          	ld	s2,16(sp)
    80005b14:	00813983          	ld	s3,8(sp)
    80005b18:	03010113          	addi	sp,sp,48
    80005b1c:	00008067          	ret

0000000080005b20 <uartputc_sync>:
    80005b20:	ff010113          	addi	sp,sp,-16
    80005b24:	00813423          	sd	s0,8(sp)
    80005b28:	01010413          	addi	s0,sp,16
    80005b2c:	00003717          	auipc	a4,0x3
    80005b30:	e3c72703          	lw	a4,-452(a4) # 80008968 <panicked>
    80005b34:	02071663          	bnez	a4,80005b60 <uartputc_sync+0x40>
    80005b38:	00050793          	mv	a5,a0
    80005b3c:	100006b7          	lui	a3,0x10000
    80005b40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005b44:	02077713          	andi	a4,a4,32
    80005b48:	fe070ce3          	beqz	a4,80005b40 <uartputc_sync+0x20>
    80005b4c:	0ff7f793          	andi	a5,a5,255
    80005b50:	00f68023          	sb	a5,0(a3)
    80005b54:	00813403          	ld	s0,8(sp)
    80005b58:	01010113          	addi	sp,sp,16
    80005b5c:	00008067          	ret
    80005b60:	0000006f          	j	80005b60 <uartputc_sync+0x40>

0000000080005b64 <uartstart>:
    80005b64:	ff010113          	addi	sp,sp,-16
    80005b68:	00813423          	sd	s0,8(sp)
    80005b6c:	01010413          	addi	s0,sp,16
    80005b70:	00003617          	auipc	a2,0x3
    80005b74:	e0060613          	addi	a2,a2,-512 # 80008970 <uart_tx_r>
    80005b78:	00003517          	auipc	a0,0x3
    80005b7c:	e0050513          	addi	a0,a0,-512 # 80008978 <uart_tx_w>
    80005b80:	00063783          	ld	a5,0(a2)
    80005b84:	00053703          	ld	a4,0(a0)
    80005b88:	04f70263          	beq	a4,a5,80005bcc <uartstart+0x68>
    80005b8c:	100005b7          	lui	a1,0x10000
    80005b90:	00004817          	auipc	a6,0x4
    80005b94:	0c080813          	addi	a6,a6,192 # 80009c50 <uart_tx_buf>
    80005b98:	01c0006f          	j	80005bb4 <uartstart+0x50>
    80005b9c:	0006c703          	lbu	a4,0(a3)
    80005ba0:	00f63023          	sd	a5,0(a2)
    80005ba4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005ba8:	00063783          	ld	a5,0(a2)
    80005bac:	00053703          	ld	a4,0(a0)
    80005bb0:	00f70e63          	beq	a4,a5,80005bcc <uartstart+0x68>
    80005bb4:	01f7f713          	andi	a4,a5,31
    80005bb8:	00e806b3          	add	a3,a6,a4
    80005bbc:	0055c703          	lbu	a4,5(a1)
    80005bc0:	00178793          	addi	a5,a5,1
    80005bc4:	02077713          	andi	a4,a4,32
    80005bc8:	fc071ae3          	bnez	a4,80005b9c <uartstart+0x38>
    80005bcc:	00813403          	ld	s0,8(sp)
    80005bd0:	01010113          	addi	sp,sp,16
    80005bd4:	00008067          	ret

0000000080005bd8 <uartgetc>:
    80005bd8:	ff010113          	addi	sp,sp,-16
    80005bdc:	00813423          	sd	s0,8(sp)
    80005be0:	01010413          	addi	s0,sp,16
    80005be4:	10000737          	lui	a4,0x10000
    80005be8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005bec:	0017f793          	andi	a5,a5,1
    80005bf0:	00078c63          	beqz	a5,80005c08 <uartgetc+0x30>
    80005bf4:	00074503          	lbu	a0,0(a4)
    80005bf8:	0ff57513          	andi	a0,a0,255
    80005bfc:	00813403          	ld	s0,8(sp)
    80005c00:	01010113          	addi	sp,sp,16
    80005c04:	00008067          	ret
    80005c08:	fff00513          	li	a0,-1
    80005c0c:	ff1ff06f          	j	80005bfc <uartgetc+0x24>

0000000080005c10 <uartintr>:
    80005c10:	100007b7          	lui	a5,0x10000
    80005c14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005c18:	0017f793          	andi	a5,a5,1
    80005c1c:	0a078463          	beqz	a5,80005cc4 <uartintr+0xb4>
    80005c20:	fe010113          	addi	sp,sp,-32
    80005c24:	00813823          	sd	s0,16(sp)
    80005c28:	00913423          	sd	s1,8(sp)
    80005c2c:	00113c23          	sd	ra,24(sp)
    80005c30:	02010413          	addi	s0,sp,32
    80005c34:	100004b7          	lui	s1,0x10000
    80005c38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005c3c:	0ff57513          	andi	a0,a0,255
    80005c40:	fffff097          	auipc	ra,0xfffff
    80005c44:	534080e7          	jalr	1332(ra) # 80005174 <consoleintr>
    80005c48:	0054c783          	lbu	a5,5(s1)
    80005c4c:	0017f793          	andi	a5,a5,1
    80005c50:	fe0794e3          	bnez	a5,80005c38 <uartintr+0x28>
    80005c54:	00003617          	auipc	a2,0x3
    80005c58:	d1c60613          	addi	a2,a2,-740 # 80008970 <uart_tx_r>
    80005c5c:	00003517          	auipc	a0,0x3
    80005c60:	d1c50513          	addi	a0,a0,-740 # 80008978 <uart_tx_w>
    80005c64:	00063783          	ld	a5,0(a2)
    80005c68:	00053703          	ld	a4,0(a0)
    80005c6c:	04f70263          	beq	a4,a5,80005cb0 <uartintr+0xa0>
    80005c70:	100005b7          	lui	a1,0x10000
    80005c74:	00004817          	auipc	a6,0x4
    80005c78:	fdc80813          	addi	a6,a6,-36 # 80009c50 <uart_tx_buf>
    80005c7c:	01c0006f          	j	80005c98 <uartintr+0x88>
    80005c80:	0006c703          	lbu	a4,0(a3)
    80005c84:	00f63023          	sd	a5,0(a2)
    80005c88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005c8c:	00063783          	ld	a5,0(a2)
    80005c90:	00053703          	ld	a4,0(a0)
    80005c94:	00f70e63          	beq	a4,a5,80005cb0 <uartintr+0xa0>
    80005c98:	01f7f713          	andi	a4,a5,31
    80005c9c:	00e806b3          	add	a3,a6,a4
    80005ca0:	0055c703          	lbu	a4,5(a1)
    80005ca4:	00178793          	addi	a5,a5,1
    80005ca8:	02077713          	andi	a4,a4,32
    80005cac:	fc071ae3          	bnez	a4,80005c80 <uartintr+0x70>
    80005cb0:	01813083          	ld	ra,24(sp)
    80005cb4:	01013403          	ld	s0,16(sp)
    80005cb8:	00813483          	ld	s1,8(sp)
    80005cbc:	02010113          	addi	sp,sp,32
    80005cc0:	00008067          	ret
    80005cc4:	00003617          	auipc	a2,0x3
    80005cc8:	cac60613          	addi	a2,a2,-852 # 80008970 <uart_tx_r>
    80005ccc:	00003517          	auipc	a0,0x3
    80005cd0:	cac50513          	addi	a0,a0,-852 # 80008978 <uart_tx_w>
    80005cd4:	00063783          	ld	a5,0(a2)
    80005cd8:	00053703          	ld	a4,0(a0)
    80005cdc:	04f70263          	beq	a4,a5,80005d20 <uartintr+0x110>
    80005ce0:	100005b7          	lui	a1,0x10000
    80005ce4:	00004817          	auipc	a6,0x4
    80005ce8:	f6c80813          	addi	a6,a6,-148 # 80009c50 <uart_tx_buf>
    80005cec:	01c0006f          	j	80005d08 <uartintr+0xf8>
    80005cf0:	0006c703          	lbu	a4,0(a3)
    80005cf4:	00f63023          	sd	a5,0(a2)
    80005cf8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005cfc:	00063783          	ld	a5,0(a2)
    80005d00:	00053703          	ld	a4,0(a0)
    80005d04:	02f70063          	beq	a4,a5,80005d24 <uartintr+0x114>
    80005d08:	01f7f713          	andi	a4,a5,31
    80005d0c:	00e806b3          	add	a3,a6,a4
    80005d10:	0055c703          	lbu	a4,5(a1)
    80005d14:	00178793          	addi	a5,a5,1
    80005d18:	02077713          	andi	a4,a4,32
    80005d1c:	fc071ae3          	bnez	a4,80005cf0 <uartintr+0xe0>
    80005d20:	00008067          	ret
    80005d24:	00008067          	ret

0000000080005d28 <kinit>:
    80005d28:	fc010113          	addi	sp,sp,-64
    80005d2c:	02913423          	sd	s1,40(sp)
    80005d30:	fffff7b7          	lui	a5,0xfffff
    80005d34:	00005497          	auipc	s1,0x5
    80005d38:	f3b48493          	addi	s1,s1,-197 # 8000ac6f <end+0xfff>
    80005d3c:	02813823          	sd	s0,48(sp)
    80005d40:	01313c23          	sd	s3,24(sp)
    80005d44:	00f4f4b3          	and	s1,s1,a5
    80005d48:	02113c23          	sd	ra,56(sp)
    80005d4c:	03213023          	sd	s2,32(sp)
    80005d50:	01413823          	sd	s4,16(sp)
    80005d54:	01513423          	sd	s5,8(sp)
    80005d58:	04010413          	addi	s0,sp,64
    80005d5c:	000017b7          	lui	a5,0x1
    80005d60:	01100993          	li	s3,17
    80005d64:	00f487b3          	add	a5,s1,a5
    80005d68:	01b99993          	slli	s3,s3,0x1b
    80005d6c:	06f9e063          	bltu	s3,a5,80005dcc <kinit+0xa4>
    80005d70:	00004a97          	auipc	s5,0x4
    80005d74:	f00a8a93          	addi	s5,s5,-256 # 80009c70 <end>
    80005d78:	0754ec63          	bltu	s1,s5,80005df0 <kinit+0xc8>
    80005d7c:	0734fa63          	bgeu	s1,s3,80005df0 <kinit+0xc8>
    80005d80:	00088a37          	lui	s4,0x88
    80005d84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005d88:	00003917          	auipc	s2,0x3
    80005d8c:	bf890913          	addi	s2,s2,-1032 # 80008980 <kmem>
    80005d90:	00ca1a13          	slli	s4,s4,0xc
    80005d94:	0140006f          	j	80005da8 <kinit+0x80>
    80005d98:	000017b7          	lui	a5,0x1
    80005d9c:	00f484b3          	add	s1,s1,a5
    80005da0:	0554e863          	bltu	s1,s5,80005df0 <kinit+0xc8>
    80005da4:	0534f663          	bgeu	s1,s3,80005df0 <kinit+0xc8>
    80005da8:	00001637          	lui	a2,0x1
    80005dac:	00100593          	li	a1,1
    80005db0:	00048513          	mv	a0,s1
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	5e4080e7          	jalr	1508(ra) # 80006398 <__memset>
    80005dbc:	00093783          	ld	a5,0(s2)
    80005dc0:	00f4b023          	sd	a5,0(s1)
    80005dc4:	00993023          	sd	s1,0(s2)
    80005dc8:	fd4498e3          	bne	s1,s4,80005d98 <kinit+0x70>
    80005dcc:	03813083          	ld	ra,56(sp)
    80005dd0:	03013403          	ld	s0,48(sp)
    80005dd4:	02813483          	ld	s1,40(sp)
    80005dd8:	02013903          	ld	s2,32(sp)
    80005ddc:	01813983          	ld	s3,24(sp)
    80005de0:	01013a03          	ld	s4,16(sp)
    80005de4:	00813a83          	ld	s5,8(sp)
    80005de8:	04010113          	addi	sp,sp,64
    80005dec:	00008067          	ret
    80005df0:	00001517          	auipc	a0,0x1
    80005df4:	66850513          	addi	a0,a0,1640 # 80007458 <digits+0x18>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	4b4080e7          	jalr	1204(ra) # 800052ac <panic>

0000000080005e00 <freerange>:
    80005e00:	fc010113          	addi	sp,sp,-64
    80005e04:	000017b7          	lui	a5,0x1
    80005e08:	02913423          	sd	s1,40(sp)
    80005e0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005e10:	009504b3          	add	s1,a0,s1
    80005e14:	fffff537          	lui	a0,0xfffff
    80005e18:	02813823          	sd	s0,48(sp)
    80005e1c:	02113c23          	sd	ra,56(sp)
    80005e20:	03213023          	sd	s2,32(sp)
    80005e24:	01313c23          	sd	s3,24(sp)
    80005e28:	01413823          	sd	s4,16(sp)
    80005e2c:	01513423          	sd	s5,8(sp)
    80005e30:	01613023          	sd	s6,0(sp)
    80005e34:	04010413          	addi	s0,sp,64
    80005e38:	00a4f4b3          	and	s1,s1,a0
    80005e3c:	00f487b3          	add	a5,s1,a5
    80005e40:	06f5e463          	bltu	a1,a5,80005ea8 <freerange+0xa8>
    80005e44:	00004a97          	auipc	s5,0x4
    80005e48:	e2ca8a93          	addi	s5,s5,-468 # 80009c70 <end>
    80005e4c:	0954e263          	bltu	s1,s5,80005ed0 <freerange+0xd0>
    80005e50:	01100993          	li	s3,17
    80005e54:	01b99993          	slli	s3,s3,0x1b
    80005e58:	0734fc63          	bgeu	s1,s3,80005ed0 <freerange+0xd0>
    80005e5c:	00058a13          	mv	s4,a1
    80005e60:	00003917          	auipc	s2,0x3
    80005e64:	b2090913          	addi	s2,s2,-1248 # 80008980 <kmem>
    80005e68:	00002b37          	lui	s6,0x2
    80005e6c:	0140006f          	j	80005e80 <freerange+0x80>
    80005e70:	000017b7          	lui	a5,0x1
    80005e74:	00f484b3          	add	s1,s1,a5
    80005e78:	0554ec63          	bltu	s1,s5,80005ed0 <freerange+0xd0>
    80005e7c:	0534fa63          	bgeu	s1,s3,80005ed0 <freerange+0xd0>
    80005e80:	00001637          	lui	a2,0x1
    80005e84:	00100593          	li	a1,1
    80005e88:	00048513          	mv	a0,s1
    80005e8c:	00000097          	auipc	ra,0x0
    80005e90:	50c080e7          	jalr	1292(ra) # 80006398 <__memset>
    80005e94:	00093703          	ld	a4,0(s2)
    80005e98:	016487b3          	add	a5,s1,s6
    80005e9c:	00e4b023          	sd	a4,0(s1)
    80005ea0:	00993023          	sd	s1,0(s2)
    80005ea4:	fcfa76e3          	bgeu	s4,a5,80005e70 <freerange+0x70>
    80005ea8:	03813083          	ld	ra,56(sp)
    80005eac:	03013403          	ld	s0,48(sp)
    80005eb0:	02813483          	ld	s1,40(sp)
    80005eb4:	02013903          	ld	s2,32(sp)
    80005eb8:	01813983          	ld	s3,24(sp)
    80005ebc:	01013a03          	ld	s4,16(sp)
    80005ec0:	00813a83          	ld	s5,8(sp)
    80005ec4:	00013b03          	ld	s6,0(sp)
    80005ec8:	04010113          	addi	sp,sp,64
    80005ecc:	00008067          	ret
    80005ed0:	00001517          	auipc	a0,0x1
    80005ed4:	58850513          	addi	a0,a0,1416 # 80007458 <digits+0x18>
    80005ed8:	fffff097          	auipc	ra,0xfffff
    80005edc:	3d4080e7          	jalr	980(ra) # 800052ac <panic>

0000000080005ee0 <kfree>:
    80005ee0:	fe010113          	addi	sp,sp,-32
    80005ee4:	00813823          	sd	s0,16(sp)
    80005ee8:	00113c23          	sd	ra,24(sp)
    80005eec:	00913423          	sd	s1,8(sp)
    80005ef0:	02010413          	addi	s0,sp,32
    80005ef4:	03451793          	slli	a5,a0,0x34
    80005ef8:	04079c63          	bnez	a5,80005f50 <kfree+0x70>
    80005efc:	00004797          	auipc	a5,0x4
    80005f00:	d7478793          	addi	a5,a5,-652 # 80009c70 <end>
    80005f04:	00050493          	mv	s1,a0
    80005f08:	04f56463          	bltu	a0,a5,80005f50 <kfree+0x70>
    80005f0c:	01100793          	li	a5,17
    80005f10:	01b79793          	slli	a5,a5,0x1b
    80005f14:	02f57e63          	bgeu	a0,a5,80005f50 <kfree+0x70>
    80005f18:	00001637          	lui	a2,0x1
    80005f1c:	00100593          	li	a1,1
    80005f20:	00000097          	auipc	ra,0x0
    80005f24:	478080e7          	jalr	1144(ra) # 80006398 <__memset>
    80005f28:	00003797          	auipc	a5,0x3
    80005f2c:	a5878793          	addi	a5,a5,-1448 # 80008980 <kmem>
    80005f30:	0007b703          	ld	a4,0(a5)
    80005f34:	01813083          	ld	ra,24(sp)
    80005f38:	01013403          	ld	s0,16(sp)
    80005f3c:	00e4b023          	sd	a4,0(s1)
    80005f40:	0097b023          	sd	s1,0(a5)
    80005f44:	00813483          	ld	s1,8(sp)
    80005f48:	02010113          	addi	sp,sp,32
    80005f4c:	00008067          	ret
    80005f50:	00001517          	auipc	a0,0x1
    80005f54:	50850513          	addi	a0,a0,1288 # 80007458 <digits+0x18>
    80005f58:	fffff097          	auipc	ra,0xfffff
    80005f5c:	354080e7          	jalr	852(ra) # 800052ac <panic>

0000000080005f60 <kalloc>:
    80005f60:	fe010113          	addi	sp,sp,-32
    80005f64:	00813823          	sd	s0,16(sp)
    80005f68:	00913423          	sd	s1,8(sp)
    80005f6c:	00113c23          	sd	ra,24(sp)
    80005f70:	02010413          	addi	s0,sp,32
    80005f74:	00003797          	auipc	a5,0x3
    80005f78:	a0c78793          	addi	a5,a5,-1524 # 80008980 <kmem>
    80005f7c:	0007b483          	ld	s1,0(a5)
    80005f80:	02048063          	beqz	s1,80005fa0 <kalloc+0x40>
    80005f84:	0004b703          	ld	a4,0(s1)
    80005f88:	00001637          	lui	a2,0x1
    80005f8c:	00500593          	li	a1,5
    80005f90:	00048513          	mv	a0,s1
    80005f94:	00e7b023          	sd	a4,0(a5)
    80005f98:	00000097          	auipc	ra,0x0
    80005f9c:	400080e7          	jalr	1024(ra) # 80006398 <__memset>
    80005fa0:	01813083          	ld	ra,24(sp)
    80005fa4:	01013403          	ld	s0,16(sp)
    80005fa8:	00048513          	mv	a0,s1
    80005fac:	00813483          	ld	s1,8(sp)
    80005fb0:	02010113          	addi	sp,sp,32
    80005fb4:	00008067          	ret

0000000080005fb8 <initlock>:
    80005fb8:	ff010113          	addi	sp,sp,-16
    80005fbc:	00813423          	sd	s0,8(sp)
    80005fc0:	01010413          	addi	s0,sp,16
    80005fc4:	00813403          	ld	s0,8(sp)
    80005fc8:	00b53423          	sd	a1,8(a0)
    80005fcc:	00052023          	sw	zero,0(a0)
    80005fd0:	00053823          	sd	zero,16(a0)
    80005fd4:	01010113          	addi	sp,sp,16
    80005fd8:	00008067          	ret

0000000080005fdc <acquire>:
    80005fdc:	fe010113          	addi	sp,sp,-32
    80005fe0:	00813823          	sd	s0,16(sp)
    80005fe4:	00913423          	sd	s1,8(sp)
    80005fe8:	00113c23          	sd	ra,24(sp)
    80005fec:	01213023          	sd	s2,0(sp)
    80005ff0:	02010413          	addi	s0,sp,32
    80005ff4:	00050493          	mv	s1,a0
    80005ff8:	10002973          	csrr	s2,sstatus
    80005ffc:	100027f3          	csrr	a5,sstatus
    80006000:	ffd7f793          	andi	a5,a5,-3
    80006004:	10079073          	csrw	sstatus,a5
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	8e4080e7          	jalr	-1820(ra) # 800048ec <mycpu>
    80006010:	07852783          	lw	a5,120(a0)
    80006014:	06078e63          	beqz	a5,80006090 <acquire+0xb4>
    80006018:	fffff097          	auipc	ra,0xfffff
    8000601c:	8d4080e7          	jalr	-1836(ra) # 800048ec <mycpu>
    80006020:	07852783          	lw	a5,120(a0)
    80006024:	0004a703          	lw	a4,0(s1)
    80006028:	0017879b          	addiw	a5,a5,1
    8000602c:	06f52c23          	sw	a5,120(a0)
    80006030:	04071063          	bnez	a4,80006070 <acquire+0x94>
    80006034:	00100713          	li	a4,1
    80006038:	00070793          	mv	a5,a4
    8000603c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006040:	0007879b          	sext.w	a5,a5
    80006044:	fe079ae3          	bnez	a5,80006038 <acquire+0x5c>
    80006048:	0ff0000f          	fence
    8000604c:	fffff097          	auipc	ra,0xfffff
    80006050:	8a0080e7          	jalr	-1888(ra) # 800048ec <mycpu>
    80006054:	01813083          	ld	ra,24(sp)
    80006058:	01013403          	ld	s0,16(sp)
    8000605c:	00a4b823          	sd	a0,16(s1)
    80006060:	00013903          	ld	s2,0(sp)
    80006064:	00813483          	ld	s1,8(sp)
    80006068:	02010113          	addi	sp,sp,32
    8000606c:	00008067          	ret
    80006070:	0104b903          	ld	s2,16(s1)
    80006074:	fffff097          	auipc	ra,0xfffff
    80006078:	878080e7          	jalr	-1928(ra) # 800048ec <mycpu>
    8000607c:	faa91ce3          	bne	s2,a0,80006034 <acquire+0x58>
    80006080:	00001517          	auipc	a0,0x1
    80006084:	3e050513          	addi	a0,a0,992 # 80007460 <digits+0x20>
    80006088:	fffff097          	auipc	ra,0xfffff
    8000608c:	224080e7          	jalr	548(ra) # 800052ac <panic>
    80006090:	00195913          	srli	s2,s2,0x1
    80006094:	fffff097          	auipc	ra,0xfffff
    80006098:	858080e7          	jalr	-1960(ra) # 800048ec <mycpu>
    8000609c:	00197913          	andi	s2,s2,1
    800060a0:	07252e23          	sw	s2,124(a0)
    800060a4:	f75ff06f          	j	80006018 <acquire+0x3c>

00000000800060a8 <release>:
    800060a8:	fe010113          	addi	sp,sp,-32
    800060ac:	00813823          	sd	s0,16(sp)
    800060b0:	00113c23          	sd	ra,24(sp)
    800060b4:	00913423          	sd	s1,8(sp)
    800060b8:	01213023          	sd	s2,0(sp)
    800060bc:	02010413          	addi	s0,sp,32
    800060c0:	00052783          	lw	a5,0(a0)
    800060c4:	00079a63          	bnez	a5,800060d8 <release+0x30>
    800060c8:	00001517          	auipc	a0,0x1
    800060cc:	3a050513          	addi	a0,a0,928 # 80007468 <digits+0x28>
    800060d0:	fffff097          	auipc	ra,0xfffff
    800060d4:	1dc080e7          	jalr	476(ra) # 800052ac <panic>
    800060d8:	01053903          	ld	s2,16(a0)
    800060dc:	00050493          	mv	s1,a0
    800060e0:	fffff097          	auipc	ra,0xfffff
    800060e4:	80c080e7          	jalr	-2036(ra) # 800048ec <mycpu>
    800060e8:	fea910e3          	bne	s2,a0,800060c8 <release+0x20>
    800060ec:	0004b823          	sd	zero,16(s1)
    800060f0:	0ff0000f          	fence
    800060f4:	0f50000f          	fence	iorw,ow
    800060f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800060fc:	ffffe097          	auipc	ra,0xffffe
    80006100:	7f0080e7          	jalr	2032(ra) # 800048ec <mycpu>
    80006104:	100027f3          	csrr	a5,sstatus
    80006108:	0027f793          	andi	a5,a5,2
    8000610c:	04079a63          	bnez	a5,80006160 <release+0xb8>
    80006110:	07852783          	lw	a5,120(a0)
    80006114:	02f05e63          	blez	a5,80006150 <release+0xa8>
    80006118:	fff7871b          	addiw	a4,a5,-1
    8000611c:	06e52c23          	sw	a4,120(a0)
    80006120:	00071c63          	bnez	a4,80006138 <release+0x90>
    80006124:	07c52783          	lw	a5,124(a0)
    80006128:	00078863          	beqz	a5,80006138 <release+0x90>
    8000612c:	100027f3          	csrr	a5,sstatus
    80006130:	0027e793          	ori	a5,a5,2
    80006134:	10079073          	csrw	sstatus,a5
    80006138:	01813083          	ld	ra,24(sp)
    8000613c:	01013403          	ld	s0,16(sp)
    80006140:	00813483          	ld	s1,8(sp)
    80006144:	00013903          	ld	s2,0(sp)
    80006148:	02010113          	addi	sp,sp,32
    8000614c:	00008067          	ret
    80006150:	00001517          	auipc	a0,0x1
    80006154:	33850513          	addi	a0,a0,824 # 80007488 <digits+0x48>
    80006158:	fffff097          	auipc	ra,0xfffff
    8000615c:	154080e7          	jalr	340(ra) # 800052ac <panic>
    80006160:	00001517          	auipc	a0,0x1
    80006164:	31050513          	addi	a0,a0,784 # 80007470 <digits+0x30>
    80006168:	fffff097          	auipc	ra,0xfffff
    8000616c:	144080e7          	jalr	324(ra) # 800052ac <panic>

0000000080006170 <holding>:
    80006170:	00052783          	lw	a5,0(a0)
    80006174:	00079663          	bnez	a5,80006180 <holding+0x10>
    80006178:	00000513          	li	a0,0
    8000617c:	00008067          	ret
    80006180:	fe010113          	addi	sp,sp,-32
    80006184:	00813823          	sd	s0,16(sp)
    80006188:	00913423          	sd	s1,8(sp)
    8000618c:	00113c23          	sd	ra,24(sp)
    80006190:	02010413          	addi	s0,sp,32
    80006194:	01053483          	ld	s1,16(a0)
    80006198:	ffffe097          	auipc	ra,0xffffe
    8000619c:	754080e7          	jalr	1876(ra) # 800048ec <mycpu>
    800061a0:	01813083          	ld	ra,24(sp)
    800061a4:	01013403          	ld	s0,16(sp)
    800061a8:	40a48533          	sub	a0,s1,a0
    800061ac:	00153513          	seqz	a0,a0
    800061b0:	00813483          	ld	s1,8(sp)
    800061b4:	02010113          	addi	sp,sp,32
    800061b8:	00008067          	ret

00000000800061bc <push_off>:
    800061bc:	fe010113          	addi	sp,sp,-32
    800061c0:	00813823          	sd	s0,16(sp)
    800061c4:	00113c23          	sd	ra,24(sp)
    800061c8:	00913423          	sd	s1,8(sp)
    800061cc:	02010413          	addi	s0,sp,32
    800061d0:	100024f3          	csrr	s1,sstatus
    800061d4:	100027f3          	csrr	a5,sstatus
    800061d8:	ffd7f793          	andi	a5,a5,-3
    800061dc:	10079073          	csrw	sstatus,a5
    800061e0:	ffffe097          	auipc	ra,0xffffe
    800061e4:	70c080e7          	jalr	1804(ra) # 800048ec <mycpu>
    800061e8:	07852783          	lw	a5,120(a0)
    800061ec:	02078663          	beqz	a5,80006218 <push_off+0x5c>
    800061f0:	ffffe097          	auipc	ra,0xffffe
    800061f4:	6fc080e7          	jalr	1788(ra) # 800048ec <mycpu>
    800061f8:	07852783          	lw	a5,120(a0)
    800061fc:	01813083          	ld	ra,24(sp)
    80006200:	01013403          	ld	s0,16(sp)
    80006204:	0017879b          	addiw	a5,a5,1
    80006208:	06f52c23          	sw	a5,120(a0)
    8000620c:	00813483          	ld	s1,8(sp)
    80006210:	02010113          	addi	sp,sp,32
    80006214:	00008067          	ret
    80006218:	0014d493          	srli	s1,s1,0x1
    8000621c:	ffffe097          	auipc	ra,0xffffe
    80006220:	6d0080e7          	jalr	1744(ra) # 800048ec <mycpu>
    80006224:	0014f493          	andi	s1,s1,1
    80006228:	06952e23          	sw	s1,124(a0)
    8000622c:	fc5ff06f          	j	800061f0 <push_off+0x34>

0000000080006230 <pop_off>:
    80006230:	ff010113          	addi	sp,sp,-16
    80006234:	00813023          	sd	s0,0(sp)
    80006238:	00113423          	sd	ra,8(sp)
    8000623c:	01010413          	addi	s0,sp,16
    80006240:	ffffe097          	auipc	ra,0xffffe
    80006244:	6ac080e7          	jalr	1708(ra) # 800048ec <mycpu>
    80006248:	100027f3          	csrr	a5,sstatus
    8000624c:	0027f793          	andi	a5,a5,2
    80006250:	04079663          	bnez	a5,8000629c <pop_off+0x6c>
    80006254:	07852783          	lw	a5,120(a0)
    80006258:	02f05a63          	blez	a5,8000628c <pop_off+0x5c>
    8000625c:	fff7871b          	addiw	a4,a5,-1
    80006260:	06e52c23          	sw	a4,120(a0)
    80006264:	00071c63          	bnez	a4,8000627c <pop_off+0x4c>
    80006268:	07c52783          	lw	a5,124(a0)
    8000626c:	00078863          	beqz	a5,8000627c <pop_off+0x4c>
    80006270:	100027f3          	csrr	a5,sstatus
    80006274:	0027e793          	ori	a5,a5,2
    80006278:	10079073          	csrw	sstatus,a5
    8000627c:	00813083          	ld	ra,8(sp)
    80006280:	00013403          	ld	s0,0(sp)
    80006284:	01010113          	addi	sp,sp,16
    80006288:	00008067          	ret
    8000628c:	00001517          	auipc	a0,0x1
    80006290:	1fc50513          	addi	a0,a0,508 # 80007488 <digits+0x48>
    80006294:	fffff097          	auipc	ra,0xfffff
    80006298:	018080e7          	jalr	24(ra) # 800052ac <panic>
    8000629c:	00001517          	auipc	a0,0x1
    800062a0:	1d450513          	addi	a0,a0,468 # 80007470 <digits+0x30>
    800062a4:	fffff097          	auipc	ra,0xfffff
    800062a8:	008080e7          	jalr	8(ra) # 800052ac <panic>

00000000800062ac <push_on>:
    800062ac:	fe010113          	addi	sp,sp,-32
    800062b0:	00813823          	sd	s0,16(sp)
    800062b4:	00113c23          	sd	ra,24(sp)
    800062b8:	00913423          	sd	s1,8(sp)
    800062bc:	02010413          	addi	s0,sp,32
    800062c0:	100024f3          	csrr	s1,sstatus
    800062c4:	100027f3          	csrr	a5,sstatus
    800062c8:	0027e793          	ori	a5,a5,2
    800062cc:	10079073          	csrw	sstatus,a5
    800062d0:	ffffe097          	auipc	ra,0xffffe
    800062d4:	61c080e7          	jalr	1564(ra) # 800048ec <mycpu>
    800062d8:	07852783          	lw	a5,120(a0)
    800062dc:	02078663          	beqz	a5,80006308 <push_on+0x5c>
    800062e0:	ffffe097          	auipc	ra,0xffffe
    800062e4:	60c080e7          	jalr	1548(ra) # 800048ec <mycpu>
    800062e8:	07852783          	lw	a5,120(a0)
    800062ec:	01813083          	ld	ra,24(sp)
    800062f0:	01013403          	ld	s0,16(sp)
    800062f4:	0017879b          	addiw	a5,a5,1
    800062f8:	06f52c23          	sw	a5,120(a0)
    800062fc:	00813483          	ld	s1,8(sp)
    80006300:	02010113          	addi	sp,sp,32
    80006304:	00008067          	ret
    80006308:	0014d493          	srli	s1,s1,0x1
    8000630c:	ffffe097          	auipc	ra,0xffffe
    80006310:	5e0080e7          	jalr	1504(ra) # 800048ec <mycpu>
    80006314:	0014f493          	andi	s1,s1,1
    80006318:	06952e23          	sw	s1,124(a0)
    8000631c:	fc5ff06f          	j	800062e0 <push_on+0x34>

0000000080006320 <pop_on>:
    80006320:	ff010113          	addi	sp,sp,-16
    80006324:	00813023          	sd	s0,0(sp)
    80006328:	00113423          	sd	ra,8(sp)
    8000632c:	01010413          	addi	s0,sp,16
    80006330:	ffffe097          	auipc	ra,0xffffe
    80006334:	5bc080e7          	jalr	1468(ra) # 800048ec <mycpu>
    80006338:	100027f3          	csrr	a5,sstatus
    8000633c:	0027f793          	andi	a5,a5,2
    80006340:	04078463          	beqz	a5,80006388 <pop_on+0x68>
    80006344:	07852783          	lw	a5,120(a0)
    80006348:	02f05863          	blez	a5,80006378 <pop_on+0x58>
    8000634c:	fff7879b          	addiw	a5,a5,-1
    80006350:	06f52c23          	sw	a5,120(a0)
    80006354:	07853783          	ld	a5,120(a0)
    80006358:	00079863          	bnez	a5,80006368 <pop_on+0x48>
    8000635c:	100027f3          	csrr	a5,sstatus
    80006360:	ffd7f793          	andi	a5,a5,-3
    80006364:	10079073          	csrw	sstatus,a5
    80006368:	00813083          	ld	ra,8(sp)
    8000636c:	00013403          	ld	s0,0(sp)
    80006370:	01010113          	addi	sp,sp,16
    80006374:	00008067          	ret
    80006378:	00001517          	auipc	a0,0x1
    8000637c:	13850513          	addi	a0,a0,312 # 800074b0 <digits+0x70>
    80006380:	fffff097          	auipc	ra,0xfffff
    80006384:	f2c080e7          	jalr	-212(ra) # 800052ac <panic>
    80006388:	00001517          	auipc	a0,0x1
    8000638c:	10850513          	addi	a0,a0,264 # 80007490 <digits+0x50>
    80006390:	fffff097          	auipc	ra,0xfffff
    80006394:	f1c080e7          	jalr	-228(ra) # 800052ac <panic>

0000000080006398 <__memset>:
    80006398:	ff010113          	addi	sp,sp,-16
    8000639c:	00813423          	sd	s0,8(sp)
    800063a0:	01010413          	addi	s0,sp,16
    800063a4:	1a060e63          	beqz	a2,80006560 <__memset+0x1c8>
    800063a8:	40a007b3          	neg	a5,a0
    800063ac:	0077f793          	andi	a5,a5,7
    800063b0:	00778693          	addi	a3,a5,7
    800063b4:	00b00813          	li	a6,11
    800063b8:	0ff5f593          	andi	a1,a1,255
    800063bc:	fff6071b          	addiw	a4,a2,-1
    800063c0:	1b06e663          	bltu	a3,a6,8000656c <__memset+0x1d4>
    800063c4:	1cd76463          	bltu	a4,a3,8000658c <__memset+0x1f4>
    800063c8:	1a078e63          	beqz	a5,80006584 <__memset+0x1ec>
    800063cc:	00b50023          	sb	a1,0(a0)
    800063d0:	00100713          	li	a4,1
    800063d4:	1ae78463          	beq	a5,a4,8000657c <__memset+0x1e4>
    800063d8:	00b500a3          	sb	a1,1(a0)
    800063dc:	00200713          	li	a4,2
    800063e0:	1ae78a63          	beq	a5,a4,80006594 <__memset+0x1fc>
    800063e4:	00b50123          	sb	a1,2(a0)
    800063e8:	00300713          	li	a4,3
    800063ec:	18e78463          	beq	a5,a4,80006574 <__memset+0x1dc>
    800063f0:	00b501a3          	sb	a1,3(a0)
    800063f4:	00400713          	li	a4,4
    800063f8:	1ae78263          	beq	a5,a4,8000659c <__memset+0x204>
    800063fc:	00b50223          	sb	a1,4(a0)
    80006400:	00500713          	li	a4,5
    80006404:	1ae78063          	beq	a5,a4,800065a4 <__memset+0x20c>
    80006408:	00b502a3          	sb	a1,5(a0)
    8000640c:	00700713          	li	a4,7
    80006410:	18e79e63          	bne	a5,a4,800065ac <__memset+0x214>
    80006414:	00b50323          	sb	a1,6(a0)
    80006418:	00700e93          	li	t4,7
    8000641c:	00859713          	slli	a4,a1,0x8
    80006420:	00e5e733          	or	a4,a1,a4
    80006424:	01059e13          	slli	t3,a1,0x10
    80006428:	01c76e33          	or	t3,a4,t3
    8000642c:	01859313          	slli	t1,a1,0x18
    80006430:	006e6333          	or	t1,t3,t1
    80006434:	02059893          	slli	a7,a1,0x20
    80006438:	40f60e3b          	subw	t3,a2,a5
    8000643c:	011368b3          	or	a7,t1,a7
    80006440:	02859813          	slli	a6,a1,0x28
    80006444:	0108e833          	or	a6,a7,a6
    80006448:	03059693          	slli	a3,a1,0x30
    8000644c:	003e589b          	srliw	a7,t3,0x3
    80006450:	00d866b3          	or	a3,a6,a3
    80006454:	03859713          	slli	a4,a1,0x38
    80006458:	00389813          	slli	a6,a7,0x3
    8000645c:	00f507b3          	add	a5,a0,a5
    80006460:	00e6e733          	or	a4,a3,a4
    80006464:	000e089b          	sext.w	a7,t3
    80006468:	00f806b3          	add	a3,a6,a5
    8000646c:	00e7b023          	sd	a4,0(a5)
    80006470:	00878793          	addi	a5,a5,8
    80006474:	fed79ce3          	bne	a5,a3,8000646c <__memset+0xd4>
    80006478:	ff8e7793          	andi	a5,t3,-8
    8000647c:	0007871b          	sext.w	a4,a5
    80006480:	01d787bb          	addw	a5,a5,t4
    80006484:	0ce88e63          	beq	a7,a4,80006560 <__memset+0x1c8>
    80006488:	00f50733          	add	a4,a0,a5
    8000648c:	00b70023          	sb	a1,0(a4)
    80006490:	0017871b          	addiw	a4,a5,1
    80006494:	0cc77663          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    80006498:	00e50733          	add	a4,a0,a4
    8000649c:	00b70023          	sb	a1,0(a4)
    800064a0:	0027871b          	addiw	a4,a5,2
    800064a4:	0ac77e63          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    800064a8:	00e50733          	add	a4,a0,a4
    800064ac:	00b70023          	sb	a1,0(a4)
    800064b0:	0037871b          	addiw	a4,a5,3
    800064b4:	0ac77663          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    800064b8:	00e50733          	add	a4,a0,a4
    800064bc:	00b70023          	sb	a1,0(a4)
    800064c0:	0047871b          	addiw	a4,a5,4
    800064c4:	08c77e63          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    800064c8:	00e50733          	add	a4,a0,a4
    800064cc:	00b70023          	sb	a1,0(a4)
    800064d0:	0057871b          	addiw	a4,a5,5
    800064d4:	08c77663          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    800064d8:	00e50733          	add	a4,a0,a4
    800064dc:	00b70023          	sb	a1,0(a4)
    800064e0:	0067871b          	addiw	a4,a5,6
    800064e4:	06c77e63          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    800064e8:	00e50733          	add	a4,a0,a4
    800064ec:	00b70023          	sb	a1,0(a4)
    800064f0:	0077871b          	addiw	a4,a5,7
    800064f4:	06c77663          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    800064f8:	00e50733          	add	a4,a0,a4
    800064fc:	00b70023          	sb	a1,0(a4)
    80006500:	0087871b          	addiw	a4,a5,8
    80006504:	04c77e63          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    80006508:	00e50733          	add	a4,a0,a4
    8000650c:	00b70023          	sb	a1,0(a4)
    80006510:	0097871b          	addiw	a4,a5,9
    80006514:	04c77663          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    80006518:	00e50733          	add	a4,a0,a4
    8000651c:	00b70023          	sb	a1,0(a4)
    80006520:	00a7871b          	addiw	a4,a5,10
    80006524:	02c77e63          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    80006528:	00e50733          	add	a4,a0,a4
    8000652c:	00b70023          	sb	a1,0(a4)
    80006530:	00b7871b          	addiw	a4,a5,11
    80006534:	02c77663          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    80006538:	00e50733          	add	a4,a0,a4
    8000653c:	00b70023          	sb	a1,0(a4)
    80006540:	00c7871b          	addiw	a4,a5,12
    80006544:	00c77e63          	bgeu	a4,a2,80006560 <__memset+0x1c8>
    80006548:	00e50733          	add	a4,a0,a4
    8000654c:	00b70023          	sb	a1,0(a4)
    80006550:	00d7879b          	addiw	a5,a5,13
    80006554:	00c7f663          	bgeu	a5,a2,80006560 <__memset+0x1c8>
    80006558:	00f507b3          	add	a5,a0,a5
    8000655c:	00b78023          	sb	a1,0(a5)
    80006560:	00813403          	ld	s0,8(sp)
    80006564:	01010113          	addi	sp,sp,16
    80006568:	00008067          	ret
    8000656c:	00b00693          	li	a3,11
    80006570:	e55ff06f          	j	800063c4 <__memset+0x2c>
    80006574:	00300e93          	li	t4,3
    80006578:	ea5ff06f          	j	8000641c <__memset+0x84>
    8000657c:	00100e93          	li	t4,1
    80006580:	e9dff06f          	j	8000641c <__memset+0x84>
    80006584:	00000e93          	li	t4,0
    80006588:	e95ff06f          	j	8000641c <__memset+0x84>
    8000658c:	00000793          	li	a5,0
    80006590:	ef9ff06f          	j	80006488 <__memset+0xf0>
    80006594:	00200e93          	li	t4,2
    80006598:	e85ff06f          	j	8000641c <__memset+0x84>
    8000659c:	00400e93          	li	t4,4
    800065a0:	e7dff06f          	j	8000641c <__memset+0x84>
    800065a4:	00500e93          	li	t4,5
    800065a8:	e75ff06f          	j	8000641c <__memset+0x84>
    800065ac:	00600e93          	li	t4,6
    800065b0:	e6dff06f          	j	8000641c <__memset+0x84>

00000000800065b4 <__memmove>:
    800065b4:	ff010113          	addi	sp,sp,-16
    800065b8:	00813423          	sd	s0,8(sp)
    800065bc:	01010413          	addi	s0,sp,16
    800065c0:	0e060863          	beqz	a2,800066b0 <__memmove+0xfc>
    800065c4:	fff6069b          	addiw	a3,a2,-1
    800065c8:	0006881b          	sext.w	a6,a3
    800065cc:	0ea5e863          	bltu	a1,a0,800066bc <__memmove+0x108>
    800065d0:	00758713          	addi	a4,a1,7
    800065d4:	00a5e7b3          	or	a5,a1,a0
    800065d8:	40a70733          	sub	a4,a4,a0
    800065dc:	0077f793          	andi	a5,a5,7
    800065e0:	00f73713          	sltiu	a4,a4,15
    800065e4:	00174713          	xori	a4,a4,1
    800065e8:	0017b793          	seqz	a5,a5
    800065ec:	00e7f7b3          	and	a5,a5,a4
    800065f0:	10078863          	beqz	a5,80006700 <__memmove+0x14c>
    800065f4:	00900793          	li	a5,9
    800065f8:	1107f463          	bgeu	a5,a6,80006700 <__memmove+0x14c>
    800065fc:	0036581b          	srliw	a6,a2,0x3
    80006600:	fff8081b          	addiw	a6,a6,-1
    80006604:	02081813          	slli	a6,a6,0x20
    80006608:	01d85893          	srli	a7,a6,0x1d
    8000660c:	00858813          	addi	a6,a1,8
    80006610:	00058793          	mv	a5,a1
    80006614:	00050713          	mv	a4,a0
    80006618:	01088833          	add	a6,a7,a6
    8000661c:	0007b883          	ld	a7,0(a5)
    80006620:	00878793          	addi	a5,a5,8
    80006624:	00870713          	addi	a4,a4,8
    80006628:	ff173c23          	sd	a7,-8(a4)
    8000662c:	ff0798e3          	bne	a5,a6,8000661c <__memmove+0x68>
    80006630:	ff867713          	andi	a4,a2,-8
    80006634:	02071793          	slli	a5,a4,0x20
    80006638:	0207d793          	srli	a5,a5,0x20
    8000663c:	00f585b3          	add	a1,a1,a5
    80006640:	40e686bb          	subw	a3,a3,a4
    80006644:	00f507b3          	add	a5,a0,a5
    80006648:	06e60463          	beq	a2,a4,800066b0 <__memmove+0xfc>
    8000664c:	0005c703          	lbu	a4,0(a1)
    80006650:	00e78023          	sb	a4,0(a5)
    80006654:	04068e63          	beqz	a3,800066b0 <__memmove+0xfc>
    80006658:	0015c603          	lbu	a2,1(a1)
    8000665c:	00100713          	li	a4,1
    80006660:	00c780a3          	sb	a2,1(a5)
    80006664:	04e68663          	beq	a3,a4,800066b0 <__memmove+0xfc>
    80006668:	0025c603          	lbu	a2,2(a1)
    8000666c:	00200713          	li	a4,2
    80006670:	00c78123          	sb	a2,2(a5)
    80006674:	02e68e63          	beq	a3,a4,800066b0 <__memmove+0xfc>
    80006678:	0035c603          	lbu	a2,3(a1)
    8000667c:	00300713          	li	a4,3
    80006680:	00c781a3          	sb	a2,3(a5)
    80006684:	02e68663          	beq	a3,a4,800066b0 <__memmove+0xfc>
    80006688:	0045c603          	lbu	a2,4(a1)
    8000668c:	00400713          	li	a4,4
    80006690:	00c78223          	sb	a2,4(a5)
    80006694:	00e68e63          	beq	a3,a4,800066b0 <__memmove+0xfc>
    80006698:	0055c603          	lbu	a2,5(a1)
    8000669c:	00500713          	li	a4,5
    800066a0:	00c782a3          	sb	a2,5(a5)
    800066a4:	00e68663          	beq	a3,a4,800066b0 <__memmove+0xfc>
    800066a8:	0065c703          	lbu	a4,6(a1)
    800066ac:	00e78323          	sb	a4,6(a5)
    800066b0:	00813403          	ld	s0,8(sp)
    800066b4:	01010113          	addi	sp,sp,16
    800066b8:	00008067          	ret
    800066bc:	02061713          	slli	a4,a2,0x20
    800066c0:	02075713          	srli	a4,a4,0x20
    800066c4:	00e587b3          	add	a5,a1,a4
    800066c8:	f0f574e3          	bgeu	a0,a5,800065d0 <__memmove+0x1c>
    800066cc:	02069613          	slli	a2,a3,0x20
    800066d0:	02065613          	srli	a2,a2,0x20
    800066d4:	fff64613          	not	a2,a2
    800066d8:	00e50733          	add	a4,a0,a4
    800066dc:	00c78633          	add	a2,a5,a2
    800066e0:	fff7c683          	lbu	a3,-1(a5)
    800066e4:	fff78793          	addi	a5,a5,-1
    800066e8:	fff70713          	addi	a4,a4,-1
    800066ec:	00d70023          	sb	a3,0(a4)
    800066f0:	fec798e3          	bne	a5,a2,800066e0 <__memmove+0x12c>
    800066f4:	00813403          	ld	s0,8(sp)
    800066f8:	01010113          	addi	sp,sp,16
    800066fc:	00008067          	ret
    80006700:	02069713          	slli	a4,a3,0x20
    80006704:	02075713          	srli	a4,a4,0x20
    80006708:	00170713          	addi	a4,a4,1
    8000670c:	00e50733          	add	a4,a0,a4
    80006710:	00050793          	mv	a5,a0
    80006714:	0005c683          	lbu	a3,0(a1)
    80006718:	00178793          	addi	a5,a5,1
    8000671c:	00158593          	addi	a1,a1,1
    80006720:	fed78fa3          	sb	a3,-1(a5)
    80006724:	fee798e3          	bne	a5,a4,80006714 <__memmove+0x160>
    80006728:	f89ff06f          	j	800066b0 <__memmove+0xfc>

000000008000672c <__putc>:
    8000672c:	fe010113          	addi	sp,sp,-32
    80006730:	00813823          	sd	s0,16(sp)
    80006734:	00113c23          	sd	ra,24(sp)
    80006738:	02010413          	addi	s0,sp,32
    8000673c:	00050793          	mv	a5,a0
    80006740:	fef40593          	addi	a1,s0,-17
    80006744:	00100613          	li	a2,1
    80006748:	00000513          	li	a0,0
    8000674c:	fef407a3          	sb	a5,-17(s0)
    80006750:	fffff097          	auipc	ra,0xfffff
    80006754:	b3c080e7          	jalr	-1220(ra) # 8000528c <console_write>
    80006758:	01813083          	ld	ra,24(sp)
    8000675c:	01013403          	ld	s0,16(sp)
    80006760:	02010113          	addi	sp,sp,32
    80006764:	00008067          	ret

0000000080006768 <__getc>:
    80006768:	fe010113          	addi	sp,sp,-32
    8000676c:	00813823          	sd	s0,16(sp)
    80006770:	00113c23          	sd	ra,24(sp)
    80006774:	02010413          	addi	s0,sp,32
    80006778:	fe840593          	addi	a1,s0,-24
    8000677c:	00100613          	li	a2,1
    80006780:	00000513          	li	a0,0
    80006784:	fffff097          	auipc	ra,0xfffff
    80006788:	ae8080e7          	jalr	-1304(ra) # 8000526c <console_read>
    8000678c:	fe844503          	lbu	a0,-24(s0)
    80006790:	01813083          	ld	ra,24(sp)
    80006794:	01013403          	ld	s0,16(sp)
    80006798:	02010113          	addi	sp,sp,32
    8000679c:	00008067          	ret

00000000800067a0 <console_handler>:
    800067a0:	fe010113          	addi	sp,sp,-32
    800067a4:	00813823          	sd	s0,16(sp)
    800067a8:	00113c23          	sd	ra,24(sp)
    800067ac:	00913423          	sd	s1,8(sp)
    800067b0:	02010413          	addi	s0,sp,32
    800067b4:	14202773          	csrr	a4,scause
    800067b8:	100027f3          	csrr	a5,sstatus
    800067bc:	0027f793          	andi	a5,a5,2
    800067c0:	06079e63          	bnez	a5,8000683c <console_handler+0x9c>
    800067c4:	00074c63          	bltz	a4,800067dc <console_handler+0x3c>
    800067c8:	01813083          	ld	ra,24(sp)
    800067cc:	01013403          	ld	s0,16(sp)
    800067d0:	00813483          	ld	s1,8(sp)
    800067d4:	02010113          	addi	sp,sp,32
    800067d8:	00008067          	ret
    800067dc:	0ff77713          	andi	a4,a4,255
    800067e0:	00900793          	li	a5,9
    800067e4:	fef712e3          	bne	a4,a5,800067c8 <console_handler+0x28>
    800067e8:	ffffe097          	auipc	ra,0xffffe
    800067ec:	6dc080e7          	jalr	1756(ra) # 80004ec4 <plic_claim>
    800067f0:	00a00793          	li	a5,10
    800067f4:	00050493          	mv	s1,a0
    800067f8:	02f50c63          	beq	a0,a5,80006830 <console_handler+0x90>
    800067fc:	fc0506e3          	beqz	a0,800067c8 <console_handler+0x28>
    80006800:	00050593          	mv	a1,a0
    80006804:	00001517          	auipc	a0,0x1
    80006808:	bb450513          	addi	a0,a0,-1100 # 800073b8 <_ZL6digits+0xf8>
    8000680c:	fffff097          	auipc	ra,0xfffff
    80006810:	afc080e7          	jalr	-1284(ra) # 80005308 <__printf>
    80006814:	01013403          	ld	s0,16(sp)
    80006818:	01813083          	ld	ra,24(sp)
    8000681c:	00048513          	mv	a0,s1
    80006820:	00813483          	ld	s1,8(sp)
    80006824:	02010113          	addi	sp,sp,32
    80006828:	ffffe317          	auipc	t1,0xffffe
    8000682c:	6d430067          	jr	1748(t1) # 80004efc <plic_complete>
    80006830:	fffff097          	auipc	ra,0xfffff
    80006834:	3e0080e7          	jalr	992(ra) # 80005c10 <uartintr>
    80006838:	fddff06f          	j	80006814 <console_handler+0x74>
    8000683c:	00001517          	auipc	a0,0x1
    80006840:	c7c50513          	addi	a0,a0,-900 # 800074b8 <digits+0x78>
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	a68080e7          	jalr	-1432(ra) # 800052ac <panic>
	...
