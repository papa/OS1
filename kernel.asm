
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	13013103          	ld	sp,304(sp) # 80007130 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7d9020ef          	jal	ra,80002ff4 <start>

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
    80001080:	76c010ef          	jal	ra,800027ec <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001208:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000120c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001210:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001214:	0085b083          	ld	ra,8(a1)

    ret
    80001218:	00008067          	ret

000000008000121c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000121c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001220:	00853083          	ld	ra,8(a0)

    80001224:	00008067          	ret

0000000080001228 <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    80001228:	ff010113          	addi	sp,sp,-16
    8000122c:	00813423          	sd	s0,8(sp)
    80001230:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001234:	03f50513          	addi	a0,a0,63
    80001238:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000123c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001240:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001244:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001248:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001264:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001268:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000126c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001270:	00050513          	mv	a0,a0

    return result;
}
    80001274:	0005051b          	sext.w	a0,a0
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <thread_create>:

#ifdef __cplusplus
extern "C"
#endif
int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80001284:	fd010113          	addi	sp,sp,-48
    80001288:	02113423          	sd	ra,40(sp)
    8000128c:	02813023          	sd	s0,32(sp)
    80001290:	00913c23          	sd	s1,24(sp)
    80001294:	01213823          	sd	s2,16(sp)
    80001298:	01313423          	sd	s3,8(sp)
    8000129c:	03010413          	addi	s0,sp,48
    800012a0:	00050493          	mv	s1,a0
    800012a4:	00058913          	mv	s2,a1
    800012a8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012ac:	00001537          	lui	a0,0x1
    800012b0:	00000097          	auipc	ra,0x0
    800012b4:	f78080e7          	jalr	-136(ra) # 80001228 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012b8:	04050263          	beqz	a0,800012fc <thread_create+0x78>
        return -1;

    //initialize registers

    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012bc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012c0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012c4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012c8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012cc:	01100793          	li	a5,17
    800012d0:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800012d4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012d8:	00050513          	mv	a0,a0

    return result;
    800012dc:	0005051b          	sext.w	a0,a0
}
    800012e0:	02813083          	ld	ra,40(sp)
    800012e4:	02013403          	ld	s0,32(sp)
    800012e8:	01813483          	ld	s1,24(sp)
    800012ec:	01013903          	ld	s2,16(sp)
    800012f0:	00813983          	ld	s3,8(sp)
    800012f4:	03010113          	addi	sp,sp,48
    800012f8:	00008067          	ret
        return -1;
    800012fc:	fff00513          	li	a0,-1
    80001300:	fe1ff06f          	j	800012e0 <thread_create+0x5c>

0000000080001304 <thread_dispatch>:

#ifdef __cplusplus
extern "C"
#endif
void thread_dispatch(){
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001310:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001314:	00000073          	ecall
}
    80001318:	00813403          	ld	s0,8(sp)
    8000131c:	01010113          	addi	sp,sp,16
    80001320:	00008067          	ret

0000000080001324 <thread_exit>:

#ifdef __cplusplus
extern "C"
#endif
int thread_exit()
{
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00813423          	sd	s0,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001330:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001334:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001338:	00050513          	mv	a0,a0

    return result;
}
    8000133c:	0005051b          	sext.w	a0,a0
    80001340:	00813403          	ld	s0,8(sp)
    80001344:	01010113          	addi	sp,sp,16
    80001348:	00008067          	ret

000000008000134c <sem_open>:

typedef void* sem_t;
int sem_open(sem_t* handle, unsigned int x)
{
    8000134c:	ff010113          	addi	sp,sp,-16
    80001350:	00813423          	sd	s0,8(sp)
    80001354:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001358:	02059593          	slli	a1,a1,0x20
    8000135c:	0205d593          	srli	a1,a1,0x20
    80001360:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001364:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001368:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000136c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001370:	00050513          	mv	a0,a0

    return result;
}
    80001374:	0005051b          	sext.w	a0,a0
    80001378:	00813403          	ld	s0,8(sp)
    8000137c:	01010113          	addi	sp,sp,16
    80001380:	00008067          	ret

0000000080001384 <sem_close>:


int sem_close(sem_t handle)
{
    80001384:	ff010113          	addi	sp,sp,-16
    80001388:	00813423          	sd	s0,8(sp)
    8000138c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001390:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001394:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80001398:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000139c:	00050513          	mv	a0,a0

    return result;
}
    800013a0:	0005051b          	sext.w	a0,a0
    800013a4:	00813403          	ld	s0,8(sp)
    800013a8:	01010113          	addi	sp,sp,16
    800013ac:	00008067          	ret

00000000800013b0 <sem_wait>:

