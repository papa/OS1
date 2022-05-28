
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b4813103          	ld	sp,-1208(sp) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5c0060ef          	jal	ra,800065dc <start>

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
    #csrw sscratch, sp
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
    80001080:	385020ef          	jal	ra,80003c04 <_ZN5Riscv20handleSupervisorTrapEv>

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
}
    80001444:	0005051b          	sext.w	a0,a0
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <thread_start>:

int thread_start(void* p)
{
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001460:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001464:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001468:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000146c:	00050513          	mv	a0,a0
    return result;
}
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <thread_make_pcb>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80001480:	fd010113          	addi	sp,sp,-48
    80001484:	02113423          	sd	ra,40(sp)
    80001488:	02813023          	sd	s0,32(sp)
    8000148c:	00913c23          	sd	s1,24(sp)
    80001490:	01213823          	sd	s2,16(sp)
    80001494:	01313423          	sd	s3,8(sp)
    80001498:	03010413          	addi	s0,sp,48
    8000149c:	00050493          	mv	s1,a0
    800014a0:	00058913          	mv	s2,a1
    800014a4:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800014a8:	00001537          	lui	a0,0x1
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	d9c080e7          	jalr	-612(ra) # 80001248 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800014b4:	04050263          	beqz	a0,800014f8 <thread_make_pcb+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800014b8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800014bc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800014c0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800014c4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800014c8:	01400793          	li	a5,20
    800014cc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014d0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014d4:	00050513          	mv	a0,a0
    return result;
    800014d8:	0005051b          	sext.w	a0,a0
}
    800014dc:	02813083          	ld	ra,40(sp)
    800014e0:	02013403          	ld	s0,32(sp)
    800014e4:	01813483          	ld	s1,24(sp)
    800014e8:	01013903          	ld	s2,16(sp)
    800014ec:	00813983          	ld	s3,8(sp)
    800014f0:	03010113          	addi	sp,sp,48
    800014f4:	00008067          	ret
        return -1;
    800014f8:	fff00513          	li	a0,-1
    800014fc:	fe1ff06f          	j	800014dc <thread_make_pcb+0x5c>

0000000080001500 <getc>:

char getc()
{
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00813423          	sd	s0,8(sp)
    80001508:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000150c:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001510:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001514:	00050513          	mv	a0,a0
    return (char)result;
}
    80001518:	0ff57513          	andi	a0,a0,255
    8000151c:	00813403          	ld	s0,8(sp)
    80001520:	01010113          	addi	sp,sp,16
    80001524:	00008067          	ret

0000000080001528 <putc>:

void putc(char c)
{
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00813423          	sd	s0,8(sp)
    80001530:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001534:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001538:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000153c:	00000073          	ecall
    80001540:	00813403          	ld	s0,8(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_Z4idlePv>:

#include "../h/Tests.hpp"
#include "../lib/console.h"

void idle(void* args)
{
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00113423          	sd	ra,8(sp)
    80001554:	00813023          	sd	s0,0(sp)
    80001558:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    8000155c:	00008517          	auipc	a0,0x8
    80001560:	ac450513          	addi	a0,a0,-1340 # 80009020 <CONSOLE_STATUS+0x10>
    80001564:	00002097          	auipc	ra,0x2
    80001568:	568080e7          	jalr	1384(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	db8080e7          	jalr	-584(ra) # 80001324 <thread_dispatch>
    while(true)
    80001574:	fe9ff06f          	j	8000155c <_Z4idlePv+0x10>

0000000080001578 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    8000158c:	00008517          	auipc	a0,0x8
    80001590:	a9c50513          	addi	a0,a0,-1380 # 80009028 <CONSOLE_STATUS+0x18>
    80001594:	00002097          	auipc	ra,0x2
    80001598:	538080e7          	jalr	1336(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    8000159c:	00000493          	li	s1,0
    800015a0:	03c0006f          	j	800015dc <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	d80080e7          	jalr	-640(ra) # 80001324 <thread_dispatch>
        Riscv::printString("i : ");
    800015ac:	00008517          	auipc	a0,0x8
    800015b0:	a9450513          	addi	a0,a0,-1388 # 80009040 <CONSOLE_STATUS+0x30>
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	518080e7          	jalr	1304(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00002097          	auipc	ra,0x2
    800015c4:	57c080e7          	jalr	1404(ra) # 80003b3c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015c8:	00008517          	auipc	a0,0x8
    800015cc:	b3850513          	addi	a0,a0,-1224 # 80009100 <CONSOLE_STATUS+0xf0>
    800015d0:	00002097          	auipc	ra,0x2
    800015d4:	4fc080e7          	jalr	1276(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800015d8:	00148493          	addi	s1,s1,1
    800015dc:	000027b7          	lui	a5,0x2
    800015e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015e4:	0097ec63          	bltu	a5,s1,800015fc <_Z15thread1FunctionPv+0x84>
        if(i % 150 == 0 && i > 0)
    800015e8:	09600793          	li	a5,150
    800015ec:	02f4f7b3          	remu	a5,s1,a5
    800015f0:	fa079ee3          	bnez	a5,800015ac <_Z15thread1FunctionPv+0x34>
    800015f4:	fa048ce3          	beqz	s1,800015ac <_Z15thread1FunctionPv+0x34>
    800015f8:	fadff06f          	j	800015a4 <_Z15thread1FunctionPv+0x2c>
    }
}
    800015fc:	01813083          	ld	ra,24(sp)
    80001600:	01013403          	ld	s0,16(sp)
    80001604:	00813483          	ld	s1,8(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret

0000000080001610 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001610:	fe010113          	addi	sp,sp,-32
    80001614:	00113c23          	sd	ra,24(sp)
    80001618:	00813823          	sd	s0,16(sp)
    8000161c:	00913423          	sd	s1,8(sp)
    80001620:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001624:	00008517          	auipc	a0,0x8
    80001628:	a2450513          	addi	a0,a0,-1500 # 80009048 <CONSOLE_STATUS+0x38>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	4a0080e7          	jalr	1184(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    80001634:	00000493          	li	s1,0
    80001638:	03c0006f          	j	80001674 <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	ce8080e7          	jalr	-792(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    80001644:	00008517          	auipc	a0,0x8
    80001648:	a1c50513          	addi	a0,a0,-1508 # 80009060 <CONSOLE_STATUS+0x50>
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	480080e7          	jalr	1152(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001654:	00048513          	mv	a0,s1
    80001658:	00002097          	auipc	ra,0x2
    8000165c:	4e4080e7          	jalr	1252(ra) # 80003b3c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001660:	00008517          	auipc	a0,0x8
    80001664:	aa050513          	addi	a0,a0,-1376 # 80009100 <CONSOLE_STATUS+0xf0>
    80001668:	00002097          	auipc	ra,0x2
    8000166c:	464080e7          	jalr	1124(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001670:	00148493          	addi	s1,s1,1
    80001674:	000027b7          	lui	a5,0x2
    80001678:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000167c:	0097ec63          	bltu	a5,s1,80001694 <_Z15thread2FunctionPv+0x84>
        if(j % 50 == 0 && j > 0)
    80001680:	03200793          	li	a5,50
    80001684:	02f4f7b3          	remu	a5,s1,a5
    80001688:	fa079ee3          	bnez	a5,80001644 <_Z15thread2FunctionPv+0x34>
    8000168c:	fa048ce3          	beqz	s1,80001644 <_Z15thread2FunctionPv+0x34>
    80001690:	fadff06f          	j	8000163c <_Z15thread2FunctionPv+0x2c>
    }
}
    80001694:	01813083          	ld	ra,24(sp)
    80001698:	01013403          	ld	s0,16(sp)
    8000169c:	00813483          	ld	s1,8(sp)
    800016a0:	02010113          	addi	sp,sp,32
    800016a4:	00008067          	ret

00000000800016a8 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	00913423          	sd	s1,8(sp)
    800016b8:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    800016bc:	00000493          	li	s1,0
    800016c0:	000027b7          	lui	a5,0x2
    800016c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016c8:	0297c463          	blt	a5,s1,800016f0 <_ZN12TestPeriodic18periodicActivationEv+0x48>
    {
        Riscv::printString("i : ");
    800016cc:	00008517          	auipc	a0,0x8
    800016d0:	97450513          	addi	a0,a0,-1676 # 80009040 <CONSOLE_STATUS+0x30>
    800016d4:	00002097          	auipc	ra,0x2
    800016d8:	3f8080e7          	jalr	1016(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800016dc:	00048513          	mv	a0,s1
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	45c080e7          	jalr	1116(ra) # 80003b3c <_ZN5Riscv12printIntegerEm>
    for(int i = 0 ; i < 10000;i++)
    800016e8:	0014849b          	addiw	s1,s1,1
    800016ec:	fd5ff06f          	j	800016c0 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    800016f0:	01813083          	ld	ra,24(sp)
    800016f4:	01013403          	ld	s0,16(sp)
    800016f8:	00813483          	ld	s1,8(sp)
    800016fc:	02010113          	addi	sp,sp,32
    80001700:	00008067          	ret

0000000080001704 <_Z20thread2FunctionTest2Pv>:
{
    80001704:	fe010113          	addi	sp,sp,-32
    80001708:	00113c23          	sd	ra,24(sp)
    8000170c:	00813823          	sd	s0,16(sp)
    80001710:	00913423          	sd	s1,8(sp)
    80001714:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001718:	00008517          	auipc	a0,0x8
    8000171c:	93050513          	addi	a0,a0,-1744 # 80009048 <CONSOLE_STATUS+0x38>
    80001720:	00002097          	auipc	ra,0x2
    80001724:	3ac080e7          	jalr	940(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001728:	00000493          	li	s1,0
    8000172c:	0480006f          	j	80001774 <_Z20thread2FunctionTest2Pv+0x70>
            thread_exit();
    80001730:	00000097          	auipc	ra,0x0
    80001734:	c14080e7          	jalr	-1004(ra) # 80001344 <thread_exit>
    80001738:	0500006f          	j	80001788 <_Z20thread2FunctionTest2Pv+0x84>
            thread_dispatch();
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	be8080e7          	jalr	-1048(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    80001744:	00008517          	auipc	a0,0x8
    80001748:	91c50513          	addi	a0,a0,-1764 # 80009060 <CONSOLE_STATUS+0x50>
    8000174c:	00002097          	auipc	ra,0x2
    80001750:	380080e7          	jalr	896(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001754:	00048513          	mv	a0,s1
    80001758:	00002097          	auipc	ra,0x2
    8000175c:	3e4080e7          	jalr	996(ra) # 80003b3c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001760:	00008517          	auipc	a0,0x8
    80001764:	9a050513          	addi	a0,a0,-1632 # 80009100 <CONSOLE_STATUS+0xf0>
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	364080e7          	jalr	868(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001770:	00148493          	addi	s1,s1,1
    80001774:	000027b7          	lui	a5,0x2
    80001778:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000177c:	0297e063          	bltu	a5,s1,8000179c <_Z20thread2FunctionTest2Pv+0x98>
        if(j == 200)
    80001780:	0c800793          	li	a5,200
    80001784:	faf486e3          	beq	s1,a5,80001730 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    80001788:	03200793          	li	a5,50
    8000178c:	02f4f7b3          	remu	a5,s1,a5
    80001790:	fa079ae3          	bnez	a5,80001744 <_Z20thread2FunctionTest2Pv+0x40>
    80001794:	fa0488e3          	beqz	s1,80001744 <_Z20thread2FunctionTest2Pv+0x40>
    80001798:	fa5ff06f          	j	8000173c <_Z20thread2FunctionTest2Pv+0x38>
}
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	02010113          	addi	sp,sp,32
    800017ac:	00008067          	ret

00000000800017b0 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    800017b0:	0000a717          	auipc	a4,0xa
    800017b4:	40072703          	lw	a4,1024(a4) # 8000bbb0 <head>
    800017b8:	00a00793          	li	a5,10
    800017bc:	06f70c63          	beq	a4,a5,80001834 <_Z9consumerAPv+0x84>
{
    800017c0:	fe010113          	addi	sp,sp,-32
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	00813823          	sd	s0,16(sp)
    800017cc:	00913423          	sd	s1,8(sp)
    800017d0:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    800017d4:	0000a497          	auipc	s1,0xa
    800017d8:	3dc48493          	addi	s1,s1,988 # 8000bbb0 <head>
    800017dc:	0084b503          	ld	a0,8(s1)
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	bf0080e7          	jalr	-1040(ra) # 800013d0 <sem_wait>
        __putc(buffer[head++]);
    800017e8:	0004a783          	lw	a5,0(s1)
    800017ec:	0017871b          	addiw	a4,a5,1
    800017f0:	00e4a023          	sw	a4,0(s1)
    800017f4:	00f487b3          	add	a5,s1,a5
    800017f8:	0107c503          	lbu	a0,16(a5)
    800017fc:	00007097          	auipc	ra,0x7
    80001800:	ea0080e7          	jalr	-352(ra) # 8000869c <__putc>
        sem_signal(spaceAvailable);
    80001804:	0204b503          	ld	a0,32(s1)
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	bf4080e7          	jalr	-1036(ra) # 800013fc <sem_signal>
    while(head!=10)
    80001810:	0000a717          	auipc	a4,0xa
    80001814:	3a072703          	lw	a4,928(a4) # 8000bbb0 <head>
    80001818:	00a00793          	li	a5,10
    8000181c:	faf71ce3          	bne	a4,a5,800017d4 <_Z9consumerAPv+0x24>
    }
}
    80001820:	01813083          	ld	ra,24(sp)
    80001824:	01013403          	ld	s0,16(sp)
    80001828:	00813483          	ld	s1,8(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret
    80001834:	00008067          	ret

0000000080001838 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80001838:	0000a717          	auipc	a4,0xa
    8000183c:	3a072703          	lw	a4,928(a4) # 8000bbd8 <tail>
    80001840:	00a00793          	li	a5,10
    80001844:	08f70063          	beq	a4,a5,800018c4 <_Z9producerAPv+0x8c>
{
    80001848:	fe010113          	addi	sp,sp,-32
    8000184c:	00113c23          	sd	ra,24(sp)
    80001850:	00813823          	sd	s0,16(sp)
    80001854:	00913423          	sd	s1,8(sp)
    80001858:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    8000185c:	0000a497          	auipc	s1,0xa
    80001860:	35448493          	addi	s1,s1,852 # 8000bbb0 <head>
    80001864:	0204b503          	ld	a0,32(s1)
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	b68080e7          	jalr	-1176(ra) # 800013d0 <sem_wait>
        buffer[tail] = string[tail];
    80001870:	0284a783          	lw	a5,40(s1)
    80001874:	0000a717          	auipc	a4,0xa
    80001878:	13c70713          	addi	a4,a4,316 # 8000b9b0 <string>
    8000187c:	00f70733          	add	a4,a4,a5
    80001880:	00074683          	lbu	a3,0(a4)
    80001884:	00f48733          	add	a4,s1,a5
    80001888:	00d70823          	sb	a3,16(a4)
        tail++;
    8000188c:	0017879b          	addiw	a5,a5,1
    80001890:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    80001894:	0084b503          	ld	a0,8(s1)
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	b64080e7          	jalr	-1180(ra) # 800013fc <sem_signal>
    while(tail!=10)
    800018a0:	0000a717          	auipc	a4,0xa
    800018a4:	33872703          	lw	a4,824(a4) # 8000bbd8 <tail>
    800018a8:	00a00793          	li	a5,10
    800018ac:	faf718e3          	bne	a4,a5,8000185c <_Z9producerAPv+0x24>
    }
}
    800018b0:	01813083          	ld	ra,24(sp)
    800018b4:	01013403          	ld	s0,16(sp)
    800018b8:	00813483          	ld	s1,8(sp)
    800018bc:	02010113          	addi	sp,sp,32
    800018c0:	00008067          	ret
    800018c4:	00008067          	ret

00000000800018c8 <_Z11threadTest1v>:
{
    800018c8:	fe010113          	addi	sp,sp,-32
    800018cc:	00113c23          	sd	ra,24(sp)
    800018d0:	00813823          	sd	s0,16(sp)
    800018d4:	00913423          	sd	s1,8(sp)
    800018d8:	01213023          	sd	s2,0(sp)
    800018dc:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    800018e0:	01000513          	li	a0,16
    800018e4:	00002097          	auipc	ra,0x2
    800018e8:	d88080e7          	jalr	-632(ra) # 8000366c <_Znwm>
    800018ec:	00050493          	mv	s1,a0
    800018f0:	00000613          	li	a2,0
    800018f4:	00000597          	auipc	a1,0x0
    800018f8:	c8458593          	addi	a1,a1,-892 # 80001578 <_Z15thread1FunctionPv>
    800018fc:	00002097          	auipc	ra,0x2
    80001900:	f08080e7          	jalr	-248(ra) # 80003804 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001904:	00048513          	mv	a0,s1
    80001908:	00002097          	auipc	ra,0x2
    8000190c:	e34080e7          	jalr	-460(ra) # 8000373c <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001910:	01000513          	li	a0,16
    80001914:	00002097          	auipc	ra,0x2
    80001918:	d58080e7          	jalr	-680(ra) # 8000366c <_Znwm>
    8000191c:	00050493          	mv	s1,a0
    80001920:	00000613          	li	a2,0
    80001924:	00000597          	auipc	a1,0x0
    80001928:	cec58593          	addi	a1,a1,-788 # 80001610 <_Z15thread2FunctionPv>
    8000192c:	00002097          	auipc	ra,0x2
    80001930:	ed8080e7          	jalr	-296(ra) # 80003804 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001934:	00048513          	mv	a0,s1
    80001938:	00002097          	auipc	ra,0x2
    8000193c:	e04080e7          	jalr	-508(ra) # 8000373c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001940:	00002097          	auipc	ra,0x2
    80001944:	104080e7          	jalr	260(ra) # 80003a44 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001948:	00007517          	auipc	a0,0x7
    8000194c:	72050513          	addi	a0,a0,1824 # 80009068 <CONSOLE_STATUS+0x58>
    80001950:	00002097          	auipc	ra,0x2
    80001954:	17c080e7          	jalr	380(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001958:	00002097          	auipc	ra,0x2
    8000195c:	10c080e7          	jalr	268(ra) # 80003a64 <_ZN5Riscv17disableInterruptsEv>
}
    80001960:	01813083          	ld	ra,24(sp)
    80001964:	01013403          	ld	s0,16(sp)
    80001968:	00813483          	ld	s1,8(sp)
    8000196c:	00013903          	ld	s2,0(sp)
    80001970:	02010113          	addi	sp,sp,32
    80001974:	00008067          	ret
    80001978:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    8000197c:	00048513          	mv	a0,s1
    80001980:	00002097          	auipc	ra,0x2
    80001984:	d14080e7          	jalr	-748(ra) # 80003694 <_ZdlPv>
    80001988:	00090513          	mv	a0,s2
    8000198c:	0000b097          	auipc	ra,0xb
    80001990:	3cc080e7          	jalr	972(ra) # 8000cd58 <_Unwind_Resume>
    80001994:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001998:	00048513          	mv	a0,s1
    8000199c:	00002097          	auipc	ra,0x2
    800019a0:	cf8080e7          	jalr	-776(ra) # 80003694 <_ZdlPv>
    800019a4:	00090513          	mv	a0,s2
    800019a8:	0000b097          	auipc	ra,0xb
    800019ac:	3b0080e7          	jalr	944(ra) # 8000cd58 <_Unwind_Resume>

00000000800019b0 <_Z11threadTest2v>:
{
    800019b0:	fe010113          	addi	sp,sp,-32
    800019b4:	00113c23          	sd	ra,24(sp)
    800019b8:	00813823          	sd	s0,16(sp)
    800019bc:	00913423          	sd	s1,8(sp)
    800019c0:	01213023          	sd	s2,0(sp)
    800019c4:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    800019c8:	01000513          	li	a0,16
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	ca0080e7          	jalr	-864(ra) # 8000366c <_Znwm>
    800019d4:	00050493          	mv	s1,a0
    800019d8:	00000613          	li	a2,0
    800019dc:	00000597          	auipc	a1,0x0
    800019e0:	b7058593          	addi	a1,a1,-1168 # 8000154c <_Z4idlePv>
    800019e4:	00002097          	auipc	ra,0x2
    800019e8:	e20080e7          	jalr	-480(ra) # 80003804 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019ec:	00048513          	mv	a0,s1
    800019f0:	00002097          	auipc	ra,0x2
    800019f4:	d4c080e7          	jalr	-692(ra) # 8000373c <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800019f8:	01000513          	li	a0,16
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	c70080e7          	jalr	-912(ra) # 8000366c <_Znwm>
    80001a04:	00050493          	mv	s1,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	b6c58593          	addi	a1,a1,-1172 # 80001578 <_Z15thread1FunctionPv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	df0080e7          	jalr	-528(ra) # 80003804 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	d1c080e7          	jalr	-740(ra) # 8000373c <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a28:	01000513          	li	a0,16
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	c40080e7          	jalr	-960(ra) # 8000366c <_Znwm>
    80001a34:	00050493          	mv	s1,a0
    80001a38:	00000613          	li	a2,0
    80001a3c:	00000597          	auipc	a1,0x0
    80001a40:	cc858593          	addi	a1,a1,-824 # 80001704 <_Z20thread2FunctionTest2Pv>
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	dc0080e7          	jalr	-576(ra) # 80003804 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	cec080e7          	jalr	-788(ra) # 8000373c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a58:	00002097          	auipc	ra,0x2
    80001a5c:	fec080e7          	jalr	-20(ra) # 80003a44 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001a60:	00007517          	auipc	a0,0x7
    80001a64:	60850513          	addi	a0,a0,1544 # 80009068 <CONSOLE_STATUS+0x58>
    80001a68:	00002097          	auipc	ra,0x2
    80001a6c:	064080e7          	jalr	100(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a70:	00002097          	auipc	ra,0x2
    80001a74:	ff4080e7          	jalr	-12(ra) # 80003a64 <_ZN5Riscv17disableInterruptsEv>
}
    80001a78:	01813083          	ld	ra,24(sp)
    80001a7c:	01013403          	ld	s0,16(sp)
    80001a80:	00813483          	ld	s1,8(sp)
    80001a84:	00013903          	ld	s2,0(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret
    80001a90:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001a94:	00048513          	mv	a0,s1
    80001a98:	00002097          	auipc	ra,0x2
    80001a9c:	bfc080e7          	jalr	-1028(ra) # 80003694 <_ZdlPv>
    80001aa0:	00090513          	mv	a0,s2
    80001aa4:	0000b097          	auipc	ra,0xb
    80001aa8:	2b4080e7          	jalr	692(ra) # 8000cd58 <_Unwind_Resume>
    80001aac:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001ab0:	00048513          	mv	a0,s1
    80001ab4:	00002097          	auipc	ra,0x2
    80001ab8:	be0080e7          	jalr	-1056(ra) # 80003694 <_ZdlPv>
    80001abc:	00090513          	mv	a0,s2
    80001ac0:	0000b097          	auipc	ra,0xb
    80001ac4:	298080e7          	jalr	664(ra) # 8000cd58 <_Unwind_Resume>
    80001ac8:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001acc:	00048513          	mv	a0,s1
    80001ad0:	00002097          	auipc	ra,0x2
    80001ad4:	bc4080e7          	jalr	-1084(ra) # 80003694 <_ZdlPv>
    80001ad8:	00090513          	mv	a0,s2
    80001adc:	0000b097          	auipc	ra,0xb
    80001ae0:	27c080e7          	jalr	636(ra) # 8000cd58 <_Unwind_Resume>

0000000080001ae4 <_Z10mallocFreev>:
{
    80001ae4:	cc010113          	addi	sp,sp,-832
    80001ae8:	32113c23          	sd	ra,824(sp)
    80001aec:	32813823          	sd	s0,816(sp)
    80001af0:	32913423          	sd	s1,808(sp)
    80001af4:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001af8:	00007517          	auipc	a0,0x7
    80001afc:	57850513          	addi	a0,a0,1400 # 80009070 <CONSOLE_STATUS+0x60>
    80001b00:	00002097          	auipc	ra,0x2
    80001b04:	fcc080e7          	jalr	-52(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001b08:	00000493          	li	s1,0
    80001b0c:	0080006f          	j	80001b14 <_Z10mallocFreev+0x30>
    80001b10:	0014849b          	addiw	s1,s1,1
    80001b14:	06300793          	li	a5,99
    80001b18:	0497c463          	blt	a5,s1,80001b60 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b1c:	06400513          	li	a0,100
    80001b20:	fffff097          	auipc	ra,0xfffff
    80001b24:	728080e7          	jalr	1832(ra) # 80001248 <mem_alloc>
    80001b28:	00349793          	slli	a5,s1,0x3
    80001b2c:	fe040713          	addi	a4,s0,-32
    80001b30:	00f707b3          	add	a5,a4,a5
    80001b34:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b38:	fc051ce3          	bnez	a0,80001b10 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001b3c:	00007517          	auipc	a0,0x7
    80001b40:	54450513          	addi	a0,a0,1348 # 80009080 <CONSOLE_STATUS+0x70>
    80001b44:	00002097          	auipc	ra,0x2
    80001b48:	f88080e7          	jalr	-120(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80001b4c:	33813083          	ld	ra,824(sp)
    80001b50:	33013403          	ld	s0,816(sp)
    80001b54:	32813483          	ld	s1,808(sp)
    80001b58:	34010113          	addi	sp,sp,832
    80001b5c:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b60:	00000493          	li	s1,0
    80001b64:	06300793          	li	a5,99
    80001b68:	0297ce63          	blt	a5,s1,80001ba4 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b6c:	00349793          	slli	a5,s1,0x3
    80001b70:	fe040713          	addi	a4,s0,-32
    80001b74:	00f707b3          	add	a5,a4,a5
    80001b78:	ce07b503          	ld	a0,-800(a5)
    80001b7c:	fffff097          	auipc	ra,0xfffff
    80001b80:	6fc080e7          	jalr	1788(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001b84:	00051663          	bnez	a0,80001b90 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001b88:	0024849b          	addiw	s1,s1,2
    80001b8c:	fd9ff06f          	j	80001b64 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001b90:	00007517          	auipc	a0,0x7
    80001b94:	4f050513          	addi	a0,a0,1264 # 80009080 <CONSOLE_STATUS+0x70>
    80001b98:	00002097          	auipc	ra,0x2
    80001b9c:	f34080e7          	jalr	-204(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
            return;
    80001ba0:	fadff06f          	j	80001b4c <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001ba4:	00000493          	li	s1,0
    80001ba8:	0080006f          	j	80001bb0 <_Z10mallocFreev+0xcc>
    80001bac:	0024849b          	addiw	s1,s1,2
    80001bb0:	06300793          	li	a5,99
    80001bb4:	0297cc63          	blt	a5,s1,80001bec <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001bb8:	01400513          	li	a0,20
    80001bbc:	fffff097          	auipc	ra,0xfffff
    80001bc0:	68c080e7          	jalr	1676(ra) # 80001248 <mem_alloc>
    80001bc4:	00349793          	slli	a5,s1,0x3
    80001bc8:	fe040713          	addi	a4,s0,-32
    80001bcc:	00f707b3          	add	a5,a4,a5
    80001bd0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bd4:	fc051ce3          	bnez	a0,80001bac <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001bd8:	00007517          	auipc	a0,0x7
    80001bdc:	4a850513          	addi	a0,a0,1192 # 80009080 <CONSOLE_STATUS+0x70>
    80001be0:	00002097          	auipc	ra,0x2
    80001be4:	eec080e7          	jalr	-276(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
            return;
    80001be8:	f65ff06f          	j	80001b4c <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001bec:	00000493          	li	s1,0
    80001bf0:	06300793          	li	a5,99
    80001bf4:	0297ce63          	blt	a5,s1,80001c30 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001bf8:	00349793          	slli	a5,s1,0x3
    80001bfc:	fe040713          	addi	a4,s0,-32
    80001c00:	00f707b3          	add	a5,a4,a5
    80001c04:	ce07b503          	ld	a0,-800(a5)
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	670080e7          	jalr	1648(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001c10:	00051663          	bnez	a0,80001c1c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c14:	0014849b          	addiw	s1,s1,1
    80001c18:	fd9ff06f          	j	80001bf0 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001c1c:	00007517          	auipc	a0,0x7
    80001c20:	46450513          	addi	a0,a0,1124 # 80009080 <CONSOLE_STATUS+0x70>
    80001c24:	00002097          	auipc	ra,0x2
    80001c28:	ea8080e7          	jalr	-344(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
            return;
    80001c2c:	f21ff06f          	j	80001b4c <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c30:	00007517          	auipc	a0,0x7
    80001c34:	45850513          	addi	a0,a0,1112 # 80009088 <CONSOLE_STATUS+0x78>
    80001c38:	00002097          	auipc	ra,0x2
    80001c3c:	e94080e7          	jalr	-364(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    80001c40:	f0dff06f          	j	80001b4c <_Z10mallocFreev+0x68>

0000000080001c44 <_Z9bigMallocv>:
{
    80001c44:	ff010113          	addi	sp,sp,-16
    80001c48:	00113423          	sd	ra,8(sp)
    80001c4c:	00813023          	sd	s0,0(sp)
    80001c50:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001c54:	00007517          	auipc	a0,0x7
    80001c58:	43c50513          	addi	a0,a0,1084 # 80009090 <CONSOLE_STATUS+0x80>
    80001c5c:	00002097          	auipc	ra,0x2
    80001c60:	e70080e7          	jalr	-400(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c64:	0000a797          	auipc	a5,0xa
    80001c68:	efc7b783          	ld	a5,-260(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c6c:	0007b503          	ld	a0,0(a5)
    80001c70:	0000a797          	auipc	a5,0xa
    80001c74:	eb87b783          	ld	a5,-328(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c78:	0007b783          	ld	a5,0(a5)
    80001c7c:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001c80:	06450513          	addi	a0,a0,100
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	5c4080e7          	jalr	1476(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001c8c:	02050263          	beqz	a0,80001cb0 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	3f050513          	addi	a0,a0,1008 # 80009080 <CONSOLE_STATUS+0x70>
    80001c98:	00002097          	auipc	ra,0x2
    80001c9c:	e34080e7          	jalr	-460(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80001ca0:	00813083          	ld	ra,8(sp)
    80001ca4:	00013403          	ld	s0,0(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret
        Riscv::printString("OK\n");
    80001cb0:	00007517          	auipc	a0,0x7
    80001cb4:	3d850513          	addi	a0,a0,984 # 80009088 <CONSOLE_STATUS+0x78>
    80001cb8:	00002097          	auipc	ra,0x2
    80001cbc:	e14080e7          	jalr	-492(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    80001cc0:	fe1ff06f          	j	80001ca0 <_Z9bigMallocv+0x5c>

0000000080001cc4 <_Z17lotOfSmallMallocsv>:
{
    80001cc4:	fd010113          	addi	sp,sp,-48
    80001cc8:	02113423          	sd	ra,40(sp)
    80001ccc:	02813023          	sd	s0,32(sp)
    80001cd0:	00913c23          	sd	s1,24(sp)
    80001cd4:	01213823          	sd	s2,16(sp)
    80001cd8:	01313423          	sd	s3,8(sp)
    80001cdc:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001ce0:	00007517          	auipc	a0,0x7
    80001ce4:	3c050513          	addi	a0,a0,960 # 800090a0 <CONSOLE_STATUS+0x90>
    80001ce8:	00002097          	auipc	ra,0x2
    80001cec:	de4080e7          	jalr	-540(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001cf0:	00000493          	li	s1,0
    uint64 sum = 0;
    80001cf4:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001cf8:	00000913          	li	s2,0
    80001cfc:	0180006f          	j	80001d14 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d00:	00a00793          	li	a5,10
    80001d04:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d08:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d0c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d10:	00148493          	addi	s1,s1,1
    80001d14:	000027b7          	lui	a5,0x2
    80001d18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d1c:	0097ea63          	bltu	a5,s1,80001d30 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d20:	00800513          	li	a0,8
    80001d24:	fffff097          	auipc	ra,0xfffff
    80001d28:	524080e7          	jalr	1316(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001d2c:	fc051ae3          	bnez	a0,80001d00 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001d30:	00090513          	mv	a0,s2
    80001d34:	00002097          	auipc	ra,0x2
    80001d38:	e08080e7          	jalr	-504(ra) # 80003b3c <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d3c:	00007517          	auipc	a0,0x7
    80001d40:	3c450513          	addi	a0,a0,964 # 80009100 <CONSOLE_STATUS+0xf0>
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	d88080e7          	jalr	-632(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d4c:	00291793          	slli	a5,s2,0x2
    80001d50:	01278933          	add	s2,a5,s2
    80001d54:	00191913          	slli	s2,s2,0x1
    80001d58:	03390863          	beq	s2,s3,80001d88 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d5c:	00007517          	auipc	a0,0x7
    80001d60:	32450513          	addi	a0,a0,804 # 80009080 <CONSOLE_STATUS+0x70>
    80001d64:	00002097          	auipc	ra,0x2
    80001d68:	d68080e7          	jalr	-664(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80001d6c:	02813083          	ld	ra,40(sp)
    80001d70:	02013403          	ld	s0,32(sp)
    80001d74:	01813483          	ld	s1,24(sp)
    80001d78:	01013903          	ld	s2,16(sp)
    80001d7c:	00813983          	ld	s3,8(sp)
    80001d80:	03010113          	addi	sp,sp,48
    80001d84:	00008067          	ret
        Riscv::printString("OK\n");
    80001d88:	00007517          	auipc	a0,0x7
    80001d8c:	30050513          	addi	a0,a0,768 # 80009088 <CONSOLE_STATUS+0x78>
    80001d90:	00002097          	auipc	ra,0x2
    80001d94:	d3c080e7          	jalr	-708(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    80001d98:	fd5ff06f          	j	80001d6c <_Z17lotOfSmallMallocsv+0xa8>

0000000080001d9c <_Z7badFreev>:
{
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00113423          	sd	ra,8(sp)
    80001da4:	00813023          	sd	s0,0(sp)
    80001da8:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001dac:	00007517          	auipc	a0,0x7
    80001db0:	30c50513          	addi	a0,a0,780 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	d18080e7          	jalr	-744(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001dbc:	00800513          	li	a0,8
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	488080e7          	jalr	1160(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001dc8:	00250513          	addi	a0,a0,2
    80001dcc:	fffff097          	auipc	ra,0xfffff
    80001dd0:	4ac080e7          	jalr	1196(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001dd4:	02051263          	bnez	a0,80001df8 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001dd8:	00007517          	auipc	a0,0x7
    80001ddc:	2a850513          	addi	a0,a0,680 # 80009080 <CONSOLE_STATUS+0x70>
    80001de0:	00002097          	auipc	ra,0x2
    80001de4:	cec080e7          	jalr	-788(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80001de8:	00813083          	ld	ra,8(sp)
    80001dec:	00013403          	ld	s0,0(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret
        Riscv::printString("OK\n");
    80001df8:	00007517          	auipc	a0,0x7
    80001dfc:	29050513          	addi	a0,a0,656 # 80009088 <CONSOLE_STATUS+0x78>
    80001e00:	00002097          	auipc	ra,0x2
    80001e04:	ccc080e7          	jalr	-820(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80001e08:	fe1ff06f          	j	80001de8 <_Z7badFreev+0x4c>

0000000080001e0c <_Z13stressTestingv>:
{
    80001e0c:	cc010113          	addi	sp,sp,-832
    80001e10:	32113c23          	sd	ra,824(sp)
    80001e14:	32813823          	sd	s0,816(sp)
    80001e18:	32913423          	sd	s1,808(sp)
    80001e1c:	33213023          	sd	s2,800(sp)
    80001e20:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001e24:	00007517          	auipc	a0,0x7
    80001e28:	2a450513          	addi	a0,a0,676 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e2c:	00002097          	auipc	ra,0x2
    80001e30:	ca0080e7          	jalr	-864(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001e34:	00000493          	li	s1,0
    80001e38:	0080006f          	j	80001e40 <_Z13stressTestingv+0x34>
    80001e3c:	0014849b          	addiw	s1,s1,1
    80001e40:	06300793          	li	a5,99
    80001e44:	0497c663          	blt	a5,s1,80001e90 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001e48:	00100513          	li	a0,1
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	3fc080e7          	jalr	1020(ra) # 80001248 <mem_alloc>
    80001e54:	00349793          	slli	a5,s1,0x3
    80001e58:	fe040713          	addi	a4,s0,-32
    80001e5c:	00f707b3          	add	a5,a4,a5
    80001e60:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001e64:	fc051ce3          	bnez	a0,80001e3c <_Z13stressTestingv+0x30>
            Riscv::printString("not OK\n");
    80001e68:	00007517          	auipc	a0,0x7
    80001e6c:	21850513          	addi	a0,a0,536 # 80009080 <CONSOLE_STATUS+0x70>
    80001e70:	00002097          	auipc	ra,0x2
    80001e74:	c5c080e7          	jalr	-932(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80001e78:	33813083          	ld	ra,824(sp)
    80001e7c:	33013403          	ld	s0,816(sp)
    80001e80:	32813483          	ld	s1,808(sp)
    80001e84:	32013903          	ld	s2,800(sp)
    80001e88:	34010113          	addi	sp,sp,832
    80001e8c:	00008067          	ret
    int sz = 300;
    80001e90:	12c00913          	li	s2,300
    while(sz > 0)
    80001e94:	11205263          	blez	s2,80001f98 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001e98:	00000493          	li	s1,0
    80001e9c:	06300793          	li	a5,99
    80001ea0:	0697cc63          	blt	a5,s1,80001f18 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001ea4:	00349793          	slli	a5,s1,0x3
    80001ea8:	fe040713          	addi	a4,s0,-32
    80001eac:	00f707b3          	add	a5,a4,a5
    80001eb0:	ce07b503          	ld	a0,-800(a5)
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	3c4080e7          	jalr	964(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001ebc:	02051a63          	bnez	a0,80001ef0 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001ec0:	01f9551b          	srliw	a0,s2,0x1f
    80001ec4:	0125053b          	addw	a0,a0,s2
    80001ec8:	4015551b          	sraiw	a0,a0,0x1
    80001ecc:	fffff097          	auipc	ra,0xfffff
    80001ed0:	37c080e7          	jalr	892(ra) # 80001248 <mem_alloc>
    80001ed4:	00349793          	slli	a5,s1,0x3
    80001ed8:	fe040713          	addi	a4,s0,-32
    80001edc:	00f707b3          	add	a5,a4,a5
    80001ee0:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001ee4:	02050063          	beqz	a0,80001f04 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001ee8:	0024849b          	addiw	s1,s1,2
    80001eec:	fb1ff06f          	j	80001e9c <_Z13stressTestingv+0x90>
                Riscv::printString("not OK\n");
    80001ef0:	00007517          	auipc	a0,0x7
    80001ef4:	19050513          	addi	a0,a0,400 # 80009080 <CONSOLE_STATUS+0x70>
    80001ef8:	00002097          	auipc	ra,0x2
    80001efc:	bd4080e7          	jalr	-1068(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
                return;
    80001f00:	f79ff06f          	j	80001e78 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f04:	00007517          	auipc	a0,0x7
    80001f08:	1d450513          	addi	a0,a0,468 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f0c:	00002097          	auipc	ra,0x2
    80001f10:	bc0080e7          	jalr	-1088(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
                return;
    80001f14:	f65ff06f          	j	80001e78 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001f18:	00100493          	li	s1,1
    80001f1c:	06300793          	li	a5,99
    80001f20:	0697c863          	blt	a5,s1,80001f90 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001f24:	00349793          	slli	a5,s1,0x3
    80001f28:	fe040713          	addi	a4,s0,-32
    80001f2c:	00f707b3          	add	a5,a4,a5
    80001f30:	ce07b503          	ld	a0,-800(a5)
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	344080e7          	jalr	836(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001f3c:	02051663          	bnez	a0,80001f68 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001f40:	00090513          	mv	a0,s2
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	304080e7          	jalr	772(ra) # 80001248 <mem_alloc>
    80001f4c:	00349793          	slli	a5,s1,0x3
    80001f50:	fe040713          	addi	a4,s0,-32
    80001f54:	00f707b3          	add	a5,a4,a5
    80001f58:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f5c:	02050063          	beqz	a0,80001f7c <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001f60:	0024849b          	addiw	s1,s1,2
    80001f64:	fb9ff06f          	j	80001f1c <_Z13stressTestingv+0x110>
                Riscv::printString("not OK\n");
    80001f68:	00007517          	auipc	a0,0x7
    80001f6c:	11850513          	addi	a0,a0,280 # 80009080 <CONSOLE_STATUS+0x70>
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	b5c080e7          	jalr	-1188(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
                return;
    80001f78:	f01ff06f          	j	80001e78 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f7c:	00007517          	auipc	a0,0x7
    80001f80:	15c50513          	addi	a0,a0,348 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f84:	00002097          	auipc	ra,0x2
    80001f88:	b48080e7          	jalr	-1208(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
                return;
    80001f8c:	eedff06f          	j	80001e78 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001f90:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001f94:	f01ff06f          	j	80001e94 <_Z13stressTestingv+0x88>
    Riscv::printString("OK\n");
    80001f98:	00007517          	auipc	a0,0x7
    80001f9c:	0f050513          	addi	a0,a0,240 # 80009088 <CONSOLE_STATUS+0x78>
    80001fa0:	00002097          	auipc	ra,0x2
    80001fa4:	b2c080e7          	jalr	-1236(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    80001fa8:	ed1ff06f          	j	80001e78 <_Z13stressTestingv+0x6c>

0000000080001fac <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	00913423          	sd	s1,8(sp)
    80001fbc:	02010413          	addi	s0,sp,32
    80001fc0:	00050493          	mv	s1,a0
    80001fc4:	00002097          	auipc	ra,0x2
    80001fc8:	9ac080e7          	jalr	-1620(ra) # 80003970 <_ZN14PeriodicThreadC1Em>
    80001fcc:	0000a797          	auipc	a5,0xa
    80001fd0:	a3478793          	addi	a5,a5,-1484 # 8000ba00 <_ZTV12TestPeriodic+0x10>
    80001fd4:	00f4b023          	sd	a5,0(s1)
}
    80001fd8:	01813083          	ld	ra,24(sp)
    80001fdc:	01013403          	ld	s0,16(sp)
    80001fe0:	00813483          	ld	s1,8(sp)
    80001fe4:	02010113          	addi	sp,sp,32
    80001fe8:	00008067          	ret

0000000080001fec <_Z11threadTest3v>:
{
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00113c23          	sd	ra,24(sp)
    80001ff4:	00813823          	sd	s0,16(sp)
    80001ff8:	00913423          	sd	s1,8(sp)
    80001ffc:	01213023          	sd	s2,0(sp)
    80002000:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80002004:	01000513          	li	a0,16
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	664080e7          	jalr	1636(ra) # 8000366c <_Znwm>
    80002010:	00050913          	mv	s2,a0
    80002014:	03200593          	li	a1,50
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	f94080e7          	jalr	-108(ra) # 80001fac <_ZN12TestPeriodicC1Em>
    t->start();
    80002020:	00090513          	mv	a0,s2
    80002024:	00001097          	auipc	ra,0x1
    80002028:	718080e7          	jalr	1816(ra) # 8000373c <_ZN6Thread5startEv>
    while(true)
    8000202c:	0000006f          	j	8000202c <_Z11threadTest3v+0x40>
    80002030:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002034:	00090513          	mv	a0,s2
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	65c080e7          	jalr	1628(ra) # 80003694 <_ZdlPv>
    80002040:	00048513          	mv	a0,s1
    80002044:	0000b097          	auipc	ra,0xb
    80002048:	d14080e7          	jalr	-748(ra) # 8000cd58 <_Unwind_Resume>

000000008000204c <_Z11threadTestsv>:
{
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00113423          	sd	ra,8(sp)
    80002054:	00813023          	sd	s0,0(sp)
    80002058:	01010413          	addi	s0,sp,16
    threadTest3();
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	f90080e7          	jalr	-112(ra) # 80001fec <_Z11threadTest3v>

0000000080002064 <_Z10mallocTestv>:
{
    80002064:	fc010113          	addi	sp,sp,-64
    80002068:	02113c23          	sd	ra,56(sp)
    8000206c:	02813823          	sd	s0,48(sp)
    80002070:	02913423          	sd	s1,40(sp)
    80002074:	03213023          	sd	s2,32(sp)
    80002078:	01313c23          	sd	s3,24(sp)
    8000207c:	01413823          	sd	s4,16(sp)
    80002080:	01513423          	sd	s5,8(sp)
    80002084:	01613023          	sd	s6,0(sp)
    80002088:	04010413          	addi	s0,sp,64
    Riscv::printString("Testing a few mallocs and frees\n\n");
    8000208c:	00007517          	auipc	a0,0x7
    80002090:	05450513          	addi	a0,a0,84 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002094:	00002097          	auipc	ra,0x2
    80002098:	a38080e7          	jalr	-1480(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    8000209c:	02c00513          	li	a0,44
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	5cc080e7          	jalr	1484(ra) # 8000366c <_Znwm>
    800020a8:	00050493          	mv	s1,a0
    o->a = 3;
    800020ac:	00300793          	li	a5,3
    800020b0:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    800020b4:	00a00513          	li	a0,10
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	190080e7          	jalr	400(ra) # 80001248 <mem_alloc>
    800020c0:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    800020c4:	06400513          	li	a0,100
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	180080e7          	jalr	384(ra) # 80001248 <mem_alloc>
    800020d0:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    800020d4:	3e800513          	li	a0,1000
    800020d8:	fffff097          	auipc	ra,0xfffff
    800020dc:	170080e7          	jalr	368(ra) # 80001248 <mem_alloc>
    800020e0:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    800020e4:	00002537          	lui	a0,0x2
    800020e8:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    800020ec:	fffff097          	auipc	ra,0xfffff
    800020f0:	15c080e7          	jalr	348(ra) # 80001248 <mem_alloc>
    800020f4:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    800020f8:	00100513          	li	a0,1
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	14c080e7          	jalr	332(ra) # 80001248 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80002104:	06090c63          	beqz	s2,8000217c <_Z10mallocTestv+0x118>
    80002108:	00050b13          	mv	s6,a0
    8000210c:	06098863          	beqz	s3,8000217c <_Z10mallocTestv+0x118>
    80002110:	060a0663          	beqz	s4,8000217c <_Z10mallocTestv+0x118>
    80002114:	060a8463          	beqz	s5,8000217c <_Z10mallocTestv+0x118>
    80002118:	06050263          	beqz	a0,8000217c <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    8000211c:	00090513          	mv	a0,s2
    80002120:	00001097          	auipc	ra,0x1
    80002124:	574080e7          	jalr	1396(ra) # 80003694 <_ZdlPv>
    delete (uint64*)m3;
    80002128:	000a0513          	mv	a0,s4
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	568080e7          	jalr	1384(ra) # 80003694 <_ZdlPv>
    delete (uint64*)m4;
    80002134:	000a8513          	mv	a0,s5
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	55c080e7          	jalr	1372(ra) # 80003694 <_ZdlPv>
    delete (uint64*)m2;
    80002140:	00098513          	mv	a0,s3
    80002144:	00001097          	auipc	ra,0x1
    80002148:	550080e7          	jalr	1360(ra) # 80003694 <_ZdlPv>
    delete (uint64*)m5;
    8000214c:	000b0513          	mv	a0,s6
    80002150:	00001097          	auipc	ra,0x1
    80002154:	544080e7          	jalr	1348(ra) # 80003694 <_ZdlPv>
    delete o;
    80002158:	00048863          	beqz	s1,80002168 <_Z10mallocTestv+0x104>
    8000215c:	00048513          	mv	a0,s1
    80002160:	00001097          	auipc	ra,0x1
    80002164:	534080e7          	jalr	1332(ra) # 80003694 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80002168:	00007517          	auipc	a0,0x7
    8000216c:	fa050513          	addi	a0,a0,-96 # 80009108 <CONSOLE_STATUS+0xf8>
    80002170:	00002097          	auipc	ra,0x2
    80002174:	95c080e7          	jalr	-1700(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    80002178:	0140006f          	j	8000218c <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    8000217c:	00007517          	auipc	a0,0x7
    80002180:	f0450513          	addi	a0,a0,-252 # 80009080 <CONSOLE_STATUS+0x70>
    80002184:	00002097          	auipc	ra,0x2
    80002188:	948080e7          	jalr	-1720(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    8000218c:	03813083          	ld	ra,56(sp)
    80002190:	03013403          	ld	s0,48(sp)
    80002194:	02813483          	ld	s1,40(sp)
    80002198:	02013903          	ld	s2,32(sp)
    8000219c:	01813983          	ld	s3,24(sp)
    800021a0:	01013a03          	ld	s4,16(sp)
    800021a4:	00813a83          	ld	s5,8(sp)
    800021a8:	00013b03          	ld	s6,0(sp)
    800021ac:	04010113          	addi	sp,sp,64
    800021b0:	00008067          	ret

00000000800021b4 <_Z16mallocEverythingv>:
{
    800021b4:	fe010113          	addi	sp,sp,-32
    800021b8:	00113c23          	sd	ra,24(sp)
    800021bc:	00813823          	sd	s0,16(sp)
    800021c0:	00913423          	sd	s1,8(sp)
    800021c4:	02010413          	addi	s0,sp,32
    Riscv::printString("Testing allocating whole address space\n\n");
    800021c8:	00007517          	auipc	a0,0x7
    800021cc:	f7050513          	addi	a0,a0,-144 # 80009138 <CONSOLE_STATUS+0x128>
    800021d0:	00002097          	auipc	ra,0x2
    800021d4:	8fc080e7          	jalr	-1796(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    800021d8:	0000a797          	auipc	a5,0xa
    800021dc:	9507b783          	ld	a5,-1712(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021e0:	0007b503          	ld	a0,0(a5)
    800021e4:	0000a797          	auipc	a5,0xa
    800021e8:	97c7b783          	ld	a5,-1668(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x50>
    800021ec:	0007b783          	ld	a5,0(a5)
    800021f0:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    800021f4:	ff050513          	addi	a0,a0,-16
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	050080e7          	jalr	80(ra) # 80001248 <mem_alloc>
    if(m!=nullptr){
    80002200:	02050463          	beqz	a0,80002228 <_Z16mallocEverythingv+0x74>
        Riscv::printString("not OK\n");
    80002204:	00007517          	auipc	a0,0x7
    80002208:	e7c50513          	addi	a0,a0,-388 # 80009080 <CONSOLE_STATUS+0x70>
    8000220c:	00002097          	auipc	ra,0x2
    80002210:	8c0080e7          	jalr	-1856(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80002214:	01813083          	ld	ra,24(sp)
    80002218:	01013403          	ld	s0,16(sp)
    8000221c:	00813483          	ld	s1,8(sp)
    80002220:	02010113          	addi	sp,sp,32
    80002224:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002228:	0000a797          	auipc	a5,0xa
    8000222c:	9387b783          	ld	a5,-1736(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002230:	0007b503          	ld	a0,0(a5)
    80002234:	0000a797          	auipc	a5,0xa
    80002238:	8f47b783          	ld	a5,-1804(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000223c:	0007b783          	ld	a5,0(a5)
    80002240:	40f50533          	sub	a0,a0,a5
    80002244:	ff050513          	addi	a0,a0,-16
    80002248:	00655513          	srli	a0,a0,0x6
    8000224c:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    80002250:	00651513          	slli	a0,a0,0x6
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	ff4080e7          	jalr	-12(ra) # 80001248 <mem_alloc>
    8000225c:	00050493          	mv	s1,a0
    if(m==nullptr){
    80002260:	02050a63          	beqz	a0,80002294 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    80002264:	00100513          	li	a0,1
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	fe0080e7          	jalr	-32(ra) # 80001248 <mem_alloc>
    if(small_chunk == nullptr){
    80002270:	02050c63          	beqz	a0,800022a8 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    80002274:	00048513          	mv	a0,s1
    80002278:	00001097          	auipc	ra,0x1
    8000227c:	41c080e7          	jalr	1052(ra) # 80003694 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    80002280:	00007517          	auipc	a0,0x7
    80002284:	ee850513          	addi	a0,a0,-280 # 80009168 <CONSOLE_STATUS+0x158>
    80002288:	00002097          	auipc	ra,0x2
    8000228c:	844080e7          	jalr	-1980(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    80002290:	f85ff06f          	j	80002214 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    80002294:	00007517          	auipc	a0,0x7
    80002298:	dec50513          	addi	a0,a0,-532 # 80009080 <CONSOLE_STATUS+0x70>
    8000229c:	00002097          	auipc	ra,0x2
    800022a0:	830080e7          	jalr	-2000(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        return;
    800022a4:	f71ff06f          	j	80002214 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800022a8:	00007517          	auipc	a0,0x7
    800022ac:	dd850513          	addi	a0,a0,-552 # 80009080 <CONSOLE_STATUS+0x70>
    800022b0:	00002097          	auipc	ra,0x2
    800022b4:	81c080e7          	jalr	-2020(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        return;
    800022b8:	f5dff06f          	j	80002214 <_Z16mallocEverythingv+0x60>

00000000800022bc <_Z17mallocGapFillTestv>:
{
    800022bc:	f6010113          	addi	sp,sp,-160
    800022c0:	08113c23          	sd	ra,152(sp)
    800022c4:	08813823          	sd	s0,144(sp)
    800022c8:	08913423          	sd	s1,136(sp)
    800022cc:	09213023          	sd	s2,128(sp)
    800022d0:	07313c23          	sd	s3,120(sp)
    800022d4:	07413823          	sd	s4,112(sp)
    800022d8:	07513423          	sd	s5,104(sp)
    800022dc:	07613023          	sd	s6,96(sp)
    800022e0:	05713c23          	sd	s7,88(sp)
    800022e4:	05813823          	sd	s8,80(sp)
    800022e8:	0a010413          	addi	s0,sp,160
    Riscv::printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800022ec:	00007517          	auipc	a0,0x7
    800022f0:	eb450513          	addi	a0,a0,-332 # 800091a0 <CONSOLE_STATUS+0x190>
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	7d8080e7          	jalr	2008(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    for(int i=0;i<N;i++)
    800022fc:	00000493          	li	s1,0
    80002300:	00900793          	li	a5,9
    80002304:	0697c863          	blt	a5,s1,80002374 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    80002308:	0064951b          	slliw	a0,s1,0x6
    8000230c:	0015051b          	addiw	a0,a0,1
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	f38080e7          	jalr	-200(ra) # 80001248 <mem_alloc>
    80002318:	00349793          	slli	a5,s1,0x3
    8000231c:	fb040713          	addi	a4,s0,-80
    80002320:	00f707b3          	add	a5,a4,a5
    80002324:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80002328:	00050663          	beqz	a0,80002334 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    8000232c:	0014849b          	addiw	s1,s1,1
    80002330:	fd1ff06f          	j	80002300 <_Z17mallocGapFillTestv+0x44>
            Riscv::printString("not OK\n");
    80002334:	00007517          	auipc	a0,0x7
    80002338:	d4c50513          	addi	a0,a0,-692 # 80009080 <CONSOLE_STATUS+0x70>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	790080e7          	jalr	1936(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80002344:	09813083          	ld	ra,152(sp)
    80002348:	09013403          	ld	s0,144(sp)
    8000234c:	08813483          	ld	s1,136(sp)
    80002350:	08013903          	ld	s2,128(sp)
    80002354:	07813983          	ld	s3,120(sp)
    80002358:	07013a03          	ld	s4,112(sp)
    8000235c:	06813a83          	ld	s5,104(sp)
    80002360:	06013b03          	ld	s6,96(sp)
    80002364:	05813b83          	ld	s7,88(sp)
    80002368:	05013c03          	ld	s8,80(sp)
    8000236c:	0a010113          	addi	sp,sp,160
    80002370:	00008067          	ret
    delete (uint64*)m[2];
    80002374:	f7043503          	ld	a0,-144(s0)
    80002378:	00050663          	beqz	a0,80002384 <_Z17mallocGapFillTestv+0xc8>
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	318080e7          	jalr	792(ra) # 80003694 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002384:	00100513          	li	a0,1
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	ec0080e7          	jalr	-320(ra) # 80001248 <mem_alloc>
    80002390:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80002394:	00100513          	li	a0,1
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	eb0080e7          	jalr	-336(ra) # 80001248 <mem_alloc>
    800023a0:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    800023a4:	00100513          	li	a0,1
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	ea0080e7          	jalr	-352(ra) # 80001248 <mem_alloc>
    800023b0:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    800023b4:	08048863          	beqz	s1,80002444 <_Z17mallocGapFillTestv+0x188>
    800023b8:	08090663          	beqz	s2,80002444 <_Z17mallocGapFillTestv+0x188>
    800023bc:	08050463          	beqz	a0,80002444 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    800023c0:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    800023c4:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    800023c8:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    800023cc:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    800023d0:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    800023d4:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    800023d8:	0897f063          	bgeu	a5,s1,80002458 <_Z17mallocGapFillTestv+0x19c>
    800023dc:	06a4fe63          	bgeu	s1,a0,80002458 <_Z17mallocGapFillTestv+0x19c>
    800023e0:	0727fc63          	bgeu	a5,s2,80002458 <_Z17mallocGapFillTestv+0x19c>
    800023e4:	06a97a63          	bgeu	s2,a0,80002458 <_Z17mallocGapFillTestv+0x19c>
    800023e8:	07367863          	bgeu	a2,s3,80002458 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    800023ec:	00050663          	beqz	a0,800023f8 <_Z17mallocGapFillTestv+0x13c>
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	2a4080e7          	jalr	676(ra) # 80003694 <_ZdlPv>
    delete (uint64*)m[4];
    800023f8:	f8043503          	ld	a0,-128(s0)
    800023fc:	00050663          	beqz	a0,80002408 <_Z17mallocGapFillTestv+0x14c>
    80002400:	00001097          	auipc	ra,0x1
    80002404:	294080e7          	jalr	660(ra) # 80003694 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    80002408:	28000513          	li	a0,640
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	e3c080e7          	jalr	-452(ra) # 80001248 <mem_alloc>
    80002414:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    80002418:	24000513          	li	a0,576
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	e2c080e7          	jalr	-468(ra) # 80001248 <mem_alloc>
    80002424:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    80002428:	040c0263          	beqz	s8,8000246c <_Z17mallocGapFillTestv+0x1b0>
    8000242c:	04050063          	beqz	a0,8000246c <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002430:	04aa7863          	bgeu	s4,a0,80002480 <_Z17mallocGapFillTestv+0x1c4>
    80002434:	04ab7663          	bgeu	s6,a0,80002480 <_Z17mallocGapFillTestv+0x1c4>
    80002438:	055c7463          	bgeu	s8,s5,80002480 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    8000243c:	00000a13          	li	s4,0
    80002440:	0580006f          	j	80002498 <_Z17mallocGapFillTestv+0x1dc>
        Riscv::printString("not OK\n");
    80002444:	00007517          	auipc	a0,0x7
    80002448:	c3c50513          	addi	a0,a0,-964 # 80009080 <CONSOLE_STATUS+0x70>
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	680080e7          	jalr	1664(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        return;
    80002454:	ef1ff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002458:	00007517          	auipc	a0,0x7
    8000245c:	c2850513          	addi	a0,a0,-984 # 80009080 <CONSOLE_STATUS+0x70>
    80002460:	00001097          	auipc	ra,0x1
    80002464:	66c080e7          	jalr	1644(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        return;
    80002468:	eddff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    8000246c:	00007517          	auipc	a0,0x7
    80002470:	c1450513          	addi	a0,a0,-1004 # 80009080 <CONSOLE_STATUS+0x70>
    80002474:	00001097          	auipc	ra,0x1
    80002478:	658080e7          	jalr	1624(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        return;
    8000247c:	ec9ff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002480:	00007517          	auipc	a0,0x7
    80002484:	c0050513          	addi	a0,a0,-1024 # 80009080 <CONSOLE_STATUS+0x70>
    80002488:	00001097          	auipc	ra,0x1
    8000248c:	644080e7          	jalr	1604(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        return;
    80002490:	eb5ff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    80002494:	001a0a1b          	addiw	s4,s4,1
    80002498:	00900793          	li	a5,9
    8000249c:	0347c263          	blt	a5,s4,800024c0 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    800024a0:	003a1793          	slli	a5,s4,0x3
    800024a4:	fb040713          	addi	a4,s0,-80
    800024a8:	00f707b3          	add	a5,a4,a5
    800024ac:	fb07b503          	ld	a0,-80(a5)
    800024b0:	fe0502e3          	beqz	a0,80002494 <_Z17mallocGapFillTestv+0x1d8>
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	1e0080e7          	jalr	480(ra) # 80003694 <_ZdlPv>
    800024bc:	fd9ff06f          	j	80002494 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800024c0:	00048513          	mv	a0,s1
    800024c4:	00001097          	auipc	ra,0x1
    800024c8:	1d0080e7          	jalr	464(ra) # 80003694 <_ZdlPv>
    delete (uint64*)tmp2;
    800024cc:	00090513          	mv	a0,s2
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	1c4080e7          	jalr	452(ra) # 80003694 <_ZdlPv>
    delete (uint64*)tmp3;
    800024d8:	00098513          	mv	a0,s3
    800024dc:	00001097          	auipc	ra,0x1
    800024e0:	1b8080e7          	jalr	440(ra) # 80003694 <_ZdlPv>
    delete (uint64*)tmp4;
    800024e4:	000c0513          	mv	a0,s8
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	1ac080e7          	jalr	428(ra) # 80003694 <_ZdlPv>
    delete (uint64*)tmp5;
    800024f0:	000b8513          	mv	a0,s7
    800024f4:	00001097          	auipc	ra,0x1
    800024f8:	1a0080e7          	jalr	416(ra) # 80003694 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800024fc:	00007517          	auipc	a0,0x7
    80002500:	cec50513          	addi	a0,a0,-788 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002504:	00001097          	auipc	ra,0x1
    80002508:	5c8080e7          	jalr	1480(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    8000250c:	e39ff06f          	j	80002344 <_Z17mallocGapFillTestv+0x88>

0000000080002510 <_Z21memoryAllocationTestsv>:
{
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    80002520:	00000097          	auipc	ra,0x0
    80002524:	d9c080e7          	jalr	-612(ra) # 800022bc <_Z17mallocGapFillTestv>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_Z8semTest1v>:

void semTest1()
{
    80002538:	fe010113          	addi	sp,sp,-32
    8000253c:	00113c23          	sd	ra,24(sp)
    80002540:	00813823          	sd	s0,16(sp)
    80002544:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    80002548:	00a00593          	li	a1,10
    8000254c:	00009517          	auipc	a0,0x9
    80002550:	68450513          	addi	a0,a0,1668 # 8000bbd0 <spaceAvailable>
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	e18080e7          	jalr	-488(ra) # 8000136c <sem_open>

    sem_open(&itemAvailable, 0);
    8000255c:	00000593          	li	a1,0
    80002560:	00009517          	auipc	a0,0x9
    80002564:	65850513          	addi	a0,a0,1624 # 8000bbb8 <itemAvailable>
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	e04080e7          	jalr	-508(ra) # 8000136c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    80002570:	00000613          	li	a2,0
    80002574:	fffff597          	auipc	a1,0xfffff
    80002578:	2c458593          	addi	a1,a1,708 # 80001838 <_Z9producerAPv>
    8000257c:	fe840513          	addi	a0,s0,-24
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	d24080e7          	jalr	-732(ra) # 800012a4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    80002588:	00000613          	li	a2,0
    8000258c:	fffff597          	auipc	a1,0xfffff
    80002590:	22458593          	addi	a1,a1,548 # 800017b0 <_Z9consumerAPv>
    80002594:	fe040513          	addi	a0,s0,-32
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	d0c080e7          	jalr	-756(ra) # 800012a4 <thread_create>
    800025a0:	00c0006f          	j	800025ac <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	d80080e7          	jalr	-640(ra) # 80001324 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    800025ac:	fe843503          	ld	a0,-24(s0)
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	4b0080e7          	jalr	1200(ra) # 80002a60 <_ZN3PCB10isFinishedEv>
    800025b8:	fe0506e3          	beqz	a0,800025a4 <_Z8semTest1v+0x6c>
    800025bc:	fe843503          	ld	a0,-24(s0)
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	4a0080e7          	jalr	1184(ra) # 80002a60 <_ZN3PCB10isFinishedEv>
    800025c8:	fc050ee3          	beqz	a0,800025a4 <_Z8semTest1v+0x6c>
}
    800025cc:	01813083          	ld	ra,24(sp)
    800025d0:	01013403          	ld	s0,16(sp)
    800025d4:	02010113          	addi	sp,sp,32
    800025d8:	00008067          	ret

00000000800025dc <_Z14semaphoreTestsv>:
{
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00113423          	sd	ra,8(sp)
    800025e4:	00813023          	sd	s0,0(sp)
    800025e8:	01010413          	addi	s0,sp,16
    semTest1();
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	f4c080e7          	jalr	-180(ra) # 80002538 <_Z8semTest1v>
}
    800025f4:	00813083          	ld	ra,8(sp)
    800025f8:	00013403          	ld	s0,0(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <_Z12consoleTest1v>:

void consoleTest1()
{
    80002604:	fe010113          	addi	sp,sp,-32
    80002608:	00113c23          	sd	ra,24(sp)
    8000260c:	00813823          	sd	s0,16(sp)
    80002610:	00913423          	sd	s1,8(sp)
    80002614:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002618:	00000493          	li	s1,0
    8000261c:	06300793          	li	a5,99
    80002620:	0097ca63          	blt	a5,s1,80002634 <_Z12consoleTest1v+0x30>
    {
        getc();
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	edc080e7          	jalr	-292(ra) # 80001500 <getc>
    for(int i = 0; i < 100;i++)
    8000262c:	0014849b          	addiw	s1,s1,1
    80002630:	fedff06f          	j	8000261c <_Z12consoleTest1v+0x18>
    }
}
    80002634:	01813083          	ld	ra,24(sp)
    80002638:	01013403          	ld	s0,16(sp)
    8000263c:	00813483          	ld	s1,8(sp)
    80002640:	02010113          	addi	sp,sp,32
    80002644:	00008067          	ret

0000000080002648 <_Z12consoleTestsv>:

void consoleTests()
{
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	00813023          	sd	s0,0(sp)
    80002654:	01010413          	addi	s0,sp,16
    consoleTest1();
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	fac080e7          	jalr	-84(ra) # 80002604 <_Z12consoleTest1v>
}
    80002660:	00813083          	ld	ra,8(sp)
    80002664:	00013403          	ld	s0,0(sp)
    80002668:	01010113          	addi	sp,sp,16
    8000266c:	00008067          	ret

0000000080002670 <_Z7myTestsv>:
{
    80002670:	ff010113          	addi	sp,sp,-16
    80002674:	00113423          	sd	ra,8(sp)
    80002678:	00813023          	sd	s0,0(sp)
    8000267c:	01010413          	addi	s0,sp,16
    consoleTests();
    80002680:	00000097          	auipc	ra,0x0
    80002684:	fc8080e7          	jalr	-56(ra) # 80002648 <_Z12consoleTestsv>
}
    80002688:	00813083          	ld	ra,8(sp)
    8000268c:	00013403          	ld	s0,0(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret

0000000080002698 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00813423          	sd	s0,8(sp)
    800026a0:	01010413          	addi	s0,sp,16
    800026a4:	00813403          	ld	s0,8(sp)
    800026a8:	01010113          	addi	sp,sp,16
    800026ac:	00008067          	ret

00000000800026b0 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800026b0:	ff010113          	addi	sp,sp,-16
    800026b4:	00813423          	sd	s0,8(sp)
    800026b8:	01010413          	addi	s0,sp,16
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    800026d8:	00009797          	auipc	a5,0x9
    800026dc:	2f878793          	addi	a5,a5,760 # 8000b9d0 <_ZTV14PeriodicThread+0x10>
    800026e0:	00f53023          	sd	a5,0(a0)
    800026e4:	00001097          	auipc	ra,0x1
    800026e8:	ecc080e7          	jalr	-308(ra) # 800035b0 <_ZN6ThreadD1Ev>
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN14PeriodicThreadD0Ev>:
    800026fc:	fe010113          	addi	sp,sp,-32
    80002700:	00113c23          	sd	ra,24(sp)
    80002704:	00813823          	sd	s0,16(sp)
    80002708:	00913423          	sd	s1,8(sp)
    8000270c:	02010413          	addi	s0,sp,32
    80002710:	00050493          	mv	s1,a0
    80002714:	00009797          	auipc	a5,0x9
    80002718:	2bc78793          	addi	a5,a5,700 # 8000b9d0 <_ZTV14PeriodicThread+0x10>
    8000271c:	00f53023          	sd	a5,0(a0)
    80002720:	00001097          	auipc	ra,0x1
    80002724:	e90080e7          	jalr	-368(ra) # 800035b0 <_ZN6ThreadD1Ev>
    80002728:	00048513          	mv	a0,s1
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	f68080e7          	jalr	-152(ra) # 80003694 <_ZdlPv>
    80002734:	01813083          	ld	ra,24(sp)
    80002738:	01013403          	ld	s0,16(sp)
    8000273c:	00813483          	ld	s1,8(sp)
    80002740:	02010113          	addi	sp,sp,32
    80002744:	00008067          	ret

0000000080002748 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00113423          	sd	ra,8(sp)
    80002750:	00813023          	sd	s0,0(sp)
    80002754:	01010413          	addi	s0,sp,16
    80002758:	00009797          	auipc	a5,0x9
    8000275c:	27878793          	addi	a5,a5,632 # 8000b9d0 <_ZTV14PeriodicThread+0x10>
    80002760:	00f53023          	sd	a5,0(a0)
    80002764:	00001097          	auipc	ra,0x1
    80002768:	e4c080e7          	jalr	-436(ra) # 800035b0 <_ZN6ThreadD1Ev>
    8000276c:	00813083          	ld	ra,8(sp)
    80002770:	00013403          	ld	s0,0(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <_ZN12TestPeriodicD0Ev>:
    8000277c:	fe010113          	addi	sp,sp,-32
    80002780:	00113c23          	sd	ra,24(sp)
    80002784:	00813823          	sd	s0,16(sp)
    80002788:	00913423          	sd	s1,8(sp)
    8000278c:	02010413          	addi	s0,sp,32
    80002790:	00050493          	mv	s1,a0
    80002794:	00009797          	auipc	a5,0x9
    80002798:	23c78793          	addi	a5,a5,572 # 8000b9d0 <_ZTV14PeriodicThread+0x10>
    8000279c:	00f53023          	sd	a5,0(a0)
    800027a0:	00001097          	auipc	ra,0x1
    800027a4:	e10080e7          	jalr	-496(ra) # 800035b0 <_ZN6ThreadD1Ev>
    800027a8:	00048513          	mv	a0,s1
    800027ac:	00001097          	auipc	ra,0x1
    800027b0:	ee8080e7          	jalr	-280(ra) # 80003694 <_ZdlPv>
    800027b4:	01813083          	ld	ra,24(sp)
    800027b8:	01013403          	ld	s0,16(sp)
    800027bc:	00813483          	ld	s1,8(sp)
    800027c0:	02010113          	addi	sp,sp,32
    800027c4:	00008067          	ret

00000000800027c8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00113423          	sd	ra,8(sp)
    800027d0:	00813023          	sd	s0,0(sp)
    800027d4:	01010413          	addi	s0,sp,16
    //Riscv::printString("Runner started...\n");
    Riscv::popSppSpie();
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	2d4080e7          	jalr	724(ra) # 80003aac <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800027e0:	00009797          	auipc	a5,0x9
    800027e4:	4007b783          	ld	a5,1024(a5) # 8000bbe0 <_ZN3PCB7runningE>
    800027e8:	0207b703          	ld	a4,32(a5)
    800027ec:	0287b503          	ld	a0,40(a5)
    800027f0:	000700e7          	jalr	a4

    thread_exit();
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	b50080e7          	jalr	-1200(ra) # 80001344 <thread_exit>
}
    800027fc:	00813083          	ld	ra,8(sp)
    80002800:	00013403          	ld	s0,0(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00813423          	sd	s0,8(sp)
    80002814:	01010413          	addi	s0,sp,16
    })
    80002818:	00050023          	sb	zero,0(a0)
    8000281c:	00e53823          	sd	a4,16(a0)
    80002820:	00053c23          	sd	zero,24(a0)
    80002824:	02b53023          	sd	a1,32(a0)
    80002828:	02c53423          	sd	a2,40(a0)
    8000282c:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002830:	000017b7          	lui	a5,0x1
    80002834:	00f686b3          	add	a3,a3,a5
    })
    80002838:	04d53023          	sd	a3,64(a0)
    8000283c:	00000797          	auipc	a5,0x0
    80002840:	f8c78793          	addi	a5,a5,-116 # 800027c8 <_ZN3PCB6runnerEv>
    80002844:	04f53423          	sd	a5,72(a0)
    nextPCB = 0;
    80002848:	00053423          	sd	zero,8(a0)
}
    8000284c:	00813403          	ld	s0,8(sp)
    80002850:	01010113          	addi	sp,sp,16
    80002854:	00008067          	ret

0000000080002858 <_ZN3PCB5sleepEm>:
{
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00813423          	sd	s0,8(sp)
    80002860:	01010413          	addi	s0,sp,16
}
    80002864:	00813403          	ld	s0,8(sp)
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00008067          	ret

0000000080002870 <_ZN3PCB5startEv>:
{
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00113423          	sd	ra,8(sp)
    80002878:	00813023          	sd	s0,0(sp)
    8000287c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002880:	00001097          	auipc	ra,0x1
    80002884:	bf8080e7          	jalr	-1032(ra) # 80003478 <_ZN9Scheduler3putEP3PCB>
}
    80002888:	00813083          	ld	ra,8(sp)
    8000288c:	00013403          	ld	s0,0(sp)
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret

0000000080002898 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002898:	fe010113          	addi	sp,sp,-32
    8000289c:	00113c23          	sd	ra,24(sp)
    800028a0:	00813823          	sd	s0,16(sp)
    800028a4:	00913423          	sd	s1,8(sp)
    800028a8:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800028ac:	00009497          	auipc	s1,0x9
    800028b0:	3344b483          	ld	s1,820(s1) # 8000bbe0 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800028b4:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800028b8:	00100793          	li	a5,1
    800028bc:	04f70063          	beq	a4,a5,800028fc <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800028c0:	00001097          	auipc	ra,0x1
    800028c4:	c0c080e7          	jalr	-1012(ra) # 800034cc <_ZN9Scheduler3getEv>
    800028c8:	00009797          	auipc	a5,0x9
    800028cc:	30a7bc23          	sd	a0,792(a5) # 8000bbe0 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800028d0:	00100793          	li	a5,1
    800028d4:	02f52c23          	sw	a5,56(a0)
    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);

    PCB::contextSwitch(&old->context, &running->context);
    800028d8:	04050593          	addi	a1,a0,64
    800028dc:	04048513          	addi	a0,s1,64
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	948080e7          	jalr	-1720(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800028e8:	01813083          	ld	ra,24(sp)
    800028ec:	01013403          	ld	s0,16(sp)
    800028f0:	00813483          	ld	s1,8(sp)
    800028f4:	02010113          	addi	sp,sp,32
    800028f8:	00008067          	ret
        Scheduler::put(old);
    800028fc:	00048513          	mv	a0,s1
    80002900:	00001097          	auipc	ra,0x1
    80002904:	b78080e7          	jalr	-1160(ra) # 80003478 <_ZN9Scheduler3putEP3PCB>
    80002908:	fb9ff06f          	j	800028c0 <_ZN3PCB8dispatchEv+0x28>

000000008000290c <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00113423          	sd	ra,8(sp)
    80002914:	00813023          	sd	s0,0(sp)
    80002918:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000291c:	00002097          	auipc	ra,0x2
    80002920:	a4c080e7          	jalr	-1460(ra) # 80004368 <_Z7kmallocm>
}
    80002924:	00813083          	ld	ra,8(sp)
    80002928:	00013403          	ld	s0,0(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret

0000000080002934 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00113423          	sd	ra,8(sp)
    8000293c:	00813023          	sd	s0,0(sp)
    80002940:	01010413          	addi	s0,sp,16
    kfree(p);
    80002944:	00002097          	auipc	ra,0x2
    80002948:	a80080e7          	jalr	-1408(ra) # 800043c4 <_Z5kfreePv>
}
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    8000296c:	03053503          	ld	a0,48(a0)
    80002970:	00002097          	auipc	ra,0x2
    80002974:	a54080e7          	jalr	-1452(ra) # 800043c4 <_Z5kfreePv>
}
    80002978:	00813083          	ld	ra,8(sp)
    8000297c:	00013403          	ld	s0,0(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002988:	fd010113          	addi	sp,sp,-48
    8000298c:	02113423          	sd	ra,40(sp)
    80002990:	02813023          	sd	s0,32(sp)
    80002994:	00913c23          	sd	s1,24(sp)
    80002998:	01213823          	sd	s2,16(sp)
    8000299c:	01313423          	sd	s3,8(sp)
    800029a0:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800029a4:	05000513          	li	a0,80
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	f64080e7          	jalr	-156(ra) # 8000290c <_ZN3PCBnwEm>
    800029b0:	00050493          	mv	s1,a0
    800029b4:	00000713          	li	a4,0
    800029b8:	00000693          	li	a3,0
    800029bc:	00000613          	li	a2,0
    800029c0:	00000593          	li	a1,0
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	e48080e7          	jalr	-440(ra) # 8000280c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    800029cc:	00048513          	mv	a0,s1
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	ea0080e7          	jalr	-352(ra) # 80002870 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    800029d8:	00100793          	li	a5,1
    800029dc:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    800029e0:	00001097          	auipc	ra,0x1
    800029e4:	aec080e7          	jalr	-1300(ra) # 800034cc <_ZN9Scheduler3getEv>
    800029e8:	00009797          	auipc	a5,0x9
    800029ec:	1ea7bc23          	sd	a0,504(a5) # 8000bbe0 <_ZN3PCB7runningE>
    800029f0:	00100993          	li	s3,1
    800029f4:	03352c23          	sw	s3,56(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB* consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800029f8:	00001537          	lui	a0,0x1
    800029fc:	00002097          	auipc	ra,0x2
    80002a00:	96c080e7          	jalr	-1684(ra) # 80004368 <_Z7kmallocm>
    80002a04:	00050913          	mv	s2,a0
    80002a08:	05000513          	li	a0,80
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	f00080e7          	jalr	-256(ra) # 8000290c <_ZN3PCBnwEm>
    80002a14:	00050493          	mv	s1,a0
    80002a18:	00200713          	li	a4,2
    80002a1c:	00090693          	mv	a3,s2
    80002a20:	00000613          	li	a2,0
    80002a24:	00009597          	auipc	a1,0x9
    80002a28:	12c5b583          	ld	a1,300(a1) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	de0080e7          	jalr	-544(ra) # 8000280c <_ZN3PCBC1EPFvPvES0_S0_m>
    consolePCB->systemThread = true;
    80002a34:	01348023          	sb	s3,0(s1)
    consolePCB->start();
    80002a38:	00048513          	mv	a0,s1
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	e34080e7          	jalr	-460(ra) # 80002870 <_ZN3PCB5startEv>
    //PCB* idlePCB = new PCB(&Riscv::idleRiscv, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    //idlePCB->start();
    //idlePCB->systemThread = true;
}
    80002a44:	02813083          	ld	ra,40(sp)
    80002a48:	02013403          	ld	s0,32(sp)
    80002a4c:	01813483          	ld	s1,24(sp)
    80002a50:	01013903          	ld	s2,16(sp)
    80002a54:	00813983          	ld	s3,8(sp)
    80002a58:	03010113          	addi	sp,sp,48
    80002a5c:	00008067          	ret

0000000080002a60 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002a60:	ff010113          	addi	sp,sp,-16
    80002a64:	00813423          	sd	s0,8(sp)
    80002a68:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002a6c:	03852503          	lw	a0,56(a0) # 1038 <_entry-0x7fffefc8>
    80002a70:	ffd50513          	addi	a0,a0,-3
}
    80002a74:	00153513          	seqz	a0,a0
    80002a78:	00813403          	ld	s0,8(sp)
    80002a7c:	01010113          	addi	sp,sp,16
    80002a80:	00008067          	ret

0000000080002a84 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00113423          	sd	ra,8(sp)
    80002a8c:	00813023          	sd	s0,0(sp)
    80002a90:	01010413          	addi	s0,sp,16
    Riscv::printString("Exiting thread...\n");
    80002a94:	00006517          	auipc	a0,0x6
    80002a98:	7ac50513          	addi	a0,a0,1964 # 80009240 <CONSOLE_STATUS+0x230>
    80002a9c:	00001097          	auipc	ra,0x1
    80002aa0:	030080e7          	jalr	48(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    PCB::timeSliceCounter = 0;
    80002aa4:	00009797          	auipc	a5,0x9
    80002aa8:	13c78793          	addi	a5,a5,316 # 8000bbe0 <_ZN3PCB7runningE>
    80002aac:	0007b423          	sd	zero,8(a5)
    PCB::running->setState(PCB::FINISHED);
    80002ab0:	0007b783          	ld	a5,0(a5)
    80002ab4:	00300713          	li	a4,3
    80002ab8:	02e7ac23          	sw	a4,56(a5)
    PCB::dispatch();
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	ddc080e7          	jalr	-548(ra) # 80002898 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002ac4:	00000513          	li	a0,0
}
    80002ac8:	00813083          	ld	ra,8(sp)
    80002acc:	00013403          	ld	s0,0(sp)
    80002ad0:	01010113          	addi	sp,sp,16
    80002ad4:	00008067          	ret

0000000080002ad8 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00113423          	sd	ra,8(sp)
    80002ae0:	00813023          	sd	s0,0(sp)
    80002ae4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002ae8:	00009797          	auipc	a5,0x9
    80002aec:	1007b023          	sd	zero,256(a5) # 8000bbe8 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	da8080e7          	jalr	-600(ra) # 80002898 <_ZN3PCB8dispatchEv>
}
    80002af8:	00813083          	ld	ra,8(sp)
    80002afc:	00013403          	ld	s0,0(sp)
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret

0000000080002b08 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002b08:	ff010113          	addi	sp,sp,-16
    80002b0c:	00113423          	sd	ra,8(sp)
    80002b10:	00813023          	sd	s0,0(sp)
    80002b14:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b18:	00058713          	mv	a4,a1
    PCB::timeSliceCounter = 0;
    80002b1c:	00009797          	auipc	a5,0x9
    80002b20:	0c478793          	addi	a5,a5,196 # 8000bbe0 <_ZN3PCB7runningE>
    80002b24:	0007b423          	sd	zero,8(a5)
    PCB::running->setTimeToSleep(time);
    80002b28:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b2c:	00e7bc23          	sd	a4,24(a5)
    SleepPCBList::insertSleepingPCB();
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	604080e7          	jalr	1540(ra) # 80003134 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	d60080e7          	jalr	-672(ra) # 80002898 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002b40:	00000513          	li	a0,0
}
    80002b44:	00813083          	ld	ra,8(sp)
    80002b48:	00013403          	ld	s0,0(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret

0000000080002b54 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002b54:	fd010113          	addi	sp,sp,-48
    80002b58:	02113423          	sd	ra,40(sp)
    80002b5c:	02813023          	sd	s0,32(sp)
    80002b60:	00913c23          	sd	s1,24(sp)
    80002b64:	01213823          	sd	s2,16(sp)
    80002b68:	01313423          	sd	s3,8(sp)
    80002b6c:	01413023          	sd	s4,0(sp)
    80002b70:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b74:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b78:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b7c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002b80:	05000513          	li	a0,80
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	d88080e7          	jalr	-632(ra) # 8000290c <_ZN3PCBnwEm>
    80002b8c:	00050493          	mv	s1,a0
    80002b90:	00200713          	li	a4,2
    80002b94:	00009697          	auipc	a3,0x9
    80002b98:	05c6b683          	ld	a3,92(a3) # 8000bbf0 <_ZN3PCB10savedRegA4E>
    80002b9c:	000a0613          	mv	a2,s4
    80002ba0:	00098593          	mv	a1,s3
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	c68080e7          	jalr	-920(ra) # 8000280c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002bac:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002bb0:	02048a63          	beqz	s1,80002be4 <_ZN3PCB19threadCreateHandlerEv+0x90>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002bb4:	00048513          	mv	a0,s1
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	cb8080e7          	jalr	-840(ra) # 80002870 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002bc0:	00000513          	li	a0,0
    }
}
    80002bc4:	02813083          	ld	ra,40(sp)
    80002bc8:	02013403          	ld	s0,32(sp)
    80002bcc:	01813483          	ld	s1,24(sp)
    80002bd0:	01013903          	ld	s2,16(sp)
    80002bd4:	00813983          	ld	s3,8(sp)
    80002bd8:	00013a03          	ld	s4,0(sp)
    80002bdc:	03010113          	addi	sp,sp,48
    80002be0:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002be4:	fff00513          	li	a0,-1
    80002be8:	fddff06f          	j	80002bc4 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002bec <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002bec:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002bf0:	02050863          	beqz	a0,80002c20 <_ZN3PCB18threadStartHandlerEv+0x34>
{
    80002bf4:	ff010113          	addi	sp,sp,-16
    80002bf8:	00113423          	sd	ra,8(sp)
    80002bfc:	00813023          	sd	s0,0(sp)
    80002c00:	01010413          	addi	s0,sp,16
    {
        pcb->start();
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	c6c080e7          	jalr	-916(ra) # 80002870 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c0c:	00000513          	li	a0,0
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }

}
    80002c10:	00813083          	ld	ra,8(sp)
    80002c14:	00013403          	ld	s0,0(sp)
    80002c18:	01010113          	addi	sp,sp,16
    80002c1c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c20:	fff00513          	li	a0,-1
    80002c24:	00008067          	ret

0000000080002c28 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002c28:	fd010113          	addi	sp,sp,-48
    80002c2c:	02113423          	sd	ra,40(sp)
    80002c30:	02813023          	sd	s0,32(sp)
    80002c34:	00913c23          	sd	s1,24(sp)
    80002c38:	01213823          	sd	s2,16(sp)
    80002c3c:	01313423          	sd	s3,8(sp)
    80002c40:	01413023          	sd	s4,0(sp)
    80002c44:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c48:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c4c:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c50:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c54:	05000513          	li	a0,80
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	cb4080e7          	jalr	-844(ra) # 8000290c <_ZN3PCBnwEm>
    80002c60:	00050493          	mv	s1,a0
    80002c64:	00200713          	li	a4,2
    80002c68:	00009697          	auipc	a3,0x9
    80002c6c:	f886b683          	ld	a3,-120(a3) # 8000bbf0 <_ZN3PCB10savedRegA4E>
    80002c70:	000a0613          	mv	a2,s4
    80002c74:	00098593          	mv	a1,s3
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	b94080e7          	jalr	-1132(ra) # 8000280c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c80:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c84:	02048463          	beqz	s1,80002cac <_ZN3PCB20threadMakePCBHandlerEv+0x84>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002c88:	00000513          	li	a0,0
}
    80002c8c:	02813083          	ld	ra,40(sp)
    80002c90:	02013403          	ld	s0,32(sp)
    80002c94:	01813483          	ld	s1,24(sp)
    80002c98:	01013903          	ld	s2,16(sp)
    80002c9c:	00813983          	ld	s3,8(sp)
    80002ca0:	00013a03          	ld	s4,0(sp)
    80002ca4:	03010113          	addi	sp,sp,48
    80002ca8:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002cac:	fff00513          	li	a0,-1
    80002cb0:	fddff06f          	j	80002c8c <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002cb4 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
int KConsole::cntWInterrupt = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002cb4:	fd010113          	addi	sp,sp,-48
    80002cb8:	02113423          	sd	ra,40(sp)
    80002cbc:	02813023          	sd	s0,32(sp)
    80002cc0:	00913c23          	sd	s1,24(sp)
    80002cc4:	01213823          	sd	s2,16(sp)
    80002cc8:	01313423          	sd	s3,8(sp)
    80002ccc:	03010413          	addi	s0,sp,48
    80002cd0:	00050993          	mv	s3,a0
    80002cd4:	00058913          	mv	s2,a1
    80002cd8:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002cdc:	01000513          	li	a0,16
    80002ce0:	00001097          	auipc	ra,0x1
    80002ce4:	688080e7          	jalr	1672(ra) # 80004368 <_Z7kmallocm>
    newElem->next = 0;
    80002ce8:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002cec:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002cf0:	00093783          	ld	a5,0(s2)
    80002cf4:	02078663          	beqz	a5,80002d20 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002cf8:	0004b783          	ld	a5,0(s1)
    80002cfc:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002d00:	00a4b023          	sd	a0,0(s1)
    }
}
    80002d04:	02813083          	ld	ra,40(sp)
    80002d08:	02013403          	ld	s0,32(sp)
    80002d0c:	01813483          	ld	s1,24(sp)
    80002d10:	01013903          	ld	s2,16(sp)
    80002d14:	00813983          	ld	s3,8(sp)
    80002d18:	03010113          	addi	sp,sp,48
    80002d1c:	00008067          	ret
        head = tail = newElem;
    80002d20:	00a4b023          	sd	a0,0(s1)
    80002d24:	00a93023          	sd	a0,0(s2)
    80002d28:	fddff06f          	j	80002d04 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002d2c <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002d2c:	fe010113          	addi	sp,sp,-32
    80002d30:	00113c23          	sd	ra,24(sp)
    80002d34:	00813823          	sd	s0,16(sp)
    80002d38:	00913423          	sd	s1,8(sp)
    80002d3c:	02010413          	addi	s0,sp,32
    80002d40:	00050793          	mv	a5,a0
    if(head == 0)
    80002d44:	00053503          	ld	a0,0(a0)
    80002d48:	02050e63          	beqz	a0,80002d84 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002d4c:	00053703          	ld	a4,0(a0)
    80002d50:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002d54:	02070463          	beqz	a4,80002d7c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002d58:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002d5c:	00001097          	auipc	ra,0x1
    80002d60:	668080e7          	jalr	1640(ra) # 800043c4 <_Z5kfreePv>
    return c;
}
    80002d64:	00048513          	mv	a0,s1
    80002d68:	01813083          	ld	ra,24(sp)
    80002d6c:	01013403          	ld	s0,16(sp)
    80002d70:	00813483          	ld	s1,8(sp)
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00008067          	ret
        tail = 0;
    80002d7c:	0005b023          	sd	zero,0(a1)
    80002d80:	fd9ff06f          	j	80002d58 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002d84:	00000493          	li	s1,0
    80002d88:	fddff06f          	j	80002d64 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002d8c <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002d8c:	fe010113          	addi	sp,sp,-32
    80002d90:	00113c23          	sd	ra,24(sp)
    80002d94:	00813823          	sd	s0,16(sp)
    80002d98:	00913423          	sd	s1,8(sp)
    80002d9c:	01213023          	sd	s2,0(sp)
    80002da0:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002da4:	01800513          	li	a0,24
    80002da8:	00002097          	auipc	ra,0x2
    80002dac:	8c4080e7          	jalr	-1852(ra) # 8000466c <_ZN10KSemaphorenwEm>
    80002db0:	00050493          	mv	s1,a0
    80002db4:	00000593          	li	a1,0
    80002db8:	00001097          	auipc	ra,0x1
    80002dbc:	664080e7          	jalr	1636(ra) # 8000441c <_ZN10KSemaphoreC1Ei>
    80002dc0:	00009797          	auipc	a5,0x9
    80002dc4:	e297bc23          	sd	s1,-456(a5) # 8000bbf8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002dc8:	01800513          	li	a0,24
    80002dcc:	00002097          	auipc	ra,0x2
    80002dd0:	8a0080e7          	jalr	-1888(ra) # 8000466c <_ZN10KSemaphorenwEm>
    80002dd4:	00050493          	mv	s1,a0
    80002dd8:	00000593          	li	a1,0
    80002ddc:	00001097          	auipc	ra,0x1
    80002de0:	640080e7          	jalr	1600(ra) # 8000441c <_ZN10KSemaphoreC1Ei>
    80002de4:	00009797          	auipc	a5,0x9
    80002de8:	e097be23          	sd	s1,-484(a5) # 8000bc00 <_ZN8KConsole19hasCharactersOutputE>
}
    80002dec:	01813083          	ld	ra,24(sp)
    80002df0:	01013403          	ld	s0,16(sp)
    80002df4:	00813483          	ld	s1,8(sp)
    80002df8:	00013903          	ld	s2,0(sp)
    80002dfc:	02010113          	addi	sp,sp,32
    80002e00:	00008067          	ret
    80002e04:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002e08:	00048513          	mv	a0,s1
    80002e0c:	00002097          	auipc	ra,0x2
    80002e10:	8f8080e7          	jalr	-1800(ra) # 80004704 <_ZN10KSemaphoredlEPv>
    80002e14:	00090513          	mv	a0,s2
    80002e18:	0000a097          	auipc	ra,0xa
    80002e1c:	f40080e7          	jalr	-192(ra) # 8000cd58 <_Unwind_Resume>
    80002e20:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e24:	00048513          	mv	a0,s1
    80002e28:	00002097          	auipc	ra,0x2
    80002e2c:	8dc080e7          	jalr	-1828(ra) # 80004704 <_ZN10KSemaphoredlEPv>
    80002e30:	00090513          	mv	a0,s2
    80002e34:	0000a097          	auipc	ra,0xa
    80002e38:	f24080e7          	jalr	-220(ra) # 8000cd58 <_Unwind_Resume>

0000000080002e3c <_ZN8KConsole17putCharacterInputEc>:
            }
    }
}

void KConsole::putCharacterInput(char c)
{
    80002e3c:	ff010113          	addi	sp,sp,-16
    80002e40:	00113423          	sd	ra,8(sp)
    80002e44:	00813023          	sd	s0,0(sp)
    80002e48:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002e4c:	00009617          	auipc	a2,0x9
    80002e50:	dbc60613          	addi	a2,a2,-580 # 8000bc08 <_ZN8KConsole9tailInputE>
    80002e54:	00009597          	auipc	a1,0x9
    80002e58:	dbc58593          	addi	a1,a1,-580 # 8000bc10 <_ZN8KConsole9headInputE>
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	e58080e7          	jalr	-424(ra) # 80002cb4 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002e64:	00009517          	auipc	a0,0x9
    80002e68:	d9453503          	ld	a0,-620(a0) # 8000bbf8 <_ZN8KConsole18hasCharactersInputE>
    80002e6c:	00001097          	auipc	ra,0x1
    80002e70:	7b8080e7          	jalr	1976(ra) # 80004624 <_ZN10KSemaphore6signalEv>
}
    80002e74:	00813083          	ld	ra,8(sp)
    80002e78:	00013403          	ld	s0,0(sp)
    80002e7c:	01010113          	addi	sp,sp,16
    80002e80:	00008067          	ret

0000000080002e84 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00113423          	sd	ra,8(sp)
    80002e8c:	00813023          	sd	s0,0(sp)
    80002e90:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002e94:	00009517          	auipc	a0,0x9
    80002e98:	d6453503          	ld	a0,-668(a0) # 8000bbf8 <_ZN8KConsole18hasCharactersInputE>
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	628080e7          	jalr	1576(ra) # 800044c4 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002ea4:	00009597          	auipc	a1,0x9
    80002ea8:	d6458593          	addi	a1,a1,-668 # 8000bc08 <_ZN8KConsole9tailInputE>
    80002eac:	00009517          	auipc	a0,0x9
    80002eb0:	d6450513          	addi	a0,a0,-668 # 8000bc10 <_ZN8KConsole9headInputE>
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	e78080e7          	jalr	-392(ra) # 80002d2c <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002ebc:	00813083          	ld	ra,8(sp)
    80002ec0:	00013403          	ld	s0,0(sp)
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00008067          	ret

0000000080002ecc <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002ecc:	ff010113          	addi	sp,sp,-16
    80002ed0:	00113423          	sd	ra,8(sp)
    80002ed4:	00813023          	sd	s0,0(sp)
    80002ed8:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002edc:	00009617          	auipc	a2,0x9
    80002ee0:	d3c60613          	addi	a2,a2,-708 # 8000bc18 <_ZN8KConsole10tailOutputE>
    80002ee4:	00009597          	auipc	a1,0x9
    80002ee8:	d3c58593          	addi	a1,a1,-708 # 8000bc20 <_ZN8KConsole10headOutputE>
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	dc8080e7          	jalr	-568(ra) # 80002cb4 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002ef4:	00009517          	auipc	a0,0x9
    80002ef8:	d0c53503          	ld	a0,-756(a0) # 8000bc00 <_ZN8KConsole19hasCharactersOutputE>
    80002efc:	00001097          	auipc	ra,0x1
    80002f00:	728080e7          	jalr	1832(ra) # 80004624 <_ZN10KSemaphore6signalEv>
}
    80002f04:	00813083          	ld	ra,8(sp)
    80002f08:	00013403          	ld	s0,0(sp)
    80002f0c:	01010113          	addi	sp,sp,16
    80002f10:	00008067          	ret

0000000080002f14 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002f14:	00009797          	auipc	a5,0x9
    80002f18:	c0c7b783          	ld	a5,-1012(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f1c:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002f20:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002f24:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002f28:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002f2c:	0017f793          	andi	a5,a5,1
    80002f30:	08078063          	beqz	a5,80002fb0 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002f34:	fe010113          	addi	sp,sp,-32
    80002f38:	00113c23          	sd	ra,24(sp)
    80002f3c:	00813823          	sd	s0,16(sp)
    80002f40:	00913423          	sd	s1,8(sp)
    80002f44:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002f48:	00009797          	auipc	a5,0x9
    80002f4c:	bf07b783          	ld	a5,-1040(a5) # 8000bb38 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f50:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002f54:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002f58:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002f5c:	00058493          	mv	s1,a1
    80002f60:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002f64:	00048513          	mv	a0,s1
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	ed4080e7          	jalr	-300(ra) # 80002e3c <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002f70:	00048513          	mv	a0,s1
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	f58080e7          	jalr	-168(ra) # 80002ecc <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002f7c:	00009797          	auipc	a5,0x9
    80002f80:	ba47b783          	ld	a5,-1116(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f84:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002f88:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002f8c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002f90:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002f94:	0017f793          	andi	a5,a5,1
    80002f98:	fa0798e3          	bnez	a5,80002f48 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002f9c:	01813083          	ld	ra,24(sp)
    80002fa0:	01013403          	ld	s0,16(sp)
    80002fa4:	00813483          	ld	s1,8(sp)
    80002fa8:	02010113          	addi	sp,sp,32
    80002fac:	00008067          	ret
    80002fb0:	00008067          	ret

0000000080002fb4 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00113423          	sd	ra,8(sp)
    80002fbc:	00813023          	sd	s0,0(sp)
    80002fc0:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002fc4:	00009517          	auipc	a0,0x9
    80002fc8:	c3c53503          	ld	a0,-964(a0) # 8000bc00 <_ZN8KConsole19hasCharactersOutputE>
    80002fcc:	00001097          	auipc	ra,0x1
    80002fd0:	4f8080e7          	jalr	1272(ra) # 800044c4 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002fd4:	00009597          	auipc	a1,0x9
    80002fd8:	c4458593          	addi	a1,a1,-956 # 8000bc18 <_ZN8KConsole10tailOutputE>
    80002fdc:	00009517          	auipc	a0,0x9
    80002fe0:	c4450513          	addi	a0,a0,-956 # 8000bc20 <_ZN8KConsole10headOutputE>
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	d48080e7          	jalr	-696(ra) # 80002d2c <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002fec:	00813083          	ld	ra,8(sp)
    80002ff0:	00013403          	ld	s0,0(sp)
    80002ff4:	01010113          	addi	sp,sp,16
    80002ff8:	00008067          	ret

0000000080002ffc <_ZN8KConsole23sendCharactersToConsoleEPv>:
            uint64 x = CONSOLE_STATUS;
    80002ffc:	00009797          	auipc	a5,0x9
    80003000:	b247b783          	ld	a5,-1244(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003004:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003008:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    8000300c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003010:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    80003014:	0207f793          	andi	a5,a5,32
    80003018:	fe0782e3          	beqz	a5,80002ffc <_ZN8KConsole23sendCharactersToConsoleEPv>
{
    8000301c:	fe010113          	addi	sp,sp,-32
    80003020:	00113c23          	sd	ra,24(sp)
    80003024:	00813823          	sd	s0,16(sp)
    80003028:	02010413          	addi	s0,sp,32
                char volatile c = getCharacterOutput();
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	f88080e7          	jalr	-120(ra) # 80002fb4 <_ZN8KConsole18getCharacterOutputEv>
    80003034:	fea407a3          	sb	a0,-17(s0)
                x = CONSOLE_RX_DATA;
    80003038:	00009797          	auipc	a5,0x9
    8000303c:	ae07b783          	ld	a5,-1312(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003040:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003044:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80003048:	fef44783          	lbu	a5,-17(s0)
    8000304c:	0ff7f793          	andi	a5,a5,255
    80003050:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80003054:	00b50023          	sb	a1,0(a0)
            uint64 x = CONSOLE_STATUS;
    80003058:	00009797          	auipc	a5,0x9
    8000305c:	ac87b783          	ld	a5,-1336(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003060:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003064:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003068:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    8000306c:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    80003070:	0207f793          	andi	a5,a5,32
    80003074:	fe0782e3          	beqz	a5,80003058 <_ZN8KConsole23sendCharactersToConsoleEPv+0x5c>
    80003078:	fb5ff06f          	j	8000302c <_ZN8KConsole23sendCharactersToConsoleEPv+0x30>

000000008000307c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    8000307c:	ff010113          	addi	sp,sp,-16
    80003080:	00113423          	sd	ra,8(sp)
    80003084:	00813023          	sd	s0,0(sp)
    80003088:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    8000308c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80003090:	0ff57513          	andi	a0,a0,255
    80003094:	00000097          	auipc	ra,0x0
    80003098:	e38080e7          	jalr	-456(ra) # 80002ecc <_ZN8KConsole18putCharacterOutputEc>
    Elem* curr = headOutput;
    8000309c:	00009797          	auipc	a5,0x9
    800030a0:	b847b783          	ld	a5,-1148(a5) # 8000bc20 <_ZN8KConsole10headOutputE>
    while(curr != 0)
    800030a4:	00078663          	beqz	a5,800030b0 <_ZN8KConsole11putcHandlerEv+0x34>
    {
        curr = curr->next;
    800030a8:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800030ac:	ff9ff06f          	j	800030a4 <_ZN8KConsole11putcHandlerEv+0x28>
    }
}
    800030b0:	00813083          	ld	ra,8(sp)
    800030b4:	00013403          	ld	s0,0(sp)
    800030b8:	01010113          	addi	sp,sp,16
    800030bc:	00008067          	ret

00000000800030c0 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030c0:	ff010113          	addi	sp,sp,-16
    800030c4:	00113423          	sd	ra,8(sp)
    800030c8:	00813023          	sd	s0,0(sp)
    800030cc:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterInput();
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	db4080e7          	jalr	-588(ra) # 80002e84 <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800030d8:	00050513          	mv	a0,a0
}
    800030dc:	00813083          	ld	ra,8(sp)
    800030e0:	00013403          	ld	s0,0(sp)
    800030e4:	01010113          	addi	sp,sp,16
    800030e8:	00008067          	ret

00000000800030ec <_ZN8KConsole11printBufferEv>:

void KConsole::printBuffer()
{
    800030ec:	fe010113          	addi	sp,sp,-32
    800030f0:	00113c23          	sd	ra,24(sp)
    800030f4:	00813823          	sd	s0,16(sp)
    800030f8:	00913423          	sd	s1,8(sp)
    800030fc:	02010413          	addi	s0,sp,32
    Elem* curr = headInput;
    80003100:	00009497          	auipc	s1,0x9
    80003104:	b104b483          	ld	s1,-1264(s1) # 8000bc10 <_ZN8KConsole9headInputE>
    while(curr != 0)
    80003108:	00048c63          	beqz	s1,80003120 <_ZN8KConsole11printBufferEv+0x34>
    {
        putc(curr->data);
    8000310c:	0084c503          	lbu	a0,8(s1)
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	418080e7          	jalr	1048(ra) # 80001528 <putc>
        curr = curr->next;
    80003118:	0004b483          	ld	s1,0(s1)
    while(curr != 0)
    8000311c:	fedff06f          	j	80003108 <_ZN8KConsole11printBufferEv+0x1c>
    }
}
    80003120:	01813083          	ld	ra,24(sp)
    80003124:	01013403          	ld	s0,16(sp)
    80003128:	00813483          	ld	s1,8(sp)
    8000312c:	02010113          	addi	sp,sp,32
    80003130:	00008067          	ret

0000000080003134 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00813423          	sd	s0,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003140:	00009797          	auipc	a5,0x9
    80003144:	a187b783          	ld	a5,-1512(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003148:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    8000314c:	00500793          	li	a5,5
    80003150:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003154:	00009797          	auipc	a5,0x9
    80003158:	adc7b783          	ld	a5,-1316(a5) # 8000bc30 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    8000315c:	00000593          	li	a1,0
    while(curr != 0)
    80003160:	02078063          	beqz	a5,80003180 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003164:	01863683          	ld	a3,24(a2)
    80003168:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    8000316c:	00e6e863          	bltu	a3,a4,8000317c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003170:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003174:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003178:	fe9ff06f          	j	80003160 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000317c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003180:	02058263          	beqz	a1,800031a4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80003184:	01863783          	ld	a5,24(a2)
    80003188:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    8000318c:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003190:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80003194:	00c5b423          	sd	a2,8(a1)
    }
}
    80003198:	00813403          	ld	s0,8(sp)
    8000319c:	01010113          	addi	sp,sp,16
    800031a0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800031a4:	00009797          	auipc	a5,0x9
    800031a8:	a8c7b623          	sd	a2,-1396(a5) # 8000bc30 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800031ac:	00863783          	ld	a5,8(a2)
    800031b0:	fe0784e3          	beqz	a5,80003198 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031b4:	0187b703          	ld	a4,24(a5)
    800031b8:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    800031bc:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800031c0:	00e7bc23          	sd	a4,24(a5)
    800031c4:	fd5ff06f          	j	80003198 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

00000000800031c8 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800031c8:	00009517          	auipc	a0,0x9
    800031cc:	a6853503          	ld	a0,-1432(a0) # 8000bc30 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800031d0:	08050863          	beqz	a0,80003260 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031d4:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    800031d8:	00100713          	li	a4,1
    800031dc:	00e78863          	beq	a5,a4,800031ec <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    800031e0:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800031e4:	00f53c23          	sd	a5,24(a0)
    800031e8:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    800031ec:	06050a63          	beqz	a0,80003260 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    800031f0:	00009797          	auipc	a5,0x9
    800031f4:	a407b783          	ld	a5,-1472(a5) # 8000bc30 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800031f8:	00a78663          	beq	a5,a0,80003204 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031fc:	01853783          	ld	a5,24(a0)
    80003200:	06079063          	bnez	a5,80003260 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80003204:	fe010113          	addi	sp,sp,-32
    80003208:	00113c23          	sd	ra,24(sp)
    8000320c:	00813823          	sd	s0,16(sp)
    80003210:	00913423          	sd	s1,8(sp)
    80003214:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80003218:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    8000321c:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80003220:	00000097          	auipc	ra,0x0
    80003224:	258080e7          	jalr	600(ra) # 80003478 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80003228:	00009797          	auipc	a5,0x9
    8000322c:	a097b423          	sd	s1,-1528(a5) # 8000bc30 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80003230:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80003234:	00048c63          	beqz	s1,8000324c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003238:	00009797          	auipc	a5,0x9
    8000323c:	9f87b783          	ld	a5,-1544(a5) # 8000bc30 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003240:	fc978ce3          	beq	a5,s1,80003218 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003244:	0184b783          	ld	a5,24(s1)
    80003248:	fc0788e3          	beqz	a5,80003218 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    8000324c:	01813083          	ld	ra,24(sp)
    80003250:	01013403          	ld	s0,16(sp)
    80003254:	00813483          	ld	s1,8(sp)
    80003258:	02010113          	addi	sp,sp,32
    8000325c:	00008067          	ret
    80003260:	00008067          	ret

0000000080003264 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003264:	fe010113          	addi	sp,sp,-32
    80003268:	00113c23          	sd	ra,24(sp)
    8000326c:	00813823          	sd	s0,16(sp)
    80003270:	00913423          	sd	s1,8(sp)
    80003274:	01213023          	sd	s2,0(sp)
    80003278:	02010413          	addi	s0,sp,32
    8000327c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80003280:	00053503          	ld	a0,0(a0)
    80003284:	00853903          	ld	s2,8(a0)
    kfree(first);
    80003288:	00001097          	auipc	ra,0x1
    8000328c:	13c080e7          	jalr	316(ra) # 800043c4 <_Z5kfreePv>
    first = newFirst;
    80003290:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80003294:	00090e63          	beqz	s2,800032b0 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003298:	01813083          	ld	ra,24(sp)
    8000329c:	01013403          	ld	s0,16(sp)
    800032a0:	00813483          	ld	s1,8(sp)
    800032a4:	00013903          	ld	s2,0(sp)
    800032a8:	02010113          	addi	sp,sp,32
    800032ac:	00008067          	ret
        first = last = 0;
    800032b0:	0004b423          	sd	zero,8(s1)
    800032b4:	0004b023          	sd	zero,0(s1)
}
    800032b8:	fe1ff06f          	j	80003298 <_ZN5Queue3popEv+0x34>

00000000800032bc <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    800032bc:	fe010113          	addi	sp,sp,-32
    800032c0:	00113c23          	sd	ra,24(sp)
    800032c4:	00813823          	sd	s0,16(sp)
    800032c8:	00913423          	sd	s1,8(sp)
    800032cc:	01213023          	sd	s2,0(sp)
    800032d0:	02010413          	addi	s0,sp,32
    800032d4:	00050493          	mv	s1,a0
    800032d8:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800032dc:	01000513          	li	a0,16
    800032e0:	00001097          	auipc	ra,0x1
    800032e4:	088080e7          	jalr	136(ra) # 80004368 <_Z7kmallocm>
    newElem->data = t;
    800032e8:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800032ec:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800032f0:	0004b783          	ld	a5,0(s1)
    800032f4:	02078463          	beqz	a5,8000331c <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800032f8:	0084b783          	ld	a5,8(s1)
    800032fc:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80003300:	00a4b423          	sd	a0,8(s1)
    }
}
    80003304:	01813083          	ld	ra,24(sp)
    80003308:	01013403          	ld	s0,16(sp)
    8000330c:	00813483          	ld	s1,8(sp)
    80003310:	00013903          	ld	s2,0(sp)
    80003314:	02010113          	addi	sp,sp,32
    80003318:	00008067          	ret
        first = newElem;
    8000331c:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80003320:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003324:	00053423          	sd	zero,8(a0)
    80003328:	0004b783          	ld	a5,0(s1)
    8000332c:	0007b423          	sd	zero,8(a5)
    80003330:	fd5ff06f          	j	80003304 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003334 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00813423          	sd	s0,8(sp)
    8000333c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003340:	00053503          	ld	a0,0(a0)
    80003344:	00050463          	beqz	a0,8000334c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003348:	00053503          	ld	a0,0(a0)
}
    8000334c:	00813403          	ld	s0,8(sp)
    80003350:	01010113          	addi	sp,sp,16
    80003354:	00008067          	ret

0000000080003358 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00813423          	sd	s0,8(sp)
    80003360:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    80003364:	00053423          	sd	zero,8(a0)
    80003368:	00053023          	sd	zero,0(a0)
}
    8000336c:	00813403          	ld	s0,8(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003378:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    8000337c:	04050063          	beqz	a0,800033bc <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    80003380:	fe010113          	addi	sp,sp,-32
    80003384:	00113c23          	sd	ra,24(sp)
    80003388:	00813823          	sd	s0,16(sp)
    8000338c:	00913423          	sd	s1,8(sp)
    80003390:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003394:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003398:	00001097          	auipc	ra,0x1
    8000339c:	02c080e7          	jalr	44(ra) # 800043c4 <_Z5kfreePv>
        curr = curr->next;
    800033a0:	00048513          	mv	a0,s1
    while(curr != 0)
    800033a4:	fe0498e3          	bnez	s1,80003394 <_ZN5QueueD1Ev+0x1c>
    }
}
    800033a8:	01813083          	ld	ra,24(sp)
    800033ac:	01013403          	ld	s0,16(sp)
    800033b0:	00813483          	ld	s1,8(sp)
    800033b4:	02010113          	addi	sp,sp,32
    800033b8:	00008067          	ret
    800033bc:	00008067          	ret

00000000800033c0 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800033cc:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800033d0:	00000513          	li	a0,0
    while(curr != 0)
    800033d4:	00078863          	beqz	a5,800033e4 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800033d8:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800033dc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800033e0:	ff5ff06f          	j	800033d4 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800033e4:	00813403          	ld	s0,8(sp)
    800033e8:	01010113          	addi	sp,sp,16
    800033ec:	00008067          	ret

00000000800033f0 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800033f0:	ff010113          	addi	sp,sp,-16
    800033f4:	00113423          	sd	ra,8(sp)
    800033f8:	00813023          	sd	s0,0(sp)
    800033fc:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003400:	00001097          	auipc	ra,0x1
    80003404:	f68080e7          	jalr	-152(ra) # 80004368 <_Z7kmallocm>
}
    80003408:	00813083          	ld	ra,8(sp)
    8000340c:	00013403          	ld	s0,0(sp)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret

0000000080003418 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00113423          	sd	ra,8(sp)
    80003420:	00813023          	sd	s0,0(sp)
    80003424:	01010413          	addi	s0,sp,16
    kfree(p);
    80003428:	00001097          	auipc	ra,0x1
    8000342c:	f9c080e7          	jalr	-100(ra) # 800043c4 <_Z5kfreePv>
}
    80003430:	00813083          	ld	ra,8(sp)
    80003434:	00013403          	ld	s0,0(sp)
    80003438:	01010113          	addi	sp,sp,16
    8000343c:	00008067          	ret

0000000080003440 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003440:	ff010113          	addi	sp,sp,-16
    80003444:	00813423          	sd	s0,8(sp)
    80003448:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000344c:	00008797          	auipc	a5,0x8
    80003450:	7ec7b783          	ld	a5,2028(a5) # 8000bc38 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003454:	00000513          	li	a0,0
    while(curr != 0)
    80003458:	00078863          	beqz	a5,80003468 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000345c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003460:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003464:	ff5ff06f          	j	80003458 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003468:	0005051b          	sext.w	a0,a0
    8000346c:	00813403          	ld	s0,8(sp)
    80003470:	01010113          	addi	sp,sp,16
    80003474:	00008067          	ret

0000000080003478 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00813423          	sd	s0,8(sp)
    80003480:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003484:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003488:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    8000348c:	00008797          	auipc	a5,0x8
    80003490:	7ac7b783          	ld	a5,1964(a5) # 8000bc38 <_ZN9Scheduler16schedulerPCBHeadE>
    80003494:	02078263          	beqz	a5,800034b8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003498:	00008797          	auipc	a5,0x8
    8000349c:	7a078793          	addi	a5,a5,1952 # 8000bc38 <_ZN9Scheduler16schedulerPCBHeadE>
    800034a0:	0087b703          	ld	a4,8(a5)
    800034a4:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800034a8:	00a7b423          	sd	a0,8(a5)
    }
}
    800034ac:	00813403          	ld	s0,8(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800034b8:	00008797          	auipc	a5,0x8
    800034bc:	78078793          	addi	a5,a5,1920 # 8000bc38 <_ZN9Scheduler16schedulerPCBHeadE>
    800034c0:	00a7b423          	sd	a0,8(a5)
    800034c4:	00a7b023          	sd	a0,0(a5)
    800034c8:	fe5ff06f          	j	800034ac <_ZN9Scheduler3putEP3PCB+0x34>

00000000800034cc <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800034cc:	ff010113          	addi	sp,sp,-16
    800034d0:	00813423          	sd	s0,8(sp)
    800034d4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800034d8:	00008517          	auipc	a0,0x8
    800034dc:	76053503          	ld	a0,1888(a0) # 8000bc38 <_ZN9Scheduler16schedulerPCBHeadE>
    800034e0:	00050c63          	beqz	a0,800034f8 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800034e4:	00853783          	ld	a5,8(a0)
    800034e8:	00078e63          	beqz	a5,80003504 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800034ec:	00008717          	auipc	a4,0x8
    800034f0:	74f73623          	sd	a5,1868(a4) # 8000bc38 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800034f4:	00053423          	sd	zero,8(a0)
    return retval;
}
    800034f8:	00813403          	ld	s0,8(sp)
    800034fc:	01010113          	addi	sp,sp,16
    80003500:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003504:	00008797          	auipc	a5,0x8
    80003508:	73478793          	addi	a5,a5,1844 # 8000bc38 <_ZN9Scheduler16schedulerPCBHeadE>
    8000350c:	0007b423          	sd	zero,8(a5)
    80003510:	0007b023          	sd	zero,0(a5)
    80003514:	fe1ff06f          	j	800034f4 <_ZN9Scheduler3getEv+0x28>

0000000080003518 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    80003518:	fe010113          	addi	sp,sp,-32
    8000351c:	00113c23          	sd	ra,24(sp)
    80003520:	00813823          	sd	s0,16(sp)
    80003524:	00913423          	sd	s1,8(sp)
    80003528:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    8000352c:	00006517          	auipc	a0,0x6
    80003530:	d2c50513          	addi	a0,a0,-724 # 80009258 <CONSOLE_STATUS+0x248>
    80003534:	00000097          	auipc	ra,0x0
    80003538:	598080e7          	jalr	1432(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    8000353c:	00008497          	auipc	s1,0x8
    80003540:	6fc4b483          	ld	s1,1788(s1) # 8000bc38 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003544:	02048863          	beqz	s1,80003574 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    80003548:	00000613          	li	a2,0
    8000354c:	01000593          	li	a1,16
    80003550:	0004851b          	sext.w	a0,s1
    80003554:	00003097          	auipc	ra,0x3
    80003558:	898080e7          	jalr	-1896(ra) # 80005dec <_Z8printIntiii>
        Riscv::printString("\n");
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	ba450513          	addi	a0,a0,-1116 # 80009100 <CONSOLE_STATUS+0xf0>
    80003564:	00000097          	auipc	ra,0x0
    80003568:	568080e7          	jalr	1384(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        curr = curr->nextPCB;
    8000356c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003570:	fd5ff06f          	j	80003544 <_ZN9Scheduler5printEv+0x2c>
    }
}
    80003574:	01813083          	ld	ra,24(sp)
    80003578:	01013403          	ld	s0,16(sp)
    8000357c:	00813483          	ld	s1,8(sp)
    80003580:	02010113          	addi	sp,sp,32
    80003584:	00008067          	ret

0000000080003588 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00113423          	sd	ra,8(sp)
    80003590:	00813023          	sd	s0,0(sp)
    80003594:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003598:	00001097          	auipc	ra,0x1
    8000359c:	8ec080e7          	jalr	-1812(ra) # 80003e84 <_ZN5Riscv10kernelMainEv>
    800035a0:	00813083          	ld	ra,8(sp)
    800035a4:	00013403          	ld	s0,0(sp)
    800035a8:	01010113          	addi	sp,sp,16
    800035ac:	00008067          	ret

00000000800035b0 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread()
    800035b0:	ff010113          	addi	sp,sp,-16
    800035b4:	00113423          	sd	ra,8(sp)
    800035b8:	00813023          	sd	s0,0(sp)
    800035bc:	01010413          	addi	s0,sp,16
    800035c0:	00008797          	auipc	a5,0x8
    800035c4:	47878793          	addi	a5,a5,1144 # 8000ba38 <_ZTV6Thread+0x10>
    800035c8:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    800035cc:	00853503          	ld	a0,8(a0)
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	ca8080e7          	jalr	-856(ra) # 80001278 <mem_free>
}
    800035d8:	00813083          	ld	ra,8(sp)
    800035dc:	00013403          	ld	s0,0(sp)
    800035e0:	01010113          	addi	sp,sp,16
    800035e4:	00008067          	ret

00000000800035e8 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800035e8:	ff010113          	addi	sp,sp,-16
    800035ec:	00113423          	sd	ra,8(sp)
    800035f0:	00813023          	sd	s0,0(sp)
    800035f4:	01010413          	addi	s0,sp,16
    800035f8:	00008797          	auipc	a5,0x8
    800035fc:	46878793          	addi	a5,a5,1128 # 8000ba60 <_ZTV9Semaphore+0x10>
    80003600:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003604:	00853503          	ld	a0,8(a0)
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	c70080e7          	jalr	-912(ra) # 80001278 <mem_free>
}
    80003610:	00813083          	ld	ra,8(sp)
    80003614:	00013403          	ld	s0,0(sp)
    80003618:	01010113          	addi	sp,sp,16
    8000361c:	00008067          	ret

0000000080003620 <_ZN6Thread6runnerEPv>:
{
    80003620:	fe010113          	addi	sp,sp,-32
    80003624:	00113c23          	sd	ra,24(sp)
    80003628:	00813823          	sd	s0,16(sp)
    8000362c:	00913423          	sd	s1,8(sp)
    80003630:	02010413          	addi	s0,sp,32
    80003634:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80003638:	00006517          	auipc	a0,0x6
    8000363c:	c3850513          	addi	a0,a0,-968 # 80009270 <CONSOLE_STATUS+0x260>
    80003640:	00000097          	auipc	ra,0x0
    80003644:	48c080e7          	jalr	1164(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    thr->run();
    80003648:	0004b783          	ld	a5,0(s1)
    8000364c:	0107b783          	ld	a5,16(a5)
    80003650:	00048513          	mv	a0,s1
    80003654:	000780e7          	jalr	a5
}
    80003658:	01813083          	ld	ra,24(sp)
    8000365c:	01013403          	ld	s0,16(sp)
    80003660:	00813483          	ld	s1,8(sp)
    80003664:	02010113          	addi	sp,sp,32
    80003668:	00008067          	ret

000000008000366c <_Znwm>:
{
    8000366c:	ff010113          	addi	sp,sp,-16
    80003670:	00113423          	sd	ra,8(sp)
    80003674:	00813023          	sd	s0,0(sp)
    80003678:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	bcc080e7          	jalr	-1076(ra) # 80001248 <mem_alloc>
}
    80003684:	00813083          	ld	ra,8(sp)
    80003688:	00013403          	ld	s0,0(sp)
    8000368c:	01010113          	addi	sp,sp,16
    80003690:	00008067          	ret

0000000080003694 <_ZdlPv>:
{
    80003694:	ff010113          	addi	sp,sp,-16
    80003698:	00113423          	sd	ra,8(sp)
    8000369c:	00813023          	sd	s0,0(sp)
    800036a0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	bd4080e7          	jalr	-1068(ra) # 80001278 <mem_free>
}
    800036ac:	00813083          	ld	ra,8(sp)
    800036b0:	00013403          	ld	s0,0(sp)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	02010413          	addi	s0,sp,32
    800036d0:	00050493          	mv	s1,a0
}
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	edc080e7          	jalr	-292(ra) # 800035b0 <_ZN6ThreadD1Ev>
    800036dc:	00048513          	mv	a0,s1
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	fb4080e7          	jalr	-76(ra) # 80003694 <_ZdlPv>
    800036e8:	01813083          	ld	ra,24(sp)
    800036ec:	01013403          	ld	s0,16(sp)
    800036f0:	00813483          	ld	s1,8(sp)
    800036f4:	02010113          	addi	sp,sp,32
    800036f8:	00008067          	ret

00000000800036fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00113c23          	sd	ra,24(sp)
    80003704:	00813823          	sd	s0,16(sp)
    80003708:	00913423          	sd	s1,8(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	00050493          	mv	s1,a0
}
    80003714:	00000097          	auipc	ra,0x0
    80003718:	ed4080e7          	jalr	-300(ra) # 800035e8 <_ZN9SemaphoreD1Ev>
    8000371c:	00048513          	mv	a0,s1
    80003720:	00000097          	auipc	ra,0x0
    80003724:	f74080e7          	jalr	-140(ra) # 80003694 <_ZdlPv>
    80003728:	01813083          	ld	ra,24(sp)
    8000372c:	01013403          	ld	s0,16(sp)
    80003730:	00813483          	ld	s1,8(sp)
    80003734:	02010113          	addi	sp,sp,32
    80003738:	00008067          	ret

000000008000373c <_ZN6Thread5startEv>:
    if(myHandle != 0)
    8000373c:	00853503          	ld	a0,8(a0)
    80003740:	02050663          	beqz	a0,8000376c <_ZN6Thread5startEv+0x30>
{
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00113423          	sd	ra,8(sp)
    8000374c:	00813023          	sd	s0,0(sp)
    80003750:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	d00080e7          	jalr	-768(ra) # 80001454 <thread_start>
}
    8000375c:	00813083          	ld	ra,8(sp)
    80003760:	00013403          	ld	s0,0(sp)
    80003764:	01010113          	addi	sp,sp,16
    80003768:	00008067          	ret
        return -1;
    8000376c:	fff00513          	li	a0,-1
}
    80003770:	00008067          	ret

0000000080003774 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003774:	ff010113          	addi	sp,sp,-16
    80003778:	00113423          	sd	ra,8(sp)
    8000377c:	00813023          	sd	s0,0(sp)
    80003780:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003784:	ffffe097          	auipc	ra,0xffffe
    80003788:	ba0080e7          	jalr	-1120(ra) # 80001324 <thread_dispatch>
}
    8000378c:	00813083          	ld	ra,8(sp)
    80003790:	00013403          	ld	s0,0(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN6Thread5sleepEm>:
{
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00113423          	sd	ra,8(sp)
    800037a4:	00813023          	sd	s0,0(sp)
    800037a8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	c7c080e7          	jalr	-900(ra) # 80001428 <time_sleep>
}
    800037b4:	00813083          	ld	ra,8(sp)
    800037b8:	00013403          	ld	s0,0(sp)
    800037bc:	01010113          	addi	sp,sp,16
    800037c0:	00008067          	ret

00000000800037c4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800037c4:	fe010113          	addi	sp,sp,-32
    800037c8:	00113c23          	sd	ra,24(sp)
    800037cc:	00813823          	sd	s0,16(sp)
    800037d0:	00913423          	sd	s1,8(sp)
    800037d4:	01213023          	sd	s2,0(sp)
    800037d8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800037dc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800037e0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800037e4:	0004b783          	ld	a5,0(s1)
    800037e8:	0187b783          	ld	a5,24(a5)
    800037ec:	00048513          	mv	a0,s1
    800037f0:	000780e7          	jalr	a5
        Thread::sleep(time);
    800037f4:	00090513          	mv	a0,s2
    800037f8:	00000097          	auipc	ra,0x0
    800037fc:	fa4080e7          	jalr	-92(ra) # 8000379c <_ZN6Thread5sleepEm>
    while(true)
    80003800:	fe5ff06f          	j	800037e4 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003804 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00113423          	sd	ra,8(sp)
    8000380c:	00813023          	sd	s0,0(sp)
    80003810:	01010413          	addi	s0,sp,16
    80003814:	00008797          	auipc	a5,0x8
    80003818:	22478793          	addi	a5,a5,548 # 8000ba38 <_ZTV6Thread+0x10>
    8000381c:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003820:	00850513          	addi	a0,a0,8
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	c5c080e7          	jalr	-932(ra) # 80001480 <thread_make_pcb>
}
    8000382c:	00813083          	ld	ra,8(sp)
    80003830:	00013403          	ld	s0,0(sp)
    80003834:	01010113          	addi	sp,sp,16
    80003838:	00008067          	ret

000000008000383c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000383c:	ff010113          	addi	sp,sp,-16
    80003840:	00113423          	sd	ra,8(sp)
    80003844:	00813023          	sd	s0,0(sp)
    80003848:	01010413          	addi	s0,sp,16
    8000384c:	00008797          	auipc	a5,0x8
    80003850:	1ec78793          	addi	a5,a5,492 # 8000ba38 <_ZTV6Thread+0x10>
    80003854:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003858:	00050613          	mv	a2,a0
    8000385c:	00000597          	auipc	a1,0x0
    80003860:	dc458593          	addi	a1,a1,-572 # 80003620 <_ZN6Thread6runnerEPv>
    80003864:	00850513          	addi	a0,a0,8
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	c18080e7          	jalr	-1000(ra) # 80001480 <thread_make_pcb>
}
    80003870:	00813083          	ld	ra,8(sp)
    80003874:	00013403          	ld	s0,0(sp)
    80003878:	01010113          	addi	sp,sp,16
    8000387c:	00008067          	ret

0000000080003880 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003880:	00853503          	ld	a0,8(a0)
    80003884:	02050663          	beqz	a0,800038b0 <_ZN9Semaphore4waitEv+0x30>
{
    80003888:	ff010113          	addi	sp,sp,-16
    8000388c:	00113423          	sd	ra,8(sp)
    80003890:	00813023          	sd	s0,0(sp)
    80003894:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	b38080e7          	jalr	-1224(ra) # 800013d0 <sem_wait>
}
    800038a0:	00813083          	ld	ra,8(sp)
    800038a4:	00013403          	ld	s0,0(sp)
    800038a8:	01010113          	addi	sp,sp,16
    800038ac:	00008067          	ret
        return -1;
    800038b0:	fff00513          	li	a0,-1
}
    800038b4:	00008067          	ret

00000000800038b8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800038b8:	fe010113          	addi	sp,sp,-32
    800038bc:	00113c23          	sd	ra,24(sp)
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00913423          	sd	s1,8(sp)
    800038c8:	02010413          	addi	s0,sp,32
    800038cc:	00050493          	mv	s1,a0
    800038d0:	00008797          	auipc	a5,0x8
    800038d4:	19078793          	addi	a5,a5,400 # 8000ba60 <_ZTV9Semaphore+0x10>
    800038d8:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800038dc:	00850513          	addi	a0,a0,8
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	a8c080e7          	jalr	-1396(ra) # 8000136c <sem_open>
    if(retval != 0)
    800038e8:	00050463          	beqz	a0,800038f0 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800038ec:	0004b423          	sd	zero,8(s1)
}
    800038f0:	01813083          	ld	ra,24(sp)
    800038f4:	01013403          	ld	s0,16(sp)
    800038f8:	00813483          	ld	s1,8(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret

0000000080003904 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003904:	00853503          	ld	a0,8(a0)
    80003908:	02050663          	beqz	a0,80003934 <_ZN9Semaphore6signalEv+0x30>
{
    8000390c:	ff010113          	addi	sp,sp,-16
    80003910:	00113423          	sd	ra,8(sp)
    80003914:	00813023          	sd	s0,0(sp)
    80003918:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	ae0080e7          	jalr	-1312(ra) # 800013fc <sem_signal>
}
    80003924:	00813083          	ld	ra,8(sp)
    80003928:	00013403          	ld	s0,0(sp)
    8000392c:	01010113          	addi	sp,sp,16
    80003930:	00008067          	ret
        return -1;
    80003934:	fff00513          	li	a0,-1
}
    80003938:	00008067          	ret

000000008000393c <_ZN7Console4getcEv>:
{
    8000393c:	ff010113          	addi	sp,sp,-16
    80003940:	00813423          	sd	s0,8(sp)
    80003944:	01010413          	addi	s0,sp,16
}
    80003948:	00000513          	li	a0,0
    8000394c:	00813403          	ld	s0,8(sp)
    80003950:	01010113          	addi	sp,sp,16
    80003954:	00008067          	ret

0000000080003958 <_ZN7Console4putcEc>:
{
    80003958:	ff010113          	addi	sp,sp,-16
    8000395c:	00813423          	sd	s0,8(sp)
    80003960:	01010413          	addi	s0,sp,16
}
    80003964:	00813403          	ld	s0,8(sp)
    80003968:	01010113          	addi	sp,sp,16
    8000396c:	00008067          	ret

0000000080003970 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00113c23          	sd	ra,24(sp)
    80003978:	00813823          	sd	s0,16(sp)
    8000397c:	00913423          	sd	s1,8(sp)
    80003980:	01213023          	sd	s2,0(sp)
    80003984:	02010413          	addi	s0,sp,32
    80003988:	00050493          	mv	s1,a0
    8000398c:	00058913          	mv	s2,a1
    80003990:	01000513          	li	a0,16
    80003994:	00000097          	auipc	ra,0x0
    80003998:	cd8080e7          	jalr	-808(ra) # 8000366c <_Znwm>
    8000399c:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800039a0:	00953023          	sd	s1,0(a0)
    800039a4:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800039a8:	00000597          	auipc	a1,0x0
    800039ac:	e1c58593          	addi	a1,a1,-484 # 800037c4 <_ZN14PeriodicThread6runnerEPv>
    800039b0:	00048513          	mv	a0,s1
    800039b4:	00000097          	auipc	ra,0x0
    800039b8:	e50080e7          	jalr	-432(ra) # 80003804 <_ZN6ThreadC1EPFvPvES0_>
    800039bc:	00008797          	auipc	a5,0x8
    800039c0:	01478793          	addi	a5,a5,20 # 8000b9d0 <_ZTV14PeriodicThread+0x10>
    800039c4:	00f4b023          	sd	a5,0(s1)
}
    800039c8:	01813083          	ld	ra,24(sp)
    800039cc:	01013403          	ld	s0,16(sp)
    800039d0:	00813483          	ld	s1,8(sp)
    800039d4:	00013903          	ld	s2,0(sp)
    800039d8:	02010113          	addi	sp,sp,32
    800039dc:	00008067          	ret

00000000800039e0 <_ZN5Riscv14myTestsWrapperEPv>:
{
    userMain();
}

void Riscv::myTestsWrapper(void* p)
{
    800039e0:	ff010113          	addi	sp,sp,-16
    800039e4:	00113423          	sd	ra,8(sp)
    800039e8:	00813023          	sd	s0,0(sp)
    800039ec:	01010413          	addi	s0,sp,16
    myTests();
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	c80080e7          	jalr	-896(ra) # 80002670 <_Z7myTestsv>
}
    800039f8:	00813083          	ld	ra,8(sp)
    800039fc:	00013403          	ld	s0,0(sp)
    80003a00:	01010113          	addi	sp,sp,16
    80003a04:	00008067          	ret

0000000080003a08 <_ZN5Riscv10initSystemEv>:
{
    80003a08:	ff010113          	addi	sp,sp,-16
    80003a0c:	00113423          	sd	ra,8(sp)
    80003a10:	00813023          	sd	s0,0(sp)
    80003a14:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003a18:	00008797          	auipc	a5,0x8
    80003a1c:	1187b783          	ld	a5,280(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003a20:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003a24:	fffff097          	auipc	ra,0xfffff
    80003a28:	f64080e7          	jalr	-156(ra) # 80002988 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	360080e7          	jalr	864(ra) # 80002d8c <_ZN8KConsole10initializeEv>
}
    80003a34:	00813083          	ld	ra,8(sp)
    80003a38:	00013403          	ld	s0,0(sp)
    80003a3c:	01010113          	addi	sp,sp,16
    80003a40:	00008067          	ret

0000000080003a44 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003a44:	ff010113          	addi	sp,sp,-16
    80003a48:	00813423          	sd	s0,8(sp)
    80003a4c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003a50:	00200793          	li	a5,2
    80003a54:	1007a073          	csrs	sstatus,a5
}
    80003a58:	00813403          	ld	s0,8(sp)
    80003a5c:	01010113          	addi	sp,sp,16
    80003a60:	00008067          	ret

0000000080003a64 <_ZN5Riscv17disableInterruptsEv>:
{
    80003a64:	ff010113          	addi	sp,sp,-16
    80003a68:	00813423          	sd	s0,8(sp)
    80003a6c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003a70:	00200793          	li	a5,2
    80003a74:	1007b073          	csrc	sstatus,a5
}
    80003a78:	00813403          	ld	s0,8(sp)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <_ZN5Riscv9endSystemEv>:
{
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00113423          	sd	ra,8(sp)
    80003a8c:	00813023          	sd	s0,0(sp)
    80003a90:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	fd0080e7          	jalr	-48(ra) # 80003a64 <_ZN5Riscv17disableInterruptsEv>
}
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret

0000000080003aac <_ZN5Riscv10popSppSpieEv>:
{
    80003aac:	ff010113          	addi	sp,sp,-16
    80003ab0:	00813423          	sd	s0,8(sp)
    80003ab4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003ab8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003abc:	10200073          	sret
}
    80003ac0:	00813403          	ld	s0,8(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret

0000000080003acc <_ZN5Riscv11printStringEPKc>:
{
    80003acc:	fd010113          	addi	sp,sp,-48
    80003ad0:	02113423          	sd	ra,40(sp)
    80003ad4:	02813023          	sd	s0,32(sp)
    80003ad8:	00913c23          	sd	s1,24(sp)
    80003adc:	01213823          	sd	s2,16(sp)
    80003ae0:	03010413          	addi	s0,sp,48
    80003ae4:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003ae8:	100027f3          	csrr	a5,sstatus
    80003aec:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003af0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003af4:	00200793          	li	a5,2
    80003af8:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    80003afc:	0004c503          	lbu	a0,0(s1)
    80003b00:	00050a63          	beqz	a0,80003b14 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    80003b04:	00005097          	auipc	ra,0x5
    80003b08:	b98080e7          	jalr	-1128(ra) # 8000869c <__putc>
        string++;
    80003b0c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003b10:	fedff06f          	j	80003afc <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003b14:	0009091b          	sext.w	s2,s2
    80003b18:	00297913          	andi	s2,s2,2
    80003b1c:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003b20:	10092073          	csrs	sstatus,s2
}
    80003b24:	02813083          	ld	ra,40(sp)
    80003b28:	02013403          	ld	s0,32(sp)
    80003b2c:	01813483          	ld	s1,24(sp)
    80003b30:	01013903          	ld	s2,16(sp)
    80003b34:	03010113          	addi	sp,sp,48
    80003b38:	00008067          	ret

0000000080003b3c <_ZN5Riscv12printIntegerEm>:
{
    80003b3c:	fc010113          	addi	sp,sp,-64
    80003b40:	02113c23          	sd	ra,56(sp)
    80003b44:	02813823          	sd	s0,48(sp)
    80003b48:	02913423          	sd	s1,40(sp)
    80003b4c:	03213023          	sd	s2,32(sp)
    80003b50:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b54:	100027f3          	csrr	a5,sstatus
    80003b58:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003b5c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b60:	00200793          	li	a5,2
    80003b64:	1007b073          	csrc	sstatus,a5
        x = num;
    80003b68:	0005051b          	sext.w	a0,a0
    i = 0;
    80003b6c:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    80003b70:	00a00613          	li	a2,10
    80003b74:	02c5773b          	remuw	a4,a0,a2
    80003b78:	02071693          	slli	a3,a4,0x20
    80003b7c:	0206d693          	srli	a3,a3,0x20
    80003b80:	00006717          	auipc	a4,0x6
    80003b84:	82070713          	addi	a4,a4,-2016 # 800093a0 <_ZZN5Riscv12printIntegerEmE6digits>
    80003b88:	00d70733          	add	a4,a4,a3
    80003b8c:	00074703          	lbu	a4,0(a4)
    80003b90:	fe040693          	addi	a3,s0,-32
    80003b94:	009687b3          	add	a5,a3,s1
    80003b98:	0014849b          	addiw	s1,s1,1
    80003b9c:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003ba0:	0005071b          	sext.w	a4,a0
    80003ba4:	02c5553b          	divuw	a0,a0,a2
    80003ba8:	00900793          	li	a5,9
    80003bac:	fce7e2e3          	bltu	a5,a4,80003b70 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    80003bb0:	fff4849b          	addiw	s1,s1,-1
    80003bb4:	0004ce63          	bltz	s1,80003bd0 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003bb8:	fe040793          	addi	a5,s0,-32
    80003bbc:	009787b3          	add	a5,a5,s1
    80003bc0:	ff07c503          	lbu	a0,-16(a5)
    80003bc4:	00005097          	auipc	ra,0x5
    80003bc8:	ad8080e7          	jalr	-1320(ra) # 8000869c <__putc>
    80003bcc:	fe5ff06f          	j	80003bb0 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    80003bd0:	00a00513          	li	a0,10
    80003bd4:	00005097          	auipc	ra,0x5
    80003bd8:	ac8080e7          	jalr	-1336(ra) # 8000869c <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003bdc:	0009091b          	sext.w	s2,s2
    80003be0:	00297913          	andi	s2,s2,2
    80003be4:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003be8:	10092073          	csrs	sstatus,s2
}
    80003bec:	03813083          	ld	ra,56(sp)
    80003bf0:	03013403          	ld	s0,48(sp)
    80003bf4:	02813483          	ld	s1,40(sp)
    80003bf8:	02013903          	ld	s2,32(sp)
    80003bfc:	04010113          	addi	sp,sp,64
    80003c00:	00008067          	ret

0000000080003c04 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003c04:	f9010113          	addi	sp,sp,-112
    80003c08:	06113423          	sd	ra,104(sp)
    80003c0c:	06813023          	sd	s0,96(sp)
    80003c10:	04913c23          	sd	s1,88(sp)
    80003c14:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003c18:	00070713          	mv	a4,a4
    80003c1c:	00008797          	auipc	a5,0x8
    80003c20:	f4c7b783          	ld	a5,-180(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003c24:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003c28:	142027f3          	csrr	a5,scause
    80003c2c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003c30:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003c34:	fff00713          	li	a4,-1
    80003c38:	03f71713          	slli	a4,a4,0x3f
    80003c3c:	00170713          	addi	a4,a4,1
    80003c40:	0ae78863          	beq	a5,a4,80003cf0 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    80003c44:	fff00713          	li	a4,-1
    80003c48:	03f71713          	slli	a4,a4,0x3f
    80003c4c:	00170713          	addi	a4,a4,1
    80003c50:	04f76e63          	bltu	a4,a5,80003cac <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    80003c54:	ff878793          	addi	a5,a5,-8
    80003c58:	00100713          	li	a4,1
    80003c5c:	16f76c63          	bltu	a4,a5,80003dd4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003c60:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003c64:	14102773          	csrr	a4,sepc
    80003c68:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003c6c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003c70:	00470713          	addi	a4,a4,4
    80003c74:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c78:	10002773          	csrr	a4,sstatus
    80003c7c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003c80:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003c84:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003c88:	04200713          	li	a4,66
    80003c8c:	12f76c63          	bltu	a4,a5,80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    80003c90:	00279793          	slli	a5,a5,0x2
    80003c94:	00005717          	auipc	a4,0x5
    80003c98:	5fc70713          	addi	a4,a4,1532 # 80009290 <CONSOLE_STATUS+0x280>
    80003c9c:	00e787b3          	add	a5,a5,a4
    80003ca0:	0007a783          	lw	a5,0(a5)
    80003ca4:	00e787b3          	add	a5,a5,a4
    80003ca8:	00078067          	jr	a5
    switch(scause)
    80003cac:	fff00713          	li	a4,-1
    80003cb0:	03f71713          	slli	a4,a4,0x3f
    80003cb4:	00970713          	addi	a4,a4,9
    80003cb8:	10e79e63          	bne	a5,a4,80003dd4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
            uint64 x = CONSOLE_STATUS;
    80003cbc:	00008797          	auipc	a5,0x8
    80003cc0:	e647b783          	ld	a5,-412(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003cc4:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003cc8:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003ccc:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003cd0:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003cd4:	0017f793          	andi	a5,a5,1
    80003cd8:	0a079663          	bnez	a5,80003d84 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
            plic_complete(plic_claim());
    80003cdc:	00003097          	auipc	ra,0x3
    80003ce0:	158080e7          	jalr	344(ra) # 80006e34 <plic_claim>
    80003ce4:	00003097          	auipc	ra,0x3
    80003ce8:	188080e7          	jalr	392(ra) # 80006e6c <plic_complete>
            break;
    80003cec:	0e80006f          	j	80003dd4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003cf0:	141027f3          	csrr	a5,sepc
    80003cf4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003cf8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003cfc:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003d00:	100027f3          	csrr	a5,sstatus
    80003d04:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003d08:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003d0c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003d10:	00200793          	li	a5,2
    80003d14:	1447b073          	csrc	sip,a5
            total++;
    80003d18:	00008717          	auipc	a4,0x8
    80003d1c:	f3070713          	addi	a4,a4,-208 # 8000bc48 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003d20:	00073783          	ld	a5,0(a4)
    80003d24:	00178793          	addi	a5,a5,1
    80003d28:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003d2c:	00008497          	auipc	s1,0x8
    80003d30:	e144b483          	ld	s1,-492(s1) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003d34:	0004b783          	ld	a5,0(s1)
    80003d38:	00178793          	addi	a5,a5,1
    80003d3c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	488080e7          	jalr	1160(ra) # 800031c8 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003d48:	00008797          	auipc	a5,0x8
    80003d4c:	e107b783          	ld	a5,-496(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003d50:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003d54:	0107b783          	ld	a5,16(a5)
    80003d58:	0004b703          	ld	a4,0(s1)
    80003d5c:	00f77c63          	bgeu	a4,a5,80003d74 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
            Riscv::w_sstatus(sstatus);
    80003d60:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d64:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d68:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d6c:	14179073          	csrw	sepc,a5
}
    80003d70:	0640006f          	j	80003dd4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
                PCB::timeSliceCounter = 0;
    80003d74:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	b20080e7          	jalr	-1248(ra) # 80002898 <_ZN3PCB8dispatchEv>
    80003d80:	fe1ff06f          	j	80003d60 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
                x = CONSOLE_TX_DATA;
    80003d84:	00008797          	auipc	a5,0x8
    80003d88:	db47b783          	ld	a5,-588(a5) # 8000bb38 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003d8c:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003d90:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003d94:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003d98:	00058493          	mv	s1,a1
    80003d9c:	0ff4f493          	andi	s1,s1,255
                KConsole::putCharacterInput(c);
    80003da0:	00048513          	mv	a0,s1
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	098080e7          	jalr	152(ra) # 80002e3c <_ZN8KConsole17putCharacterInputEc>
                KConsole::putCharacterOutput(c);
    80003dac:	00048513          	mv	a0,s1
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	11c080e7          	jalr	284(ra) # 80002ecc <_ZN8KConsole18putCharacterOutputEc>
    80003db8:	f25ff06f          	j	80003cdc <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
                    MemoryAllocator::memAllocHandler();
    80003dbc:	00000097          	auipc	ra,0x0
    80003dc0:	5d4080e7          	jalr	1492(ra) # 80004390 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003dc4:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003dc8:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003dcc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003dd0:	14179073          	csrw	sepc,a5
}
    80003dd4:	06813083          	ld	ra,104(sp)
    80003dd8:	06013403          	ld	s0,96(sp)
    80003ddc:	05813483          	ld	s1,88(sp)
    80003de0:	07010113          	addi	sp,sp,112
    80003de4:	00008067          	ret
                    MemoryAllocator::memFreeHandler();
    80003de8:	00000097          	auipc	ra,0x0
    80003dec:	604080e7          	jalr	1540(ra) # 800043ec <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003df0:	fd5ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadMakePCBHandler();
    80003df4:	fffff097          	auipc	ra,0xfffff
    80003df8:	e34080e7          	jalr	-460(ra) # 80002c28 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003dfc:	fc9ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadCreateHandler();
    80003e00:	fffff097          	auipc	ra,0xfffff
    80003e04:	d54080e7          	jalr	-684(ra) # 80002b54 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003e08:	fbdff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadStartHandler();
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	de0080e7          	jalr	-544(ra) # 80002bec <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003e14:	fb1ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadDispatchHandler();
    80003e18:	fffff097          	auipc	ra,0xfffff
    80003e1c:	cc0080e7          	jalr	-832(ra) # 80002ad8 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003e20:	fa5ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadExitHandler();
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	c60080e7          	jalr	-928(ra) # 80002a84 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003e2c:	f99ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    PCB::threadSleepHandler();
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	cd8080e7          	jalr	-808(ra) # 80002b08 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003e38:	f8dff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KSemaphore::semOpenHandler();
    80003e3c:	00001097          	auipc	ra,0x1
    80003e40:	858080e7          	jalr	-1960(ra) # 80004694 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003e44:	f81ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KSemaphore::semWaitHandler();
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	8e4080e7          	jalr	-1820(ra) # 8000472c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003e50:	f75ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KSemaphore::semSignalHandler();
    80003e54:	00001097          	auipc	ra,0x1
    80003e58:	910080e7          	jalr	-1776(ra) # 80004764 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003e5c:	f69ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KSemaphore::semCloseHandler();
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	93c080e7          	jalr	-1732(ra) # 8000479c <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003e68:	f5dff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KConsole::getcHandler();
    80003e6c:	fffff097          	auipc	ra,0xfffff
    80003e70:	254080e7          	jalr	596(ra) # 800030c0 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003e74:	f51ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                    KConsole::putcHandler();
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	204080e7          	jalr	516(ra) # 8000307c <_ZN8KConsole11putcHandlerEv>
                    break;
    80003e80:	f45ff06f          	j	80003dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>

0000000080003e84 <_ZN5Riscv10kernelMainEv>:
{
    80003e84:	fe010113          	addi	sp,sp,-32
    80003e88:	00113c23          	sd	ra,24(sp)
    80003e8c:	00813823          	sd	s0,16(sp)
    80003e90:	00913423          	sd	s1,8(sp)
    80003e94:	01213023          	sd	s2,0(sp)
    80003e98:	02010413          	addi	s0,sp,32
    initSystem();
    80003e9c:	00000097          	auipc	ra,0x0
    80003ea0:	b6c080e7          	jalr	-1172(ra) # 80003a08 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003ea4:	00000097          	auipc	ra,0x0
    80003ea8:	ba0080e7          	jalr	-1120(ra) # 80003a44 <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::myTestsWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003eac:	00001537          	lui	a0,0x1
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	4b8080e7          	jalr	1208(ra) # 80004368 <_Z7kmallocm>
    80003eb8:	00050913          	mv	s2,a0
    80003ebc:	05000513          	li	a0,80
    80003ec0:	fffff097          	auipc	ra,0xfffff
    80003ec4:	a4c080e7          	jalr	-1460(ra) # 8000290c <_ZN3PCBnwEm>
    80003ec8:	00050493          	mv	s1,a0
    80003ecc:	00200713          	li	a4,2
    80003ed0:	00090693          	mv	a3,s2
    80003ed4:	00000613          	li	a2,0
    80003ed8:	00000597          	auipc	a1,0x0
    80003edc:	b0858593          	addi	a1,a1,-1272 # 800039e0 <_ZN5Riscv14myTestsWrapperEPv>
    80003ee0:	fffff097          	auipc	ra,0xfffff
    80003ee4:	92c080e7          	jalr	-1748(ra) # 8000280c <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003ee8:	00048513          	mv	a0,s1
    80003eec:	fffff097          	auipc	ra,0xfffff
    80003ef0:	984080e7          	jalr	-1660(ra) # 80002870 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003ef4:	00048513          	mv	a0,s1
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	b68080e7          	jalr	-1176(ra) # 80002a60 <_ZN3PCB10isFinishedEv>
    80003f00:	00051863          	bnez	a0,80003f10 <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003f04:	ffffd097          	auipc	ra,0xffffd
    80003f08:	420080e7          	jalr	1056(ra) # 80001324 <thread_dispatch>
    while(!userPCB->isFinished())
    80003f0c:	fe9ff06f          	j	80003ef4 <_ZN5Riscv10kernelMainEv+0x70>
    endSystem();
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	b74080e7          	jalr	-1164(ra) # 80003a84 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003f18:	00005517          	auipc	a0,0x5
    80003f1c:	49850513          	addi	a0,a0,1176 # 800093b0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	bac080e7          	jalr	-1108(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
}
    80003f28:	01813083          	ld	ra,24(sp)
    80003f2c:	01013403          	ld	s0,16(sp)
    80003f30:	00813483          	ld	s1,8(sp)
    80003f34:	00013903          	ld	s2,0(sp)
    80003f38:	02010113          	addi	sp,sp,32
    80003f3c:	00008067          	ret
    80003f40:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::myTestsWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003f44:	00048513          	mv	a0,s1
    80003f48:	fffff097          	auipc	ra,0xfffff
    80003f4c:	9ec080e7          	jalr	-1556(ra) # 80002934 <_ZN3PCBdlEPv>
    80003f50:	00090513          	mv	a0,s2
    80003f54:	00009097          	auipc	ra,0x9
    80003f58:	e04080e7          	jalr	-508(ra) # 8000cd58 <_Unwind_Resume>

0000000080003f5c <_ZN5Riscv15userMainWrapperEPv>:
{
    80003f5c:	ff010113          	addi	sp,sp,-16
    80003f60:	00113423          	sd	ra,8(sp)
    80003f64:	00813023          	sd	s0,0(sp)
    80003f68:	01010413          	addi	s0,sp,16
    userMain();
    80003f6c:	00002097          	auipc	ra,0x2
    80003f70:	2bc080e7          	jalr	700(ra) # 80006228 <_Z8userMainv>
}
    80003f74:	00813083          	ld	ra,8(sp)
    80003f78:	00013403          	ld	s0,0(sp)
    80003f7c:	01010113          	addi	sp,sp,16
    80003f80:	00008067          	ret

0000000080003f84 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003f84:	ff010113          	addi	sp,sp,-16
    80003f88:	00813423          	sd	s0,8(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003f90:	00200793          	li	a5,2
    80003f94:	1047b073          	csrc	sie,a5
}
    80003f98:	00813403          	ld	s0,8(sp)
    80003f9c:	01010113          	addi	sp,sp,16
    80003fa0:	00008067          	ret

0000000080003fa4 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00813423          	sd	s0,8(sp)
    80003fac:	01010413          	addi	s0,sp,16
    while(true)
    80003fb0:	0000006f          	j	80003fb0 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003fb4 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00813423          	sd	s0,8(sp)
    80003fbc:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003fc0:	00008717          	auipc	a4,0x8
    80003fc4:	c9072703          	lw	a4,-880(a4) # 8000bc50 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003fc8:	00100793          	li	a5,1
    80003fcc:	04f70263          	beq	a4,a5,80004010 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003fd0:	00008797          	auipc	a5,0x8
    80003fd4:	c8078793          	addi	a5,a5,-896 # 8000bc50 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003fd8:	00100713          	li	a4,1
    80003fdc:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003fe0:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003fe4:	00008717          	auipc	a4,0x8
    80003fe8:	b4473703          	ld	a4,-1212(a4) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003fec:	00073703          	ld	a4,0(a4)
    80003ff0:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003ff4:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003ff8:	00008797          	auipc	a5,0x8
    80003ffc:	b687b783          	ld	a5,-1176(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004000:	0007b783          	ld	a5,0(a5)
    80004004:	40e787b3          	sub	a5,a5,a4
    80004008:	ff178793          	addi	a5,a5,-15
    8000400c:	00f73023          	sd	a5,0(a4)
}
    80004010:	00813403          	ld	s0,8(sp)
    80004014:	01010113          	addi	sp,sp,16
    80004018:	00008067          	ret

000000008000401c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    8000401c:	fe010113          	addi	sp,sp,-32
    80004020:	00113c23          	sd	ra,24(sp)
    80004024:	00813823          	sd	s0,16(sp)
    80004028:	00913423          	sd	s1,8(sp)
    8000402c:	01213023          	sd	s2,0(sp)
    80004030:	02010413          	addi	s0,sp,32
    80004034:	00050493          	mv	s1,a0
    80004038:	00058913          	mv	s2,a1
    initMemory();
    8000403c:	00000097          	auipc	ra,0x0
    80004040:	f78080e7          	jalr	-136(ra) # 80003fb4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004044:	00008797          	auipc	a5,0x8
    80004048:	c147b783          	ld	a5,-1004(a5) # 8000bc58 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    8000404c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004050:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80004054:	00000713          	li	a4,0
    while(curr != 0)
    80004058:	00078c63          	beqz	a5,80004070 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    8000405c:	00f4e863          	bltu	s1,a5,8000406c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004060:	00078713          	mv	a4,a5
        curr = curr->next;
    80004064:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004068:	ff1ff06f          	j	80004058 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    8000406c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004070:	02070063          	beqz	a4,80004090 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004074:	00973423          	sd	s1,8(a4)
}
    80004078:	01813083          	ld	ra,24(sp)
    8000407c:	01013403          	ld	s0,16(sp)
    80004080:	00813483          	ld	s1,8(sp)
    80004084:	00013903          	ld	s2,0(sp)
    80004088:	02010113          	addi	sp,sp,32
    8000408c:	00008067          	ret
        headAllocated = newAllocated;
    80004090:	00008797          	auipc	a5,0x8
    80004094:	bc97b423          	sd	s1,-1080(a5) # 8000bc58 <_ZN15MemoryAllocator13headAllocatedE>
    80004098:	fe1ff06f          	j	80004078 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

000000008000409c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    8000409c:	fe010113          	addi	sp,sp,-32
    800040a0:	00113c23          	sd	ra,24(sp)
    800040a4:	00813823          	sd	s0,16(sp)
    800040a8:	00913423          	sd	s1,8(sp)
    800040ac:	01213023          	sd	s2,0(sp)
    800040b0:	02010413          	addi	s0,sp,32
    800040b4:	00050913          	mv	s2,a0
    initMemory();
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	efc080e7          	jalr	-260(ra) # 80003fb4 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800040c0:	00008497          	auipc	s1,0x8
    800040c4:	ba04b483          	ld	s1,-1120(s1) # 8000bc60 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800040c8:	00000713          	li	a4,0
    while(curr != 0)
    800040cc:	0a048863          	beqz	s1,8000417c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800040d0:	0004b783          	ld	a5,0(s1)
    800040d4:	0127f863          	bgeu	a5,s2,800040e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800040d8:	00048713          	mv	a4,s1
        curr = curr->next;
    800040dc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800040e0:	fedff06f          	j	800040cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800040e4:	01090693          	addi	a3,s2,16
    800040e8:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800040ec:	00008617          	auipc	a2,0x8
    800040f0:	a7463603          	ld	a2,-1420(a2) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x50>
    800040f4:	00063603          	ld	a2,0(a2)
    800040f8:	04d66c63          	bltu	a2,a3,80004150 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800040fc:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80004100:	01000613          	li	a2,16
    80004104:	02f67663          	bgeu	a2,a5,80004130 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80004108:	0084b603          	ld	a2,8(s1)
    8000410c:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004110:	ff078793          	addi	a5,a5,-16
    80004114:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80004118:	00070663          	beqz	a4,80004124 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    8000411c:	00d73423          	sd	a3,8(a4)
    80004120:	0380006f          	j	80004158 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80004124:	00008797          	auipc	a5,0x8
    80004128:	b2d7be23          	sd	a3,-1220(a5) # 8000bc60 <_ZN15MemoryAllocator8headFreeE>
    8000412c:	02c0006f          	j	80004158 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80004130:	00070863          	beqz	a4,80004140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80004134:	0084b783          	ld	a5,8(s1)
    80004138:	00f73423          	sd	a5,8(a4)
    8000413c:	01c0006f          	j	80004158 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80004140:	0084b783          	ld	a5,8(s1)
    80004144:	00008717          	auipc	a4,0x8
    80004148:	b0f73e23          	sd	a5,-1252(a4) # 8000bc60 <_ZN15MemoryAllocator8headFreeE>
    8000414c:	00c0006f          	j	80004158 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80004150:	02070063          	beqz	a4,80004170 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80004154:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80004158:	00090593          	mv	a1,s2
    8000415c:	00048513          	mv	a0,s1
    80004160:	00000097          	auipc	ra,0x0
    80004164:	ebc080e7          	jalr	-324(ra) # 8000401c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004168:	01048513          	addi	a0,s1,16
            break;
    8000416c:	0140006f          	j	80004180 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80004170:	00008797          	auipc	a5,0x8
    80004174:	ae07b823          	sd	zero,-1296(a5) # 8000bc60 <_ZN15MemoryAllocator8headFreeE>
    80004178:	fe1ff06f          	j	80004158 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    8000417c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	00813483          	ld	s1,8(sp)
    8000418c:	00013903          	ld	s2,0(sp)
    80004190:	02010113          	addi	sp,sp,32
    80004194:	00008067          	ret

0000000080004198 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004198:	ff010113          	addi	sp,sp,-16
    8000419c:	00113423          	sd	ra,8(sp)
    800041a0:	00813023          	sd	s0,0(sp)
    800041a4:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800041a8:	00000097          	auipc	ra,0x0
    800041ac:	ef4080e7          	jalr	-268(ra) # 8000409c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800041b0:	00813083          	ld	ra,8(sp)
    800041b4:	00013403          	ld	s0,0(sp)
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret

00000000800041c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800041c0:	fe010113          	addi	sp,sp,-32
    800041c4:	00113c23          	sd	ra,24(sp)
    800041c8:	00813823          	sd	s0,16(sp)
    800041cc:	00913423          	sd	s1,8(sp)
    800041d0:	01213023          	sd	s2,0(sp)
    800041d4:	02010413          	addi	s0,sp,32
    800041d8:	00050493          	mv	s1,a0
    800041dc:	00058913          	mv	s2,a1
    initMemory();
    800041e0:	00000097          	auipc	ra,0x0
    800041e4:	dd4080e7          	jalr	-556(ra) # 80003fb4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800041e8:	00008797          	auipc	a5,0x8
    800041ec:	a787b783          	ld	a5,-1416(a5) # 8000bc60 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800041f0:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800041f4:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800041f8:	00000713          	li	a4,0
    while(curr != 0)
    800041fc:	00078c63          	beqz	a5,80004214 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004200:	00f4e863          	bltu	s1,a5,80004210 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004204:	00078713          	mv	a4,a5
        curr = curr->next;
    80004208:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000420c:	ff1ff06f          	j	800041fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004210:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004214:	04070663          	beqz	a4,80004260 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004218:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    8000421c:	0084b783          	ld	a5,8(s1)
    80004220:	00078a63          	beqz	a5,80004234 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004224:	0004b603          	ld	a2,0(s1)
    80004228:	01060693          	addi	a3,a2,16
    8000422c:	00d486b3          	add	a3,s1,a3
    80004230:	02d78e63          	beq	a5,a3,8000426c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004234:	00070a63          	beqz	a4,80004248 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80004238:	00073683          	ld	a3,0(a4)
    8000423c:	01068793          	addi	a5,a3,16
    80004240:	00f707b3          	add	a5,a4,a5
    80004244:	04978263          	beq	a5,s1,80004288 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004248:	01813083          	ld	ra,24(sp)
    8000424c:	01013403          	ld	s0,16(sp)
    80004250:	00813483          	ld	s1,8(sp)
    80004254:	00013903          	ld	s2,0(sp)
    80004258:	02010113          	addi	sp,sp,32
    8000425c:	00008067          	ret
        headFree = newSegment;
    80004260:	00008797          	auipc	a5,0x8
    80004264:	a097b023          	sd	s1,-1536(a5) # 8000bc60 <_ZN15MemoryAllocator8headFreeE>
    80004268:	fb5ff06f          	j	8000421c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    8000426c:	0007b683          	ld	a3,0(a5)
    80004270:	00d60633          	add	a2,a2,a3
    80004274:	01060613          	addi	a2,a2,16
    80004278:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    8000427c:	0087b783          	ld	a5,8(a5)
    80004280:	00f4b423          	sd	a5,8(s1)
    80004284:	fb1ff06f          	j	80004234 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004288:	0004b783          	ld	a5,0(s1)
    8000428c:	00f686b3          	add	a3,a3,a5
    80004290:	01068693          	addi	a3,a3,16
    80004294:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004298:	0084b783          	ld	a5,8(s1)
    8000429c:	00f73423          	sd	a5,8(a4)
}
    800042a0:	fa9ff06f          	j	80004248 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

00000000800042a4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800042a4:	fe010113          	addi	sp,sp,-32
    800042a8:	00113c23          	sd	ra,24(sp)
    800042ac:	00813823          	sd	s0,16(sp)
    800042b0:	00913423          	sd	s1,8(sp)
    800042b4:	01213023          	sd	s2,0(sp)
    800042b8:	02010413          	addi	s0,sp,32
    800042bc:	00050913          	mv	s2,a0
    initMemory();
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	cf4080e7          	jalr	-780(ra) # 80003fb4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800042c8:	00008497          	auipc	s1,0x8
    800042cc:	9904b483          	ld	s1,-1648(s1) # 8000bc58 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800042d0:	00000713          	li	a4,0
    while(curr != 0)
    800042d4:	02048a63          	beqz	s1,80004308 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800042d8:	01048793          	addi	a5,s1,16
    800042dc:	01278863          	beq	a5,s2,800042ec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800042e0:	00048713          	mv	a4,s1
        curr = curr->next;
    800042e4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800042e8:	fedff06f          	j	800042d4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800042ec:	02070e63          	beqz	a4,80004328 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800042f0:	0084b783          	ld	a5,8(s1)
    800042f4:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800042f8:	0004b583          	ld	a1,0(s1)
    800042fc:	00048513          	mv	a0,s1
    80004300:	00000097          	auipc	ra,0x0
    80004304:	ec0080e7          	jalr	-320(ra) # 800041c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004308:	02048863          	beqz	s1,80004338 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    8000430c:	00000513          	li	a0,0
    else
        return 1;
}
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	00013903          	ld	s2,0(sp)
    80004320:	02010113          	addi	sp,sp,32
    80004324:	00008067          	ret
                headAllocated = curr->next;
    80004328:	0084b783          	ld	a5,8(s1)
    8000432c:	00008717          	auipc	a4,0x8
    80004330:	92f73623          	sd	a5,-1748(a4) # 8000bc58 <_ZN15MemoryAllocator13headAllocatedE>
    80004334:	fc5ff06f          	j	800042f8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004338:	00100513          	li	a0,1
    8000433c:	fd5ff06f          	j	80004310 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004340 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004340:	ff010113          	addi	sp,sp,-16
    80004344:	00113423          	sd	ra,8(sp)
    80004348:	00813023          	sd	s0,0(sp)
    8000434c:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004350:	00000097          	auipc	ra,0x0
    80004354:	f54080e7          	jalr	-172(ra) # 800042a4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004358:	00813083          	ld	ra,8(sp)
    8000435c:	00013403          	ld	s0,0(sp)
    80004360:	01010113          	addi	sp,sp,16
    80004364:	00008067          	ret

0000000080004368 <_Z7kmallocm>:
    uint64 retval = kfree((void*)addr);
    __asm__ volatile("mv a0,%0" : :"r"(retval));
}

void* kmalloc(size_t size)
{
    80004368:	ff010113          	addi	sp,sp,-16
    8000436c:	00113423          	sd	ra,8(sp)
    80004370:	00813023          	sd	s0,0(sp)
    80004374:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004378:	00000097          	auipc	ra,0x0
    8000437c:	e20080e7          	jalr	-480(ra) # 80004198 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004380:	00813083          	ld	ra,8(sp)
    80004384:	00013403          	ld	s0,0(sp)
    80004388:	01010113          	addi	sp,sp,16
    8000438c:	00008067          	ret

0000000080004390 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004390:	ff010113          	addi	sp,sp,-16
    80004394:	00113423          	sd	ra,8(sp)
    80004398:	00813023          	sd	s0,0(sp)
    8000439c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800043a0:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800043a4:	00651513          	slli	a0,a0,0x6
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	fc0080e7          	jalr	-64(ra) # 80004368 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800043b0:	00050513          	mv	a0,a0
}
    800043b4:	00813083          	ld	ra,8(sp)
    800043b8:	00013403          	ld	s0,0(sp)
    800043bc:	01010113          	addi	sp,sp,16
    800043c0:	00008067          	ret

00000000800043c4 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800043c4:	ff010113          	addi	sp,sp,-16
    800043c8:	00113423          	sd	ra,8(sp)
    800043cc:	00813023          	sd	s0,0(sp)
    800043d0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	f6c080e7          	jalr	-148(ra) # 80004340 <_ZN15MemoryAllocator8mem_freeEPv>
    800043dc:	00813083          	ld	ra,8(sp)
    800043e0:	00013403          	ld	s0,0(sp)
    800043e4:	01010113          	addi	sp,sp,16
    800043e8:	00008067          	ret

00000000800043ec <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800043ec:	ff010113          	addi	sp,sp,-16
    800043f0:	00113423          	sd	ra,8(sp)
    800043f4:	00813023          	sd	s0,0(sp)
    800043f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800043fc:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004400:	00000097          	auipc	ra,0x0
    80004404:	fc4080e7          	jalr	-60(ra) # 800043c4 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004408:	00050513          	mv	a0,a0
}
    8000440c:	00813083          	ld	ra,8(sp)
    80004410:	00013403          	ld	s0,0(sp)
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00008067          	ret

000000008000441c <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    8000441c:	ff010113          	addi	sp,sp,-16
    80004420:	00813423          	sd	s0,8(sp)
    80004424:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004428:	00b52a23          	sw	a1,20(a0)
    8000442c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004430:	00053423          	sd	zero,8(a0)
    80004434:	00053023          	sd	zero,0(a0)
}
    80004438:	00813403          	ld	s0,8(sp)
    8000443c:	01010113          	addi	sp,sp,16
    80004440:	00008067          	ret

0000000080004444 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004444:	ff010113          	addi	sp,sp,-16
    80004448:	00813423          	sd	s0,8(sp)
    8000444c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004450:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004454:	00053783          	ld	a5,0(a0)
    80004458:	00078e63          	beqz	a5,80004474 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000445c:	00853783          	ld	a5,8(a0)
    80004460:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004464:	00b53423          	sd	a1,8(a0)
    }
}
    80004468:	00813403          	ld	s0,8(sp)
    8000446c:	01010113          	addi	sp,sp,16
    80004470:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004474:	00b53423          	sd	a1,8(a0)
    80004478:	00b53023          	sd	a1,0(a0)
    8000447c:	fedff06f          	j	80004468 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004480 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004480:	ff010113          	addi	sp,sp,-16
    80004484:	00113423          	sd	ra,8(sp)
    80004488:	00813023          	sd	s0,0(sp)
    8000448c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004490:	00007797          	auipc	a5,0x7
    80004494:	6c87b783          	ld	a5,1736(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x48>
    80004498:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    8000449c:	00200793          	li	a5,2
    800044a0:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	fa0080e7          	jalr	-96(ra) # 80004444 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	3ec080e7          	jalr	1004(ra) # 80002898 <_ZN3PCB8dispatchEv>
}
    800044b4:	00813083          	ld	ra,8(sp)
    800044b8:	00013403          	ld	s0,0(sp)
    800044bc:	01010113          	addi	sp,sp,16
    800044c0:	00008067          	ret

00000000800044c4 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800044c4:	01052783          	lw	a5,16(a0)
    800044c8:	fff7879b          	addiw	a5,a5,-1
    800044cc:	00f52823          	sw	a5,16(a0)
    800044d0:	02079713          	slli	a4,a5,0x20
    800044d4:	00074663          	bltz	a4,800044e0 <_ZN10KSemaphore4waitEv+0x1c>
}
    800044d8:	00000513          	li	a0,0
    800044dc:	00008067          	ret
uint64 KSemaphore::wait() {
    800044e0:	ff010113          	addi	sp,sp,-16
    800044e4:	00113423          	sd	ra,8(sp)
    800044e8:	00813023          	sd	s0,0(sp)
    800044ec:	01010413          	addi	s0,sp,16
        block();
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	f90080e7          	jalr	-112(ra) # 80004480 <_ZN10KSemaphore5blockEv>
}
    800044f8:	00000513          	li	a0,0
    800044fc:	00813083          	ld	ra,8(sp)
    80004500:	00013403          	ld	s0,0(sp)
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00008067          	ret

000000008000450c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    8000450c:	ff010113          	addi	sp,sp,-16
    80004510:	00813423          	sd	s0,8(sp)
    80004514:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004518:	00053503          	ld	a0,0(a0)
    8000451c:	00813403          	ld	s0,8(sp)
    80004520:	01010113          	addi	sp,sp,16
    80004524:	00008067          	ret

0000000080004528 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004528:	ff010113          	addi	sp,sp,-16
    8000452c:	00813423          	sd	s0,8(sp)
    80004530:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004534:	00053783          	ld	a5,0(a0)
    80004538:	00078c63          	beqz	a5,80004550 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000453c:	0087b703          	ld	a4,8(a5)
    80004540:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004544:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004548:	00053783          	ld	a5,0(a0)
    8000454c:	00078863          	beqz	a5,8000455c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004550:	00813403          	ld	s0,8(sp)
    80004554:	01010113          	addi	sp,sp,16
    80004558:	00008067          	ret
        tailBlocked =0;
    8000455c:	00053423          	sd	zero,8(a0)
    80004560:	ff1ff06f          	j	80004550 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004564 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004564:	fe010113          	addi	sp,sp,-32
    80004568:	00113c23          	sd	ra,24(sp)
    8000456c:	00813823          	sd	s0,16(sp)
    80004570:	00913423          	sd	s1,8(sp)
    80004574:	01213023          	sd	s2,0(sp)
    80004578:	02010413          	addi	s0,sp,32
    8000457c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004580:	00090513          	mv	a0,s2
    80004584:	00000097          	auipc	ra,0x0
    80004588:	f88080e7          	jalr	-120(ra) # 8000450c <_ZN10KSemaphore15getFirstBlockedEv>
    8000458c:	00050493          	mv	s1,a0
    80004590:	02050063          	beqz	a0,800045b0 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80004594:	00090513          	mv	a0,s2
    80004598:	00000097          	auipc	ra,0x0
    8000459c:	f90080e7          	jalr	-112(ra) # 80004528 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800045a0:	00048513          	mv	a0,s1
    800045a4:	fffff097          	auipc	ra,0xfffff
    800045a8:	ed4080e7          	jalr	-300(ra) # 80003478 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800045ac:	fd5ff06f          	j	80004580 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800045b0:	01813083          	ld	ra,24(sp)
    800045b4:	01013403          	ld	s0,16(sp)
    800045b8:	00813483          	ld	s1,8(sp)
    800045bc:	00013903          	ld	s2,0(sp)
    800045c0:	02010113          	addi	sp,sp,32
    800045c4:	00008067          	ret

00000000800045c8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	01213023          	sd	s2,0(sp)
    800045dc:	02010413          	addi	s0,sp,32
    800045e0:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800045e4:	00000097          	auipc	ra,0x0
    800045e8:	f28080e7          	jalr	-216(ra) # 8000450c <_ZN10KSemaphore15getFirstBlockedEv>
    800045ec:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800045f0:	00090513          	mv	a0,s2
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	f34080e7          	jalr	-204(ra) # 80004528 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800045fc:	00048863          	beqz	s1,8000460c <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004600:	00048513          	mv	a0,s1
    80004604:	fffff097          	auipc	ra,0xfffff
    80004608:	e74080e7          	jalr	-396(ra) # 80003478 <_ZN9Scheduler3putEP3PCB>
    }
}
    8000460c:	01813083          	ld	ra,24(sp)
    80004610:	01013403          	ld	s0,16(sp)
    80004614:	00813483          	ld	s1,8(sp)
    80004618:	00013903          	ld	s2,0(sp)
    8000461c:	02010113          	addi	sp,sp,32
    80004620:	00008067          	ret

0000000080004624 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004624:	01052783          	lw	a5,16(a0)
    80004628:	0017879b          	addiw	a5,a5,1
    8000462c:	0007871b          	sext.w	a4,a5
    80004630:	00f52823          	sw	a5,16(a0)
    80004634:	00e05663          	blez	a4,80004640 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004638:	00000513          	li	a0,0
    8000463c:	00008067          	ret
uint64 KSemaphore::signal() {
    80004640:	ff010113          	addi	sp,sp,-16
    80004644:	00113423          	sd	ra,8(sp)
    80004648:	00813023          	sd	s0,0(sp)
    8000464c:	01010413          	addi	s0,sp,16
        unblock();
    80004650:	00000097          	auipc	ra,0x0
    80004654:	f78080e7          	jalr	-136(ra) # 800045c8 <_ZN10KSemaphore7unblockEv>
}
    80004658:	00000513          	li	a0,0
    8000465c:	00813083          	ld	ra,8(sp)
    80004660:	00013403          	ld	s0,0(sp)
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00008067          	ret

000000008000466c <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    8000466c:	ff010113          	addi	sp,sp,-16
    80004670:	00113423          	sd	ra,8(sp)
    80004674:	00813023          	sd	s0,0(sp)
    80004678:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000467c:	00000097          	auipc	ra,0x0
    80004680:	cec080e7          	jalr	-788(ra) # 80004368 <_Z7kmallocm>
}
    80004684:	00813083          	ld	ra,8(sp)
    80004688:	00013403          	ld	s0,0(sp)
    8000468c:	01010113          	addi	sp,sp,16
    80004690:	00008067          	ret

0000000080004694 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004694:	fd010113          	addi	sp,sp,-48
    80004698:	02113423          	sd	ra,40(sp)
    8000469c:	02813023          	sd	s0,32(sp)
    800046a0:	00913c23          	sd	s1,24(sp)
    800046a4:	01213823          	sd	s2,16(sp)
    800046a8:	01313423          	sd	s3,8(sp)
    800046ac:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800046b0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800046b4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800046b8:	01800513          	li	a0,24
    800046bc:	00000097          	auipc	ra,0x0
    800046c0:	fb0080e7          	jalr	-80(ra) # 8000466c <_ZN10KSemaphorenwEm>
    800046c4:	00050493          	mv	s1,a0
    800046c8:	0009859b          	sext.w	a1,s3
    800046cc:	00000097          	auipc	ra,0x0
    800046d0:	d50080e7          	jalr	-688(ra) # 8000441c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800046d4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800046d8:	02048263          	beqz	s1,800046fc <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800046dc:	00000513          	li	a0,0
}
    800046e0:	02813083          	ld	ra,40(sp)
    800046e4:	02013403          	ld	s0,32(sp)
    800046e8:	01813483          	ld	s1,24(sp)
    800046ec:	01013903          	ld	s2,16(sp)
    800046f0:	00813983          	ld	s3,8(sp)
    800046f4:	03010113          	addi	sp,sp,48
    800046f8:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800046fc:	fff00513          	li	a0,-1
    80004700:	fe1ff06f          	j	800046e0 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004704 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004704:	ff010113          	addi	sp,sp,-16
    80004708:	00113423          	sd	ra,8(sp)
    8000470c:	00813023          	sd	s0,0(sp)
    80004710:	01010413          	addi	s0,sp,16
    kfree(p);
    80004714:	00000097          	auipc	ra,0x0
    80004718:	cb0080e7          	jalr	-848(ra) # 800043c4 <_Z5kfreePv>
}
    8000471c:	00813083          	ld	ra,8(sp)
    80004720:	00013403          	ld	s0,0(sp)
    80004724:	01010113          	addi	sp,sp,16
    80004728:	00008067          	ret

000000008000472c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    8000472c:	fe010113          	addi	sp,sp,-32
    80004730:	00113c23          	sd	ra,24(sp)
    80004734:	00813823          	sd	s0,16(sp)
    80004738:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000473c:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    80004740:	00000097          	auipc	ra,0x0
    80004744:	d84080e7          	jalr	-636(ra) # 800044c4 <_ZN10KSemaphore4waitEv>
    80004748:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000474c:	fe843783          	ld	a5,-24(s0)
    80004750:	00078513          	mv	a0,a5
}
    80004754:	01813083          	ld	ra,24(sp)
    80004758:	01013403          	ld	s0,16(sp)
    8000475c:	02010113          	addi	sp,sp,32
    80004760:	00008067          	ret

0000000080004764 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004764:	fe010113          	addi	sp,sp,-32
    80004768:	00113c23          	sd	ra,24(sp)
    8000476c:	00813823          	sd	s0,16(sp)
    80004770:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004774:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	eac080e7          	jalr	-340(ra) # 80004624 <_ZN10KSemaphore6signalEv>
    80004780:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004784:	fe843783          	ld	a5,-24(s0)
    80004788:	00078513          	mv	a0,a5
}
    8000478c:	01813083          	ld	ra,24(sp)
    80004790:	01013403          	ld	s0,16(sp)
    80004794:	02010113          	addi	sp,sp,32
    80004798:	00008067          	ret

000000008000479c <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    8000479c:	fe010113          	addi	sp,sp,-32
    800047a0:	00113c23          	sd	ra,24(sp)
    800047a4:	00813823          	sd	s0,16(sp)
    800047a8:	00913423          	sd	s1,8(sp)
    800047ac:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800047b0:	00058493          	mv	s1,a1
    delete kSem;
    800047b4:	00048e63          	beqz	s1,800047d0 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800047b8:	00048513          	mv	a0,s1
    800047bc:	00000097          	auipc	ra,0x0
    800047c0:	da8080e7          	jalr	-600(ra) # 80004564 <_ZN10KSemaphoreD1Ev>
    800047c4:	00048513          	mv	a0,s1
    800047c8:	00000097          	auipc	ra,0x0
    800047cc:	f3c080e7          	jalr	-196(ra) # 80004704 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800047d0:	00000513          	li	a0,0
}
    800047d4:	01813083          	ld	ra,24(sp)
    800047d8:	01013403          	ld	s0,16(sp)
    800047dc:	00813483          	ld	s1,8(sp)
    800047e0:	02010113          	addi	sp,sp,32
    800047e4:	00008067          	ret

00000000800047e8 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800047e8:	fe010113          	addi	sp,sp,-32
    800047ec:	00113c23          	sd	ra,24(sp)
    800047f0:	00813823          	sd	s0,16(sp)
    800047f4:	00913423          	sd	s1,8(sp)
    800047f8:	01213023          	sd	s2,0(sp)
    800047fc:	02010413          	addi	s0,sp,32
    80004800:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004804:	00000913          	li	s2,0
    80004808:	00c0006f          	j	80004814 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000480c:	ffffd097          	auipc	ra,0xffffd
    80004810:	b18080e7          	jalr	-1256(ra) # 80001324 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	cec080e7          	jalr	-788(ra) # 80001500 <getc>
    8000481c:	0005059b          	sext.w	a1,a0
    80004820:	07100793          	li	a5,113
    80004824:	02f58a63          	beq	a1,a5,80004858 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004828:	0084b503          	ld	a0,8(s1)
    8000482c:	00002097          	auipc	ra,0x2
    80004830:	c94080e7          	jalr	-876(ra) # 800064c0 <_ZN6Buffer3putEi>
        i++;
    80004834:	0019071b          	addiw	a4,s2,1
    80004838:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000483c:	0004a683          	lw	a3,0(s1)
    80004840:	0026979b          	slliw	a5,a3,0x2
    80004844:	00d787bb          	addw	a5,a5,a3
    80004848:	0017979b          	slliw	a5,a5,0x1
    8000484c:	02f767bb          	remw	a5,a4,a5
    80004850:	fc0792e3          	bnez	a5,80004814 <_Z16producerKeyboardPv+0x2c>
    80004854:	fb9ff06f          	j	8000480c <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80004858:	00100793          	li	a5,1
    8000485c:	00007717          	auipc	a4,0x7
    80004860:	40f72623          	sw	a5,1036(a4) # 8000bc68 <threadEnd>

    delete data->buffer;
    80004864:	0084b903          	ld	s2,8(s1)
    80004868:	00090e63          	beqz	s2,80004884 <_Z16producerKeyboardPv+0x9c>
    8000486c:	00090513          	mv	a0,s2
    80004870:	00002097          	auipc	ra,0x2
    80004874:	b94080e7          	jalr	-1132(ra) # 80006404 <_ZN6BufferD1Ev>
    80004878:	00090513          	mv	a0,s2
    8000487c:	fffff097          	auipc	ra,0xfffff
    80004880:	e18080e7          	jalr	-488(ra) # 80003694 <_ZdlPv>

    sem_signal(data->wait);
    80004884:	0104b503          	ld	a0,16(s1)
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	b74080e7          	jalr	-1164(ra) # 800013fc <sem_signal>
}
    80004890:	01813083          	ld	ra,24(sp)
    80004894:	01013403          	ld	s0,16(sp)
    80004898:	00813483          	ld	s1,8(sp)
    8000489c:	00013903          	ld	s2,0(sp)
    800048a0:	02010113          	addi	sp,sp,32
    800048a4:	00008067          	ret

00000000800048a8 <_Z8producerPv>:

void producer(void *arg) {
    800048a8:	fe010113          	addi	sp,sp,-32
    800048ac:	00113c23          	sd	ra,24(sp)
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00913423          	sd	s1,8(sp)
    800048b8:	01213023          	sd	s2,0(sp)
    800048bc:	02010413          	addi	s0,sp,32
    800048c0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800048c4:	00000913          	li	s2,0
    800048c8:	00c0006f          	j	800048d4 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800048cc:	ffffd097          	auipc	ra,0xffffd
    800048d0:	a58080e7          	jalr	-1448(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    800048d4:	00007797          	auipc	a5,0x7
    800048d8:	3947a783          	lw	a5,916(a5) # 8000bc68 <threadEnd>
    800048dc:	02079e63          	bnez	a5,80004918 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800048e0:	0004a583          	lw	a1,0(s1)
    800048e4:	0305859b          	addiw	a1,a1,48
    800048e8:	0084b503          	ld	a0,8(s1)
    800048ec:	00002097          	auipc	ra,0x2
    800048f0:	bd4080e7          	jalr	-1068(ra) # 800064c0 <_ZN6Buffer3putEi>
        i++;
    800048f4:	0019071b          	addiw	a4,s2,1
    800048f8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048fc:	0004a683          	lw	a3,0(s1)
    80004900:	0026979b          	slliw	a5,a3,0x2
    80004904:	00d787bb          	addw	a5,a5,a3
    80004908:	0017979b          	slliw	a5,a5,0x1
    8000490c:	02f767bb          	remw	a5,a4,a5
    80004910:	fc0792e3          	bnez	a5,800048d4 <_Z8producerPv+0x2c>
    80004914:	fb9ff06f          	j	800048cc <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004918:	0104b503          	ld	a0,16(s1)
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	ae0080e7          	jalr	-1312(ra) # 800013fc <sem_signal>
}
    80004924:	01813083          	ld	ra,24(sp)
    80004928:	01013403          	ld	s0,16(sp)
    8000492c:	00813483          	ld	s1,8(sp)
    80004930:	00013903          	ld	s2,0(sp)
    80004934:	02010113          	addi	sp,sp,32
    80004938:	00008067          	ret

000000008000493c <_Z8consumerPv>:

void consumer(void *arg) {
    8000493c:	fd010113          	addi	sp,sp,-48
    80004940:	02113423          	sd	ra,40(sp)
    80004944:	02813023          	sd	s0,32(sp)
    80004948:	00913c23          	sd	s1,24(sp)
    8000494c:	01213823          	sd	s2,16(sp)
    80004950:	01313423          	sd	s3,8(sp)
    80004954:	03010413          	addi	s0,sp,48
    80004958:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    8000495c:	00000993          	li	s3,0
    80004960:	01c0006f          	j	8000497c <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	9c0080e7          	jalr	-1600(ra) # 80001324 <thread_dispatch>
    8000496c:	0500006f          	j	800049bc <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004970:	00a00513          	li	a0,10
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	bb4080e7          	jalr	-1100(ra) # 80001528 <putc>
    while (!threadEnd) {
    8000497c:	00007797          	auipc	a5,0x7
    80004980:	2ec7a783          	lw	a5,748(a5) # 8000bc68 <threadEnd>
    80004984:	04079463          	bnez	a5,800049cc <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004988:	00893503          	ld	a0,8(s2)
    8000498c:	00002097          	auipc	ra,0x2
    80004990:	bc4080e7          	jalr	-1084(ra) # 80006550 <_ZN6Buffer3getEv>
        i++;
    80004994:	0019849b          	addiw	s1,s3,1
    80004998:	0004899b          	sext.w	s3,s1
        putc(key);
    8000499c:	0ff57513          	andi	a0,a0,255
    800049a0:	ffffd097          	auipc	ra,0xffffd
    800049a4:	b88080e7          	jalr	-1144(ra) # 80001528 <putc>
        if (i % (5 * data->id) == 0) {
    800049a8:	00092703          	lw	a4,0(s2)
    800049ac:	0027179b          	slliw	a5,a4,0x2
    800049b0:	00e787bb          	addw	a5,a5,a4
    800049b4:	02f4e7bb          	remw	a5,s1,a5
    800049b8:	fa0786e3          	beqz	a5,80004964 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    800049bc:	05000793          	li	a5,80
    800049c0:	02f4e4bb          	remw	s1,s1,a5
    800049c4:	fa049ce3          	bnez	s1,8000497c <_Z8consumerPv+0x40>
    800049c8:	fa9ff06f          	j	80004970 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    800049cc:	01093503          	ld	a0,16(s2)
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	a2c080e7          	jalr	-1492(ra) # 800013fc <sem_signal>
}
    800049d8:	02813083          	ld	ra,40(sp)
    800049dc:	02013403          	ld	s0,32(sp)
    800049e0:	01813483          	ld	s1,24(sp)
    800049e4:	01013903          	ld	s2,16(sp)
    800049e8:	00813983          	ld	s3,8(sp)
    800049ec:	03010113          	addi	sp,sp,48
    800049f0:	00008067          	ret

00000000800049f4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800049f4:	f9010113          	addi	sp,sp,-112
    800049f8:	06113423          	sd	ra,104(sp)
    800049fc:	06813023          	sd	s0,96(sp)
    80004a00:	04913c23          	sd	s1,88(sp)
    80004a04:	05213823          	sd	s2,80(sp)
    80004a08:	05313423          	sd	s3,72(sp)
    80004a0c:	05413023          	sd	s4,64(sp)
    80004a10:	03513c23          	sd	s5,56(sp)
    80004a14:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004a18:	00005517          	auipc	a0,0x5
    80004a1c:	9a050513          	addi	a0,a0,-1632 # 800093b8 <_ZZN5Riscv12printIntegerEmE6digits+0x18>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	234080e7          	jalr	564(ra) # 80005c54 <_Z11printStringPKc>
    getString(input, 30);
    80004a28:	01e00593          	li	a1,30
    80004a2c:	fa040493          	addi	s1,s0,-96
    80004a30:	00048513          	mv	a0,s1
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	29c080e7          	jalr	668(ra) # 80005cd0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004a3c:	00048513          	mv	a0,s1
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	35c080e7          	jalr	860(ra) # 80005d9c <_Z11stringToIntPKc>
    80004a48:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004a4c:	00005517          	auipc	a0,0x5
    80004a50:	98c50513          	addi	a0,a0,-1652 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	200080e7          	jalr	512(ra) # 80005c54 <_Z11printStringPKc>
    getString(input, 30);
    80004a5c:	01e00593          	li	a1,30
    80004a60:	00048513          	mv	a0,s1
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	26c080e7          	jalr	620(ra) # 80005cd0 <_Z9getStringPci>
    n = stringToInt(input);
    80004a6c:	00048513          	mv	a0,s1
    80004a70:	00001097          	auipc	ra,0x1
    80004a74:	32c080e7          	jalr	812(ra) # 80005d9c <_Z11stringToIntPKc>
    80004a78:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004a7c:	00005517          	auipc	a0,0x5
    80004a80:	97c50513          	addi	a0,a0,-1668 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    80004a84:	00001097          	auipc	ra,0x1
    80004a88:	1d0080e7          	jalr	464(ra) # 80005c54 <_Z11printStringPKc>
    80004a8c:	00000613          	li	a2,0
    80004a90:	00a00593          	li	a1,10
    80004a94:	00090513          	mv	a0,s2
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	354080e7          	jalr	852(ra) # 80005dec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004aa0:	00005517          	auipc	a0,0x5
    80004aa4:	97050513          	addi	a0,a0,-1680 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	1ac080e7          	jalr	428(ra) # 80005c54 <_Z11printStringPKc>
    80004ab0:	00000613          	li	a2,0
    80004ab4:	00a00593          	li	a1,10
    80004ab8:	00048513          	mv	a0,s1
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	330080e7          	jalr	816(ra) # 80005dec <_Z8printIntiii>
    printString(".\n");
    80004ac4:	00004517          	auipc	a0,0x4
    80004ac8:	78c50513          	addi	a0,a0,1932 # 80009250 <CONSOLE_STATUS+0x240>
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	188080e7          	jalr	392(ra) # 80005c54 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004ad4:	03800513          	li	a0,56
    80004ad8:	fffff097          	auipc	ra,0xfffff
    80004adc:	b94080e7          	jalr	-1132(ra) # 8000366c <_Znwm>
    80004ae0:	00050a13          	mv	s4,a0
    80004ae4:	00048593          	mv	a1,s1
    80004ae8:	00002097          	auipc	ra,0x2
    80004aec:	894080e7          	jalr	-1900(ra) # 8000637c <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004af0:	00000593          	li	a1,0
    80004af4:	00007517          	auipc	a0,0x7
    80004af8:	17c50513          	addi	a0,a0,380 # 8000bc70 <waitForAll>
    80004afc:	ffffd097          	auipc	ra,0xffffd
    80004b00:	870080e7          	jalr	-1936(ra) # 8000136c <sem_open>

    thread_t threads[threadNum];
    80004b04:	00391793          	slli	a5,s2,0x3
    80004b08:	00f78793          	addi	a5,a5,15
    80004b0c:	ff07f793          	andi	a5,a5,-16
    80004b10:	40f10133          	sub	sp,sp,a5
    80004b14:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004b18:	0019071b          	addiw	a4,s2,1
    80004b1c:	00171793          	slli	a5,a4,0x1
    80004b20:	00e787b3          	add	a5,a5,a4
    80004b24:	00379793          	slli	a5,a5,0x3
    80004b28:	00f78793          	addi	a5,a5,15
    80004b2c:	ff07f793          	andi	a5,a5,-16
    80004b30:	40f10133          	sub	sp,sp,a5
    80004b34:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004b38:	00191613          	slli	a2,s2,0x1
    80004b3c:	012607b3          	add	a5,a2,s2
    80004b40:	00379793          	slli	a5,a5,0x3
    80004b44:	00f987b3          	add	a5,s3,a5
    80004b48:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004b4c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004b50:	00007717          	auipc	a4,0x7
    80004b54:	12073703          	ld	a4,288(a4) # 8000bc70 <waitForAll>
    80004b58:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004b5c:	00078613          	mv	a2,a5
    80004b60:	00000597          	auipc	a1,0x0
    80004b64:	ddc58593          	addi	a1,a1,-548 # 8000493c <_Z8consumerPv>
    80004b68:	f9840513          	addi	a0,s0,-104
    80004b6c:	ffffc097          	auipc	ra,0xffffc
    80004b70:	738080e7          	jalr	1848(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004b74:	00000493          	li	s1,0
    80004b78:	0280006f          	j	80004ba0 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004b7c:	00000597          	auipc	a1,0x0
    80004b80:	c6c58593          	addi	a1,a1,-916 # 800047e8 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004b84:	00179613          	slli	a2,a5,0x1
    80004b88:	00f60633          	add	a2,a2,a5
    80004b8c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004b90:	00c98633          	add	a2,s3,a2
    80004b94:	ffffc097          	auipc	ra,0xffffc
    80004b98:	710080e7          	jalr	1808(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004b9c:	0014849b          	addiw	s1,s1,1
    80004ba0:	0524d263          	bge	s1,s2,80004be4 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004ba4:	00149793          	slli	a5,s1,0x1
    80004ba8:	009787b3          	add	a5,a5,s1
    80004bac:	00379793          	slli	a5,a5,0x3
    80004bb0:	00f987b3          	add	a5,s3,a5
    80004bb4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004bb8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004bbc:	00007717          	auipc	a4,0x7
    80004bc0:	0b473703          	ld	a4,180(a4) # 8000bc70 <waitForAll>
    80004bc4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004bc8:	00048793          	mv	a5,s1
    80004bcc:	00349513          	slli	a0,s1,0x3
    80004bd0:	00aa8533          	add	a0,s5,a0
    80004bd4:	fa9054e3          	blez	s1,80004b7c <_Z22producerConsumer_C_APIv+0x188>
    80004bd8:	00000597          	auipc	a1,0x0
    80004bdc:	cd058593          	addi	a1,a1,-816 # 800048a8 <_Z8producerPv>
    80004be0:	fa5ff06f          	j	80004b84 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004be4:	ffffc097          	auipc	ra,0xffffc
    80004be8:	740080e7          	jalr	1856(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004bec:	00000493          	li	s1,0
    80004bf0:	00994e63          	blt	s2,s1,80004c0c <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004bf4:	00007517          	auipc	a0,0x7
    80004bf8:	07c53503          	ld	a0,124(a0) # 8000bc70 <waitForAll>
    80004bfc:	ffffc097          	auipc	ra,0xffffc
    80004c00:	7d4080e7          	jalr	2004(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004c04:	0014849b          	addiw	s1,s1,1
    80004c08:	fe9ff06f          	j	80004bf0 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004c0c:	00007517          	auipc	a0,0x7
    80004c10:	06453503          	ld	a0,100(a0) # 8000bc70 <waitForAll>
    80004c14:	ffffc097          	auipc	ra,0xffffc
    80004c18:	790080e7          	jalr	1936(ra) # 800013a4 <sem_close>
    80004c1c:	f9040113          	addi	sp,s0,-112
    80004c20:	06813083          	ld	ra,104(sp)
    80004c24:	06013403          	ld	s0,96(sp)
    80004c28:	05813483          	ld	s1,88(sp)
    80004c2c:	05013903          	ld	s2,80(sp)
    80004c30:	04813983          	ld	s3,72(sp)
    80004c34:	04013a03          	ld	s4,64(sp)
    80004c38:	03813a83          	ld	s5,56(sp)
    80004c3c:	07010113          	addi	sp,sp,112
    80004c40:	00008067          	ret
    80004c44:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004c48:	000a0513          	mv	a0,s4
    80004c4c:	fffff097          	auipc	ra,0xfffff
    80004c50:	a48080e7          	jalr	-1464(ra) # 80003694 <_ZdlPv>
    80004c54:	00048513          	mv	a0,s1
    80004c58:	00008097          	auipc	ra,0x8
    80004c5c:	100080e7          	jalr	256(ra) # 8000cd58 <_Unwind_Resume>

0000000080004c60 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004c60:	fe010113          	addi	sp,sp,-32
    80004c64:	00113c23          	sd	ra,24(sp)
    80004c68:	00813823          	sd	s0,16(sp)
    80004c6c:	00913423          	sd	s1,8(sp)
    80004c70:	01213023          	sd	s2,0(sp)
    80004c74:	02010413          	addi	s0,sp,32
    80004c78:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c7c:	00100793          	li	a5,1
    80004c80:	02a7f863          	bgeu	a5,a0,80004cb0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c84:	00a00793          	li	a5,10
    80004c88:	02f577b3          	remu	a5,a0,a5
    80004c8c:	02078e63          	beqz	a5,80004cc8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c90:	fff48513          	addi	a0,s1,-1
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	fcc080e7          	jalr	-52(ra) # 80004c60 <_ZL9fibonaccim>
    80004c9c:	00050913          	mv	s2,a0
    80004ca0:	ffe48513          	addi	a0,s1,-2
    80004ca4:	00000097          	auipc	ra,0x0
    80004ca8:	fbc080e7          	jalr	-68(ra) # 80004c60 <_ZL9fibonaccim>
    80004cac:	00a90533          	add	a0,s2,a0
}
    80004cb0:	01813083          	ld	ra,24(sp)
    80004cb4:	01013403          	ld	s0,16(sp)
    80004cb8:	00813483          	ld	s1,8(sp)
    80004cbc:	00013903          	ld	s2,0(sp)
    80004cc0:	02010113          	addi	sp,sp,32
    80004cc4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004cc8:	ffffc097          	auipc	ra,0xffffc
    80004ccc:	65c080e7          	jalr	1628(ra) # 80001324 <thread_dispatch>
    80004cd0:	fc1ff06f          	j	80004c90 <_ZL9fibonaccim+0x30>

0000000080004cd4 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004cd4:	fe010113          	addi	sp,sp,-32
    80004cd8:	00113c23          	sd	ra,24(sp)
    80004cdc:	00813823          	sd	s0,16(sp)
    80004ce0:	00913423          	sd	s1,8(sp)
    80004ce4:	01213023          	sd	s2,0(sp)
    80004ce8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004cec:	00000913          	li	s2,0
    80004cf0:	0380006f          	j	80004d28 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004cf4:	ffffc097          	auipc	ra,0xffffc
    80004cf8:	630080e7          	jalr	1584(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004cfc:	00148493          	addi	s1,s1,1
    80004d00:	000027b7          	lui	a5,0x2
    80004d04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d08:	0097ee63          	bltu	a5,s1,80004d24 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d0c:	00000713          	li	a4,0
    80004d10:	000077b7          	lui	a5,0x7
    80004d14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d18:	fce7eee3          	bltu	a5,a4,80004cf4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004d1c:	00170713          	addi	a4,a4,1
    80004d20:	ff1ff06f          	j	80004d10 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d24:	00190913          	addi	s2,s2,1
    80004d28:	00900793          	li	a5,9
    80004d2c:	0527e063          	bltu	a5,s2,80004d6c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d30:	00004517          	auipc	a0,0x4
    80004d34:	6f850513          	addi	a0,a0,1784 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    80004d38:	00001097          	auipc	ra,0x1
    80004d3c:	f1c080e7          	jalr	-228(ra) # 80005c54 <_Z11printStringPKc>
    80004d40:	00000613          	li	a2,0
    80004d44:	00a00593          	li	a1,10
    80004d48:	0009051b          	sext.w	a0,s2
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	0a0080e7          	jalr	160(ra) # 80005dec <_Z8printIntiii>
    80004d54:	00004517          	auipc	a0,0x4
    80004d58:	3ac50513          	addi	a0,a0,940 # 80009100 <CONSOLE_STATUS+0xf0>
    80004d5c:	00001097          	auipc	ra,0x1
    80004d60:	ef8080e7          	jalr	-264(ra) # 80005c54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d64:	00000493          	li	s1,0
    80004d68:	f99ff06f          	j	80004d00 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004d6c:	00004517          	auipc	a0,0x4
    80004d70:	6c450513          	addi	a0,a0,1732 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004d74:	00001097          	auipc	ra,0x1
    80004d78:	ee0080e7          	jalr	-288(ra) # 80005c54 <_Z11printStringPKc>
    finishedA = true;
    80004d7c:	00100793          	li	a5,1
    80004d80:	00007717          	auipc	a4,0x7
    80004d84:	eef70c23          	sb	a5,-264(a4) # 8000bc78 <_ZL9finishedA>
}
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	01013403          	ld	s0,16(sp)
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	00013903          	ld	s2,0(sp)
    80004d98:	02010113          	addi	sp,sp,32
    80004d9c:	00008067          	ret

0000000080004da0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004da0:	fe010113          	addi	sp,sp,-32
    80004da4:	00113c23          	sd	ra,24(sp)
    80004da8:	00813823          	sd	s0,16(sp)
    80004dac:	00913423          	sd	s1,8(sp)
    80004db0:	01213023          	sd	s2,0(sp)
    80004db4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004db8:	00000913          	li	s2,0
    80004dbc:	0380006f          	j	80004df4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004dc0:	ffffc097          	auipc	ra,0xffffc
    80004dc4:	564080e7          	jalr	1380(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004dc8:	00148493          	addi	s1,s1,1
    80004dcc:	000027b7          	lui	a5,0x2
    80004dd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004dd4:	0097ee63          	bltu	a5,s1,80004df0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004dd8:	00000713          	li	a4,0
    80004ddc:	000077b7          	lui	a5,0x7
    80004de0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004de4:	fce7eee3          	bltu	a5,a4,80004dc0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004de8:	00170713          	addi	a4,a4,1
    80004dec:	ff1ff06f          	j	80004ddc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004df0:	00190913          	addi	s2,s2,1
    80004df4:	00f00793          	li	a5,15
    80004df8:	0527e063          	bltu	a5,s2,80004e38 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004dfc:	00004517          	auipc	a0,0x4
    80004e00:	64450513          	addi	a0,a0,1604 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	e50080e7          	jalr	-432(ra) # 80005c54 <_Z11printStringPKc>
    80004e0c:	00000613          	li	a2,0
    80004e10:	00a00593          	li	a1,10
    80004e14:	0009051b          	sext.w	a0,s2
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	fd4080e7          	jalr	-44(ra) # 80005dec <_Z8printIntiii>
    80004e20:	00004517          	auipc	a0,0x4
    80004e24:	2e050513          	addi	a0,a0,736 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	e2c080e7          	jalr	-468(ra) # 80005c54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e30:	00000493          	li	s1,0
    80004e34:	f99ff06f          	j	80004dcc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004e38:	00004517          	auipc	a0,0x4
    80004e3c:	61050513          	addi	a0,a0,1552 # 80009448 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	e14080e7          	jalr	-492(ra) # 80005c54 <_Z11printStringPKc>
    finishedB = true;
    80004e48:	00100793          	li	a5,1
    80004e4c:	00007717          	auipc	a4,0x7
    80004e50:	e2f706a3          	sb	a5,-467(a4) # 8000bc79 <_ZL9finishedB>
    thread_dispatch();
    80004e54:	ffffc097          	auipc	ra,0xffffc
    80004e58:	4d0080e7          	jalr	1232(ra) # 80001324 <thread_dispatch>
}
    80004e5c:	01813083          	ld	ra,24(sp)
    80004e60:	01013403          	ld	s0,16(sp)
    80004e64:	00813483          	ld	s1,8(sp)
    80004e68:	00013903          	ld	s2,0(sp)
    80004e6c:	02010113          	addi	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004e74:	fe010113          	addi	sp,sp,-32
    80004e78:	00113c23          	sd	ra,24(sp)
    80004e7c:	00813823          	sd	s0,16(sp)
    80004e80:	00913423          	sd	s1,8(sp)
    80004e84:	01213023          	sd	s2,0(sp)
    80004e88:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004e8c:	00000493          	li	s1,0
    80004e90:	0400006f          	j	80004ed0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004e94:	00004517          	auipc	a0,0x4
    80004e98:	5c450513          	addi	a0,a0,1476 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004e9c:	00001097          	auipc	ra,0x1
    80004ea0:	db8080e7          	jalr	-584(ra) # 80005c54 <_Z11printStringPKc>
    80004ea4:	00000613          	li	a2,0
    80004ea8:	00a00593          	li	a1,10
    80004eac:	00048513          	mv	a0,s1
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	f3c080e7          	jalr	-196(ra) # 80005dec <_Z8printIntiii>
    80004eb8:	00004517          	auipc	a0,0x4
    80004ebc:	24850513          	addi	a0,a0,584 # 80009100 <CONSOLE_STATUS+0xf0>
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	d94080e7          	jalr	-620(ra) # 80005c54 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ec8:	0014849b          	addiw	s1,s1,1
    80004ecc:	0ff4f493          	andi	s1,s1,255
    80004ed0:	00200793          	li	a5,2
    80004ed4:	fc97f0e3          	bgeu	a5,s1,80004e94 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004ed8:	00004517          	auipc	a0,0x4
    80004edc:	58850513          	addi	a0,a0,1416 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	d74080e7          	jalr	-652(ra) # 80005c54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004ee8:	00700313          	li	t1,7
    thread_dispatch();
    80004eec:	ffffc097          	auipc	ra,0xffffc
    80004ef0:	438080e7          	jalr	1080(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004ef4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004ef8:	00004517          	auipc	a0,0x4
    80004efc:	57850513          	addi	a0,a0,1400 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	d54080e7          	jalr	-684(ra) # 80005c54 <_Z11printStringPKc>
    80004f08:	00000613          	li	a2,0
    80004f0c:	00a00593          	li	a1,10
    80004f10:	0009051b          	sext.w	a0,s2
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	ed8080e7          	jalr	-296(ra) # 80005dec <_Z8printIntiii>
    80004f1c:	00004517          	auipc	a0,0x4
    80004f20:	1e450513          	addi	a0,a0,484 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	d30080e7          	jalr	-720(ra) # 80005c54 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004f2c:	00c00513          	li	a0,12
    80004f30:	00000097          	auipc	ra,0x0
    80004f34:	d30080e7          	jalr	-720(ra) # 80004c60 <_ZL9fibonaccim>
    80004f38:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004f3c:	00004517          	auipc	a0,0x4
    80004f40:	53c50513          	addi	a0,a0,1340 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xd8>
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	d10080e7          	jalr	-752(ra) # 80005c54 <_Z11printStringPKc>
    80004f4c:	00000613          	li	a2,0
    80004f50:	00a00593          	li	a1,10
    80004f54:	0009051b          	sext.w	a0,s2
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	e94080e7          	jalr	-364(ra) # 80005dec <_Z8printIntiii>
    80004f60:	00004517          	auipc	a0,0x4
    80004f64:	1a050513          	addi	a0,a0,416 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f68:	00001097          	auipc	ra,0x1
    80004f6c:	cec080e7          	jalr	-788(ra) # 80005c54 <_Z11printStringPKc>
    80004f70:	0400006f          	j	80004fb0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004f74:	00004517          	auipc	a0,0x4
    80004f78:	4e450513          	addi	a0,a0,1252 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004f7c:	00001097          	auipc	ra,0x1
    80004f80:	cd8080e7          	jalr	-808(ra) # 80005c54 <_Z11printStringPKc>
    80004f84:	00000613          	li	a2,0
    80004f88:	00a00593          	li	a1,10
    80004f8c:	00048513          	mv	a0,s1
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	e5c080e7          	jalr	-420(ra) # 80005dec <_Z8printIntiii>
    80004f98:	00004517          	auipc	a0,0x4
    80004f9c:	16850513          	addi	a0,a0,360 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fa0:	00001097          	auipc	ra,0x1
    80004fa4:	cb4080e7          	jalr	-844(ra) # 80005c54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004fa8:	0014849b          	addiw	s1,s1,1
    80004fac:	0ff4f493          	andi	s1,s1,255
    80004fb0:	00500793          	li	a5,5
    80004fb4:	fc97f0e3          	bgeu	a5,s1,80004f74 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004fb8:	00004517          	auipc	a0,0x4
    80004fbc:	47850513          	addi	a0,a0,1144 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	c94080e7          	jalr	-876(ra) # 80005c54 <_Z11printStringPKc>
    finishedC = true;
    80004fc8:	00100793          	li	a5,1
    80004fcc:	00007717          	auipc	a4,0x7
    80004fd0:	caf70723          	sb	a5,-850(a4) # 8000bc7a <_ZL9finishedC>
    thread_dispatch();
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	350080e7          	jalr	848(ra) # 80001324 <thread_dispatch>
}
    80004fdc:	01813083          	ld	ra,24(sp)
    80004fe0:	01013403          	ld	s0,16(sp)
    80004fe4:	00813483          	ld	s1,8(sp)
    80004fe8:	00013903          	ld	s2,0(sp)
    80004fec:	02010113          	addi	sp,sp,32
    80004ff0:	00008067          	ret

0000000080004ff4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004ff4:	fe010113          	addi	sp,sp,-32
    80004ff8:	00113c23          	sd	ra,24(sp)
    80004ffc:	00813823          	sd	s0,16(sp)
    80005000:	00913423          	sd	s1,8(sp)
    80005004:	01213023          	sd	s2,0(sp)
    80005008:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000500c:	00a00493          	li	s1,10
    80005010:	0400006f          	j	80005050 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005014:	00004517          	auipc	a0,0x4
    80005018:	47450513          	addi	a0,a0,1140 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    8000501c:	00001097          	auipc	ra,0x1
    80005020:	c38080e7          	jalr	-968(ra) # 80005c54 <_Z11printStringPKc>
    80005024:	00000613          	li	a2,0
    80005028:	00a00593          	li	a1,10
    8000502c:	00048513          	mv	a0,s1
    80005030:	00001097          	auipc	ra,0x1
    80005034:	dbc080e7          	jalr	-580(ra) # 80005dec <_Z8printIntiii>
    80005038:	00004517          	auipc	a0,0x4
    8000503c:	0c850513          	addi	a0,a0,200 # 80009100 <CONSOLE_STATUS+0xf0>
    80005040:	00001097          	auipc	ra,0x1
    80005044:	c14080e7          	jalr	-1004(ra) # 80005c54 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005048:	0014849b          	addiw	s1,s1,1
    8000504c:	0ff4f493          	andi	s1,s1,255
    80005050:	00c00793          	li	a5,12
    80005054:	fc97f0e3          	bgeu	a5,s1,80005014 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80005058:	00004517          	auipc	a0,0x4
    8000505c:	43850513          	addi	a0,a0,1080 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    80005060:	00001097          	auipc	ra,0x1
    80005064:	bf4080e7          	jalr	-1036(ra) # 80005c54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005068:	00500313          	li	t1,5
    thread_dispatch();
    8000506c:	ffffc097          	auipc	ra,0xffffc
    80005070:	2b8080e7          	jalr	696(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005074:	01000513          	li	a0,16
    80005078:	00000097          	auipc	ra,0x0
    8000507c:	be8080e7          	jalr	-1048(ra) # 80004c60 <_ZL9fibonaccim>
    80005080:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005084:	00004517          	auipc	a0,0x4
    80005088:	41c50513          	addi	a0,a0,1052 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    8000508c:	00001097          	auipc	ra,0x1
    80005090:	bc8080e7          	jalr	-1080(ra) # 80005c54 <_Z11printStringPKc>
    80005094:	00000613          	li	a2,0
    80005098:	00a00593          	li	a1,10
    8000509c:	0009051b          	sext.w	a0,s2
    800050a0:	00001097          	auipc	ra,0x1
    800050a4:	d4c080e7          	jalr	-692(ra) # 80005dec <_Z8printIntiii>
    800050a8:	00004517          	auipc	a0,0x4
    800050ac:	05850513          	addi	a0,a0,88 # 80009100 <CONSOLE_STATUS+0xf0>
    800050b0:	00001097          	auipc	ra,0x1
    800050b4:	ba4080e7          	jalr	-1116(ra) # 80005c54 <_Z11printStringPKc>
    800050b8:	0400006f          	j	800050f8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050bc:	00004517          	auipc	a0,0x4
    800050c0:	3cc50513          	addi	a0,a0,972 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    800050c4:	00001097          	auipc	ra,0x1
    800050c8:	b90080e7          	jalr	-1136(ra) # 80005c54 <_Z11printStringPKc>
    800050cc:	00000613          	li	a2,0
    800050d0:	00a00593          	li	a1,10
    800050d4:	00048513          	mv	a0,s1
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	d14080e7          	jalr	-748(ra) # 80005dec <_Z8printIntiii>
    800050e0:	00004517          	auipc	a0,0x4
    800050e4:	02050513          	addi	a0,a0,32 # 80009100 <CONSOLE_STATUS+0xf0>
    800050e8:	00001097          	auipc	ra,0x1
    800050ec:	b6c080e7          	jalr	-1172(ra) # 80005c54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800050f0:	0014849b          	addiw	s1,s1,1
    800050f4:	0ff4f493          	andi	s1,s1,255
    800050f8:	00f00793          	li	a5,15
    800050fc:	fc97f0e3          	bgeu	a5,s1,800050bc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80005100:	00004517          	auipc	a0,0x4
    80005104:	3b050513          	addi	a0,a0,944 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	b4c080e7          	jalr	-1204(ra) # 80005c54 <_Z11printStringPKc>
    finishedD = true;
    80005110:	00100793          	li	a5,1
    80005114:	00007717          	auipc	a4,0x7
    80005118:	b6f703a3          	sb	a5,-1177(a4) # 8000bc7b <_ZL9finishedD>
    thread_dispatch();
    8000511c:	ffffc097          	auipc	ra,0xffffc
    80005120:	208080e7          	jalr	520(ra) # 80001324 <thread_dispatch>
}
    80005124:	01813083          	ld	ra,24(sp)
    80005128:	01013403          	ld	s0,16(sp)
    8000512c:	00813483          	ld	s1,8(sp)
    80005130:	00013903          	ld	s2,0(sp)
    80005134:	02010113          	addi	sp,sp,32
    80005138:	00008067          	ret

000000008000513c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000513c:	fc010113          	addi	sp,sp,-64
    80005140:	02113c23          	sd	ra,56(sp)
    80005144:	02813823          	sd	s0,48(sp)
    80005148:	02913423          	sd	s1,40(sp)
    8000514c:	03213023          	sd	s2,32(sp)
    80005150:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    Riscv::printString("Got here\n");
    80005154:	00004517          	auipc	a0,0x4
    80005158:	36c50513          	addi	a0,a0,876 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000515c:	fffff097          	auipc	ra,0xfffff
    80005160:	970080e7          	jalr	-1680(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    threads[0] = new WorkerA();
    80005164:	01000513          	li	a0,16
    80005168:	ffffe097          	auipc	ra,0xffffe
    8000516c:	504080e7          	jalr	1284(ra) # 8000366c <_Znwm>
    80005170:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80005174:	ffffe097          	auipc	ra,0xffffe
    80005178:	6c8080e7          	jalr	1736(ra) # 8000383c <_ZN6ThreadC1Ev>
    8000517c:	00007797          	auipc	a5,0x7
    80005180:	90478793          	addi	a5,a5,-1788 # 8000ba80 <_ZTV7WorkerA+0x10>
    80005184:	00f4b023          	sd	a5,0(s1)
    80005188:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000518c:	00004517          	auipc	a0,0x4
    80005190:	34450513          	addi	a0,a0,836 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005194:	00001097          	auipc	ra,0x1
    80005198:	ac0080e7          	jalr	-1344(ra) # 80005c54 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000519c:	01000513          	li	a0,16
    800051a0:	ffffe097          	auipc	ra,0xffffe
    800051a4:	4cc080e7          	jalr	1228(ra) # 8000366c <_Znwm>
    800051a8:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800051ac:	ffffe097          	auipc	ra,0xffffe
    800051b0:	690080e7          	jalr	1680(ra) # 8000383c <_ZN6ThreadC1Ev>
    800051b4:	00007797          	auipc	a5,0x7
    800051b8:	8f478793          	addi	a5,a5,-1804 # 8000baa8 <_ZTV7WorkerB+0x10>
    800051bc:	00f4b023          	sd	a5,0(s1)
    800051c0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800051c4:	00004517          	auipc	a0,0x4
    800051c8:	32450513          	addi	a0,a0,804 # 800094e8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800051cc:	00001097          	auipc	ra,0x1
    800051d0:	a88080e7          	jalr	-1400(ra) # 80005c54 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800051d4:	01000513          	li	a0,16
    800051d8:	ffffe097          	auipc	ra,0xffffe
    800051dc:	494080e7          	jalr	1172(ra) # 8000366c <_Znwm>
    800051e0:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800051e4:	ffffe097          	auipc	ra,0xffffe
    800051e8:	658080e7          	jalr	1624(ra) # 8000383c <_ZN6ThreadC1Ev>
    800051ec:	00007797          	auipc	a5,0x7
    800051f0:	8e478793          	addi	a5,a5,-1820 # 8000bad0 <_ZTV7WorkerC+0x10>
    800051f4:	00f4b023          	sd	a5,0(s1)
    800051f8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800051fc:	00004517          	auipc	a0,0x4
    80005200:	30450513          	addi	a0,a0,772 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005204:	00001097          	auipc	ra,0x1
    80005208:	a50080e7          	jalr	-1456(ra) # 80005c54 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000520c:	01000513          	li	a0,16
    80005210:	ffffe097          	auipc	ra,0xffffe
    80005214:	45c080e7          	jalr	1116(ra) # 8000366c <_Znwm>
    80005218:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    8000521c:	ffffe097          	auipc	ra,0xffffe
    80005220:	620080e7          	jalr	1568(ra) # 8000383c <_ZN6ThreadC1Ev>
    80005224:	00007797          	auipc	a5,0x7
    80005228:	8d478793          	addi	a5,a5,-1836 # 8000baf8 <_ZTV7WorkerD+0x10>
    8000522c:	00f4b023          	sd	a5,0(s1)
    80005230:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005234:	00004517          	auipc	a0,0x4
    80005238:	2e450513          	addi	a0,a0,740 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    8000523c:	00001097          	auipc	ra,0x1
    80005240:	a18080e7          	jalr	-1512(ra) # 80005c54 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005244:	00000493          	li	s1,0
    80005248:	00300793          	li	a5,3
    8000524c:	0297ca63          	blt	a5,s1,80005280 <_Z20Threads_CPP_API_testv+0x144>
        Riscv::printString("Starting...\n");
    80005250:	00004517          	auipc	a0,0x4
    80005254:	2e050513          	addi	a0,a0,736 # 80009530 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	874080e7          	jalr	-1932(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
        threads[i]->start();
    80005260:	00349793          	slli	a5,s1,0x3
    80005264:	fe040713          	addi	a4,s0,-32
    80005268:	00f707b3          	add	a5,a4,a5
    8000526c:	fe07b503          	ld	a0,-32(a5)
    80005270:	ffffe097          	auipc	ra,0xffffe
    80005274:	4cc080e7          	jalr	1228(ra) # 8000373c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005278:	0014849b          	addiw	s1,s1,1
    8000527c:	fcdff06f          	j	80005248 <_Z20Threads_CPP_API_testv+0x10c>
    }

    Riscv::printString("Thread started\n");
    80005280:	00004517          	auipc	a0,0x4
    80005284:	2c050513          	addi	a0,a0,704 # 80009540 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80005288:	fffff097          	auipc	ra,0xfffff
    8000528c:	844080e7          	jalr	-1980(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    80005290:	00c0006f          	j	8000529c <_Z20Threads_CPP_API_testv+0x160>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80005294:	ffffe097          	auipc	ra,0xffffe
    80005298:	4e0080e7          	jalr	1248(ra) # 80003774 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000529c:	00007797          	auipc	a5,0x7
    800052a0:	9dc7c783          	lbu	a5,-1572(a5) # 8000bc78 <_ZL9finishedA>
    800052a4:	fe0788e3          	beqz	a5,80005294 <_Z20Threads_CPP_API_testv+0x158>
    800052a8:	00007797          	auipc	a5,0x7
    800052ac:	9d17c783          	lbu	a5,-1583(a5) # 8000bc79 <_ZL9finishedB>
    800052b0:	fe0782e3          	beqz	a5,80005294 <_Z20Threads_CPP_API_testv+0x158>
    800052b4:	00007797          	auipc	a5,0x7
    800052b8:	9c67c783          	lbu	a5,-1594(a5) # 8000bc7a <_ZL9finishedC>
    800052bc:	fc078ce3          	beqz	a5,80005294 <_Z20Threads_CPP_API_testv+0x158>
    800052c0:	00007797          	auipc	a5,0x7
    800052c4:	9bb7c783          	lbu	a5,-1605(a5) # 8000bc7b <_ZL9finishedD>
    800052c8:	fc0786e3          	beqz	a5,80005294 <_Z20Threads_CPP_API_testv+0x158>
        //Riscv::printString("main\n");
    }

    for (auto thread: threads) { delete thread; }
    800052cc:	fc040493          	addi	s1,s0,-64
    800052d0:	0080006f          	j	800052d8 <_Z20Threads_CPP_API_testv+0x19c>
    800052d4:	00848493          	addi	s1,s1,8
    800052d8:	fe040793          	addi	a5,s0,-32
    800052dc:	08f48663          	beq	s1,a5,80005368 <_Z20Threads_CPP_API_testv+0x22c>
    800052e0:	0004b503          	ld	a0,0(s1)
    800052e4:	fe0508e3          	beqz	a0,800052d4 <_Z20Threads_CPP_API_testv+0x198>
    800052e8:	00053783          	ld	a5,0(a0)
    800052ec:	0087b783          	ld	a5,8(a5)
    800052f0:	000780e7          	jalr	a5
    800052f4:	fe1ff06f          	j	800052d4 <_Z20Threads_CPP_API_testv+0x198>
    800052f8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800052fc:	00048513          	mv	a0,s1
    80005300:	ffffe097          	auipc	ra,0xffffe
    80005304:	394080e7          	jalr	916(ra) # 80003694 <_ZdlPv>
    80005308:	00090513          	mv	a0,s2
    8000530c:	00008097          	auipc	ra,0x8
    80005310:	a4c080e7          	jalr	-1460(ra) # 8000cd58 <_Unwind_Resume>
    80005314:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005318:	00048513          	mv	a0,s1
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	378080e7          	jalr	888(ra) # 80003694 <_ZdlPv>
    80005324:	00090513          	mv	a0,s2
    80005328:	00008097          	auipc	ra,0x8
    8000532c:	a30080e7          	jalr	-1488(ra) # 8000cd58 <_Unwind_Resume>
    80005330:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005334:	00048513          	mv	a0,s1
    80005338:	ffffe097          	auipc	ra,0xffffe
    8000533c:	35c080e7          	jalr	860(ra) # 80003694 <_ZdlPv>
    80005340:	00090513          	mv	a0,s2
    80005344:	00008097          	auipc	ra,0x8
    80005348:	a14080e7          	jalr	-1516(ra) # 8000cd58 <_Unwind_Resume>
    8000534c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005350:	00048513          	mv	a0,s1
    80005354:	ffffe097          	auipc	ra,0xffffe
    80005358:	340080e7          	jalr	832(ra) # 80003694 <_ZdlPv>
    8000535c:	00090513          	mv	a0,s2
    80005360:	00008097          	auipc	ra,0x8
    80005364:	9f8080e7          	jalr	-1544(ra) # 8000cd58 <_Unwind_Resume>
    80005368:	03813083          	ld	ra,56(sp)
    8000536c:	03013403          	ld	s0,48(sp)
    80005370:	02813483          	ld	s1,40(sp)
    80005374:	02013903          	ld	s2,32(sp)
    80005378:	04010113          	addi	sp,sp,64
    8000537c:	00008067          	ret

0000000080005380 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005380:	ff010113          	addi	sp,sp,-16
    80005384:	00113423          	sd	ra,8(sp)
    80005388:	00813023          	sd	s0,0(sp)
    8000538c:	01010413          	addi	s0,sp,16
    80005390:	00006797          	auipc	a5,0x6
    80005394:	6f078793          	addi	a5,a5,1776 # 8000ba80 <_ZTV7WorkerA+0x10>
    80005398:	00f53023          	sd	a5,0(a0)
    8000539c:	ffffe097          	auipc	ra,0xffffe
    800053a0:	214080e7          	jalr	532(ra) # 800035b0 <_ZN6ThreadD1Ev>
    800053a4:	00813083          	ld	ra,8(sp)
    800053a8:	00013403          	ld	s0,0(sp)
    800053ac:	01010113          	addi	sp,sp,16
    800053b0:	00008067          	ret

00000000800053b4 <_ZN7WorkerAD0Ev>:
    800053b4:	fe010113          	addi	sp,sp,-32
    800053b8:	00113c23          	sd	ra,24(sp)
    800053bc:	00813823          	sd	s0,16(sp)
    800053c0:	00913423          	sd	s1,8(sp)
    800053c4:	02010413          	addi	s0,sp,32
    800053c8:	00050493          	mv	s1,a0
    800053cc:	00006797          	auipc	a5,0x6
    800053d0:	6b478793          	addi	a5,a5,1716 # 8000ba80 <_ZTV7WorkerA+0x10>
    800053d4:	00f53023          	sd	a5,0(a0)
    800053d8:	ffffe097          	auipc	ra,0xffffe
    800053dc:	1d8080e7          	jalr	472(ra) # 800035b0 <_ZN6ThreadD1Ev>
    800053e0:	00048513          	mv	a0,s1
    800053e4:	ffffe097          	auipc	ra,0xffffe
    800053e8:	2b0080e7          	jalr	688(ra) # 80003694 <_ZdlPv>
    800053ec:	01813083          	ld	ra,24(sp)
    800053f0:	01013403          	ld	s0,16(sp)
    800053f4:	00813483          	ld	s1,8(sp)
    800053f8:	02010113          	addi	sp,sp,32
    800053fc:	00008067          	ret

0000000080005400 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005400:	ff010113          	addi	sp,sp,-16
    80005404:	00113423          	sd	ra,8(sp)
    80005408:	00813023          	sd	s0,0(sp)
    8000540c:	01010413          	addi	s0,sp,16
    80005410:	00006797          	auipc	a5,0x6
    80005414:	69878793          	addi	a5,a5,1688 # 8000baa8 <_ZTV7WorkerB+0x10>
    80005418:	00f53023          	sd	a5,0(a0)
    8000541c:	ffffe097          	auipc	ra,0xffffe
    80005420:	194080e7          	jalr	404(ra) # 800035b0 <_ZN6ThreadD1Ev>
    80005424:	00813083          	ld	ra,8(sp)
    80005428:	00013403          	ld	s0,0(sp)
    8000542c:	01010113          	addi	sp,sp,16
    80005430:	00008067          	ret

0000000080005434 <_ZN7WorkerBD0Ev>:
    80005434:	fe010113          	addi	sp,sp,-32
    80005438:	00113c23          	sd	ra,24(sp)
    8000543c:	00813823          	sd	s0,16(sp)
    80005440:	00913423          	sd	s1,8(sp)
    80005444:	02010413          	addi	s0,sp,32
    80005448:	00050493          	mv	s1,a0
    8000544c:	00006797          	auipc	a5,0x6
    80005450:	65c78793          	addi	a5,a5,1628 # 8000baa8 <_ZTV7WorkerB+0x10>
    80005454:	00f53023          	sd	a5,0(a0)
    80005458:	ffffe097          	auipc	ra,0xffffe
    8000545c:	158080e7          	jalr	344(ra) # 800035b0 <_ZN6ThreadD1Ev>
    80005460:	00048513          	mv	a0,s1
    80005464:	ffffe097          	auipc	ra,0xffffe
    80005468:	230080e7          	jalr	560(ra) # 80003694 <_ZdlPv>
    8000546c:	01813083          	ld	ra,24(sp)
    80005470:	01013403          	ld	s0,16(sp)
    80005474:	00813483          	ld	s1,8(sp)
    80005478:	02010113          	addi	sp,sp,32
    8000547c:	00008067          	ret

0000000080005480 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005480:	ff010113          	addi	sp,sp,-16
    80005484:	00113423          	sd	ra,8(sp)
    80005488:	00813023          	sd	s0,0(sp)
    8000548c:	01010413          	addi	s0,sp,16
    80005490:	00006797          	auipc	a5,0x6
    80005494:	64078793          	addi	a5,a5,1600 # 8000bad0 <_ZTV7WorkerC+0x10>
    80005498:	00f53023          	sd	a5,0(a0)
    8000549c:	ffffe097          	auipc	ra,0xffffe
    800054a0:	114080e7          	jalr	276(ra) # 800035b0 <_ZN6ThreadD1Ev>
    800054a4:	00813083          	ld	ra,8(sp)
    800054a8:	00013403          	ld	s0,0(sp)
    800054ac:	01010113          	addi	sp,sp,16
    800054b0:	00008067          	ret

00000000800054b4 <_ZN7WorkerCD0Ev>:
    800054b4:	fe010113          	addi	sp,sp,-32
    800054b8:	00113c23          	sd	ra,24(sp)
    800054bc:	00813823          	sd	s0,16(sp)
    800054c0:	00913423          	sd	s1,8(sp)
    800054c4:	02010413          	addi	s0,sp,32
    800054c8:	00050493          	mv	s1,a0
    800054cc:	00006797          	auipc	a5,0x6
    800054d0:	60478793          	addi	a5,a5,1540 # 8000bad0 <_ZTV7WorkerC+0x10>
    800054d4:	00f53023          	sd	a5,0(a0)
    800054d8:	ffffe097          	auipc	ra,0xffffe
    800054dc:	0d8080e7          	jalr	216(ra) # 800035b0 <_ZN6ThreadD1Ev>
    800054e0:	00048513          	mv	a0,s1
    800054e4:	ffffe097          	auipc	ra,0xffffe
    800054e8:	1b0080e7          	jalr	432(ra) # 80003694 <_ZdlPv>
    800054ec:	01813083          	ld	ra,24(sp)
    800054f0:	01013403          	ld	s0,16(sp)
    800054f4:	00813483          	ld	s1,8(sp)
    800054f8:	02010113          	addi	sp,sp,32
    800054fc:	00008067          	ret

0000000080005500 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005500:	ff010113          	addi	sp,sp,-16
    80005504:	00113423          	sd	ra,8(sp)
    80005508:	00813023          	sd	s0,0(sp)
    8000550c:	01010413          	addi	s0,sp,16
    80005510:	00006797          	auipc	a5,0x6
    80005514:	5e878793          	addi	a5,a5,1512 # 8000baf8 <_ZTV7WorkerD+0x10>
    80005518:	00f53023          	sd	a5,0(a0)
    8000551c:	ffffe097          	auipc	ra,0xffffe
    80005520:	094080e7          	jalr	148(ra) # 800035b0 <_ZN6ThreadD1Ev>
    80005524:	00813083          	ld	ra,8(sp)
    80005528:	00013403          	ld	s0,0(sp)
    8000552c:	01010113          	addi	sp,sp,16
    80005530:	00008067          	ret

0000000080005534 <_ZN7WorkerDD0Ev>:
    80005534:	fe010113          	addi	sp,sp,-32
    80005538:	00113c23          	sd	ra,24(sp)
    8000553c:	00813823          	sd	s0,16(sp)
    80005540:	00913423          	sd	s1,8(sp)
    80005544:	02010413          	addi	s0,sp,32
    80005548:	00050493          	mv	s1,a0
    8000554c:	00006797          	auipc	a5,0x6
    80005550:	5ac78793          	addi	a5,a5,1452 # 8000baf8 <_ZTV7WorkerD+0x10>
    80005554:	00f53023          	sd	a5,0(a0)
    80005558:	ffffe097          	auipc	ra,0xffffe
    8000555c:	058080e7          	jalr	88(ra) # 800035b0 <_ZN6ThreadD1Ev>
    80005560:	00048513          	mv	a0,s1
    80005564:	ffffe097          	auipc	ra,0xffffe
    80005568:	130080e7          	jalr	304(ra) # 80003694 <_ZdlPv>
    8000556c:	01813083          	ld	ra,24(sp)
    80005570:	01013403          	ld	s0,16(sp)
    80005574:	00813483          	ld	s1,8(sp)
    80005578:	02010113          	addi	sp,sp,32
    8000557c:	00008067          	ret

0000000080005580 <_ZN7WorkerA3runEv>:
    void run() override {
    80005580:	ff010113          	addi	sp,sp,-16
    80005584:	00113423          	sd	ra,8(sp)
    80005588:	00813023          	sd	s0,0(sp)
    8000558c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005590:	00000593          	li	a1,0
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	740080e7          	jalr	1856(ra) # 80004cd4 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000559c:	00813083          	ld	ra,8(sp)
    800055a0:	00013403          	ld	s0,0(sp)
    800055a4:	01010113          	addi	sp,sp,16
    800055a8:	00008067          	ret

00000000800055ac <_ZN7WorkerB3runEv>:
    void run() override {
    800055ac:	ff010113          	addi	sp,sp,-16
    800055b0:	00113423          	sd	ra,8(sp)
    800055b4:	00813023          	sd	s0,0(sp)
    800055b8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800055bc:	00000593          	li	a1,0
    800055c0:	fffff097          	auipc	ra,0xfffff
    800055c4:	7e0080e7          	jalr	2016(ra) # 80004da0 <_ZN7WorkerB11workerBodyBEPv>
    }
    800055c8:	00813083          	ld	ra,8(sp)
    800055cc:	00013403          	ld	s0,0(sp)
    800055d0:	01010113          	addi	sp,sp,16
    800055d4:	00008067          	ret

00000000800055d8 <_ZN7WorkerC3runEv>:
    void run() override {
    800055d8:	ff010113          	addi	sp,sp,-16
    800055dc:	00113423          	sd	ra,8(sp)
    800055e0:	00813023          	sd	s0,0(sp)
    800055e4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800055e8:	00000593          	li	a1,0
    800055ec:	00000097          	auipc	ra,0x0
    800055f0:	888080e7          	jalr	-1912(ra) # 80004e74 <_ZN7WorkerC11workerBodyCEPv>
    }
    800055f4:	00813083          	ld	ra,8(sp)
    800055f8:	00013403          	ld	s0,0(sp)
    800055fc:	01010113          	addi	sp,sp,16
    80005600:	00008067          	ret

0000000080005604 <_ZN7WorkerD3runEv>:

    void run() override {
    80005604:	ff010113          	addi	sp,sp,-16
    80005608:	00113423          	sd	ra,8(sp)
    8000560c:	00813023          	sd	s0,0(sp)
    80005610:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005614:	00000593          	li	a1,0
    80005618:	00000097          	auipc	ra,0x0
    8000561c:	9dc080e7          	jalr	-1572(ra) # 80004ff4 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005620:	00813083          	ld	ra,8(sp)
    80005624:	00013403          	ld	s0,0(sp)
    80005628:	01010113          	addi	sp,sp,16
    8000562c:	00008067          	ret

0000000080005630 <_ZL9fibonaccim>:
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n)
{
    80005630:	fe010113          	addi	sp,sp,-32
    80005634:	00113c23          	sd	ra,24(sp)
    80005638:	00813823          	sd	s0,16(sp)
    8000563c:	00913423          	sd	s1,8(sp)
    80005640:	01213023          	sd	s2,0(sp)
    80005644:	02010413          	addi	s0,sp,32
    80005648:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    8000564c:	00100793          	li	a5,1
    80005650:	02a7f863          	bgeu	a5,a0,80005680 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005654:	00a00793          	li	a5,10
    80005658:	02f577b3          	remu	a5,a0,a5
    8000565c:	02078e63          	beqz	a5,80005698 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005660:	fff48513          	addi	a0,s1,-1
    80005664:	00000097          	auipc	ra,0x0
    80005668:	fcc080e7          	jalr	-52(ra) # 80005630 <_ZL9fibonaccim>
    8000566c:	00050913          	mv	s2,a0
    80005670:	ffe48513          	addi	a0,s1,-2
    80005674:	00000097          	auipc	ra,0x0
    80005678:	fbc080e7          	jalr	-68(ra) # 80005630 <_ZL9fibonaccim>
    8000567c:	00a90533          	add	a0,s2,a0
}
    80005680:	01813083          	ld	ra,24(sp)
    80005684:	01013403          	ld	s0,16(sp)
    80005688:	00813483          	ld	s1,8(sp)
    8000568c:	00013903          	ld	s2,0(sp)
    80005690:	02010113          	addi	sp,sp,32
    80005694:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005698:	ffffc097          	auipc	ra,0xffffc
    8000569c:	c8c080e7          	jalr	-884(ra) # 80001324 <thread_dispatch>
    800056a0:	fc1ff06f          	j	80005660 <_ZL9fibonaccim+0x30>

00000000800056a4 <_Z11workerBodyCPv>:
    Riscv::printString("B finished!\n");
    finishedB = true;
}

void workerBodyC(void* arg)
{
    800056a4:	fe010113          	addi	sp,sp,-32
    800056a8:	00113c23          	sd	ra,24(sp)
    800056ac:	00813823          	sd	s0,16(sp)
    800056b0:	00913423          	sd	s1,8(sp)
    800056b4:	01213023          	sd	s2,0(sp)
    800056b8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800056bc:	00000493          	li	s1,0
    800056c0:	0400006f          	j	80005700 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    800056c4:	00004517          	auipc	a0,0x4
    800056c8:	d9450513          	addi	a0,a0,-620 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800056cc:	00000097          	auipc	ra,0x0
    800056d0:	588080e7          	jalr	1416(ra) # 80005c54 <_Z11printStringPKc>
    800056d4:	00000613          	li	a2,0
    800056d8:	00a00593          	li	a1,10
    800056dc:	00048513          	mv	a0,s1
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	70c080e7          	jalr	1804(ra) # 80005dec <_Z8printIntiii>
    800056e8:	00004517          	auipc	a0,0x4
    800056ec:	a1850513          	addi	a0,a0,-1512 # 80009100 <CONSOLE_STATUS+0xf0>
    800056f0:	00000097          	auipc	ra,0x0
    800056f4:	564080e7          	jalr	1380(ra) # 80005c54 <_Z11printStringPKc>
    for (; i < 3; i++)
    800056f8:	0014849b          	addiw	s1,s1,1
    800056fc:	0ff4f493          	andi	s1,s1,255
    80005700:	00200793          	li	a5,2
    80005704:	fc97f0e3          	bgeu	a5,s1,800056c4 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005708:	00004517          	auipc	a0,0x4
    8000570c:	d5850513          	addi	a0,a0,-680 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80005710:	00000097          	auipc	ra,0x0
    80005714:	544080e7          	jalr	1348(ra) # 80005c54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005718:	00700313          	li	t1,7
    thread_dispatch();
    8000571c:	ffffc097          	auipc	ra,0xffffc
    80005720:	c08080e7          	jalr	-1016(ra) # 80001324 <thread_dispatch>
    printString("C: returned\n");
    80005724:	00004517          	auipc	a0,0x4
    80005728:	e2c50513          	addi	a0,a0,-468 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    8000572c:	00000097          	auipc	ra,0x0
    80005730:	528080e7          	jalr	1320(ra) # 80005c54 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005734:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005738:	00004517          	auipc	a0,0x4
    8000573c:	d3850513          	addi	a0,a0,-712 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80005740:	00000097          	auipc	ra,0x0
    80005744:	514080e7          	jalr	1300(ra) # 80005c54 <_Z11printStringPKc>
    80005748:	00000613          	li	a2,0
    8000574c:	00a00593          	li	a1,10
    80005750:	0009051b          	sext.w	a0,s2
    80005754:	00000097          	auipc	ra,0x0
    80005758:	698080e7          	jalr	1688(ra) # 80005dec <_Z8printIntiii>
    8000575c:	00004517          	auipc	a0,0x4
    80005760:	9a450513          	addi	a0,a0,-1628 # 80009100 <CONSOLE_STATUS+0xf0>
    80005764:	00000097          	auipc	ra,0x0
    80005768:	4f0080e7          	jalr	1264(ra) # 80005c54 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000576c:	00c00513          	li	a0,12
    80005770:	00000097          	auipc	ra,0x0
    80005774:	ec0080e7          	jalr	-320(ra) # 80005630 <_ZL9fibonaccim>
    80005778:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000577c:	00004517          	auipc	a0,0x4
    80005780:	cfc50513          	addi	a0,a0,-772 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0xd8>
    80005784:	00000097          	auipc	ra,0x0
    80005788:	4d0080e7          	jalr	1232(ra) # 80005c54 <_Z11printStringPKc>
    8000578c:	00000613          	li	a2,0
    80005790:	00a00593          	li	a1,10
    80005794:	0009051b          	sext.w	a0,s2
    80005798:	00000097          	auipc	ra,0x0
    8000579c:	654080e7          	jalr	1620(ra) # 80005dec <_Z8printIntiii>
    800057a0:	00004517          	auipc	a0,0x4
    800057a4:	96050513          	addi	a0,a0,-1696 # 80009100 <CONSOLE_STATUS+0xf0>
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	4ac080e7          	jalr	1196(ra) # 80005c54 <_Z11printStringPKc>
    800057b0:	0400006f          	j	800057f0 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800057b4:	00004517          	auipc	a0,0x4
    800057b8:	ca450513          	addi	a0,a0,-860 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800057bc:	00000097          	auipc	ra,0x0
    800057c0:	498080e7          	jalr	1176(ra) # 80005c54 <_Z11printStringPKc>
    800057c4:	00000613          	li	a2,0
    800057c8:	00a00593          	li	a1,10
    800057cc:	00048513          	mv	a0,s1
    800057d0:	00000097          	auipc	ra,0x0
    800057d4:	61c080e7          	jalr	1564(ra) # 80005dec <_Z8printIntiii>
    800057d8:	00004517          	auipc	a0,0x4
    800057dc:	92850513          	addi	a0,a0,-1752 # 80009100 <CONSOLE_STATUS+0xf0>
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	474080e7          	jalr	1140(ra) # 80005c54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800057e8:	0014849b          	addiw	s1,s1,1
    800057ec:	0ff4f493          	andi	s1,s1,255
    800057f0:	00500793          	li	a5,5
    800057f4:	fc97f0e3          	bgeu	a5,s1,800057b4 <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    800057f8:	ffffc097          	auipc	ra,0xffffc
    800057fc:	b2c080e7          	jalr	-1236(ra) # 80001324 <thread_dispatch>
    printString("C finished!\n");
    80005800:	00004517          	auipc	a0,0x4
    80005804:	d6050513          	addi	a0,a0,-672 # 80009560 <_ZZN5Riscv12printIntegerEmE6digits+0x1c0>
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	44c080e7          	jalr	1100(ra) # 80005c54 <_Z11printStringPKc>
    finishedC = true;
    80005810:	00100793          	li	a5,1
    80005814:	00006717          	auipc	a4,0x6
    80005818:	46f70423          	sb	a5,1128(a4) # 8000bc7c <_ZL9finishedC>
}
    8000581c:	01813083          	ld	ra,24(sp)
    80005820:	01013403          	ld	s0,16(sp)
    80005824:	00813483          	ld	s1,8(sp)
    80005828:	00013903          	ld	s2,0(sp)
    8000582c:	02010113          	addi	sp,sp,32
    80005830:	00008067          	ret

0000000080005834 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80005834:	fe010113          	addi	sp,sp,-32
    80005838:	00113c23          	sd	ra,24(sp)
    8000583c:	00813823          	sd	s0,16(sp)
    80005840:	00913423          	sd	s1,8(sp)
    80005844:	01213023          	sd	s2,0(sp)
    80005848:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000584c:	00a00493          	li	s1,10
    80005850:	0400006f          	j	80005890 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005854:	00004517          	auipc	a0,0x4
    80005858:	c3450513          	addi	a0,a0,-972 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	3f8080e7          	jalr	1016(ra) # 80005c54 <_Z11printStringPKc>
    80005864:	00000613          	li	a2,0
    80005868:	00a00593          	li	a1,10
    8000586c:	00048513          	mv	a0,s1
    80005870:	00000097          	auipc	ra,0x0
    80005874:	57c080e7          	jalr	1404(ra) # 80005dec <_Z8printIntiii>
    80005878:	00004517          	auipc	a0,0x4
    8000587c:	88850513          	addi	a0,a0,-1912 # 80009100 <CONSOLE_STATUS+0xf0>
    80005880:	00000097          	auipc	ra,0x0
    80005884:	3d4080e7          	jalr	980(ra) # 80005c54 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005888:	0014849b          	addiw	s1,s1,1
    8000588c:	0ff4f493          	andi	s1,s1,255
    80005890:	00c00793          	li	a5,12
    80005894:	fc97f0e3          	bgeu	a5,s1,80005854 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005898:	00004517          	auipc	a0,0x4
    8000589c:	bf850513          	addi	a0,a0,-1032 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	3b4080e7          	jalr	948(ra) # 80005c54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800058a8:	00500313          	li	t1,5
    thread_dispatch();
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	a78080e7          	jalr	-1416(ra) # 80001324 <thread_dispatch>
    printString("D: returned\n");
    800058b4:	00004517          	auipc	a0,0x4
    800058b8:	cbc50513          	addi	a0,a0,-836 # 80009570 <_ZZN5Riscv12printIntegerEmE6digits+0x1d0>
    800058bc:	00000097          	auipc	ra,0x0
    800058c0:	398080e7          	jalr	920(ra) # 80005c54 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    800058c4:	01000513          	li	a0,16
    800058c8:	00000097          	auipc	ra,0x0
    800058cc:	d68080e7          	jalr	-664(ra) # 80005630 <_ZL9fibonaccim>
    800058d0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800058d4:	00004517          	auipc	a0,0x4
    800058d8:	bcc50513          	addi	a0,a0,-1076 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800058dc:	00000097          	auipc	ra,0x0
    800058e0:	378080e7          	jalr	888(ra) # 80005c54 <_Z11printStringPKc>
    800058e4:	00000613          	li	a2,0
    800058e8:	00a00593          	li	a1,10
    800058ec:	0009051b          	sext.w	a0,s2
    800058f0:	00000097          	auipc	ra,0x0
    800058f4:	4fc080e7          	jalr	1276(ra) # 80005dec <_Z8printIntiii>
    800058f8:	00004517          	auipc	a0,0x4
    800058fc:	80850513          	addi	a0,a0,-2040 # 80009100 <CONSOLE_STATUS+0xf0>
    80005900:	00000097          	auipc	ra,0x0
    80005904:	354080e7          	jalr	852(ra) # 80005c54 <_Z11printStringPKc>
    80005908:	0400006f          	j	80005948 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000590c:	00004517          	auipc	a0,0x4
    80005910:	b7c50513          	addi	a0,a0,-1156 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80005914:	00000097          	auipc	ra,0x0
    80005918:	340080e7          	jalr	832(ra) # 80005c54 <_Z11printStringPKc>
    8000591c:	00000613          	li	a2,0
    80005920:	00a00593          	li	a1,10
    80005924:	00048513          	mv	a0,s1
    80005928:	00000097          	auipc	ra,0x0
    8000592c:	4c4080e7          	jalr	1220(ra) # 80005dec <_Z8printIntiii>
    80005930:	00003517          	auipc	a0,0x3
    80005934:	7d050513          	addi	a0,a0,2000 # 80009100 <CONSOLE_STATUS+0xf0>
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	31c080e7          	jalr	796(ra) # 80005c54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005940:	0014849b          	addiw	s1,s1,1
    80005944:	0ff4f493          	andi	s1,s1,255
    80005948:	00f00793          	li	a5,15
    8000594c:	fc97f0e3          	bgeu	a5,s1,8000590c <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    80005950:	ffffc097          	auipc	ra,0xffffc
    80005954:	9d4080e7          	jalr	-1580(ra) # 80001324 <thread_dispatch>
    printString("D finished!\n");
    80005958:	00004517          	auipc	a0,0x4
    8000595c:	b5850513          	addi	a0,a0,-1192 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80005960:	00000097          	auipc	ra,0x0
    80005964:	2f4080e7          	jalr	756(ra) # 80005c54 <_Z11printStringPKc>
    finishedD = true;
    80005968:	00100793          	li	a5,1
    8000596c:	00006717          	auipc	a4,0x6
    80005970:	30f708a3          	sb	a5,785(a4) # 8000bc7d <_ZL9finishedD>
}
    80005974:	01813083          	ld	ra,24(sp)
    80005978:	01013403          	ld	s0,16(sp)
    8000597c:	00813483          	ld	s1,8(sp)
    80005980:	00013903          	ld	s2,0(sp)
    80005984:	02010113          	addi	sp,sp,32
    80005988:	00008067          	ret

000000008000598c <_Z11workerBodyAPv>:
{
    8000598c:	fe010113          	addi	sp,sp,-32
    80005990:	00113c23          	sd	ra,24(sp)
    80005994:	00813823          	sd	s0,16(sp)
    80005998:	00913423          	sd	s1,8(sp)
    8000599c:	01213023          	sd	s2,0(sp)
    800059a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800059a4:	00000913          	li	s2,0
    800059a8:	0380006f          	j	800059e0 <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	978080e7          	jalr	-1672(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    800059b4:	00148493          	addi	s1,s1,1
    800059b8:	000027b7          	lui	a5,0x2
    800059bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800059c0:	0097ee63          	bltu	a5,s1,800059dc <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800059c4:	00000713          	li	a4,0
    800059c8:	000077b7          	lui	a5,0x7
    800059cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800059d0:	fce7eee3          	bltu	a5,a4,800059ac <_Z11workerBodyAPv+0x20>
    800059d4:	00170713          	addi	a4,a4,1
    800059d8:	ff1ff06f          	j	800059c8 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    800059dc:	00190913          	addi	s2,s2,1
    800059e0:	00900793          	li	a5,9
    800059e4:	0527e063          	bltu	a5,s2,80005a24 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800059e8:	00004517          	auipc	a0,0x4
    800059ec:	a4050513          	addi	a0,a0,-1472 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	264080e7          	jalr	612(ra) # 80005c54 <_Z11printStringPKc>
    800059f8:	00000613          	li	a2,0
    800059fc:	00a00593          	li	a1,10
    80005a00:	0009051b          	sext.w	a0,s2
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	3e8080e7          	jalr	1000(ra) # 80005dec <_Z8printIntiii>
    80005a0c:	00003517          	auipc	a0,0x3
    80005a10:	6f450513          	addi	a0,a0,1780 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a14:	00000097          	auipc	ra,0x0
    80005a18:	240080e7          	jalr	576(ra) # 80005c54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80005a1c:	00000493          	li	s1,0
    80005a20:	f99ff06f          	j	800059b8 <_Z11workerBodyAPv+0x2c>
    Riscv::printString("A finished!\n");
    80005a24:	00004517          	auipc	a0,0x4
    80005a28:	a0c50513          	addi	a0,a0,-1524 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80005a2c:	ffffe097          	auipc	ra,0xffffe
    80005a30:	0a0080e7          	jalr	160(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    finishedA = true;
    80005a34:	00100793          	li	a5,1
    80005a38:	00006717          	auipc	a4,0x6
    80005a3c:	24f70323          	sb	a5,582(a4) # 8000bc7e <_ZL9finishedA>
}
    80005a40:	01813083          	ld	ra,24(sp)
    80005a44:	01013403          	ld	s0,16(sp)
    80005a48:	00813483          	ld	s1,8(sp)
    80005a4c:	00013903          	ld	s2,0(sp)
    80005a50:	02010113          	addi	sp,sp,32
    80005a54:	00008067          	ret

0000000080005a58 <_Z11workerBodyBPv>:
{
    80005a58:	fe010113          	addi	sp,sp,-32
    80005a5c:	00113c23          	sd	ra,24(sp)
    80005a60:	00813823          	sd	s0,16(sp)
    80005a64:	00913423          	sd	s1,8(sp)
    80005a68:	01213023          	sd	s2,0(sp)
    80005a6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005a70:	00000913          	li	s2,0
    80005a74:	0340006f          	j	80005aa8 <_Z11workerBodyBPv+0x50>
            thread_dispatch();
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	8ac080e7          	jalr	-1876(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10; j++)
    80005a80:	00148493          	addi	s1,s1,1
    80005a84:	00900793          	li	a5,9
    80005a88:	0097ee63          	bltu	a5,s1,80005aa4 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a8c:	00000713          	li	a4,0
    80005a90:	000077b7          	lui	a5,0x7
    80005a94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a98:	fee7e0e3          	bltu	a5,a4,80005a78 <_Z11workerBodyBPv+0x20>
    80005a9c:	00170713          	addi	a4,a4,1
    80005aa0:	ff1ff06f          	j	80005a90 <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80005aa4:	00190913          	addi	s2,s2,1
    80005aa8:	00f00793          	li	a5,15
    80005aac:	0527e063          	bltu	a5,s2,80005aec <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80005ab0:	00004517          	auipc	a0,0x4
    80005ab4:	99050513          	addi	a0,a0,-1648 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xa0>
    80005ab8:	00000097          	auipc	ra,0x0
    80005abc:	19c080e7          	jalr	412(ra) # 80005c54 <_Z11printStringPKc>
    80005ac0:	00000613          	li	a2,0
    80005ac4:	00a00593          	li	a1,10
    80005ac8:	0009051b          	sext.w	a0,s2
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	320080e7          	jalr	800(ra) # 80005dec <_Z8printIntiii>
    80005ad4:	00003517          	auipc	a0,0x3
    80005ad8:	62c50513          	addi	a0,a0,1580 # 80009100 <CONSOLE_STATUS+0xf0>
    80005adc:	00000097          	auipc	ra,0x0
    80005ae0:	178080e7          	jalr	376(ra) # 80005c54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10; j++)
    80005ae4:	00000493          	li	s1,0
    80005ae8:	f9dff06f          	j	80005a84 <_Z11workerBodyBPv+0x2c>
    thread_dispatch();
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	838080e7          	jalr	-1992(ra) # 80001324 <thread_dispatch>
    Riscv::printString("B finished!\n");
    80005af4:	00004517          	auipc	a0,0x4
    80005af8:	95450513          	addi	a0,a0,-1708 # 80009448 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80005afc:	ffffe097          	auipc	ra,0xffffe
    80005b00:	fd0080e7          	jalr	-48(ra) # 80003acc <_ZN5Riscv11printStringEPKc>
    finishedB = true;
    80005b04:	00100793          	li	a5,1
    80005b08:	00006717          	auipc	a4,0x6
    80005b0c:	16f70ba3          	sb	a5,375(a4) # 8000bc7f <_ZL9finishedB>
}
    80005b10:	01813083          	ld	ra,24(sp)
    80005b14:	01013403          	ld	s0,16(sp)
    80005b18:	00813483          	ld	s1,8(sp)
    80005b1c:	00013903          	ld	s2,0(sp)
    80005b20:	02010113          	addi	sp,sp,32
    80005b24:	00008067          	ret

0000000080005b28 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005b28:	fc010113          	addi	sp,sp,-64
    80005b2c:	02113c23          	sd	ra,56(sp)
    80005b30:	02813823          	sd	s0,48(sp)
    80005b34:	02913423          	sd	s1,40(sp)
    80005b38:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005b3c:	00000613          	li	a2,0
    80005b40:	00000597          	auipc	a1,0x0
    80005b44:	e4c58593          	addi	a1,a1,-436 # 8000598c <_Z11workerBodyAPv>
    80005b48:	fc040513          	addi	a0,s0,-64
    80005b4c:	ffffb097          	auipc	ra,0xffffb
    80005b50:	758080e7          	jalr	1880(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80005b54:	00004517          	auipc	a0,0x4
    80005b58:	97c50513          	addi	a0,a0,-1668 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005b5c:	00000097          	auipc	ra,0x0
    80005b60:	0f8080e7          	jalr	248(ra) # 80005c54 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005b64:	00000613          	li	a2,0
    80005b68:	00000597          	auipc	a1,0x0
    80005b6c:	ef058593          	addi	a1,a1,-272 # 80005a58 <_Z11workerBodyBPv>
    80005b70:	fc840513          	addi	a0,s0,-56
    80005b74:	ffffb097          	auipc	ra,0xffffb
    80005b78:	730080e7          	jalr	1840(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80005b7c:	00004517          	auipc	a0,0x4
    80005b80:	96c50513          	addi	a0,a0,-1684 # 800094e8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	0d0080e7          	jalr	208(ra) # 80005c54 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005b8c:	00000613          	li	a2,0
    80005b90:	00000597          	auipc	a1,0x0
    80005b94:	b1458593          	addi	a1,a1,-1260 # 800056a4 <_Z11workerBodyCPv>
    80005b98:	fd040513          	addi	a0,s0,-48
    80005b9c:	ffffb097          	auipc	ra,0xffffb
    80005ba0:	708080e7          	jalr	1800(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80005ba4:	00004517          	auipc	a0,0x4
    80005ba8:	95c50513          	addi	a0,a0,-1700 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005bac:	00000097          	auipc	ra,0x0
    80005bb0:	0a8080e7          	jalr	168(ra) # 80005c54 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005bb4:	00000613          	li	a2,0
    80005bb8:	00000597          	auipc	a1,0x0
    80005bbc:	c7c58593          	addi	a1,a1,-900 # 80005834 <_Z11workerBodyDPv>
    80005bc0:	fd840513          	addi	a0,s0,-40
    80005bc4:	ffffb097          	auipc	ra,0xffffb
    80005bc8:	6e0080e7          	jalr	1760(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80005bcc:	00004517          	auipc	a0,0x4
    80005bd0:	94c50513          	addi	a0,a0,-1716 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005bd4:	00000097          	auipc	ra,0x0
    80005bd8:	080080e7          	jalr	128(ra) # 80005c54 <_Z11printStringPKc>
    80005bdc:	00c0006f          	j	80005be8 <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005be0:	ffffb097          	auipc	ra,0xffffb
    80005be4:	744080e7          	jalr	1860(ra) # 80001324 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005be8:	00006797          	auipc	a5,0x6
    80005bec:	0967c783          	lbu	a5,150(a5) # 8000bc7e <_ZL9finishedA>
    80005bf0:	fe0788e3          	beqz	a5,80005be0 <_Z18Threads_C_API_testv+0xb8>
    80005bf4:	00006797          	auipc	a5,0x6
    80005bf8:	08b7c783          	lbu	a5,139(a5) # 8000bc7f <_ZL9finishedB>
    80005bfc:	fe0782e3          	beqz	a5,80005be0 <_Z18Threads_C_API_testv+0xb8>
    80005c00:	00006797          	auipc	a5,0x6
    80005c04:	07c7c783          	lbu	a5,124(a5) # 8000bc7c <_ZL9finishedC>
    80005c08:	fc078ce3          	beqz	a5,80005be0 <_Z18Threads_C_API_testv+0xb8>
    80005c0c:	00006797          	auipc	a5,0x6
    80005c10:	0717c783          	lbu	a5,113(a5) # 8000bc7d <_ZL9finishedD>
    80005c14:	fc0786e3          	beqz	a5,80005be0 <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005c18:	fc040493          	addi	s1,s0,-64
    80005c1c:	0080006f          	j	80005c24 <_Z18Threads_C_API_testv+0xfc>
    80005c20:	00848493          	addi	s1,s1,8
    80005c24:	fe040793          	addi	a5,s0,-32
    80005c28:	00f48c63          	beq	s1,a5,80005c40 <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005c2c:	0004b503          	ld	a0,0(s1)
    80005c30:	fe0508e3          	beqz	a0,80005c20 <_Z18Threads_C_API_testv+0xf8>
    80005c34:	ffffe097          	auipc	ra,0xffffe
    80005c38:	a60080e7          	jalr	-1440(ra) # 80003694 <_ZdlPv>
    80005c3c:	fe5ff06f          	j	80005c20 <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005c40:	03813083          	ld	ra,56(sp)
    80005c44:	03013403          	ld	s0,48(sp)
    80005c48:	02813483          	ld	s1,40(sp)
    80005c4c:	04010113          	addi	sp,sp,64
    80005c50:	00008067          	ret

0000000080005c54 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005c54:	fe010113          	addi	sp,sp,-32
    80005c58:	00113c23          	sd	ra,24(sp)
    80005c5c:	00813823          	sd	s0,16(sp)
    80005c60:	00913423          	sd	s1,8(sp)
    80005c64:	02010413          	addi	s0,sp,32
    80005c68:	00050493          	mv	s1,a0
    LOCK();
    80005c6c:	00100613          	li	a2,1
    80005c70:	00000593          	li	a1,0
    80005c74:	00006517          	auipc	a0,0x6
    80005c78:	00c50513          	addi	a0,a0,12 # 8000bc80 <lockPrint>
    80005c7c:	ffffb097          	auipc	ra,0xffffb
    80005c80:	58c080e7          	jalr	1420(ra) # 80001208 <copy_and_swap>
    80005c84:	fe0514e3          	bnez	a0,80005c6c <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005c88:	0004c503          	lbu	a0,0(s1)
    80005c8c:	00050a63          	beqz	a0,80005ca0 <_Z11printStringPKc+0x4c>
        putc(*string);
    80005c90:	ffffc097          	auipc	ra,0xffffc
    80005c94:	898080e7          	jalr	-1896(ra) # 80001528 <putc>
        string++;
    80005c98:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005c9c:	fedff06f          	j	80005c88 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005ca0:	00000613          	li	a2,0
    80005ca4:	00100593          	li	a1,1
    80005ca8:	00006517          	auipc	a0,0x6
    80005cac:	fd850513          	addi	a0,a0,-40 # 8000bc80 <lockPrint>
    80005cb0:	ffffb097          	auipc	ra,0xffffb
    80005cb4:	558080e7          	jalr	1368(ra) # 80001208 <copy_and_swap>
    80005cb8:	fe0514e3          	bnez	a0,80005ca0 <_Z11printStringPKc+0x4c>
}
    80005cbc:	01813083          	ld	ra,24(sp)
    80005cc0:	01013403          	ld	s0,16(sp)
    80005cc4:	00813483          	ld	s1,8(sp)
    80005cc8:	02010113          	addi	sp,sp,32
    80005ccc:	00008067          	ret

0000000080005cd0 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005cd0:	fd010113          	addi	sp,sp,-48
    80005cd4:	02113423          	sd	ra,40(sp)
    80005cd8:	02813023          	sd	s0,32(sp)
    80005cdc:	00913c23          	sd	s1,24(sp)
    80005ce0:	01213823          	sd	s2,16(sp)
    80005ce4:	01313423          	sd	s3,8(sp)
    80005ce8:	01413023          	sd	s4,0(sp)
    80005cec:	03010413          	addi	s0,sp,48
    80005cf0:	00050993          	mv	s3,a0
    80005cf4:	00058a13          	mv	s4,a1
    LOCK();
    80005cf8:	00100613          	li	a2,1
    80005cfc:	00000593          	li	a1,0
    80005d00:	00006517          	auipc	a0,0x6
    80005d04:	f8050513          	addi	a0,a0,-128 # 8000bc80 <lockPrint>
    80005d08:	ffffb097          	auipc	ra,0xffffb
    80005d0c:	500080e7          	jalr	1280(ra) # 80001208 <copy_and_swap>
    80005d10:	fe0514e3          	bnez	a0,80005cf8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005d14:	00000913          	li	s2,0
    80005d18:	00090493          	mv	s1,s2
    80005d1c:	0019091b          	addiw	s2,s2,1
    80005d20:	03495a63          	bge	s2,s4,80005d54 <_Z9getStringPci+0x84>
        cc = getc();
    80005d24:	ffffb097          	auipc	ra,0xffffb
    80005d28:	7dc080e7          	jalr	2012(ra) # 80001500 <getc>
        if (cc < 1)
    80005d2c:	02050463          	beqz	a0,80005d54 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005d30:	009984b3          	add	s1,s3,s1
    80005d34:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005d38:	00a00793          	li	a5,10
    80005d3c:	00f50a63          	beq	a0,a5,80005d50 <_Z9getStringPci+0x80>
    80005d40:	00d00793          	li	a5,13
    80005d44:	fcf51ae3          	bne	a0,a5,80005d18 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005d48:	00090493          	mv	s1,s2
    80005d4c:	0080006f          	j	80005d54 <_Z9getStringPci+0x84>
    80005d50:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005d54:	009984b3          	add	s1,s3,s1
    80005d58:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005d5c:	00000613          	li	a2,0
    80005d60:	00100593          	li	a1,1
    80005d64:	00006517          	auipc	a0,0x6
    80005d68:	f1c50513          	addi	a0,a0,-228 # 8000bc80 <lockPrint>
    80005d6c:	ffffb097          	auipc	ra,0xffffb
    80005d70:	49c080e7          	jalr	1180(ra) # 80001208 <copy_and_swap>
    80005d74:	fe0514e3          	bnez	a0,80005d5c <_Z9getStringPci+0x8c>
    return buf;
}
    80005d78:	00098513          	mv	a0,s3
    80005d7c:	02813083          	ld	ra,40(sp)
    80005d80:	02013403          	ld	s0,32(sp)
    80005d84:	01813483          	ld	s1,24(sp)
    80005d88:	01013903          	ld	s2,16(sp)
    80005d8c:	00813983          	ld	s3,8(sp)
    80005d90:	00013a03          	ld	s4,0(sp)
    80005d94:	03010113          	addi	sp,sp,48
    80005d98:	00008067          	ret

0000000080005d9c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005d9c:	ff010113          	addi	sp,sp,-16
    80005da0:	00813423          	sd	s0,8(sp)
    80005da4:	01010413          	addi	s0,sp,16
    80005da8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005dac:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005db0:	0006c603          	lbu	a2,0(a3)
    80005db4:	fd06071b          	addiw	a4,a2,-48
    80005db8:	0ff77713          	andi	a4,a4,255
    80005dbc:	00900793          	li	a5,9
    80005dc0:	02e7e063          	bltu	a5,a4,80005de0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005dc4:	0025179b          	slliw	a5,a0,0x2
    80005dc8:	00a787bb          	addw	a5,a5,a0
    80005dcc:	0017979b          	slliw	a5,a5,0x1
    80005dd0:	00168693          	addi	a3,a3,1
    80005dd4:	00c787bb          	addw	a5,a5,a2
    80005dd8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005ddc:	fd5ff06f          	j	80005db0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005de0:	00813403          	ld	s0,8(sp)
    80005de4:	01010113          	addi	sp,sp,16
    80005de8:	00008067          	ret

0000000080005dec <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005dec:	fc010113          	addi	sp,sp,-64
    80005df0:	02113c23          	sd	ra,56(sp)
    80005df4:	02813823          	sd	s0,48(sp)
    80005df8:	02913423          	sd	s1,40(sp)
    80005dfc:	03213023          	sd	s2,32(sp)
    80005e00:	01313c23          	sd	s3,24(sp)
    80005e04:	04010413          	addi	s0,sp,64
    80005e08:	00050493          	mv	s1,a0
    80005e0c:	00058913          	mv	s2,a1
    80005e10:	00060993          	mv	s3,a2
    LOCK();
    80005e14:	00100613          	li	a2,1
    80005e18:	00000593          	li	a1,0
    80005e1c:	00006517          	auipc	a0,0x6
    80005e20:	e6450513          	addi	a0,a0,-412 # 8000bc80 <lockPrint>
    80005e24:	ffffb097          	auipc	ra,0xffffb
    80005e28:	3e4080e7          	jalr	996(ra) # 80001208 <copy_and_swap>
    80005e2c:	fe0514e3          	bnez	a0,80005e14 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005e30:	00098463          	beqz	s3,80005e38 <_Z8printIntiii+0x4c>
    80005e34:	0804c463          	bltz	s1,80005ebc <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e38:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005e3c:	00000593          	li	a1,0
    }

    i = 0;
    80005e40:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005e44:	0009079b          	sext.w	a5,s2
    80005e48:	0325773b          	remuw	a4,a0,s2
    80005e4c:	00048613          	mv	a2,s1
    80005e50:	0014849b          	addiw	s1,s1,1
    80005e54:	02071693          	slli	a3,a4,0x20
    80005e58:	0206d693          	srli	a3,a3,0x20
    80005e5c:	00003717          	auipc	a4,0x3
    80005e60:	72470713          	addi	a4,a4,1828 # 80009580 <_ZL6digits>
    80005e64:	00d70733          	add	a4,a4,a3
    80005e68:	00074683          	lbu	a3,0(a4)
    80005e6c:	fd040713          	addi	a4,s0,-48
    80005e70:	00c70733          	add	a4,a4,a2
    80005e74:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005e78:	0005071b          	sext.w	a4,a0
    80005e7c:	0325553b          	divuw	a0,a0,s2
    80005e80:	fcf772e3          	bgeu	a4,a5,80005e44 <_Z8printIntiii+0x58>
    if (neg)
    80005e84:	00058c63          	beqz	a1,80005e9c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005e88:	fd040793          	addi	a5,s0,-48
    80005e8c:	009784b3          	add	s1,a5,s1
    80005e90:	02d00793          	li	a5,45
    80005e94:	fef48823          	sb	a5,-16(s1)
    80005e98:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005e9c:	fff4849b          	addiw	s1,s1,-1
    80005ea0:	0204c463          	bltz	s1,80005ec8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005ea4:	fd040793          	addi	a5,s0,-48
    80005ea8:	009787b3          	add	a5,a5,s1
    80005eac:	ff07c503          	lbu	a0,-16(a5)
    80005eb0:	ffffb097          	auipc	ra,0xffffb
    80005eb4:	678080e7          	jalr	1656(ra) # 80001528 <putc>
    80005eb8:	fe5ff06f          	j	80005e9c <_Z8printIntiii+0xb0>
        x = -xx;
    80005ebc:	4090053b          	negw	a0,s1
        neg = 1;
    80005ec0:	00100593          	li	a1,1
        x = -xx;
    80005ec4:	f7dff06f          	j	80005e40 <_Z8printIntiii+0x54>

    UNLOCK();
    80005ec8:	00000613          	li	a2,0
    80005ecc:	00100593          	li	a1,1
    80005ed0:	00006517          	auipc	a0,0x6
    80005ed4:	db050513          	addi	a0,a0,-592 # 8000bc80 <lockPrint>
    80005ed8:	ffffb097          	auipc	ra,0xffffb
    80005edc:	330080e7          	jalr	816(ra) # 80001208 <copy_and_swap>
    80005ee0:	fe0514e3          	bnez	a0,80005ec8 <_Z8printIntiii+0xdc>
}
    80005ee4:	03813083          	ld	ra,56(sp)
    80005ee8:	03013403          	ld	s0,48(sp)
    80005eec:	02813483          	ld	s1,40(sp)
    80005ef0:	02013903          	ld	s2,32(sp)
    80005ef4:	01813983          	ld	s3,24(sp)
    80005ef8:	04010113          	addi	sp,sp,64
    80005efc:	00008067          	ret

0000000080005f00 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005f00:	fe010113          	addi	sp,sp,-32
    80005f04:	00113c23          	sd	ra,24(sp)
    80005f08:	00813823          	sd	s0,16(sp)
    80005f0c:	00913423          	sd	s1,8(sp)
    80005f10:	01213023          	sd	s2,0(sp)
    80005f14:	02010413          	addi	s0,sp,32
    80005f18:	00050493          	mv	s1,a0
    80005f1c:	00b52023          	sw	a1,0(a0)
    80005f20:	00052823          	sw	zero,16(a0)
    80005f24:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f28:	00259513          	slli	a0,a1,0x2
    80005f2c:	ffffb097          	auipc	ra,0xffffb
    80005f30:	31c080e7          	jalr	796(ra) # 80001248 <mem_alloc>
    80005f34:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005f38:	01000513          	li	a0,16
    80005f3c:	ffffd097          	auipc	ra,0xffffd
    80005f40:	730080e7          	jalr	1840(ra) # 8000366c <_Znwm>
    80005f44:	00050913          	mv	s2,a0
    80005f48:	00000593          	li	a1,0
    80005f4c:	ffffe097          	auipc	ra,0xffffe
    80005f50:	96c080e7          	jalr	-1684(ra) # 800038b8 <_ZN9SemaphoreC1Ej>
    80005f54:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005f58:	01000513          	li	a0,16
    80005f5c:	ffffd097          	auipc	ra,0xffffd
    80005f60:	710080e7          	jalr	1808(ra) # 8000366c <_Znwm>
    80005f64:	00050913          	mv	s2,a0
    80005f68:	0004a583          	lw	a1,0(s1)
    80005f6c:	ffffe097          	auipc	ra,0xffffe
    80005f70:	94c080e7          	jalr	-1716(ra) # 800038b8 <_ZN9SemaphoreC1Ej>
    80005f74:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005f78:	01000513          	li	a0,16
    80005f7c:	ffffd097          	auipc	ra,0xffffd
    80005f80:	6f0080e7          	jalr	1776(ra) # 8000366c <_Znwm>
    80005f84:	00050913          	mv	s2,a0
    80005f88:	00100593          	li	a1,1
    80005f8c:	ffffe097          	auipc	ra,0xffffe
    80005f90:	92c080e7          	jalr	-1748(ra) # 800038b8 <_ZN9SemaphoreC1Ej>
    80005f94:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005f98:	01000513          	li	a0,16
    80005f9c:	ffffd097          	auipc	ra,0xffffd
    80005fa0:	6d0080e7          	jalr	1744(ra) # 8000366c <_Znwm>
    80005fa4:	00050913          	mv	s2,a0
    80005fa8:	00100593          	li	a1,1
    80005fac:	ffffe097          	auipc	ra,0xffffe
    80005fb0:	90c080e7          	jalr	-1780(ra) # 800038b8 <_ZN9SemaphoreC1Ej>
    80005fb4:	0324b823          	sd	s2,48(s1)
}
    80005fb8:	01813083          	ld	ra,24(sp)
    80005fbc:	01013403          	ld	s0,16(sp)
    80005fc0:	00813483          	ld	s1,8(sp)
    80005fc4:	00013903          	ld	s2,0(sp)
    80005fc8:	02010113          	addi	sp,sp,32
    80005fcc:	00008067          	ret
    80005fd0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005fd4:	00090513          	mv	a0,s2
    80005fd8:	ffffd097          	auipc	ra,0xffffd
    80005fdc:	6bc080e7          	jalr	1724(ra) # 80003694 <_ZdlPv>
    80005fe0:	00048513          	mv	a0,s1
    80005fe4:	00007097          	auipc	ra,0x7
    80005fe8:	d74080e7          	jalr	-652(ra) # 8000cd58 <_Unwind_Resume>
    80005fec:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005ff0:	00090513          	mv	a0,s2
    80005ff4:	ffffd097          	auipc	ra,0xffffd
    80005ff8:	6a0080e7          	jalr	1696(ra) # 80003694 <_ZdlPv>
    80005ffc:	00048513          	mv	a0,s1
    80006000:	00007097          	auipc	ra,0x7
    80006004:	d58080e7          	jalr	-680(ra) # 8000cd58 <_Unwind_Resume>
    80006008:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000600c:	00090513          	mv	a0,s2
    80006010:	ffffd097          	auipc	ra,0xffffd
    80006014:	684080e7          	jalr	1668(ra) # 80003694 <_ZdlPv>
    80006018:	00048513          	mv	a0,s1
    8000601c:	00007097          	auipc	ra,0x7
    80006020:	d3c080e7          	jalr	-708(ra) # 8000cd58 <_Unwind_Resume>
    80006024:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006028:	00090513          	mv	a0,s2
    8000602c:	ffffd097          	auipc	ra,0xffffd
    80006030:	668080e7          	jalr	1640(ra) # 80003694 <_ZdlPv>
    80006034:	00048513          	mv	a0,s1
    80006038:	00007097          	auipc	ra,0x7
    8000603c:	d20080e7          	jalr	-736(ra) # 8000cd58 <_Unwind_Resume>

0000000080006040 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80006040:	fe010113          	addi	sp,sp,-32
    80006044:	00113c23          	sd	ra,24(sp)
    80006048:	00813823          	sd	s0,16(sp)
    8000604c:	00913423          	sd	s1,8(sp)
    80006050:	02010413          	addi	s0,sp,32
    80006054:	00050493          	mv	s1,a0
    putc('\n');
    80006058:	00a00513          	li	a0,10
    8000605c:	ffffb097          	auipc	ra,0xffffb
    80006060:	4cc080e7          	jalr	1228(ra) # 80001528 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80006064:	0104a783          	lw	a5,16(s1)
    80006068:	0144a703          	lw	a4,20(s1)
    8000606c:	00e78c63          	beq	a5,a4,80006084 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006070:	0017879b          	addiw	a5,a5,1
    80006074:	0004a703          	lw	a4,0(s1)
    80006078:	02e7e7bb          	remw	a5,a5,a4
    8000607c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006080:	fe5ff06f          	j	80006064 <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    80006084:	02100513          	li	a0,33
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	4a0080e7          	jalr	1184(ra) # 80001528 <putc>
    putc('\n');
    80006090:	00a00513          	li	a0,10
    80006094:	ffffb097          	auipc	ra,0xffffb
    80006098:	494080e7          	jalr	1172(ra) # 80001528 <putc>

    mem_free(buffer);
    8000609c:	0084b503          	ld	a0,8(s1)
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	1d8080e7          	jalr	472(ra) # 80001278 <mem_free>
    delete itemAvailable;
    800060a8:	0204b503          	ld	a0,32(s1)
    800060ac:	00050863          	beqz	a0,800060bc <_ZN9BufferCPPD1Ev+0x7c>
    800060b0:	00053783          	ld	a5,0(a0)
    800060b4:	0087b783          	ld	a5,8(a5)
    800060b8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800060bc:	0184b503          	ld	a0,24(s1)
    800060c0:	00050863          	beqz	a0,800060d0 <_ZN9BufferCPPD1Ev+0x90>
    800060c4:	00053783          	ld	a5,0(a0)
    800060c8:	0087b783          	ld	a5,8(a5)
    800060cc:	000780e7          	jalr	a5
    delete mutexTail;
    800060d0:	0304b503          	ld	a0,48(s1)
    800060d4:	00050863          	beqz	a0,800060e4 <_ZN9BufferCPPD1Ev+0xa4>
    800060d8:	00053783          	ld	a5,0(a0)
    800060dc:	0087b783          	ld	a5,8(a5)
    800060e0:	000780e7          	jalr	a5
    delete mutexHead;
    800060e4:	0284b503          	ld	a0,40(s1)
    800060e8:	00050863          	beqz	a0,800060f8 <_ZN9BufferCPPD1Ev+0xb8>
    800060ec:	00053783          	ld	a5,0(a0)
    800060f0:	0087b783          	ld	a5,8(a5)
    800060f4:	000780e7          	jalr	a5

}
    800060f8:	01813083          	ld	ra,24(sp)
    800060fc:	01013403          	ld	s0,16(sp)
    80006100:	00813483          	ld	s1,8(sp)
    80006104:	02010113          	addi	sp,sp,32
    80006108:	00008067          	ret

000000008000610c <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    8000610c:	fe010113          	addi	sp,sp,-32
    80006110:	00113c23          	sd	ra,24(sp)
    80006114:	00813823          	sd	s0,16(sp)
    80006118:	00913423          	sd	s1,8(sp)
    8000611c:	01213023          	sd	s2,0(sp)
    80006120:	02010413          	addi	s0,sp,32
    80006124:	00050493          	mv	s1,a0
    80006128:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000612c:	01853503          	ld	a0,24(a0)
    80006130:	ffffd097          	auipc	ra,0xffffd
    80006134:	750080e7          	jalr	1872(ra) # 80003880 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006138:	0304b503          	ld	a0,48(s1)
    8000613c:	ffffd097          	auipc	ra,0xffffd
    80006140:	744080e7          	jalr	1860(ra) # 80003880 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006144:	0084b783          	ld	a5,8(s1)
    80006148:	0144a703          	lw	a4,20(s1)
    8000614c:	00271713          	slli	a4,a4,0x2
    80006150:	00e787b3          	add	a5,a5,a4
    80006154:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006158:	0144a783          	lw	a5,20(s1)
    8000615c:	0017879b          	addiw	a5,a5,1
    80006160:	0004a703          	lw	a4,0(s1)
    80006164:	02e7e7bb          	remw	a5,a5,a4
    80006168:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000616c:	0304b503          	ld	a0,48(s1)
    80006170:	ffffd097          	auipc	ra,0xffffd
    80006174:	794080e7          	jalr	1940(ra) # 80003904 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006178:	0204b503          	ld	a0,32(s1)
    8000617c:	ffffd097          	auipc	ra,0xffffd
    80006180:	788080e7          	jalr	1928(ra) # 80003904 <_ZN9Semaphore6signalEv>

}
    80006184:	01813083          	ld	ra,24(sp)
    80006188:	01013403          	ld	s0,16(sp)
    8000618c:	00813483          	ld	s1,8(sp)
    80006190:	00013903          	ld	s2,0(sp)
    80006194:	02010113          	addi	sp,sp,32
    80006198:	00008067          	ret

000000008000619c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000619c:	fe010113          	addi	sp,sp,-32
    800061a0:	00113c23          	sd	ra,24(sp)
    800061a4:	00813823          	sd	s0,16(sp)
    800061a8:	00913423          	sd	s1,8(sp)
    800061ac:	01213023          	sd	s2,0(sp)
    800061b0:	02010413          	addi	s0,sp,32
    800061b4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800061b8:	02053503          	ld	a0,32(a0)
    800061bc:	ffffd097          	auipc	ra,0xffffd
    800061c0:	6c4080e7          	jalr	1732(ra) # 80003880 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800061c4:	0284b503          	ld	a0,40(s1)
    800061c8:	ffffd097          	auipc	ra,0xffffd
    800061cc:	6b8080e7          	jalr	1720(ra) # 80003880 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800061d0:	0084b703          	ld	a4,8(s1)
    800061d4:	0104a783          	lw	a5,16(s1)
    800061d8:	00279693          	slli	a3,a5,0x2
    800061dc:	00d70733          	add	a4,a4,a3
    800061e0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800061e4:	0017879b          	addiw	a5,a5,1
    800061e8:	0004a703          	lw	a4,0(s1)
    800061ec:	02e7e7bb          	remw	a5,a5,a4
    800061f0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800061f4:	0284b503          	ld	a0,40(s1)
    800061f8:	ffffd097          	auipc	ra,0xffffd
    800061fc:	70c080e7          	jalr	1804(ra) # 80003904 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006200:	0184b503          	ld	a0,24(s1)
    80006204:	ffffd097          	auipc	ra,0xffffd
    80006208:	700080e7          	jalr	1792(ra) # 80003904 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000620c:	00090513          	mv	a0,s2
    80006210:	01813083          	ld	ra,24(sp)
    80006214:	01013403          	ld	s0,16(sp)
    80006218:	00813483          	ld	s1,8(sp)
    8000621c:	00013903          	ld	s2,0(sp)
    80006220:	02010113          	addi	sp,sp,32
    80006224:	00008067          	ret

0000000080006228 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80006228:	ff010113          	addi	sp,sp,-16
    8000622c:	00113423          	sd	ra,8(sp)
    80006230:	00813023          	sd	s0,0(sp)
    80006234:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80006238:	00000097          	auipc	ra,0x0
    8000623c:	8f0080e7          	jalr	-1808(ra) # 80005b28 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80006240:	00813083          	ld	ra,8(sp)
    80006244:	00013403          	ld	s0,0(sp)
    80006248:	01010113          	addi	sp,sp,16
    8000624c:	00008067          	ret

0000000080006250 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006250:	fe010113          	addi	sp,sp,-32
    80006254:	00113c23          	sd	ra,24(sp)
    80006258:	00813823          	sd	s0,16(sp)
    8000625c:	00913423          	sd	s1,8(sp)
    80006260:	01213023          	sd	s2,0(sp)
    80006264:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006268:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000626c:	00600493          	li	s1,6
    while (--i > 0) {
    80006270:	fff4849b          	addiw	s1,s1,-1
    80006274:	04905463          	blez	s1,800062bc <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80006278:	00003517          	auipc	a0,0x3
    8000627c:	32050513          	addi	a0,a0,800 # 80009598 <_ZL6digits+0x18>
    80006280:	00000097          	auipc	ra,0x0
    80006284:	9d4080e7          	jalr	-1580(ra) # 80005c54 <_Z11printStringPKc>
        printInt(sleep_time);
    80006288:	00000613          	li	a2,0
    8000628c:	00a00593          	li	a1,10
    80006290:	0009051b          	sext.w	a0,s2
    80006294:	00000097          	auipc	ra,0x0
    80006298:	b58080e7          	jalr	-1192(ra) # 80005dec <_Z8printIntiii>
        printString(" !\n");
    8000629c:	00003517          	auipc	a0,0x3
    800062a0:	30450513          	addi	a0,a0,772 # 800095a0 <_ZL6digits+0x20>
    800062a4:	00000097          	auipc	ra,0x0
    800062a8:	9b0080e7          	jalr	-1616(ra) # 80005c54 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062ac:	00090513          	mv	a0,s2
    800062b0:	ffffb097          	auipc	ra,0xffffb
    800062b4:	178080e7          	jalr	376(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    800062b8:	fb9ff06f          	j	80006270 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062bc:	00a00793          	li	a5,10
    800062c0:	02f95933          	divu	s2,s2,a5
    800062c4:	fff90913          	addi	s2,s2,-1
    800062c8:	00006797          	auipc	a5,0x6
    800062cc:	9c078793          	addi	a5,a5,-1600 # 8000bc88 <finished>
    800062d0:	01278933          	add	s2,a5,s2
    800062d4:	00100793          	li	a5,1
    800062d8:	00f90023          	sb	a5,0(s2)
}
    800062dc:	01813083          	ld	ra,24(sp)
    800062e0:	01013403          	ld	s0,16(sp)
    800062e4:	00813483          	ld	s1,8(sp)
    800062e8:	00013903          	ld	s2,0(sp)
    800062ec:	02010113          	addi	sp,sp,32
    800062f0:	00008067          	ret

00000000800062f4 <_Z12testSleepingv>:

void testSleeping()
{
    800062f4:	fc010113          	addi	sp,sp,-64
    800062f8:	02113c23          	sd	ra,56(sp)
    800062fc:	02813823          	sd	s0,48(sp)
    80006300:	02913423          	sd	s1,40(sp)
    80006304:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006308:	00a00793          	li	a5,10
    8000630c:	fcf43823          	sd	a5,-48(s0)
    80006310:	01400793          	li	a5,20
    80006314:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006318:	00000493          	li	s1,0
    8000631c:	02c0006f          	j	80006348 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006320:	00349793          	slli	a5,s1,0x3
    80006324:	fd040613          	addi	a2,s0,-48
    80006328:	00f60633          	add	a2,a2,a5
    8000632c:	00000597          	auipc	a1,0x0
    80006330:	f2458593          	addi	a1,a1,-220 # 80006250 <_Z9sleepyRunPv>
    80006334:	fc040513          	addi	a0,s0,-64
    80006338:	00f50533          	add	a0,a0,a5
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	f68080e7          	jalr	-152(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006344:	0014849b          	addiw	s1,s1,1
    80006348:	00100793          	li	a5,1
    8000634c:	fc97dae3          	bge	a5,s1,80006320 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006350:	00006797          	auipc	a5,0x6
    80006354:	9387c783          	lbu	a5,-1736(a5) # 8000bc88 <finished>
    80006358:	fe078ce3          	beqz	a5,80006350 <_Z12testSleepingv+0x5c>
    8000635c:	00006797          	auipc	a5,0x6
    80006360:	92d7c783          	lbu	a5,-1747(a5) # 8000bc89 <finished+0x1>
    80006364:	fe0786e3          	beqz	a5,80006350 <_Z12testSleepingv+0x5c>
}
    80006368:	03813083          	ld	ra,56(sp)
    8000636c:	03013403          	ld	s0,48(sp)
    80006370:	02813483          	ld	s1,40(sp)
    80006374:	04010113          	addi	sp,sp,64
    80006378:	00008067          	ret

000000008000637c <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    8000637c:	fe010113          	addi	sp,sp,-32
    80006380:	00113c23          	sd	ra,24(sp)
    80006384:	00813823          	sd	s0,16(sp)
    80006388:	00913423          	sd	s1,8(sp)
    8000638c:	02010413          	addi	s0,sp,32
    80006390:	00050493          	mv	s1,a0
    80006394:	00b52023          	sw	a1,0(a0)
    80006398:	00052823          	sw	zero,16(a0)
    8000639c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800063a0:	00259513          	slli	a0,a1,0x2
    800063a4:	ffffb097          	auipc	ra,0xffffb
    800063a8:	ea4080e7          	jalr	-348(ra) # 80001248 <mem_alloc>
    800063ac:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800063b0:	00000593          	li	a1,0
    800063b4:	02048513          	addi	a0,s1,32
    800063b8:	ffffb097          	auipc	ra,0xffffb
    800063bc:	fb4080e7          	jalr	-76(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    800063c0:	0004a583          	lw	a1,0(s1)
    800063c4:	01848513          	addi	a0,s1,24
    800063c8:	ffffb097          	auipc	ra,0xffffb
    800063cc:	fa4080e7          	jalr	-92(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    800063d0:	00100593          	li	a1,1
    800063d4:	02848513          	addi	a0,s1,40
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	f94080e7          	jalr	-108(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    800063e0:	00100593          	li	a1,1
    800063e4:	03048513          	addi	a0,s1,48
    800063e8:	ffffb097          	auipc	ra,0xffffb
    800063ec:	f84080e7          	jalr	-124(ra) # 8000136c <sem_open>
}
    800063f0:	01813083          	ld	ra,24(sp)
    800063f4:	01013403          	ld	s0,16(sp)
    800063f8:	00813483          	ld	s1,8(sp)
    800063fc:	02010113          	addi	sp,sp,32
    80006400:	00008067          	ret

0000000080006404 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80006404:	fe010113          	addi	sp,sp,-32
    80006408:	00113c23          	sd	ra,24(sp)
    8000640c:	00813823          	sd	s0,16(sp)
    80006410:	00913423          	sd	s1,8(sp)
    80006414:	02010413          	addi	s0,sp,32
    80006418:	00050493          	mv	s1,a0
    putc('\n');
    8000641c:	00a00513          	li	a0,10
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	108080e7          	jalr	264(ra) # 80001528 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    80006428:	00003517          	auipc	a0,0x3
    8000642c:	18050513          	addi	a0,a0,384 # 800095a8 <_ZL6digits+0x28>
    80006430:	00000097          	auipc	ra,0x0
    80006434:	824080e7          	jalr	-2012(ra) # 80005c54 <_Z11printStringPKc>
    while (head != tail) {
    80006438:	0104a783          	lw	a5,16(s1)
    8000643c:	0144a703          	lw	a4,20(s1)
    80006440:	00e78c63          	beq	a5,a4,80006458 <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006444:	0017879b          	addiw	a5,a5,1
    80006448:	0004a703          	lw	a4,0(s1)
    8000644c:	02e7e7bb          	remw	a5,a5,a4
    80006450:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006454:	fe5ff06f          	j	80006438 <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    80006458:	02100513          	li	a0,33
    8000645c:	ffffb097          	auipc	ra,0xffffb
    80006460:	0cc080e7          	jalr	204(ra) # 80001528 <putc>
    putc('\n');
    80006464:	00a00513          	li	a0,10
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	0c0080e7          	jalr	192(ra) # 80001528 <putc>

    mem_free(buffer);
    80006470:	0084b503          	ld	a0,8(s1)
    80006474:	ffffb097          	auipc	ra,0xffffb
    80006478:	e04080e7          	jalr	-508(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    8000647c:	0204b503          	ld	a0,32(s1)
    80006480:	ffffb097          	auipc	ra,0xffffb
    80006484:	f24080e7          	jalr	-220(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80006488:	0184b503          	ld	a0,24(s1)
    8000648c:	ffffb097          	auipc	ra,0xffffb
    80006490:	f18080e7          	jalr	-232(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80006494:	0304b503          	ld	a0,48(s1)
    80006498:	ffffb097          	auipc	ra,0xffffb
    8000649c:	f0c080e7          	jalr	-244(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    800064a0:	0284b503          	ld	a0,40(s1)
    800064a4:	ffffb097          	auipc	ra,0xffffb
    800064a8:	f00080e7          	jalr	-256(ra) # 800013a4 <sem_close>
}
    800064ac:	01813083          	ld	ra,24(sp)
    800064b0:	01013403          	ld	s0,16(sp)
    800064b4:	00813483          	ld	s1,8(sp)
    800064b8:	02010113          	addi	sp,sp,32
    800064bc:	00008067          	ret

00000000800064c0 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800064c0:	fe010113          	addi	sp,sp,-32
    800064c4:	00113c23          	sd	ra,24(sp)
    800064c8:	00813823          	sd	s0,16(sp)
    800064cc:	00913423          	sd	s1,8(sp)
    800064d0:	01213023          	sd	s2,0(sp)
    800064d4:	02010413          	addi	s0,sp,32
    800064d8:	00050493          	mv	s1,a0
    800064dc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800064e0:	01853503          	ld	a0,24(a0)
    800064e4:	ffffb097          	auipc	ra,0xffffb
    800064e8:	eec080e7          	jalr	-276(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    800064ec:	0304b503          	ld	a0,48(s1)
    800064f0:	ffffb097          	auipc	ra,0xffffb
    800064f4:	ee0080e7          	jalr	-288(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    800064f8:	0084b783          	ld	a5,8(s1)
    800064fc:	0144a703          	lw	a4,20(s1)
    80006500:	00271713          	slli	a4,a4,0x2
    80006504:	00e787b3          	add	a5,a5,a4
    80006508:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000650c:	0144a783          	lw	a5,20(s1)
    80006510:	0017879b          	addiw	a5,a5,1
    80006514:	0004a703          	lw	a4,0(s1)
    80006518:	02e7e7bb          	remw	a5,a5,a4
    8000651c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006520:	0304b503          	ld	a0,48(s1)
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	ed8080e7          	jalr	-296(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    8000652c:	0204b503          	ld	a0,32(s1)
    80006530:	ffffb097          	auipc	ra,0xffffb
    80006534:	ecc080e7          	jalr	-308(ra) # 800013fc <sem_signal>

}
    80006538:	01813083          	ld	ra,24(sp)
    8000653c:	01013403          	ld	s0,16(sp)
    80006540:	00813483          	ld	s1,8(sp)
    80006544:	00013903          	ld	s2,0(sp)
    80006548:	02010113          	addi	sp,sp,32
    8000654c:	00008067          	ret

0000000080006550 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006550:	fe010113          	addi	sp,sp,-32
    80006554:	00113c23          	sd	ra,24(sp)
    80006558:	00813823          	sd	s0,16(sp)
    8000655c:	00913423          	sd	s1,8(sp)
    80006560:	01213023          	sd	s2,0(sp)
    80006564:	02010413          	addi	s0,sp,32
    80006568:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000656c:	02053503          	ld	a0,32(a0)
    80006570:	ffffb097          	auipc	ra,0xffffb
    80006574:	e60080e7          	jalr	-416(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80006578:	0284b503          	ld	a0,40(s1)
    8000657c:	ffffb097          	auipc	ra,0xffffb
    80006580:	e54080e7          	jalr	-428(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80006584:	0084b703          	ld	a4,8(s1)
    80006588:	0104a783          	lw	a5,16(s1)
    8000658c:	00279693          	slli	a3,a5,0x2
    80006590:	00d70733          	add	a4,a4,a3
    80006594:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006598:	0017879b          	addiw	a5,a5,1
    8000659c:	0004a703          	lw	a4,0(s1)
    800065a0:	02e7e7bb          	remw	a5,a5,a4
    800065a4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800065a8:	0284b503          	ld	a0,40(s1)
    800065ac:	ffffb097          	auipc	ra,0xffffb
    800065b0:	e50080e7          	jalr	-432(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    800065b4:	0184b503          	ld	a0,24(s1)
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	e44080e7          	jalr	-444(ra) # 800013fc <sem_signal>

    return ret;
}
    800065c0:	00090513          	mv	a0,s2
    800065c4:	01813083          	ld	ra,24(sp)
    800065c8:	01013403          	ld	s0,16(sp)
    800065cc:	00813483          	ld	s1,8(sp)
    800065d0:	00013903          	ld	s2,0(sp)
    800065d4:	02010113          	addi	sp,sp,32
    800065d8:	00008067          	ret

00000000800065dc <start>:
    800065dc:	ff010113          	addi	sp,sp,-16
    800065e0:	00813423          	sd	s0,8(sp)
    800065e4:	01010413          	addi	s0,sp,16
    800065e8:	300027f3          	csrr	a5,mstatus
    800065ec:	ffffe737          	lui	a4,0xffffe
    800065f0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff190f>
    800065f4:	00e7f7b3          	and	a5,a5,a4
    800065f8:	00001737          	lui	a4,0x1
    800065fc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006600:	00e7e7b3          	or	a5,a5,a4
    80006604:	30079073          	csrw	mstatus,a5
    80006608:	00000797          	auipc	a5,0x0
    8000660c:	16078793          	addi	a5,a5,352 # 80006768 <system_main>
    80006610:	34179073          	csrw	mepc,a5
    80006614:	00000793          	li	a5,0
    80006618:	18079073          	csrw	satp,a5
    8000661c:	000107b7          	lui	a5,0x10
    80006620:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006624:	30279073          	csrw	medeleg,a5
    80006628:	30379073          	csrw	mideleg,a5
    8000662c:	104027f3          	csrr	a5,sie
    80006630:	2227e793          	ori	a5,a5,546
    80006634:	10479073          	csrw	sie,a5
    80006638:	fff00793          	li	a5,-1
    8000663c:	00a7d793          	srli	a5,a5,0xa
    80006640:	3b079073          	csrw	pmpaddr0,a5
    80006644:	00f00793          	li	a5,15
    80006648:	3a079073          	csrw	pmpcfg0,a5
    8000664c:	f14027f3          	csrr	a5,mhartid
    80006650:	0200c737          	lui	a4,0x200c
    80006654:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006658:	0007869b          	sext.w	a3,a5
    8000665c:	00269713          	slli	a4,a3,0x2
    80006660:	000f4637          	lui	a2,0xf4
    80006664:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006668:	00d70733          	add	a4,a4,a3
    8000666c:	0037979b          	slliw	a5,a5,0x3
    80006670:	020046b7          	lui	a3,0x2004
    80006674:	00d787b3          	add	a5,a5,a3
    80006678:	00c585b3          	add	a1,a1,a2
    8000667c:	00371693          	slli	a3,a4,0x3
    80006680:	00005717          	auipc	a4,0x5
    80006684:	61070713          	addi	a4,a4,1552 # 8000bc90 <timer_scratch>
    80006688:	00b7b023          	sd	a1,0(a5)
    8000668c:	00d70733          	add	a4,a4,a3
    80006690:	00f73c23          	sd	a5,24(a4)
    80006694:	02c73023          	sd	a2,32(a4)
    80006698:	34071073          	csrw	mscratch,a4
    8000669c:	00000797          	auipc	a5,0x0
    800066a0:	6e478793          	addi	a5,a5,1764 # 80006d80 <timervec>
    800066a4:	30579073          	csrw	mtvec,a5
    800066a8:	300027f3          	csrr	a5,mstatus
    800066ac:	0087e793          	ori	a5,a5,8
    800066b0:	30079073          	csrw	mstatus,a5
    800066b4:	304027f3          	csrr	a5,mie
    800066b8:	0807e793          	ori	a5,a5,128
    800066bc:	30479073          	csrw	mie,a5
    800066c0:	f14027f3          	csrr	a5,mhartid
    800066c4:	0007879b          	sext.w	a5,a5
    800066c8:	00078213          	mv	tp,a5
    800066cc:	30200073          	mret
    800066d0:	00813403          	ld	s0,8(sp)
    800066d4:	01010113          	addi	sp,sp,16
    800066d8:	00008067          	ret

00000000800066dc <timerinit>:
    800066dc:	ff010113          	addi	sp,sp,-16
    800066e0:	00813423          	sd	s0,8(sp)
    800066e4:	01010413          	addi	s0,sp,16
    800066e8:	f14027f3          	csrr	a5,mhartid
    800066ec:	0200c737          	lui	a4,0x200c
    800066f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800066f4:	0007869b          	sext.w	a3,a5
    800066f8:	00269713          	slli	a4,a3,0x2
    800066fc:	000f4637          	lui	a2,0xf4
    80006700:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006704:	00d70733          	add	a4,a4,a3
    80006708:	0037979b          	slliw	a5,a5,0x3
    8000670c:	020046b7          	lui	a3,0x2004
    80006710:	00d787b3          	add	a5,a5,a3
    80006714:	00c585b3          	add	a1,a1,a2
    80006718:	00371693          	slli	a3,a4,0x3
    8000671c:	00005717          	auipc	a4,0x5
    80006720:	57470713          	addi	a4,a4,1396 # 8000bc90 <timer_scratch>
    80006724:	00b7b023          	sd	a1,0(a5)
    80006728:	00d70733          	add	a4,a4,a3
    8000672c:	00f73c23          	sd	a5,24(a4)
    80006730:	02c73023          	sd	a2,32(a4)
    80006734:	34071073          	csrw	mscratch,a4
    80006738:	00000797          	auipc	a5,0x0
    8000673c:	64878793          	addi	a5,a5,1608 # 80006d80 <timervec>
    80006740:	30579073          	csrw	mtvec,a5
    80006744:	300027f3          	csrr	a5,mstatus
    80006748:	0087e793          	ori	a5,a5,8
    8000674c:	30079073          	csrw	mstatus,a5
    80006750:	304027f3          	csrr	a5,mie
    80006754:	0807e793          	ori	a5,a5,128
    80006758:	30479073          	csrw	mie,a5
    8000675c:	00813403          	ld	s0,8(sp)
    80006760:	01010113          	addi	sp,sp,16
    80006764:	00008067          	ret

0000000080006768 <system_main>:
    80006768:	fe010113          	addi	sp,sp,-32
    8000676c:	00813823          	sd	s0,16(sp)
    80006770:	00913423          	sd	s1,8(sp)
    80006774:	00113c23          	sd	ra,24(sp)
    80006778:	02010413          	addi	s0,sp,32
    8000677c:	00000097          	auipc	ra,0x0
    80006780:	0c4080e7          	jalr	196(ra) # 80006840 <cpuid>
    80006784:	00005497          	auipc	s1,0x5
    80006788:	3fc48493          	addi	s1,s1,1020 # 8000bb80 <started>
    8000678c:	02050263          	beqz	a0,800067b0 <system_main+0x48>
    80006790:	0004a783          	lw	a5,0(s1)
    80006794:	0007879b          	sext.w	a5,a5
    80006798:	fe078ce3          	beqz	a5,80006790 <system_main+0x28>
    8000679c:	0ff0000f          	fence
    800067a0:	00003517          	auipc	a0,0x3
    800067a4:	e5050513          	addi	a0,a0,-432 # 800095f0 <_ZL6digits+0x70>
    800067a8:	00001097          	auipc	ra,0x1
    800067ac:	a74080e7          	jalr	-1420(ra) # 8000721c <panic>
    800067b0:	00001097          	auipc	ra,0x1
    800067b4:	9c8080e7          	jalr	-1592(ra) # 80007178 <consoleinit>
    800067b8:	00001097          	auipc	ra,0x1
    800067bc:	154080e7          	jalr	340(ra) # 8000790c <printfinit>
    800067c0:	00003517          	auipc	a0,0x3
    800067c4:	94050513          	addi	a0,a0,-1728 # 80009100 <CONSOLE_STATUS+0xf0>
    800067c8:	00001097          	auipc	ra,0x1
    800067cc:	ab0080e7          	jalr	-1360(ra) # 80007278 <__printf>
    800067d0:	00003517          	auipc	a0,0x3
    800067d4:	df050513          	addi	a0,a0,-528 # 800095c0 <_ZL6digits+0x40>
    800067d8:	00001097          	auipc	ra,0x1
    800067dc:	aa0080e7          	jalr	-1376(ra) # 80007278 <__printf>
    800067e0:	00003517          	auipc	a0,0x3
    800067e4:	92050513          	addi	a0,a0,-1760 # 80009100 <CONSOLE_STATUS+0xf0>
    800067e8:	00001097          	auipc	ra,0x1
    800067ec:	a90080e7          	jalr	-1392(ra) # 80007278 <__printf>
    800067f0:	00001097          	auipc	ra,0x1
    800067f4:	4a8080e7          	jalr	1192(ra) # 80007c98 <kinit>
    800067f8:	00000097          	auipc	ra,0x0
    800067fc:	148080e7          	jalr	328(ra) # 80006940 <trapinit>
    80006800:	00000097          	auipc	ra,0x0
    80006804:	16c080e7          	jalr	364(ra) # 8000696c <trapinithart>
    80006808:	00000097          	auipc	ra,0x0
    8000680c:	5b8080e7          	jalr	1464(ra) # 80006dc0 <plicinit>
    80006810:	00000097          	auipc	ra,0x0
    80006814:	5d8080e7          	jalr	1496(ra) # 80006de8 <plicinithart>
    80006818:	00000097          	auipc	ra,0x0
    8000681c:	078080e7          	jalr	120(ra) # 80006890 <userinit>
    80006820:	0ff0000f          	fence
    80006824:	00100793          	li	a5,1
    80006828:	00003517          	auipc	a0,0x3
    8000682c:	db050513          	addi	a0,a0,-592 # 800095d8 <_ZL6digits+0x58>
    80006830:	00f4a023          	sw	a5,0(s1)
    80006834:	00001097          	auipc	ra,0x1
    80006838:	a44080e7          	jalr	-1468(ra) # 80007278 <__printf>
    8000683c:	0000006f          	j	8000683c <system_main+0xd4>

0000000080006840 <cpuid>:
    80006840:	ff010113          	addi	sp,sp,-16
    80006844:	00813423          	sd	s0,8(sp)
    80006848:	01010413          	addi	s0,sp,16
    8000684c:	00020513          	mv	a0,tp
    80006850:	00813403          	ld	s0,8(sp)
    80006854:	0005051b          	sext.w	a0,a0
    80006858:	01010113          	addi	sp,sp,16
    8000685c:	00008067          	ret

0000000080006860 <mycpu>:
    80006860:	ff010113          	addi	sp,sp,-16
    80006864:	00813423          	sd	s0,8(sp)
    80006868:	01010413          	addi	s0,sp,16
    8000686c:	00020793          	mv	a5,tp
    80006870:	00813403          	ld	s0,8(sp)
    80006874:	0007879b          	sext.w	a5,a5
    80006878:	00779793          	slli	a5,a5,0x7
    8000687c:	00006517          	auipc	a0,0x6
    80006880:	44450513          	addi	a0,a0,1092 # 8000ccc0 <cpus>
    80006884:	00f50533          	add	a0,a0,a5
    80006888:	01010113          	addi	sp,sp,16
    8000688c:	00008067          	ret

0000000080006890 <userinit>:
    80006890:	ff010113          	addi	sp,sp,-16
    80006894:	00813423          	sd	s0,8(sp)
    80006898:	01010413          	addi	s0,sp,16
    8000689c:	00813403          	ld	s0,8(sp)
    800068a0:	01010113          	addi	sp,sp,16
    800068a4:	ffffd317          	auipc	t1,0xffffd
    800068a8:	ce430067          	jr	-796(t1) # 80003588 <main>

00000000800068ac <either_copyout>:
    800068ac:	ff010113          	addi	sp,sp,-16
    800068b0:	00813023          	sd	s0,0(sp)
    800068b4:	00113423          	sd	ra,8(sp)
    800068b8:	01010413          	addi	s0,sp,16
    800068bc:	02051663          	bnez	a0,800068e8 <either_copyout+0x3c>
    800068c0:	00058513          	mv	a0,a1
    800068c4:	00060593          	mv	a1,a2
    800068c8:	0006861b          	sext.w	a2,a3
    800068cc:	00002097          	auipc	ra,0x2
    800068d0:	c58080e7          	jalr	-936(ra) # 80008524 <__memmove>
    800068d4:	00813083          	ld	ra,8(sp)
    800068d8:	00013403          	ld	s0,0(sp)
    800068dc:	00000513          	li	a0,0
    800068e0:	01010113          	addi	sp,sp,16
    800068e4:	00008067          	ret
    800068e8:	00003517          	auipc	a0,0x3
    800068ec:	d3050513          	addi	a0,a0,-720 # 80009618 <_ZL6digits+0x98>
    800068f0:	00001097          	auipc	ra,0x1
    800068f4:	92c080e7          	jalr	-1748(ra) # 8000721c <panic>

00000000800068f8 <either_copyin>:
    800068f8:	ff010113          	addi	sp,sp,-16
    800068fc:	00813023          	sd	s0,0(sp)
    80006900:	00113423          	sd	ra,8(sp)
    80006904:	01010413          	addi	s0,sp,16
    80006908:	02059463          	bnez	a1,80006930 <either_copyin+0x38>
    8000690c:	00060593          	mv	a1,a2
    80006910:	0006861b          	sext.w	a2,a3
    80006914:	00002097          	auipc	ra,0x2
    80006918:	c10080e7          	jalr	-1008(ra) # 80008524 <__memmove>
    8000691c:	00813083          	ld	ra,8(sp)
    80006920:	00013403          	ld	s0,0(sp)
    80006924:	00000513          	li	a0,0
    80006928:	01010113          	addi	sp,sp,16
    8000692c:	00008067          	ret
    80006930:	00003517          	auipc	a0,0x3
    80006934:	d1050513          	addi	a0,a0,-752 # 80009640 <_ZL6digits+0xc0>
    80006938:	00001097          	auipc	ra,0x1
    8000693c:	8e4080e7          	jalr	-1820(ra) # 8000721c <panic>

0000000080006940 <trapinit>:
    80006940:	ff010113          	addi	sp,sp,-16
    80006944:	00813423          	sd	s0,8(sp)
    80006948:	01010413          	addi	s0,sp,16
    8000694c:	00813403          	ld	s0,8(sp)
    80006950:	00003597          	auipc	a1,0x3
    80006954:	d1858593          	addi	a1,a1,-744 # 80009668 <_ZL6digits+0xe8>
    80006958:	00006517          	auipc	a0,0x6
    8000695c:	3e850513          	addi	a0,a0,1000 # 8000cd40 <tickslock>
    80006960:	01010113          	addi	sp,sp,16
    80006964:	00001317          	auipc	t1,0x1
    80006968:	5c430067          	jr	1476(t1) # 80007f28 <initlock>

000000008000696c <trapinithart>:
    8000696c:	ff010113          	addi	sp,sp,-16
    80006970:	00813423          	sd	s0,8(sp)
    80006974:	01010413          	addi	s0,sp,16
    80006978:	00000797          	auipc	a5,0x0
    8000697c:	2f878793          	addi	a5,a5,760 # 80006c70 <kernelvec>
    80006980:	10579073          	csrw	stvec,a5
    80006984:	00813403          	ld	s0,8(sp)
    80006988:	01010113          	addi	sp,sp,16
    8000698c:	00008067          	ret

0000000080006990 <usertrap>:
    80006990:	ff010113          	addi	sp,sp,-16
    80006994:	00813423          	sd	s0,8(sp)
    80006998:	01010413          	addi	s0,sp,16
    8000699c:	00813403          	ld	s0,8(sp)
    800069a0:	01010113          	addi	sp,sp,16
    800069a4:	00008067          	ret

00000000800069a8 <usertrapret>:
    800069a8:	ff010113          	addi	sp,sp,-16
    800069ac:	00813423          	sd	s0,8(sp)
    800069b0:	01010413          	addi	s0,sp,16
    800069b4:	00813403          	ld	s0,8(sp)
    800069b8:	01010113          	addi	sp,sp,16
    800069bc:	00008067          	ret

00000000800069c0 <kerneltrap>:
    800069c0:	fe010113          	addi	sp,sp,-32
    800069c4:	00813823          	sd	s0,16(sp)
    800069c8:	00113c23          	sd	ra,24(sp)
    800069cc:	00913423          	sd	s1,8(sp)
    800069d0:	02010413          	addi	s0,sp,32
    800069d4:	142025f3          	csrr	a1,scause
    800069d8:	100027f3          	csrr	a5,sstatus
    800069dc:	0027f793          	andi	a5,a5,2
    800069e0:	10079c63          	bnez	a5,80006af8 <kerneltrap+0x138>
    800069e4:	142027f3          	csrr	a5,scause
    800069e8:	0207ce63          	bltz	a5,80006a24 <kerneltrap+0x64>
    800069ec:	00003517          	auipc	a0,0x3
    800069f0:	cc450513          	addi	a0,a0,-828 # 800096b0 <_ZL6digits+0x130>
    800069f4:	00001097          	auipc	ra,0x1
    800069f8:	884080e7          	jalr	-1916(ra) # 80007278 <__printf>
    800069fc:	141025f3          	csrr	a1,sepc
    80006a00:	14302673          	csrr	a2,stval
    80006a04:	00003517          	auipc	a0,0x3
    80006a08:	cbc50513          	addi	a0,a0,-836 # 800096c0 <_ZL6digits+0x140>
    80006a0c:	00001097          	auipc	ra,0x1
    80006a10:	86c080e7          	jalr	-1940(ra) # 80007278 <__printf>
    80006a14:	00003517          	auipc	a0,0x3
    80006a18:	cc450513          	addi	a0,a0,-828 # 800096d8 <_ZL6digits+0x158>
    80006a1c:	00001097          	auipc	ra,0x1
    80006a20:	800080e7          	jalr	-2048(ra) # 8000721c <panic>
    80006a24:	0ff7f713          	andi	a4,a5,255
    80006a28:	00900693          	li	a3,9
    80006a2c:	04d70063          	beq	a4,a3,80006a6c <kerneltrap+0xac>
    80006a30:	fff00713          	li	a4,-1
    80006a34:	03f71713          	slli	a4,a4,0x3f
    80006a38:	00170713          	addi	a4,a4,1
    80006a3c:	fae798e3          	bne	a5,a4,800069ec <kerneltrap+0x2c>
    80006a40:	00000097          	auipc	ra,0x0
    80006a44:	e00080e7          	jalr	-512(ra) # 80006840 <cpuid>
    80006a48:	06050663          	beqz	a0,80006ab4 <kerneltrap+0xf4>
    80006a4c:	144027f3          	csrr	a5,sip
    80006a50:	ffd7f793          	andi	a5,a5,-3
    80006a54:	14479073          	csrw	sip,a5
    80006a58:	01813083          	ld	ra,24(sp)
    80006a5c:	01013403          	ld	s0,16(sp)
    80006a60:	00813483          	ld	s1,8(sp)
    80006a64:	02010113          	addi	sp,sp,32
    80006a68:	00008067          	ret
    80006a6c:	00000097          	auipc	ra,0x0
    80006a70:	3c8080e7          	jalr	968(ra) # 80006e34 <plic_claim>
    80006a74:	00a00793          	li	a5,10
    80006a78:	00050493          	mv	s1,a0
    80006a7c:	06f50863          	beq	a0,a5,80006aec <kerneltrap+0x12c>
    80006a80:	fc050ce3          	beqz	a0,80006a58 <kerneltrap+0x98>
    80006a84:	00050593          	mv	a1,a0
    80006a88:	00003517          	auipc	a0,0x3
    80006a8c:	c0850513          	addi	a0,a0,-1016 # 80009690 <_ZL6digits+0x110>
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	7e8080e7          	jalr	2024(ra) # 80007278 <__printf>
    80006a98:	01013403          	ld	s0,16(sp)
    80006a9c:	01813083          	ld	ra,24(sp)
    80006aa0:	00048513          	mv	a0,s1
    80006aa4:	00813483          	ld	s1,8(sp)
    80006aa8:	02010113          	addi	sp,sp,32
    80006aac:	00000317          	auipc	t1,0x0
    80006ab0:	3c030067          	jr	960(t1) # 80006e6c <plic_complete>
    80006ab4:	00006517          	auipc	a0,0x6
    80006ab8:	28c50513          	addi	a0,a0,652 # 8000cd40 <tickslock>
    80006abc:	00001097          	auipc	ra,0x1
    80006ac0:	490080e7          	jalr	1168(ra) # 80007f4c <acquire>
    80006ac4:	00005717          	auipc	a4,0x5
    80006ac8:	0c070713          	addi	a4,a4,192 # 8000bb84 <ticks>
    80006acc:	00072783          	lw	a5,0(a4)
    80006ad0:	00006517          	auipc	a0,0x6
    80006ad4:	27050513          	addi	a0,a0,624 # 8000cd40 <tickslock>
    80006ad8:	0017879b          	addiw	a5,a5,1
    80006adc:	00f72023          	sw	a5,0(a4)
    80006ae0:	00001097          	auipc	ra,0x1
    80006ae4:	538080e7          	jalr	1336(ra) # 80008018 <release>
    80006ae8:	f65ff06f          	j	80006a4c <kerneltrap+0x8c>
    80006aec:	00001097          	auipc	ra,0x1
    80006af0:	094080e7          	jalr	148(ra) # 80007b80 <uartintr>
    80006af4:	fa5ff06f          	j	80006a98 <kerneltrap+0xd8>
    80006af8:	00003517          	auipc	a0,0x3
    80006afc:	b7850513          	addi	a0,a0,-1160 # 80009670 <_ZL6digits+0xf0>
    80006b00:	00000097          	auipc	ra,0x0
    80006b04:	71c080e7          	jalr	1820(ra) # 8000721c <panic>

0000000080006b08 <clockintr>:
    80006b08:	fe010113          	addi	sp,sp,-32
    80006b0c:	00813823          	sd	s0,16(sp)
    80006b10:	00913423          	sd	s1,8(sp)
    80006b14:	00113c23          	sd	ra,24(sp)
    80006b18:	02010413          	addi	s0,sp,32
    80006b1c:	00006497          	auipc	s1,0x6
    80006b20:	22448493          	addi	s1,s1,548 # 8000cd40 <tickslock>
    80006b24:	00048513          	mv	a0,s1
    80006b28:	00001097          	auipc	ra,0x1
    80006b2c:	424080e7          	jalr	1060(ra) # 80007f4c <acquire>
    80006b30:	00005717          	auipc	a4,0x5
    80006b34:	05470713          	addi	a4,a4,84 # 8000bb84 <ticks>
    80006b38:	00072783          	lw	a5,0(a4)
    80006b3c:	01013403          	ld	s0,16(sp)
    80006b40:	01813083          	ld	ra,24(sp)
    80006b44:	00048513          	mv	a0,s1
    80006b48:	0017879b          	addiw	a5,a5,1
    80006b4c:	00813483          	ld	s1,8(sp)
    80006b50:	00f72023          	sw	a5,0(a4)
    80006b54:	02010113          	addi	sp,sp,32
    80006b58:	00001317          	auipc	t1,0x1
    80006b5c:	4c030067          	jr	1216(t1) # 80008018 <release>

0000000080006b60 <devintr>:
    80006b60:	142027f3          	csrr	a5,scause
    80006b64:	00000513          	li	a0,0
    80006b68:	0007c463          	bltz	a5,80006b70 <devintr+0x10>
    80006b6c:	00008067          	ret
    80006b70:	fe010113          	addi	sp,sp,-32
    80006b74:	00813823          	sd	s0,16(sp)
    80006b78:	00113c23          	sd	ra,24(sp)
    80006b7c:	00913423          	sd	s1,8(sp)
    80006b80:	02010413          	addi	s0,sp,32
    80006b84:	0ff7f713          	andi	a4,a5,255
    80006b88:	00900693          	li	a3,9
    80006b8c:	04d70c63          	beq	a4,a3,80006be4 <devintr+0x84>
    80006b90:	fff00713          	li	a4,-1
    80006b94:	03f71713          	slli	a4,a4,0x3f
    80006b98:	00170713          	addi	a4,a4,1
    80006b9c:	00e78c63          	beq	a5,a4,80006bb4 <devintr+0x54>
    80006ba0:	01813083          	ld	ra,24(sp)
    80006ba4:	01013403          	ld	s0,16(sp)
    80006ba8:	00813483          	ld	s1,8(sp)
    80006bac:	02010113          	addi	sp,sp,32
    80006bb0:	00008067          	ret
    80006bb4:	00000097          	auipc	ra,0x0
    80006bb8:	c8c080e7          	jalr	-884(ra) # 80006840 <cpuid>
    80006bbc:	06050663          	beqz	a0,80006c28 <devintr+0xc8>
    80006bc0:	144027f3          	csrr	a5,sip
    80006bc4:	ffd7f793          	andi	a5,a5,-3
    80006bc8:	14479073          	csrw	sip,a5
    80006bcc:	01813083          	ld	ra,24(sp)
    80006bd0:	01013403          	ld	s0,16(sp)
    80006bd4:	00813483          	ld	s1,8(sp)
    80006bd8:	00200513          	li	a0,2
    80006bdc:	02010113          	addi	sp,sp,32
    80006be0:	00008067          	ret
    80006be4:	00000097          	auipc	ra,0x0
    80006be8:	250080e7          	jalr	592(ra) # 80006e34 <plic_claim>
    80006bec:	00a00793          	li	a5,10
    80006bf0:	00050493          	mv	s1,a0
    80006bf4:	06f50663          	beq	a0,a5,80006c60 <devintr+0x100>
    80006bf8:	00100513          	li	a0,1
    80006bfc:	fa0482e3          	beqz	s1,80006ba0 <devintr+0x40>
    80006c00:	00048593          	mv	a1,s1
    80006c04:	00003517          	auipc	a0,0x3
    80006c08:	a8c50513          	addi	a0,a0,-1396 # 80009690 <_ZL6digits+0x110>
    80006c0c:	00000097          	auipc	ra,0x0
    80006c10:	66c080e7          	jalr	1644(ra) # 80007278 <__printf>
    80006c14:	00048513          	mv	a0,s1
    80006c18:	00000097          	auipc	ra,0x0
    80006c1c:	254080e7          	jalr	596(ra) # 80006e6c <plic_complete>
    80006c20:	00100513          	li	a0,1
    80006c24:	f7dff06f          	j	80006ba0 <devintr+0x40>
    80006c28:	00006517          	auipc	a0,0x6
    80006c2c:	11850513          	addi	a0,a0,280 # 8000cd40 <tickslock>
    80006c30:	00001097          	auipc	ra,0x1
    80006c34:	31c080e7          	jalr	796(ra) # 80007f4c <acquire>
    80006c38:	00005717          	auipc	a4,0x5
    80006c3c:	f4c70713          	addi	a4,a4,-180 # 8000bb84 <ticks>
    80006c40:	00072783          	lw	a5,0(a4)
    80006c44:	00006517          	auipc	a0,0x6
    80006c48:	0fc50513          	addi	a0,a0,252 # 8000cd40 <tickslock>
    80006c4c:	0017879b          	addiw	a5,a5,1
    80006c50:	00f72023          	sw	a5,0(a4)
    80006c54:	00001097          	auipc	ra,0x1
    80006c58:	3c4080e7          	jalr	964(ra) # 80008018 <release>
    80006c5c:	f65ff06f          	j	80006bc0 <devintr+0x60>
    80006c60:	00001097          	auipc	ra,0x1
    80006c64:	f20080e7          	jalr	-224(ra) # 80007b80 <uartintr>
    80006c68:	fadff06f          	j	80006c14 <devintr+0xb4>
    80006c6c:	0000                	unimp
	...

0000000080006c70 <kernelvec>:
    80006c70:	f0010113          	addi	sp,sp,-256
    80006c74:	00113023          	sd	ra,0(sp)
    80006c78:	00213423          	sd	sp,8(sp)
    80006c7c:	00313823          	sd	gp,16(sp)
    80006c80:	00413c23          	sd	tp,24(sp)
    80006c84:	02513023          	sd	t0,32(sp)
    80006c88:	02613423          	sd	t1,40(sp)
    80006c8c:	02713823          	sd	t2,48(sp)
    80006c90:	02813c23          	sd	s0,56(sp)
    80006c94:	04913023          	sd	s1,64(sp)
    80006c98:	04a13423          	sd	a0,72(sp)
    80006c9c:	04b13823          	sd	a1,80(sp)
    80006ca0:	04c13c23          	sd	a2,88(sp)
    80006ca4:	06d13023          	sd	a3,96(sp)
    80006ca8:	06e13423          	sd	a4,104(sp)
    80006cac:	06f13823          	sd	a5,112(sp)
    80006cb0:	07013c23          	sd	a6,120(sp)
    80006cb4:	09113023          	sd	a7,128(sp)
    80006cb8:	09213423          	sd	s2,136(sp)
    80006cbc:	09313823          	sd	s3,144(sp)
    80006cc0:	09413c23          	sd	s4,152(sp)
    80006cc4:	0b513023          	sd	s5,160(sp)
    80006cc8:	0b613423          	sd	s6,168(sp)
    80006ccc:	0b713823          	sd	s7,176(sp)
    80006cd0:	0b813c23          	sd	s8,184(sp)
    80006cd4:	0d913023          	sd	s9,192(sp)
    80006cd8:	0da13423          	sd	s10,200(sp)
    80006cdc:	0db13823          	sd	s11,208(sp)
    80006ce0:	0dc13c23          	sd	t3,216(sp)
    80006ce4:	0fd13023          	sd	t4,224(sp)
    80006ce8:	0fe13423          	sd	t5,232(sp)
    80006cec:	0ff13823          	sd	t6,240(sp)
    80006cf0:	cd1ff0ef          	jal	ra,800069c0 <kerneltrap>
    80006cf4:	00013083          	ld	ra,0(sp)
    80006cf8:	00813103          	ld	sp,8(sp)
    80006cfc:	01013183          	ld	gp,16(sp)
    80006d00:	02013283          	ld	t0,32(sp)
    80006d04:	02813303          	ld	t1,40(sp)
    80006d08:	03013383          	ld	t2,48(sp)
    80006d0c:	03813403          	ld	s0,56(sp)
    80006d10:	04013483          	ld	s1,64(sp)
    80006d14:	04813503          	ld	a0,72(sp)
    80006d18:	05013583          	ld	a1,80(sp)
    80006d1c:	05813603          	ld	a2,88(sp)
    80006d20:	06013683          	ld	a3,96(sp)
    80006d24:	06813703          	ld	a4,104(sp)
    80006d28:	07013783          	ld	a5,112(sp)
    80006d2c:	07813803          	ld	a6,120(sp)
    80006d30:	08013883          	ld	a7,128(sp)
    80006d34:	08813903          	ld	s2,136(sp)
    80006d38:	09013983          	ld	s3,144(sp)
    80006d3c:	09813a03          	ld	s4,152(sp)
    80006d40:	0a013a83          	ld	s5,160(sp)
    80006d44:	0a813b03          	ld	s6,168(sp)
    80006d48:	0b013b83          	ld	s7,176(sp)
    80006d4c:	0b813c03          	ld	s8,184(sp)
    80006d50:	0c013c83          	ld	s9,192(sp)
    80006d54:	0c813d03          	ld	s10,200(sp)
    80006d58:	0d013d83          	ld	s11,208(sp)
    80006d5c:	0d813e03          	ld	t3,216(sp)
    80006d60:	0e013e83          	ld	t4,224(sp)
    80006d64:	0e813f03          	ld	t5,232(sp)
    80006d68:	0f013f83          	ld	t6,240(sp)
    80006d6c:	10010113          	addi	sp,sp,256
    80006d70:	10200073          	sret
    80006d74:	00000013          	nop
    80006d78:	00000013          	nop
    80006d7c:	00000013          	nop

0000000080006d80 <timervec>:
    80006d80:	34051573          	csrrw	a0,mscratch,a0
    80006d84:	00b53023          	sd	a1,0(a0)
    80006d88:	00c53423          	sd	a2,8(a0)
    80006d8c:	00d53823          	sd	a3,16(a0)
    80006d90:	01853583          	ld	a1,24(a0)
    80006d94:	02053603          	ld	a2,32(a0)
    80006d98:	0005b683          	ld	a3,0(a1)
    80006d9c:	00c686b3          	add	a3,a3,a2
    80006da0:	00d5b023          	sd	a3,0(a1)
    80006da4:	00200593          	li	a1,2
    80006da8:	14459073          	csrw	sip,a1
    80006dac:	01053683          	ld	a3,16(a0)
    80006db0:	00853603          	ld	a2,8(a0)
    80006db4:	00053583          	ld	a1,0(a0)
    80006db8:	34051573          	csrrw	a0,mscratch,a0
    80006dbc:	30200073          	mret

0000000080006dc0 <plicinit>:
    80006dc0:	ff010113          	addi	sp,sp,-16
    80006dc4:	00813423          	sd	s0,8(sp)
    80006dc8:	01010413          	addi	s0,sp,16
    80006dcc:	00813403          	ld	s0,8(sp)
    80006dd0:	0c0007b7          	lui	a5,0xc000
    80006dd4:	00100713          	li	a4,1
    80006dd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006ddc:	00e7a223          	sw	a4,4(a5)
    80006de0:	01010113          	addi	sp,sp,16
    80006de4:	00008067          	ret

0000000080006de8 <plicinithart>:
    80006de8:	ff010113          	addi	sp,sp,-16
    80006dec:	00813023          	sd	s0,0(sp)
    80006df0:	00113423          	sd	ra,8(sp)
    80006df4:	01010413          	addi	s0,sp,16
    80006df8:	00000097          	auipc	ra,0x0
    80006dfc:	a48080e7          	jalr	-1464(ra) # 80006840 <cpuid>
    80006e00:	0085171b          	slliw	a4,a0,0x8
    80006e04:	0c0027b7          	lui	a5,0xc002
    80006e08:	00e787b3          	add	a5,a5,a4
    80006e0c:	40200713          	li	a4,1026
    80006e10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006e14:	00813083          	ld	ra,8(sp)
    80006e18:	00013403          	ld	s0,0(sp)
    80006e1c:	00d5151b          	slliw	a0,a0,0xd
    80006e20:	0c2017b7          	lui	a5,0xc201
    80006e24:	00a78533          	add	a0,a5,a0
    80006e28:	00052023          	sw	zero,0(a0)
    80006e2c:	01010113          	addi	sp,sp,16
    80006e30:	00008067          	ret

0000000080006e34 <plic_claim>:
    80006e34:	ff010113          	addi	sp,sp,-16
    80006e38:	00813023          	sd	s0,0(sp)
    80006e3c:	00113423          	sd	ra,8(sp)
    80006e40:	01010413          	addi	s0,sp,16
    80006e44:	00000097          	auipc	ra,0x0
    80006e48:	9fc080e7          	jalr	-1540(ra) # 80006840 <cpuid>
    80006e4c:	00813083          	ld	ra,8(sp)
    80006e50:	00013403          	ld	s0,0(sp)
    80006e54:	00d5151b          	slliw	a0,a0,0xd
    80006e58:	0c2017b7          	lui	a5,0xc201
    80006e5c:	00a78533          	add	a0,a5,a0
    80006e60:	00452503          	lw	a0,4(a0)
    80006e64:	01010113          	addi	sp,sp,16
    80006e68:	00008067          	ret

0000000080006e6c <plic_complete>:
    80006e6c:	fe010113          	addi	sp,sp,-32
    80006e70:	00813823          	sd	s0,16(sp)
    80006e74:	00913423          	sd	s1,8(sp)
    80006e78:	00113c23          	sd	ra,24(sp)
    80006e7c:	02010413          	addi	s0,sp,32
    80006e80:	00050493          	mv	s1,a0
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	9bc080e7          	jalr	-1604(ra) # 80006840 <cpuid>
    80006e8c:	01813083          	ld	ra,24(sp)
    80006e90:	01013403          	ld	s0,16(sp)
    80006e94:	00d5179b          	slliw	a5,a0,0xd
    80006e98:	0c201737          	lui	a4,0xc201
    80006e9c:	00f707b3          	add	a5,a4,a5
    80006ea0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ea4:	00813483          	ld	s1,8(sp)
    80006ea8:	02010113          	addi	sp,sp,32
    80006eac:	00008067          	ret

0000000080006eb0 <consolewrite>:
    80006eb0:	fb010113          	addi	sp,sp,-80
    80006eb4:	04813023          	sd	s0,64(sp)
    80006eb8:	04113423          	sd	ra,72(sp)
    80006ebc:	02913c23          	sd	s1,56(sp)
    80006ec0:	03213823          	sd	s2,48(sp)
    80006ec4:	03313423          	sd	s3,40(sp)
    80006ec8:	03413023          	sd	s4,32(sp)
    80006ecc:	01513c23          	sd	s5,24(sp)
    80006ed0:	05010413          	addi	s0,sp,80
    80006ed4:	06c05c63          	blez	a2,80006f4c <consolewrite+0x9c>
    80006ed8:	00060993          	mv	s3,a2
    80006edc:	00050a13          	mv	s4,a0
    80006ee0:	00058493          	mv	s1,a1
    80006ee4:	00000913          	li	s2,0
    80006ee8:	fff00a93          	li	s5,-1
    80006eec:	01c0006f          	j	80006f08 <consolewrite+0x58>
    80006ef0:	fbf44503          	lbu	a0,-65(s0)
    80006ef4:	0019091b          	addiw	s2,s2,1
    80006ef8:	00148493          	addi	s1,s1,1
    80006efc:	00001097          	auipc	ra,0x1
    80006f00:	a9c080e7          	jalr	-1380(ra) # 80007998 <uartputc>
    80006f04:	03298063          	beq	s3,s2,80006f24 <consolewrite+0x74>
    80006f08:	00048613          	mv	a2,s1
    80006f0c:	00100693          	li	a3,1
    80006f10:	000a0593          	mv	a1,s4
    80006f14:	fbf40513          	addi	a0,s0,-65
    80006f18:	00000097          	auipc	ra,0x0
    80006f1c:	9e0080e7          	jalr	-1568(ra) # 800068f8 <either_copyin>
    80006f20:	fd5518e3          	bne	a0,s5,80006ef0 <consolewrite+0x40>
    80006f24:	04813083          	ld	ra,72(sp)
    80006f28:	04013403          	ld	s0,64(sp)
    80006f2c:	03813483          	ld	s1,56(sp)
    80006f30:	02813983          	ld	s3,40(sp)
    80006f34:	02013a03          	ld	s4,32(sp)
    80006f38:	01813a83          	ld	s5,24(sp)
    80006f3c:	00090513          	mv	a0,s2
    80006f40:	03013903          	ld	s2,48(sp)
    80006f44:	05010113          	addi	sp,sp,80
    80006f48:	00008067          	ret
    80006f4c:	00000913          	li	s2,0
    80006f50:	fd5ff06f          	j	80006f24 <consolewrite+0x74>

0000000080006f54 <consoleread>:
    80006f54:	f9010113          	addi	sp,sp,-112
    80006f58:	06813023          	sd	s0,96(sp)
    80006f5c:	04913c23          	sd	s1,88(sp)
    80006f60:	05213823          	sd	s2,80(sp)
    80006f64:	05313423          	sd	s3,72(sp)
    80006f68:	05413023          	sd	s4,64(sp)
    80006f6c:	03513c23          	sd	s5,56(sp)
    80006f70:	03613823          	sd	s6,48(sp)
    80006f74:	03713423          	sd	s7,40(sp)
    80006f78:	03813023          	sd	s8,32(sp)
    80006f7c:	06113423          	sd	ra,104(sp)
    80006f80:	01913c23          	sd	s9,24(sp)
    80006f84:	07010413          	addi	s0,sp,112
    80006f88:	00060b93          	mv	s7,a2
    80006f8c:	00050913          	mv	s2,a0
    80006f90:	00058c13          	mv	s8,a1
    80006f94:	00060b1b          	sext.w	s6,a2
    80006f98:	00006497          	auipc	s1,0x6
    80006f9c:	dd048493          	addi	s1,s1,-560 # 8000cd68 <cons>
    80006fa0:	00400993          	li	s3,4
    80006fa4:	fff00a13          	li	s4,-1
    80006fa8:	00a00a93          	li	s5,10
    80006fac:	05705e63          	blez	s7,80007008 <consoleread+0xb4>
    80006fb0:	09c4a703          	lw	a4,156(s1)
    80006fb4:	0984a783          	lw	a5,152(s1)
    80006fb8:	0007071b          	sext.w	a4,a4
    80006fbc:	08e78463          	beq	a5,a4,80007044 <consoleread+0xf0>
    80006fc0:	07f7f713          	andi	a4,a5,127
    80006fc4:	00e48733          	add	a4,s1,a4
    80006fc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006fcc:	0017869b          	addiw	a3,a5,1
    80006fd0:	08d4ac23          	sw	a3,152(s1)
    80006fd4:	00070c9b          	sext.w	s9,a4
    80006fd8:	0b370663          	beq	a4,s3,80007084 <consoleread+0x130>
    80006fdc:	00100693          	li	a3,1
    80006fe0:	f9f40613          	addi	a2,s0,-97
    80006fe4:	000c0593          	mv	a1,s8
    80006fe8:	00090513          	mv	a0,s2
    80006fec:	f8e40fa3          	sb	a4,-97(s0)
    80006ff0:	00000097          	auipc	ra,0x0
    80006ff4:	8bc080e7          	jalr	-1860(ra) # 800068ac <either_copyout>
    80006ff8:	01450863          	beq	a0,s4,80007008 <consoleread+0xb4>
    80006ffc:	001c0c13          	addi	s8,s8,1
    80007000:	fffb8b9b          	addiw	s7,s7,-1
    80007004:	fb5c94e3          	bne	s9,s5,80006fac <consoleread+0x58>
    80007008:	000b851b          	sext.w	a0,s7
    8000700c:	06813083          	ld	ra,104(sp)
    80007010:	06013403          	ld	s0,96(sp)
    80007014:	05813483          	ld	s1,88(sp)
    80007018:	05013903          	ld	s2,80(sp)
    8000701c:	04813983          	ld	s3,72(sp)
    80007020:	04013a03          	ld	s4,64(sp)
    80007024:	03813a83          	ld	s5,56(sp)
    80007028:	02813b83          	ld	s7,40(sp)
    8000702c:	02013c03          	ld	s8,32(sp)
    80007030:	01813c83          	ld	s9,24(sp)
    80007034:	40ab053b          	subw	a0,s6,a0
    80007038:	03013b03          	ld	s6,48(sp)
    8000703c:	07010113          	addi	sp,sp,112
    80007040:	00008067          	ret
    80007044:	00001097          	auipc	ra,0x1
    80007048:	1d8080e7          	jalr	472(ra) # 8000821c <push_on>
    8000704c:	0984a703          	lw	a4,152(s1)
    80007050:	09c4a783          	lw	a5,156(s1)
    80007054:	0007879b          	sext.w	a5,a5
    80007058:	fef70ce3          	beq	a4,a5,80007050 <consoleread+0xfc>
    8000705c:	00001097          	auipc	ra,0x1
    80007060:	234080e7          	jalr	564(ra) # 80008290 <pop_on>
    80007064:	0984a783          	lw	a5,152(s1)
    80007068:	07f7f713          	andi	a4,a5,127
    8000706c:	00e48733          	add	a4,s1,a4
    80007070:	01874703          	lbu	a4,24(a4)
    80007074:	0017869b          	addiw	a3,a5,1
    80007078:	08d4ac23          	sw	a3,152(s1)
    8000707c:	00070c9b          	sext.w	s9,a4
    80007080:	f5371ee3          	bne	a4,s3,80006fdc <consoleread+0x88>
    80007084:	000b851b          	sext.w	a0,s7
    80007088:	f96bf2e3          	bgeu	s7,s6,8000700c <consoleread+0xb8>
    8000708c:	08f4ac23          	sw	a5,152(s1)
    80007090:	f7dff06f          	j	8000700c <consoleread+0xb8>

0000000080007094 <consputc>:
    80007094:	10000793          	li	a5,256
    80007098:	00f50663          	beq	a0,a5,800070a4 <consputc+0x10>
    8000709c:	00001317          	auipc	t1,0x1
    800070a0:	9f430067          	jr	-1548(t1) # 80007a90 <uartputc_sync>
    800070a4:	ff010113          	addi	sp,sp,-16
    800070a8:	00113423          	sd	ra,8(sp)
    800070ac:	00813023          	sd	s0,0(sp)
    800070b0:	01010413          	addi	s0,sp,16
    800070b4:	00800513          	li	a0,8
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	9d8080e7          	jalr	-1576(ra) # 80007a90 <uartputc_sync>
    800070c0:	02000513          	li	a0,32
    800070c4:	00001097          	auipc	ra,0x1
    800070c8:	9cc080e7          	jalr	-1588(ra) # 80007a90 <uartputc_sync>
    800070cc:	00013403          	ld	s0,0(sp)
    800070d0:	00813083          	ld	ra,8(sp)
    800070d4:	00800513          	li	a0,8
    800070d8:	01010113          	addi	sp,sp,16
    800070dc:	00001317          	auipc	t1,0x1
    800070e0:	9b430067          	jr	-1612(t1) # 80007a90 <uartputc_sync>

00000000800070e4 <consoleintr>:
    800070e4:	fe010113          	addi	sp,sp,-32
    800070e8:	00813823          	sd	s0,16(sp)
    800070ec:	00913423          	sd	s1,8(sp)
    800070f0:	01213023          	sd	s2,0(sp)
    800070f4:	00113c23          	sd	ra,24(sp)
    800070f8:	02010413          	addi	s0,sp,32
    800070fc:	00006917          	auipc	s2,0x6
    80007100:	c6c90913          	addi	s2,s2,-916 # 8000cd68 <cons>
    80007104:	00050493          	mv	s1,a0
    80007108:	00090513          	mv	a0,s2
    8000710c:	00001097          	auipc	ra,0x1
    80007110:	e40080e7          	jalr	-448(ra) # 80007f4c <acquire>
    80007114:	02048c63          	beqz	s1,8000714c <consoleintr+0x68>
    80007118:	0a092783          	lw	a5,160(s2)
    8000711c:	09892703          	lw	a4,152(s2)
    80007120:	07f00693          	li	a3,127
    80007124:	40e7873b          	subw	a4,a5,a4
    80007128:	02e6e263          	bltu	a3,a4,8000714c <consoleintr+0x68>
    8000712c:	00d00713          	li	a4,13
    80007130:	04e48063          	beq	s1,a4,80007170 <consoleintr+0x8c>
    80007134:	07f7f713          	andi	a4,a5,127
    80007138:	00e90733          	add	a4,s2,a4
    8000713c:	0017879b          	addiw	a5,a5,1
    80007140:	0af92023          	sw	a5,160(s2)
    80007144:	00970c23          	sb	s1,24(a4)
    80007148:	08f92e23          	sw	a5,156(s2)
    8000714c:	01013403          	ld	s0,16(sp)
    80007150:	01813083          	ld	ra,24(sp)
    80007154:	00813483          	ld	s1,8(sp)
    80007158:	00013903          	ld	s2,0(sp)
    8000715c:	00006517          	auipc	a0,0x6
    80007160:	c0c50513          	addi	a0,a0,-1012 # 8000cd68 <cons>
    80007164:	02010113          	addi	sp,sp,32
    80007168:	00001317          	auipc	t1,0x1
    8000716c:	eb030067          	jr	-336(t1) # 80008018 <release>
    80007170:	00a00493          	li	s1,10
    80007174:	fc1ff06f          	j	80007134 <consoleintr+0x50>

0000000080007178 <consoleinit>:
    80007178:	fe010113          	addi	sp,sp,-32
    8000717c:	00113c23          	sd	ra,24(sp)
    80007180:	00813823          	sd	s0,16(sp)
    80007184:	00913423          	sd	s1,8(sp)
    80007188:	02010413          	addi	s0,sp,32
    8000718c:	00006497          	auipc	s1,0x6
    80007190:	bdc48493          	addi	s1,s1,-1060 # 8000cd68 <cons>
    80007194:	00048513          	mv	a0,s1
    80007198:	00002597          	auipc	a1,0x2
    8000719c:	55058593          	addi	a1,a1,1360 # 800096e8 <_ZL6digits+0x168>
    800071a0:	00001097          	auipc	ra,0x1
    800071a4:	d88080e7          	jalr	-632(ra) # 80007f28 <initlock>
    800071a8:	00000097          	auipc	ra,0x0
    800071ac:	7ac080e7          	jalr	1964(ra) # 80007954 <uartinit>
    800071b0:	01813083          	ld	ra,24(sp)
    800071b4:	01013403          	ld	s0,16(sp)
    800071b8:	00000797          	auipc	a5,0x0
    800071bc:	d9c78793          	addi	a5,a5,-612 # 80006f54 <consoleread>
    800071c0:	0af4bc23          	sd	a5,184(s1)
    800071c4:	00000797          	auipc	a5,0x0
    800071c8:	cec78793          	addi	a5,a5,-788 # 80006eb0 <consolewrite>
    800071cc:	0cf4b023          	sd	a5,192(s1)
    800071d0:	00813483          	ld	s1,8(sp)
    800071d4:	02010113          	addi	sp,sp,32
    800071d8:	00008067          	ret

00000000800071dc <console_read>:
    800071dc:	ff010113          	addi	sp,sp,-16
    800071e0:	00813423          	sd	s0,8(sp)
    800071e4:	01010413          	addi	s0,sp,16
    800071e8:	00813403          	ld	s0,8(sp)
    800071ec:	00006317          	auipc	t1,0x6
    800071f0:	c3433303          	ld	t1,-972(t1) # 8000ce20 <devsw+0x10>
    800071f4:	01010113          	addi	sp,sp,16
    800071f8:	00030067          	jr	t1

00000000800071fc <console_write>:
    800071fc:	ff010113          	addi	sp,sp,-16
    80007200:	00813423          	sd	s0,8(sp)
    80007204:	01010413          	addi	s0,sp,16
    80007208:	00813403          	ld	s0,8(sp)
    8000720c:	00006317          	auipc	t1,0x6
    80007210:	c1c33303          	ld	t1,-996(t1) # 8000ce28 <devsw+0x18>
    80007214:	01010113          	addi	sp,sp,16
    80007218:	00030067          	jr	t1

000000008000721c <panic>:
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00113c23          	sd	ra,24(sp)
    80007224:	00813823          	sd	s0,16(sp)
    80007228:	00913423          	sd	s1,8(sp)
    8000722c:	02010413          	addi	s0,sp,32
    80007230:	00050493          	mv	s1,a0
    80007234:	00002517          	auipc	a0,0x2
    80007238:	4bc50513          	addi	a0,a0,1212 # 800096f0 <_ZL6digits+0x170>
    8000723c:	00006797          	auipc	a5,0x6
    80007240:	c807a623          	sw	zero,-884(a5) # 8000cec8 <pr+0x18>
    80007244:	00000097          	auipc	ra,0x0
    80007248:	034080e7          	jalr	52(ra) # 80007278 <__printf>
    8000724c:	00048513          	mv	a0,s1
    80007250:	00000097          	auipc	ra,0x0
    80007254:	028080e7          	jalr	40(ra) # 80007278 <__printf>
    80007258:	00002517          	auipc	a0,0x2
    8000725c:	ea850513          	addi	a0,a0,-344 # 80009100 <CONSOLE_STATUS+0xf0>
    80007260:	00000097          	auipc	ra,0x0
    80007264:	018080e7          	jalr	24(ra) # 80007278 <__printf>
    80007268:	00100793          	li	a5,1
    8000726c:	00005717          	auipc	a4,0x5
    80007270:	90f72e23          	sw	a5,-1764(a4) # 8000bb88 <panicked>
    80007274:	0000006f          	j	80007274 <panic+0x58>

0000000080007278 <__printf>:
    80007278:	f3010113          	addi	sp,sp,-208
    8000727c:	08813023          	sd	s0,128(sp)
    80007280:	07313423          	sd	s3,104(sp)
    80007284:	09010413          	addi	s0,sp,144
    80007288:	05813023          	sd	s8,64(sp)
    8000728c:	08113423          	sd	ra,136(sp)
    80007290:	06913c23          	sd	s1,120(sp)
    80007294:	07213823          	sd	s2,112(sp)
    80007298:	07413023          	sd	s4,96(sp)
    8000729c:	05513c23          	sd	s5,88(sp)
    800072a0:	05613823          	sd	s6,80(sp)
    800072a4:	05713423          	sd	s7,72(sp)
    800072a8:	03913c23          	sd	s9,56(sp)
    800072ac:	03a13823          	sd	s10,48(sp)
    800072b0:	03b13423          	sd	s11,40(sp)
    800072b4:	00006317          	auipc	t1,0x6
    800072b8:	bfc30313          	addi	t1,t1,-1028 # 8000ceb0 <pr>
    800072bc:	01832c03          	lw	s8,24(t1)
    800072c0:	00b43423          	sd	a1,8(s0)
    800072c4:	00c43823          	sd	a2,16(s0)
    800072c8:	00d43c23          	sd	a3,24(s0)
    800072cc:	02e43023          	sd	a4,32(s0)
    800072d0:	02f43423          	sd	a5,40(s0)
    800072d4:	03043823          	sd	a6,48(s0)
    800072d8:	03143c23          	sd	a7,56(s0)
    800072dc:	00050993          	mv	s3,a0
    800072e0:	4a0c1663          	bnez	s8,8000778c <__printf+0x514>
    800072e4:	60098c63          	beqz	s3,800078fc <__printf+0x684>
    800072e8:	0009c503          	lbu	a0,0(s3)
    800072ec:	00840793          	addi	a5,s0,8
    800072f0:	f6f43c23          	sd	a5,-136(s0)
    800072f4:	00000493          	li	s1,0
    800072f8:	22050063          	beqz	a0,80007518 <__printf+0x2a0>
    800072fc:	00002a37          	lui	s4,0x2
    80007300:	00018ab7          	lui	s5,0x18
    80007304:	000f4b37          	lui	s6,0xf4
    80007308:	00989bb7          	lui	s7,0x989
    8000730c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007310:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007314:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007318:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000731c:	00148c9b          	addiw	s9,s1,1
    80007320:	02500793          	li	a5,37
    80007324:	01998933          	add	s2,s3,s9
    80007328:	38f51263          	bne	a0,a5,800076ac <__printf+0x434>
    8000732c:	00094783          	lbu	a5,0(s2)
    80007330:	00078c9b          	sext.w	s9,a5
    80007334:	1e078263          	beqz	a5,80007518 <__printf+0x2a0>
    80007338:	0024849b          	addiw	s1,s1,2
    8000733c:	07000713          	li	a4,112
    80007340:	00998933          	add	s2,s3,s1
    80007344:	38e78a63          	beq	a5,a4,800076d8 <__printf+0x460>
    80007348:	20f76863          	bltu	a4,a5,80007558 <__printf+0x2e0>
    8000734c:	42a78863          	beq	a5,a0,8000777c <__printf+0x504>
    80007350:	06400713          	li	a4,100
    80007354:	40e79663          	bne	a5,a4,80007760 <__printf+0x4e8>
    80007358:	f7843783          	ld	a5,-136(s0)
    8000735c:	0007a603          	lw	a2,0(a5)
    80007360:	00878793          	addi	a5,a5,8
    80007364:	f6f43c23          	sd	a5,-136(s0)
    80007368:	42064a63          	bltz	a2,8000779c <__printf+0x524>
    8000736c:	00a00713          	li	a4,10
    80007370:	02e677bb          	remuw	a5,a2,a4
    80007374:	00002d97          	auipc	s11,0x2
    80007378:	3a4d8d93          	addi	s11,s11,932 # 80009718 <digits>
    8000737c:	00900593          	li	a1,9
    80007380:	0006051b          	sext.w	a0,a2
    80007384:	00000c93          	li	s9,0
    80007388:	02079793          	slli	a5,a5,0x20
    8000738c:	0207d793          	srli	a5,a5,0x20
    80007390:	00fd87b3          	add	a5,s11,a5
    80007394:	0007c783          	lbu	a5,0(a5)
    80007398:	02e656bb          	divuw	a3,a2,a4
    8000739c:	f8f40023          	sb	a5,-128(s0)
    800073a0:	14c5d863          	bge	a1,a2,800074f0 <__printf+0x278>
    800073a4:	06300593          	li	a1,99
    800073a8:	00100c93          	li	s9,1
    800073ac:	02e6f7bb          	remuw	a5,a3,a4
    800073b0:	02079793          	slli	a5,a5,0x20
    800073b4:	0207d793          	srli	a5,a5,0x20
    800073b8:	00fd87b3          	add	a5,s11,a5
    800073bc:	0007c783          	lbu	a5,0(a5)
    800073c0:	02e6d73b          	divuw	a4,a3,a4
    800073c4:	f8f400a3          	sb	a5,-127(s0)
    800073c8:	12a5f463          	bgeu	a1,a0,800074f0 <__printf+0x278>
    800073cc:	00a00693          	li	a3,10
    800073d0:	00900593          	li	a1,9
    800073d4:	02d777bb          	remuw	a5,a4,a3
    800073d8:	02079793          	slli	a5,a5,0x20
    800073dc:	0207d793          	srli	a5,a5,0x20
    800073e0:	00fd87b3          	add	a5,s11,a5
    800073e4:	0007c503          	lbu	a0,0(a5)
    800073e8:	02d757bb          	divuw	a5,a4,a3
    800073ec:	f8a40123          	sb	a0,-126(s0)
    800073f0:	48e5f263          	bgeu	a1,a4,80007874 <__printf+0x5fc>
    800073f4:	06300513          	li	a0,99
    800073f8:	02d7f5bb          	remuw	a1,a5,a3
    800073fc:	02059593          	slli	a1,a1,0x20
    80007400:	0205d593          	srli	a1,a1,0x20
    80007404:	00bd85b3          	add	a1,s11,a1
    80007408:	0005c583          	lbu	a1,0(a1)
    8000740c:	02d7d7bb          	divuw	a5,a5,a3
    80007410:	f8b401a3          	sb	a1,-125(s0)
    80007414:	48e57263          	bgeu	a0,a4,80007898 <__printf+0x620>
    80007418:	3e700513          	li	a0,999
    8000741c:	02d7f5bb          	remuw	a1,a5,a3
    80007420:	02059593          	slli	a1,a1,0x20
    80007424:	0205d593          	srli	a1,a1,0x20
    80007428:	00bd85b3          	add	a1,s11,a1
    8000742c:	0005c583          	lbu	a1,0(a1)
    80007430:	02d7d7bb          	divuw	a5,a5,a3
    80007434:	f8b40223          	sb	a1,-124(s0)
    80007438:	46e57663          	bgeu	a0,a4,800078a4 <__printf+0x62c>
    8000743c:	02d7f5bb          	remuw	a1,a5,a3
    80007440:	02059593          	slli	a1,a1,0x20
    80007444:	0205d593          	srli	a1,a1,0x20
    80007448:	00bd85b3          	add	a1,s11,a1
    8000744c:	0005c583          	lbu	a1,0(a1)
    80007450:	02d7d7bb          	divuw	a5,a5,a3
    80007454:	f8b402a3          	sb	a1,-123(s0)
    80007458:	46ea7863          	bgeu	s4,a4,800078c8 <__printf+0x650>
    8000745c:	02d7f5bb          	remuw	a1,a5,a3
    80007460:	02059593          	slli	a1,a1,0x20
    80007464:	0205d593          	srli	a1,a1,0x20
    80007468:	00bd85b3          	add	a1,s11,a1
    8000746c:	0005c583          	lbu	a1,0(a1)
    80007470:	02d7d7bb          	divuw	a5,a5,a3
    80007474:	f8b40323          	sb	a1,-122(s0)
    80007478:	3eeaf863          	bgeu	s5,a4,80007868 <__printf+0x5f0>
    8000747c:	02d7f5bb          	remuw	a1,a5,a3
    80007480:	02059593          	slli	a1,a1,0x20
    80007484:	0205d593          	srli	a1,a1,0x20
    80007488:	00bd85b3          	add	a1,s11,a1
    8000748c:	0005c583          	lbu	a1,0(a1)
    80007490:	02d7d7bb          	divuw	a5,a5,a3
    80007494:	f8b403a3          	sb	a1,-121(s0)
    80007498:	42eb7e63          	bgeu	s6,a4,800078d4 <__printf+0x65c>
    8000749c:	02d7f5bb          	remuw	a1,a5,a3
    800074a0:	02059593          	slli	a1,a1,0x20
    800074a4:	0205d593          	srli	a1,a1,0x20
    800074a8:	00bd85b3          	add	a1,s11,a1
    800074ac:	0005c583          	lbu	a1,0(a1)
    800074b0:	02d7d7bb          	divuw	a5,a5,a3
    800074b4:	f8b40423          	sb	a1,-120(s0)
    800074b8:	42ebfc63          	bgeu	s7,a4,800078f0 <__printf+0x678>
    800074bc:	02079793          	slli	a5,a5,0x20
    800074c0:	0207d793          	srli	a5,a5,0x20
    800074c4:	00fd8db3          	add	s11,s11,a5
    800074c8:	000dc703          	lbu	a4,0(s11)
    800074cc:	00a00793          	li	a5,10
    800074d0:	00900c93          	li	s9,9
    800074d4:	f8e404a3          	sb	a4,-119(s0)
    800074d8:	00065c63          	bgez	a2,800074f0 <__printf+0x278>
    800074dc:	f9040713          	addi	a4,s0,-112
    800074e0:	00f70733          	add	a4,a4,a5
    800074e4:	02d00693          	li	a3,45
    800074e8:	fed70823          	sb	a3,-16(a4)
    800074ec:	00078c93          	mv	s9,a5
    800074f0:	f8040793          	addi	a5,s0,-128
    800074f4:	01978cb3          	add	s9,a5,s9
    800074f8:	f7f40d13          	addi	s10,s0,-129
    800074fc:	000cc503          	lbu	a0,0(s9)
    80007500:	fffc8c93          	addi	s9,s9,-1
    80007504:	00000097          	auipc	ra,0x0
    80007508:	b90080e7          	jalr	-1136(ra) # 80007094 <consputc>
    8000750c:	ffac98e3          	bne	s9,s10,800074fc <__printf+0x284>
    80007510:	00094503          	lbu	a0,0(s2)
    80007514:	e00514e3          	bnez	a0,8000731c <__printf+0xa4>
    80007518:	1a0c1663          	bnez	s8,800076c4 <__printf+0x44c>
    8000751c:	08813083          	ld	ra,136(sp)
    80007520:	08013403          	ld	s0,128(sp)
    80007524:	07813483          	ld	s1,120(sp)
    80007528:	07013903          	ld	s2,112(sp)
    8000752c:	06813983          	ld	s3,104(sp)
    80007530:	06013a03          	ld	s4,96(sp)
    80007534:	05813a83          	ld	s5,88(sp)
    80007538:	05013b03          	ld	s6,80(sp)
    8000753c:	04813b83          	ld	s7,72(sp)
    80007540:	04013c03          	ld	s8,64(sp)
    80007544:	03813c83          	ld	s9,56(sp)
    80007548:	03013d03          	ld	s10,48(sp)
    8000754c:	02813d83          	ld	s11,40(sp)
    80007550:	0d010113          	addi	sp,sp,208
    80007554:	00008067          	ret
    80007558:	07300713          	li	a4,115
    8000755c:	1ce78a63          	beq	a5,a4,80007730 <__printf+0x4b8>
    80007560:	07800713          	li	a4,120
    80007564:	1ee79e63          	bne	a5,a4,80007760 <__printf+0x4e8>
    80007568:	f7843783          	ld	a5,-136(s0)
    8000756c:	0007a703          	lw	a4,0(a5)
    80007570:	00878793          	addi	a5,a5,8
    80007574:	f6f43c23          	sd	a5,-136(s0)
    80007578:	28074263          	bltz	a4,800077fc <__printf+0x584>
    8000757c:	00002d97          	auipc	s11,0x2
    80007580:	19cd8d93          	addi	s11,s11,412 # 80009718 <digits>
    80007584:	00f77793          	andi	a5,a4,15
    80007588:	00fd87b3          	add	a5,s11,a5
    8000758c:	0007c683          	lbu	a3,0(a5)
    80007590:	00f00613          	li	a2,15
    80007594:	0007079b          	sext.w	a5,a4
    80007598:	f8d40023          	sb	a3,-128(s0)
    8000759c:	0047559b          	srliw	a1,a4,0x4
    800075a0:	0047569b          	srliw	a3,a4,0x4
    800075a4:	00000c93          	li	s9,0
    800075a8:	0ee65063          	bge	a2,a4,80007688 <__printf+0x410>
    800075ac:	00f6f693          	andi	a3,a3,15
    800075b0:	00dd86b3          	add	a3,s11,a3
    800075b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800075b8:	0087d79b          	srliw	a5,a5,0x8
    800075bc:	00100c93          	li	s9,1
    800075c0:	f8d400a3          	sb	a3,-127(s0)
    800075c4:	0cb67263          	bgeu	a2,a1,80007688 <__printf+0x410>
    800075c8:	00f7f693          	andi	a3,a5,15
    800075cc:	00dd86b3          	add	a3,s11,a3
    800075d0:	0006c583          	lbu	a1,0(a3)
    800075d4:	00f00613          	li	a2,15
    800075d8:	0047d69b          	srliw	a3,a5,0x4
    800075dc:	f8b40123          	sb	a1,-126(s0)
    800075e0:	0047d593          	srli	a1,a5,0x4
    800075e4:	28f67e63          	bgeu	a2,a5,80007880 <__printf+0x608>
    800075e8:	00f6f693          	andi	a3,a3,15
    800075ec:	00dd86b3          	add	a3,s11,a3
    800075f0:	0006c503          	lbu	a0,0(a3)
    800075f4:	0087d813          	srli	a6,a5,0x8
    800075f8:	0087d69b          	srliw	a3,a5,0x8
    800075fc:	f8a401a3          	sb	a0,-125(s0)
    80007600:	28b67663          	bgeu	a2,a1,8000788c <__printf+0x614>
    80007604:	00f6f693          	andi	a3,a3,15
    80007608:	00dd86b3          	add	a3,s11,a3
    8000760c:	0006c583          	lbu	a1,0(a3)
    80007610:	00c7d513          	srli	a0,a5,0xc
    80007614:	00c7d69b          	srliw	a3,a5,0xc
    80007618:	f8b40223          	sb	a1,-124(s0)
    8000761c:	29067a63          	bgeu	a2,a6,800078b0 <__printf+0x638>
    80007620:	00f6f693          	andi	a3,a3,15
    80007624:	00dd86b3          	add	a3,s11,a3
    80007628:	0006c583          	lbu	a1,0(a3)
    8000762c:	0107d813          	srli	a6,a5,0x10
    80007630:	0107d69b          	srliw	a3,a5,0x10
    80007634:	f8b402a3          	sb	a1,-123(s0)
    80007638:	28a67263          	bgeu	a2,a0,800078bc <__printf+0x644>
    8000763c:	00f6f693          	andi	a3,a3,15
    80007640:	00dd86b3          	add	a3,s11,a3
    80007644:	0006c683          	lbu	a3,0(a3)
    80007648:	0147d79b          	srliw	a5,a5,0x14
    8000764c:	f8d40323          	sb	a3,-122(s0)
    80007650:	21067663          	bgeu	a2,a6,8000785c <__printf+0x5e4>
    80007654:	02079793          	slli	a5,a5,0x20
    80007658:	0207d793          	srli	a5,a5,0x20
    8000765c:	00fd8db3          	add	s11,s11,a5
    80007660:	000dc683          	lbu	a3,0(s11)
    80007664:	00800793          	li	a5,8
    80007668:	00700c93          	li	s9,7
    8000766c:	f8d403a3          	sb	a3,-121(s0)
    80007670:	00075c63          	bgez	a4,80007688 <__printf+0x410>
    80007674:	f9040713          	addi	a4,s0,-112
    80007678:	00f70733          	add	a4,a4,a5
    8000767c:	02d00693          	li	a3,45
    80007680:	fed70823          	sb	a3,-16(a4)
    80007684:	00078c93          	mv	s9,a5
    80007688:	f8040793          	addi	a5,s0,-128
    8000768c:	01978cb3          	add	s9,a5,s9
    80007690:	f7f40d13          	addi	s10,s0,-129
    80007694:	000cc503          	lbu	a0,0(s9)
    80007698:	fffc8c93          	addi	s9,s9,-1
    8000769c:	00000097          	auipc	ra,0x0
    800076a0:	9f8080e7          	jalr	-1544(ra) # 80007094 <consputc>
    800076a4:	ff9d18e3          	bne	s10,s9,80007694 <__printf+0x41c>
    800076a8:	0100006f          	j	800076b8 <__printf+0x440>
    800076ac:	00000097          	auipc	ra,0x0
    800076b0:	9e8080e7          	jalr	-1560(ra) # 80007094 <consputc>
    800076b4:	000c8493          	mv	s1,s9
    800076b8:	00094503          	lbu	a0,0(s2)
    800076bc:	c60510e3          	bnez	a0,8000731c <__printf+0xa4>
    800076c0:	e40c0ee3          	beqz	s8,8000751c <__printf+0x2a4>
    800076c4:	00005517          	auipc	a0,0x5
    800076c8:	7ec50513          	addi	a0,a0,2028 # 8000ceb0 <pr>
    800076cc:	00001097          	auipc	ra,0x1
    800076d0:	94c080e7          	jalr	-1716(ra) # 80008018 <release>
    800076d4:	e49ff06f          	j	8000751c <__printf+0x2a4>
    800076d8:	f7843783          	ld	a5,-136(s0)
    800076dc:	03000513          	li	a0,48
    800076e0:	01000d13          	li	s10,16
    800076e4:	00878713          	addi	a4,a5,8
    800076e8:	0007bc83          	ld	s9,0(a5)
    800076ec:	f6e43c23          	sd	a4,-136(s0)
    800076f0:	00000097          	auipc	ra,0x0
    800076f4:	9a4080e7          	jalr	-1628(ra) # 80007094 <consputc>
    800076f8:	07800513          	li	a0,120
    800076fc:	00000097          	auipc	ra,0x0
    80007700:	998080e7          	jalr	-1640(ra) # 80007094 <consputc>
    80007704:	00002d97          	auipc	s11,0x2
    80007708:	014d8d93          	addi	s11,s11,20 # 80009718 <digits>
    8000770c:	03ccd793          	srli	a5,s9,0x3c
    80007710:	00fd87b3          	add	a5,s11,a5
    80007714:	0007c503          	lbu	a0,0(a5)
    80007718:	fffd0d1b          	addiw	s10,s10,-1
    8000771c:	004c9c93          	slli	s9,s9,0x4
    80007720:	00000097          	auipc	ra,0x0
    80007724:	974080e7          	jalr	-1676(ra) # 80007094 <consputc>
    80007728:	fe0d12e3          	bnez	s10,8000770c <__printf+0x494>
    8000772c:	f8dff06f          	j	800076b8 <__printf+0x440>
    80007730:	f7843783          	ld	a5,-136(s0)
    80007734:	0007bc83          	ld	s9,0(a5)
    80007738:	00878793          	addi	a5,a5,8
    8000773c:	f6f43c23          	sd	a5,-136(s0)
    80007740:	000c9a63          	bnez	s9,80007754 <__printf+0x4dc>
    80007744:	1080006f          	j	8000784c <__printf+0x5d4>
    80007748:	001c8c93          	addi	s9,s9,1
    8000774c:	00000097          	auipc	ra,0x0
    80007750:	948080e7          	jalr	-1720(ra) # 80007094 <consputc>
    80007754:	000cc503          	lbu	a0,0(s9)
    80007758:	fe0518e3          	bnez	a0,80007748 <__printf+0x4d0>
    8000775c:	f5dff06f          	j	800076b8 <__printf+0x440>
    80007760:	02500513          	li	a0,37
    80007764:	00000097          	auipc	ra,0x0
    80007768:	930080e7          	jalr	-1744(ra) # 80007094 <consputc>
    8000776c:	000c8513          	mv	a0,s9
    80007770:	00000097          	auipc	ra,0x0
    80007774:	924080e7          	jalr	-1756(ra) # 80007094 <consputc>
    80007778:	f41ff06f          	j	800076b8 <__printf+0x440>
    8000777c:	02500513          	li	a0,37
    80007780:	00000097          	auipc	ra,0x0
    80007784:	914080e7          	jalr	-1772(ra) # 80007094 <consputc>
    80007788:	f31ff06f          	j	800076b8 <__printf+0x440>
    8000778c:	00030513          	mv	a0,t1
    80007790:	00000097          	auipc	ra,0x0
    80007794:	7bc080e7          	jalr	1980(ra) # 80007f4c <acquire>
    80007798:	b4dff06f          	j	800072e4 <__printf+0x6c>
    8000779c:	40c0053b          	negw	a0,a2
    800077a0:	00a00713          	li	a4,10
    800077a4:	02e576bb          	remuw	a3,a0,a4
    800077a8:	00002d97          	auipc	s11,0x2
    800077ac:	f70d8d93          	addi	s11,s11,-144 # 80009718 <digits>
    800077b0:	ff700593          	li	a1,-9
    800077b4:	02069693          	slli	a3,a3,0x20
    800077b8:	0206d693          	srli	a3,a3,0x20
    800077bc:	00dd86b3          	add	a3,s11,a3
    800077c0:	0006c683          	lbu	a3,0(a3)
    800077c4:	02e557bb          	divuw	a5,a0,a4
    800077c8:	f8d40023          	sb	a3,-128(s0)
    800077cc:	10b65e63          	bge	a2,a1,800078e8 <__printf+0x670>
    800077d0:	06300593          	li	a1,99
    800077d4:	02e7f6bb          	remuw	a3,a5,a4
    800077d8:	02069693          	slli	a3,a3,0x20
    800077dc:	0206d693          	srli	a3,a3,0x20
    800077e0:	00dd86b3          	add	a3,s11,a3
    800077e4:	0006c683          	lbu	a3,0(a3)
    800077e8:	02e7d73b          	divuw	a4,a5,a4
    800077ec:	00200793          	li	a5,2
    800077f0:	f8d400a3          	sb	a3,-127(s0)
    800077f4:	bca5ece3          	bltu	a1,a0,800073cc <__printf+0x154>
    800077f8:	ce5ff06f          	j	800074dc <__printf+0x264>
    800077fc:	40e007bb          	negw	a5,a4
    80007800:	00002d97          	auipc	s11,0x2
    80007804:	f18d8d93          	addi	s11,s11,-232 # 80009718 <digits>
    80007808:	00f7f693          	andi	a3,a5,15
    8000780c:	00dd86b3          	add	a3,s11,a3
    80007810:	0006c583          	lbu	a1,0(a3)
    80007814:	ff100613          	li	a2,-15
    80007818:	0047d69b          	srliw	a3,a5,0x4
    8000781c:	f8b40023          	sb	a1,-128(s0)
    80007820:	0047d59b          	srliw	a1,a5,0x4
    80007824:	0ac75e63          	bge	a4,a2,800078e0 <__printf+0x668>
    80007828:	00f6f693          	andi	a3,a3,15
    8000782c:	00dd86b3          	add	a3,s11,a3
    80007830:	0006c603          	lbu	a2,0(a3)
    80007834:	00f00693          	li	a3,15
    80007838:	0087d79b          	srliw	a5,a5,0x8
    8000783c:	f8c400a3          	sb	a2,-127(s0)
    80007840:	d8b6e4e3          	bltu	a3,a1,800075c8 <__printf+0x350>
    80007844:	00200793          	li	a5,2
    80007848:	e2dff06f          	j	80007674 <__printf+0x3fc>
    8000784c:	00002c97          	auipc	s9,0x2
    80007850:	eacc8c93          	addi	s9,s9,-340 # 800096f8 <_ZL6digits+0x178>
    80007854:	02800513          	li	a0,40
    80007858:	ef1ff06f          	j	80007748 <__printf+0x4d0>
    8000785c:	00700793          	li	a5,7
    80007860:	00600c93          	li	s9,6
    80007864:	e0dff06f          	j	80007670 <__printf+0x3f8>
    80007868:	00700793          	li	a5,7
    8000786c:	00600c93          	li	s9,6
    80007870:	c69ff06f          	j	800074d8 <__printf+0x260>
    80007874:	00300793          	li	a5,3
    80007878:	00200c93          	li	s9,2
    8000787c:	c5dff06f          	j	800074d8 <__printf+0x260>
    80007880:	00300793          	li	a5,3
    80007884:	00200c93          	li	s9,2
    80007888:	de9ff06f          	j	80007670 <__printf+0x3f8>
    8000788c:	00400793          	li	a5,4
    80007890:	00300c93          	li	s9,3
    80007894:	dddff06f          	j	80007670 <__printf+0x3f8>
    80007898:	00400793          	li	a5,4
    8000789c:	00300c93          	li	s9,3
    800078a0:	c39ff06f          	j	800074d8 <__printf+0x260>
    800078a4:	00500793          	li	a5,5
    800078a8:	00400c93          	li	s9,4
    800078ac:	c2dff06f          	j	800074d8 <__printf+0x260>
    800078b0:	00500793          	li	a5,5
    800078b4:	00400c93          	li	s9,4
    800078b8:	db9ff06f          	j	80007670 <__printf+0x3f8>
    800078bc:	00600793          	li	a5,6
    800078c0:	00500c93          	li	s9,5
    800078c4:	dadff06f          	j	80007670 <__printf+0x3f8>
    800078c8:	00600793          	li	a5,6
    800078cc:	00500c93          	li	s9,5
    800078d0:	c09ff06f          	j	800074d8 <__printf+0x260>
    800078d4:	00800793          	li	a5,8
    800078d8:	00700c93          	li	s9,7
    800078dc:	bfdff06f          	j	800074d8 <__printf+0x260>
    800078e0:	00100793          	li	a5,1
    800078e4:	d91ff06f          	j	80007674 <__printf+0x3fc>
    800078e8:	00100793          	li	a5,1
    800078ec:	bf1ff06f          	j	800074dc <__printf+0x264>
    800078f0:	00900793          	li	a5,9
    800078f4:	00800c93          	li	s9,8
    800078f8:	be1ff06f          	j	800074d8 <__printf+0x260>
    800078fc:	00002517          	auipc	a0,0x2
    80007900:	e0450513          	addi	a0,a0,-508 # 80009700 <_ZL6digits+0x180>
    80007904:	00000097          	auipc	ra,0x0
    80007908:	918080e7          	jalr	-1768(ra) # 8000721c <panic>

000000008000790c <printfinit>:
    8000790c:	fe010113          	addi	sp,sp,-32
    80007910:	00813823          	sd	s0,16(sp)
    80007914:	00913423          	sd	s1,8(sp)
    80007918:	00113c23          	sd	ra,24(sp)
    8000791c:	02010413          	addi	s0,sp,32
    80007920:	00005497          	auipc	s1,0x5
    80007924:	59048493          	addi	s1,s1,1424 # 8000ceb0 <pr>
    80007928:	00048513          	mv	a0,s1
    8000792c:	00002597          	auipc	a1,0x2
    80007930:	de458593          	addi	a1,a1,-540 # 80009710 <_ZL6digits+0x190>
    80007934:	00000097          	auipc	ra,0x0
    80007938:	5f4080e7          	jalr	1524(ra) # 80007f28 <initlock>
    8000793c:	01813083          	ld	ra,24(sp)
    80007940:	01013403          	ld	s0,16(sp)
    80007944:	0004ac23          	sw	zero,24(s1)
    80007948:	00813483          	ld	s1,8(sp)
    8000794c:	02010113          	addi	sp,sp,32
    80007950:	00008067          	ret

0000000080007954 <uartinit>:
    80007954:	ff010113          	addi	sp,sp,-16
    80007958:	00813423          	sd	s0,8(sp)
    8000795c:	01010413          	addi	s0,sp,16
    80007960:	100007b7          	lui	a5,0x10000
    80007964:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007968:	f8000713          	li	a4,-128
    8000796c:	00e781a3          	sb	a4,3(a5)
    80007970:	00300713          	li	a4,3
    80007974:	00e78023          	sb	a4,0(a5)
    80007978:	000780a3          	sb	zero,1(a5)
    8000797c:	00e781a3          	sb	a4,3(a5)
    80007980:	00700693          	li	a3,7
    80007984:	00d78123          	sb	a3,2(a5)
    80007988:	00e780a3          	sb	a4,1(a5)
    8000798c:	00813403          	ld	s0,8(sp)
    80007990:	01010113          	addi	sp,sp,16
    80007994:	00008067          	ret

0000000080007998 <uartputc>:
    80007998:	00004797          	auipc	a5,0x4
    8000799c:	1f07a783          	lw	a5,496(a5) # 8000bb88 <panicked>
    800079a0:	00078463          	beqz	a5,800079a8 <uartputc+0x10>
    800079a4:	0000006f          	j	800079a4 <uartputc+0xc>
    800079a8:	fd010113          	addi	sp,sp,-48
    800079ac:	02813023          	sd	s0,32(sp)
    800079b0:	00913c23          	sd	s1,24(sp)
    800079b4:	01213823          	sd	s2,16(sp)
    800079b8:	01313423          	sd	s3,8(sp)
    800079bc:	02113423          	sd	ra,40(sp)
    800079c0:	03010413          	addi	s0,sp,48
    800079c4:	00004917          	auipc	s2,0x4
    800079c8:	1cc90913          	addi	s2,s2,460 # 8000bb90 <uart_tx_r>
    800079cc:	00093783          	ld	a5,0(s2)
    800079d0:	00004497          	auipc	s1,0x4
    800079d4:	1c848493          	addi	s1,s1,456 # 8000bb98 <uart_tx_w>
    800079d8:	0004b703          	ld	a4,0(s1)
    800079dc:	02078693          	addi	a3,a5,32
    800079e0:	00050993          	mv	s3,a0
    800079e4:	02e69c63          	bne	a3,a4,80007a1c <uartputc+0x84>
    800079e8:	00001097          	auipc	ra,0x1
    800079ec:	834080e7          	jalr	-1996(ra) # 8000821c <push_on>
    800079f0:	00093783          	ld	a5,0(s2)
    800079f4:	0004b703          	ld	a4,0(s1)
    800079f8:	02078793          	addi	a5,a5,32
    800079fc:	00e79463          	bne	a5,a4,80007a04 <uartputc+0x6c>
    80007a00:	0000006f          	j	80007a00 <uartputc+0x68>
    80007a04:	00001097          	auipc	ra,0x1
    80007a08:	88c080e7          	jalr	-1908(ra) # 80008290 <pop_on>
    80007a0c:	00093783          	ld	a5,0(s2)
    80007a10:	0004b703          	ld	a4,0(s1)
    80007a14:	02078693          	addi	a3,a5,32
    80007a18:	fce688e3          	beq	a3,a4,800079e8 <uartputc+0x50>
    80007a1c:	01f77693          	andi	a3,a4,31
    80007a20:	00005597          	auipc	a1,0x5
    80007a24:	4b058593          	addi	a1,a1,1200 # 8000ced0 <uart_tx_buf>
    80007a28:	00d586b3          	add	a3,a1,a3
    80007a2c:	00170713          	addi	a4,a4,1
    80007a30:	01368023          	sb	s3,0(a3)
    80007a34:	00e4b023          	sd	a4,0(s1)
    80007a38:	10000637          	lui	a2,0x10000
    80007a3c:	02f71063          	bne	a4,a5,80007a5c <uartputc+0xc4>
    80007a40:	0340006f          	j	80007a74 <uartputc+0xdc>
    80007a44:	00074703          	lbu	a4,0(a4)
    80007a48:	00f93023          	sd	a5,0(s2)
    80007a4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007a50:	00093783          	ld	a5,0(s2)
    80007a54:	0004b703          	ld	a4,0(s1)
    80007a58:	00f70e63          	beq	a4,a5,80007a74 <uartputc+0xdc>
    80007a5c:	00564683          	lbu	a3,5(a2)
    80007a60:	01f7f713          	andi	a4,a5,31
    80007a64:	00e58733          	add	a4,a1,a4
    80007a68:	0206f693          	andi	a3,a3,32
    80007a6c:	00178793          	addi	a5,a5,1
    80007a70:	fc069ae3          	bnez	a3,80007a44 <uartputc+0xac>
    80007a74:	02813083          	ld	ra,40(sp)
    80007a78:	02013403          	ld	s0,32(sp)
    80007a7c:	01813483          	ld	s1,24(sp)
    80007a80:	01013903          	ld	s2,16(sp)
    80007a84:	00813983          	ld	s3,8(sp)
    80007a88:	03010113          	addi	sp,sp,48
    80007a8c:	00008067          	ret

0000000080007a90 <uartputc_sync>:
    80007a90:	ff010113          	addi	sp,sp,-16
    80007a94:	00813423          	sd	s0,8(sp)
    80007a98:	01010413          	addi	s0,sp,16
    80007a9c:	00004717          	auipc	a4,0x4
    80007aa0:	0ec72703          	lw	a4,236(a4) # 8000bb88 <panicked>
    80007aa4:	02071663          	bnez	a4,80007ad0 <uartputc_sync+0x40>
    80007aa8:	00050793          	mv	a5,a0
    80007aac:	100006b7          	lui	a3,0x10000
    80007ab0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ab4:	02077713          	andi	a4,a4,32
    80007ab8:	fe070ce3          	beqz	a4,80007ab0 <uartputc_sync+0x20>
    80007abc:	0ff7f793          	andi	a5,a5,255
    80007ac0:	00f68023          	sb	a5,0(a3)
    80007ac4:	00813403          	ld	s0,8(sp)
    80007ac8:	01010113          	addi	sp,sp,16
    80007acc:	00008067          	ret
    80007ad0:	0000006f          	j	80007ad0 <uartputc_sync+0x40>

0000000080007ad4 <uartstart>:
    80007ad4:	ff010113          	addi	sp,sp,-16
    80007ad8:	00813423          	sd	s0,8(sp)
    80007adc:	01010413          	addi	s0,sp,16
    80007ae0:	00004617          	auipc	a2,0x4
    80007ae4:	0b060613          	addi	a2,a2,176 # 8000bb90 <uart_tx_r>
    80007ae8:	00004517          	auipc	a0,0x4
    80007aec:	0b050513          	addi	a0,a0,176 # 8000bb98 <uart_tx_w>
    80007af0:	00063783          	ld	a5,0(a2)
    80007af4:	00053703          	ld	a4,0(a0)
    80007af8:	04f70263          	beq	a4,a5,80007b3c <uartstart+0x68>
    80007afc:	100005b7          	lui	a1,0x10000
    80007b00:	00005817          	auipc	a6,0x5
    80007b04:	3d080813          	addi	a6,a6,976 # 8000ced0 <uart_tx_buf>
    80007b08:	01c0006f          	j	80007b24 <uartstart+0x50>
    80007b0c:	0006c703          	lbu	a4,0(a3)
    80007b10:	00f63023          	sd	a5,0(a2)
    80007b14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b18:	00063783          	ld	a5,0(a2)
    80007b1c:	00053703          	ld	a4,0(a0)
    80007b20:	00f70e63          	beq	a4,a5,80007b3c <uartstart+0x68>
    80007b24:	01f7f713          	andi	a4,a5,31
    80007b28:	00e806b3          	add	a3,a6,a4
    80007b2c:	0055c703          	lbu	a4,5(a1)
    80007b30:	00178793          	addi	a5,a5,1
    80007b34:	02077713          	andi	a4,a4,32
    80007b38:	fc071ae3          	bnez	a4,80007b0c <uartstart+0x38>
    80007b3c:	00813403          	ld	s0,8(sp)
    80007b40:	01010113          	addi	sp,sp,16
    80007b44:	00008067          	ret

0000000080007b48 <uartgetc>:
    80007b48:	ff010113          	addi	sp,sp,-16
    80007b4c:	00813423          	sd	s0,8(sp)
    80007b50:	01010413          	addi	s0,sp,16
    80007b54:	10000737          	lui	a4,0x10000
    80007b58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007b5c:	0017f793          	andi	a5,a5,1
    80007b60:	00078c63          	beqz	a5,80007b78 <uartgetc+0x30>
    80007b64:	00074503          	lbu	a0,0(a4)
    80007b68:	0ff57513          	andi	a0,a0,255
    80007b6c:	00813403          	ld	s0,8(sp)
    80007b70:	01010113          	addi	sp,sp,16
    80007b74:	00008067          	ret
    80007b78:	fff00513          	li	a0,-1
    80007b7c:	ff1ff06f          	j	80007b6c <uartgetc+0x24>

0000000080007b80 <uartintr>:
    80007b80:	100007b7          	lui	a5,0x10000
    80007b84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007b88:	0017f793          	andi	a5,a5,1
    80007b8c:	0a078463          	beqz	a5,80007c34 <uartintr+0xb4>
    80007b90:	fe010113          	addi	sp,sp,-32
    80007b94:	00813823          	sd	s0,16(sp)
    80007b98:	00913423          	sd	s1,8(sp)
    80007b9c:	00113c23          	sd	ra,24(sp)
    80007ba0:	02010413          	addi	s0,sp,32
    80007ba4:	100004b7          	lui	s1,0x10000
    80007ba8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007bac:	0ff57513          	andi	a0,a0,255
    80007bb0:	fffff097          	auipc	ra,0xfffff
    80007bb4:	534080e7          	jalr	1332(ra) # 800070e4 <consoleintr>
    80007bb8:	0054c783          	lbu	a5,5(s1)
    80007bbc:	0017f793          	andi	a5,a5,1
    80007bc0:	fe0794e3          	bnez	a5,80007ba8 <uartintr+0x28>
    80007bc4:	00004617          	auipc	a2,0x4
    80007bc8:	fcc60613          	addi	a2,a2,-52 # 8000bb90 <uart_tx_r>
    80007bcc:	00004517          	auipc	a0,0x4
    80007bd0:	fcc50513          	addi	a0,a0,-52 # 8000bb98 <uart_tx_w>
    80007bd4:	00063783          	ld	a5,0(a2)
    80007bd8:	00053703          	ld	a4,0(a0)
    80007bdc:	04f70263          	beq	a4,a5,80007c20 <uartintr+0xa0>
    80007be0:	100005b7          	lui	a1,0x10000
    80007be4:	00005817          	auipc	a6,0x5
    80007be8:	2ec80813          	addi	a6,a6,748 # 8000ced0 <uart_tx_buf>
    80007bec:	01c0006f          	j	80007c08 <uartintr+0x88>
    80007bf0:	0006c703          	lbu	a4,0(a3)
    80007bf4:	00f63023          	sd	a5,0(a2)
    80007bf8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bfc:	00063783          	ld	a5,0(a2)
    80007c00:	00053703          	ld	a4,0(a0)
    80007c04:	00f70e63          	beq	a4,a5,80007c20 <uartintr+0xa0>
    80007c08:	01f7f713          	andi	a4,a5,31
    80007c0c:	00e806b3          	add	a3,a6,a4
    80007c10:	0055c703          	lbu	a4,5(a1)
    80007c14:	00178793          	addi	a5,a5,1
    80007c18:	02077713          	andi	a4,a4,32
    80007c1c:	fc071ae3          	bnez	a4,80007bf0 <uartintr+0x70>
    80007c20:	01813083          	ld	ra,24(sp)
    80007c24:	01013403          	ld	s0,16(sp)
    80007c28:	00813483          	ld	s1,8(sp)
    80007c2c:	02010113          	addi	sp,sp,32
    80007c30:	00008067          	ret
    80007c34:	00004617          	auipc	a2,0x4
    80007c38:	f5c60613          	addi	a2,a2,-164 # 8000bb90 <uart_tx_r>
    80007c3c:	00004517          	auipc	a0,0x4
    80007c40:	f5c50513          	addi	a0,a0,-164 # 8000bb98 <uart_tx_w>
    80007c44:	00063783          	ld	a5,0(a2)
    80007c48:	00053703          	ld	a4,0(a0)
    80007c4c:	04f70263          	beq	a4,a5,80007c90 <uartintr+0x110>
    80007c50:	100005b7          	lui	a1,0x10000
    80007c54:	00005817          	auipc	a6,0x5
    80007c58:	27c80813          	addi	a6,a6,636 # 8000ced0 <uart_tx_buf>
    80007c5c:	01c0006f          	j	80007c78 <uartintr+0xf8>
    80007c60:	0006c703          	lbu	a4,0(a3)
    80007c64:	00f63023          	sd	a5,0(a2)
    80007c68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c6c:	00063783          	ld	a5,0(a2)
    80007c70:	00053703          	ld	a4,0(a0)
    80007c74:	02f70063          	beq	a4,a5,80007c94 <uartintr+0x114>
    80007c78:	01f7f713          	andi	a4,a5,31
    80007c7c:	00e806b3          	add	a3,a6,a4
    80007c80:	0055c703          	lbu	a4,5(a1)
    80007c84:	00178793          	addi	a5,a5,1
    80007c88:	02077713          	andi	a4,a4,32
    80007c8c:	fc071ae3          	bnez	a4,80007c60 <uartintr+0xe0>
    80007c90:	00008067          	ret
    80007c94:	00008067          	ret

0000000080007c98 <kinit>:
    80007c98:	fc010113          	addi	sp,sp,-64
    80007c9c:	02913423          	sd	s1,40(sp)
    80007ca0:	fffff7b7          	lui	a5,0xfffff
    80007ca4:	00006497          	auipc	s1,0x6
    80007ca8:	24b48493          	addi	s1,s1,587 # 8000deef <end+0xfff>
    80007cac:	02813823          	sd	s0,48(sp)
    80007cb0:	01313c23          	sd	s3,24(sp)
    80007cb4:	00f4f4b3          	and	s1,s1,a5
    80007cb8:	02113c23          	sd	ra,56(sp)
    80007cbc:	03213023          	sd	s2,32(sp)
    80007cc0:	01413823          	sd	s4,16(sp)
    80007cc4:	01513423          	sd	s5,8(sp)
    80007cc8:	04010413          	addi	s0,sp,64
    80007ccc:	000017b7          	lui	a5,0x1
    80007cd0:	01100993          	li	s3,17
    80007cd4:	00f487b3          	add	a5,s1,a5
    80007cd8:	01b99993          	slli	s3,s3,0x1b
    80007cdc:	06f9e063          	bltu	s3,a5,80007d3c <kinit+0xa4>
    80007ce0:	00005a97          	auipc	s5,0x5
    80007ce4:	210a8a93          	addi	s5,s5,528 # 8000cef0 <end>
    80007ce8:	0754ec63          	bltu	s1,s5,80007d60 <kinit+0xc8>
    80007cec:	0734fa63          	bgeu	s1,s3,80007d60 <kinit+0xc8>
    80007cf0:	00088a37          	lui	s4,0x88
    80007cf4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007cf8:	00004917          	auipc	s2,0x4
    80007cfc:	ea890913          	addi	s2,s2,-344 # 8000bba0 <kmem>
    80007d00:	00ca1a13          	slli	s4,s4,0xc
    80007d04:	0140006f          	j	80007d18 <kinit+0x80>
    80007d08:	000017b7          	lui	a5,0x1
    80007d0c:	00f484b3          	add	s1,s1,a5
    80007d10:	0554e863          	bltu	s1,s5,80007d60 <kinit+0xc8>
    80007d14:	0534f663          	bgeu	s1,s3,80007d60 <kinit+0xc8>
    80007d18:	00001637          	lui	a2,0x1
    80007d1c:	00100593          	li	a1,1
    80007d20:	00048513          	mv	a0,s1
    80007d24:	00000097          	auipc	ra,0x0
    80007d28:	5e4080e7          	jalr	1508(ra) # 80008308 <__memset>
    80007d2c:	00093783          	ld	a5,0(s2)
    80007d30:	00f4b023          	sd	a5,0(s1)
    80007d34:	00993023          	sd	s1,0(s2)
    80007d38:	fd4498e3          	bne	s1,s4,80007d08 <kinit+0x70>
    80007d3c:	03813083          	ld	ra,56(sp)
    80007d40:	03013403          	ld	s0,48(sp)
    80007d44:	02813483          	ld	s1,40(sp)
    80007d48:	02013903          	ld	s2,32(sp)
    80007d4c:	01813983          	ld	s3,24(sp)
    80007d50:	01013a03          	ld	s4,16(sp)
    80007d54:	00813a83          	ld	s5,8(sp)
    80007d58:	04010113          	addi	sp,sp,64
    80007d5c:	00008067          	ret
    80007d60:	00002517          	auipc	a0,0x2
    80007d64:	9d050513          	addi	a0,a0,-1584 # 80009730 <digits+0x18>
    80007d68:	fffff097          	auipc	ra,0xfffff
    80007d6c:	4b4080e7          	jalr	1204(ra) # 8000721c <panic>

0000000080007d70 <freerange>:
    80007d70:	fc010113          	addi	sp,sp,-64
    80007d74:	000017b7          	lui	a5,0x1
    80007d78:	02913423          	sd	s1,40(sp)
    80007d7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007d80:	009504b3          	add	s1,a0,s1
    80007d84:	fffff537          	lui	a0,0xfffff
    80007d88:	02813823          	sd	s0,48(sp)
    80007d8c:	02113c23          	sd	ra,56(sp)
    80007d90:	03213023          	sd	s2,32(sp)
    80007d94:	01313c23          	sd	s3,24(sp)
    80007d98:	01413823          	sd	s4,16(sp)
    80007d9c:	01513423          	sd	s5,8(sp)
    80007da0:	01613023          	sd	s6,0(sp)
    80007da4:	04010413          	addi	s0,sp,64
    80007da8:	00a4f4b3          	and	s1,s1,a0
    80007dac:	00f487b3          	add	a5,s1,a5
    80007db0:	06f5e463          	bltu	a1,a5,80007e18 <freerange+0xa8>
    80007db4:	00005a97          	auipc	s5,0x5
    80007db8:	13ca8a93          	addi	s5,s5,316 # 8000cef0 <end>
    80007dbc:	0954e263          	bltu	s1,s5,80007e40 <freerange+0xd0>
    80007dc0:	01100993          	li	s3,17
    80007dc4:	01b99993          	slli	s3,s3,0x1b
    80007dc8:	0734fc63          	bgeu	s1,s3,80007e40 <freerange+0xd0>
    80007dcc:	00058a13          	mv	s4,a1
    80007dd0:	00004917          	auipc	s2,0x4
    80007dd4:	dd090913          	addi	s2,s2,-560 # 8000bba0 <kmem>
    80007dd8:	00002b37          	lui	s6,0x2
    80007ddc:	0140006f          	j	80007df0 <freerange+0x80>
    80007de0:	000017b7          	lui	a5,0x1
    80007de4:	00f484b3          	add	s1,s1,a5
    80007de8:	0554ec63          	bltu	s1,s5,80007e40 <freerange+0xd0>
    80007dec:	0534fa63          	bgeu	s1,s3,80007e40 <freerange+0xd0>
    80007df0:	00001637          	lui	a2,0x1
    80007df4:	00100593          	li	a1,1
    80007df8:	00048513          	mv	a0,s1
    80007dfc:	00000097          	auipc	ra,0x0
    80007e00:	50c080e7          	jalr	1292(ra) # 80008308 <__memset>
    80007e04:	00093703          	ld	a4,0(s2)
    80007e08:	016487b3          	add	a5,s1,s6
    80007e0c:	00e4b023          	sd	a4,0(s1)
    80007e10:	00993023          	sd	s1,0(s2)
    80007e14:	fcfa76e3          	bgeu	s4,a5,80007de0 <freerange+0x70>
    80007e18:	03813083          	ld	ra,56(sp)
    80007e1c:	03013403          	ld	s0,48(sp)
    80007e20:	02813483          	ld	s1,40(sp)
    80007e24:	02013903          	ld	s2,32(sp)
    80007e28:	01813983          	ld	s3,24(sp)
    80007e2c:	01013a03          	ld	s4,16(sp)
    80007e30:	00813a83          	ld	s5,8(sp)
    80007e34:	00013b03          	ld	s6,0(sp)
    80007e38:	04010113          	addi	sp,sp,64
    80007e3c:	00008067          	ret
    80007e40:	00002517          	auipc	a0,0x2
    80007e44:	8f050513          	addi	a0,a0,-1808 # 80009730 <digits+0x18>
    80007e48:	fffff097          	auipc	ra,0xfffff
    80007e4c:	3d4080e7          	jalr	980(ra) # 8000721c <panic>

0000000080007e50 <kfree>:
    80007e50:	fe010113          	addi	sp,sp,-32
    80007e54:	00813823          	sd	s0,16(sp)
    80007e58:	00113c23          	sd	ra,24(sp)
    80007e5c:	00913423          	sd	s1,8(sp)
    80007e60:	02010413          	addi	s0,sp,32
    80007e64:	03451793          	slli	a5,a0,0x34
    80007e68:	04079c63          	bnez	a5,80007ec0 <kfree+0x70>
    80007e6c:	00005797          	auipc	a5,0x5
    80007e70:	08478793          	addi	a5,a5,132 # 8000cef0 <end>
    80007e74:	00050493          	mv	s1,a0
    80007e78:	04f56463          	bltu	a0,a5,80007ec0 <kfree+0x70>
    80007e7c:	01100793          	li	a5,17
    80007e80:	01b79793          	slli	a5,a5,0x1b
    80007e84:	02f57e63          	bgeu	a0,a5,80007ec0 <kfree+0x70>
    80007e88:	00001637          	lui	a2,0x1
    80007e8c:	00100593          	li	a1,1
    80007e90:	00000097          	auipc	ra,0x0
    80007e94:	478080e7          	jalr	1144(ra) # 80008308 <__memset>
    80007e98:	00004797          	auipc	a5,0x4
    80007e9c:	d0878793          	addi	a5,a5,-760 # 8000bba0 <kmem>
    80007ea0:	0007b703          	ld	a4,0(a5)
    80007ea4:	01813083          	ld	ra,24(sp)
    80007ea8:	01013403          	ld	s0,16(sp)
    80007eac:	00e4b023          	sd	a4,0(s1)
    80007eb0:	0097b023          	sd	s1,0(a5)
    80007eb4:	00813483          	ld	s1,8(sp)
    80007eb8:	02010113          	addi	sp,sp,32
    80007ebc:	00008067          	ret
    80007ec0:	00002517          	auipc	a0,0x2
    80007ec4:	87050513          	addi	a0,a0,-1936 # 80009730 <digits+0x18>
    80007ec8:	fffff097          	auipc	ra,0xfffff
    80007ecc:	354080e7          	jalr	852(ra) # 8000721c <panic>

0000000080007ed0 <kalloc>:
    80007ed0:	fe010113          	addi	sp,sp,-32
    80007ed4:	00813823          	sd	s0,16(sp)
    80007ed8:	00913423          	sd	s1,8(sp)
    80007edc:	00113c23          	sd	ra,24(sp)
    80007ee0:	02010413          	addi	s0,sp,32
    80007ee4:	00004797          	auipc	a5,0x4
    80007ee8:	cbc78793          	addi	a5,a5,-836 # 8000bba0 <kmem>
    80007eec:	0007b483          	ld	s1,0(a5)
    80007ef0:	02048063          	beqz	s1,80007f10 <kalloc+0x40>
    80007ef4:	0004b703          	ld	a4,0(s1)
    80007ef8:	00001637          	lui	a2,0x1
    80007efc:	00500593          	li	a1,5
    80007f00:	00048513          	mv	a0,s1
    80007f04:	00e7b023          	sd	a4,0(a5)
    80007f08:	00000097          	auipc	ra,0x0
    80007f0c:	400080e7          	jalr	1024(ra) # 80008308 <__memset>
    80007f10:	01813083          	ld	ra,24(sp)
    80007f14:	01013403          	ld	s0,16(sp)
    80007f18:	00048513          	mv	a0,s1
    80007f1c:	00813483          	ld	s1,8(sp)
    80007f20:	02010113          	addi	sp,sp,32
    80007f24:	00008067          	ret

0000000080007f28 <initlock>:
    80007f28:	ff010113          	addi	sp,sp,-16
    80007f2c:	00813423          	sd	s0,8(sp)
    80007f30:	01010413          	addi	s0,sp,16
    80007f34:	00813403          	ld	s0,8(sp)
    80007f38:	00b53423          	sd	a1,8(a0)
    80007f3c:	00052023          	sw	zero,0(a0)
    80007f40:	00053823          	sd	zero,16(a0)
    80007f44:	01010113          	addi	sp,sp,16
    80007f48:	00008067          	ret

0000000080007f4c <acquire>:
    80007f4c:	fe010113          	addi	sp,sp,-32
    80007f50:	00813823          	sd	s0,16(sp)
    80007f54:	00913423          	sd	s1,8(sp)
    80007f58:	00113c23          	sd	ra,24(sp)
    80007f5c:	01213023          	sd	s2,0(sp)
    80007f60:	02010413          	addi	s0,sp,32
    80007f64:	00050493          	mv	s1,a0
    80007f68:	10002973          	csrr	s2,sstatus
    80007f6c:	100027f3          	csrr	a5,sstatus
    80007f70:	ffd7f793          	andi	a5,a5,-3
    80007f74:	10079073          	csrw	sstatus,a5
    80007f78:	fffff097          	auipc	ra,0xfffff
    80007f7c:	8e8080e7          	jalr	-1816(ra) # 80006860 <mycpu>
    80007f80:	07852783          	lw	a5,120(a0)
    80007f84:	06078e63          	beqz	a5,80008000 <acquire+0xb4>
    80007f88:	fffff097          	auipc	ra,0xfffff
    80007f8c:	8d8080e7          	jalr	-1832(ra) # 80006860 <mycpu>
    80007f90:	07852783          	lw	a5,120(a0)
    80007f94:	0004a703          	lw	a4,0(s1)
    80007f98:	0017879b          	addiw	a5,a5,1
    80007f9c:	06f52c23          	sw	a5,120(a0)
    80007fa0:	04071063          	bnez	a4,80007fe0 <acquire+0x94>
    80007fa4:	00100713          	li	a4,1
    80007fa8:	00070793          	mv	a5,a4
    80007fac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007fb0:	0007879b          	sext.w	a5,a5
    80007fb4:	fe079ae3          	bnez	a5,80007fa8 <acquire+0x5c>
    80007fb8:	0ff0000f          	fence
    80007fbc:	fffff097          	auipc	ra,0xfffff
    80007fc0:	8a4080e7          	jalr	-1884(ra) # 80006860 <mycpu>
    80007fc4:	01813083          	ld	ra,24(sp)
    80007fc8:	01013403          	ld	s0,16(sp)
    80007fcc:	00a4b823          	sd	a0,16(s1)
    80007fd0:	00013903          	ld	s2,0(sp)
    80007fd4:	00813483          	ld	s1,8(sp)
    80007fd8:	02010113          	addi	sp,sp,32
    80007fdc:	00008067          	ret
    80007fe0:	0104b903          	ld	s2,16(s1)
    80007fe4:	fffff097          	auipc	ra,0xfffff
    80007fe8:	87c080e7          	jalr	-1924(ra) # 80006860 <mycpu>
    80007fec:	faa91ce3          	bne	s2,a0,80007fa4 <acquire+0x58>
    80007ff0:	00001517          	auipc	a0,0x1
    80007ff4:	74850513          	addi	a0,a0,1864 # 80009738 <digits+0x20>
    80007ff8:	fffff097          	auipc	ra,0xfffff
    80007ffc:	224080e7          	jalr	548(ra) # 8000721c <panic>
    80008000:	00195913          	srli	s2,s2,0x1
    80008004:	fffff097          	auipc	ra,0xfffff
    80008008:	85c080e7          	jalr	-1956(ra) # 80006860 <mycpu>
    8000800c:	00197913          	andi	s2,s2,1
    80008010:	07252e23          	sw	s2,124(a0)
    80008014:	f75ff06f          	j	80007f88 <acquire+0x3c>

0000000080008018 <release>:
    80008018:	fe010113          	addi	sp,sp,-32
    8000801c:	00813823          	sd	s0,16(sp)
    80008020:	00113c23          	sd	ra,24(sp)
    80008024:	00913423          	sd	s1,8(sp)
    80008028:	01213023          	sd	s2,0(sp)
    8000802c:	02010413          	addi	s0,sp,32
    80008030:	00052783          	lw	a5,0(a0)
    80008034:	00079a63          	bnez	a5,80008048 <release+0x30>
    80008038:	00001517          	auipc	a0,0x1
    8000803c:	70850513          	addi	a0,a0,1800 # 80009740 <digits+0x28>
    80008040:	fffff097          	auipc	ra,0xfffff
    80008044:	1dc080e7          	jalr	476(ra) # 8000721c <panic>
    80008048:	01053903          	ld	s2,16(a0)
    8000804c:	00050493          	mv	s1,a0
    80008050:	fffff097          	auipc	ra,0xfffff
    80008054:	810080e7          	jalr	-2032(ra) # 80006860 <mycpu>
    80008058:	fea910e3          	bne	s2,a0,80008038 <release+0x20>
    8000805c:	0004b823          	sd	zero,16(s1)
    80008060:	0ff0000f          	fence
    80008064:	0f50000f          	fence	iorw,ow
    80008068:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000806c:	ffffe097          	auipc	ra,0xffffe
    80008070:	7f4080e7          	jalr	2036(ra) # 80006860 <mycpu>
    80008074:	100027f3          	csrr	a5,sstatus
    80008078:	0027f793          	andi	a5,a5,2
    8000807c:	04079a63          	bnez	a5,800080d0 <release+0xb8>
    80008080:	07852783          	lw	a5,120(a0)
    80008084:	02f05e63          	blez	a5,800080c0 <release+0xa8>
    80008088:	fff7871b          	addiw	a4,a5,-1
    8000808c:	06e52c23          	sw	a4,120(a0)
    80008090:	00071c63          	bnez	a4,800080a8 <release+0x90>
    80008094:	07c52783          	lw	a5,124(a0)
    80008098:	00078863          	beqz	a5,800080a8 <release+0x90>
    8000809c:	100027f3          	csrr	a5,sstatus
    800080a0:	0027e793          	ori	a5,a5,2
    800080a4:	10079073          	csrw	sstatus,a5
    800080a8:	01813083          	ld	ra,24(sp)
    800080ac:	01013403          	ld	s0,16(sp)
    800080b0:	00813483          	ld	s1,8(sp)
    800080b4:	00013903          	ld	s2,0(sp)
    800080b8:	02010113          	addi	sp,sp,32
    800080bc:	00008067          	ret
    800080c0:	00001517          	auipc	a0,0x1
    800080c4:	6a050513          	addi	a0,a0,1696 # 80009760 <digits+0x48>
    800080c8:	fffff097          	auipc	ra,0xfffff
    800080cc:	154080e7          	jalr	340(ra) # 8000721c <panic>
    800080d0:	00001517          	auipc	a0,0x1
    800080d4:	67850513          	addi	a0,a0,1656 # 80009748 <digits+0x30>
    800080d8:	fffff097          	auipc	ra,0xfffff
    800080dc:	144080e7          	jalr	324(ra) # 8000721c <panic>

00000000800080e0 <holding>:
    800080e0:	00052783          	lw	a5,0(a0)
    800080e4:	00079663          	bnez	a5,800080f0 <holding+0x10>
    800080e8:	00000513          	li	a0,0
    800080ec:	00008067          	ret
    800080f0:	fe010113          	addi	sp,sp,-32
    800080f4:	00813823          	sd	s0,16(sp)
    800080f8:	00913423          	sd	s1,8(sp)
    800080fc:	00113c23          	sd	ra,24(sp)
    80008100:	02010413          	addi	s0,sp,32
    80008104:	01053483          	ld	s1,16(a0)
    80008108:	ffffe097          	auipc	ra,0xffffe
    8000810c:	758080e7          	jalr	1880(ra) # 80006860 <mycpu>
    80008110:	01813083          	ld	ra,24(sp)
    80008114:	01013403          	ld	s0,16(sp)
    80008118:	40a48533          	sub	a0,s1,a0
    8000811c:	00153513          	seqz	a0,a0
    80008120:	00813483          	ld	s1,8(sp)
    80008124:	02010113          	addi	sp,sp,32
    80008128:	00008067          	ret

000000008000812c <push_off>:
    8000812c:	fe010113          	addi	sp,sp,-32
    80008130:	00813823          	sd	s0,16(sp)
    80008134:	00113c23          	sd	ra,24(sp)
    80008138:	00913423          	sd	s1,8(sp)
    8000813c:	02010413          	addi	s0,sp,32
    80008140:	100024f3          	csrr	s1,sstatus
    80008144:	100027f3          	csrr	a5,sstatus
    80008148:	ffd7f793          	andi	a5,a5,-3
    8000814c:	10079073          	csrw	sstatus,a5
    80008150:	ffffe097          	auipc	ra,0xffffe
    80008154:	710080e7          	jalr	1808(ra) # 80006860 <mycpu>
    80008158:	07852783          	lw	a5,120(a0)
    8000815c:	02078663          	beqz	a5,80008188 <push_off+0x5c>
    80008160:	ffffe097          	auipc	ra,0xffffe
    80008164:	700080e7          	jalr	1792(ra) # 80006860 <mycpu>
    80008168:	07852783          	lw	a5,120(a0)
    8000816c:	01813083          	ld	ra,24(sp)
    80008170:	01013403          	ld	s0,16(sp)
    80008174:	0017879b          	addiw	a5,a5,1
    80008178:	06f52c23          	sw	a5,120(a0)
    8000817c:	00813483          	ld	s1,8(sp)
    80008180:	02010113          	addi	sp,sp,32
    80008184:	00008067          	ret
    80008188:	0014d493          	srli	s1,s1,0x1
    8000818c:	ffffe097          	auipc	ra,0xffffe
    80008190:	6d4080e7          	jalr	1748(ra) # 80006860 <mycpu>
    80008194:	0014f493          	andi	s1,s1,1
    80008198:	06952e23          	sw	s1,124(a0)
    8000819c:	fc5ff06f          	j	80008160 <push_off+0x34>

00000000800081a0 <pop_off>:
    800081a0:	ff010113          	addi	sp,sp,-16
    800081a4:	00813023          	sd	s0,0(sp)
    800081a8:	00113423          	sd	ra,8(sp)
    800081ac:	01010413          	addi	s0,sp,16
    800081b0:	ffffe097          	auipc	ra,0xffffe
    800081b4:	6b0080e7          	jalr	1712(ra) # 80006860 <mycpu>
    800081b8:	100027f3          	csrr	a5,sstatus
    800081bc:	0027f793          	andi	a5,a5,2
    800081c0:	04079663          	bnez	a5,8000820c <pop_off+0x6c>
    800081c4:	07852783          	lw	a5,120(a0)
    800081c8:	02f05a63          	blez	a5,800081fc <pop_off+0x5c>
    800081cc:	fff7871b          	addiw	a4,a5,-1
    800081d0:	06e52c23          	sw	a4,120(a0)
    800081d4:	00071c63          	bnez	a4,800081ec <pop_off+0x4c>
    800081d8:	07c52783          	lw	a5,124(a0)
    800081dc:	00078863          	beqz	a5,800081ec <pop_off+0x4c>
    800081e0:	100027f3          	csrr	a5,sstatus
    800081e4:	0027e793          	ori	a5,a5,2
    800081e8:	10079073          	csrw	sstatus,a5
    800081ec:	00813083          	ld	ra,8(sp)
    800081f0:	00013403          	ld	s0,0(sp)
    800081f4:	01010113          	addi	sp,sp,16
    800081f8:	00008067          	ret
    800081fc:	00001517          	auipc	a0,0x1
    80008200:	56450513          	addi	a0,a0,1380 # 80009760 <digits+0x48>
    80008204:	fffff097          	auipc	ra,0xfffff
    80008208:	018080e7          	jalr	24(ra) # 8000721c <panic>
    8000820c:	00001517          	auipc	a0,0x1
    80008210:	53c50513          	addi	a0,a0,1340 # 80009748 <digits+0x30>
    80008214:	fffff097          	auipc	ra,0xfffff
    80008218:	008080e7          	jalr	8(ra) # 8000721c <panic>

000000008000821c <push_on>:
    8000821c:	fe010113          	addi	sp,sp,-32
    80008220:	00813823          	sd	s0,16(sp)
    80008224:	00113c23          	sd	ra,24(sp)
    80008228:	00913423          	sd	s1,8(sp)
    8000822c:	02010413          	addi	s0,sp,32
    80008230:	100024f3          	csrr	s1,sstatus
    80008234:	100027f3          	csrr	a5,sstatus
    80008238:	0027e793          	ori	a5,a5,2
    8000823c:	10079073          	csrw	sstatus,a5
    80008240:	ffffe097          	auipc	ra,0xffffe
    80008244:	620080e7          	jalr	1568(ra) # 80006860 <mycpu>
    80008248:	07852783          	lw	a5,120(a0)
    8000824c:	02078663          	beqz	a5,80008278 <push_on+0x5c>
    80008250:	ffffe097          	auipc	ra,0xffffe
    80008254:	610080e7          	jalr	1552(ra) # 80006860 <mycpu>
    80008258:	07852783          	lw	a5,120(a0)
    8000825c:	01813083          	ld	ra,24(sp)
    80008260:	01013403          	ld	s0,16(sp)
    80008264:	0017879b          	addiw	a5,a5,1
    80008268:	06f52c23          	sw	a5,120(a0)
    8000826c:	00813483          	ld	s1,8(sp)
    80008270:	02010113          	addi	sp,sp,32
    80008274:	00008067          	ret
    80008278:	0014d493          	srli	s1,s1,0x1
    8000827c:	ffffe097          	auipc	ra,0xffffe
    80008280:	5e4080e7          	jalr	1508(ra) # 80006860 <mycpu>
    80008284:	0014f493          	andi	s1,s1,1
    80008288:	06952e23          	sw	s1,124(a0)
    8000828c:	fc5ff06f          	j	80008250 <push_on+0x34>

0000000080008290 <pop_on>:
    80008290:	ff010113          	addi	sp,sp,-16
    80008294:	00813023          	sd	s0,0(sp)
    80008298:	00113423          	sd	ra,8(sp)
    8000829c:	01010413          	addi	s0,sp,16
    800082a0:	ffffe097          	auipc	ra,0xffffe
    800082a4:	5c0080e7          	jalr	1472(ra) # 80006860 <mycpu>
    800082a8:	100027f3          	csrr	a5,sstatus
    800082ac:	0027f793          	andi	a5,a5,2
    800082b0:	04078463          	beqz	a5,800082f8 <pop_on+0x68>
    800082b4:	07852783          	lw	a5,120(a0)
    800082b8:	02f05863          	blez	a5,800082e8 <pop_on+0x58>
    800082bc:	fff7879b          	addiw	a5,a5,-1
    800082c0:	06f52c23          	sw	a5,120(a0)
    800082c4:	07853783          	ld	a5,120(a0)
    800082c8:	00079863          	bnez	a5,800082d8 <pop_on+0x48>
    800082cc:	100027f3          	csrr	a5,sstatus
    800082d0:	ffd7f793          	andi	a5,a5,-3
    800082d4:	10079073          	csrw	sstatus,a5
    800082d8:	00813083          	ld	ra,8(sp)
    800082dc:	00013403          	ld	s0,0(sp)
    800082e0:	01010113          	addi	sp,sp,16
    800082e4:	00008067          	ret
    800082e8:	00001517          	auipc	a0,0x1
    800082ec:	4a050513          	addi	a0,a0,1184 # 80009788 <digits+0x70>
    800082f0:	fffff097          	auipc	ra,0xfffff
    800082f4:	f2c080e7          	jalr	-212(ra) # 8000721c <panic>
    800082f8:	00001517          	auipc	a0,0x1
    800082fc:	47050513          	addi	a0,a0,1136 # 80009768 <digits+0x50>
    80008300:	fffff097          	auipc	ra,0xfffff
    80008304:	f1c080e7          	jalr	-228(ra) # 8000721c <panic>

0000000080008308 <__memset>:
    80008308:	ff010113          	addi	sp,sp,-16
    8000830c:	00813423          	sd	s0,8(sp)
    80008310:	01010413          	addi	s0,sp,16
    80008314:	1a060e63          	beqz	a2,800084d0 <__memset+0x1c8>
    80008318:	40a007b3          	neg	a5,a0
    8000831c:	0077f793          	andi	a5,a5,7
    80008320:	00778693          	addi	a3,a5,7
    80008324:	00b00813          	li	a6,11
    80008328:	0ff5f593          	andi	a1,a1,255
    8000832c:	fff6071b          	addiw	a4,a2,-1
    80008330:	1b06e663          	bltu	a3,a6,800084dc <__memset+0x1d4>
    80008334:	1cd76463          	bltu	a4,a3,800084fc <__memset+0x1f4>
    80008338:	1a078e63          	beqz	a5,800084f4 <__memset+0x1ec>
    8000833c:	00b50023          	sb	a1,0(a0)
    80008340:	00100713          	li	a4,1
    80008344:	1ae78463          	beq	a5,a4,800084ec <__memset+0x1e4>
    80008348:	00b500a3          	sb	a1,1(a0)
    8000834c:	00200713          	li	a4,2
    80008350:	1ae78a63          	beq	a5,a4,80008504 <__memset+0x1fc>
    80008354:	00b50123          	sb	a1,2(a0)
    80008358:	00300713          	li	a4,3
    8000835c:	18e78463          	beq	a5,a4,800084e4 <__memset+0x1dc>
    80008360:	00b501a3          	sb	a1,3(a0)
    80008364:	00400713          	li	a4,4
    80008368:	1ae78263          	beq	a5,a4,8000850c <__memset+0x204>
    8000836c:	00b50223          	sb	a1,4(a0)
    80008370:	00500713          	li	a4,5
    80008374:	1ae78063          	beq	a5,a4,80008514 <__memset+0x20c>
    80008378:	00b502a3          	sb	a1,5(a0)
    8000837c:	00700713          	li	a4,7
    80008380:	18e79e63          	bne	a5,a4,8000851c <__memset+0x214>
    80008384:	00b50323          	sb	a1,6(a0)
    80008388:	00700e93          	li	t4,7
    8000838c:	00859713          	slli	a4,a1,0x8
    80008390:	00e5e733          	or	a4,a1,a4
    80008394:	01059e13          	slli	t3,a1,0x10
    80008398:	01c76e33          	or	t3,a4,t3
    8000839c:	01859313          	slli	t1,a1,0x18
    800083a0:	006e6333          	or	t1,t3,t1
    800083a4:	02059893          	slli	a7,a1,0x20
    800083a8:	40f60e3b          	subw	t3,a2,a5
    800083ac:	011368b3          	or	a7,t1,a7
    800083b0:	02859813          	slli	a6,a1,0x28
    800083b4:	0108e833          	or	a6,a7,a6
    800083b8:	03059693          	slli	a3,a1,0x30
    800083bc:	003e589b          	srliw	a7,t3,0x3
    800083c0:	00d866b3          	or	a3,a6,a3
    800083c4:	03859713          	slli	a4,a1,0x38
    800083c8:	00389813          	slli	a6,a7,0x3
    800083cc:	00f507b3          	add	a5,a0,a5
    800083d0:	00e6e733          	or	a4,a3,a4
    800083d4:	000e089b          	sext.w	a7,t3
    800083d8:	00f806b3          	add	a3,a6,a5
    800083dc:	00e7b023          	sd	a4,0(a5)
    800083e0:	00878793          	addi	a5,a5,8
    800083e4:	fed79ce3          	bne	a5,a3,800083dc <__memset+0xd4>
    800083e8:	ff8e7793          	andi	a5,t3,-8
    800083ec:	0007871b          	sext.w	a4,a5
    800083f0:	01d787bb          	addw	a5,a5,t4
    800083f4:	0ce88e63          	beq	a7,a4,800084d0 <__memset+0x1c8>
    800083f8:	00f50733          	add	a4,a0,a5
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	0017871b          	addiw	a4,a5,1
    80008404:	0cc77663          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	0027871b          	addiw	a4,a5,2
    80008414:	0ac77e63          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	0037871b          	addiw	a4,a5,3
    80008424:	0ac77663          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	0047871b          	addiw	a4,a5,4
    80008434:	08c77e63          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	0057871b          	addiw	a4,a5,5
    80008444:	08c77663          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	0067871b          	addiw	a4,a5,6
    80008454:	06c77e63          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	0077871b          	addiw	a4,a5,7
    80008464:	06c77663          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008468:	00e50733          	add	a4,a0,a4
    8000846c:	00b70023          	sb	a1,0(a4)
    80008470:	0087871b          	addiw	a4,a5,8
    80008474:	04c77e63          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00b70023          	sb	a1,0(a4)
    80008480:	0097871b          	addiw	a4,a5,9
    80008484:	04c77663          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008488:	00e50733          	add	a4,a0,a4
    8000848c:	00b70023          	sb	a1,0(a4)
    80008490:	00a7871b          	addiw	a4,a5,10
    80008494:	02c77e63          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	00b7871b          	addiw	a4,a5,11
    800084a4:	02c77663          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	00c7871b          	addiw	a4,a5,12
    800084b4:	00c77e63          	bgeu	a4,a2,800084d0 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	00d7879b          	addiw	a5,a5,13
    800084c4:	00c7f663          	bgeu	a5,a2,800084d0 <__memset+0x1c8>
    800084c8:	00f507b3          	add	a5,a0,a5
    800084cc:	00b78023          	sb	a1,0(a5)
    800084d0:	00813403          	ld	s0,8(sp)
    800084d4:	01010113          	addi	sp,sp,16
    800084d8:	00008067          	ret
    800084dc:	00b00693          	li	a3,11
    800084e0:	e55ff06f          	j	80008334 <__memset+0x2c>
    800084e4:	00300e93          	li	t4,3
    800084e8:	ea5ff06f          	j	8000838c <__memset+0x84>
    800084ec:	00100e93          	li	t4,1
    800084f0:	e9dff06f          	j	8000838c <__memset+0x84>
    800084f4:	00000e93          	li	t4,0
    800084f8:	e95ff06f          	j	8000838c <__memset+0x84>
    800084fc:	00000793          	li	a5,0
    80008500:	ef9ff06f          	j	800083f8 <__memset+0xf0>
    80008504:	00200e93          	li	t4,2
    80008508:	e85ff06f          	j	8000838c <__memset+0x84>
    8000850c:	00400e93          	li	t4,4
    80008510:	e7dff06f          	j	8000838c <__memset+0x84>
    80008514:	00500e93          	li	t4,5
    80008518:	e75ff06f          	j	8000838c <__memset+0x84>
    8000851c:	00600e93          	li	t4,6
    80008520:	e6dff06f          	j	8000838c <__memset+0x84>

0000000080008524 <__memmove>:
    80008524:	ff010113          	addi	sp,sp,-16
    80008528:	00813423          	sd	s0,8(sp)
    8000852c:	01010413          	addi	s0,sp,16
    80008530:	0e060863          	beqz	a2,80008620 <__memmove+0xfc>
    80008534:	fff6069b          	addiw	a3,a2,-1
    80008538:	0006881b          	sext.w	a6,a3
    8000853c:	0ea5e863          	bltu	a1,a0,8000862c <__memmove+0x108>
    80008540:	00758713          	addi	a4,a1,7
    80008544:	00a5e7b3          	or	a5,a1,a0
    80008548:	40a70733          	sub	a4,a4,a0
    8000854c:	0077f793          	andi	a5,a5,7
    80008550:	00f73713          	sltiu	a4,a4,15
    80008554:	00174713          	xori	a4,a4,1
    80008558:	0017b793          	seqz	a5,a5
    8000855c:	00e7f7b3          	and	a5,a5,a4
    80008560:	10078863          	beqz	a5,80008670 <__memmove+0x14c>
    80008564:	00900793          	li	a5,9
    80008568:	1107f463          	bgeu	a5,a6,80008670 <__memmove+0x14c>
    8000856c:	0036581b          	srliw	a6,a2,0x3
    80008570:	fff8081b          	addiw	a6,a6,-1
    80008574:	02081813          	slli	a6,a6,0x20
    80008578:	01d85893          	srli	a7,a6,0x1d
    8000857c:	00858813          	addi	a6,a1,8
    80008580:	00058793          	mv	a5,a1
    80008584:	00050713          	mv	a4,a0
    80008588:	01088833          	add	a6,a7,a6
    8000858c:	0007b883          	ld	a7,0(a5)
    80008590:	00878793          	addi	a5,a5,8
    80008594:	00870713          	addi	a4,a4,8
    80008598:	ff173c23          	sd	a7,-8(a4)
    8000859c:	ff0798e3          	bne	a5,a6,8000858c <__memmove+0x68>
    800085a0:	ff867713          	andi	a4,a2,-8
    800085a4:	02071793          	slli	a5,a4,0x20
    800085a8:	0207d793          	srli	a5,a5,0x20
    800085ac:	00f585b3          	add	a1,a1,a5
    800085b0:	40e686bb          	subw	a3,a3,a4
    800085b4:	00f507b3          	add	a5,a0,a5
    800085b8:	06e60463          	beq	a2,a4,80008620 <__memmove+0xfc>
    800085bc:	0005c703          	lbu	a4,0(a1)
    800085c0:	00e78023          	sb	a4,0(a5)
    800085c4:	04068e63          	beqz	a3,80008620 <__memmove+0xfc>
    800085c8:	0015c603          	lbu	a2,1(a1)
    800085cc:	00100713          	li	a4,1
    800085d0:	00c780a3          	sb	a2,1(a5)
    800085d4:	04e68663          	beq	a3,a4,80008620 <__memmove+0xfc>
    800085d8:	0025c603          	lbu	a2,2(a1)
    800085dc:	00200713          	li	a4,2
    800085e0:	00c78123          	sb	a2,2(a5)
    800085e4:	02e68e63          	beq	a3,a4,80008620 <__memmove+0xfc>
    800085e8:	0035c603          	lbu	a2,3(a1)
    800085ec:	00300713          	li	a4,3
    800085f0:	00c781a3          	sb	a2,3(a5)
    800085f4:	02e68663          	beq	a3,a4,80008620 <__memmove+0xfc>
    800085f8:	0045c603          	lbu	a2,4(a1)
    800085fc:	00400713          	li	a4,4
    80008600:	00c78223          	sb	a2,4(a5)
    80008604:	00e68e63          	beq	a3,a4,80008620 <__memmove+0xfc>
    80008608:	0055c603          	lbu	a2,5(a1)
    8000860c:	00500713          	li	a4,5
    80008610:	00c782a3          	sb	a2,5(a5)
    80008614:	00e68663          	beq	a3,a4,80008620 <__memmove+0xfc>
    80008618:	0065c703          	lbu	a4,6(a1)
    8000861c:	00e78323          	sb	a4,6(a5)
    80008620:	00813403          	ld	s0,8(sp)
    80008624:	01010113          	addi	sp,sp,16
    80008628:	00008067          	ret
    8000862c:	02061713          	slli	a4,a2,0x20
    80008630:	02075713          	srli	a4,a4,0x20
    80008634:	00e587b3          	add	a5,a1,a4
    80008638:	f0f574e3          	bgeu	a0,a5,80008540 <__memmove+0x1c>
    8000863c:	02069613          	slli	a2,a3,0x20
    80008640:	02065613          	srli	a2,a2,0x20
    80008644:	fff64613          	not	a2,a2
    80008648:	00e50733          	add	a4,a0,a4
    8000864c:	00c78633          	add	a2,a5,a2
    80008650:	fff7c683          	lbu	a3,-1(a5)
    80008654:	fff78793          	addi	a5,a5,-1
    80008658:	fff70713          	addi	a4,a4,-1
    8000865c:	00d70023          	sb	a3,0(a4)
    80008660:	fec798e3          	bne	a5,a2,80008650 <__memmove+0x12c>
    80008664:	00813403          	ld	s0,8(sp)
    80008668:	01010113          	addi	sp,sp,16
    8000866c:	00008067          	ret
    80008670:	02069713          	slli	a4,a3,0x20
    80008674:	02075713          	srli	a4,a4,0x20
    80008678:	00170713          	addi	a4,a4,1
    8000867c:	00e50733          	add	a4,a0,a4
    80008680:	00050793          	mv	a5,a0
    80008684:	0005c683          	lbu	a3,0(a1)
    80008688:	00178793          	addi	a5,a5,1
    8000868c:	00158593          	addi	a1,a1,1
    80008690:	fed78fa3          	sb	a3,-1(a5)
    80008694:	fee798e3          	bne	a5,a4,80008684 <__memmove+0x160>
    80008698:	f89ff06f          	j	80008620 <__memmove+0xfc>

000000008000869c <__putc>:
    8000869c:	fe010113          	addi	sp,sp,-32
    800086a0:	00813823          	sd	s0,16(sp)
    800086a4:	00113c23          	sd	ra,24(sp)
    800086a8:	02010413          	addi	s0,sp,32
    800086ac:	00050793          	mv	a5,a0
    800086b0:	fef40593          	addi	a1,s0,-17
    800086b4:	00100613          	li	a2,1
    800086b8:	00000513          	li	a0,0
    800086bc:	fef407a3          	sb	a5,-17(s0)
    800086c0:	fffff097          	auipc	ra,0xfffff
    800086c4:	b3c080e7          	jalr	-1220(ra) # 800071fc <console_write>
    800086c8:	01813083          	ld	ra,24(sp)
    800086cc:	01013403          	ld	s0,16(sp)
    800086d0:	02010113          	addi	sp,sp,32
    800086d4:	00008067          	ret

00000000800086d8 <__getc>:
    800086d8:	fe010113          	addi	sp,sp,-32
    800086dc:	00813823          	sd	s0,16(sp)
    800086e0:	00113c23          	sd	ra,24(sp)
    800086e4:	02010413          	addi	s0,sp,32
    800086e8:	fe840593          	addi	a1,s0,-24
    800086ec:	00100613          	li	a2,1
    800086f0:	00000513          	li	a0,0
    800086f4:	fffff097          	auipc	ra,0xfffff
    800086f8:	ae8080e7          	jalr	-1304(ra) # 800071dc <console_read>
    800086fc:	fe844503          	lbu	a0,-24(s0)
    80008700:	01813083          	ld	ra,24(sp)
    80008704:	01013403          	ld	s0,16(sp)
    80008708:	02010113          	addi	sp,sp,32
    8000870c:	00008067          	ret

0000000080008710 <console_handler>:
    80008710:	fe010113          	addi	sp,sp,-32
    80008714:	00813823          	sd	s0,16(sp)
    80008718:	00113c23          	sd	ra,24(sp)
    8000871c:	00913423          	sd	s1,8(sp)
    80008720:	02010413          	addi	s0,sp,32
    80008724:	14202773          	csrr	a4,scause
    80008728:	100027f3          	csrr	a5,sstatus
    8000872c:	0027f793          	andi	a5,a5,2
    80008730:	06079e63          	bnez	a5,800087ac <console_handler+0x9c>
    80008734:	00074c63          	bltz	a4,8000874c <console_handler+0x3c>
    80008738:	01813083          	ld	ra,24(sp)
    8000873c:	01013403          	ld	s0,16(sp)
    80008740:	00813483          	ld	s1,8(sp)
    80008744:	02010113          	addi	sp,sp,32
    80008748:	00008067          	ret
    8000874c:	0ff77713          	andi	a4,a4,255
    80008750:	00900793          	li	a5,9
    80008754:	fef712e3          	bne	a4,a5,80008738 <console_handler+0x28>
    80008758:	ffffe097          	auipc	ra,0xffffe
    8000875c:	6dc080e7          	jalr	1756(ra) # 80006e34 <plic_claim>
    80008760:	00a00793          	li	a5,10
    80008764:	00050493          	mv	s1,a0
    80008768:	02f50c63          	beq	a0,a5,800087a0 <console_handler+0x90>
    8000876c:	fc0506e3          	beqz	a0,80008738 <console_handler+0x28>
    80008770:	00050593          	mv	a1,a0
    80008774:	00001517          	auipc	a0,0x1
    80008778:	f1c50513          	addi	a0,a0,-228 # 80009690 <_ZL6digits+0x110>
    8000877c:	fffff097          	auipc	ra,0xfffff
    80008780:	afc080e7          	jalr	-1284(ra) # 80007278 <__printf>
    80008784:	01013403          	ld	s0,16(sp)
    80008788:	01813083          	ld	ra,24(sp)
    8000878c:	00048513          	mv	a0,s1
    80008790:	00813483          	ld	s1,8(sp)
    80008794:	02010113          	addi	sp,sp,32
    80008798:	ffffe317          	auipc	t1,0xffffe
    8000879c:	6d430067          	jr	1748(t1) # 80006e6c <plic_complete>
    800087a0:	fffff097          	auipc	ra,0xfffff
    800087a4:	3e0080e7          	jalr	992(ra) # 80007b80 <uartintr>
    800087a8:	fddff06f          	j	80008784 <console_handler+0x74>
    800087ac:	00001517          	auipc	a0,0x1
    800087b0:	fe450513          	addi	a0,a0,-28 # 80009790 <digits+0x78>
    800087b4:	fffff097          	auipc	ra,0xfffff
    800087b8:	a68080e7          	jalr	-1432(ra) # 8000721c <panic>
	...
