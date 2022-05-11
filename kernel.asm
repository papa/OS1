
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	32013103          	ld	sp,800(sp) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	480030ef          	jal	ra,8000349c <start>

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
    80001080:	2f9010ef          	jal	ra,80002b78 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001450:	5f4080e7          	jalr	1524(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
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
    80001480:	5c4080e7          	jalr	1476(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    80001484:	00000493          	li	s1,0
    80001488:	000027b7          	lui	a5,0x2
    8000148c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001490:	0297ec63          	bltu	a5,s1,800014c8 <_Z15thread1FunctionPv+0x68>
    {
        //if(i % 150 == 0 && i > 0)
        //    thread_dispatch();
        Riscv::printString("i : ");
    80001494:	00005517          	auipc	a0,0x5
    80001498:	bac50513          	addi	a0,a0,-1108 # 80006040 <CONSOLE_STATUS+0x30>
    8000149c:	00001097          	auipc	ra,0x1
    800014a0:	5a4080e7          	jalr	1444(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014a4:	00048513          	mv	a0,s1
    800014a8:	00001097          	auipc	ra,0x1
    800014ac:	608080e7          	jalr	1544(ra) # 80002ab0 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014b0:	00005517          	auipc	a0,0x5
    800014b4:	e3850513          	addi	a0,a0,-456 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	588080e7          	jalr	1416(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800014c0:	00148493          	addi	s1,s1,1
    800014c4:	fc5ff06f          	j	80001488 <_Z15thread1FunctionPv+0x28>
    }
}
    800014c8:	01813083          	ld	ra,24(sp)
    800014cc:	01013403          	ld	s0,16(sp)
    800014d0:	00813483          	ld	s1,8(sp)
    800014d4:	02010113          	addi	sp,sp,32
    800014d8:	00008067          	ret

00000000800014dc <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    800014dc:	fe010113          	addi	sp,sp,-32
    800014e0:	00113c23          	sd	ra,24(sp)
    800014e4:	00813823          	sd	s0,16(sp)
    800014e8:	00913423          	sd	s1,8(sp)
    800014ec:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    800014f0:	00005517          	auipc	a0,0x5
    800014f4:	b5850513          	addi	a0,a0,-1192 # 80006048 <CONSOLE_STATUS+0x38>
    800014f8:	00001097          	auipc	ra,0x1
    800014fc:	548080e7          	jalr	1352(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    80001500:	00000493          	li	s1,0
    80001504:	000027b7          	lui	a5,0x2
    80001508:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000150c:	0297ec63          	bltu	a5,s1,80001544 <_Z15thread2FunctionPv+0x68>
    {
        //if(j % 50 == 0 && j > 0)
        //    thread_dispatch();
        Riscv::printString("j : ");
    80001510:	00005517          	auipc	a0,0x5
    80001514:	b5050513          	addi	a0,a0,-1200 # 80006060 <CONSOLE_STATUS+0x50>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	528080e7          	jalr	1320(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001520:	00048513          	mv	a0,s1
    80001524:	00001097          	auipc	ra,0x1
    80001528:	58c080e7          	jalr	1420(ra) # 80002ab0 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000152c:	00005517          	auipc	a0,0x5
    80001530:	dbc50513          	addi	a0,a0,-580 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001534:	00001097          	auipc	ra,0x1
    80001538:	50c080e7          	jalr	1292(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    8000153c:	00148493          	addi	s1,s1,1
    80001540:	fc5ff06f          	j	80001504 <_Z15thread2FunctionPv+0x28>
    }
}
    80001544:	01813083          	ld	ra,24(sp)
    80001548:	01013403          	ld	s0,16(sp)
    8000154c:	00813483          	ld	s1,8(sp)
    80001550:	02010113          	addi	sp,sp,32
    80001554:	00008067          	ret

0000000080001558 <_Z20thread2FunctionTest2Pv>:

void thread2FunctionTest2(void* p)
{
    80001558:	fe010113          	addi	sp,sp,-32
    8000155c:	00113c23          	sd	ra,24(sp)
    80001560:	00813823          	sd	s0,16(sp)
    80001564:	00913423          	sd	s1,8(sp)
    80001568:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    8000156c:	00005517          	auipc	a0,0x5
    80001570:	adc50513          	addi	a0,a0,-1316 # 80006048 <CONSOLE_STATUS+0x38>
    80001574:	00001097          	auipc	ra,0x1
    80001578:	4cc080e7          	jalr	1228(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    8000157c:	00000493          	li	s1,0
    80001580:	000027b7          	lui	a5,0x2
    80001584:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001588:	0297ec63          	bltu	a5,s1,800015c0 <_Z20thread2FunctionTest2Pv+0x68>
        //    time_sleep(200);
        //if(j == 200)
        //    thread_exit();
        //if(j!= 100 && j!= 200 && j % 50 == 0 && j > 0)
        //    thread_dispatch();
        Riscv::printString("j : ");
    8000158c:	00005517          	auipc	a0,0x5
    80001590:	ad450513          	addi	a0,a0,-1324 # 80006060 <CONSOLE_STATUS+0x50>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	4ac080e7          	jalr	1196(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000159c:	00048513          	mv	a0,s1
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	510080e7          	jalr	1296(ra) # 80002ab0 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015a8:	00005517          	auipc	a0,0x5
    800015ac:	d4050513          	addi	a0,a0,-704 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	490080e7          	jalr	1168(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    800015b8:	00148493          	addi	s1,s1,1
    800015bc:	fc5ff06f          	j	80001580 <_Z20thread2FunctionTest2Pv+0x28>
    }
}
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	02010113          	addi	sp,sp,32
    800015d0:	00008067          	ret

00000000800015d4 <_Z11threadTest1v>:


void threadTest1()
{
    800015d4:	fe010113          	addi	sp,sp,-32
    800015d8:	00113c23          	sd	ra,24(sp)
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	00913423          	sd	s1,8(sp)
    800015e4:	01213023          	sd	s2,0(sp)
    800015e8:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    800015ec:	01800513          	li	a0,24
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	1a0080e7          	jalr	416(ra) # 80002790 <_Znwm>
    800015f8:	00050493          	mv	s1,a0
    800015fc:	00000613          	li	a2,0
    80001600:	00000597          	auipc	a1,0x0
    80001604:	e6058593          	addi	a1,a1,-416 # 80001460 <_Z15thread1FunctionPv>
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	254080e7          	jalr	596(ra) # 8000285c <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001610:	00048513          	mv	a0,s1
    80001614:	00001097          	auipc	ra,0x1
    80001618:	1cc080e7          	jalr	460(ra) # 800027e0 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    8000161c:	01800513          	li	a0,24
    80001620:	00001097          	auipc	ra,0x1
    80001624:	170080e7          	jalr	368(ra) # 80002790 <_Znwm>
    80001628:	00050913          	mv	s2,a0
    8000162c:	00000613          	li	a2,0
    80001630:	00000597          	auipc	a1,0x0
    80001634:	eac58593          	addi	a1,a1,-340 # 800014dc <_Z15thread2FunctionPv>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	224080e7          	jalr	548(ra) # 8000285c <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001640:	00090513          	mv	a0,s2
    80001644:	00001097          	auipc	ra,0x1
    80001648:	19c080e7          	jalr	412(ra) # 800027e0 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	36c080e7          	jalr	876(ra) # 800029b8 <_ZN5Riscv16enableInterruptsEv>
    80001654:	01c0006f          	j	80001670 <_Z11threadTest1v+0x9c>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    {
        Riscv::printString("Main thread\n");
    80001658:	00005517          	auipc	a0,0x5
    8000165c:	a1050513          	addi	a0,a0,-1520 # 80006068 <CONSOLE_STATUS+0x58>
    80001660:	00001097          	auipc	ra,0x1
    80001664:	3e0080e7          	jalr	992(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	c9c080e7          	jalr	-868(ra) # 80001304 <thread_dispatch>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    80001670:	0004b783          	ld	a5,0(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80001674:	0307a703          	lw	a4,48(a5)
    80001678:	00300793          	li	a5,3
    8000167c:	fcf71ee3          	bne	a4,a5,80001658 <_Z11threadTest1v+0x84>
    80001680:	00093783          	ld	a5,0(s2)
    80001684:	0307a703          	lw	a4,48(a5)
    80001688:	00300793          	li	a5,3
    8000168c:	fcf716e3          	bne	a4,a5,80001658 <_Z11threadTest1v+0x84>
    }

    Riscv::printString("End...\n");
    80001690:	00005517          	auipc	a0,0x5
    80001694:	9e850513          	addi	a0,a0,-1560 # 80006078 <CONSOLE_STATUS+0x68>
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	3a8080e7          	jalr	936(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800016a0:	00001097          	auipc	ra,0x1
    800016a4:	338080e7          	jalr	824(ra) # 800029d8 <_ZN5Riscv17disableInterruptsEv>
}
    800016a8:	01813083          	ld	ra,24(sp)
    800016ac:	01013403          	ld	s0,16(sp)
    800016b0:	00813483          	ld	s1,8(sp)
    800016b4:	00013903          	ld	s2,0(sp)
    800016b8:	02010113          	addi	sp,sp,32
    800016bc:	00008067          	ret
    800016c0:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800016c4:	00048513          	mv	a0,s1
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	0f0080e7          	jalr	240(ra) # 800027b8 <_ZdlPv>
    800016d0:	00090513          	mv	a0,s2
    800016d4:	00007097          	auipc	ra,0x7
    800016d8:	dd4080e7          	jalr	-556(ra) # 800084a8 <_Unwind_Resume>
    800016dc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800016e0:	00090513          	mv	a0,s2
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	0d4080e7          	jalr	212(ra) # 800027b8 <_ZdlPv>
    800016ec:	00048513          	mv	a0,s1
    800016f0:	00007097          	auipc	ra,0x7
    800016f4:	db8080e7          	jalr	-584(ra) # 800084a8 <_Unwind_Resume>

00000000800016f8 <_Z11threadTest2v>:

void threadTest2()
{
    800016f8:	fe010113          	addi	sp,sp,-32
    800016fc:	00113c23          	sd	ra,24(sp)
    80001700:	00813823          	sd	s0,16(sp)
    80001704:	00913423          	sd	s1,8(sp)
    80001708:	01213023          	sd	s2,0(sp)
    8000170c:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001710:	01800513          	li	a0,24
    80001714:	00001097          	auipc	ra,0x1
    80001718:	07c080e7          	jalr	124(ra) # 80002790 <_Znwm>
    8000171c:	00050493          	mv	s1,a0
    80001720:	00000613          	li	a2,0
    80001724:	00000597          	auipc	a1,0x0
    80001728:	d1058593          	addi	a1,a1,-752 # 80001434 <_Z4idlePv>
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	130080e7          	jalr	304(ra) # 8000285c <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001734:	00048513          	mv	a0,s1
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	0a8080e7          	jalr	168(ra) # 800027e0 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001740:	01800513          	li	a0,24
    80001744:	00001097          	auipc	ra,0x1
    80001748:	04c080e7          	jalr	76(ra) # 80002790 <_Znwm>
    8000174c:	00050913          	mv	s2,a0
    80001750:	00000613          	li	a2,0
    80001754:	00000597          	auipc	a1,0x0
    80001758:	d0c58593          	addi	a1,a1,-756 # 80001460 <_Z15thread1FunctionPv>
    8000175c:	00001097          	auipc	ra,0x1
    80001760:	100080e7          	jalr	256(ra) # 8000285c <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001764:	00090513          	mv	a0,s2
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	078080e7          	jalr	120(ra) # 800027e0 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001770:	01800513          	li	a0,24
    80001774:	00001097          	auipc	ra,0x1
    80001778:	01c080e7          	jalr	28(ra) # 80002790 <_Znwm>
    8000177c:	00050913          	mv	s2,a0
    80001780:	00000613          	li	a2,0
    80001784:	00000597          	auipc	a1,0x0
    80001788:	dd458593          	addi	a1,a1,-556 # 80001558 <_Z20thread2FunctionTest2Pv>
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	0d0080e7          	jalr	208(ra) # 8000285c <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001794:	00090513          	mv	a0,s2
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	048080e7          	jalr	72(ra) # 800027e0 <_ZN6Thread5startEv>

    Riscv::enableInterrupts();
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	218080e7          	jalr	536(ra) # 800029b8 <_ZN5Riscv16enableInterruptsEv>

    while(idleThread->myHandle->getState() != PCB::FINISHED);
    800017a8:	0004b783          	ld	a5,0(s1)
    800017ac:	0307a703          	lw	a4,48(a5)
    800017b0:	00300793          	li	a5,3
    800017b4:	fef71ae3          	bne	a4,a5,800017a8 <_Z11threadTest2v+0xb0>

    Riscv::printString("End...\n");
    800017b8:	00005517          	auipc	a0,0x5
    800017bc:	8c050513          	addi	a0,a0,-1856 # 80006078 <CONSOLE_STATUS+0x68>
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	280080e7          	jalr	640(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>

    Riscv::disableInterrupts();
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	210080e7          	jalr	528(ra) # 800029d8 <_ZN5Riscv17disableInterruptsEv>
}
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	00013903          	ld	s2,0(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret
    800017e8:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	fc8080e7          	jalr	-56(ra) # 800027b8 <_ZdlPv>
    800017f8:	00090513          	mv	a0,s2
    800017fc:	00007097          	auipc	ra,0x7
    80001800:	cac080e7          	jalr	-852(ra) # 800084a8 <_Unwind_Resume>
    80001804:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001808:	00090513          	mv	a0,s2
    8000180c:	00001097          	auipc	ra,0x1
    80001810:	fac080e7          	jalr	-84(ra) # 800027b8 <_ZdlPv>
    80001814:	00048513          	mv	a0,s1
    80001818:	00007097          	auipc	ra,0x7
    8000181c:	c90080e7          	jalr	-880(ra) # 800084a8 <_Unwind_Resume>
    80001820:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001824:	00090513          	mv	a0,s2
    80001828:	00001097          	auipc	ra,0x1
    8000182c:	f90080e7          	jalr	-112(ra) # 800027b8 <_ZdlPv>
    80001830:	00048513          	mv	a0,s1
    80001834:	00007097          	auipc	ra,0x7
    80001838:	c74080e7          	jalr	-908(ra) # 800084a8 <_Unwind_Resume>

000000008000183c <_Z11threadTestsv>:

void threadTests()
{
    8000183c:	ff010113          	addi	sp,sp,-16
    80001840:	00113423          	sd	ra,8(sp)
    80001844:	00813023          	sd	s0,0(sp)
    80001848:	01010413          	addi	s0,sp,16
    threadTest1();
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	d88080e7          	jalr	-632(ra) # 800015d4 <_Z11threadTest1v>
    //threadTest2();
}
    80001854:	00813083          	ld	ra,8(sp)
    80001858:	00013403          	ld	s0,0(sp)
    8000185c:	01010113          	addi	sp,sp,16
    80001860:	00008067          	ret

0000000080001864 <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    80001864:	cc010113          	addi	sp,sp,-832
    80001868:	32113c23          	sd	ra,824(sp)
    8000186c:	32813823          	sd	s0,816(sp)
    80001870:	32913423          	sd	s1,808(sp)
    80001874:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001878:	00005517          	auipc	a0,0x5
    8000187c:	80850513          	addi	a0,a0,-2040 # 80006080 <CONSOLE_STATUS+0x70>
    80001880:	00001097          	auipc	ra,0x1
    80001884:	1c0080e7          	jalr	448(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001888:	00000493          	li	s1,0
    8000188c:	0080006f          	j	80001894 <_Z10mallocFreev+0x30>
    80001890:	0014849b          	addiw	s1,s1,1
    80001894:	06300793          	li	a5,99
    80001898:	0497c463          	blt	a5,s1,800018e0 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    8000189c:	06400513          	li	a0,100
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	988080e7          	jalr	-1656(ra) # 80001228 <mem_alloc>
    800018a8:	00349793          	slli	a5,s1,0x3
    800018ac:	fe040713          	addi	a4,s0,-32
    800018b0:	00f707b3          	add	a5,a4,a5
    800018b4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    800018b8:	fc051ce3          	bnez	a0,80001890 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    800018bc:	00004517          	auipc	a0,0x4
    800018c0:	7d450513          	addi	a0,a0,2004 # 80006090 <CONSOLE_STATUS+0x80>
    800018c4:	00001097          	auipc	ra,0x1
    800018c8:	17c080e7          	jalr	380(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    800018cc:	33813083          	ld	ra,824(sp)
    800018d0:	33013403          	ld	s0,816(sp)
    800018d4:	32813483          	ld	s1,808(sp)
    800018d8:	34010113          	addi	sp,sp,832
    800018dc:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    800018e0:	00000493          	li	s1,0
    800018e4:	06300793          	li	a5,99
    800018e8:	0297ce63          	blt	a5,s1,80001924 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    800018ec:	00349793          	slli	a5,s1,0x3
    800018f0:	fe040713          	addi	a4,s0,-32
    800018f4:	00f707b3          	add	a5,a4,a5
    800018f8:	ce07b503          	ld	a0,-800(a5)
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	95c080e7          	jalr	-1700(ra) # 80001258 <mem_free>
        if(retval != 0)
    80001904:	00051663          	bnez	a0,80001910 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001908:	0024849b          	addiw	s1,s1,2
    8000190c:	fd9ff06f          	j	800018e4 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001910:	00004517          	auipc	a0,0x4
    80001914:	78050513          	addi	a0,a0,1920 # 80006090 <CONSOLE_STATUS+0x80>
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	128080e7          	jalr	296(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            return;
    80001920:	fadff06f          	j	800018cc <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001924:	00000493          	li	s1,0
    80001928:	0080006f          	j	80001930 <_Z10mallocFreev+0xcc>
    8000192c:	0024849b          	addiw	s1,s1,2
    80001930:	06300793          	li	a5,99
    80001934:	0297cc63          	blt	a5,s1,8000196c <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001938:	01400513          	li	a0,20
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	8ec080e7          	jalr	-1812(ra) # 80001228 <mem_alloc>
    80001944:	00349793          	slli	a5,s1,0x3
    80001948:	fe040713          	addi	a4,s0,-32
    8000194c:	00f707b3          	add	a5,a4,a5
    80001950:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001954:	fc051ce3          	bnez	a0,8000192c <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001958:	00004517          	auipc	a0,0x4
    8000195c:	73850513          	addi	a0,a0,1848 # 80006090 <CONSOLE_STATUS+0x80>
    80001960:	00001097          	auipc	ra,0x1
    80001964:	0e0080e7          	jalr	224(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            return;
    80001968:	f65ff06f          	j	800018cc <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    8000196c:	00000493          	li	s1,0
    80001970:	06300793          	li	a5,99
    80001974:	0297ce63          	blt	a5,s1,800019b0 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001978:	00349793          	slli	a5,s1,0x3
    8000197c:	fe040713          	addi	a4,s0,-32
    80001980:	00f707b3          	add	a5,a4,a5
    80001984:	ce07b503          	ld	a0,-800(a5)
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	8d0080e7          	jalr	-1840(ra) # 80001258 <mem_free>
        if(retval != 0)
    80001990:	00051663          	bnez	a0,8000199c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001994:	0014849b          	addiw	s1,s1,1
    80001998:	fd9ff06f          	j	80001970 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    8000199c:	00004517          	auipc	a0,0x4
    800019a0:	6f450513          	addi	a0,a0,1780 # 80006090 <CONSOLE_STATUS+0x80>
    800019a4:	00001097          	auipc	ra,0x1
    800019a8:	09c080e7          	jalr	156(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            return;
    800019ac:	f21ff06f          	j	800018cc <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    800019b0:	00004517          	auipc	a0,0x4
    800019b4:	6e850513          	addi	a0,a0,1768 # 80006098 <CONSOLE_STATUS+0x88>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	088080e7          	jalr	136(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    800019c0:	f0dff06f          	j	800018cc <_Z10mallocFreev+0x68>

00000000800019c4 <_Z9bigMallocv>:
void bigMalloc()
{
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    800019d4:	00004517          	auipc	a0,0x4
    800019d8:	6cc50513          	addi	a0,a0,1740 # 800060a0 <CONSOLE_STATUS+0x90>
    800019dc:	00001097          	auipc	ra,0x1
    800019e0:	064080e7          	jalr	100(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019e4:	00006797          	auipc	a5,0x6
    800019e8:	94c7b783          	ld	a5,-1716(a5) # 80007330 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019ec:	0007b503          	ld	a0,0(a5)
    800019f0:	00006797          	auipc	a5,0x6
    800019f4:	9107b783          	ld	a5,-1776(a5) # 80007300 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019f8:	0007b783          	ld	a5,0(a5)
    800019fc:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001a00:	06450513          	addi	a0,a0,100
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	824080e7          	jalr	-2012(ra) # 80001228 <mem_alloc>
    if(p == 0)
    80001a0c:	02050263          	beqz	a0,80001a30 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001a10:	00004517          	auipc	a0,0x4
    80001a14:	68050513          	addi	a0,a0,1664 # 80006090 <CONSOLE_STATUS+0x80>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	028080e7          	jalr	40(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
}
    80001a20:	00813083          	ld	ra,8(sp)
    80001a24:	00013403          	ld	s0,0(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret
        Riscv::printString("OK\n");
    80001a30:	00004517          	auipc	a0,0x4
    80001a34:	66850513          	addi	a0,a0,1640 # 80006098 <CONSOLE_STATUS+0x88>
    80001a38:	00001097          	auipc	ra,0x1
    80001a3c:	008080e7          	jalr	8(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    80001a40:	fe1ff06f          	j	80001a20 <_Z9bigMallocv+0x5c>

0000000080001a44 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001a44:	fd010113          	addi	sp,sp,-48
    80001a48:	02113423          	sd	ra,40(sp)
    80001a4c:	02813023          	sd	s0,32(sp)
    80001a50:	00913c23          	sd	s1,24(sp)
    80001a54:	01213823          	sd	s2,16(sp)
    80001a58:	01313423          	sd	s3,8(sp)
    80001a5c:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001a60:	00004517          	auipc	a0,0x4
    80001a64:	65050513          	addi	a0,a0,1616 # 800060b0 <CONSOLE_STATUS+0xa0>
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	fd8080e7          	jalr	-40(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001a70:	00000493          	li	s1,0
    uint64 sum = 0;
    80001a74:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001a78:	00000913          	li	s2,0
    80001a7c:	0180006f          	j	80001a94 <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001a80:	00a00793          	li	a5,10
    80001a84:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001a88:	00a98993          	addi	s3,s3,10
        cnt++;
    80001a8c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001a90:	00148493          	addi	s1,s1,1
    80001a94:	000027b7          	lui	a5,0x2
    80001a98:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a9c:	0097ea63          	bltu	a5,s1,80001ab0 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001aa0:	00800513          	li	a0,8
    80001aa4:	fffff097          	auipc	ra,0xfffff
    80001aa8:	784080e7          	jalr	1924(ra) # 80001228 <mem_alloc>
        if(t == 0)
    80001aac:	fc051ae3          	bnez	a0,80001a80 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001ab0:	00090513          	mv	a0,s2
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	ffc080e7          	jalr	-4(ra) # 80002ab0 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001abc:	00005517          	auipc	a0,0x5
    80001ac0:	82c50513          	addi	a0,a0,-2004 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	f7c080e7          	jalr	-132(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001acc:	00291793          	slli	a5,s2,0x2
    80001ad0:	01278933          	add	s2,a5,s2
    80001ad4:	00191913          	slli	s2,s2,0x1
    80001ad8:	03390863          	beq	s2,s3,80001b08 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	5b450513          	addi	a0,a0,1460 # 80006090 <CONSOLE_STATUS+0x80>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	f5c080e7          	jalr	-164(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
}
    80001aec:	02813083          	ld	ra,40(sp)
    80001af0:	02013403          	ld	s0,32(sp)
    80001af4:	01813483          	ld	s1,24(sp)
    80001af8:	01013903          	ld	s2,16(sp)
    80001afc:	00813983          	ld	s3,8(sp)
    80001b00:	03010113          	addi	sp,sp,48
    80001b04:	00008067          	ret
        Riscv::printString("OK\n");
    80001b08:	00004517          	auipc	a0,0x4
    80001b0c:	59050513          	addi	a0,a0,1424 # 80006098 <CONSOLE_STATUS+0x88>
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	f30080e7          	jalr	-208(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    80001b18:	fd5ff06f          	j	80001aec <_Z17lotOfSmallMallocsv+0xa8>

0000000080001b1c <_Z7badFreev>:
void badFree()
{
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00113423          	sd	ra,8(sp)
    80001b24:	00813023          	sd	s0,0(sp)
    80001b28:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001b2c:	00004517          	auipc	a0,0x4
    80001b30:	59c50513          	addi	a0,a0,1436 # 800060c8 <CONSOLE_STATUS+0xb8>
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	f0c080e7          	jalr	-244(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001b3c:	00800513          	li	a0,8
    80001b40:	fffff097          	auipc	ra,0xfffff
    80001b44:	6e8080e7          	jalr	1768(ra) # 80001228 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001b48:	00250513          	addi	a0,a0,2
    80001b4c:	fffff097          	auipc	ra,0xfffff
    80001b50:	70c080e7          	jalr	1804(ra) # 80001258 <mem_free>
    if(retval == 0)
    80001b54:	02051263          	bnez	a0,80001b78 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001b58:	00004517          	auipc	a0,0x4
    80001b5c:	53850513          	addi	a0,a0,1336 # 80006090 <CONSOLE_STATUS+0x80>
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	ee0080e7          	jalr	-288(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001b68:	00813083          	ld	ra,8(sp)
    80001b6c:	00013403          	ld	s0,0(sp)
    80001b70:	01010113          	addi	sp,sp,16
    80001b74:	00008067          	ret
        Riscv::printString("OK\n");
    80001b78:	00004517          	auipc	a0,0x4
    80001b7c:	52050513          	addi	a0,a0,1312 # 80006098 <CONSOLE_STATUS+0x88>
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	ec0080e7          	jalr	-320(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
}
    80001b88:	fe1ff06f          	j	80001b68 <_Z7badFreev+0x4c>

0000000080001b8c <_Z13stressTestingv>:

void stressTesting()
{
    80001b8c:	cb010113          	addi	sp,sp,-848
    80001b90:	34113423          	sd	ra,840(sp)
    80001b94:	34813023          	sd	s0,832(sp)
    80001b98:	32913c23          	sd	s1,824(sp)
    80001b9c:	33213823          	sd	s2,816(sp)
    80001ba0:	33313423          	sd	s3,808(sp)
    80001ba4:	35010413          	addi	s0,sp,848
    Riscv::printString("stressTesting\n");
    80001ba8:	00004517          	auipc	a0,0x4
    80001bac:	53050513          	addi	a0,a0,1328 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	e90080e7          	jalr	-368(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001bb8:	00000493          	li	s1,0
    80001bbc:	0080006f          	j	80001bc4 <_Z13stressTestingv+0x38>
    80001bc0:	0014849b          	addiw	s1,s1,1
    80001bc4:	06300793          	li	a5,99
    80001bc8:	0497c863          	blt	a5,s1,80001c18 <_Z13stressTestingv+0x8c>
    {
        addrs[i] = mem_alloc(1);
    80001bcc:	00100513          	li	a0,1
    80001bd0:	fffff097          	auipc	ra,0xfffff
    80001bd4:	658080e7          	jalr	1624(ra) # 80001228 <mem_alloc>
    80001bd8:	00349793          	slli	a5,s1,0x3
    80001bdc:	fd040713          	addi	a4,s0,-48
    80001be0:	00f707b3          	add	a5,a4,a5
    80001be4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001be8:	fc051ce3          	bnez	a0,80001bc0 <_Z13stressTestingv+0x34>
        {
            Riscv::printString("not OK\n");
    80001bec:	00004517          	auipc	a0,0x4
    80001bf0:	4a450513          	addi	a0,a0,1188 # 80006090 <CONSOLE_STATUS+0x80>
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	e4c080e7          	jalr	-436(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
        }
        sz-=10;
    }

    Riscv::printString("OK\n");
}
    80001bfc:	34813083          	ld	ra,840(sp)
    80001c00:	34013403          	ld	s0,832(sp)
    80001c04:	33813483          	ld	s1,824(sp)
    80001c08:	33013903          	ld	s2,816(sp)
    80001c0c:	32813983          	ld	s3,808(sp)
    80001c10:	35010113          	addi	sp,sp,848
    80001c14:	00008067          	ret
    int sz = 5;
    80001c18:	00500913          	li	s2,5
    while(sz > 0)
    80001c1c:	19205e63          	blez	s2,80001db8 <_Z13stressTestingv+0x22c>
        Riscv::printString("sz : ");
    80001c20:	00004517          	auipc	a0,0x4
    80001c24:	4c850513          	addi	a0,a0,1224 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	e18080e7          	jalr	-488(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(sz);
    80001c30:	00090993          	mv	s3,s2
    80001c34:	00090513          	mv	a0,s2
    80001c38:	00001097          	auipc	ra,0x1
    80001c3c:	e78080e7          	jalr	-392(ra) # 80002ab0 <_ZN5Riscv12printIntegerEm>
        for(int i = 0 ; i < num;i+=2)
    80001c40:	00000493          	li	s1,0
    80001c44:	06300793          	li	a5,99
    80001c48:	0a97ca63          	blt	a5,s1,80001cfc <_Z13stressTestingv+0x170>
            Riscv::printString("i : ");
    80001c4c:	00004517          	auipc	a0,0x4
    80001c50:	3f450513          	addi	a0,a0,1012 # 80006040 <CONSOLE_STATUS+0x30>
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	dec080e7          	jalr	-532(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001c5c:	00048513          	mv	a0,s1
    80001c60:	00001097          	auipc	ra,0x1
    80001c64:	e50080e7          	jalr	-432(ra) # 80002ab0 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001c68:	00004517          	auipc	a0,0x4
    80001c6c:	48850513          	addi	a0,a0,1160 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	dd0080e7          	jalr	-560(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001c78:	00349793          	slli	a5,s1,0x3
    80001c7c:	fd040713          	addi	a4,s0,-48
    80001c80:	00f707b3          	add	a5,a4,a5
    80001c84:	ce07b503          	ld	a0,-800(a5)
    80001c88:	fffff097          	auipc	ra,0xfffff
    80001c8c:	5d0080e7          	jalr	1488(ra) # 80001258 <mem_free>
            if(retval != 0)
    80001c90:	04051263          	bnez	a0,80001cd4 <_Z13stressTestingv+0x148>
            Riscv::printString("alloc\n");
    80001c94:	00004517          	auipc	a0,0x4
    80001c98:	46450513          	addi	a0,a0,1124 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001c9c:	00001097          	auipc	ra,0x1
    80001ca0:	da4080e7          	jalr	-604(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz/2);
    80001ca4:	01f9551b          	srliw	a0,s2,0x1f
    80001ca8:	0125053b          	addw	a0,a0,s2
    80001cac:	4015551b          	sraiw	a0,a0,0x1
    80001cb0:	fffff097          	auipc	ra,0xfffff
    80001cb4:	578080e7          	jalr	1400(ra) # 80001228 <mem_alloc>
    80001cb8:	00349793          	slli	a5,s1,0x3
    80001cbc:	fd040713          	addi	a4,s0,-48
    80001cc0:	00f707b3          	add	a5,a4,a5
    80001cc4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001cc8:	02050063          	beqz	a0,80001ce8 <_Z13stressTestingv+0x15c>
        for(int i = 0 ; i < num;i+=2)
    80001ccc:	0024849b          	addiw	s1,s1,2
    80001cd0:	f75ff06f          	j	80001c44 <_Z13stressTestingv+0xb8>
                Riscv::printString("not OK\n");
    80001cd4:	00004517          	auipc	a0,0x4
    80001cd8:	3bc50513          	addi	a0,a0,956 # 80006090 <CONSOLE_STATUS+0x80>
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	d64080e7          	jalr	-668(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
                return;
    80001ce4:	f19ff06f          	j	80001bfc <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001ce8:	00004517          	auipc	a0,0x4
    80001cec:	41850513          	addi	a0,a0,1048 # 80006100 <CONSOLE_STATUS+0xf0>
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	d50080e7          	jalr	-688(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
                return;
    80001cf8:	f05ff06f          	j	80001bfc <_Z13stressTestingv+0x70>
        for(int i = 1 ; i < num;i+=2)
    80001cfc:	00100493          	li	s1,1
    80001d00:	06300793          	li	a5,99
    80001d04:	0a97c663          	blt	a5,s1,80001db0 <_Z13stressTestingv+0x224>
            Riscv::printString("i : ");
    80001d08:	00004517          	auipc	a0,0x4
    80001d0c:	33850513          	addi	a0,a0,824 # 80006040 <CONSOLE_STATUS+0x30>
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	d30080e7          	jalr	-720(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001d18:	00048513          	mv	a0,s1
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	d94080e7          	jalr	-620(ra) # 80002ab0 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001d24:	00004517          	auipc	a0,0x4
    80001d28:	3cc50513          	addi	a0,a0,972 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001d2c:	00001097          	auipc	ra,0x1
    80001d30:	d14080e7          	jalr	-748(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001d34:	00349793          	slli	a5,s1,0x3
    80001d38:	fd040713          	addi	a4,s0,-48
    80001d3c:	00f707b3          	add	a5,a4,a5
    80001d40:	ce07b503          	ld	a0,-800(a5)
    80001d44:	fffff097          	auipc	ra,0xfffff
    80001d48:	514080e7          	jalr	1300(ra) # 80001258 <mem_free>
            if(retval != 0)
    80001d4c:	02051e63          	bnez	a0,80001d88 <_Z13stressTestingv+0x1fc>
            Riscv::printString("alloc\n");
    80001d50:	00004517          	auipc	a0,0x4
    80001d54:	3a850513          	addi	a0,a0,936 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	ce8080e7          	jalr	-792(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz);
    80001d60:	00098513          	mv	a0,s3
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	4c4080e7          	jalr	1220(ra) # 80001228 <mem_alloc>
    80001d6c:	00349793          	slli	a5,s1,0x3
    80001d70:	fd040713          	addi	a4,s0,-48
    80001d74:	00f707b3          	add	a5,a4,a5
    80001d78:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001d7c:	02050063          	beqz	a0,80001d9c <_Z13stressTestingv+0x210>
        for(int i = 1 ; i < num;i+=2)
    80001d80:	0024849b          	addiw	s1,s1,2
    80001d84:	f7dff06f          	j	80001d00 <_Z13stressTestingv+0x174>
                Riscv::printString("not OK\n");
    80001d88:	00004517          	auipc	a0,0x4
    80001d8c:	30850513          	addi	a0,a0,776 # 80006090 <CONSOLE_STATUS+0x80>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	cb0080e7          	jalr	-848(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
                return;
    80001d98:	e65ff06f          	j	80001bfc <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001d9c:	00004517          	auipc	a0,0x4
    80001da0:	36450513          	addi	a0,a0,868 # 80006100 <CONSOLE_STATUS+0xf0>
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	c9c080e7          	jalr	-868(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
                return;
    80001dac:	e51ff06f          	j	80001bfc <_Z13stressTestingv+0x70>
        sz-=10;
    80001db0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001db4:	e69ff06f          	j	80001c1c <_Z13stressTestingv+0x90>
    Riscv::printString("OK\n");
    80001db8:	00004517          	auipc	a0,0x4
    80001dbc:	2e050513          	addi	a0,a0,736 # 80006098 <CONSOLE_STATUS+0x88>
    80001dc0:	00001097          	auipc	ra,0x1
    80001dc4:	c80080e7          	jalr	-896(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    80001dc8:	e35ff06f          	j	80001bfc <_Z13stressTestingv+0x70>

0000000080001dcc <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00113423          	sd	ra,8(sp)
    80001dd4:	00813023          	sd	s0,0(sp)
    80001dd8:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
    stressTesting();
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	db0080e7          	jalr	-592(ra) # 80001b8c <_Z13stressTestingv>
}
    80001de4:	00813083          	ld	ra,8(sp)
    80001de8:	00013403          	ld	s0,0(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret

0000000080001df4 <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    80001df4:	fe010113          	addi	sp,sp,-32
    80001df8:	00113c23          	sd	ra,24(sp)
    80001dfc:	00813823          	sd	s0,16(sp)
    80001e00:	00913423          	sd	s1,8(sp)
    80001e04:	02010413          	addi	s0,sp,32
    Riscv::printString("Runner started...\n");
    80001e08:	00004517          	auipc	a0,0x4
    80001e0c:	30050513          	addi	a0,a0,768 # 80006108 <CONSOLE_STATUS+0xf8>
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	c30080e7          	jalr	-976(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	c08080e7          	jalr	-1016(ra) # 80002a20 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001e20:	00005497          	auipc	s1,0x5
    80001e24:	56048493          	addi	s1,s1,1376 # 80007380 <_ZN3PCB7runningE>
    80001e28:	0004b783          	ld	a5,0(s1)
    80001e2c:	0187b703          	ld	a4,24(a5)
    80001e30:	0207b503          	ld	a0,32(a5)
    80001e34:	000700e7          	jalr	a4
    running->setState(PCB::FINISHED);
    80001e38:	0004b783          	ld	a5,0(s1)
    void setState(State s) {state = s;}
    80001e3c:	00300713          	li	a4,3
    80001e40:	02e7a823          	sw	a4,48(a5)
    Riscv::printString("PCB finished\n");
    80001e44:	00004517          	auipc	a0,0x4
    80001e48:	2dc50513          	addi	a0,a0,732 # 80006120 <CONSOLE_STATUS+0x110>
    80001e4c:	00001097          	auipc	ra,0x1
    80001e50:	bf4080e7          	jalr	-1036(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    //thread_exit();
    thread_dispatch();
    80001e54:	fffff097          	auipc	ra,0xfffff
    80001e58:	4b0080e7          	jalr	1200(ra) # 80001304 <thread_dispatch>
}
    80001e5c:	01813083          	ld	ra,24(sp)
    80001e60:	01013403          	ld	s0,16(sp)
    80001e64:	00813483          	ld	s1,8(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80001e70:	fe010113          	addi	sp,sp,-32
    80001e74:	00113c23          	sd	ra,24(sp)
    80001e78:	00813823          	sd	s0,16(sp)
    80001e7c:	00913423          	sd	s1,8(sp)
    80001e80:	02010413          	addi	s0,sp,32
    80001e84:	00050493          	mv	s1,a0
    })
    80001e88:	00e53423          	sd	a4,8(a0)
    80001e8c:	00053823          	sd	zero,16(a0)
    80001e90:	00b53c23          	sd	a1,24(a0)
    80001e94:	02c53023          	sd	a2,32(a0)
    80001e98:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001e9c:	000017b7          	lui	a5,0x1
    80001ea0:	00f686b3          	add	a3,a3,a5
    })
    80001ea4:	02d53c23          	sd	a3,56(a0)
    80001ea8:	00000797          	auipc	a5,0x0
    80001eac:	f4c78793          	addi	a5,a5,-180 # 80001df4 <_ZN3PCB6runnerEv>
    80001eb0:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	808080e7          	jalr	-2040(ra) # 800026bc <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80001ebc:	0004b023          	sd	zero,0(s1)
}
    80001ec0:	01813083          	ld	ra,24(sp)
    80001ec4:	01013403          	ld	s0,16(sp)
    80001ec8:	00813483          	ld	s1,8(sp)
    80001ecc:	02010113          	addi	sp,sp,32
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN3PCB5sleepEm>:
{
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00813423          	sd	s0,8(sp)
    80001edc:	01010413          	addi	s0,sp,16
}
    80001ee0:	00813403          	ld	s0,8(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN3PCB5startEv>:
{
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00113423          	sd	ra,8(sp)
    80001ef4:	00813023          	sd	s0,0(sp)
    80001ef8:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	7c0080e7          	jalr	1984(ra) # 800026bc <_ZN9Scheduler3putEP3PCB>
}
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret

0000000080001f14 <_ZN3PCBnwEm>:
        PCB::contextSwitchExiting(&running->context);
    }

}

void *PCB::operator new(size_t size) {
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00113423          	sd	ra,8(sp)
    80001f1c:	00813023          	sd	s0,0(sp)
    80001f20:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	2e8080e7          	jalr	744(ra) # 8000320c <_Z7kmallocm>
}
    80001f2c:	00813083          	ld	ra,8(sp)
    80001f30:	00013403          	ld	s0,0(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001f3c:	ff010113          	addi	sp,sp,-16
    80001f40:	00113423          	sd	ra,8(sp)
    80001f44:	00813023          	sd	s0,0(sp)
    80001f48:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	2e8080e7          	jalr	744(ra) # 80003234 <_Z5kfreePv>
}
    80001f54:	00813083          	ld	ra,8(sp)
    80001f58:	00013403          	ld	s0,0(sp)
    80001f5c:	01010113          	addi	sp,sp,16
    80001f60:	00008067          	ret

0000000080001f64 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80001f64:	ff010113          	addi	sp,sp,-16
    80001f68:	00113423          	sd	ra,8(sp)
    80001f6c:	00813023          	sd	s0,0(sp)
    80001f70:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80001f74:	02853503          	ld	a0,40(a0)
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	2bc080e7          	jalr	700(ra) # 80003234 <_Z5kfreePv>
}
    80001f80:	00813083          	ld	ra,8(sp)
    80001f84:	00013403          	ld	s0,0(sp)
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret

0000000080001f90 <_ZN3PCB8dispatchEv>:
{
    80001f90:	fe010113          	addi	sp,sp,-32
    80001f94:	00113c23          	sd	ra,24(sp)
    80001f98:	00813823          	sd	s0,16(sp)
    80001f9c:	00913423          	sd	s1,8(sp)
    80001fa0:	01213023          	sd	s2,0(sp)
    80001fa4:	02010413          	addi	s0,sp,32
    Riscv::printString("Dispatch called...\n");
    80001fa8:	00004517          	auipc	a0,0x4
    80001fac:	18850513          	addi	a0,a0,392 # 80006130 <CONSOLE_STATUS+0x120>
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	a90080e7          	jalr	-1392(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    PCB* old = running;
    80001fb8:	00005917          	auipc	s2,0x5
    80001fbc:	3c893903          	ld	s2,968(s2) # 80007380 <_ZN3PCB7runningE>
    State getState() {return state;}
    80001fc0:	03092703          	lw	a4,48(s2)
    if(old->getState() == PCB::RUNNING)
    80001fc4:	00100793          	li	a5,1
    80001fc8:	08f70263          	beq	a4,a5,8000204c <_ZN3PCB8dispatchEv+0xbc>
    PCB::running = Scheduler::get();
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	740080e7          	jalr	1856(ra) # 8000270c <_ZN9Scheduler3getEv>
    80001fd4:	00005497          	auipc	s1,0x5
    80001fd8:	3ac48493          	addi	s1,s1,940 # 80007380 <_ZN3PCB7runningE>
    80001fdc:	00a4b023          	sd	a0,0(s1)
    void setState(State s) {state = s;}
    80001fe0:	00100793          	li	a5,1
    80001fe4:	02f52823          	sw	a5,48(a0)
    Riscv::printString("Switching context...\n");
    80001fe8:	00004517          	auipc	a0,0x4
    80001fec:	16050513          	addi	a0,a0,352 # 80006148 <CONSOLE_STATUS+0x138>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	a50080e7          	jalr	-1456(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    if(PCB::exitingPCB == 0)
    80001ff8:	0084b483          	ld	s1,8(s1)
    80001ffc:	06048063          	beqz	s1,8000205c <_ZN3PCB8dispatchEv+0xcc>
        delete PCB::exitingPCB;
    80002000:	00048513          	mv	a0,s1
    80002004:	00000097          	auipc	ra,0x0
    80002008:	f60080e7          	jalr	-160(ra) # 80001f64 <_ZN3PCBD1Ev>
    8000200c:	00048513          	mv	a0,s1
    80002010:	00000097          	auipc	ra,0x0
    80002014:	f2c080e7          	jalr	-212(ra) # 80001f3c <_ZN3PCBdlEPv>
        PCB::exitingPCB = 0;
    80002018:	00005797          	auipc	a5,0x5
    8000201c:	36878793          	addi	a5,a5,872 # 80007380 <_ZN3PCB7runningE>
    80002020:	0007b423          	sd	zero,8(a5)
        PCB::contextSwitchExiting(&running->context);
    80002024:	0007b503          	ld	a0,0(a5)
    80002028:	03850513          	addi	a0,a0,56
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	1f0080e7          	jalr	496(ra) # 8000121c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>
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
    80002054:	66c080e7          	jalr	1644(ra) # 800026bc <_ZN9Scheduler3putEP3PCB>
    80002058:	f75ff06f          	j	80001fcc <_ZN3PCB8dispatchEv+0x3c>
        PCB::contextSwitch(&old->context, &running->context);
    8000205c:	00005597          	auipc	a1,0x5
    80002060:	3245b583          	ld	a1,804(a1) # 80007380 <_ZN3PCB7runningE>
    80002064:	03858593          	addi	a1,a1,56
    80002068:	03890513          	addi	a0,s2,56
    8000206c:	fffff097          	auipc	ra,0xfffff
    80002070:	19c080e7          	jalr	412(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    80002074:	fc1ff06f          	j	80002034 <_ZN3PCB8dispatchEv+0xa4>

0000000080002078 <_ZN3PCB17insertSleepingPCBEv>:

void PCB::insertSleepingPCB()
{
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00113423          	sd	ra,8(sp)
    80002080:	00813023          	sd	s0,0(sp)
    80002084:	01010413          	addi	s0,sp,16
    Riscv::printString("Inserting sleeping PCB...\n");
    80002088:	00004517          	auipc	a0,0x4
    8000208c:	0d850513          	addi	a0,a0,216 # 80006160 <CONSOLE_STATUS+0x150>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	9b0080e7          	jalr	-1616(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002098:	00005797          	auipc	a5,0x5
    8000209c:	2f87b783          	ld	a5,760(a5) # 80007390 <_ZN3PCB15sleepingPCBHeadE>
    PCB* prev = 0;
    800020a0:	00000593          	li	a1,0
    while(curr != 0)
    800020a4:	02078463          	beqz	a5,800020cc <_ZN3PCB17insertSleepingPCBEv+0x54>
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800020a8:	00005717          	auipc	a4,0x5
    800020ac:	2d873703          	ld	a4,728(a4) # 80007380 <_ZN3PCB7runningE>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    800020b0:	01073603          	ld	a2,16(a4)
    800020b4:	0107b683          	ld	a3,16(a5)
    800020b8:	00d66863          	bltu	a2,a3,800020c8 <_ZN3PCB17insertSleepingPCBEv+0x50>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800020bc:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800020c0:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800020c4:	fe1ff06f          	j	800020a4 <_ZN3PCB17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800020c8:	00f73023          	sd	a5,0(a4)
    }

    if(prev == 0)
    800020cc:	02058063          	beqz	a1,800020ec <_ZN3PCB17insertSleepingPCBEv+0x74>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800020d0:	00005797          	auipc	a5,0x5
    800020d4:	2b07b783          	ld	a5,688(a5) # 80007380 <_ZN3PCB7runningE>
    800020d8:	00f5b023          	sd	a5,0(a1)
}
    800020dc:	00813083          	ld	ra,8(sp)
    800020e0:	00013403          	ld	s0,0(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800020ec:	00005797          	auipc	a5,0x5
    800020f0:	29478793          	addi	a5,a5,660 # 80007380 <_ZN3PCB7runningE>
    800020f4:	0007b703          	ld	a4,0(a5)
    800020f8:	00e7b823          	sd	a4,16(a5)
    800020fc:	fe1ff06f          	j	800020dc <_ZN3PCB17insertSleepingPCBEv+0x64>

0000000080002100 <_ZN3PCB13tryToWakePCBsEv>:

void PCB::tryToWakePCBs() {
    80002100:	fe010113          	addi	sp,sp,-32
    80002104:	00113c23          	sd	ra,24(sp)
    80002108:	00813823          	sd	s0,16(sp)
    8000210c:	00913423          	sd	s1,8(sp)
    80002110:	01213023          	sd	s2,0(sp)
    80002114:	02010413          	addi	s0,sp,32
    Riscv::printString("Waking PCBs...\n");
    80002118:	00004517          	auipc	a0,0x4
    8000211c:	06850513          	addi	a0,a0,104 # 80006180 <CONSOLE_STATUS+0x170>
    80002120:	00001097          	auipc	ra,0x1
    80002124:	920080e7          	jalr	-1760(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    PCB* curr = sleepingPCBHead;
    80002128:	00005497          	auipc	s1,0x5
    8000212c:	2684b483          	ld	s1,616(s1) # 80007390 <_ZN3PCB15sleepingPCBHeadE>
    80002130:	0380006f          	j	80002168 <_ZN3PCB13tryToWakePCBsEv+0x68>
    while(curr != 0)
    {
        if(curr->getTimeToSleep() == 1UL)
        {
            Riscv::printString("PCB woken...\n");
    80002134:	00004517          	auipc	a0,0x4
    80002138:	05c50513          	addi	a0,a0,92 # 80006190 <CONSOLE_STATUS+0x180>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	904080e7          	jalr	-1788(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            PCB* old = curr;
            curr=curr->nextPCB;
    80002144:	0004b903          	ld	s2,0(s1)
    void setState(State s) {state = s;}
    80002148:	0204a823          	sw	zero,48(s1)
            old->setState(PCB::READY);
            old->nextPCB = 0;
    8000214c:	0004b023          	sd	zero,0(s1)
            Scheduler::put(old);
    80002150:	00048513          	mv	a0,s1
    80002154:	00000097          	auipc	ra,0x0
    80002158:	568080e7          	jalr	1384(ra) # 800026bc <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    8000215c:	00005797          	auipc	a5,0x5
    80002160:	2327ba23          	sd	s2,564(a5) # 80007390 <_ZN3PCB15sleepingPCBHeadE>
            curr=curr->nextPCB;
    80002164:	00090493          	mv	s1,s2
    while(curr != 0)
    80002168:	02048063          	beqz	s1,80002188 <_ZN3PCB13tryToWakePCBsEv+0x88>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000216c:	0104b783          	ld	a5,16(s1)
        if(curr->getTimeToSleep() == 1UL)
    80002170:	00100713          	li	a4,1
    80002174:	fce780e3          	beq	a5,a4,80002134 <_ZN3PCB13tryToWakePCBsEv+0x34>
        }
        else
        {
            curr->setTimeToSleep(curr->getTimeToSleep() - 1);
    80002178:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000217c:	00f4b823          	sd	a5,16(s1)
            curr = curr->nextPCB;
    80002180:	0004b483          	ld	s1,0(s1)
    80002184:	fe5ff06f          	j	80002168 <_ZN3PCB13tryToWakePCBsEv+0x68>
        }
    }
}
    80002188:	01813083          	ld	ra,24(sp)
    8000218c:	01013403          	ld	s0,16(sp)
    80002190:	00813483          	ld	s1,8(sp)
    80002194:	00013903          	ld	s2,0(sp)
    80002198:	02010113          	addi	sp,sp,32
    8000219c:	00008067          	ret

00000000800021a0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.h"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800021a0:	ff010113          	addi	sp,sp,-16
    800021a4:	00113423          	sd	ra,8(sp)
    800021a8:	00813023          	sd	s0,0(sp)
    800021ac:	01010413          	addi	s0,sp,16
    Riscv::printString("Inserting sleeping PCB...\n");
    800021b0:	00004517          	auipc	a0,0x4
    800021b4:	fb050513          	addi	a0,a0,-80 # 80006160 <CONSOLE_STATUS+0x150>
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	888080e7          	jalr	-1912(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800021c0:	00005797          	auipc	a5,0x5
    800021c4:	1e07b783          	ld	a5,480(a5) # 800073a0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800021c8:	00000593          	li	a1,0
    while(curr != 0)
    800021cc:	02078663          	beqz	a5,800021f8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x58>
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800021d0:	00005717          	auipc	a4,0x5
    800021d4:	15873703          	ld	a4,344(a4) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021d8:	00073703          	ld	a4,0(a4)
    uint64 getTimeToSleep() {return timeToSleep;}
    800021dc:	01073603          	ld	a2,16(a4)
    800021e0:	0107b683          	ld	a3,16(a5)
    800021e4:	00d66863          	bltu	a2,a3,800021f4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800021e8:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800021ec:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800021f0:	fddff06f          	j	800021cc <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800021f4:	00f73023          	sd	a5,0(a4)
    }

    if(prev == 0)
    800021f8:	02058a63          	beqz	a1,8000222c <_ZN12SleepPCBList17insertSleepingPCBEv+0x8c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800021fc:	00005797          	auipc	a5,0x5
    80002200:	12c7b783          	ld	a5,300(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002204:	0007b783          	ld	a5,0(a5)
    80002208:	0107b703          	ld	a4,16(a5)
    8000220c:	0105b683          	ld	a3,16(a1)
    80002210:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002214:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    80002218:	00f5b023          	sd	a5,0(a1)
    }
}
    8000221c:	00813083          	ld	ra,8(sp)
    80002220:	00013403          	ld	s0,0(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000222c:	00005797          	auipc	a5,0x5
    80002230:	0fc7b783          	ld	a5,252(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002234:	0007b783          	ld	a5,0(a5)
    80002238:	00005717          	auipc	a4,0x5
    8000223c:	16f73423          	sd	a5,360(a4) # 800073a0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002240:	0007b703          	ld	a4,0(a5)
    80002244:	fc070ce3          	beqz	a4,8000221c <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002248:	01073683          	ld	a3,16(a4)
    8000224c:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002250:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002254:	00f73823          	sd	a5,16(a4)
    80002258:	fc5ff06f          	j	8000221c <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>

000000008000225c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    8000225c:	fe010113          	addi	sp,sp,-32
    80002260:	00113c23          	sd	ra,24(sp)
    80002264:	00813823          	sd	s0,16(sp)
    80002268:	00913423          	sd	s1,8(sp)
    8000226c:	02010413          	addi	s0,sp,32
    Riscv::printString("Waking pcbs...\n");
    80002270:	00004517          	auipc	a0,0x4
    80002274:	f3050513          	addi	a0,a0,-208 # 800061a0 <CONSOLE_STATUS+0x190>
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	7c8080e7          	jalr	1992(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
    PCB* curr = sleepingPCBHead;
    80002280:	00005517          	auipc	a0,0x5
    80002284:	12053503          	ld	a0,288(a0) # 800073a0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002288:	02050663          	beqz	a0,800022b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x58>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000228c:	01053783          	ld	a5,16(a0)
    {
        Riscv::printString("NULL\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002290:	00100713          	li	a4,1
    80002294:	04e78863          	beq	a5,a4,800022e4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x88>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002298:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000229c:	00f53823          	sd	a5,16(a0)
    }
}
    800022a0:	01813083          	ld	ra,24(sp)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	00813483          	ld	s1,8(sp)
    800022ac:	02010113          	addi	sp,sp,32
    800022b0:	00008067          	ret
        Riscv::printString("NULL\n");
    800022b4:	00004517          	auipc	a0,0x4
    800022b8:	efc50513          	addi	a0,a0,-260 # 800061b0 <CONSOLE_STATUS+0x1a0>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	784080e7          	jalr	1924(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
        return;
    800022c4:	fddff06f          	j	800022a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x44>
            curr = curr->nextPCB;
    800022c8:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    800022cc:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	3ec080e7          	jalr	1004(ra) # 800026bc <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    800022d8:	00005797          	auipc	a5,0x5
    800022dc:	0c97b423          	sd	s1,200(a5) # 800073a0 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    800022e0:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    800022e4:	fa050ee3          	beqz	a0,800022a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x44>
    800022e8:	00005797          	auipc	a5,0x5
    800022ec:	0b87b783          	ld	a5,184(a5) # 800073a0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800022f0:	fca78ce3          	beq	a5,a0,800022c8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x6c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800022f4:	01053783          	ld	a5,16(a0)
    800022f8:	fc0788e3          	beqz	a5,800022c8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x6c>
    800022fc:	fa5ff06f          	j	800022a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x44>

0000000080002300 <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.h"

void Queue::pop() {
    80002300:	fe010113          	addi	sp,sp,-32
    80002304:	00113c23          	sd	ra,24(sp)
    80002308:	00813823          	sd	s0,16(sp)
    8000230c:	00913423          	sd	s1,8(sp)
    80002310:	01213023          	sd	s2,0(sp)
    80002314:	02010413          	addi	s0,sp,32
    80002318:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    8000231c:	00053503          	ld	a0,0(a0)
    80002320:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002324:	00001097          	auipc	ra,0x1
    80002328:	f10080e7          	jalr	-240(ra) # 80003234 <_Z5kfreePv>
    first = newFirst;
    8000232c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002330:	00090e63          	beqz	s2,8000234c <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002334:	01813083          	ld	ra,24(sp)
    80002338:	01013403          	ld	s0,16(sp)
    8000233c:	00813483          	ld	s1,8(sp)
    80002340:	00013903          	ld	s2,0(sp)
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret
        first = last = 0;
    8000234c:	0004b423          	sd	zero,8(s1)
    80002350:	0004b023          	sd	zero,0(s1)
}
    80002354:	fe1ff06f          	j	80002334 <_ZN5Queue3popEv+0x34>

0000000080002358 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002358:	fe010113          	addi	sp,sp,-32
    8000235c:	00113c23          	sd	ra,24(sp)
    80002360:	00813823          	sd	s0,16(sp)
    80002364:	00913423          	sd	s1,8(sp)
    80002368:	01213023          	sd	s2,0(sp)
    8000236c:	02010413          	addi	s0,sp,32
    80002370:	00050493          	mv	s1,a0
    80002374:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002378:	01000513          	li	a0,16
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	e90080e7          	jalr	-368(ra) # 8000320c <_Z7kmallocm>
    newElem->data = t;
    80002384:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002388:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    8000238c:	0004b783          	ld	a5,0(s1)
    80002390:	02078463          	beqz	a5,800023b8 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002394:	0084b783          	ld	a5,8(s1)
    80002398:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    8000239c:	00a4b423          	sd	a0,8(s1)
    }
}
    800023a0:	01813083          	ld	ra,24(sp)
    800023a4:	01013403          	ld	s0,16(sp)
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	00013903          	ld	s2,0(sp)
    800023b0:	02010113          	addi	sp,sp,32
    800023b4:	00008067          	ret
        first = newElem;
    800023b8:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800023bc:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800023c0:	00053423          	sd	zero,8(a0)
    800023c4:	0004b783          	ld	a5,0(s1)
    800023c8:	0007b423          	sd	zero,8(a5)
    800023cc:	fd5ff06f          	j	800023a0 <_ZN5Queue4pushEP3PCB+0x48>

00000000800023d0 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00813423          	sd	s0,8(sp)
    800023d8:	01010413          	addi	s0,sp,16
    if(first == 0)
    800023dc:	00053503          	ld	a0,0(a0)
    800023e0:	00050463          	beqz	a0,800023e8 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800023e4:	00053503          	ld	a0,0(a0)
}
    800023e8:	00813403          	ld	s0,8(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN5QueueC1Ev>:

Queue::Queue() {
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00813423          	sd	s0,8(sp)
    800023fc:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002400:	00053423          	sd	zero,8(a0)
    80002404:	00053023          	sd	zero,0(a0)
}
    80002408:	00813403          	ld	s0,8(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002414:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002418:	04050063          	beqz	a0,80002458 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    8000241c:	fe010113          	addi	sp,sp,-32
    80002420:	00113c23          	sd	ra,24(sp)
    80002424:	00813823          	sd	s0,16(sp)
    80002428:	00913423          	sd	s1,8(sp)
    8000242c:	02010413          	addi	s0,sp,32
    {
        //todo
        //vrati ovo
        //sad je zakomentarisano zbog kfree
        Elem* old = curr;
        curr = curr->next;
    80002430:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002434:	00001097          	auipc	ra,0x1
    80002438:	e00080e7          	jalr	-512(ra) # 80003234 <_Z5kfreePv>
        curr = curr->next;
    8000243c:	00048513          	mv	a0,s1
    while(curr != 0)
    80002440:	fe0498e3          	bnez	s1,80002430 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002444:	01813083          	ld	ra,24(sp)
    80002448:	01013403          	ld	s0,16(sp)
    8000244c:	00813483          	ld	s1,8(sp)
    80002450:	02010113          	addi	sp,sp,32
    80002454:	00008067          	ret
    80002458:	00008067          	ret

000000008000245c <_ZN5Queue4sizeEv>:

int Queue::size() {
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00813423          	sd	s0,8(sp)
    80002464:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002468:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    8000246c:	00000513          	li	a0,0
    while(curr != 0)
    80002470:	00078863          	beqz	a5,80002480 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002474:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002478:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000247c:	ff5ff06f          	j	80002470 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000249c:	00001097          	auipc	ra,0x1
    800024a0:	d70080e7          	jalr	-656(ra) # 8000320c <_Z7kmallocm>
}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00113423          	sd	ra,8(sp)
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800024c4:	00001097          	auipc	ra,0x1
    800024c8:	d70080e7          	jalr	-656(ra) # 80003234 <_Z5kfreePv>
}
    800024cc:	00813083          	ld	ra,8(sp)
    800024d0:	00013403          	ld	s0,0(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZN9Scheduler4put2EP3PCB>:
void Scheduler::put2(PCB *pcb) {
    800024dc:	fe010113          	addi	sp,sp,-32
    800024e0:	00113c23          	sd	ra,24(sp)
    800024e4:	00813823          	sd	s0,16(sp)
    800024e8:	00913423          	sd	s1,8(sp)
    800024ec:	01213023          	sd	s2,0(sp)
    800024f0:	02010413          	addi	s0,sp,32
    800024f4:	00050493          	mv	s1,a0
    void setState(State s) {state = s;}
    800024f8:	02052823          	sw	zero,48(a0)
    if(scheduler == 0)
    800024fc:	00005797          	auipc	a5,0x5
    80002500:	eac7b783          	ld	a5,-340(a5) # 800073a8 <_ZN9Scheduler9schedulerE>
    80002504:	02078863          	beqz	a5,80002534 <_ZN9Scheduler4put2EP3PCB+0x58>
    scheduler->queuePCB.push(pcb);
    80002508:	00048593          	mv	a1,s1
    8000250c:	00005517          	auipc	a0,0x5
    80002510:	e9c53503          	ld	a0,-356(a0) # 800073a8 <_ZN9Scheduler9schedulerE>
    80002514:	00000097          	auipc	ra,0x0
    80002518:	e44080e7          	jalr	-444(ra) # 80002358 <_ZN5Queue4pushEP3PCB>
}
    8000251c:	01813083          	ld	ra,24(sp)
    80002520:	01013403          	ld	s0,16(sp)
    80002524:	00813483          	ld	s1,8(sp)
    80002528:	00013903          	ld	s2,0(sp)
    8000252c:	02010113          	addi	sp,sp,32
    80002530:	00008067          	ret
        scheduler = new Scheduler();
    80002534:	01000513          	li	a0,16
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	f54080e7          	jalr	-172(ra) # 8000248c <_ZN9SchedulernwEm>
    80002540:	00050913          	mv	s2,a0
    80002544:	00053023          	sd	zero,0(a0)
    80002548:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	ea8080e7          	jalr	-344(ra) # 800023f4 <_ZN5QueueC1Ev>
    80002554:	00005797          	auipc	a5,0x5
    80002558:	e527ba23          	sd	s2,-428(a5) # 800073a8 <_ZN9Scheduler9schedulerE>
    8000255c:	fadff06f          	j	80002508 <_ZN9Scheduler4put2EP3PCB+0x2c>
    80002560:	00050493          	mv	s1,a0
    80002564:	00090513          	mv	a0,s2
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	f4c080e7          	jalr	-180(ra) # 800024b4 <_ZN9SchedulerdlEPv>
    80002570:	00048513          	mv	a0,s1
    80002574:	00006097          	auipc	ra,0x6
    80002578:	f34080e7          	jalr	-204(ra) # 800084a8 <_Unwind_Resume>

000000008000257c <_ZN9Scheduler4get2Ev>:
PCB *Scheduler::get2() {
    8000257c:	fe010113          	addi	sp,sp,-32
    80002580:	00113c23          	sd	ra,24(sp)
    80002584:	00813823          	sd	s0,16(sp)
    80002588:	00913423          	sd	s1,8(sp)
    8000258c:	01213023          	sd	s2,0(sp)
    80002590:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80002594:	00005797          	auipc	a5,0x5
    80002598:	e147b783          	ld	a5,-492(a5) # 800073a8 <_ZN9Scheduler9schedulerE>
    8000259c:	04078263          	beqz	a5,800025e0 <_ZN9Scheduler4get2Ev+0x64>
    PCB* fr = scheduler->queuePCB.front();
    800025a0:	00005917          	auipc	s2,0x5
    800025a4:	e0890913          	addi	s2,s2,-504 # 800073a8 <_ZN9Scheduler9schedulerE>
    800025a8:	00093503          	ld	a0,0(s2)
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	e24080e7          	jalr	-476(ra) # 800023d0 <_ZN5Queue5frontEv>
    800025b4:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    800025b8:	00093503          	ld	a0,0(s2)
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	d44080e7          	jalr	-700(ra) # 80002300 <_ZN5Queue3popEv>
}
    800025c4:	00048513          	mv	a0,s1
    800025c8:	01813083          	ld	ra,24(sp)
    800025cc:	01013403          	ld	s0,16(sp)
    800025d0:	00813483          	ld	s1,8(sp)
    800025d4:	00013903          	ld	s2,0(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret
        scheduler = new Scheduler();
    800025e0:	01000513          	li	a0,16
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	ea8080e7          	jalr	-344(ra) # 8000248c <_ZN9SchedulernwEm>
    800025ec:	00050493          	mv	s1,a0
    800025f0:	00053023          	sd	zero,0(a0)
    800025f4:	00053423          	sd	zero,8(a0)
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	dfc080e7          	jalr	-516(ra) # 800023f4 <_ZN5QueueC1Ev>
    80002600:	00005797          	auipc	a5,0x5
    80002604:	da97b423          	sd	s1,-600(a5) # 800073a8 <_ZN9Scheduler9schedulerE>
    80002608:	f99ff06f          	j	800025a0 <_ZN9Scheduler4get2Ev+0x24>
    8000260c:	00050913          	mv	s2,a0
    80002610:	00048513          	mv	a0,s1
    80002614:	00000097          	auipc	ra,0x0
    80002618:	ea0080e7          	jalr	-352(ra) # 800024b4 <_ZN9SchedulerdlEPv>
    8000261c:	00090513          	mv	a0,s2
    80002620:	00006097          	auipc	ra,0x6
    80002624:	e88080e7          	jalr	-376(ra) # 800084a8 <_Unwind_Resume>

0000000080002628 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    80002628:	fe010113          	addi	sp,sp,-32
    8000262c:	00113c23          	sd	ra,24(sp)
    80002630:	00813823          	sd	s0,16(sp)
    80002634:	00913423          	sd	s1,8(sp)
    80002638:	01213023          	sd	s2,0(sp)
    8000263c:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80002640:	00005797          	auipc	a5,0x5
    80002644:	d687b783          	ld	a5,-664(a5) # 800073a8 <_ZN9Scheduler9schedulerE>
    80002648:	02078663          	beqz	a5,80002674 <_ZN9Scheduler7getSizeEv+0x4c>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    8000264c:	00005517          	auipc	a0,0x5
    80002650:	d5c53503          	ld	a0,-676(a0) # 800073a8 <_ZN9Scheduler9schedulerE>
    80002654:	00000097          	auipc	ra,0x0
    80002658:	e08080e7          	jalr	-504(ra) # 8000245c <_ZN5Queue4sizeEv>
}
    8000265c:	01813083          	ld	ra,24(sp)
    80002660:	01013403          	ld	s0,16(sp)
    80002664:	00813483          	ld	s1,8(sp)
    80002668:	00013903          	ld	s2,0(sp)
    8000266c:	02010113          	addi	sp,sp,32
    80002670:	00008067          	ret
        scheduler = new Scheduler();
    80002674:	01000513          	li	a0,16
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	e14080e7          	jalr	-492(ra) # 8000248c <_ZN9SchedulernwEm>
    80002680:	00050493          	mv	s1,a0
    80002684:	00053023          	sd	zero,0(a0)
    80002688:	00053423          	sd	zero,8(a0)
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	d68080e7          	jalr	-664(ra) # 800023f4 <_ZN5QueueC1Ev>
    80002694:	00005797          	auipc	a5,0x5
    80002698:	d097ba23          	sd	s1,-748(a5) # 800073a8 <_ZN9Scheduler9schedulerE>
    8000269c:	fb1ff06f          	j	8000264c <_ZN9Scheduler7getSizeEv+0x24>
    800026a0:	00050913          	mv	s2,a0
    800026a4:	00048513          	mv	a0,s1
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	e0c080e7          	jalr	-500(ra) # 800024b4 <_ZN9SchedulerdlEPv>
    800026b0:	00090513          	mv	a0,s2
    800026b4:	00006097          	auipc	ra,0x6
    800026b8:	df4080e7          	jalr	-524(ra) # 800084a8 <_Unwind_Resume>

00000000800026bc <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb) {
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00813423          	sd	s0,8(sp)
    800026c4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800026c8:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    800026cc:	00005797          	auipc	a5,0x5
    800026d0:	ce47b783          	ld	a5,-796(a5) # 800073b0 <_ZN9Scheduler16schedulerPCBHeadE>
    800026d4:	02078263          	beqz	a5,800026f8 <_ZN9Scheduler3putEP3PCB+0x3c>
    {
        schedulerPCBHead = schedulerPCBTail = pcb;
    }
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800026d8:	00005797          	auipc	a5,0x5
    800026dc:	cd078793          	addi	a5,a5,-816 # 800073a8 <_ZN9Scheduler9schedulerE>
    800026e0:	0107b703          	ld	a4,16(a5)
    800026e4:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    800026e8:	00a7b823          	sd	a0,16(a5)
    }
}
    800026ec:	00813403          	ld	s0,8(sp)
    800026f0:	01010113          	addi	sp,sp,16
    800026f4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800026f8:	00005797          	auipc	a5,0x5
    800026fc:	cb078793          	addi	a5,a5,-848 # 800073a8 <_ZN9Scheduler9schedulerE>
    80002700:	00a7b823          	sd	a0,16(a5)
    80002704:	00a7b423          	sd	a0,8(a5)
    80002708:	fe5ff06f          	j	800026ec <_ZN9Scheduler3putEP3PCB+0x30>

000000008000270c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get() {
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00813423          	sd	s0,8(sp)
    80002714:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002718:	00005517          	auipc	a0,0x5
    8000271c:	c9853503          	ld	a0,-872(a0) # 800073b0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002720:	00050c63          	beqz	a0,80002738 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002724:	00053783          	ld	a5,0(a0)
    80002728:	00078e63          	beqz	a5,80002744 <_ZN9Scheduler3getEv+0x38>
    {
        schedulerPCBHead = schedulerPCBTail = 0;
    }
    else
    {
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000272c:	00005717          	auipc	a4,0x5
    80002730:	c8f73223          	sd	a5,-892(a4) # 800073b0 <_ZN9Scheduler16schedulerPCBHeadE>
    }
    retval->nextPCB = 0;
    80002734:	00053023          	sd	zero,0(a0)
    return retval;
}
    80002738:	00813403          	ld	s0,8(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002744:	00005797          	auipc	a5,0x5
    80002748:	c6478793          	addi	a5,a5,-924 # 800073a8 <_ZN9Scheduler9schedulerE>
    8000274c:	0007b823          	sd	zero,16(a5)
    80002750:	0007b423          	sd	zero,8(a5)
    80002754:	fe1ff06f          	j	80002734 <_ZN9Scheduler3getEv+0x28>

0000000080002758 <main>:
#include "../lib/console.h"
#include "../h/Riscv.h"
#include "../h/Tests.h"

void main()
{
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	1b0080e7          	jalr	432(ra) # 80002918 <_ZN5Riscv10initSystemEv>

    //memoryAllocationTests();
    threadTests();
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	0cc080e7          	jalr	204(ra) # 8000183c <_Z11threadTestsv>
    //testQueue();

    Riscv::endSystem();
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	280080e7          	jalr	640(ra) # 800029f8 <_ZN5Riscv9endSystemEv>
    80002780:	00813083          	ld	ra,8(sp)
    80002784:	00013403          	ld	s0,0(sp)
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00008067          	ret

0000000080002790 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    80002790:	ff010113          	addi	sp,sp,-16
    80002794:	00113423          	sd	ra,8(sp)
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800027a0:	fffff097          	auipc	ra,0xfffff
    800027a4:	a88080e7          	jalr	-1400(ra) # 80001228 <mem_alloc>
}
    800027a8:	00813083          	ld	ra,8(sp)
    800027ac:	00013403          	ld	s0,0(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret

00000000800027b8 <_ZdlPv>:

void operator delete(void * p)
{
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00113423          	sd	ra,8(sp)
    800027c0:	00813023          	sd	s0,0(sp)
    800027c4:	01010413          	addi	s0,sp,16
   mem_free(p);
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	a90080e7          	jalr	-1392(ra) # 80001258 <mem_free>
}
    800027d0:	00813083          	ld	ra,8(sp)
    800027d4:	00013403          	ld	s0,0(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret

00000000800027e0 <_ZN6Thread5startEv>:
//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    if(myHandle == 0)
    800027e0:	00053783          	ld	a5,0(a0)
    800027e4:	00078463          	beqz	a5,800027ec <_ZN6Thread5startEv+0xc>
    800027e8:	00008067          	ret
void Thread::start() {
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00113423          	sd	ra,8(sp)
    800027f4:	00813023          	sd	s0,0(sp)
    800027f8:	01010413          	addi	s0,sp,16
    {
        int retval = thread_create((void**)&myHandle, f, args);
    800027fc:	01053603          	ld	a2,16(a0)
    80002800:	00853583          	ld	a1,8(a0)
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	a80080e7          	jalr	-1408(ra) # 80001284 <thread_create>
        {
        //todo
        //what then
        }
    }
}
    8000280c:	00813083          	ld	ra,8(sp)
    80002810:	00013403          	ld	s0,0(sp)
    80002814:	01010113          	addi	sp,sp,16
    80002818:	00008067          	ret

000000008000281c <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    8000281c:	ff010113          	addi	sp,sp,-16
    80002820:	00113423          	sd	ra,8(sp)
    80002824:	00813023          	sd	s0,0(sp)
    80002828:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	ad8080e7          	jalr	-1320(ra) # 80001304 <thread_dispatch>
}
    80002834:	00813083          	ld	ra,8(sp)
    80002838:	00013403          	ld	s0,0(sp)
    8000283c:	01010113          	addi	sp,sp,16
    80002840:	00008067          	ret

0000000080002844 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00813423          	sd	s0,8(sp)
    8000284c:	01010413          	addi	s0,sp,16
    //PCB::sleep(time);
}
    80002850:	00813403          	ld	s0,8(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00008067          	ret

000000008000285c <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00813423          	sd	s0,8(sp)
    80002864:	01010413          	addi	s0,sp,16
    myHandle = 0;
    80002868:	00053023          	sd	zero,0(a0)
    f = body;
    8000286c:	00b53423          	sd	a1,8(a0)
    this->args = args;
    80002870:	00c53823          	sd	a2,16(a0)
    //if(retval != 0)
    //{
        //todo
        //what then
    //}
}
    80002874:	00813403          	ld	s0,8(sp)
    80002878:	01010113          	addi	sp,sp,16
    8000287c:	00008067          	ret

0000000080002880 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00813423          	sd	s0,8(sp)
    80002888:	01010413          	addi	s0,sp,16

}
    8000288c:	00813403          	ld	s0,8(sp)
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret

0000000080002898 <_ZN9Semaphore4waitEv>:

//Semaphore

void Semaphore::wait() {
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00113423          	sd	ra,8(sp)
    800028a0:	00813023          	sd	s0,0(sp)
    800028a4:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    800028a8:	00053503          	ld	a0,0(a0)
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	b04080e7          	jalr	-1276(ra) # 800013b0 <sem_wait>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800028b4:	00813083          	ld	ra,8(sp)
    800028b8:	00013403          	ld	s0,0(sp)
    800028bc:	01010113          	addi	sp,sp,16
    800028c0:	00008067          	ret

00000000800028c4 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    800028c4:	ff010113          	addi	sp,sp,-16
    800028c8:	00113423          	sd	ra,8(sp)
    800028cc:	00813023          	sd	s0,0(sp)
    800028d0:	01010413          	addi	s0,sp,16
    int retval = sem_open((void**)&myHandle, init);
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	a78080e7          	jalr	-1416(ra) # 8000134c <sem_open>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800028dc:	00813083          	ld	ra,8(sp)
    800028e0:	00013403          	ld	s0,0(sp)
    800028e4:	01010113          	addi	sp,sp,16
    800028e8:	00008067          	ret

00000000800028ec <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    800028ec:	ff010113          	addi	sp,sp,-16
    800028f0:	00113423          	sd	ra,8(sp)
    800028f4:	00813023          	sd	s0,0(sp)
    800028f8:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    800028fc:	00053503          	ld	a0,0(a0)
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	adc080e7          	jalr	-1316(ra) # 800013dc <sem_signal>
    {
        //todo
        //what then
    }

}
    80002908:	00813083          	ld	ra,8(sp)
    8000290c:	00013403          	ld	s0,0(sp)
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret

0000000080002918 <_ZN5Riscv10initSystemEv>:
#include "../h/syscall_cpp.h"
#include "../h/SleepPCBList.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80002918:	fe010113          	addi	sp,sp,-32
    8000291c:	00113c23          	sd	ra,24(sp)
    80002920:	00813823          	sd	s0,16(sp)
    80002924:	00913423          	sd	s1,8(sp)
    80002928:	01213023          	sd	s2,0(sp)
    8000292c:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002930:	00005797          	auipc	a5,0x5
    80002934:	9d87b783          	ld	a5,-1576(a5) # 80007308 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002938:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    8000293c:	01800513          	li	a0,24
    80002940:	00000097          	auipc	ra,0x0
    80002944:	e50080e7          	jalr	-432(ra) # 80002790 <_Znwm>
    80002948:	00050493          	mv	s1,a0
    8000294c:	00000613          	li	a2,0
    80002950:	00000593          	li	a1,0
    80002954:	00000097          	auipc	ra,0x0
    80002958:	f08080e7          	jalr	-248(ra) # 8000285c <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    8000295c:	00048513          	mv	a0,s1
    80002960:	00000097          	auipc	ra,0x0
    80002964:	e80080e7          	jalr	-384(ra) # 800027e0 <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	da4080e7          	jalr	-604(ra) # 8000270c <_ZN9Scheduler3getEv>
    80002970:	00005797          	auipc	a5,0x5
    80002974:	9b87b783          	ld	a5,-1608(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002978:	00a7b023          	sd	a0,0(a5)
    8000297c:	00100793          	li	a5,1
    80002980:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002984:	01813083          	ld	ra,24(sp)
    80002988:	01013403          	ld	s0,16(sp)
    8000298c:	00813483          	ld	s1,8(sp)
    80002990:	00013903          	ld	s2,0(sp)
    80002994:	02010113          	addi	sp,sp,32
    80002998:	00008067          	ret
    8000299c:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    800029a0:	00048513          	mv	a0,s1
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	e14080e7          	jalr	-492(ra) # 800027b8 <_ZdlPv>
    800029ac:	00090513          	mv	a0,s2
    800029b0:	00006097          	auipc	ra,0x6
    800029b4:	af8080e7          	jalr	-1288(ra) # 800084a8 <_Unwind_Resume>

00000000800029b8 <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    800029b8:	ff010113          	addi	sp,sp,-16
    800029bc:	00813423          	sd	s0,8(sp)
    800029c0:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800029c4:	00200793          	li	a5,2
    800029c8:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800029cc:	00813403          	ld	s0,8(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	00008067          	ret

00000000800029d8 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800029d8:	ff010113          	addi	sp,sp,-16
    800029dc:	00813423          	sd	s0,8(sp)
    800029e0:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800029e4:	00200793          	li	a5,2
    800029e8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800029ec:	00813403          	ld	s0,8(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	00813023          	sd	s0,0(sp)
    80002a04:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	fd0080e7          	jalr	-48(ra) # 800029d8 <_ZN5Riscv17disableInterruptsEv>
}
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00013403          	ld	s0,0(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002a20:	ff010113          	addi	sp,sp,-16
    80002a24:	00813423          	sd	s0,8(sp)
    80002a28:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002a2c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002a30:	10200073          	sret
}
    80002a34:	00813403          	ld	s0,8(sp)
    80002a38:	01010113          	addi	sp,sp,16
    80002a3c:	00008067          	ret

0000000080002a40 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80002a40:	fd010113          	addi	sp,sp,-48
    80002a44:	02113423          	sd	ra,40(sp)
    80002a48:	02813023          	sd	s0,32(sp)
    80002a4c:	00913c23          	sd	s1,24(sp)
    80002a50:	01213823          	sd	s2,16(sp)
    80002a54:	03010413          	addi	s0,sp,48
    80002a58:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002a5c:	100027f3          	csrr	a5,sstatus
    80002a60:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002a64:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002a68:	00200793          	li	a5,2
    80002a6c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80002a70:	0004c503          	lbu	a0,0(s1)
    80002a74:	00050a63          	beqz	a0,80002a88 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80002a78:	00003097          	auipc	ra,0x3
    80002a7c:	ae4080e7          	jalr	-1308(ra) # 8000555c <__putc>
        string++;
    80002a80:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002a84:	fedff06f          	j	80002a70 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002a88:	0009091b          	sext.w	s2,s2
    80002a8c:	00297913          	andi	s2,s2,2
    80002a90:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002a94:	10092073          	csrs	sstatus,s2
}
    80002a98:	02813083          	ld	ra,40(sp)
    80002a9c:	02013403          	ld	s0,32(sp)
    80002aa0:	01813483          	ld	s1,24(sp)
    80002aa4:	01013903          	ld	s2,16(sp)
    80002aa8:	03010113          	addi	sp,sp,48
    80002aac:	00008067          	ret

0000000080002ab0 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002ab0:	fc010113          	addi	sp,sp,-64
    80002ab4:	02113c23          	sd	ra,56(sp)
    80002ab8:	02813823          	sd	s0,48(sp)
    80002abc:	02913423          	sd	s1,40(sp)
    80002ac0:	03213023          	sd	s2,32(sp)
    80002ac4:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002ac8:	100027f3          	csrr	a5,sstatus
    80002acc:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002ad0:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002ad4:	00200793          	li	a5,2
    80002ad8:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002adc:	0005051b          	sext.w	a0,a0

    i = 0;
    80002ae0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002ae4:	00a00613          	li	a2,10
    80002ae8:	02c5773b          	remuw	a4,a0,a2
    80002aec:	02071693          	slli	a3,a4,0x20
    80002af0:	0206d693          	srli	a3,a3,0x20
    80002af4:	00003717          	auipc	a4,0x3
    80002af8:	6d470713          	addi	a4,a4,1748 # 800061c8 <_ZZN5Riscv12printIntegerEmE6digits>
    80002afc:	00d70733          	add	a4,a4,a3
    80002b00:	00074703          	lbu	a4,0(a4)
    80002b04:	fe040693          	addi	a3,s0,-32
    80002b08:	009687b3          	add	a5,a3,s1
    80002b0c:	0014849b          	addiw	s1,s1,1
    80002b10:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002b14:	0005071b          	sext.w	a4,a0
    80002b18:	02c5553b          	divuw	a0,a0,a2
    80002b1c:	00900793          	li	a5,9
    80002b20:	fce7e2e3          	bltu	a5,a4,80002ae4 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002b24:	fff4849b          	addiw	s1,s1,-1
    80002b28:	0004ce63          	bltz	s1,80002b44 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002b2c:	fe040793          	addi	a5,s0,-32
    80002b30:	009787b3          	add	a5,a5,s1
    80002b34:	ff07c503          	lbu	a0,-16(a5)
    80002b38:	00003097          	auipc	ra,0x3
    80002b3c:	a24080e7          	jalr	-1500(ra) # 8000555c <__putc>
    80002b40:	fe5ff06f          	j	80002b24 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80002b44:	00a00513          	li	a0,10
    80002b48:	00003097          	auipc	ra,0x3
    80002b4c:	a14080e7          	jalr	-1516(ra) # 8000555c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002b50:	0009091b          	sext.w	s2,s2
    80002b54:	00297913          	andi	s2,s2,2
    80002b58:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002b5c:	10092073          	csrs	sstatus,s2
}
    80002b60:	03813083          	ld	ra,56(sp)
    80002b64:	03013403          	ld	s0,48(sp)
    80002b68:	02813483          	ld	s1,40(sp)
    80002b6c:	02013903          	ld	s2,32(sp)
    80002b70:	04010113          	addi	sp,sp,64
    80002b74:	00008067          	ret

0000000080002b78 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002b78:	f8010113          	addi	sp,sp,-128
    80002b7c:	06113c23          	sd	ra,120(sp)
    80002b80:	06813823          	sd	s0,112(sp)
    80002b84:	06913423          	sd	s1,104(sp)
    80002b88:	07213023          	sd	s2,96(sp)
    80002b8c:	05313c23          	sd	s3,88(sp)
    80002b90:	05413823          	sd	s4,80(sp)
    80002b94:	05513423          	sd	s5,72(sp)
    80002b98:	05613023          	sd	s6,64(sp)
    80002b9c:	08010413          	addi	s0,sp,128

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002ba0:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002ba4:	142027f3          	csrr	a5,scause
    80002ba8:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80002bac:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause) {
    80002bb0:	00900793          	li	a5,9
    80002bb4:	0ae7fa63          	bgeu	a5,a4,80002c68 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80002bb8:	fff00793          	li	a5,-1
    80002bbc:	03f79793          	slli	a5,a5,0x3f
    80002bc0:	00178793          	addi	a5,a5,1
    80002bc4:	0af71663          	bne	a4,a5,80002c70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002bc8:	00200793          	li	a5,2
    80002bcc:	1447b073          	csrc	sip,a5

        case timerInterrupt:

            Riscv::mc_sip(Riscv::SIP_SSIP);
            Riscv::printString("timerInterrupt\n");
    80002bd0:	00003517          	auipc	a0,0x3
    80002bd4:	5e850513          	addi	a0,a0,1512 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	e68080e7          	jalr	-408(ra) # 80002a40 <_ZN5Riscv11printStringEPKc>
            PCB::timeSliceCounter++;
    80002be0:	00004497          	auipc	s1,0x4
    80002be4:	7384b483          	ld	s1,1848(s1) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002be8:	0004b783          	ld	a5,0(s1)
    80002bec:	00178793          	addi	a5,a5,1
    80002bf0:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80002bf4:	fffff097          	auipc	ra,0xfffff
    80002bf8:	668080e7          	jalr	1640(ra) # 8000225c <_ZN12SleepPCBList13tryToWakePCBsEv>
            static uint64 sumInterrupts = 0;
            sumInterrupts++;
    80002bfc:	00004797          	auipc	a5,0x4
    80002c00:	7c478793          	addi	a5,a5,1988 # 800073c0 <_ZZN5Riscv20handleSupervisorTrapEvE13sumInterrupts>
    80002c04:	0007b503          	ld	a0,0(a5)
    80002c08:	00150513          	addi	a0,a0,1
    80002c0c:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(sumInterrupts);
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	ea0080e7          	jalr	-352(ra) # 80002ab0 <_ZN5Riscv12printIntegerEm>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80002c18:	00004797          	auipc	a5,0x4
    80002c1c:	7107b783          	ld	a5,1808(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c20:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002c24:	0087b783          	ld	a5,8(a5)
    80002c28:	0004b703          	ld	a4,0(s1)
    80002c2c:	04f76263          	bltu	a4,a5,80002c70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002c30:	141027f3          	csrr	a5,sepc
    80002c34:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002c38:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002c3c:	100027f3          	csrr	a5,sstatus
    80002c40:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80002c44:	f9043903          	ld	s2,-112(s0)
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    80002c48:	00004797          	auipc	a5,0x4
    80002c4c:	6d07b783          	ld	a5,1744(a5) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c50:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002c54:	fffff097          	auipc	ra,0xfffff
    80002c58:	33c080e7          	jalr	828(ra) # 80001f90 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002c5c:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002c60:	14149073          	csrw	sepc,s1
}
    80002c64:	00c0006f          	j	80002c70 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    switch(scause) {
    80002c68:	00800793          	li	a5,8
    80002c6c:	02f77a63          	bgeu	a4,a5,80002ca0 <_ZN5Riscv20handleSupervisorTrapEv+0x128>

            return;
            //break;
    }

    console_handler();
    80002c70:	00003097          	auipc	ra,0x3
    80002c74:	960080e7          	jalr	-1696(ra) # 800055d0 <console_handler>
}
    80002c78:	07813083          	ld	ra,120(sp)
    80002c7c:	07013403          	ld	s0,112(sp)
    80002c80:	06813483          	ld	s1,104(sp)
    80002c84:	06013903          	ld	s2,96(sp)
    80002c88:	05813983          	ld	s3,88(sp)
    80002c8c:	05013a03          	ld	s4,80(sp)
    80002c90:	04813a83          	ld	s5,72(sp)
    80002c94:	04013b03          	ld	s6,64(sp)
    80002c98:	08010113          	addi	sp,sp,128
    80002c9c:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ca0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002ca4:	14102773          	csrr	a4,sepc
    80002ca8:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80002cac:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    80002cb0:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    80002cb4:	00100713          	li	a4,1
    80002cb8:	02e78a63          	beq	a5,a4,80002cec <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            else if(operation == MemoryAllocator::MEM_FREE)
    80002cbc:	00200713          	li	a4,2
    80002cc0:	04e78263          	beq	a5,a4,80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            else if(operation == PCB::THREAD_CREATE)
    80002cc4:	01100713          	li	a4,17
    80002cc8:	04e78863          	beq	a5,a4,80002d18 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            else if(operation == PCB::THREAD_DISPATCH)
    80002ccc:	01300713          	li	a4,19
    80002cd0:	08e78a63          	beq	a5,a4,80002d64 <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
            else if(operation == PCB::THREAD_EXIT)
    80002cd4:	01200713          	li	a4,18
    80002cd8:	0ae78a63          	beq	a5,a4,80002d8c <_ZN5Riscv20handleSupervisorTrapEv+0x214>
            else if(operation == PCB::TIME_SLEEP)
    80002cdc:	03100713          	li	a4,49
    80002ce0:	10e78663          	beq	a5,a4,80002dec <_ZN5Riscv20handleSupervisorTrapEv+0x274>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002ce4:	14149073          	csrw	sepc,s1
}
    80002ce8:	f91ff06f          	j	80002c78 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002cec:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002cf0:	00651513          	slli	a0,a0,0x6
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	518080e7          	jalr	1304(ra) # 8000320c <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002cfc:	00050513          	mv	a0,a0
    80002d00:	fe5ff06f          	j	80002ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002d04:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	52c080e7          	jalr	1324(ra) # 80003234 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002d10:	00050513          	mv	a0,a0
    80002d14:	fd1ff06f          	j	80002ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002d18:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002d1c:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002d20:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002d24:	05800513          	li	a0,88
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	1ec080e7          	jalr	492(ra) # 80001f14 <_ZN3PCBnwEm>
    80002d30:	00050993          	mv	s3,a0
    80002d34:	00300713          	li	a4,3
    80002d38:	00090693          	mv	a3,s2
    80002d3c:	000b0613          	mv	a2,s6
    80002d40:	000a8593          	mv	a1,s5
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	12c080e7          	jalr	300(ra) # 80001e70 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80002d4c:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002d50:	00098663          	beqz	s3,80002d5c <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
                    __asm__ volatile("li a0, 0");
    80002d54:	00000513          	li	a0,0
    80002d58:	f8dff06f          	j	80002ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d5c:	fff00513          	li	a0,-1
    80002d60:	f85ff06f          	j	80002ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d64:	100027f3          	csrr	a5,sstatus
    80002d68:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002d6c:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    80002d70:	00004797          	auipc	a5,0x4
    80002d74:	5a87b783          	ld	a5,1448(a5) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d78:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	214080e7          	jalr	532(ra) # 80001f90 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002d84:	10091073          	csrw	sstatus,s2
}
    80002d88:	f5dff06f          	j	80002ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                if(PCB::running == 0)
    80002d8c:	00004797          	auipc	a5,0x4
    80002d90:	59c7b783          	ld	a5,1436(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002d94:	0007b783          	ld	a5,0(a5)
    80002d98:	04078663          	beqz	a5,80002de4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d9c:	100027f3          	csrr	a5,sstatus
    80002da0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002da4:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80002da8:	00004797          	auipc	a5,0x4
    80002dac:	5707b783          	ld	a5,1392(a5) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002db0:	0007b023          	sd	zero,0(a5)
                PCB::exitingPCB = PCB::running;
    80002db4:	00004797          	auipc	a5,0x4
    80002db8:	5747b783          	ld	a5,1396(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002dbc:	0007b783          	ld	a5,0(a5)
    80002dc0:	00004717          	auipc	a4,0x4
    80002dc4:	55073703          	ld	a4,1360(a4) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002dc8:	00f73023          	sd	a5,0(a4)
    void setState(State s) {state = s;}
    80002dcc:	00400713          	li	a4,4
    80002dd0:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    80002dd4:	fffff097          	auipc	ra,0xfffff
    80002dd8:	1bc080e7          	jalr	444(ra) # 80001f90 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002ddc:	10091073          	csrw	sstatus,s2
}
    80002de0:	f05ff06f          	j	80002ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002de4:	fff00513          	li	a0,-1
                    return;
    80002de8:	e91ff06f          	j	80002c78 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80002dec:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002df0:	100027f3          	csrr	a5,sstatus
    80002df4:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002df8:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80002dfc:	00004797          	auipc	a5,0x4
    80002e00:	51c7b783          	ld	a5,1308(a5) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e04:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::SLEEPING);
    80002e08:	00004797          	auipc	a5,0x4
    80002e0c:	5207b783          	ld	a5,1312(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e10:	0007b783          	ld	a5,0(a5)
    80002e14:	00500693          	li	a3,5
    80002e18:	02d7a823          	sw	a3,48(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002e1c:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	380080e7          	jalr	896(ra) # 800021a0 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	168080e7          	jalr	360(ra) # 80001f90 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002e30:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    80002e34:	00000513          	li	a0,0
    80002e38:	eadff06f          	j	80002ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80002e3c:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002e40:	00098513          	mv	a0,s3
    80002e44:	fffff097          	auipc	ra,0xfffff
    80002e48:	0f8080e7          	jalr	248(ra) # 80001f3c <_ZN3PCBdlEPv>
    80002e4c:	00048513          	mv	a0,s1
    80002e50:	00005097          	auipc	ra,0x5
    80002e54:	658080e7          	jalr	1624(ra) # 800084a8 <_Unwind_Resume>

0000000080002e58 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002e58:	ff010113          	addi	sp,sp,-16
    80002e5c:	00813423          	sd	s0,8(sp)
    80002e60:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002e64:	00004717          	auipc	a4,0x4
    80002e68:	56472703          	lw	a4,1380(a4) # 800073c8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002e6c:	00100793          	li	a5,1
    80002e70:	04f70263          	beq	a4,a5,80002eb4 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002e74:	00004797          	auipc	a5,0x4
    80002e78:	55478793          	addi	a5,a5,1364 # 800073c8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002e7c:	00100713          	li	a4,1
    80002e80:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002e84:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002e88:	00004717          	auipc	a4,0x4
    80002e8c:	47873703          	ld	a4,1144(a4) # 80007300 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e90:	00073703          	ld	a4,0(a4)
    80002e94:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002e98:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002e9c:	00004797          	auipc	a5,0x4
    80002ea0:	4947b783          	ld	a5,1172(a5) # 80007330 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002ea4:	0007b783          	ld	a5,0(a5)
    80002ea8:	40e787b3          	sub	a5,a5,a4
    80002eac:	ff178793          	addi	a5,a5,-15
    80002eb0:	00f73023          	sd	a5,0(a4)
}
    80002eb4:	00813403          	ld	s0,8(sp)
    80002eb8:	01010113          	addi	sp,sp,16
    80002ebc:	00008067          	ret

0000000080002ec0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002ec0:	fe010113          	addi	sp,sp,-32
    80002ec4:	00113c23          	sd	ra,24(sp)
    80002ec8:	00813823          	sd	s0,16(sp)
    80002ecc:	00913423          	sd	s1,8(sp)
    80002ed0:	01213023          	sd	s2,0(sp)
    80002ed4:	02010413          	addi	s0,sp,32
    80002ed8:	00050493          	mv	s1,a0
    80002edc:	00058913          	mv	s2,a1

    initMemory();
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	f78080e7          	jalr	-136(ra) # 80002e58 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002ee8:	00004797          	auipc	a5,0x4
    80002eec:	4e87b783          	ld	a5,1256(a5) # 800073d0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002ef0:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002ef4:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80002ef8:	00000713          	li	a4,0
    while(curr != 0)
    80002efc:	00078c63          	beqz	a5,80002f14 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002f00:	00f4e863          	bltu	s1,a5,80002f10 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80002f04:	00078713          	mv	a4,a5
        curr = curr->next;
    80002f08:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002f0c:	ff1ff06f          	j	80002efc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80002f10:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002f14:	02070063          	beqz	a4,80002f34 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002f18:	00973423          	sd	s1,8(a4)
}
    80002f1c:	01813083          	ld	ra,24(sp)
    80002f20:	01013403          	ld	s0,16(sp)
    80002f24:	00813483          	ld	s1,8(sp)
    80002f28:	00013903          	ld	s2,0(sp)
    80002f2c:	02010113          	addi	sp,sp,32
    80002f30:	00008067          	ret
        headAllocated = newAllocated;
    80002f34:	00004797          	auipc	a5,0x4
    80002f38:	4897be23          	sd	s1,1180(a5) # 800073d0 <_ZN15MemoryAllocator13headAllocatedE>
    80002f3c:	fe1ff06f          	j	80002f1c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080002f40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80002f40:	fe010113          	addi	sp,sp,-32
    80002f44:	00113c23          	sd	ra,24(sp)
    80002f48:	00813823          	sd	s0,16(sp)
    80002f4c:	00913423          	sd	s1,8(sp)
    80002f50:	01213023          	sd	s2,0(sp)
    80002f54:	02010413          	addi	s0,sp,32
    80002f58:	00050913          	mv	s2,a0
    initMemory();
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	efc080e7          	jalr	-260(ra) # 80002e58 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002f64:	00004497          	auipc	s1,0x4
    80002f68:	4744b483          	ld	s1,1140(s1) # 800073d8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80002f6c:	00000713          	li	a4,0
    while(curr != 0) {
    80002f70:	0a048863          	beqz	s1,80003020 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>

        if(curr->size >= size) {
    80002f74:	0004b783          	ld	a5,0(s1)
    80002f78:	0127f863          	bgeu	a5,s2,80002f88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80002f7c:	00048713          	mv	a4,s1
        curr = curr->next;
    80002f80:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80002f84:	fedff06f          	j	80002f70 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80002f88:	01090693          	addi	a3,s2,16
    80002f8c:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80002f90:	00004617          	auipc	a2,0x4
    80002f94:	3a063603          	ld	a2,928(a2) # 80007330 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002f98:	00063603          	ld	a2,0(a2)
    80002f9c:	04d66c63          	bltu	a2,a3,80002ff4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80002fa0:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80002fa4:	01000613          	li	a2,16
    80002fa8:	02f67663          	bgeu	a2,a5,80002fd4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80002fac:	0084b603          	ld	a2,8(s1)
    80002fb0:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80002fb4:	ff078793          	addi	a5,a5,-16
    80002fb8:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80002fbc:	00070663          	beqz	a4,80002fc8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80002fc0:	00d73423          	sd	a3,8(a4)
    80002fc4:	0380006f          	j	80002ffc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80002fc8:	00004797          	auipc	a5,0x4
    80002fcc:	40d7b823          	sd	a3,1040(a5) # 800073d8 <_ZN15MemoryAllocator8headFreeE>
    80002fd0:	02c0006f          	j	80002ffc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80002fd4:	00070863          	beqz	a4,80002fe4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80002fd8:	0084b783          	ld	a5,8(s1)
    80002fdc:	00f73423          	sd	a5,8(a4)
    80002fe0:	01c0006f          	j	80002ffc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80002fe4:	0084b783          	ld	a5,8(s1)
    80002fe8:	00004717          	auipc	a4,0x4
    80002fec:	3ef73823          	sd	a5,1008(a4) # 800073d8 <_ZN15MemoryAllocator8headFreeE>
    80002ff0:	00c0006f          	j	80002ffc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80002ff4:	02070063          	beqz	a4,80003014 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80002ff8:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80002ffc:	00090593          	mv	a1,s2
    80003000:	00048513          	mv	a0,s1
    80003004:	00000097          	auipc	ra,0x0
    80003008:	ebc080e7          	jalr	-324(ra) # 80002ec0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000300c:	01048513          	addi	a0,s1,16
            break;
    80003010:	0140006f          	j	80003024 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003014:	00004797          	auipc	a5,0x4
    80003018:	3c07b223          	sd	zero,964(a5) # 800073d8 <_ZN15MemoryAllocator8headFreeE>
    8000301c:	fe1ff06f          	j	80002ffc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003020:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003024:	01813083          	ld	ra,24(sp)
    80003028:	01013403          	ld	s0,16(sp)
    8000302c:	00813483          	ld	s1,8(sp)
    80003030:	00013903          	ld	s2,0(sp)
    80003034:	02010113          	addi	sp,sp,32
    80003038:	00008067          	ret

000000008000303c <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    8000303c:	ff010113          	addi	sp,sp,-16
    80003040:	00113423          	sd	ra,8(sp)
    80003044:	00813023          	sd	s0,0(sp)
    80003048:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	ef4080e7          	jalr	-268(ra) # 80002f40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003054:	00813083          	ld	ra,8(sp)
    80003058:	00013403          	ld	s0,0(sp)
    8000305c:	01010113          	addi	sp,sp,16
    80003060:	00008067          	ret

0000000080003064 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003064:	fe010113          	addi	sp,sp,-32
    80003068:	00113c23          	sd	ra,24(sp)
    8000306c:	00813823          	sd	s0,16(sp)
    80003070:	00913423          	sd	s1,8(sp)
    80003074:	01213023          	sd	s2,0(sp)
    80003078:	02010413          	addi	s0,sp,32
    8000307c:	00050493          	mv	s1,a0
    80003080:	00058913          	mv	s2,a1
    initMemory();
    80003084:	00000097          	auipc	ra,0x0
    80003088:	dd4080e7          	jalr	-556(ra) # 80002e58 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000308c:	00004797          	auipc	a5,0x4
    80003090:	34c7b783          	ld	a5,844(a5) # 800073d8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003094:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003098:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    8000309c:	00000713          	li	a4,0
    while(curr != 0)
    800030a0:	00078c63          	beqz	a5,800030b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800030a4:	00f4e863          	bltu	s1,a5,800030b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800030a8:	00078713          	mv	a4,a5
        curr = curr->next;
    800030ac:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800030b0:	ff1ff06f          	j	800030a0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800030b4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800030b8:	04070663          	beqz	a4,80003104 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800030bc:	00973423          	sd	s1,8(a4)

    //todo
    //kad proradi kfree odkomentarisi ovo
    //test it few times
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800030c0:	0084b783          	ld	a5,8(s1)
    800030c4:	00078a63          	beqz	a5,800030d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800030c8:	0004b603          	ld	a2,0(s1)
    800030cc:	01060693          	addi	a3,a2,16
    800030d0:	00d486b3          	add	a3,s1,a3
    800030d4:	02d78e63          	beq	a5,a3,80003110 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800030d8:	00070a63          	beqz	a4,800030ec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800030dc:	00073683          	ld	a3,0(a4)
    800030e0:	01068793          	addi	a5,a3,16
    800030e4:	00f707b3          	add	a5,a4,a5
    800030e8:	04978263          	beq	a5,s1,8000312c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	00013903          	ld	s2,0(sp)
    800030fc:	02010113          	addi	sp,sp,32
    80003100:	00008067          	ret
        headFree = newSegment;
    80003104:	00004797          	auipc	a5,0x4
    80003108:	2c97ba23          	sd	s1,724(a5) # 800073d8 <_ZN15MemoryAllocator8headFreeE>
    8000310c:	fb5ff06f          	j	800030c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003110:	0007b683          	ld	a3,0(a5)
    80003114:	00d60633          	add	a2,a2,a3
    80003118:	01060613          	addi	a2,a2,16
    8000311c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003120:	0087b783          	ld	a5,8(a5)
    80003124:	00f4b423          	sd	a5,8(s1)
    80003128:	fb1ff06f          	j	800030d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000312c:	0004b783          	ld	a5,0(s1)
    80003130:	00f686b3          	add	a3,a3,a5
    80003134:	01068693          	addi	a3,a3,16
    80003138:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000313c:	0084b783          	ld	a5,8(s1)
    80003140:	00f73423          	sd	a5,8(a4)
}
    80003144:	fa9ff06f          	j	800030ec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003148 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003148:	fe010113          	addi	sp,sp,-32
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	01213023          	sd	s2,0(sp)
    8000315c:	02010413          	addi	s0,sp,32
    80003160:	00050913          	mv	s2,a0
    initMemory();
    80003164:	00000097          	auipc	ra,0x0
    80003168:	cf4080e7          	jalr	-780(ra) # 80002e58 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    8000316c:	00004497          	auipc	s1,0x4
    80003170:	2644b483          	ld	s1,612(s1) # 800073d0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003174:	00000713          	li	a4,0
    while(curr != 0)
    80003178:	02048a63          	beqz	s1,800031ac <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    8000317c:	01048793          	addi	a5,s1,16
    80003180:	01278863          	beq	a5,s2,80003190 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003184:	00048713          	mv	a4,s1
        curr = curr->next;
    80003188:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000318c:	fedff06f          	j	80003178 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003190:	02070e63          	beqz	a4,800031cc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003194:	0084b783          	ld	a5,8(s1)
    80003198:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    8000319c:	0004b583          	ld	a1,0(s1)
    800031a0:	00048513          	mv	a0,s1
    800031a4:	00000097          	auipc	ra,0x0
    800031a8:	ec0080e7          	jalr	-320(ra) # 80003064 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800031ac:	02048863          	beqz	s1,800031dc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800031b0:	00000513          	li	a0,0
    else
        return 1;
}
    800031b4:	01813083          	ld	ra,24(sp)
    800031b8:	01013403          	ld	s0,16(sp)
    800031bc:	00813483          	ld	s1,8(sp)
    800031c0:	00013903          	ld	s2,0(sp)
    800031c4:	02010113          	addi	sp,sp,32
    800031c8:	00008067          	ret
                headAllocated = curr->next;
    800031cc:	0084b783          	ld	a5,8(s1)
    800031d0:	00004717          	auipc	a4,0x4
    800031d4:	20f73023          	sd	a5,512(a4) # 800073d0 <_ZN15MemoryAllocator13headAllocatedE>
    800031d8:	fc5ff06f          	j	8000319c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800031dc:	00100513          	li	a0,1
    800031e0:	fd5ff06f          	j	800031b4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800031e4 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    800031e4:	ff010113          	addi	sp,sp,-16
    800031e8:	00113423          	sd	ra,8(sp)
    800031ec:	00813023          	sd	s0,0(sp)
    800031f0:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	f54080e7          	jalr	-172(ra) # 80003148 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800031fc:	00813083          	ld	ra,8(sp)
    80003200:	00013403          	ld	s0,0(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret

000000008000320c <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    8000320c:	ff010113          	addi	sp,sp,-16
    80003210:	00113423          	sd	ra,8(sp)
    80003214:	00813023          	sd	s0,0(sp)
    80003218:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	e20080e7          	jalr	-480(ra) # 8000303c <_ZN15MemoryAllocator9mem_allocEm>
}
    80003224:	00813083          	ld	ra,8(sp)
    80003228:	00013403          	ld	s0,0(sp)
    8000322c:	01010113          	addi	sp,sp,16
    80003230:	00008067          	ret

0000000080003234 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003234:	ff010113          	addi	sp,sp,-16
    80003238:	00113423          	sd	ra,8(sp)
    8000323c:	00813023          	sd	s0,0(sp)
    80003240:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003244:	00000097          	auipc	ra,0x0
    80003248:	fa0080e7          	jalr	-96(ra) # 800031e4 <_ZN15MemoryAllocator8mem_freeEPv>
    8000324c:	00813083          	ld	ra,8(sp)
    80003250:	00013403          	ld	s0,0(sp)
    80003254:	01010113          	addi	sp,sp,16
    80003258:	00008067          	ret

000000008000325c <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    8000325c:	fe010113          	addi	sp,sp,-32
    80003260:	00113c23          	sd	ra,24(sp)
    80003264:	00813823          	sd	s0,16(sp)
    80003268:	00913423          	sd	s1,8(sp)
    8000326c:	01213023          	sd	s2,0(sp)
    80003270:	02010413          	addi	s0,sp,32
    80003274:	00050493          	mv	s1,a0
    80003278:	00058913          	mv	s2,a1
    8000327c:	01850513          	addi	a0,a0,24
    80003280:	fffff097          	auipc	ra,0xfffff
    80003284:	174080e7          	jalr	372(ra) # 800023f4 <_ZN5QueueC1Ev>
    this->val = this->beginVal = val;
    80003288:	0124aa23          	sw	s2,20(s1)
    8000328c:	0124a823          	sw	s2,16(s1)
    headBlocked = tailBlocked = 0;
    80003290:	0004b423          	sd	zero,8(s1)
    80003294:	0004b023          	sd	zero,0(s1)
}
    80003298:	01813083          	ld	ra,24(sp)
    8000329c:	01013403          	ld	s0,16(sp)
    800032a0:	00813483          	ld	s1,8(sp)
    800032a4:	00013903          	ld	s2,0(sp)
    800032a8:	02010113          	addi	sp,sp,32
    800032ac:	00008067          	ret

00000000800032b0 <_ZN10KSemaphoreD1Ev>:
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00113423          	sd	ra,8(sp)
    800032b8:	00813023          	sd	s0,0(sp)
    800032bc:	01010413          	addi	s0,sp,16
    800032c0:	01850513          	addi	a0,a0,24
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	150080e7          	jalr	336(ra) # 80002414 <_ZN5QueueD1Ev>
    //todo
}
    800032cc:	00813083          	ld	ra,8(sp)
    800032d0:	00013403          	ld	s0,0(sp)
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00008067          	ret

00000000800032dc <_ZN10KSemaphore12addToBlockedEP3PCB>:

void KSemaphore::addToBlocked(PCB* pcb)
{
    800032dc:	ff010113          	addi	sp,sp,-16
    800032e0:	00813423          	sd	s0,8(sp)
    800032e4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800032e8:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    800032ec:	00053783          	ld	a5,0(a0)
    800032f0:	00078e63          	beqz	a5,8000330c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800032f4:	00853783          	ld	a5,8(a0)
    800032f8:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    800032fc:	00b53423          	sd	a1,8(a0)
    }
}
    80003300:	00813403          	ld	s0,8(sp)
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000330c:	00b53423          	sd	a1,8(a0)
    80003310:	00b53023          	sd	a1,0(a0)
    80003314:	fedff06f          	j	80003300 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003318 <_ZN10KSemaphore5blockEv>:

//todo
void KSemaphore::block() {
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00113423          	sd	ra,8(sp)
    80003320:	00813023          	sd	s0,0(sp)
    80003324:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003328:	00004797          	auipc	a5,0x4
    8000332c:	0007b783          	ld	a5,0(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003330:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003334:	00200793          	li	a5,2
    80003338:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	fa0080e7          	jalr	-96(ra) # 800032dc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	c4c080e7          	jalr	-948(ra) # 80001f90 <_ZN3PCB8dispatchEv>
}
    8000334c:	00813083          	ld	ra,8(sp)
    80003350:	00013403          	ld	s0,0(sp)
    80003354:	01010113          	addi	sp,sp,16
    80003358:	00008067          	ret

000000008000335c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    8000335c:	01052783          	lw	a5,16(a0)
    80003360:	fff7879b          	addiw	a5,a5,-1
    80003364:	00f52823          	sw	a5,16(a0)
    80003368:	02079713          	slli	a4,a5,0x20
    8000336c:	00074463          	bltz	a4,80003374 <_ZN10KSemaphore4waitEv+0x18>
    80003370:	00008067          	ret
void KSemaphore::wait() {
    80003374:	ff010113          	addi	sp,sp,-16
    80003378:	00113423          	sd	ra,8(sp)
    8000337c:	00813023          	sd	s0,0(sp)
    80003380:	01010413          	addi	s0,sp,16
        block();
    80003384:	00000097          	auipc	ra,0x0
    80003388:	f94080e7          	jalr	-108(ra) # 80003318 <_ZN10KSemaphore5blockEv>
}
    8000338c:	00813083          	ld	ra,8(sp)
    80003390:	00013403          	ld	s0,0(sp)
    80003394:	01010113          	addi	sp,sp,16
    80003398:	00008067          	ret

000000008000339c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    8000339c:	ff010113          	addi	sp,sp,-16
    800033a0:	00813423          	sd	s0,8(sp)
    800033a4:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800033a8:	00053503          	ld	a0,0(a0)
    800033ac:	00813403          	ld	s0,8(sp)
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	00008067          	ret

00000000800033b8 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00813423          	sd	s0,8(sp)
    800033c0:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800033c4:	00053783          	ld	a5,0(a0)
    800033c8:	00078c63          	beqz	a5,800033e0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800033cc:	0007b703          	ld	a4,0(a5)
    800033d0:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800033d4:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    800033d8:	00053783          	ld	a5,0(a0)
    800033dc:	00078863          	beqz	a5,800033ec <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800033e0:	00813403          	ld	s0,8(sp)
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00008067          	ret
        tailBlocked =0;
    800033ec:	00053423          	sd	zero,8(a0)
    800033f0:	ff1ff06f          	j	800033e0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800033f4 <_ZN10KSemaphore7unblockEv>:

//todo
void KSemaphore::unblock() {
    800033f4:	fe010113          	addi	sp,sp,-32
    800033f8:	00113c23          	sd	ra,24(sp)
    800033fc:	00813823          	sd	s0,16(sp)
    80003400:	00913423          	sd	s1,8(sp)
    80003404:	01213023          	sd	s2,0(sp)
    80003408:	02010413          	addi	s0,sp,32
    8000340c:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003410:	00000097          	auipc	ra,0x0
    80003414:	f8c080e7          	jalr	-116(ra) # 8000339c <_ZN10KSemaphore15getFirstBlockedEv>
    80003418:	00050493          	mv	s1,a0
    removeFirstBlocked();
    8000341c:	00090513          	mv	a0,s2
    80003420:	00000097          	auipc	ra,0x0
    80003424:	f98080e7          	jalr	-104(ra) # 800033b8 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003428:	00048a63          	beqz	s1,8000343c <_ZN10KSemaphore7unblockEv+0x48>
    8000342c:	0204a823          	sw	zero,48(s1)
    {
        fr->setState(PCB::READY);
        Scheduler::put(fr);
    80003430:	00048513          	mv	a0,s1
    80003434:	fffff097          	auipc	ra,0xfffff
    80003438:	288080e7          	jalr	648(ra) # 800026bc <_ZN9Scheduler3putEP3PCB>
    }
}
    8000343c:	01813083          	ld	ra,24(sp)
    80003440:	01013403          	ld	s0,16(sp)
    80003444:	00813483          	ld	s1,8(sp)
    80003448:	00013903          	ld	s2,0(sp)
    8000344c:	02010113          	addi	sp,sp,32
    80003450:	00008067          	ret

0000000080003454 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003454:	01052783          	lw	a5,16(a0)
    80003458:	0017879b          	addiw	a5,a5,1
    8000345c:	0007871b          	sext.w	a4,a5
    80003460:	00f52823          	sw	a5,16(a0)
    80003464:	00e05863          	blez	a4,80003474 <_ZN10KSemaphore6signalEv+0x20>
        val = beginVal;
    80003468:	01452783          	lw	a5,20(a0)
    8000346c:	00f52823          	sw	a5,16(a0)
    80003470:	00008067          	ret
void KSemaphore::signal() {
    80003474:	ff010113          	addi	sp,sp,-16
    80003478:	00113423          	sd	ra,8(sp)
    8000347c:	00813023          	sd	s0,0(sp)
    80003480:	01010413          	addi	s0,sp,16
        unblock();
    80003484:	00000097          	auipc	ra,0x0
    80003488:	f70080e7          	jalr	-144(ra) # 800033f4 <_ZN10KSemaphore7unblockEv>
}
    8000348c:	00813083          	ld	ra,8(sp)
    80003490:	00013403          	ld	s0,0(sp)
    80003494:	01010113          	addi	sp,sp,16
    80003498:	00008067          	ret

000000008000349c <start>:
    8000349c:	ff010113          	addi	sp,sp,-16
    800034a0:	00813423          	sd	s0,8(sp)
    800034a4:	01010413          	addi	s0,sp,16
    800034a8:	300027f3          	csrr	a5,mstatus
    800034ac:	ffffe737          	lui	a4,0xffffe
    800034b0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff61bf>
    800034b4:	00e7f7b3          	and	a5,a5,a4
    800034b8:	00001737          	lui	a4,0x1
    800034bc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800034c0:	00e7e7b3          	or	a5,a5,a4
    800034c4:	30079073          	csrw	mstatus,a5
    800034c8:	00000797          	auipc	a5,0x0
    800034cc:	16078793          	addi	a5,a5,352 # 80003628 <system_main>
    800034d0:	34179073          	csrw	mepc,a5
    800034d4:	00000793          	li	a5,0
    800034d8:	18079073          	csrw	satp,a5
    800034dc:	000107b7          	lui	a5,0x10
    800034e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800034e4:	30279073          	csrw	medeleg,a5
    800034e8:	30379073          	csrw	mideleg,a5
    800034ec:	104027f3          	csrr	a5,sie
    800034f0:	2227e793          	ori	a5,a5,546
    800034f4:	10479073          	csrw	sie,a5
    800034f8:	fff00793          	li	a5,-1
    800034fc:	00a7d793          	srli	a5,a5,0xa
    80003500:	3b079073          	csrw	pmpaddr0,a5
    80003504:	00f00793          	li	a5,15
    80003508:	3a079073          	csrw	pmpcfg0,a5
    8000350c:	f14027f3          	csrr	a5,mhartid
    80003510:	0200c737          	lui	a4,0x200c
    80003514:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003518:	0007869b          	sext.w	a3,a5
    8000351c:	00269713          	slli	a4,a3,0x2
    80003520:	000f4637          	lui	a2,0xf4
    80003524:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003528:	00d70733          	add	a4,a4,a3
    8000352c:	0037979b          	slliw	a5,a5,0x3
    80003530:	020046b7          	lui	a3,0x2004
    80003534:	00d787b3          	add	a5,a5,a3
    80003538:	00c585b3          	add	a1,a1,a2
    8000353c:	00371693          	slli	a3,a4,0x3
    80003540:	00004717          	auipc	a4,0x4
    80003544:	ea070713          	addi	a4,a4,-352 # 800073e0 <timer_scratch>
    80003548:	00b7b023          	sd	a1,0(a5)
    8000354c:	00d70733          	add	a4,a4,a3
    80003550:	00f73c23          	sd	a5,24(a4)
    80003554:	02c73023          	sd	a2,32(a4)
    80003558:	34071073          	csrw	mscratch,a4
    8000355c:	00000797          	auipc	a5,0x0
    80003560:	6e478793          	addi	a5,a5,1764 # 80003c40 <timervec>
    80003564:	30579073          	csrw	mtvec,a5
    80003568:	300027f3          	csrr	a5,mstatus
    8000356c:	0087e793          	ori	a5,a5,8
    80003570:	30079073          	csrw	mstatus,a5
    80003574:	304027f3          	csrr	a5,mie
    80003578:	0807e793          	ori	a5,a5,128
    8000357c:	30479073          	csrw	mie,a5
    80003580:	f14027f3          	csrr	a5,mhartid
    80003584:	0007879b          	sext.w	a5,a5
    80003588:	00078213          	mv	tp,a5
    8000358c:	30200073          	mret
    80003590:	00813403          	ld	s0,8(sp)
    80003594:	01010113          	addi	sp,sp,16
    80003598:	00008067          	ret

000000008000359c <timerinit>:
    8000359c:	ff010113          	addi	sp,sp,-16
    800035a0:	00813423          	sd	s0,8(sp)
    800035a4:	01010413          	addi	s0,sp,16
    800035a8:	f14027f3          	csrr	a5,mhartid
    800035ac:	0200c737          	lui	a4,0x200c
    800035b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800035b4:	0007869b          	sext.w	a3,a5
    800035b8:	00269713          	slli	a4,a3,0x2
    800035bc:	000f4637          	lui	a2,0xf4
    800035c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800035c4:	00d70733          	add	a4,a4,a3
    800035c8:	0037979b          	slliw	a5,a5,0x3
    800035cc:	020046b7          	lui	a3,0x2004
    800035d0:	00d787b3          	add	a5,a5,a3
    800035d4:	00c585b3          	add	a1,a1,a2
    800035d8:	00371693          	slli	a3,a4,0x3
    800035dc:	00004717          	auipc	a4,0x4
    800035e0:	e0470713          	addi	a4,a4,-508 # 800073e0 <timer_scratch>
    800035e4:	00b7b023          	sd	a1,0(a5)
    800035e8:	00d70733          	add	a4,a4,a3
    800035ec:	00f73c23          	sd	a5,24(a4)
    800035f0:	02c73023          	sd	a2,32(a4)
    800035f4:	34071073          	csrw	mscratch,a4
    800035f8:	00000797          	auipc	a5,0x0
    800035fc:	64878793          	addi	a5,a5,1608 # 80003c40 <timervec>
    80003600:	30579073          	csrw	mtvec,a5
    80003604:	300027f3          	csrr	a5,mstatus
    80003608:	0087e793          	ori	a5,a5,8
    8000360c:	30079073          	csrw	mstatus,a5
    80003610:	304027f3          	csrr	a5,mie
    80003614:	0807e793          	ori	a5,a5,128
    80003618:	30479073          	csrw	mie,a5
    8000361c:	00813403          	ld	s0,8(sp)
    80003620:	01010113          	addi	sp,sp,16
    80003624:	00008067          	ret

0000000080003628 <system_main>:
    80003628:	fe010113          	addi	sp,sp,-32
    8000362c:	00813823          	sd	s0,16(sp)
    80003630:	00913423          	sd	s1,8(sp)
    80003634:	00113c23          	sd	ra,24(sp)
    80003638:	02010413          	addi	s0,sp,32
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	0c4080e7          	jalr	196(ra) # 80003700 <cpuid>
    80003644:	00004497          	auipc	s1,0x4
    80003648:	d0c48493          	addi	s1,s1,-756 # 80007350 <started>
    8000364c:	02050263          	beqz	a0,80003670 <system_main+0x48>
    80003650:	0004a783          	lw	a5,0(s1)
    80003654:	0007879b          	sext.w	a5,a5
    80003658:	fe078ce3          	beqz	a5,80003650 <system_main+0x28>
    8000365c:	0ff0000f          	fence
    80003660:	00003517          	auipc	a0,0x3
    80003664:	ba850513          	addi	a0,a0,-1112 # 80006208 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80003668:	00001097          	auipc	ra,0x1
    8000366c:	a74080e7          	jalr	-1420(ra) # 800040dc <panic>
    80003670:	00001097          	auipc	ra,0x1
    80003674:	9c8080e7          	jalr	-1592(ra) # 80004038 <consoleinit>
    80003678:	00001097          	auipc	ra,0x1
    8000367c:	154080e7          	jalr	340(ra) # 800047cc <printfinit>
    80003680:	00003517          	auipc	a0,0x3
    80003684:	c6850513          	addi	a0,a0,-920 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003688:	00001097          	auipc	ra,0x1
    8000368c:	ab0080e7          	jalr	-1360(ra) # 80004138 <__printf>
    80003690:	00003517          	auipc	a0,0x3
    80003694:	b4850513          	addi	a0,a0,-1208 # 800061d8 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003698:	00001097          	auipc	ra,0x1
    8000369c:	aa0080e7          	jalr	-1376(ra) # 80004138 <__printf>
    800036a0:	00003517          	auipc	a0,0x3
    800036a4:	c4850513          	addi	a0,a0,-952 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	a90080e7          	jalr	-1392(ra) # 80004138 <__printf>
    800036b0:	00001097          	auipc	ra,0x1
    800036b4:	4a8080e7          	jalr	1192(ra) # 80004b58 <kinit>
    800036b8:	00000097          	auipc	ra,0x0
    800036bc:	148080e7          	jalr	328(ra) # 80003800 <trapinit>
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	16c080e7          	jalr	364(ra) # 8000382c <trapinithart>
    800036c8:	00000097          	auipc	ra,0x0
    800036cc:	5b8080e7          	jalr	1464(ra) # 80003c80 <plicinit>
    800036d0:	00000097          	auipc	ra,0x0
    800036d4:	5d8080e7          	jalr	1496(ra) # 80003ca8 <plicinithart>
    800036d8:	00000097          	auipc	ra,0x0
    800036dc:	078080e7          	jalr	120(ra) # 80003750 <userinit>
    800036e0:	0ff0000f          	fence
    800036e4:	00100793          	li	a5,1
    800036e8:	00003517          	auipc	a0,0x3
    800036ec:	b0850513          	addi	a0,a0,-1272 # 800061f0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    800036f0:	00f4a023          	sw	a5,0(s1)
    800036f4:	00001097          	auipc	ra,0x1
    800036f8:	a44080e7          	jalr	-1468(ra) # 80004138 <__printf>
    800036fc:	0000006f          	j	800036fc <system_main+0xd4>

0000000080003700 <cpuid>:
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00813423          	sd	s0,8(sp)
    80003708:	01010413          	addi	s0,sp,16
    8000370c:	00020513          	mv	a0,tp
    80003710:	00813403          	ld	s0,8(sp)
    80003714:	0005051b          	sext.w	a0,a0
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret

0000000080003720 <mycpu>:
    80003720:	ff010113          	addi	sp,sp,-16
    80003724:	00813423          	sd	s0,8(sp)
    80003728:	01010413          	addi	s0,sp,16
    8000372c:	00020793          	mv	a5,tp
    80003730:	00813403          	ld	s0,8(sp)
    80003734:	0007879b          	sext.w	a5,a5
    80003738:	00779793          	slli	a5,a5,0x7
    8000373c:	00005517          	auipc	a0,0x5
    80003740:	cd450513          	addi	a0,a0,-812 # 80008410 <cpus>
    80003744:	00f50533          	add	a0,a0,a5
    80003748:	01010113          	addi	sp,sp,16
    8000374c:	00008067          	ret

0000000080003750 <userinit>:
    80003750:	ff010113          	addi	sp,sp,-16
    80003754:	00813423          	sd	s0,8(sp)
    80003758:	01010413          	addi	s0,sp,16
    8000375c:	00813403          	ld	s0,8(sp)
    80003760:	01010113          	addi	sp,sp,16
    80003764:	fffff317          	auipc	t1,0xfffff
    80003768:	ff430067          	jr	-12(t1) # 80002758 <main>

000000008000376c <either_copyout>:
    8000376c:	ff010113          	addi	sp,sp,-16
    80003770:	00813023          	sd	s0,0(sp)
    80003774:	00113423          	sd	ra,8(sp)
    80003778:	01010413          	addi	s0,sp,16
    8000377c:	02051663          	bnez	a0,800037a8 <either_copyout+0x3c>
    80003780:	00058513          	mv	a0,a1
    80003784:	00060593          	mv	a1,a2
    80003788:	0006861b          	sext.w	a2,a3
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	c58080e7          	jalr	-936(ra) # 800053e4 <__memmove>
    80003794:	00813083          	ld	ra,8(sp)
    80003798:	00013403          	ld	s0,0(sp)
    8000379c:	00000513          	li	a0,0
    800037a0:	01010113          	addi	sp,sp,16
    800037a4:	00008067          	ret
    800037a8:	00003517          	auipc	a0,0x3
    800037ac:	a8850513          	addi	a0,a0,-1400 # 80006230 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    800037b0:	00001097          	auipc	ra,0x1
    800037b4:	92c080e7          	jalr	-1748(ra) # 800040dc <panic>

00000000800037b8 <either_copyin>:
    800037b8:	ff010113          	addi	sp,sp,-16
    800037bc:	00813023          	sd	s0,0(sp)
    800037c0:	00113423          	sd	ra,8(sp)
    800037c4:	01010413          	addi	s0,sp,16
    800037c8:	02059463          	bnez	a1,800037f0 <either_copyin+0x38>
    800037cc:	00060593          	mv	a1,a2
    800037d0:	0006861b          	sext.w	a2,a3
    800037d4:	00002097          	auipc	ra,0x2
    800037d8:	c10080e7          	jalr	-1008(ra) # 800053e4 <__memmove>
    800037dc:	00813083          	ld	ra,8(sp)
    800037e0:	00013403          	ld	s0,0(sp)
    800037e4:	00000513          	li	a0,0
    800037e8:	01010113          	addi	sp,sp,16
    800037ec:	00008067          	ret
    800037f0:	00003517          	auipc	a0,0x3
    800037f4:	a6850513          	addi	a0,a0,-1432 # 80006258 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    800037f8:	00001097          	auipc	ra,0x1
    800037fc:	8e4080e7          	jalr	-1820(ra) # 800040dc <panic>

0000000080003800 <trapinit>:
    80003800:	ff010113          	addi	sp,sp,-16
    80003804:	00813423          	sd	s0,8(sp)
    80003808:	01010413          	addi	s0,sp,16
    8000380c:	00813403          	ld	s0,8(sp)
    80003810:	00003597          	auipc	a1,0x3
    80003814:	a7058593          	addi	a1,a1,-1424 # 80006280 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003818:	00005517          	auipc	a0,0x5
    8000381c:	c7850513          	addi	a0,a0,-904 # 80008490 <tickslock>
    80003820:	01010113          	addi	sp,sp,16
    80003824:	00001317          	auipc	t1,0x1
    80003828:	5c430067          	jr	1476(t1) # 80004de8 <initlock>

000000008000382c <trapinithart>:
    8000382c:	ff010113          	addi	sp,sp,-16
    80003830:	00813423          	sd	s0,8(sp)
    80003834:	01010413          	addi	s0,sp,16
    80003838:	00000797          	auipc	a5,0x0
    8000383c:	2f878793          	addi	a5,a5,760 # 80003b30 <kernelvec>
    80003840:	10579073          	csrw	stvec,a5
    80003844:	00813403          	ld	s0,8(sp)
    80003848:	01010113          	addi	sp,sp,16
    8000384c:	00008067          	ret

0000000080003850 <usertrap>:
    80003850:	ff010113          	addi	sp,sp,-16
    80003854:	00813423          	sd	s0,8(sp)
    80003858:	01010413          	addi	s0,sp,16
    8000385c:	00813403          	ld	s0,8(sp)
    80003860:	01010113          	addi	sp,sp,16
    80003864:	00008067          	ret

0000000080003868 <usertrapret>:
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00813423          	sd	s0,8(sp)
    80003870:	01010413          	addi	s0,sp,16
    80003874:	00813403          	ld	s0,8(sp)
    80003878:	01010113          	addi	sp,sp,16
    8000387c:	00008067          	ret

0000000080003880 <kerneltrap>:
    80003880:	fe010113          	addi	sp,sp,-32
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00113c23          	sd	ra,24(sp)
    8000388c:	00913423          	sd	s1,8(sp)
    80003890:	02010413          	addi	s0,sp,32
    80003894:	142025f3          	csrr	a1,scause
    80003898:	100027f3          	csrr	a5,sstatus
    8000389c:	0027f793          	andi	a5,a5,2
    800038a0:	10079c63          	bnez	a5,800039b8 <kerneltrap+0x138>
    800038a4:	142027f3          	csrr	a5,scause
    800038a8:	0207ce63          	bltz	a5,800038e4 <kerneltrap+0x64>
    800038ac:	00003517          	auipc	a0,0x3
    800038b0:	a1c50513          	addi	a0,a0,-1508 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800038b4:	00001097          	auipc	ra,0x1
    800038b8:	884080e7          	jalr	-1916(ra) # 80004138 <__printf>
    800038bc:	141025f3          	csrr	a1,sepc
    800038c0:	14302673          	csrr	a2,stval
    800038c4:	00003517          	auipc	a0,0x3
    800038c8:	a1450513          	addi	a0,a0,-1516 # 800062d8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800038cc:	00001097          	auipc	ra,0x1
    800038d0:	86c080e7          	jalr	-1940(ra) # 80004138 <__printf>
    800038d4:	00003517          	auipc	a0,0x3
    800038d8:	a1c50513          	addi	a0,a0,-1508 # 800062f0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800038dc:	00001097          	auipc	ra,0x1
    800038e0:	800080e7          	jalr	-2048(ra) # 800040dc <panic>
    800038e4:	0ff7f713          	andi	a4,a5,255
    800038e8:	00900693          	li	a3,9
    800038ec:	04d70063          	beq	a4,a3,8000392c <kerneltrap+0xac>
    800038f0:	fff00713          	li	a4,-1
    800038f4:	03f71713          	slli	a4,a4,0x3f
    800038f8:	00170713          	addi	a4,a4,1
    800038fc:	fae798e3          	bne	a5,a4,800038ac <kerneltrap+0x2c>
    80003900:	00000097          	auipc	ra,0x0
    80003904:	e00080e7          	jalr	-512(ra) # 80003700 <cpuid>
    80003908:	06050663          	beqz	a0,80003974 <kerneltrap+0xf4>
    8000390c:	144027f3          	csrr	a5,sip
    80003910:	ffd7f793          	andi	a5,a5,-3
    80003914:	14479073          	csrw	sip,a5
    80003918:	01813083          	ld	ra,24(sp)
    8000391c:	01013403          	ld	s0,16(sp)
    80003920:	00813483          	ld	s1,8(sp)
    80003924:	02010113          	addi	sp,sp,32
    80003928:	00008067          	ret
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	3c8080e7          	jalr	968(ra) # 80003cf4 <plic_claim>
    80003934:	00a00793          	li	a5,10
    80003938:	00050493          	mv	s1,a0
    8000393c:	06f50863          	beq	a0,a5,800039ac <kerneltrap+0x12c>
    80003940:	fc050ce3          	beqz	a0,80003918 <kerneltrap+0x98>
    80003944:	00050593          	mv	a1,a0
    80003948:	00003517          	auipc	a0,0x3
    8000394c:	96050513          	addi	a0,a0,-1696 # 800062a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003950:	00000097          	auipc	ra,0x0
    80003954:	7e8080e7          	jalr	2024(ra) # 80004138 <__printf>
    80003958:	01013403          	ld	s0,16(sp)
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	00048513          	mv	a0,s1
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00000317          	auipc	t1,0x0
    80003970:	3c030067          	jr	960(t1) # 80003d2c <plic_complete>
    80003974:	00005517          	auipc	a0,0x5
    80003978:	b1c50513          	addi	a0,a0,-1252 # 80008490 <tickslock>
    8000397c:	00001097          	auipc	ra,0x1
    80003980:	490080e7          	jalr	1168(ra) # 80004e0c <acquire>
    80003984:	00004717          	auipc	a4,0x4
    80003988:	9d070713          	addi	a4,a4,-1584 # 80007354 <ticks>
    8000398c:	00072783          	lw	a5,0(a4)
    80003990:	00005517          	auipc	a0,0x5
    80003994:	b0050513          	addi	a0,a0,-1280 # 80008490 <tickslock>
    80003998:	0017879b          	addiw	a5,a5,1
    8000399c:	00f72023          	sw	a5,0(a4)
    800039a0:	00001097          	auipc	ra,0x1
    800039a4:	538080e7          	jalr	1336(ra) # 80004ed8 <release>
    800039a8:	f65ff06f          	j	8000390c <kerneltrap+0x8c>
    800039ac:	00001097          	auipc	ra,0x1
    800039b0:	094080e7          	jalr	148(ra) # 80004a40 <uartintr>
    800039b4:	fa5ff06f          	j	80003958 <kerneltrap+0xd8>
    800039b8:	00003517          	auipc	a0,0x3
    800039bc:	8d050513          	addi	a0,a0,-1840 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    800039c0:	00000097          	auipc	ra,0x0
    800039c4:	71c080e7          	jalr	1820(ra) # 800040dc <panic>

00000000800039c8 <clockintr>:
    800039c8:	fe010113          	addi	sp,sp,-32
    800039cc:	00813823          	sd	s0,16(sp)
    800039d0:	00913423          	sd	s1,8(sp)
    800039d4:	00113c23          	sd	ra,24(sp)
    800039d8:	02010413          	addi	s0,sp,32
    800039dc:	00005497          	auipc	s1,0x5
    800039e0:	ab448493          	addi	s1,s1,-1356 # 80008490 <tickslock>
    800039e4:	00048513          	mv	a0,s1
    800039e8:	00001097          	auipc	ra,0x1
    800039ec:	424080e7          	jalr	1060(ra) # 80004e0c <acquire>
    800039f0:	00004717          	auipc	a4,0x4
    800039f4:	96470713          	addi	a4,a4,-1692 # 80007354 <ticks>
    800039f8:	00072783          	lw	a5,0(a4)
    800039fc:	01013403          	ld	s0,16(sp)
    80003a00:	01813083          	ld	ra,24(sp)
    80003a04:	00048513          	mv	a0,s1
    80003a08:	0017879b          	addiw	a5,a5,1
    80003a0c:	00813483          	ld	s1,8(sp)
    80003a10:	00f72023          	sw	a5,0(a4)
    80003a14:	02010113          	addi	sp,sp,32
    80003a18:	00001317          	auipc	t1,0x1
    80003a1c:	4c030067          	jr	1216(t1) # 80004ed8 <release>

0000000080003a20 <devintr>:
    80003a20:	142027f3          	csrr	a5,scause
    80003a24:	00000513          	li	a0,0
    80003a28:	0007c463          	bltz	a5,80003a30 <devintr+0x10>
    80003a2c:	00008067          	ret
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00813823          	sd	s0,16(sp)
    80003a38:	00113c23          	sd	ra,24(sp)
    80003a3c:	00913423          	sd	s1,8(sp)
    80003a40:	02010413          	addi	s0,sp,32
    80003a44:	0ff7f713          	andi	a4,a5,255
    80003a48:	00900693          	li	a3,9
    80003a4c:	04d70c63          	beq	a4,a3,80003aa4 <devintr+0x84>
    80003a50:	fff00713          	li	a4,-1
    80003a54:	03f71713          	slli	a4,a4,0x3f
    80003a58:	00170713          	addi	a4,a4,1
    80003a5c:	00e78c63          	beq	a5,a4,80003a74 <devintr+0x54>
    80003a60:	01813083          	ld	ra,24(sp)
    80003a64:	01013403          	ld	s0,16(sp)
    80003a68:	00813483          	ld	s1,8(sp)
    80003a6c:	02010113          	addi	sp,sp,32
    80003a70:	00008067          	ret
    80003a74:	00000097          	auipc	ra,0x0
    80003a78:	c8c080e7          	jalr	-884(ra) # 80003700 <cpuid>
    80003a7c:	06050663          	beqz	a0,80003ae8 <devintr+0xc8>
    80003a80:	144027f3          	csrr	a5,sip
    80003a84:	ffd7f793          	andi	a5,a5,-3
    80003a88:	14479073          	csrw	sip,a5
    80003a8c:	01813083          	ld	ra,24(sp)
    80003a90:	01013403          	ld	s0,16(sp)
    80003a94:	00813483          	ld	s1,8(sp)
    80003a98:	00200513          	li	a0,2
    80003a9c:	02010113          	addi	sp,sp,32
    80003aa0:	00008067          	ret
    80003aa4:	00000097          	auipc	ra,0x0
    80003aa8:	250080e7          	jalr	592(ra) # 80003cf4 <plic_claim>
    80003aac:	00a00793          	li	a5,10
    80003ab0:	00050493          	mv	s1,a0
    80003ab4:	06f50663          	beq	a0,a5,80003b20 <devintr+0x100>
    80003ab8:	00100513          	li	a0,1
    80003abc:	fa0482e3          	beqz	s1,80003a60 <devintr+0x40>
    80003ac0:	00048593          	mv	a1,s1
    80003ac4:	00002517          	auipc	a0,0x2
    80003ac8:	7e450513          	addi	a0,a0,2020 # 800062a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	66c080e7          	jalr	1644(ra) # 80004138 <__printf>
    80003ad4:	00048513          	mv	a0,s1
    80003ad8:	00000097          	auipc	ra,0x0
    80003adc:	254080e7          	jalr	596(ra) # 80003d2c <plic_complete>
    80003ae0:	00100513          	li	a0,1
    80003ae4:	f7dff06f          	j	80003a60 <devintr+0x40>
    80003ae8:	00005517          	auipc	a0,0x5
    80003aec:	9a850513          	addi	a0,a0,-1624 # 80008490 <tickslock>
    80003af0:	00001097          	auipc	ra,0x1
    80003af4:	31c080e7          	jalr	796(ra) # 80004e0c <acquire>
    80003af8:	00004717          	auipc	a4,0x4
    80003afc:	85c70713          	addi	a4,a4,-1956 # 80007354 <ticks>
    80003b00:	00072783          	lw	a5,0(a4)
    80003b04:	00005517          	auipc	a0,0x5
    80003b08:	98c50513          	addi	a0,a0,-1652 # 80008490 <tickslock>
    80003b0c:	0017879b          	addiw	a5,a5,1
    80003b10:	00f72023          	sw	a5,0(a4)
    80003b14:	00001097          	auipc	ra,0x1
    80003b18:	3c4080e7          	jalr	964(ra) # 80004ed8 <release>
    80003b1c:	f65ff06f          	j	80003a80 <devintr+0x60>
    80003b20:	00001097          	auipc	ra,0x1
    80003b24:	f20080e7          	jalr	-224(ra) # 80004a40 <uartintr>
    80003b28:	fadff06f          	j	80003ad4 <devintr+0xb4>
    80003b2c:	0000                	unimp
	...

0000000080003b30 <kernelvec>:
    80003b30:	f0010113          	addi	sp,sp,-256
    80003b34:	00113023          	sd	ra,0(sp)
    80003b38:	00213423          	sd	sp,8(sp)
    80003b3c:	00313823          	sd	gp,16(sp)
    80003b40:	00413c23          	sd	tp,24(sp)
    80003b44:	02513023          	sd	t0,32(sp)
    80003b48:	02613423          	sd	t1,40(sp)
    80003b4c:	02713823          	sd	t2,48(sp)
    80003b50:	02813c23          	sd	s0,56(sp)
    80003b54:	04913023          	sd	s1,64(sp)
    80003b58:	04a13423          	sd	a0,72(sp)
    80003b5c:	04b13823          	sd	a1,80(sp)
    80003b60:	04c13c23          	sd	a2,88(sp)
    80003b64:	06d13023          	sd	a3,96(sp)
    80003b68:	06e13423          	sd	a4,104(sp)
    80003b6c:	06f13823          	sd	a5,112(sp)
    80003b70:	07013c23          	sd	a6,120(sp)
    80003b74:	09113023          	sd	a7,128(sp)
    80003b78:	09213423          	sd	s2,136(sp)
    80003b7c:	09313823          	sd	s3,144(sp)
    80003b80:	09413c23          	sd	s4,152(sp)
    80003b84:	0b513023          	sd	s5,160(sp)
    80003b88:	0b613423          	sd	s6,168(sp)
    80003b8c:	0b713823          	sd	s7,176(sp)
    80003b90:	0b813c23          	sd	s8,184(sp)
    80003b94:	0d913023          	sd	s9,192(sp)
    80003b98:	0da13423          	sd	s10,200(sp)
    80003b9c:	0db13823          	sd	s11,208(sp)
    80003ba0:	0dc13c23          	sd	t3,216(sp)
    80003ba4:	0fd13023          	sd	t4,224(sp)
    80003ba8:	0fe13423          	sd	t5,232(sp)
    80003bac:	0ff13823          	sd	t6,240(sp)
    80003bb0:	cd1ff0ef          	jal	ra,80003880 <kerneltrap>
    80003bb4:	00013083          	ld	ra,0(sp)
    80003bb8:	00813103          	ld	sp,8(sp)
    80003bbc:	01013183          	ld	gp,16(sp)
    80003bc0:	02013283          	ld	t0,32(sp)
    80003bc4:	02813303          	ld	t1,40(sp)
    80003bc8:	03013383          	ld	t2,48(sp)
    80003bcc:	03813403          	ld	s0,56(sp)
    80003bd0:	04013483          	ld	s1,64(sp)
    80003bd4:	04813503          	ld	a0,72(sp)
    80003bd8:	05013583          	ld	a1,80(sp)
    80003bdc:	05813603          	ld	a2,88(sp)
    80003be0:	06013683          	ld	a3,96(sp)
    80003be4:	06813703          	ld	a4,104(sp)
    80003be8:	07013783          	ld	a5,112(sp)
    80003bec:	07813803          	ld	a6,120(sp)
    80003bf0:	08013883          	ld	a7,128(sp)
    80003bf4:	08813903          	ld	s2,136(sp)
    80003bf8:	09013983          	ld	s3,144(sp)
    80003bfc:	09813a03          	ld	s4,152(sp)
    80003c00:	0a013a83          	ld	s5,160(sp)
    80003c04:	0a813b03          	ld	s6,168(sp)
    80003c08:	0b013b83          	ld	s7,176(sp)
    80003c0c:	0b813c03          	ld	s8,184(sp)
    80003c10:	0c013c83          	ld	s9,192(sp)
    80003c14:	0c813d03          	ld	s10,200(sp)
    80003c18:	0d013d83          	ld	s11,208(sp)
    80003c1c:	0d813e03          	ld	t3,216(sp)
    80003c20:	0e013e83          	ld	t4,224(sp)
    80003c24:	0e813f03          	ld	t5,232(sp)
    80003c28:	0f013f83          	ld	t6,240(sp)
    80003c2c:	10010113          	addi	sp,sp,256
    80003c30:	10200073          	sret
    80003c34:	00000013          	nop
    80003c38:	00000013          	nop
    80003c3c:	00000013          	nop

0000000080003c40 <timervec>:
    80003c40:	34051573          	csrrw	a0,mscratch,a0
    80003c44:	00b53023          	sd	a1,0(a0)
    80003c48:	00c53423          	sd	a2,8(a0)
    80003c4c:	00d53823          	sd	a3,16(a0)
    80003c50:	01853583          	ld	a1,24(a0)
    80003c54:	02053603          	ld	a2,32(a0)
    80003c58:	0005b683          	ld	a3,0(a1)
    80003c5c:	00c686b3          	add	a3,a3,a2
    80003c60:	00d5b023          	sd	a3,0(a1)
    80003c64:	00200593          	li	a1,2
    80003c68:	14459073          	csrw	sip,a1
    80003c6c:	01053683          	ld	a3,16(a0)
    80003c70:	00853603          	ld	a2,8(a0)
    80003c74:	00053583          	ld	a1,0(a0)
    80003c78:	34051573          	csrrw	a0,mscratch,a0
    80003c7c:	30200073          	mret

0000000080003c80 <plicinit>:
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00813423          	sd	s0,8(sp)
    80003c88:	01010413          	addi	s0,sp,16
    80003c8c:	00813403          	ld	s0,8(sp)
    80003c90:	0c0007b7          	lui	a5,0xc000
    80003c94:	00100713          	li	a4,1
    80003c98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003c9c:	00e7a223          	sw	a4,4(a5)
    80003ca0:	01010113          	addi	sp,sp,16
    80003ca4:	00008067          	ret

0000000080003ca8 <plicinithart>:
    80003ca8:	ff010113          	addi	sp,sp,-16
    80003cac:	00813023          	sd	s0,0(sp)
    80003cb0:	00113423          	sd	ra,8(sp)
    80003cb4:	01010413          	addi	s0,sp,16
    80003cb8:	00000097          	auipc	ra,0x0
    80003cbc:	a48080e7          	jalr	-1464(ra) # 80003700 <cpuid>
    80003cc0:	0085171b          	slliw	a4,a0,0x8
    80003cc4:	0c0027b7          	lui	a5,0xc002
    80003cc8:	00e787b3          	add	a5,a5,a4
    80003ccc:	40200713          	li	a4,1026
    80003cd0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003cd4:	00813083          	ld	ra,8(sp)
    80003cd8:	00013403          	ld	s0,0(sp)
    80003cdc:	00d5151b          	slliw	a0,a0,0xd
    80003ce0:	0c2017b7          	lui	a5,0xc201
    80003ce4:	00a78533          	add	a0,a5,a0
    80003ce8:	00052023          	sw	zero,0(a0)
    80003cec:	01010113          	addi	sp,sp,16
    80003cf0:	00008067          	ret

0000000080003cf4 <plic_claim>:
    80003cf4:	ff010113          	addi	sp,sp,-16
    80003cf8:	00813023          	sd	s0,0(sp)
    80003cfc:	00113423          	sd	ra,8(sp)
    80003d00:	01010413          	addi	s0,sp,16
    80003d04:	00000097          	auipc	ra,0x0
    80003d08:	9fc080e7          	jalr	-1540(ra) # 80003700 <cpuid>
    80003d0c:	00813083          	ld	ra,8(sp)
    80003d10:	00013403          	ld	s0,0(sp)
    80003d14:	00d5151b          	slliw	a0,a0,0xd
    80003d18:	0c2017b7          	lui	a5,0xc201
    80003d1c:	00a78533          	add	a0,a5,a0
    80003d20:	00452503          	lw	a0,4(a0)
    80003d24:	01010113          	addi	sp,sp,16
    80003d28:	00008067          	ret

0000000080003d2c <plic_complete>:
    80003d2c:	fe010113          	addi	sp,sp,-32
    80003d30:	00813823          	sd	s0,16(sp)
    80003d34:	00913423          	sd	s1,8(sp)
    80003d38:	00113c23          	sd	ra,24(sp)
    80003d3c:	02010413          	addi	s0,sp,32
    80003d40:	00050493          	mv	s1,a0
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	9bc080e7          	jalr	-1604(ra) # 80003700 <cpuid>
    80003d4c:	01813083          	ld	ra,24(sp)
    80003d50:	01013403          	ld	s0,16(sp)
    80003d54:	00d5179b          	slliw	a5,a0,0xd
    80003d58:	0c201737          	lui	a4,0xc201
    80003d5c:	00f707b3          	add	a5,a4,a5
    80003d60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	02010113          	addi	sp,sp,32
    80003d6c:	00008067          	ret

0000000080003d70 <consolewrite>:
    80003d70:	fb010113          	addi	sp,sp,-80
    80003d74:	04813023          	sd	s0,64(sp)
    80003d78:	04113423          	sd	ra,72(sp)
    80003d7c:	02913c23          	sd	s1,56(sp)
    80003d80:	03213823          	sd	s2,48(sp)
    80003d84:	03313423          	sd	s3,40(sp)
    80003d88:	03413023          	sd	s4,32(sp)
    80003d8c:	01513c23          	sd	s5,24(sp)
    80003d90:	05010413          	addi	s0,sp,80
    80003d94:	06c05c63          	blez	a2,80003e0c <consolewrite+0x9c>
    80003d98:	00060993          	mv	s3,a2
    80003d9c:	00050a13          	mv	s4,a0
    80003da0:	00058493          	mv	s1,a1
    80003da4:	00000913          	li	s2,0
    80003da8:	fff00a93          	li	s5,-1
    80003dac:	01c0006f          	j	80003dc8 <consolewrite+0x58>
    80003db0:	fbf44503          	lbu	a0,-65(s0)
    80003db4:	0019091b          	addiw	s2,s2,1
    80003db8:	00148493          	addi	s1,s1,1
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	a9c080e7          	jalr	-1380(ra) # 80004858 <uartputc>
    80003dc4:	03298063          	beq	s3,s2,80003de4 <consolewrite+0x74>
    80003dc8:	00048613          	mv	a2,s1
    80003dcc:	00100693          	li	a3,1
    80003dd0:	000a0593          	mv	a1,s4
    80003dd4:	fbf40513          	addi	a0,s0,-65
    80003dd8:	00000097          	auipc	ra,0x0
    80003ddc:	9e0080e7          	jalr	-1568(ra) # 800037b8 <either_copyin>
    80003de0:	fd5518e3          	bne	a0,s5,80003db0 <consolewrite+0x40>
    80003de4:	04813083          	ld	ra,72(sp)
    80003de8:	04013403          	ld	s0,64(sp)
    80003dec:	03813483          	ld	s1,56(sp)
    80003df0:	02813983          	ld	s3,40(sp)
    80003df4:	02013a03          	ld	s4,32(sp)
    80003df8:	01813a83          	ld	s5,24(sp)
    80003dfc:	00090513          	mv	a0,s2
    80003e00:	03013903          	ld	s2,48(sp)
    80003e04:	05010113          	addi	sp,sp,80
    80003e08:	00008067          	ret
    80003e0c:	00000913          	li	s2,0
    80003e10:	fd5ff06f          	j	80003de4 <consolewrite+0x74>

0000000080003e14 <consoleread>:
    80003e14:	f9010113          	addi	sp,sp,-112
    80003e18:	06813023          	sd	s0,96(sp)
    80003e1c:	04913c23          	sd	s1,88(sp)
    80003e20:	05213823          	sd	s2,80(sp)
    80003e24:	05313423          	sd	s3,72(sp)
    80003e28:	05413023          	sd	s4,64(sp)
    80003e2c:	03513c23          	sd	s5,56(sp)
    80003e30:	03613823          	sd	s6,48(sp)
    80003e34:	03713423          	sd	s7,40(sp)
    80003e38:	03813023          	sd	s8,32(sp)
    80003e3c:	06113423          	sd	ra,104(sp)
    80003e40:	01913c23          	sd	s9,24(sp)
    80003e44:	07010413          	addi	s0,sp,112
    80003e48:	00060b93          	mv	s7,a2
    80003e4c:	00050913          	mv	s2,a0
    80003e50:	00058c13          	mv	s8,a1
    80003e54:	00060b1b          	sext.w	s6,a2
    80003e58:	00004497          	auipc	s1,0x4
    80003e5c:	66048493          	addi	s1,s1,1632 # 800084b8 <cons>
    80003e60:	00400993          	li	s3,4
    80003e64:	fff00a13          	li	s4,-1
    80003e68:	00a00a93          	li	s5,10
    80003e6c:	05705e63          	blez	s7,80003ec8 <consoleread+0xb4>
    80003e70:	09c4a703          	lw	a4,156(s1)
    80003e74:	0984a783          	lw	a5,152(s1)
    80003e78:	0007071b          	sext.w	a4,a4
    80003e7c:	08e78463          	beq	a5,a4,80003f04 <consoleread+0xf0>
    80003e80:	07f7f713          	andi	a4,a5,127
    80003e84:	00e48733          	add	a4,s1,a4
    80003e88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003e8c:	0017869b          	addiw	a3,a5,1
    80003e90:	08d4ac23          	sw	a3,152(s1)
    80003e94:	00070c9b          	sext.w	s9,a4
    80003e98:	0b370663          	beq	a4,s3,80003f44 <consoleread+0x130>
    80003e9c:	00100693          	li	a3,1
    80003ea0:	f9f40613          	addi	a2,s0,-97
    80003ea4:	000c0593          	mv	a1,s8
    80003ea8:	00090513          	mv	a0,s2
    80003eac:	f8e40fa3          	sb	a4,-97(s0)
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	8bc080e7          	jalr	-1860(ra) # 8000376c <either_copyout>
    80003eb8:	01450863          	beq	a0,s4,80003ec8 <consoleread+0xb4>
    80003ebc:	001c0c13          	addi	s8,s8,1
    80003ec0:	fffb8b9b          	addiw	s7,s7,-1
    80003ec4:	fb5c94e3          	bne	s9,s5,80003e6c <consoleread+0x58>
    80003ec8:	000b851b          	sext.w	a0,s7
    80003ecc:	06813083          	ld	ra,104(sp)
    80003ed0:	06013403          	ld	s0,96(sp)
    80003ed4:	05813483          	ld	s1,88(sp)
    80003ed8:	05013903          	ld	s2,80(sp)
    80003edc:	04813983          	ld	s3,72(sp)
    80003ee0:	04013a03          	ld	s4,64(sp)
    80003ee4:	03813a83          	ld	s5,56(sp)
    80003ee8:	02813b83          	ld	s7,40(sp)
    80003eec:	02013c03          	ld	s8,32(sp)
    80003ef0:	01813c83          	ld	s9,24(sp)
    80003ef4:	40ab053b          	subw	a0,s6,a0
    80003ef8:	03013b03          	ld	s6,48(sp)
    80003efc:	07010113          	addi	sp,sp,112
    80003f00:	00008067          	ret
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	1d8080e7          	jalr	472(ra) # 800050dc <push_on>
    80003f0c:	0984a703          	lw	a4,152(s1)
    80003f10:	09c4a783          	lw	a5,156(s1)
    80003f14:	0007879b          	sext.w	a5,a5
    80003f18:	fef70ce3          	beq	a4,a5,80003f10 <consoleread+0xfc>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	234080e7          	jalr	564(ra) # 80005150 <pop_on>
    80003f24:	0984a783          	lw	a5,152(s1)
    80003f28:	07f7f713          	andi	a4,a5,127
    80003f2c:	00e48733          	add	a4,s1,a4
    80003f30:	01874703          	lbu	a4,24(a4)
    80003f34:	0017869b          	addiw	a3,a5,1
    80003f38:	08d4ac23          	sw	a3,152(s1)
    80003f3c:	00070c9b          	sext.w	s9,a4
    80003f40:	f5371ee3          	bne	a4,s3,80003e9c <consoleread+0x88>
    80003f44:	000b851b          	sext.w	a0,s7
    80003f48:	f96bf2e3          	bgeu	s7,s6,80003ecc <consoleread+0xb8>
    80003f4c:	08f4ac23          	sw	a5,152(s1)
    80003f50:	f7dff06f          	j	80003ecc <consoleread+0xb8>

0000000080003f54 <consputc>:
    80003f54:	10000793          	li	a5,256
    80003f58:	00f50663          	beq	a0,a5,80003f64 <consputc+0x10>
    80003f5c:	00001317          	auipc	t1,0x1
    80003f60:	9f430067          	jr	-1548(t1) # 80004950 <uartputc_sync>
    80003f64:	ff010113          	addi	sp,sp,-16
    80003f68:	00113423          	sd	ra,8(sp)
    80003f6c:	00813023          	sd	s0,0(sp)
    80003f70:	01010413          	addi	s0,sp,16
    80003f74:	00800513          	li	a0,8
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	9d8080e7          	jalr	-1576(ra) # 80004950 <uartputc_sync>
    80003f80:	02000513          	li	a0,32
    80003f84:	00001097          	auipc	ra,0x1
    80003f88:	9cc080e7          	jalr	-1588(ra) # 80004950 <uartputc_sync>
    80003f8c:	00013403          	ld	s0,0(sp)
    80003f90:	00813083          	ld	ra,8(sp)
    80003f94:	00800513          	li	a0,8
    80003f98:	01010113          	addi	sp,sp,16
    80003f9c:	00001317          	auipc	t1,0x1
    80003fa0:	9b430067          	jr	-1612(t1) # 80004950 <uartputc_sync>

0000000080003fa4 <consoleintr>:
    80003fa4:	fe010113          	addi	sp,sp,-32
    80003fa8:	00813823          	sd	s0,16(sp)
    80003fac:	00913423          	sd	s1,8(sp)
    80003fb0:	01213023          	sd	s2,0(sp)
    80003fb4:	00113c23          	sd	ra,24(sp)
    80003fb8:	02010413          	addi	s0,sp,32
    80003fbc:	00004917          	auipc	s2,0x4
    80003fc0:	4fc90913          	addi	s2,s2,1276 # 800084b8 <cons>
    80003fc4:	00050493          	mv	s1,a0
    80003fc8:	00090513          	mv	a0,s2
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	e40080e7          	jalr	-448(ra) # 80004e0c <acquire>
    80003fd4:	02048c63          	beqz	s1,8000400c <consoleintr+0x68>
    80003fd8:	0a092783          	lw	a5,160(s2)
    80003fdc:	09892703          	lw	a4,152(s2)
    80003fe0:	07f00693          	li	a3,127
    80003fe4:	40e7873b          	subw	a4,a5,a4
    80003fe8:	02e6e263          	bltu	a3,a4,8000400c <consoleintr+0x68>
    80003fec:	00d00713          	li	a4,13
    80003ff0:	04e48063          	beq	s1,a4,80004030 <consoleintr+0x8c>
    80003ff4:	07f7f713          	andi	a4,a5,127
    80003ff8:	00e90733          	add	a4,s2,a4
    80003ffc:	0017879b          	addiw	a5,a5,1
    80004000:	0af92023          	sw	a5,160(s2)
    80004004:	00970c23          	sb	s1,24(a4)
    80004008:	08f92e23          	sw	a5,156(s2)
    8000400c:	01013403          	ld	s0,16(sp)
    80004010:	01813083          	ld	ra,24(sp)
    80004014:	00813483          	ld	s1,8(sp)
    80004018:	00013903          	ld	s2,0(sp)
    8000401c:	00004517          	auipc	a0,0x4
    80004020:	49c50513          	addi	a0,a0,1180 # 800084b8 <cons>
    80004024:	02010113          	addi	sp,sp,32
    80004028:	00001317          	auipc	t1,0x1
    8000402c:	eb030067          	jr	-336(t1) # 80004ed8 <release>
    80004030:	00a00493          	li	s1,10
    80004034:	fc1ff06f          	j	80003ff4 <consoleintr+0x50>

0000000080004038 <consoleinit>:
    80004038:	fe010113          	addi	sp,sp,-32
    8000403c:	00113c23          	sd	ra,24(sp)
    80004040:	00813823          	sd	s0,16(sp)
    80004044:	00913423          	sd	s1,8(sp)
    80004048:	02010413          	addi	s0,sp,32
    8000404c:	00004497          	auipc	s1,0x4
    80004050:	46c48493          	addi	s1,s1,1132 # 800084b8 <cons>
    80004054:	00048513          	mv	a0,s1
    80004058:	00002597          	auipc	a1,0x2
    8000405c:	2a858593          	addi	a1,a1,680 # 80006300 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004060:	00001097          	auipc	ra,0x1
    80004064:	d88080e7          	jalr	-632(ra) # 80004de8 <initlock>
    80004068:	00000097          	auipc	ra,0x0
    8000406c:	7ac080e7          	jalr	1964(ra) # 80004814 <uartinit>
    80004070:	01813083          	ld	ra,24(sp)
    80004074:	01013403          	ld	s0,16(sp)
    80004078:	00000797          	auipc	a5,0x0
    8000407c:	d9c78793          	addi	a5,a5,-612 # 80003e14 <consoleread>
    80004080:	0af4bc23          	sd	a5,184(s1)
    80004084:	00000797          	auipc	a5,0x0
    80004088:	cec78793          	addi	a5,a5,-788 # 80003d70 <consolewrite>
    8000408c:	0cf4b023          	sd	a5,192(s1)
    80004090:	00813483          	ld	s1,8(sp)
    80004094:	02010113          	addi	sp,sp,32
    80004098:	00008067          	ret

000000008000409c <console_read>:
    8000409c:	ff010113          	addi	sp,sp,-16
    800040a0:	00813423          	sd	s0,8(sp)
    800040a4:	01010413          	addi	s0,sp,16
    800040a8:	00813403          	ld	s0,8(sp)
    800040ac:	00004317          	auipc	t1,0x4
    800040b0:	4c433303          	ld	t1,1220(t1) # 80008570 <devsw+0x10>
    800040b4:	01010113          	addi	sp,sp,16
    800040b8:	00030067          	jr	t1

00000000800040bc <console_write>:
    800040bc:	ff010113          	addi	sp,sp,-16
    800040c0:	00813423          	sd	s0,8(sp)
    800040c4:	01010413          	addi	s0,sp,16
    800040c8:	00813403          	ld	s0,8(sp)
    800040cc:	00004317          	auipc	t1,0x4
    800040d0:	4ac33303          	ld	t1,1196(t1) # 80008578 <devsw+0x18>
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00030067          	jr	t1

00000000800040dc <panic>:
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00050493          	mv	s1,a0
    800040f4:	00002517          	auipc	a0,0x2
    800040f8:	21450513          	addi	a0,a0,532 # 80006308 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    800040fc:	00004797          	auipc	a5,0x4
    80004100:	5007ae23          	sw	zero,1308(a5) # 80008618 <pr+0x18>
    80004104:	00000097          	auipc	ra,0x0
    80004108:	034080e7          	jalr	52(ra) # 80004138 <__printf>
    8000410c:	00048513          	mv	a0,s1
    80004110:	00000097          	auipc	ra,0x0
    80004114:	028080e7          	jalr	40(ra) # 80004138 <__printf>
    80004118:	00002517          	auipc	a0,0x2
    8000411c:	1d050513          	addi	a0,a0,464 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004120:	00000097          	auipc	ra,0x0
    80004124:	018080e7          	jalr	24(ra) # 80004138 <__printf>
    80004128:	00100793          	li	a5,1
    8000412c:	00003717          	auipc	a4,0x3
    80004130:	22f72623          	sw	a5,556(a4) # 80007358 <panicked>
    80004134:	0000006f          	j	80004134 <panic+0x58>

0000000080004138 <__printf>:
    80004138:	f3010113          	addi	sp,sp,-208
    8000413c:	08813023          	sd	s0,128(sp)
    80004140:	07313423          	sd	s3,104(sp)
    80004144:	09010413          	addi	s0,sp,144
    80004148:	05813023          	sd	s8,64(sp)
    8000414c:	08113423          	sd	ra,136(sp)
    80004150:	06913c23          	sd	s1,120(sp)
    80004154:	07213823          	sd	s2,112(sp)
    80004158:	07413023          	sd	s4,96(sp)
    8000415c:	05513c23          	sd	s5,88(sp)
    80004160:	05613823          	sd	s6,80(sp)
    80004164:	05713423          	sd	s7,72(sp)
    80004168:	03913c23          	sd	s9,56(sp)
    8000416c:	03a13823          	sd	s10,48(sp)
    80004170:	03b13423          	sd	s11,40(sp)
    80004174:	00004317          	auipc	t1,0x4
    80004178:	48c30313          	addi	t1,t1,1164 # 80008600 <pr>
    8000417c:	01832c03          	lw	s8,24(t1)
    80004180:	00b43423          	sd	a1,8(s0)
    80004184:	00c43823          	sd	a2,16(s0)
    80004188:	00d43c23          	sd	a3,24(s0)
    8000418c:	02e43023          	sd	a4,32(s0)
    80004190:	02f43423          	sd	a5,40(s0)
    80004194:	03043823          	sd	a6,48(s0)
    80004198:	03143c23          	sd	a7,56(s0)
    8000419c:	00050993          	mv	s3,a0
    800041a0:	4a0c1663          	bnez	s8,8000464c <__printf+0x514>
    800041a4:	60098c63          	beqz	s3,800047bc <__printf+0x684>
    800041a8:	0009c503          	lbu	a0,0(s3)
    800041ac:	00840793          	addi	a5,s0,8
    800041b0:	f6f43c23          	sd	a5,-136(s0)
    800041b4:	00000493          	li	s1,0
    800041b8:	22050063          	beqz	a0,800043d8 <__printf+0x2a0>
    800041bc:	00002a37          	lui	s4,0x2
    800041c0:	00018ab7          	lui	s5,0x18
    800041c4:	000f4b37          	lui	s6,0xf4
    800041c8:	00989bb7          	lui	s7,0x989
    800041cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800041d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800041d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800041d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800041dc:	00148c9b          	addiw	s9,s1,1
    800041e0:	02500793          	li	a5,37
    800041e4:	01998933          	add	s2,s3,s9
    800041e8:	38f51263          	bne	a0,a5,8000456c <__printf+0x434>
    800041ec:	00094783          	lbu	a5,0(s2)
    800041f0:	00078c9b          	sext.w	s9,a5
    800041f4:	1e078263          	beqz	a5,800043d8 <__printf+0x2a0>
    800041f8:	0024849b          	addiw	s1,s1,2
    800041fc:	07000713          	li	a4,112
    80004200:	00998933          	add	s2,s3,s1
    80004204:	38e78a63          	beq	a5,a4,80004598 <__printf+0x460>
    80004208:	20f76863          	bltu	a4,a5,80004418 <__printf+0x2e0>
    8000420c:	42a78863          	beq	a5,a0,8000463c <__printf+0x504>
    80004210:	06400713          	li	a4,100
    80004214:	40e79663          	bne	a5,a4,80004620 <__printf+0x4e8>
    80004218:	f7843783          	ld	a5,-136(s0)
    8000421c:	0007a603          	lw	a2,0(a5)
    80004220:	00878793          	addi	a5,a5,8
    80004224:	f6f43c23          	sd	a5,-136(s0)
    80004228:	42064a63          	bltz	a2,8000465c <__printf+0x524>
    8000422c:	00a00713          	li	a4,10
    80004230:	02e677bb          	remuw	a5,a2,a4
    80004234:	00002d97          	auipc	s11,0x2
    80004238:	0fcd8d93          	addi	s11,s11,252 # 80006330 <digits>
    8000423c:	00900593          	li	a1,9
    80004240:	0006051b          	sext.w	a0,a2
    80004244:	00000c93          	li	s9,0
    80004248:	02079793          	slli	a5,a5,0x20
    8000424c:	0207d793          	srli	a5,a5,0x20
    80004250:	00fd87b3          	add	a5,s11,a5
    80004254:	0007c783          	lbu	a5,0(a5)
    80004258:	02e656bb          	divuw	a3,a2,a4
    8000425c:	f8f40023          	sb	a5,-128(s0)
    80004260:	14c5d863          	bge	a1,a2,800043b0 <__printf+0x278>
    80004264:	06300593          	li	a1,99
    80004268:	00100c93          	li	s9,1
    8000426c:	02e6f7bb          	remuw	a5,a3,a4
    80004270:	02079793          	slli	a5,a5,0x20
    80004274:	0207d793          	srli	a5,a5,0x20
    80004278:	00fd87b3          	add	a5,s11,a5
    8000427c:	0007c783          	lbu	a5,0(a5)
    80004280:	02e6d73b          	divuw	a4,a3,a4
    80004284:	f8f400a3          	sb	a5,-127(s0)
    80004288:	12a5f463          	bgeu	a1,a0,800043b0 <__printf+0x278>
    8000428c:	00a00693          	li	a3,10
    80004290:	00900593          	li	a1,9
    80004294:	02d777bb          	remuw	a5,a4,a3
    80004298:	02079793          	slli	a5,a5,0x20
    8000429c:	0207d793          	srli	a5,a5,0x20
    800042a0:	00fd87b3          	add	a5,s11,a5
    800042a4:	0007c503          	lbu	a0,0(a5)
    800042a8:	02d757bb          	divuw	a5,a4,a3
    800042ac:	f8a40123          	sb	a0,-126(s0)
    800042b0:	48e5f263          	bgeu	a1,a4,80004734 <__printf+0x5fc>
    800042b4:	06300513          	li	a0,99
    800042b8:	02d7f5bb          	remuw	a1,a5,a3
    800042bc:	02059593          	slli	a1,a1,0x20
    800042c0:	0205d593          	srli	a1,a1,0x20
    800042c4:	00bd85b3          	add	a1,s11,a1
    800042c8:	0005c583          	lbu	a1,0(a1)
    800042cc:	02d7d7bb          	divuw	a5,a5,a3
    800042d0:	f8b401a3          	sb	a1,-125(s0)
    800042d4:	48e57263          	bgeu	a0,a4,80004758 <__printf+0x620>
    800042d8:	3e700513          	li	a0,999
    800042dc:	02d7f5bb          	remuw	a1,a5,a3
    800042e0:	02059593          	slli	a1,a1,0x20
    800042e4:	0205d593          	srli	a1,a1,0x20
    800042e8:	00bd85b3          	add	a1,s11,a1
    800042ec:	0005c583          	lbu	a1,0(a1)
    800042f0:	02d7d7bb          	divuw	a5,a5,a3
    800042f4:	f8b40223          	sb	a1,-124(s0)
    800042f8:	46e57663          	bgeu	a0,a4,80004764 <__printf+0x62c>
    800042fc:	02d7f5bb          	remuw	a1,a5,a3
    80004300:	02059593          	slli	a1,a1,0x20
    80004304:	0205d593          	srli	a1,a1,0x20
    80004308:	00bd85b3          	add	a1,s11,a1
    8000430c:	0005c583          	lbu	a1,0(a1)
    80004310:	02d7d7bb          	divuw	a5,a5,a3
    80004314:	f8b402a3          	sb	a1,-123(s0)
    80004318:	46ea7863          	bgeu	s4,a4,80004788 <__printf+0x650>
    8000431c:	02d7f5bb          	remuw	a1,a5,a3
    80004320:	02059593          	slli	a1,a1,0x20
    80004324:	0205d593          	srli	a1,a1,0x20
    80004328:	00bd85b3          	add	a1,s11,a1
    8000432c:	0005c583          	lbu	a1,0(a1)
    80004330:	02d7d7bb          	divuw	a5,a5,a3
    80004334:	f8b40323          	sb	a1,-122(s0)
    80004338:	3eeaf863          	bgeu	s5,a4,80004728 <__printf+0x5f0>
    8000433c:	02d7f5bb          	remuw	a1,a5,a3
    80004340:	02059593          	slli	a1,a1,0x20
    80004344:	0205d593          	srli	a1,a1,0x20
    80004348:	00bd85b3          	add	a1,s11,a1
    8000434c:	0005c583          	lbu	a1,0(a1)
    80004350:	02d7d7bb          	divuw	a5,a5,a3
    80004354:	f8b403a3          	sb	a1,-121(s0)
    80004358:	42eb7e63          	bgeu	s6,a4,80004794 <__printf+0x65c>
    8000435c:	02d7f5bb          	remuw	a1,a5,a3
    80004360:	02059593          	slli	a1,a1,0x20
    80004364:	0205d593          	srli	a1,a1,0x20
    80004368:	00bd85b3          	add	a1,s11,a1
    8000436c:	0005c583          	lbu	a1,0(a1)
    80004370:	02d7d7bb          	divuw	a5,a5,a3
    80004374:	f8b40423          	sb	a1,-120(s0)
    80004378:	42ebfc63          	bgeu	s7,a4,800047b0 <__printf+0x678>
    8000437c:	02079793          	slli	a5,a5,0x20
    80004380:	0207d793          	srli	a5,a5,0x20
    80004384:	00fd8db3          	add	s11,s11,a5
    80004388:	000dc703          	lbu	a4,0(s11)
    8000438c:	00a00793          	li	a5,10
    80004390:	00900c93          	li	s9,9
    80004394:	f8e404a3          	sb	a4,-119(s0)
    80004398:	00065c63          	bgez	a2,800043b0 <__printf+0x278>
    8000439c:	f9040713          	addi	a4,s0,-112
    800043a0:	00f70733          	add	a4,a4,a5
    800043a4:	02d00693          	li	a3,45
    800043a8:	fed70823          	sb	a3,-16(a4)
    800043ac:	00078c93          	mv	s9,a5
    800043b0:	f8040793          	addi	a5,s0,-128
    800043b4:	01978cb3          	add	s9,a5,s9
    800043b8:	f7f40d13          	addi	s10,s0,-129
    800043bc:	000cc503          	lbu	a0,0(s9)
    800043c0:	fffc8c93          	addi	s9,s9,-1
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	b90080e7          	jalr	-1136(ra) # 80003f54 <consputc>
    800043cc:	ffac98e3          	bne	s9,s10,800043bc <__printf+0x284>
    800043d0:	00094503          	lbu	a0,0(s2)
    800043d4:	e00514e3          	bnez	a0,800041dc <__printf+0xa4>
    800043d8:	1a0c1663          	bnez	s8,80004584 <__printf+0x44c>
    800043dc:	08813083          	ld	ra,136(sp)
    800043e0:	08013403          	ld	s0,128(sp)
    800043e4:	07813483          	ld	s1,120(sp)
    800043e8:	07013903          	ld	s2,112(sp)
    800043ec:	06813983          	ld	s3,104(sp)
    800043f0:	06013a03          	ld	s4,96(sp)
    800043f4:	05813a83          	ld	s5,88(sp)
    800043f8:	05013b03          	ld	s6,80(sp)
    800043fc:	04813b83          	ld	s7,72(sp)
    80004400:	04013c03          	ld	s8,64(sp)
    80004404:	03813c83          	ld	s9,56(sp)
    80004408:	03013d03          	ld	s10,48(sp)
    8000440c:	02813d83          	ld	s11,40(sp)
    80004410:	0d010113          	addi	sp,sp,208
    80004414:	00008067          	ret
    80004418:	07300713          	li	a4,115
    8000441c:	1ce78a63          	beq	a5,a4,800045f0 <__printf+0x4b8>
    80004420:	07800713          	li	a4,120
    80004424:	1ee79e63          	bne	a5,a4,80004620 <__printf+0x4e8>
    80004428:	f7843783          	ld	a5,-136(s0)
    8000442c:	0007a703          	lw	a4,0(a5)
    80004430:	00878793          	addi	a5,a5,8
    80004434:	f6f43c23          	sd	a5,-136(s0)
    80004438:	28074263          	bltz	a4,800046bc <__printf+0x584>
    8000443c:	00002d97          	auipc	s11,0x2
    80004440:	ef4d8d93          	addi	s11,s11,-268 # 80006330 <digits>
    80004444:	00f77793          	andi	a5,a4,15
    80004448:	00fd87b3          	add	a5,s11,a5
    8000444c:	0007c683          	lbu	a3,0(a5)
    80004450:	00f00613          	li	a2,15
    80004454:	0007079b          	sext.w	a5,a4
    80004458:	f8d40023          	sb	a3,-128(s0)
    8000445c:	0047559b          	srliw	a1,a4,0x4
    80004460:	0047569b          	srliw	a3,a4,0x4
    80004464:	00000c93          	li	s9,0
    80004468:	0ee65063          	bge	a2,a4,80004548 <__printf+0x410>
    8000446c:	00f6f693          	andi	a3,a3,15
    80004470:	00dd86b3          	add	a3,s11,a3
    80004474:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004478:	0087d79b          	srliw	a5,a5,0x8
    8000447c:	00100c93          	li	s9,1
    80004480:	f8d400a3          	sb	a3,-127(s0)
    80004484:	0cb67263          	bgeu	a2,a1,80004548 <__printf+0x410>
    80004488:	00f7f693          	andi	a3,a5,15
    8000448c:	00dd86b3          	add	a3,s11,a3
    80004490:	0006c583          	lbu	a1,0(a3)
    80004494:	00f00613          	li	a2,15
    80004498:	0047d69b          	srliw	a3,a5,0x4
    8000449c:	f8b40123          	sb	a1,-126(s0)
    800044a0:	0047d593          	srli	a1,a5,0x4
    800044a4:	28f67e63          	bgeu	a2,a5,80004740 <__printf+0x608>
    800044a8:	00f6f693          	andi	a3,a3,15
    800044ac:	00dd86b3          	add	a3,s11,a3
    800044b0:	0006c503          	lbu	a0,0(a3)
    800044b4:	0087d813          	srli	a6,a5,0x8
    800044b8:	0087d69b          	srliw	a3,a5,0x8
    800044bc:	f8a401a3          	sb	a0,-125(s0)
    800044c0:	28b67663          	bgeu	a2,a1,8000474c <__printf+0x614>
    800044c4:	00f6f693          	andi	a3,a3,15
    800044c8:	00dd86b3          	add	a3,s11,a3
    800044cc:	0006c583          	lbu	a1,0(a3)
    800044d0:	00c7d513          	srli	a0,a5,0xc
    800044d4:	00c7d69b          	srliw	a3,a5,0xc
    800044d8:	f8b40223          	sb	a1,-124(s0)
    800044dc:	29067a63          	bgeu	a2,a6,80004770 <__printf+0x638>
    800044e0:	00f6f693          	andi	a3,a3,15
    800044e4:	00dd86b3          	add	a3,s11,a3
    800044e8:	0006c583          	lbu	a1,0(a3)
    800044ec:	0107d813          	srli	a6,a5,0x10
    800044f0:	0107d69b          	srliw	a3,a5,0x10
    800044f4:	f8b402a3          	sb	a1,-123(s0)
    800044f8:	28a67263          	bgeu	a2,a0,8000477c <__printf+0x644>
    800044fc:	00f6f693          	andi	a3,a3,15
    80004500:	00dd86b3          	add	a3,s11,a3
    80004504:	0006c683          	lbu	a3,0(a3)
    80004508:	0147d79b          	srliw	a5,a5,0x14
    8000450c:	f8d40323          	sb	a3,-122(s0)
    80004510:	21067663          	bgeu	a2,a6,8000471c <__printf+0x5e4>
    80004514:	02079793          	slli	a5,a5,0x20
    80004518:	0207d793          	srli	a5,a5,0x20
    8000451c:	00fd8db3          	add	s11,s11,a5
    80004520:	000dc683          	lbu	a3,0(s11)
    80004524:	00800793          	li	a5,8
    80004528:	00700c93          	li	s9,7
    8000452c:	f8d403a3          	sb	a3,-121(s0)
    80004530:	00075c63          	bgez	a4,80004548 <__printf+0x410>
    80004534:	f9040713          	addi	a4,s0,-112
    80004538:	00f70733          	add	a4,a4,a5
    8000453c:	02d00693          	li	a3,45
    80004540:	fed70823          	sb	a3,-16(a4)
    80004544:	00078c93          	mv	s9,a5
    80004548:	f8040793          	addi	a5,s0,-128
    8000454c:	01978cb3          	add	s9,a5,s9
    80004550:	f7f40d13          	addi	s10,s0,-129
    80004554:	000cc503          	lbu	a0,0(s9)
    80004558:	fffc8c93          	addi	s9,s9,-1
    8000455c:	00000097          	auipc	ra,0x0
    80004560:	9f8080e7          	jalr	-1544(ra) # 80003f54 <consputc>
    80004564:	ff9d18e3          	bne	s10,s9,80004554 <__printf+0x41c>
    80004568:	0100006f          	j	80004578 <__printf+0x440>
    8000456c:	00000097          	auipc	ra,0x0
    80004570:	9e8080e7          	jalr	-1560(ra) # 80003f54 <consputc>
    80004574:	000c8493          	mv	s1,s9
    80004578:	00094503          	lbu	a0,0(s2)
    8000457c:	c60510e3          	bnez	a0,800041dc <__printf+0xa4>
    80004580:	e40c0ee3          	beqz	s8,800043dc <__printf+0x2a4>
    80004584:	00004517          	auipc	a0,0x4
    80004588:	07c50513          	addi	a0,a0,124 # 80008600 <pr>
    8000458c:	00001097          	auipc	ra,0x1
    80004590:	94c080e7          	jalr	-1716(ra) # 80004ed8 <release>
    80004594:	e49ff06f          	j	800043dc <__printf+0x2a4>
    80004598:	f7843783          	ld	a5,-136(s0)
    8000459c:	03000513          	li	a0,48
    800045a0:	01000d13          	li	s10,16
    800045a4:	00878713          	addi	a4,a5,8
    800045a8:	0007bc83          	ld	s9,0(a5)
    800045ac:	f6e43c23          	sd	a4,-136(s0)
    800045b0:	00000097          	auipc	ra,0x0
    800045b4:	9a4080e7          	jalr	-1628(ra) # 80003f54 <consputc>
    800045b8:	07800513          	li	a0,120
    800045bc:	00000097          	auipc	ra,0x0
    800045c0:	998080e7          	jalr	-1640(ra) # 80003f54 <consputc>
    800045c4:	00002d97          	auipc	s11,0x2
    800045c8:	d6cd8d93          	addi	s11,s11,-660 # 80006330 <digits>
    800045cc:	03ccd793          	srli	a5,s9,0x3c
    800045d0:	00fd87b3          	add	a5,s11,a5
    800045d4:	0007c503          	lbu	a0,0(a5)
    800045d8:	fffd0d1b          	addiw	s10,s10,-1
    800045dc:	004c9c93          	slli	s9,s9,0x4
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	974080e7          	jalr	-1676(ra) # 80003f54 <consputc>
    800045e8:	fe0d12e3          	bnez	s10,800045cc <__printf+0x494>
    800045ec:	f8dff06f          	j	80004578 <__printf+0x440>
    800045f0:	f7843783          	ld	a5,-136(s0)
    800045f4:	0007bc83          	ld	s9,0(a5)
    800045f8:	00878793          	addi	a5,a5,8
    800045fc:	f6f43c23          	sd	a5,-136(s0)
    80004600:	000c9a63          	bnez	s9,80004614 <__printf+0x4dc>
    80004604:	1080006f          	j	8000470c <__printf+0x5d4>
    80004608:	001c8c93          	addi	s9,s9,1
    8000460c:	00000097          	auipc	ra,0x0
    80004610:	948080e7          	jalr	-1720(ra) # 80003f54 <consputc>
    80004614:	000cc503          	lbu	a0,0(s9)
    80004618:	fe0518e3          	bnez	a0,80004608 <__printf+0x4d0>
    8000461c:	f5dff06f          	j	80004578 <__printf+0x440>
    80004620:	02500513          	li	a0,37
    80004624:	00000097          	auipc	ra,0x0
    80004628:	930080e7          	jalr	-1744(ra) # 80003f54 <consputc>
    8000462c:	000c8513          	mv	a0,s9
    80004630:	00000097          	auipc	ra,0x0
    80004634:	924080e7          	jalr	-1756(ra) # 80003f54 <consputc>
    80004638:	f41ff06f          	j	80004578 <__printf+0x440>
    8000463c:	02500513          	li	a0,37
    80004640:	00000097          	auipc	ra,0x0
    80004644:	914080e7          	jalr	-1772(ra) # 80003f54 <consputc>
    80004648:	f31ff06f          	j	80004578 <__printf+0x440>
    8000464c:	00030513          	mv	a0,t1
    80004650:	00000097          	auipc	ra,0x0
    80004654:	7bc080e7          	jalr	1980(ra) # 80004e0c <acquire>
    80004658:	b4dff06f          	j	800041a4 <__printf+0x6c>
    8000465c:	40c0053b          	negw	a0,a2
    80004660:	00a00713          	li	a4,10
    80004664:	02e576bb          	remuw	a3,a0,a4
    80004668:	00002d97          	auipc	s11,0x2
    8000466c:	cc8d8d93          	addi	s11,s11,-824 # 80006330 <digits>
    80004670:	ff700593          	li	a1,-9
    80004674:	02069693          	slli	a3,a3,0x20
    80004678:	0206d693          	srli	a3,a3,0x20
    8000467c:	00dd86b3          	add	a3,s11,a3
    80004680:	0006c683          	lbu	a3,0(a3)
    80004684:	02e557bb          	divuw	a5,a0,a4
    80004688:	f8d40023          	sb	a3,-128(s0)
    8000468c:	10b65e63          	bge	a2,a1,800047a8 <__printf+0x670>
    80004690:	06300593          	li	a1,99
    80004694:	02e7f6bb          	remuw	a3,a5,a4
    80004698:	02069693          	slli	a3,a3,0x20
    8000469c:	0206d693          	srli	a3,a3,0x20
    800046a0:	00dd86b3          	add	a3,s11,a3
    800046a4:	0006c683          	lbu	a3,0(a3)
    800046a8:	02e7d73b          	divuw	a4,a5,a4
    800046ac:	00200793          	li	a5,2
    800046b0:	f8d400a3          	sb	a3,-127(s0)
    800046b4:	bca5ece3          	bltu	a1,a0,8000428c <__printf+0x154>
    800046b8:	ce5ff06f          	j	8000439c <__printf+0x264>
    800046bc:	40e007bb          	negw	a5,a4
    800046c0:	00002d97          	auipc	s11,0x2
    800046c4:	c70d8d93          	addi	s11,s11,-912 # 80006330 <digits>
    800046c8:	00f7f693          	andi	a3,a5,15
    800046cc:	00dd86b3          	add	a3,s11,a3
    800046d0:	0006c583          	lbu	a1,0(a3)
    800046d4:	ff100613          	li	a2,-15
    800046d8:	0047d69b          	srliw	a3,a5,0x4
    800046dc:	f8b40023          	sb	a1,-128(s0)
    800046e0:	0047d59b          	srliw	a1,a5,0x4
    800046e4:	0ac75e63          	bge	a4,a2,800047a0 <__printf+0x668>
    800046e8:	00f6f693          	andi	a3,a3,15
    800046ec:	00dd86b3          	add	a3,s11,a3
    800046f0:	0006c603          	lbu	a2,0(a3)
    800046f4:	00f00693          	li	a3,15
    800046f8:	0087d79b          	srliw	a5,a5,0x8
    800046fc:	f8c400a3          	sb	a2,-127(s0)
    80004700:	d8b6e4e3          	bltu	a3,a1,80004488 <__printf+0x350>
    80004704:	00200793          	li	a5,2
    80004708:	e2dff06f          	j	80004534 <__printf+0x3fc>
    8000470c:	00002c97          	auipc	s9,0x2
    80004710:	c04c8c93          	addi	s9,s9,-1020 # 80006310 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004714:	02800513          	li	a0,40
    80004718:	ef1ff06f          	j	80004608 <__printf+0x4d0>
    8000471c:	00700793          	li	a5,7
    80004720:	00600c93          	li	s9,6
    80004724:	e0dff06f          	j	80004530 <__printf+0x3f8>
    80004728:	00700793          	li	a5,7
    8000472c:	00600c93          	li	s9,6
    80004730:	c69ff06f          	j	80004398 <__printf+0x260>
    80004734:	00300793          	li	a5,3
    80004738:	00200c93          	li	s9,2
    8000473c:	c5dff06f          	j	80004398 <__printf+0x260>
    80004740:	00300793          	li	a5,3
    80004744:	00200c93          	li	s9,2
    80004748:	de9ff06f          	j	80004530 <__printf+0x3f8>
    8000474c:	00400793          	li	a5,4
    80004750:	00300c93          	li	s9,3
    80004754:	dddff06f          	j	80004530 <__printf+0x3f8>
    80004758:	00400793          	li	a5,4
    8000475c:	00300c93          	li	s9,3
    80004760:	c39ff06f          	j	80004398 <__printf+0x260>
    80004764:	00500793          	li	a5,5
    80004768:	00400c93          	li	s9,4
    8000476c:	c2dff06f          	j	80004398 <__printf+0x260>
    80004770:	00500793          	li	a5,5
    80004774:	00400c93          	li	s9,4
    80004778:	db9ff06f          	j	80004530 <__printf+0x3f8>
    8000477c:	00600793          	li	a5,6
    80004780:	00500c93          	li	s9,5
    80004784:	dadff06f          	j	80004530 <__printf+0x3f8>
    80004788:	00600793          	li	a5,6
    8000478c:	00500c93          	li	s9,5
    80004790:	c09ff06f          	j	80004398 <__printf+0x260>
    80004794:	00800793          	li	a5,8
    80004798:	00700c93          	li	s9,7
    8000479c:	bfdff06f          	j	80004398 <__printf+0x260>
    800047a0:	00100793          	li	a5,1
    800047a4:	d91ff06f          	j	80004534 <__printf+0x3fc>
    800047a8:	00100793          	li	a5,1
    800047ac:	bf1ff06f          	j	8000439c <__printf+0x264>
    800047b0:	00900793          	li	a5,9
    800047b4:	00800c93          	li	s9,8
    800047b8:	be1ff06f          	j	80004398 <__printf+0x260>
    800047bc:	00002517          	auipc	a0,0x2
    800047c0:	b5c50513          	addi	a0,a0,-1188 # 80006318 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    800047c4:	00000097          	auipc	ra,0x0
    800047c8:	918080e7          	jalr	-1768(ra) # 800040dc <panic>

00000000800047cc <printfinit>:
    800047cc:	fe010113          	addi	sp,sp,-32
    800047d0:	00813823          	sd	s0,16(sp)
    800047d4:	00913423          	sd	s1,8(sp)
    800047d8:	00113c23          	sd	ra,24(sp)
    800047dc:	02010413          	addi	s0,sp,32
    800047e0:	00004497          	auipc	s1,0x4
    800047e4:	e2048493          	addi	s1,s1,-480 # 80008600 <pr>
    800047e8:	00048513          	mv	a0,s1
    800047ec:	00002597          	auipc	a1,0x2
    800047f0:	b3c58593          	addi	a1,a1,-1220 # 80006328 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800047f4:	00000097          	auipc	ra,0x0
    800047f8:	5f4080e7          	jalr	1524(ra) # 80004de8 <initlock>
    800047fc:	01813083          	ld	ra,24(sp)
    80004800:	01013403          	ld	s0,16(sp)
    80004804:	0004ac23          	sw	zero,24(s1)
    80004808:	00813483          	ld	s1,8(sp)
    8000480c:	02010113          	addi	sp,sp,32
    80004810:	00008067          	ret

0000000080004814 <uartinit>:
    80004814:	ff010113          	addi	sp,sp,-16
    80004818:	00813423          	sd	s0,8(sp)
    8000481c:	01010413          	addi	s0,sp,16
    80004820:	100007b7          	lui	a5,0x10000
    80004824:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004828:	f8000713          	li	a4,-128
    8000482c:	00e781a3          	sb	a4,3(a5)
    80004830:	00300713          	li	a4,3
    80004834:	00e78023          	sb	a4,0(a5)
    80004838:	000780a3          	sb	zero,1(a5)
    8000483c:	00e781a3          	sb	a4,3(a5)
    80004840:	00700693          	li	a3,7
    80004844:	00d78123          	sb	a3,2(a5)
    80004848:	00e780a3          	sb	a4,1(a5)
    8000484c:	00813403          	ld	s0,8(sp)
    80004850:	01010113          	addi	sp,sp,16
    80004854:	00008067          	ret

0000000080004858 <uartputc>:
    80004858:	00003797          	auipc	a5,0x3
    8000485c:	b007a783          	lw	a5,-1280(a5) # 80007358 <panicked>
    80004860:	00078463          	beqz	a5,80004868 <uartputc+0x10>
    80004864:	0000006f          	j	80004864 <uartputc+0xc>
    80004868:	fd010113          	addi	sp,sp,-48
    8000486c:	02813023          	sd	s0,32(sp)
    80004870:	00913c23          	sd	s1,24(sp)
    80004874:	01213823          	sd	s2,16(sp)
    80004878:	01313423          	sd	s3,8(sp)
    8000487c:	02113423          	sd	ra,40(sp)
    80004880:	03010413          	addi	s0,sp,48
    80004884:	00003917          	auipc	s2,0x3
    80004888:	adc90913          	addi	s2,s2,-1316 # 80007360 <uart_tx_r>
    8000488c:	00093783          	ld	a5,0(s2)
    80004890:	00003497          	auipc	s1,0x3
    80004894:	ad848493          	addi	s1,s1,-1320 # 80007368 <uart_tx_w>
    80004898:	0004b703          	ld	a4,0(s1)
    8000489c:	02078693          	addi	a3,a5,32
    800048a0:	00050993          	mv	s3,a0
    800048a4:	02e69c63          	bne	a3,a4,800048dc <uartputc+0x84>
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	834080e7          	jalr	-1996(ra) # 800050dc <push_on>
    800048b0:	00093783          	ld	a5,0(s2)
    800048b4:	0004b703          	ld	a4,0(s1)
    800048b8:	02078793          	addi	a5,a5,32
    800048bc:	00e79463          	bne	a5,a4,800048c4 <uartputc+0x6c>
    800048c0:	0000006f          	j	800048c0 <uartputc+0x68>
    800048c4:	00001097          	auipc	ra,0x1
    800048c8:	88c080e7          	jalr	-1908(ra) # 80005150 <pop_on>
    800048cc:	00093783          	ld	a5,0(s2)
    800048d0:	0004b703          	ld	a4,0(s1)
    800048d4:	02078693          	addi	a3,a5,32
    800048d8:	fce688e3          	beq	a3,a4,800048a8 <uartputc+0x50>
    800048dc:	01f77693          	andi	a3,a4,31
    800048e0:	00004597          	auipc	a1,0x4
    800048e4:	d4058593          	addi	a1,a1,-704 # 80008620 <uart_tx_buf>
    800048e8:	00d586b3          	add	a3,a1,a3
    800048ec:	00170713          	addi	a4,a4,1
    800048f0:	01368023          	sb	s3,0(a3)
    800048f4:	00e4b023          	sd	a4,0(s1)
    800048f8:	10000637          	lui	a2,0x10000
    800048fc:	02f71063          	bne	a4,a5,8000491c <uartputc+0xc4>
    80004900:	0340006f          	j	80004934 <uartputc+0xdc>
    80004904:	00074703          	lbu	a4,0(a4)
    80004908:	00f93023          	sd	a5,0(s2)
    8000490c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004910:	00093783          	ld	a5,0(s2)
    80004914:	0004b703          	ld	a4,0(s1)
    80004918:	00f70e63          	beq	a4,a5,80004934 <uartputc+0xdc>
    8000491c:	00564683          	lbu	a3,5(a2)
    80004920:	01f7f713          	andi	a4,a5,31
    80004924:	00e58733          	add	a4,a1,a4
    80004928:	0206f693          	andi	a3,a3,32
    8000492c:	00178793          	addi	a5,a5,1
    80004930:	fc069ae3          	bnez	a3,80004904 <uartputc+0xac>
    80004934:	02813083          	ld	ra,40(sp)
    80004938:	02013403          	ld	s0,32(sp)
    8000493c:	01813483          	ld	s1,24(sp)
    80004940:	01013903          	ld	s2,16(sp)
    80004944:	00813983          	ld	s3,8(sp)
    80004948:	03010113          	addi	sp,sp,48
    8000494c:	00008067          	ret

0000000080004950 <uartputc_sync>:
    80004950:	ff010113          	addi	sp,sp,-16
    80004954:	00813423          	sd	s0,8(sp)
    80004958:	01010413          	addi	s0,sp,16
    8000495c:	00003717          	auipc	a4,0x3
    80004960:	9fc72703          	lw	a4,-1540(a4) # 80007358 <panicked>
    80004964:	02071663          	bnez	a4,80004990 <uartputc_sync+0x40>
    80004968:	00050793          	mv	a5,a0
    8000496c:	100006b7          	lui	a3,0x10000
    80004970:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004974:	02077713          	andi	a4,a4,32
    80004978:	fe070ce3          	beqz	a4,80004970 <uartputc_sync+0x20>
    8000497c:	0ff7f793          	andi	a5,a5,255
    80004980:	00f68023          	sb	a5,0(a3)
    80004984:	00813403          	ld	s0,8(sp)
    80004988:	01010113          	addi	sp,sp,16
    8000498c:	00008067          	ret
    80004990:	0000006f          	j	80004990 <uartputc_sync+0x40>

0000000080004994 <uartstart>:
    80004994:	ff010113          	addi	sp,sp,-16
    80004998:	00813423          	sd	s0,8(sp)
    8000499c:	01010413          	addi	s0,sp,16
    800049a0:	00003617          	auipc	a2,0x3
    800049a4:	9c060613          	addi	a2,a2,-1600 # 80007360 <uart_tx_r>
    800049a8:	00003517          	auipc	a0,0x3
    800049ac:	9c050513          	addi	a0,a0,-1600 # 80007368 <uart_tx_w>
    800049b0:	00063783          	ld	a5,0(a2)
    800049b4:	00053703          	ld	a4,0(a0)
    800049b8:	04f70263          	beq	a4,a5,800049fc <uartstart+0x68>
    800049bc:	100005b7          	lui	a1,0x10000
    800049c0:	00004817          	auipc	a6,0x4
    800049c4:	c6080813          	addi	a6,a6,-928 # 80008620 <uart_tx_buf>
    800049c8:	01c0006f          	j	800049e4 <uartstart+0x50>
    800049cc:	0006c703          	lbu	a4,0(a3)
    800049d0:	00f63023          	sd	a5,0(a2)
    800049d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800049d8:	00063783          	ld	a5,0(a2)
    800049dc:	00053703          	ld	a4,0(a0)
    800049e0:	00f70e63          	beq	a4,a5,800049fc <uartstart+0x68>
    800049e4:	01f7f713          	andi	a4,a5,31
    800049e8:	00e806b3          	add	a3,a6,a4
    800049ec:	0055c703          	lbu	a4,5(a1)
    800049f0:	00178793          	addi	a5,a5,1
    800049f4:	02077713          	andi	a4,a4,32
    800049f8:	fc071ae3          	bnez	a4,800049cc <uartstart+0x38>
    800049fc:	00813403          	ld	s0,8(sp)
    80004a00:	01010113          	addi	sp,sp,16
    80004a04:	00008067          	ret

0000000080004a08 <uartgetc>:
    80004a08:	ff010113          	addi	sp,sp,-16
    80004a0c:	00813423          	sd	s0,8(sp)
    80004a10:	01010413          	addi	s0,sp,16
    80004a14:	10000737          	lui	a4,0x10000
    80004a18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004a1c:	0017f793          	andi	a5,a5,1
    80004a20:	00078c63          	beqz	a5,80004a38 <uartgetc+0x30>
    80004a24:	00074503          	lbu	a0,0(a4)
    80004a28:	0ff57513          	andi	a0,a0,255
    80004a2c:	00813403          	ld	s0,8(sp)
    80004a30:	01010113          	addi	sp,sp,16
    80004a34:	00008067          	ret
    80004a38:	fff00513          	li	a0,-1
    80004a3c:	ff1ff06f          	j	80004a2c <uartgetc+0x24>

0000000080004a40 <uartintr>:
    80004a40:	100007b7          	lui	a5,0x10000
    80004a44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004a48:	0017f793          	andi	a5,a5,1
    80004a4c:	0a078463          	beqz	a5,80004af4 <uartintr+0xb4>
    80004a50:	fe010113          	addi	sp,sp,-32
    80004a54:	00813823          	sd	s0,16(sp)
    80004a58:	00913423          	sd	s1,8(sp)
    80004a5c:	00113c23          	sd	ra,24(sp)
    80004a60:	02010413          	addi	s0,sp,32
    80004a64:	100004b7          	lui	s1,0x10000
    80004a68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004a6c:	0ff57513          	andi	a0,a0,255
    80004a70:	fffff097          	auipc	ra,0xfffff
    80004a74:	534080e7          	jalr	1332(ra) # 80003fa4 <consoleintr>
    80004a78:	0054c783          	lbu	a5,5(s1)
    80004a7c:	0017f793          	andi	a5,a5,1
    80004a80:	fe0794e3          	bnez	a5,80004a68 <uartintr+0x28>
    80004a84:	00003617          	auipc	a2,0x3
    80004a88:	8dc60613          	addi	a2,a2,-1828 # 80007360 <uart_tx_r>
    80004a8c:	00003517          	auipc	a0,0x3
    80004a90:	8dc50513          	addi	a0,a0,-1828 # 80007368 <uart_tx_w>
    80004a94:	00063783          	ld	a5,0(a2)
    80004a98:	00053703          	ld	a4,0(a0)
    80004a9c:	04f70263          	beq	a4,a5,80004ae0 <uartintr+0xa0>
    80004aa0:	100005b7          	lui	a1,0x10000
    80004aa4:	00004817          	auipc	a6,0x4
    80004aa8:	b7c80813          	addi	a6,a6,-1156 # 80008620 <uart_tx_buf>
    80004aac:	01c0006f          	j	80004ac8 <uartintr+0x88>
    80004ab0:	0006c703          	lbu	a4,0(a3)
    80004ab4:	00f63023          	sd	a5,0(a2)
    80004ab8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004abc:	00063783          	ld	a5,0(a2)
    80004ac0:	00053703          	ld	a4,0(a0)
    80004ac4:	00f70e63          	beq	a4,a5,80004ae0 <uartintr+0xa0>
    80004ac8:	01f7f713          	andi	a4,a5,31
    80004acc:	00e806b3          	add	a3,a6,a4
    80004ad0:	0055c703          	lbu	a4,5(a1)
    80004ad4:	00178793          	addi	a5,a5,1
    80004ad8:	02077713          	andi	a4,a4,32
    80004adc:	fc071ae3          	bnez	a4,80004ab0 <uartintr+0x70>
    80004ae0:	01813083          	ld	ra,24(sp)
    80004ae4:	01013403          	ld	s0,16(sp)
    80004ae8:	00813483          	ld	s1,8(sp)
    80004aec:	02010113          	addi	sp,sp,32
    80004af0:	00008067          	ret
    80004af4:	00003617          	auipc	a2,0x3
    80004af8:	86c60613          	addi	a2,a2,-1940 # 80007360 <uart_tx_r>
    80004afc:	00003517          	auipc	a0,0x3
    80004b00:	86c50513          	addi	a0,a0,-1940 # 80007368 <uart_tx_w>
    80004b04:	00063783          	ld	a5,0(a2)
    80004b08:	00053703          	ld	a4,0(a0)
    80004b0c:	04f70263          	beq	a4,a5,80004b50 <uartintr+0x110>
    80004b10:	100005b7          	lui	a1,0x10000
    80004b14:	00004817          	auipc	a6,0x4
    80004b18:	b0c80813          	addi	a6,a6,-1268 # 80008620 <uart_tx_buf>
    80004b1c:	01c0006f          	j	80004b38 <uartintr+0xf8>
    80004b20:	0006c703          	lbu	a4,0(a3)
    80004b24:	00f63023          	sd	a5,0(a2)
    80004b28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004b2c:	00063783          	ld	a5,0(a2)
    80004b30:	00053703          	ld	a4,0(a0)
    80004b34:	02f70063          	beq	a4,a5,80004b54 <uartintr+0x114>
    80004b38:	01f7f713          	andi	a4,a5,31
    80004b3c:	00e806b3          	add	a3,a6,a4
    80004b40:	0055c703          	lbu	a4,5(a1)
    80004b44:	00178793          	addi	a5,a5,1
    80004b48:	02077713          	andi	a4,a4,32
    80004b4c:	fc071ae3          	bnez	a4,80004b20 <uartintr+0xe0>
    80004b50:	00008067          	ret
    80004b54:	00008067          	ret

0000000080004b58 <kinit>:
    80004b58:	fc010113          	addi	sp,sp,-64
    80004b5c:	02913423          	sd	s1,40(sp)
    80004b60:	fffff7b7          	lui	a5,0xfffff
    80004b64:	00005497          	auipc	s1,0x5
    80004b68:	adb48493          	addi	s1,s1,-1317 # 8000963f <end+0xfff>
    80004b6c:	02813823          	sd	s0,48(sp)
    80004b70:	01313c23          	sd	s3,24(sp)
    80004b74:	00f4f4b3          	and	s1,s1,a5
    80004b78:	02113c23          	sd	ra,56(sp)
    80004b7c:	03213023          	sd	s2,32(sp)
    80004b80:	01413823          	sd	s4,16(sp)
    80004b84:	01513423          	sd	s5,8(sp)
    80004b88:	04010413          	addi	s0,sp,64
    80004b8c:	000017b7          	lui	a5,0x1
    80004b90:	01100993          	li	s3,17
    80004b94:	00f487b3          	add	a5,s1,a5
    80004b98:	01b99993          	slli	s3,s3,0x1b
    80004b9c:	06f9e063          	bltu	s3,a5,80004bfc <kinit+0xa4>
    80004ba0:	00004a97          	auipc	s5,0x4
    80004ba4:	aa0a8a93          	addi	s5,s5,-1376 # 80008640 <end>
    80004ba8:	0754ec63          	bltu	s1,s5,80004c20 <kinit+0xc8>
    80004bac:	0734fa63          	bgeu	s1,s3,80004c20 <kinit+0xc8>
    80004bb0:	00088a37          	lui	s4,0x88
    80004bb4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004bb8:	00002917          	auipc	s2,0x2
    80004bbc:	7b890913          	addi	s2,s2,1976 # 80007370 <kmem>
    80004bc0:	00ca1a13          	slli	s4,s4,0xc
    80004bc4:	0140006f          	j	80004bd8 <kinit+0x80>
    80004bc8:	000017b7          	lui	a5,0x1
    80004bcc:	00f484b3          	add	s1,s1,a5
    80004bd0:	0554e863          	bltu	s1,s5,80004c20 <kinit+0xc8>
    80004bd4:	0534f663          	bgeu	s1,s3,80004c20 <kinit+0xc8>
    80004bd8:	00001637          	lui	a2,0x1
    80004bdc:	00100593          	li	a1,1
    80004be0:	00048513          	mv	a0,s1
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	5e4080e7          	jalr	1508(ra) # 800051c8 <__memset>
    80004bec:	00093783          	ld	a5,0(s2)
    80004bf0:	00f4b023          	sd	a5,0(s1)
    80004bf4:	00993023          	sd	s1,0(s2)
    80004bf8:	fd4498e3          	bne	s1,s4,80004bc8 <kinit+0x70>
    80004bfc:	03813083          	ld	ra,56(sp)
    80004c00:	03013403          	ld	s0,48(sp)
    80004c04:	02813483          	ld	s1,40(sp)
    80004c08:	02013903          	ld	s2,32(sp)
    80004c0c:	01813983          	ld	s3,24(sp)
    80004c10:	01013a03          	ld	s4,16(sp)
    80004c14:	00813a83          	ld	s5,8(sp)
    80004c18:	04010113          	addi	sp,sp,64
    80004c1c:	00008067          	ret
    80004c20:	00001517          	auipc	a0,0x1
    80004c24:	72850513          	addi	a0,a0,1832 # 80006348 <digits+0x18>
    80004c28:	fffff097          	auipc	ra,0xfffff
    80004c2c:	4b4080e7          	jalr	1204(ra) # 800040dc <panic>

0000000080004c30 <freerange>:
    80004c30:	fc010113          	addi	sp,sp,-64
    80004c34:	000017b7          	lui	a5,0x1
    80004c38:	02913423          	sd	s1,40(sp)
    80004c3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004c40:	009504b3          	add	s1,a0,s1
    80004c44:	fffff537          	lui	a0,0xfffff
    80004c48:	02813823          	sd	s0,48(sp)
    80004c4c:	02113c23          	sd	ra,56(sp)
    80004c50:	03213023          	sd	s2,32(sp)
    80004c54:	01313c23          	sd	s3,24(sp)
    80004c58:	01413823          	sd	s4,16(sp)
    80004c5c:	01513423          	sd	s5,8(sp)
    80004c60:	01613023          	sd	s6,0(sp)
    80004c64:	04010413          	addi	s0,sp,64
    80004c68:	00a4f4b3          	and	s1,s1,a0
    80004c6c:	00f487b3          	add	a5,s1,a5
    80004c70:	06f5e463          	bltu	a1,a5,80004cd8 <freerange+0xa8>
    80004c74:	00004a97          	auipc	s5,0x4
    80004c78:	9cca8a93          	addi	s5,s5,-1588 # 80008640 <end>
    80004c7c:	0954e263          	bltu	s1,s5,80004d00 <freerange+0xd0>
    80004c80:	01100993          	li	s3,17
    80004c84:	01b99993          	slli	s3,s3,0x1b
    80004c88:	0734fc63          	bgeu	s1,s3,80004d00 <freerange+0xd0>
    80004c8c:	00058a13          	mv	s4,a1
    80004c90:	00002917          	auipc	s2,0x2
    80004c94:	6e090913          	addi	s2,s2,1760 # 80007370 <kmem>
    80004c98:	00002b37          	lui	s6,0x2
    80004c9c:	0140006f          	j	80004cb0 <freerange+0x80>
    80004ca0:	000017b7          	lui	a5,0x1
    80004ca4:	00f484b3          	add	s1,s1,a5
    80004ca8:	0554ec63          	bltu	s1,s5,80004d00 <freerange+0xd0>
    80004cac:	0534fa63          	bgeu	s1,s3,80004d00 <freerange+0xd0>
    80004cb0:	00001637          	lui	a2,0x1
    80004cb4:	00100593          	li	a1,1
    80004cb8:	00048513          	mv	a0,s1
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	50c080e7          	jalr	1292(ra) # 800051c8 <__memset>
    80004cc4:	00093703          	ld	a4,0(s2)
    80004cc8:	016487b3          	add	a5,s1,s6
    80004ccc:	00e4b023          	sd	a4,0(s1)
    80004cd0:	00993023          	sd	s1,0(s2)
    80004cd4:	fcfa76e3          	bgeu	s4,a5,80004ca0 <freerange+0x70>
    80004cd8:	03813083          	ld	ra,56(sp)
    80004cdc:	03013403          	ld	s0,48(sp)
    80004ce0:	02813483          	ld	s1,40(sp)
    80004ce4:	02013903          	ld	s2,32(sp)
    80004ce8:	01813983          	ld	s3,24(sp)
    80004cec:	01013a03          	ld	s4,16(sp)
    80004cf0:	00813a83          	ld	s5,8(sp)
    80004cf4:	00013b03          	ld	s6,0(sp)
    80004cf8:	04010113          	addi	sp,sp,64
    80004cfc:	00008067          	ret
    80004d00:	00001517          	auipc	a0,0x1
    80004d04:	64850513          	addi	a0,a0,1608 # 80006348 <digits+0x18>
    80004d08:	fffff097          	auipc	ra,0xfffff
    80004d0c:	3d4080e7          	jalr	980(ra) # 800040dc <panic>

0000000080004d10 <kfree>:
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00113c23          	sd	ra,24(sp)
    80004d1c:	00913423          	sd	s1,8(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	03451793          	slli	a5,a0,0x34
    80004d28:	04079c63          	bnez	a5,80004d80 <kfree+0x70>
    80004d2c:	00004797          	auipc	a5,0x4
    80004d30:	91478793          	addi	a5,a5,-1772 # 80008640 <end>
    80004d34:	00050493          	mv	s1,a0
    80004d38:	04f56463          	bltu	a0,a5,80004d80 <kfree+0x70>
    80004d3c:	01100793          	li	a5,17
    80004d40:	01b79793          	slli	a5,a5,0x1b
    80004d44:	02f57e63          	bgeu	a0,a5,80004d80 <kfree+0x70>
    80004d48:	00001637          	lui	a2,0x1
    80004d4c:	00100593          	li	a1,1
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	478080e7          	jalr	1144(ra) # 800051c8 <__memset>
    80004d58:	00002797          	auipc	a5,0x2
    80004d5c:	61878793          	addi	a5,a5,1560 # 80007370 <kmem>
    80004d60:	0007b703          	ld	a4,0(a5)
    80004d64:	01813083          	ld	ra,24(sp)
    80004d68:	01013403          	ld	s0,16(sp)
    80004d6c:	00e4b023          	sd	a4,0(s1)
    80004d70:	0097b023          	sd	s1,0(a5)
    80004d74:	00813483          	ld	s1,8(sp)
    80004d78:	02010113          	addi	sp,sp,32
    80004d7c:	00008067          	ret
    80004d80:	00001517          	auipc	a0,0x1
    80004d84:	5c850513          	addi	a0,a0,1480 # 80006348 <digits+0x18>
    80004d88:	fffff097          	auipc	ra,0xfffff
    80004d8c:	354080e7          	jalr	852(ra) # 800040dc <panic>

0000000080004d90 <kalloc>:
    80004d90:	fe010113          	addi	sp,sp,-32
    80004d94:	00813823          	sd	s0,16(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	00113c23          	sd	ra,24(sp)
    80004da0:	02010413          	addi	s0,sp,32
    80004da4:	00002797          	auipc	a5,0x2
    80004da8:	5cc78793          	addi	a5,a5,1484 # 80007370 <kmem>
    80004dac:	0007b483          	ld	s1,0(a5)
    80004db0:	02048063          	beqz	s1,80004dd0 <kalloc+0x40>
    80004db4:	0004b703          	ld	a4,0(s1)
    80004db8:	00001637          	lui	a2,0x1
    80004dbc:	00500593          	li	a1,5
    80004dc0:	00048513          	mv	a0,s1
    80004dc4:	00e7b023          	sd	a4,0(a5)
    80004dc8:	00000097          	auipc	ra,0x0
    80004dcc:	400080e7          	jalr	1024(ra) # 800051c8 <__memset>
    80004dd0:	01813083          	ld	ra,24(sp)
    80004dd4:	01013403          	ld	s0,16(sp)
    80004dd8:	00048513          	mv	a0,s1
    80004ddc:	00813483          	ld	s1,8(sp)
    80004de0:	02010113          	addi	sp,sp,32
    80004de4:	00008067          	ret

0000000080004de8 <initlock>:
    80004de8:	ff010113          	addi	sp,sp,-16
    80004dec:	00813423          	sd	s0,8(sp)
    80004df0:	01010413          	addi	s0,sp,16
    80004df4:	00813403          	ld	s0,8(sp)
    80004df8:	00b53423          	sd	a1,8(a0)
    80004dfc:	00052023          	sw	zero,0(a0)
    80004e00:	00053823          	sd	zero,16(a0)
    80004e04:	01010113          	addi	sp,sp,16
    80004e08:	00008067          	ret

0000000080004e0c <acquire>:
    80004e0c:	fe010113          	addi	sp,sp,-32
    80004e10:	00813823          	sd	s0,16(sp)
    80004e14:	00913423          	sd	s1,8(sp)
    80004e18:	00113c23          	sd	ra,24(sp)
    80004e1c:	01213023          	sd	s2,0(sp)
    80004e20:	02010413          	addi	s0,sp,32
    80004e24:	00050493          	mv	s1,a0
    80004e28:	10002973          	csrr	s2,sstatus
    80004e2c:	100027f3          	csrr	a5,sstatus
    80004e30:	ffd7f793          	andi	a5,a5,-3
    80004e34:	10079073          	csrw	sstatus,a5
    80004e38:	fffff097          	auipc	ra,0xfffff
    80004e3c:	8e8080e7          	jalr	-1816(ra) # 80003720 <mycpu>
    80004e40:	07852783          	lw	a5,120(a0)
    80004e44:	06078e63          	beqz	a5,80004ec0 <acquire+0xb4>
    80004e48:	fffff097          	auipc	ra,0xfffff
    80004e4c:	8d8080e7          	jalr	-1832(ra) # 80003720 <mycpu>
    80004e50:	07852783          	lw	a5,120(a0)
    80004e54:	0004a703          	lw	a4,0(s1)
    80004e58:	0017879b          	addiw	a5,a5,1
    80004e5c:	06f52c23          	sw	a5,120(a0)
    80004e60:	04071063          	bnez	a4,80004ea0 <acquire+0x94>
    80004e64:	00100713          	li	a4,1
    80004e68:	00070793          	mv	a5,a4
    80004e6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004e70:	0007879b          	sext.w	a5,a5
    80004e74:	fe079ae3          	bnez	a5,80004e68 <acquire+0x5c>
    80004e78:	0ff0000f          	fence
    80004e7c:	fffff097          	auipc	ra,0xfffff
    80004e80:	8a4080e7          	jalr	-1884(ra) # 80003720 <mycpu>
    80004e84:	01813083          	ld	ra,24(sp)
    80004e88:	01013403          	ld	s0,16(sp)
    80004e8c:	00a4b823          	sd	a0,16(s1)
    80004e90:	00013903          	ld	s2,0(sp)
    80004e94:	00813483          	ld	s1,8(sp)
    80004e98:	02010113          	addi	sp,sp,32
    80004e9c:	00008067          	ret
    80004ea0:	0104b903          	ld	s2,16(s1)
    80004ea4:	fffff097          	auipc	ra,0xfffff
    80004ea8:	87c080e7          	jalr	-1924(ra) # 80003720 <mycpu>
    80004eac:	faa91ce3          	bne	s2,a0,80004e64 <acquire+0x58>
    80004eb0:	00001517          	auipc	a0,0x1
    80004eb4:	4a050513          	addi	a0,a0,1184 # 80006350 <digits+0x20>
    80004eb8:	fffff097          	auipc	ra,0xfffff
    80004ebc:	224080e7          	jalr	548(ra) # 800040dc <panic>
    80004ec0:	00195913          	srli	s2,s2,0x1
    80004ec4:	fffff097          	auipc	ra,0xfffff
    80004ec8:	85c080e7          	jalr	-1956(ra) # 80003720 <mycpu>
    80004ecc:	00197913          	andi	s2,s2,1
    80004ed0:	07252e23          	sw	s2,124(a0)
    80004ed4:	f75ff06f          	j	80004e48 <acquire+0x3c>

0000000080004ed8 <release>:
    80004ed8:	fe010113          	addi	sp,sp,-32
    80004edc:	00813823          	sd	s0,16(sp)
    80004ee0:	00113c23          	sd	ra,24(sp)
    80004ee4:	00913423          	sd	s1,8(sp)
    80004ee8:	01213023          	sd	s2,0(sp)
    80004eec:	02010413          	addi	s0,sp,32
    80004ef0:	00052783          	lw	a5,0(a0)
    80004ef4:	00079a63          	bnez	a5,80004f08 <release+0x30>
    80004ef8:	00001517          	auipc	a0,0x1
    80004efc:	46050513          	addi	a0,a0,1120 # 80006358 <digits+0x28>
    80004f00:	fffff097          	auipc	ra,0xfffff
    80004f04:	1dc080e7          	jalr	476(ra) # 800040dc <panic>
    80004f08:	01053903          	ld	s2,16(a0)
    80004f0c:	00050493          	mv	s1,a0
    80004f10:	fffff097          	auipc	ra,0xfffff
    80004f14:	810080e7          	jalr	-2032(ra) # 80003720 <mycpu>
    80004f18:	fea910e3          	bne	s2,a0,80004ef8 <release+0x20>
    80004f1c:	0004b823          	sd	zero,16(s1)
    80004f20:	0ff0000f          	fence
    80004f24:	0f50000f          	fence	iorw,ow
    80004f28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	7f4080e7          	jalr	2036(ra) # 80003720 <mycpu>
    80004f34:	100027f3          	csrr	a5,sstatus
    80004f38:	0027f793          	andi	a5,a5,2
    80004f3c:	04079a63          	bnez	a5,80004f90 <release+0xb8>
    80004f40:	07852783          	lw	a5,120(a0)
    80004f44:	02f05e63          	blez	a5,80004f80 <release+0xa8>
    80004f48:	fff7871b          	addiw	a4,a5,-1
    80004f4c:	06e52c23          	sw	a4,120(a0)
    80004f50:	00071c63          	bnez	a4,80004f68 <release+0x90>
    80004f54:	07c52783          	lw	a5,124(a0)
    80004f58:	00078863          	beqz	a5,80004f68 <release+0x90>
    80004f5c:	100027f3          	csrr	a5,sstatus
    80004f60:	0027e793          	ori	a5,a5,2
    80004f64:	10079073          	csrw	sstatus,a5
    80004f68:	01813083          	ld	ra,24(sp)
    80004f6c:	01013403          	ld	s0,16(sp)
    80004f70:	00813483          	ld	s1,8(sp)
    80004f74:	00013903          	ld	s2,0(sp)
    80004f78:	02010113          	addi	sp,sp,32
    80004f7c:	00008067          	ret
    80004f80:	00001517          	auipc	a0,0x1
    80004f84:	3f850513          	addi	a0,a0,1016 # 80006378 <digits+0x48>
    80004f88:	fffff097          	auipc	ra,0xfffff
    80004f8c:	154080e7          	jalr	340(ra) # 800040dc <panic>
    80004f90:	00001517          	auipc	a0,0x1
    80004f94:	3d050513          	addi	a0,a0,976 # 80006360 <digits+0x30>
    80004f98:	fffff097          	auipc	ra,0xfffff
    80004f9c:	144080e7          	jalr	324(ra) # 800040dc <panic>

0000000080004fa0 <holding>:
    80004fa0:	00052783          	lw	a5,0(a0)
    80004fa4:	00079663          	bnez	a5,80004fb0 <holding+0x10>
    80004fa8:	00000513          	li	a0,0
    80004fac:	00008067          	ret
    80004fb0:	fe010113          	addi	sp,sp,-32
    80004fb4:	00813823          	sd	s0,16(sp)
    80004fb8:	00913423          	sd	s1,8(sp)
    80004fbc:	00113c23          	sd	ra,24(sp)
    80004fc0:	02010413          	addi	s0,sp,32
    80004fc4:	01053483          	ld	s1,16(a0)
    80004fc8:	ffffe097          	auipc	ra,0xffffe
    80004fcc:	758080e7          	jalr	1880(ra) # 80003720 <mycpu>
    80004fd0:	01813083          	ld	ra,24(sp)
    80004fd4:	01013403          	ld	s0,16(sp)
    80004fd8:	40a48533          	sub	a0,s1,a0
    80004fdc:	00153513          	seqz	a0,a0
    80004fe0:	00813483          	ld	s1,8(sp)
    80004fe4:	02010113          	addi	sp,sp,32
    80004fe8:	00008067          	ret

0000000080004fec <push_off>:
    80004fec:	fe010113          	addi	sp,sp,-32
    80004ff0:	00813823          	sd	s0,16(sp)
    80004ff4:	00113c23          	sd	ra,24(sp)
    80004ff8:	00913423          	sd	s1,8(sp)
    80004ffc:	02010413          	addi	s0,sp,32
    80005000:	100024f3          	csrr	s1,sstatus
    80005004:	100027f3          	csrr	a5,sstatus
    80005008:	ffd7f793          	andi	a5,a5,-3
    8000500c:	10079073          	csrw	sstatus,a5
    80005010:	ffffe097          	auipc	ra,0xffffe
    80005014:	710080e7          	jalr	1808(ra) # 80003720 <mycpu>
    80005018:	07852783          	lw	a5,120(a0)
    8000501c:	02078663          	beqz	a5,80005048 <push_off+0x5c>
    80005020:	ffffe097          	auipc	ra,0xffffe
    80005024:	700080e7          	jalr	1792(ra) # 80003720 <mycpu>
    80005028:	07852783          	lw	a5,120(a0)
    8000502c:	01813083          	ld	ra,24(sp)
    80005030:	01013403          	ld	s0,16(sp)
    80005034:	0017879b          	addiw	a5,a5,1
    80005038:	06f52c23          	sw	a5,120(a0)
    8000503c:	00813483          	ld	s1,8(sp)
    80005040:	02010113          	addi	sp,sp,32
    80005044:	00008067          	ret
    80005048:	0014d493          	srli	s1,s1,0x1
    8000504c:	ffffe097          	auipc	ra,0xffffe
    80005050:	6d4080e7          	jalr	1748(ra) # 80003720 <mycpu>
    80005054:	0014f493          	andi	s1,s1,1
    80005058:	06952e23          	sw	s1,124(a0)
    8000505c:	fc5ff06f          	j	80005020 <push_off+0x34>

0000000080005060 <pop_off>:
    80005060:	ff010113          	addi	sp,sp,-16
    80005064:	00813023          	sd	s0,0(sp)
    80005068:	00113423          	sd	ra,8(sp)
    8000506c:	01010413          	addi	s0,sp,16
    80005070:	ffffe097          	auipc	ra,0xffffe
    80005074:	6b0080e7          	jalr	1712(ra) # 80003720 <mycpu>
    80005078:	100027f3          	csrr	a5,sstatus
    8000507c:	0027f793          	andi	a5,a5,2
    80005080:	04079663          	bnez	a5,800050cc <pop_off+0x6c>
    80005084:	07852783          	lw	a5,120(a0)
    80005088:	02f05a63          	blez	a5,800050bc <pop_off+0x5c>
    8000508c:	fff7871b          	addiw	a4,a5,-1
    80005090:	06e52c23          	sw	a4,120(a0)
    80005094:	00071c63          	bnez	a4,800050ac <pop_off+0x4c>
    80005098:	07c52783          	lw	a5,124(a0)
    8000509c:	00078863          	beqz	a5,800050ac <pop_off+0x4c>
    800050a0:	100027f3          	csrr	a5,sstatus
    800050a4:	0027e793          	ori	a5,a5,2
    800050a8:	10079073          	csrw	sstatus,a5
    800050ac:	00813083          	ld	ra,8(sp)
    800050b0:	00013403          	ld	s0,0(sp)
    800050b4:	01010113          	addi	sp,sp,16
    800050b8:	00008067          	ret
    800050bc:	00001517          	auipc	a0,0x1
    800050c0:	2bc50513          	addi	a0,a0,700 # 80006378 <digits+0x48>
    800050c4:	fffff097          	auipc	ra,0xfffff
    800050c8:	018080e7          	jalr	24(ra) # 800040dc <panic>
    800050cc:	00001517          	auipc	a0,0x1
    800050d0:	29450513          	addi	a0,a0,660 # 80006360 <digits+0x30>
    800050d4:	fffff097          	auipc	ra,0xfffff
    800050d8:	008080e7          	jalr	8(ra) # 800040dc <panic>

00000000800050dc <push_on>:
    800050dc:	fe010113          	addi	sp,sp,-32
    800050e0:	00813823          	sd	s0,16(sp)
    800050e4:	00113c23          	sd	ra,24(sp)
    800050e8:	00913423          	sd	s1,8(sp)
    800050ec:	02010413          	addi	s0,sp,32
    800050f0:	100024f3          	csrr	s1,sstatus
    800050f4:	100027f3          	csrr	a5,sstatus
    800050f8:	0027e793          	ori	a5,a5,2
    800050fc:	10079073          	csrw	sstatus,a5
    80005100:	ffffe097          	auipc	ra,0xffffe
    80005104:	620080e7          	jalr	1568(ra) # 80003720 <mycpu>
    80005108:	07852783          	lw	a5,120(a0)
    8000510c:	02078663          	beqz	a5,80005138 <push_on+0x5c>
    80005110:	ffffe097          	auipc	ra,0xffffe
    80005114:	610080e7          	jalr	1552(ra) # 80003720 <mycpu>
    80005118:	07852783          	lw	a5,120(a0)
    8000511c:	01813083          	ld	ra,24(sp)
    80005120:	01013403          	ld	s0,16(sp)
    80005124:	0017879b          	addiw	a5,a5,1
    80005128:	06f52c23          	sw	a5,120(a0)
    8000512c:	00813483          	ld	s1,8(sp)
    80005130:	02010113          	addi	sp,sp,32
    80005134:	00008067          	ret
    80005138:	0014d493          	srli	s1,s1,0x1
    8000513c:	ffffe097          	auipc	ra,0xffffe
    80005140:	5e4080e7          	jalr	1508(ra) # 80003720 <mycpu>
    80005144:	0014f493          	andi	s1,s1,1
    80005148:	06952e23          	sw	s1,124(a0)
    8000514c:	fc5ff06f          	j	80005110 <push_on+0x34>

0000000080005150 <pop_on>:
    80005150:	ff010113          	addi	sp,sp,-16
    80005154:	00813023          	sd	s0,0(sp)
    80005158:	00113423          	sd	ra,8(sp)
    8000515c:	01010413          	addi	s0,sp,16
    80005160:	ffffe097          	auipc	ra,0xffffe
    80005164:	5c0080e7          	jalr	1472(ra) # 80003720 <mycpu>
    80005168:	100027f3          	csrr	a5,sstatus
    8000516c:	0027f793          	andi	a5,a5,2
    80005170:	04078463          	beqz	a5,800051b8 <pop_on+0x68>
    80005174:	07852783          	lw	a5,120(a0)
    80005178:	02f05863          	blez	a5,800051a8 <pop_on+0x58>
    8000517c:	fff7879b          	addiw	a5,a5,-1
    80005180:	06f52c23          	sw	a5,120(a0)
    80005184:	07853783          	ld	a5,120(a0)
    80005188:	00079863          	bnez	a5,80005198 <pop_on+0x48>
    8000518c:	100027f3          	csrr	a5,sstatus
    80005190:	ffd7f793          	andi	a5,a5,-3
    80005194:	10079073          	csrw	sstatus,a5
    80005198:	00813083          	ld	ra,8(sp)
    8000519c:	00013403          	ld	s0,0(sp)
    800051a0:	01010113          	addi	sp,sp,16
    800051a4:	00008067          	ret
    800051a8:	00001517          	auipc	a0,0x1
    800051ac:	1f850513          	addi	a0,a0,504 # 800063a0 <digits+0x70>
    800051b0:	fffff097          	auipc	ra,0xfffff
    800051b4:	f2c080e7          	jalr	-212(ra) # 800040dc <panic>
    800051b8:	00001517          	auipc	a0,0x1
    800051bc:	1c850513          	addi	a0,a0,456 # 80006380 <digits+0x50>
    800051c0:	fffff097          	auipc	ra,0xfffff
    800051c4:	f1c080e7          	jalr	-228(ra) # 800040dc <panic>

00000000800051c8 <__memset>:
    800051c8:	ff010113          	addi	sp,sp,-16
    800051cc:	00813423          	sd	s0,8(sp)
    800051d0:	01010413          	addi	s0,sp,16
    800051d4:	1a060e63          	beqz	a2,80005390 <__memset+0x1c8>
    800051d8:	40a007b3          	neg	a5,a0
    800051dc:	0077f793          	andi	a5,a5,7
    800051e0:	00778693          	addi	a3,a5,7
    800051e4:	00b00813          	li	a6,11
    800051e8:	0ff5f593          	andi	a1,a1,255
    800051ec:	fff6071b          	addiw	a4,a2,-1
    800051f0:	1b06e663          	bltu	a3,a6,8000539c <__memset+0x1d4>
    800051f4:	1cd76463          	bltu	a4,a3,800053bc <__memset+0x1f4>
    800051f8:	1a078e63          	beqz	a5,800053b4 <__memset+0x1ec>
    800051fc:	00b50023          	sb	a1,0(a0)
    80005200:	00100713          	li	a4,1
    80005204:	1ae78463          	beq	a5,a4,800053ac <__memset+0x1e4>
    80005208:	00b500a3          	sb	a1,1(a0)
    8000520c:	00200713          	li	a4,2
    80005210:	1ae78a63          	beq	a5,a4,800053c4 <__memset+0x1fc>
    80005214:	00b50123          	sb	a1,2(a0)
    80005218:	00300713          	li	a4,3
    8000521c:	18e78463          	beq	a5,a4,800053a4 <__memset+0x1dc>
    80005220:	00b501a3          	sb	a1,3(a0)
    80005224:	00400713          	li	a4,4
    80005228:	1ae78263          	beq	a5,a4,800053cc <__memset+0x204>
    8000522c:	00b50223          	sb	a1,4(a0)
    80005230:	00500713          	li	a4,5
    80005234:	1ae78063          	beq	a5,a4,800053d4 <__memset+0x20c>
    80005238:	00b502a3          	sb	a1,5(a0)
    8000523c:	00700713          	li	a4,7
    80005240:	18e79e63          	bne	a5,a4,800053dc <__memset+0x214>
    80005244:	00b50323          	sb	a1,6(a0)
    80005248:	00700e93          	li	t4,7
    8000524c:	00859713          	slli	a4,a1,0x8
    80005250:	00e5e733          	or	a4,a1,a4
    80005254:	01059e13          	slli	t3,a1,0x10
    80005258:	01c76e33          	or	t3,a4,t3
    8000525c:	01859313          	slli	t1,a1,0x18
    80005260:	006e6333          	or	t1,t3,t1
    80005264:	02059893          	slli	a7,a1,0x20
    80005268:	40f60e3b          	subw	t3,a2,a5
    8000526c:	011368b3          	or	a7,t1,a7
    80005270:	02859813          	slli	a6,a1,0x28
    80005274:	0108e833          	or	a6,a7,a6
    80005278:	03059693          	slli	a3,a1,0x30
    8000527c:	003e589b          	srliw	a7,t3,0x3
    80005280:	00d866b3          	or	a3,a6,a3
    80005284:	03859713          	slli	a4,a1,0x38
    80005288:	00389813          	slli	a6,a7,0x3
    8000528c:	00f507b3          	add	a5,a0,a5
    80005290:	00e6e733          	or	a4,a3,a4
    80005294:	000e089b          	sext.w	a7,t3
    80005298:	00f806b3          	add	a3,a6,a5
    8000529c:	00e7b023          	sd	a4,0(a5)
    800052a0:	00878793          	addi	a5,a5,8
    800052a4:	fed79ce3          	bne	a5,a3,8000529c <__memset+0xd4>
    800052a8:	ff8e7793          	andi	a5,t3,-8
    800052ac:	0007871b          	sext.w	a4,a5
    800052b0:	01d787bb          	addw	a5,a5,t4
    800052b4:	0ce88e63          	beq	a7,a4,80005390 <__memset+0x1c8>
    800052b8:	00f50733          	add	a4,a0,a5
    800052bc:	00b70023          	sb	a1,0(a4)
    800052c0:	0017871b          	addiw	a4,a5,1
    800052c4:	0cc77663          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    800052c8:	00e50733          	add	a4,a0,a4
    800052cc:	00b70023          	sb	a1,0(a4)
    800052d0:	0027871b          	addiw	a4,a5,2
    800052d4:	0ac77e63          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    800052d8:	00e50733          	add	a4,a0,a4
    800052dc:	00b70023          	sb	a1,0(a4)
    800052e0:	0037871b          	addiw	a4,a5,3
    800052e4:	0ac77663          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    800052e8:	00e50733          	add	a4,a0,a4
    800052ec:	00b70023          	sb	a1,0(a4)
    800052f0:	0047871b          	addiw	a4,a5,4
    800052f4:	08c77e63          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    800052f8:	00e50733          	add	a4,a0,a4
    800052fc:	00b70023          	sb	a1,0(a4)
    80005300:	0057871b          	addiw	a4,a5,5
    80005304:	08c77663          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    80005308:	00e50733          	add	a4,a0,a4
    8000530c:	00b70023          	sb	a1,0(a4)
    80005310:	0067871b          	addiw	a4,a5,6
    80005314:	06c77e63          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    80005318:	00e50733          	add	a4,a0,a4
    8000531c:	00b70023          	sb	a1,0(a4)
    80005320:	0077871b          	addiw	a4,a5,7
    80005324:	06c77663          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    80005328:	00e50733          	add	a4,a0,a4
    8000532c:	00b70023          	sb	a1,0(a4)
    80005330:	0087871b          	addiw	a4,a5,8
    80005334:	04c77e63          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    80005338:	00e50733          	add	a4,a0,a4
    8000533c:	00b70023          	sb	a1,0(a4)
    80005340:	0097871b          	addiw	a4,a5,9
    80005344:	04c77663          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    80005348:	00e50733          	add	a4,a0,a4
    8000534c:	00b70023          	sb	a1,0(a4)
    80005350:	00a7871b          	addiw	a4,a5,10
    80005354:	02c77e63          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    80005358:	00e50733          	add	a4,a0,a4
    8000535c:	00b70023          	sb	a1,0(a4)
    80005360:	00b7871b          	addiw	a4,a5,11
    80005364:	02c77663          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    80005368:	00e50733          	add	a4,a0,a4
    8000536c:	00b70023          	sb	a1,0(a4)
    80005370:	00c7871b          	addiw	a4,a5,12
    80005374:	00c77e63          	bgeu	a4,a2,80005390 <__memset+0x1c8>
    80005378:	00e50733          	add	a4,a0,a4
    8000537c:	00b70023          	sb	a1,0(a4)
    80005380:	00d7879b          	addiw	a5,a5,13
    80005384:	00c7f663          	bgeu	a5,a2,80005390 <__memset+0x1c8>
    80005388:	00f507b3          	add	a5,a0,a5
    8000538c:	00b78023          	sb	a1,0(a5)
    80005390:	00813403          	ld	s0,8(sp)
    80005394:	01010113          	addi	sp,sp,16
    80005398:	00008067          	ret
    8000539c:	00b00693          	li	a3,11
    800053a0:	e55ff06f          	j	800051f4 <__memset+0x2c>
    800053a4:	00300e93          	li	t4,3
    800053a8:	ea5ff06f          	j	8000524c <__memset+0x84>
    800053ac:	00100e93          	li	t4,1
    800053b0:	e9dff06f          	j	8000524c <__memset+0x84>
    800053b4:	00000e93          	li	t4,0
    800053b8:	e95ff06f          	j	8000524c <__memset+0x84>
    800053bc:	00000793          	li	a5,0
    800053c0:	ef9ff06f          	j	800052b8 <__memset+0xf0>
    800053c4:	00200e93          	li	t4,2
    800053c8:	e85ff06f          	j	8000524c <__memset+0x84>
    800053cc:	00400e93          	li	t4,4
    800053d0:	e7dff06f          	j	8000524c <__memset+0x84>
    800053d4:	00500e93          	li	t4,5
    800053d8:	e75ff06f          	j	8000524c <__memset+0x84>
    800053dc:	00600e93          	li	t4,6
    800053e0:	e6dff06f          	j	8000524c <__memset+0x84>

00000000800053e4 <__memmove>:
    800053e4:	ff010113          	addi	sp,sp,-16
    800053e8:	00813423          	sd	s0,8(sp)
    800053ec:	01010413          	addi	s0,sp,16
    800053f0:	0e060863          	beqz	a2,800054e0 <__memmove+0xfc>
    800053f4:	fff6069b          	addiw	a3,a2,-1
    800053f8:	0006881b          	sext.w	a6,a3
    800053fc:	0ea5e863          	bltu	a1,a0,800054ec <__memmove+0x108>
    80005400:	00758713          	addi	a4,a1,7
    80005404:	00a5e7b3          	or	a5,a1,a0
    80005408:	40a70733          	sub	a4,a4,a0
    8000540c:	0077f793          	andi	a5,a5,7
    80005410:	00f73713          	sltiu	a4,a4,15
    80005414:	00174713          	xori	a4,a4,1
    80005418:	0017b793          	seqz	a5,a5
    8000541c:	00e7f7b3          	and	a5,a5,a4
    80005420:	10078863          	beqz	a5,80005530 <__memmove+0x14c>
    80005424:	00900793          	li	a5,9
    80005428:	1107f463          	bgeu	a5,a6,80005530 <__memmove+0x14c>
    8000542c:	0036581b          	srliw	a6,a2,0x3
    80005430:	fff8081b          	addiw	a6,a6,-1
    80005434:	02081813          	slli	a6,a6,0x20
    80005438:	01d85893          	srli	a7,a6,0x1d
    8000543c:	00858813          	addi	a6,a1,8
    80005440:	00058793          	mv	a5,a1
    80005444:	00050713          	mv	a4,a0
    80005448:	01088833          	add	a6,a7,a6
    8000544c:	0007b883          	ld	a7,0(a5)
    80005450:	00878793          	addi	a5,a5,8
    80005454:	00870713          	addi	a4,a4,8
    80005458:	ff173c23          	sd	a7,-8(a4)
    8000545c:	ff0798e3          	bne	a5,a6,8000544c <__memmove+0x68>
    80005460:	ff867713          	andi	a4,a2,-8
    80005464:	02071793          	slli	a5,a4,0x20
    80005468:	0207d793          	srli	a5,a5,0x20
    8000546c:	00f585b3          	add	a1,a1,a5
    80005470:	40e686bb          	subw	a3,a3,a4
    80005474:	00f507b3          	add	a5,a0,a5
    80005478:	06e60463          	beq	a2,a4,800054e0 <__memmove+0xfc>
    8000547c:	0005c703          	lbu	a4,0(a1)
    80005480:	00e78023          	sb	a4,0(a5)
    80005484:	04068e63          	beqz	a3,800054e0 <__memmove+0xfc>
    80005488:	0015c603          	lbu	a2,1(a1)
    8000548c:	00100713          	li	a4,1
    80005490:	00c780a3          	sb	a2,1(a5)
    80005494:	04e68663          	beq	a3,a4,800054e0 <__memmove+0xfc>
    80005498:	0025c603          	lbu	a2,2(a1)
    8000549c:	00200713          	li	a4,2
    800054a0:	00c78123          	sb	a2,2(a5)
    800054a4:	02e68e63          	beq	a3,a4,800054e0 <__memmove+0xfc>
    800054a8:	0035c603          	lbu	a2,3(a1)
    800054ac:	00300713          	li	a4,3
    800054b0:	00c781a3          	sb	a2,3(a5)
    800054b4:	02e68663          	beq	a3,a4,800054e0 <__memmove+0xfc>
    800054b8:	0045c603          	lbu	a2,4(a1)
    800054bc:	00400713          	li	a4,4
    800054c0:	00c78223          	sb	a2,4(a5)
    800054c4:	00e68e63          	beq	a3,a4,800054e0 <__memmove+0xfc>
    800054c8:	0055c603          	lbu	a2,5(a1)
    800054cc:	00500713          	li	a4,5
    800054d0:	00c782a3          	sb	a2,5(a5)
    800054d4:	00e68663          	beq	a3,a4,800054e0 <__memmove+0xfc>
    800054d8:	0065c703          	lbu	a4,6(a1)
    800054dc:	00e78323          	sb	a4,6(a5)
    800054e0:	00813403          	ld	s0,8(sp)
    800054e4:	01010113          	addi	sp,sp,16
    800054e8:	00008067          	ret
    800054ec:	02061713          	slli	a4,a2,0x20
    800054f0:	02075713          	srli	a4,a4,0x20
    800054f4:	00e587b3          	add	a5,a1,a4
    800054f8:	f0f574e3          	bgeu	a0,a5,80005400 <__memmove+0x1c>
    800054fc:	02069613          	slli	a2,a3,0x20
    80005500:	02065613          	srli	a2,a2,0x20
    80005504:	fff64613          	not	a2,a2
    80005508:	00e50733          	add	a4,a0,a4
    8000550c:	00c78633          	add	a2,a5,a2
    80005510:	fff7c683          	lbu	a3,-1(a5)
    80005514:	fff78793          	addi	a5,a5,-1
    80005518:	fff70713          	addi	a4,a4,-1
    8000551c:	00d70023          	sb	a3,0(a4)
    80005520:	fec798e3          	bne	a5,a2,80005510 <__memmove+0x12c>
    80005524:	00813403          	ld	s0,8(sp)
    80005528:	01010113          	addi	sp,sp,16
    8000552c:	00008067          	ret
    80005530:	02069713          	slli	a4,a3,0x20
    80005534:	02075713          	srli	a4,a4,0x20
    80005538:	00170713          	addi	a4,a4,1
    8000553c:	00e50733          	add	a4,a0,a4
    80005540:	00050793          	mv	a5,a0
    80005544:	0005c683          	lbu	a3,0(a1)
    80005548:	00178793          	addi	a5,a5,1
    8000554c:	00158593          	addi	a1,a1,1
    80005550:	fed78fa3          	sb	a3,-1(a5)
    80005554:	fee798e3          	bne	a5,a4,80005544 <__memmove+0x160>
    80005558:	f89ff06f          	j	800054e0 <__memmove+0xfc>

000000008000555c <__putc>:
    8000555c:	fe010113          	addi	sp,sp,-32
    80005560:	00813823          	sd	s0,16(sp)
    80005564:	00113c23          	sd	ra,24(sp)
    80005568:	02010413          	addi	s0,sp,32
    8000556c:	00050793          	mv	a5,a0
    80005570:	fef40593          	addi	a1,s0,-17
    80005574:	00100613          	li	a2,1
    80005578:	00000513          	li	a0,0
    8000557c:	fef407a3          	sb	a5,-17(s0)
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	b3c080e7          	jalr	-1220(ra) # 800040bc <console_write>
    80005588:	01813083          	ld	ra,24(sp)
    8000558c:	01013403          	ld	s0,16(sp)
    80005590:	02010113          	addi	sp,sp,32
    80005594:	00008067          	ret

0000000080005598 <__getc>:
    80005598:	fe010113          	addi	sp,sp,-32
    8000559c:	00813823          	sd	s0,16(sp)
    800055a0:	00113c23          	sd	ra,24(sp)
    800055a4:	02010413          	addi	s0,sp,32
    800055a8:	fe840593          	addi	a1,s0,-24
    800055ac:	00100613          	li	a2,1
    800055b0:	00000513          	li	a0,0
    800055b4:	fffff097          	auipc	ra,0xfffff
    800055b8:	ae8080e7          	jalr	-1304(ra) # 8000409c <console_read>
    800055bc:	fe844503          	lbu	a0,-24(s0)
    800055c0:	01813083          	ld	ra,24(sp)
    800055c4:	01013403          	ld	s0,16(sp)
    800055c8:	02010113          	addi	sp,sp,32
    800055cc:	00008067          	ret

00000000800055d0 <console_handler>:
    800055d0:	fe010113          	addi	sp,sp,-32
    800055d4:	00813823          	sd	s0,16(sp)
    800055d8:	00113c23          	sd	ra,24(sp)
    800055dc:	00913423          	sd	s1,8(sp)
    800055e0:	02010413          	addi	s0,sp,32
    800055e4:	14202773          	csrr	a4,scause
    800055e8:	100027f3          	csrr	a5,sstatus
    800055ec:	0027f793          	andi	a5,a5,2
    800055f0:	06079e63          	bnez	a5,8000566c <console_handler+0x9c>
    800055f4:	00074c63          	bltz	a4,8000560c <console_handler+0x3c>
    800055f8:	01813083          	ld	ra,24(sp)
    800055fc:	01013403          	ld	s0,16(sp)
    80005600:	00813483          	ld	s1,8(sp)
    80005604:	02010113          	addi	sp,sp,32
    80005608:	00008067          	ret
    8000560c:	0ff77713          	andi	a4,a4,255
    80005610:	00900793          	li	a5,9
    80005614:	fef712e3          	bne	a4,a5,800055f8 <console_handler+0x28>
    80005618:	ffffe097          	auipc	ra,0xffffe
    8000561c:	6dc080e7          	jalr	1756(ra) # 80003cf4 <plic_claim>
    80005620:	00a00793          	li	a5,10
    80005624:	00050493          	mv	s1,a0
    80005628:	02f50c63          	beq	a0,a5,80005660 <console_handler+0x90>
    8000562c:	fc0506e3          	beqz	a0,800055f8 <console_handler+0x28>
    80005630:	00050593          	mv	a1,a0
    80005634:	00001517          	auipc	a0,0x1
    80005638:	c7450513          	addi	a0,a0,-908 # 800062a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000563c:	fffff097          	auipc	ra,0xfffff
    80005640:	afc080e7          	jalr	-1284(ra) # 80004138 <__printf>
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	01813083          	ld	ra,24(sp)
    8000564c:	00048513          	mv	a0,s1
    80005650:	00813483          	ld	s1,8(sp)
    80005654:	02010113          	addi	sp,sp,32
    80005658:	ffffe317          	auipc	t1,0xffffe
    8000565c:	6d430067          	jr	1748(t1) # 80003d2c <plic_complete>
    80005660:	fffff097          	auipc	ra,0xfffff
    80005664:	3e0080e7          	jalr	992(ra) # 80004a40 <uartintr>
    80005668:	fddff06f          	j	80005644 <console_handler+0x74>
    8000566c:	00001517          	auipc	a0,0x1
    80005670:	d3c50513          	addi	a0,a0,-708 # 800063a8 <digits+0x78>
    80005674:	fffff097          	auipc	ra,0xfffff
    80005678:	a68080e7          	jalr	-1432(ra) # 800040dc <panic>
	...