int sem_wait(sem_t id)
{
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00813423          	sd	s0,8(sp)
    800013b8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013bc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013c0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800013c4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013c8:	00050513          	mv	a0,a0

    return result;
}
    800013cc:	0005051b          	sext.w	a0,a0
    800013d0:	00813403          	ld	s0,8(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <sem_signal>:

int sem_signal(sem_t id)
{
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00813423          	sd	s0,8(sp)
    800013e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013e8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800013ec:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800013f0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013f4:	00050513          	mv	a0,a0

    return result;
}
    800013f8:	0005051b          	sext.w	a0,a0
    800013fc:	00813403          	ld	s0,8(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_Z4idlePv>:
//

#include "../h/Tests.h"

void idle(void* args)
{
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00113423          	sd	ra,8(sp)
    80001410:	00813023          	sd	s0,0(sp)
    80001414:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    80001418:	00005517          	auipc	a0,0x5
    8000141c:	c0850513          	addi	a0,a0,-1016 # 80006020 <CONSOLE_STATUS+0x10>
    80001420:	00001097          	auipc	ra,0x1
    80001424:	294080e7          	jalr	660(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	edc080e7          	jalr	-292(ra) # 80001304 <thread_dispatch>
    while(true)
    80001430:	fe9ff06f          	j	80001418 <_Z4idlePv+0x10>

0000000080001434 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    80001434:	fe010113          	addi	sp,sp,-32
    80001438:	00113c23          	sd	ra,24(sp)
    8000143c:	00813823          	sd	s0,16(sp)
    80001440:	00913423          	sd	s1,8(sp)
    80001444:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    80001448:	00005517          	auipc	a0,0x5
    8000144c:	be050513          	addi	a0,a0,-1056 # 80006028 <CONSOLE_STATUS+0x18>
    80001450:	00001097          	auipc	ra,0x1
    80001454:	264080e7          	jalr	612(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    uint64 num = 1000;
    for(uint64 i = 0; i < num;i++)
    80001458:	00000493          	li	s1,0
    8000145c:	03c0006f          	j	80001498 <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    80001460:	00000097          	auipc	ra,0x0
    80001464:	ea4080e7          	jalr	-348(ra) # 80001304 <thread_dispatch>
        Riscv::printString("i : ");
    80001468:	00005517          	auipc	a0,0x5
    8000146c:	bd850513          	addi	a0,a0,-1064 # 80006040 <CONSOLE_STATUS+0x30>
    80001470:	00001097          	auipc	ra,0x1
    80001474:	244080e7          	jalr	580(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    80001478:	00048513          	mv	a0,s1
    8000147c:	00001097          	auipc	ra,0x1
    80001480:	2a8080e7          	jalr	680(ra) # 80002724 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001484:	00005517          	auipc	a0,0x5
    80001488:	e0450513          	addi	a0,a0,-508 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000148c:	00001097          	auipc	ra,0x1
    80001490:	228080e7          	jalr	552(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    80001494:	00148493          	addi	s1,s1,1
    80001498:	3e700793          	li	a5,999
    8000149c:	0097ec63          	bltu	a5,s1,800014b4 <_Z15thread1FunctionPv+0x80>
        if(i % 150 == 0 && i > 0)
    800014a0:	09600793          	li	a5,150
    800014a4:	02f4f7b3          	remu	a5,s1,a5
    800014a8:	fc0790e3          	bnez	a5,80001468 <_Z15thread1FunctionPv+0x34>
    800014ac:	fa048ee3          	beqz	s1,80001468 <_Z15thread1FunctionPv+0x34>
    800014b0:	fb1ff06f          	j	80001460 <_Z15thread1FunctionPv+0x2c>
    }
}
    800014b4:	01813083          	ld	ra,24(sp)
    800014b8:	01013403          	ld	s0,16(sp)
    800014bc:	00813483          	ld	s1,8(sp)
    800014c0:	02010113          	addi	sp,sp,32
    800014c4:	00008067          	ret

00000000800014c8 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    800014c8:	fe010113          	addi	sp,sp,-32
    800014cc:	00113c23          	sd	ra,24(sp)
    800014d0:	00813823          	sd	s0,16(sp)
    800014d4:	00913423          	sd	s1,8(sp)
    800014d8:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    800014dc:	00005517          	auipc	a0,0x5
    800014e0:	b6c50513          	addi	a0,a0,-1172 # 80006048 <CONSOLE_STATUS+0x38>
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	1d0080e7          	jalr	464(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    uint64 num = 1000;
    for(uint64 j = 0; j < num;j++)
    800014ec:	00000493          	li	s1,0
    800014f0:	03c0006f          	j	8000152c <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	e10080e7          	jalr	-496(ra) # 80001304 <thread_dispatch>
        Riscv::printString("j : ");
    800014fc:	00005517          	auipc	a0,0x5
    80001500:	b6450513          	addi	a0,a0,-1180 # 80006060 <CONSOLE_STATUS+0x50>
    80001504:	00001097          	auipc	ra,0x1
    80001508:	1b0080e7          	jalr	432(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000150c:	00048513          	mv	a0,s1
    80001510:	00001097          	auipc	ra,0x1
    80001514:	214080e7          	jalr	532(ra) # 80002724 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001518:	00005517          	auipc	a0,0x5
    8000151c:	d7050513          	addi	a0,a0,-656 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001520:	00001097          	auipc	ra,0x1
    80001524:	194080e7          	jalr	404(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001528:	00148493          	addi	s1,s1,1
    8000152c:	3e700793          	li	a5,999
    80001530:	0097ec63          	bltu	a5,s1,80001548 <_Z15thread2FunctionPv+0x80>
        if(j % 50 == 0 && j > 0)
    80001534:	03200793          	li	a5,50
    80001538:	02f4f7b3          	remu	a5,s1,a5
    8000153c:	fc0790e3          	bnez	a5,800014fc <_Z15thread2FunctionPv+0x34>
    80001540:	fa048ee3          	beqz	s1,800014fc <_Z15thread2FunctionPv+0x34>
    80001544:	fb1ff06f          	j	800014f4 <_Z15thread2FunctionPv+0x2c>
    }
}
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	00813483          	ld	s1,8(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z20thread2FunctionTest2Pv>:

void thread2FunctionTest2(void* p)
{
    8000155c:	fe010113          	addi	sp,sp,-32
    80001560:	00113c23          	sd	ra,24(sp)
    80001564:	00813823          	sd	s0,16(sp)
    80001568:	00913423          	sd	s1,8(sp)
    8000156c:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001570:	00005517          	auipc	a0,0x5
    80001574:	ad850513          	addi	a0,a0,-1320 # 80006048 <CONSOLE_STATUS+0x38>
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	13c080e7          	jalr	316(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    uint64 num = 1000;
    for(uint64 j = 0; j < num;j++)
    80001580:	00000493          	li	s1,0
    80001584:	0480006f          	j	800015cc <_Z20thread2FunctionTest2Pv+0x70>
    {
        if(j == 200)
            thread_exit();
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	d9c080e7          	jalr	-612(ra) # 80001324 <thread_exit>
    80001590:	04c0006f          	j	800015dc <_Z20thread2FunctionTest2Pv+0x80>
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    80001594:	00000097          	auipc	ra,0x0
    80001598:	d70080e7          	jalr	-656(ra) # 80001304 <thread_dispatch>
        Riscv::printString("j : ");
    8000159c:	00005517          	auipc	a0,0x5
    800015a0:	ac450513          	addi	a0,a0,-1340 # 80006060 <CONSOLE_STATUS+0x50>
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	110080e7          	jalr	272(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    800015ac:	00048513          	mv	a0,s1
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	174080e7          	jalr	372(ra) # 80002724 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015b8:	00005517          	auipc	a0,0x5
    800015bc:	cd050513          	addi	a0,a0,-816 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	0f4080e7          	jalr	244(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    800015c8:	00148493          	addi	s1,s1,1
    800015cc:	3e700793          	li	a5,999
    800015d0:	0297e063          	bltu	a5,s1,800015f0 <_Z20thread2FunctionTest2Pv+0x94>
        if(j == 200)
    800015d4:	0c800793          	li	a5,200
    800015d8:	faf488e3          	beq	s1,a5,80001588 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    800015dc:	03200793          	li	a5,50
    800015e0:	02f4f7b3          	remu	a5,s1,a5
    800015e4:	fa079ce3          	bnez	a5,8000159c <_Z20thread2FunctionTest2Pv+0x40>
    800015e8:	fa048ae3          	beqz	s1,8000159c <_Z20thread2FunctionTest2Pv+0x40>
    800015ec:	fa9ff06f          	j	80001594 <_Z20thread2FunctionTest2Pv+0x38>
    }
}
    800015f0:	01813083          	ld	ra,24(sp)
    800015f4:	01013403          	ld	s0,16(sp)
    800015f8:	00813483          	ld	s1,8(sp)
    800015fc:	02010113          	addi	sp,sp,32
    80001600:	00008067          	ret

0000000080001604 <_Z11threadTest1v>:


void threadTest1()
{
    80001604:	fe010113          	addi	sp,sp,-32
    80001608:	00113c23          	sd	ra,24(sp)
    8000160c:	00813823          	sd	s0,16(sp)
    80001610:	00913423          	sd	s1,8(sp)
    80001614:	01213023          	sd	s2,0(sp)
    80001618:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    8000161c:	00800513          	li	a0,8
    80001620:	00001097          	auipc	ra,0x1
    80001624:	e10080e7          	jalr	-496(ra) # 80002430 <_Znwm>
    80001628:	00050493          	mv	s1,a0
    8000162c:	00000613          	li	a2,0
    80001630:	00000597          	auipc	a1,0x0
    80001634:	e0458593          	addi	a1,a1,-508 # 80001434 <_Z15thread1FunctionPv>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	ea0080e7          	jalr	-352(ra) # 800024d8 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001640:	00800513          	li	a0,8
    80001644:	00001097          	auipc	ra,0x1
    80001648:	dec080e7          	jalr	-532(ra) # 80002430 <_Znwm>
    8000164c:	00050913          	mv	s2,a0
    80001650:	00000613          	li	a2,0
    80001654:	00000597          	auipc	a1,0x0
    80001658:	e7458593          	addi	a1,a1,-396 # 800014c8 <_Z15thread2FunctionPv>
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	e7c080e7          	jalr	-388(ra) # 800024d8 <_ZN6ThreadC1EPFvPvES0_>

    Riscv::enableInterrupts();
    80001664:	00001097          	auipc	ra,0x1
    80001668:	fc8080e7          	jalr	-56(ra) # 8000262c <_ZN5Riscv16enableInterruptsEv>

    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED);
    8000166c:	0004b783          	ld	a5,0(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING};
    State getState() {return state;}
    80001670:	0207a703          	lw	a4,32(a5)
    80001674:	00300793          	li	a5,3
    80001678:	fef71ae3          	bne	a4,a5,8000166c <_Z11threadTest1v+0x68>
    8000167c:	00093783          	ld	a5,0(s2)
    80001680:	0207a703          	lw	a4,32(a5)
    80001684:	00300793          	li	a5,3
    80001688:	fef712e3          	bne	a4,a5,8000166c <_Z11threadTest1v+0x68>

    Riscv::printString("End...\n");
    8000168c:	00005517          	auipc	a0,0x5
    80001690:	9dc50513          	addi	a0,a0,-1572 # 80006068 <CONSOLE_STATUS+0x58>
    80001694:	00001097          	auipc	ra,0x1
    80001698:	020080e7          	jalr	32(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>

    Riscv::disableInterrupts();
    8000169c:	00001097          	auipc	ra,0x1
    800016a0:	fb0080e7          	jalr	-80(ra) # 8000264c <_ZN5Riscv17disableInterruptsEv>
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	00013903          	ld	s2,0(sp)
    800016b4:	02010113          	addi	sp,sp,32
    800016b8:	00008067          	ret
    800016bc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800016c0:	00048513          	mv	a0,s1
    800016c4:	00001097          	auipc	ra,0x1
    800016c8:	d94080e7          	jalr	-620(ra) # 80002458 <_ZdlPv>
    800016cc:	00090513          	mv	a0,s2
    800016d0:	00007097          	auipc	ra,0x7
    800016d4:	bc8080e7          	jalr	-1080(ra) # 80008298 <_Unwind_Resume>
    800016d8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800016dc:	00090513          	mv	a0,s2
    800016e0:	00001097          	auipc	ra,0x1
    800016e4:	d78080e7          	jalr	-648(ra) # 80002458 <_ZdlPv>
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00007097          	auipc	ra,0x7
    800016f0:	bac080e7          	jalr	-1108(ra) # 80008298 <_Unwind_Resume>

00000000800016f4 <_Z11threadTest2v>:

void threadTest2()
{
    800016f4:	fe010113          	addi	sp,sp,-32
    800016f8:	00113c23          	sd	ra,24(sp)
    800016fc:	00813823          	sd	s0,16(sp)
    80001700:	00913423          	sd	s1,8(sp)
    80001704:	01213023          	sd	s2,0(sp)
    80001708:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    8000170c:	00800513          	li	a0,8
    80001710:	00001097          	auipc	ra,0x1
    80001714:	d20080e7          	jalr	-736(ra) # 80002430 <_Znwm>
    80001718:	00050493          	mv	s1,a0
    8000171c:	00000613          	li	a2,0
    80001720:	00000597          	auipc	a1,0x0
    80001724:	ce858593          	addi	a1,a1,-792 # 80001408 <_Z4idlePv>
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	db0080e7          	jalr	-592(ra) # 800024d8 <_ZN6ThreadC1EPFvPvES0_>
    new Thread(&thread1Function, 0);
    80001730:	00800513          	li	a0,8
    80001734:	00001097          	auipc	ra,0x1
    80001738:	cfc080e7          	jalr	-772(ra) # 80002430 <_Znwm>
    8000173c:	00050913          	mv	s2,a0
    80001740:	00000613          	li	a2,0
    80001744:	00000597          	auipc	a1,0x0
    80001748:	cf058593          	addi	a1,a1,-784 # 80001434 <_Z15thread1FunctionPv>
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	d8c080e7          	jalr	-628(ra) # 800024d8 <_ZN6ThreadC1EPFvPvES0_>
    new Thread(&thread2FunctionTest2, 0);
    80001754:	00800513          	li	a0,8
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	cd8080e7          	jalr	-808(ra) # 80002430 <_Znwm>
    80001760:	00050913          	mv	s2,a0
    80001764:	00000613          	li	a2,0
    80001768:	00000597          	auipc	a1,0x0
    8000176c:	df458593          	addi	a1,a1,-524 # 8000155c <_Z20thread2FunctionTest2Pv>
    80001770:	00001097          	auipc	ra,0x1
    80001774:	d68080e7          	jalr	-664(ra) # 800024d8 <_ZN6ThreadC1EPFvPvES0_>

    Riscv::enableInterrupts();
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	eb4080e7          	jalr	-332(ra) # 8000262c <_ZN5Riscv16enableInterruptsEv>

    while(idleThread->myHandle->getState() != PCB::FINISHED);
    80001780:	0004b783          	ld	a5,0(s1)
    80001784:	0207a703          	lw	a4,32(a5)
    80001788:	00300793          	li	a5,3
    8000178c:	fef71ae3          	bne	a4,a5,80001780 <_Z11threadTest2v+0x8c>

    Riscv::printString("End...\n");
    80001790:	00005517          	auipc	a0,0x5
    80001794:	8d850513          	addi	a0,a0,-1832 # 80006068 <CONSOLE_STATUS+0x58>
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	f1c080e7          	jalr	-228(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>

    Riscv::disableInterrupts();
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	eac080e7          	jalr	-340(ra) # 8000264c <_ZN5Riscv17disableInterruptsEv>
}
    800017a8:	01813083          	ld	ra,24(sp)
    800017ac:	01013403          	ld	s0,16(sp)
    800017b0:	00813483          	ld	s1,8(sp)
    800017b4:	00013903          	ld	s2,0(sp)
    800017b8:	02010113          	addi	sp,sp,32
    800017bc:	00008067          	ret
    800017c0:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    800017c4:	00048513          	mv	a0,s1
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	c90080e7          	jalr	-880(ra) # 80002458 <_ZdlPv>
    800017d0:	00090513          	mv	a0,s2
    800017d4:	00007097          	auipc	ra,0x7
    800017d8:	ac4080e7          	jalr	-1340(ra) # 80008298 <_Unwind_Resume>
    800017dc:	00050493          	mv	s1,a0
    new Thread(&thread1Function, 0);
    800017e0:	00090513          	mv	a0,s2
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	c74080e7          	jalr	-908(ra) # 80002458 <_ZdlPv>
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00007097          	auipc	ra,0x7
    800017f4:	aa8080e7          	jalr	-1368(ra) # 80008298 <_Unwind_Resume>
    800017f8:	00050493          	mv	s1,a0
    new Thread(&thread2FunctionTest2, 0);
    800017fc:	00090513          	mv	a0,s2
    80001800:	00001097          	auipc	ra,0x1
    80001804:	c58080e7          	jalr	-936(ra) # 80002458 <_ZdlPv>
    80001808:	00048513          	mv	a0,s1
    8000180c:	00007097          	auipc	ra,0x7
    80001810:	a8c080e7          	jalr	-1396(ra) # 80008298 <_Unwind_Resume>

0000000080001814 <_Z11threadTestsv>:

void threadTests()
{
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
    //threadTest1();
    threadTest2();
    80001824:	00000097          	auipc	ra,0x0
    80001828:	ed0080e7          	jalr	-304(ra) # 800016f4 <_Z11threadTest2v>
}
    8000182c:	00813083          	ld	ra,8(sp)
    80001830:	00013403          	ld	s0,0(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret

000000008000183c <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    8000183c:	cc010113          	addi	sp,sp,-832
    80001840:	32113c23          	sd	ra,824(sp)
    80001844:	32813823          	sd	s0,816(sp)
    80001848:	32913423          	sd	s1,808(sp)
    8000184c:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001850:	00005517          	auipc	a0,0x5
    80001854:	82050513          	addi	a0,a0,-2016 # 80006070 <CONSOLE_STATUS+0x60>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	e5c080e7          	jalr	-420(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001860:	00000493          	li	s1,0
    80001864:	0080006f          	j	8000186c <_Z10mallocFreev+0x30>
    80001868:	0014849b          	addiw	s1,s1,1
    8000186c:	06300793          	li	a5,99
    80001870:	0497c463          	blt	a5,s1,800018b8 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    80001874:	06400513          	li	a0,100
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	9b0080e7          	jalr	-1616(ra) # 80001228 <mem_alloc>
    80001880:	00349793          	slli	a5,s1,0x3
    80001884:	fe040713          	addi	a4,s0,-32
    80001888:	00f707b3          	add	a5,a4,a5
    8000188c:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001890:	fc051ce3          	bnez	a0,80001868 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    80001894:	00004517          	auipc	a0,0x4
    80001898:	7ec50513          	addi	a0,a0,2028 # 80006080 <CONSOLE_STATUS+0x70>
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	e18080e7          	jalr	-488(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    800018a4:	33813083          	ld	ra,824(sp)
    800018a8:	33013403          	ld	s0,816(sp)
    800018ac:	32813483          	ld	s1,808(sp)
    800018b0:	34010113          	addi	sp,sp,832
    800018b4:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    800018b8:	00000493          	li	s1,0
    800018bc:	06300793          	li	a5,99
    800018c0:	0297ce63          	blt	a5,s1,800018fc <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    800018c4:	00349793          	slli	a5,s1,0x3
    800018c8:	fe040713          	addi	a4,s0,-32
    800018cc:	00f707b3          	add	a5,a4,a5
    800018d0:	ce07b503          	ld	a0,-800(a5)
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	984080e7          	jalr	-1660(ra) # 80001258 <mem_free>
        if(retval != 0)
    800018dc:	00051663          	bnez	a0,800018e8 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    800018e0:	0024849b          	addiw	s1,s1,2
    800018e4:	fd9ff06f          	j	800018bc <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	79850513          	addi	a0,a0,1944 # 80006080 <CONSOLE_STATUS+0x70>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	dc4080e7          	jalr	-572(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            return;
    800018f8:	fadff06f          	j	800018a4 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    800018fc:	00000493          	li	s1,0
    80001900:	0080006f          	j	80001908 <_Z10mallocFreev+0xcc>
    80001904:	0024849b          	addiw	s1,s1,2
    80001908:	06300793          	li	a5,99
    8000190c:	0297cc63          	blt	a5,s1,80001944 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001910:	01400513          	li	a0,20
    80001914:	00000097          	auipc	ra,0x0
    80001918:	914080e7          	jalr	-1772(ra) # 80001228 <mem_alloc>
    8000191c:	00349793          	slli	a5,s1,0x3
    80001920:	fe040713          	addi	a4,s0,-32
    80001924:	00f707b3          	add	a5,a4,a5
    80001928:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    8000192c:	fc051ce3          	bnez	a0,80001904 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001930:	00004517          	auipc	a0,0x4
    80001934:	75050513          	addi	a0,a0,1872 # 80006080 <CONSOLE_STATUS+0x70>
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	d7c080e7          	jalr	-644(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            return;
    80001940:	f65ff06f          	j	800018a4 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001944:	00000493          	li	s1,0
    80001948:	06300793          	li	a5,99
    8000194c:	0297ce63          	blt	a5,s1,80001988 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001950:	00349793          	slli	a5,s1,0x3
    80001954:	fe040713          	addi	a4,s0,-32
    80001958:	00f707b3          	add	a5,a4,a5
    8000195c:	ce07b503          	ld	a0,-800(a5)
    80001960:	00000097          	auipc	ra,0x0
    80001964:	8f8080e7          	jalr	-1800(ra) # 80001258 <mem_free>
        if(retval != 0)
    80001968:	00051663          	bnez	a0,80001974 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    8000196c:	0014849b          	addiw	s1,s1,1
    80001970:	fd9ff06f          	j	80001948 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001974:	00004517          	auipc	a0,0x4
    80001978:	70c50513          	addi	a0,a0,1804 # 80006080 <CONSOLE_STATUS+0x70>
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	d38080e7          	jalr	-712(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            return;
    80001984:	f21ff06f          	j	800018a4 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001988:	00004517          	auipc	a0,0x4
    8000198c:	70050513          	addi	a0,a0,1792 # 80006088 <CONSOLE_STATUS+0x78>
    80001990:	00001097          	auipc	ra,0x1
    80001994:	d24080e7          	jalr	-732(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    80001998:	f0dff06f          	j	800018a4 <_Z10mallocFreev+0x68>

000000008000199c <_Z9bigMallocv>:
void bigMalloc()
{
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    800019ac:	00004517          	auipc	a0,0x4
    800019b0:	6e450513          	addi	a0,a0,1764 # 80006090 <CONSOLE_STATUS+0x80>
    800019b4:	00001097          	auipc	ra,0x1
    800019b8:	d00080e7          	jalr	-768(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019bc:	00005797          	auipc	a5,0x5
    800019c0:	7847b783          	ld	a5,1924(a5) # 80007140 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019c4:	0007b503          	ld	a0,0(a5)
    800019c8:	00005797          	auipc	a5,0x5
    800019cc:	7487b783          	ld	a5,1864(a5) # 80007110 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019d0:	0007b783          	ld	a5,0(a5)
    800019d4:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    800019d8:	06450513          	addi	a0,a0,100
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	84c080e7          	jalr	-1972(ra) # 80001228 <mem_alloc>
    if(p == 0)
    800019e4:	02050263          	beqz	a0,80001a08 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    800019e8:	00004517          	auipc	a0,0x4
    800019ec:	69850513          	addi	a0,a0,1688 # 80006080 <CONSOLE_STATUS+0x70>
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	cc4080e7          	jalr	-828(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
}
    800019f8:	00813083          	ld	ra,8(sp)
    800019fc:	00013403          	ld	s0,0(sp)
    80001a00:	01010113          	addi	sp,sp,16
    80001a04:	00008067          	ret
        Riscv::printString("OK\n");
    80001a08:	00004517          	auipc	a0,0x4
    80001a0c:	68050513          	addi	a0,a0,1664 # 80006088 <CONSOLE_STATUS+0x78>
    80001a10:	00001097          	auipc	ra,0x1
    80001a14:	ca4080e7          	jalr	-860(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    80001a18:	fe1ff06f          	j	800019f8 <_Z9bigMallocv+0x5c>

0000000080001a1c <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001a1c:	fd010113          	addi	sp,sp,-48
    80001a20:	02113423          	sd	ra,40(sp)
    80001a24:	02813023          	sd	s0,32(sp)
    80001a28:	00913c23          	sd	s1,24(sp)
    80001a2c:	01213823          	sd	s2,16(sp)
    80001a30:	01313423          	sd	s3,8(sp)
    80001a34:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001a38:	00004517          	auipc	a0,0x4
    80001a3c:	66850513          	addi	a0,a0,1640 # 800060a0 <CONSOLE_STATUS+0x90>
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	c74080e7          	jalr	-908(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001a48:	00000493          	li	s1,0
    uint64 sum = 0;
    80001a4c:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001a50:	00000913          	li	s2,0
    80001a54:	0180006f          	j	80001a6c <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001a58:	00a00793          	li	a5,10
    80001a5c:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001a60:	00a98993          	addi	s3,s3,10
        cnt++;
    80001a64:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001a68:	00148493          	addi	s1,s1,1
    80001a6c:	000027b7          	lui	a5,0x2
    80001a70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a74:	0097ea63          	bltu	a5,s1,80001a88 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001a78:	00800513          	li	a0,8
    80001a7c:	fffff097          	auipc	ra,0xfffff
    80001a80:	7ac080e7          	jalr	1964(ra) # 80001228 <mem_alloc>
        if(t == 0)
    80001a84:	fc051ae3          	bnez	a0,80001a58 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001a88:	00090513          	mv	a0,s2
    80001a8c:	00001097          	auipc	ra,0x1
    80001a90:	c98080e7          	jalr	-872(ra) # 80002724 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001a94:	00004517          	auipc	a0,0x4
    80001a98:	7f450513          	addi	a0,a0,2036 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	c18080e7          	jalr	-1000(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001aa4:	00291793          	slli	a5,s2,0x2
    80001aa8:	01278933          	add	s2,a5,s2
    80001aac:	00191913          	slli	s2,s2,0x1
    80001ab0:	03390863          	beq	s2,s3,80001ae0 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001ab4:	00004517          	auipc	a0,0x4
    80001ab8:	5cc50513          	addi	a0,a0,1484 # 80006080 <CONSOLE_STATUS+0x70>
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	bf8080e7          	jalr	-1032(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
}
    80001ac4:	02813083          	ld	ra,40(sp)
    80001ac8:	02013403          	ld	s0,32(sp)
    80001acc:	01813483          	ld	s1,24(sp)
    80001ad0:	01013903          	ld	s2,16(sp)
    80001ad4:	00813983          	ld	s3,8(sp)
    80001ad8:	03010113          	addi	sp,sp,48
    80001adc:	00008067          	ret
        Riscv::printString("OK\n");
    80001ae0:	00004517          	auipc	a0,0x4
    80001ae4:	5a850513          	addi	a0,a0,1448 # 80006088 <CONSOLE_STATUS+0x78>
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	bcc080e7          	jalr	-1076(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    80001af0:	fd5ff06f          	j	80001ac4 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001af4 <_Z7badFreev>:
void badFree()
{
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00113423          	sd	ra,8(sp)
    80001afc:	00813023          	sd	s0,0(sp)
    80001b00:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001b04:	00004517          	auipc	a0,0x4
    80001b08:	5b450513          	addi	a0,a0,1460 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	ba8080e7          	jalr	-1112(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001b14:	00800513          	li	a0,8
    80001b18:	fffff097          	auipc	ra,0xfffff
    80001b1c:	710080e7          	jalr	1808(ra) # 80001228 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001b20:	00250513          	addi	a0,a0,2
    80001b24:	fffff097          	auipc	ra,0xfffff
    80001b28:	734080e7          	jalr	1844(ra) # 80001258 <mem_free>
    if(retval == 0)
    80001b2c:	02051263          	bnez	a0,80001b50 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001b30:	00004517          	auipc	a0,0x4
    80001b34:	55050513          	addi	a0,a0,1360 # 80006080 <CONSOLE_STATUS+0x70>
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	b7c080e7          	jalr	-1156(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret
        Riscv::printString("OK\n");
    80001b50:	00004517          	auipc	a0,0x4
    80001b54:	53850513          	addi	a0,a0,1336 # 80006088 <CONSOLE_STATUS+0x78>
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	b5c080e7          	jalr	-1188(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
}
    80001b60:	fe1ff06f          	j	80001b40 <_Z7badFreev+0x4c>

0000000080001b64 <_Z13stressTestingv>:

void stressTesting()
{
    80001b64:	cb010113          	addi	sp,sp,-848
    80001b68:	34113423          	sd	ra,840(sp)
    80001b6c:	34813023          	sd	s0,832(sp)
    80001b70:	32913c23          	sd	s1,824(sp)
    80001b74:	33213823          	sd	s2,816(sp)
    80001b78:	33313423          	sd	s3,808(sp)
    80001b7c:	35010413          	addi	s0,sp,848
    Riscv::printString("stressTesting\n");
    80001b80:	00004517          	auipc	a0,0x4
    80001b84:	54850513          	addi	a0,a0,1352 # 800060c8 <CONSOLE_STATUS+0xb8>
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	b2c080e7          	jalr	-1236(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001b90:	00000493          	li	s1,0
    80001b94:	0080006f          	j	80001b9c <_Z13stressTestingv+0x38>
    80001b98:	0014849b          	addiw	s1,s1,1
    80001b9c:	06300793          	li	a5,99
    80001ba0:	0497c863          	blt	a5,s1,80001bf0 <_Z13stressTestingv+0x8c>
    {
        addrs[i] = mem_alloc(1);
    80001ba4:	00100513          	li	a0,1
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	680080e7          	jalr	1664(ra) # 80001228 <mem_alloc>
    80001bb0:	00349793          	slli	a5,s1,0x3
    80001bb4:	fd040713          	addi	a4,s0,-48
    80001bb8:	00f707b3          	add	a5,a4,a5
    80001bbc:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bc0:	fc051ce3          	bnez	a0,80001b98 <_Z13stressTestingv+0x34>
        {
            Riscv::printString("not OK\n");
    80001bc4:	00004517          	auipc	a0,0x4
    80001bc8:	4bc50513          	addi	a0,a0,1212 # 80006080 <CONSOLE_STATUS+0x70>
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	ae8080e7          	jalr	-1304(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
        }
        sz-=10;
    }

    Riscv::printString("OK\n");
}
    80001bd4:	34813083          	ld	ra,840(sp)
    80001bd8:	34013403          	ld	s0,832(sp)
    80001bdc:	33813483          	ld	s1,824(sp)
    80001be0:	33013903          	ld	s2,816(sp)
    80001be4:	32813983          	ld	s3,808(sp)
    80001be8:	35010113          	addi	sp,sp,848
    80001bec:	00008067          	ret
    int sz = 5;
    80001bf0:	00500913          	li	s2,5
    while(sz > 0)
    80001bf4:	19205e63          	blez	s2,80001d90 <_Z13stressTestingv+0x22c>
        Riscv::printString("sz : ");
    80001bf8:	00004517          	auipc	a0,0x4
    80001bfc:	4e050513          	addi	a0,a0,1248 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001c00:	00001097          	auipc	ra,0x1
    80001c04:	ab4080e7          	jalr	-1356(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(sz);
    80001c08:	00090993          	mv	s3,s2
    80001c0c:	00090513          	mv	a0,s2
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	b14080e7          	jalr	-1260(ra) # 80002724 <_ZN5Riscv12printIntegerEm>
        for(int i = 0 ; i < num;i+=2)
    80001c18:	00000493          	li	s1,0
    80001c1c:	06300793          	li	a5,99
    80001c20:	0a97ca63          	blt	a5,s1,80001cd4 <_Z13stressTestingv+0x170>
            Riscv::printString("i : ");
    80001c24:	00004517          	auipc	a0,0x4
    80001c28:	41c50513          	addi	a0,a0,1052 # 80006040 <CONSOLE_STATUS+0x30>
    80001c2c:	00001097          	auipc	ra,0x1
    80001c30:	a88080e7          	jalr	-1400(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001c34:	00048513          	mv	a0,s1
    80001c38:	00001097          	auipc	ra,0x1
    80001c3c:	aec080e7          	jalr	-1300(ra) # 80002724 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001c40:	00004517          	auipc	a0,0x4
    80001c44:	4a050513          	addi	a0,a0,1184 # 800060e0 <CONSOLE_STATUS+0xd0>
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	a6c080e7          	jalr	-1428(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001c50:	00349793          	slli	a5,s1,0x3
    80001c54:	fd040713          	addi	a4,s0,-48
    80001c58:	00f707b3          	add	a5,a4,a5
    80001c5c:	ce07b503          	ld	a0,-800(a5)
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	5f8080e7          	jalr	1528(ra) # 80001258 <mem_free>
            if(retval != 0)
    80001c68:	04051263          	bnez	a0,80001cac <_Z13stressTestingv+0x148>
            Riscv::printString("alloc\n");
    80001c6c:	00004517          	auipc	a0,0x4
    80001c70:	47c50513          	addi	a0,a0,1148 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001c74:	00001097          	auipc	ra,0x1
    80001c78:	a40080e7          	jalr	-1472(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz/2);
    80001c7c:	01f9551b          	srliw	a0,s2,0x1f
    80001c80:	0125053b          	addw	a0,a0,s2
    80001c84:	4015551b          	sraiw	a0,a0,0x1
    80001c88:	fffff097          	auipc	ra,0xfffff
    80001c8c:	5a0080e7          	jalr	1440(ra) # 80001228 <mem_alloc>
    80001c90:	00349793          	slli	a5,s1,0x3
    80001c94:	fd040713          	addi	a4,s0,-48
    80001c98:	00f707b3          	add	a5,a4,a5
    80001c9c:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001ca0:	02050063          	beqz	a0,80001cc0 <_Z13stressTestingv+0x15c>
        for(int i = 0 ; i < num;i+=2)
    80001ca4:	0024849b          	addiw	s1,s1,2
    80001ca8:	f75ff06f          	j	80001c1c <_Z13stressTestingv+0xb8>
                Riscv::printString("not OK\n");
    80001cac:	00004517          	auipc	a0,0x4
    80001cb0:	3d450513          	addi	a0,a0,980 # 80006080 <CONSOLE_STATUS+0x70>
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	a00080e7          	jalr	-1536(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
                return;
    80001cbc:	f19ff06f          	j	80001bd4 <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001cc0:	00004517          	auipc	a0,0x4
    80001cc4:	43050513          	addi	a0,a0,1072 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001cc8:	00001097          	auipc	ra,0x1
    80001ccc:	9ec080e7          	jalr	-1556(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
                return;
    80001cd0:	f05ff06f          	j	80001bd4 <_Z13stressTestingv+0x70>
        for(int i = 1 ; i < num;i+=2)
    80001cd4:	00100493          	li	s1,1
    80001cd8:	06300793          	li	a5,99
    80001cdc:	0a97c663          	blt	a5,s1,80001d88 <_Z13stressTestingv+0x224>
            Riscv::printString("i : ");
    80001ce0:	00004517          	auipc	a0,0x4
    80001ce4:	36050513          	addi	a0,a0,864 # 80006040 <CONSOLE_STATUS+0x30>
    80001ce8:	00001097          	auipc	ra,0x1
    80001cec:	9cc080e7          	jalr	-1588(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001cf0:	00048513          	mv	a0,s1
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	a30080e7          	jalr	-1488(ra) # 80002724 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001cfc:	00004517          	auipc	a0,0x4
    80001d00:	3e450513          	addi	a0,a0,996 # 800060e0 <CONSOLE_STATUS+0xd0>
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	9b0080e7          	jalr	-1616(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001d0c:	00349793          	slli	a5,s1,0x3
    80001d10:	fd040713          	addi	a4,s0,-48
    80001d14:	00f707b3          	add	a5,a4,a5
    80001d18:	ce07b503          	ld	a0,-800(a5)
    80001d1c:	fffff097          	auipc	ra,0xfffff
    80001d20:	53c080e7          	jalr	1340(ra) # 80001258 <mem_free>
            if(retval != 0)
    80001d24:	02051e63          	bnez	a0,80001d60 <_Z13stressTestingv+0x1fc>
            Riscv::printString("alloc\n");
    80001d28:	00004517          	auipc	a0,0x4
    80001d2c:	3c050513          	addi	a0,a0,960 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	984080e7          	jalr	-1660(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz);
    80001d38:	00098513          	mv	a0,s3
    80001d3c:	fffff097          	auipc	ra,0xfffff
    80001d40:	4ec080e7          	jalr	1260(ra) # 80001228 <mem_alloc>
    80001d44:	00349793          	slli	a5,s1,0x3
    80001d48:	fd040713          	addi	a4,s0,-48
    80001d4c:	00f707b3          	add	a5,a4,a5
    80001d50:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001d54:	02050063          	beqz	a0,80001d74 <_Z13stressTestingv+0x210>
        for(int i = 1 ; i < num;i+=2)
    80001d58:	0024849b          	addiw	s1,s1,2
    80001d5c:	f7dff06f          	j	80001cd8 <_Z13stressTestingv+0x174>
                Riscv::printString("not OK\n");
    80001d60:	00004517          	auipc	a0,0x4
    80001d64:	32050513          	addi	a0,a0,800 # 80006080 <CONSOLE_STATUS+0x70>
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	94c080e7          	jalr	-1716(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
                return;
    80001d70:	e65ff06f          	j	80001bd4 <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001d74:	00004517          	auipc	a0,0x4
    80001d78:	37c50513          	addi	a0,a0,892 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001d7c:	00001097          	auipc	ra,0x1
    80001d80:	938080e7          	jalr	-1736(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
                return;
    80001d84:	e51ff06f          	j	80001bd4 <_Z13stressTestingv+0x70>
        sz-=10;
    80001d88:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001d8c:	e69ff06f          	j	80001bf4 <_Z13stressTestingv+0x90>
    Riscv::printString("OK\n");
    80001d90:	00004517          	auipc	a0,0x4
    80001d94:	2f850513          	addi	a0,a0,760 # 80006088 <CONSOLE_STATUS+0x78>
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	91c080e7          	jalr	-1764(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    80001da0:	e35ff06f          	j	80001bd4 <_Z13stressTestingv+0x70>

0000000080001da4 <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
    stressTesting();
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	db0080e7          	jalr	-592(ra) # 80001b64 <_Z13stressTestingv>
}
    80001dbc:	00813083          	ld	ra,8(sp)
    80001dc0:	00013403          	ld	s0,0(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    80001dcc:	fe010113          	addi	sp,sp,-32
    80001dd0:	00113c23          	sd	ra,24(sp)
    80001dd4:	00813823          	sd	s0,16(sp)
    80001dd8:	00913423          	sd	s1,8(sp)
    80001ddc:	02010413          	addi	s0,sp,32
    Riscv::printString("Runner started...\n");
    80001de0:	00004517          	auipc	a0,0x4
    80001de4:	31850513          	addi	a0,a0,792 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	8cc080e7          	jalr	-1844(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	8a4080e7          	jalr	-1884(ra) # 80002694 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001df8:	00005497          	auipc	s1,0x5
    80001dfc:	39848493          	addi	s1,s1,920 # 80007190 <_ZN3PCB7runningE>
    80001e00:	0004b783          	ld	a5,0(s1)
    80001e04:	0087b703          	ld	a4,8(a5)
    80001e08:	0107b503          	ld	a0,16(a5)
    80001e0c:	000700e7          	jalr	a4
    running->setState(PCB::FINISHED);
    80001e10:	0004b783          	ld	a5,0(s1)
    void setState(State s) {state = s;}
    80001e14:	00300713          	li	a4,3
    80001e18:	02e7a023          	sw	a4,32(a5)
    Riscv::printString("Thread finished\n");
    80001e1c:	00004517          	auipc	a0,0x4
    80001e20:	2f450513          	addi	a0,a0,756 # 80006110 <CONSOLE_STATUS+0x100>
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	890080e7          	jalr	-1904(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    //thread_exit();
    thread_dispatch();
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	4d8080e7          	jalr	1240(ra) # 80001304 <thread_dispatch>
}
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret

0000000080001e48 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00113423          	sd	ra,8(sp)
    80001e50:	00813023          	sd	s0,0(sp)
    80001e54:	01010413          	addi	s0,sp,16
    })
    80001e58:	00e53023          	sd	a4,0(a0)
    80001e5c:	00b53423          	sd	a1,8(a0)
    80001e60:	00c53823          	sd	a2,16(a0)
    80001e64:	00d53c23          	sd	a3,24(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001e68:	00001737          	lui	a4,0x1
    80001e6c:	00e686b3          	add	a3,a3,a4
    })
    80001e70:	02d53423          	sd	a3,40(a0)
    80001e74:	00000717          	auipc	a4,0x0
    80001e78:	f5870713          	addi	a4,a4,-168 # 80001dcc <_ZN3PCB6runnerEv>
    80001e7c:	02e53823          	sd	a4,48(a0)
    Scheduler::put(this);
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	398080e7          	jalr	920(ra) # 80002218 <_ZN9Scheduler3putEP3PCB>
}
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN3PCB5sleepEm>:
{
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00813423          	sd	s0,8(sp)
    80001ea0:	01010413          	addi	s0,sp,16
}
    80001ea4:	00813403          	ld	s0,8(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN3PCB5startEv>:
{
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00113423          	sd	ra,8(sp)
    80001eb8:	00813023          	sd	s0,0(sp)
    80001ebc:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	358080e7          	jalr	856(ra) # 80002218 <_ZN9Scheduler3putEP3PCB>
}
    80001ec8:	00813083          	ld	ra,8(sp)
    80001ecc:	00013403          	ld	s0,0(sp)
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret

0000000080001ed8 <_ZN3PCBnwEm>:
        PCB::contextSwitchExiting(&running->context);
    }

}

void *PCB::operator new(size_t size) {
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	00813023          	sd	s0,0(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	f1c080e7          	jalr	-228(ra) # 80002e04 <_Z7kmallocm>
}
    80001ef0:	00813083          	ld	ra,8(sp)
    80001ef4:	00013403          	ld	s0,0(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	00008067          	ret

0000000080001f00 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00113423          	sd	ra,8(sp)
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	f1c080e7          	jalr	-228(ra) # 80002e2c <_Z5kfreePv>
}
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00113423          	sd	ra,8(sp)
    80001f30:	00813023          	sd	s0,0(sp)
    80001f34:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80001f38:	01853503          	ld	a0,24(a0)
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	ef0080e7          	jalr	-272(ra) # 80002e2c <_Z5kfreePv>
}
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZN3PCB8dispatchEv>:
{
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	01213023          	sd	s2,0(sp)
    80001f68:	02010413          	addi	s0,sp,32
    Riscv::printString("Dispatch called...\n");
    80001f6c:	00004517          	auipc	a0,0x4
    80001f70:	1bc50513          	addi	a0,a0,444 # 80006128 <CONSOLE_STATUS+0x118>
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	740080e7          	jalr	1856(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    PCB* old = running;
    80001f7c:	00005917          	auipc	s2,0x5
    80001f80:	21493903          	ld	s2,532(s2) # 80007190 <_ZN3PCB7runningE>
    State getState() {return state;}
    80001f84:	02092703          	lw	a4,32(s2)
    if(old->getState() == PCB::RUNNING)
    80001f88:	00100793          	li	a5,1
    80001f8c:	08f70263          	beq	a4,a5,80002010 <_ZN3PCB8dispatchEv+0xbc>
    PCB::running = Scheduler::get();
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	328080e7          	jalr	808(ra) # 800022b8 <_ZN9Scheduler3getEv>
    80001f98:	00005497          	auipc	s1,0x5
    80001f9c:	1f848493          	addi	s1,s1,504 # 80007190 <_ZN3PCB7runningE>
    80001fa0:	00a4b023          	sd	a0,0(s1)
    void setState(State s) {state = s;}
    80001fa4:	00100793          	li	a5,1
    80001fa8:	02f52023          	sw	a5,32(a0)
    Riscv::printString("Switching context...\n");
    80001fac:	00004517          	auipc	a0,0x4
    80001fb0:	19450513          	addi	a0,a0,404 # 80006140 <CONSOLE_STATUS+0x130>
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	700080e7          	jalr	1792(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
    if(PCB::exitingPCB == 0)
    80001fbc:	0084b483          	ld	s1,8(s1)
    80001fc0:	06048063          	beqz	s1,80002020 <_ZN3PCB8dispatchEv+0xcc>
        delete PCB::exitingPCB;
    80001fc4:	00048513          	mv	a0,s1
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	f60080e7          	jalr	-160(ra) # 80001f28 <_ZN3PCBD1Ev>
    80001fd0:	00048513          	mv	a0,s1
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	f2c080e7          	jalr	-212(ra) # 80001f00 <_ZN3PCBdlEPv>
        PCB::exitingPCB = 0;
    80001fdc:	00005797          	auipc	a5,0x5
    80001fe0:	1b478793          	addi	a5,a5,436 # 80007190 <_ZN3PCB7runningE>
    80001fe4:	0007b423          	sd	zero,8(a5)
        PCB::contextSwitchExiting(&running->context);
    80001fe8:	0007b503          	ld	a0,0(a5)
    80001fec:	02850513          	addi	a0,a0,40
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	22c080e7          	jalr	556(ra) # 8000121c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>
}
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	01013403          	ld	s0,16(sp)
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	00013903          	ld	s2,0(sp)
    80002008:	02010113          	addi	sp,sp,32
    8000200c:	00008067          	ret
        Scheduler::put(old);
    80002010:	00090513          	mv	a0,s2
    80002014:	00000097          	auipc	ra,0x0
    80002018:	204080e7          	jalr	516(ra) # 80002218 <_ZN9Scheduler3putEP3PCB>
    8000201c:	f75ff06f          	j	80001f90 <_ZN3PCB8dispatchEv+0x3c>
        PCB::contextSwitch(&old->context, &running->context);
    80002020:	00005597          	auipc	a1,0x5
    80002024:	1705b583          	ld	a1,368(a1) # 80007190 <_ZN3PCB7runningE>
    80002028:	02858593          	addi	a1,a1,40
    8000202c:	02890513          	addi	a0,s2,40
    80002030:	fffff097          	auipc	ra,0xfffff
    80002034:	1d8080e7          	jalr	472(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    80002038:	fc1ff06f          	j	80001ff8 <_ZN3PCB8dispatchEv+0xa4>

000000008000203c <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.h"

void Queue::pop() {
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	00913423          	sd	s1,8(sp)
    8000204c:	01213023          	sd	s2,0(sp)
    80002050:	02010413          	addi	s0,sp,32
    80002054:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002058:	00053503          	ld	a0,0(a0)
    8000205c:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002060:	00001097          	auipc	ra,0x1
    80002064:	dcc080e7          	jalr	-564(ra) # 80002e2c <_Z5kfreePv>
    first = newFirst;
    80002068:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    8000206c:	00090e63          	beqz	s2,80002088 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002070:	01813083          	ld	ra,24(sp)
    80002074:	01013403          	ld	s0,16(sp)
    80002078:	00813483          	ld	s1,8(sp)
    8000207c:	00013903          	ld	s2,0(sp)
    80002080:	02010113          	addi	sp,sp,32
    80002084:	00008067          	ret
        first = last = 0;
    80002088:	0004b423          	sd	zero,8(s1)
    8000208c:	0004b023          	sd	zero,0(s1)
}
    80002090:	fe1ff06f          	j	80002070 <_ZN5Queue3popEv+0x34>

0000000080002094 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002094:	fe010113          	addi	sp,sp,-32
    80002098:	00113c23          	sd	ra,24(sp)
    8000209c:	00813823          	sd	s0,16(sp)
    800020a0:	00913423          	sd	s1,8(sp)
    800020a4:	01213023          	sd	s2,0(sp)
    800020a8:	02010413          	addi	s0,sp,32
    800020ac:	00050493          	mv	s1,a0
    800020b0:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800020b4:	01000513          	li	a0,16
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	d4c080e7          	jalr	-692(ra) # 80002e04 <_Z7kmallocm>
    newElem->data = t;
    800020c0:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800020c4:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800020c8:	0004b783          	ld	a5,0(s1)
    800020cc:	02078463          	beqz	a5,800020f4 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800020d0:	0084b783          	ld	a5,8(s1)
    800020d4:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800020d8:	00a4b423          	sd	a0,8(s1)
    }
}
    800020dc:	01813083          	ld	ra,24(sp)
    800020e0:	01013403          	ld	s0,16(sp)
    800020e4:	00813483          	ld	s1,8(sp)
    800020e8:	00013903          	ld	s2,0(sp)
    800020ec:	02010113          	addi	sp,sp,32
    800020f0:	00008067          	ret
        first = newElem;
    800020f4:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800020f8:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800020fc:	00053423          	sd	zero,8(a0)
    80002100:	0004b783          	ld	a5,0(s1)
    80002104:	0007b423          	sd	zero,8(a5)
    80002108:	fd5ff06f          	j	800020dc <_ZN5Queue4pushEP3PCB+0x48>

000000008000210c <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00813423          	sd	s0,8(sp)
    80002114:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002118:	00053503          	ld	a0,0(a0)
    8000211c:	00050463          	beqz	a0,80002124 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002120:	00053503          	ld	a0,0(a0)
}
    80002124:	00813403          	ld	s0,8(sp)
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00008067          	ret

0000000080002130 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00813423          	sd	s0,8(sp)
    80002138:	01010413          	addi	s0,sp,16
    first = last = 0;
    8000213c:	00053423          	sd	zero,8(a0)
    80002140:	00053023          	sd	zero,0(a0)
}
    80002144:	00813403          	ld	s0,8(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002150:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002154:	04050063          	beqz	a0,80002194 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00113c23          	sd	ra,24(sp)
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	02010413          	addi	s0,sp,32
    {
        //todo
        //vrati ovo
        //sad je zakomentarisano zbog kfree
        Elem* old = curr;
        curr = curr->next;
    8000216c:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002170:	00001097          	auipc	ra,0x1
    80002174:	cbc080e7          	jalr	-836(ra) # 80002e2c <_Z5kfreePv>
        curr = curr->next;
    80002178:	00048513          	mv	a0,s1
    while(curr != 0)
    8000217c:	fe0498e3          	bnez	s1,8000216c <_ZN5QueueD1Ev+0x1c>
    }
}
    80002180:	01813083          	ld	ra,24(sp)
    80002184:	01013403          	ld	s0,16(sp)
    80002188:	00813483          	ld	s1,8(sp)
    8000218c:	02010113          	addi	sp,sp,32
    80002190:	00008067          	ret
    80002194:	00008067          	ret

0000000080002198 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00813423          	sd	s0,8(sp)
    800021a0:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800021a4:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800021a8:	00000513          	li	a0,0
    while(curr != 0)
    800021ac:	00078863          	beqz	a5,800021bc <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800021b0:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800021b4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800021b8:	ff5ff06f          	j	800021ac <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800021bc:	00813403          	ld	s0,8(sp)
    800021c0:	01010113          	addi	sp,sp,16
    800021c4:	00008067          	ret

00000000800021c8 <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00113423          	sd	ra,8(sp)
    800021d0:	00813023          	sd	s0,0(sp)
    800021d4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	c2c080e7          	jalr	-980(ra) # 80002e04 <_Z7kmallocm>
}
    800021e0:	00813083          	ld	ra,8(sp)
    800021e4:	00013403          	ld	s0,0(sp)
    800021e8:	01010113          	addi	sp,sp,16
    800021ec:	00008067          	ret

00000000800021f0 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    800021f0:	ff010113          	addi	sp,sp,-16
    800021f4:	00113423          	sd	ra,8(sp)
    800021f8:	00813023          	sd	s0,0(sp)
    800021fc:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    80002200:	00001097          	auipc	ra,0x1
    80002204:	c2c080e7          	jalr	-980(ra) # 80002e2c <_Z5kfreePv>
}
    80002208:	00813083          	ld	ra,8(sp)
    8000220c:	00013403          	ld	s0,0(sp)
    80002210:	01010113          	addi	sp,sp,16
    80002214:	00008067          	ret

0000000080002218 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    80002218:	fe010113          	addi	sp,sp,-32
    8000221c:	00113c23          	sd	ra,24(sp)
    80002220:	00813823          	sd	s0,16(sp)
    80002224:	00913423          	sd	s1,8(sp)
    80002228:	01213023          	sd	s2,0(sp)
    8000222c:	02010413          	addi	s0,sp,32
    80002230:	00050493          	mv	s1,a0
    80002234:	02052023          	sw	zero,32(a0)
    if(scheduler == 0)
    80002238:	00005797          	auipc	a5,0x5
    8000223c:	f707b783          	ld	a5,-144(a5) # 800071a8 <_ZN9Scheduler9schedulerE>
    80002240:	02078863          	beqz	a5,80002270 <_ZN9Scheduler3putEP3PCB+0x58>
    scheduler->queuePCB.push(pcb);
    80002244:	00048593          	mv	a1,s1
    80002248:	00005517          	auipc	a0,0x5
    8000224c:	f6053503          	ld	a0,-160(a0) # 800071a8 <_ZN9Scheduler9schedulerE>
    80002250:	00000097          	auipc	ra,0x0
    80002254:	e44080e7          	jalr	-444(ra) # 80002094 <_ZN5Queue4pushEP3PCB>
}
    80002258:	01813083          	ld	ra,24(sp)
    8000225c:	01013403          	ld	s0,16(sp)
    80002260:	00813483          	ld	s1,8(sp)
    80002264:	00013903          	ld	s2,0(sp)
    80002268:	02010113          	addi	sp,sp,32
    8000226c:	00008067          	ret
        scheduler = new Scheduler();
    80002270:	01000513          	li	a0,16
    80002274:	00000097          	auipc	ra,0x0
    80002278:	f54080e7          	jalr	-172(ra) # 800021c8 <_ZN9SchedulernwEm>
    8000227c:	00050913          	mv	s2,a0
    80002280:	00053023          	sd	zero,0(a0)
    80002284:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	ea8080e7          	jalr	-344(ra) # 80002130 <_ZN5QueueC1Ev>
    80002290:	00005797          	auipc	a5,0x5
    80002294:	f127bc23          	sd	s2,-232(a5) # 800071a8 <_ZN9Scheduler9schedulerE>
    80002298:	fadff06f          	j	80002244 <_ZN9Scheduler3putEP3PCB+0x2c>
    8000229c:	00050493          	mv	s1,a0
    800022a0:	00090513          	mv	a0,s2
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	f4c080e7          	jalr	-180(ra) # 800021f0 <_ZN9SchedulerdlEPv>
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00006097          	auipc	ra,0x6
    800022b4:	fe8080e7          	jalr	-24(ra) # 80008298 <_Unwind_Resume>

00000000800022b8 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800022b8:	fe010113          	addi	sp,sp,-32
    800022bc:	00113c23          	sd	ra,24(sp)
    800022c0:	00813823          	sd	s0,16(sp)
    800022c4:	00913423          	sd	s1,8(sp)
    800022c8:	01213023          	sd	s2,0(sp)
    800022cc:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    800022d0:	00005797          	auipc	a5,0x5
    800022d4:	ed87b783          	ld	a5,-296(a5) # 800071a8 <_ZN9Scheduler9schedulerE>
    800022d8:	04078263          	beqz	a5,8000231c <_ZN9Scheduler3getEv+0x64>
    PCB* fr = scheduler->queuePCB.front();
    800022dc:	00005917          	auipc	s2,0x5
    800022e0:	ecc90913          	addi	s2,s2,-308 # 800071a8 <_ZN9Scheduler9schedulerE>
    800022e4:	00093503          	ld	a0,0(s2)
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	e24080e7          	jalr	-476(ra) # 8000210c <_ZN5Queue5frontEv>
    800022f0:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    800022f4:	00093503          	ld	a0,0(s2)
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	d44080e7          	jalr	-700(ra) # 8000203c <_ZN5Queue3popEv>
}
    80002300:	00048513          	mv	a0,s1
    80002304:	01813083          	ld	ra,24(sp)
    80002308:	01013403          	ld	s0,16(sp)
    8000230c:	00813483          	ld	s1,8(sp)
    80002310:	00013903          	ld	s2,0(sp)
    80002314:	02010113          	addi	sp,sp,32
    80002318:	00008067          	ret
        scheduler = new Scheduler();
    8000231c:	01000513          	li	a0,16
    80002320:	00000097          	auipc	ra,0x0
    80002324:	ea8080e7          	jalr	-344(ra) # 800021c8 <_ZN9SchedulernwEm>
    80002328:	00050493          	mv	s1,a0
    8000232c:	00053023          	sd	zero,0(a0)
    80002330:	00053423          	sd	zero,8(a0)
    80002334:	00000097          	auipc	ra,0x0
    80002338:	dfc080e7          	jalr	-516(ra) # 80002130 <_ZN5QueueC1Ev>
    8000233c:	00005797          	auipc	a5,0x5
    80002340:	e697b623          	sd	s1,-404(a5) # 800071a8 <_ZN9Scheduler9schedulerE>
    80002344:	f99ff06f          	j	800022dc <_ZN9Scheduler3getEv+0x24>
    80002348:	00050913          	mv	s2,a0
    8000234c:	00048513          	mv	a0,s1
    80002350:	00000097          	auipc	ra,0x0
    80002354:	ea0080e7          	jalr	-352(ra) # 800021f0 <_ZN9SchedulerdlEPv>
    80002358:	00090513          	mv	a0,s2
    8000235c:	00006097          	auipc	ra,0x6
    80002360:	f3c080e7          	jalr	-196(ra) # 80008298 <_Unwind_Resume>

0000000080002364 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    80002364:	fe010113          	addi	sp,sp,-32
    80002368:	00113c23          	sd	ra,24(sp)
    8000236c:	00813823          	sd	s0,16(sp)
    80002370:	00913423          	sd	s1,8(sp)
    80002374:	01213023          	sd	s2,0(sp)
    80002378:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    8000237c:	00005797          	auipc	a5,0x5
    80002380:	e2c7b783          	ld	a5,-468(a5) # 800071a8 <_ZN9Scheduler9schedulerE>
    80002384:	02078663          	beqz	a5,800023b0 <_ZN9Scheduler7getSizeEv+0x4c>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    80002388:	00005517          	auipc	a0,0x5
    8000238c:	e2053503          	ld	a0,-480(a0) # 800071a8 <_ZN9Scheduler9schedulerE>
    80002390:	00000097          	auipc	ra,0x0
    80002394:	e08080e7          	jalr	-504(ra) # 80002198 <_ZN5Queue4sizeEv>
}
    80002398:	01813083          	ld	ra,24(sp)
    8000239c:	01013403          	ld	s0,16(sp)
    800023a0:	00813483          	ld	s1,8(sp)
    800023a4:	00013903          	ld	s2,0(sp)
    800023a8:	02010113          	addi	sp,sp,32
    800023ac:	00008067          	ret
        scheduler = new Scheduler();
    800023b0:	01000513          	li	a0,16
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	e14080e7          	jalr	-492(ra) # 800021c8 <_ZN9SchedulernwEm>
    800023bc:	00050493          	mv	s1,a0
    800023c0:	00053023          	sd	zero,0(a0)
    800023c4:	00053423          	sd	zero,8(a0)
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	d68080e7          	jalr	-664(ra) # 80002130 <_ZN5QueueC1Ev>
    800023d0:	00005797          	auipc	a5,0x5
    800023d4:	dc97bc23          	sd	s1,-552(a5) # 800071a8 <_ZN9Scheduler9schedulerE>
    800023d8:	fb1ff06f          	j	80002388 <_ZN9Scheduler7getSizeEv+0x24>
    800023dc:	00050913          	mv	s2,a0
    800023e0:	00048513          	mv	a0,s1
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	e0c080e7          	jalr	-500(ra) # 800021f0 <_ZN9SchedulerdlEPv>
    800023ec:	00090513          	mv	a0,s2
    800023f0:	00006097          	auipc	ra,0x6
    800023f4:	ea8080e7          	jalr	-344(ra) # 80008298 <_Unwind_Resume>

00000000800023f8 <main>:
#include "../lib/console.h"
#include "../h/Riscv.h"
#include "../h/Tests.h"

void main()
{
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00113423          	sd	ra,8(sp)
    80002400:	00813023          	sd	s0,0(sp)
    80002404:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	190080e7          	jalr	400(ra) # 80002598 <_ZN5Riscv10initSystemEv>
    //Riscv::enableInterrupts();

    //memoryAllocationTests();
    threadTests();
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	404080e7          	jalr	1028(ra) # 80001814 <_Z11threadTestsv>
    //testQueue();

    Riscv::endSystem();
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	254080e7          	jalr	596(ra) # 8000266c <_ZN5Riscv9endSystemEv>
    80002420:	00813083          	ld	ra,8(sp)
    80002424:	00013403          	ld	s0,0(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	de8080e7          	jalr	-536(ra) # 80001228 <mem_alloc>
}
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZdlPv>:

void operator delete(void * p)
{
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00113423          	sd	ra,8(sp)
    80002460:	00813023          	sd	s0,0(sp)
    80002464:	01010413          	addi	s0,sp,16
   mem_free(p);
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	df0080e7          	jalr	-528(ra) # 80001258 <mem_free>
}
    80002470:	00813083          	ld	ra,8(sp)
    80002474:	00013403          	ld	s0,0(sp)
    80002478:	01010113          	addi	sp,sp,16
    8000247c:	00008067          	ret

0000000080002480 <_ZN6Thread5startEv>:

//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00813423          	sd	s0,8(sp)
    80002488:	01010413          	addi	s0,sp,16

}
    8000248c:	00813403          	ld	s0,8(sp)
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	00813023          	sd	s0,0(sp)
    800024a4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800024a8:	fffff097          	auipc	ra,0xfffff
    800024ac:	e5c080e7          	jalr	-420(ra) # 80001304 <thread_dispatch>
}
    800024b0:	00813083          	ld	ra,8(sp)
    800024b4:	00013403          	ld	s0,0(sp)
    800024b8:	01010113          	addi	sp,sp,16
    800024bc:	00008067          	ret

00000000800024c0 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00813423          	sd	s0,8(sp)
    800024c8:	01010413          	addi	s0,sp,16
    //PCB::sleep(time);
}
    800024cc:	00813403          	ld	s0,8(sp)
    800024d0:	01010113          	addi	sp,sp,16
    800024d4:	00008067          	ret

00000000800024d8 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    800024d8:	ff010113          	addi	sp,sp,-16
    800024dc:	00113423          	sd	ra,8(sp)
    800024e0:	00813023          	sd	s0,0(sp)
    800024e4:	01010413          	addi	s0,sp,16
    int retval = thread_create((void**)&myHandle, body, args);
    800024e8:	fffff097          	auipc	ra,0xfffff
    800024ec:	d9c080e7          	jalr	-612(ra) # 80001284 <thread_create>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800024f0:	00813083          	ld	ra,8(sp)
    800024f4:	00013403          	ld	s0,0(sp)
    800024f8:	01010113          	addi	sp,sp,16
    800024fc:	00008067          	ret

0000000080002500 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00813423          	sd	s0,8(sp)
    80002508:	01010413          	addi	s0,sp,16

}
    8000250c:	00813403          	ld	s0,8(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <_ZN9Semaphore4waitEv>:

//Semaphore

void Semaphore::wait() {
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00113423          	sd	ra,8(sp)
    80002520:	00813023          	sd	s0,0(sp)
    80002524:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    80002528:	00053503          	ld	a0,0(a0)
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	e84080e7          	jalr	-380(ra) # 800013b0 <sem_wait>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80002534:	00813083          	ld	ra,8(sp)
    80002538:	00013403          	ld	s0,0(sp)
    8000253c:	01010113          	addi	sp,sp,16
    80002540:	00008067          	ret

0000000080002544 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    80002544:	ff010113          	addi	sp,sp,-16
    80002548:	00113423          	sd	ra,8(sp)
    8000254c:	00813023          	sd	s0,0(sp)
    80002550:	01010413          	addi	s0,sp,16
    int retval = sem_open((void**)&myHandle, init);
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	df8080e7          	jalr	-520(ra) # 8000134c <sem_open>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    8000255c:	00813083          	ld	ra,8(sp)
    80002560:	00013403          	ld	s0,0(sp)
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00008067          	ret

000000008000256c <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    8000256c:	ff010113          	addi	sp,sp,-16
    80002570:	00113423          	sd	ra,8(sp)
    80002574:	00813023          	sd	s0,0(sp)
    80002578:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    8000257c:	00053503          	ld	a0,0(a0)
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	e5c080e7          	jalr	-420(ra) # 800013dc <sem_signal>
    {
        //todo
        //what then
    }

}
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZN5Riscv10initSystemEv>:
#include "../lib/console.h"
#include "../h/syscall_cpp.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80002598:	fe010113          	addi	sp,sp,-32
    8000259c:	00113c23          	sd	ra,24(sp)
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	00913423          	sd	s1,8(sp)
    800025a8:	01213023          	sd	s2,0(sp)
    800025ac:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    800025b0:	00005797          	auipc	a5,0x5
    800025b4:	b687b783          	ld	a5,-1176(a5) # 80007118 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800025b8:	10579073          	csrw	stvec,a5
    new Thread(0, 0);
    800025bc:	00800513          	li	a0,8
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	e70080e7          	jalr	-400(ra) # 80002430 <_Znwm>
    800025c8:	00050493          	mv	s1,a0
    800025cc:	00000613          	li	a2,0
    800025d0:	00000593          	li	a1,0
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	f04080e7          	jalr	-252(ra) # 800024d8 <_ZN6ThreadC1EPFvPvES0_>
    PCB::running = Scheduler::get();
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	cdc080e7          	jalr	-804(ra) # 800022b8 <_ZN9Scheduler3getEv>
    800025e4:	00005797          	auipc	a5,0x5
    800025e8:	b547b783          	ld	a5,-1196(a5) # 80007138 <_GLOBAL_OFFSET_TABLE_+0x30>
    800025ec:	00a7b023          	sd	a0,0(a5)
    800025f0:	00100793          	li	a5,1
    800025f4:	02f52023          	sw	a5,32(a0)
    PCB::running->setState(PCB::RUNNING);
    //todo
    //no need for comment, but sync context switch
    //should be tested, before hardware interrupts are enabled
    //Riscv::enableInterrupts();
}
    800025f8:	01813083          	ld	ra,24(sp)
    800025fc:	01013403          	ld	s0,16(sp)
    80002600:	00813483          	ld	s1,8(sp)
    80002604:	00013903          	ld	s2,0(sp)
    80002608:	02010113          	addi	sp,sp,32
    8000260c:	00008067          	ret
    80002610:	00050913          	mv	s2,a0
    new Thread(0, 0);
    80002614:	00048513          	mv	a0,s1
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	e40080e7          	jalr	-448(ra) # 80002458 <_ZdlPv>
    80002620:	00090513          	mv	a0,s2
    80002624:	00006097          	auipc	ra,0x6
    80002628:	c74080e7          	jalr	-908(ra) # 80008298 <_Unwind_Resume>

000000008000262c <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00813423          	sd	s0,8(sp)
    80002634:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002638:	00200793          	li	a5,2
    8000263c:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002640:	00813403          	ld	s0,8(sp)
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00008067          	ret

000000008000264c <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00813423          	sd	s0,8(sp)
    80002654:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002658:	00200793          	li	a5,2
    8000265c:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80002660:	00813403          	ld	s0,8(sp)
    80002664:	01010113          	addi	sp,sp,16
    80002668:	00008067          	ret

000000008000266c <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    8000266c:	ff010113          	addi	sp,sp,-16
    80002670:	00113423          	sd	ra,8(sp)
    80002674:	00813023          	sd	s0,0(sp)
    80002678:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	fd0080e7          	jalr	-48(ra) # 8000264c <_ZN5Riscv17disableInterruptsEv>
}
    80002684:	00813083          	ld	ra,8(sp)
    80002688:	00013403          	ld	s0,0(sp)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00813423          	sd	s0,8(sp)
    8000269c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800026a0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800026a4:	10200073          	sret
}
    800026a8:	00813403          	ld	s0,8(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret

00000000800026b4 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    800026b4:	fd010113          	addi	sp,sp,-48
    800026b8:	02113423          	sd	ra,40(sp)
    800026bc:	02813023          	sd	s0,32(sp)
    800026c0:	00913c23          	sd	s1,24(sp)
    800026c4:	01213823          	sd	s2,16(sp)
    800026c8:	03010413          	addi	s0,sp,48
    800026cc:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800026d0:	100027f3          	csrr	a5,sstatus
    800026d4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800026d8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800026dc:	00200793          	li	a5,2
    800026e0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    800026e4:	0004c503          	lbu	a0,0(s1)
    800026e8:	00050a63          	beqz	a0,800026fc <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800026ec:	00003097          	auipc	ra,0x3
    800026f0:	9d0080e7          	jalr	-1584(ra) # 800050bc <__putc>
        string++;
    800026f4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800026f8:	fedff06f          	j	800026e4 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800026fc:	0009091b          	sext.w	s2,s2
    80002700:	00297913          	andi	s2,s2,2
    80002704:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002708:	10092073          	csrs	sstatus,s2
}
    8000270c:	02813083          	ld	ra,40(sp)
    80002710:	02013403          	ld	s0,32(sp)
    80002714:	01813483          	ld	s1,24(sp)
    80002718:	01013903          	ld	s2,16(sp)
    8000271c:	03010113          	addi	sp,sp,48
    80002720:	00008067          	ret

0000000080002724 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002724:	fc010113          	addi	sp,sp,-64
    80002728:	02113c23          	sd	ra,56(sp)
    8000272c:	02813823          	sd	s0,48(sp)
    80002730:	02913423          	sd	s1,40(sp)
    80002734:	03213023          	sd	s2,32(sp)
    80002738:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000273c:	100027f3          	csrr	a5,sstatus
    80002740:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002744:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002748:	00200793          	li	a5,2
    8000274c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002750:	0005051b          	sext.w	a0,a0

    i = 0;
    80002754:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002758:	00a00613          	li	a2,10
    8000275c:	02c5773b          	remuw	a4,a0,a2
    80002760:	02071693          	slli	a3,a4,0x20
    80002764:	0206d693          	srli	a3,a3,0x20
    80002768:	00004717          	auipc	a4,0x4
    8000276c:	a0070713          	addi	a4,a4,-1536 # 80006168 <_ZZN5Riscv12printIntegerEmE6digits>
    80002770:	00d70733          	add	a4,a4,a3
    80002774:	00074703          	lbu	a4,0(a4)
    80002778:	fe040693          	addi	a3,s0,-32
    8000277c:	009687b3          	add	a5,a3,s1
    80002780:	0014849b          	addiw	s1,s1,1
    80002784:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002788:	0005071b          	sext.w	a4,a0
    8000278c:	02c5553b          	divuw	a0,a0,a2
    80002790:	00900793          	li	a5,9
    80002794:	fce7e2e3          	bltu	a5,a4,80002758 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002798:	fff4849b          	addiw	s1,s1,-1
    8000279c:	0004ce63          	bltz	s1,800027b8 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800027a0:	fe040793          	addi	a5,s0,-32
    800027a4:	009787b3          	add	a5,a5,s1
    800027a8:	ff07c503          	lbu	a0,-16(a5)
    800027ac:	00003097          	auipc	ra,0x3
    800027b0:	910080e7          	jalr	-1776(ra) # 800050bc <__putc>
    800027b4:	fe5ff06f          	j	80002798 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    800027b8:	00a00513          	li	a0,10
    800027bc:	00003097          	auipc	ra,0x3
    800027c0:	900080e7          	jalr	-1792(ra) # 800050bc <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800027c4:	0009091b          	sext.w	s2,s2
    800027c8:	00297913          	andi	s2,s2,2
    800027cc:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800027d0:	10092073          	csrs	sstatus,s2
}
    800027d4:	03813083          	ld	ra,56(sp)
    800027d8:	03013403          	ld	s0,48(sp)
    800027dc:	02813483          	ld	s1,40(sp)
    800027e0:	02013903          	ld	s2,32(sp)
    800027e4:	04010113          	addi	sp,sp,64
    800027e8:	00008067          	ret

00000000800027ec <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800027ec:	f9010113          	addi	sp,sp,-112
    800027f0:	06113423          	sd	ra,104(sp)
    800027f4:	06813023          	sd	s0,96(sp)
    800027f8:	04913c23          	sd	s1,88(sp)
    800027fc:	05213823          	sd	s2,80(sp)
    80002800:	05313423          	sd	s3,72(sp)
    80002804:	05413023          	sd	s4,64(sp)
    80002808:	03513c23          	sd	s5,56(sp)
    8000280c:	03613823          	sd	s6,48(sp)
    80002810:	07010413          	addi	s0,sp,112

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002814:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002818:	142027f3          	csrr	a5,scause
    8000281c:	f8f43823          	sd	a5,-112(s0)
    return scause;
    80002820:	f9043703          	ld	a4,-112(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    80002824:	00900793          	li	a5,9
    80002828:	04e7fc63          	bgeu	a5,a4,80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
    8000282c:	fff00793          	li	a5,-1
    80002830:	03f79793          	slli	a5,a5,0x3f
    80002834:	00178793          	addi	a5,a5,1
    80002838:	04f71863          	bne	a4,a5,80002888 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>

        case timerInterrupt:

            Riscv::printString("timerInterrupt\n");
    8000283c:	00004517          	auipc	a0,0x4
    80002840:	91c50513          	addi	a0,a0,-1764 # 80006158 <CONSOLE_STATUS+0x148>
    80002844:	00000097          	auipc	ra,0x0
    80002848:	e70080e7          	jalr	-400(ra) # 800026b4 <_ZN5Riscv11printStringEPKc>
            PCB::timeSliceCounter++;
    8000284c:	00005717          	auipc	a4,0x5
    80002850:	8dc73703          	ld	a4,-1828(a4) # 80007128 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002854:	00073783          	ld	a5,0(a4)
    80002858:	00178793          	addi	a5,a5,1
    8000285c:	00f73023          	sd	a5,0(a4)
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    80002860:	00005717          	auipc	a4,0x5
    80002864:	8d873703          	ld	a4,-1832(a4) # 80007138 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002868:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() { return timeSlice;}
    8000286c:	00073703          	ld	a4,0(a4)
    80002870:	04e7f463          	bgeu	a5,a4,800028b8 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002874:	00200793          	li	a5,2
    80002878:	1447b073          	csrc	sip,a5
}
    8000287c:	00c0006f          	j	80002888 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
    switch(scause) {
    80002880:	00800793          	li	a5,8
    80002884:	06f77663          	bgeu	a4,a5,800028f0 <_ZN5Riscv20handleSupervisorTrapEv+0x104>

            return;
            //break;
    }

    console_handler();
    80002888:	00003097          	auipc	ra,0x3
    8000288c:	8a8080e7          	jalr	-1880(ra) # 80005130 <console_handler>
}
    80002890:	06813083          	ld	ra,104(sp)
    80002894:	06013403          	ld	s0,96(sp)
    80002898:	05813483          	ld	s1,88(sp)
    8000289c:	05013903          	ld	s2,80(sp)
    800028a0:	04813983          	ld	s3,72(sp)
    800028a4:	04013a03          	ld	s4,64(sp)
    800028a8:	03813a83          	ld	s5,56(sp)
    800028ac:	03013b03          	ld	s6,48(sp)
    800028b0:	07010113          	addi	sp,sp,112
    800028b4:	00008067          	ret
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800028b8:	141027f3          	csrr	a5,sepc
    800028bc:	faf43023          	sd	a5,-96(s0)
    return sepc;
    800028c0:	fa043483          	ld	s1,-96(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800028c4:	100027f3          	csrr	a5,sstatus
    800028c8:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    800028cc:	f9843903          	ld	s2,-104(s0)
                PCB::timeSliceCounter = 0;
    800028d0:	00005797          	auipc	a5,0x5
    800028d4:	8587b783          	ld	a5,-1960(a5) # 80007128 <_GLOBAL_OFFSET_TABLE_+0x20>
    800028d8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	678080e7          	jalr	1656(ra) # 80001f54 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800028e4:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800028e8:	14149073          	csrw	sepc,s1
}
    800028ec:	f89ff06f          	j	80002874 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800028f0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800028f4:	14102773          	csrr	a4,sepc
    800028f8:	fae43423          	sd	a4,-88(s0)
    return sepc;
    800028fc:	fa843703          	ld	a4,-88(s0)
            sepc+=4;
    80002900:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC) {
    80002904:	00100713          	li	a4,1
    80002908:	02e78663          	beq	a5,a4,80002934 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            else if(operation == MemoryAllocator::MEM_FREE) {
    8000290c:	00200713          	li	a4,2
    80002910:	02e78e63          	beq	a5,a4,8000294c <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            else if(operation == PCB::THREAD_CREATE)
    80002914:	01100713          	li	a4,17
    80002918:	04e78463          	beq	a5,a4,80002960 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            else if(operation == PCB::THREAD_DISPATCH)
    8000291c:	01300713          	li	a4,19
    80002920:	08e78663          	beq	a5,a4,800029ac <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            else if(operation == PCB::THREAD_EXIT)
    80002924:	01200713          	li	a4,18
    80002928:	0ae78663          	beq	a5,a4,800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000292c:	14149073          	csrw	sepc,s1
}
    80002930:	f61ff06f          	j	80002890 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002934:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002938:	00651513          	slli	a0,a0,0x6
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	4c8080e7          	jalr	1224(ra) # 80002e04 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002944:	00050513          	mv	a0,a0
    80002948:	fe5ff06f          	j	8000292c <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    8000294c:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002950:	00000097          	auipc	ra,0x0
    80002954:	4dc080e7          	jalr	1244(ra) # 80002e2c <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002958:	00050513          	mv	a0,a0
    8000295c:	fd1ff06f          	j	8000292c <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002960:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002964:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002968:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    8000296c:	04800513          	li	a0,72
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	568080e7          	jalr	1384(ra) # 80001ed8 <_ZN3PCBnwEm>
    80002978:	00050993          	mv	s3,a0
    8000297c:	00300713          	li	a4,3
    80002980:	00090693          	mv	a3,s2
    80002984:	000b0613          	mv	a2,s6
    80002988:	000a8593          	mv	a1,s5
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	4bc080e7          	jalr	1212(ra) # 80001e48 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80002994:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002998:	00098663          	beqz	s3,800029a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    __asm__ volatile("li a0, 0");
    8000299c:	00000513          	li	a0,0
    800029a0:	f8dff06f          	j	8000292c <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800029a4:	fff00513          	li	a0,-1
    800029a8:	f85ff06f          	j	8000292c <_ZN5Riscv20handleSupervisorTrapEv+0x140>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800029ac:	100027f3          	csrr	a5,sstatus
    800029b0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800029b4:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    800029b8:	00004797          	auipc	a5,0x4
    800029bc:	7707b783          	ld	a5,1904(a5) # 80007128 <_GLOBAL_OFFSET_TABLE_+0x20>
    800029c0:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	590080e7          	jalr	1424(ra) # 80001f54 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800029cc:	10091073          	csrw	sstatus,s2
}
    800029d0:	f5dff06f          	j	8000292c <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                if(PCB::running == 0)
    800029d4:	00004797          	auipc	a5,0x4
    800029d8:	7647b783          	ld	a5,1892(a5) # 80007138 <_GLOBAL_OFFSET_TABLE_+0x30>
    800029dc:	0007b783          	ld	a5,0(a5)
    800029e0:	04078663          	beqz	a5,80002a2c <_ZN5Riscv20handleSupervisorTrapEv+0x240>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800029e4:	100027f3          	csrr	a5,sstatus
    800029e8:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800029ec:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    800029f0:	00004797          	auipc	a5,0x4
    800029f4:	7387b783          	ld	a5,1848(a5) # 80007128 <_GLOBAL_OFFSET_TABLE_+0x20>
    800029f8:	0007b023          	sd	zero,0(a5)
                PCB::exitingPCB = PCB::running;
    800029fc:	00004797          	auipc	a5,0x4
    80002a00:	73c7b783          	ld	a5,1852(a5) # 80007138 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a04:	0007b783          	ld	a5,0(a5)
    80002a08:	00004717          	auipc	a4,0x4
    80002a0c:	71873703          	ld	a4,1816(a4) # 80007120 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002a10:	00f73023          	sd	a5,0(a4)
    void setState(State s) {state = s;}
    80002a14:	00400713          	li	a4,4
    80002a18:	02e7a023          	sw	a4,32(a5)
                PCB::dispatch();
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	538080e7          	jalr	1336(ra) # 80001f54 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002a24:	10091073          	csrw	sstatus,s2
}
    80002a28:	f05ff06f          	j	8000292c <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002a2c:	fff00513          	li	a0,-1
                    return;
    80002a30:	e61ff06f          	j	80002890 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
    80002a34:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002a38:	00098513          	mv	a0,s3
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	4c4080e7          	jalr	1220(ra) # 80001f00 <_ZN3PCBdlEPv>
    80002a44:	00048513          	mv	a0,s1
    80002a48:	00006097          	auipc	ra,0x6
    80002a4c:	850080e7          	jalr	-1968(ra) # 80008298 <_Unwind_Resume>

0000000080002a50 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002a50:	ff010113          	addi	sp,sp,-16
    80002a54:	00813423          	sd	s0,8(sp)
    80002a58:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002a5c:	00004717          	auipc	a4,0x4
    80002a60:	75472703          	lw	a4,1876(a4) # 800071b0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002a64:	00100793          	li	a5,1
    80002a68:	04f70263          	beq	a4,a5,80002aac <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002a6c:	00004797          	auipc	a5,0x4
    80002a70:	74478793          	addi	a5,a5,1860 # 800071b0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002a74:	00100713          	li	a4,1
    80002a78:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002a7c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002a80:	00004717          	auipc	a4,0x4
    80002a84:	69073703          	ld	a4,1680(a4) # 80007110 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a88:	00073703          	ld	a4,0(a4)
    80002a8c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002a90:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002a94:	00004797          	auipc	a5,0x4
    80002a98:	6ac7b783          	ld	a5,1708(a5) # 80007140 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a9c:	0007b783          	ld	a5,0(a5)
    80002aa0:	40e787b3          	sub	a5,a5,a4
    80002aa4:	ff178793          	addi	a5,a5,-15
    80002aa8:	00f73023          	sd	a5,0(a4)
}
    80002aac:	00813403          	ld	s0,8(sp)
    80002ab0:	01010113          	addi	sp,sp,16
    80002ab4:	00008067          	ret

0000000080002ab8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002ab8:	fe010113          	addi	sp,sp,-32
    80002abc:	00113c23          	sd	ra,24(sp)
    80002ac0:	00813823          	sd	s0,16(sp)
    80002ac4:	00913423          	sd	s1,8(sp)
    80002ac8:	01213023          	sd	s2,0(sp)
    80002acc:	02010413          	addi	s0,sp,32
    80002ad0:	00050493          	mv	s1,a0
    80002ad4:	00058913          	mv	s2,a1

    initMemory();
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	f78080e7          	jalr	-136(ra) # 80002a50 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002ae0:	00004797          	auipc	a5,0x4
    80002ae4:	6d87b783          	ld	a5,1752(a5) # 800071b8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002ae8:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002aec:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80002af0:	00000713          	li	a4,0
    while(curr != 0)
    80002af4:	00078c63          	beqz	a5,80002b0c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002af8:	00f4e863          	bltu	s1,a5,80002b08 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80002afc:	00078713          	mv	a4,a5
        curr = curr->next;
    80002b00:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002b04:	ff1ff06f          	j	80002af4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80002b08:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002b0c:	02070063          	beqz	a4,80002b2c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002b10:	00973423          	sd	s1,8(a4)
}
    80002b14:	01813083          	ld	ra,24(sp)
    80002b18:	01013403          	ld	s0,16(sp)
    80002b1c:	00813483          	ld	s1,8(sp)
    80002b20:	00013903          	ld	s2,0(sp)
    80002b24:	02010113          	addi	sp,sp,32
    80002b28:	00008067          	ret
        headAllocated = newAllocated;
    80002b2c:	00004797          	auipc	a5,0x4
    80002b30:	6897b623          	sd	s1,1676(a5) # 800071b8 <_ZN15MemoryAllocator13headAllocatedE>
    80002b34:	fe1ff06f          	j	80002b14 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080002b38 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80002b38:	fe010113          	addi	sp,sp,-32
    80002b3c:	00113c23          	sd	ra,24(sp)
    80002b40:	00813823          	sd	s0,16(sp)
    80002b44:	00913423          	sd	s1,8(sp)
    80002b48:	01213023          	sd	s2,0(sp)
    80002b4c:	02010413          	addi	s0,sp,32
    80002b50:	00050913          	mv	s2,a0
    initMemory();
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	efc080e7          	jalr	-260(ra) # 80002a50 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002b5c:	00004497          	auipc	s1,0x4
    80002b60:	6644b483          	ld	s1,1636(s1) # 800071c0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80002b64:	00000713          	li	a4,0
    while(curr != 0) {
    80002b68:	0a048863          	beqz	s1,80002c18 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>

        if(curr->size >= size) {
    80002b6c:	0004b783          	ld	a5,0(s1)
    80002b70:	0127f863          	bgeu	a5,s2,80002b80 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80002b74:	00048713          	mv	a4,s1
        curr = curr->next;
    80002b78:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80002b7c:	fedff06f          	j	80002b68 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80002b80:	01090693          	addi	a3,s2,16
    80002b84:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80002b88:	00004617          	auipc	a2,0x4
    80002b8c:	5b863603          	ld	a2,1464(a2) # 80007140 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002b90:	00063603          	ld	a2,0(a2)
    80002b94:	04d66c63          	bltu	a2,a3,80002bec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80002b98:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80002b9c:	01000613          	li	a2,16
    80002ba0:	02f67663          	bgeu	a2,a5,80002bcc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80002ba4:	0084b603          	ld	a2,8(s1)
    80002ba8:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80002bac:	ff078793          	addi	a5,a5,-16
    80002bb0:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80002bb4:	00070663          	beqz	a4,80002bc0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80002bb8:	00d73423          	sd	a3,8(a4)
    80002bbc:	0380006f          	j	80002bf4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80002bc0:	00004797          	auipc	a5,0x4
    80002bc4:	60d7b023          	sd	a3,1536(a5) # 800071c0 <_ZN15MemoryAllocator8headFreeE>
    80002bc8:	02c0006f          	j	80002bf4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80002bcc:	00070863          	beqz	a4,80002bdc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80002bd0:	0084b783          	ld	a5,8(s1)
    80002bd4:	00f73423          	sd	a5,8(a4)
    80002bd8:	01c0006f          	j	80002bf4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80002bdc:	0084b783          	ld	a5,8(s1)
    80002be0:	00004717          	auipc	a4,0x4
    80002be4:	5ef73023          	sd	a5,1504(a4) # 800071c0 <_ZN15MemoryAllocator8headFreeE>
    80002be8:	00c0006f          	j	80002bf4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80002bec:	02070063          	beqz	a4,80002c0c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80002bf0:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80002bf4:	00090593          	mv	a1,s2
    80002bf8:	00048513          	mv	a0,s1
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	ebc080e7          	jalr	-324(ra) # 80002ab8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80002c04:	01048513          	addi	a0,s1,16
            break;
    80002c08:	0140006f          	j	80002c1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80002c0c:	00004797          	auipc	a5,0x4
    80002c10:	5a07ba23          	sd	zero,1460(a5) # 800071c0 <_ZN15MemoryAllocator8headFreeE>
    80002c14:	fe1ff06f          	j	80002bf4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80002c18:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80002c1c:	01813083          	ld	ra,24(sp)
    80002c20:	01013403          	ld	s0,16(sp)
    80002c24:	00813483          	ld	s1,8(sp)
    80002c28:	00013903          	ld	s2,0(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret

0000000080002c34 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80002c34:	ff010113          	addi	sp,sp,-16
    80002c38:	00113423          	sd	ra,8(sp)
    80002c3c:	00813023          	sd	s0,0(sp)
    80002c40:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	ef4080e7          	jalr	-268(ra) # 80002b38 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80002c4c:	00813083          	ld	ra,8(sp)
    80002c50:	00013403          	ld	s0,0(sp)
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret

0000000080002c5c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80002c5c:	fe010113          	addi	sp,sp,-32
    80002c60:	00113c23          	sd	ra,24(sp)
    80002c64:	00813823          	sd	s0,16(sp)
    80002c68:	00913423          	sd	s1,8(sp)
    80002c6c:	01213023          	sd	s2,0(sp)
    80002c70:	02010413          	addi	s0,sp,32
    80002c74:	00050493          	mv	s1,a0
    80002c78:	00058913          	mv	s2,a1
    initMemory();
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	dd4080e7          	jalr	-556(ra) # 80002a50 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002c84:	00004797          	auipc	a5,0x4
    80002c88:	53c7b783          	ld	a5,1340(a5) # 800071c0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80002c8c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80002c90:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80002c94:	00000713          	li	a4,0
    while(curr != 0)
    80002c98:	00078c63          	beqz	a5,80002cb0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002c9c:	00f4e863          	bltu	s1,a5,80002cac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80002ca0:	00078713          	mv	a4,a5
        curr = curr->next;
    80002ca4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002ca8:	ff1ff06f          	j	80002c98 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80002cac:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002cb0:	04070663          	beqz	a4,80002cfc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80002cb4:	00973423          	sd	s1,8(a4)

    //todo
    //kad proradi kfree odkomentarisi ovo
    //test it few times
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80002cb8:	0084b783          	ld	a5,8(s1)
    80002cbc:	00078a63          	beqz	a5,80002cd0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80002cc0:	0004b603          	ld	a2,0(s1)
    80002cc4:	01060693          	addi	a3,a2,16
    80002cc8:	00d486b3          	add	a3,s1,a3
    80002ccc:	02d78e63          	beq	a5,a3,80002d08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80002cd0:	00070a63          	beqz	a4,80002ce4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80002cd4:	00073683          	ld	a3,0(a4)
    80002cd8:	01068793          	addi	a5,a3,16
    80002cdc:	00f707b3          	add	a5,a4,a5
    80002ce0:	04978263          	beq	a5,s1,80002d24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80002ce4:	01813083          	ld	ra,24(sp)
    80002ce8:	01013403          	ld	s0,16(sp)
    80002cec:	00813483          	ld	s1,8(sp)
    80002cf0:	00013903          	ld	s2,0(sp)
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00008067          	ret
        headFree = newSegment;
    80002cfc:	00004797          	auipc	a5,0x4
    80002d00:	4c97b223          	sd	s1,1220(a5) # 800071c0 <_ZN15MemoryAllocator8headFreeE>
    80002d04:	fb5ff06f          	j	80002cb8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80002d08:	0007b683          	ld	a3,0(a5)
    80002d0c:	00d60633          	add	a2,a2,a3
    80002d10:	01060613          	addi	a2,a2,16
    80002d14:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80002d18:	0087b783          	ld	a5,8(a5)
    80002d1c:	00f4b423          	sd	a5,8(s1)
    80002d20:	fb1ff06f          	j	80002cd0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80002d24:	0004b783          	ld	a5,0(s1)
    80002d28:	00f686b3          	add	a3,a3,a5
    80002d2c:	01068693          	addi	a3,a3,16
    80002d30:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80002d34:	0084b783          	ld	a5,8(s1)
    80002d38:	00f73423          	sd	a5,8(a4)
}
    80002d3c:	fa9ff06f          	j	80002ce4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080002d40 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80002d40:	fe010113          	addi	sp,sp,-32
    80002d44:	00113c23          	sd	ra,24(sp)
    80002d48:	00813823          	sd	s0,16(sp)
    80002d4c:	00913423          	sd	s1,8(sp)
    80002d50:	01213023          	sd	s2,0(sp)
    80002d54:	02010413          	addi	s0,sp,32
    80002d58:	00050913          	mv	s2,a0
    initMemory();
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	cf4080e7          	jalr	-780(ra) # 80002a50 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80002d64:	00004497          	auipc	s1,0x4
    80002d68:	4544b483          	ld	s1,1108(s1) # 800071b8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80002d6c:	00000713          	li	a4,0
    while(curr != 0)
    80002d70:	02048a63          	beqz	s1,80002da4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80002d74:	01048793          	addi	a5,s1,16
    80002d78:	01278863          	beq	a5,s2,80002d88 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80002d7c:	00048713          	mv	a4,s1
        curr = curr->next;
    80002d80:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002d84:	fedff06f          	j	80002d70 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80002d88:	02070e63          	beqz	a4,80002dc4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80002d8c:	0084b783          	ld	a5,8(s1)
    80002d90:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80002d94:	0004b583          	ld	a1,0(s1)
    80002d98:	00048513          	mv	a0,s1
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	ec0080e7          	jalr	-320(ra) # 80002c5c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80002da4:	02048863          	beqz	s1,80002dd4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80002da8:	00000513          	li	a0,0
    else
        return 1;
}
    80002dac:	01813083          	ld	ra,24(sp)
    80002db0:	01013403          	ld	s0,16(sp)
    80002db4:	00813483          	ld	s1,8(sp)
    80002db8:	00013903          	ld	s2,0(sp)
    80002dbc:	02010113          	addi	sp,sp,32
    80002dc0:	00008067          	ret
                headAllocated = curr->next;
    80002dc4:	0084b783          	ld	a5,8(s1)
    80002dc8:	00004717          	auipc	a4,0x4
    80002dcc:	3ef73823          	sd	a5,1008(a4) # 800071b8 <_ZN15MemoryAllocator13headAllocatedE>
    80002dd0:	fc5ff06f          	j	80002d94 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80002dd4:	00100513          	li	a0,1
    80002dd8:	fd5ff06f          	j	80002dac <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080002ddc <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80002ddc:	ff010113          	addi	sp,sp,-16
    80002de0:	00113423          	sd	ra,8(sp)
    80002de4:	00813023          	sd	s0,0(sp)
    80002de8:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	f54080e7          	jalr	-172(ra) # 80002d40 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80002df4:	00813083          	ld	ra,8(sp)
    80002df8:	00013403          	ld	s0,0(sp)
    80002dfc:	01010113          	addi	sp,sp,16
    80002e00:	00008067          	ret

0000000080002e04 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00113423          	sd	ra,8(sp)
    80002e0c:	00813023          	sd	s0,0(sp)
    80002e10:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	e20080e7          	jalr	-480(ra) # 80002c34 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002e1c:	00813083          	ld	ra,8(sp)
    80002e20:	00013403          	ld	s0,0(sp)
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00008067          	ret

0000000080002e2c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80002e2c:	ff010113          	addi	sp,sp,-16
    80002e30:	00113423          	sd	ra,8(sp)
    80002e34:	00813023          	sd	s0,0(sp)
    80002e38:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	fa0080e7          	jalr	-96(ra) # 80002ddc <_ZN15MemoryAllocator8mem_freeEPv>
    80002e44:	00813083          	ld	ra,8(sp)
    80002e48:	00013403          	ld	s0,0(sp)
    80002e4c:	01010113          	addi	sp,sp,16
    80002e50:	00008067          	ret

0000000080002e54 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    80002e54:	fe010113          	addi	sp,sp,-32
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00813823          	sd	s0,16(sp)
    80002e60:	00913423          	sd	s1,8(sp)
    80002e64:	01213023          	sd	s2,0(sp)
    80002e68:	02010413          	addi	s0,sp,32
    80002e6c:	00050493          	mv	s1,a0
    80002e70:	00058913          	mv	s2,a1
    80002e74:	00850513          	addi	a0,a0,8
    80002e78:	fffff097          	auipc	ra,0xfffff
    80002e7c:	2b8080e7          	jalr	696(ra) # 80002130 <_ZN5QueueC1Ev>
    this->val = this->beginVal = val;
    80002e80:	0124a223          	sw	s2,4(s1)
    80002e84:	0124a023          	sw	s2,0(s1)
}
    80002e88:	01813083          	ld	ra,24(sp)
    80002e8c:	01013403          	ld	s0,16(sp)
    80002e90:	00813483          	ld	s1,8(sp)
    80002e94:	00013903          	ld	s2,0(sp)
    80002e98:	02010113          	addi	sp,sp,32
    80002e9c:	00008067          	ret

0000000080002ea0 <_ZN10KSemaphoreD1Ev>:
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00113423          	sd	ra,8(sp)
    80002ea8:	00813023          	sd	s0,0(sp)
    80002eac:	01010413          	addi	s0,sp,16
    80002eb0:	00850513          	addi	a0,a0,8
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	29c080e7          	jalr	668(ra) # 80002150 <_ZN5QueueD1Ev>
    //todo
}
    80002ebc:	00813083          	ld	ra,8(sp)
    80002ec0:	00013403          	ld	s0,0(sp)
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00008067          	ret

0000000080002ecc <_ZN10KSemaphore5blockEv>:

//todo
void KSemaphore::block() {
    80002ecc:	ff010113          	addi	sp,sp,-16
    80002ed0:	00113423          	sd	ra,8(sp)
    80002ed4:	00813023          	sd	s0,0(sp)
    80002ed8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80002edc:	00004797          	auipc	a5,0x4
    80002ee0:	25c7b783          	ld	a5,604(a5) # 80007138 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ee4:	0007b783          	ld	a5,0(a5)
    80002ee8:	00200713          	li	a4,2
    80002eec:	02e7a023          	sw	a4,32(a5)
    PCB::dispatch();
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	064080e7          	jalr	100(ra) # 80001f54 <_ZN3PCB8dispatchEv>
}
    80002ef8:	00813083          	ld	ra,8(sp)
    80002efc:	00013403          	ld	s0,0(sp)
    80002f00:	01010113          	addi	sp,sp,16
    80002f04:	00008067          	ret

0000000080002f08 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80002f08:	00052783          	lw	a5,0(a0)
    80002f0c:	fff7879b          	addiw	a5,a5,-1
    80002f10:	00f52023          	sw	a5,0(a0)
    80002f14:	02079713          	slli	a4,a5,0x20
    80002f18:	00074463          	bltz	a4,80002f20 <_ZN10KSemaphore4waitEv+0x18>
    80002f1c:	00008067          	ret
void KSemaphore::wait() {
    80002f20:	ff010113          	addi	sp,sp,-16
    80002f24:	00113423          	sd	ra,8(sp)
    80002f28:	00813023          	sd	s0,0(sp)
    80002f2c:	01010413          	addi	s0,sp,16
        block();
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	f9c080e7          	jalr	-100(ra) # 80002ecc <_ZN10KSemaphore5blockEv>
}
    80002f38:	00813083          	ld	ra,8(sp)
    80002f3c:	00013403          	ld	s0,0(sp)
    80002f40:	01010113          	addi	sp,sp,16
    80002f44:	00008067          	ret

0000000080002f48 <_ZN10KSemaphore7unblockEv>:

//todo
void KSemaphore::unblock() {
    80002f48:	fe010113          	addi	sp,sp,-32
    80002f4c:	00113c23          	sd	ra,24(sp)
    80002f50:	00813823          	sd	s0,16(sp)
    80002f54:	00913423          	sd	s1,8(sp)
    80002f58:	01213023          	sd	s2,0(sp)
    80002f5c:	02010413          	addi	s0,sp,32
    PCB* fr = queueBlocked.front();
    80002f60:	00850913          	addi	s2,a0,8
    80002f64:	00090513          	mv	a0,s2
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	1a4080e7          	jalr	420(ra) # 8000210c <_ZN5Queue5frontEv>
    80002f70:	00050493          	mv	s1,a0
    queueBlocked.pop();
    80002f74:	00090513          	mv	a0,s2
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	0c4080e7          	jalr	196(ra) # 8000203c <_ZN5Queue3popEv>
    if(fr != 0)
    80002f80:	00048a63          	beqz	s1,80002f94 <_ZN10KSemaphore7unblockEv+0x4c>
    80002f84:	0204a023          	sw	zero,32(s1)
    {
        fr->setState(PCB::READY);
        Scheduler::put(fr);
    80002f88:	00048513          	mv	a0,s1
    80002f8c:	fffff097          	auipc	ra,0xfffff
    80002f90:	28c080e7          	jalr	652(ra) # 80002218 <_ZN9Scheduler3putEP3PCB>
    }
}
    80002f94:	01813083          	ld	ra,24(sp)
    80002f98:	01013403          	ld	s0,16(sp)
    80002f9c:	00813483          	ld	s1,8(sp)
    80002fa0:	00013903          	ld	s2,0(sp)
    80002fa4:	02010113          	addi	sp,sp,32
    80002fa8:	00008067          	ret

0000000080002fac <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80002fac:	00052783          	lw	a5,0(a0)
    80002fb0:	0017879b          	addiw	a5,a5,1
    80002fb4:	0007871b          	sext.w	a4,a5
    80002fb8:	00f52023          	sw	a5,0(a0)
    80002fbc:	00e05863          	blez	a4,80002fcc <_ZN10KSemaphore6signalEv+0x20>
        val = beginVal;
    80002fc0:	00452783          	lw	a5,4(a0)
    80002fc4:	00f52023          	sw	a5,0(a0)
    80002fc8:	00008067          	ret
void KSemaphore::signal() {
    80002fcc:	ff010113          	addi	sp,sp,-16
    80002fd0:	00113423          	sd	ra,8(sp)
    80002fd4:	00813023          	sd	s0,0(sp)
    80002fd8:	01010413          	addi	s0,sp,16
        unblock();
    80002fdc:	00000097          	auipc	ra,0x0
    80002fe0:	f6c080e7          	jalr	-148(ra) # 80002f48 <_ZN10KSemaphore7unblockEv>
}
    80002fe4:	00813083          	ld	ra,8(sp)
    80002fe8:	00013403          	ld	s0,0(sp)
    80002fec:	01010113          	addi	sp,sp,16
    80002ff0:	00008067          	ret

0000000080002ff4 <start>:
    80002ff4:	ff010113          	addi	sp,sp,-16
    80002ff8:	00813423          	sd	s0,8(sp)
    80002ffc:	01010413          	addi	s0,sp,16
    80003000:	300027f3          	csrr	a5,mstatus
    80003004:	ffffe737          	lui	a4,0xffffe
    80003008:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff63cf>
    8000300c:	00e7f7b3          	and	a5,a5,a4
    80003010:	00001737          	lui	a4,0x1
    80003014:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003018:	00e7e7b3          	or	a5,a5,a4
    8000301c:	30079073          	csrw	mstatus,a5
    80003020:	00000797          	auipc	a5,0x0
    80003024:	16078793          	addi	a5,a5,352 # 80003180 <system_main>
    80003028:	34179073          	csrw	mepc,a5
    8000302c:	00000793          	li	a5,0
    80003030:	18079073          	csrw	satp,a5
    80003034:	000107b7          	lui	a5,0x10
    80003038:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000303c:	30279073          	csrw	medeleg,a5
    80003040:	30379073          	csrw	mideleg,a5
    80003044:	104027f3          	csrr	a5,sie
    80003048:	2227e793          	ori	a5,a5,546
    8000304c:	10479073          	csrw	sie,a5
    80003050:	fff00793          	li	a5,-1
    80003054:	00a7d793          	srli	a5,a5,0xa
    80003058:	3b079073          	csrw	pmpaddr0,a5
    8000305c:	00f00793          	li	a5,15
    80003060:	3a079073          	csrw	pmpcfg0,a5
    80003064:	f14027f3          	csrr	a5,mhartid
    80003068:	0200c737          	lui	a4,0x200c
    8000306c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003070:	0007869b          	sext.w	a3,a5
    80003074:	00269713          	slli	a4,a3,0x2
    80003078:	000f4637          	lui	a2,0xf4
    8000307c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003080:	00d70733          	add	a4,a4,a3
    80003084:	0037979b          	slliw	a5,a5,0x3
    80003088:	020046b7          	lui	a3,0x2004
    8000308c:	00d787b3          	add	a5,a5,a3
    80003090:	00c585b3          	add	a1,a1,a2
    80003094:	00371693          	slli	a3,a4,0x3
    80003098:	00004717          	auipc	a4,0x4
    8000309c:	13870713          	addi	a4,a4,312 # 800071d0 <timer_scratch>
    800030a0:	00b7b023          	sd	a1,0(a5)
    800030a4:	00d70733          	add	a4,a4,a3
    800030a8:	00f73c23          	sd	a5,24(a4)
    800030ac:	02c73023          	sd	a2,32(a4)
    800030b0:	34071073          	csrw	mscratch,a4
    800030b4:	00000797          	auipc	a5,0x0
    800030b8:	6ec78793          	addi	a5,a5,1772 # 800037a0 <timervec>
    800030bc:	30579073          	csrw	mtvec,a5
    800030c0:	300027f3          	csrr	a5,mstatus
    800030c4:	0087e793          	ori	a5,a5,8
    800030c8:	30079073          	csrw	mstatus,a5
    800030cc:	304027f3          	csrr	a5,mie
    800030d0:	0807e793          	ori	a5,a5,128
    800030d4:	30479073          	csrw	mie,a5
    800030d8:	f14027f3          	csrr	a5,mhartid
    800030dc:	0007879b          	sext.w	a5,a5
    800030e0:	00078213          	mv	tp,a5
    800030e4:	30200073          	mret
    800030e8:	00813403          	ld	s0,8(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret

00000000800030f4 <timerinit>:
    800030f4:	ff010113          	addi	sp,sp,-16
    800030f8:	00813423          	sd	s0,8(sp)
    800030fc:	01010413          	addi	s0,sp,16
    80003100:	f14027f3          	csrr	a5,mhartid
    80003104:	0200c737          	lui	a4,0x200c
    80003108:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000310c:	0007869b          	sext.w	a3,a5
    80003110:	00269713          	slli	a4,a3,0x2
    80003114:	000f4637          	lui	a2,0xf4
    80003118:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000311c:	00d70733          	add	a4,a4,a3
    80003120:	0037979b          	slliw	a5,a5,0x3
    80003124:	020046b7          	lui	a3,0x2004
    80003128:	00d787b3          	add	a5,a5,a3
    8000312c:	00c585b3          	add	a1,a1,a2
    80003130:	00371693          	slli	a3,a4,0x3
    80003134:	00004717          	auipc	a4,0x4
    80003138:	09c70713          	addi	a4,a4,156 # 800071d0 <timer_scratch>
    8000313c:	00b7b023          	sd	a1,0(a5)
    80003140:	00d70733          	add	a4,a4,a3
    80003144:	00f73c23          	sd	a5,24(a4)
    80003148:	02c73023          	sd	a2,32(a4)
    8000314c:	34071073          	csrw	mscratch,a4
    80003150:	00000797          	auipc	a5,0x0
    80003154:	65078793          	addi	a5,a5,1616 # 800037a0 <timervec>
    80003158:	30579073          	csrw	mtvec,a5
    8000315c:	300027f3          	csrr	a5,mstatus
    80003160:	0087e793          	ori	a5,a5,8
    80003164:	30079073          	csrw	mstatus,a5
    80003168:	304027f3          	csrr	a5,mie
    8000316c:	0807e793          	ori	a5,a5,128
    80003170:	30479073          	csrw	mie,a5
    80003174:	00813403          	ld	s0,8(sp)
    80003178:	01010113          	addi	sp,sp,16
    8000317c:	00008067          	ret

0000000080003180 <system_main>:
    80003180:	fe010113          	addi	sp,sp,-32
    80003184:	00813823          	sd	s0,16(sp)
    80003188:	00913423          	sd	s1,8(sp)
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	02010413          	addi	s0,sp,32
    80003194:	00000097          	auipc	ra,0x0
    80003198:	0c4080e7          	jalr	196(ra) # 80003258 <cpuid>
    8000319c:	00004497          	auipc	s1,0x4
    800031a0:	fc448493          	addi	s1,s1,-60 # 80007160 <started>
    800031a4:	02050263          	beqz	a0,800031c8 <system_main+0x48>
    800031a8:	0004a783          	lw	a5,0(s1)
    800031ac:	0007879b          	sext.w	a5,a5
    800031b0:	fe078ce3          	beqz	a5,800031a8 <system_main+0x28>
    800031b4:	0ff0000f          	fence
    800031b8:	00003517          	auipc	a0,0x3
    800031bc:	ff050513          	addi	a0,a0,-16 # 800061a8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    800031c0:	00001097          	auipc	ra,0x1
    800031c4:	a7c080e7          	jalr	-1412(ra) # 80003c3c <panic>
    800031c8:	00001097          	auipc	ra,0x1
    800031cc:	9d0080e7          	jalr	-1584(ra) # 80003b98 <consoleinit>
    800031d0:	00001097          	auipc	ra,0x1
    800031d4:	15c080e7          	jalr	348(ra) # 8000432c <printfinit>
    800031d8:	00003517          	auipc	a0,0x3
    800031dc:	0b050513          	addi	a0,a0,176 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800031e0:	00001097          	auipc	ra,0x1
    800031e4:	ab8080e7          	jalr	-1352(ra) # 80003c98 <__printf>
    800031e8:	00003517          	auipc	a0,0x3
    800031ec:	f9050513          	addi	a0,a0,-112 # 80006178 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    800031f0:	00001097          	auipc	ra,0x1
    800031f4:	aa8080e7          	jalr	-1368(ra) # 80003c98 <__printf>
    800031f8:	00003517          	auipc	a0,0x3
    800031fc:	09050513          	addi	a0,a0,144 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003200:	00001097          	auipc	ra,0x1
    80003204:	a98080e7          	jalr	-1384(ra) # 80003c98 <__printf>
    80003208:	00001097          	auipc	ra,0x1
    8000320c:	4b0080e7          	jalr	1200(ra) # 800046b8 <kinit>
    80003210:	00000097          	auipc	ra,0x0
    80003214:	148080e7          	jalr	328(ra) # 80003358 <trapinit>
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	16c080e7          	jalr	364(ra) # 80003384 <trapinithart>
    80003220:	00000097          	auipc	ra,0x0
    80003224:	5c0080e7          	jalr	1472(ra) # 800037e0 <plicinit>
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	5e0080e7          	jalr	1504(ra) # 80003808 <plicinithart>
    80003230:	00000097          	auipc	ra,0x0
    80003234:	078080e7          	jalr	120(ra) # 800032a8 <userinit>
    80003238:	0ff0000f          	fence
    8000323c:	00100793          	li	a5,1
    80003240:	00003517          	auipc	a0,0x3
    80003244:	f5050513          	addi	a0,a0,-176 # 80006190 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80003248:	00f4a023          	sw	a5,0(s1)
    8000324c:	00001097          	auipc	ra,0x1
    80003250:	a4c080e7          	jalr	-1460(ra) # 80003c98 <__printf>
    80003254:	0000006f          	j	80003254 <system_main+0xd4>

0000000080003258 <cpuid>:
    80003258:	ff010113          	addi	sp,sp,-16
    8000325c:	00813423          	sd	s0,8(sp)
    80003260:	01010413          	addi	s0,sp,16
    80003264:	00020513          	mv	a0,tp
    80003268:	00813403          	ld	s0,8(sp)
    8000326c:	0005051b          	sext.w	a0,a0
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret

0000000080003278 <mycpu>:
    80003278:	ff010113          	addi	sp,sp,-16
    8000327c:	00813423          	sd	s0,8(sp)
    80003280:	01010413          	addi	s0,sp,16
    80003284:	00020793          	mv	a5,tp
    80003288:	00813403          	ld	s0,8(sp)
    8000328c:	0007879b          	sext.w	a5,a5
    80003290:	00779793          	slli	a5,a5,0x7
    80003294:	00005517          	auipc	a0,0x5
    80003298:	f6c50513          	addi	a0,a0,-148 # 80008200 <cpus>
    8000329c:	00f50533          	add	a0,a0,a5
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret

00000000800032a8 <userinit>:
    800032a8:	ff010113          	addi	sp,sp,-16
    800032ac:	00813423          	sd	s0,8(sp)
    800032b0:	01010413          	addi	s0,sp,16
    800032b4:	00813403          	ld	s0,8(sp)
    800032b8:	01010113          	addi	sp,sp,16
    800032bc:	fffff317          	auipc	t1,0xfffff
    800032c0:	13c30067          	jr	316(t1) # 800023f8 <main>

00000000800032c4 <either_copyout>:
    800032c4:	ff010113          	addi	sp,sp,-16
    800032c8:	00813023          	sd	s0,0(sp)
    800032cc:	00113423          	sd	ra,8(sp)
    800032d0:	01010413          	addi	s0,sp,16
    800032d4:	02051663          	bnez	a0,80003300 <either_copyout+0x3c>
    800032d8:	00058513          	mv	a0,a1
    800032dc:	00060593          	mv	a1,a2
    800032e0:	0006861b          	sext.w	a2,a3
    800032e4:	00002097          	auipc	ra,0x2
    800032e8:	c60080e7          	jalr	-928(ra) # 80004f44 <__memmove>
    800032ec:	00813083          	ld	ra,8(sp)
    800032f0:	00013403          	ld	s0,0(sp)
    800032f4:	00000513          	li	a0,0
    800032f8:	01010113          	addi	sp,sp,16
    800032fc:	00008067          	ret
    80003300:	00003517          	auipc	a0,0x3
    80003304:	ed050513          	addi	a0,a0,-304 # 800061d0 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80003308:	00001097          	auipc	ra,0x1
    8000330c:	934080e7          	jalr	-1740(ra) # 80003c3c <panic>

0000000080003310 <either_copyin>:
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00813023          	sd	s0,0(sp)
    80003318:	00113423          	sd	ra,8(sp)
    8000331c:	01010413          	addi	s0,sp,16
    80003320:	02059463          	bnez	a1,80003348 <either_copyin+0x38>
    80003324:	00060593          	mv	a1,a2
    80003328:	0006861b          	sext.w	a2,a3
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	c18080e7          	jalr	-1000(ra) # 80004f44 <__memmove>
    80003334:	00813083          	ld	ra,8(sp)
    80003338:	00013403          	ld	s0,0(sp)
    8000333c:	00000513          	li	a0,0
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret
    80003348:	00003517          	auipc	a0,0x3
    8000334c:	eb050513          	addi	a0,a0,-336 # 800061f8 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80003350:	00001097          	auipc	ra,0x1
    80003354:	8ec080e7          	jalr	-1812(ra) # 80003c3c <panic>

0000000080003358 <trapinit>:
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00813423          	sd	s0,8(sp)
    80003360:	01010413          	addi	s0,sp,16
    80003364:	00813403          	ld	s0,8(sp)
    80003368:	00003597          	auipc	a1,0x3
    8000336c:	eb858593          	addi	a1,a1,-328 # 80006220 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003370:	00005517          	auipc	a0,0x5
    80003374:	f1050513          	addi	a0,a0,-240 # 80008280 <tickslock>
    80003378:	01010113          	addi	sp,sp,16
    8000337c:	00001317          	auipc	t1,0x1
    80003380:	5cc30067          	jr	1484(t1) # 80004948 <initlock>

0000000080003384 <trapinithart>:
    80003384:	ff010113          	addi	sp,sp,-16
    80003388:	00813423          	sd	s0,8(sp)
    8000338c:	01010413          	addi	s0,sp,16
    80003390:	00000797          	auipc	a5,0x0
    80003394:	30078793          	addi	a5,a5,768 # 80003690 <kernelvec>
    80003398:	10579073          	csrw	stvec,a5
    8000339c:	00813403          	ld	s0,8(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret

00000000800033a8 <usertrap>:
    800033a8:	ff010113          	addi	sp,sp,-16
    800033ac:	00813423          	sd	s0,8(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	00813403          	ld	s0,8(sp)
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00008067          	ret

00000000800033c0 <usertrapret>:
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    800033cc:	00813403          	ld	s0,8(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret

00000000800033d8 <kerneltrap>:
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00813823          	sd	s0,16(sp)
    800033e0:	00113c23          	sd	ra,24(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	02010413          	addi	s0,sp,32
    800033ec:	142025f3          	csrr	a1,scause
    800033f0:	100027f3          	csrr	a5,sstatus
    800033f4:	0027f793          	andi	a5,a5,2
    800033f8:	10079c63          	bnez	a5,80003510 <kerneltrap+0x138>
    800033fc:	142027f3          	csrr	a5,scause
    80003400:	0207ce63          	bltz	a5,8000343c <kerneltrap+0x64>
    80003404:	00003517          	auipc	a0,0x3
    80003408:	e6450513          	addi	a0,a0,-412 # 80006268 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    8000340c:	00001097          	auipc	ra,0x1
    80003410:	88c080e7          	jalr	-1908(ra) # 80003c98 <__printf>
    80003414:	141025f3          	csrr	a1,sepc
    80003418:	14302673          	csrr	a2,stval
    8000341c:	00003517          	auipc	a0,0x3
    80003420:	e5c50513          	addi	a0,a0,-420 # 80006278 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80003424:	00001097          	auipc	ra,0x1
    80003428:	874080e7          	jalr	-1932(ra) # 80003c98 <__printf>
    8000342c:	00003517          	auipc	a0,0x3
    80003430:	e6450513          	addi	a0,a0,-412 # 80006290 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80003434:	00001097          	auipc	ra,0x1
    80003438:	808080e7          	jalr	-2040(ra) # 80003c3c <panic>
    8000343c:	0ff7f713          	andi	a4,a5,255
    80003440:	00900693          	li	a3,9
    80003444:	04d70063          	beq	a4,a3,80003484 <kerneltrap+0xac>
    80003448:	fff00713          	li	a4,-1
    8000344c:	03f71713          	slli	a4,a4,0x3f
    80003450:	00170713          	addi	a4,a4,1
    80003454:	fae798e3          	bne	a5,a4,80003404 <kerneltrap+0x2c>
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	e00080e7          	jalr	-512(ra) # 80003258 <cpuid>
    80003460:	06050663          	beqz	a0,800034cc <kerneltrap+0xf4>
    80003464:	144027f3          	csrr	a5,sip
    80003468:	ffd7f793          	andi	a5,a5,-3
    8000346c:	14479073          	csrw	sip,a5
    80003470:	01813083          	ld	ra,24(sp)
    80003474:	01013403          	ld	s0,16(sp)
    80003478:	00813483          	ld	s1,8(sp)
    8000347c:	02010113          	addi	sp,sp,32
    80003480:	00008067          	ret
    80003484:	00000097          	auipc	ra,0x0
    80003488:	3d0080e7          	jalr	976(ra) # 80003854 <plic_claim>
    8000348c:	00a00793          	li	a5,10
    80003490:	00050493          	mv	s1,a0
    80003494:	06f50863          	beq	a0,a5,80003504 <kerneltrap+0x12c>
    80003498:	fc050ce3          	beqz	a0,80003470 <kerneltrap+0x98>
    8000349c:	00050593          	mv	a1,a0
    800034a0:	00003517          	auipc	a0,0x3
    800034a4:	da850513          	addi	a0,a0,-600 # 80006248 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	7f0080e7          	jalr	2032(ra) # 80003c98 <__printf>
    800034b0:	01013403          	ld	s0,16(sp)
    800034b4:	01813083          	ld	ra,24(sp)
    800034b8:	00048513          	mv	a0,s1
    800034bc:	00813483          	ld	s1,8(sp)
    800034c0:	02010113          	addi	sp,sp,32
    800034c4:	00000317          	auipc	t1,0x0
    800034c8:	3c830067          	jr	968(t1) # 8000388c <plic_complete>
    800034cc:	00005517          	auipc	a0,0x5
    800034d0:	db450513          	addi	a0,a0,-588 # 80008280 <tickslock>
    800034d4:	00001097          	auipc	ra,0x1
    800034d8:	498080e7          	jalr	1176(ra) # 8000496c <acquire>
    800034dc:	00004717          	auipc	a4,0x4
    800034e0:	c8870713          	addi	a4,a4,-888 # 80007164 <ticks>
    800034e4:	00072783          	lw	a5,0(a4)
    800034e8:	00005517          	auipc	a0,0x5
    800034ec:	d9850513          	addi	a0,a0,-616 # 80008280 <tickslock>
    800034f0:	0017879b          	addiw	a5,a5,1
    800034f4:	00f72023          	sw	a5,0(a4)
    800034f8:	00001097          	auipc	ra,0x1
    800034fc:	540080e7          	jalr	1344(ra) # 80004a38 <release>
    80003500:	f65ff06f          	j	80003464 <kerneltrap+0x8c>
    80003504:	00001097          	auipc	ra,0x1
    80003508:	09c080e7          	jalr	156(ra) # 800045a0 <uartintr>
    8000350c:	fa5ff06f          	j	800034b0 <kerneltrap+0xd8>
    80003510:	00003517          	auipc	a0,0x3
    80003514:	d1850513          	addi	a0,a0,-744 # 80006228 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	724080e7          	jalr	1828(ra) # 80003c3c <panic>

0000000080003520 <clockintr>:
    80003520:	fe010113          	addi	sp,sp,-32
    80003524:	00813823          	sd	s0,16(sp)
    80003528:	00913423          	sd	s1,8(sp)
    8000352c:	00113c23          	sd	ra,24(sp)
    80003530:	02010413          	addi	s0,sp,32
    80003534:	00005497          	auipc	s1,0x5
    80003538:	d4c48493          	addi	s1,s1,-692 # 80008280 <tickslock>
    8000353c:	00048513          	mv	a0,s1
    80003540:	00001097          	auipc	ra,0x1
    80003544:	42c080e7          	jalr	1068(ra) # 8000496c <acquire>
    80003548:	00004717          	auipc	a4,0x4
    8000354c:	c1c70713          	addi	a4,a4,-996 # 80007164 <ticks>
    80003550:	00072783          	lw	a5,0(a4)
    80003554:	01013403          	ld	s0,16(sp)
    80003558:	01813083          	ld	ra,24(sp)
    8000355c:	00048513          	mv	a0,s1
    80003560:	0017879b          	addiw	a5,a5,1
    80003564:	00813483          	ld	s1,8(sp)
    80003568:	00f72023          	sw	a5,0(a4)
    8000356c:	02010113          	addi	sp,sp,32
    80003570:	00001317          	auipc	t1,0x1
    80003574:	4c830067          	jr	1224(t1) # 80004a38 <release>

0000000080003578 <devintr>:
    80003578:	142027f3          	csrr	a5,scause
    8000357c:	00000513          	li	a0,0
    80003580:	0007c463          	bltz	a5,80003588 <devintr+0x10>
    80003584:	00008067          	ret
    80003588:	fe010113          	addi	sp,sp,-32
    8000358c:	00813823          	sd	s0,16(sp)
    80003590:	00113c23          	sd	ra,24(sp)
    80003594:	00913423          	sd	s1,8(sp)
    80003598:	02010413          	addi	s0,sp,32
    8000359c:	0ff7f713          	andi	a4,a5,255
    800035a0:	00900693          	li	a3,9
    800035a4:	04d70c63          	beq	a4,a3,800035fc <devintr+0x84>
    800035a8:	fff00713          	li	a4,-1
    800035ac:	03f71713          	slli	a4,a4,0x3f
    800035b0:	00170713          	addi	a4,a4,1
    800035b4:	00e78c63          	beq	a5,a4,800035cc <devintr+0x54>
    800035b8:	01813083          	ld	ra,24(sp)
    800035bc:	01013403          	ld	s0,16(sp)
    800035c0:	00813483          	ld	s1,8(sp)
    800035c4:	02010113          	addi	sp,sp,32
    800035c8:	00008067          	ret
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	c8c080e7          	jalr	-884(ra) # 80003258 <cpuid>
    800035d4:	06050663          	beqz	a0,80003640 <devintr+0xc8>
    800035d8:	144027f3          	csrr	a5,sip
    800035dc:	ffd7f793          	andi	a5,a5,-3
    800035e0:	14479073          	csrw	sip,a5
    800035e4:	01813083          	ld	ra,24(sp)
    800035e8:	01013403          	ld	s0,16(sp)
    800035ec:	00813483          	ld	s1,8(sp)
    800035f0:	00200513          	li	a0,2
    800035f4:	02010113          	addi	sp,sp,32
    800035f8:	00008067          	ret
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	258080e7          	jalr	600(ra) # 80003854 <plic_claim>
    80003604:	00a00793          	li	a5,10
    80003608:	00050493          	mv	s1,a0
    8000360c:	06f50663          	beq	a0,a5,80003678 <devintr+0x100>
    80003610:	00100513          	li	a0,1
    80003614:	fa0482e3          	beqz	s1,800035b8 <devintr+0x40>
    80003618:	00048593          	mv	a1,s1
    8000361c:	00003517          	auipc	a0,0x3
    80003620:	c2c50513          	addi	a0,a0,-980 # 80006248 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003624:	00000097          	auipc	ra,0x0
    80003628:	674080e7          	jalr	1652(ra) # 80003c98 <__printf>
    8000362c:	00048513          	mv	a0,s1
    80003630:	00000097          	auipc	ra,0x0
    80003634:	25c080e7          	jalr	604(ra) # 8000388c <plic_complete>
    80003638:	00100513          	li	a0,1
    8000363c:	f7dff06f          	j	800035b8 <devintr+0x40>
    80003640:	00005517          	auipc	a0,0x5
    80003644:	c4050513          	addi	a0,a0,-960 # 80008280 <tickslock>
    80003648:	00001097          	auipc	ra,0x1
    8000364c:	324080e7          	jalr	804(ra) # 8000496c <acquire>
    80003650:	00004717          	auipc	a4,0x4
    80003654:	b1470713          	addi	a4,a4,-1260 # 80007164 <ticks>
    80003658:	00072783          	lw	a5,0(a4)
    8000365c:	00005517          	auipc	a0,0x5
    80003660:	c2450513          	addi	a0,a0,-988 # 80008280 <tickslock>
    80003664:	0017879b          	addiw	a5,a5,1
    80003668:	00f72023          	sw	a5,0(a4)
    8000366c:	00001097          	auipc	ra,0x1
    80003670:	3cc080e7          	jalr	972(ra) # 80004a38 <release>
    80003674:	f65ff06f          	j	800035d8 <devintr+0x60>
    80003678:	00001097          	auipc	ra,0x1
    8000367c:	f28080e7          	jalr	-216(ra) # 800045a0 <uartintr>
    80003680:	fadff06f          	j	8000362c <devintr+0xb4>
	...

0000000080003690 <kernelvec>:
    80003690:	f0010113          	addi	sp,sp,-256
    80003694:	00113023          	sd	ra,0(sp)
    80003698:	00213423          	sd	sp,8(sp)
    8000369c:	00313823          	sd	gp,16(sp)
    800036a0:	00413c23          	sd	tp,24(sp)
    800036a4:	02513023          	sd	t0,32(sp)
    800036a8:	02613423          	sd	t1,40(sp)
    800036ac:	02713823          	sd	t2,48(sp)
    800036b0:	02813c23          	sd	s0,56(sp)
    800036b4:	04913023          	sd	s1,64(sp)
    800036b8:	04a13423          	sd	a0,72(sp)
    800036bc:	04b13823          	sd	a1,80(sp)
    800036c0:	04c13c23          	sd	a2,88(sp)
    800036c4:	06d13023          	sd	a3,96(sp)
    800036c8:	06e13423          	sd	a4,104(sp)
    800036cc:	06f13823          	sd	a5,112(sp)
    800036d0:	07013c23          	sd	a6,120(sp)
    800036d4:	09113023          	sd	a7,128(sp)
    800036d8:	09213423          	sd	s2,136(sp)
    800036dc:	09313823          	sd	s3,144(sp)
    800036e0:	09413c23          	sd	s4,152(sp)
    800036e4:	0b513023          	sd	s5,160(sp)
    800036e8:	0b613423          	sd	s6,168(sp)
    800036ec:	0b713823          	sd	s7,176(sp)
    800036f0:	0b813c23          	sd	s8,184(sp)
    800036f4:	0d913023          	sd	s9,192(sp)
    800036f8:	0da13423          	sd	s10,200(sp)
    800036fc:	0db13823          	sd	s11,208(sp)
    80003700:	0dc13c23          	sd	t3,216(sp)
    80003704:	0fd13023          	sd	t4,224(sp)
    80003708:	0fe13423          	sd	t5,232(sp)
    8000370c:	0ff13823          	sd	t6,240(sp)
    80003710:	cc9ff0ef          	jal	ra,800033d8 <kerneltrap>
    80003714:	00013083          	ld	ra,0(sp)
    80003718:	00813103          	ld	sp,8(sp)
    8000371c:	01013183          	ld	gp,16(sp)
    80003720:	02013283          	ld	t0,32(sp)
    80003724:	02813303          	ld	t1,40(sp)
    80003728:	03013383          	ld	t2,48(sp)
    8000372c:	03813403          	ld	s0,56(sp)
    80003730:	04013483          	ld	s1,64(sp)
    80003734:	04813503          	ld	a0,72(sp)
    80003738:	05013583          	ld	a1,80(sp)
    8000373c:	05813603          	ld	a2,88(sp)
    80003740:	06013683          	ld	a3,96(sp)
    80003744:	06813703          	ld	a4,104(sp)
    80003748:	07013783          	ld	a5,112(sp)
    8000374c:	07813803          	ld	a6,120(sp)
    80003750:	08013883          	ld	a7,128(sp)
    80003754:	08813903          	ld	s2,136(sp)
    80003758:	09013983          	ld	s3,144(sp)
    8000375c:	09813a03          	ld	s4,152(sp)
    80003760:	0a013a83          	ld	s5,160(sp)
    80003764:	0a813b03          	ld	s6,168(sp)
    80003768:	0b013b83          	ld	s7,176(sp)
    8000376c:	0b813c03          	ld	s8,184(sp)
    80003770:	0c013c83          	ld	s9,192(sp)
    80003774:	0c813d03          	ld	s10,200(sp)
    80003778:	0d013d83          	ld	s11,208(sp)
    8000377c:	0d813e03          	ld	t3,216(sp)
    80003780:	0e013e83          	ld	t4,224(sp)
    80003784:	0e813f03          	ld	t5,232(sp)
    80003788:	0f013f83          	ld	t6,240(sp)
    8000378c:	10010113          	addi	sp,sp,256
    80003790:	10200073          	sret
    80003794:	00000013          	nop
    80003798:	00000013          	nop
    8000379c:	00000013          	nop

00000000800037a0 <timervec>:
    800037a0:	34051573          	csrrw	a0,mscratch,a0
    800037a4:	00b53023          	sd	a1,0(a0)
    800037a8:	00c53423          	sd	a2,8(a0)
    800037ac:	00d53823          	sd	a3,16(a0)
    800037b0:	01853583          	ld	a1,24(a0)
    800037b4:	02053603          	ld	a2,32(a0)
    800037b8:	0005b683          	ld	a3,0(a1)
    800037bc:	00c686b3          	add	a3,a3,a2
    800037c0:	00d5b023          	sd	a3,0(a1)
    800037c4:	00200593          	li	a1,2
    800037c8:	14459073          	csrw	sip,a1
    800037cc:	01053683          	ld	a3,16(a0)
    800037d0:	00853603          	ld	a2,8(a0)
    800037d4:	00053583          	ld	a1,0(a0)
    800037d8:	34051573          	csrrw	a0,mscratch,a0
    800037dc:	30200073          	mret

00000000800037e0 <plicinit>:
    800037e0:	ff010113          	addi	sp,sp,-16
    800037e4:	00813423          	sd	s0,8(sp)
    800037e8:	01010413          	addi	s0,sp,16
    800037ec:	00813403          	ld	s0,8(sp)
    800037f0:	0c0007b7          	lui	a5,0xc000
    800037f4:	00100713          	li	a4,1
    800037f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800037fc:	00e7a223          	sw	a4,4(a5)
    80003800:	01010113          	addi	sp,sp,16
    80003804:	00008067          	ret

0000000080003808 <plicinithart>:
    80003808:	ff010113          	addi	sp,sp,-16
    8000380c:	00813023          	sd	s0,0(sp)
    80003810:	00113423          	sd	ra,8(sp)
    80003814:	01010413          	addi	s0,sp,16
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	a40080e7          	jalr	-1472(ra) # 80003258 <cpuid>
    80003820:	0085171b          	slliw	a4,a0,0x8
    80003824:	0c0027b7          	lui	a5,0xc002
    80003828:	00e787b3          	add	a5,a5,a4
    8000382c:	40200713          	li	a4,1026
    80003830:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003834:	00813083          	ld	ra,8(sp)
    80003838:	00013403          	ld	s0,0(sp)
    8000383c:	00d5151b          	slliw	a0,a0,0xd
    80003840:	0c2017b7          	lui	a5,0xc201
    80003844:	00a78533          	add	a0,a5,a0
    80003848:	00052023          	sw	zero,0(a0)
    8000384c:	01010113          	addi	sp,sp,16
    80003850:	00008067          	ret

0000000080003854 <plic_claim>:
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00813023          	sd	s0,0(sp)
    8000385c:	00113423          	sd	ra,8(sp)
    80003860:	01010413          	addi	s0,sp,16
    80003864:	00000097          	auipc	ra,0x0
    80003868:	9f4080e7          	jalr	-1548(ra) # 80003258 <cpuid>
    8000386c:	00813083          	ld	ra,8(sp)
    80003870:	00013403          	ld	s0,0(sp)
    80003874:	00d5151b          	slliw	a0,a0,0xd
    80003878:	0c2017b7          	lui	a5,0xc201
    8000387c:	00a78533          	add	a0,a5,a0
    80003880:	00452503          	lw	a0,4(a0)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <plic_complete>:
    8000388c:	fe010113          	addi	sp,sp,-32
    80003890:	00813823          	sd	s0,16(sp)
    80003894:	00913423          	sd	s1,8(sp)
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	02010413          	addi	s0,sp,32
    800038a0:	00050493          	mv	s1,a0
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	9b4080e7          	jalr	-1612(ra) # 80003258 <cpuid>
    800038ac:	01813083          	ld	ra,24(sp)
    800038b0:	01013403          	ld	s0,16(sp)
    800038b4:	00d5179b          	slliw	a5,a0,0xd
    800038b8:	0c201737          	lui	a4,0xc201
    800038bc:	00f707b3          	add	a5,a4,a5
    800038c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800038c4:	00813483          	ld	s1,8(sp)
    800038c8:	02010113          	addi	sp,sp,32
    800038cc:	00008067          	ret

00000000800038d0 <consolewrite>:
    800038d0:	fb010113          	addi	sp,sp,-80
    800038d4:	04813023          	sd	s0,64(sp)
    800038d8:	04113423          	sd	ra,72(sp)
    800038dc:	02913c23          	sd	s1,56(sp)
    800038e0:	03213823          	sd	s2,48(sp)
    800038e4:	03313423          	sd	s3,40(sp)
    800038e8:	03413023          	sd	s4,32(sp)
    800038ec:	01513c23          	sd	s5,24(sp)
    800038f0:	05010413          	addi	s0,sp,80
    800038f4:	06c05c63          	blez	a2,8000396c <consolewrite+0x9c>
    800038f8:	00060993          	mv	s3,a2
    800038fc:	00050a13          	mv	s4,a0
    80003900:	00058493          	mv	s1,a1
    80003904:	00000913          	li	s2,0
    80003908:	fff00a93          	li	s5,-1
    8000390c:	01c0006f          	j	80003928 <consolewrite+0x58>
    80003910:	fbf44503          	lbu	a0,-65(s0)
    80003914:	0019091b          	addiw	s2,s2,1
    80003918:	00148493          	addi	s1,s1,1
    8000391c:	00001097          	auipc	ra,0x1
    80003920:	a9c080e7          	jalr	-1380(ra) # 800043b8 <uartputc>
    80003924:	03298063          	beq	s3,s2,80003944 <consolewrite+0x74>
    80003928:	00048613          	mv	a2,s1
    8000392c:	00100693          	li	a3,1
    80003930:	000a0593          	mv	a1,s4
    80003934:	fbf40513          	addi	a0,s0,-65
    80003938:	00000097          	auipc	ra,0x0
    8000393c:	9d8080e7          	jalr	-1576(ra) # 80003310 <either_copyin>
    80003940:	fd5518e3          	bne	a0,s5,80003910 <consolewrite+0x40>
    80003944:	04813083          	ld	ra,72(sp)
    80003948:	04013403          	ld	s0,64(sp)
    8000394c:	03813483          	ld	s1,56(sp)
    80003950:	02813983          	ld	s3,40(sp)
    80003954:	02013a03          	ld	s4,32(sp)
    80003958:	01813a83          	ld	s5,24(sp)
    8000395c:	00090513          	mv	a0,s2
    80003960:	03013903          	ld	s2,48(sp)
    80003964:	05010113          	addi	sp,sp,80
    80003968:	00008067          	ret
    8000396c:	00000913          	li	s2,0
    80003970:	fd5ff06f          	j	80003944 <consolewrite+0x74>

0000000080003974 <consoleread>:
    80003974:	f9010113          	addi	sp,sp,-112
    80003978:	06813023          	sd	s0,96(sp)
    8000397c:	04913c23          	sd	s1,88(sp)
    80003980:	05213823          	sd	s2,80(sp)
    80003984:	05313423          	sd	s3,72(sp)
    80003988:	05413023          	sd	s4,64(sp)
    8000398c:	03513c23          	sd	s5,56(sp)
    80003990:	03613823          	sd	s6,48(sp)
    80003994:	03713423          	sd	s7,40(sp)
    80003998:	03813023          	sd	s8,32(sp)
    8000399c:	06113423          	sd	ra,104(sp)
    800039a0:	01913c23          	sd	s9,24(sp)
    800039a4:	07010413          	addi	s0,sp,112
    800039a8:	00060b93          	mv	s7,a2
    800039ac:	00050913          	mv	s2,a0
    800039b0:	00058c13          	mv	s8,a1
    800039b4:	00060b1b          	sext.w	s6,a2
    800039b8:	00005497          	auipc	s1,0x5
    800039bc:	8f048493          	addi	s1,s1,-1808 # 800082a8 <cons>
    800039c0:	00400993          	li	s3,4
    800039c4:	fff00a13          	li	s4,-1
    800039c8:	00a00a93          	li	s5,10
    800039cc:	05705e63          	blez	s7,80003a28 <consoleread+0xb4>
    800039d0:	09c4a703          	lw	a4,156(s1)
    800039d4:	0984a783          	lw	a5,152(s1)
    800039d8:	0007071b          	sext.w	a4,a4
    800039dc:	08e78463          	beq	a5,a4,80003a64 <consoleread+0xf0>
    800039e0:	07f7f713          	andi	a4,a5,127
    800039e4:	00e48733          	add	a4,s1,a4
    800039e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800039ec:	0017869b          	addiw	a3,a5,1
    800039f0:	08d4ac23          	sw	a3,152(s1)
    800039f4:	00070c9b          	sext.w	s9,a4
    800039f8:	0b370663          	beq	a4,s3,80003aa4 <consoleread+0x130>
    800039fc:	00100693          	li	a3,1
    80003a00:	f9f40613          	addi	a2,s0,-97
    80003a04:	000c0593          	mv	a1,s8
    80003a08:	00090513          	mv	a0,s2
    80003a0c:	f8e40fa3          	sb	a4,-97(s0)
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	8b4080e7          	jalr	-1868(ra) # 800032c4 <either_copyout>
    80003a18:	01450863          	beq	a0,s4,80003a28 <consoleread+0xb4>
    80003a1c:	001c0c13          	addi	s8,s8,1
    80003a20:	fffb8b9b          	addiw	s7,s7,-1
    80003a24:	fb5c94e3          	bne	s9,s5,800039cc <consoleread+0x58>
    80003a28:	000b851b          	sext.w	a0,s7
    80003a2c:	06813083          	ld	ra,104(sp)
    80003a30:	06013403          	ld	s0,96(sp)
    80003a34:	05813483          	ld	s1,88(sp)
    80003a38:	05013903          	ld	s2,80(sp)
    80003a3c:	04813983          	ld	s3,72(sp)
    80003a40:	04013a03          	ld	s4,64(sp)
    80003a44:	03813a83          	ld	s5,56(sp)
    80003a48:	02813b83          	ld	s7,40(sp)
    80003a4c:	02013c03          	ld	s8,32(sp)
    80003a50:	01813c83          	ld	s9,24(sp)
    80003a54:	40ab053b          	subw	a0,s6,a0
    80003a58:	03013b03          	ld	s6,48(sp)
    80003a5c:	07010113          	addi	sp,sp,112
    80003a60:	00008067          	ret
    80003a64:	00001097          	auipc	ra,0x1
    80003a68:	1d8080e7          	jalr	472(ra) # 80004c3c <push_on>
    80003a6c:	0984a703          	lw	a4,152(s1)
    80003a70:	09c4a783          	lw	a5,156(s1)
    80003a74:	0007879b          	sext.w	a5,a5
    80003a78:	fef70ce3          	beq	a4,a5,80003a70 <consoleread+0xfc>
    80003a7c:	00001097          	auipc	ra,0x1
    80003a80:	234080e7          	jalr	564(ra) # 80004cb0 <pop_on>
    80003a84:	0984a783          	lw	a5,152(s1)
    80003a88:	07f7f713          	andi	a4,a5,127
    80003a8c:	00e48733          	add	a4,s1,a4
    80003a90:	01874703          	lbu	a4,24(a4)
    80003a94:	0017869b          	addiw	a3,a5,1
    80003a98:	08d4ac23          	sw	a3,152(s1)
    80003a9c:	00070c9b          	sext.w	s9,a4
    80003aa0:	f5371ee3          	bne	a4,s3,800039fc <consoleread+0x88>
    80003aa4:	000b851b          	sext.w	a0,s7
    80003aa8:	f96bf2e3          	bgeu	s7,s6,80003a2c <consoleread+0xb8>
    80003aac:	08f4ac23          	sw	a5,152(s1)
    80003ab0:	f7dff06f          	j	80003a2c <consoleread+0xb8>

0000000080003ab4 <consputc>:
    80003ab4:	10000793          	li	a5,256
    80003ab8:	00f50663          	beq	a0,a5,80003ac4 <consputc+0x10>
    80003abc:	00001317          	auipc	t1,0x1
    80003ac0:	9f430067          	jr	-1548(t1) # 800044b0 <uartputc_sync>
    80003ac4:	ff010113          	addi	sp,sp,-16
    80003ac8:	00113423          	sd	ra,8(sp)
    80003acc:	00813023          	sd	s0,0(sp)
    80003ad0:	01010413          	addi	s0,sp,16
    80003ad4:	00800513          	li	a0,8
    80003ad8:	00001097          	auipc	ra,0x1
    80003adc:	9d8080e7          	jalr	-1576(ra) # 800044b0 <uartputc_sync>
    80003ae0:	02000513          	li	a0,32
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	9cc080e7          	jalr	-1588(ra) # 800044b0 <uartputc_sync>
    80003aec:	00013403          	ld	s0,0(sp)
    80003af0:	00813083          	ld	ra,8(sp)
    80003af4:	00800513          	li	a0,8
    80003af8:	01010113          	addi	sp,sp,16
    80003afc:	00001317          	auipc	t1,0x1
    80003b00:	9b430067          	jr	-1612(t1) # 800044b0 <uartputc_sync>

0000000080003b04 <consoleintr>:
    80003b04:	fe010113          	addi	sp,sp,-32
    80003b08:	00813823          	sd	s0,16(sp)
    80003b0c:	00913423          	sd	s1,8(sp)
    80003b10:	01213023          	sd	s2,0(sp)
    80003b14:	00113c23          	sd	ra,24(sp)
    80003b18:	02010413          	addi	s0,sp,32
    80003b1c:	00004917          	auipc	s2,0x4
    80003b20:	78c90913          	addi	s2,s2,1932 # 800082a8 <cons>
    80003b24:	00050493          	mv	s1,a0
    80003b28:	00090513          	mv	a0,s2
    80003b2c:	00001097          	auipc	ra,0x1
    80003b30:	e40080e7          	jalr	-448(ra) # 8000496c <acquire>
    80003b34:	02048c63          	beqz	s1,80003b6c <consoleintr+0x68>
    80003b38:	0a092783          	lw	a5,160(s2)
    80003b3c:	09892703          	lw	a4,152(s2)
    80003b40:	07f00693          	li	a3,127
    80003b44:	40e7873b          	subw	a4,a5,a4
    80003b48:	02e6e263          	bltu	a3,a4,80003b6c <consoleintr+0x68>
    80003b4c:	00d00713          	li	a4,13
    80003b50:	04e48063          	beq	s1,a4,80003b90 <consoleintr+0x8c>
    80003b54:	07f7f713          	andi	a4,a5,127
    80003b58:	00e90733          	add	a4,s2,a4
    80003b5c:	0017879b          	addiw	a5,a5,1
    80003b60:	0af92023          	sw	a5,160(s2)
    80003b64:	00970c23          	sb	s1,24(a4)
    80003b68:	08f92e23          	sw	a5,156(s2)
    80003b6c:	01013403          	ld	s0,16(sp)
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	00813483          	ld	s1,8(sp)
    80003b78:	00013903          	ld	s2,0(sp)
    80003b7c:	00004517          	auipc	a0,0x4
    80003b80:	72c50513          	addi	a0,a0,1836 # 800082a8 <cons>
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00001317          	auipc	t1,0x1
    80003b8c:	eb030067          	jr	-336(t1) # 80004a38 <release>
    80003b90:	00a00493          	li	s1,10
    80003b94:	fc1ff06f          	j	80003b54 <consoleintr+0x50>

0000000080003b98 <consoleinit>:
    80003b98:	fe010113          	addi	sp,sp,-32
    80003b9c:	00113c23          	sd	ra,24(sp)
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00913423          	sd	s1,8(sp)
    80003ba8:	02010413          	addi	s0,sp,32
    80003bac:	00004497          	auipc	s1,0x4
    80003bb0:	6fc48493          	addi	s1,s1,1788 # 800082a8 <cons>
    80003bb4:	00048513          	mv	a0,s1
    80003bb8:	00002597          	auipc	a1,0x2
    80003bbc:	6e858593          	addi	a1,a1,1768 # 800062a0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80003bc0:	00001097          	auipc	ra,0x1
    80003bc4:	d88080e7          	jalr	-632(ra) # 80004948 <initlock>
    80003bc8:	00000097          	auipc	ra,0x0
    80003bcc:	7ac080e7          	jalr	1964(ra) # 80004374 <uartinit>
    80003bd0:	01813083          	ld	ra,24(sp)
    80003bd4:	01013403          	ld	s0,16(sp)
    80003bd8:	00000797          	auipc	a5,0x0
    80003bdc:	d9c78793          	addi	a5,a5,-612 # 80003974 <consoleread>
    80003be0:	0af4bc23          	sd	a5,184(s1)
    80003be4:	00000797          	auipc	a5,0x0
    80003be8:	cec78793          	addi	a5,a5,-788 # 800038d0 <consolewrite>
    80003bec:	0cf4b023          	sd	a5,192(s1)
    80003bf0:	00813483          	ld	s1,8(sp)
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00008067          	ret

0000000080003bfc <console_read>:
    80003bfc:	ff010113          	addi	sp,sp,-16
    80003c00:	00813423          	sd	s0,8(sp)
    80003c04:	01010413          	addi	s0,sp,16
    80003c08:	00813403          	ld	s0,8(sp)
    80003c0c:	00004317          	auipc	t1,0x4
    80003c10:	75433303          	ld	t1,1876(t1) # 80008360 <devsw+0x10>
    80003c14:	01010113          	addi	sp,sp,16
    80003c18:	00030067          	jr	t1

0000000080003c1c <console_write>:
    80003c1c:	ff010113          	addi	sp,sp,-16
    80003c20:	00813423          	sd	s0,8(sp)
    80003c24:	01010413          	addi	s0,sp,16
    80003c28:	00813403          	ld	s0,8(sp)
    80003c2c:	00004317          	auipc	t1,0x4
    80003c30:	73c33303          	ld	t1,1852(t1) # 80008368 <devsw+0x18>
    80003c34:	01010113          	addi	sp,sp,16
    80003c38:	00030067          	jr	t1

0000000080003c3c <panic>:
    80003c3c:	fe010113          	addi	sp,sp,-32
    80003c40:	00113c23          	sd	ra,24(sp)
    80003c44:	00813823          	sd	s0,16(sp)
    80003c48:	00913423          	sd	s1,8(sp)
    80003c4c:	02010413          	addi	s0,sp,32
    80003c50:	00050493          	mv	s1,a0
    80003c54:	00002517          	auipc	a0,0x2
    80003c58:	65450513          	addi	a0,a0,1620 # 800062a8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80003c5c:	00004797          	auipc	a5,0x4
    80003c60:	7a07a623          	sw	zero,1964(a5) # 80008408 <pr+0x18>
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	034080e7          	jalr	52(ra) # 80003c98 <__printf>
    80003c6c:	00048513          	mv	a0,s1
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	028080e7          	jalr	40(ra) # 80003c98 <__printf>
    80003c78:	00002517          	auipc	a0,0x2
    80003c7c:	61050513          	addi	a0,a0,1552 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	018080e7          	jalr	24(ra) # 80003c98 <__printf>
    80003c88:	00100793          	li	a5,1
    80003c8c:	00003717          	auipc	a4,0x3
    80003c90:	4cf72e23          	sw	a5,1244(a4) # 80007168 <panicked>
    80003c94:	0000006f          	j	80003c94 <panic+0x58>

0000000080003c98 <__printf>:
    80003c98:	f3010113          	addi	sp,sp,-208
    80003c9c:	08813023          	sd	s0,128(sp)
    80003ca0:	07313423          	sd	s3,104(sp)
    80003ca4:	09010413          	addi	s0,sp,144
    80003ca8:	05813023          	sd	s8,64(sp)
    80003cac:	08113423          	sd	ra,136(sp)
    80003cb0:	06913c23          	sd	s1,120(sp)
    80003cb4:	07213823          	sd	s2,112(sp)
    80003cb8:	07413023          	sd	s4,96(sp)
    80003cbc:	05513c23          	sd	s5,88(sp)
    80003cc0:	05613823          	sd	s6,80(sp)
    80003cc4:	05713423          	sd	s7,72(sp)
    80003cc8:	03913c23          	sd	s9,56(sp)
    80003ccc:	03a13823          	sd	s10,48(sp)
    80003cd0:	03b13423          	sd	s11,40(sp)
    80003cd4:	00004317          	auipc	t1,0x4
    80003cd8:	71c30313          	addi	t1,t1,1820 # 800083f0 <pr>
    80003cdc:	01832c03          	lw	s8,24(t1)
    80003ce0:	00b43423          	sd	a1,8(s0)
    80003ce4:	00c43823          	sd	a2,16(s0)
    80003ce8:	00d43c23          	sd	a3,24(s0)
    80003cec:	02e43023          	sd	a4,32(s0)
    80003cf0:	02f43423          	sd	a5,40(s0)
    80003cf4:	03043823          	sd	a6,48(s0)
    80003cf8:	03143c23          	sd	a7,56(s0)
    80003cfc:	00050993          	mv	s3,a0
    80003d00:	4a0c1663          	bnez	s8,800041ac <__printf+0x514>
    80003d04:	60098c63          	beqz	s3,8000431c <__printf+0x684>
    80003d08:	0009c503          	lbu	a0,0(s3)
    80003d0c:	00840793          	addi	a5,s0,8
    80003d10:	f6f43c23          	sd	a5,-136(s0)
    80003d14:	00000493          	li	s1,0
    80003d18:	22050063          	beqz	a0,80003f38 <__printf+0x2a0>
    80003d1c:	00002a37          	lui	s4,0x2
    80003d20:	00018ab7          	lui	s5,0x18
    80003d24:	000f4b37          	lui	s6,0xf4
    80003d28:	00989bb7          	lui	s7,0x989
    80003d2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003d30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003d34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003d38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003d3c:	00148c9b          	addiw	s9,s1,1
    80003d40:	02500793          	li	a5,37
    80003d44:	01998933          	add	s2,s3,s9
    80003d48:	38f51263          	bne	a0,a5,800040cc <__printf+0x434>
    80003d4c:	00094783          	lbu	a5,0(s2)
    80003d50:	00078c9b          	sext.w	s9,a5
    80003d54:	1e078263          	beqz	a5,80003f38 <__printf+0x2a0>
    80003d58:	0024849b          	addiw	s1,s1,2
    80003d5c:	07000713          	li	a4,112
    80003d60:	00998933          	add	s2,s3,s1
    80003d64:	38e78a63          	beq	a5,a4,800040f8 <__printf+0x460>
    80003d68:	20f76863          	bltu	a4,a5,80003f78 <__printf+0x2e0>
    80003d6c:	42a78863          	beq	a5,a0,8000419c <__printf+0x504>
    80003d70:	06400713          	li	a4,100
    80003d74:	40e79663          	bne	a5,a4,80004180 <__printf+0x4e8>
    80003d78:	f7843783          	ld	a5,-136(s0)
    80003d7c:	0007a603          	lw	a2,0(a5)
    80003d80:	00878793          	addi	a5,a5,8
    80003d84:	f6f43c23          	sd	a5,-136(s0)
    80003d88:	42064a63          	bltz	a2,800041bc <__printf+0x524>
    80003d8c:	00a00713          	li	a4,10
    80003d90:	02e677bb          	remuw	a5,a2,a4
    80003d94:	00002d97          	auipc	s11,0x2
    80003d98:	53cd8d93          	addi	s11,s11,1340 # 800062d0 <digits>
    80003d9c:	00900593          	li	a1,9
    80003da0:	0006051b          	sext.w	a0,a2
    80003da4:	00000c93          	li	s9,0
    80003da8:	02079793          	slli	a5,a5,0x20
    80003dac:	0207d793          	srli	a5,a5,0x20
    80003db0:	00fd87b3          	add	a5,s11,a5
    80003db4:	0007c783          	lbu	a5,0(a5)
    80003db8:	02e656bb          	divuw	a3,a2,a4
    80003dbc:	f8f40023          	sb	a5,-128(s0)
    80003dc0:	14c5d863          	bge	a1,a2,80003f10 <__printf+0x278>
    80003dc4:	06300593          	li	a1,99
    80003dc8:	00100c93          	li	s9,1
    80003dcc:	02e6f7bb          	remuw	a5,a3,a4
    80003dd0:	02079793          	slli	a5,a5,0x20
    80003dd4:	0207d793          	srli	a5,a5,0x20
    80003dd8:	00fd87b3          	add	a5,s11,a5
    80003ddc:	0007c783          	lbu	a5,0(a5)
    80003de0:	02e6d73b          	divuw	a4,a3,a4
    80003de4:	f8f400a3          	sb	a5,-127(s0)
    80003de8:	12a5f463          	bgeu	a1,a0,80003f10 <__printf+0x278>
    80003dec:	00a00693          	li	a3,10
    80003df0:	00900593          	li	a1,9
    80003df4:	02d777bb          	remuw	a5,a4,a3
    80003df8:	02079793          	slli	a5,a5,0x20
    80003dfc:	0207d793          	srli	a5,a5,0x20
    80003e00:	00fd87b3          	add	a5,s11,a5
    80003e04:	0007c503          	lbu	a0,0(a5)
    80003e08:	02d757bb          	divuw	a5,a4,a3
    80003e0c:	f8a40123          	sb	a0,-126(s0)
    80003e10:	48e5f263          	bgeu	a1,a4,80004294 <__printf+0x5fc>
    80003e14:	06300513          	li	a0,99
    80003e18:	02d7f5bb          	remuw	a1,a5,a3
    80003e1c:	02059593          	slli	a1,a1,0x20
    80003e20:	0205d593          	srli	a1,a1,0x20
    80003e24:	00bd85b3          	add	a1,s11,a1
    80003e28:	0005c583          	lbu	a1,0(a1)
    80003e2c:	02d7d7bb          	divuw	a5,a5,a3
    80003e30:	f8b401a3          	sb	a1,-125(s0)
    80003e34:	48e57263          	bgeu	a0,a4,800042b8 <__printf+0x620>
    80003e38:	3e700513          	li	a0,999
    80003e3c:	02d7f5bb          	remuw	a1,a5,a3
    80003e40:	02059593          	slli	a1,a1,0x20
    80003e44:	0205d593          	srli	a1,a1,0x20
    80003e48:	00bd85b3          	add	a1,s11,a1
    80003e4c:	0005c583          	lbu	a1,0(a1)
    80003e50:	02d7d7bb          	divuw	a5,a5,a3
    80003e54:	f8b40223          	sb	a1,-124(s0)
    80003e58:	46e57663          	bgeu	a0,a4,800042c4 <__printf+0x62c>
    80003e5c:	02d7f5bb          	remuw	a1,a5,a3
    80003e60:	02059593          	slli	a1,a1,0x20
    80003e64:	0205d593          	srli	a1,a1,0x20
    80003e68:	00bd85b3          	add	a1,s11,a1
    80003e6c:	0005c583          	lbu	a1,0(a1)
    80003e70:	02d7d7bb          	divuw	a5,a5,a3
    80003e74:	f8b402a3          	sb	a1,-123(s0)
    80003e78:	46ea7863          	bgeu	s4,a4,800042e8 <__printf+0x650>
    80003e7c:	02d7f5bb          	remuw	a1,a5,a3
    80003e80:	02059593          	slli	a1,a1,0x20
    80003e84:	0205d593          	srli	a1,a1,0x20
    80003e88:	00bd85b3          	add	a1,s11,a1
    80003e8c:	0005c583          	lbu	a1,0(a1)
    80003e90:	02d7d7bb          	divuw	a5,a5,a3
    80003e94:	f8b40323          	sb	a1,-122(s0)
    80003e98:	3eeaf863          	bgeu	s5,a4,80004288 <__printf+0x5f0>
    80003e9c:	02d7f5bb          	remuw	a1,a5,a3
    80003ea0:	02059593          	slli	a1,a1,0x20
    80003ea4:	0205d593          	srli	a1,a1,0x20
    80003ea8:	00bd85b3          	add	a1,s11,a1
    80003eac:	0005c583          	lbu	a1,0(a1)
    80003eb0:	02d7d7bb          	divuw	a5,a5,a3
    80003eb4:	f8b403a3          	sb	a1,-121(s0)
    80003eb8:	42eb7e63          	bgeu	s6,a4,800042f4 <__printf+0x65c>
    80003ebc:	02d7f5bb          	remuw	a1,a5,a3
    80003ec0:	02059593          	slli	a1,a1,0x20
    80003ec4:	0205d593          	srli	a1,a1,0x20
    80003ec8:	00bd85b3          	add	a1,s11,a1
    80003ecc:	0005c583          	lbu	a1,0(a1)
    80003ed0:	02d7d7bb          	divuw	a5,a5,a3
    80003ed4:	f8b40423          	sb	a1,-120(s0)
    80003ed8:	42ebfc63          	bgeu	s7,a4,80004310 <__printf+0x678>
    80003edc:	02079793          	slli	a5,a5,0x20
    80003ee0:	0207d793          	srli	a5,a5,0x20
    80003ee4:	00fd8db3          	add	s11,s11,a5
    80003ee8:	000dc703          	lbu	a4,0(s11)
    80003eec:	00a00793          	li	a5,10
    80003ef0:	00900c93          	li	s9,9
    80003ef4:	f8e404a3          	sb	a4,-119(s0)
    80003ef8:	00065c63          	bgez	a2,80003f10 <__printf+0x278>
    80003efc:	f9040713          	addi	a4,s0,-112
    80003f00:	00f70733          	add	a4,a4,a5
    80003f04:	02d00693          	li	a3,45
    80003f08:	fed70823          	sb	a3,-16(a4)
    80003f0c:	00078c93          	mv	s9,a5
    80003f10:	f8040793          	addi	a5,s0,-128
    80003f14:	01978cb3          	add	s9,a5,s9
    80003f18:	f7f40d13          	addi	s10,s0,-129
    80003f1c:	000cc503          	lbu	a0,0(s9)
    80003f20:	fffc8c93          	addi	s9,s9,-1
    80003f24:	00000097          	auipc	ra,0x0
    80003f28:	b90080e7          	jalr	-1136(ra) # 80003ab4 <consputc>
    80003f2c:	ffac98e3          	bne	s9,s10,80003f1c <__printf+0x284>
    80003f30:	00094503          	lbu	a0,0(s2)
    80003f34:	e00514e3          	bnez	a0,80003d3c <__printf+0xa4>
    80003f38:	1a0c1663          	bnez	s8,800040e4 <__printf+0x44c>
    80003f3c:	08813083          	ld	ra,136(sp)
    80003f40:	08013403          	ld	s0,128(sp)
    80003f44:	07813483          	ld	s1,120(sp)
    80003f48:	07013903          	ld	s2,112(sp)
    80003f4c:	06813983          	ld	s3,104(sp)
    80003f50:	06013a03          	ld	s4,96(sp)
    80003f54:	05813a83          	ld	s5,88(sp)
    80003f58:	05013b03          	ld	s6,80(sp)
    80003f5c:	04813b83          	ld	s7,72(sp)
    80003f60:	04013c03          	ld	s8,64(sp)
    80003f64:	03813c83          	ld	s9,56(sp)
    80003f68:	03013d03          	ld	s10,48(sp)
    80003f6c:	02813d83          	ld	s11,40(sp)
    80003f70:	0d010113          	addi	sp,sp,208
    80003f74:	00008067          	ret
    80003f78:	07300713          	li	a4,115
    80003f7c:	1ce78a63          	beq	a5,a4,80004150 <__printf+0x4b8>
    80003f80:	07800713          	li	a4,120
    80003f84:	1ee79e63          	bne	a5,a4,80004180 <__printf+0x4e8>
    80003f88:	f7843783          	ld	a5,-136(s0)
    80003f8c:	0007a703          	lw	a4,0(a5)
    80003f90:	00878793          	addi	a5,a5,8
    80003f94:	f6f43c23          	sd	a5,-136(s0)
    80003f98:	28074263          	bltz	a4,8000421c <__printf+0x584>
    80003f9c:	00002d97          	auipc	s11,0x2
    80003fa0:	334d8d93          	addi	s11,s11,820 # 800062d0 <digits>
    80003fa4:	00f77793          	andi	a5,a4,15
    80003fa8:	00fd87b3          	add	a5,s11,a5
    80003fac:	0007c683          	lbu	a3,0(a5)
    80003fb0:	00f00613          	li	a2,15
    80003fb4:	0007079b          	sext.w	a5,a4
    80003fb8:	f8d40023          	sb	a3,-128(s0)
    80003fbc:	0047559b          	srliw	a1,a4,0x4
    80003fc0:	0047569b          	srliw	a3,a4,0x4
    80003fc4:	00000c93          	li	s9,0
    80003fc8:	0ee65063          	bge	a2,a4,800040a8 <__printf+0x410>
    80003fcc:	00f6f693          	andi	a3,a3,15
    80003fd0:	00dd86b3          	add	a3,s11,a3
    80003fd4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003fd8:	0087d79b          	srliw	a5,a5,0x8
    80003fdc:	00100c93          	li	s9,1
    80003fe0:	f8d400a3          	sb	a3,-127(s0)
    80003fe4:	0cb67263          	bgeu	a2,a1,800040a8 <__printf+0x410>
    80003fe8:	00f7f693          	andi	a3,a5,15
    80003fec:	00dd86b3          	add	a3,s11,a3
    80003ff0:	0006c583          	lbu	a1,0(a3)
    80003ff4:	00f00613          	li	a2,15
    80003ff8:	0047d69b          	srliw	a3,a5,0x4
    80003ffc:	f8b40123          	sb	a1,-126(s0)
    80004000:	0047d593          	srli	a1,a5,0x4
    80004004:	28f67e63          	bgeu	a2,a5,800042a0 <__printf+0x608>
    80004008:	00f6f693          	andi	a3,a3,15
    8000400c:	00dd86b3          	add	a3,s11,a3
    80004010:	0006c503          	lbu	a0,0(a3)
    80004014:	0087d813          	srli	a6,a5,0x8
    80004018:	0087d69b          	srliw	a3,a5,0x8
    8000401c:	f8a401a3          	sb	a0,-125(s0)
    80004020:	28b67663          	bgeu	a2,a1,800042ac <__printf+0x614>
    80004024:	00f6f693          	andi	a3,a3,15
    80004028:	00dd86b3          	add	a3,s11,a3
    8000402c:	0006c583          	lbu	a1,0(a3)
    80004030:	00c7d513          	srli	a0,a5,0xc
    80004034:	00c7d69b          	srliw	a3,a5,0xc
    80004038:	f8b40223          	sb	a1,-124(s0)
    8000403c:	29067a63          	bgeu	a2,a6,800042d0 <__printf+0x638>
    80004040:	00f6f693          	andi	a3,a3,15
    80004044:	00dd86b3          	add	a3,s11,a3
    80004048:	0006c583          	lbu	a1,0(a3)
    8000404c:	0107d813          	srli	a6,a5,0x10
    80004050:	0107d69b          	srliw	a3,a5,0x10
    80004054:	f8b402a3          	sb	a1,-123(s0)
    80004058:	28a67263          	bgeu	a2,a0,800042dc <__printf+0x644>
    8000405c:	00f6f693          	andi	a3,a3,15
    80004060:	00dd86b3          	add	a3,s11,a3
    80004064:	0006c683          	lbu	a3,0(a3)
    80004068:	0147d79b          	srliw	a5,a5,0x14
    8000406c:	f8d40323          	sb	a3,-122(s0)
    80004070:	21067663          	bgeu	a2,a6,8000427c <__printf+0x5e4>
    80004074:	02079793          	slli	a5,a5,0x20
    80004078:	0207d793          	srli	a5,a5,0x20
    8000407c:	00fd8db3          	add	s11,s11,a5
    80004080:	000dc683          	lbu	a3,0(s11)
    80004084:	00800793          	li	a5,8
    80004088:	00700c93          	li	s9,7
    8000408c:	f8d403a3          	sb	a3,-121(s0)
    80004090:	00075c63          	bgez	a4,800040a8 <__printf+0x410>
    80004094:	f9040713          	addi	a4,s0,-112
    80004098:	00f70733          	add	a4,a4,a5
    8000409c:	02d00693          	li	a3,45
    800040a0:	fed70823          	sb	a3,-16(a4)
    800040a4:	00078c93          	mv	s9,a5
    800040a8:	f8040793          	addi	a5,s0,-128
    800040ac:	01978cb3          	add	s9,a5,s9
    800040b0:	f7f40d13          	addi	s10,s0,-129
    800040b4:	000cc503          	lbu	a0,0(s9)
    800040b8:	fffc8c93          	addi	s9,s9,-1
    800040bc:	00000097          	auipc	ra,0x0
    800040c0:	9f8080e7          	jalr	-1544(ra) # 80003ab4 <consputc>
    800040c4:	ff9d18e3          	bne	s10,s9,800040b4 <__printf+0x41c>
    800040c8:	0100006f          	j	800040d8 <__printf+0x440>
    800040cc:	00000097          	auipc	ra,0x0
    800040d0:	9e8080e7          	jalr	-1560(ra) # 80003ab4 <consputc>
    800040d4:	000c8493          	mv	s1,s9
    800040d8:	00094503          	lbu	a0,0(s2)
    800040dc:	c60510e3          	bnez	a0,80003d3c <__printf+0xa4>
    800040e0:	e40c0ee3          	beqz	s8,80003f3c <__printf+0x2a4>
    800040e4:	00004517          	auipc	a0,0x4
    800040e8:	30c50513          	addi	a0,a0,780 # 800083f0 <pr>
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	94c080e7          	jalr	-1716(ra) # 80004a38 <release>
    800040f4:	e49ff06f          	j	80003f3c <__printf+0x2a4>
    800040f8:	f7843783          	ld	a5,-136(s0)
    800040fc:	03000513          	li	a0,48
    80004100:	01000d13          	li	s10,16
    80004104:	00878713          	addi	a4,a5,8
    80004108:	0007bc83          	ld	s9,0(a5)
    8000410c:	f6e43c23          	sd	a4,-136(s0)
    80004110:	00000097          	auipc	ra,0x0
    80004114:	9a4080e7          	jalr	-1628(ra) # 80003ab4 <consputc>
    80004118:	07800513          	li	a0,120
    8000411c:	00000097          	auipc	ra,0x0
    80004120:	998080e7          	jalr	-1640(ra) # 80003ab4 <consputc>
    80004124:	00002d97          	auipc	s11,0x2
    80004128:	1acd8d93          	addi	s11,s11,428 # 800062d0 <digits>
    8000412c:	03ccd793          	srli	a5,s9,0x3c
    80004130:	00fd87b3          	add	a5,s11,a5
    80004134:	0007c503          	lbu	a0,0(a5)
    80004138:	fffd0d1b          	addiw	s10,s10,-1
    8000413c:	004c9c93          	slli	s9,s9,0x4
    80004140:	00000097          	auipc	ra,0x0
    80004144:	974080e7          	jalr	-1676(ra) # 80003ab4 <consputc>
    80004148:	fe0d12e3          	bnez	s10,8000412c <__printf+0x494>
    8000414c:	f8dff06f          	j	800040d8 <__printf+0x440>
    80004150:	f7843783          	ld	a5,-136(s0)
    80004154:	0007bc83          	ld	s9,0(a5)
    80004158:	00878793          	addi	a5,a5,8
    8000415c:	f6f43c23          	sd	a5,-136(s0)
    80004160:	000c9a63          	bnez	s9,80004174 <__printf+0x4dc>
    80004164:	1080006f          	j	8000426c <__printf+0x5d4>
    80004168:	001c8c93          	addi	s9,s9,1
    8000416c:	00000097          	auipc	ra,0x0
    80004170:	948080e7          	jalr	-1720(ra) # 80003ab4 <consputc>
    80004174:	000cc503          	lbu	a0,0(s9)
    80004178:	fe0518e3          	bnez	a0,80004168 <__printf+0x4d0>
    8000417c:	f5dff06f          	j	800040d8 <__printf+0x440>
    80004180:	02500513          	li	a0,37
    80004184:	00000097          	auipc	ra,0x0
    80004188:	930080e7          	jalr	-1744(ra) # 80003ab4 <consputc>
    8000418c:	000c8513          	mv	a0,s9
    80004190:	00000097          	auipc	ra,0x0
    80004194:	924080e7          	jalr	-1756(ra) # 80003ab4 <consputc>
    80004198:	f41ff06f          	j	800040d8 <__printf+0x440>
    8000419c:	02500513          	li	a0,37
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	914080e7          	jalr	-1772(ra) # 80003ab4 <consputc>
    800041a8:	f31ff06f          	j	800040d8 <__printf+0x440>
    800041ac:	00030513          	mv	a0,t1
    800041b0:	00000097          	auipc	ra,0x0
    800041b4:	7bc080e7          	jalr	1980(ra) # 8000496c <acquire>
    800041b8:	b4dff06f          	j	80003d04 <__printf+0x6c>
    800041bc:	40c0053b          	negw	a0,a2
    800041c0:	00a00713          	li	a4,10
    800041c4:	02e576bb          	remuw	a3,a0,a4
    800041c8:	00002d97          	auipc	s11,0x2
    800041cc:	108d8d93          	addi	s11,s11,264 # 800062d0 <digits>
    800041d0:	ff700593          	li	a1,-9
    800041d4:	02069693          	slli	a3,a3,0x20
    800041d8:	0206d693          	srli	a3,a3,0x20
    800041dc:	00dd86b3          	add	a3,s11,a3
    800041e0:	0006c683          	lbu	a3,0(a3)
    800041e4:	02e557bb          	divuw	a5,a0,a4
    800041e8:	f8d40023          	sb	a3,-128(s0)
    800041ec:	10b65e63          	bge	a2,a1,80004308 <__printf+0x670>
    800041f0:	06300593          	li	a1,99
    800041f4:	02e7f6bb          	remuw	a3,a5,a4
    800041f8:	02069693          	slli	a3,a3,0x20
    800041fc:	0206d693          	srli	a3,a3,0x20
    80004200:	00dd86b3          	add	a3,s11,a3
    80004204:	0006c683          	lbu	a3,0(a3)
    80004208:	02e7d73b          	divuw	a4,a5,a4
    8000420c:	00200793          	li	a5,2
    80004210:	f8d400a3          	sb	a3,-127(s0)
    80004214:	bca5ece3          	bltu	a1,a0,80003dec <__printf+0x154>
    80004218:	ce5ff06f          	j	80003efc <__printf+0x264>
    8000421c:	40e007bb          	negw	a5,a4
    80004220:	00002d97          	auipc	s11,0x2
    80004224:	0b0d8d93          	addi	s11,s11,176 # 800062d0 <digits>
    80004228:	00f7f693          	andi	a3,a5,15
    8000422c:	00dd86b3          	add	a3,s11,a3
    80004230:	0006c583          	lbu	a1,0(a3)
    80004234:	ff100613          	li	a2,-15
    80004238:	0047d69b          	srliw	a3,a5,0x4
    8000423c:	f8b40023          	sb	a1,-128(s0)
    80004240:	0047d59b          	srliw	a1,a5,0x4
    80004244:	0ac75e63          	bge	a4,a2,80004300 <__printf+0x668>
    80004248:	00f6f693          	andi	a3,a3,15
    8000424c:	00dd86b3          	add	a3,s11,a3
    80004250:	0006c603          	lbu	a2,0(a3)
    80004254:	00f00693          	li	a3,15
    80004258:	0087d79b          	srliw	a5,a5,0x8
    8000425c:	f8c400a3          	sb	a2,-127(s0)
    80004260:	d8b6e4e3          	bltu	a3,a1,80003fe8 <__printf+0x350>
    80004264:	00200793          	li	a5,2
    80004268:	e2dff06f          	j	80004094 <__printf+0x3fc>
    8000426c:	00002c97          	auipc	s9,0x2
    80004270:	044c8c93          	addi	s9,s9,68 # 800062b0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004274:	02800513          	li	a0,40
    80004278:	ef1ff06f          	j	80004168 <__printf+0x4d0>
    8000427c:	00700793          	li	a5,7
    80004280:	00600c93          	li	s9,6
    80004284:	e0dff06f          	j	80004090 <__printf+0x3f8>
    80004288:	00700793          	li	a5,7
    8000428c:	00600c93          	li	s9,6
    80004290:	c69ff06f          	j	80003ef8 <__printf+0x260>
    80004294:	00300793          	li	a5,3
    80004298:	00200c93          	li	s9,2
    8000429c:	c5dff06f          	j	80003ef8 <__printf+0x260>
    800042a0:	00300793          	li	a5,3
    800042a4:	00200c93          	li	s9,2
    800042a8:	de9ff06f          	j	80004090 <__printf+0x3f8>
    800042ac:	00400793          	li	a5,4
    800042b0:	00300c93          	li	s9,3
    800042b4:	dddff06f          	j	80004090 <__printf+0x3f8>
    800042b8:	00400793          	li	a5,4
    800042bc:	00300c93          	li	s9,3
    800042c0:	c39ff06f          	j	80003ef8 <__printf+0x260>
    800042c4:	00500793          	li	a5,5
    800042c8:	00400c93          	li	s9,4
    800042cc:	c2dff06f          	j	80003ef8 <__printf+0x260>
    800042d0:	00500793          	li	a5,5
    800042d4:	00400c93          	li	s9,4
    800042d8:	db9ff06f          	j	80004090 <__printf+0x3f8>
    800042dc:	00600793          	li	a5,6
    800042e0:	00500c93          	li	s9,5
    800042e4:	dadff06f          	j	80004090 <__printf+0x3f8>
    800042e8:	00600793          	li	a5,6
    800042ec:	00500c93          	li	s9,5
    800042f0:	c09ff06f          	j	80003ef8 <__printf+0x260>
    800042f4:	00800793          	li	a5,8
    800042f8:	00700c93          	li	s9,7
    800042fc:	bfdff06f          	j	80003ef8 <__printf+0x260>
    80004300:	00100793          	li	a5,1
    80004304:	d91ff06f          	j	80004094 <__printf+0x3fc>
    80004308:	00100793          	li	a5,1
    8000430c:	bf1ff06f          	j	80003efc <__printf+0x264>
    80004310:	00900793          	li	a5,9
    80004314:	00800c93          	li	s9,8
    80004318:	be1ff06f          	j	80003ef8 <__printf+0x260>
    8000431c:	00002517          	auipc	a0,0x2
    80004320:	f9c50513          	addi	a0,a0,-100 # 800062b8 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004324:	00000097          	auipc	ra,0x0
    80004328:	918080e7          	jalr	-1768(ra) # 80003c3c <panic>

000000008000432c <printfinit>:
    8000432c:	fe010113          	addi	sp,sp,-32
    80004330:	00813823          	sd	s0,16(sp)
    80004334:	00913423          	sd	s1,8(sp)
    80004338:	00113c23          	sd	ra,24(sp)
    8000433c:	02010413          	addi	s0,sp,32
    80004340:	00004497          	auipc	s1,0x4
    80004344:	0b048493          	addi	s1,s1,176 # 800083f0 <pr>
    80004348:	00048513          	mv	a0,s1
    8000434c:	00002597          	auipc	a1,0x2
    80004350:	f7c58593          	addi	a1,a1,-132 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004354:	00000097          	auipc	ra,0x0
    80004358:	5f4080e7          	jalr	1524(ra) # 80004948 <initlock>
    8000435c:	01813083          	ld	ra,24(sp)
    80004360:	01013403          	ld	s0,16(sp)
    80004364:	0004ac23          	sw	zero,24(s1)
    80004368:	00813483          	ld	s1,8(sp)
    8000436c:	02010113          	addi	sp,sp,32
    80004370:	00008067          	ret

0000000080004374 <uartinit>:
    80004374:	ff010113          	addi	sp,sp,-16
    80004378:	00813423          	sd	s0,8(sp)
    8000437c:	01010413          	addi	s0,sp,16
    80004380:	100007b7          	lui	a5,0x10000
    80004384:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004388:	f8000713          	li	a4,-128
    8000438c:	00e781a3          	sb	a4,3(a5)
    80004390:	00300713          	li	a4,3
    80004394:	00e78023          	sb	a4,0(a5)
    80004398:	000780a3          	sb	zero,1(a5)
    8000439c:	00e781a3          	sb	a4,3(a5)
    800043a0:	00700693          	li	a3,7
    800043a4:	00d78123          	sb	a3,2(a5)
    800043a8:	00e780a3          	sb	a4,1(a5)
    800043ac:	00813403          	ld	s0,8(sp)
    800043b0:	01010113          	addi	sp,sp,16
    800043b4:	00008067          	ret

00000000800043b8 <uartputc>:
    800043b8:	00003797          	auipc	a5,0x3
    800043bc:	db07a783          	lw	a5,-592(a5) # 80007168 <panicked>
    800043c0:	00078463          	beqz	a5,800043c8 <uartputc+0x10>
    800043c4:	0000006f          	j	800043c4 <uartputc+0xc>
    800043c8:	fd010113          	addi	sp,sp,-48
    800043cc:	02813023          	sd	s0,32(sp)
    800043d0:	00913c23          	sd	s1,24(sp)
    800043d4:	01213823          	sd	s2,16(sp)
    800043d8:	01313423          	sd	s3,8(sp)
    800043dc:	02113423          	sd	ra,40(sp)
    800043e0:	03010413          	addi	s0,sp,48
    800043e4:	00003917          	auipc	s2,0x3
    800043e8:	d8c90913          	addi	s2,s2,-628 # 80007170 <uart_tx_r>
    800043ec:	00093783          	ld	a5,0(s2)
    800043f0:	00003497          	auipc	s1,0x3
    800043f4:	d8848493          	addi	s1,s1,-632 # 80007178 <uart_tx_w>
    800043f8:	0004b703          	ld	a4,0(s1)
    800043fc:	02078693          	addi	a3,a5,32
    80004400:	00050993          	mv	s3,a0
    80004404:	02e69c63          	bne	a3,a4,8000443c <uartputc+0x84>
    80004408:	00001097          	auipc	ra,0x1
    8000440c:	834080e7          	jalr	-1996(ra) # 80004c3c <push_on>
    80004410:	00093783          	ld	a5,0(s2)
    80004414:	0004b703          	ld	a4,0(s1)
    80004418:	02078793          	addi	a5,a5,32
    8000441c:	00e79463          	bne	a5,a4,80004424 <uartputc+0x6c>
    80004420:	0000006f          	j	80004420 <uartputc+0x68>
    80004424:	00001097          	auipc	ra,0x1
    80004428:	88c080e7          	jalr	-1908(ra) # 80004cb0 <pop_on>
    8000442c:	00093783          	ld	a5,0(s2)
    80004430:	0004b703          	ld	a4,0(s1)
    80004434:	02078693          	addi	a3,a5,32
    80004438:	fce688e3          	beq	a3,a4,80004408 <uartputc+0x50>
    8000443c:	01f77693          	andi	a3,a4,31
    80004440:	00004597          	auipc	a1,0x4
    80004444:	fd058593          	addi	a1,a1,-48 # 80008410 <uart_tx_buf>
    80004448:	00d586b3          	add	a3,a1,a3
    8000444c:	00170713          	addi	a4,a4,1
    80004450:	01368023          	sb	s3,0(a3)
    80004454:	00e4b023          	sd	a4,0(s1)
    80004458:	10000637          	lui	a2,0x10000
    8000445c:	02f71063          	bne	a4,a5,8000447c <uartputc+0xc4>
    80004460:	0340006f          	j	80004494 <uartputc+0xdc>
    80004464:	00074703          	lbu	a4,0(a4)
    80004468:	00f93023          	sd	a5,0(s2)
    8000446c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004470:	00093783          	ld	a5,0(s2)
    80004474:	0004b703          	ld	a4,0(s1)
    80004478:	00f70e63          	beq	a4,a5,80004494 <uartputc+0xdc>
    8000447c:	00564683          	lbu	a3,5(a2)
    80004480:	01f7f713          	andi	a4,a5,31
    80004484:	00e58733          	add	a4,a1,a4
    80004488:	0206f693          	andi	a3,a3,32
    8000448c:	00178793          	addi	a5,a5,1
    80004490:	fc069ae3          	bnez	a3,80004464 <uartputc+0xac>
    80004494:	02813083          	ld	ra,40(sp)
    80004498:	02013403          	ld	s0,32(sp)
    8000449c:	01813483          	ld	s1,24(sp)
    800044a0:	01013903          	ld	s2,16(sp)
    800044a4:	00813983          	ld	s3,8(sp)
    800044a8:	03010113          	addi	sp,sp,48
    800044ac:	00008067          	ret

00000000800044b0 <uartputc_sync>:
    800044b0:	ff010113          	addi	sp,sp,-16
    800044b4:	00813423          	sd	s0,8(sp)
    800044b8:	01010413          	addi	s0,sp,16
    800044bc:	00003717          	auipc	a4,0x3
    800044c0:	cac72703          	lw	a4,-852(a4) # 80007168 <panicked>
    800044c4:	02071663          	bnez	a4,800044f0 <uartputc_sync+0x40>
    800044c8:	00050793          	mv	a5,a0
    800044cc:	100006b7          	lui	a3,0x10000
    800044d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800044d4:	02077713          	andi	a4,a4,32
    800044d8:	fe070ce3          	beqz	a4,800044d0 <uartputc_sync+0x20>
    800044dc:	0ff7f793          	andi	a5,a5,255
    800044e0:	00f68023          	sb	a5,0(a3)
    800044e4:	00813403          	ld	s0,8(sp)
    800044e8:	01010113          	addi	sp,sp,16
    800044ec:	00008067          	ret
    800044f0:	0000006f          	j	800044f0 <uartputc_sync+0x40>

00000000800044f4 <uartstart>:
    800044f4:	ff010113          	addi	sp,sp,-16
    800044f8:	00813423          	sd	s0,8(sp)
    800044fc:	01010413          	addi	s0,sp,16
    80004500:	00003617          	auipc	a2,0x3
    80004504:	c7060613          	addi	a2,a2,-912 # 80007170 <uart_tx_r>
    80004508:	00003517          	auipc	a0,0x3
    8000450c:	c7050513          	addi	a0,a0,-912 # 80007178 <uart_tx_w>
    80004510:	00063783          	ld	a5,0(a2)
    80004514:	00053703          	ld	a4,0(a0)
    80004518:	04f70263          	beq	a4,a5,8000455c <uartstart+0x68>
    8000451c:	100005b7          	lui	a1,0x10000
    80004520:	00004817          	auipc	a6,0x4
    80004524:	ef080813          	addi	a6,a6,-272 # 80008410 <uart_tx_buf>
    80004528:	01c0006f          	j	80004544 <uartstart+0x50>
    8000452c:	0006c703          	lbu	a4,0(a3)
    80004530:	00f63023          	sd	a5,0(a2)
    80004534:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004538:	00063783          	ld	a5,0(a2)
    8000453c:	00053703          	ld	a4,0(a0)
    80004540:	00f70e63          	beq	a4,a5,8000455c <uartstart+0x68>
    80004544:	01f7f713          	andi	a4,a5,31
    80004548:	00e806b3          	add	a3,a6,a4
    8000454c:	0055c703          	lbu	a4,5(a1)
    80004550:	00178793          	addi	a5,a5,1
    80004554:	02077713          	andi	a4,a4,32
    80004558:	fc071ae3          	bnez	a4,8000452c <uartstart+0x38>
    8000455c:	00813403          	ld	s0,8(sp)
    80004560:	01010113          	addi	sp,sp,16
    80004564:	00008067          	ret

0000000080004568 <uartgetc>:
    80004568:	ff010113          	addi	sp,sp,-16
    8000456c:	00813423          	sd	s0,8(sp)
    80004570:	01010413          	addi	s0,sp,16
    80004574:	10000737          	lui	a4,0x10000
    80004578:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000457c:	0017f793          	andi	a5,a5,1
    80004580:	00078c63          	beqz	a5,80004598 <uartgetc+0x30>
    80004584:	00074503          	lbu	a0,0(a4)
    80004588:	0ff57513          	andi	a0,a0,255
    8000458c:	00813403          	ld	s0,8(sp)
    80004590:	01010113          	addi	sp,sp,16
    80004594:	00008067          	ret
    80004598:	fff00513          	li	a0,-1
    8000459c:	ff1ff06f          	j	8000458c <uartgetc+0x24>

00000000800045a0 <uartintr>:
    800045a0:	100007b7          	lui	a5,0x10000
    800045a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800045a8:	0017f793          	andi	a5,a5,1
    800045ac:	0a078463          	beqz	a5,80004654 <uartintr+0xb4>
    800045b0:	fe010113          	addi	sp,sp,-32
    800045b4:	00813823          	sd	s0,16(sp)
    800045b8:	00913423          	sd	s1,8(sp)
    800045bc:	00113c23          	sd	ra,24(sp)
    800045c0:	02010413          	addi	s0,sp,32
    800045c4:	100004b7          	lui	s1,0x10000
    800045c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800045cc:	0ff57513          	andi	a0,a0,255
    800045d0:	fffff097          	auipc	ra,0xfffff
    800045d4:	534080e7          	jalr	1332(ra) # 80003b04 <consoleintr>
    800045d8:	0054c783          	lbu	a5,5(s1)
    800045dc:	0017f793          	andi	a5,a5,1
    800045e0:	fe0794e3          	bnez	a5,800045c8 <uartintr+0x28>
    800045e4:	00003617          	auipc	a2,0x3
    800045e8:	b8c60613          	addi	a2,a2,-1140 # 80007170 <uart_tx_r>
    800045ec:	00003517          	auipc	a0,0x3
    800045f0:	b8c50513          	addi	a0,a0,-1140 # 80007178 <uart_tx_w>
    800045f4:	00063783          	ld	a5,0(a2)
    800045f8:	00053703          	ld	a4,0(a0)
    800045fc:	04f70263          	beq	a4,a5,80004640 <uartintr+0xa0>
    80004600:	100005b7          	lui	a1,0x10000
    80004604:	00004817          	auipc	a6,0x4
    80004608:	e0c80813          	addi	a6,a6,-500 # 80008410 <uart_tx_buf>
    8000460c:	01c0006f          	j	80004628 <uartintr+0x88>
    80004610:	0006c703          	lbu	a4,0(a3)
    80004614:	00f63023          	sd	a5,0(a2)
    80004618:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000461c:	00063783          	ld	a5,0(a2)
    80004620:	00053703          	ld	a4,0(a0)
    80004624:	00f70e63          	beq	a4,a5,80004640 <uartintr+0xa0>
    80004628:	01f7f713          	andi	a4,a5,31
    8000462c:	00e806b3          	add	a3,a6,a4
    80004630:	0055c703          	lbu	a4,5(a1)
    80004634:	00178793          	addi	a5,a5,1
    80004638:	02077713          	andi	a4,a4,32
    8000463c:	fc071ae3          	bnez	a4,80004610 <uartintr+0x70>
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	01013403          	ld	s0,16(sp)
    80004648:	00813483          	ld	s1,8(sp)
    8000464c:	02010113          	addi	sp,sp,32
    80004650:	00008067          	ret
    80004654:	00003617          	auipc	a2,0x3
    80004658:	b1c60613          	addi	a2,a2,-1252 # 80007170 <uart_tx_r>
    8000465c:	00003517          	auipc	a0,0x3
    80004660:	b1c50513          	addi	a0,a0,-1252 # 80007178 <uart_tx_w>
    80004664:	00063783          	ld	a5,0(a2)
    80004668:	00053703          	ld	a4,0(a0)
    8000466c:	04f70263          	beq	a4,a5,800046b0 <uartintr+0x110>
    80004670:	100005b7          	lui	a1,0x10000
    80004674:	00004817          	auipc	a6,0x4
    80004678:	d9c80813          	addi	a6,a6,-612 # 80008410 <uart_tx_buf>
    8000467c:	01c0006f          	j	80004698 <uartintr+0xf8>
    80004680:	0006c703          	lbu	a4,0(a3)
    80004684:	00f63023          	sd	a5,0(a2)
    80004688:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000468c:	00063783          	ld	a5,0(a2)
    80004690:	00053703          	ld	a4,0(a0)
    80004694:	02f70063          	beq	a4,a5,800046b4 <uartintr+0x114>
    80004698:	01f7f713          	andi	a4,a5,31
    8000469c:	00e806b3          	add	a3,a6,a4
    800046a0:	0055c703          	lbu	a4,5(a1)
    800046a4:	00178793          	addi	a5,a5,1
    800046a8:	02077713          	andi	a4,a4,32
    800046ac:	fc071ae3          	bnez	a4,80004680 <uartintr+0xe0>
    800046b0:	00008067          	ret
    800046b4:	00008067          	ret

00000000800046b8 <kinit>:
    800046b8:	fc010113          	addi	sp,sp,-64
    800046bc:	02913423          	sd	s1,40(sp)
    800046c0:	fffff7b7          	lui	a5,0xfffff
    800046c4:	00005497          	auipc	s1,0x5
    800046c8:	d6b48493          	addi	s1,s1,-661 # 8000942f <end+0xfff>
    800046cc:	02813823          	sd	s0,48(sp)
    800046d0:	01313c23          	sd	s3,24(sp)
    800046d4:	00f4f4b3          	and	s1,s1,a5
    800046d8:	02113c23          	sd	ra,56(sp)
    800046dc:	03213023          	sd	s2,32(sp)
    800046e0:	01413823          	sd	s4,16(sp)
    800046e4:	01513423          	sd	s5,8(sp)
    800046e8:	04010413          	addi	s0,sp,64
    800046ec:	000017b7          	lui	a5,0x1
    800046f0:	01100993          	li	s3,17
    800046f4:	00f487b3          	add	a5,s1,a5
    800046f8:	01b99993          	slli	s3,s3,0x1b
    800046fc:	06f9e063          	bltu	s3,a5,8000475c <kinit+0xa4>
    80004700:	00004a97          	auipc	s5,0x4
    80004704:	d30a8a93          	addi	s5,s5,-720 # 80008430 <end>
    80004708:	0754ec63          	bltu	s1,s5,80004780 <kinit+0xc8>
    8000470c:	0734fa63          	bgeu	s1,s3,80004780 <kinit+0xc8>
    80004710:	00088a37          	lui	s4,0x88
    80004714:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004718:	00003917          	auipc	s2,0x3
    8000471c:	a6890913          	addi	s2,s2,-1432 # 80007180 <kmem>
    80004720:	00ca1a13          	slli	s4,s4,0xc
    80004724:	0140006f          	j	80004738 <kinit+0x80>
    80004728:	000017b7          	lui	a5,0x1
    8000472c:	00f484b3          	add	s1,s1,a5
    80004730:	0554e863          	bltu	s1,s5,80004780 <kinit+0xc8>
    80004734:	0534f663          	bgeu	s1,s3,80004780 <kinit+0xc8>
    80004738:	00001637          	lui	a2,0x1
    8000473c:	00100593          	li	a1,1
    80004740:	00048513          	mv	a0,s1
    80004744:	00000097          	auipc	ra,0x0
    80004748:	5e4080e7          	jalr	1508(ra) # 80004d28 <__memset>
    8000474c:	00093783          	ld	a5,0(s2)
    80004750:	00f4b023          	sd	a5,0(s1)
    80004754:	00993023          	sd	s1,0(s2)
    80004758:	fd4498e3          	bne	s1,s4,80004728 <kinit+0x70>
    8000475c:	03813083          	ld	ra,56(sp)
    80004760:	03013403          	ld	s0,48(sp)
    80004764:	02813483          	ld	s1,40(sp)
    80004768:	02013903          	ld	s2,32(sp)
    8000476c:	01813983          	ld	s3,24(sp)
    80004770:	01013a03          	ld	s4,16(sp)
    80004774:	00813a83          	ld	s5,8(sp)
    80004778:	04010113          	addi	sp,sp,64
    8000477c:	00008067          	ret
    80004780:	00002517          	auipc	a0,0x2
    80004784:	b6850513          	addi	a0,a0,-1176 # 800062e8 <digits+0x18>
    80004788:	fffff097          	auipc	ra,0xfffff
    8000478c:	4b4080e7          	jalr	1204(ra) # 80003c3c <panic>

0000000080004790 <freerange>:
    80004790:	fc010113          	addi	sp,sp,-64
    80004794:	000017b7          	lui	a5,0x1
    80004798:	02913423          	sd	s1,40(sp)
    8000479c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800047a0:	009504b3          	add	s1,a0,s1
    800047a4:	fffff537          	lui	a0,0xfffff
    800047a8:	02813823          	sd	s0,48(sp)
    800047ac:	02113c23          	sd	ra,56(sp)
    800047b0:	03213023          	sd	s2,32(sp)
    800047b4:	01313c23          	sd	s3,24(sp)
    800047b8:	01413823          	sd	s4,16(sp)
    800047bc:	01513423          	sd	s5,8(sp)
    800047c0:	01613023          	sd	s6,0(sp)
    800047c4:	04010413          	addi	s0,sp,64
    800047c8:	00a4f4b3          	and	s1,s1,a0
    800047cc:	00f487b3          	add	a5,s1,a5
    800047d0:	06f5e463          	bltu	a1,a5,80004838 <freerange+0xa8>
    800047d4:	00004a97          	auipc	s5,0x4
    800047d8:	c5ca8a93          	addi	s5,s5,-932 # 80008430 <end>
    800047dc:	0954e263          	bltu	s1,s5,80004860 <freerange+0xd0>
    800047e0:	01100993          	li	s3,17
    800047e4:	01b99993          	slli	s3,s3,0x1b
    800047e8:	0734fc63          	bgeu	s1,s3,80004860 <freerange+0xd0>
    800047ec:	00058a13          	mv	s4,a1
    800047f0:	00003917          	auipc	s2,0x3
    800047f4:	99090913          	addi	s2,s2,-1648 # 80007180 <kmem>
    800047f8:	00002b37          	lui	s6,0x2
    800047fc:	0140006f          	j	80004810 <freerange+0x80>
    80004800:	000017b7          	lui	a5,0x1
    80004804:	00f484b3          	add	s1,s1,a5
    80004808:	0554ec63          	bltu	s1,s5,80004860 <freerange+0xd0>
    8000480c:	0534fa63          	bgeu	s1,s3,80004860 <freerange+0xd0>
    80004810:	00001637          	lui	a2,0x1
    80004814:	00100593          	li	a1,1
    80004818:	00048513          	mv	a0,s1
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	50c080e7          	jalr	1292(ra) # 80004d28 <__memset>
    80004824:	00093703          	ld	a4,0(s2)
    80004828:	016487b3          	add	a5,s1,s6
    8000482c:	00e4b023          	sd	a4,0(s1)
    80004830:	00993023          	sd	s1,0(s2)
    80004834:	fcfa76e3          	bgeu	s4,a5,80004800 <freerange+0x70>
    80004838:	03813083          	ld	ra,56(sp)
    8000483c:	03013403          	ld	s0,48(sp)
    80004840:	02813483          	ld	s1,40(sp)
    80004844:	02013903          	ld	s2,32(sp)
    80004848:	01813983          	ld	s3,24(sp)
    8000484c:	01013a03          	ld	s4,16(sp)
    80004850:	00813a83          	ld	s5,8(sp)
    80004854:	00013b03          	ld	s6,0(sp)
    80004858:	04010113          	addi	sp,sp,64
    8000485c:	00008067          	ret
    80004860:	00002517          	auipc	a0,0x2
    80004864:	a8850513          	addi	a0,a0,-1400 # 800062e8 <digits+0x18>
    80004868:	fffff097          	auipc	ra,0xfffff
    8000486c:	3d4080e7          	jalr	980(ra) # 80003c3c <panic>

0000000080004870 <kfree>:
    80004870:	fe010113          	addi	sp,sp,-32
    80004874:	00813823          	sd	s0,16(sp)
    80004878:	00113c23          	sd	ra,24(sp)
    8000487c:	00913423          	sd	s1,8(sp)
    80004880:	02010413          	addi	s0,sp,32
    80004884:	03451793          	slli	a5,a0,0x34
    80004888:	04079c63          	bnez	a5,800048e0 <kfree+0x70>
    8000488c:	00004797          	auipc	a5,0x4
    80004890:	ba478793          	addi	a5,a5,-1116 # 80008430 <end>
    80004894:	00050493          	mv	s1,a0
    80004898:	04f56463          	bltu	a0,a5,800048e0 <kfree+0x70>
    8000489c:	01100793          	li	a5,17
    800048a0:	01b79793          	slli	a5,a5,0x1b
    800048a4:	02f57e63          	bgeu	a0,a5,800048e0 <kfree+0x70>
    800048a8:	00001637          	lui	a2,0x1
    800048ac:	00100593          	li	a1,1
    800048b0:	00000097          	auipc	ra,0x0
    800048b4:	478080e7          	jalr	1144(ra) # 80004d28 <__memset>
    800048b8:	00003797          	auipc	a5,0x3
    800048bc:	8c878793          	addi	a5,a5,-1848 # 80007180 <kmem>
    800048c0:	0007b703          	ld	a4,0(a5)
    800048c4:	01813083          	ld	ra,24(sp)
    800048c8:	01013403          	ld	s0,16(sp)
    800048cc:	00e4b023          	sd	a4,0(s1)
    800048d0:	0097b023          	sd	s1,0(a5)
    800048d4:	00813483          	ld	s1,8(sp)
    800048d8:	02010113          	addi	sp,sp,32
    800048dc:	00008067          	ret
    800048e0:	00002517          	auipc	a0,0x2
    800048e4:	a0850513          	addi	a0,a0,-1528 # 800062e8 <digits+0x18>
    800048e8:	fffff097          	auipc	ra,0xfffff
    800048ec:	354080e7          	jalr	852(ra) # 80003c3c <panic>

00000000800048f0 <kalloc>:
    800048f0:	fe010113          	addi	sp,sp,-32
    800048f4:	00813823          	sd	s0,16(sp)
    800048f8:	00913423          	sd	s1,8(sp)
    800048fc:	00113c23          	sd	ra,24(sp)
    80004900:	02010413          	addi	s0,sp,32
    80004904:	00003797          	auipc	a5,0x3
    80004908:	87c78793          	addi	a5,a5,-1924 # 80007180 <kmem>
    8000490c:	0007b483          	ld	s1,0(a5)
    80004910:	02048063          	beqz	s1,80004930 <kalloc+0x40>
    80004914:	0004b703          	ld	a4,0(s1)
    80004918:	00001637          	lui	a2,0x1
    8000491c:	00500593          	li	a1,5
    80004920:	00048513          	mv	a0,s1
    80004924:	00e7b023          	sd	a4,0(a5)
    80004928:	00000097          	auipc	ra,0x0
    8000492c:	400080e7          	jalr	1024(ra) # 80004d28 <__memset>
    80004930:	01813083          	ld	ra,24(sp)
    80004934:	01013403          	ld	s0,16(sp)
    80004938:	00048513          	mv	a0,s1
    8000493c:	00813483          	ld	s1,8(sp)
    80004940:	02010113          	addi	sp,sp,32
    80004944:	00008067          	ret

0000000080004948 <initlock>:
    80004948:	ff010113          	addi	sp,sp,-16
    8000494c:	00813423          	sd	s0,8(sp)
    80004950:	01010413          	addi	s0,sp,16
    80004954:	00813403          	ld	s0,8(sp)
    80004958:	00b53423          	sd	a1,8(a0)
    8000495c:	00052023          	sw	zero,0(a0)
    80004960:	00053823          	sd	zero,16(a0)
    80004964:	01010113          	addi	sp,sp,16
    80004968:	00008067          	ret

000000008000496c <acquire>:
    8000496c:	fe010113          	addi	sp,sp,-32
    80004970:	00813823          	sd	s0,16(sp)
    80004974:	00913423          	sd	s1,8(sp)
    80004978:	00113c23          	sd	ra,24(sp)
    8000497c:	01213023          	sd	s2,0(sp)
    80004980:	02010413          	addi	s0,sp,32
    80004984:	00050493          	mv	s1,a0
    80004988:	10002973          	csrr	s2,sstatus
    8000498c:	100027f3          	csrr	a5,sstatus
    80004990:	ffd7f793          	andi	a5,a5,-3
    80004994:	10079073          	csrw	sstatus,a5
    80004998:	fffff097          	auipc	ra,0xfffff
    8000499c:	8e0080e7          	jalr	-1824(ra) # 80003278 <mycpu>
    800049a0:	07852783          	lw	a5,120(a0)
    800049a4:	06078e63          	beqz	a5,80004a20 <acquire+0xb4>
    800049a8:	fffff097          	auipc	ra,0xfffff
    800049ac:	8d0080e7          	jalr	-1840(ra) # 80003278 <mycpu>
    800049b0:	07852783          	lw	a5,120(a0)
    800049b4:	0004a703          	lw	a4,0(s1)
    800049b8:	0017879b          	addiw	a5,a5,1
    800049bc:	06f52c23          	sw	a5,120(a0)
    800049c0:	04071063          	bnez	a4,80004a00 <acquire+0x94>
    800049c4:	00100713          	li	a4,1
    800049c8:	00070793          	mv	a5,a4
    800049cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800049d0:	0007879b          	sext.w	a5,a5
    800049d4:	fe079ae3          	bnez	a5,800049c8 <acquire+0x5c>
    800049d8:	0ff0000f          	fence
    800049dc:	fffff097          	auipc	ra,0xfffff
    800049e0:	89c080e7          	jalr	-1892(ra) # 80003278 <mycpu>
    800049e4:	01813083          	ld	ra,24(sp)
    800049e8:	01013403          	ld	s0,16(sp)
    800049ec:	00a4b823          	sd	a0,16(s1)
    800049f0:	00013903          	ld	s2,0(sp)
    800049f4:	00813483          	ld	s1,8(sp)
    800049f8:	02010113          	addi	sp,sp,32
    800049fc:	00008067          	ret
    80004a00:	0104b903          	ld	s2,16(s1)
    80004a04:	fffff097          	auipc	ra,0xfffff
    80004a08:	874080e7          	jalr	-1932(ra) # 80003278 <mycpu>
    80004a0c:	faa91ce3          	bne	s2,a0,800049c4 <acquire+0x58>
    80004a10:	00002517          	auipc	a0,0x2
    80004a14:	8e050513          	addi	a0,a0,-1824 # 800062f0 <digits+0x20>
    80004a18:	fffff097          	auipc	ra,0xfffff
    80004a1c:	224080e7          	jalr	548(ra) # 80003c3c <panic>
    80004a20:	00195913          	srli	s2,s2,0x1
    80004a24:	fffff097          	auipc	ra,0xfffff
    80004a28:	854080e7          	jalr	-1964(ra) # 80003278 <mycpu>
    80004a2c:	00197913          	andi	s2,s2,1
    80004a30:	07252e23          	sw	s2,124(a0)
    80004a34:	f75ff06f          	j	800049a8 <acquire+0x3c>

0000000080004a38 <release>:
    80004a38:	fe010113          	addi	sp,sp,-32
    80004a3c:	00813823          	sd	s0,16(sp)
    80004a40:	00113c23          	sd	ra,24(sp)
    80004a44:	00913423          	sd	s1,8(sp)
    80004a48:	01213023          	sd	s2,0(sp)
    80004a4c:	02010413          	addi	s0,sp,32
    80004a50:	00052783          	lw	a5,0(a0)
    80004a54:	00079a63          	bnez	a5,80004a68 <release+0x30>
    80004a58:	00002517          	auipc	a0,0x2
    80004a5c:	8a050513          	addi	a0,a0,-1888 # 800062f8 <digits+0x28>
    80004a60:	fffff097          	auipc	ra,0xfffff
    80004a64:	1dc080e7          	jalr	476(ra) # 80003c3c <panic>
    80004a68:	01053903          	ld	s2,16(a0)
    80004a6c:	00050493          	mv	s1,a0
    80004a70:	fffff097          	auipc	ra,0xfffff
    80004a74:	808080e7          	jalr	-2040(ra) # 80003278 <mycpu>
    80004a78:	fea910e3          	bne	s2,a0,80004a58 <release+0x20>
    80004a7c:	0004b823          	sd	zero,16(s1)
    80004a80:	0ff0000f          	fence
    80004a84:	0f50000f          	fence	iorw,ow
    80004a88:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004a8c:	ffffe097          	auipc	ra,0xffffe
    80004a90:	7ec080e7          	jalr	2028(ra) # 80003278 <mycpu>
    80004a94:	100027f3          	csrr	a5,sstatus
    80004a98:	0027f793          	andi	a5,a5,2
    80004a9c:	04079a63          	bnez	a5,80004af0 <release+0xb8>
    80004aa0:	07852783          	lw	a5,120(a0)
    80004aa4:	02f05e63          	blez	a5,80004ae0 <release+0xa8>
    80004aa8:	fff7871b          	addiw	a4,a5,-1
    80004aac:	06e52c23          	sw	a4,120(a0)
    80004ab0:	00071c63          	bnez	a4,80004ac8 <release+0x90>
    80004ab4:	07c52783          	lw	a5,124(a0)
    80004ab8:	00078863          	beqz	a5,80004ac8 <release+0x90>
    80004abc:	100027f3          	csrr	a5,sstatus
    80004ac0:	0027e793          	ori	a5,a5,2
    80004ac4:	10079073          	csrw	sstatus,a5
    80004ac8:	01813083          	ld	ra,24(sp)
    80004acc:	01013403          	ld	s0,16(sp)
    80004ad0:	00813483          	ld	s1,8(sp)
    80004ad4:	00013903          	ld	s2,0(sp)
    80004ad8:	02010113          	addi	sp,sp,32
    80004adc:	00008067          	ret
    80004ae0:	00002517          	auipc	a0,0x2
    80004ae4:	83850513          	addi	a0,a0,-1992 # 80006318 <digits+0x48>
    80004ae8:	fffff097          	auipc	ra,0xfffff
    80004aec:	154080e7          	jalr	340(ra) # 80003c3c <panic>
    80004af0:	00002517          	auipc	a0,0x2
    80004af4:	81050513          	addi	a0,a0,-2032 # 80006300 <digits+0x30>
    80004af8:	fffff097          	auipc	ra,0xfffff
    80004afc:	144080e7          	jalr	324(ra) # 80003c3c <panic>

0000000080004b00 <holding>:
    80004b00:	00052783          	lw	a5,0(a0)
    80004b04:	00079663          	bnez	a5,80004b10 <holding+0x10>
    80004b08:	00000513          	li	a0,0
    80004b0c:	00008067          	ret
    80004b10:	fe010113          	addi	sp,sp,-32
    80004b14:	00813823          	sd	s0,16(sp)
    80004b18:	00913423          	sd	s1,8(sp)
    80004b1c:	00113c23          	sd	ra,24(sp)
    80004b20:	02010413          	addi	s0,sp,32
    80004b24:	01053483          	ld	s1,16(a0)
    80004b28:	ffffe097          	auipc	ra,0xffffe
    80004b2c:	750080e7          	jalr	1872(ra) # 80003278 <mycpu>
    80004b30:	01813083          	ld	ra,24(sp)
    80004b34:	01013403          	ld	s0,16(sp)
    80004b38:	40a48533          	sub	a0,s1,a0
    80004b3c:	00153513          	seqz	a0,a0
    80004b40:	00813483          	ld	s1,8(sp)
    80004b44:	02010113          	addi	sp,sp,32
    80004b48:	00008067          	ret

0000000080004b4c <push_off>:
    80004b4c:	fe010113          	addi	sp,sp,-32
    80004b50:	00813823          	sd	s0,16(sp)
    80004b54:	00113c23          	sd	ra,24(sp)
    80004b58:	00913423          	sd	s1,8(sp)
    80004b5c:	02010413          	addi	s0,sp,32
    80004b60:	100024f3          	csrr	s1,sstatus
    80004b64:	100027f3          	csrr	a5,sstatus
    80004b68:	ffd7f793          	andi	a5,a5,-3
    80004b6c:	10079073          	csrw	sstatus,a5
    80004b70:	ffffe097          	auipc	ra,0xffffe
    80004b74:	708080e7          	jalr	1800(ra) # 80003278 <mycpu>
    80004b78:	07852783          	lw	a5,120(a0)
    80004b7c:	02078663          	beqz	a5,80004ba8 <push_off+0x5c>
    80004b80:	ffffe097          	auipc	ra,0xffffe
    80004b84:	6f8080e7          	jalr	1784(ra) # 80003278 <mycpu>
    80004b88:	07852783          	lw	a5,120(a0)
    80004b8c:	01813083          	ld	ra,24(sp)
    80004b90:	01013403          	ld	s0,16(sp)
    80004b94:	0017879b          	addiw	a5,a5,1
    80004b98:	06f52c23          	sw	a5,120(a0)
    80004b9c:	00813483          	ld	s1,8(sp)
    80004ba0:	02010113          	addi	sp,sp,32
    80004ba4:	00008067          	ret
    80004ba8:	0014d493          	srli	s1,s1,0x1
    80004bac:	ffffe097          	auipc	ra,0xffffe
    80004bb0:	6cc080e7          	jalr	1740(ra) # 80003278 <mycpu>
    80004bb4:	0014f493          	andi	s1,s1,1
    80004bb8:	06952e23          	sw	s1,124(a0)
    80004bbc:	fc5ff06f          	j	80004b80 <push_off+0x34>

0000000080004bc0 <pop_off>:
    80004bc0:	ff010113          	addi	sp,sp,-16
    80004bc4:	00813023          	sd	s0,0(sp)
    80004bc8:	00113423          	sd	ra,8(sp)
    80004bcc:	01010413          	addi	s0,sp,16
    80004bd0:	ffffe097          	auipc	ra,0xffffe
    80004bd4:	6a8080e7          	jalr	1704(ra) # 80003278 <mycpu>
    80004bd8:	100027f3          	csrr	a5,sstatus
    80004bdc:	0027f793          	andi	a5,a5,2
    80004be0:	04079663          	bnez	a5,80004c2c <pop_off+0x6c>
    80004be4:	07852783          	lw	a5,120(a0)
    80004be8:	02f05a63          	blez	a5,80004c1c <pop_off+0x5c>
    80004bec:	fff7871b          	addiw	a4,a5,-1
    80004bf0:	06e52c23          	sw	a4,120(a0)
    80004bf4:	00071c63          	bnez	a4,80004c0c <pop_off+0x4c>
    80004bf8:	07c52783          	lw	a5,124(a0)
    80004bfc:	00078863          	beqz	a5,80004c0c <pop_off+0x4c>
    80004c00:	100027f3          	csrr	a5,sstatus
    80004c04:	0027e793          	ori	a5,a5,2
    80004c08:	10079073          	csrw	sstatus,a5
    80004c0c:	00813083          	ld	ra,8(sp)
    80004c10:	00013403          	ld	s0,0(sp)
    80004c14:	01010113          	addi	sp,sp,16
    80004c18:	00008067          	ret
    80004c1c:	00001517          	auipc	a0,0x1
    80004c20:	6fc50513          	addi	a0,a0,1788 # 80006318 <digits+0x48>
    80004c24:	fffff097          	auipc	ra,0xfffff
    80004c28:	018080e7          	jalr	24(ra) # 80003c3c <panic>
    80004c2c:	00001517          	auipc	a0,0x1
    80004c30:	6d450513          	addi	a0,a0,1748 # 80006300 <digits+0x30>
    80004c34:	fffff097          	auipc	ra,0xfffff
    80004c38:	008080e7          	jalr	8(ra) # 80003c3c <panic>

0000000080004c3c <push_on>:
    80004c3c:	fe010113          	addi	sp,sp,-32
    80004c40:	00813823          	sd	s0,16(sp)
    80004c44:	00113c23          	sd	ra,24(sp)
    80004c48:	00913423          	sd	s1,8(sp)
    80004c4c:	02010413          	addi	s0,sp,32
    80004c50:	100024f3          	csrr	s1,sstatus
    80004c54:	100027f3          	csrr	a5,sstatus
    80004c58:	0027e793          	ori	a5,a5,2
    80004c5c:	10079073          	csrw	sstatus,a5
    80004c60:	ffffe097          	auipc	ra,0xffffe
    80004c64:	618080e7          	jalr	1560(ra) # 80003278 <mycpu>
    80004c68:	07852783          	lw	a5,120(a0)
    80004c6c:	02078663          	beqz	a5,80004c98 <push_on+0x5c>
    80004c70:	ffffe097          	auipc	ra,0xffffe
    80004c74:	608080e7          	jalr	1544(ra) # 80003278 <mycpu>
    80004c78:	07852783          	lw	a5,120(a0)
    80004c7c:	01813083          	ld	ra,24(sp)
    80004c80:	01013403          	ld	s0,16(sp)
    80004c84:	0017879b          	addiw	a5,a5,1
    80004c88:	06f52c23          	sw	a5,120(a0)
    80004c8c:	00813483          	ld	s1,8(sp)
    80004c90:	02010113          	addi	sp,sp,32
    80004c94:	00008067          	ret
    80004c98:	0014d493          	srli	s1,s1,0x1
    80004c9c:	ffffe097          	auipc	ra,0xffffe
    80004ca0:	5dc080e7          	jalr	1500(ra) # 80003278 <mycpu>
    80004ca4:	0014f493          	andi	s1,s1,1
    80004ca8:	06952e23          	sw	s1,124(a0)
    80004cac:	fc5ff06f          	j	80004c70 <push_on+0x34>

0000000080004cb0 <pop_on>:
    80004cb0:	ff010113          	addi	sp,sp,-16
    80004cb4:	00813023          	sd	s0,0(sp)
    80004cb8:	00113423          	sd	ra,8(sp)
    80004cbc:	01010413          	addi	s0,sp,16
    80004cc0:	ffffe097          	auipc	ra,0xffffe
    80004cc4:	5b8080e7          	jalr	1464(ra) # 80003278 <mycpu>
    80004cc8:	100027f3          	csrr	a5,sstatus
    80004ccc:	0027f793          	andi	a5,a5,2
    80004cd0:	04078463          	beqz	a5,80004d18 <pop_on+0x68>
    80004cd4:	07852783          	lw	a5,120(a0)
    80004cd8:	02f05863          	blez	a5,80004d08 <pop_on+0x58>
    80004cdc:	fff7879b          	addiw	a5,a5,-1
    80004ce0:	06f52c23          	sw	a5,120(a0)
    80004ce4:	07853783          	ld	a5,120(a0)
    80004ce8:	00079863          	bnez	a5,80004cf8 <pop_on+0x48>
    80004cec:	100027f3          	csrr	a5,sstatus
    80004cf0:	ffd7f793          	andi	a5,a5,-3
    80004cf4:	10079073          	csrw	sstatus,a5
    80004cf8:	00813083          	ld	ra,8(sp)
    80004cfc:	00013403          	ld	s0,0(sp)
    80004d00:	01010113          	addi	sp,sp,16
    80004d04:	00008067          	ret
    80004d08:	00001517          	auipc	a0,0x1
    80004d0c:	63850513          	addi	a0,a0,1592 # 80006340 <digits+0x70>
    80004d10:	fffff097          	auipc	ra,0xfffff
    80004d14:	f2c080e7          	jalr	-212(ra) # 80003c3c <panic>
    80004d18:	00001517          	auipc	a0,0x1
    80004d1c:	60850513          	addi	a0,a0,1544 # 80006320 <digits+0x50>
    80004d20:	fffff097          	auipc	ra,0xfffff
    80004d24:	f1c080e7          	jalr	-228(ra) # 80003c3c <panic>

0000000080004d28 <__memset>:
    80004d28:	ff010113          	addi	sp,sp,-16
    80004d2c:	00813423          	sd	s0,8(sp)
    80004d30:	01010413          	addi	s0,sp,16
    80004d34:	1a060e63          	beqz	a2,80004ef0 <__memset+0x1c8>
    80004d38:	40a007b3          	neg	a5,a0
    80004d3c:	0077f793          	andi	a5,a5,7
    80004d40:	00778693          	addi	a3,a5,7
    80004d44:	00b00813          	li	a6,11
    80004d48:	0ff5f593          	andi	a1,a1,255
    80004d4c:	fff6071b          	addiw	a4,a2,-1
    80004d50:	1b06e663          	bltu	a3,a6,80004efc <__memset+0x1d4>
    80004d54:	1cd76463          	bltu	a4,a3,80004f1c <__memset+0x1f4>
    80004d58:	1a078e63          	beqz	a5,80004f14 <__memset+0x1ec>
    80004d5c:	00b50023          	sb	a1,0(a0)
    80004d60:	00100713          	li	a4,1
    80004d64:	1ae78463          	beq	a5,a4,80004f0c <__memset+0x1e4>
    80004d68:	00b500a3          	sb	a1,1(a0)
    80004d6c:	00200713          	li	a4,2
    80004d70:	1ae78a63          	beq	a5,a4,80004f24 <__memset+0x1fc>
    80004d74:	00b50123          	sb	a1,2(a0)
    80004d78:	00300713          	li	a4,3
    80004d7c:	18e78463          	beq	a5,a4,80004f04 <__memset+0x1dc>
    80004d80:	00b501a3          	sb	a1,3(a0)
    80004d84:	00400713          	li	a4,4
    80004d88:	1ae78263          	beq	a5,a4,80004f2c <__memset+0x204>
    80004d8c:	00b50223          	sb	a1,4(a0)
    80004d90:	00500713          	li	a4,5
    80004d94:	1ae78063          	beq	a5,a4,80004f34 <__memset+0x20c>
    80004d98:	00b502a3          	sb	a1,5(a0)
    80004d9c:	00700713          	li	a4,7
    80004da0:	18e79e63          	bne	a5,a4,80004f3c <__memset+0x214>
    80004da4:	00b50323          	sb	a1,6(a0)
    80004da8:	00700e93          	li	t4,7
    80004dac:	00859713          	slli	a4,a1,0x8
    80004db0:	00e5e733          	or	a4,a1,a4
    80004db4:	01059e13          	slli	t3,a1,0x10
    80004db8:	01c76e33          	or	t3,a4,t3
    80004dbc:	01859313          	slli	t1,a1,0x18
    80004dc0:	006e6333          	or	t1,t3,t1
    80004dc4:	02059893          	slli	a7,a1,0x20
    80004dc8:	40f60e3b          	subw	t3,a2,a5
    80004dcc:	011368b3          	or	a7,t1,a7
    80004dd0:	02859813          	slli	a6,a1,0x28
    80004dd4:	0108e833          	or	a6,a7,a6
    80004dd8:	03059693          	slli	a3,a1,0x30
    80004ddc:	003e589b          	srliw	a7,t3,0x3
    80004de0:	00d866b3          	or	a3,a6,a3
    80004de4:	03859713          	slli	a4,a1,0x38
    80004de8:	00389813          	slli	a6,a7,0x3
    80004dec:	00f507b3          	add	a5,a0,a5
    80004df0:	00e6e733          	or	a4,a3,a4
    80004df4:	000e089b          	sext.w	a7,t3
    80004df8:	00f806b3          	add	a3,a6,a5
    80004dfc:	00e7b023          	sd	a4,0(a5)
    80004e00:	00878793          	addi	a5,a5,8
    80004e04:	fed79ce3          	bne	a5,a3,80004dfc <__memset+0xd4>
    80004e08:	ff8e7793          	andi	a5,t3,-8
    80004e0c:	0007871b          	sext.w	a4,a5
    80004e10:	01d787bb          	addw	a5,a5,t4
    80004e14:	0ce88e63          	beq	a7,a4,80004ef0 <__memset+0x1c8>
    80004e18:	00f50733          	add	a4,a0,a5
    80004e1c:	00b70023          	sb	a1,0(a4)
    80004e20:	0017871b          	addiw	a4,a5,1
    80004e24:	0cc77663          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004e28:	00e50733          	add	a4,a0,a4
    80004e2c:	00b70023          	sb	a1,0(a4)
    80004e30:	0027871b          	addiw	a4,a5,2
    80004e34:	0ac77e63          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004e38:	00e50733          	add	a4,a0,a4
    80004e3c:	00b70023          	sb	a1,0(a4)
    80004e40:	0037871b          	addiw	a4,a5,3
    80004e44:	0ac77663          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004e48:	00e50733          	add	a4,a0,a4
    80004e4c:	00b70023          	sb	a1,0(a4)
    80004e50:	0047871b          	addiw	a4,a5,4
    80004e54:	08c77e63          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004e58:	00e50733          	add	a4,a0,a4
    80004e5c:	00b70023          	sb	a1,0(a4)
    80004e60:	0057871b          	addiw	a4,a5,5
    80004e64:	08c77663          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004e68:	00e50733          	add	a4,a0,a4
    80004e6c:	00b70023          	sb	a1,0(a4)
    80004e70:	0067871b          	addiw	a4,a5,6
    80004e74:	06c77e63          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004e78:	00e50733          	add	a4,a0,a4
    80004e7c:	00b70023          	sb	a1,0(a4)
    80004e80:	0077871b          	addiw	a4,a5,7
    80004e84:	06c77663          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004e88:	00e50733          	add	a4,a0,a4
    80004e8c:	00b70023          	sb	a1,0(a4)
    80004e90:	0087871b          	addiw	a4,a5,8
    80004e94:	04c77e63          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004e98:	00e50733          	add	a4,a0,a4
    80004e9c:	00b70023          	sb	a1,0(a4)
    80004ea0:	0097871b          	addiw	a4,a5,9
    80004ea4:	04c77663          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004ea8:	00e50733          	add	a4,a0,a4
    80004eac:	00b70023          	sb	a1,0(a4)
    80004eb0:	00a7871b          	addiw	a4,a5,10
    80004eb4:	02c77e63          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004eb8:	00e50733          	add	a4,a0,a4
    80004ebc:	00b70023          	sb	a1,0(a4)
    80004ec0:	00b7871b          	addiw	a4,a5,11
    80004ec4:	02c77663          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004ec8:	00e50733          	add	a4,a0,a4
    80004ecc:	00b70023          	sb	a1,0(a4)
    80004ed0:	00c7871b          	addiw	a4,a5,12
    80004ed4:	00c77e63          	bgeu	a4,a2,80004ef0 <__memset+0x1c8>
    80004ed8:	00e50733          	add	a4,a0,a4
    80004edc:	00b70023          	sb	a1,0(a4)
    80004ee0:	00d7879b          	addiw	a5,a5,13
    80004ee4:	00c7f663          	bgeu	a5,a2,80004ef0 <__memset+0x1c8>
    80004ee8:	00f507b3          	add	a5,a0,a5
    80004eec:	00b78023          	sb	a1,0(a5)
    80004ef0:	00813403          	ld	s0,8(sp)
    80004ef4:	01010113          	addi	sp,sp,16
    80004ef8:	00008067          	ret
    80004efc:	00b00693          	li	a3,11
    80004f00:	e55ff06f          	j	80004d54 <__memset+0x2c>
    80004f04:	00300e93          	li	t4,3
    80004f08:	ea5ff06f          	j	80004dac <__memset+0x84>
    80004f0c:	00100e93          	li	t4,1
    80004f10:	e9dff06f          	j	80004dac <__memset+0x84>
    80004f14:	00000e93          	li	t4,0
    80004f18:	e95ff06f          	j	80004dac <__memset+0x84>
    80004f1c:	00000793          	li	a5,0
    80004f20:	ef9ff06f          	j	80004e18 <__memset+0xf0>
    80004f24:	00200e93          	li	t4,2
    80004f28:	e85ff06f          	j	80004dac <__memset+0x84>
    80004f2c:	00400e93          	li	t4,4
    80004f30:	e7dff06f          	j	80004dac <__memset+0x84>
    80004f34:	00500e93          	li	t4,5
    80004f38:	e75ff06f          	j	80004dac <__memset+0x84>
    80004f3c:	00600e93          	li	t4,6
    80004f40:	e6dff06f          	j	80004dac <__memset+0x84>

0000000080004f44 <__memmove>:
    80004f44:	ff010113          	addi	sp,sp,-16
    80004f48:	00813423          	sd	s0,8(sp)
    80004f4c:	01010413          	addi	s0,sp,16
    80004f50:	0e060863          	beqz	a2,80005040 <__memmove+0xfc>
    80004f54:	fff6069b          	addiw	a3,a2,-1
    80004f58:	0006881b          	sext.w	a6,a3
    80004f5c:	0ea5e863          	bltu	a1,a0,8000504c <__memmove+0x108>
    80004f60:	00758713          	addi	a4,a1,7
    80004f64:	00a5e7b3          	or	a5,a1,a0
    80004f68:	40a70733          	sub	a4,a4,a0
    80004f6c:	0077f793          	andi	a5,a5,7
    80004f70:	00f73713          	sltiu	a4,a4,15
    80004f74:	00174713          	xori	a4,a4,1
    80004f78:	0017b793          	seqz	a5,a5
    80004f7c:	00e7f7b3          	and	a5,a5,a4
    80004f80:	10078863          	beqz	a5,80005090 <__memmove+0x14c>
    80004f84:	00900793          	li	a5,9
    80004f88:	1107f463          	bgeu	a5,a6,80005090 <__memmove+0x14c>
    80004f8c:	0036581b          	srliw	a6,a2,0x3
    80004f90:	fff8081b          	addiw	a6,a6,-1
    80004f94:	02081813          	slli	a6,a6,0x20
    80004f98:	01d85893          	srli	a7,a6,0x1d
    80004f9c:	00858813          	addi	a6,a1,8
    80004fa0:	00058793          	mv	a5,a1
    80004fa4:	00050713          	mv	a4,a0
    80004fa8:	01088833          	add	a6,a7,a6
    80004fac:	0007b883          	ld	a7,0(a5)
    80004fb0:	00878793          	addi	a5,a5,8
    80004fb4:	00870713          	addi	a4,a4,8
    80004fb8:	ff173c23          	sd	a7,-8(a4)
    80004fbc:	ff0798e3          	bne	a5,a6,80004fac <__memmove+0x68>
    80004fc0:	ff867713          	andi	a4,a2,-8
    80004fc4:	02071793          	slli	a5,a4,0x20
    80004fc8:	0207d793          	srli	a5,a5,0x20
    80004fcc:	00f585b3          	add	a1,a1,a5
    80004fd0:	40e686bb          	subw	a3,a3,a4
    80004fd4:	00f507b3          	add	a5,a0,a5
    80004fd8:	06e60463          	beq	a2,a4,80005040 <__memmove+0xfc>
    80004fdc:	0005c703          	lbu	a4,0(a1)
    80004fe0:	00e78023          	sb	a4,0(a5)
    80004fe4:	04068e63          	beqz	a3,80005040 <__memmove+0xfc>
    80004fe8:	0015c603          	lbu	a2,1(a1)
    80004fec:	00100713          	li	a4,1
    80004ff0:	00c780a3          	sb	a2,1(a5)
    80004ff4:	04e68663          	beq	a3,a4,80005040 <__memmove+0xfc>
    80004ff8:	0025c603          	lbu	a2,2(a1)
    80004ffc:	00200713          	li	a4,2
    80005000:	00c78123          	sb	a2,2(a5)
    80005004:	02e68e63          	beq	a3,a4,80005040 <__memmove+0xfc>
    80005008:	0035c603          	lbu	a2,3(a1)
    8000500c:	00300713          	li	a4,3
    80005010:	00c781a3          	sb	a2,3(a5)
    80005014:	02e68663          	beq	a3,a4,80005040 <__memmove+0xfc>
    80005018:	0045c603          	lbu	a2,4(a1)
    8000501c:	00400713          	li	a4,4
    80005020:	00c78223          	sb	a2,4(a5)
    80005024:	00e68e63          	beq	a3,a4,80005040 <__memmove+0xfc>
    80005028:	0055c603          	lbu	a2,5(a1)
    8000502c:	00500713          	li	a4,5
    80005030:	00c782a3          	sb	a2,5(a5)
    80005034:	00e68663          	beq	a3,a4,80005040 <__memmove+0xfc>
    80005038:	0065c703          	lbu	a4,6(a1)
    8000503c:	00e78323          	sb	a4,6(a5)
    80005040:	00813403          	ld	s0,8(sp)
    80005044:	01010113          	addi	sp,sp,16
    80005048:	00008067          	ret
    8000504c:	02061713          	slli	a4,a2,0x20
    80005050:	02075713          	srli	a4,a4,0x20
    80005054:	00e587b3          	add	a5,a1,a4
    80005058:	f0f574e3          	bgeu	a0,a5,80004f60 <__memmove+0x1c>
    8000505c:	02069613          	slli	a2,a3,0x20
    80005060:	02065613          	srli	a2,a2,0x20
    80005064:	fff64613          	not	a2,a2
    80005068:	00e50733          	add	a4,a0,a4
    8000506c:	00c78633          	add	a2,a5,a2
    80005070:	fff7c683          	lbu	a3,-1(a5)
    80005074:	fff78793          	addi	a5,a5,-1
    80005078:	fff70713          	addi	a4,a4,-1
    8000507c:	00d70023          	sb	a3,0(a4)
    80005080:	fec798e3          	bne	a5,a2,80005070 <__memmove+0x12c>
    80005084:	00813403          	ld	s0,8(sp)
    80005088:	01010113          	addi	sp,sp,16
    8000508c:	00008067          	ret
    80005090:	02069713          	slli	a4,a3,0x20
    80005094:	02075713          	srli	a4,a4,0x20
    80005098:	00170713          	addi	a4,a4,1
    8000509c:	00e50733          	add	a4,a0,a4
    800050a0:	00050793          	mv	a5,a0
    800050a4:	0005c683          	lbu	a3,0(a1)
    800050a8:	00178793          	addi	a5,a5,1
    800050ac:	00158593          	addi	a1,a1,1
    800050b0:	fed78fa3          	sb	a3,-1(a5)
    800050b4:	fee798e3          	bne	a5,a4,800050a4 <__memmove+0x160>
    800050b8:	f89ff06f          	j	80005040 <__memmove+0xfc>

00000000800050bc <__putc>:
    800050bc:	fe010113          	addi	sp,sp,-32
    800050c0:	00813823          	sd	s0,16(sp)
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	02010413          	addi	s0,sp,32
    800050cc:	00050793          	mv	a5,a0
    800050d0:	fef40593          	addi	a1,s0,-17
    800050d4:	00100613          	li	a2,1
    800050d8:	00000513          	li	a0,0
    800050dc:	fef407a3          	sb	a5,-17(s0)
    800050e0:	fffff097          	auipc	ra,0xfffff
    800050e4:	b3c080e7          	jalr	-1220(ra) # 80003c1c <console_write>
    800050e8:	01813083          	ld	ra,24(sp)
    800050ec:	01013403          	ld	s0,16(sp)
    800050f0:	02010113          	addi	sp,sp,32
    800050f4:	00008067          	ret

00000000800050f8 <__getc>:
    800050f8:	fe010113          	addi	sp,sp,-32
    800050fc:	00813823          	sd	s0,16(sp)
    80005100:	00113c23          	sd	ra,24(sp)
    80005104:	02010413          	addi	s0,sp,32
    80005108:	fe840593          	addi	a1,s0,-24
    8000510c:	00100613          	li	a2,1
    80005110:	00000513          	li	a0,0
    80005114:	fffff097          	auipc	ra,0xfffff
    80005118:	ae8080e7          	jalr	-1304(ra) # 80003bfc <console_read>
    8000511c:	fe844503          	lbu	a0,-24(s0)
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	02010113          	addi	sp,sp,32
    8000512c:	00008067          	ret

0000000080005130 <console_handler>:
    80005130:	fe010113          	addi	sp,sp,-32
    80005134:	00813823          	sd	s0,16(sp)
    80005138:	00113c23          	sd	ra,24(sp)
    8000513c:	00913423          	sd	s1,8(sp)
    80005140:	02010413          	addi	s0,sp,32
    80005144:	14202773          	csrr	a4,scause
    80005148:	100027f3          	csrr	a5,sstatus
    8000514c:	0027f793          	andi	a5,a5,2
    80005150:	06079e63          	bnez	a5,800051cc <console_handler+0x9c>
    80005154:	00074c63          	bltz	a4,8000516c <console_handler+0x3c>
    80005158:	01813083          	ld	ra,24(sp)
    8000515c:	01013403          	ld	s0,16(sp)
    80005160:	00813483          	ld	s1,8(sp)
    80005164:	02010113          	addi	sp,sp,32
    80005168:	00008067          	ret
    8000516c:	0ff77713          	andi	a4,a4,255
    80005170:	00900793          	li	a5,9
    80005174:	fef712e3          	bne	a4,a5,80005158 <console_handler+0x28>
    80005178:	ffffe097          	auipc	ra,0xffffe
    8000517c:	6dc080e7          	jalr	1756(ra) # 80003854 <plic_claim>
    80005180:	00a00793          	li	a5,10
    80005184:	00050493          	mv	s1,a0
    80005188:	02f50c63          	beq	a0,a5,800051c0 <console_handler+0x90>
    8000518c:	fc0506e3          	beqz	a0,80005158 <console_handler+0x28>
    80005190:	00050593          	mv	a1,a0
    80005194:	00001517          	auipc	a0,0x1
    80005198:	0b450513          	addi	a0,a0,180 # 80006248 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000519c:	fffff097          	auipc	ra,0xfffff
    800051a0:	afc080e7          	jalr	-1284(ra) # 80003c98 <__printf>
    800051a4:	01013403          	ld	s0,16(sp)
    800051a8:	01813083          	ld	ra,24(sp)
    800051ac:	00048513          	mv	a0,s1
    800051b0:	00813483          	ld	s1,8(sp)
    800051b4:	02010113          	addi	sp,sp,32
    800051b8:	ffffe317          	auipc	t1,0xffffe
    800051bc:	6d430067          	jr	1748(t1) # 8000388c <plic_complete>
    800051c0:	fffff097          	auipc	ra,0xfffff
    800051c4:	3e0080e7          	jalr	992(ra) # 800045a0 <uartintr>
    800051c8:	fddff06f          	j	800051a4 <console_handler+0x74>
    800051cc:	00001517          	auipc	a0,0x1
    800051d0:	17c50513          	addi	a0,a0,380 # 80006348 <digits+0x78>
    800051d4:	fffff097          	auipc	ra,0xfffff
    800051d8:	a68080e7          	jalr	-1432(ra) # 80003c3c <panic>
	...
