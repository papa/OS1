
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	1d013103          	ld	sp,464(sp) # 800071d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	230030ef          	jal	ra,8000324c <start>

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
    80001080:	161010ef          	jal	ra,800029e0 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001408 <time_sleep>:

int time_sleep(uint64 time)
{
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001414:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001418:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000141c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001420:	00050513          	mv	a0,a0
    return result;

    80001424:	0005051b          	sext.w	a0,a0
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z4idlePv>:
//

#include "../h/Tests.h"

void idle(void* args)
{
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00113423          	sd	ra,8(sp)
    8000143c:	00813023          	sd	s0,0(sp)
    80001440:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    80001444:	00005517          	auipc	a0,0x5
    80001448:	bdc50513          	addi	a0,a0,-1060 # 80006020 <CONSOLE_STATUS+0x10>
    8000144c:	00001097          	auipc	ra,0x1
    80001450:	45c080e7          	jalr	1116(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001454:	00000097          	auipc	ra,0x0
    80001458:	eb0080e7          	jalr	-336(ra) # 80001304 <thread_dispatch>
    while(true)
    8000145c:	fe9ff06f          	j	80001444 <_Z4idlePv+0x10>

0000000080001460 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    80001460:	fe010113          	addi	sp,sp,-32
    80001464:	00113c23          	sd	ra,24(sp)
    80001468:	00813823          	sd	s0,16(sp)
    8000146c:	00913423          	sd	s1,8(sp)
    80001470:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    80001474:	00005517          	auipc	a0,0x5
    80001478:	bb450513          	addi	a0,a0,-1100 # 80006028 <CONSOLE_STATUS+0x18>
    8000147c:	00001097          	auipc	ra,0x1
    80001480:	42c080e7          	jalr	1068(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    uint64 num = 1000;
    for(uint64 i = 0; i < num;i++)
    80001484:	00000493          	li	s1,0
    80001488:	03c0006f          	j	800014c4 <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	e78080e7          	jalr	-392(ra) # 80001304 <thread_dispatch>
        Riscv::printString("i : ");
    80001494:	00005517          	auipc	a0,0x5
    80001498:	bac50513          	addi	a0,a0,-1108 # 80006040 <CONSOLE_STATUS+0x30>
    8000149c:	00001097          	auipc	ra,0x1
    800014a0:	40c080e7          	jalr	1036(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014a4:	00048513          	mv	a0,s1
    800014a8:	00001097          	auipc	ra,0x1
    800014ac:	470080e7          	jalr	1136(ra) # 80002918 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014b0:	00005517          	auipc	a0,0x5
    800014b4:	e1850513          	addi	a0,a0,-488 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	3f0080e7          	jalr	1008(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800014c0:	00148493          	addi	s1,s1,1
    800014c4:	3e700793          	li	a5,999
    800014c8:	0097ec63          	bltu	a5,s1,800014e0 <_Z15thread1FunctionPv+0x80>
        if(i % 150 == 0 && i > 0)
    800014cc:	09600793          	li	a5,150
    800014d0:	02f4f7b3          	remu	a5,s1,a5
    800014d4:	fc0790e3          	bnez	a5,80001494 <_Z15thread1FunctionPv+0x34>
    800014d8:	fa048ee3          	beqz	s1,80001494 <_Z15thread1FunctionPv+0x34>
    800014dc:	fb1ff06f          	j	8000148c <_Z15thread1FunctionPv+0x2c>
    }
}
    800014e0:	01813083          	ld	ra,24(sp)
    800014e4:	01013403          	ld	s0,16(sp)
    800014e8:	00813483          	ld	s1,8(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret

00000000800014f4 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    800014f4:	fe010113          	addi	sp,sp,-32
    800014f8:	00113c23          	sd	ra,24(sp)
    800014fc:	00813823          	sd	s0,16(sp)
    80001500:	00913423          	sd	s1,8(sp)
    80001504:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001508:	00005517          	auipc	a0,0x5
    8000150c:	b4050513          	addi	a0,a0,-1216 # 80006048 <CONSOLE_STATUS+0x38>
    80001510:	00001097          	auipc	ra,0x1
    80001514:	398080e7          	jalr	920(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    uint64 num = 1000;
    for(uint64 j = 0; j < num;j++)
    80001518:	00000493          	li	s1,0
    8000151c:	03c0006f          	j	80001558 <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    80001520:	00000097          	auipc	ra,0x0
    80001524:	de4080e7          	jalr	-540(ra) # 80001304 <thread_dispatch>
        Riscv::printString("j : ");
    80001528:	00005517          	auipc	a0,0x5
    8000152c:	b3850513          	addi	a0,a0,-1224 # 80006060 <CONSOLE_STATUS+0x50>
    80001530:	00001097          	auipc	ra,0x1
    80001534:	378080e7          	jalr	888(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001538:	00048513          	mv	a0,s1
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	3dc080e7          	jalr	988(ra) # 80002918 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001544:	00005517          	auipc	a0,0x5
    80001548:	d8450513          	addi	a0,a0,-636 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	35c080e7          	jalr	860(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001554:	00148493          	addi	s1,s1,1
    80001558:	3e700793          	li	a5,999
    8000155c:	0097ec63          	bltu	a5,s1,80001574 <_Z15thread2FunctionPv+0x80>
        if(j % 50 == 0 && j > 0)
    80001560:	03200793          	li	a5,50
    80001564:	02f4f7b3          	remu	a5,s1,a5
    80001568:	fc0790e3          	bnez	a5,80001528 <_Z15thread2FunctionPv+0x34>
    8000156c:	fa048ee3          	beqz	s1,80001528 <_Z15thread2FunctionPv+0x34>
    80001570:	fb1ff06f          	j	80001520 <_Z15thread2FunctionPv+0x2c>
    }
}
    80001574:	01813083          	ld	ra,24(sp)
    80001578:	01013403          	ld	s0,16(sp)
    8000157c:	00813483          	ld	s1,8(sp)
    80001580:	02010113          	addi	sp,sp,32
    80001584:	00008067          	ret

0000000080001588 <_Z20thread2FunctionTest2Pv>:

void thread2FunctionTest2(void* p)
{
    80001588:	fe010113          	addi	sp,sp,-32
    8000158c:	00113c23          	sd	ra,24(sp)
    80001590:	00813823          	sd	s0,16(sp)
    80001594:	00913423          	sd	s1,8(sp)
    80001598:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    8000159c:	00005517          	auipc	a0,0x5
    800015a0:	aac50513          	addi	a0,a0,-1364 # 80006048 <CONSOLE_STATUS+0x38>
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	304080e7          	jalr	772(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    uint64 num = 1000;
    for(uint64 j = 0; j < num;j++)
    800015ac:	00000493          	li	s1,0
    800015b0:	0580006f          	j	80001608 <_Z20thread2FunctionTest2Pv+0x80>
    {
        if(j == 100)
            time_sleep(1000);
    800015b4:	3e800513          	li	a0,1000
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	e50080e7          	jalr	-432(ra) # 80001408 <time_sleep>
    800015c0:	0580006f          	j	80001618 <_Z20thread2FunctionTest2Pv+0x90>
        if(j == 200)
            thread_exit();
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	d60080e7          	jalr	-672(ra) # 80001324 <thread_exit>
    800015cc:	0540006f          	j	80001620 <_Z20thread2FunctionTest2Pv+0x98>
        if(j!=100 && j!= 200 && j % 50 == 0 && j > 0)
            thread_dispatch();
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	d34080e7          	jalr	-716(ra) # 80001304 <thread_dispatch>
        Riscv::printString("j : ");
    800015d8:	00005517          	auipc	a0,0x5
    800015dc:	a8850513          	addi	a0,a0,-1400 # 80006060 <CONSOLE_STATUS+0x50>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	2c8080e7          	jalr	712(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    800015e8:	00048513          	mv	a0,s1
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	32c080e7          	jalr	812(ra) # 80002918 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015f4:	00005517          	auipc	a0,0x5
    800015f8:	cd450513          	addi	a0,a0,-812 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	2ac080e7          	jalr	684(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001604:	00148493          	addi	s1,s1,1
    80001608:	3e700793          	li	a5,999
    8000160c:	0297ec63          	bltu	a5,s1,80001644 <_Z20thread2FunctionTest2Pv+0xbc>
        if(j == 100)
    80001610:	06400793          	li	a5,100
    80001614:	faf480e3          	beq	s1,a5,800015b4 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j == 200)
    80001618:	0c800793          	li	a5,200
    8000161c:	faf484e3          	beq	s1,a5,800015c4 <_Z20thread2FunctionTest2Pv+0x3c>
        if(j!=100 && j!= 200 && j % 50 == 0 && j > 0)
    80001620:	06400793          	li	a5,100
    80001624:	faf48ae3          	beq	s1,a5,800015d8 <_Z20thread2FunctionTest2Pv+0x50>
    80001628:	0c800793          	li	a5,200
    8000162c:	faf486e3          	beq	s1,a5,800015d8 <_Z20thread2FunctionTest2Pv+0x50>
    80001630:	03200793          	li	a5,50
    80001634:	02f4f7b3          	remu	a5,s1,a5
    80001638:	fa0790e3          	bnez	a5,800015d8 <_Z20thread2FunctionTest2Pv+0x50>
    8000163c:	f8048ee3          	beqz	s1,800015d8 <_Z20thread2FunctionTest2Pv+0x50>
    80001640:	f91ff06f          	j	800015d0 <_Z20thread2FunctionTest2Pv+0x48>
    }
}
    80001644:	01813083          	ld	ra,24(sp)
    80001648:	01013403          	ld	s0,16(sp)
    8000164c:	00813483          	ld	s1,8(sp)
    80001650:	02010113          	addi	sp,sp,32
    80001654:	00008067          	ret

0000000080001658 <_Z11threadTest1v>:


void threadTest1()
{
    80001658:	fe010113          	addi	sp,sp,-32
    8000165c:	00113c23          	sd	ra,24(sp)
    80001660:	00813823          	sd	s0,16(sp)
    80001664:	00913423          	sd	s1,8(sp)
    80001668:	01213023          	sd	s2,0(sp)
    8000166c:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001670:	01800513          	li	a0,24
    80001674:	00001097          	auipc	ra,0x1
    80001678:	f84080e7          	jalr	-124(ra) # 800025f8 <_Znwm>
    8000167c:	00050493          	mv	s1,a0
    80001680:	00000613          	li	a2,0
    80001684:	00000597          	auipc	a1,0x0
    80001688:	ddc58593          	addi	a1,a1,-548 # 80001460 <_Z15thread1FunctionPv>
    8000168c:	00001097          	auipc	ra,0x1
    80001690:	038080e7          	jalr	56(ra) # 800026c4 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001694:	00048513          	mv	a0,s1
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	fb0080e7          	jalr	-80(ra) # 80002648 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    800016a0:	01800513          	li	a0,24
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	f54080e7          	jalr	-172(ra) # 800025f8 <_Znwm>
    800016ac:	00050913          	mv	s2,a0
    800016b0:	00000613          	li	a2,0
    800016b4:	00000597          	auipc	a1,0x0
    800016b8:	e4058593          	addi	a1,a1,-448 # 800014f4 <_Z15thread2FunctionPv>
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	008080e7          	jalr	8(ra) # 800026c4 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800016c4:	00090513          	mv	a0,s2
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	f80080e7          	jalr	-128(ra) # 80002648 <_ZN6Thread5startEv>
    800016d0:	00c0006f          	j	800016dc <_Z11threadTest1v+0x84>

    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    {
        thread_dispatch();
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	c30080e7          	jalr	-976(ra) # 80001304 <thread_dispatch>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    800016dc:	0004b783          	ld	a5,0(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800016e0:	0307a703          	lw	a4,48(a5)
    800016e4:	00300793          	li	a5,3
    800016e8:	fef716e3          	bne	a4,a5,800016d4 <_Z11threadTest1v+0x7c>
    800016ec:	00093783          	ld	a5,0(s2)
    800016f0:	0307a703          	lw	a4,48(a5)
    800016f4:	00300793          	li	a5,3
    800016f8:	fcf71ee3          	bne	a4,a5,800016d4 <_Z11threadTest1v+0x7c>
    }

    Riscv::printString("End...\n");
    800016fc:	00005517          	auipc	a0,0x5
    80001700:	96c50513          	addi	a0,a0,-1684 # 80006068 <CONSOLE_STATUS+0x58>
    80001704:	00001097          	auipc	ra,0x1
    80001708:	1a4080e7          	jalr	420(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
}
    8000170c:	01813083          	ld	ra,24(sp)
    80001710:	01013403          	ld	s0,16(sp)
    80001714:	00813483          	ld	s1,8(sp)
    80001718:	00013903          	ld	s2,0(sp)
    8000171c:	02010113          	addi	sp,sp,32
    80001720:	00008067          	ret
    80001724:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001728:	00048513          	mv	a0,s1
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	ef4080e7          	jalr	-268(ra) # 80002620 <_ZdlPv>
    80001734:	00090513          	mv	a0,s2
    80001738:	00007097          	auipc	ra,0x7
    8000173c:	c00080e7          	jalr	-1024(ra) # 80008338 <_Unwind_Resume>
    80001740:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001744:	00090513          	mv	a0,s2
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	ed8080e7          	jalr	-296(ra) # 80002620 <_ZdlPv>
    80001750:	00048513          	mv	a0,s1
    80001754:	00007097          	auipc	ra,0x7
    80001758:	be4080e7          	jalr	-1052(ra) # 80008338 <_Unwind_Resume>

000000008000175c <_Z11threadTest2v>:

void threadTest2()
{
    8000175c:	fe010113          	addi	sp,sp,-32
    80001760:	00113c23          	sd	ra,24(sp)
    80001764:	00813823          	sd	s0,16(sp)
    80001768:	00913423          	sd	s1,8(sp)
    8000176c:	01213023          	sd	s2,0(sp)
    80001770:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001774:	01800513          	li	a0,24
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	e80080e7          	jalr	-384(ra) # 800025f8 <_Znwm>
    80001780:	00050493          	mv	s1,a0
    80001784:	00000613          	li	a2,0
    80001788:	00000597          	auipc	a1,0x0
    8000178c:	cac58593          	addi	a1,a1,-852 # 80001434 <_Z4idlePv>
    80001790:	00001097          	auipc	ra,0x1
    80001794:	f34080e7          	jalr	-204(ra) # 800026c4 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001798:	00048513          	mv	a0,s1
    8000179c:	00001097          	auipc	ra,0x1
    800017a0:	eac080e7          	jalr	-340(ra) # 80002648 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800017a4:	01800513          	li	a0,24
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	e50080e7          	jalr	-432(ra) # 800025f8 <_Znwm>
    800017b0:	00050913          	mv	s2,a0
    800017b4:	00000613          	li	a2,0
    800017b8:	00000597          	auipc	a1,0x0
    800017bc:	ca858593          	addi	a1,a1,-856 # 80001460 <_Z15thread1FunctionPv>
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	f04080e7          	jalr	-252(ra) # 800026c4 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800017c8:	00090513          	mv	a0,s2
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	e7c080e7          	jalr	-388(ra) # 80002648 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    800017d4:	01800513          	li	a0,24
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	e20080e7          	jalr	-480(ra) # 800025f8 <_Znwm>
    800017e0:	00050913          	mv	s2,a0
    800017e4:	00000613          	li	a2,0
    800017e8:	00000597          	auipc	a1,0x0
    800017ec:	da058593          	addi	a1,a1,-608 # 80001588 <_Z20thread2FunctionTest2Pv>
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	ed4080e7          	jalr	-300(ra) # 800026c4 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800017f8:	00090513          	mv	a0,s2
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	e4c080e7          	jalr	-436(ra) # 80002648 <_ZN6Thread5startEv>

    Riscv::enableInterrupts();
    80001804:	00001097          	auipc	ra,0x1
    80001808:	01c080e7          	jalr	28(ra) # 80002820 <_ZN5Riscv16enableInterruptsEv>

    while(idleThread->myHandle->getState() != PCB::FINISHED);
    8000180c:	0004b783          	ld	a5,0(s1)
    80001810:	0307a703          	lw	a4,48(a5)
    80001814:	00300793          	li	a5,3
    80001818:	fef71ae3          	bne	a4,a5,8000180c <_Z11threadTest2v+0xb0>

    Riscv::printString("End...\n");
    8000181c:	00005517          	auipc	a0,0x5
    80001820:	84c50513          	addi	a0,a0,-1972 # 80006068 <CONSOLE_STATUS+0x58>
    80001824:	00001097          	auipc	ra,0x1
    80001828:	084080e7          	jalr	132(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>

    Riscv::disableInterrupts();
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	014080e7          	jalr	20(ra) # 80002840 <_ZN5Riscv17disableInterruptsEv>
}
    80001834:	01813083          	ld	ra,24(sp)
    80001838:	01013403          	ld	s0,16(sp)
    8000183c:	00813483          	ld	s1,8(sp)
    80001840:	00013903          	ld	s2,0(sp)
    80001844:	02010113          	addi	sp,sp,32
    80001848:	00008067          	ret
    8000184c:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001850:	00048513          	mv	a0,s1
    80001854:	00001097          	auipc	ra,0x1
    80001858:	dcc080e7          	jalr	-564(ra) # 80002620 <_ZdlPv>
    8000185c:	00090513          	mv	a0,s2
    80001860:	00007097          	auipc	ra,0x7
    80001864:	ad8080e7          	jalr	-1320(ra) # 80008338 <_Unwind_Resume>
    80001868:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    8000186c:	00090513          	mv	a0,s2
    80001870:	00001097          	auipc	ra,0x1
    80001874:	db0080e7          	jalr	-592(ra) # 80002620 <_ZdlPv>
    80001878:	00048513          	mv	a0,s1
    8000187c:	00007097          	auipc	ra,0x7
    80001880:	abc080e7          	jalr	-1348(ra) # 80008338 <_Unwind_Resume>
    80001884:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001888:	00090513          	mv	a0,s2
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	d94080e7          	jalr	-620(ra) # 80002620 <_ZdlPv>
    80001894:	00048513          	mv	a0,s1
    80001898:	00007097          	auipc	ra,0x7
    8000189c:	aa0080e7          	jalr	-1376(ra) # 80008338 <_Unwind_Resume>

00000000800018a0 <_Z11threadTestsv>:

void threadTests()
{
    800018a0:	ff010113          	addi	sp,sp,-16
    800018a4:	00113423          	sd	ra,8(sp)
    800018a8:	00813023          	sd	s0,0(sp)
    800018ac:	01010413          	addi	s0,sp,16
    threadTest1();
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	da8080e7          	jalr	-600(ra) # 80001658 <_Z11threadTest1v>
    //threadTest2();
}
    800018b8:	00813083          	ld	ra,8(sp)
    800018bc:	00013403          	ld	s0,0(sp)
    800018c0:	01010113          	addi	sp,sp,16
    800018c4:	00008067          	ret

00000000800018c8 <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    800018c8:	cc010113          	addi	sp,sp,-832
    800018cc:	32113c23          	sd	ra,824(sp)
    800018d0:	32813823          	sd	s0,816(sp)
    800018d4:	32913423          	sd	s1,808(sp)
    800018d8:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    800018dc:	00004517          	auipc	a0,0x4
    800018e0:	79450513          	addi	a0,a0,1940 # 80006070 <CONSOLE_STATUS+0x60>
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	fc4080e7          	jalr	-60(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    800018ec:	00000493          	li	s1,0
    800018f0:	0080006f          	j	800018f8 <_Z10mallocFreev+0x30>
    800018f4:	0014849b          	addiw	s1,s1,1
    800018f8:	06300793          	li	a5,99
    800018fc:	0497c463          	blt	a5,s1,80001944 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    80001900:	06400513          	li	a0,100
    80001904:	00000097          	auipc	ra,0x0
    80001908:	924080e7          	jalr	-1756(ra) # 80001228 <mem_alloc>
    8000190c:	00349793          	slli	a5,s1,0x3
    80001910:	fe040713          	addi	a4,s0,-32
    80001914:	00f707b3          	add	a5,a4,a5
    80001918:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    8000191c:	fc051ce3          	bnez	a0,800018f4 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    80001920:	00004517          	auipc	a0,0x4
    80001924:	76050513          	addi	a0,a0,1888 # 80006080 <CONSOLE_STATUS+0x70>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	f80080e7          	jalr	-128(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    80001930:	33813083          	ld	ra,824(sp)
    80001934:	33013403          	ld	s0,816(sp)
    80001938:	32813483          	ld	s1,808(sp)
    8000193c:	34010113          	addi	sp,sp,832
    80001940:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001944:	00000493          	li	s1,0
    80001948:	06300793          	li	a5,99
    8000194c:	0297ce63          	blt	a5,s1,80001988 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001950:	00349793          	slli	a5,s1,0x3
    80001954:	fe040713          	addi	a4,s0,-32
    80001958:	00f707b3          	add	a5,a4,a5
    8000195c:	ce07b503          	ld	a0,-800(a5)
    80001960:	00000097          	auipc	ra,0x0
    80001964:	8f8080e7          	jalr	-1800(ra) # 80001258 <mem_free>
        if(retval != 0)
    80001968:	00051663          	bnez	a0,80001974 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    8000196c:	0024849b          	addiw	s1,s1,2
    80001970:	fd9ff06f          	j	80001948 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001974:	00004517          	auipc	a0,0x4
    80001978:	70c50513          	addi	a0,a0,1804 # 80006080 <CONSOLE_STATUS+0x70>
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	f2c080e7          	jalr	-212(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            return;
    80001984:	fadff06f          	j	80001930 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001988:	00000493          	li	s1,0
    8000198c:	0080006f          	j	80001994 <_Z10mallocFreev+0xcc>
    80001990:	0024849b          	addiw	s1,s1,2
    80001994:	06300793          	li	a5,99
    80001998:	0297cc63          	blt	a5,s1,800019d0 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    8000199c:	01400513          	li	a0,20
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	888080e7          	jalr	-1912(ra) # 80001228 <mem_alloc>
    800019a8:	00349793          	slli	a5,s1,0x3
    800019ac:	fe040713          	addi	a4,s0,-32
    800019b0:	00f707b3          	add	a5,a4,a5
    800019b4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    800019b8:	fc051ce3          	bnez	a0,80001990 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    800019bc:	00004517          	auipc	a0,0x4
    800019c0:	6c450513          	addi	a0,a0,1732 # 80006080 <CONSOLE_STATUS+0x70>
    800019c4:	00001097          	auipc	ra,0x1
    800019c8:	ee4080e7          	jalr	-284(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            return;
    800019cc:	f65ff06f          	j	80001930 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    800019d0:	00000493          	li	s1,0
    800019d4:	06300793          	li	a5,99
    800019d8:	0297ce63          	blt	a5,s1,80001a14 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    800019dc:	00349793          	slli	a5,s1,0x3
    800019e0:	fe040713          	addi	a4,s0,-32
    800019e4:	00f707b3          	add	a5,a4,a5
    800019e8:	ce07b503          	ld	a0,-800(a5)
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	86c080e7          	jalr	-1940(ra) # 80001258 <mem_free>
        if(retval != 0)
    800019f4:	00051663          	bnez	a0,80001a00 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    800019f8:	0014849b          	addiw	s1,s1,1
    800019fc:	fd9ff06f          	j	800019d4 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001a00:	00004517          	auipc	a0,0x4
    80001a04:	68050513          	addi	a0,a0,1664 # 80006080 <CONSOLE_STATUS+0x70>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	ea0080e7          	jalr	-352(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            return;
    80001a10:	f21ff06f          	j	80001930 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001a14:	00004517          	auipc	a0,0x4
    80001a18:	67450513          	addi	a0,a0,1652 # 80006088 <CONSOLE_STATUS+0x78>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	e8c080e7          	jalr	-372(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    80001a24:	f0dff06f          	j	80001930 <_Z10mallocFreev+0x68>

0000000080001a28 <_Z9bigMallocv>:
void bigMalloc()
{
    80001a28:	ff010113          	addi	sp,sp,-16
    80001a2c:	00113423          	sd	ra,8(sp)
    80001a30:	00813023          	sd	s0,0(sp)
    80001a34:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001a38:	00004517          	auipc	a0,0x4
    80001a3c:	65850513          	addi	a0,a0,1624 # 80006090 <CONSOLE_STATUS+0x80>
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	e68080e7          	jalr	-408(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001a48:	00005797          	auipc	a5,0x5
    80001a4c:	7987b783          	ld	a5,1944(a5) # 800071e0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a50:	0007b503          	ld	a0,0(a5)
    80001a54:	00005797          	auipc	a5,0x5
    80001a58:	75c7b783          	ld	a5,1884(a5) # 800071b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a5c:	0007b783          	ld	a5,0(a5)
    80001a60:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001a64:	06450513          	addi	a0,a0,100
    80001a68:	fffff097          	auipc	ra,0xfffff
    80001a6c:	7c0080e7          	jalr	1984(ra) # 80001228 <mem_alloc>
    if(p == 0)
    80001a70:	02050263          	beqz	a0,80001a94 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001a74:	00004517          	auipc	a0,0x4
    80001a78:	60c50513          	addi	a0,a0,1548 # 80006080 <CONSOLE_STATUS+0x70>
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	e2c080e7          	jalr	-468(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
}
    80001a84:	00813083          	ld	ra,8(sp)
    80001a88:	00013403          	ld	s0,0(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret
        Riscv::printString("OK\n");
    80001a94:	00004517          	auipc	a0,0x4
    80001a98:	5f450513          	addi	a0,a0,1524 # 80006088 <CONSOLE_STATUS+0x78>
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	e0c080e7          	jalr	-500(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    80001aa4:	fe1ff06f          	j	80001a84 <_Z9bigMallocv+0x5c>

0000000080001aa8 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001aa8:	fd010113          	addi	sp,sp,-48
    80001aac:	02113423          	sd	ra,40(sp)
    80001ab0:	02813023          	sd	s0,32(sp)
    80001ab4:	00913c23          	sd	s1,24(sp)
    80001ab8:	01213823          	sd	s2,16(sp)
    80001abc:	01313423          	sd	s3,8(sp)
    80001ac0:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001ac4:	00004517          	auipc	a0,0x4
    80001ac8:	5dc50513          	addi	a0,a0,1500 # 800060a0 <CONSOLE_STATUS+0x90>
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	ddc080e7          	jalr	-548(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001ad4:	00000493          	li	s1,0
    uint64 sum = 0;
    80001ad8:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001adc:	00000913          	li	s2,0
    80001ae0:	0180006f          	j	80001af8 <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001ae4:	00a00793          	li	a5,10
    80001ae8:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001aec:	00a98993          	addi	s3,s3,10
        cnt++;
    80001af0:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001af4:	00148493          	addi	s1,s1,1
    80001af8:	000027b7          	lui	a5,0x2
    80001afc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001b00:	0097ea63          	bltu	a5,s1,80001b14 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001b04:	00800513          	li	a0,8
    80001b08:	fffff097          	auipc	ra,0xfffff
    80001b0c:	720080e7          	jalr	1824(ra) # 80001228 <mem_alloc>
        if(t == 0)
    80001b10:	fc051ae3          	bnez	a0,80001ae4 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001b14:	00090513          	mv	a0,s2
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	e00080e7          	jalr	-512(ra) # 80002918 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001b20:	00004517          	auipc	a0,0x4
    80001b24:	7a850513          	addi	a0,a0,1960 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	d80080e7          	jalr	-640(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001b30:	00291793          	slli	a5,s2,0x2
    80001b34:	01278933          	add	s2,a5,s2
    80001b38:	00191913          	slli	s2,s2,0x1
    80001b3c:	03390863          	beq	s2,s3,80001b6c <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001b40:	00004517          	auipc	a0,0x4
    80001b44:	54050513          	addi	a0,a0,1344 # 80006080 <CONSOLE_STATUS+0x70>
    80001b48:	00001097          	auipc	ra,0x1
    80001b4c:	d60080e7          	jalr	-672(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
}
    80001b50:	02813083          	ld	ra,40(sp)
    80001b54:	02013403          	ld	s0,32(sp)
    80001b58:	01813483          	ld	s1,24(sp)
    80001b5c:	01013903          	ld	s2,16(sp)
    80001b60:	00813983          	ld	s3,8(sp)
    80001b64:	03010113          	addi	sp,sp,48
    80001b68:	00008067          	ret
        Riscv::printString("OK\n");
    80001b6c:	00004517          	auipc	a0,0x4
    80001b70:	51c50513          	addi	a0,a0,1308 # 80006088 <CONSOLE_STATUS+0x78>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	d34080e7          	jalr	-716(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    80001b7c:	fd5ff06f          	j	80001b50 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001b80 <_Z7badFreev>:
void badFree()
{
    80001b80:	ff010113          	addi	sp,sp,-16
    80001b84:	00113423          	sd	ra,8(sp)
    80001b88:	00813023          	sd	s0,0(sp)
    80001b8c:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001b90:	00004517          	auipc	a0,0x4
    80001b94:	52850513          	addi	a0,a0,1320 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	d10080e7          	jalr	-752(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001ba0:	00800513          	li	a0,8
    80001ba4:	fffff097          	auipc	ra,0xfffff
    80001ba8:	684080e7          	jalr	1668(ra) # 80001228 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001bac:	00250513          	addi	a0,a0,2
    80001bb0:	fffff097          	auipc	ra,0xfffff
    80001bb4:	6a8080e7          	jalr	1704(ra) # 80001258 <mem_free>
    if(retval == 0)
    80001bb8:	02051263          	bnez	a0,80001bdc <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001bbc:	00004517          	auipc	a0,0x4
    80001bc0:	4c450513          	addi	a0,a0,1220 # 80006080 <CONSOLE_STATUS+0x70>
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	ce4080e7          	jalr	-796(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001bcc:	00813083          	ld	ra,8(sp)
    80001bd0:	00013403          	ld	s0,0(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret
        Riscv::printString("OK\n");
    80001bdc:	00004517          	auipc	a0,0x4
    80001be0:	4ac50513          	addi	a0,a0,1196 # 80006088 <CONSOLE_STATUS+0x78>
    80001be4:	00001097          	auipc	ra,0x1
    80001be8:	cc4080e7          	jalr	-828(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
}
    80001bec:	fe1ff06f          	j	80001bcc <_Z7badFreev+0x4c>

0000000080001bf0 <_Z13stressTestingv>:

void stressTesting()
{
    80001bf0:	cb010113          	addi	sp,sp,-848
    80001bf4:	34113423          	sd	ra,840(sp)
    80001bf8:	34813023          	sd	s0,832(sp)
    80001bfc:	32913c23          	sd	s1,824(sp)
    80001c00:	33213823          	sd	s2,816(sp)
    80001c04:	33313423          	sd	s3,808(sp)
    80001c08:	35010413          	addi	s0,sp,848
    Riscv::printString("stressTesting\n");
    80001c0c:	00004517          	auipc	a0,0x4
    80001c10:	4bc50513          	addi	a0,a0,1212 # 800060c8 <CONSOLE_STATUS+0xb8>
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	c94080e7          	jalr	-876(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001c1c:	00000493          	li	s1,0
    80001c20:	0080006f          	j	80001c28 <_Z13stressTestingv+0x38>
    80001c24:	0014849b          	addiw	s1,s1,1
    80001c28:	06300793          	li	a5,99
    80001c2c:	0497c863          	blt	a5,s1,80001c7c <_Z13stressTestingv+0x8c>
    {
        addrs[i] = mem_alloc(1);
    80001c30:	00100513          	li	a0,1
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	5f4080e7          	jalr	1524(ra) # 80001228 <mem_alloc>
    80001c3c:	00349793          	slli	a5,s1,0x3
    80001c40:	fd040713          	addi	a4,s0,-48
    80001c44:	00f707b3          	add	a5,a4,a5
    80001c48:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c4c:	fc051ce3          	bnez	a0,80001c24 <_Z13stressTestingv+0x34>
        {
            Riscv::printString("not OK\n");
    80001c50:	00004517          	auipc	a0,0x4
    80001c54:	43050513          	addi	a0,a0,1072 # 80006080 <CONSOLE_STATUS+0x70>
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	c50080e7          	jalr	-944(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
        }
        sz-=10;
    }

    Riscv::printString("OK\n");
}
    80001c60:	34813083          	ld	ra,840(sp)
    80001c64:	34013403          	ld	s0,832(sp)
    80001c68:	33813483          	ld	s1,824(sp)
    80001c6c:	33013903          	ld	s2,816(sp)
    80001c70:	32813983          	ld	s3,808(sp)
    80001c74:	35010113          	addi	sp,sp,848
    80001c78:	00008067          	ret
    int sz = 5;
    80001c7c:	00500913          	li	s2,5
    while(sz > 0)
    80001c80:	19205e63          	blez	s2,80001e1c <_Z13stressTestingv+0x22c>
        Riscv::printString("sz : ");
    80001c84:	00004517          	auipc	a0,0x4
    80001c88:	45450513          	addi	a0,a0,1108 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	c1c080e7          	jalr	-996(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(sz);
    80001c94:	00090993          	mv	s3,s2
    80001c98:	00090513          	mv	a0,s2
    80001c9c:	00001097          	auipc	ra,0x1
    80001ca0:	c7c080e7          	jalr	-900(ra) # 80002918 <_ZN5Riscv12printIntegerEm>
        for(int i = 0 ; i < num;i+=2)
    80001ca4:	00000493          	li	s1,0
    80001ca8:	06300793          	li	a5,99
    80001cac:	0a97ca63          	blt	a5,s1,80001d60 <_Z13stressTestingv+0x170>
            Riscv::printString("i : ");
    80001cb0:	00004517          	auipc	a0,0x4
    80001cb4:	39050513          	addi	a0,a0,912 # 80006040 <CONSOLE_STATUS+0x30>
    80001cb8:	00001097          	auipc	ra,0x1
    80001cbc:	bf0080e7          	jalr	-1040(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001cc0:	00048513          	mv	a0,s1
    80001cc4:	00001097          	auipc	ra,0x1
    80001cc8:	c54080e7          	jalr	-940(ra) # 80002918 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001ccc:	00004517          	auipc	a0,0x4
    80001cd0:	41450513          	addi	a0,a0,1044 # 800060e0 <CONSOLE_STATUS+0xd0>
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	bd4080e7          	jalr	-1068(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001cdc:	00349793          	slli	a5,s1,0x3
    80001ce0:	fd040713          	addi	a4,s0,-48
    80001ce4:	00f707b3          	add	a5,a4,a5
    80001ce8:	ce07b503          	ld	a0,-800(a5)
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	56c080e7          	jalr	1388(ra) # 80001258 <mem_free>
            if(retval != 0)
    80001cf4:	04051263          	bnez	a0,80001d38 <_Z13stressTestingv+0x148>
            Riscv::printString("alloc\n");
    80001cf8:	00004517          	auipc	a0,0x4
    80001cfc:	3f050513          	addi	a0,a0,1008 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001d00:	00001097          	auipc	ra,0x1
    80001d04:	ba8080e7          	jalr	-1112(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz/2);
    80001d08:	01f9551b          	srliw	a0,s2,0x1f
    80001d0c:	0125053b          	addw	a0,a0,s2
    80001d10:	4015551b          	sraiw	a0,a0,0x1
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	514080e7          	jalr	1300(ra) # 80001228 <mem_alloc>
    80001d1c:	00349793          	slli	a5,s1,0x3
    80001d20:	fd040713          	addi	a4,s0,-48
    80001d24:	00f707b3          	add	a5,a4,a5
    80001d28:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001d2c:	02050063          	beqz	a0,80001d4c <_Z13stressTestingv+0x15c>
        for(int i = 0 ; i < num;i+=2)
    80001d30:	0024849b          	addiw	s1,s1,2
    80001d34:	f75ff06f          	j	80001ca8 <_Z13stressTestingv+0xb8>
                Riscv::printString("not OK\n");
    80001d38:	00004517          	auipc	a0,0x4
    80001d3c:	34850513          	addi	a0,a0,840 # 80006080 <CONSOLE_STATUS+0x70>
    80001d40:	00001097          	auipc	ra,0x1
    80001d44:	b68080e7          	jalr	-1176(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
                return;
    80001d48:	f19ff06f          	j	80001c60 <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001d4c:	00004517          	auipc	a0,0x4
    80001d50:	3a450513          	addi	a0,a0,932 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	b54080e7          	jalr	-1196(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
                return;
    80001d5c:	f05ff06f          	j	80001c60 <_Z13stressTestingv+0x70>
        for(int i = 1 ; i < num;i+=2)
    80001d60:	00100493          	li	s1,1
    80001d64:	06300793          	li	a5,99
    80001d68:	0a97c663          	blt	a5,s1,80001e14 <_Z13stressTestingv+0x224>
            Riscv::printString("i : ");
    80001d6c:	00004517          	auipc	a0,0x4
    80001d70:	2d450513          	addi	a0,a0,724 # 80006040 <CONSOLE_STATUS+0x30>
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	b34080e7          	jalr	-1228(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001d7c:	00048513          	mv	a0,s1
    80001d80:	00001097          	auipc	ra,0x1
    80001d84:	b98080e7          	jalr	-1128(ra) # 80002918 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001d88:	00004517          	auipc	a0,0x4
    80001d8c:	35850513          	addi	a0,a0,856 # 800060e0 <CONSOLE_STATUS+0xd0>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	b18080e7          	jalr	-1256(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001d98:	00349793          	slli	a5,s1,0x3
    80001d9c:	fd040713          	addi	a4,s0,-48
    80001da0:	00f707b3          	add	a5,a4,a5
    80001da4:	ce07b503          	ld	a0,-800(a5)
    80001da8:	fffff097          	auipc	ra,0xfffff
    80001dac:	4b0080e7          	jalr	1200(ra) # 80001258 <mem_free>
            if(retval != 0)
    80001db0:	02051e63          	bnez	a0,80001dec <_Z13stressTestingv+0x1fc>
            Riscv::printString("alloc\n");
    80001db4:	00004517          	auipc	a0,0x4
    80001db8:	33450513          	addi	a0,a0,820 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	aec080e7          	jalr	-1300(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz);
    80001dc4:	00098513          	mv	a0,s3
    80001dc8:	fffff097          	auipc	ra,0xfffff
    80001dcc:	460080e7          	jalr	1120(ra) # 80001228 <mem_alloc>
    80001dd0:	00349793          	slli	a5,s1,0x3
    80001dd4:	fd040713          	addi	a4,s0,-48
    80001dd8:	00f707b3          	add	a5,a4,a5
    80001ddc:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001de0:	02050063          	beqz	a0,80001e00 <_Z13stressTestingv+0x210>
        for(int i = 1 ; i < num;i+=2)
    80001de4:	0024849b          	addiw	s1,s1,2
    80001de8:	f7dff06f          	j	80001d64 <_Z13stressTestingv+0x174>
                Riscv::printString("not OK\n");
    80001dec:	00004517          	auipc	a0,0x4
    80001df0:	29450513          	addi	a0,a0,660 # 80006080 <CONSOLE_STATUS+0x70>
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	ab4080e7          	jalr	-1356(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
                return;
    80001dfc:	e65ff06f          	j	80001c60 <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001e00:	00004517          	auipc	a0,0x4
    80001e04:	2f050513          	addi	a0,a0,752 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	aa0080e7          	jalr	-1376(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
                return;
    80001e10:	e51ff06f          	j	80001c60 <_Z13stressTestingv+0x70>
        sz-=10;
    80001e14:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001e18:	e69ff06f          	j	80001c80 <_Z13stressTestingv+0x90>
    Riscv::printString("OK\n");
    80001e1c:	00004517          	auipc	a0,0x4
    80001e20:	26c50513          	addi	a0,a0,620 # 80006088 <CONSOLE_STATUS+0x78>
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	a84080e7          	jalr	-1404(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    80001e2c:	e35ff06f          	j	80001c60 <_Z13stressTestingv+0x70>

0000000080001e30 <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    80001e30:	ff010113          	addi	sp,sp,-16
    80001e34:	00113423          	sd	ra,8(sp)
    80001e38:	00813023          	sd	s0,0(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
    stressTesting();
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	db0080e7          	jalr	-592(ra) # 80001bf0 <_Z13stressTestingv>
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret

0000000080001e58 <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    80001e58:	fe010113          	addi	sp,sp,-32
    80001e5c:	00113c23          	sd	ra,24(sp)
    80001e60:	00813823          	sd	s0,16(sp)
    80001e64:	00913423          	sd	s1,8(sp)
    80001e68:	02010413          	addi	s0,sp,32
    Riscv::printString("Runner started...\n");
    80001e6c:	00004517          	auipc	a0,0x4
    80001e70:	28c50513          	addi	a0,a0,652 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	a34080e7          	jalr	-1484(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	a0c080e7          	jalr	-1524(ra) # 80002888 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001e84:	00005497          	auipc	s1,0x5
    80001e88:	3ac48493          	addi	s1,s1,940 # 80007230 <_ZN3PCB7runningE>
    80001e8c:	0004b783          	ld	a5,0(s1)
    80001e90:	0187b703          	ld	a4,24(a5)
    80001e94:	0207b503          	ld	a0,32(a5)
    80001e98:	000700e7          	jalr	a4
    running->setState(PCB::FINISHED);
    80001e9c:	0004b783          	ld	a5,0(s1)
    void setState(State s) {state = s;}
    80001ea0:	00300713          	li	a4,3
    80001ea4:	02e7a823          	sw	a4,48(a5)
    Riscv::printString("Thread finished\n");
    80001ea8:	00004517          	auipc	a0,0x4
    80001eac:	26850513          	addi	a0,a0,616 # 80006110 <CONSOLE_STATUS+0x100>
    80001eb0:	00001097          	auipc	ra,0x1
    80001eb4:	9f8080e7          	jalr	-1544(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    //thread_exit();
    thread_dispatch();
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	44c080e7          	jalr	1100(ra) # 80001304 <thread_dispatch>
}
    80001ec0:	01813083          	ld	ra,24(sp)
    80001ec4:	01013403          	ld	s0,16(sp)
    80001ec8:	00813483          	ld	s1,8(sp)
    80001ecc:	02010113          	addi	sp,sp,32
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80001ed4:	fe010113          	addi	sp,sp,-32
    80001ed8:	00113c23          	sd	ra,24(sp)
    80001edc:	00813823          	sd	s0,16(sp)
    80001ee0:	00913423          	sd	s1,8(sp)
    80001ee4:	02010413          	addi	s0,sp,32
    80001ee8:	00050493          	mv	s1,a0
    })
    80001eec:	00e53423          	sd	a4,8(a0)
    80001ef0:	00053823          	sd	zero,16(a0)
    80001ef4:	00b53c23          	sd	a1,24(a0)
    80001ef8:	02c53023          	sd	a2,32(a0)
    80001efc:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001f00:	000017b7          	lui	a5,0x1
    80001f04:	00f686b3          	add	a3,a3,a5
    })
    80001f08:	02d53c23          	sd	a3,56(a0)
    80001f0c:	00000797          	auipc	a5,0x0
    80001f10:	f4c78793          	addi	a5,a5,-180 # 80001e58 <_ZN3PCB6runnerEv>
    80001f14:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	4c8080e7          	jalr	1224(ra) # 800023e0 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80001f20:	0004b023          	sd	zero,0(s1)
}
    80001f24:	01813083          	ld	ra,24(sp)
    80001f28:	01013403          	ld	s0,16(sp)
    80001f2c:	00813483          	ld	s1,8(sp)
    80001f30:	02010113          	addi	sp,sp,32
    80001f34:	00008067          	ret

0000000080001f38 <_ZN3PCB5sleepEm>:
{
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00813423          	sd	s0,8(sp)
    80001f40:	01010413          	addi	s0,sp,16
}
    80001f44:	00813403          	ld	s0,8(sp)
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00008067          	ret

0000000080001f50 <_ZN3PCB5startEv>:
{
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00113423          	sd	ra,8(sp)
    80001f58:	00813023          	sd	s0,0(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	480080e7          	jalr	1152(ra) # 800023e0 <_ZN9Scheduler3putEP3PCB>
}
    80001f68:	00813083          	ld	ra,8(sp)
    80001f6c:	00013403          	ld	s0,0(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <_ZN3PCBnwEm>:
        PCB::contextSwitchExiting(&running->context);
    }

}

void *PCB::operator new(size_t size) {
    80001f78:	ff010113          	addi	sp,sp,-16
    80001f7c:	00113423          	sd	ra,8(sp)
    80001f80:	00813023          	sd	s0,0(sp)
    80001f84:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	0d4080e7          	jalr	212(ra) # 8000305c <_Z7kmallocm>
}
    80001f90:	00813083          	ld	ra,8(sp)
    80001f94:	00013403          	ld	s0,0(sp)
    80001f98:	01010113          	addi	sp,sp,16
    80001f9c:	00008067          	ret

0000000080001fa0 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00113423          	sd	ra,8(sp)
    80001fa8:	00813023          	sd	s0,0(sp)
    80001fac:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	0d4080e7          	jalr	212(ra) # 80003084 <_Z5kfreePv>
}
    80001fb8:	00813083          	ld	ra,8(sp)
    80001fbc:	00013403          	ld	s0,0(sp)
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00113423          	sd	ra,8(sp)
    80001fd0:	00813023          	sd	s0,0(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80001fd8:	02853503          	ld	a0,40(a0)
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	0a8080e7          	jalr	168(ra) # 80003084 <_Z5kfreePv>
}
    80001fe4:	00813083          	ld	ra,8(sp)
    80001fe8:	00013403          	ld	s0,0(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZN3PCB8dispatchEv>:
{
    80001ff4:	fe010113          	addi	sp,sp,-32
    80001ff8:	00113c23          	sd	ra,24(sp)
    80001ffc:	00813823          	sd	s0,16(sp)
    80002000:	00913423          	sd	s1,8(sp)
    80002004:	01213023          	sd	s2,0(sp)
    80002008:	02010413          	addi	s0,sp,32
    Riscv::printString("Dispatch called...\n");
    8000200c:	00004517          	auipc	a0,0x4
    80002010:	11c50513          	addi	a0,a0,284 # 80006128 <CONSOLE_STATUS+0x118>
    80002014:	00001097          	auipc	ra,0x1
    80002018:	894080e7          	jalr	-1900(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    PCB* old = running;
    8000201c:	00005917          	auipc	s2,0x5
    80002020:	21493903          	ld	s2,532(s2) # 80007230 <_ZN3PCB7runningE>
    State getState() {return state;}
    80002024:	03092703          	lw	a4,48(s2)
    if(old->getState() == PCB::RUNNING)
    80002028:	00100793          	li	a5,1
    8000202c:	08f70263          	beq	a4,a5,800020b0 <_ZN3PCB8dispatchEv+0xbc>
    PCB::running = Scheduler::get();
    80002030:	00000097          	auipc	ra,0x0
    80002034:	450080e7          	jalr	1104(ra) # 80002480 <_ZN9Scheduler3getEv>
    80002038:	00005497          	auipc	s1,0x5
    8000203c:	1f848493          	addi	s1,s1,504 # 80007230 <_ZN3PCB7runningE>
    80002040:	00a4b023          	sd	a0,0(s1)
    void setState(State s) {state = s;}
    80002044:	00100793          	li	a5,1
    80002048:	02f52823          	sw	a5,48(a0)
    Riscv::printString("Switching context...\n");
    8000204c:	00004517          	auipc	a0,0x4
    80002050:	0f450513          	addi	a0,a0,244 # 80006140 <CONSOLE_STATUS+0x130>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	854080e7          	jalr	-1964(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    if(PCB::exitingPCB == 0)
    8000205c:	0084b483          	ld	s1,8(s1)
    80002060:	06048063          	beqz	s1,800020c0 <_ZN3PCB8dispatchEv+0xcc>
        delete PCB::exitingPCB;
    80002064:	00048513          	mv	a0,s1
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	f60080e7          	jalr	-160(ra) # 80001fc8 <_ZN3PCBD1Ev>
    80002070:	00048513          	mv	a0,s1
    80002074:	00000097          	auipc	ra,0x0
    80002078:	f2c080e7          	jalr	-212(ra) # 80001fa0 <_ZN3PCBdlEPv>
        PCB::exitingPCB = 0;
    8000207c:	00005797          	auipc	a5,0x5
    80002080:	1b478793          	addi	a5,a5,436 # 80007230 <_ZN3PCB7runningE>
    80002084:	0007b423          	sd	zero,8(a5)
        PCB::contextSwitchExiting(&running->context);
    80002088:	0007b503          	ld	a0,0(a5)
    8000208c:	03850513          	addi	a0,a0,56
    80002090:	fffff097          	auipc	ra,0xfffff
    80002094:	18c080e7          	jalr	396(ra) # 8000121c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>
}
    80002098:	01813083          	ld	ra,24(sp)
    8000209c:	01013403          	ld	s0,16(sp)
    800020a0:	00813483          	ld	s1,8(sp)
    800020a4:	00013903          	ld	s2,0(sp)
    800020a8:	02010113          	addi	sp,sp,32
    800020ac:	00008067          	ret
        Scheduler::put(old);
    800020b0:	00090513          	mv	a0,s2
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	32c080e7          	jalr	812(ra) # 800023e0 <_ZN9Scheduler3putEP3PCB>
    800020bc:	f75ff06f          	j	80002030 <_ZN3PCB8dispatchEv+0x3c>
        PCB::contextSwitch(&old->context, &running->context);
    800020c0:	00005597          	auipc	a1,0x5
    800020c4:	1705b583          	ld	a1,368(a1) # 80007230 <_ZN3PCB7runningE>
    800020c8:	03858593          	addi	a1,a1,56
    800020cc:	03890513          	addi	a0,s2,56
    800020d0:	fffff097          	auipc	ra,0xfffff
    800020d4:	138080e7          	jalr	312(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    800020d8:	fc1ff06f          	j	80002098 <_ZN3PCB8dispatchEv+0xa4>

00000000800020dc <_ZN3PCB17insertSleepingPCBEv>:

void PCB::insertSleepingPCB()
{
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00113423          	sd	ra,8(sp)
    800020e4:	00813023          	sd	s0,0(sp)
    800020e8:	01010413          	addi	s0,sp,16
    Riscv::printString("Inserting sleeping PCB...\n");
    800020ec:	00004517          	auipc	a0,0x4
    800020f0:	06c50513          	addi	a0,a0,108 # 80006158 <CONSOLE_STATUS+0x148>
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	7b4080e7          	jalr	1972(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800020fc:	00005797          	auipc	a5,0x5
    80002100:	1447b783          	ld	a5,324(a5) # 80007240 <_ZN3PCB15sleepingPCBHeadE>
    PCB* prev = 0;
    80002104:	00000593          	li	a1,0
    while(curr != 0)
    80002108:	02078463          	beqz	a5,80002130 <_ZN3PCB17insertSleepingPCBEv+0x54>
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    8000210c:	00005717          	auipc	a4,0x5
    80002110:	12473703          	ld	a4,292(a4) # 80007230 <_ZN3PCB7runningE>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002114:	01073603          	ld	a2,16(a4)
    80002118:	0107b683          	ld	a3,16(a5)
    8000211c:	00d66863          	bltu	a2,a3,8000212c <_ZN3PCB17insertSleepingPCBEv+0x50>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002120:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002124:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    80002128:	fe1ff06f          	j	80002108 <_ZN3PCB17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000212c:	00f73023          	sd	a5,0(a4)
    }

    if(prev == 0)
    80002130:	02058063          	beqz	a1,80002150 <_ZN3PCB17insertSleepingPCBEv+0x74>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80002134:	00005797          	auipc	a5,0x5
    80002138:	0fc7b783          	ld	a5,252(a5) # 80007230 <_ZN3PCB7runningE>
    8000213c:	00f5b023          	sd	a5,0(a1)
}
    80002140:	00813083          	ld	ra,8(sp)
    80002144:	00013403          	ld	s0,0(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002150:	00005797          	auipc	a5,0x5
    80002154:	0e078793          	addi	a5,a5,224 # 80007230 <_ZN3PCB7runningE>
    80002158:	0007b703          	ld	a4,0(a5)
    8000215c:	00e7b823          	sd	a4,16(a5)
    80002160:	fe1ff06f          	j	80002140 <_ZN3PCB17insertSleepingPCBEv+0x64>

0000000080002164 <_ZN3PCB13tryToWakePCBsEv>:

void PCB::tryToWakePCBs() {
    80002164:	fe010113          	addi	sp,sp,-32
    80002168:	00113c23          	sd	ra,24(sp)
    8000216c:	00813823          	sd	s0,16(sp)
    80002170:	00913423          	sd	s1,8(sp)
    80002174:	01213023          	sd	s2,0(sp)
    80002178:	02010413          	addi	s0,sp,32
    Riscv::printString("Waking PCBs...\n");
    8000217c:	00004517          	auipc	a0,0x4
    80002180:	ffc50513          	addi	a0,a0,-4 # 80006178 <CONSOLE_STATUS+0x168>
    80002184:	00000097          	auipc	ra,0x0
    80002188:	724080e7          	jalr	1828(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
    PCB* curr = sleepingPCBHead;
    8000218c:	00005497          	auipc	s1,0x5
    80002190:	0b44b483          	ld	s1,180(s1) # 80007240 <_ZN3PCB15sleepingPCBHeadE>
    80002194:	0380006f          	j	800021cc <_ZN3PCB13tryToWakePCBsEv+0x68>
    while(curr != 0)
    {
        if(curr->getTimeToSleep() == 1UL)
        {
            Riscv::printString("PCB woken...\n");
    80002198:	00004517          	auipc	a0,0x4
    8000219c:	ff050513          	addi	a0,a0,-16 # 80006188 <CONSOLE_STATUS+0x178>
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	708080e7          	jalr	1800(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            PCB* old = curr;
            curr=curr->nextPCB;
    800021a8:	0004b903          	ld	s2,0(s1)
    void setState(State s) {state = s;}
    800021ac:	0204a823          	sw	zero,48(s1)
            old->setState(PCB::READY);
            old->nextPCB = 0;
    800021b0:	0004b023          	sd	zero,0(s1)
            Scheduler::put(old);
    800021b4:	00048513          	mv	a0,s1
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	228080e7          	jalr	552(ra) # 800023e0 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    800021c0:	00005797          	auipc	a5,0x5
    800021c4:	0927b023          	sd	s2,128(a5) # 80007240 <_ZN3PCB15sleepingPCBHeadE>
            curr=curr->nextPCB;
    800021c8:	00090493          	mv	s1,s2
    while(curr != 0)
    800021cc:	02048063          	beqz	s1,800021ec <_ZN3PCB13tryToWakePCBsEv+0x88>
    uint64 getTimeToSleep() {return timeToSleep;}
    800021d0:	0104b783          	ld	a5,16(s1)
        if(curr->getTimeToSleep() == 1UL)
    800021d4:	00100713          	li	a4,1
    800021d8:	fce780e3          	beq	a5,a4,80002198 <_ZN3PCB13tryToWakePCBsEv+0x34>
        }
        else
        {
            curr->setTimeToSleep(curr->getTimeToSleep() - 1);
    800021dc:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800021e0:	00f4b823          	sd	a5,16(s1)
            curr = curr->nextPCB;
    800021e4:	0004b483          	ld	s1,0(s1)
    800021e8:	fe5ff06f          	j	800021cc <_ZN3PCB13tryToWakePCBsEv+0x68>
        }
    }
}
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	00013903          	ld	s2,0(sp)
    800021fc:	02010113          	addi	sp,sp,32
    80002200:	00008067          	ret

0000000080002204 <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.h"

void Queue::pop() {
    80002204:	fe010113          	addi	sp,sp,-32
    80002208:	00113c23          	sd	ra,24(sp)
    8000220c:	00813823          	sd	s0,16(sp)
    80002210:	00913423          	sd	s1,8(sp)
    80002214:	01213023          	sd	s2,0(sp)
    80002218:	02010413          	addi	s0,sp,32
    8000221c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002220:	00053503          	ld	a0,0(a0)
    80002224:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	e5c080e7          	jalr	-420(ra) # 80003084 <_Z5kfreePv>
    first = newFirst;
    80002230:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002234:	00090e63          	beqz	s2,80002250 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002238:	01813083          	ld	ra,24(sp)
    8000223c:	01013403          	ld	s0,16(sp)
    80002240:	00813483          	ld	s1,8(sp)
    80002244:	00013903          	ld	s2,0(sp)
    80002248:	02010113          	addi	sp,sp,32
    8000224c:	00008067          	ret
        first = last = 0;
    80002250:	0004b423          	sd	zero,8(s1)
    80002254:	0004b023          	sd	zero,0(s1)
}
    80002258:	fe1ff06f          	j	80002238 <_ZN5Queue3popEv+0x34>

000000008000225c <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    8000225c:	fe010113          	addi	sp,sp,-32
    80002260:	00113c23          	sd	ra,24(sp)
    80002264:	00813823          	sd	s0,16(sp)
    80002268:	00913423          	sd	s1,8(sp)
    8000226c:	01213023          	sd	s2,0(sp)
    80002270:	02010413          	addi	s0,sp,32
    80002274:	00050493          	mv	s1,a0
    80002278:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    8000227c:	01000513          	li	a0,16
    80002280:	00001097          	auipc	ra,0x1
    80002284:	ddc080e7          	jalr	-548(ra) # 8000305c <_Z7kmallocm>
    newElem->data = t;
    80002288:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    8000228c:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002290:	0004b783          	ld	a5,0(s1)
    80002294:	02078463          	beqz	a5,800022bc <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002298:	0084b783          	ld	a5,8(s1)
    8000229c:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800022a0:	00a4b423          	sd	a0,8(s1)
    }
}
    800022a4:	01813083          	ld	ra,24(sp)
    800022a8:	01013403          	ld	s0,16(sp)
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	00013903          	ld	s2,0(sp)
    800022b4:	02010113          	addi	sp,sp,32
    800022b8:	00008067          	ret
        first = newElem;
    800022bc:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800022c0:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800022c4:	00053423          	sd	zero,8(a0)
    800022c8:	0004b783          	ld	a5,0(s1)
    800022cc:	0007b423          	sd	zero,8(a5)
    800022d0:	fd5ff06f          	j	800022a4 <_ZN5Queue4pushEP3PCB+0x48>

00000000800022d4 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00813423          	sd	s0,8(sp)
    800022dc:	01010413          	addi	s0,sp,16
    if(first == 0)
    800022e0:	00053503          	ld	a0,0(a0)
    800022e4:	00050463          	beqz	a0,800022ec <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800022e8:	00053503          	ld	a0,0(a0)
}
    800022ec:	00813403          	ld	s0,8(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <_ZN5QueueC1Ev>:

Queue::Queue() {
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00813423          	sd	s0,8(sp)
    80002300:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002304:	00053423          	sd	zero,8(a0)
    80002308:	00053023          	sd	zero,0(a0)
}
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002318:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    8000231c:	04050063          	beqz	a0,8000235c <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80002320:	fe010113          	addi	sp,sp,-32
    80002324:	00113c23          	sd	ra,24(sp)
    80002328:	00813823          	sd	s0,16(sp)
    8000232c:	00913423          	sd	s1,8(sp)
    80002330:	02010413          	addi	s0,sp,32
    {
        //todo
        //vrati ovo
        //sad je zakomentarisano zbog kfree
        Elem* old = curr;
        curr = curr->next;
    80002334:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002338:	00001097          	auipc	ra,0x1
    8000233c:	d4c080e7          	jalr	-692(ra) # 80003084 <_Z5kfreePv>
        curr = curr->next;
    80002340:	00048513          	mv	a0,s1
    while(curr != 0)
    80002344:	fe0498e3          	bnez	s1,80002334 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002348:	01813083          	ld	ra,24(sp)
    8000234c:	01013403          	ld	s0,16(sp)
    80002350:	00813483          	ld	s1,8(sp)
    80002354:	02010113          	addi	sp,sp,32
    80002358:	00008067          	ret
    8000235c:	00008067          	ret

0000000080002360 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00813423          	sd	s0,8(sp)
    80002368:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    8000236c:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002370:	00000513          	li	a0,0
    while(curr != 0)
    80002374:	00078863          	beqz	a5,80002384 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002378:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    8000237c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002380:	ff5ff06f          	j	80002374 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00113423          	sd	ra,8(sp)
    80002398:	00813023          	sd	s0,0(sp)
    8000239c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	cbc080e7          	jalr	-836(ra) # 8000305c <_Z7kmallocm>
}
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret

00000000800023b8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00113423          	sd	ra,8(sp)
    800023c0:	00813023          	sd	s0,0(sp)
    800023c4:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	cbc080e7          	jalr	-836(ra) # 80003084 <_Z5kfreePv>
}
    800023d0:	00813083          	ld	ra,8(sp)
    800023d4:	00013403          	ld	s0,0(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret

00000000800023e0 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800023e0:	fe010113          	addi	sp,sp,-32
    800023e4:	00113c23          	sd	ra,24(sp)
    800023e8:	00813823          	sd	s0,16(sp)
    800023ec:	00913423          	sd	s1,8(sp)
    800023f0:	01213023          	sd	s2,0(sp)
    800023f4:	02010413          	addi	s0,sp,32
    800023f8:	00050493          	mv	s1,a0
    void setState(State s) {state = s;}
    800023fc:	02052823          	sw	zero,48(a0)
    if(scheduler == 0)
    80002400:	00005797          	auipc	a5,0x5
    80002404:	e507b783          	ld	a5,-432(a5) # 80007250 <_ZN9Scheduler9schedulerE>
    80002408:	02078863          	beqz	a5,80002438 <_ZN9Scheduler3putEP3PCB+0x58>
    scheduler->queuePCB.push(pcb);
    8000240c:	00048593          	mv	a1,s1
    80002410:	00005517          	auipc	a0,0x5
    80002414:	e4053503          	ld	a0,-448(a0) # 80007250 <_ZN9Scheduler9schedulerE>
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	e44080e7          	jalr	-444(ra) # 8000225c <_ZN5Queue4pushEP3PCB>
}
    80002420:	01813083          	ld	ra,24(sp)
    80002424:	01013403          	ld	s0,16(sp)
    80002428:	00813483          	ld	s1,8(sp)
    8000242c:	00013903          	ld	s2,0(sp)
    80002430:	02010113          	addi	sp,sp,32
    80002434:	00008067          	ret
        scheduler = new Scheduler();
    80002438:	01000513          	li	a0,16
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	f54080e7          	jalr	-172(ra) # 80002390 <_ZN9SchedulernwEm>
    80002444:	00050913          	mv	s2,a0
    80002448:	00053023          	sd	zero,0(a0)
    8000244c:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
    80002450:	00000097          	auipc	ra,0x0
    80002454:	ea8080e7          	jalr	-344(ra) # 800022f8 <_ZN5QueueC1Ev>
    80002458:	00005797          	auipc	a5,0x5
    8000245c:	df27bc23          	sd	s2,-520(a5) # 80007250 <_ZN9Scheduler9schedulerE>
    80002460:	fadff06f          	j	8000240c <_ZN9Scheduler3putEP3PCB+0x2c>
    80002464:	00050493          	mv	s1,a0
    80002468:	00090513          	mv	a0,s2
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	f4c080e7          	jalr	-180(ra) # 800023b8 <_ZN9SchedulerdlEPv>
    80002474:	00048513          	mv	a0,s1
    80002478:	00006097          	auipc	ra,0x6
    8000247c:	ec0080e7          	jalr	-320(ra) # 80008338 <_Unwind_Resume>

0000000080002480 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80002480:	fe010113          	addi	sp,sp,-32
    80002484:	00113c23          	sd	ra,24(sp)
    80002488:	00813823          	sd	s0,16(sp)
    8000248c:	00913423          	sd	s1,8(sp)
    80002490:	01213023          	sd	s2,0(sp)
    80002494:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80002498:	00005797          	auipc	a5,0x5
    8000249c:	db87b783          	ld	a5,-584(a5) # 80007250 <_ZN9Scheduler9schedulerE>
    800024a0:	04078263          	beqz	a5,800024e4 <_ZN9Scheduler3getEv+0x64>
    PCB* fr = scheduler->queuePCB.front();
    800024a4:	00005917          	auipc	s2,0x5
    800024a8:	dac90913          	addi	s2,s2,-596 # 80007250 <_ZN9Scheduler9schedulerE>
    800024ac:	00093503          	ld	a0,0(s2)
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	e24080e7          	jalr	-476(ra) # 800022d4 <_ZN5Queue5frontEv>
    800024b8:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    800024bc:	00093503          	ld	a0,0(s2)
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	d44080e7          	jalr	-700(ra) # 80002204 <_ZN5Queue3popEv>
}
    800024c8:	00048513          	mv	a0,s1
    800024cc:	01813083          	ld	ra,24(sp)
    800024d0:	01013403          	ld	s0,16(sp)
    800024d4:	00813483          	ld	s1,8(sp)
    800024d8:	00013903          	ld	s2,0(sp)
    800024dc:	02010113          	addi	sp,sp,32
    800024e0:	00008067          	ret
        scheduler = new Scheduler();
    800024e4:	01000513          	li	a0,16
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	ea8080e7          	jalr	-344(ra) # 80002390 <_ZN9SchedulernwEm>
    800024f0:	00050493          	mv	s1,a0
    800024f4:	00053023          	sd	zero,0(a0)
    800024f8:	00053423          	sd	zero,8(a0)
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	dfc080e7          	jalr	-516(ra) # 800022f8 <_ZN5QueueC1Ev>
    80002504:	00005797          	auipc	a5,0x5
    80002508:	d497b623          	sd	s1,-692(a5) # 80007250 <_ZN9Scheduler9schedulerE>
    8000250c:	f99ff06f          	j	800024a4 <_ZN9Scheduler3getEv+0x24>
    80002510:	00050913          	mv	s2,a0
    80002514:	00048513          	mv	a0,s1
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	ea0080e7          	jalr	-352(ra) # 800023b8 <_ZN9SchedulerdlEPv>
    80002520:	00090513          	mv	a0,s2
    80002524:	00006097          	auipc	ra,0x6
    80002528:	e14080e7          	jalr	-492(ra) # 80008338 <_Unwind_Resume>

000000008000252c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    8000252c:	fe010113          	addi	sp,sp,-32
    80002530:	00113c23          	sd	ra,24(sp)
    80002534:	00813823          	sd	s0,16(sp)
    80002538:	00913423          	sd	s1,8(sp)
    8000253c:	01213023          	sd	s2,0(sp)
    80002540:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80002544:	00005797          	auipc	a5,0x5
    80002548:	d0c7b783          	ld	a5,-756(a5) # 80007250 <_ZN9Scheduler9schedulerE>
    8000254c:	02078663          	beqz	a5,80002578 <_ZN9Scheduler7getSizeEv+0x4c>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    80002550:	00005517          	auipc	a0,0x5
    80002554:	d0053503          	ld	a0,-768(a0) # 80007250 <_ZN9Scheduler9schedulerE>
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	e08080e7          	jalr	-504(ra) # 80002360 <_ZN5Queue4sizeEv>
}
    80002560:	01813083          	ld	ra,24(sp)
    80002564:	01013403          	ld	s0,16(sp)
    80002568:	00813483          	ld	s1,8(sp)
    8000256c:	00013903          	ld	s2,0(sp)
    80002570:	02010113          	addi	sp,sp,32
    80002574:	00008067          	ret
        scheduler = new Scheduler();
    80002578:	01000513          	li	a0,16
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	e14080e7          	jalr	-492(ra) # 80002390 <_ZN9SchedulernwEm>
    80002584:	00050493          	mv	s1,a0
    80002588:	00053023          	sd	zero,0(a0)
    8000258c:	00053423          	sd	zero,8(a0)
    80002590:	00000097          	auipc	ra,0x0
    80002594:	d68080e7          	jalr	-664(ra) # 800022f8 <_ZN5QueueC1Ev>
    80002598:	00005797          	auipc	a5,0x5
    8000259c:	ca97bc23          	sd	s1,-840(a5) # 80007250 <_ZN9Scheduler9schedulerE>
    800025a0:	fb1ff06f          	j	80002550 <_ZN9Scheduler7getSizeEv+0x24>
    800025a4:	00050913          	mv	s2,a0
    800025a8:	00048513          	mv	a0,s1
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	e0c080e7          	jalr	-500(ra) # 800023b8 <_ZN9SchedulerdlEPv>
    800025b4:	00090513          	mv	a0,s2
    800025b8:	00006097          	auipc	ra,0x6
    800025bc:	d80080e7          	jalr	-640(ra) # 80008338 <_Unwind_Resume>

00000000800025c0 <main>:
#include "../lib/console.h"
#include "../h/Riscv.h"
#include "../h/Tests.h"

void main()
{
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00113423          	sd	ra,8(sp)
    800025c8:	00813023          	sd	s0,0(sp)
    800025cc:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	1b0080e7          	jalr	432(ra) # 80002780 <_ZN5Riscv10initSystemEv>

    //memoryAllocationTests();
    threadTests();
    800025d8:	fffff097          	auipc	ra,0xfffff
    800025dc:	2c8080e7          	jalr	712(ra) # 800018a0 <_Z11threadTestsv>
    //testQueue();

    Riscv::endSystem();
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	280080e7          	jalr	640(ra) # 80002860 <_ZN5Riscv9endSystemEv>
    800025e8:	00813083          	ld	ra,8(sp)
    800025ec:	00013403          	ld	s0,0(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00113423          	sd	ra,8(sp)
    80002600:	00813023          	sd	s0,0(sp)
    80002604:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	c20080e7          	jalr	-992(ra) # 80001228 <mem_alloc>
}
    80002610:	00813083          	ld	ra,8(sp)
    80002614:	00013403          	ld	s0,0(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret

0000000080002620 <_ZdlPv>:

void operator delete(void * p)
{
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00113423          	sd	ra,8(sp)
    80002628:	00813023          	sd	s0,0(sp)
    8000262c:	01010413          	addi	s0,sp,16
   mem_free(p);
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	c28080e7          	jalr	-984(ra) # 80001258 <mem_free>
}
    80002638:	00813083          	ld	ra,8(sp)
    8000263c:	00013403          	ld	s0,0(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <_ZN6Thread5startEv>:
//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    if(myHandle == 0)
    80002648:	00053783          	ld	a5,0(a0)
    8000264c:	00078463          	beqz	a5,80002654 <_ZN6Thread5startEv+0xc>
    80002650:	00008067          	ret
void Thread::start() {
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00113423          	sd	ra,8(sp)
    8000265c:	00813023          	sd	s0,0(sp)
    80002660:	01010413          	addi	s0,sp,16
    {
        int retval = thread_create((void**)&myHandle, f, args);
    80002664:	01053603          	ld	a2,16(a0)
    80002668:	00853583          	ld	a1,8(a0)
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	c18080e7          	jalr	-1000(ra) # 80001284 <thread_create>
        {
        //todo
        //what then
        }
    }
}
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	c70080e7          	jalr	-912(ra) # 80001304 <thread_dispatch>
}
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00813423          	sd	s0,8(sp)
    800026b4:	01010413          	addi	s0,sp,16
    //PCB::sleep(time);
}
    800026b8:	00813403          	ld	s0,8(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00813423          	sd	s0,8(sp)
    800026cc:	01010413          	addi	s0,sp,16
    myHandle = 0;
    800026d0:	00053023          	sd	zero,0(a0)
    f = body;
    800026d4:	00b53423          	sd	a1,8(a0)
    this->args = args;
    800026d8:	00c53823          	sd	a2,16(a0)
    //if(retval != 0)
    //{
        //todo
        //what then
    //}
}
    800026dc:	00813403          	ld	s0,8(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret

00000000800026e8 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800026e8:	ff010113          	addi	sp,sp,-16
    800026ec:	00813423          	sd	s0,8(sp)
    800026f0:	01010413          	addi	s0,sp,16

}
    800026f4:	00813403          	ld	s0,8(sp)
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <_ZN9Semaphore4waitEv>:

//Semaphore

void Semaphore::wait() {
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    80002710:	00053503          	ld	a0,0(a0)
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	c9c080e7          	jalr	-868(ra) # 800013b0 <sem_wait>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00113423          	sd	ra,8(sp)
    80002734:	00813023          	sd	s0,0(sp)
    80002738:	01010413          	addi	s0,sp,16
    int retval = sem_open((void**)&myHandle, init);
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	c10080e7          	jalr	-1008(ra) # 8000134c <sem_open>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80002744:	00813083          	ld	ra,8(sp)
    80002748:	00013403          	ld	s0,0(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00113423          	sd	ra,8(sp)
    8000275c:	00813023          	sd	s0,0(sp)
    80002760:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    80002764:	00053503          	ld	a0,0(a0)
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	c74080e7          	jalr	-908(ra) # 800013dc <sem_signal>
    {
        //todo
        //what then
    }

}
    80002770:	00813083          	ld	ra,8(sp)
    80002774:	00013403          	ld	s0,0(sp)
    80002778:	01010113          	addi	sp,sp,16
    8000277c:	00008067          	ret

0000000080002780 <_ZN5Riscv10initSystemEv>:
#include "../lib/console.h"
#include "../h/syscall_cpp.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80002780:	fe010113          	addi	sp,sp,-32
    80002784:	00113c23          	sd	ra,24(sp)
    80002788:	00813823          	sd	s0,16(sp)
    8000278c:	00913423          	sd	s1,8(sp)
    80002790:	01213023          	sd	s2,0(sp)
    80002794:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002798:	00005797          	auipc	a5,0x5
    8000279c:	a207b783          	ld	a5,-1504(a5) # 800071b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800027a0:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    800027a4:	01800513          	li	a0,24
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	e50080e7          	jalr	-432(ra) # 800025f8 <_Znwm>
    800027b0:	00050493          	mv	s1,a0
    800027b4:	00000613          	li	a2,0
    800027b8:	00000593          	li	a1,0
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	f08080e7          	jalr	-248(ra) # 800026c4 <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    800027c4:	00048513          	mv	a0,s1
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	e80080e7          	jalr	-384(ra) # 80002648 <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	cb0080e7          	jalr	-848(ra) # 80002480 <_ZN9Scheduler3getEv>
    800027d8:	00005797          	auipc	a5,0x5
    800027dc:	a007b783          	ld	a5,-1536(a5) # 800071d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800027e0:	00a7b023          	sd	a0,0(a5)
    800027e4:	00100793          	li	a5,1
    800027e8:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
    //todo
    //no need for comment, but sync context switch
    //should be tested, before hardware interrupts are enabled
    //Riscv::enableInterrupts();
}
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	00013903          	ld	s2,0(sp)
    800027fc:	02010113          	addi	sp,sp,32
    80002800:	00008067          	ret
    80002804:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    80002808:	00048513          	mv	a0,s1
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	e14080e7          	jalr	-492(ra) # 80002620 <_ZdlPv>
    80002814:	00090513          	mv	a0,s2
    80002818:	00006097          	auipc	ra,0x6
    8000281c:	b20080e7          	jalr	-1248(ra) # 80008338 <_Unwind_Resume>

0000000080002820 <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00813423          	sd	s0,8(sp)
    80002828:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000282c:	00200793          	li	a5,2
    80002830:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002834:	00813403          	ld	s0,8(sp)
    80002838:	01010113          	addi	sp,sp,16
    8000283c:	00008067          	ret

0000000080002840 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80002840:	ff010113          	addi	sp,sp,-16
    80002844:	00813423          	sd	s0,8(sp)
    80002848:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000284c:	00200793          	li	a5,2
    80002850:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80002854:	00813403          	ld	s0,8(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret

0000000080002860 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00113423          	sd	ra,8(sp)
    80002868:	00813023          	sd	s0,0(sp)
    8000286c:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80002870:	00000097          	auipc	ra,0x0
    80002874:	fd0080e7          	jalr	-48(ra) # 80002840 <_ZN5Riscv17disableInterruptsEv>
}
    80002878:	00813083          	ld	ra,8(sp)
    8000287c:	00013403          	ld	s0,0(sp)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret

0000000080002888 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002888:	ff010113          	addi	sp,sp,-16
    8000288c:	00813423          	sd	s0,8(sp)
    80002890:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002894:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002898:	10200073          	sret
}
    8000289c:	00813403          	ld	s0,8(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    800028a8:	fd010113          	addi	sp,sp,-48
    800028ac:	02113423          	sd	ra,40(sp)
    800028b0:	02813023          	sd	s0,32(sp)
    800028b4:	00913c23          	sd	s1,24(sp)
    800028b8:	01213823          	sd	s2,16(sp)
    800028bc:	03010413          	addi	s0,sp,48
    800028c0:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800028c4:	100027f3          	csrr	a5,sstatus
    800028c8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800028cc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800028d0:	00200793          	li	a5,2
    800028d4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    800028d8:	0004c503          	lbu	a0,0(s1)
    800028dc:	00050a63          	beqz	a0,800028f0 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800028e0:	00003097          	auipc	ra,0x3
    800028e4:	a2c080e7          	jalr	-1492(ra) # 8000530c <__putc>
        string++;
    800028e8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800028ec:	fedff06f          	j	800028d8 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800028f0:	0009091b          	sext.w	s2,s2
    800028f4:	00297913          	andi	s2,s2,2
    800028f8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800028fc:	10092073          	csrs	sstatus,s2
}
    80002900:	02813083          	ld	ra,40(sp)
    80002904:	02013403          	ld	s0,32(sp)
    80002908:	01813483          	ld	s1,24(sp)
    8000290c:	01013903          	ld	s2,16(sp)
    80002910:	03010113          	addi	sp,sp,48
    80002914:	00008067          	ret

0000000080002918 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002918:	fc010113          	addi	sp,sp,-64
    8000291c:	02113c23          	sd	ra,56(sp)
    80002920:	02813823          	sd	s0,48(sp)
    80002924:	02913423          	sd	s1,40(sp)
    80002928:	03213023          	sd	s2,32(sp)
    8000292c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002930:	100027f3          	csrr	a5,sstatus
    80002934:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002938:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000293c:	00200793          	li	a5,2
    80002940:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002944:	0005051b          	sext.w	a0,a0

    i = 0;
    80002948:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    8000294c:	00a00613          	li	a2,10
    80002950:	02c5773b          	remuw	a4,a0,a2
    80002954:	02071693          	slli	a3,a4,0x20
    80002958:	0206d693          	srli	a3,a3,0x20
    8000295c:	00004717          	auipc	a4,0x4
    80002960:	84c70713          	addi	a4,a4,-1972 # 800061a8 <_ZZN5Riscv12printIntegerEmE6digits>
    80002964:	00d70733          	add	a4,a4,a3
    80002968:	00074703          	lbu	a4,0(a4)
    8000296c:	fe040693          	addi	a3,s0,-32
    80002970:	009687b3          	add	a5,a3,s1
    80002974:	0014849b          	addiw	s1,s1,1
    80002978:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    8000297c:	0005071b          	sext.w	a4,a0
    80002980:	02c5553b          	divuw	a0,a0,a2
    80002984:	00900793          	li	a5,9
    80002988:	fce7e2e3          	bltu	a5,a4,8000294c <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000298c:	fff4849b          	addiw	s1,s1,-1
    80002990:	0004ce63          	bltz	s1,800029ac <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002994:	fe040793          	addi	a5,s0,-32
    80002998:	009787b3          	add	a5,a5,s1
    8000299c:	ff07c503          	lbu	a0,-16(a5)
    800029a0:	00003097          	auipc	ra,0x3
    800029a4:	96c080e7          	jalr	-1684(ra) # 8000530c <__putc>
    800029a8:	fe5ff06f          	j	8000298c <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    800029ac:	00a00513          	li	a0,10
    800029b0:	00003097          	auipc	ra,0x3
    800029b4:	95c080e7          	jalr	-1700(ra) # 8000530c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800029b8:	0009091b          	sext.w	s2,s2
    800029bc:	00297913          	andi	s2,s2,2
    800029c0:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800029c4:	10092073          	csrs	sstatus,s2
}
    800029c8:	03813083          	ld	ra,56(sp)
    800029cc:	03013403          	ld	s0,48(sp)
    800029d0:	02813483          	ld	s1,40(sp)
    800029d4:	02013903          	ld	s2,32(sp)
    800029d8:	04010113          	addi	sp,sp,64
    800029dc:	00008067          	ret

00000000800029e0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800029e0:	f8010113          	addi	sp,sp,-128
    800029e4:	06113c23          	sd	ra,120(sp)
    800029e8:	06813823          	sd	s0,112(sp)
    800029ec:	06913423          	sd	s1,104(sp)
    800029f0:	07213023          	sd	s2,96(sp)
    800029f4:	05313c23          	sd	s3,88(sp)
    800029f8:	05413823          	sd	s4,80(sp)
    800029fc:	05513423          	sd	s5,72(sp)
    80002a00:	05613023          	sd	s6,64(sp)
    80002a04:	08010413          	addi	s0,sp,128

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002a08:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002a0c:	142027f3          	csrr	a5,scause
    80002a10:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80002a14:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    80002a18:	00900793          	li	a5,9
    80002a1c:	06e7f263          	bgeu	a5,a4,80002a80 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
    80002a20:	fff00793          	li	a5,-1
    80002a24:	03f79793          	slli	a5,a5,0x3f
    80002a28:	00178793          	addi	a5,a5,1
    80002a2c:	04f71e63          	bne	a4,a5,80002a88 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>

        case timerInterrupt:

            Riscv::printString("timerInterrupt\n");
    80002a30:	00003517          	auipc	a0,0x3
    80002a34:	76850513          	addi	a0,a0,1896 # 80006198 <CONSOLE_STATUS+0x188>
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	e70080e7          	jalr	-400(ra) # 800028a8 <_ZN5Riscv11printStringEPKc>
            PCB::timeSliceCounter++;
    80002a40:	00004497          	auipc	s1,0x4
    80002a44:	7884b483          	ld	s1,1928(s1) # 800071c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002a48:	0004b783          	ld	a5,0(s1)
    80002a4c:	00178793          	addi	a5,a5,1
    80002a50:	00f4b023          	sd	a5,0(s1)
            PCB::tryToWakePCBs();
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	710080e7          	jalr	1808(ra) # 80002164 <_ZN3PCB13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    80002a5c:	00004797          	auipc	a5,0x4
    80002a60:	77c7b783          	ld	a5,1916(a5) # 800071d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a64:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002a68:	0087b783          	ld	a5,8(a5)
    80002a6c:	0004b703          	ld	a4,0(s1)
    80002a70:	04f77463          	bgeu	a4,a5,80002ab8 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002a74:	00200793          	li	a5,2
    80002a78:	1447b073          	csrc	sip,a5
}
    80002a7c:	00c0006f          	j	80002a88 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    switch(scause) {
    80002a80:	00800793          	li	a5,8
    80002a84:	06f77663          	bgeu	a4,a5,80002af0 <_ZN5Riscv20handleSupervisorTrapEv+0x110>

            return;
            //break;
    }

    console_handler();
    80002a88:	00003097          	auipc	ra,0x3
    80002a8c:	8f8080e7          	jalr	-1800(ra) # 80005380 <console_handler>
}
    80002a90:	07813083          	ld	ra,120(sp)
    80002a94:	07013403          	ld	s0,112(sp)
    80002a98:	06813483          	ld	s1,104(sp)
    80002a9c:	06013903          	ld	s2,96(sp)
    80002aa0:	05813983          	ld	s3,88(sp)
    80002aa4:	05013a03          	ld	s4,80(sp)
    80002aa8:	04813a83          	ld	s5,72(sp)
    80002aac:	04013b03          	ld	s6,64(sp)
    80002ab0:	08010113          	addi	sp,sp,128
    80002ab4:	00008067          	ret
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002ab8:	141027f3          	csrr	a5,sepc
    80002abc:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002ac0:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002ac4:	100027f3          	csrr	a5,sstatus
    80002ac8:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80002acc:	f9043903          	ld	s2,-112(s0)
                PCB::timeSliceCounter = 0;
    80002ad0:	00004797          	auipc	a5,0x4
    80002ad4:	6f87b783          	ld	a5,1784(a5) # 800071c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ad8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	518080e7          	jalr	1304(ra) # 80001ff4 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002ae4:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002ae8:	14149073          	csrw	sepc,s1
}
    80002aec:	f89ff06f          	j	80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002af0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002af4:	14102773          	csrr	a4,sepc
    80002af8:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80002afc:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    80002b00:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    80002b04:	00100713          	li	a4,1
    80002b08:	02e78a63          	beq	a5,a4,80002b3c <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            else if(operation == MemoryAllocator::MEM_FREE)
    80002b0c:	00200713          	li	a4,2
    80002b10:	04e78263          	beq	a5,a4,80002b54 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            else if(operation == PCB::THREAD_CREATE)
    80002b14:	01100713          	li	a4,17
    80002b18:	04e78863          	beq	a5,a4,80002b68 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
            else if(operation == PCB::THREAD_DISPATCH)
    80002b1c:	01300713          	li	a4,19
    80002b20:	08e78a63          	beq	a5,a4,80002bb4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            else if(operation == PCB::THREAD_EXIT)
    80002b24:	01200713          	li	a4,18
    80002b28:	0ae78a63          	beq	a5,a4,80002bdc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            else if(operation == PCB::TIME_SLEEP)
    80002b2c:	03100713          	li	a4,49
    80002b30:	10e78663          	beq	a5,a4,80002c3c <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002b34:	14149073          	csrw	sepc,s1
}
    80002b38:	f59ff06f          	j	80002a90 <_ZN5Riscv20handleSupervisorTrapEv+0xb0>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002b3c:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002b40:	00651513          	slli	a0,a0,0x6
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	518080e7          	jalr	1304(ra) # 8000305c <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002b4c:	00050513          	mv	a0,a0
    80002b50:	fe5ff06f          	j	80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002b54:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	52c080e7          	jalr	1324(ra) # 80003084 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002b60:	00050513          	mv	a0,a0
    80002b64:	fd1ff06f          	j	80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b68:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b6c:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b70:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002b74:	05800513          	li	a0,88
    80002b78:	fffff097          	auipc	ra,0xfffff
    80002b7c:	400080e7          	jalr	1024(ra) # 80001f78 <_ZN3PCBnwEm>
    80002b80:	00050993          	mv	s3,a0
    80002b84:	00300713          	li	a4,3
    80002b88:	00090693          	mv	a3,s2
    80002b8c:	000b0613          	mv	a2,s6
    80002b90:	000a8593          	mv	a1,s5
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	340080e7          	jalr	832(ra) # 80001ed4 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80002b9c:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002ba0:	00098663          	beqz	s3,80002bac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    __asm__ volatile("li a0, 0");
    80002ba4:	00000513          	li	a0,0
    80002ba8:	f8dff06f          	j	80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002bac:	fff00513          	li	a0,-1
    80002bb0:	f85ff06f          	j	80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002bb4:	100027f3          	csrr	a5,sstatus
    80002bb8:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002bbc:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    80002bc0:	00004797          	auipc	a5,0x4
    80002bc4:	6087b783          	ld	a5,1544(a5) # 800071c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002bc8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002bcc:	fffff097          	auipc	ra,0xfffff
    80002bd0:	428080e7          	jalr	1064(ra) # 80001ff4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002bd4:	10091073          	csrw	sstatus,s2
}
    80002bd8:	f5dff06f          	j	80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                if(PCB::running == 0)
    80002bdc:	00004797          	auipc	a5,0x4
    80002be0:	5fc7b783          	ld	a5,1532(a5) # 800071d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002be4:	0007b783          	ld	a5,0(a5)
    80002be8:	04078663          	beqz	a5,80002c34 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002bec:	100027f3          	csrr	a5,sstatus
    80002bf0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002bf4:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80002bf8:	00004797          	auipc	a5,0x4
    80002bfc:	5d07b783          	ld	a5,1488(a5) # 800071c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c00:	0007b023          	sd	zero,0(a5)
                PCB::exitingPCB = PCB::running;
    80002c04:	00004797          	auipc	a5,0x4
    80002c08:	5d47b783          	ld	a5,1492(a5) # 800071d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c0c:	0007b783          	ld	a5,0(a5)
    80002c10:	00004717          	auipc	a4,0x4
    80002c14:	5b073703          	ld	a4,1456(a4) # 800071c0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002c18:	00f73023          	sd	a5,0(a4)
    void setState(State s) {state = s;}
    80002c1c:	00400713          	li	a4,4
    80002c20:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	3d0080e7          	jalr	976(ra) # 80001ff4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002c2c:	10091073          	csrw	sstatus,s2
}
    80002c30:	f05ff06f          	j	80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c34:	fff00513          	li	a0,-1
                    return;
    80002c38:	e59ff06f          	j	80002a90 <_ZN5Riscv20handleSupervisorTrapEv+0xb0>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80002c3c:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002c40:	100027f3          	csrr	a5,sstatus
    80002c44:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002c48:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80002c4c:	00004797          	auipc	a5,0x4
    80002c50:	57c7b783          	ld	a5,1404(a5) # 800071c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c54:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::SLEEPING);
    80002c58:	00004797          	auipc	a5,0x4
    80002c5c:	5807b783          	ld	a5,1408(a5) # 800071d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c60:	0007b783          	ld	a5,0(a5)
    80002c64:	00500693          	li	a3,5
    80002c68:	02d7a823          	sw	a3,48(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002c6c:	00e7b823          	sd	a4,16(a5)
                PCB::insertSleepingPCB();
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	46c080e7          	jalr	1132(ra) # 800020dc <_ZN3PCB17insertSleepingPCBEv>
                PCB::dispatch();
    80002c78:	fffff097          	auipc	ra,0xfffff
    80002c7c:	37c080e7          	jalr	892(ra) # 80001ff4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002c80:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    80002c84:	00000513          	li	a0,0
    80002c88:	eadff06f          	j	80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80002c8c:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002c90:	00098513          	mv	a0,s3
    80002c94:	fffff097          	auipc	ra,0xfffff
    80002c98:	30c080e7          	jalr	780(ra) # 80001fa0 <_ZN3PCBdlEPv>
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	00005097          	auipc	ra,0x5
    80002ca4:	698080e7          	jalr	1688(ra) # 80008338 <_Unwind_Resume>

0000000080002ca8 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002ca8:	ff010113          	addi	sp,sp,-16
    80002cac:	00813423          	sd	s0,8(sp)
    80002cb0:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002cb4:	00004717          	auipc	a4,0x4
    80002cb8:	5a472703          	lw	a4,1444(a4) # 80007258 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002cbc:	00100793          	li	a5,1
    80002cc0:	04f70263          	beq	a4,a5,80002d04 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002cc4:	00004797          	auipc	a5,0x4
    80002cc8:	59478793          	addi	a5,a5,1428 # 80007258 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002ccc:	00100713          	li	a4,1
    80002cd0:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002cd4:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002cd8:	00004717          	auipc	a4,0x4
    80002cdc:	4d873703          	ld	a4,1240(a4) # 800071b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ce0:	00073703          	ld	a4,0(a4)
    80002ce4:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002ce8:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002cec:	00004797          	auipc	a5,0x4
    80002cf0:	4f47b783          	ld	a5,1268(a5) # 800071e0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002cf4:	0007b783          	ld	a5,0(a5)
    80002cf8:	40e787b3          	sub	a5,a5,a4
    80002cfc:	ff178793          	addi	a5,a5,-15
    80002d00:	00f73023          	sd	a5,0(a4)
}
    80002d04:	00813403          	ld	s0,8(sp)
    80002d08:	01010113          	addi	sp,sp,16
    80002d0c:	00008067          	ret

0000000080002d10 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002d10:	fe010113          	addi	sp,sp,-32
    80002d14:	00113c23          	sd	ra,24(sp)
    80002d18:	00813823          	sd	s0,16(sp)
    80002d1c:	00913423          	sd	s1,8(sp)
    80002d20:	01213023          	sd	s2,0(sp)
    80002d24:	02010413          	addi	s0,sp,32
    80002d28:	00050493          	mv	s1,a0
    80002d2c:	00058913          	mv	s2,a1

    initMemory();
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	f78080e7          	jalr	-136(ra) # 80002ca8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002d38:	00004797          	auipc	a5,0x4
    80002d3c:	5287b783          	ld	a5,1320(a5) # 80007260 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002d40:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002d44:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80002d48:	00000713          	li	a4,0
    while(curr != 0)
    80002d4c:	00078c63          	beqz	a5,80002d64 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002d50:	00f4e863          	bltu	s1,a5,80002d60 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80002d54:	00078713          	mv	a4,a5
        curr = curr->next;
    80002d58:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002d5c:	ff1ff06f          	j	80002d4c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80002d60:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002d64:	02070063          	beqz	a4,80002d84 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002d68:	00973423          	sd	s1,8(a4)
}
    80002d6c:	01813083          	ld	ra,24(sp)
    80002d70:	01013403          	ld	s0,16(sp)
    80002d74:	00813483          	ld	s1,8(sp)
    80002d78:	00013903          	ld	s2,0(sp)
    80002d7c:	02010113          	addi	sp,sp,32
    80002d80:	00008067          	ret
        headAllocated = newAllocated;
    80002d84:	00004797          	auipc	a5,0x4
    80002d88:	4c97be23          	sd	s1,1244(a5) # 80007260 <_ZN15MemoryAllocator13headAllocatedE>
    80002d8c:	fe1ff06f          	j	80002d6c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080002d90 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00113c23          	sd	ra,24(sp)
    80002d98:	00813823          	sd	s0,16(sp)
    80002d9c:	00913423          	sd	s1,8(sp)
    80002da0:	01213023          	sd	s2,0(sp)
    80002da4:	02010413          	addi	s0,sp,32
    80002da8:	00050913          	mv	s2,a0
    initMemory();
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	efc080e7          	jalr	-260(ra) # 80002ca8 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002db4:	00004497          	auipc	s1,0x4
    80002db8:	4b44b483          	ld	s1,1204(s1) # 80007268 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80002dbc:	00000713          	li	a4,0
    while(curr != 0) {
    80002dc0:	0a048863          	beqz	s1,80002e70 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>

        if(curr->size >= size) {
    80002dc4:	0004b783          	ld	a5,0(s1)
    80002dc8:	0127f863          	bgeu	a5,s2,80002dd8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80002dcc:	00048713          	mv	a4,s1
        curr = curr->next;
    80002dd0:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80002dd4:	fedff06f          	j	80002dc0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80002dd8:	01090693          	addi	a3,s2,16
    80002ddc:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80002de0:	00004617          	auipc	a2,0x4
    80002de4:	40063603          	ld	a2,1024(a2) # 800071e0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002de8:	00063603          	ld	a2,0(a2)
    80002dec:	04d66c63          	bltu	a2,a3,80002e44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80002df0:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80002df4:	01000613          	li	a2,16
    80002df8:	02f67663          	bgeu	a2,a5,80002e24 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80002dfc:	0084b603          	ld	a2,8(s1)
    80002e00:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80002e04:	ff078793          	addi	a5,a5,-16
    80002e08:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80002e0c:	00070663          	beqz	a4,80002e18 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80002e10:	00d73423          	sd	a3,8(a4)
    80002e14:	0380006f          	j	80002e4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80002e18:	00004797          	auipc	a5,0x4
    80002e1c:	44d7b823          	sd	a3,1104(a5) # 80007268 <_ZN15MemoryAllocator8headFreeE>
    80002e20:	02c0006f          	j	80002e4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80002e24:	00070863          	beqz	a4,80002e34 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80002e28:	0084b783          	ld	a5,8(s1)
    80002e2c:	00f73423          	sd	a5,8(a4)
    80002e30:	01c0006f          	j	80002e4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80002e34:	0084b783          	ld	a5,8(s1)
    80002e38:	00004717          	auipc	a4,0x4
    80002e3c:	42f73823          	sd	a5,1072(a4) # 80007268 <_ZN15MemoryAllocator8headFreeE>
    80002e40:	00c0006f          	j	80002e4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80002e44:	02070063          	beqz	a4,80002e64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80002e48:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80002e4c:	00090593          	mv	a1,s2
    80002e50:	00048513          	mv	a0,s1
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	ebc080e7          	jalr	-324(ra) # 80002d10 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80002e5c:	01048513          	addi	a0,s1,16
            break;
    80002e60:	0140006f          	j	80002e74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80002e64:	00004797          	auipc	a5,0x4
    80002e68:	4007b223          	sd	zero,1028(a5) # 80007268 <_ZN15MemoryAllocator8headFreeE>
    80002e6c:	fe1ff06f          	j	80002e4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80002e70:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80002e74:	01813083          	ld	ra,24(sp)
    80002e78:	01013403          	ld	s0,16(sp)
    80002e7c:	00813483          	ld	s1,8(sp)
    80002e80:	00013903          	ld	s2,0(sp)
    80002e84:	02010113          	addi	sp,sp,32
    80002e88:	00008067          	ret

0000000080002e8c <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80002e8c:	ff010113          	addi	sp,sp,-16
    80002e90:	00113423          	sd	ra,8(sp)
    80002e94:	00813023          	sd	s0,0(sp)
    80002e98:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	ef4080e7          	jalr	-268(ra) # 80002d90 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80002ea4:	00813083          	ld	ra,8(sp)
    80002ea8:	00013403          	ld	s0,0(sp)
    80002eac:	01010113          	addi	sp,sp,16
    80002eb0:	00008067          	ret

0000000080002eb4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80002eb4:	fe010113          	addi	sp,sp,-32
    80002eb8:	00113c23          	sd	ra,24(sp)
    80002ebc:	00813823          	sd	s0,16(sp)
    80002ec0:	00913423          	sd	s1,8(sp)
    80002ec4:	01213023          	sd	s2,0(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	00050493          	mv	s1,a0
    80002ed0:	00058913          	mv	s2,a1
    initMemory();
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	dd4080e7          	jalr	-556(ra) # 80002ca8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002edc:	00004797          	auipc	a5,0x4
    80002ee0:	38c7b783          	ld	a5,908(a5) # 80007268 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80002ee4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80002ee8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80002eec:	00000713          	li	a4,0
    while(curr != 0)
    80002ef0:	00078c63          	beqz	a5,80002f08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002ef4:	00f4e863          	bltu	s1,a5,80002f04 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80002ef8:	00078713          	mv	a4,a5
        curr = curr->next;
    80002efc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002f00:	ff1ff06f          	j	80002ef0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80002f04:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002f08:	04070663          	beqz	a4,80002f54 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80002f0c:	00973423          	sd	s1,8(a4)

    //todo
    //kad proradi kfree odkomentarisi ovo
    //test it few times
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80002f10:	0084b783          	ld	a5,8(s1)
    80002f14:	00078a63          	beqz	a5,80002f28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80002f18:	0004b603          	ld	a2,0(s1)
    80002f1c:	01060693          	addi	a3,a2,16
    80002f20:	00d486b3          	add	a3,s1,a3
    80002f24:	02d78e63          	beq	a5,a3,80002f60 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80002f28:	00070a63          	beqz	a4,80002f3c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80002f2c:	00073683          	ld	a3,0(a4)
    80002f30:	01068793          	addi	a5,a3,16
    80002f34:	00f707b3          	add	a5,a4,a5
    80002f38:	04978263          	beq	a5,s1,80002f7c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80002f3c:	01813083          	ld	ra,24(sp)
    80002f40:	01013403          	ld	s0,16(sp)
    80002f44:	00813483          	ld	s1,8(sp)
    80002f48:	00013903          	ld	s2,0(sp)
    80002f4c:	02010113          	addi	sp,sp,32
    80002f50:	00008067          	ret
        headFree = newSegment;
    80002f54:	00004797          	auipc	a5,0x4
    80002f58:	3097ba23          	sd	s1,788(a5) # 80007268 <_ZN15MemoryAllocator8headFreeE>
    80002f5c:	fb5ff06f          	j	80002f10 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80002f60:	0007b683          	ld	a3,0(a5)
    80002f64:	00d60633          	add	a2,a2,a3
    80002f68:	01060613          	addi	a2,a2,16
    80002f6c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80002f70:	0087b783          	ld	a5,8(a5)
    80002f74:	00f4b423          	sd	a5,8(s1)
    80002f78:	fb1ff06f          	j	80002f28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80002f7c:	0004b783          	ld	a5,0(s1)
    80002f80:	00f686b3          	add	a3,a3,a5
    80002f84:	01068693          	addi	a3,a3,16
    80002f88:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80002f8c:	0084b783          	ld	a5,8(s1)
    80002f90:	00f73423          	sd	a5,8(a4)
}
    80002f94:	fa9ff06f          	j	80002f3c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080002f98 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80002f98:	fe010113          	addi	sp,sp,-32
    80002f9c:	00113c23          	sd	ra,24(sp)
    80002fa0:	00813823          	sd	s0,16(sp)
    80002fa4:	00913423          	sd	s1,8(sp)
    80002fa8:	01213023          	sd	s2,0(sp)
    80002fac:	02010413          	addi	s0,sp,32
    80002fb0:	00050913          	mv	s2,a0
    initMemory();
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	cf4080e7          	jalr	-780(ra) # 80002ca8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80002fbc:	00004497          	auipc	s1,0x4
    80002fc0:	2a44b483          	ld	s1,676(s1) # 80007260 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80002fc4:	00000713          	li	a4,0
    while(curr != 0)
    80002fc8:	02048a63          	beqz	s1,80002ffc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80002fcc:	01048793          	addi	a5,s1,16
    80002fd0:	01278863          	beq	a5,s2,80002fe0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80002fd4:	00048713          	mv	a4,s1
        curr = curr->next;
    80002fd8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002fdc:	fedff06f          	j	80002fc8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80002fe0:	02070e63          	beqz	a4,8000301c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80002fe4:	0084b783          	ld	a5,8(s1)
    80002fe8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80002fec:	0004b583          	ld	a1,0(s1)
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	ec0080e7          	jalr	-320(ra) # 80002eb4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80002ffc:	02048863          	beqz	s1,8000302c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003000:	00000513          	li	a0,0
    else
        return 1;
}
    80003004:	01813083          	ld	ra,24(sp)
    80003008:	01013403          	ld	s0,16(sp)
    8000300c:	00813483          	ld	s1,8(sp)
    80003010:	00013903          	ld	s2,0(sp)
    80003014:	02010113          	addi	sp,sp,32
    80003018:	00008067          	ret
                headAllocated = curr->next;
    8000301c:	0084b783          	ld	a5,8(s1)
    80003020:	00004717          	auipc	a4,0x4
    80003024:	24f73023          	sd	a5,576(a4) # 80007260 <_ZN15MemoryAllocator13headAllocatedE>
    80003028:	fc5ff06f          	j	80002fec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    8000302c:	00100513          	li	a0,1
    80003030:	fd5ff06f          	j	80003004 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003034 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00113423          	sd	ra,8(sp)
    8000303c:	00813023          	sd	s0,0(sp)
    80003040:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003044:	00000097          	auipc	ra,0x0
    80003048:	f54080e7          	jalr	-172(ra) # 80002f98 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000304c:	00813083          	ld	ra,8(sp)
    80003050:	00013403          	ld	s0,0(sp)
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00008067          	ret

000000008000305c <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    8000305c:	ff010113          	addi	sp,sp,-16
    80003060:	00113423          	sd	ra,8(sp)
    80003064:	00813023          	sd	s0,0(sp)
    80003068:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000306c:	00000097          	auipc	ra,0x0
    80003070:	e20080e7          	jalr	-480(ra) # 80002e8c <_ZN15MemoryAllocator9mem_allocEm>
}
    80003074:	00813083          	ld	ra,8(sp)
    80003078:	00013403          	ld	s0,0(sp)
    8000307c:	01010113          	addi	sp,sp,16
    80003080:	00008067          	ret

0000000080003084 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00113423          	sd	ra,8(sp)
    8000308c:	00813023          	sd	s0,0(sp)
    80003090:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003094:	00000097          	auipc	ra,0x0
    80003098:	fa0080e7          	jalr	-96(ra) # 80003034 <_ZN15MemoryAllocator8mem_freeEPv>
    8000309c:	00813083          	ld	ra,8(sp)
    800030a0:	00013403          	ld	s0,0(sp)
    800030a4:	01010113          	addi	sp,sp,16
    800030a8:	00008067          	ret

00000000800030ac <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    800030ac:	fe010113          	addi	sp,sp,-32
    800030b0:	00113c23          	sd	ra,24(sp)
    800030b4:	00813823          	sd	s0,16(sp)
    800030b8:	00913423          	sd	s1,8(sp)
    800030bc:	01213023          	sd	s2,0(sp)
    800030c0:	02010413          	addi	s0,sp,32
    800030c4:	00050493          	mv	s1,a0
    800030c8:	00058913          	mv	s2,a1
    800030cc:	00850513          	addi	a0,a0,8
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	228080e7          	jalr	552(ra) # 800022f8 <_ZN5QueueC1Ev>
    this->val = this->beginVal = val;
    800030d8:	0124a223          	sw	s2,4(s1)
    800030dc:	0124a023          	sw	s2,0(s1)
}
    800030e0:	01813083          	ld	ra,24(sp)
    800030e4:	01013403          	ld	s0,16(sp)
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	00013903          	ld	s2,0(sp)
    800030f0:	02010113          	addi	sp,sp,32
    800030f4:	00008067          	ret

00000000800030f8 <_ZN10KSemaphoreD1Ev>:
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00113423          	sd	ra,8(sp)
    80003100:	00813023          	sd	s0,0(sp)
    80003104:	01010413          	addi	s0,sp,16
    80003108:	00850513          	addi	a0,a0,8
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	20c080e7          	jalr	524(ra) # 80002318 <_ZN5QueueD1Ev>
    //todo
}
    80003114:	00813083          	ld	ra,8(sp)
    80003118:	00013403          	ld	s0,0(sp)
    8000311c:	01010113          	addi	sp,sp,16
    80003120:	00008067          	ret

0000000080003124 <_ZN10KSemaphore5blockEv>:

//todo
void KSemaphore::block() {
    80003124:	ff010113          	addi	sp,sp,-16
    80003128:	00113423          	sd	ra,8(sp)
    8000312c:	00813023          	sd	s0,0(sp)
    80003130:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003134:	00004797          	auipc	a5,0x4
    80003138:	0a47b783          	ld	a5,164(a5) # 800071d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000313c:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80003140:	00200713          	li	a4,2
    80003144:	02e7a823          	sw	a4,48(a5)
    PCB::dispatch();
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	eac080e7          	jalr	-340(ra) # 80001ff4 <_ZN3PCB8dispatchEv>
}
    80003150:	00813083          	ld	ra,8(sp)
    80003154:	00013403          	ld	s0,0(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret

0000000080003160 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80003160:	00052783          	lw	a5,0(a0)
    80003164:	fff7879b          	addiw	a5,a5,-1
    80003168:	00f52023          	sw	a5,0(a0)
    8000316c:	02079713          	slli	a4,a5,0x20
    80003170:	00074463          	bltz	a4,80003178 <_ZN10KSemaphore4waitEv+0x18>
    80003174:	00008067          	ret
void KSemaphore::wait() {
    80003178:	ff010113          	addi	sp,sp,-16
    8000317c:	00113423          	sd	ra,8(sp)
    80003180:	00813023          	sd	s0,0(sp)
    80003184:	01010413          	addi	s0,sp,16
        block();
    80003188:	00000097          	auipc	ra,0x0
    8000318c:	f9c080e7          	jalr	-100(ra) # 80003124 <_ZN10KSemaphore5blockEv>
}
    80003190:	00813083          	ld	ra,8(sp)
    80003194:	00013403          	ld	s0,0(sp)
    80003198:	01010113          	addi	sp,sp,16
    8000319c:	00008067          	ret

00000000800031a0 <_ZN10KSemaphore7unblockEv>:

//todo
void KSemaphore::unblock() {
    800031a0:	fe010113          	addi	sp,sp,-32
    800031a4:	00113c23          	sd	ra,24(sp)
    800031a8:	00813823          	sd	s0,16(sp)
    800031ac:	00913423          	sd	s1,8(sp)
    800031b0:	01213023          	sd	s2,0(sp)
    800031b4:	02010413          	addi	s0,sp,32
    PCB* fr = queueBlocked.front();
    800031b8:	00850913          	addi	s2,a0,8
    800031bc:	00090513          	mv	a0,s2
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	114080e7          	jalr	276(ra) # 800022d4 <_ZN5Queue5frontEv>
    800031c8:	00050493          	mv	s1,a0
    queueBlocked.pop();
    800031cc:	00090513          	mv	a0,s2
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	034080e7          	jalr	52(ra) # 80002204 <_ZN5Queue3popEv>
    if(fr != 0)
    800031d8:	00048a63          	beqz	s1,800031ec <_ZN10KSemaphore7unblockEv+0x4c>
    800031dc:	0204a823          	sw	zero,48(s1)
    {
        fr->setState(PCB::READY);
        Scheduler::put(fr);
    800031e0:	00048513          	mv	a0,s1
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	1fc080e7          	jalr	508(ra) # 800023e0 <_ZN9Scheduler3putEP3PCB>
    }
}
    800031ec:	01813083          	ld	ra,24(sp)
    800031f0:	01013403          	ld	s0,16(sp)
    800031f4:	00813483          	ld	s1,8(sp)
    800031f8:	00013903          	ld	s2,0(sp)
    800031fc:	02010113          	addi	sp,sp,32
    80003200:	00008067          	ret

0000000080003204 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003204:	00052783          	lw	a5,0(a0)
    80003208:	0017879b          	addiw	a5,a5,1
    8000320c:	0007871b          	sext.w	a4,a5
    80003210:	00f52023          	sw	a5,0(a0)
    80003214:	00e05863          	blez	a4,80003224 <_ZN10KSemaphore6signalEv+0x20>
        val = beginVal;
    80003218:	00452783          	lw	a5,4(a0)
    8000321c:	00f52023          	sw	a5,0(a0)
    80003220:	00008067          	ret
void KSemaphore::signal() {
    80003224:	ff010113          	addi	sp,sp,-16
    80003228:	00113423          	sd	ra,8(sp)
    8000322c:	00813023          	sd	s0,0(sp)
    80003230:	01010413          	addi	s0,sp,16
        unblock();
    80003234:	00000097          	auipc	ra,0x0
    80003238:	f6c080e7          	jalr	-148(ra) # 800031a0 <_ZN10KSemaphore7unblockEv>
}
    8000323c:	00813083          	ld	ra,8(sp)
    80003240:	00013403          	ld	s0,0(sp)
    80003244:	01010113          	addi	sp,sp,16
    80003248:	00008067          	ret

000000008000324c <start>:
    8000324c:	ff010113          	addi	sp,sp,-16
    80003250:	00813423          	sd	s0,8(sp)
    80003254:	01010413          	addi	s0,sp,16
    80003258:	300027f3          	csrr	a5,mstatus
    8000325c:	ffffe737          	lui	a4,0xffffe
    80003260:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff632f>
    80003264:	00e7f7b3          	and	a5,a5,a4
    80003268:	00001737          	lui	a4,0x1
    8000326c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003270:	00e7e7b3          	or	a5,a5,a4
    80003274:	30079073          	csrw	mstatus,a5
    80003278:	00000797          	auipc	a5,0x0
    8000327c:	16078793          	addi	a5,a5,352 # 800033d8 <system_main>
    80003280:	34179073          	csrw	mepc,a5
    80003284:	00000793          	li	a5,0
    80003288:	18079073          	csrw	satp,a5
    8000328c:	000107b7          	lui	a5,0x10
    80003290:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003294:	30279073          	csrw	medeleg,a5
    80003298:	30379073          	csrw	mideleg,a5
    8000329c:	104027f3          	csrr	a5,sie
    800032a0:	2227e793          	ori	a5,a5,546
    800032a4:	10479073          	csrw	sie,a5
    800032a8:	fff00793          	li	a5,-1
    800032ac:	00a7d793          	srli	a5,a5,0xa
    800032b0:	3b079073          	csrw	pmpaddr0,a5
    800032b4:	00f00793          	li	a5,15
    800032b8:	3a079073          	csrw	pmpcfg0,a5
    800032bc:	f14027f3          	csrr	a5,mhartid
    800032c0:	0200c737          	lui	a4,0x200c
    800032c4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800032c8:	0007869b          	sext.w	a3,a5
    800032cc:	00269713          	slli	a4,a3,0x2
    800032d0:	000f4637          	lui	a2,0xf4
    800032d4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800032d8:	00d70733          	add	a4,a4,a3
    800032dc:	0037979b          	slliw	a5,a5,0x3
    800032e0:	020046b7          	lui	a3,0x2004
    800032e4:	00d787b3          	add	a5,a5,a3
    800032e8:	00c585b3          	add	a1,a1,a2
    800032ec:	00371693          	slli	a3,a4,0x3
    800032f0:	00004717          	auipc	a4,0x4
    800032f4:	f8070713          	addi	a4,a4,-128 # 80007270 <timer_scratch>
    800032f8:	00b7b023          	sd	a1,0(a5)
    800032fc:	00d70733          	add	a4,a4,a3
    80003300:	00f73c23          	sd	a5,24(a4)
    80003304:	02c73023          	sd	a2,32(a4)
    80003308:	34071073          	csrw	mscratch,a4
    8000330c:	00000797          	auipc	a5,0x0
    80003310:	6e478793          	addi	a5,a5,1764 # 800039f0 <timervec>
    80003314:	30579073          	csrw	mtvec,a5
    80003318:	300027f3          	csrr	a5,mstatus
    8000331c:	0087e793          	ori	a5,a5,8
    80003320:	30079073          	csrw	mstatus,a5
    80003324:	304027f3          	csrr	a5,mie
    80003328:	0807e793          	ori	a5,a5,128
    8000332c:	30479073          	csrw	mie,a5
    80003330:	f14027f3          	csrr	a5,mhartid
    80003334:	0007879b          	sext.w	a5,a5
    80003338:	00078213          	mv	tp,a5
    8000333c:	30200073          	mret
    80003340:	00813403          	ld	s0,8(sp)
    80003344:	01010113          	addi	sp,sp,16
    80003348:	00008067          	ret

000000008000334c <timerinit>:
    8000334c:	ff010113          	addi	sp,sp,-16
    80003350:	00813423          	sd	s0,8(sp)
    80003354:	01010413          	addi	s0,sp,16
    80003358:	f14027f3          	csrr	a5,mhartid
    8000335c:	0200c737          	lui	a4,0x200c
    80003360:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003364:	0007869b          	sext.w	a3,a5
    80003368:	00269713          	slli	a4,a3,0x2
    8000336c:	000f4637          	lui	a2,0xf4
    80003370:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003374:	00d70733          	add	a4,a4,a3
    80003378:	0037979b          	slliw	a5,a5,0x3
    8000337c:	020046b7          	lui	a3,0x2004
    80003380:	00d787b3          	add	a5,a5,a3
    80003384:	00c585b3          	add	a1,a1,a2
    80003388:	00371693          	slli	a3,a4,0x3
    8000338c:	00004717          	auipc	a4,0x4
    80003390:	ee470713          	addi	a4,a4,-284 # 80007270 <timer_scratch>
    80003394:	00b7b023          	sd	a1,0(a5)
    80003398:	00d70733          	add	a4,a4,a3
    8000339c:	00f73c23          	sd	a5,24(a4)
    800033a0:	02c73023          	sd	a2,32(a4)
    800033a4:	34071073          	csrw	mscratch,a4
    800033a8:	00000797          	auipc	a5,0x0
    800033ac:	64878793          	addi	a5,a5,1608 # 800039f0 <timervec>
    800033b0:	30579073          	csrw	mtvec,a5
    800033b4:	300027f3          	csrr	a5,mstatus
    800033b8:	0087e793          	ori	a5,a5,8
    800033bc:	30079073          	csrw	mstatus,a5
    800033c0:	304027f3          	csrr	a5,mie
    800033c4:	0807e793          	ori	a5,a5,128
    800033c8:	30479073          	csrw	mie,a5
    800033cc:	00813403          	ld	s0,8(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret

00000000800033d8 <system_main>:
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00813823          	sd	s0,16(sp)
    800033e0:	00913423          	sd	s1,8(sp)
    800033e4:	00113c23          	sd	ra,24(sp)
    800033e8:	02010413          	addi	s0,sp,32
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	0c4080e7          	jalr	196(ra) # 800034b0 <cpuid>
    800033f4:	00004497          	auipc	s1,0x4
    800033f8:	e0c48493          	addi	s1,s1,-500 # 80007200 <started>
    800033fc:	02050263          	beqz	a0,80003420 <system_main+0x48>
    80003400:	0004a783          	lw	a5,0(s1)
    80003404:	0007879b          	sext.w	a5,a5
    80003408:	fe078ce3          	beqz	a5,80003400 <system_main+0x28>
    8000340c:	0ff0000f          	fence
    80003410:	00003517          	auipc	a0,0x3
    80003414:	dd850513          	addi	a0,a0,-552 # 800061e8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80003418:	00001097          	auipc	ra,0x1
    8000341c:	a74080e7          	jalr	-1420(ra) # 80003e8c <panic>
    80003420:	00001097          	auipc	ra,0x1
    80003424:	9c8080e7          	jalr	-1592(ra) # 80003de8 <consoleinit>
    80003428:	00001097          	auipc	ra,0x1
    8000342c:	154080e7          	jalr	340(ra) # 8000457c <printfinit>
    80003430:	00003517          	auipc	a0,0x3
    80003434:	e9850513          	addi	a0,a0,-360 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003438:	00001097          	auipc	ra,0x1
    8000343c:	ab0080e7          	jalr	-1360(ra) # 80003ee8 <__printf>
    80003440:	00003517          	auipc	a0,0x3
    80003444:	d7850513          	addi	a0,a0,-648 # 800061b8 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003448:	00001097          	auipc	ra,0x1
    8000344c:	aa0080e7          	jalr	-1376(ra) # 80003ee8 <__printf>
    80003450:	00003517          	auipc	a0,0x3
    80003454:	e7850513          	addi	a0,a0,-392 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003458:	00001097          	auipc	ra,0x1
    8000345c:	a90080e7          	jalr	-1392(ra) # 80003ee8 <__printf>
    80003460:	00001097          	auipc	ra,0x1
    80003464:	4a8080e7          	jalr	1192(ra) # 80004908 <kinit>
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	148080e7          	jalr	328(ra) # 800035b0 <trapinit>
    80003470:	00000097          	auipc	ra,0x0
    80003474:	16c080e7          	jalr	364(ra) # 800035dc <trapinithart>
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	5b8080e7          	jalr	1464(ra) # 80003a30 <plicinit>
    80003480:	00000097          	auipc	ra,0x0
    80003484:	5d8080e7          	jalr	1496(ra) # 80003a58 <plicinithart>
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	078080e7          	jalr	120(ra) # 80003500 <userinit>
    80003490:	0ff0000f          	fence
    80003494:	00100793          	li	a5,1
    80003498:	00003517          	auipc	a0,0x3
    8000349c:	d3850513          	addi	a0,a0,-712 # 800061d0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    800034a0:	00f4a023          	sw	a5,0(s1)
    800034a4:	00001097          	auipc	ra,0x1
    800034a8:	a44080e7          	jalr	-1468(ra) # 80003ee8 <__printf>
    800034ac:	0000006f          	j	800034ac <system_main+0xd4>

00000000800034b0 <cpuid>:
    800034b0:	ff010113          	addi	sp,sp,-16
    800034b4:	00813423          	sd	s0,8(sp)
    800034b8:	01010413          	addi	s0,sp,16
    800034bc:	00020513          	mv	a0,tp
    800034c0:	00813403          	ld	s0,8(sp)
    800034c4:	0005051b          	sext.w	a0,a0
    800034c8:	01010113          	addi	sp,sp,16
    800034cc:	00008067          	ret

00000000800034d0 <mycpu>:
    800034d0:	ff010113          	addi	sp,sp,-16
    800034d4:	00813423          	sd	s0,8(sp)
    800034d8:	01010413          	addi	s0,sp,16
    800034dc:	00020793          	mv	a5,tp
    800034e0:	00813403          	ld	s0,8(sp)
    800034e4:	0007879b          	sext.w	a5,a5
    800034e8:	00779793          	slli	a5,a5,0x7
    800034ec:	00005517          	auipc	a0,0x5
    800034f0:	db450513          	addi	a0,a0,-588 # 800082a0 <cpus>
    800034f4:	00f50533          	add	a0,a0,a5
    800034f8:	01010113          	addi	sp,sp,16
    800034fc:	00008067          	ret

0000000080003500 <userinit>:
    80003500:	ff010113          	addi	sp,sp,-16
    80003504:	00813423          	sd	s0,8(sp)
    80003508:	01010413          	addi	s0,sp,16
    8000350c:	00813403          	ld	s0,8(sp)
    80003510:	01010113          	addi	sp,sp,16
    80003514:	fffff317          	auipc	t1,0xfffff
    80003518:	0ac30067          	jr	172(t1) # 800025c0 <main>

000000008000351c <either_copyout>:
    8000351c:	ff010113          	addi	sp,sp,-16
    80003520:	00813023          	sd	s0,0(sp)
    80003524:	00113423          	sd	ra,8(sp)
    80003528:	01010413          	addi	s0,sp,16
    8000352c:	02051663          	bnez	a0,80003558 <either_copyout+0x3c>
    80003530:	00058513          	mv	a0,a1
    80003534:	00060593          	mv	a1,a2
    80003538:	0006861b          	sext.w	a2,a3
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	c58080e7          	jalr	-936(ra) # 80005194 <__memmove>
    80003544:	00813083          	ld	ra,8(sp)
    80003548:	00013403          	ld	s0,0(sp)
    8000354c:	00000513          	li	a0,0
    80003550:	01010113          	addi	sp,sp,16
    80003554:	00008067          	ret
    80003558:	00003517          	auipc	a0,0x3
    8000355c:	cb850513          	addi	a0,a0,-840 # 80006210 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80003560:	00001097          	auipc	ra,0x1
    80003564:	92c080e7          	jalr	-1748(ra) # 80003e8c <panic>

0000000080003568 <either_copyin>:
    80003568:	ff010113          	addi	sp,sp,-16
    8000356c:	00813023          	sd	s0,0(sp)
    80003570:	00113423          	sd	ra,8(sp)
    80003574:	01010413          	addi	s0,sp,16
    80003578:	02059463          	bnez	a1,800035a0 <either_copyin+0x38>
    8000357c:	00060593          	mv	a1,a2
    80003580:	0006861b          	sext.w	a2,a3
    80003584:	00002097          	auipc	ra,0x2
    80003588:	c10080e7          	jalr	-1008(ra) # 80005194 <__memmove>
    8000358c:	00813083          	ld	ra,8(sp)
    80003590:	00013403          	ld	s0,0(sp)
    80003594:	00000513          	li	a0,0
    80003598:	01010113          	addi	sp,sp,16
    8000359c:	00008067          	ret
    800035a0:	00003517          	auipc	a0,0x3
    800035a4:	c9850513          	addi	a0,a0,-872 # 80006238 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    800035a8:	00001097          	auipc	ra,0x1
    800035ac:	8e4080e7          	jalr	-1820(ra) # 80003e8c <panic>

00000000800035b0 <trapinit>:
    800035b0:	ff010113          	addi	sp,sp,-16
    800035b4:	00813423          	sd	s0,8(sp)
    800035b8:	01010413          	addi	s0,sp,16
    800035bc:	00813403          	ld	s0,8(sp)
    800035c0:	00003597          	auipc	a1,0x3
    800035c4:	ca058593          	addi	a1,a1,-864 # 80006260 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800035c8:	00005517          	auipc	a0,0x5
    800035cc:	d5850513          	addi	a0,a0,-680 # 80008320 <tickslock>
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00001317          	auipc	t1,0x1
    800035d8:	5c430067          	jr	1476(t1) # 80004b98 <initlock>

00000000800035dc <trapinithart>:
    800035dc:	ff010113          	addi	sp,sp,-16
    800035e0:	00813423          	sd	s0,8(sp)
    800035e4:	01010413          	addi	s0,sp,16
    800035e8:	00000797          	auipc	a5,0x0
    800035ec:	2f878793          	addi	a5,a5,760 # 800038e0 <kernelvec>
    800035f0:	10579073          	csrw	stvec,a5
    800035f4:	00813403          	ld	s0,8(sp)
    800035f8:	01010113          	addi	sp,sp,16
    800035fc:	00008067          	ret

0000000080003600 <usertrap>:
    80003600:	ff010113          	addi	sp,sp,-16
    80003604:	00813423          	sd	s0,8(sp)
    80003608:	01010413          	addi	s0,sp,16
    8000360c:	00813403          	ld	s0,8(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret

0000000080003618 <usertrapret>:
    80003618:	ff010113          	addi	sp,sp,-16
    8000361c:	00813423          	sd	s0,8(sp)
    80003620:	01010413          	addi	s0,sp,16
    80003624:	00813403          	ld	s0,8(sp)
    80003628:	01010113          	addi	sp,sp,16
    8000362c:	00008067          	ret

0000000080003630 <kerneltrap>:
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00113c23          	sd	ra,24(sp)
    8000363c:	00913423          	sd	s1,8(sp)
    80003640:	02010413          	addi	s0,sp,32
    80003644:	142025f3          	csrr	a1,scause
    80003648:	100027f3          	csrr	a5,sstatus
    8000364c:	0027f793          	andi	a5,a5,2
    80003650:	10079c63          	bnez	a5,80003768 <kerneltrap+0x138>
    80003654:	142027f3          	csrr	a5,scause
    80003658:	0207ce63          	bltz	a5,80003694 <kerneltrap+0x64>
    8000365c:	00003517          	auipc	a0,0x3
    80003660:	c4c50513          	addi	a0,a0,-948 # 800062a8 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80003664:	00001097          	auipc	ra,0x1
    80003668:	884080e7          	jalr	-1916(ra) # 80003ee8 <__printf>
    8000366c:	141025f3          	csrr	a1,sepc
    80003670:	14302673          	csrr	a2,stval
    80003674:	00003517          	auipc	a0,0x3
    80003678:	c4450513          	addi	a0,a0,-956 # 800062b8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    8000367c:	00001097          	auipc	ra,0x1
    80003680:	86c080e7          	jalr	-1940(ra) # 80003ee8 <__printf>
    80003684:	00003517          	auipc	a0,0x3
    80003688:	c4c50513          	addi	a0,a0,-948 # 800062d0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    8000368c:	00001097          	auipc	ra,0x1
    80003690:	800080e7          	jalr	-2048(ra) # 80003e8c <panic>
    80003694:	0ff7f713          	andi	a4,a5,255
    80003698:	00900693          	li	a3,9
    8000369c:	04d70063          	beq	a4,a3,800036dc <kerneltrap+0xac>
    800036a0:	fff00713          	li	a4,-1
    800036a4:	03f71713          	slli	a4,a4,0x3f
    800036a8:	00170713          	addi	a4,a4,1
    800036ac:	fae798e3          	bne	a5,a4,8000365c <kerneltrap+0x2c>
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	e00080e7          	jalr	-512(ra) # 800034b0 <cpuid>
    800036b8:	06050663          	beqz	a0,80003724 <kerneltrap+0xf4>
    800036bc:	144027f3          	csrr	a5,sip
    800036c0:	ffd7f793          	andi	a5,a5,-3
    800036c4:	14479073          	csrw	sip,a5
    800036c8:	01813083          	ld	ra,24(sp)
    800036cc:	01013403          	ld	s0,16(sp)
    800036d0:	00813483          	ld	s1,8(sp)
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	00008067          	ret
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	3c8080e7          	jalr	968(ra) # 80003aa4 <plic_claim>
    800036e4:	00a00793          	li	a5,10
    800036e8:	00050493          	mv	s1,a0
    800036ec:	06f50863          	beq	a0,a5,8000375c <kerneltrap+0x12c>
    800036f0:	fc050ce3          	beqz	a0,800036c8 <kerneltrap+0x98>
    800036f4:	00050593          	mv	a1,a0
    800036f8:	00003517          	auipc	a0,0x3
    800036fc:	b9050513          	addi	a0,a0,-1136 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003700:	00000097          	auipc	ra,0x0
    80003704:	7e8080e7          	jalr	2024(ra) # 80003ee8 <__printf>
    80003708:	01013403          	ld	s0,16(sp)
    8000370c:	01813083          	ld	ra,24(sp)
    80003710:	00048513          	mv	a0,s1
    80003714:	00813483          	ld	s1,8(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00000317          	auipc	t1,0x0
    80003720:	3c030067          	jr	960(t1) # 80003adc <plic_complete>
    80003724:	00005517          	auipc	a0,0x5
    80003728:	bfc50513          	addi	a0,a0,-1028 # 80008320 <tickslock>
    8000372c:	00001097          	auipc	ra,0x1
    80003730:	490080e7          	jalr	1168(ra) # 80004bbc <acquire>
    80003734:	00004717          	auipc	a4,0x4
    80003738:	ad070713          	addi	a4,a4,-1328 # 80007204 <ticks>
    8000373c:	00072783          	lw	a5,0(a4)
    80003740:	00005517          	auipc	a0,0x5
    80003744:	be050513          	addi	a0,a0,-1056 # 80008320 <tickslock>
    80003748:	0017879b          	addiw	a5,a5,1
    8000374c:	00f72023          	sw	a5,0(a4)
    80003750:	00001097          	auipc	ra,0x1
    80003754:	538080e7          	jalr	1336(ra) # 80004c88 <release>
    80003758:	f65ff06f          	j	800036bc <kerneltrap+0x8c>
    8000375c:	00001097          	auipc	ra,0x1
    80003760:	094080e7          	jalr	148(ra) # 800047f0 <uartintr>
    80003764:	fa5ff06f          	j	80003708 <kerneltrap+0xd8>
    80003768:	00003517          	auipc	a0,0x3
    8000376c:	b0050513          	addi	a0,a0,-1280 # 80006268 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80003770:	00000097          	auipc	ra,0x0
    80003774:	71c080e7          	jalr	1820(ra) # 80003e8c <panic>

0000000080003778 <clockintr>:
    80003778:	fe010113          	addi	sp,sp,-32
    8000377c:	00813823          	sd	s0,16(sp)
    80003780:	00913423          	sd	s1,8(sp)
    80003784:	00113c23          	sd	ra,24(sp)
    80003788:	02010413          	addi	s0,sp,32
    8000378c:	00005497          	auipc	s1,0x5
    80003790:	b9448493          	addi	s1,s1,-1132 # 80008320 <tickslock>
    80003794:	00048513          	mv	a0,s1
    80003798:	00001097          	auipc	ra,0x1
    8000379c:	424080e7          	jalr	1060(ra) # 80004bbc <acquire>
    800037a0:	00004717          	auipc	a4,0x4
    800037a4:	a6470713          	addi	a4,a4,-1436 # 80007204 <ticks>
    800037a8:	00072783          	lw	a5,0(a4)
    800037ac:	01013403          	ld	s0,16(sp)
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	00048513          	mv	a0,s1
    800037b8:	0017879b          	addiw	a5,a5,1
    800037bc:	00813483          	ld	s1,8(sp)
    800037c0:	00f72023          	sw	a5,0(a4)
    800037c4:	02010113          	addi	sp,sp,32
    800037c8:	00001317          	auipc	t1,0x1
    800037cc:	4c030067          	jr	1216(t1) # 80004c88 <release>

00000000800037d0 <devintr>:
    800037d0:	142027f3          	csrr	a5,scause
    800037d4:	00000513          	li	a0,0
    800037d8:	0007c463          	bltz	a5,800037e0 <devintr+0x10>
    800037dc:	00008067          	ret
    800037e0:	fe010113          	addi	sp,sp,-32
    800037e4:	00813823          	sd	s0,16(sp)
    800037e8:	00113c23          	sd	ra,24(sp)
    800037ec:	00913423          	sd	s1,8(sp)
    800037f0:	02010413          	addi	s0,sp,32
    800037f4:	0ff7f713          	andi	a4,a5,255
    800037f8:	00900693          	li	a3,9
    800037fc:	04d70c63          	beq	a4,a3,80003854 <devintr+0x84>
    80003800:	fff00713          	li	a4,-1
    80003804:	03f71713          	slli	a4,a4,0x3f
    80003808:	00170713          	addi	a4,a4,1
    8000380c:	00e78c63          	beq	a5,a4,80003824 <devintr+0x54>
    80003810:	01813083          	ld	ra,24(sp)
    80003814:	01013403          	ld	s0,16(sp)
    80003818:	00813483          	ld	s1,8(sp)
    8000381c:	02010113          	addi	sp,sp,32
    80003820:	00008067          	ret
    80003824:	00000097          	auipc	ra,0x0
    80003828:	c8c080e7          	jalr	-884(ra) # 800034b0 <cpuid>
    8000382c:	06050663          	beqz	a0,80003898 <devintr+0xc8>
    80003830:	144027f3          	csrr	a5,sip
    80003834:	ffd7f793          	andi	a5,a5,-3
    80003838:	14479073          	csrw	sip,a5
    8000383c:	01813083          	ld	ra,24(sp)
    80003840:	01013403          	ld	s0,16(sp)
    80003844:	00813483          	ld	s1,8(sp)
    80003848:	00200513          	li	a0,2
    8000384c:	02010113          	addi	sp,sp,32
    80003850:	00008067          	ret
    80003854:	00000097          	auipc	ra,0x0
    80003858:	250080e7          	jalr	592(ra) # 80003aa4 <plic_claim>
    8000385c:	00a00793          	li	a5,10
    80003860:	00050493          	mv	s1,a0
    80003864:	06f50663          	beq	a0,a5,800038d0 <devintr+0x100>
    80003868:	00100513          	li	a0,1
    8000386c:	fa0482e3          	beqz	s1,80003810 <devintr+0x40>
    80003870:	00048593          	mv	a1,s1
    80003874:	00003517          	auipc	a0,0x3
    80003878:	a1450513          	addi	a0,a0,-1516 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	66c080e7          	jalr	1644(ra) # 80003ee8 <__printf>
    80003884:	00048513          	mv	a0,s1
    80003888:	00000097          	auipc	ra,0x0
    8000388c:	254080e7          	jalr	596(ra) # 80003adc <plic_complete>
    80003890:	00100513          	li	a0,1
    80003894:	f7dff06f          	j	80003810 <devintr+0x40>
    80003898:	00005517          	auipc	a0,0x5
    8000389c:	a8850513          	addi	a0,a0,-1400 # 80008320 <tickslock>
    800038a0:	00001097          	auipc	ra,0x1
    800038a4:	31c080e7          	jalr	796(ra) # 80004bbc <acquire>
    800038a8:	00004717          	auipc	a4,0x4
    800038ac:	95c70713          	addi	a4,a4,-1700 # 80007204 <ticks>
    800038b0:	00072783          	lw	a5,0(a4)
    800038b4:	00005517          	auipc	a0,0x5
    800038b8:	a6c50513          	addi	a0,a0,-1428 # 80008320 <tickslock>
    800038bc:	0017879b          	addiw	a5,a5,1
    800038c0:	00f72023          	sw	a5,0(a4)
    800038c4:	00001097          	auipc	ra,0x1
    800038c8:	3c4080e7          	jalr	964(ra) # 80004c88 <release>
    800038cc:	f65ff06f          	j	80003830 <devintr+0x60>
    800038d0:	00001097          	auipc	ra,0x1
    800038d4:	f20080e7          	jalr	-224(ra) # 800047f0 <uartintr>
    800038d8:	fadff06f          	j	80003884 <devintr+0xb4>
    800038dc:	0000                	unimp
	...

00000000800038e0 <kernelvec>:
    800038e0:	f0010113          	addi	sp,sp,-256
    800038e4:	00113023          	sd	ra,0(sp)
    800038e8:	00213423          	sd	sp,8(sp)
    800038ec:	00313823          	sd	gp,16(sp)
    800038f0:	00413c23          	sd	tp,24(sp)
    800038f4:	02513023          	sd	t0,32(sp)
    800038f8:	02613423          	sd	t1,40(sp)
    800038fc:	02713823          	sd	t2,48(sp)
    80003900:	02813c23          	sd	s0,56(sp)
    80003904:	04913023          	sd	s1,64(sp)
    80003908:	04a13423          	sd	a0,72(sp)
    8000390c:	04b13823          	sd	a1,80(sp)
    80003910:	04c13c23          	sd	a2,88(sp)
    80003914:	06d13023          	sd	a3,96(sp)
    80003918:	06e13423          	sd	a4,104(sp)
    8000391c:	06f13823          	sd	a5,112(sp)
    80003920:	07013c23          	sd	a6,120(sp)
    80003924:	09113023          	sd	a7,128(sp)
    80003928:	09213423          	sd	s2,136(sp)
    8000392c:	09313823          	sd	s3,144(sp)
    80003930:	09413c23          	sd	s4,152(sp)
    80003934:	0b513023          	sd	s5,160(sp)
    80003938:	0b613423          	sd	s6,168(sp)
    8000393c:	0b713823          	sd	s7,176(sp)
    80003940:	0b813c23          	sd	s8,184(sp)
    80003944:	0d913023          	sd	s9,192(sp)
    80003948:	0da13423          	sd	s10,200(sp)
    8000394c:	0db13823          	sd	s11,208(sp)
    80003950:	0dc13c23          	sd	t3,216(sp)
    80003954:	0fd13023          	sd	t4,224(sp)
    80003958:	0fe13423          	sd	t5,232(sp)
    8000395c:	0ff13823          	sd	t6,240(sp)
    80003960:	cd1ff0ef          	jal	ra,80003630 <kerneltrap>
    80003964:	00013083          	ld	ra,0(sp)
    80003968:	00813103          	ld	sp,8(sp)
    8000396c:	01013183          	ld	gp,16(sp)
    80003970:	02013283          	ld	t0,32(sp)
    80003974:	02813303          	ld	t1,40(sp)
    80003978:	03013383          	ld	t2,48(sp)
    8000397c:	03813403          	ld	s0,56(sp)
    80003980:	04013483          	ld	s1,64(sp)
    80003984:	04813503          	ld	a0,72(sp)
    80003988:	05013583          	ld	a1,80(sp)
    8000398c:	05813603          	ld	a2,88(sp)
    80003990:	06013683          	ld	a3,96(sp)
    80003994:	06813703          	ld	a4,104(sp)
    80003998:	07013783          	ld	a5,112(sp)
    8000399c:	07813803          	ld	a6,120(sp)
    800039a0:	08013883          	ld	a7,128(sp)
    800039a4:	08813903          	ld	s2,136(sp)
    800039a8:	09013983          	ld	s3,144(sp)
    800039ac:	09813a03          	ld	s4,152(sp)
    800039b0:	0a013a83          	ld	s5,160(sp)
    800039b4:	0a813b03          	ld	s6,168(sp)
    800039b8:	0b013b83          	ld	s7,176(sp)
    800039bc:	0b813c03          	ld	s8,184(sp)
    800039c0:	0c013c83          	ld	s9,192(sp)
    800039c4:	0c813d03          	ld	s10,200(sp)
    800039c8:	0d013d83          	ld	s11,208(sp)
    800039cc:	0d813e03          	ld	t3,216(sp)
    800039d0:	0e013e83          	ld	t4,224(sp)
    800039d4:	0e813f03          	ld	t5,232(sp)
    800039d8:	0f013f83          	ld	t6,240(sp)
    800039dc:	10010113          	addi	sp,sp,256
    800039e0:	10200073          	sret
    800039e4:	00000013          	nop
    800039e8:	00000013          	nop
    800039ec:	00000013          	nop

00000000800039f0 <timervec>:
    800039f0:	34051573          	csrrw	a0,mscratch,a0
    800039f4:	00b53023          	sd	a1,0(a0)
    800039f8:	00c53423          	sd	a2,8(a0)
    800039fc:	00d53823          	sd	a3,16(a0)
    80003a00:	01853583          	ld	a1,24(a0)
    80003a04:	02053603          	ld	a2,32(a0)
    80003a08:	0005b683          	ld	a3,0(a1)
    80003a0c:	00c686b3          	add	a3,a3,a2
    80003a10:	00d5b023          	sd	a3,0(a1)
    80003a14:	00200593          	li	a1,2
    80003a18:	14459073          	csrw	sip,a1
    80003a1c:	01053683          	ld	a3,16(a0)
    80003a20:	00853603          	ld	a2,8(a0)
    80003a24:	00053583          	ld	a1,0(a0)
    80003a28:	34051573          	csrrw	a0,mscratch,a0
    80003a2c:	30200073          	mret

0000000080003a30 <plicinit>:
    80003a30:	ff010113          	addi	sp,sp,-16
    80003a34:	00813423          	sd	s0,8(sp)
    80003a38:	01010413          	addi	s0,sp,16
    80003a3c:	00813403          	ld	s0,8(sp)
    80003a40:	0c0007b7          	lui	a5,0xc000
    80003a44:	00100713          	li	a4,1
    80003a48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003a4c:	00e7a223          	sw	a4,4(a5)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <plicinithart>:
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00813023          	sd	s0,0(sp)
    80003a60:	00113423          	sd	ra,8(sp)
    80003a64:	01010413          	addi	s0,sp,16
    80003a68:	00000097          	auipc	ra,0x0
    80003a6c:	a48080e7          	jalr	-1464(ra) # 800034b0 <cpuid>
    80003a70:	0085171b          	slliw	a4,a0,0x8
    80003a74:	0c0027b7          	lui	a5,0xc002
    80003a78:	00e787b3          	add	a5,a5,a4
    80003a7c:	40200713          	li	a4,1026
    80003a80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003a84:	00813083          	ld	ra,8(sp)
    80003a88:	00013403          	ld	s0,0(sp)
    80003a8c:	00d5151b          	slliw	a0,a0,0xd
    80003a90:	0c2017b7          	lui	a5,0xc201
    80003a94:	00a78533          	add	a0,a5,a0
    80003a98:	00052023          	sw	zero,0(a0)
    80003a9c:	01010113          	addi	sp,sp,16
    80003aa0:	00008067          	ret

0000000080003aa4 <plic_claim>:
    80003aa4:	ff010113          	addi	sp,sp,-16
    80003aa8:	00813023          	sd	s0,0(sp)
    80003aac:	00113423          	sd	ra,8(sp)
    80003ab0:	01010413          	addi	s0,sp,16
    80003ab4:	00000097          	auipc	ra,0x0
    80003ab8:	9fc080e7          	jalr	-1540(ra) # 800034b0 <cpuid>
    80003abc:	00813083          	ld	ra,8(sp)
    80003ac0:	00013403          	ld	s0,0(sp)
    80003ac4:	00d5151b          	slliw	a0,a0,0xd
    80003ac8:	0c2017b7          	lui	a5,0xc201
    80003acc:	00a78533          	add	a0,a5,a0
    80003ad0:	00452503          	lw	a0,4(a0)
    80003ad4:	01010113          	addi	sp,sp,16
    80003ad8:	00008067          	ret

0000000080003adc <plic_complete>:
    80003adc:	fe010113          	addi	sp,sp,-32
    80003ae0:	00813823          	sd	s0,16(sp)
    80003ae4:	00913423          	sd	s1,8(sp)
    80003ae8:	00113c23          	sd	ra,24(sp)
    80003aec:	02010413          	addi	s0,sp,32
    80003af0:	00050493          	mv	s1,a0
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	9bc080e7          	jalr	-1604(ra) # 800034b0 <cpuid>
    80003afc:	01813083          	ld	ra,24(sp)
    80003b00:	01013403          	ld	s0,16(sp)
    80003b04:	00d5179b          	slliw	a5,a0,0xd
    80003b08:	0c201737          	lui	a4,0xc201
    80003b0c:	00f707b3          	add	a5,a4,a5
    80003b10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003b14:	00813483          	ld	s1,8(sp)
    80003b18:	02010113          	addi	sp,sp,32
    80003b1c:	00008067          	ret

0000000080003b20 <consolewrite>:
    80003b20:	fb010113          	addi	sp,sp,-80
    80003b24:	04813023          	sd	s0,64(sp)
    80003b28:	04113423          	sd	ra,72(sp)
    80003b2c:	02913c23          	sd	s1,56(sp)
    80003b30:	03213823          	sd	s2,48(sp)
    80003b34:	03313423          	sd	s3,40(sp)
    80003b38:	03413023          	sd	s4,32(sp)
    80003b3c:	01513c23          	sd	s5,24(sp)
    80003b40:	05010413          	addi	s0,sp,80
    80003b44:	06c05c63          	blez	a2,80003bbc <consolewrite+0x9c>
    80003b48:	00060993          	mv	s3,a2
    80003b4c:	00050a13          	mv	s4,a0
    80003b50:	00058493          	mv	s1,a1
    80003b54:	00000913          	li	s2,0
    80003b58:	fff00a93          	li	s5,-1
    80003b5c:	01c0006f          	j	80003b78 <consolewrite+0x58>
    80003b60:	fbf44503          	lbu	a0,-65(s0)
    80003b64:	0019091b          	addiw	s2,s2,1
    80003b68:	00148493          	addi	s1,s1,1
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	a9c080e7          	jalr	-1380(ra) # 80004608 <uartputc>
    80003b74:	03298063          	beq	s3,s2,80003b94 <consolewrite+0x74>
    80003b78:	00048613          	mv	a2,s1
    80003b7c:	00100693          	li	a3,1
    80003b80:	000a0593          	mv	a1,s4
    80003b84:	fbf40513          	addi	a0,s0,-65
    80003b88:	00000097          	auipc	ra,0x0
    80003b8c:	9e0080e7          	jalr	-1568(ra) # 80003568 <either_copyin>
    80003b90:	fd5518e3          	bne	a0,s5,80003b60 <consolewrite+0x40>
    80003b94:	04813083          	ld	ra,72(sp)
    80003b98:	04013403          	ld	s0,64(sp)
    80003b9c:	03813483          	ld	s1,56(sp)
    80003ba0:	02813983          	ld	s3,40(sp)
    80003ba4:	02013a03          	ld	s4,32(sp)
    80003ba8:	01813a83          	ld	s5,24(sp)
    80003bac:	00090513          	mv	a0,s2
    80003bb0:	03013903          	ld	s2,48(sp)
    80003bb4:	05010113          	addi	sp,sp,80
    80003bb8:	00008067          	ret
    80003bbc:	00000913          	li	s2,0
    80003bc0:	fd5ff06f          	j	80003b94 <consolewrite+0x74>

0000000080003bc4 <consoleread>:
    80003bc4:	f9010113          	addi	sp,sp,-112
    80003bc8:	06813023          	sd	s0,96(sp)
    80003bcc:	04913c23          	sd	s1,88(sp)
    80003bd0:	05213823          	sd	s2,80(sp)
    80003bd4:	05313423          	sd	s3,72(sp)
    80003bd8:	05413023          	sd	s4,64(sp)
    80003bdc:	03513c23          	sd	s5,56(sp)
    80003be0:	03613823          	sd	s6,48(sp)
    80003be4:	03713423          	sd	s7,40(sp)
    80003be8:	03813023          	sd	s8,32(sp)
    80003bec:	06113423          	sd	ra,104(sp)
    80003bf0:	01913c23          	sd	s9,24(sp)
    80003bf4:	07010413          	addi	s0,sp,112
    80003bf8:	00060b93          	mv	s7,a2
    80003bfc:	00050913          	mv	s2,a0
    80003c00:	00058c13          	mv	s8,a1
    80003c04:	00060b1b          	sext.w	s6,a2
    80003c08:	00004497          	auipc	s1,0x4
    80003c0c:	74048493          	addi	s1,s1,1856 # 80008348 <cons>
    80003c10:	00400993          	li	s3,4
    80003c14:	fff00a13          	li	s4,-1
    80003c18:	00a00a93          	li	s5,10
    80003c1c:	05705e63          	blez	s7,80003c78 <consoleread+0xb4>
    80003c20:	09c4a703          	lw	a4,156(s1)
    80003c24:	0984a783          	lw	a5,152(s1)
    80003c28:	0007071b          	sext.w	a4,a4
    80003c2c:	08e78463          	beq	a5,a4,80003cb4 <consoleread+0xf0>
    80003c30:	07f7f713          	andi	a4,a5,127
    80003c34:	00e48733          	add	a4,s1,a4
    80003c38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003c3c:	0017869b          	addiw	a3,a5,1
    80003c40:	08d4ac23          	sw	a3,152(s1)
    80003c44:	00070c9b          	sext.w	s9,a4
    80003c48:	0b370663          	beq	a4,s3,80003cf4 <consoleread+0x130>
    80003c4c:	00100693          	li	a3,1
    80003c50:	f9f40613          	addi	a2,s0,-97
    80003c54:	000c0593          	mv	a1,s8
    80003c58:	00090513          	mv	a0,s2
    80003c5c:	f8e40fa3          	sb	a4,-97(s0)
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	8bc080e7          	jalr	-1860(ra) # 8000351c <either_copyout>
    80003c68:	01450863          	beq	a0,s4,80003c78 <consoleread+0xb4>
    80003c6c:	001c0c13          	addi	s8,s8,1
    80003c70:	fffb8b9b          	addiw	s7,s7,-1
    80003c74:	fb5c94e3          	bne	s9,s5,80003c1c <consoleread+0x58>
    80003c78:	000b851b          	sext.w	a0,s7
    80003c7c:	06813083          	ld	ra,104(sp)
    80003c80:	06013403          	ld	s0,96(sp)
    80003c84:	05813483          	ld	s1,88(sp)
    80003c88:	05013903          	ld	s2,80(sp)
    80003c8c:	04813983          	ld	s3,72(sp)
    80003c90:	04013a03          	ld	s4,64(sp)
    80003c94:	03813a83          	ld	s5,56(sp)
    80003c98:	02813b83          	ld	s7,40(sp)
    80003c9c:	02013c03          	ld	s8,32(sp)
    80003ca0:	01813c83          	ld	s9,24(sp)
    80003ca4:	40ab053b          	subw	a0,s6,a0
    80003ca8:	03013b03          	ld	s6,48(sp)
    80003cac:	07010113          	addi	sp,sp,112
    80003cb0:	00008067          	ret
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	1d8080e7          	jalr	472(ra) # 80004e8c <push_on>
    80003cbc:	0984a703          	lw	a4,152(s1)
    80003cc0:	09c4a783          	lw	a5,156(s1)
    80003cc4:	0007879b          	sext.w	a5,a5
    80003cc8:	fef70ce3          	beq	a4,a5,80003cc0 <consoleread+0xfc>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	234080e7          	jalr	564(ra) # 80004f00 <pop_on>
    80003cd4:	0984a783          	lw	a5,152(s1)
    80003cd8:	07f7f713          	andi	a4,a5,127
    80003cdc:	00e48733          	add	a4,s1,a4
    80003ce0:	01874703          	lbu	a4,24(a4)
    80003ce4:	0017869b          	addiw	a3,a5,1
    80003ce8:	08d4ac23          	sw	a3,152(s1)
    80003cec:	00070c9b          	sext.w	s9,a4
    80003cf0:	f5371ee3          	bne	a4,s3,80003c4c <consoleread+0x88>
    80003cf4:	000b851b          	sext.w	a0,s7
    80003cf8:	f96bf2e3          	bgeu	s7,s6,80003c7c <consoleread+0xb8>
    80003cfc:	08f4ac23          	sw	a5,152(s1)
    80003d00:	f7dff06f          	j	80003c7c <consoleread+0xb8>

0000000080003d04 <consputc>:
    80003d04:	10000793          	li	a5,256
    80003d08:	00f50663          	beq	a0,a5,80003d14 <consputc+0x10>
    80003d0c:	00001317          	auipc	t1,0x1
    80003d10:	9f430067          	jr	-1548(t1) # 80004700 <uartputc_sync>
    80003d14:	ff010113          	addi	sp,sp,-16
    80003d18:	00113423          	sd	ra,8(sp)
    80003d1c:	00813023          	sd	s0,0(sp)
    80003d20:	01010413          	addi	s0,sp,16
    80003d24:	00800513          	li	a0,8
    80003d28:	00001097          	auipc	ra,0x1
    80003d2c:	9d8080e7          	jalr	-1576(ra) # 80004700 <uartputc_sync>
    80003d30:	02000513          	li	a0,32
    80003d34:	00001097          	auipc	ra,0x1
    80003d38:	9cc080e7          	jalr	-1588(ra) # 80004700 <uartputc_sync>
    80003d3c:	00013403          	ld	s0,0(sp)
    80003d40:	00813083          	ld	ra,8(sp)
    80003d44:	00800513          	li	a0,8
    80003d48:	01010113          	addi	sp,sp,16
    80003d4c:	00001317          	auipc	t1,0x1
    80003d50:	9b430067          	jr	-1612(t1) # 80004700 <uartputc_sync>

0000000080003d54 <consoleintr>:
    80003d54:	fe010113          	addi	sp,sp,-32
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	00113c23          	sd	ra,24(sp)
    80003d68:	02010413          	addi	s0,sp,32
    80003d6c:	00004917          	auipc	s2,0x4
    80003d70:	5dc90913          	addi	s2,s2,1500 # 80008348 <cons>
    80003d74:	00050493          	mv	s1,a0
    80003d78:	00090513          	mv	a0,s2
    80003d7c:	00001097          	auipc	ra,0x1
    80003d80:	e40080e7          	jalr	-448(ra) # 80004bbc <acquire>
    80003d84:	02048c63          	beqz	s1,80003dbc <consoleintr+0x68>
    80003d88:	0a092783          	lw	a5,160(s2)
    80003d8c:	09892703          	lw	a4,152(s2)
    80003d90:	07f00693          	li	a3,127
    80003d94:	40e7873b          	subw	a4,a5,a4
    80003d98:	02e6e263          	bltu	a3,a4,80003dbc <consoleintr+0x68>
    80003d9c:	00d00713          	li	a4,13
    80003da0:	04e48063          	beq	s1,a4,80003de0 <consoleintr+0x8c>
    80003da4:	07f7f713          	andi	a4,a5,127
    80003da8:	00e90733          	add	a4,s2,a4
    80003dac:	0017879b          	addiw	a5,a5,1
    80003db0:	0af92023          	sw	a5,160(s2)
    80003db4:	00970c23          	sb	s1,24(a4)
    80003db8:	08f92e23          	sw	a5,156(s2)
    80003dbc:	01013403          	ld	s0,16(sp)
    80003dc0:	01813083          	ld	ra,24(sp)
    80003dc4:	00813483          	ld	s1,8(sp)
    80003dc8:	00013903          	ld	s2,0(sp)
    80003dcc:	00004517          	auipc	a0,0x4
    80003dd0:	57c50513          	addi	a0,a0,1404 # 80008348 <cons>
    80003dd4:	02010113          	addi	sp,sp,32
    80003dd8:	00001317          	auipc	t1,0x1
    80003ddc:	eb030067          	jr	-336(t1) # 80004c88 <release>
    80003de0:	00a00493          	li	s1,10
    80003de4:	fc1ff06f          	j	80003da4 <consoleintr+0x50>

0000000080003de8 <consoleinit>:
    80003de8:	fe010113          	addi	sp,sp,-32
    80003dec:	00113c23          	sd	ra,24(sp)
    80003df0:	00813823          	sd	s0,16(sp)
    80003df4:	00913423          	sd	s1,8(sp)
    80003df8:	02010413          	addi	s0,sp,32
    80003dfc:	00004497          	auipc	s1,0x4
    80003e00:	54c48493          	addi	s1,s1,1356 # 80008348 <cons>
    80003e04:	00048513          	mv	a0,s1
    80003e08:	00002597          	auipc	a1,0x2
    80003e0c:	4d858593          	addi	a1,a1,1240 # 800062e0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80003e10:	00001097          	auipc	ra,0x1
    80003e14:	d88080e7          	jalr	-632(ra) # 80004b98 <initlock>
    80003e18:	00000097          	auipc	ra,0x0
    80003e1c:	7ac080e7          	jalr	1964(ra) # 800045c4 <uartinit>
    80003e20:	01813083          	ld	ra,24(sp)
    80003e24:	01013403          	ld	s0,16(sp)
    80003e28:	00000797          	auipc	a5,0x0
    80003e2c:	d9c78793          	addi	a5,a5,-612 # 80003bc4 <consoleread>
    80003e30:	0af4bc23          	sd	a5,184(s1)
    80003e34:	00000797          	auipc	a5,0x0
    80003e38:	cec78793          	addi	a5,a5,-788 # 80003b20 <consolewrite>
    80003e3c:	0cf4b023          	sd	a5,192(s1)
    80003e40:	00813483          	ld	s1,8(sp)
    80003e44:	02010113          	addi	sp,sp,32
    80003e48:	00008067          	ret

0000000080003e4c <console_read>:
    80003e4c:	ff010113          	addi	sp,sp,-16
    80003e50:	00813423          	sd	s0,8(sp)
    80003e54:	01010413          	addi	s0,sp,16
    80003e58:	00813403          	ld	s0,8(sp)
    80003e5c:	00004317          	auipc	t1,0x4
    80003e60:	5a433303          	ld	t1,1444(t1) # 80008400 <devsw+0x10>
    80003e64:	01010113          	addi	sp,sp,16
    80003e68:	00030067          	jr	t1

0000000080003e6c <console_write>:
    80003e6c:	ff010113          	addi	sp,sp,-16
    80003e70:	00813423          	sd	s0,8(sp)
    80003e74:	01010413          	addi	s0,sp,16
    80003e78:	00813403          	ld	s0,8(sp)
    80003e7c:	00004317          	auipc	t1,0x4
    80003e80:	58c33303          	ld	t1,1420(t1) # 80008408 <devsw+0x18>
    80003e84:	01010113          	addi	sp,sp,16
    80003e88:	00030067          	jr	t1

0000000080003e8c <panic>:
    80003e8c:	fe010113          	addi	sp,sp,-32
    80003e90:	00113c23          	sd	ra,24(sp)
    80003e94:	00813823          	sd	s0,16(sp)
    80003e98:	00913423          	sd	s1,8(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    80003ea0:	00050493          	mv	s1,a0
    80003ea4:	00002517          	auipc	a0,0x2
    80003ea8:	44450513          	addi	a0,a0,1092 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80003eac:	00004797          	auipc	a5,0x4
    80003eb0:	5e07ae23          	sw	zero,1532(a5) # 800084a8 <pr+0x18>
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	034080e7          	jalr	52(ra) # 80003ee8 <__printf>
    80003ebc:	00048513          	mv	a0,s1
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	028080e7          	jalr	40(ra) # 80003ee8 <__printf>
    80003ec8:	00002517          	auipc	a0,0x2
    80003ecc:	40050513          	addi	a0,a0,1024 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003ed0:	00000097          	auipc	ra,0x0
    80003ed4:	018080e7          	jalr	24(ra) # 80003ee8 <__printf>
    80003ed8:	00100793          	li	a5,1
    80003edc:	00003717          	auipc	a4,0x3
    80003ee0:	32f72623          	sw	a5,812(a4) # 80007208 <panicked>
    80003ee4:	0000006f          	j	80003ee4 <panic+0x58>

0000000080003ee8 <__printf>:
    80003ee8:	f3010113          	addi	sp,sp,-208
    80003eec:	08813023          	sd	s0,128(sp)
    80003ef0:	07313423          	sd	s3,104(sp)
    80003ef4:	09010413          	addi	s0,sp,144
    80003ef8:	05813023          	sd	s8,64(sp)
    80003efc:	08113423          	sd	ra,136(sp)
    80003f00:	06913c23          	sd	s1,120(sp)
    80003f04:	07213823          	sd	s2,112(sp)
    80003f08:	07413023          	sd	s4,96(sp)
    80003f0c:	05513c23          	sd	s5,88(sp)
    80003f10:	05613823          	sd	s6,80(sp)
    80003f14:	05713423          	sd	s7,72(sp)
    80003f18:	03913c23          	sd	s9,56(sp)
    80003f1c:	03a13823          	sd	s10,48(sp)
    80003f20:	03b13423          	sd	s11,40(sp)
    80003f24:	00004317          	auipc	t1,0x4
    80003f28:	56c30313          	addi	t1,t1,1388 # 80008490 <pr>
    80003f2c:	01832c03          	lw	s8,24(t1)
    80003f30:	00b43423          	sd	a1,8(s0)
    80003f34:	00c43823          	sd	a2,16(s0)
    80003f38:	00d43c23          	sd	a3,24(s0)
    80003f3c:	02e43023          	sd	a4,32(s0)
    80003f40:	02f43423          	sd	a5,40(s0)
    80003f44:	03043823          	sd	a6,48(s0)
    80003f48:	03143c23          	sd	a7,56(s0)
    80003f4c:	00050993          	mv	s3,a0
    80003f50:	4a0c1663          	bnez	s8,800043fc <__printf+0x514>
    80003f54:	60098c63          	beqz	s3,8000456c <__printf+0x684>
    80003f58:	0009c503          	lbu	a0,0(s3)
    80003f5c:	00840793          	addi	a5,s0,8
    80003f60:	f6f43c23          	sd	a5,-136(s0)
    80003f64:	00000493          	li	s1,0
    80003f68:	22050063          	beqz	a0,80004188 <__printf+0x2a0>
    80003f6c:	00002a37          	lui	s4,0x2
    80003f70:	00018ab7          	lui	s5,0x18
    80003f74:	000f4b37          	lui	s6,0xf4
    80003f78:	00989bb7          	lui	s7,0x989
    80003f7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003f80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003f84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003f88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003f8c:	00148c9b          	addiw	s9,s1,1
    80003f90:	02500793          	li	a5,37
    80003f94:	01998933          	add	s2,s3,s9
    80003f98:	38f51263          	bne	a0,a5,8000431c <__printf+0x434>
    80003f9c:	00094783          	lbu	a5,0(s2)
    80003fa0:	00078c9b          	sext.w	s9,a5
    80003fa4:	1e078263          	beqz	a5,80004188 <__printf+0x2a0>
    80003fa8:	0024849b          	addiw	s1,s1,2
    80003fac:	07000713          	li	a4,112
    80003fb0:	00998933          	add	s2,s3,s1
    80003fb4:	38e78a63          	beq	a5,a4,80004348 <__printf+0x460>
    80003fb8:	20f76863          	bltu	a4,a5,800041c8 <__printf+0x2e0>
    80003fbc:	42a78863          	beq	a5,a0,800043ec <__printf+0x504>
    80003fc0:	06400713          	li	a4,100
    80003fc4:	40e79663          	bne	a5,a4,800043d0 <__printf+0x4e8>
    80003fc8:	f7843783          	ld	a5,-136(s0)
    80003fcc:	0007a603          	lw	a2,0(a5)
    80003fd0:	00878793          	addi	a5,a5,8
    80003fd4:	f6f43c23          	sd	a5,-136(s0)
    80003fd8:	42064a63          	bltz	a2,8000440c <__printf+0x524>
    80003fdc:	00a00713          	li	a4,10
    80003fe0:	02e677bb          	remuw	a5,a2,a4
    80003fe4:	00002d97          	auipc	s11,0x2
    80003fe8:	32cd8d93          	addi	s11,s11,812 # 80006310 <digits>
    80003fec:	00900593          	li	a1,9
    80003ff0:	0006051b          	sext.w	a0,a2
    80003ff4:	00000c93          	li	s9,0
    80003ff8:	02079793          	slli	a5,a5,0x20
    80003ffc:	0207d793          	srli	a5,a5,0x20
    80004000:	00fd87b3          	add	a5,s11,a5
    80004004:	0007c783          	lbu	a5,0(a5)
    80004008:	02e656bb          	divuw	a3,a2,a4
    8000400c:	f8f40023          	sb	a5,-128(s0)
    80004010:	14c5d863          	bge	a1,a2,80004160 <__printf+0x278>
    80004014:	06300593          	li	a1,99
    80004018:	00100c93          	li	s9,1
    8000401c:	02e6f7bb          	remuw	a5,a3,a4
    80004020:	02079793          	slli	a5,a5,0x20
    80004024:	0207d793          	srli	a5,a5,0x20
    80004028:	00fd87b3          	add	a5,s11,a5
    8000402c:	0007c783          	lbu	a5,0(a5)
    80004030:	02e6d73b          	divuw	a4,a3,a4
    80004034:	f8f400a3          	sb	a5,-127(s0)
    80004038:	12a5f463          	bgeu	a1,a0,80004160 <__printf+0x278>
    8000403c:	00a00693          	li	a3,10
    80004040:	00900593          	li	a1,9
    80004044:	02d777bb          	remuw	a5,a4,a3
    80004048:	02079793          	slli	a5,a5,0x20
    8000404c:	0207d793          	srli	a5,a5,0x20
    80004050:	00fd87b3          	add	a5,s11,a5
    80004054:	0007c503          	lbu	a0,0(a5)
    80004058:	02d757bb          	divuw	a5,a4,a3
    8000405c:	f8a40123          	sb	a0,-126(s0)
    80004060:	48e5f263          	bgeu	a1,a4,800044e4 <__printf+0x5fc>
    80004064:	06300513          	li	a0,99
    80004068:	02d7f5bb          	remuw	a1,a5,a3
    8000406c:	02059593          	slli	a1,a1,0x20
    80004070:	0205d593          	srli	a1,a1,0x20
    80004074:	00bd85b3          	add	a1,s11,a1
    80004078:	0005c583          	lbu	a1,0(a1)
    8000407c:	02d7d7bb          	divuw	a5,a5,a3
    80004080:	f8b401a3          	sb	a1,-125(s0)
    80004084:	48e57263          	bgeu	a0,a4,80004508 <__printf+0x620>
    80004088:	3e700513          	li	a0,999
    8000408c:	02d7f5bb          	remuw	a1,a5,a3
    80004090:	02059593          	slli	a1,a1,0x20
    80004094:	0205d593          	srli	a1,a1,0x20
    80004098:	00bd85b3          	add	a1,s11,a1
    8000409c:	0005c583          	lbu	a1,0(a1)
    800040a0:	02d7d7bb          	divuw	a5,a5,a3
    800040a4:	f8b40223          	sb	a1,-124(s0)
    800040a8:	46e57663          	bgeu	a0,a4,80004514 <__printf+0x62c>
    800040ac:	02d7f5bb          	remuw	a1,a5,a3
    800040b0:	02059593          	slli	a1,a1,0x20
    800040b4:	0205d593          	srli	a1,a1,0x20
    800040b8:	00bd85b3          	add	a1,s11,a1
    800040bc:	0005c583          	lbu	a1,0(a1)
    800040c0:	02d7d7bb          	divuw	a5,a5,a3
    800040c4:	f8b402a3          	sb	a1,-123(s0)
    800040c8:	46ea7863          	bgeu	s4,a4,80004538 <__printf+0x650>
    800040cc:	02d7f5bb          	remuw	a1,a5,a3
    800040d0:	02059593          	slli	a1,a1,0x20
    800040d4:	0205d593          	srli	a1,a1,0x20
    800040d8:	00bd85b3          	add	a1,s11,a1
    800040dc:	0005c583          	lbu	a1,0(a1)
    800040e0:	02d7d7bb          	divuw	a5,a5,a3
    800040e4:	f8b40323          	sb	a1,-122(s0)
    800040e8:	3eeaf863          	bgeu	s5,a4,800044d8 <__printf+0x5f0>
    800040ec:	02d7f5bb          	remuw	a1,a5,a3
    800040f0:	02059593          	slli	a1,a1,0x20
    800040f4:	0205d593          	srli	a1,a1,0x20
    800040f8:	00bd85b3          	add	a1,s11,a1
    800040fc:	0005c583          	lbu	a1,0(a1)
    80004100:	02d7d7bb          	divuw	a5,a5,a3
    80004104:	f8b403a3          	sb	a1,-121(s0)
    80004108:	42eb7e63          	bgeu	s6,a4,80004544 <__printf+0x65c>
    8000410c:	02d7f5bb          	remuw	a1,a5,a3
    80004110:	02059593          	slli	a1,a1,0x20
    80004114:	0205d593          	srli	a1,a1,0x20
    80004118:	00bd85b3          	add	a1,s11,a1
    8000411c:	0005c583          	lbu	a1,0(a1)
    80004120:	02d7d7bb          	divuw	a5,a5,a3
    80004124:	f8b40423          	sb	a1,-120(s0)
    80004128:	42ebfc63          	bgeu	s7,a4,80004560 <__printf+0x678>
    8000412c:	02079793          	slli	a5,a5,0x20
    80004130:	0207d793          	srli	a5,a5,0x20
    80004134:	00fd8db3          	add	s11,s11,a5
    80004138:	000dc703          	lbu	a4,0(s11)
    8000413c:	00a00793          	li	a5,10
    80004140:	00900c93          	li	s9,9
    80004144:	f8e404a3          	sb	a4,-119(s0)
    80004148:	00065c63          	bgez	a2,80004160 <__printf+0x278>
    8000414c:	f9040713          	addi	a4,s0,-112
    80004150:	00f70733          	add	a4,a4,a5
    80004154:	02d00693          	li	a3,45
    80004158:	fed70823          	sb	a3,-16(a4)
    8000415c:	00078c93          	mv	s9,a5
    80004160:	f8040793          	addi	a5,s0,-128
    80004164:	01978cb3          	add	s9,a5,s9
    80004168:	f7f40d13          	addi	s10,s0,-129
    8000416c:	000cc503          	lbu	a0,0(s9)
    80004170:	fffc8c93          	addi	s9,s9,-1
    80004174:	00000097          	auipc	ra,0x0
    80004178:	b90080e7          	jalr	-1136(ra) # 80003d04 <consputc>
    8000417c:	ffac98e3          	bne	s9,s10,8000416c <__printf+0x284>
    80004180:	00094503          	lbu	a0,0(s2)
    80004184:	e00514e3          	bnez	a0,80003f8c <__printf+0xa4>
    80004188:	1a0c1663          	bnez	s8,80004334 <__printf+0x44c>
    8000418c:	08813083          	ld	ra,136(sp)
    80004190:	08013403          	ld	s0,128(sp)
    80004194:	07813483          	ld	s1,120(sp)
    80004198:	07013903          	ld	s2,112(sp)
    8000419c:	06813983          	ld	s3,104(sp)
    800041a0:	06013a03          	ld	s4,96(sp)
    800041a4:	05813a83          	ld	s5,88(sp)
    800041a8:	05013b03          	ld	s6,80(sp)
    800041ac:	04813b83          	ld	s7,72(sp)
    800041b0:	04013c03          	ld	s8,64(sp)
    800041b4:	03813c83          	ld	s9,56(sp)
    800041b8:	03013d03          	ld	s10,48(sp)
    800041bc:	02813d83          	ld	s11,40(sp)
    800041c0:	0d010113          	addi	sp,sp,208
    800041c4:	00008067          	ret
    800041c8:	07300713          	li	a4,115
    800041cc:	1ce78a63          	beq	a5,a4,800043a0 <__printf+0x4b8>
    800041d0:	07800713          	li	a4,120
    800041d4:	1ee79e63          	bne	a5,a4,800043d0 <__printf+0x4e8>
    800041d8:	f7843783          	ld	a5,-136(s0)
    800041dc:	0007a703          	lw	a4,0(a5)
    800041e0:	00878793          	addi	a5,a5,8
    800041e4:	f6f43c23          	sd	a5,-136(s0)
    800041e8:	28074263          	bltz	a4,8000446c <__printf+0x584>
    800041ec:	00002d97          	auipc	s11,0x2
    800041f0:	124d8d93          	addi	s11,s11,292 # 80006310 <digits>
    800041f4:	00f77793          	andi	a5,a4,15
    800041f8:	00fd87b3          	add	a5,s11,a5
    800041fc:	0007c683          	lbu	a3,0(a5)
    80004200:	00f00613          	li	a2,15
    80004204:	0007079b          	sext.w	a5,a4
    80004208:	f8d40023          	sb	a3,-128(s0)
    8000420c:	0047559b          	srliw	a1,a4,0x4
    80004210:	0047569b          	srliw	a3,a4,0x4
    80004214:	00000c93          	li	s9,0
    80004218:	0ee65063          	bge	a2,a4,800042f8 <__printf+0x410>
    8000421c:	00f6f693          	andi	a3,a3,15
    80004220:	00dd86b3          	add	a3,s11,a3
    80004224:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004228:	0087d79b          	srliw	a5,a5,0x8
    8000422c:	00100c93          	li	s9,1
    80004230:	f8d400a3          	sb	a3,-127(s0)
    80004234:	0cb67263          	bgeu	a2,a1,800042f8 <__printf+0x410>
    80004238:	00f7f693          	andi	a3,a5,15
    8000423c:	00dd86b3          	add	a3,s11,a3
    80004240:	0006c583          	lbu	a1,0(a3)
    80004244:	00f00613          	li	a2,15
    80004248:	0047d69b          	srliw	a3,a5,0x4
    8000424c:	f8b40123          	sb	a1,-126(s0)
    80004250:	0047d593          	srli	a1,a5,0x4
    80004254:	28f67e63          	bgeu	a2,a5,800044f0 <__printf+0x608>
    80004258:	00f6f693          	andi	a3,a3,15
    8000425c:	00dd86b3          	add	a3,s11,a3
    80004260:	0006c503          	lbu	a0,0(a3)
    80004264:	0087d813          	srli	a6,a5,0x8
    80004268:	0087d69b          	srliw	a3,a5,0x8
    8000426c:	f8a401a3          	sb	a0,-125(s0)
    80004270:	28b67663          	bgeu	a2,a1,800044fc <__printf+0x614>
    80004274:	00f6f693          	andi	a3,a3,15
    80004278:	00dd86b3          	add	a3,s11,a3
    8000427c:	0006c583          	lbu	a1,0(a3)
    80004280:	00c7d513          	srli	a0,a5,0xc
    80004284:	00c7d69b          	srliw	a3,a5,0xc
    80004288:	f8b40223          	sb	a1,-124(s0)
    8000428c:	29067a63          	bgeu	a2,a6,80004520 <__printf+0x638>
    80004290:	00f6f693          	andi	a3,a3,15
    80004294:	00dd86b3          	add	a3,s11,a3
    80004298:	0006c583          	lbu	a1,0(a3)
    8000429c:	0107d813          	srli	a6,a5,0x10
    800042a0:	0107d69b          	srliw	a3,a5,0x10
    800042a4:	f8b402a3          	sb	a1,-123(s0)
    800042a8:	28a67263          	bgeu	a2,a0,8000452c <__printf+0x644>
    800042ac:	00f6f693          	andi	a3,a3,15
    800042b0:	00dd86b3          	add	a3,s11,a3
    800042b4:	0006c683          	lbu	a3,0(a3)
    800042b8:	0147d79b          	srliw	a5,a5,0x14
    800042bc:	f8d40323          	sb	a3,-122(s0)
    800042c0:	21067663          	bgeu	a2,a6,800044cc <__printf+0x5e4>
    800042c4:	02079793          	slli	a5,a5,0x20
    800042c8:	0207d793          	srli	a5,a5,0x20
    800042cc:	00fd8db3          	add	s11,s11,a5
    800042d0:	000dc683          	lbu	a3,0(s11)
    800042d4:	00800793          	li	a5,8
    800042d8:	00700c93          	li	s9,7
    800042dc:	f8d403a3          	sb	a3,-121(s0)
    800042e0:	00075c63          	bgez	a4,800042f8 <__printf+0x410>
    800042e4:	f9040713          	addi	a4,s0,-112
    800042e8:	00f70733          	add	a4,a4,a5
    800042ec:	02d00693          	li	a3,45
    800042f0:	fed70823          	sb	a3,-16(a4)
    800042f4:	00078c93          	mv	s9,a5
    800042f8:	f8040793          	addi	a5,s0,-128
    800042fc:	01978cb3          	add	s9,a5,s9
    80004300:	f7f40d13          	addi	s10,s0,-129
    80004304:	000cc503          	lbu	a0,0(s9)
    80004308:	fffc8c93          	addi	s9,s9,-1
    8000430c:	00000097          	auipc	ra,0x0
    80004310:	9f8080e7          	jalr	-1544(ra) # 80003d04 <consputc>
    80004314:	ff9d18e3          	bne	s10,s9,80004304 <__printf+0x41c>
    80004318:	0100006f          	j	80004328 <__printf+0x440>
    8000431c:	00000097          	auipc	ra,0x0
    80004320:	9e8080e7          	jalr	-1560(ra) # 80003d04 <consputc>
    80004324:	000c8493          	mv	s1,s9
    80004328:	00094503          	lbu	a0,0(s2)
    8000432c:	c60510e3          	bnez	a0,80003f8c <__printf+0xa4>
    80004330:	e40c0ee3          	beqz	s8,8000418c <__printf+0x2a4>
    80004334:	00004517          	auipc	a0,0x4
    80004338:	15c50513          	addi	a0,a0,348 # 80008490 <pr>
    8000433c:	00001097          	auipc	ra,0x1
    80004340:	94c080e7          	jalr	-1716(ra) # 80004c88 <release>
    80004344:	e49ff06f          	j	8000418c <__printf+0x2a4>
    80004348:	f7843783          	ld	a5,-136(s0)
    8000434c:	03000513          	li	a0,48
    80004350:	01000d13          	li	s10,16
    80004354:	00878713          	addi	a4,a5,8
    80004358:	0007bc83          	ld	s9,0(a5)
    8000435c:	f6e43c23          	sd	a4,-136(s0)
    80004360:	00000097          	auipc	ra,0x0
    80004364:	9a4080e7          	jalr	-1628(ra) # 80003d04 <consputc>
    80004368:	07800513          	li	a0,120
    8000436c:	00000097          	auipc	ra,0x0
    80004370:	998080e7          	jalr	-1640(ra) # 80003d04 <consputc>
    80004374:	00002d97          	auipc	s11,0x2
    80004378:	f9cd8d93          	addi	s11,s11,-100 # 80006310 <digits>
    8000437c:	03ccd793          	srli	a5,s9,0x3c
    80004380:	00fd87b3          	add	a5,s11,a5
    80004384:	0007c503          	lbu	a0,0(a5)
    80004388:	fffd0d1b          	addiw	s10,s10,-1
    8000438c:	004c9c93          	slli	s9,s9,0x4
    80004390:	00000097          	auipc	ra,0x0
    80004394:	974080e7          	jalr	-1676(ra) # 80003d04 <consputc>
    80004398:	fe0d12e3          	bnez	s10,8000437c <__printf+0x494>
    8000439c:	f8dff06f          	j	80004328 <__printf+0x440>
    800043a0:	f7843783          	ld	a5,-136(s0)
    800043a4:	0007bc83          	ld	s9,0(a5)
    800043a8:	00878793          	addi	a5,a5,8
    800043ac:	f6f43c23          	sd	a5,-136(s0)
    800043b0:	000c9a63          	bnez	s9,800043c4 <__printf+0x4dc>
    800043b4:	1080006f          	j	800044bc <__printf+0x5d4>
    800043b8:	001c8c93          	addi	s9,s9,1
    800043bc:	00000097          	auipc	ra,0x0
    800043c0:	948080e7          	jalr	-1720(ra) # 80003d04 <consputc>
    800043c4:	000cc503          	lbu	a0,0(s9)
    800043c8:	fe0518e3          	bnez	a0,800043b8 <__printf+0x4d0>
    800043cc:	f5dff06f          	j	80004328 <__printf+0x440>
    800043d0:	02500513          	li	a0,37
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	930080e7          	jalr	-1744(ra) # 80003d04 <consputc>
    800043dc:	000c8513          	mv	a0,s9
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	924080e7          	jalr	-1756(ra) # 80003d04 <consputc>
    800043e8:	f41ff06f          	j	80004328 <__printf+0x440>
    800043ec:	02500513          	li	a0,37
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	914080e7          	jalr	-1772(ra) # 80003d04 <consputc>
    800043f8:	f31ff06f          	j	80004328 <__printf+0x440>
    800043fc:	00030513          	mv	a0,t1
    80004400:	00000097          	auipc	ra,0x0
    80004404:	7bc080e7          	jalr	1980(ra) # 80004bbc <acquire>
    80004408:	b4dff06f          	j	80003f54 <__printf+0x6c>
    8000440c:	40c0053b          	negw	a0,a2
    80004410:	00a00713          	li	a4,10
    80004414:	02e576bb          	remuw	a3,a0,a4
    80004418:	00002d97          	auipc	s11,0x2
    8000441c:	ef8d8d93          	addi	s11,s11,-264 # 80006310 <digits>
    80004420:	ff700593          	li	a1,-9
    80004424:	02069693          	slli	a3,a3,0x20
    80004428:	0206d693          	srli	a3,a3,0x20
    8000442c:	00dd86b3          	add	a3,s11,a3
    80004430:	0006c683          	lbu	a3,0(a3)
    80004434:	02e557bb          	divuw	a5,a0,a4
    80004438:	f8d40023          	sb	a3,-128(s0)
    8000443c:	10b65e63          	bge	a2,a1,80004558 <__printf+0x670>
    80004440:	06300593          	li	a1,99
    80004444:	02e7f6bb          	remuw	a3,a5,a4
    80004448:	02069693          	slli	a3,a3,0x20
    8000444c:	0206d693          	srli	a3,a3,0x20
    80004450:	00dd86b3          	add	a3,s11,a3
    80004454:	0006c683          	lbu	a3,0(a3)
    80004458:	02e7d73b          	divuw	a4,a5,a4
    8000445c:	00200793          	li	a5,2
    80004460:	f8d400a3          	sb	a3,-127(s0)
    80004464:	bca5ece3          	bltu	a1,a0,8000403c <__printf+0x154>
    80004468:	ce5ff06f          	j	8000414c <__printf+0x264>
    8000446c:	40e007bb          	negw	a5,a4
    80004470:	00002d97          	auipc	s11,0x2
    80004474:	ea0d8d93          	addi	s11,s11,-352 # 80006310 <digits>
    80004478:	00f7f693          	andi	a3,a5,15
    8000447c:	00dd86b3          	add	a3,s11,a3
    80004480:	0006c583          	lbu	a1,0(a3)
    80004484:	ff100613          	li	a2,-15
    80004488:	0047d69b          	srliw	a3,a5,0x4
    8000448c:	f8b40023          	sb	a1,-128(s0)
    80004490:	0047d59b          	srliw	a1,a5,0x4
    80004494:	0ac75e63          	bge	a4,a2,80004550 <__printf+0x668>
    80004498:	00f6f693          	andi	a3,a3,15
    8000449c:	00dd86b3          	add	a3,s11,a3
    800044a0:	0006c603          	lbu	a2,0(a3)
    800044a4:	00f00693          	li	a3,15
    800044a8:	0087d79b          	srliw	a5,a5,0x8
    800044ac:	f8c400a3          	sb	a2,-127(s0)
    800044b0:	d8b6e4e3          	bltu	a3,a1,80004238 <__printf+0x350>
    800044b4:	00200793          	li	a5,2
    800044b8:	e2dff06f          	j	800042e4 <__printf+0x3fc>
    800044bc:	00002c97          	auipc	s9,0x2
    800044c0:	e34c8c93          	addi	s9,s9,-460 # 800062f0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800044c4:	02800513          	li	a0,40
    800044c8:	ef1ff06f          	j	800043b8 <__printf+0x4d0>
    800044cc:	00700793          	li	a5,7
    800044d0:	00600c93          	li	s9,6
    800044d4:	e0dff06f          	j	800042e0 <__printf+0x3f8>
    800044d8:	00700793          	li	a5,7
    800044dc:	00600c93          	li	s9,6
    800044e0:	c69ff06f          	j	80004148 <__printf+0x260>
    800044e4:	00300793          	li	a5,3
    800044e8:	00200c93          	li	s9,2
    800044ec:	c5dff06f          	j	80004148 <__printf+0x260>
    800044f0:	00300793          	li	a5,3
    800044f4:	00200c93          	li	s9,2
    800044f8:	de9ff06f          	j	800042e0 <__printf+0x3f8>
    800044fc:	00400793          	li	a5,4
    80004500:	00300c93          	li	s9,3
    80004504:	dddff06f          	j	800042e0 <__printf+0x3f8>
    80004508:	00400793          	li	a5,4
    8000450c:	00300c93          	li	s9,3
    80004510:	c39ff06f          	j	80004148 <__printf+0x260>
    80004514:	00500793          	li	a5,5
    80004518:	00400c93          	li	s9,4
    8000451c:	c2dff06f          	j	80004148 <__printf+0x260>
    80004520:	00500793          	li	a5,5
    80004524:	00400c93          	li	s9,4
    80004528:	db9ff06f          	j	800042e0 <__printf+0x3f8>
    8000452c:	00600793          	li	a5,6
    80004530:	00500c93          	li	s9,5
    80004534:	dadff06f          	j	800042e0 <__printf+0x3f8>
    80004538:	00600793          	li	a5,6
    8000453c:	00500c93          	li	s9,5
    80004540:	c09ff06f          	j	80004148 <__printf+0x260>
    80004544:	00800793          	li	a5,8
    80004548:	00700c93          	li	s9,7
    8000454c:	bfdff06f          	j	80004148 <__printf+0x260>
    80004550:	00100793          	li	a5,1
    80004554:	d91ff06f          	j	800042e4 <__printf+0x3fc>
    80004558:	00100793          	li	a5,1
    8000455c:	bf1ff06f          	j	8000414c <__printf+0x264>
    80004560:	00900793          	li	a5,9
    80004564:	00800c93          	li	s9,8
    80004568:	be1ff06f          	j	80004148 <__printf+0x260>
    8000456c:	00002517          	auipc	a0,0x2
    80004570:	d8c50513          	addi	a0,a0,-628 # 800062f8 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004574:	00000097          	auipc	ra,0x0
    80004578:	918080e7          	jalr	-1768(ra) # 80003e8c <panic>

000000008000457c <printfinit>:
    8000457c:	fe010113          	addi	sp,sp,-32
    80004580:	00813823          	sd	s0,16(sp)
    80004584:	00913423          	sd	s1,8(sp)
    80004588:	00113c23          	sd	ra,24(sp)
    8000458c:	02010413          	addi	s0,sp,32
    80004590:	00004497          	auipc	s1,0x4
    80004594:	f0048493          	addi	s1,s1,-256 # 80008490 <pr>
    80004598:	00048513          	mv	a0,s1
    8000459c:	00002597          	auipc	a1,0x2
    800045a0:	d6c58593          	addi	a1,a1,-660 # 80006308 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800045a4:	00000097          	auipc	ra,0x0
    800045a8:	5f4080e7          	jalr	1524(ra) # 80004b98 <initlock>
    800045ac:	01813083          	ld	ra,24(sp)
    800045b0:	01013403          	ld	s0,16(sp)
    800045b4:	0004ac23          	sw	zero,24(s1)
    800045b8:	00813483          	ld	s1,8(sp)
    800045bc:	02010113          	addi	sp,sp,32
    800045c0:	00008067          	ret

00000000800045c4 <uartinit>:
    800045c4:	ff010113          	addi	sp,sp,-16
    800045c8:	00813423          	sd	s0,8(sp)
    800045cc:	01010413          	addi	s0,sp,16
    800045d0:	100007b7          	lui	a5,0x10000
    800045d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800045d8:	f8000713          	li	a4,-128
    800045dc:	00e781a3          	sb	a4,3(a5)
    800045e0:	00300713          	li	a4,3
    800045e4:	00e78023          	sb	a4,0(a5)
    800045e8:	000780a3          	sb	zero,1(a5)
    800045ec:	00e781a3          	sb	a4,3(a5)
    800045f0:	00700693          	li	a3,7
    800045f4:	00d78123          	sb	a3,2(a5)
    800045f8:	00e780a3          	sb	a4,1(a5)
    800045fc:	00813403          	ld	s0,8(sp)
    80004600:	01010113          	addi	sp,sp,16
    80004604:	00008067          	ret

0000000080004608 <uartputc>:
    80004608:	00003797          	auipc	a5,0x3
    8000460c:	c007a783          	lw	a5,-1024(a5) # 80007208 <panicked>
    80004610:	00078463          	beqz	a5,80004618 <uartputc+0x10>
    80004614:	0000006f          	j	80004614 <uartputc+0xc>
    80004618:	fd010113          	addi	sp,sp,-48
    8000461c:	02813023          	sd	s0,32(sp)
    80004620:	00913c23          	sd	s1,24(sp)
    80004624:	01213823          	sd	s2,16(sp)
    80004628:	01313423          	sd	s3,8(sp)
    8000462c:	02113423          	sd	ra,40(sp)
    80004630:	03010413          	addi	s0,sp,48
    80004634:	00003917          	auipc	s2,0x3
    80004638:	bdc90913          	addi	s2,s2,-1060 # 80007210 <uart_tx_r>
    8000463c:	00093783          	ld	a5,0(s2)
    80004640:	00003497          	auipc	s1,0x3
    80004644:	bd848493          	addi	s1,s1,-1064 # 80007218 <uart_tx_w>
    80004648:	0004b703          	ld	a4,0(s1)
    8000464c:	02078693          	addi	a3,a5,32
    80004650:	00050993          	mv	s3,a0
    80004654:	02e69c63          	bne	a3,a4,8000468c <uartputc+0x84>
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	834080e7          	jalr	-1996(ra) # 80004e8c <push_on>
    80004660:	00093783          	ld	a5,0(s2)
    80004664:	0004b703          	ld	a4,0(s1)
    80004668:	02078793          	addi	a5,a5,32
    8000466c:	00e79463          	bne	a5,a4,80004674 <uartputc+0x6c>
    80004670:	0000006f          	j	80004670 <uartputc+0x68>
    80004674:	00001097          	auipc	ra,0x1
    80004678:	88c080e7          	jalr	-1908(ra) # 80004f00 <pop_on>
    8000467c:	00093783          	ld	a5,0(s2)
    80004680:	0004b703          	ld	a4,0(s1)
    80004684:	02078693          	addi	a3,a5,32
    80004688:	fce688e3          	beq	a3,a4,80004658 <uartputc+0x50>
    8000468c:	01f77693          	andi	a3,a4,31
    80004690:	00004597          	auipc	a1,0x4
    80004694:	e2058593          	addi	a1,a1,-480 # 800084b0 <uart_tx_buf>
    80004698:	00d586b3          	add	a3,a1,a3
    8000469c:	00170713          	addi	a4,a4,1
    800046a0:	01368023          	sb	s3,0(a3)
    800046a4:	00e4b023          	sd	a4,0(s1)
    800046a8:	10000637          	lui	a2,0x10000
    800046ac:	02f71063          	bne	a4,a5,800046cc <uartputc+0xc4>
    800046b0:	0340006f          	j	800046e4 <uartputc+0xdc>
    800046b4:	00074703          	lbu	a4,0(a4)
    800046b8:	00f93023          	sd	a5,0(s2)
    800046bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800046c0:	00093783          	ld	a5,0(s2)
    800046c4:	0004b703          	ld	a4,0(s1)
    800046c8:	00f70e63          	beq	a4,a5,800046e4 <uartputc+0xdc>
    800046cc:	00564683          	lbu	a3,5(a2)
    800046d0:	01f7f713          	andi	a4,a5,31
    800046d4:	00e58733          	add	a4,a1,a4
    800046d8:	0206f693          	andi	a3,a3,32
    800046dc:	00178793          	addi	a5,a5,1
    800046e0:	fc069ae3          	bnez	a3,800046b4 <uartputc+0xac>
    800046e4:	02813083          	ld	ra,40(sp)
    800046e8:	02013403          	ld	s0,32(sp)
    800046ec:	01813483          	ld	s1,24(sp)
    800046f0:	01013903          	ld	s2,16(sp)
    800046f4:	00813983          	ld	s3,8(sp)
    800046f8:	03010113          	addi	sp,sp,48
    800046fc:	00008067          	ret

0000000080004700 <uartputc_sync>:
    80004700:	ff010113          	addi	sp,sp,-16
    80004704:	00813423          	sd	s0,8(sp)
    80004708:	01010413          	addi	s0,sp,16
    8000470c:	00003717          	auipc	a4,0x3
    80004710:	afc72703          	lw	a4,-1284(a4) # 80007208 <panicked>
    80004714:	02071663          	bnez	a4,80004740 <uartputc_sync+0x40>
    80004718:	00050793          	mv	a5,a0
    8000471c:	100006b7          	lui	a3,0x10000
    80004720:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004724:	02077713          	andi	a4,a4,32
    80004728:	fe070ce3          	beqz	a4,80004720 <uartputc_sync+0x20>
    8000472c:	0ff7f793          	andi	a5,a5,255
    80004730:	00f68023          	sb	a5,0(a3)
    80004734:	00813403          	ld	s0,8(sp)
    80004738:	01010113          	addi	sp,sp,16
    8000473c:	00008067          	ret
    80004740:	0000006f          	j	80004740 <uartputc_sync+0x40>

0000000080004744 <uartstart>:
    80004744:	ff010113          	addi	sp,sp,-16
    80004748:	00813423          	sd	s0,8(sp)
    8000474c:	01010413          	addi	s0,sp,16
    80004750:	00003617          	auipc	a2,0x3
    80004754:	ac060613          	addi	a2,a2,-1344 # 80007210 <uart_tx_r>
    80004758:	00003517          	auipc	a0,0x3
    8000475c:	ac050513          	addi	a0,a0,-1344 # 80007218 <uart_tx_w>
    80004760:	00063783          	ld	a5,0(a2)
    80004764:	00053703          	ld	a4,0(a0)
    80004768:	04f70263          	beq	a4,a5,800047ac <uartstart+0x68>
    8000476c:	100005b7          	lui	a1,0x10000
    80004770:	00004817          	auipc	a6,0x4
    80004774:	d4080813          	addi	a6,a6,-704 # 800084b0 <uart_tx_buf>
    80004778:	01c0006f          	j	80004794 <uartstart+0x50>
    8000477c:	0006c703          	lbu	a4,0(a3)
    80004780:	00f63023          	sd	a5,0(a2)
    80004784:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004788:	00063783          	ld	a5,0(a2)
    8000478c:	00053703          	ld	a4,0(a0)
    80004790:	00f70e63          	beq	a4,a5,800047ac <uartstart+0x68>
    80004794:	01f7f713          	andi	a4,a5,31
    80004798:	00e806b3          	add	a3,a6,a4
    8000479c:	0055c703          	lbu	a4,5(a1)
    800047a0:	00178793          	addi	a5,a5,1
    800047a4:	02077713          	andi	a4,a4,32
    800047a8:	fc071ae3          	bnez	a4,8000477c <uartstart+0x38>
    800047ac:	00813403          	ld	s0,8(sp)
    800047b0:	01010113          	addi	sp,sp,16
    800047b4:	00008067          	ret

00000000800047b8 <uartgetc>:
    800047b8:	ff010113          	addi	sp,sp,-16
    800047bc:	00813423          	sd	s0,8(sp)
    800047c0:	01010413          	addi	s0,sp,16
    800047c4:	10000737          	lui	a4,0x10000
    800047c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800047cc:	0017f793          	andi	a5,a5,1
    800047d0:	00078c63          	beqz	a5,800047e8 <uartgetc+0x30>
    800047d4:	00074503          	lbu	a0,0(a4)
    800047d8:	0ff57513          	andi	a0,a0,255
    800047dc:	00813403          	ld	s0,8(sp)
    800047e0:	01010113          	addi	sp,sp,16
    800047e4:	00008067          	ret
    800047e8:	fff00513          	li	a0,-1
    800047ec:	ff1ff06f          	j	800047dc <uartgetc+0x24>

00000000800047f0 <uartintr>:
    800047f0:	100007b7          	lui	a5,0x10000
    800047f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800047f8:	0017f793          	andi	a5,a5,1
    800047fc:	0a078463          	beqz	a5,800048a4 <uartintr+0xb4>
    80004800:	fe010113          	addi	sp,sp,-32
    80004804:	00813823          	sd	s0,16(sp)
    80004808:	00913423          	sd	s1,8(sp)
    8000480c:	00113c23          	sd	ra,24(sp)
    80004810:	02010413          	addi	s0,sp,32
    80004814:	100004b7          	lui	s1,0x10000
    80004818:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000481c:	0ff57513          	andi	a0,a0,255
    80004820:	fffff097          	auipc	ra,0xfffff
    80004824:	534080e7          	jalr	1332(ra) # 80003d54 <consoleintr>
    80004828:	0054c783          	lbu	a5,5(s1)
    8000482c:	0017f793          	andi	a5,a5,1
    80004830:	fe0794e3          	bnez	a5,80004818 <uartintr+0x28>
    80004834:	00003617          	auipc	a2,0x3
    80004838:	9dc60613          	addi	a2,a2,-1572 # 80007210 <uart_tx_r>
    8000483c:	00003517          	auipc	a0,0x3
    80004840:	9dc50513          	addi	a0,a0,-1572 # 80007218 <uart_tx_w>
    80004844:	00063783          	ld	a5,0(a2)
    80004848:	00053703          	ld	a4,0(a0)
    8000484c:	04f70263          	beq	a4,a5,80004890 <uartintr+0xa0>
    80004850:	100005b7          	lui	a1,0x10000
    80004854:	00004817          	auipc	a6,0x4
    80004858:	c5c80813          	addi	a6,a6,-932 # 800084b0 <uart_tx_buf>
    8000485c:	01c0006f          	j	80004878 <uartintr+0x88>
    80004860:	0006c703          	lbu	a4,0(a3)
    80004864:	00f63023          	sd	a5,0(a2)
    80004868:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000486c:	00063783          	ld	a5,0(a2)
    80004870:	00053703          	ld	a4,0(a0)
    80004874:	00f70e63          	beq	a4,a5,80004890 <uartintr+0xa0>
    80004878:	01f7f713          	andi	a4,a5,31
    8000487c:	00e806b3          	add	a3,a6,a4
    80004880:	0055c703          	lbu	a4,5(a1)
    80004884:	00178793          	addi	a5,a5,1
    80004888:	02077713          	andi	a4,a4,32
    8000488c:	fc071ae3          	bnez	a4,80004860 <uartintr+0x70>
    80004890:	01813083          	ld	ra,24(sp)
    80004894:	01013403          	ld	s0,16(sp)
    80004898:	00813483          	ld	s1,8(sp)
    8000489c:	02010113          	addi	sp,sp,32
    800048a0:	00008067          	ret
    800048a4:	00003617          	auipc	a2,0x3
    800048a8:	96c60613          	addi	a2,a2,-1684 # 80007210 <uart_tx_r>
    800048ac:	00003517          	auipc	a0,0x3
    800048b0:	96c50513          	addi	a0,a0,-1684 # 80007218 <uart_tx_w>
    800048b4:	00063783          	ld	a5,0(a2)
    800048b8:	00053703          	ld	a4,0(a0)
    800048bc:	04f70263          	beq	a4,a5,80004900 <uartintr+0x110>
    800048c0:	100005b7          	lui	a1,0x10000
    800048c4:	00004817          	auipc	a6,0x4
    800048c8:	bec80813          	addi	a6,a6,-1044 # 800084b0 <uart_tx_buf>
    800048cc:	01c0006f          	j	800048e8 <uartintr+0xf8>
    800048d0:	0006c703          	lbu	a4,0(a3)
    800048d4:	00f63023          	sd	a5,0(a2)
    800048d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800048dc:	00063783          	ld	a5,0(a2)
    800048e0:	00053703          	ld	a4,0(a0)
    800048e4:	02f70063          	beq	a4,a5,80004904 <uartintr+0x114>
    800048e8:	01f7f713          	andi	a4,a5,31
    800048ec:	00e806b3          	add	a3,a6,a4
    800048f0:	0055c703          	lbu	a4,5(a1)
    800048f4:	00178793          	addi	a5,a5,1
    800048f8:	02077713          	andi	a4,a4,32
    800048fc:	fc071ae3          	bnez	a4,800048d0 <uartintr+0xe0>
    80004900:	00008067          	ret
    80004904:	00008067          	ret

0000000080004908 <kinit>:
    80004908:	fc010113          	addi	sp,sp,-64
    8000490c:	02913423          	sd	s1,40(sp)
    80004910:	fffff7b7          	lui	a5,0xfffff
    80004914:	00005497          	auipc	s1,0x5
    80004918:	bbb48493          	addi	s1,s1,-1093 # 800094cf <end+0xfff>
    8000491c:	02813823          	sd	s0,48(sp)
    80004920:	01313c23          	sd	s3,24(sp)
    80004924:	00f4f4b3          	and	s1,s1,a5
    80004928:	02113c23          	sd	ra,56(sp)
    8000492c:	03213023          	sd	s2,32(sp)
    80004930:	01413823          	sd	s4,16(sp)
    80004934:	01513423          	sd	s5,8(sp)
    80004938:	04010413          	addi	s0,sp,64
    8000493c:	000017b7          	lui	a5,0x1
    80004940:	01100993          	li	s3,17
    80004944:	00f487b3          	add	a5,s1,a5
    80004948:	01b99993          	slli	s3,s3,0x1b
    8000494c:	06f9e063          	bltu	s3,a5,800049ac <kinit+0xa4>
    80004950:	00004a97          	auipc	s5,0x4
    80004954:	b80a8a93          	addi	s5,s5,-1152 # 800084d0 <end>
    80004958:	0754ec63          	bltu	s1,s5,800049d0 <kinit+0xc8>
    8000495c:	0734fa63          	bgeu	s1,s3,800049d0 <kinit+0xc8>
    80004960:	00088a37          	lui	s4,0x88
    80004964:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004968:	00003917          	auipc	s2,0x3
    8000496c:	8b890913          	addi	s2,s2,-1864 # 80007220 <kmem>
    80004970:	00ca1a13          	slli	s4,s4,0xc
    80004974:	0140006f          	j	80004988 <kinit+0x80>
    80004978:	000017b7          	lui	a5,0x1
    8000497c:	00f484b3          	add	s1,s1,a5
    80004980:	0554e863          	bltu	s1,s5,800049d0 <kinit+0xc8>
    80004984:	0534f663          	bgeu	s1,s3,800049d0 <kinit+0xc8>
    80004988:	00001637          	lui	a2,0x1
    8000498c:	00100593          	li	a1,1
    80004990:	00048513          	mv	a0,s1
    80004994:	00000097          	auipc	ra,0x0
    80004998:	5e4080e7          	jalr	1508(ra) # 80004f78 <__memset>
    8000499c:	00093783          	ld	a5,0(s2)
    800049a0:	00f4b023          	sd	a5,0(s1)
    800049a4:	00993023          	sd	s1,0(s2)
    800049a8:	fd4498e3          	bne	s1,s4,80004978 <kinit+0x70>
    800049ac:	03813083          	ld	ra,56(sp)
    800049b0:	03013403          	ld	s0,48(sp)
    800049b4:	02813483          	ld	s1,40(sp)
    800049b8:	02013903          	ld	s2,32(sp)
    800049bc:	01813983          	ld	s3,24(sp)
    800049c0:	01013a03          	ld	s4,16(sp)
    800049c4:	00813a83          	ld	s5,8(sp)
    800049c8:	04010113          	addi	sp,sp,64
    800049cc:	00008067          	ret
    800049d0:	00002517          	auipc	a0,0x2
    800049d4:	95850513          	addi	a0,a0,-1704 # 80006328 <digits+0x18>
    800049d8:	fffff097          	auipc	ra,0xfffff
    800049dc:	4b4080e7          	jalr	1204(ra) # 80003e8c <panic>

00000000800049e0 <freerange>:
    800049e0:	fc010113          	addi	sp,sp,-64
    800049e4:	000017b7          	lui	a5,0x1
    800049e8:	02913423          	sd	s1,40(sp)
    800049ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800049f0:	009504b3          	add	s1,a0,s1
    800049f4:	fffff537          	lui	a0,0xfffff
    800049f8:	02813823          	sd	s0,48(sp)
    800049fc:	02113c23          	sd	ra,56(sp)
    80004a00:	03213023          	sd	s2,32(sp)
    80004a04:	01313c23          	sd	s3,24(sp)
    80004a08:	01413823          	sd	s4,16(sp)
    80004a0c:	01513423          	sd	s5,8(sp)
    80004a10:	01613023          	sd	s6,0(sp)
    80004a14:	04010413          	addi	s0,sp,64
    80004a18:	00a4f4b3          	and	s1,s1,a0
    80004a1c:	00f487b3          	add	a5,s1,a5
    80004a20:	06f5e463          	bltu	a1,a5,80004a88 <freerange+0xa8>
    80004a24:	00004a97          	auipc	s5,0x4
    80004a28:	aaca8a93          	addi	s5,s5,-1364 # 800084d0 <end>
    80004a2c:	0954e263          	bltu	s1,s5,80004ab0 <freerange+0xd0>
    80004a30:	01100993          	li	s3,17
    80004a34:	01b99993          	slli	s3,s3,0x1b
    80004a38:	0734fc63          	bgeu	s1,s3,80004ab0 <freerange+0xd0>
    80004a3c:	00058a13          	mv	s4,a1
    80004a40:	00002917          	auipc	s2,0x2
    80004a44:	7e090913          	addi	s2,s2,2016 # 80007220 <kmem>
    80004a48:	00002b37          	lui	s6,0x2
    80004a4c:	0140006f          	j	80004a60 <freerange+0x80>
    80004a50:	000017b7          	lui	a5,0x1
    80004a54:	00f484b3          	add	s1,s1,a5
    80004a58:	0554ec63          	bltu	s1,s5,80004ab0 <freerange+0xd0>
    80004a5c:	0534fa63          	bgeu	s1,s3,80004ab0 <freerange+0xd0>
    80004a60:	00001637          	lui	a2,0x1
    80004a64:	00100593          	li	a1,1
    80004a68:	00048513          	mv	a0,s1
    80004a6c:	00000097          	auipc	ra,0x0
    80004a70:	50c080e7          	jalr	1292(ra) # 80004f78 <__memset>
    80004a74:	00093703          	ld	a4,0(s2)
    80004a78:	016487b3          	add	a5,s1,s6
    80004a7c:	00e4b023          	sd	a4,0(s1)
    80004a80:	00993023          	sd	s1,0(s2)
    80004a84:	fcfa76e3          	bgeu	s4,a5,80004a50 <freerange+0x70>
    80004a88:	03813083          	ld	ra,56(sp)
    80004a8c:	03013403          	ld	s0,48(sp)
    80004a90:	02813483          	ld	s1,40(sp)
    80004a94:	02013903          	ld	s2,32(sp)
    80004a98:	01813983          	ld	s3,24(sp)
    80004a9c:	01013a03          	ld	s4,16(sp)
    80004aa0:	00813a83          	ld	s5,8(sp)
    80004aa4:	00013b03          	ld	s6,0(sp)
    80004aa8:	04010113          	addi	sp,sp,64
    80004aac:	00008067          	ret
    80004ab0:	00002517          	auipc	a0,0x2
    80004ab4:	87850513          	addi	a0,a0,-1928 # 80006328 <digits+0x18>
    80004ab8:	fffff097          	auipc	ra,0xfffff
    80004abc:	3d4080e7          	jalr	980(ra) # 80003e8c <panic>

0000000080004ac0 <kfree>:
    80004ac0:	fe010113          	addi	sp,sp,-32
    80004ac4:	00813823          	sd	s0,16(sp)
    80004ac8:	00113c23          	sd	ra,24(sp)
    80004acc:	00913423          	sd	s1,8(sp)
    80004ad0:	02010413          	addi	s0,sp,32
    80004ad4:	03451793          	slli	a5,a0,0x34
    80004ad8:	04079c63          	bnez	a5,80004b30 <kfree+0x70>
    80004adc:	00004797          	auipc	a5,0x4
    80004ae0:	9f478793          	addi	a5,a5,-1548 # 800084d0 <end>
    80004ae4:	00050493          	mv	s1,a0
    80004ae8:	04f56463          	bltu	a0,a5,80004b30 <kfree+0x70>
    80004aec:	01100793          	li	a5,17
    80004af0:	01b79793          	slli	a5,a5,0x1b
    80004af4:	02f57e63          	bgeu	a0,a5,80004b30 <kfree+0x70>
    80004af8:	00001637          	lui	a2,0x1
    80004afc:	00100593          	li	a1,1
    80004b00:	00000097          	auipc	ra,0x0
    80004b04:	478080e7          	jalr	1144(ra) # 80004f78 <__memset>
    80004b08:	00002797          	auipc	a5,0x2
    80004b0c:	71878793          	addi	a5,a5,1816 # 80007220 <kmem>
    80004b10:	0007b703          	ld	a4,0(a5)
    80004b14:	01813083          	ld	ra,24(sp)
    80004b18:	01013403          	ld	s0,16(sp)
    80004b1c:	00e4b023          	sd	a4,0(s1)
    80004b20:	0097b023          	sd	s1,0(a5)
    80004b24:	00813483          	ld	s1,8(sp)
    80004b28:	02010113          	addi	sp,sp,32
    80004b2c:	00008067          	ret
    80004b30:	00001517          	auipc	a0,0x1
    80004b34:	7f850513          	addi	a0,a0,2040 # 80006328 <digits+0x18>
    80004b38:	fffff097          	auipc	ra,0xfffff
    80004b3c:	354080e7          	jalr	852(ra) # 80003e8c <panic>

0000000080004b40 <kalloc>:
    80004b40:	fe010113          	addi	sp,sp,-32
    80004b44:	00813823          	sd	s0,16(sp)
    80004b48:	00913423          	sd	s1,8(sp)
    80004b4c:	00113c23          	sd	ra,24(sp)
    80004b50:	02010413          	addi	s0,sp,32
    80004b54:	00002797          	auipc	a5,0x2
    80004b58:	6cc78793          	addi	a5,a5,1740 # 80007220 <kmem>
    80004b5c:	0007b483          	ld	s1,0(a5)
    80004b60:	02048063          	beqz	s1,80004b80 <kalloc+0x40>
    80004b64:	0004b703          	ld	a4,0(s1)
    80004b68:	00001637          	lui	a2,0x1
    80004b6c:	00500593          	li	a1,5
    80004b70:	00048513          	mv	a0,s1
    80004b74:	00e7b023          	sd	a4,0(a5)
    80004b78:	00000097          	auipc	ra,0x0
    80004b7c:	400080e7          	jalr	1024(ra) # 80004f78 <__memset>
    80004b80:	01813083          	ld	ra,24(sp)
    80004b84:	01013403          	ld	s0,16(sp)
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	00813483          	ld	s1,8(sp)
    80004b90:	02010113          	addi	sp,sp,32
    80004b94:	00008067          	ret

0000000080004b98 <initlock>:
    80004b98:	ff010113          	addi	sp,sp,-16
    80004b9c:	00813423          	sd	s0,8(sp)
    80004ba0:	01010413          	addi	s0,sp,16
    80004ba4:	00813403          	ld	s0,8(sp)
    80004ba8:	00b53423          	sd	a1,8(a0)
    80004bac:	00052023          	sw	zero,0(a0)
    80004bb0:	00053823          	sd	zero,16(a0)
    80004bb4:	01010113          	addi	sp,sp,16
    80004bb8:	00008067          	ret

0000000080004bbc <acquire>:
    80004bbc:	fe010113          	addi	sp,sp,-32
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00913423          	sd	s1,8(sp)
    80004bc8:	00113c23          	sd	ra,24(sp)
    80004bcc:	01213023          	sd	s2,0(sp)
    80004bd0:	02010413          	addi	s0,sp,32
    80004bd4:	00050493          	mv	s1,a0
    80004bd8:	10002973          	csrr	s2,sstatus
    80004bdc:	100027f3          	csrr	a5,sstatus
    80004be0:	ffd7f793          	andi	a5,a5,-3
    80004be4:	10079073          	csrw	sstatus,a5
    80004be8:	fffff097          	auipc	ra,0xfffff
    80004bec:	8e8080e7          	jalr	-1816(ra) # 800034d0 <mycpu>
    80004bf0:	07852783          	lw	a5,120(a0)
    80004bf4:	06078e63          	beqz	a5,80004c70 <acquire+0xb4>
    80004bf8:	fffff097          	auipc	ra,0xfffff
    80004bfc:	8d8080e7          	jalr	-1832(ra) # 800034d0 <mycpu>
    80004c00:	07852783          	lw	a5,120(a0)
    80004c04:	0004a703          	lw	a4,0(s1)
    80004c08:	0017879b          	addiw	a5,a5,1
    80004c0c:	06f52c23          	sw	a5,120(a0)
    80004c10:	04071063          	bnez	a4,80004c50 <acquire+0x94>
    80004c14:	00100713          	li	a4,1
    80004c18:	00070793          	mv	a5,a4
    80004c1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004c20:	0007879b          	sext.w	a5,a5
    80004c24:	fe079ae3          	bnez	a5,80004c18 <acquire+0x5c>
    80004c28:	0ff0000f          	fence
    80004c2c:	fffff097          	auipc	ra,0xfffff
    80004c30:	8a4080e7          	jalr	-1884(ra) # 800034d0 <mycpu>
    80004c34:	01813083          	ld	ra,24(sp)
    80004c38:	01013403          	ld	s0,16(sp)
    80004c3c:	00a4b823          	sd	a0,16(s1)
    80004c40:	00013903          	ld	s2,0(sp)
    80004c44:	00813483          	ld	s1,8(sp)
    80004c48:	02010113          	addi	sp,sp,32
    80004c4c:	00008067          	ret
    80004c50:	0104b903          	ld	s2,16(s1)
    80004c54:	fffff097          	auipc	ra,0xfffff
    80004c58:	87c080e7          	jalr	-1924(ra) # 800034d0 <mycpu>
    80004c5c:	faa91ce3          	bne	s2,a0,80004c14 <acquire+0x58>
    80004c60:	00001517          	auipc	a0,0x1
    80004c64:	6d050513          	addi	a0,a0,1744 # 80006330 <digits+0x20>
    80004c68:	fffff097          	auipc	ra,0xfffff
    80004c6c:	224080e7          	jalr	548(ra) # 80003e8c <panic>
    80004c70:	00195913          	srli	s2,s2,0x1
    80004c74:	fffff097          	auipc	ra,0xfffff
    80004c78:	85c080e7          	jalr	-1956(ra) # 800034d0 <mycpu>
    80004c7c:	00197913          	andi	s2,s2,1
    80004c80:	07252e23          	sw	s2,124(a0)
    80004c84:	f75ff06f          	j	80004bf8 <acquire+0x3c>

0000000080004c88 <release>:
    80004c88:	fe010113          	addi	sp,sp,-32
    80004c8c:	00813823          	sd	s0,16(sp)
    80004c90:	00113c23          	sd	ra,24(sp)
    80004c94:	00913423          	sd	s1,8(sp)
    80004c98:	01213023          	sd	s2,0(sp)
    80004c9c:	02010413          	addi	s0,sp,32
    80004ca0:	00052783          	lw	a5,0(a0)
    80004ca4:	00079a63          	bnez	a5,80004cb8 <release+0x30>
    80004ca8:	00001517          	auipc	a0,0x1
    80004cac:	69050513          	addi	a0,a0,1680 # 80006338 <digits+0x28>
    80004cb0:	fffff097          	auipc	ra,0xfffff
    80004cb4:	1dc080e7          	jalr	476(ra) # 80003e8c <panic>
    80004cb8:	01053903          	ld	s2,16(a0)
    80004cbc:	00050493          	mv	s1,a0
    80004cc0:	fffff097          	auipc	ra,0xfffff
    80004cc4:	810080e7          	jalr	-2032(ra) # 800034d0 <mycpu>
    80004cc8:	fea910e3          	bne	s2,a0,80004ca8 <release+0x20>
    80004ccc:	0004b823          	sd	zero,16(s1)
    80004cd0:	0ff0000f          	fence
    80004cd4:	0f50000f          	fence	iorw,ow
    80004cd8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004cdc:	ffffe097          	auipc	ra,0xffffe
    80004ce0:	7f4080e7          	jalr	2036(ra) # 800034d0 <mycpu>
    80004ce4:	100027f3          	csrr	a5,sstatus
    80004ce8:	0027f793          	andi	a5,a5,2
    80004cec:	04079a63          	bnez	a5,80004d40 <release+0xb8>
    80004cf0:	07852783          	lw	a5,120(a0)
    80004cf4:	02f05e63          	blez	a5,80004d30 <release+0xa8>
    80004cf8:	fff7871b          	addiw	a4,a5,-1
    80004cfc:	06e52c23          	sw	a4,120(a0)
    80004d00:	00071c63          	bnez	a4,80004d18 <release+0x90>
    80004d04:	07c52783          	lw	a5,124(a0)
    80004d08:	00078863          	beqz	a5,80004d18 <release+0x90>
    80004d0c:	100027f3          	csrr	a5,sstatus
    80004d10:	0027e793          	ori	a5,a5,2
    80004d14:	10079073          	csrw	sstatus,a5
    80004d18:	01813083          	ld	ra,24(sp)
    80004d1c:	01013403          	ld	s0,16(sp)
    80004d20:	00813483          	ld	s1,8(sp)
    80004d24:	00013903          	ld	s2,0(sp)
    80004d28:	02010113          	addi	sp,sp,32
    80004d2c:	00008067          	ret
    80004d30:	00001517          	auipc	a0,0x1
    80004d34:	62850513          	addi	a0,a0,1576 # 80006358 <digits+0x48>
    80004d38:	fffff097          	auipc	ra,0xfffff
    80004d3c:	154080e7          	jalr	340(ra) # 80003e8c <panic>
    80004d40:	00001517          	auipc	a0,0x1
    80004d44:	60050513          	addi	a0,a0,1536 # 80006340 <digits+0x30>
    80004d48:	fffff097          	auipc	ra,0xfffff
    80004d4c:	144080e7          	jalr	324(ra) # 80003e8c <panic>

0000000080004d50 <holding>:
    80004d50:	00052783          	lw	a5,0(a0)
    80004d54:	00079663          	bnez	a5,80004d60 <holding+0x10>
    80004d58:	00000513          	li	a0,0
    80004d5c:	00008067          	ret
    80004d60:	fe010113          	addi	sp,sp,-32
    80004d64:	00813823          	sd	s0,16(sp)
    80004d68:	00913423          	sd	s1,8(sp)
    80004d6c:	00113c23          	sd	ra,24(sp)
    80004d70:	02010413          	addi	s0,sp,32
    80004d74:	01053483          	ld	s1,16(a0)
    80004d78:	ffffe097          	auipc	ra,0xffffe
    80004d7c:	758080e7          	jalr	1880(ra) # 800034d0 <mycpu>
    80004d80:	01813083          	ld	ra,24(sp)
    80004d84:	01013403          	ld	s0,16(sp)
    80004d88:	40a48533          	sub	a0,s1,a0
    80004d8c:	00153513          	seqz	a0,a0
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	02010113          	addi	sp,sp,32
    80004d98:	00008067          	ret

0000000080004d9c <push_off>:
    80004d9c:	fe010113          	addi	sp,sp,-32
    80004da0:	00813823          	sd	s0,16(sp)
    80004da4:	00113c23          	sd	ra,24(sp)
    80004da8:	00913423          	sd	s1,8(sp)
    80004dac:	02010413          	addi	s0,sp,32
    80004db0:	100024f3          	csrr	s1,sstatus
    80004db4:	100027f3          	csrr	a5,sstatus
    80004db8:	ffd7f793          	andi	a5,a5,-3
    80004dbc:	10079073          	csrw	sstatus,a5
    80004dc0:	ffffe097          	auipc	ra,0xffffe
    80004dc4:	710080e7          	jalr	1808(ra) # 800034d0 <mycpu>
    80004dc8:	07852783          	lw	a5,120(a0)
    80004dcc:	02078663          	beqz	a5,80004df8 <push_off+0x5c>
    80004dd0:	ffffe097          	auipc	ra,0xffffe
    80004dd4:	700080e7          	jalr	1792(ra) # 800034d0 <mycpu>
    80004dd8:	07852783          	lw	a5,120(a0)
    80004ddc:	01813083          	ld	ra,24(sp)
    80004de0:	01013403          	ld	s0,16(sp)
    80004de4:	0017879b          	addiw	a5,a5,1
    80004de8:	06f52c23          	sw	a5,120(a0)
    80004dec:	00813483          	ld	s1,8(sp)
    80004df0:	02010113          	addi	sp,sp,32
    80004df4:	00008067          	ret
    80004df8:	0014d493          	srli	s1,s1,0x1
    80004dfc:	ffffe097          	auipc	ra,0xffffe
    80004e00:	6d4080e7          	jalr	1748(ra) # 800034d0 <mycpu>
    80004e04:	0014f493          	andi	s1,s1,1
    80004e08:	06952e23          	sw	s1,124(a0)
    80004e0c:	fc5ff06f          	j	80004dd0 <push_off+0x34>

0000000080004e10 <pop_off>:
    80004e10:	ff010113          	addi	sp,sp,-16
    80004e14:	00813023          	sd	s0,0(sp)
    80004e18:	00113423          	sd	ra,8(sp)
    80004e1c:	01010413          	addi	s0,sp,16
    80004e20:	ffffe097          	auipc	ra,0xffffe
    80004e24:	6b0080e7          	jalr	1712(ra) # 800034d0 <mycpu>
    80004e28:	100027f3          	csrr	a5,sstatus
    80004e2c:	0027f793          	andi	a5,a5,2
    80004e30:	04079663          	bnez	a5,80004e7c <pop_off+0x6c>
    80004e34:	07852783          	lw	a5,120(a0)
    80004e38:	02f05a63          	blez	a5,80004e6c <pop_off+0x5c>
    80004e3c:	fff7871b          	addiw	a4,a5,-1
    80004e40:	06e52c23          	sw	a4,120(a0)
    80004e44:	00071c63          	bnez	a4,80004e5c <pop_off+0x4c>
    80004e48:	07c52783          	lw	a5,124(a0)
    80004e4c:	00078863          	beqz	a5,80004e5c <pop_off+0x4c>
    80004e50:	100027f3          	csrr	a5,sstatus
    80004e54:	0027e793          	ori	a5,a5,2
    80004e58:	10079073          	csrw	sstatus,a5
    80004e5c:	00813083          	ld	ra,8(sp)
    80004e60:	00013403          	ld	s0,0(sp)
    80004e64:	01010113          	addi	sp,sp,16
    80004e68:	00008067          	ret
    80004e6c:	00001517          	auipc	a0,0x1
    80004e70:	4ec50513          	addi	a0,a0,1260 # 80006358 <digits+0x48>
    80004e74:	fffff097          	auipc	ra,0xfffff
    80004e78:	018080e7          	jalr	24(ra) # 80003e8c <panic>
    80004e7c:	00001517          	auipc	a0,0x1
    80004e80:	4c450513          	addi	a0,a0,1220 # 80006340 <digits+0x30>
    80004e84:	fffff097          	auipc	ra,0xfffff
    80004e88:	008080e7          	jalr	8(ra) # 80003e8c <panic>

0000000080004e8c <push_on>:
    80004e8c:	fe010113          	addi	sp,sp,-32
    80004e90:	00813823          	sd	s0,16(sp)
    80004e94:	00113c23          	sd	ra,24(sp)
    80004e98:	00913423          	sd	s1,8(sp)
    80004e9c:	02010413          	addi	s0,sp,32
    80004ea0:	100024f3          	csrr	s1,sstatus
    80004ea4:	100027f3          	csrr	a5,sstatus
    80004ea8:	0027e793          	ori	a5,a5,2
    80004eac:	10079073          	csrw	sstatus,a5
    80004eb0:	ffffe097          	auipc	ra,0xffffe
    80004eb4:	620080e7          	jalr	1568(ra) # 800034d0 <mycpu>
    80004eb8:	07852783          	lw	a5,120(a0)
    80004ebc:	02078663          	beqz	a5,80004ee8 <push_on+0x5c>
    80004ec0:	ffffe097          	auipc	ra,0xffffe
    80004ec4:	610080e7          	jalr	1552(ra) # 800034d0 <mycpu>
    80004ec8:	07852783          	lw	a5,120(a0)
    80004ecc:	01813083          	ld	ra,24(sp)
    80004ed0:	01013403          	ld	s0,16(sp)
    80004ed4:	0017879b          	addiw	a5,a5,1
    80004ed8:	06f52c23          	sw	a5,120(a0)
    80004edc:	00813483          	ld	s1,8(sp)
    80004ee0:	02010113          	addi	sp,sp,32
    80004ee4:	00008067          	ret
    80004ee8:	0014d493          	srli	s1,s1,0x1
    80004eec:	ffffe097          	auipc	ra,0xffffe
    80004ef0:	5e4080e7          	jalr	1508(ra) # 800034d0 <mycpu>
    80004ef4:	0014f493          	andi	s1,s1,1
    80004ef8:	06952e23          	sw	s1,124(a0)
    80004efc:	fc5ff06f          	j	80004ec0 <push_on+0x34>

0000000080004f00 <pop_on>:
    80004f00:	ff010113          	addi	sp,sp,-16
    80004f04:	00813023          	sd	s0,0(sp)
    80004f08:	00113423          	sd	ra,8(sp)
    80004f0c:	01010413          	addi	s0,sp,16
    80004f10:	ffffe097          	auipc	ra,0xffffe
    80004f14:	5c0080e7          	jalr	1472(ra) # 800034d0 <mycpu>
    80004f18:	100027f3          	csrr	a5,sstatus
    80004f1c:	0027f793          	andi	a5,a5,2
    80004f20:	04078463          	beqz	a5,80004f68 <pop_on+0x68>
    80004f24:	07852783          	lw	a5,120(a0)
    80004f28:	02f05863          	blez	a5,80004f58 <pop_on+0x58>
    80004f2c:	fff7879b          	addiw	a5,a5,-1
    80004f30:	06f52c23          	sw	a5,120(a0)
    80004f34:	07853783          	ld	a5,120(a0)
    80004f38:	00079863          	bnez	a5,80004f48 <pop_on+0x48>
    80004f3c:	100027f3          	csrr	a5,sstatus
    80004f40:	ffd7f793          	andi	a5,a5,-3
    80004f44:	10079073          	csrw	sstatus,a5
    80004f48:	00813083          	ld	ra,8(sp)
    80004f4c:	00013403          	ld	s0,0(sp)
    80004f50:	01010113          	addi	sp,sp,16
    80004f54:	00008067          	ret
    80004f58:	00001517          	auipc	a0,0x1
    80004f5c:	42850513          	addi	a0,a0,1064 # 80006380 <digits+0x70>
    80004f60:	fffff097          	auipc	ra,0xfffff
    80004f64:	f2c080e7          	jalr	-212(ra) # 80003e8c <panic>
    80004f68:	00001517          	auipc	a0,0x1
    80004f6c:	3f850513          	addi	a0,a0,1016 # 80006360 <digits+0x50>
    80004f70:	fffff097          	auipc	ra,0xfffff
    80004f74:	f1c080e7          	jalr	-228(ra) # 80003e8c <panic>

0000000080004f78 <__memset>:
    80004f78:	ff010113          	addi	sp,sp,-16
    80004f7c:	00813423          	sd	s0,8(sp)
    80004f80:	01010413          	addi	s0,sp,16
    80004f84:	1a060e63          	beqz	a2,80005140 <__memset+0x1c8>
    80004f88:	40a007b3          	neg	a5,a0
    80004f8c:	0077f793          	andi	a5,a5,7
    80004f90:	00778693          	addi	a3,a5,7
    80004f94:	00b00813          	li	a6,11
    80004f98:	0ff5f593          	andi	a1,a1,255
    80004f9c:	fff6071b          	addiw	a4,a2,-1
    80004fa0:	1b06e663          	bltu	a3,a6,8000514c <__memset+0x1d4>
    80004fa4:	1cd76463          	bltu	a4,a3,8000516c <__memset+0x1f4>
    80004fa8:	1a078e63          	beqz	a5,80005164 <__memset+0x1ec>
    80004fac:	00b50023          	sb	a1,0(a0)
    80004fb0:	00100713          	li	a4,1
    80004fb4:	1ae78463          	beq	a5,a4,8000515c <__memset+0x1e4>
    80004fb8:	00b500a3          	sb	a1,1(a0)
    80004fbc:	00200713          	li	a4,2
    80004fc0:	1ae78a63          	beq	a5,a4,80005174 <__memset+0x1fc>
    80004fc4:	00b50123          	sb	a1,2(a0)
    80004fc8:	00300713          	li	a4,3
    80004fcc:	18e78463          	beq	a5,a4,80005154 <__memset+0x1dc>
    80004fd0:	00b501a3          	sb	a1,3(a0)
    80004fd4:	00400713          	li	a4,4
    80004fd8:	1ae78263          	beq	a5,a4,8000517c <__memset+0x204>
    80004fdc:	00b50223          	sb	a1,4(a0)
    80004fe0:	00500713          	li	a4,5
    80004fe4:	1ae78063          	beq	a5,a4,80005184 <__memset+0x20c>
    80004fe8:	00b502a3          	sb	a1,5(a0)
    80004fec:	00700713          	li	a4,7
    80004ff0:	18e79e63          	bne	a5,a4,8000518c <__memset+0x214>
    80004ff4:	00b50323          	sb	a1,6(a0)
    80004ff8:	00700e93          	li	t4,7
    80004ffc:	00859713          	slli	a4,a1,0x8
    80005000:	00e5e733          	or	a4,a1,a4
    80005004:	01059e13          	slli	t3,a1,0x10
    80005008:	01c76e33          	or	t3,a4,t3
    8000500c:	01859313          	slli	t1,a1,0x18
    80005010:	006e6333          	or	t1,t3,t1
    80005014:	02059893          	slli	a7,a1,0x20
    80005018:	40f60e3b          	subw	t3,a2,a5
    8000501c:	011368b3          	or	a7,t1,a7
    80005020:	02859813          	slli	a6,a1,0x28
    80005024:	0108e833          	or	a6,a7,a6
    80005028:	03059693          	slli	a3,a1,0x30
    8000502c:	003e589b          	srliw	a7,t3,0x3
    80005030:	00d866b3          	or	a3,a6,a3
    80005034:	03859713          	slli	a4,a1,0x38
    80005038:	00389813          	slli	a6,a7,0x3
    8000503c:	00f507b3          	add	a5,a0,a5
    80005040:	00e6e733          	or	a4,a3,a4
    80005044:	000e089b          	sext.w	a7,t3
    80005048:	00f806b3          	add	a3,a6,a5
    8000504c:	00e7b023          	sd	a4,0(a5)
    80005050:	00878793          	addi	a5,a5,8
    80005054:	fed79ce3          	bne	a5,a3,8000504c <__memset+0xd4>
    80005058:	ff8e7793          	andi	a5,t3,-8
    8000505c:	0007871b          	sext.w	a4,a5
    80005060:	01d787bb          	addw	a5,a5,t4
    80005064:	0ce88e63          	beq	a7,a4,80005140 <__memset+0x1c8>
    80005068:	00f50733          	add	a4,a0,a5
    8000506c:	00b70023          	sb	a1,0(a4)
    80005070:	0017871b          	addiw	a4,a5,1
    80005074:	0cc77663          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    80005078:	00e50733          	add	a4,a0,a4
    8000507c:	00b70023          	sb	a1,0(a4)
    80005080:	0027871b          	addiw	a4,a5,2
    80005084:	0ac77e63          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    80005088:	00e50733          	add	a4,a0,a4
    8000508c:	00b70023          	sb	a1,0(a4)
    80005090:	0037871b          	addiw	a4,a5,3
    80005094:	0ac77663          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    80005098:	00e50733          	add	a4,a0,a4
    8000509c:	00b70023          	sb	a1,0(a4)
    800050a0:	0047871b          	addiw	a4,a5,4
    800050a4:	08c77e63          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    800050a8:	00e50733          	add	a4,a0,a4
    800050ac:	00b70023          	sb	a1,0(a4)
    800050b0:	0057871b          	addiw	a4,a5,5
    800050b4:	08c77663          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    800050b8:	00e50733          	add	a4,a0,a4
    800050bc:	00b70023          	sb	a1,0(a4)
    800050c0:	0067871b          	addiw	a4,a5,6
    800050c4:	06c77e63          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    800050c8:	00e50733          	add	a4,a0,a4
    800050cc:	00b70023          	sb	a1,0(a4)
    800050d0:	0077871b          	addiw	a4,a5,7
    800050d4:	06c77663          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    800050d8:	00e50733          	add	a4,a0,a4
    800050dc:	00b70023          	sb	a1,0(a4)
    800050e0:	0087871b          	addiw	a4,a5,8
    800050e4:	04c77e63          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    800050e8:	00e50733          	add	a4,a0,a4
    800050ec:	00b70023          	sb	a1,0(a4)
    800050f0:	0097871b          	addiw	a4,a5,9
    800050f4:	04c77663          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    800050f8:	00e50733          	add	a4,a0,a4
    800050fc:	00b70023          	sb	a1,0(a4)
    80005100:	00a7871b          	addiw	a4,a5,10
    80005104:	02c77e63          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    80005108:	00e50733          	add	a4,a0,a4
    8000510c:	00b70023          	sb	a1,0(a4)
    80005110:	00b7871b          	addiw	a4,a5,11
    80005114:	02c77663          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    80005118:	00e50733          	add	a4,a0,a4
    8000511c:	00b70023          	sb	a1,0(a4)
    80005120:	00c7871b          	addiw	a4,a5,12
    80005124:	00c77e63          	bgeu	a4,a2,80005140 <__memset+0x1c8>
    80005128:	00e50733          	add	a4,a0,a4
    8000512c:	00b70023          	sb	a1,0(a4)
    80005130:	00d7879b          	addiw	a5,a5,13
    80005134:	00c7f663          	bgeu	a5,a2,80005140 <__memset+0x1c8>
    80005138:	00f507b3          	add	a5,a0,a5
    8000513c:	00b78023          	sb	a1,0(a5)
    80005140:	00813403          	ld	s0,8(sp)
    80005144:	01010113          	addi	sp,sp,16
    80005148:	00008067          	ret
    8000514c:	00b00693          	li	a3,11
    80005150:	e55ff06f          	j	80004fa4 <__memset+0x2c>
    80005154:	00300e93          	li	t4,3
    80005158:	ea5ff06f          	j	80004ffc <__memset+0x84>
    8000515c:	00100e93          	li	t4,1
    80005160:	e9dff06f          	j	80004ffc <__memset+0x84>
    80005164:	00000e93          	li	t4,0
    80005168:	e95ff06f          	j	80004ffc <__memset+0x84>
    8000516c:	00000793          	li	a5,0
    80005170:	ef9ff06f          	j	80005068 <__memset+0xf0>
    80005174:	00200e93          	li	t4,2
    80005178:	e85ff06f          	j	80004ffc <__memset+0x84>
    8000517c:	00400e93          	li	t4,4
    80005180:	e7dff06f          	j	80004ffc <__memset+0x84>
    80005184:	00500e93          	li	t4,5
    80005188:	e75ff06f          	j	80004ffc <__memset+0x84>
    8000518c:	00600e93          	li	t4,6
    80005190:	e6dff06f          	j	80004ffc <__memset+0x84>

0000000080005194 <__memmove>:
    80005194:	ff010113          	addi	sp,sp,-16
    80005198:	00813423          	sd	s0,8(sp)
    8000519c:	01010413          	addi	s0,sp,16
    800051a0:	0e060863          	beqz	a2,80005290 <__memmove+0xfc>
    800051a4:	fff6069b          	addiw	a3,a2,-1
    800051a8:	0006881b          	sext.w	a6,a3
    800051ac:	0ea5e863          	bltu	a1,a0,8000529c <__memmove+0x108>
    800051b0:	00758713          	addi	a4,a1,7
    800051b4:	00a5e7b3          	or	a5,a1,a0
    800051b8:	40a70733          	sub	a4,a4,a0
    800051bc:	0077f793          	andi	a5,a5,7
    800051c0:	00f73713          	sltiu	a4,a4,15
    800051c4:	00174713          	xori	a4,a4,1
    800051c8:	0017b793          	seqz	a5,a5
    800051cc:	00e7f7b3          	and	a5,a5,a4
    800051d0:	10078863          	beqz	a5,800052e0 <__memmove+0x14c>
    800051d4:	00900793          	li	a5,9
    800051d8:	1107f463          	bgeu	a5,a6,800052e0 <__memmove+0x14c>
    800051dc:	0036581b          	srliw	a6,a2,0x3
    800051e0:	fff8081b          	addiw	a6,a6,-1
    800051e4:	02081813          	slli	a6,a6,0x20
    800051e8:	01d85893          	srli	a7,a6,0x1d
    800051ec:	00858813          	addi	a6,a1,8
    800051f0:	00058793          	mv	a5,a1
    800051f4:	00050713          	mv	a4,a0
    800051f8:	01088833          	add	a6,a7,a6
    800051fc:	0007b883          	ld	a7,0(a5)
    80005200:	00878793          	addi	a5,a5,8
    80005204:	00870713          	addi	a4,a4,8
    80005208:	ff173c23          	sd	a7,-8(a4)
    8000520c:	ff0798e3          	bne	a5,a6,800051fc <__memmove+0x68>
    80005210:	ff867713          	andi	a4,a2,-8
    80005214:	02071793          	slli	a5,a4,0x20
    80005218:	0207d793          	srli	a5,a5,0x20
    8000521c:	00f585b3          	add	a1,a1,a5
    80005220:	40e686bb          	subw	a3,a3,a4
    80005224:	00f507b3          	add	a5,a0,a5
    80005228:	06e60463          	beq	a2,a4,80005290 <__memmove+0xfc>
    8000522c:	0005c703          	lbu	a4,0(a1)
    80005230:	00e78023          	sb	a4,0(a5)
    80005234:	04068e63          	beqz	a3,80005290 <__memmove+0xfc>
    80005238:	0015c603          	lbu	a2,1(a1)
    8000523c:	00100713          	li	a4,1
    80005240:	00c780a3          	sb	a2,1(a5)
    80005244:	04e68663          	beq	a3,a4,80005290 <__memmove+0xfc>
    80005248:	0025c603          	lbu	a2,2(a1)
    8000524c:	00200713          	li	a4,2
    80005250:	00c78123          	sb	a2,2(a5)
    80005254:	02e68e63          	beq	a3,a4,80005290 <__memmove+0xfc>
    80005258:	0035c603          	lbu	a2,3(a1)
    8000525c:	00300713          	li	a4,3
    80005260:	00c781a3          	sb	a2,3(a5)
    80005264:	02e68663          	beq	a3,a4,80005290 <__memmove+0xfc>
    80005268:	0045c603          	lbu	a2,4(a1)
    8000526c:	00400713          	li	a4,4
    80005270:	00c78223          	sb	a2,4(a5)
    80005274:	00e68e63          	beq	a3,a4,80005290 <__memmove+0xfc>
    80005278:	0055c603          	lbu	a2,5(a1)
    8000527c:	00500713          	li	a4,5
    80005280:	00c782a3          	sb	a2,5(a5)
    80005284:	00e68663          	beq	a3,a4,80005290 <__memmove+0xfc>
    80005288:	0065c703          	lbu	a4,6(a1)
    8000528c:	00e78323          	sb	a4,6(a5)
    80005290:	00813403          	ld	s0,8(sp)
    80005294:	01010113          	addi	sp,sp,16
    80005298:	00008067          	ret
    8000529c:	02061713          	slli	a4,a2,0x20
    800052a0:	02075713          	srli	a4,a4,0x20
    800052a4:	00e587b3          	add	a5,a1,a4
    800052a8:	f0f574e3          	bgeu	a0,a5,800051b0 <__memmove+0x1c>
    800052ac:	02069613          	slli	a2,a3,0x20
    800052b0:	02065613          	srli	a2,a2,0x20
    800052b4:	fff64613          	not	a2,a2
    800052b8:	00e50733          	add	a4,a0,a4
    800052bc:	00c78633          	add	a2,a5,a2
    800052c0:	fff7c683          	lbu	a3,-1(a5)
    800052c4:	fff78793          	addi	a5,a5,-1
    800052c8:	fff70713          	addi	a4,a4,-1
    800052cc:	00d70023          	sb	a3,0(a4)
    800052d0:	fec798e3          	bne	a5,a2,800052c0 <__memmove+0x12c>
    800052d4:	00813403          	ld	s0,8(sp)
    800052d8:	01010113          	addi	sp,sp,16
    800052dc:	00008067          	ret
    800052e0:	02069713          	slli	a4,a3,0x20
    800052e4:	02075713          	srli	a4,a4,0x20
    800052e8:	00170713          	addi	a4,a4,1
    800052ec:	00e50733          	add	a4,a0,a4
    800052f0:	00050793          	mv	a5,a0
    800052f4:	0005c683          	lbu	a3,0(a1)
    800052f8:	00178793          	addi	a5,a5,1
    800052fc:	00158593          	addi	a1,a1,1
    80005300:	fed78fa3          	sb	a3,-1(a5)
    80005304:	fee798e3          	bne	a5,a4,800052f4 <__memmove+0x160>
    80005308:	f89ff06f          	j	80005290 <__memmove+0xfc>

000000008000530c <__putc>:
    8000530c:	fe010113          	addi	sp,sp,-32
    80005310:	00813823          	sd	s0,16(sp)
    80005314:	00113c23          	sd	ra,24(sp)
    80005318:	02010413          	addi	s0,sp,32
    8000531c:	00050793          	mv	a5,a0
    80005320:	fef40593          	addi	a1,s0,-17
    80005324:	00100613          	li	a2,1
    80005328:	00000513          	li	a0,0
    8000532c:	fef407a3          	sb	a5,-17(s0)
    80005330:	fffff097          	auipc	ra,0xfffff
    80005334:	b3c080e7          	jalr	-1220(ra) # 80003e6c <console_write>
    80005338:	01813083          	ld	ra,24(sp)
    8000533c:	01013403          	ld	s0,16(sp)
    80005340:	02010113          	addi	sp,sp,32
    80005344:	00008067          	ret

0000000080005348 <__getc>:
    80005348:	fe010113          	addi	sp,sp,-32
    8000534c:	00813823          	sd	s0,16(sp)
    80005350:	00113c23          	sd	ra,24(sp)
    80005354:	02010413          	addi	s0,sp,32
    80005358:	fe840593          	addi	a1,s0,-24
    8000535c:	00100613          	li	a2,1
    80005360:	00000513          	li	a0,0
    80005364:	fffff097          	auipc	ra,0xfffff
    80005368:	ae8080e7          	jalr	-1304(ra) # 80003e4c <console_read>
    8000536c:	fe844503          	lbu	a0,-24(s0)
    80005370:	01813083          	ld	ra,24(sp)
    80005374:	01013403          	ld	s0,16(sp)
    80005378:	02010113          	addi	sp,sp,32
    8000537c:	00008067          	ret

0000000080005380 <console_handler>:
    80005380:	fe010113          	addi	sp,sp,-32
    80005384:	00813823          	sd	s0,16(sp)
    80005388:	00113c23          	sd	ra,24(sp)
    8000538c:	00913423          	sd	s1,8(sp)
    80005390:	02010413          	addi	s0,sp,32
    80005394:	14202773          	csrr	a4,scause
    80005398:	100027f3          	csrr	a5,sstatus
    8000539c:	0027f793          	andi	a5,a5,2
    800053a0:	06079e63          	bnez	a5,8000541c <console_handler+0x9c>
    800053a4:	00074c63          	bltz	a4,800053bc <console_handler+0x3c>
    800053a8:	01813083          	ld	ra,24(sp)
    800053ac:	01013403          	ld	s0,16(sp)
    800053b0:	00813483          	ld	s1,8(sp)
    800053b4:	02010113          	addi	sp,sp,32
    800053b8:	00008067          	ret
    800053bc:	0ff77713          	andi	a4,a4,255
    800053c0:	00900793          	li	a5,9
    800053c4:	fef712e3          	bne	a4,a5,800053a8 <console_handler+0x28>
    800053c8:	ffffe097          	auipc	ra,0xffffe
    800053cc:	6dc080e7          	jalr	1756(ra) # 80003aa4 <plic_claim>
    800053d0:	00a00793          	li	a5,10
    800053d4:	00050493          	mv	s1,a0
    800053d8:	02f50c63          	beq	a0,a5,80005410 <console_handler+0x90>
    800053dc:	fc0506e3          	beqz	a0,800053a8 <console_handler+0x28>
    800053e0:	00050593          	mv	a1,a0
    800053e4:	00001517          	auipc	a0,0x1
    800053e8:	ea450513          	addi	a0,a0,-348 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800053ec:	fffff097          	auipc	ra,0xfffff
    800053f0:	afc080e7          	jalr	-1284(ra) # 80003ee8 <__printf>
    800053f4:	01013403          	ld	s0,16(sp)
    800053f8:	01813083          	ld	ra,24(sp)
    800053fc:	00048513          	mv	a0,s1
    80005400:	00813483          	ld	s1,8(sp)
    80005404:	02010113          	addi	sp,sp,32
    80005408:	ffffe317          	auipc	t1,0xffffe
    8000540c:	6d430067          	jr	1748(t1) # 80003adc <plic_complete>
    80005410:	fffff097          	auipc	ra,0xfffff
    80005414:	3e0080e7          	jalr	992(ra) # 800047f0 <uartintr>
    80005418:	fddff06f          	j	800053f4 <console_handler+0x74>
    8000541c:	00001517          	auipc	a0,0x1
    80005420:	f6c50513          	addi	a0,a0,-148 # 80006388 <digits+0x78>
    80005424:	fffff097          	auipc	ra,0xfffff
    80005428:	a68080e7          	jalr	-1432(ra) # 80003e8c <panic>
	...
