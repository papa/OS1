
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	f6813103          	ld	sp,-152(sp) # 80005f68 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	491020ef          	jal	ra,80002cac <start>

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
    80001080:	498010ef          	jal	ra,80002518 <_ZN5Riscv20handleSupervisorTrapEv>

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

000000008000121c <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
void* mem_alloc(size_t size)
{
    8000121c:	ff010113          	addi	sp,sp,-16
    80001220:	00813423          	sd	s0,8(sp)
    80001224:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001228:	03f50513          	addi	a0,a0,63
    8000122c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80001230:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001234:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001238:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000123c:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80001240:	00813403          	ld	s0,8(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret

000000008000124c <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
int mem_free(void* p)
{
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00813423          	sd	s0,8(sp)
    80001254:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001258:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000125c:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80001260:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001264:	00050513          	mv	a0,a0

    return result;
}
    80001268:	0005051b          	sext.w	a0,a0
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <thread_create>:

#ifdef __cplusplus
extern "C"
#endif
int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80001278:	fd010113          	addi	sp,sp,-48
    8000127c:	02113423          	sd	ra,40(sp)
    80001280:	02813023          	sd	s0,32(sp)
    80001284:	00913c23          	sd	s1,24(sp)
    80001288:	01213823          	sd	s2,16(sp)
    8000128c:	01313423          	sd	s3,8(sp)
    80001290:	03010413          	addi	s0,sp,48
    80001294:	00050493          	mv	s1,a0
    80001298:	00058913          	mv	s2,a1
    8000129c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012a0:	00001537          	lui	a0,0x1
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	f78080e7          	jalr	-136(ra) # 8000121c <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012ac:	04050263          	beqz	a0,800012f0 <thread_create+0x78>
        return -1;

    //initialize registers

    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012b0:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012b4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012b8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012bc:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012c0:	01100793          	li	a5,17
    800012c4:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800012c8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012cc:	00050513          	mv	a0,a0

    return result;
    800012d0:	0005051b          	sext.w	a0,a0
}
    800012d4:	02813083          	ld	ra,40(sp)
    800012d8:	02013403          	ld	s0,32(sp)
    800012dc:	01813483          	ld	s1,24(sp)
    800012e0:	01013903          	ld	s2,16(sp)
    800012e4:	00813983          	ld	s3,8(sp)
    800012e8:	03010113          	addi	sp,sp,48
    800012ec:	00008067          	ret
        return -1;
    800012f0:	fff00513          	li	a0,-1
    800012f4:	fe1ff06f          	j	800012d4 <thread_create+0x5c>

00000000800012f8 <thread_dispatch>:

#ifdef __cplusplus
extern "C"
#endif
void thread_dispatch(){
    800012f8:	ff010113          	addi	sp,sp,-16
    800012fc:	00813423          	sd	s0,8(sp)
    80001300:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001304:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001308:	00000073          	ecall
}
    8000130c:	00813403          	ld	s0,8(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <thread_exit>:

#ifdef __cplusplus
extern "C"
#endif
int thread_exit()
{
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00813423          	sd	s0,8(sp)
    80001320:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001324:	01300513          	li	a0,19

    __asm__ volatile("ecall");
    80001328:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000132c:	00050513          	mv	a0,a0

    return result;
}
    80001330:	0005051b          	sext.w	a0,a0
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <sem_open>:

typedef void* sem_t;
int sem_open(sem_t* handle, unsigned int x)
{
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00813423          	sd	s0,8(sp)
    80001348:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000134c:	02059593          	slli	a1,a1,0x20
    80001350:	0205d593          	srli	a1,a1,0x20
    80001354:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001358:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000135c:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80001360:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001364:	00050513          	mv	a0,a0

    return result;
}
    80001368:	0005051b          	sext.w	a0,a0
    8000136c:	00813403          	ld	s0,8(sp)
    80001370:	01010113          	addi	sp,sp,16
    80001374:	00008067          	ret

0000000080001378 <sem_close>:


int sem_close(sem_t handle)
{
    80001378:	ff010113          	addi	sp,sp,-16
    8000137c:	00813423          	sd	s0,8(sp)
    80001380:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001384:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001388:	02200513          	li	a0,34

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

00000000800013a4 <sem_wait>:

int sem_wait(sem_t id)
{
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013b0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013b4:	02300513          	li	a0,35

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

00000000800013d0 <sem_signal>:

int sem_signal(sem_t id)
{
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013dc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800013e0:	02400513          	li	a0,36

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

00000000800013fc <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    800013fc:	fe010113          	addi	sp,sp,-32
    80001400:	00113c23          	sd	ra,24(sp)
    80001404:	00813823          	sd	s0,16(sp)
    80001408:	00913423          	sd	s1,8(sp)
    8000140c:	02010413          	addi	s0,sp,32
    Riscv::printString("Runner started...\n");
    80001410:	00004517          	auipc	a0,0x4
    80001414:	c1050513          	addi	a0,a0,-1008 # 80005020 <CONSOLE_STATUS+0x10>
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	fc8080e7          	jalr	-56(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001420:	00001097          	auipc	ra,0x1
    80001424:	fa0080e7          	jalr	-96(ra) # 800023c0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001428:	00005497          	auipc	s1,0x5
    8000142c:	b9848493          	addi	s1,s1,-1128 # 80005fc0 <_ZN3PCB7runningE>
    80001430:	0004b783          	ld	a5,0(s1)
    80001434:	0087b703          	ld	a4,8(a5)
    80001438:	0107b503          	ld	a0,16(a5)
    8000143c:	000700e7          	jalr	a4
    running->setState(PCB::FINISHED);
    80001440:	0004b783          	ld	a5,0(s1)
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED};

    State getState() {return state;}
    void setState(State s) {state = s;}
    80001444:	00300713          	li	a4,3
    80001448:	00e7ac23          	sw	a4,24(a5)
    Riscv::printString("Thread finished\n");
    8000144c:	00004517          	auipc	a0,0x4
    80001450:	bec50513          	addi	a0,a0,-1044 # 80005038 <CONSOLE_STATUS+0x28>
    80001454:	00001097          	auipc	ra,0x1
    80001458:	f8c080e7          	jalr	-116(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    thread_dispatch();
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	e9c080e7          	jalr	-356(ra) # 800012f8 <thread_dispatch>
}
    80001464:	01813083          	ld	ra,24(sp)
    80001468:	01013403          	ld	s0,16(sp)
    8000146c:	00813483          	ld	s1,8(sp)
    80001470:	02010113          	addi	sp,sp,32
    80001474:	00008067          	ret

0000000080001478 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00113423          	sd	ra,8(sp)
    80001480:	00813023          	sd	s0,0(sp)
    80001484:	01010413          	addi	s0,sp,16
    })
    80001488:	00e53023          	sd	a4,0(a0)
    8000148c:	00b53423          	sd	a1,8(a0)
    80001490:	00c53823          	sd	a2,16(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001494:	00001737          	lui	a4,0x1
    80001498:	00e686b3          	add	a3,a3,a4
    })
    8000149c:	02d53023          	sd	a3,32(a0)
    800014a0:	00000717          	auipc	a4,0x0
    800014a4:	f5c70713          	addi	a4,a4,-164 # 800013fc <_ZN3PCB6runnerEv>
    800014a8:	02e53423          	sd	a4,40(a0)
    Scheduler::put(this);
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	328080e7          	jalr	808(ra) # 800017d4 <_ZN9Scheduler3putEP3PCB>
}
    800014b4:	00813083          	ld	ra,8(sp)
    800014b8:	00013403          	ld	s0,0(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_ZN3PCB5sleepEm>:
{
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00813423          	sd	s0,8(sp)
    800014cc:	01010413          	addi	s0,sp,16
}
    800014d0:	00813403          	ld	s0,8(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret

00000000800014dc <_ZN3PCB5startEv>:
{
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00113423          	sd	ra,8(sp)
    800014e4:	00813023          	sd	s0,0(sp)
    800014e8:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	2e8080e7          	jalr	744(ra) # 800017d4 <_ZN9Scheduler3putEP3PCB>
}
    800014f4:	00813083          	ld	ra,8(sp)
    800014f8:	00013403          	ld	s0,0(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    Riscv::printString("Dispatch called...\n");
    8000151c:	00004517          	auipc	a0,0x4
    80001520:	b3450513          	addi	a0,a0,-1228 # 80005050 <CONSOLE_STATUS+0x40>
    80001524:	00001097          	auipc	ra,0x1
    80001528:	ebc080e7          	jalr	-324(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    PCB* old = running;
    8000152c:	00005497          	auipc	s1,0x5
    80001530:	a944b483          	ld	s1,-1388(s1) # 80005fc0 <_ZN3PCB7runningE>
    State getState() {return state;}
    80001534:	0184a703          	lw	a4,24(s1)
    if(old->getState() == PCB::RUNNING) Scheduler::put(old);
    80001538:	00100793          	li	a5,1
    8000153c:	04f70e63          	beq	a4,a5,80001598 <_ZN3PCB8dispatchEv+0x94>
    PCB::running = Scheduler::get();
    80001540:	00000097          	auipc	ra,0x0
    80001544:	334080e7          	jalr	820(ra) # 80001874 <_ZN9Scheduler3getEv>
    80001548:	00005917          	auipc	s2,0x5
    8000154c:	a7890913          	addi	s2,s2,-1416 # 80005fc0 <_ZN3PCB7runningE>
    80001550:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80001554:	00100793          	li	a5,1
    80001558:	00f52c23          	sw	a5,24(a0)
    PCB::running->setState(PCB::RUNNING);
    Riscv::printString("Switching context...\n");
    8000155c:	00004517          	auipc	a0,0x4
    80001560:	b0c50513          	addi	a0,a0,-1268 # 80005068 <CONSOLE_STATUS+0x58>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	e7c080e7          	jalr	-388(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>

    PCB::contextSwitch(&old->context, &running->context);
    8000156c:	00093583          	ld	a1,0(s2)
    80001570:	02058593          	addi	a1,a1,32
    80001574:	02048513          	addi	a0,s1,32
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	c90080e7          	jalr	-880(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001580:	01813083          	ld	ra,24(sp)
    80001584:	01013403          	ld	s0,16(sp)
    80001588:	00813483          	ld	s1,8(sp)
    8000158c:	00013903          	ld	s2,0(sp)
    80001590:	02010113          	addi	sp,sp,32
    80001594:	00008067          	ret
    if(old->getState() == PCB::RUNNING) Scheduler::put(old);
    80001598:	00048513          	mv	a0,s1
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	238080e7          	jalr	568(ra) # 800017d4 <_ZN9Scheduler3putEP3PCB>
    800015a4:	f9dff06f          	j	80001540 <_ZN3PCB8dispatchEv+0x3c>

00000000800015a8 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00113423          	sd	ra,8(sp)
    800015b0:	00813023          	sd	s0,0(sp)
    800015b4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	504080e7          	jalr	1284(ra) # 80002abc <_Z7kmallocm>
}
    800015c0:	00813083          	ld	ra,8(sp)
    800015c4:	00013403          	ld	s0,0(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00113423          	sd	ra,8(sp)
    800015d8:	00813023          	sd	s0,0(sp)
    800015dc:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	504080e7          	jalr	1284(ra) # 80002ae4 <_Z5kfreePv>
}
    800015e8:	00813083          	ld	ra,8(sp)
    800015ec:	00013403          	ld	s0,0(sp)
    800015f0:	01010113          	addi	sp,sp,16
    800015f4:	00008067          	ret

00000000800015f8 <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.h"

void Queue::pop() {
    800015f8:	fe010113          	addi	sp,sp,-32
    800015fc:	00113c23          	sd	ra,24(sp)
    80001600:	00813823          	sd	s0,16(sp)
    80001604:	00913423          	sd	s1,8(sp)
    80001608:	01213023          	sd	s2,0(sp)
    8000160c:	02010413          	addi	s0,sp,32
    80001610:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001614:	00053503          	ld	a0,0(a0)
    80001618:	00853903          	ld	s2,8(a0)
    kfree(first);
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	4c8080e7          	jalr	1224(ra) # 80002ae4 <_Z5kfreePv>
    first = newFirst;
    80001624:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001628:	00090e63          	beqz	s2,80001644 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    8000162c:	01813083          	ld	ra,24(sp)
    80001630:	01013403          	ld	s0,16(sp)
    80001634:	00813483          	ld	s1,8(sp)
    80001638:	00013903          	ld	s2,0(sp)
    8000163c:	02010113          	addi	sp,sp,32
    80001640:	00008067          	ret
        first = last = 0;
    80001644:	0004b423          	sd	zero,8(s1)
    80001648:	0004b023          	sd	zero,0(s1)
}
    8000164c:	fe1ff06f          	j	8000162c <_ZN5Queue3popEv+0x34>

0000000080001650 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80001650:	fe010113          	addi	sp,sp,-32
    80001654:	00113c23          	sd	ra,24(sp)
    80001658:	00813823          	sd	s0,16(sp)
    8000165c:	00913423          	sd	s1,8(sp)
    80001660:	01213023          	sd	s2,0(sp)
    80001664:	02010413          	addi	s0,sp,32
    80001668:	00050493          	mv	s1,a0
    8000166c:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80001670:	01000513          	li	a0,16
    80001674:	00001097          	auipc	ra,0x1
    80001678:	448080e7          	jalr	1096(ra) # 80002abc <_Z7kmallocm>
    newElem->data = t;
    8000167c:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80001680:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80001684:	0004b783          	ld	a5,0(s1)
    80001688:	02078463          	beqz	a5,800016b0 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    8000168c:	0084b783          	ld	a5,8(s1)
    80001690:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80001694:	00a4b423          	sd	a0,8(s1)
    }
}
    80001698:	01813083          	ld	ra,24(sp)
    8000169c:	01013403          	ld	s0,16(sp)
    800016a0:	00813483          	ld	s1,8(sp)
    800016a4:	00013903          	ld	s2,0(sp)
    800016a8:	02010113          	addi	sp,sp,32
    800016ac:	00008067          	ret
        first = newElem;
    800016b0:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800016b4:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800016b8:	00053423          	sd	zero,8(a0)
    800016bc:	0004b783          	ld	a5,0(s1)
    800016c0:	0007b423          	sd	zero,8(a5)
    800016c4:	fd5ff06f          	j	80001698 <_ZN5Queue4pushEP3PCB+0x48>

00000000800016c8 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    800016c8:	ff010113          	addi	sp,sp,-16
    800016cc:	00813423          	sd	s0,8(sp)
    800016d0:	01010413          	addi	s0,sp,16
    if(first == 0)
    800016d4:	00053503          	ld	a0,0(a0)
    800016d8:	00050463          	beqz	a0,800016e0 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800016dc:	00053503          	ld	a0,0(a0)
}
    800016e0:	00813403          	ld	s0,8(sp)
    800016e4:	01010113          	addi	sp,sp,16
    800016e8:	00008067          	ret

00000000800016ec <_ZN5QueueC1Ev>:

Queue::Queue() {
    800016ec:	ff010113          	addi	sp,sp,-16
    800016f0:	00813423          	sd	s0,8(sp)
    800016f4:	01010413          	addi	s0,sp,16
    first = last = 0;
    800016f8:	00053423          	sd	zero,8(a0)
    800016fc:	00053023          	sd	zero,0(a0)
}
    80001700:	00813403          	ld	s0,8(sp)
    80001704:	01010113          	addi	sp,sp,16
    80001708:	00008067          	ret

000000008000170c <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    8000170c:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80001710:	04050063          	beqz	a0,80001750 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80001714:	fe010113          	addi	sp,sp,-32
    80001718:	00113c23          	sd	ra,24(sp)
    8000171c:	00813823          	sd	s0,16(sp)
    80001720:	00913423          	sd	s1,8(sp)
    80001724:	02010413          	addi	s0,sp,32
    {
        //todo
        //vrati ovo
        //sad je zakomentarisano zbog kfree
        Elem* old = curr;
        curr = curr->next;
    80001728:	00853483          	ld	s1,8(a0)
        kfree(old);
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	3b8080e7          	jalr	952(ra) # 80002ae4 <_Z5kfreePv>
        curr = curr->next;
    80001734:	00048513          	mv	a0,s1
    while(curr != 0)
    80001738:	fe0498e3          	bnez	s1,80001728 <_ZN5QueueD1Ev+0x1c>
    }
}
    8000173c:	01813083          	ld	ra,24(sp)
    80001740:	01013403          	ld	s0,16(sp)
    80001744:	00813483          	ld	s1,8(sp)
    80001748:	02010113          	addi	sp,sp,32
    8000174c:	00008067          	ret
    80001750:	00008067          	ret

0000000080001754 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80001754:	ff010113          	addi	sp,sp,-16
    80001758:	00813423          	sd	s0,8(sp)
    8000175c:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80001760:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80001764:	00000513          	li	a0,0
    while(curr != 0)
    80001768:	00078863          	beqz	a5,80001778 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    8000176c:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80001770:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001774:	ff5ff06f          	j	80001768 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80001778:	00813403          	ld	s0,8(sp)
    8000177c:	01010113          	addi	sp,sp,16
    80001780:	00008067          	ret

0000000080001784 <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    80001784:	ff010113          	addi	sp,sp,-16
    80001788:	00113423          	sd	ra,8(sp)
    8000178c:	00813023          	sd	s0,0(sp)
    80001790:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001794:	00001097          	auipc	ra,0x1
    80001798:	328080e7          	jalr	808(ra) # 80002abc <_Z7kmallocm>
}
    8000179c:	00813083          	ld	ra,8(sp)
    800017a0:	00013403          	ld	s0,0(sp)
    800017a4:	01010113          	addi	sp,sp,16
    800017a8:	00008067          	ret

00000000800017ac <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    800017ac:	ff010113          	addi	sp,sp,-16
    800017b0:	00113423          	sd	ra,8(sp)
    800017b4:	00813023          	sd	s0,0(sp)
    800017b8:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800017bc:	00001097          	auipc	ra,0x1
    800017c0:	328080e7          	jalr	808(ra) # 80002ae4 <_Z5kfreePv>
}
    800017c4:	00813083          	ld	ra,8(sp)
    800017c8:	00013403          	ld	s0,0(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800017d4:	fe010113          	addi	sp,sp,-32
    800017d8:	00113c23          	sd	ra,24(sp)
    800017dc:	00813823          	sd	s0,16(sp)
    800017e0:	00913423          	sd	s1,8(sp)
    800017e4:	01213023          	sd	s2,0(sp)
    800017e8:	02010413          	addi	s0,sp,32
    800017ec:	00050493          	mv	s1,a0
    800017f0:	00052c23          	sw	zero,24(a0)
    if(scheduler == 0)
    800017f4:	00004797          	auipc	a5,0x4
    800017f8:	7dc7b783          	ld	a5,2012(a5) # 80005fd0 <_ZN9Scheduler9schedulerE>
    800017fc:	02078863          	beqz	a5,8000182c <_ZN9Scheduler3putEP3PCB+0x58>
    scheduler->queuePCB.push(pcb);
    80001800:	00048593          	mv	a1,s1
    80001804:	00004517          	auipc	a0,0x4
    80001808:	7cc53503          	ld	a0,1996(a0) # 80005fd0 <_ZN9Scheduler9schedulerE>
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	e44080e7          	jalr	-444(ra) # 80001650 <_ZN5Queue4pushEP3PCB>
}
    80001814:	01813083          	ld	ra,24(sp)
    80001818:	01013403          	ld	s0,16(sp)
    8000181c:	00813483          	ld	s1,8(sp)
    80001820:	00013903          	ld	s2,0(sp)
    80001824:	02010113          	addi	sp,sp,32
    80001828:	00008067          	ret
        scheduler = new Scheduler();
    8000182c:	01000513          	li	a0,16
    80001830:	00000097          	auipc	ra,0x0
    80001834:	f54080e7          	jalr	-172(ra) # 80001784 <_ZN9SchedulernwEm>
    80001838:	00050913          	mv	s2,a0
    8000183c:	00053023          	sd	zero,0(a0)
    80001840:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
    80001844:	00000097          	auipc	ra,0x0
    80001848:	ea8080e7          	jalr	-344(ra) # 800016ec <_ZN5QueueC1Ev>
    8000184c:	00004797          	auipc	a5,0x4
    80001850:	7927b223          	sd	s2,1924(a5) # 80005fd0 <_ZN9Scheduler9schedulerE>
    80001854:	fadff06f          	j	80001800 <_ZN9Scheduler3putEP3PCB+0x2c>
    80001858:	00050493          	mv	s1,a0
    8000185c:	00090513          	mv	a0,s2
    80001860:	00000097          	auipc	ra,0x0
    80001864:	f4c080e7          	jalr	-180(ra) # 800017ac <_ZN9SchedulerdlEPv>
    80001868:	00048513          	mv	a0,s1
    8000186c:	00006097          	auipc	ra,0x6
    80001870:	84c080e7          	jalr	-1972(ra) # 800070b8 <_Unwind_Resume>

0000000080001874 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001874:	fe010113          	addi	sp,sp,-32
    80001878:	00113c23          	sd	ra,24(sp)
    8000187c:	00813823          	sd	s0,16(sp)
    80001880:	00913423          	sd	s1,8(sp)
    80001884:	01213023          	sd	s2,0(sp)
    80001888:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    8000188c:	00004797          	auipc	a5,0x4
    80001890:	7447b783          	ld	a5,1860(a5) # 80005fd0 <_ZN9Scheduler9schedulerE>
    80001894:	04078263          	beqz	a5,800018d8 <_ZN9Scheduler3getEv+0x64>
    PCB* fr = scheduler->queuePCB.front();
    80001898:	00004917          	auipc	s2,0x4
    8000189c:	73890913          	addi	s2,s2,1848 # 80005fd0 <_ZN9Scheduler9schedulerE>
    800018a0:	00093503          	ld	a0,0(s2)
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	e24080e7          	jalr	-476(ra) # 800016c8 <_ZN5Queue5frontEv>
    800018ac:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    800018b0:	00093503          	ld	a0,0(s2)
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	d44080e7          	jalr	-700(ra) # 800015f8 <_ZN5Queue3popEv>
}
    800018bc:	00048513          	mv	a0,s1
    800018c0:	01813083          	ld	ra,24(sp)
    800018c4:	01013403          	ld	s0,16(sp)
    800018c8:	00813483          	ld	s1,8(sp)
    800018cc:	00013903          	ld	s2,0(sp)
    800018d0:	02010113          	addi	sp,sp,32
    800018d4:	00008067          	ret
        scheduler = new Scheduler();
    800018d8:	01000513          	li	a0,16
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	ea8080e7          	jalr	-344(ra) # 80001784 <_ZN9SchedulernwEm>
    800018e4:	00050493          	mv	s1,a0
    800018e8:	00053023          	sd	zero,0(a0)
    800018ec:	00053423          	sd	zero,8(a0)
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	dfc080e7          	jalr	-516(ra) # 800016ec <_ZN5QueueC1Ev>
    800018f8:	00004797          	auipc	a5,0x4
    800018fc:	6c97bc23          	sd	s1,1752(a5) # 80005fd0 <_ZN9Scheduler9schedulerE>
    80001900:	f99ff06f          	j	80001898 <_ZN9Scheduler3getEv+0x24>
    80001904:	00050913          	mv	s2,a0
    80001908:	00048513          	mv	a0,s1
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	ea0080e7          	jalr	-352(ra) # 800017ac <_ZN9SchedulerdlEPv>
    80001914:	00090513          	mv	a0,s2
    80001918:	00005097          	auipc	ra,0x5
    8000191c:	7a0080e7          	jalr	1952(ra) # 800070b8 <_Unwind_Resume>

0000000080001920 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    80001920:	fe010113          	addi	sp,sp,-32
    80001924:	00113c23          	sd	ra,24(sp)
    80001928:	00813823          	sd	s0,16(sp)
    8000192c:	00913423          	sd	s1,8(sp)
    80001930:	01213023          	sd	s2,0(sp)
    80001934:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80001938:	00004797          	auipc	a5,0x4
    8000193c:	6987b783          	ld	a5,1688(a5) # 80005fd0 <_ZN9Scheduler9schedulerE>
    80001940:	02078663          	beqz	a5,8000196c <_ZN9Scheduler7getSizeEv+0x4c>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    80001944:	00004517          	auipc	a0,0x4
    80001948:	68c53503          	ld	a0,1676(a0) # 80005fd0 <_ZN9Scheduler9schedulerE>
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	e08080e7          	jalr	-504(ra) # 80001754 <_ZN5Queue4sizeEv>
}
    80001954:	01813083          	ld	ra,24(sp)
    80001958:	01013403          	ld	s0,16(sp)
    8000195c:	00813483          	ld	s1,8(sp)
    80001960:	00013903          	ld	s2,0(sp)
    80001964:	02010113          	addi	sp,sp,32
    80001968:	00008067          	ret
        scheduler = new Scheduler();
    8000196c:	01000513          	li	a0,16
    80001970:	00000097          	auipc	ra,0x0
    80001974:	e14080e7          	jalr	-492(ra) # 80001784 <_ZN9SchedulernwEm>
    80001978:	00050493          	mv	s1,a0
    8000197c:	00053023          	sd	zero,0(a0)
    80001980:	00053423          	sd	zero,8(a0)
    80001984:	00000097          	auipc	ra,0x0
    80001988:	d68080e7          	jalr	-664(ra) # 800016ec <_ZN5QueueC1Ev>
    8000198c:	00004797          	auipc	a5,0x4
    80001990:	6497b223          	sd	s1,1604(a5) # 80005fd0 <_ZN9Scheduler9schedulerE>
    80001994:	fb1ff06f          	j	80001944 <_ZN9Scheduler7getSizeEv+0x24>
    80001998:	00050913          	mv	s2,a0
    8000199c:	00048513          	mv	a0,s1
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	e0c080e7          	jalr	-500(ra) # 800017ac <_ZN9SchedulerdlEPv>
    800019a8:	00090513          	mv	a0,s2
    800019ac:	00005097          	auipc	ra,0x5
    800019b0:	70c080e7          	jalr	1804(ra) # 800070b8 <_Unwind_Resume>

00000000800019b4 <_Z15thread1FunctionPv>:

    Riscv::disableInterrupts();
}

void thread1Function(void* p)
{
    800019b4:	fe010113          	addi	sp,sp,-32
    800019b8:	00113c23          	sd	ra,24(sp)
    800019bc:	00813823          	sd	s0,16(sp)
    800019c0:	00913423          	sd	s1,8(sp)
    800019c4:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    800019c8:	00003517          	auipc	a0,0x3
    800019cc:	6b850513          	addi	a0,a0,1720 # 80005080 <CONSOLE_STATUS+0x70>
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	a10080e7          	jalr	-1520(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    uint64 num = 1000;
    for(uint64 i = 0; i < num;i++)
    800019d8:	00000493          	li	s1,0
    800019dc:	03c0006f          	j	80001a18 <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	918080e7          	jalr	-1768(ra) # 800012f8 <thread_dispatch>
        Riscv::printString("i : ");
    800019e8:	00003517          	auipc	a0,0x3
    800019ec:	6b050513          	addi	a0,a0,1712 # 80005098 <CONSOLE_STATUS+0x88>
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	9f0080e7          	jalr	-1552(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800019f8:	00048513          	mv	a0,s1
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	a54080e7          	jalr	-1452(ra) # 80002450 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001a04:	00004517          	auipc	a0,0x4
    80001a08:	87c50513          	addi	a0,a0,-1924 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	9d4080e7          	jalr	-1580(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    80001a14:	00148493          	addi	s1,s1,1
    80001a18:	3e700793          	li	a5,999
    80001a1c:	0097ec63          	bltu	a5,s1,80001a34 <_Z15thread1FunctionPv+0x80>
        if(i % 150 == 0 && i > 0)
    80001a20:	09600793          	li	a5,150
    80001a24:	02f4f7b3          	remu	a5,s1,a5
    80001a28:	fc0790e3          	bnez	a5,800019e8 <_Z15thread1FunctionPv+0x34>
    80001a2c:	fa048ee3          	beqz	s1,800019e8 <_Z15thread1FunctionPv+0x34>
    80001a30:	fb1ff06f          	j	800019e0 <_Z15thread1FunctionPv+0x2c>
    }
}
    80001a34:	01813083          	ld	ra,24(sp)
    80001a38:	01013403          	ld	s0,16(sp)
    80001a3c:	00813483          	ld	s1,8(sp)
    80001a40:	02010113          	addi	sp,sp,32
    80001a44:	00008067          	ret

0000000080001a48 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001a48:	fe010113          	addi	sp,sp,-32
    80001a4c:	00113c23          	sd	ra,24(sp)
    80001a50:	00813823          	sd	s0,16(sp)
    80001a54:	00913423          	sd	s1,8(sp)
    80001a58:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001a5c:	00003517          	auipc	a0,0x3
    80001a60:	64450513          	addi	a0,a0,1604 # 800050a0 <CONSOLE_STATUS+0x90>
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	97c080e7          	jalr	-1668(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    uint64 num = 1000;
    for(uint64 j = 0; j < num;j++)
    80001a6c:	00000493          	li	s1,0
    80001a70:	03c0006f          	j	80001aac <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
          thread_dispatch();
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	884080e7          	jalr	-1916(ra) # 800012f8 <thread_dispatch>
        Riscv::printString("j : ");
    80001a7c:	00003517          	auipc	a0,0x3
    80001a80:	63c50513          	addi	a0,a0,1596 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	95c080e7          	jalr	-1700(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001a8c:	00048513          	mv	a0,s1
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	9c0080e7          	jalr	-1600(ra) # 80002450 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001a98:	00003517          	auipc	a0,0x3
    80001a9c:	7e850513          	addi	a0,a0,2024 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	940080e7          	jalr	-1728(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001aa8:	00148493          	addi	s1,s1,1
    80001aac:	3e700793          	li	a5,999
    80001ab0:	0097ec63          	bltu	a5,s1,80001ac8 <_Z15thread2FunctionPv+0x80>
        if(j % 50 == 0 && j > 0)
    80001ab4:	03200793          	li	a5,50
    80001ab8:	02f4f7b3          	remu	a5,s1,a5
    80001abc:	fc0790e3          	bnez	a5,80001a7c <_Z15thread2FunctionPv+0x34>
    80001ac0:	fa048ee3          	beqz	s1,80001a7c <_Z15thread2FunctionPv+0x34>
    80001ac4:	fb1ff06f          	j	80001a74 <_Z15thread2FunctionPv+0x2c>
    }
}
    80001ac8:	01813083          	ld	ra,24(sp)
    80001acc:	01013403          	ld	s0,16(sp)
    80001ad0:	00813483          	ld	s1,8(sp)
    80001ad4:	02010113          	addi	sp,sp,32
    80001ad8:	00008067          	ret

0000000080001adc <_Z11threadTestsv>:

void threadTests()
{
    80001adc:	fe010113          	addi	sp,sp,-32
    80001ae0:	00113c23          	sd	ra,24(sp)
    80001ae4:	00813823          	sd	s0,16(sp)
    80001ae8:	00913423          	sd	s1,8(sp)
    80001aec:	01213023          	sd	s2,0(sp)
    80001af0:	02010413          	addi	s0,sp,32
    new Thread(0, 0);
    80001af4:	00800513          	li	a0,8
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	6ec080e7          	jalr	1772(ra) # 800021e4 <_Znwm>
    80001b00:	00050493          	mv	s1,a0
    80001b04:	00000613          	li	a2,0
    80001b08:	00000593          	li	a1,0
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	790080e7          	jalr	1936(ra) # 8000229c <_ZN6ThreadC1EPFvPvES0_>
    PCB::running = Scheduler::get();
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	d60080e7          	jalr	-672(ra) # 80001874 <_ZN9Scheduler3getEv>
    80001b1c:	00004797          	auipc	a5,0x4
    80001b20:	4547b783          	ld	a5,1108(a5) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b24:	00a7b023          	sd	a0,0(a5)
    80001b28:	00100793          	li	a5,1
    80001b2c:	00f52c23          	sw	a5,24(a0)
    PCB::running->setState(PCB::RUNNING);
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b30:	00800513          	li	a0,8
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	6b0080e7          	jalr	1712(ra) # 800021e4 <_Znwm>
    80001b3c:	00050493          	mv	s1,a0
    80001b40:	00000613          	li	a2,0
    80001b44:	00000597          	auipc	a1,0x0
    80001b48:	e7058593          	addi	a1,a1,-400 # 800019b4 <_Z15thread1FunctionPv>
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	750080e7          	jalr	1872(ra) # 8000229c <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001b54:	00800513          	li	a0,8
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	68c080e7          	jalr	1676(ra) # 800021e4 <_Znwm>
    80001b60:	00050913          	mv	s2,a0
    80001b64:	00000613          	li	a2,0
    80001b68:	00000597          	auipc	a1,0x0
    80001b6c:	ee058593          	addi	a1,a1,-288 # 80001a48 <_Z15thread2FunctionPv>
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	72c080e7          	jalr	1836(ra) # 8000229c <_ZN6ThreadC1EPFvPvES0_>

    Riscv::enableInterrupts();
    80001b78:	00001097          	auipc	ra,0x1
    80001b7c:	808080e7          	jalr	-2040(ra) # 80002380 <_ZN5Riscv16enableInterruptsEv>

    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED);
    80001b80:	0004b783          	ld	a5,0(s1)
    State getState() {return state;}
    80001b84:	0187a703          	lw	a4,24(a5)
    80001b88:	00300793          	li	a5,3
    80001b8c:	fef71ae3          	bne	a4,a5,80001b80 <_Z11threadTestsv+0xa4>
    80001b90:	00093783          	ld	a5,0(s2)
    80001b94:	0187a703          	lw	a4,24(a5)
    80001b98:	00300793          	li	a5,3
    80001b9c:	fef712e3          	bne	a4,a5,80001b80 <_Z11threadTestsv+0xa4>

    Riscv::printString("End...\n");
    80001ba0:	00003517          	auipc	a0,0x3
    80001ba4:	52050513          	addi	a0,a0,1312 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	838080e7          	jalr	-1992(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
}
    80001bb0:	01813083          	ld	ra,24(sp)
    80001bb4:	01013403          	ld	s0,16(sp)
    80001bb8:	00813483          	ld	s1,8(sp)
    80001bbc:	00013903          	ld	s2,0(sp)
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret
    80001bc8:	00050913          	mv	s2,a0
    new Thread(0, 0);
    80001bcc:	00048513          	mv	a0,s1
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	63c080e7          	jalr	1596(ra) # 8000220c <_ZdlPv>
    80001bd8:	00090513          	mv	a0,s2
    80001bdc:	00005097          	auipc	ra,0x5
    80001be0:	4dc080e7          	jalr	1244(ra) # 800070b8 <_Unwind_Resume>
    80001be4:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001be8:	00048513          	mv	a0,s1
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	620080e7          	jalr	1568(ra) # 8000220c <_ZdlPv>
    80001bf4:	00090513          	mv	a0,s2
    80001bf8:	00005097          	auipc	ra,0x5
    80001bfc:	4c0080e7          	jalr	1216(ra) # 800070b8 <_Unwind_Resume>
    80001c00:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001c04:	00090513          	mv	a0,s2
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	604080e7          	jalr	1540(ra) # 8000220c <_ZdlPv>
    80001c10:	00048513          	mv	a0,s1
    80001c14:	00005097          	auipc	ra,0x5
    80001c18:	4a4080e7          	jalr	1188(ra) # 800070b8 <_Unwind_Resume>

0000000080001c1c <main>:
{
    80001c1c:	ff010113          	addi	sp,sp,-16
    80001c20:	00113423          	sd	ra,8(sp)
    80001c24:	00813023          	sd	s0,0(sp)
    80001c28:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	730080e7          	jalr	1840(ra) # 8000235c <_ZN5Riscv10initSystemEv>
    threadTests();
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	ea8080e7          	jalr	-344(ra) # 80001adc <_Z11threadTestsv>
    Riscv::disableInterrupts();
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	764080e7          	jalr	1892(ra) # 800023a0 <_ZN5Riscv17disableInterruptsEv>
}
    80001c44:	00813083          	ld	ra,8(sp)
    80001c48:	00013403          	ld	s0,0(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    80001c54:	cc010113          	addi	sp,sp,-832
    80001c58:	32113c23          	sd	ra,824(sp)
    80001c5c:	32813823          	sd	s0,816(sp)
    80001c60:	32913423          	sd	s1,808(sp)
    80001c64:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001c68:	00003517          	auipc	a0,0x3
    80001c6c:	46050513          	addi	a0,a0,1120 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	770080e7          	jalr	1904(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001c78:	00000493          	li	s1,0
    80001c7c:	0080006f          	j	80001c84 <_Z10mallocFreev+0x30>
    80001c80:	0014849b          	addiw	s1,s1,1
    80001c84:	06300793          	li	a5,99
    80001c88:	0497c463          	blt	a5,s1,80001cd0 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    80001c8c:	06400513          	li	a0,100
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	58c080e7          	jalr	1420(ra) # 8000121c <mem_alloc>
    80001c98:	00349793          	slli	a5,s1,0x3
    80001c9c:	fe040713          	addi	a4,s0,-32
    80001ca0:	00f707b3          	add	a5,a4,a5
    80001ca4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001ca8:	fc051ce3          	bnez	a0,80001c80 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    80001cac:	00003517          	auipc	a0,0x3
    80001cb0:	42c50513          	addi	a0,a0,1068 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	72c080e7          	jalr	1836(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    80001cbc:	33813083          	ld	ra,824(sp)
    80001cc0:	33013403          	ld	s0,816(sp)
    80001cc4:	32813483          	ld	s1,808(sp)
    80001cc8:	34010113          	addi	sp,sp,832
    80001ccc:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001cd0:	00000493          	li	s1,0
    80001cd4:	06300793          	li	a5,99
    80001cd8:	0297ce63          	blt	a5,s1,80001d14 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001cdc:	00349793          	slli	a5,s1,0x3
    80001ce0:	fe040713          	addi	a4,s0,-32
    80001ce4:	00f707b3          	add	a5,a4,a5
    80001ce8:	ce07b503          	ld	a0,-800(a5)
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	560080e7          	jalr	1376(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001cf4:	00051663          	bnez	a0,80001d00 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001cf8:	0024849b          	addiw	s1,s1,2
    80001cfc:	fd9ff06f          	j	80001cd4 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001d00:	00003517          	auipc	a0,0x3
    80001d04:	3d850513          	addi	a0,a0,984 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	6d8080e7          	jalr	1752(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            return;
    80001d10:	fadff06f          	j	80001cbc <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001d14:	00000493          	li	s1,0
    80001d18:	0080006f          	j	80001d20 <_Z10mallocFreev+0xcc>
    80001d1c:	0024849b          	addiw	s1,s1,2
    80001d20:	06300793          	li	a5,99
    80001d24:	0297cc63          	blt	a5,s1,80001d5c <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001d28:	01400513          	li	a0,20
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	4f0080e7          	jalr	1264(ra) # 8000121c <mem_alloc>
    80001d34:	00349793          	slli	a5,s1,0x3
    80001d38:	fe040713          	addi	a4,s0,-32
    80001d3c:	00f707b3          	add	a5,a4,a5
    80001d40:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001d44:	fc051ce3          	bnez	a0,80001d1c <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001d48:	00003517          	auipc	a0,0x3
    80001d4c:	39050513          	addi	a0,a0,912 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	690080e7          	jalr	1680(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            return;
    80001d58:	f65ff06f          	j	80001cbc <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001d5c:	00000493          	li	s1,0
    80001d60:	06300793          	li	a5,99
    80001d64:	0297ce63          	blt	a5,s1,80001da0 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001d68:	00349793          	slli	a5,s1,0x3
    80001d6c:	fe040713          	addi	a4,s0,-32
    80001d70:	00f707b3          	add	a5,a4,a5
    80001d74:	ce07b503          	ld	a0,-800(a5)
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	4d4080e7          	jalr	1236(ra) # 8000124c <mem_free>
        if(retval != 0)
    80001d80:	00051663          	bnez	a0,80001d8c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001d84:	0014849b          	addiw	s1,s1,1
    80001d88:	fd9ff06f          	j	80001d60 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001d8c:	00003517          	auipc	a0,0x3
    80001d90:	34c50513          	addi	a0,a0,844 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	64c080e7          	jalr	1612(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            return;
    80001d9c:	f21ff06f          	j	80001cbc <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001da0:	00003517          	auipc	a0,0x3
    80001da4:	34050513          	addi	a0,a0,832 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	638080e7          	jalr	1592(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    80001db0:	f0dff06f          	j	80001cbc <_Z10mallocFreev+0x68>

0000000080001db4 <_Z9bigMallocv>:
void bigMalloc()
{
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	00813023          	sd	s0,0(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001dc4:	00003517          	auipc	a0,0x3
    80001dc8:	32450513          	addi	a0,a0,804 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	614080e7          	jalr	1556(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001dd4:	00004797          	auipc	a5,0x4
    80001dd8:	1a47b783          	ld	a5,420(a5) # 80005f78 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ddc:	0007b503          	ld	a0,0(a5)
    80001de0:	00004797          	auipc	a5,0x4
    80001de4:	1707b783          	ld	a5,368(a5) # 80005f50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001de8:	0007b783          	ld	a5,0(a5)
    80001dec:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001df0:	06450513          	addi	a0,a0,100
    80001df4:	fffff097          	auipc	ra,0xfffff
    80001df8:	428080e7          	jalr	1064(ra) # 8000121c <mem_alloc>
    if(p == 0)
    80001dfc:	02050263          	beqz	a0,80001e20 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001e00:	00003517          	auipc	a0,0x3
    80001e04:	2d850513          	addi	a0,a0,728 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	5d8080e7          	jalr	1496(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
}
    80001e10:	00813083          	ld	ra,8(sp)
    80001e14:	00013403          	ld	s0,0(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret
        Riscv::printString("OK\n");
    80001e20:	00003517          	auipc	a0,0x3
    80001e24:	2c050513          	addi	a0,a0,704 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	5b8080e7          	jalr	1464(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    80001e30:	fe1ff06f          	j	80001e10 <_Z9bigMallocv+0x5c>

0000000080001e34 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001e34:	fd010113          	addi	sp,sp,-48
    80001e38:	02113423          	sd	ra,40(sp)
    80001e3c:	02813023          	sd	s0,32(sp)
    80001e40:	00913c23          	sd	s1,24(sp)
    80001e44:	01213823          	sd	s2,16(sp)
    80001e48:	01313423          	sd	s3,8(sp)
    80001e4c:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001e50:	00003517          	auipc	a0,0x3
    80001e54:	2a850513          	addi	a0,a0,680 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	588080e7          	jalr	1416(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001e60:	00000493          	li	s1,0
    uint64 sum = 0;
    80001e64:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001e68:	00000913          	li	s2,0
    80001e6c:	0180006f          	j	80001e84 <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001e70:	00a00793          	li	a5,10
    80001e74:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001e78:	00a98993          	addi	s3,s3,10
        cnt++;
    80001e7c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001e80:	00148493          	addi	s1,s1,1
    80001e84:	000027b7          	lui	a5,0x2
    80001e88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001e8c:	0097ea63          	bltu	a5,s1,80001ea0 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001e90:	00800513          	li	a0,8
    80001e94:	fffff097          	auipc	ra,0xfffff
    80001e98:	388080e7          	jalr	904(ra) # 8000121c <mem_alloc>
        if(t == 0)
    80001e9c:	fc051ae3          	bnez	a0,80001e70 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001ea0:	00090513          	mv	a0,s2
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	5ac080e7          	jalr	1452(ra) # 80002450 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001eac:	00003517          	auipc	a0,0x3
    80001eb0:	3d450513          	addi	a0,a0,980 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	52c080e7          	jalr	1324(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001ebc:	00291793          	slli	a5,s2,0x2
    80001ec0:	01278933          	add	s2,a5,s2
    80001ec4:	00191913          	slli	s2,s2,0x1
    80001ec8:	03390863          	beq	s2,s3,80001ef8 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001ecc:	00003517          	auipc	a0,0x3
    80001ed0:	20c50513          	addi	a0,a0,524 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	50c080e7          	jalr	1292(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
}
    80001edc:	02813083          	ld	ra,40(sp)
    80001ee0:	02013403          	ld	s0,32(sp)
    80001ee4:	01813483          	ld	s1,24(sp)
    80001ee8:	01013903          	ld	s2,16(sp)
    80001eec:	00813983          	ld	s3,8(sp)
    80001ef0:	03010113          	addi	sp,sp,48
    80001ef4:	00008067          	ret
        Riscv::printString("OK\n");
    80001ef8:	00003517          	auipc	a0,0x3
    80001efc:	1e850513          	addi	a0,a0,488 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	4e0080e7          	jalr	1248(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    80001f08:	fd5ff06f          	j	80001edc <_Z17lotOfSmallMallocsv+0xa8>

0000000080001f0c <_Z7badFreev>:
void badFree()
{
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00113423          	sd	ra,8(sp)
    80001f14:	00813023          	sd	s0,0(sp)
    80001f18:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001f1c:	00003517          	auipc	a0,0x3
    80001f20:	1f450513          	addi	a0,a0,500 # 80005110 <CONSOLE_STATUS+0x100>
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	4bc080e7          	jalr	1212(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001f2c:	00800513          	li	a0,8
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	2ec080e7          	jalr	748(ra) # 8000121c <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001f38:	00250513          	addi	a0,a0,2
    80001f3c:	fffff097          	auipc	ra,0xfffff
    80001f40:	310080e7          	jalr	784(ra) # 8000124c <mem_free>
    if(retval == 0)
    80001f44:	02051263          	bnez	a0,80001f68 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001f48:	00003517          	auipc	a0,0x3
    80001f4c:	19050513          	addi	a0,a0,400 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	490080e7          	jalr	1168(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001f58:	00813083          	ld	ra,8(sp)
    80001f5c:	00013403          	ld	s0,0(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret
        Riscv::printString("OK\n");
    80001f68:	00003517          	auipc	a0,0x3
    80001f6c:	17850513          	addi	a0,a0,376 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	470080e7          	jalr	1136(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
}
    80001f78:	fe1ff06f          	j	80001f58 <_Z7badFreev+0x4c>

0000000080001f7c <_Z13stressTestingv>:

void stressTesting()
{
    80001f7c:	cb010113          	addi	sp,sp,-848
    80001f80:	34113423          	sd	ra,840(sp)
    80001f84:	34813023          	sd	s0,832(sp)
    80001f88:	32913c23          	sd	s1,824(sp)
    80001f8c:	33213823          	sd	s2,816(sp)
    80001f90:	33313423          	sd	s3,808(sp)
    80001f94:	35010413          	addi	s0,sp,848
    Riscv::printString("stressTesting\n");
    80001f98:	00003517          	auipc	a0,0x3
    80001f9c:	18850513          	addi	a0,a0,392 # 80005120 <CONSOLE_STATUS+0x110>
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	440080e7          	jalr	1088(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001fa8:	00000493          	li	s1,0
    80001fac:	0080006f          	j	80001fb4 <_Z13stressTestingv+0x38>
    80001fb0:	0014849b          	addiw	s1,s1,1
    80001fb4:	06300793          	li	a5,99
    80001fb8:	0497c863          	blt	a5,s1,80002008 <_Z13stressTestingv+0x8c>
    {
        addrs[i] = mem_alloc(1);
    80001fbc:	00100513          	li	a0,1
    80001fc0:	fffff097          	auipc	ra,0xfffff
    80001fc4:	25c080e7          	jalr	604(ra) # 8000121c <mem_alloc>
    80001fc8:	00349793          	slli	a5,s1,0x3
    80001fcc:	fd040713          	addi	a4,s0,-48
    80001fd0:	00f707b3          	add	a5,a4,a5
    80001fd4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001fd8:	fc051ce3          	bnez	a0,80001fb0 <_Z13stressTestingv+0x34>
        {
            Riscv::printString("not OK\n");
    80001fdc:	00003517          	auipc	a0,0x3
    80001fe0:	0fc50513          	addi	a0,a0,252 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	3fc080e7          	jalr	1020(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
        }
        sz-=10;
    }

    Riscv::printString("OK\n");
}
    80001fec:	34813083          	ld	ra,840(sp)
    80001ff0:	34013403          	ld	s0,832(sp)
    80001ff4:	33813483          	ld	s1,824(sp)
    80001ff8:	33013903          	ld	s2,816(sp)
    80001ffc:	32813983          	ld	s3,808(sp)
    80002000:	35010113          	addi	sp,sp,848
    80002004:	00008067          	ret
    int sz = 5;
    80002008:	00500913          	li	s2,5
    while(sz > 0)
    8000200c:	19205e63          	blez	s2,800021a8 <_Z13stressTestingv+0x22c>
        Riscv::printString("sz : ");
    80002010:	00003517          	auipc	a0,0x3
    80002014:	12050513          	addi	a0,a0,288 # 80005130 <CONSOLE_STATUS+0x120>
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	3c8080e7          	jalr	968(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(sz);
    80002020:	00090993          	mv	s3,s2
    80002024:	00090513          	mv	a0,s2
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	428080e7          	jalr	1064(ra) # 80002450 <_ZN5Riscv12printIntegerEm>
        for(int i = 0 ; i < num;i+=2)
    80002030:	00000493          	li	s1,0
    80002034:	06300793          	li	a5,99
    80002038:	0a97ca63          	blt	a5,s1,800020ec <_Z13stressTestingv+0x170>
            Riscv::printString("i : ");
    8000203c:	00003517          	auipc	a0,0x3
    80002040:	05c50513          	addi	a0,a0,92 # 80005098 <CONSOLE_STATUS+0x88>
    80002044:	00000097          	auipc	ra,0x0
    80002048:	39c080e7          	jalr	924(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    8000204c:	00048513          	mv	a0,s1
    80002050:	00000097          	auipc	ra,0x0
    80002054:	400080e7          	jalr	1024(ra) # 80002450 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80002058:	00003517          	auipc	a0,0x3
    8000205c:	0e050513          	addi	a0,a0,224 # 80005138 <CONSOLE_STATUS+0x128>
    80002060:	00000097          	auipc	ra,0x0
    80002064:	380080e7          	jalr	896(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80002068:	00349793          	slli	a5,s1,0x3
    8000206c:	fd040713          	addi	a4,s0,-48
    80002070:	00f707b3          	add	a5,a4,a5
    80002074:	ce07b503          	ld	a0,-800(a5)
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	1d4080e7          	jalr	468(ra) # 8000124c <mem_free>
            if(retval != 0)
    80002080:	04051263          	bnez	a0,800020c4 <_Z13stressTestingv+0x148>
            Riscv::printString("alloc\n");
    80002084:	00003517          	auipc	a0,0x3
    80002088:	0bc50513          	addi	a0,a0,188 # 80005140 <CONSOLE_STATUS+0x130>
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	354080e7          	jalr	852(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz/2);
    80002094:	01f9551b          	srliw	a0,s2,0x1f
    80002098:	0125053b          	addw	a0,a0,s2
    8000209c:	4015551b          	sraiw	a0,a0,0x1
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	17c080e7          	jalr	380(ra) # 8000121c <mem_alloc>
    800020a8:	00349793          	slli	a5,s1,0x3
    800020ac:	fd040713          	addi	a4,s0,-48
    800020b0:	00f707b3          	add	a5,a4,a5
    800020b4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    800020b8:	02050063          	beqz	a0,800020d8 <_Z13stressTestingv+0x15c>
        for(int i = 0 ; i < num;i+=2)
    800020bc:	0024849b          	addiw	s1,s1,2
    800020c0:	f75ff06f          	j	80002034 <_Z13stressTestingv+0xb8>
                Riscv::printString("not OK\n");
    800020c4:	00003517          	auipc	a0,0x3
    800020c8:	01450513          	addi	a0,a0,20 # 800050d8 <CONSOLE_STATUS+0xc8>
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	314080e7          	jalr	788(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
                return;
    800020d4:	f19ff06f          	j	80001fec <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    800020d8:	00003517          	auipc	a0,0x3
    800020dc:	07050513          	addi	a0,a0,112 # 80005148 <CONSOLE_STATUS+0x138>
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	300080e7          	jalr	768(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
                return;
    800020e8:	f05ff06f          	j	80001fec <_Z13stressTestingv+0x70>
        for(int i = 1 ; i < num;i+=2)
    800020ec:	00100493          	li	s1,1
    800020f0:	06300793          	li	a5,99
    800020f4:	0a97c663          	blt	a5,s1,800021a0 <_Z13stressTestingv+0x224>
            Riscv::printString("i : ");
    800020f8:	00003517          	auipc	a0,0x3
    800020fc:	fa050513          	addi	a0,a0,-96 # 80005098 <CONSOLE_STATUS+0x88>
    80002100:	00000097          	auipc	ra,0x0
    80002104:	2e0080e7          	jalr	736(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80002108:	00048513          	mv	a0,s1
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	344080e7          	jalr	836(ra) # 80002450 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80002114:	00003517          	auipc	a0,0x3
    80002118:	02450513          	addi	a0,a0,36 # 80005138 <CONSOLE_STATUS+0x128>
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	2c4080e7          	jalr	708(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80002124:	00349793          	slli	a5,s1,0x3
    80002128:	fd040713          	addi	a4,s0,-48
    8000212c:	00f707b3          	add	a5,a4,a5
    80002130:	ce07b503          	ld	a0,-800(a5)
    80002134:	fffff097          	auipc	ra,0xfffff
    80002138:	118080e7          	jalr	280(ra) # 8000124c <mem_free>
            if(retval != 0)
    8000213c:	02051e63          	bnez	a0,80002178 <_Z13stressTestingv+0x1fc>
            Riscv::printString("alloc\n");
    80002140:	00003517          	auipc	a0,0x3
    80002144:	00050513          	mv	a0,a0
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	298080e7          	jalr	664(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz);
    80002150:	00098513          	mv	a0,s3
    80002154:	fffff097          	auipc	ra,0xfffff
    80002158:	0c8080e7          	jalr	200(ra) # 8000121c <mem_alloc>
    8000215c:	00349793          	slli	a5,s1,0x3
    80002160:	fd040713          	addi	a4,s0,-48
    80002164:	00f707b3          	add	a5,a4,a5
    80002168:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    8000216c:	02050063          	beqz	a0,8000218c <_Z13stressTestingv+0x210>
        for(int i = 1 ; i < num;i+=2)
    80002170:	0024849b          	addiw	s1,s1,2
    80002174:	f7dff06f          	j	800020f0 <_Z13stressTestingv+0x174>
                Riscv::printString("not OK\n");
    80002178:	00003517          	auipc	a0,0x3
    8000217c:	f6050513          	addi	a0,a0,-160 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002180:	00000097          	auipc	ra,0x0
    80002184:	260080e7          	jalr	608(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
                return;
    80002188:	e65ff06f          	j	80001fec <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    8000218c:	00003517          	auipc	a0,0x3
    80002190:	fbc50513          	addi	a0,a0,-68 # 80005148 <CONSOLE_STATUS+0x138>
    80002194:	00000097          	auipc	ra,0x0
    80002198:	24c080e7          	jalr	588(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
                return;
    8000219c:	e51ff06f          	j	80001fec <_Z13stressTestingv+0x70>
        sz-=10;
    800021a0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    800021a4:	e69ff06f          	j	8000200c <_Z13stressTestingv+0x90>
    Riscv::printString("OK\n");
    800021a8:	00003517          	auipc	a0,0x3
    800021ac:	f3850513          	addi	a0,a0,-200 # 800050e0 <CONSOLE_STATUS+0xd0>
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	230080e7          	jalr	560(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
    800021b8:	e35ff06f          	j	80001fec <_Z13stressTestingv+0x70>

00000000800021bc <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00113423          	sd	ra,8(sp)
    800021c4:	00813023          	sd	s0,0(sp)
    800021c8:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
    stressTesting();
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	db0080e7          	jalr	-592(ra) # 80001f7c <_Z13stressTestingv>
}
    800021d4:	00813083          	ld	ra,8(sp)
    800021d8:	00013403          	ld	s0,0(sp)
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret

00000000800021e4 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	028080e7          	jalr	40(ra) # 8000121c <mem_alloc>
}
    800021fc:	00813083          	ld	ra,8(sp)
    80002200:	00013403          	ld	s0,0(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <_ZdlPv>:

void operator delete(void * p)
{
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00113423          	sd	ra,8(sp)
    80002214:	00813023          	sd	s0,0(sp)
    80002218:	01010413          	addi	s0,sp,16
   mem_free(p);
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	030080e7          	jalr	48(ra) # 8000124c <mem_free>
}
    80002224:	00813083          	ld	ra,8(sp)
    80002228:	00013403          	ld	s0,0(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <_ZN6Thread5startEv>:

//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16

}
    80002240:	00813403          	ld	s0,8(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret

000000008000224c <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00113423          	sd	ra,8(sp)
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	09c080e7          	jalr	156(ra) # 800012f8 <thread_dispatch>
}
    80002264:	00813083          	ld	ra,8(sp)
    80002268:	00013403          	ld	s0,0(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00113423          	sd	ra,8(sp)
    8000227c:	00813023          	sd	s0,0(sp)
    80002280:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	240080e7          	jalr	576(ra) # 800014c4 <_ZN3PCB5sleepEm>
}
    8000228c:	00813083          	ld	ra,8(sp)
    80002290:	00013403          	ld	s0,0(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00113423          	sd	ra,8(sp)
    800022a4:	00813023          	sd	s0,0(sp)
    800022a8:	01010413          	addi	s0,sp,16
    int retval = thread_create((void**)&myHandle, body, args);
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	fcc080e7          	jalr	-52(ra) # 80001278 <thread_create>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16

}
    800022d0:	00813403          	ld	s0,8(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_ZN9Semaphore4waitEv>:

//Semaphore

void Semaphore::wait() {
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00113423          	sd	ra,8(sp)
    800022e4:	00813023          	sd	s0,0(sp)
    800022e8:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    800022ec:	00053503          	ld	a0,0(a0)
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	0b4080e7          	jalr	180(ra) # 800013a4 <sem_wait>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800022f8:	00813083          	ld	ra,8(sp)
    800022fc:	00013403          	ld	s0,0(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret

0000000080002308 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00113423          	sd	ra,8(sp)
    80002310:	00813023          	sd	s0,0(sp)
    80002314:	01010413          	addi	s0,sp,16
    int retval = sem_open((void**)&myHandle, init);
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	028080e7          	jalr	40(ra) # 80001340 <sem_open>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80002320:	00813083          	ld	ra,8(sp)
    80002324:	00013403          	ld	s0,0(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00113423          	sd	ra,8(sp)
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    80002340:	00053503          	ld	a0,0(a0)
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	08c080e7          	jalr	140(ra) # 800013d0 <sem_signal>
    {
        //todo
        //what then
    }

}
    8000234c:	00813083          	ld	ra,8(sp)
    80002350:	00013403          	ld	s0,0(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZN5Riscv10initSystemEv>:
#include "../h/PCB.h"
#include "../lib/console.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00813423          	sd	s0,8(sp)
    80002364:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002368:	00004797          	auipc	a5,0x4
    8000236c:	bf07b783          	ld	a5,-1040(a5) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002370:	10579073          	csrw	stvec,a5
    //todo
    //no need for comment, but sync context switch
    //should be tested, before hardware interrupts are enabled
    //Riscv::enableInterrupts();
}
    80002374:	00813403          	ld	s0,8(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <_ZN5Riscv16enableInterruptsEv>:

void Riscv::enableInterrupts() {
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00813423          	sd	s0,8(sp)
    80002388:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000238c:	00200793          	li	a5,2
    80002390:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002394:	00813403          	ld	s0,8(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00813423          	sd	s0,8(sp)
    800023a8:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800023ac:	00200793          	li	a5,2
    800023b0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800023b4:	00813403          	ld	s0,8(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800023cc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800023d0:	10200073          	sret
}
    800023d4:	00813403          	ld	s0,8(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret

00000000800023e0 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    800023e0:	fd010113          	addi	sp,sp,-48
    800023e4:	02113423          	sd	ra,40(sp)
    800023e8:	02813023          	sd	s0,32(sp)
    800023ec:	00913c23          	sd	s1,24(sp)
    800023f0:	01213823          	sd	s2,16(sp)
    800023f4:	03010413          	addi	s0,sp,48
    800023f8:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800023fc:	100027f3          	csrr	a5,sstatus
    80002400:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002404:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002408:	00200793          	li	a5,2
    8000240c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80002410:	0004c503          	lbu	a0,0(s1)
    80002414:	00050a63          	beqz	a0,80002428 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80002418:	00003097          	auipc	ra,0x3
    8000241c:	954080e7          	jalr	-1708(ra) # 80004d6c <__putc>
        string++;
    80002420:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002424:	fedff06f          	j	80002410 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002428:	0009091b          	sext.w	s2,s2
    8000242c:	00297913          	andi	s2,s2,2
    80002430:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002434:	10092073          	csrs	sstatus,s2
}
    80002438:	02813083          	ld	ra,40(sp)
    8000243c:	02013403          	ld	s0,32(sp)
    80002440:	01813483          	ld	s1,24(sp)
    80002444:	01013903          	ld	s2,16(sp)
    80002448:	03010113          	addi	sp,sp,48
    8000244c:	00008067          	ret

0000000080002450 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002450:	fc010113          	addi	sp,sp,-64
    80002454:	02113c23          	sd	ra,56(sp)
    80002458:	02813823          	sd	s0,48(sp)
    8000245c:	02913423          	sd	s1,40(sp)
    80002460:	03213023          	sd	s2,32(sp)
    80002464:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002468:	100027f3          	csrr	a5,sstatus
    8000246c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002470:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002474:	00200793          	li	a5,2
    80002478:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    8000247c:	0005051b          	sext.w	a0,a0

    i = 0;
    80002480:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002484:	00a00613          	li	a2,10
    80002488:	02c5773b          	remuw	a4,a0,a2
    8000248c:	02071693          	slli	a3,a4,0x20
    80002490:	0206d693          	srli	a3,a3,0x20
    80002494:	00003717          	auipc	a4,0x3
    80002498:	ccc70713          	addi	a4,a4,-820 # 80005160 <_ZZN5Riscv12printIntegerEmE6digits>
    8000249c:	00d70733          	add	a4,a4,a3
    800024a0:	00074703          	lbu	a4,0(a4)
    800024a4:	fe040693          	addi	a3,s0,-32
    800024a8:	009687b3          	add	a5,a3,s1
    800024ac:	0014849b          	addiw	s1,s1,1
    800024b0:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800024b4:	0005071b          	sext.w	a4,a0
    800024b8:	02c5553b          	divuw	a0,a0,a2
    800024bc:	00900793          	li	a5,9
    800024c0:	fce7e2e3          	bltu	a5,a4,80002484 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    800024c4:	fff4849b          	addiw	s1,s1,-1
    800024c8:	0004ce63          	bltz	s1,800024e4 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800024cc:	fe040793          	addi	a5,s0,-32
    800024d0:	009787b3          	add	a5,a5,s1
    800024d4:	ff07c503          	lbu	a0,-16(a5)
    800024d8:	00003097          	auipc	ra,0x3
    800024dc:	894080e7          	jalr	-1900(ra) # 80004d6c <__putc>
    800024e0:	fe5ff06f          	j	800024c4 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    800024e4:	00a00513          	li	a0,10
    800024e8:	00003097          	auipc	ra,0x3
    800024ec:	884080e7          	jalr	-1916(ra) # 80004d6c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800024f0:	0009091b          	sext.w	s2,s2
    800024f4:	00297913          	andi	s2,s2,2
    800024f8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800024fc:	10092073          	csrs	sstatus,s2
}
    80002500:	03813083          	ld	ra,56(sp)
    80002504:	03013403          	ld	s0,48(sp)
    80002508:	02813483          	ld	s1,40(sp)
    8000250c:	02013903          	ld	s2,32(sp)
    80002510:	04010113          	addi	sp,sp,64
    80002514:	00008067          	ret

0000000080002518 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002518:	f9010113          	addi	sp,sp,-112
    8000251c:	06113423          	sd	ra,104(sp)
    80002520:	06813023          	sd	s0,96(sp)
    80002524:	04913c23          	sd	s1,88(sp)
    80002528:	05213823          	sd	s2,80(sp)
    8000252c:	05313423          	sd	s3,72(sp)
    80002530:	05413023          	sd	s4,64(sp)
    80002534:	03513c23          	sd	s5,56(sp)
    80002538:	03613823          	sd	s6,48(sp)
    8000253c:	07010413          	addi	s0,sp,112

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002540:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002544:	142027f3          	csrr	a5,scause
    80002548:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    8000254c:	f9843703          	ld	a4,-104(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    80002550:	00900793          	li	a5,9
    80002554:	0af70e63          	beq	a4,a5,80002610 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    80002558:	fff00793          	li	a5,-1
    8000255c:	03f79793          	slli	a5,a5,0x3f
    80002560:	00178793          	addi	a5,a5,1
    80002564:	04f71263          	bne	a4,a5,800025a8 <_ZN5Riscv20handleSupervisorTrapEv+0x90>

        case timerInterrupt:

            Riscv::printString("timerInterrupt\n");
    80002568:	00003517          	auipc	a0,0x3
    8000256c:	be850513          	addi	a0,a0,-1048 # 80005150 <CONSOLE_STATUS+0x140>
    80002570:	00000097          	auipc	ra,0x0
    80002574:	e70080e7          	jalr	-400(ra) # 800023e0 <_ZN5Riscv11printStringEPKc>
            PCB::timeSliceCounter++;
    80002578:	00004717          	auipc	a4,0x4
    8000257c:	9e873703          	ld	a4,-1560(a4) # 80005f60 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002580:	00073783          	ld	a5,0(a4)
    80002584:	00178793          	addi	a5,a5,1
    80002588:	00f73023          	sd	a5,0(a4)
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    8000258c:	00004717          	auipc	a4,0x4
    80002590:	9e473703          	ld	a4,-1564(a4) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002594:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() { return timeSlice;}
    80002598:	00073703          	ld	a4,0(a4)
    8000259c:	02e7fe63          	bgeu	a5,a4,800025d8 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800025a0:	00200793          	li	a5,2
    800025a4:	1447b073          	csrc	sip,a5

            return;
            //break;
    }

    console_handler();
    800025a8:	00003097          	auipc	ra,0x3
    800025ac:	838080e7          	jalr	-1992(ra) # 80004de0 <console_handler>
}
    800025b0:	06813083          	ld	ra,104(sp)
    800025b4:	06013403          	ld	s0,96(sp)
    800025b8:	05813483          	ld	s1,88(sp)
    800025bc:	05013903          	ld	s2,80(sp)
    800025c0:	04813983          	ld	s3,72(sp)
    800025c4:	04013a03          	ld	s4,64(sp)
    800025c8:	03813a83          	ld	s5,56(sp)
    800025cc:	03013b03          	ld	s6,48(sp)
    800025d0:	07010113          	addi	sp,sp,112
    800025d4:	00008067          	ret
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800025d8:	141027f3          	csrr	a5,sepc
    800025dc:	faf43423          	sd	a5,-88(s0)
    return sepc;
    800025e0:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800025e4:	100027f3          	csrr	a5,sstatus
    800025e8:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    800025ec:	fa043903          	ld	s2,-96(s0)
                PCB::timeSliceCounter = 0;
    800025f0:	00004797          	auipc	a5,0x4
    800025f4:	9707b783          	ld	a5,-1680(a5) # 80005f60 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025f8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	f08080e7          	jalr	-248(ra) # 80001504 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002604:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002608:	14149073          	csrw	sepc,s1
}
    8000260c:	f95ff06f          	j	800025a0 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002610:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002614:	14102773          	csrr	a4,sepc
    80002618:	fae43823          	sd	a4,-80(s0)
    return sepc;
    8000261c:	fb043483          	ld	s1,-80(s0)
            sepc+=4;
    80002620:	00448493          	addi	s1,s1,4
            if(operation == MemoryAllocator::MEM_ALLOC) {
    80002624:	00100713          	li	a4,1
    80002628:	02e78263          	beq	a5,a4,8000264c <_ZN5Riscv20handleSupervisorTrapEv+0x134>
            else if(operation == MemoryAllocator::MEM_FREE) {
    8000262c:	00200713          	li	a4,2
    80002630:	02e78a63          	beq	a5,a4,80002664 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
            else if(operation == PCB::THREAD_CREATE)
    80002634:	01100713          	li	a4,17
    80002638:	04e78063          	beq	a5,a4,80002678 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            else if(operation == PCB::THREAD_DISPATCH)
    8000263c:	01300713          	li	a4,19
    80002640:	08e78263          	beq	a5,a4,800026c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002644:	14149073          	csrw	sepc,s1
}
    80002648:	f69ff06f          	j	800025b0 <_ZN5Riscv20handleSupervisorTrapEv+0x98>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    8000264c:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002650:	00651513          	slli	a0,a0,0x6
    80002654:	00000097          	auipc	ra,0x0
    80002658:	468080e7          	jalr	1128(ra) # 80002abc <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    8000265c:	00050513          	mv	a0,a0
    80002660:	fe5ff06f          	j	80002644 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002664:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	47c080e7          	jalr	1148(ra) # 80002ae4 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002670:	00050513          	mv	a0,a0
    80002674:	fd1ff06f          	j	80002644 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002678:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000267c:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002680:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 1UL);
    80002684:	04000513          	li	a0,64
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	f20080e7          	jalr	-224(ra) # 800015a8 <_ZN3PCBnwEm>
    80002690:	00050993          	mv	s3,a0
    80002694:	00100713          	li	a4,1
    80002698:	00090693          	mv	a3,s2
    8000269c:	000b0613          	mv	a2,s6
    800026a0:	000a8593          	mv	a1,s5
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	dd4080e7          	jalr	-556(ra) # 80001478 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    800026ac:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    800026b0:	00098663          	beqz	s3,800026bc <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
                    __asm__ volatile("li a0, 0");
    800026b4:	00000513          	li	a0,0
    800026b8:	f8dff06f          	j	80002644 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800026bc:	fff00513          	li	a0,-1
    800026c0:	f85ff06f          	j	80002644 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800026c4:	100027f3          	csrr	a5,sstatus
    800026c8:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800026cc:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    800026d0:	00004797          	auipc	a5,0x4
    800026d4:	8907b783          	ld	a5,-1904(a5) # 80005f60 <_GLOBAL_OFFSET_TABLE_+0x18>
    800026d8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800026dc:	fffff097          	auipc	ra,0xfffff
    800026e0:	e28080e7          	jalr	-472(ra) # 80001504 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800026e4:	10091073          	csrw	sstatus,s2
}
    800026e8:	f5dff06f          	j	80002644 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    800026ec:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 1UL);
    800026f0:	00098513          	mv	a0,s3
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	edc080e7          	jalr	-292(ra) # 800015d0 <_ZN3PCBdlEPv>
    800026fc:	00048513          	mv	a0,s1
    80002700:	00005097          	auipc	ra,0x5
    80002704:	9b8080e7          	jalr	-1608(ra) # 800070b8 <_Unwind_Resume>

0000000080002708 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002708:	ff010113          	addi	sp,sp,-16
    8000270c:	00813423          	sd	s0,8(sp)
    80002710:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002714:	00004717          	auipc	a4,0x4
    80002718:	8c472703          	lw	a4,-1852(a4) # 80005fd8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000271c:	00100793          	li	a5,1
    80002720:	04f70263          	beq	a4,a5,80002764 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002724:	00004797          	auipc	a5,0x4
    80002728:	8b478793          	addi	a5,a5,-1868 # 80005fd8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000272c:	00100713          	li	a4,1
    80002730:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002734:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002738:	00004717          	auipc	a4,0x4
    8000273c:	81873703          	ld	a4,-2024(a4) # 80005f50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002740:	00073703          	ld	a4,0(a4)
    80002744:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002748:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    8000274c:	00004797          	auipc	a5,0x4
    80002750:	82c7b783          	ld	a5,-2004(a5) # 80005f78 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002754:	0007b783          	ld	a5,0(a5)
    80002758:	40e787b3          	sub	a5,a5,a4
    8000275c:	ff178793          	addi	a5,a5,-15
    80002760:	00f73023          	sd	a5,0(a4)
}
    80002764:	00813403          	ld	s0,8(sp)
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00008067          	ret

0000000080002770 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002770:	fe010113          	addi	sp,sp,-32
    80002774:	00113c23          	sd	ra,24(sp)
    80002778:	00813823          	sd	s0,16(sp)
    8000277c:	00913423          	sd	s1,8(sp)
    80002780:	01213023          	sd	s2,0(sp)
    80002784:	02010413          	addi	s0,sp,32
    80002788:	00050493          	mv	s1,a0
    8000278c:	00058913          	mv	s2,a1

    initMemory();
    80002790:	00000097          	auipc	ra,0x0
    80002794:	f78080e7          	jalr	-136(ra) # 80002708 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002798:	00004797          	auipc	a5,0x4
    8000279c:	8487b783          	ld	a5,-1976(a5) # 80005fe0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800027a0:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800027a4:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800027a8:	00000713          	li	a4,0
    while(curr != 0)
    800027ac:	00078c63          	beqz	a5,800027c4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800027b0:	00f4e863          	bltu	s1,a5,800027c0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800027b4:	00078713          	mv	a4,a5
        curr = curr->next;
    800027b8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800027bc:	ff1ff06f          	j	800027ac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800027c0:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800027c4:	02070063          	beqz	a4,800027e4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800027c8:	00973423          	sd	s1,8(a4)
}
    800027cc:	01813083          	ld	ra,24(sp)
    800027d0:	01013403          	ld	s0,16(sp)
    800027d4:	00813483          	ld	s1,8(sp)
    800027d8:	00013903          	ld	s2,0(sp)
    800027dc:	02010113          	addi	sp,sp,32
    800027e0:	00008067          	ret
        headAllocated = newAllocated;
    800027e4:	00003797          	auipc	a5,0x3
    800027e8:	7e97be23          	sd	s1,2044(a5) # 80005fe0 <_ZN15MemoryAllocator13headAllocatedE>
    800027ec:	fe1ff06f          	j	800027cc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

00000000800027f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800027f0:	fe010113          	addi	sp,sp,-32
    800027f4:	00113c23          	sd	ra,24(sp)
    800027f8:	00813823          	sd	s0,16(sp)
    800027fc:	00913423          	sd	s1,8(sp)
    80002800:	01213023          	sd	s2,0(sp)
    80002804:	02010413          	addi	s0,sp,32
    80002808:	00050913          	mv	s2,a0
    initMemory();
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	efc080e7          	jalr	-260(ra) # 80002708 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002814:	00003497          	auipc	s1,0x3
    80002818:	7d44b483          	ld	s1,2004(s1) # 80005fe8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    8000281c:	00000713          	li	a4,0
    while(curr != 0) {
    80002820:	0a048863          	beqz	s1,800028d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>

        if(curr->size >= size) {
    80002824:	0004b783          	ld	a5,0(s1)
    80002828:	0127f863          	bgeu	a5,s2,80002838 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    8000282c:	00048713          	mv	a4,s1
        curr = curr->next;
    80002830:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80002834:	fedff06f          	j	80002820 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80002838:	01090693          	addi	a3,s2,16
    8000283c:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80002840:	00003617          	auipc	a2,0x3
    80002844:	73863603          	ld	a2,1848(a2) # 80005f78 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002848:	00063603          	ld	a2,0(a2)
    8000284c:	04d66c63          	bltu	a2,a3,800028a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80002850:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80002854:	01000613          	li	a2,16
    80002858:	02f67663          	bgeu	a2,a5,80002884 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    8000285c:	0084b603          	ld	a2,8(s1)
    80002860:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80002864:	ff078793          	addi	a5,a5,-16
    80002868:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    8000286c:	00070663          	beqz	a4,80002878 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80002870:	00d73423          	sd	a3,8(a4)
    80002874:	0380006f          	j	800028ac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80002878:	00003797          	auipc	a5,0x3
    8000287c:	76d7b823          	sd	a3,1904(a5) # 80005fe8 <_ZN15MemoryAllocator8headFreeE>
    80002880:	02c0006f          	j	800028ac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80002884:	00070863          	beqz	a4,80002894 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80002888:	0084b783          	ld	a5,8(s1)
    8000288c:	00f73423          	sd	a5,8(a4)
    80002890:	01c0006f          	j	800028ac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80002894:	0084b783          	ld	a5,8(s1)
    80002898:	00003717          	auipc	a4,0x3
    8000289c:	74f73823          	sd	a5,1872(a4) # 80005fe8 <_ZN15MemoryAllocator8headFreeE>
    800028a0:	00c0006f          	j	800028ac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    800028a4:	02070063          	beqz	a4,800028c4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800028a8:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800028ac:	00090593          	mv	a1,s2
    800028b0:	00048513          	mv	a0,s1
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	ebc080e7          	jalr	-324(ra) # 80002770 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800028bc:	01048513          	addi	a0,s1,16
            break;
    800028c0:	0140006f          	j	800028d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800028c4:	00003797          	auipc	a5,0x3
    800028c8:	7207b223          	sd	zero,1828(a5) # 80005fe8 <_ZN15MemoryAllocator8headFreeE>
    800028cc:	fe1ff06f          	j	800028ac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800028d0:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	00013903          	ld	s2,0(sp)
    800028e4:	02010113          	addi	sp,sp,32
    800028e8:	00008067          	ret

00000000800028ec <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    800028ec:	ff010113          	addi	sp,sp,-16
    800028f0:	00113423          	sd	ra,8(sp)
    800028f4:	00813023          	sd	s0,0(sp)
    800028f8:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	ef4080e7          	jalr	-268(ra) # 800027f0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80002904:	00813083          	ld	ra,8(sp)
    80002908:	00013403          	ld	s0,0(sp)
    8000290c:	01010113          	addi	sp,sp,16
    80002910:	00008067          	ret

0000000080002914 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80002914:	fe010113          	addi	sp,sp,-32
    80002918:	00113c23          	sd	ra,24(sp)
    8000291c:	00813823          	sd	s0,16(sp)
    80002920:	00913423          	sd	s1,8(sp)
    80002924:	01213023          	sd	s2,0(sp)
    80002928:	02010413          	addi	s0,sp,32
    8000292c:	00050493          	mv	s1,a0
    80002930:	00058913          	mv	s2,a1
    initMemory();
    80002934:	00000097          	auipc	ra,0x0
    80002938:	dd4080e7          	jalr	-556(ra) # 80002708 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000293c:	00003797          	auipc	a5,0x3
    80002940:	6ac7b783          	ld	a5,1708(a5) # 80005fe8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80002944:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80002948:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    8000294c:	00000713          	li	a4,0
    while(curr != 0)
    80002950:	00078c63          	beqz	a5,80002968 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002954:	00f4e863          	bltu	s1,a5,80002964 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80002958:	00078713          	mv	a4,a5
        curr = curr->next;
    8000295c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002960:	ff1ff06f          	j	80002950 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80002964:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002968:	04070663          	beqz	a4,800029b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    8000296c:	00973423          	sd	s1,8(a4)

    //todo
    //kad proradi kfree odkomentarisi ovo
    //test it few times
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80002970:	0084b783          	ld	a5,8(s1)
    80002974:	00078a63          	beqz	a5,80002988 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80002978:	0004b603          	ld	a2,0(s1)
    8000297c:	01060693          	addi	a3,a2,16
    80002980:	00d486b3          	add	a3,s1,a3
    80002984:	02d78e63          	beq	a5,a3,800029c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80002988:	00070a63          	beqz	a4,8000299c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    8000298c:	00073683          	ld	a3,0(a4)
    80002990:	01068793          	addi	a5,a3,16
    80002994:	00f707b3          	add	a5,a4,a5
    80002998:	04978263          	beq	a5,s1,800029dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    8000299c:	01813083          	ld	ra,24(sp)
    800029a0:	01013403          	ld	s0,16(sp)
    800029a4:	00813483          	ld	s1,8(sp)
    800029a8:	00013903          	ld	s2,0(sp)
    800029ac:	02010113          	addi	sp,sp,32
    800029b0:	00008067          	ret
        headFree = newSegment;
    800029b4:	00003797          	auipc	a5,0x3
    800029b8:	6297ba23          	sd	s1,1588(a5) # 80005fe8 <_ZN15MemoryAllocator8headFreeE>
    800029bc:	fb5ff06f          	j	80002970 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800029c0:	0007b683          	ld	a3,0(a5)
    800029c4:	00d60633          	add	a2,a2,a3
    800029c8:	01060613          	addi	a2,a2,16
    800029cc:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800029d0:	0087b783          	ld	a5,8(a5)
    800029d4:	00f4b423          	sd	a5,8(s1)
    800029d8:	fb1ff06f          	j	80002988 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800029dc:	0004b783          	ld	a5,0(s1)
    800029e0:	00f686b3          	add	a3,a3,a5
    800029e4:	01068693          	addi	a3,a3,16
    800029e8:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800029ec:	0084b783          	ld	a5,8(s1)
    800029f0:	00f73423          	sd	a5,8(a4)
}
    800029f4:	fa9ff06f          	j	8000299c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

00000000800029f8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800029f8:	fe010113          	addi	sp,sp,-32
    800029fc:	00113c23          	sd	ra,24(sp)
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	01213023          	sd	s2,0(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00050913          	mv	s2,a0
    initMemory();
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	cf4080e7          	jalr	-780(ra) # 80002708 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80002a1c:	00003497          	auipc	s1,0x3
    80002a20:	5c44b483          	ld	s1,1476(s1) # 80005fe0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80002a24:	00000713          	li	a4,0
    while(curr != 0)
    80002a28:	02048a63          	beqz	s1,80002a5c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80002a2c:	01048793          	addi	a5,s1,16
    80002a30:	01278863          	beq	a5,s2,80002a40 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80002a34:	00048713          	mv	a4,s1
        curr = curr->next;
    80002a38:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002a3c:	fedff06f          	j	80002a28 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80002a40:	02070e63          	beqz	a4,80002a7c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80002a44:	0084b783          	ld	a5,8(s1)
    80002a48:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80002a4c:	0004b583          	ld	a1,0(s1)
    80002a50:	00048513          	mv	a0,s1
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	ec0080e7          	jalr	-320(ra) # 80002914 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80002a5c:	02048863          	beqz	s1,80002a8c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80002a60:	00000513          	li	a0,0
    else
        return 1;
}
    80002a64:	01813083          	ld	ra,24(sp)
    80002a68:	01013403          	ld	s0,16(sp)
    80002a6c:	00813483          	ld	s1,8(sp)
    80002a70:	00013903          	ld	s2,0(sp)
    80002a74:	02010113          	addi	sp,sp,32
    80002a78:	00008067          	ret
                headAllocated = curr->next;
    80002a7c:	0084b783          	ld	a5,8(s1)
    80002a80:	00003717          	auipc	a4,0x3
    80002a84:	56f73023          	sd	a5,1376(a4) # 80005fe0 <_ZN15MemoryAllocator13headAllocatedE>
    80002a88:	fc5ff06f          	j	80002a4c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80002a8c:	00100513          	li	a0,1
    80002a90:	fd5ff06f          	j	80002a64 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080002a94 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00113423          	sd	ra,8(sp)
    80002a9c:	00813023          	sd	s0,0(sp)
    80002aa0:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	f54080e7          	jalr	-172(ra) # 800029f8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80002aac:	00813083          	ld	ra,8(sp)
    80002ab0:	00013403          	ld	s0,0(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret

0000000080002abc <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00113423          	sd	ra,8(sp)
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80002acc:	00000097          	auipc	ra,0x0
    80002ad0:	e20080e7          	jalr	-480(ra) # 800028ec <_ZN15MemoryAllocator9mem_allocEm>
}
    80002ad4:	00813083          	ld	ra,8(sp)
    80002ad8:	00013403          	ld	s0,0(sp)
    80002adc:	01010113          	addi	sp,sp,16
    80002ae0:	00008067          	ret

0000000080002ae4 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80002ae4:	ff010113          	addi	sp,sp,-16
    80002ae8:	00113423          	sd	ra,8(sp)
    80002aec:	00813023          	sd	s0,0(sp)
    80002af0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	fa0080e7          	jalr	-96(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
    80002afc:	00813083          	ld	ra,8(sp)
    80002b00:	00013403          	ld	s0,0(sp)
    80002b04:	01010113          	addi	sp,sp,16
    80002b08:	00008067          	ret

0000000080002b0c <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    80002b0c:	fe010113          	addi	sp,sp,-32
    80002b10:	00113c23          	sd	ra,24(sp)
    80002b14:	00813823          	sd	s0,16(sp)
    80002b18:	00913423          	sd	s1,8(sp)
    80002b1c:	01213023          	sd	s2,0(sp)
    80002b20:	02010413          	addi	s0,sp,32
    80002b24:	00050493          	mv	s1,a0
    80002b28:	00058913          	mv	s2,a1
    80002b2c:	00850513          	addi	a0,a0,8
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	bbc080e7          	jalr	-1092(ra) # 800016ec <_ZN5QueueC1Ev>
    this->val = this->beginVal = val;
    80002b38:	0124a223          	sw	s2,4(s1)
    80002b3c:	0124a023          	sw	s2,0(s1)
}
    80002b40:	01813083          	ld	ra,24(sp)
    80002b44:	01013403          	ld	s0,16(sp)
    80002b48:	00813483          	ld	s1,8(sp)
    80002b4c:	00013903          	ld	s2,0(sp)
    80002b50:	02010113          	addi	sp,sp,32
    80002b54:	00008067          	ret

0000000080002b58 <_ZN10KSemaphoreD1Ev>:
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00113423          	sd	ra,8(sp)
    80002b60:	00813023          	sd	s0,0(sp)
    80002b64:	01010413          	addi	s0,sp,16
    80002b68:	00850513          	addi	a0,a0,8
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	ba0080e7          	jalr	-1120(ra) # 8000170c <_ZN5QueueD1Ev>
    //todo
}
    80002b74:	00813083          	ld	ra,8(sp)
    80002b78:	00013403          	ld	s0,0(sp)
    80002b7c:	01010113          	addi	sp,sp,16
    80002b80:	00008067          	ret

0000000080002b84 <_ZN10KSemaphore5blockEv>:

//todo
void KSemaphore::block() {
    80002b84:	ff010113          	addi	sp,sp,-16
    80002b88:	00113423          	sd	ra,8(sp)
    80002b8c:	00813023          	sd	s0,0(sp)
    80002b90:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80002b94:	00003797          	auipc	a5,0x3
    80002b98:	3dc7b783          	ld	a5,988(a5) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b9c:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80002ba0:	00200713          	li	a4,2
    80002ba4:	00e7ac23          	sw	a4,24(a5)
    PCB::dispatch();
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	95c080e7          	jalr	-1700(ra) # 80001504 <_ZN3PCB8dispatchEv>
}
    80002bb0:	00813083          	ld	ra,8(sp)
    80002bb4:	00013403          	ld	s0,0(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret

0000000080002bc0 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80002bc0:	00052783          	lw	a5,0(a0)
    80002bc4:	fff7879b          	addiw	a5,a5,-1
    80002bc8:	00f52023          	sw	a5,0(a0)
    80002bcc:	02079713          	slli	a4,a5,0x20
    80002bd0:	00074463          	bltz	a4,80002bd8 <_ZN10KSemaphore4waitEv+0x18>
    80002bd4:	00008067          	ret
void KSemaphore::wait() {
    80002bd8:	ff010113          	addi	sp,sp,-16
    80002bdc:	00113423          	sd	ra,8(sp)
    80002be0:	00813023          	sd	s0,0(sp)
    80002be4:	01010413          	addi	s0,sp,16
        block();
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	f9c080e7          	jalr	-100(ra) # 80002b84 <_ZN10KSemaphore5blockEv>
}
    80002bf0:	00813083          	ld	ra,8(sp)
    80002bf4:	00013403          	ld	s0,0(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret

0000000080002c00 <_ZN10KSemaphore7unblockEv>:

//todo
void KSemaphore::unblock() {
    80002c00:	fe010113          	addi	sp,sp,-32
    80002c04:	00113c23          	sd	ra,24(sp)
    80002c08:	00813823          	sd	s0,16(sp)
    80002c0c:	00913423          	sd	s1,8(sp)
    80002c10:	01213023          	sd	s2,0(sp)
    80002c14:	02010413          	addi	s0,sp,32
    PCB* fr = queueBlocked.front();
    80002c18:	00850913          	addi	s2,a0,8
    80002c1c:	00090513          	mv	a0,s2
    80002c20:	fffff097          	auipc	ra,0xfffff
    80002c24:	aa8080e7          	jalr	-1368(ra) # 800016c8 <_ZN5Queue5frontEv>
    80002c28:	00050493          	mv	s1,a0
    queueBlocked.pop();
    80002c2c:	00090513          	mv	a0,s2
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	9c8080e7          	jalr	-1592(ra) # 800015f8 <_ZN5Queue3popEv>
    if(fr != 0)
    80002c38:	00048a63          	beqz	s1,80002c4c <_ZN10KSemaphore7unblockEv+0x4c>
    80002c3c:	0004ac23          	sw	zero,24(s1)
    {
        fr->setState(PCB::READY);
        Scheduler::put(fr);
    80002c40:	00048513          	mv	a0,s1
    80002c44:	fffff097          	auipc	ra,0xfffff
    80002c48:	b90080e7          	jalr	-1136(ra) # 800017d4 <_ZN9Scheduler3putEP3PCB>
    }
}
    80002c4c:	01813083          	ld	ra,24(sp)
    80002c50:	01013403          	ld	s0,16(sp)
    80002c54:	00813483          	ld	s1,8(sp)
    80002c58:	00013903          	ld	s2,0(sp)
    80002c5c:	02010113          	addi	sp,sp,32
    80002c60:	00008067          	ret

0000000080002c64 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80002c64:	00052783          	lw	a5,0(a0)
    80002c68:	0017879b          	addiw	a5,a5,1
    80002c6c:	0007871b          	sext.w	a4,a5
    80002c70:	00f52023          	sw	a5,0(a0)
    80002c74:	00e05863          	blez	a4,80002c84 <_ZN10KSemaphore6signalEv+0x20>
        val = beginVal;
    80002c78:	00452783          	lw	a5,4(a0)
    80002c7c:	00f52023          	sw	a5,0(a0)
    80002c80:	00008067          	ret
void KSemaphore::signal() {
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00113423          	sd	ra,8(sp)
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	01010413          	addi	s0,sp,16
        unblock();
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	f6c080e7          	jalr	-148(ra) # 80002c00 <_ZN10KSemaphore7unblockEv>
}
    80002c9c:	00813083          	ld	ra,8(sp)
    80002ca0:	00013403          	ld	s0,0(sp)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret

0000000080002cac <start>:
    80002cac:	ff010113          	addi	sp,sp,-16
    80002cb0:	00813423          	sd	s0,8(sp)
    80002cb4:	01010413          	addi	s0,sp,16
    80002cb8:	300027f3          	csrr	a5,mstatus
    80002cbc:	ffffe737          	lui	a4,0xffffe
    80002cc0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff75af>
    80002cc4:	00e7f7b3          	and	a5,a5,a4
    80002cc8:	00001737          	lui	a4,0x1
    80002ccc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002cd0:	00e7e7b3          	or	a5,a5,a4
    80002cd4:	30079073          	csrw	mstatus,a5
    80002cd8:	00000797          	auipc	a5,0x0
    80002cdc:	16078793          	addi	a5,a5,352 # 80002e38 <system_main>
    80002ce0:	34179073          	csrw	mepc,a5
    80002ce4:	00000793          	li	a5,0
    80002ce8:	18079073          	csrw	satp,a5
    80002cec:	000107b7          	lui	a5,0x10
    80002cf0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002cf4:	30279073          	csrw	medeleg,a5
    80002cf8:	30379073          	csrw	mideleg,a5
    80002cfc:	104027f3          	csrr	a5,sie
    80002d00:	2227e793          	ori	a5,a5,546
    80002d04:	10479073          	csrw	sie,a5
    80002d08:	fff00793          	li	a5,-1
    80002d0c:	00a7d793          	srli	a5,a5,0xa
    80002d10:	3b079073          	csrw	pmpaddr0,a5
    80002d14:	00f00793          	li	a5,15
    80002d18:	3a079073          	csrw	pmpcfg0,a5
    80002d1c:	f14027f3          	csrr	a5,mhartid
    80002d20:	0200c737          	lui	a4,0x200c
    80002d24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002d28:	0007869b          	sext.w	a3,a5
    80002d2c:	00269713          	slli	a4,a3,0x2
    80002d30:	000f4637          	lui	a2,0xf4
    80002d34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002d38:	00d70733          	add	a4,a4,a3
    80002d3c:	0037979b          	slliw	a5,a5,0x3
    80002d40:	020046b7          	lui	a3,0x2004
    80002d44:	00d787b3          	add	a5,a5,a3
    80002d48:	00c585b3          	add	a1,a1,a2
    80002d4c:	00371693          	slli	a3,a4,0x3
    80002d50:	00003717          	auipc	a4,0x3
    80002d54:	2a070713          	addi	a4,a4,672 # 80005ff0 <timer_scratch>
    80002d58:	00b7b023          	sd	a1,0(a5)
    80002d5c:	00d70733          	add	a4,a4,a3
    80002d60:	00f73c23          	sd	a5,24(a4)
    80002d64:	02c73023          	sd	a2,32(a4)
    80002d68:	34071073          	csrw	mscratch,a4
    80002d6c:	00000797          	auipc	a5,0x0
    80002d70:	6e478793          	addi	a5,a5,1764 # 80003450 <timervec>
    80002d74:	30579073          	csrw	mtvec,a5
    80002d78:	300027f3          	csrr	a5,mstatus
    80002d7c:	0087e793          	ori	a5,a5,8
    80002d80:	30079073          	csrw	mstatus,a5
    80002d84:	304027f3          	csrr	a5,mie
    80002d88:	0807e793          	ori	a5,a5,128
    80002d8c:	30479073          	csrw	mie,a5
    80002d90:	f14027f3          	csrr	a5,mhartid
    80002d94:	0007879b          	sext.w	a5,a5
    80002d98:	00078213          	mv	tp,a5
    80002d9c:	30200073          	mret
    80002da0:	00813403          	ld	s0,8(sp)
    80002da4:	01010113          	addi	sp,sp,16
    80002da8:	00008067          	ret

0000000080002dac <timerinit>:
    80002dac:	ff010113          	addi	sp,sp,-16
    80002db0:	00813423          	sd	s0,8(sp)
    80002db4:	01010413          	addi	s0,sp,16
    80002db8:	f14027f3          	csrr	a5,mhartid
    80002dbc:	0200c737          	lui	a4,0x200c
    80002dc0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002dc4:	0007869b          	sext.w	a3,a5
    80002dc8:	00269713          	slli	a4,a3,0x2
    80002dcc:	000f4637          	lui	a2,0xf4
    80002dd0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002dd4:	00d70733          	add	a4,a4,a3
    80002dd8:	0037979b          	slliw	a5,a5,0x3
    80002ddc:	020046b7          	lui	a3,0x2004
    80002de0:	00d787b3          	add	a5,a5,a3
    80002de4:	00c585b3          	add	a1,a1,a2
    80002de8:	00371693          	slli	a3,a4,0x3
    80002dec:	00003717          	auipc	a4,0x3
    80002df0:	20470713          	addi	a4,a4,516 # 80005ff0 <timer_scratch>
    80002df4:	00b7b023          	sd	a1,0(a5)
    80002df8:	00d70733          	add	a4,a4,a3
    80002dfc:	00f73c23          	sd	a5,24(a4)
    80002e00:	02c73023          	sd	a2,32(a4)
    80002e04:	34071073          	csrw	mscratch,a4
    80002e08:	00000797          	auipc	a5,0x0
    80002e0c:	64878793          	addi	a5,a5,1608 # 80003450 <timervec>
    80002e10:	30579073          	csrw	mtvec,a5
    80002e14:	300027f3          	csrr	a5,mstatus
    80002e18:	0087e793          	ori	a5,a5,8
    80002e1c:	30079073          	csrw	mstatus,a5
    80002e20:	304027f3          	csrr	a5,mie
    80002e24:	0807e793          	ori	a5,a5,128
    80002e28:	30479073          	csrw	mie,a5
    80002e2c:	00813403          	ld	s0,8(sp)
    80002e30:	01010113          	addi	sp,sp,16
    80002e34:	00008067          	ret

0000000080002e38 <system_main>:
    80002e38:	fe010113          	addi	sp,sp,-32
    80002e3c:	00813823          	sd	s0,16(sp)
    80002e40:	00913423          	sd	s1,8(sp)
    80002e44:	00113c23          	sd	ra,24(sp)
    80002e48:	02010413          	addi	s0,sp,32
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	0c4080e7          	jalr	196(ra) # 80002f10 <cpuid>
    80002e54:	00003497          	auipc	s1,0x3
    80002e58:	13c48493          	addi	s1,s1,316 # 80005f90 <started>
    80002e5c:	02050263          	beqz	a0,80002e80 <system_main+0x48>
    80002e60:	0004a783          	lw	a5,0(s1)
    80002e64:	0007879b          	sext.w	a5,a5
    80002e68:	fe078ce3          	beqz	a5,80002e60 <system_main+0x28>
    80002e6c:	0ff0000f          	fence
    80002e70:	00002517          	auipc	a0,0x2
    80002e74:	33050513          	addi	a0,a0,816 # 800051a0 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80002e78:	00001097          	auipc	ra,0x1
    80002e7c:	a74080e7          	jalr	-1420(ra) # 800038ec <panic>
    80002e80:	00001097          	auipc	ra,0x1
    80002e84:	9c8080e7          	jalr	-1592(ra) # 80003848 <consoleinit>
    80002e88:	00001097          	auipc	ra,0x1
    80002e8c:	154080e7          	jalr	340(ra) # 80003fdc <printfinit>
    80002e90:	00002517          	auipc	a0,0x2
    80002e94:	3f050513          	addi	a0,a0,1008 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002e98:	00001097          	auipc	ra,0x1
    80002e9c:	ab0080e7          	jalr	-1360(ra) # 80003948 <__printf>
    80002ea0:	00002517          	auipc	a0,0x2
    80002ea4:	2d050513          	addi	a0,a0,720 # 80005170 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80002ea8:	00001097          	auipc	ra,0x1
    80002eac:	aa0080e7          	jalr	-1376(ra) # 80003948 <__printf>
    80002eb0:	00002517          	auipc	a0,0x2
    80002eb4:	3d050513          	addi	a0,a0,976 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002eb8:	00001097          	auipc	ra,0x1
    80002ebc:	a90080e7          	jalr	-1392(ra) # 80003948 <__printf>
    80002ec0:	00001097          	auipc	ra,0x1
    80002ec4:	4a8080e7          	jalr	1192(ra) # 80004368 <kinit>
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	148080e7          	jalr	328(ra) # 80003010 <trapinit>
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	16c080e7          	jalr	364(ra) # 8000303c <trapinithart>
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	5b8080e7          	jalr	1464(ra) # 80003490 <plicinit>
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	5d8080e7          	jalr	1496(ra) # 800034b8 <plicinithart>
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	078080e7          	jalr	120(ra) # 80002f60 <userinit>
    80002ef0:	0ff0000f          	fence
    80002ef4:	00100793          	li	a5,1
    80002ef8:	00002517          	auipc	a0,0x2
    80002efc:	29050513          	addi	a0,a0,656 # 80005188 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80002f00:	00f4a023          	sw	a5,0(s1)
    80002f04:	00001097          	auipc	ra,0x1
    80002f08:	a44080e7          	jalr	-1468(ra) # 80003948 <__printf>
    80002f0c:	0000006f          	j	80002f0c <system_main+0xd4>

0000000080002f10 <cpuid>:
    80002f10:	ff010113          	addi	sp,sp,-16
    80002f14:	00813423          	sd	s0,8(sp)
    80002f18:	01010413          	addi	s0,sp,16
    80002f1c:	00020513          	mv	a0,tp
    80002f20:	00813403          	ld	s0,8(sp)
    80002f24:	0005051b          	sext.w	a0,a0
    80002f28:	01010113          	addi	sp,sp,16
    80002f2c:	00008067          	ret

0000000080002f30 <mycpu>:
    80002f30:	ff010113          	addi	sp,sp,-16
    80002f34:	00813423          	sd	s0,8(sp)
    80002f38:	01010413          	addi	s0,sp,16
    80002f3c:	00020793          	mv	a5,tp
    80002f40:	00813403          	ld	s0,8(sp)
    80002f44:	0007879b          	sext.w	a5,a5
    80002f48:	00779793          	slli	a5,a5,0x7
    80002f4c:	00004517          	auipc	a0,0x4
    80002f50:	0d450513          	addi	a0,a0,212 # 80007020 <cpus>
    80002f54:	00f50533          	add	a0,a0,a5
    80002f58:	01010113          	addi	sp,sp,16
    80002f5c:	00008067          	ret

0000000080002f60 <userinit>:
    80002f60:	ff010113          	addi	sp,sp,-16
    80002f64:	00813423          	sd	s0,8(sp)
    80002f68:	01010413          	addi	s0,sp,16
    80002f6c:	00813403          	ld	s0,8(sp)
    80002f70:	01010113          	addi	sp,sp,16
    80002f74:	fffff317          	auipc	t1,0xfffff
    80002f78:	ca830067          	jr	-856(t1) # 80001c1c <main>

0000000080002f7c <either_copyout>:
    80002f7c:	ff010113          	addi	sp,sp,-16
    80002f80:	00813023          	sd	s0,0(sp)
    80002f84:	00113423          	sd	ra,8(sp)
    80002f88:	01010413          	addi	s0,sp,16
    80002f8c:	02051663          	bnez	a0,80002fb8 <either_copyout+0x3c>
    80002f90:	00058513          	mv	a0,a1
    80002f94:	00060593          	mv	a1,a2
    80002f98:	0006861b          	sext.w	a2,a3
    80002f9c:	00002097          	auipc	ra,0x2
    80002fa0:	c58080e7          	jalr	-936(ra) # 80004bf4 <__memmove>
    80002fa4:	00813083          	ld	ra,8(sp)
    80002fa8:	00013403          	ld	s0,0(sp)
    80002fac:	00000513          	li	a0,0
    80002fb0:	01010113          	addi	sp,sp,16
    80002fb4:	00008067          	ret
    80002fb8:	00002517          	auipc	a0,0x2
    80002fbc:	21050513          	addi	a0,a0,528 # 800051c8 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80002fc0:	00001097          	auipc	ra,0x1
    80002fc4:	92c080e7          	jalr	-1748(ra) # 800038ec <panic>

0000000080002fc8 <either_copyin>:
    80002fc8:	ff010113          	addi	sp,sp,-16
    80002fcc:	00813023          	sd	s0,0(sp)
    80002fd0:	00113423          	sd	ra,8(sp)
    80002fd4:	01010413          	addi	s0,sp,16
    80002fd8:	02059463          	bnez	a1,80003000 <either_copyin+0x38>
    80002fdc:	00060593          	mv	a1,a2
    80002fe0:	0006861b          	sext.w	a2,a3
    80002fe4:	00002097          	auipc	ra,0x2
    80002fe8:	c10080e7          	jalr	-1008(ra) # 80004bf4 <__memmove>
    80002fec:	00813083          	ld	ra,8(sp)
    80002ff0:	00013403          	ld	s0,0(sp)
    80002ff4:	00000513          	li	a0,0
    80002ff8:	01010113          	addi	sp,sp,16
    80002ffc:	00008067          	ret
    80003000:	00002517          	auipc	a0,0x2
    80003004:	1f050513          	addi	a0,a0,496 # 800051f0 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80003008:	00001097          	auipc	ra,0x1
    8000300c:	8e4080e7          	jalr	-1820(ra) # 800038ec <panic>

0000000080003010 <trapinit>:
    80003010:	ff010113          	addi	sp,sp,-16
    80003014:	00813423          	sd	s0,8(sp)
    80003018:	01010413          	addi	s0,sp,16
    8000301c:	00813403          	ld	s0,8(sp)
    80003020:	00002597          	auipc	a1,0x2
    80003024:	1f858593          	addi	a1,a1,504 # 80005218 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003028:	00004517          	auipc	a0,0x4
    8000302c:	07850513          	addi	a0,a0,120 # 800070a0 <tickslock>
    80003030:	01010113          	addi	sp,sp,16
    80003034:	00001317          	auipc	t1,0x1
    80003038:	5c430067          	jr	1476(t1) # 800045f8 <initlock>

000000008000303c <trapinithart>:
    8000303c:	ff010113          	addi	sp,sp,-16
    80003040:	00813423          	sd	s0,8(sp)
    80003044:	01010413          	addi	s0,sp,16
    80003048:	00000797          	auipc	a5,0x0
    8000304c:	2f878793          	addi	a5,a5,760 # 80003340 <kernelvec>
    80003050:	10579073          	csrw	stvec,a5
    80003054:	00813403          	ld	s0,8(sp)
    80003058:	01010113          	addi	sp,sp,16
    8000305c:	00008067          	ret

0000000080003060 <usertrap>:
    80003060:	ff010113          	addi	sp,sp,-16
    80003064:	00813423          	sd	s0,8(sp)
    80003068:	01010413          	addi	s0,sp,16
    8000306c:	00813403          	ld	s0,8(sp)
    80003070:	01010113          	addi	sp,sp,16
    80003074:	00008067          	ret

0000000080003078 <usertrapret>:
    80003078:	ff010113          	addi	sp,sp,-16
    8000307c:	00813423          	sd	s0,8(sp)
    80003080:	01010413          	addi	s0,sp,16
    80003084:	00813403          	ld	s0,8(sp)
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00008067          	ret

0000000080003090 <kerneltrap>:
    80003090:	fe010113          	addi	sp,sp,-32
    80003094:	00813823          	sd	s0,16(sp)
    80003098:	00113c23          	sd	ra,24(sp)
    8000309c:	00913423          	sd	s1,8(sp)
    800030a0:	02010413          	addi	s0,sp,32
    800030a4:	142025f3          	csrr	a1,scause
    800030a8:	100027f3          	csrr	a5,sstatus
    800030ac:	0027f793          	andi	a5,a5,2
    800030b0:	10079c63          	bnez	a5,800031c8 <kerneltrap+0x138>
    800030b4:	142027f3          	csrr	a5,scause
    800030b8:	0207ce63          	bltz	a5,800030f4 <kerneltrap+0x64>
    800030bc:	00002517          	auipc	a0,0x2
    800030c0:	1a450513          	addi	a0,a0,420 # 80005260 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800030c4:	00001097          	auipc	ra,0x1
    800030c8:	884080e7          	jalr	-1916(ra) # 80003948 <__printf>
    800030cc:	141025f3          	csrr	a1,sepc
    800030d0:	14302673          	csrr	a2,stval
    800030d4:	00002517          	auipc	a0,0x2
    800030d8:	19c50513          	addi	a0,a0,412 # 80005270 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800030dc:	00001097          	auipc	ra,0x1
    800030e0:	86c080e7          	jalr	-1940(ra) # 80003948 <__printf>
    800030e4:	00002517          	auipc	a0,0x2
    800030e8:	1a450513          	addi	a0,a0,420 # 80005288 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800030ec:	00001097          	auipc	ra,0x1
    800030f0:	800080e7          	jalr	-2048(ra) # 800038ec <panic>
    800030f4:	0ff7f713          	andi	a4,a5,255
    800030f8:	00900693          	li	a3,9
    800030fc:	04d70063          	beq	a4,a3,8000313c <kerneltrap+0xac>
    80003100:	fff00713          	li	a4,-1
    80003104:	03f71713          	slli	a4,a4,0x3f
    80003108:	00170713          	addi	a4,a4,1
    8000310c:	fae798e3          	bne	a5,a4,800030bc <kerneltrap+0x2c>
    80003110:	00000097          	auipc	ra,0x0
    80003114:	e00080e7          	jalr	-512(ra) # 80002f10 <cpuid>
    80003118:	06050663          	beqz	a0,80003184 <kerneltrap+0xf4>
    8000311c:	144027f3          	csrr	a5,sip
    80003120:	ffd7f793          	andi	a5,a5,-3
    80003124:	14479073          	csrw	sip,a5
    80003128:	01813083          	ld	ra,24(sp)
    8000312c:	01013403          	ld	s0,16(sp)
    80003130:	00813483          	ld	s1,8(sp)
    80003134:	02010113          	addi	sp,sp,32
    80003138:	00008067          	ret
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	3c8080e7          	jalr	968(ra) # 80003504 <plic_claim>
    80003144:	00a00793          	li	a5,10
    80003148:	00050493          	mv	s1,a0
    8000314c:	06f50863          	beq	a0,a5,800031bc <kerneltrap+0x12c>
    80003150:	fc050ce3          	beqz	a0,80003128 <kerneltrap+0x98>
    80003154:	00050593          	mv	a1,a0
    80003158:	00002517          	auipc	a0,0x2
    8000315c:	0e850513          	addi	a0,a0,232 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003160:	00000097          	auipc	ra,0x0
    80003164:	7e8080e7          	jalr	2024(ra) # 80003948 <__printf>
    80003168:	01013403          	ld	s0,16(sp)
    8000316c:	01813083          	ld	ra,24(sp)
    80003170:	00048513          	mv	a0,s1
    80003174:	00813483          	ld	s1,8(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00000317          	auipc	t1,0x0
    80003180:	3c030067          	jr	960(t1) # 8000353c <plic_complete>
    80003184:	00004517          	auipc	a0,0x4
    80003188:	f1c50513          	addi	a0,a0,-228 # 800070a0 <tickslock>
    8000318c:	00001097          	auipc	ra,0x1
    80003190:	490080e7          	jalr	1168(ra) # 8000461c <acquire>
    80003194:	00003717          	auipc	a4,0x3
    80003198:	e0070713          	addi	a4,a4,-512 # 80005f94 <ticks>
    8000319c:	00072783          	lw	a5,0(a4)
    800031a0:	00004517          	auipc	a0,0x4
    800031a4:	f0050513          	addi	a0,a0,-256 # 800070a0 <tickslock>
    800031a8:	0017879b          	addiw	a5,a5,1
    800031ac:	00f72023          	sw	a5,0(a4)
    800031b0:	00001097          	auipc	ra,0x1
    800031b4:	538080e7          	jalr	1336(ra) # 800046e8 <release>
    800031b8:	f65ff06f          	j	8000311c <kerneltrap+0x8c>
    800031bc:	00001097          	auipc	ra,0x1
    800031c0:	094080e7          	jalr	148(ra) # 80004250 <uartintr>
    800031c4:	fa5ff06f          	j	80003168 <kerneltrap+0xd8>
    800031c8:	00002517          	auipc	a0,0x2
    800031cc:	05850513          	addi	a0,a0,88 # 80005220 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	71c080e7          	jalr	1820(ra) # 800038ec <panic>

00000000800031d8 <clockintr>:
    800031d8:	fe010113          	addi	sp,sp,-32
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	00913423          	sd	s1,8(sp)
    800031e4:	00113c23          	sd	ra,24(sp)
    800031e8:	02010413          	addi	s0,sp,32
    800031ec:	00004497          	auipc	s1,0x4
    800031f0:	eb448493          	addi	s1,s1,-332 # 800070a0 <tickslock>
    800031f4:	00048513          	mv	a0,s1
    800031f8:	00001097          	auipc	ra,0x1
    800031fc:	424080e7          	jalr	1060(ra) # 8000461c <acquire>
    80003200:	00003717          	auipc	a4,0x3
    80003204:	d9470713          	addi	a4,a4,-620 # 80005f94 <ticks>
    80003208:	00072783          	lw	a5,0(a4)
    8000320c:	01013403          	ld	s0,16(sp)
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	00048513          	mv	a0,s1
    80003218:	0017879b          	addiw	a5,a5,1
    8000321c:	00813483          	ld	s1,8(sp)
    80003220:	00f72023          	sw	a5,0(a4)
    80003224:	02010113          	addi	sp,sp,32
    80003228:	00001317          	auipc	t1,0x1
    8000322c:	4c030067          	jr	1216(t1) # 800046e8 <release>

0000000080003230 <devintr>:
    80003230:	142027f3          	csrr	a5,scause
    80003234:	00000513          	li	a0,0
    80003238:	0007c463          	bltz	a5,80003240 <devintr+0x10>
    8000323c:	00008067          	ret
    80003240:	fe010113          	addi	sp,sp,-32
    80003244:	00813823          	sd	s0,16(sp)
    80003248:	00113c23          	sd	ra,24(sp)
    8000324c:	00913423          	sd	s1,8(sp)
    80003250:	02010413          	addi	s0,sp,32
    80003254:	0ff7f713          	andi	a4,a5,255
    80003258:	00900693          	li	a3,9
    8000325c:	04d70c63          	beq	a4,a3,800032b4 <devintr+0x84>
    80003260:	fff00713          	li	a4,-1
    80003264:	03f71713          	slli	a4,a4,0x3f
    80003268:	00170713          	addi	a4,a4,1
    8000326c:	00e78c63          	beq	a5,a4,80003284 <devintr+0x54>
    80003270:	01813083          	ld	ra,24(sp)
    80003274:	01013403          	ld	s0,16(sp)
    80003278:	00813483          	ld	s1,8(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret
    80003284:	00000097          	auipc	ra,0x0
    80003288:	c8c080e7          	jalr	-884(ra) # 80002f10 <cpuid>
    8000328c:	06050663          	beqz	a0,800032f8 <devintr+0xc8>
    80003290:	144027f3          	csrr	a5,sip
    80003294:	ffd7f793          	andi	a5,a5,-3
    80003298:	14479073          	csrw	sip,a5
    8000329c:	01813083          	ld	ra,24(sp)
    800032a0:	01013403          	ld	s0,16(sp)
    800032a4:	00813483          	ld	s1,8(sp)
    800032a8:	00200513          	li	a0,2
    800032ac:	02010113          	addi	sp,sp,32
    800032b0:	00008067          	ret
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	250080e7          	jalr	592(ra) # 80003504 <plic_claim>
    800032bc:	00a00793          	li	a5,10
    800032c0:	00050493          	mv	s1,a0
    800032c4:	06f50663          	beq	a0,a5,80003330 <devintr+0x100>
    800032c8:	00100513          	li	a0,1
    800032cc:	fa0482e3          	beqz	s1,80003270 <devintr+0x40>
    800032d0:	00048593          	mv	a1,s1
    800032d4:	00002517          	auipc	a0,0x2
    800032d8:	f6c50513          	addi	a0,a0,-148 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	66c080e7          	jalr	1644(ra) # 80003948 <__printf>
    800032e4:	00048513          	mv	a0,s1
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	254080e7          	jalr	596(ra) # 8000353c <plic_complete>
    800032f0:	00100513          	li	a0,1
    800032f4:	f7dff06f          	j	80003270 <devintr+0x40>
    800032f8:	00004517          	auipc	a0,0x4
    800032fc:	da850513          	addi	a0,a0,-600 # 800070a0 <tickslock>
    80003300:	00001097          	auipc	ra,0x1
    80003304:	31c080e7          	jalr	796(ra) # 8000461c <acquire>
    80003308:	00003717          	auipc	a4,0x3
    8000330c:	c8c70713          	addi	a4,a4,-884 # 80005f94 <ticks>
    80003310:	00072783          	lw	a5,0(a4)
    80003314:	00004517          	auipc	a0,0x4
    80003318:	d8c50513          	addi	a0,a0,-628 # 800070a0 <tickslock>
    8000331c:	0017879b          	addiw	a5,a5,1
    80003320:	00f72023          	sw	a5,0(a4)
    80003324:	00001097          	auipc	ra,0x1
    80003328:	3c4080e7          	jalr	964(ra) # 800046e8 <release>
    8000332c:	f65ff06f          	j	80003290 <devintr+0x60>
    80003330:	00001097          	auipc	ra,0x1
    80003334:	f20080e7          	jalr	-224(ra) # 80004250 <uartintr>
    80003338:	fadff06f          	j	800032e4 <devintr+0xb4>
    8000333c:	0000                	unimp
	...

0000000080003340 <kernelvec>:
    80003340:	f0010113          	addi	sp,sp,-256
    80003344:	00113023          	sd	ra,0(sp)
    80003348:	00213423          	sd	sp,8(sp)
    8000334c:	00313823          	sd	gp,16(sp)
    80003350:	00413c23          	sd	tp,24(sp)
    80003354:	02513023          	sd	t0,32(sp)
    80003358:	02613423          	sd	t1,40(sp)
    8000335c:	02713823          	sd	t2,48(sp)
    80003360:	02813c23          	sd	s0,56(sp)
    80003364:	04913023          	sd	s1,64(sp)
    80003368:	04a13423          	sd	a0,72(sp)
    8000336c:	04b13823          	sd	a1,80(sp)
    80003370:	04c13c23          	sd	a2,88(sp)
    80003374:	06d13023          	sd	a3,96(sp)
    80003378:	06e13423          	sd	a4,104(sp)
    8000337c:	06f13823          	sd	a5,112(sp)
    80003380:	07013c23          	sd	a6,120(sp)
    80003384:	09113023          	sd	a7,128(sp)
    80003388:	09213423          	sd	s2,136(sp)
    8000338c:	09313823          	sd	s3,144(sp)
    80003390:	09413c23          	sd	s4,152(sp)
    80003394:	0b513023          	sd	s5,160(sp)
    80003398:	0b613423          	sd	s6,168(sp)
    8000339c:	0b713823          	sd	s7,176(sp)
    800033a0:	0b813c23          	sd	s8,184(sp)
    800033a4:	0d913023          	sd	s9,192(sp)
    800033a8:	0da13423          	sd	s10,200(sp)
    800033ac:	0db13823          	sd	s11,208(sp)
    800033b0:	0dc13c23          	sd	t3,216(sp)
    800033b4:	0fd13023          	sd	t4,224(sp)
    800033b8:	0fe13423          	sd	t5,232(sp)
    800033bc:	0ff13823          	sd	t6,240(sp)
    800033c0:	cd1ff0ef          	jal	ra,80003090 <kerneltrap>
    800033c4:	00013083          	ld	ra,0(sp)
    800033c8:	00813103          	ld	sp,8(sp)
    800033cc:	01013183          	ld	gp,16(sp)
    800033d0:	02013283          	ld	t0,32(sp)
    800033d4:	02813303          	ld	t1,40(sp)
    800033d8:	03013383          	ld	t2,48(sp)
    800033dc:	03813403          	ld	s0,56(sp)
    800033e0:	04013483          	ld	s1,64(sp)
    800033e4:	04813503          	ld	a0,72(sp)
    800033e8:	05013583          	ld	a1,80(sp)
    800033ec:	05813603          	ld	a2,88(sp)
    800033f0:	06013683          	ld	a3,96(sp)
    800033f4:	06813703          	ld	a4,104(sp)
    800033f8:	07013783          	ld	a5,112(sp)
    800033fc:	07813803          	ld	a6,120(sp)
    80003400:	08013883          	ld	a7,128(sp)
    80003404:	08813903          	ld	s2,136(sp)
    80003408:	09013983          	ld	s3,144(sp)
    8000340c:	09813a03          	ld	s4,152(sp)
    80003410:	0a013a83          	ld	s5,160(sp)
    80003414:	0a813b03          	ld	s6,168(sp)
    80003418:	0b013b83          	ld	s7,176(sp)
    8000341c:	0b813c03          	ld	s8,184(sp)
    80003420:	0c013c83          	ld	s9,192(sp)
    80003424:	0c813d03          	ld	s10,200(sp)
    80003428:	0d013d83          	ld	s11,208(sp)
    8000342c:	0d813e03          	ld	t3,216(sp)
    80003430:	0e013e83          	ld	t4,224(sp)
    80003434:	0e813f03          	ld	t5,232(sp)
    80003438:	0f013f83          	ld	t6,240(sp)
    8000343c:	10010113          	addi	sp,sp,256
    80003440:	10200073          	sret
    80003444:	00000013          	nop
    80003448:	00000013          	nop
    8000344c:	00000013          	nop

0000000080003450 <timervec>:
    80003450:	34051573          	csrrw	a0,mscratch,a0
    80003454:	00b53023          	sd	a1,0(a0)
    80003458:	00c53423          	sd	a2,8(a0)
    8000345c:	00d53823          	sd	a3,16(a0)
    80003460:	01853583          	ld	a1,24(a0)
    80003464:	02053603          	ld	a2,32(a0)
    80003468:	0005b683          	ld	a3,0(a1)
    8000346c:	00c686b3          	add	a3,a3,a2
    80003470:	00d5b023          	sd	a3,0(a1)
    80003474:	00200593          	li	a1,2
    80003478:	14459073          	csrw	sip,a1
    8000347c:	01053683          	ld	a3,16(a0)
    80003480:	00853603          	ld	a2,8(a0)
    80003484:	00053583          	ld	a1,0(a0)
    80003488:	34051573          	csrrw	a0,mscratch,a0
    8000348c:	30200073          	mret

0000000080003490 <plicinit>:
    80003490:	ff010113          	addi	sp,sp,-16
    80003494:	00813423          	sd	s0,8(sp)
    80003498:	01010413          	addi	s0,sp,16
    8000349c:	00813403          	ld	s0,8(sp)
    800034a0:	0c0007b7          	lui	a5,0xc000
    800034a4:	00100713          	li	a4,1
    800034a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800034ac:	00e7a223          	sw	a4,4(a5)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret

00000000800034b8 <plicinithart>:
    800034b8:	ff010113          	addi	sp,sp,-16
    800034bc:	00813023          	sd	s0,0(sp)
    800034c0:	00113423          	sd	ra,8(sp)
    800034c4:	01010413          	addi	s0,sp,16
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	a48080e7          	jalr	-1464(ra) # 80002f10 <cpuid>
    800034d0:	0085171b          	slliw	a4,a0,0x8
    800034d4:	0c0027b7          	lui	a5,0xc002
    800034d8:	00e787b3          	add	a5,a5,a4
    800034dc:	40200713          	li	a4,1026
    800034e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800034e4:	00813083          	ld	ra,8(sp)
    800034e8:	00013403          	ld	s0,0(sp)
    800034ec:	00d5151b          	slliw	a0,a0,0xd
    800034f0:	0c2017b7          	lui	a5,0xc201
    800034f4:	00a78533          	add	a0,a5,a0
    800034f8:	00052023          	sw	zero,0(a0)
    800034fc:	01010113          	addi	sp,sp,16
    80003500:	00008067          	ret

0000000080003504 <plic_claim>:
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00813023          	sd	s0,0(sp)
    8000350c:	00113423          	sd	ra,8(sp)
    80003510:	01010413          	addi	s0,sp,16
    80003514:	00000097          	auipc	ra,0x0
    80003518:	9fc080e7          	jalr	-1540(ra) # 80002f10 <cpuid>
    8000351c:	00813083          	ld	ra,8(sp)
    80003520:	00013403          	ld	s0,0(sp)
    80003524:	00d5151b          	slliw	a0,a0,0xd
    80003528:	0c2017b7          	lui	a5,0xc201
    8000352c:	00a78533          	add	a0,a5,a0
    80003530:	00452503          	lw	a0,4(a0)
    80003534:	01010113          	addi	sp,sp,16
    80003538:	00008067          	ret

000000008000353c <plic_complete>:
    8000353c:	fe010113          	addi	sp,sp,-32
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	00113c23          	sd	ra,24(sp)
    8000354c:	02010413          	addi	s0,sp,32
    80003550:	00050493          	mv	s1,a0
    80003554:	00000097          	auipc	ra,0x0
    80003558:	9bc080e7          	jalr	-1604(ra) # 80002f10 <cpuid>
    8000355c:	01813083          	ld	ra,24(sp)
    80003560:	01013403          	ld	s0,16(sp)
    80003564:	00d5179b          	slliw	a5,a0,0xd
    80003568:	0c201737          	lui	a4,0xc201
    8000356c:	00f707b3          	add	a5,a4,a5
    80003570:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003574:	00813483          	ld	s1,8(sp)
    80003578:	02010113          	addi	sp,sp,32
    8000357c:	00008067          	ret

0000000080003580 <consolewrite>:
    80003580:	fb010113          	addi	sp,sp,-80
    80003584:	04813023          	sd	s0,64(sp)
    80003588:	04113423          	sd	ra,72(sp)
    8000358c:	02913c23          	sd	s1,56(sp)
    80003590:	03213823          	sd	s2,48(sp)
    80003594:	03313423          	sd	s3,40(sp)
    80003598:	03413023          	sd	s4,32(sp)
    8000359c:	01513c23          	sd	s5,24(sp)
    800035a0:	05010413          	addi	s0,sp,80
    800035a4:	06c05c63          	blez	a2,8000361c <consolewrite+0x9c>
    800035a8:	00060993          	mv	s3,a2
    800035ac:	00050a13          	mv	s4,a0
    800035b0:	00058493          	mv	s1,a1
    800035b4:	00000913          	li	s2,0
    800035b8:	fff00a93          	li	s5,-1
    800035bc:	01c0006f          	j	800035d8 <consolewrite+0x58>
    800035c0:	fbf44503          	lbu	a0,-65(s0)
    800035c4:	0019091b          	addiw	s2,s2,1
    800035c8:	00148493          	addi	s1,s1,1
    800035cc:	00001097          	auipc	ra,0x1
    800035d0:	a9c080e7          	jalr	-1380(ra) # 80004068 <uartputc>
    800035d4:	03298063          	beq	s3,s2,800035f4 <consolewrite+0x74>
    800035d8:	00048613          	mv	a2,s1
    800035dc:	00100693          	li	a3,1
    800035e0:	000a0593          	mv	a1,s4
    800035e4:	fbf40513          	addi	a0,s0,-65
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	9e0080e7          	jalr	-1568(ra) # 80002fc8 <either_copyin>
    800035f0:	fd5518e3          	bne	a0,s5,800035c0 <consolewrite+0x40>
    800035f4:	04813083          	ld	ra,72(sp)
    800035f8:	04013403          	ld	s0,64(sp)
    800035fc:	03813483          	ld	s1,56(sp)
    80003600:	02813983          	ld	s3,40(sp)
    80003604:	02013a03          	ld	s4,32(sp)
    80003608:	01813a83          	ld	s5,24(sp)
    8000360c:	00090513          	mv	a0,s2
    80003610:	03013903          	ld	s2,48(sp)
    80003614:	05010113          	addi	sp,sp,80
    80003618:	00008067          	ret
    8000361c:	00000913          	li	s2,0
    80003620:	fd5ff06f          	j	800035f4 <consolewrite+0x74>

0000000080003624 <consoleread>:
    80003624:	f9010113          	addi	sp,sp,-112
    80003628:	06813023          	sd	s0,96(sp)
    8000362c:	04913c23          	sd	s1,88(sp)
    80003630:	05213823          	sd	s2,80(sp)
    80003634:	05313423          	sd	s3,72(sp)
    80003638:	05413023          	sd	s4,64(sp)
    8000363c:	03513c23          	sd	s5,56(sp)
    80003640:	03613823          	sd	s6,48(sp)
    80003644:	03713423          	sd	s7,40(sp)
    80003648:	03813023          	sd	s8,32(sp)
    8000364c:	06113423          	sd	ra,104(sp)
    80003650:	01913c23          	sd	s9,24(sp)
    80003654:	07010413          	addi	s0,sp,112
    80003658:	00060b93          	mv	s7,a2
    8000365c:	00050913          	mv	s2,a0
    80003660:	00058c13          	mv	s8,a1
    80003664:	00060b1b          	sext.w	s6,a2
    80003668:	00004497          	auipc	s1,0x4
    8000366c:	a6048493          	addi	s1,s1,-1440 # 800070c8 <cons>
    80003670:	00400993          	li	s3,4
    80003674:	fff00a13          	li	s4,-1
    80003678:	00a00a93          	li	s5,10
    8000367c:	05705e63          	blez	s7,800036d8 <consoleread+0xb4>
    80003680:	09c4a703          	lw	a4,156(s1)
    80003684:	0984a783          	lw	a5,152(s1)
    80003688:	0007071b          	sext.w	a4,a4
    8000368c:	08e78463          	beq	a5,a4,80003714 <consoleread+0xf0>
    80003690:	07f7f713          	andi	a4,a5,127
    80003694:	00e48733          	add	a4,s1,a4
    80003698:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000369c:	0017869b          	addiw	a3,a5,1
    800036a0:	08d4ac23          	sw	a3,152(s1)
    800036a4:	00070c9b          	sext.w	s9,a4
    800036a8:	0b370663          	beq	a4,s3,80003754 <consoleread+0x130>
    800036ac:	00100693          	li	a3,1
    800036b0:	f9f40613          	addi	a2,s0,-97
    800036b4:	000c0593          	mv	a1,s8
    800036b8:	00090513          	mv	a0,s2
    800036bc:	f8e40fa3          	sb	a4,-97(s0)
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	8bc080e7          	jalr	-1860(ra) # 80002f7c <either_copyout>
    800036c8:	01450863          	beq	a0,s4,800036d8 <consoleread+0xb4>
    800036cc:	001c0c13          	addi	s8,s8,1
    800036d0:	fffb8b9b          	addiw	s7,s7,-1
    800036d4:	fb5c94e3          	bne	s9,s5,8000367c <consoleread+0x58>
    800036d8:	000b851b          	sext.w	a0,s7
    800036dc:	06813083          	ld	ra,104(sp)
    800036e0:	06013403          	ld	s0,96(sp)
    800036e4:	05813483          	ld	s1,88(sp)
    800036e8:	05013903          	ld	s2,80(sp)
    800036ec:	04813983          	ld	s3,72(sp)
    800036f0:	04013a03          	ld	s4,64(sp)
    800036f4:	03813a83          	ld	s5,56(sp)
    800036f8:	02813b83          	ld	s7,40(sp)
    800036fc:	02013c03          	ld	s8,32(sp)
    80003700:	01813c83          	ld	s9,24(sp)
    80003704:	40ab053b          	subw	a0,s6,a0
    80003708:	03013b03          	ld	s6,48(sp)
    8000370c:	07010113          	addi	sp,sp,112
    80003710:	00008067          	ret
    80003714:	00001097          	auipc	ra,0x1
    80003718:	1d8080e7          	jalr	472(ra) # 800048ec <push_on>
    8000371c:	0984a703          	lw	a4,152(s1)
    80003720:	09c4a783          	lw	a5,156(s1)
    80003724:	0007879b          	sext.w	a5,a5
    80003728:	fef70ce3          	beq	a4,a5,80003720 <consoleread+0xfc>
    8000372c:	00001097          	auipc	ra,0x1
    80003730:	234080e7          	jalr	564(ra) # 80004960 <pop_on>
    80003734:	0984a783          	lw	a5,152(s1)
    80003738:	07f7f713          	andi	a4,a5,127
    8000373c:	00e48733          	add	a4,s1,a4
    80003740:	01874703          	lbu	a4,24(a4)
    80003744:	0017869b          	addiw	a3,a5,1
    80003748:	08d4ac23          	sw	a3,152(s1)
    8000374c:	00070c9b          	sext.w	s9,a4
    80003750:	f5371ee3          	bne	a4,s3,800036ac <consoleread+0x88>
    80003754:	000b851b          	sext.w	a0,s7
    80003758:	f96bf2e3          	bgeu	s7,s6,800036dc <consoleread+0xb8>
    8000375c:	08f4ac23          	sw	a5,152(s1)
    80003760:	f7dff06f          	j	800036dc <consoleread+0xb8>

0000000080003764 <consputc>:
    80003764:	10000793          	li	a5,256
    80003768:	00f50663          	beq	a0,a5,80003774 <consputc+0x10>
    8000376c:	00001317          	auipc	t1,0x1
    80003770:	9f430067          	jr	-1548(t1) # 80004160 <uartputc_sync>
    80003774:	ff010113          	addi	sp,sp,-16
    80003778:	00113423          	sd	ra,8(sp)
    8000377c:	00813023          	sd	s0,0(sp)
    80003780:	01010413          	addi	s0,sp,16
    80003784:	00800513          	li	a0,8
    80003788:	00001097          	auipc	ra,0x1
    8000378c:	9d8080e7          	jalr	-1576(ra) # 80004160 <uartputc_sync>
    80003790:	02000513          	li	a0,32
    80003794:	00001097          	auipc	ra,0x1
    80003798:	9cc080e7          	jalr	-1588(ra) # 80004160 <uartputc_sync>
    8000379c:	00013403          	ld	s0,0(sp)
    800037a0:	00813083          	ld	ra,8(sp)
    800037a4:	00800513          	li	a0,8
    800037a8:	01010113          	addi	sp,sp,16
    800037ac:	00001317          	auipc	t1,0x1
    800037b0:	9b430067          	jr	-1612(t1) # 80004160 <uartputc_sync>

00000000800037b4 <consoleintr>:
    800037b4:	fe010113          	addi	sp,sp,-32
    800037b8:	00813823          	sd	s0,16(sp)
    800037bc:	00913423          	sd	s1,8(sp)
    800037c0:	01213023          	sd	s2,0(sp)
    800037c4:	00113c23          	sd	ra,24(sp)
    800037c8:	02010413          	addi	s0,sp,32
    800037cc:	00004917          	auipc	s2,0x4
    800037d0:	8fc90913          	addi	s2,s2,-1796 # 800070c8 <cons>
    800037d4:	00050493          	mv	s1,a0
    800037d8:	00090513          	mv	a0,s2
    800037dc:	00001097          	auipc	ra,0x1
    800037e0:	e40080e7          	jalr	-448(ra) # 8000461c <acquire>
    800037e4:	02048c63          	beqz	s1,8000381c <consoleintr+0x68>
    800037e8:	0a092783          	lw	a5,160(s2)
    800037ec:	09892703          	lw	a4,152(s2)
    800037f0:	07f00693          	li	a3,127
    800037f4:	40e7873b          	subw	a4,a5,a4
    800037f8:	02e6e263          	bltu	a3,a4,8000381c <consoleintr+0x68>
    800037fc:	00d00713          	li	a4,13
    80003800:	04e48063          	beq	s1,a4,80003840 <consoleintr+0x8c>
    80003804:	07f7f713          	andi	a4,a5,127
    80003808:	00e90733          	add	a4,s2,a4
    8000380c:	0017879b          	addiw	a5,a5,1
    80003810:	0af92023          	sw	a5,160(s2)
    80003814:	00970c23          	sb	s1,24(a4)
    80003818:	08f92e23          	sw	a5,156(s2)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	01813083          	ld	ra,24(sp)
    80003824:	00813483          	ld	s1,8(sp)
    80003828:	00013903          	ld	s2,0(sp)
    8000382c:	00004517          	auipc	a0,0x4
    80003830:	89c50513          	addi	a0,a0,-1892 # 800070c8 <cons>
    80003834:	02010113          	addi	sp,sp,32
    80003838:	00001317          	auipc	t1,0x1
    8000383c:	eb030067          	jr	-336(t1) # 800046e8 <release>
    80003840:	00a00493          	li	s1,10
    80003844:	fc1ff06f          	j	80003804 <consoleintr+0x50>

0000000080003848 <consoleinit>:
    80003848:	fe010113          	addi	sp,sp,-32
    8000384c:	00113c23          	sd	ra,24(sp)
    80003850:	00813823          	sd	s0,16(sp)
    80003854:	00913423          	sd	s1,8(sp)
    80003858:	02010413          	addi	s0,sp,32
    8000385c:	00004497          	auipc	s1,0x4
    80003860:	86c48493          	addi	s1,s1,-1940 # 800070c8 <cons>
    80003864:	00048513          	mv	a0,s1
    80003868:	00002597          	auipc	a1,0x2
    8000386c:	a3058593          	addi	a1,a1,-1488 # 80005298 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80003870:	00001097          	auipc	ra,0x1
    80003874:	d88080e7          	jalr	-632(ra) # 800045f8 <initlock>
    80003878:	00000097          	auipc	ra,0x0
    8000387c:	7ac080e7          	jalr	1964(ra) # 80004024 <uartinit>
    80003880:	01813083          	ld	ra,24(sp)
    80003884:	01013403          	ld	s0,16(sp)
    80003888:	00000797          	auipc	a5,0x0
    8000388c:	d9c78793          	addi	a5,a5,-612 # 80003624 <consoleread>
    80003890:	0af4bc23          	sd	a5,184(s1)
    80003894:	00000797          	auipc	a5,0x0
    80003898:	cec78793          	addi	a5,a5,-788 # 80003580 <consolewrite>
    8000389c:	0cf4b023          	sd	a5,192(s1)
    800038a0:	00813483          	ld	s1,8(sp)
    800038a4:	02010113          	addi	sp,sp,32
    800038a8:	00008067          	ret

00000000800038ac <console_read>:
    800038ac:	ff010113          	addi	sp,sp,-16
    800038b0:	00813423          	sd	s0,8(sp)
    800038b4:	01010413          	addi	s0,sp,16
    800038b8:	00813403          	ld	s0,8(sp)
    800038bc:	00004317          	auipc	t1,0x4
    800038c0:	8c433303          	ld	t1,-1852(t1) # 80007180 <devsw+0x10>
    800038c4:	01010113          	addi	sp,sp,16
    800038c8:	00030067          	jr	t1

00000000800038cc <console_write>:
    800038cc:	ff010113          	addi	sp,sp,-16
    800038d0:	00813423          	sd	s0,8(sp)
    800038d4:	01010413          	addi	s0,sp,16
    800038d8:	00813403          	ld	s0,8(sp)
    800038dc:	00004317          	auipc	t1,0x4
    800038e0:	8ac33303          	ld	t1,-1876(t1) # 80007188 <devsw+0x18>
    800038e4:	01010113          	addi	sp,sp,16
    800038e8:	00030067          	jr	t1

00000000800038ec <panic>:
    800038ec:	fe010113          	addi	sp,sp,-32
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	00813823          	sd	s0,16(sp)
    800038f8:	00913423          	sd	s1,8(sp)
    800038fc:	02010413          	addi	s0,sp,32
    80003900:	00050493          	mv	s1,a0
    80003904:	00002517          	auipc	a0,0x2
    80003908:	99c50513          	addi	a0,a0,-1636 # 800052a0 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    8000390c:	00004797          	auipc	a5,0x4
    80003910:	9007ae23          	sw	zero,-1764(a5) # 80007228 <pr+0x18>
    80003914:	00000097          	auipc	ra,0x0
    80003918:	034080e7          	jalr	52(ra) # 80003948 <__printf>
    8000391c:	00048513          	mv	a0,s1
    80003920:	00000097          	auipc	ra,0x0
    80003924:	028080e7          	jalr	40(ra) # 80003948 <__printf>
    80003928:	00002517          	auipc	a0,0x2
    8000392c:	95850513          	addi	a0,a0,-1704 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003930:	00000097          	auipc	ra,0x0
    80003934:	018080e7          	jalr	24(ra) # 80003948 <__printf>
    80003938:	00100793          	li	a5,1
    8000393c:	00002717          	auipc	a4,0x2
    80003940:	64f72e23          	sw	a5,1628(a4) # 80005f98 <panicked>
    80003944:	0000006f          	j	80003944 <panic+0x58>

0000000080003948 <__printf>:
    80003948:	f3010113          	addi	sp,sp,-208
    8000394c:	08813023          	sd	s0,128(sp)
    80003950:	07313423          	sd	s3,104(sp)
    80003954:	09010413          	addi	s0,sp,144
    80003958:	05813023          	sd	s8,64(sp)
    8000395c:	08113423          	sd	ra,136(sp)
    80003960:	06913c23          	sd	s1,120(sp)
    80003964:	07213823          	sd	s2,112(sp)
    80003968:	07413023          	sd	s4,96(sp)
    8000396c:	05513c23          	sd	s5,88(sp)
    80003970:	05613823          	sd	s6,80(sp)
    80003974:	05713423          	sd	s7,72(sp)
    80003978:	03913c23          	sd	s9,56(sp)
    8000397c:	03a13823          	sd	s10,48(sp)
    80003980:	03b13423          	sd	s11,40(sp)
    80003984:	00004317          	auipc	t1,0x4
    80003988:	88c30313          	addi	t1,t1,-1908 # 80007210 <pr>
    8000398c:	01832c03          	lw	s8,24(t1)
    80003990:	00b43423          	sd	a1,8(s0)
    80003994:	00c43823          	sd	a2,16(s0)
    80003998:	00d43c23          	sd	a3,24(s0)
    8000399c:	02e43023          	sd	a4,32(s0)
    800039a0:	02f43423          	sd	a5,40(s0)
    800039a4:	03043823          	sd	a6,48(s0)
    800039a8:	03143c23          	sd	a7,56(s0)
    800039ac:	00050993          	mv	s3,a0
    800039b0:	4a0c1663          	bnez	s8,80003e5c <__printf+0x514>
    800039b4:	60098c63          	beqz	s3,80003fcc <__printf+0x684>
    800039b8:	0009c503          	lbu	a0,0(s3)
    800039bc:	00840793          	addi	a5,s0,8
    800039c0:	f6f43c23          	sd	a5,-136(s0)
    800039c4:	00000493          	li	s1,0
    800039c8:	22050063          	beqz	a0,80003be8 <__printf+0x2a0>
    800039cc:	00002a37          	lui	s4,0x2
    800039d0:	00018ab7          	lui	s5,0x18
    800039d4:	000f4b37          	lui	s6,0xf4
    800039d8:	00989bb7          	lui	s7,0x989
    800039dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800039e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800039e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800039e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800039ec:	00148c9b          	addiw	s9,s1,1
    800039f0:	02500793          	li	a5,37
    800039f4:	01998933          	add	s2,s3,s9
    800039f8:	38f51263          	bne	a0,a5,80003d7c <__printf+0x434>
    800039fc:	00094783          	lbu	a5,0(s2)
    80003a00:	00078c9b          	sext.w	s9,a5
    80003a04:	1e078263          	beqz	a5,80003be8 <__printf+0x2a0>
    80003a08:	0024849b          	addiw	s1,s1,2
    80003a0c:	07000713          	li	a4,112
    80003a10:	00998933          	add	s2,s3,s1
    80003a14:	38e78a63          	beq	a5,a4,80003da8 <__printf+0x460>
    80003a18:	20f76863          	bltu	a4,a5,80003c28 <__printf+0x2e0>
    80003a1c:	42a78863          	beq	a5,a0,80003e4c <__printf+0x504>
    80003a20:	06400713          	li	a4,100
    80003a24:	40e79663          	bne	a5,a4,80003e30 <__printf+0x4e8>
    80003a28:	f7843783          	ld	a5,-136(s0)
    80003a2c:	0007a603          	lw	a2,0(a5)
    80003a30:	00878793          	addi	a5,a5,8
    80003a34:	f6f43c23          	sd	a5,-136(s0)
    80003a38:	42064a63          	bltz	a2,80003e6c <__printf+0x524>
    80003a3c:	00a00713          	li	a4,10
    80003a40:	02e677bb          	remuw	a5,a2,a4
    80003a44:	00002d97          	auipc	s11,0x2
    80003a48:	884d8d93          	addi	s11,s11,-1916 # 800052c8 <digits>
    80003a4c:	00900593          	li	a1,9
    80003a50:	0006051b          	sext.w	a0,a2
    80003a54:	00000c93          	li	s9,0
    80003a58:	02079793          	slli	a5,a5,0x20
    80003a5c:	0207d793          	srli	a5,a5,0x20
    80003a60:	00fd87b3          	add	a5,s11,a5
    80003a64:	0007c783          	lbu	a5,0(a5)
    80003a68:	02e656bb          	divuw	a3,a2,a4
    80003a6c:	f8f40023          	sb	a5,-128(s0)
    80003a70:	14c5d863          	bge	a1,a2,80003bc0 <__printf+0x278>
    80003a74:	06300593          	li	a1,99
    80003a78:	00100c93          	li	s9,1
    80003a7c:	02e6f7bb          	remuw	a5,a3,a4
    80003a80:	02079793          	slli	a5,a5,0x20
    80003a84:	0207d793          	srli	a5,a5,0x20
    80003a88:	00fd87b3          	add	a5,s11,a5
    80003a8c:	0007c783          	lbu	a5,0(a5)
    80003a90:	02e6d73b          	divuw	a4,a3,a4
    80003a94:	f8f400a3          	sb	a5,-127(s0)
    80003a98:	12a5f463          	bgeu	a1,a0,80003bc0 <__printf+0x278>
    80003a9c:	00a00693          	li	a3,10
    80003aa0:	00900593          	li	a1,9
    80003aa4:	02d777bb          	remuw	a5,a4,a3
    80003aa8:	02079793          	slli	a5,a5,0x20
    80003aac:	0207d793          	srli	a5,a5,0x20
    80003ab0:	00fd87b3          	add	a5,s11,a5
    80003ab4:	0007c503          	lbu	a0,0(a5)
    80003ab8:	02d757bb          	divuw	a5,a4,a3
    80003abc:	f8a40123          	sb	a0,-126(s0)
    80003ac0:	48e5f263          	bgeu	a1,a4,80003f44 <__printf+0x5fc>
    80003ac4:	06300513          	li	a0,99
    80003ac8:	02d7f5bb          	remuw	a1,a5,a3
    80003acc:	02059593          	slli	a1,a1,0x20
    80003ad0:	0205d593          	srli	a1,a1,0x20
    80003ad4:	00bd85b3          	add	a1,s11,a1
    80003ad8:	0005c583          	lbu	a1,0(a1)
    80003adc:	02d7d7bb          	divuw	a5,a5,a3
    80003ae0:	f8b401a3          	sb	a1,-125(s0)
    80003ae4:	48e57263          	bgeu	a0,a4,80003f68 <__printf+0x620>
    80003ae8:	3e700513          	li	a0,999
    80003aec:	02d7f5bb          	remuw	a1,a5,a3
    80003af0:	02059593          	slli	a1,a1,0x20
    80003af4:	0205d593          	srli	a1,a1,0x20
    80003af8:	00bd85b3          	add	a1,s11,a1
    80003afc:	0005c583          	lbu	a1,0(a1)
    80003b00:	02d7d7bb          	divuw	a5,a5,a3
    80003b04:	f8b40223          	sb	a1,-124(s0)
    80003b08:	46e57663          	bgeu	a0,a4,80003f74 <__printf+0x62c>
    80003b0c:	02d7f5bb          	remuw	a1,a5,a3
    80003b10:	02059593          	slli	a1,a1,0x20
    80003b14:	0205d593          	srli	a1,a1,0x20
    80003b18:	00bd85b3          	add	a1,s11,a1
    80003b1c:	0005c583          	lbu	a1,0(a1)
    80003b20:	02d7d7bb          	divuw	a5,a5,a3
    80003b24:	f8b402a3          	sb	a1,-123(s0)
    80003b28:	46ea7863          	bgeu	s4,a4,80003f98 <__printf+0x650>
    80003b2c:	02d7f5bb          	remuw	a1,a5,a3
    80003b30:	02059593          	slli	a1,a1,0x20
    80003b34:	0205d593          	srli	a1,a1,0x20
    80003b38:	00bd85b3          	add	a1,s11,a1
    80003b3c:	0005c583          	lbu	a1,0(a1)
    80003b40:	02d7d7bb          	divuw	a5,a5,a3
    80003b44:	f8b40323          	sb	a1,-122(s0)
    80003b48:	3eeaf863          	bgeu	s5,a4,80003f38 <__printf+0x5f0>
    80003b4c:	02d7f5bb          	remuw	a1,a5,a3
    80003b50:	02059593          	slli	a1,a1,0x20
    80003b54:	0205d593          	srli	a1,a1,0x20
    80003b58:	00bd85b3          	add	a1,s11,a1
    80003b5c:	0005c583          	lbu	a1,0(a1)
    80003b60:	02d7d7bb          	divuw	a5,a5,a3
    80003b64:	f8b403a3          	sb	a1,-121(s0)
    80003b68:	42eb7e63          	bgeu	s6,a4,80003fa4 <__printf+0x65c>
    80003b6c:	02d7f5bb          	remuw	a1,a5,a3
    80003b70:	02059593          	slli	a1,a1,0x20
    80003b74:	0205d593          	srli	a1,a1,0x20
    80003b78:	00bd85b3          	add	a1,s11,a1
    80003b7c:	0005c583          	lbu	a1,0(a1)
    80003b80:	02d7d7bb          	divuw	a5,a5,a3
    80003b84:	f8b40423          	sb	a1,-120(s0)
    80003b88:	42ebfc63          	bgeu	s7,a4,80003fc0 <__printf+0x678>
    80003b8c:	02079793          	slli	a5,a5,0x20
    80003b90:	0207d793          	srli	a5,a5,0x20
    80003b94:	00fd8db3          	add	s11,s11,a5
    80003b98:	000dc703          	lbu	a4,0(s11)
    80003b9c:	00a00793          	li	a5,10
    80003ba0:	00900c93          	li	s9,9
    80003ba4:	f8e404a3          	sb	a4,-119(s0)
    80003ba8:	00065c63          	bgez	a2,80003bc0 <__printf+0x278>
    80003bac:	f9040713          	addi	a4,s0,-112
    80003bb0:	00f70733          	add	a4,a4,a5
    80003bb4:	02d00693          	li	a3,45
    80003bb8:	fed70823          	sb	a3,-16(a4)
    80003bbc:	00078c93          	mv	s9,a5
    80003bc0:	f8040793          	addi	a5,s0,-128
    80003bc4:	01978cb3          	add	s9,a5,s9
    80003bc8:	f7f40d13          	addi	s10,s0,-129
    80003bcc:	000cc503          	lbu	a0,0(s9)
    80003bd0:	fffc8c93          	addi	s9,s9,-1
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	b90080e7          	jalr	-1136(ra) # 80003764 <consputc>
    80003bdc:	ffac98e3          	bne	s9,s10,80003bcc <__printf+0x284>
    80003be0:	00094503          	lbu	a0,0(s2)
    80003be4:	e00514e3          	bnez	a0,800039ec <__printf+0xa4>
    80003be8:	1a0c1663          	bnez	s8,80003d94 <__printf+0x44c>
    80003bec:	08813083          	ld	ra,136(sp)
    80003bf0:	08013403          	ld	s0,128(sp)
    80003bf4:	07813483          	ld	s1,120(sp)
    80003bf8:	07013903          	ld	s2,112(sp)
    80003bfc:	06813983          	ld	s3,104(sp)
    80003c00:	06013a03          	ld	s4,96(sp)
    80003c04:	05813a83          	ld	s5,88(sp)
    80003c08:	05013b03          	ld	s6,80(sp)
    80003c0c:	04813b83          	ld	s7,72(sp)
    80003c10:	04013c03          	ld	s8,64(sp)
    80003c14:	03813c83          	ld	s9,56(sp)
    80003c18:	03013d03          	ld	s10,48(sp)
    80003c1c:	02813d83          	ld	s11,40(sp)
    80003c20:	0d010113          	addi	sp,sp,208
    80003c24:	00008067          	ret
    80003c28:	07300713          	li	a4,115
    80003c2c:	1ce78a63          	beq	a5,a4,80003e00 <__printf+0x4b8>
    80003c30:	07800713          	li	a4,120
    80003c34:	1ee79e63          	bne	a5,a4,80003e30 <__printf+0x4e8>
    80003c38:	f7843783          	ld	a5,-136(s0)
    80003c3c:	0007a703          	lw	a4,0(a5)
    80003c40:	00878793          	addi	a5,a5,8
    80003c44:	f6f43c23          	sd	a5,-136(s0)
    80003c48:	28074263          	bltz	a4,80003ecc <__printf+0x584>
    80003c4c:	00001d97          	auipc	s11,0x1
    80003c50:	67cd8d93          	addi	s11,s11,1660 # 800052c8 <digits>
    80003c54:	00f77793          	andi	a5,a4,15
    80003c58:	00fd87b3          	add	a5,s11,a5
    80003c5c:	0007c683          	lbu	a3,0(a5)
    80003c60:	00f00613          	li	a2,15
    80003c64:	0007079b          	sext.w	a5,a4
    80003c68:	f8d40023          	sb	a3,-128(s0)
    80003c6c:	0047559b          	srliw	a1,a4,0x4
    80003c70:	0047569b          	srliw	a3,a4,0x4
    80003c74:	00000c93          	li	s9,0
    80003c78:	0ee65063          	bge	a2,a4,80003d58 <__printf+0x410>
    80003c7c:	00f6f693          	andi	a3,a3,15
    80003c80:	00dd86b3          	add	a3,s11,a3
    80003c84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003c88:	0087d79b          	srliw	a5,a5,0x8
    80003c8c:	00100c93          	li	s9,1
    80003c90:	f8d400a3          	sb	a3,-127(s0)
    80003c94:	0cb67263          	bgeu	a2,a1,80003d58 <__printf+0x410>
    80003c98:	00f7f693          	andi	a3,a5,15
    80003c9c:	00dd86b3          	add	a3,s11,a3
    80003ca0:	0006c583          	lbu	a1,0(a3)
    80003ca4:	00f00613          	li	a2,15
    80003ca8:	0047d69b          	srliw	a3,a5,0x4
    80003cac:	f8b40123          	sb	a1,-126(s0)
    80003cb0:	0047d593          	srli	a1,a5,0x4
    80003cb4:	28f67e63          	bgeu	a2,a5,80003f50 <__printf+0x608>
    80003cb8:	00f6f693          	andi	a3,a3,15
    80003cbc:	00dd86b3          	add	a3,s11,a3
    80003cc0:	0006c503          	lbu	a0,0(a3)
    80003cc4:	0087d813          	srli	a6,a5,0x8
    80003cc8:	0087d69b          	srliw	a3,a5,0x8
    80003ccc:	f8a401a3          	sb	a0,-125(s0)
    80003cd0:	28b67663          	bgeu	a2,a1,80003f5c <__printf+0x614>
    80003cd4:	00f6f693          	andi	a3,a3,15
    80003cd8:	00dd86b3          	add	a3,s11,a3
    80003cdc:	0006c583          	lbu	a1,0(a3)
    80003ce0:	00c7d513          	srli	a0,a5,0xc
    80003ce4:	00c7d69b          	srliw	a3,a5,0xc
    80003ce8:	f8b40223          	sb	a1,-124(s0)
    80003cec:	29067a63          	bgeu	a2,a6,80003f80 <__printf+0x638>
    80003cf0:	00f6f693          	andi	a3,a3,15
    80003cf4:	00dd86b3          	add	a3,s11,a3
    80003cf8:	0006c583          	lbu	a1,0(a3)
    80003cfc:	0107d813          	srli	a6,a5,0x10
    80003d00:	0107d69b          	srliw	a3,a5,0x10
    80003d04:	f8b402a3          	sb	a1,-123(s0)
    80003d08:	28a67263          	bgeu	a2,a0,80003f8c <__printf+0x644>
    80003d0c:	00f6f693          	andi	a3,a3,15
    80003d10:	00dd86b3          	add	a3,s11,a3
    80003d14:	0006c683          	lbu	a3,0(a3)
    80003d18:	0147d79b          	srliw	a5,a5,0x14
    80003d1c:	f8d40323          	sb	a3,-122(s0)
    80003d20:	21067663          	bgeu	a2,a6,80003f2c <__printf+0x5e4>
    80003d24:	02079793          	slli	a5,a5,0x20
    80003d28:	0207d793          	srli	a5,a5,0x20
    80003d2c:	00fd8db3          	add	s11,s11,a5
    80003d30:	000dc683          	lbu	a3,0(s11)
    80003d34:	00800793          	li	a5,8
    80003d38:	00700c93          	li	s9,7
    80003d3c:	f8d403a3          	sb	a3,-121(s0)
    80003d40:	00075c63          	bgez	a4,80003d58 <__printf+0x410>
    80003d44:	f9040713          	addi	a4,s0,-112
    80003d48:	00f70733          	add	a4,a4,a5
    80003d4c:	02d00693          	li	a3,45
    80003d50:	fed70823          	sb	a3,-16(a4)
    80003d54:	00078c93          	mv	s9,a5
    80003d58:	f8040793          	addi	a5,s0,-128
    80003d5c:	01978cb3          	add	s9,a5,s9
    80003d60:	f7f40d13          	addi	s10,s0,-129
    80003d64:	000cc503          	lbu	a0,0(s9)
    80003d68:	fffc8c93          	addi	s9,s9,-1
    80003d6c:	00000097          	auipc	ra,0x0
    80003d70:	9f8080e7          	jalr	-1544(ra) # 80003764 <consputc>
    80003d74:	ff9d18e3          	bne	s10,s9,80003d64 <__printf+0x41c>
    80003d78:	0100006f          	j	80003d88 <__printf+0x440>
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	9e8080e7          	jalr	-1560(ra) # 80003764 <consputc>
    80003d84:	000c8493          	mv	s1,s9
    80003d88:	00094503          	lbu	a0,0(s2)
    80003d8c:	c60510e3          	bnez	a0,800039ec <__printf+0xa4>
    80003d90:	e40c0ee3          	beqz	s8,80003bec <__printf+0x2a4>
    80003d94:	00003517          	auipc	a0,0x3
    80003d98:	47c50513          	addi	a0,a0,1148 # 80007210 <pr>
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	94c080e7          	jalr	-1716(ra) # 800046e8 <release>
    80003da4:	e49ff06f          	j	80003bec <__printf+0x2a4>
    80003da8:	f7843783          	ld	a5,-136(s0)
    80003dac:	03000513          	li	a0,48
    80003db0:	01000d13          	li	s10,16
    80003db4:	00878713          	addi	a4,a5,8
    80003db8:	0007bc83          	ld	s9,0(a5)
    80003dbc:	f6e43c23          	sd	a4,-136(s0)
    80003dc0:	00000097          	auipc	ra,0x0
    80003dc4:	9a4080e7          	jalr	-1628(ra) # 80003764 <consputc>
    80003dc8:	07800513          	li	a0,120
    80003dcc:	00000097          	auipc	ra,0x0
    80003dd0:	998080e7          	jalr	-1640(ra) # 80003764 <consputc>
    80003dd4:	00001d97          	auipc	s11,0x1
    80003dd8:	4f4d8d93          	addi	s11,s11,1268 # 800052c8 <digits>
    80003ddc:	03ccd793          	srli	a5,s9,0x3c
    80003de0:	00fd87b3          	add	a5,s11,a5
    80003de4:	0007c503          	lbu	a0,0(a5)
    80003de8:	fffd0d1b          	addiw	s10,s10,-1
    80003dec:	004c9c93          	slli	s9,s9,0x4
    80003df0:	00000097          	auipc	ra,0x0
    80003df4:	974080e7          	jalr	-1676(ra) # 80003764 <consputc>
    80003df8:	fe0d12e3          	bnez	s10,80003ddc <__printf+0x494>
    80003dfc:	f8dff06f          	j	80003d88 <__printf+0x440>
    80003e00:	f7843783          	ld	a5,-136(s0)
    80003e04:	0007bc83          	ld	s9,0(a5)
    80003e08:	00878793          	addi	a5,a5,8
    80003e0c:	f6f43c23          	sd	a5,-136(s0)
    80003e10:	000c9a63          	bnez	s9,80003e24 <__printf+0x4dc>
    80003e14:	1080006f          	j	80003f1c <__printf+0x5d4>
    80003e18:	001c8c93          	addi	s9,s9,1
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	948080e7          	jalr	-1720(ra) # 80003764 <consputc>
    80003e24:	000cc503          	lbu	a0,0(s9)
    80003e28:	fe0518e3          	bnez	a0,80003e18 <__printf+0x4d0>
    80003e2c:	f5dff06f          	j	80003d88 <__printf+0x440>
    80003e30:	02500513          	li	a0,37
    80003e34:	00000097          	auipc	ra,0x0
    80003e38:	930080e7          	jalr	-1744(ra) # 80003764 <consputc>
    80003e3c:	000c8513          	mv	a0,s9
    80003e40:	00000097          	auipc	ra,0x0
    80003e44:	924080e7          	jalr	-1756(ra) # 80003764 <consputc>
    80003e48:	f41ff06f          	j	80003d88 <__printf+0x440>
    80003e4c:	02500513          	li	a0,37
    80003e50:	00000097          	auipc	ra,0x0
    80003e54:	914080e7          	jalr	-1772(ra) # 80003764 <consputc>
    80003e58:	f31ff06f          	j	80003d88 <__printf+0x440>
    80003e5c:	00030513          	mv	a0,t1
    80003e60:	00000097          	auipc	ra,0x0
    80003e64:	7bc080e7          	jalr	1980(ra) # 8000461c <acquire>
    80003e68:	b4dff06f          	j	800039b4 <__printf+0x6c>
    80003e6c:	40c0053b          	negw	a0,a2
    80003e70:	00a00713          	li	a4,10
    80003e74:	02e576bb          	remuw	a3,a0,a4
    80003e78:	00001d97          	auipc	s11,0x1
    80003e7c:	450d8d93          	addi	s11,s11,1104 # 800052c8 <digits>
    80003e80:	ff700593          	li	a1,-9
    80003e84:	02069693          	slli	a3,a3,0x20
    80003e88:	0206d693          	srli	a3,a3,0x20
    80003e8c:	00dd86b3          	add	a3,s11,a3
    80003e90:	0006c683          	lbu	a3,0(a3)
    80003e94:	02e557bb          	divuw	a5,a0,a4
    80003e98:	f8d40023          	sb	a3,-128(s0)
    80003e9c:	10b65e63          	bge	a2,a1,80003fb8 <__printf+0x670>
    80003ea0:	06300593          	li	a1,99
    80003ea4:	02e7f6bb          	remuw	a3,a5,a4
    80003ea8:	02069693          	slli	a3,a3,0x20
    80003eac:	0206d693          	srli	a3,a3,0x20
    80003eb0:	00dd86b3          	add	a3,s11,a3
    80003eb4:	0006c683          	lbu	a3,0(a3)
    80003eb8:	02e7d73b          	divuw	a4,a5,a4
    80003ebc:	00200793          	li	a5,2
    80003ec0:	f8d400a3          	sb	a3,-127(s0)
    80003ec4:	bca5ece3          	bltu	a1,a0,80003a9c <__printf+0x154>
    80003ec8:	ce5ff06f          	j	80003bac <__printf+0x264>
    80003ecc:	40e007bb          	negw	a5,a4
    80003ed0:	00001d97          	auipc	s11,0x1
    80003ed4:	3f8d8d93          	addi	s11,s11,1016 # 800052c8 <digits>
    80003ed8:	00f7f693          	andi	a3,a5,15
    80003edc:	00dd86b3          	add	a3,s11,a3
    80003ee0:	0006c583          	lbu	a1,0(a3)
    80003ee4:	ff100613          	li	a2,-15
    80003ee8:	0047d69b          	srliw	a3,a5,0x4
    80003eec:	f8b40023          	sb	a1,-128(s0)
    80003ef0:	0047d59b          	srliw	a1,a5,0x4
    80003ef4:	0ac75e63          	bge	a4,a2,80003fb0 <__printf+0x668>
    80003ef8:	00f6f693          	andi	a3,a3,15
    80003efc:	00dd86b3          	add	a3,s11,a3
    80003f00:	0006c603          	lbu	a2,0(a3)
    80003f04:	00f00693          	li	a3,15
    80003f08:	0087d79b          	srliw	a5,a5,0x8
    80003f0c:	f8c400a3          	sb	a2,-127(s0)
    80003f10:	d8b6e4e3          	bltu	a3,a1,80003c98 <__printf+0x350>
    80003f14:	00200793          	li	a5,2
    80003f18:	e2dff06f          	j	80003d44 <__printf+0x3fc>
    80003f1c:	00001c97          	auipc	s9,0x1
    80003f20:	38cc8c93          	addi	s9,s9,908 # 800052a8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80003f24:	02800513          	li	a0,40
    80003f28:	ef1ff06f          	j	80003e18 <__printf+0x4d0>
    80003f2c:	00700793          	li	a5,7
    80003f30:	00600c93          	li	s9,6
    80003f34:	e0dff06f          	j	80003d40 <__printf+0x3f8>
    80003f38:	00700793          	li	a5,7
    80003f3c:	00600c93          	li	s9,6
    80003f40:	c69ff06f          	j	80003ba8 <__printf+0x260>
    80003f44:	00300793          	li	a5,3
    80003f48:	00200c93          	li	s9,2
    80003f4c:	c5dff06f          	j	80003ba8 <__printf+0x260>
    80003f50:	00300793          	li	a5,3
    80003f54:	00200c93          	li	s9,2
    80003f58:	de9ff06f          	j	80003d40 <__printf+0x3f8>
    80003f5c:	00400793          	li	a5,4
    80003f60:	00300c93          	li	s9,3
    80003f64:	dddff06f          	j	80003d40 <__printf+0x3f8>
    80003f68:	00400793          	li	a5,4
    80003f6c:	00300c93          	li	s9,3
    80003f70:	c39ff06f          	j	80003ba8 <__printf+0x260>
    80003f74:	00500793          	li	a5,5
    80003f78:	00400c93          	li	s9,4
    80003f7c:	c2dff06f          	j	80003ba8 <__printf+0x260>
    80003f80:	00500793          	li	a5,5
    80003f84:	00400c93          	li	s9,4
    80003f88:	db9ff06f          	j	80003d40 <__printf+0x3f8>
    80003f8c:	00600793          	li	a5,6
    80003f90:	00500c93          	li	s9,5
    80003f94:	dadff06f          	j	80003d40 <__printf+0x3f8>
    80003f98:	00600793          	li	a5,6
    80003f9c:	00500c93          	li	s9,5
    80003fa0:	c09ff06f          	j	80003ba8 <__printf+0x260>
    80003fa4:	00800793          	li	a5,8
    80003fa8:	00700c93          	li	s9,7
    80003fac:	bfdff06f          	j	80003ba8 <__printf+0x260>
    80003fb0:	00100793          	li	a5,1
    80003fb4:	d91ff06f          	j	80003d44 <__printf+0x3fc>
    80003fb8:	00100793          	li	a5,1
    80003fbc:	bf1ff06f          	j	80003bac <__printf+0x264>
    80003fc0:	00900793          	li	a5,9
    80003fc4:	00800c93          	li	s9,8
    80003fc8:	be1ff06f          	j	80003ba8 <__printf+0x260>
    80003fcc:	00001517          	auipc	a0,0x1
    80003fd0:	2e450513          	addi	a0,a0,740 # 800052b0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80003fd4:	00000097          	auipc	ra,0x0
    80003fd8:	918080e7          	jalr	-1768(ra) # 800038ec <panic>

0000000080003fdc <printfinit>:
    80003fdc:	fe010113          	addi	sp,sp,-32
    80003fe0:	00813823          	sd	s0,16(sp)
    80003fe4:	00913423          	sd	s1,8(sp)
    80003fe8:	00113c23          	sd	ra,24(sp)
    80003fec:	02010413          	addi	s0,sp,32
    80003ff0:	00003497          	auipc	s1,0x3
    80003ff4:	22048493          	addi	s1,s1,544 # 80007210 <pr>
    80003ff8:	00048513          	mv	a0,s1
    80003ffc:	00001597          	auipc	a1,0x1
    80004000:	2c458593          	addi	a1,a1,708 # 800052c0 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004004:	00000097          	auipc	ra,0x0
    80004008:	5f4080e7          	jalr	1524(ra) # 800045f8 <initlock>
    8000400c:	01813083          	ld	ra,24(sp)
    80004010:	01013403          	ld	s0,16(sp)
    80004014:	0004ac23          	sw	zero,24(s1)
    80004018:	00813483          	ld	s1,8(sp)
    8000401c:	02010113          	addi	sp,sp,32
    80004020:	00008067          	ret

0000000080004024 <uartinit>:
    80004024:	ff010113          	addi	sp,sp,-16
    80004028:	00813423          	sd	s0,8(sp)
    8000402c:	01010413          	addi	s0,sp,16
    80004030:	100007b7          	lui	a5,0x10000
    80004034:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004038:	f8000713          	li	a4,-128
    8000403c:	00e781a3          	sb	a4,3(a5)
    80004040:	00300713          	li	a4,3
    80004044:	00e78023          	sb	a4,0(a5)
    80004048:	000780a3          	sb	zero,1(a5)
    8000404c:	00e781a3          	sb	a4,3(a5)
    80004050:	00700693          	li	a3,7
    80004054:	00d78123          	sb	a3,2(a5)
    80004058:	00e780a3          	sb	a4,1(a5)
    8000405c:	00813403          	ld	s0,8(sp)
    80004060:	01010113          	addi	sp,sp,16
    80004064:	00008067          	ret

0000000080004068 <uartputc>:
    80004068:	00002797          	auipc	a5,0x2
    8000406c:	f307a783          	lw	a5,-208(a5) # 80005f98 <panicked>
    80004070:	00078463          	beqz	a5,80004078 <uartputc+0x10>
    80004074:	0000006f          	j	80004074 <uartputc+0xc>
    80004078:	fd010113          	addi	sp,sp,-48
    8000407c:	02813023          	sd	s0,32(sp)
    80004080:	00913c23          	sd	s1,24(sp)
    80004084:	01213823          	sd	s2,16(sp)
    80004088:	01313423          	sd	s3,8(sp)
    8000408c:	02113423          	sd	ra,40(sp)
    80004090:	03010413          	addi	s0,sp,48
    80004094:	00002917          	auipc	s2,0x2
    80004098:	f0c90913          	addi	s2,s2,-244 # 80005fa0 <uart_tx_r>
    8000409c:	00093783          	ld	a5,0(s2)
    800040a0:	00002497          	auipc	s1,0x2
    800040a4:	f0848493          	addi	s1,s1,-248 # 80005fa8 <uart_tx_w>
    800040a8:	0004b703          	ld	a4,0(s1)
    800040ac:	02078693          	addi	a3,a5,32
    800040b0:	00050993          	mv	s3,a0
    800040b4:	02e69c63          	bne	a3,a4,800040ec <uartputc+0x84>
    800040b8:	00001097          	auipc	ra,0x1
    800040bc:	834080e7          	jalr	-1996(ra) # 800048ec <push_on>
    800040c0:	00093783          	ld	a5,0(s2)
    800040c4:	0004b703          	ld	a4,0(s1)
    800040c8:	02078793          	addi	a5,a5,32
    800040cc:	00e79463          	bne	a5,a4,800040d4 <uartputc+0x6c>
    800040d0:	0000006f          	j	800040d0 <uartputc+0x68>
    800040d4:	00001097          	auipc	ra,0x1
    800040d8:	88c080e7          	jalr	-1908(ra) # 80004960 <pop_on>
    800040dc:	00093783          	ld	a5,0(s2)
    800040e0:	0004b703          	ld	a4,0(s1)
    800040e4:	02078693          	addi	a3,a5,32
    800040e8:	fce688e3          	beq	a3,a4,800040b8 <uartputc+0x50>
    800040ec:	01f77693          	andi	a3,a4,31
    800040f0:	00003597          	auipc	a1,0x3
    800040f4:	14058593          	addi	a1,a1,320 # 80007230 <uart_tx_buf>
    800040f8:	00d586b3          	add	a3,a1,a3
    800040fc:	00170713          	addi	a4,a4,1
    80004100:	01368023          	sb	s3,0(a3)
    80004104:	00e4b023          	sd	a4,0(s1)
    80004108:	10000637          	lui	a2,0x10000
    8000410c:	02f71063          	bne	a4,a5,8000412c <uartputc+0xc4>
    80004110:	0340006f          	j	80004144 <uartputc+0xdc>
    80004114:	00074703          	lbu	a4,0(a4)
    80004118:	00f93023          	sd	a5,0(s2)
    8000411c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004120:	00093783          	ld	a5,0(s2)
    80004124:	0004b703          	ld	a4,0(s1)
    80004128:	00f70e63          	beq	a4,a5,80004144 <uartputc+0xdc>
    8000412c:	00564683          	lbu	a3,5(a2)
    80004130:	01f7f713          	andi	a4,a5,31
    80004134:	00e58733          	add	a4,a1,a4
    80004138:	0206f693          	andi	a3,a3,32
    8000413c:	00178793          	addi	a5,a5,1
    80004140:	fc069ae3          	bnez	a3,80004114 <uartputc+0xac>
    80004144:	02813083          	ld	ra,40(sp)
    80004148:	02013403          	ld	s0,32(sp)
    8000414c:	01813483          	ld	s1,24(sp)
    80004150:	01013903          	ld	s2,16(sp)
    80004154:	00813983          	ld	s3,8(sp)
    80004158:	03010113          	addi	sp,sp,48
    8000415c:	00008067          	ret

0000000080004160 <uartputc_sync>:
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00813423          	sd	s0,8(sp)
    80004168:	01010413          	addi	s0,sp,16
    8000416c:	00002717          	auipc	a4,0x2
    80004170:	e2c72703          	lw	a4,-468(a4) # 80005f98 <panicked>
    80004174:	02071663          	bnez	a4,800041a0 <uartputc_sync+0x40>
    80004178:	00050793          	mv	a5,a0
    8000417c:	100006b7          	lui	a3,0x10000
    80004180:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004184:	02077713          	andi	a4,a4,32
    80004188:	fe070ce3          	beqz	a4,80004180 <uartputc_sync+0x20>
    8000418c:	0ff7f793          	andi	a5,a5,255
    80004190:	00f68023          	sb	a5,0(a3)
    80004194:	00813403          	ld	s0,8(sp)
    80004198:	01010113          	addi	sp,sp,16
    8000419c:	00008067          	ret
    800041a0:	0000006f          	j	800041a0 <uartputc_sync+0x40>

00000000800041a4 <uartstart>:
    800041a4:	ff010113          	addi	sp,sp,-16
    800041a8:	00813423          	sd	s0,8(sp)
    800041ac:	01010413          	addi	s0,sp,16
    800041b0:	00002617          	auipc	a2,0x2
    800041b4:	df060613          	addi	a2,a2,-528 # 80005fa0 <uart_tx_r>
    800041b8:	00002517          	auipc	a0,0x2
    800041bc:	df050513          	addi	a0,a0,-528 # 80005fa8 <uart_tx_w>
    800041c0:	00063783          	ld	a5,0(a2)
    800041c4:	00053703          	ld	a4,0(a0)
    800041c8:	04f70263          	beq	a4,a5,8000420c <uartstart+0x68>
    800041cc:	100005b7          	lui	a1,0x10000
    800041d0:	00003817          	auipc	a6,0x3
    800041d4:	06080813          	addi	a6,a6,96 # 80007230 <uart_tx_buf>
    800041d8:	01c0006f          	j	800041f4 <uartstart+0x50>
    800041dc:	0006c703          	lbu	a4,0(a3)
    800041e0:	00f63023          	sd	a5,0(a2)
    800041e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041e8:	00063783          	ld	a5,0(a2)
    800041ec:	00053703          	ld	a4,0(a0)
    800041f0:	00f70e63          	beq	a4,a5,8000420c <uartstart+0x68>
    800041f4:	01f7f713          	andi	a4,a5,31
    800041f8:	00e806b3          	add	a3,a6,a4
    800041fc:	0055c703          	lbu	a4,5(a1)
    80004200:	00178793          	addi	a5,a5,1
    80004204:	02077713          	andi	a4,a4,32
    80004208:	fc071ae3          	bnez	a4,800041dc <uartstart+0x38>
    8000420c:	00813403          	ld	s0,8(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <uartgetc>:
    80004218:	ff010113          	addi	sp,sp,-16
    8000421c:	00813423          	sd	s0,8(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	10000737          	lui	a4,0x10000
    80004228:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000422c:	0017f793          	andi	a5,a5,1
    80004230:	00078c63          	beqz	a5,80004248 <uartgetc+0x30>
    80004234:	00074503          	lbu	a0,0(a4)
    80004238:	0ff57513          	andi	a0,a0,255
    8000423c:	00813403          	ld	s0,8(sp)
    80004240:	01010113          	addi	sp,sp,16
    80004244:	00008067          	ret
    80004248:	fff00513          	li	a0,-1
    8000424c:	ff1ff06f          	j	8000423c <uartgetc+0x24>

0000000080004250 <uartintr>:
    80004250:	100007b7          	lui	a5,0x10000
    80004254:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004258:	0017f793          	andi	a5,a5,1
    8000425c:	0a078463          	beqz	a5,80004304 <uartintr+0xb4>
    80004260:	fe010113          	addi	sp,sp,-32
    80004264:	00813823          	sd	s0,16(sp)
    80004268:	00913423          	sd	s1,8(sp)
    8000426c:	00113c23          	sd	ra,24(sp)
    80004270:	02010413          	addi	s0,sp,32
    80004274:	100004b7          	lui	s1,0x10000
    80004278:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000427c:	0ff57513          	andi	a0,a0,255
    80004280:	fffff097          	auipc	ra,0xfffff
    80004284:	534080e7          	jalr	1332(ra) # 800037b4 <consoleintr>
    80004288:	0054c783          	lbu	a5,5(s1)
    8000428c:	0017f793          	andi	a5,a5,1
    80004290:	fe0794e3          	bnez	a5,80004278 <uartintr+0x28>
    80004294:	00002617          	auipc	a2,0x2
    80004298:	d0c60613          	addi	a2,a2,-756 # 80005fa0 <uart_tx_r>
    8000429c:	00002517          	auipc	a0,0x2
    800042a0:	d0c50513          	addi	a0,a0,-756 # 80005fa8 <uart_tx_w>
    800042a4:	00063783          	ld	a5,0(a2)
    800042a8:	00053703          	ld	a4,0(a0)
    800042ac:	04f70263          	beq	a4,a5,800042f0 <uartintr+0xa0>
    800042b0:	100005b7          	lui	a1,0x10000
    800042b4:	00003817          	auipc	a6,0x3
    800042b8:	f7c80813          	addi	a6,a6,-132 # 80007230 <uart_tx_buf>
    800042bc:	01c0006f          	j	800042d8 <uartintr+0x88>
    800042c0:	0006c703          	lbu	a4,0(a3)
    800042c4:	00f63023          	sd	a5,0(a2)
    800042c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800042cc:	00063783          	ld	a5,0(a2)
    800042d0:	00053703          	ld	a4,0(a0)
    800042d4:	00f70e63          	beq	a4,a5,800042f0 <uartintr+0xa0>
    800042d8:	01f7f713          	andi	a4,a5,31
    800042dc:	00e806b3          	add	a3,a6,a4
    800042e0:	0055c703          	lbu	a4,5(a1)
    800042e4:	00178793          	addi	a5,a5,1
    800042e8:	02077713          	andi	a4,a4,32
    800042ec:	fc071ae3          	bnez	a4,800042c0 <uartintr+0x70>
    800042f0:	01813083          	ld	ra,24(sp)
    800042f4:	01013403          	ld	s0,16(sp)
    800042f8:	00813483          	ld	s1,8(sp)
    800042fc:	02010113          	addi	sp,sp,32
    80004300:	00008067          	ret
    80004304:	00002617          	auipc	a2,0x2
    80004308:	c9c60613          	addi	a2,a2,-868 # 80005fa0 <uart_tx_r>
    8000430c:	00002517          	auipc	a0,0x2
    80004310:	c9c50513          	addi	a0,a0,-868 # 80005fa8 <uart_tx_w>
    80004314:	00063783          	ld	a5,0(a2)
    80004318:	00053703          	ld	a4,0(a0)
    8000431c:	04f70263          	beq	a4,a5,80004360 <uartintr+0x110>
    80004320:	100005b7          	lui	a1,0x10000
    80004324:	00003817          	auipc	a6,0x3
    80004328:	f0c80813          	addi	a6,a6,-244 # 80007230 <uart_tx_buf>
    8000432c:	01c0006f          	j	80004348 <uartintr+0xf8>
    80004330:	0006c703          	lbu	a4,0(a3)
    80004334:	00f63023          	sd	a5,0(a2)
    80004338:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000433c:	00063783          	ld	a5,0(a2)
    80004340:	00053703          	ld	a4,0(a0)
    80004344:	02f70063          	beq	a4,a5,80004364 <uartintr+0x114>
    80004348:	01f7f713          	andi	a4,a5,31
    8000434c:	00e806b3          	add	a3,a6,a4
    80004350:	0055c703          	lbu	a4,5(a1)
    80004354:	00178793          	addi	a5,a5,1
    80004358:	02077713          	andi	a4,a4,32
    8000435c:	fc071ae3          	bnez	a4,80004330 <uartintr+0xe0>
    80004360:	00008067          	ret
    80004364:	00008067          	ret

0000000080004368 <kinit>:
    80004368:	fc010113          	addi	sp,sp,-64
    8000436c:	02913423          	sd	s1,40(sp)
    80004370:	fffff7b7          	lui	a5,0xfffff
    80004374:	00004497          	auipc	s1,0x4
    80004378:	edb48493          	addi	s1,s1,-293 # 8000824f <end+0xfff>
    8000437c:	02813823          	sd	s0,48(sp)
    80004380:	01313c23          	sd	s3,24(sp)
    80004384:	00f4f4b3          	and	s1,s1,a5
    80004388:	02113c23          	sd	ra,56(sp)
    8000438c:	03213023          	sd	s2,32(sp)
    80004390:	01413823          	sd	s4,16(sp)
    80004394:	01513423          	sd	s5,8(sp)
    80004398:	04010413          	addi	s0,sp,64
    8000439c:	000017b7          	lui	a5,0x1
    800043a0:	01100993          	li	s3,17
    800043a4:	00f487b3          	add	a5,s1,a5
    800043a8:	01b99993          	slli	s3,s3,0x1b
    800043ac:	06f9e063          	bltu	s3,a5,8000440c <kinit+0xa4>
    800043b0:	00003a97          	auipc	s5,0x3
    800043b4:	ea0a8a93          	addi	s5,s5,-352 # 80007250 <end>
    800043b8:	0754ec63          	bltu	s1,s5,80004430 <kinit+0xc8>
    800043bc:	0734fa63          	bgeu	s1,s3,80004430 <kinit+0xc8>
    800043c0:	00088a37          	lui	s4,0x88
    800043c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800043c8:	00002917          	auipc	s2,0x2
    800043cc:	be890913          	addi	s2,s2,-1048 # 80005fb0 <kmem>
    800043d0:	00ca1a13          	slli	s4,s4,0xc
    800043d4:	0140006f          	j	800043e8 <kinit+0x80>
    800043d8:	000017b7          	lui	a5,0x1
    800043dc:	00f484b3          	add	s1,s1,a5
    800043e0:	0554e863          	bltu	s1,s5,80004430 <kinit+0xc8>
    800043e4:	0534f663          	bgeu	s1,s3,80004430 <kinit+0xc8>
    800043e8:	00001637          	lui	a2,0x1
    800043ec:	00100593          	li	a1,1
    800043f0:	00048513          	mv	a0,s1
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	5e4080e7          	jalr	1508(ra) # 800049d8 <__memset>
    800043fc:	00093783          	ld	a5,0(s2)
    80004400:	00f4b023          	sd	a5,0(s1)
    80004404:	00993023          	sd	s1,0(s2)
    80004408:	fd4498e3          	bne	s1,s4,800043d8 <kinit+0x70>
    8000440c:	03813083          	ld	ra,56(sp)
    80004410:	03013403          	ld	s0,48(sp)
    80004414:	02813483          	ld	s1,40(sp)
    80004418:	02013903          	ld	s2,32(sp)
    8000441c:	01813983          	ld	s3,24(sp)
    80004420:	01013a03          	ld	s4,16(sp)
    80004424:	00813a83          	ld	s5,8(sp)
    80004428:	04010113          	addi	sp,sp,64
    8000442c:	00008067          	ret
    80004430:	00001517          	auipc	a0,0x1
    80004434:	eb050513          	addi	a0,a0,-336 # 800052e0 <digits+0x18>
    80004438:	fffff097          	auipc	ra,0xfffff
    8000443c:	4b4080e7          	jalr	1204(ra) # 800038ec <panic>

0000000080004440 <freerange>:
    80004440:	fc010113          	addi	sp,sp,-64
    80004444:	000017b7          	lui	a5,0x1
    80004448:	02913423          	sd	s1,40(sp)
    8000444c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004450:	009504b3          	add	s1,a0,s1
    80004454:	fffff537          	lui	a0,0xfffff
    80004458:	02813823          	sd	s0,48(sp)
    8000445c:	02113c23          	sd	ra,56(sp)
    80004460:	03213023          	sd	s2,32(sp)
    80004464:	01313c23          	sd	s3,24(sp)
    80004468:	01413823          	sd	s4,16(sp)
    8000446c:	01513423          	sd	s5,8(sp)
    80004470:	01613023          	sd	s6,0(sp)
    80004474:	04010413          	addi	s0,sp,64
    80004478:	00a4f4b3          	and	s1,s1,a0
    8000447c:	00f487b3          	add	a5,s1,a5
    80004480:	06f5e463          	bltu	a1,a5,800044e8 <freerange+0xa8>
    80004484:	00003a97          	auipc	s5,0x3
    80004488:	dcca8a93          	addi	s5,s5,-564 # 80007250 <end>
    8000448c:	0954e263          	bltu	s1,s5,80004510 <freerange+0xd0>
    80004490:	01100993          	li	s3,17
    80004494:	01b99993          	slli	s3,s3,0x1b
    80004498:	0734fc63          	bgeu	s1,s3,80004510 <freerange+0xd0>
    8000449c:	00058a13          	mv	s4,a1
    800044a0:	00002917          	auipc	s2,0x2
    800044a4:	b1090913          	addi	s2,s2,-1264 # 80005fb0 <kmem>
    800044a8:	00002b37          	lui	s6,0x2
    800044ac:	0140006f          	j	800044c0 <freerange+0x80>
    800044b0:	000017b7          	lui	a5,0x1
    800044b4:	00f484b3          	add	s1,s1,a5
    800044b8:	0554ec63          	bltu	s1,s5,80004510 <freerange+0xd0>
    800044bc:	0534fa63          	bgeu	s1,s3,80004510 <freerange+0xd0>
    800044c0:	00001637          	lui	a2,0x1
    800044c4:	00100593          	li	a1,1
    800044c8:	00048513          	mv	a0,s1
    800044cc:	00000097          	auipc	ra,0x0
    800044d0:	50c080e7          	jalr	1292(ra) # 800049d8 <__memset>
    800044d4:	00093703          	ld	a4,0(s2)
    800044d8:	016487b3          	add	a5,s1,s6
    800044dc:	00e4b023          	sd	a4,0(s1)
    800044e0:	00993023          	sd	s1,0(s2)
    800044e4:	fcfa76e3          	bgeu	s4,a5,800044b0 <freerange+0x70>
    800044e8:	03813083          	ld	ra,56(sp)
    800044ec:	03013403          	ld	s0,48(sp)
    800044f0:	02813483          	ld	s1,40(sp)
    800044f4:	02013903          	ld	s2,32(sp)
    800044f8:	01813983          	ld	s3,24(sp)
    800044fc:	01013a03          	ld	s4,16(sp)
    80004500:	00813a83          	ld	s5,8(sp)
    80004504:	00013b03          	ld	s6,0(sp)
    80004508:	04010113          	addi	sp,sp,64
    8000450c:	00008067          	ret
    80004510:	00001517          	auipc	a0,0x1
    80004514:	dd050513          	addi	a0,a0,-560 # 800052e0 <digits+0x18>
    80004518:	fffff097          	auipc	ra,0xfffff
    8000451c:	3d4080e7          	jalr	980(ra) # 800038ec <panic>

0000000080004520 <kfree>:
    80004520:	fe010113          	addi	sp,sp,-32
    80004524:	00813823          	sd	s0,16(sp)
    80004528:	00113c23          	sd	ra,24(sp)
    8000452c:	00913423          	sd	s1,8(sp)
    80004530:	02010413          	addi	s0,sp,32
    80004534:	03451793          	slli	a5,a0,0x34
    80004538:	04079c63          	bnez	a5,80004590 <kfree+0x70>
    8000453c:	00003797          	auipc	a5,0x3
    80004540:	d1478793          	addi	a5,a5,-748 # 80007250 <end>
    80004544:	00050493          	mv	s1,a0
    80004548:	04f56463          	bltu	a0,a5,80004590 <kfree+0x70>
    8000454c:	01100793          	li	a5,17
    80004550:	01b79793          	slli	a5,a5,0x1b
    80004554:	02f57e63          	bgeu	a0,a5,80004590 <kfree+0x70>
    80004558:	00001637          	lui	a2,0x1
    8000455c:	00100593          	li	a1,1
    80004560:	00000097          	auipc	ra,0x0
    80004564:	478080e7          	jalr	1144(ra) # 800049d8 <__memset>
    80004568:	00002797          	auipc	a5,0x2
    8000456c:	a4878793          	addi	a5,a5,-1464 # 80005fb0 <kmem>
    80004570:	0007b703          	ld	a4,0(a5)
    80004574:	01813083          	ld	ra,24(sp)
    80004578:	01013403          	ld	s0,16(sp)
    8000457c:	00e4b023          	sd	a4,0(s1)
    80004580:	0097b023          	sd	s1,0(a5)
    80004584:	00813483          	ld	s1,8(sp)
    80004588:	02010113          	addi	sp,sp,32
    8000458c:	00008067          	ret
    80004590:	00001517          	auipc	a0,0x1
    80004594:	d5050513          	addi	a0,a0,-688 # 800052e0 <digits+0x18>
    80004598:	fffff097          	auipc	ra,0xfffff
    8000459c:	354080e7          	jalr	852(ra) # 800038ec <panic>

00000000800045a0 <kalloc>:
    800045a0:	fe010113          	addi	sp,sp,-32
    800045a4:	00813823          	sd	s0,16(sp)
    800045a8:	00913423          	sd	s1,8(sp)
    800045ac:	00113c23          	sd	ra,24(sp)
    800045b0:	02010413          	addi	s0,sp,32
    800045b4:	00002797          	auipc	a5,0x2
    800045b8:	9fc78793          	addi	a5,a5,-1540 # 80005fb0 <kmem>
    800045bc:	0007b483          	ld	s1,0(a5)
    800045c0:	02048063          	beqz	s1,800045e0 <kalloc+0x40>
    800045c4:	0004b703          	ld	a4,0(s1)
    800045c8:	00001637          	lui	a2,0x1
    800045cc:	00500593          	li	a1,5
    800045d0:	00048513          	mv	a0,s1
    800045d4:	00e7b023          	sd	a4,0(a5)
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	400080e7          	jalr	1024(ra) # 800049d8 <__memset>
    800045e0:	01813083          	ld	ra,24(sp)
    800045e4:	01013403          	ld	s0,16(sp)
    800045e8:	00048513          	mv	a0,s1
    800045ec:	00813483          	ld	s1,8(sp)
    800045f0:	02010113          	addi	sp,sp,32
    800045f4:	00008067          	ret

00000000800045f8 <initlock>:
    800045f8:	ff010113          	addi	sp,sp,-16
    800045fc:	00813423          	sd	s0,8(sp)
    80004600:	01010413          	addi	s0,sp,16
    80004604:	00813403          	ld	s0,8(sp)
    80004608:	00b53423          	sd	a1,8(a0)
    8000460c:	00052023          	sw	zero,0(a0)
    80004610:	00053823          	sd	zero,16(a0)
    80004614:	01010113          	addi	sp,sp,16
    80004618:	00008067          	ret

000000008000461c <acquire>:
    8000461c:	fe010113          	addi	sp,sp,-32
    80004620:	00813823          	sd	s0,16(sp)
    80004624:	00913423          	sd	s1,8(sp)
    80004628:	00113c23          	sd	ra,24(sp)
    8000462c:	01213023          	sd	s2,0(sp)
    80004630:	02010413          	addi	s0,sp,32
    80004634:	00050493          	mv	s1,a0
    80004638:	10002973          	csrr	s2,sstatus
    8000463c:	100027f3          	csrr	a5,sstatus
    80004640:	ffd7f793          	andi	a5,a5,-3
    80004644:	10079073          	csrw	sstatus,a5
    80004648:	fffff097          	auipc	ra,0xfffff
    8000464c:	8e8080e7          	jalr	-1816(ra) # 80002f30 <mycpu>
    80004650:	07852783          	lw	a5,120(a0)
    80004654:	06078e63          	beqz	a5,800046d0 <acquire+0xb4>
    80004658:	fffff097          	auipc	ra,0xfffff
    8000465c:	8d8080e7          	jalr	-1832(ra) # 80002f30 <mycpu>
    80004660:	07852783          	lw	a5,120(a0)
    80004664:	0004a703          	lw	a4,0(s1)
    80004668:	0017879b          	addiw	a5,a5,1
    8000466c:	06f52c23          	sw	a5,120(a0)
    80004670:	04071063          	bnez	a4,800046b0 <acquire+0x94>
    80004674:	00100713          	li	a4,1
    80004678:	00070793          	mv	a5,a4
    8000467c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004680:	0007879b          	sext.w	a5,a5
    80004684:	fe079ae3          	bnez	a5,80004678 <acquire+0x5c>
    80004688:	0ff0000f          	fence
    8000468c:	fffff097          	auipc	ra,0xfffff
    80004690:	8a4080e7          	jalr	-1884(ra) # 80002f30 <mycpu>
    80004694:	01813083          	ld	ra,24(sp)
    80004698:	01013403          	ld	s0,16(sp)
    8000469c:	00a4b823          	sd	a0,16(s1)
    800046a0:	00013903          	ld	s2,0(sp)
    800046a4:	00813483          	ld	s1,8(sp)
    800046a8:	02010113          	addi	sp,sp,32
    800046ac:	00008067          	ret
    800046b0:	0104b903          	ld	s2,16(s1)
    800046b4:	fffff097          	auipc	ra,0xfffff
    800046b8:	87c080e7          	jalr	-1924(ra) # 80002f30 <mycpu>
    800046bc:	faa91ce3          	bne	s2,a0,80004674 <acquire+0x58>
    800046c0:	00001517          	auipc	a0,0x1
    800046c4:	c2850513          	addi	a0,a0,-984 # 800052e8 <digits+0x20>
    800046c8:	fffff097          	auipc	ra,0xfffff
    800046cc:	224080e7          	jalr	548(ra) # 800038ec <panic>
    800046d0:	00195913          	srli	s2,s2,0x1
    800046d4:	fffff097          	auipc	ra,0xfffff
    800046d8:	85c080e7          	jalr	-1956(ra) # 80002f30 <mycpu>
    800046dc:	00197913          	andi	s2,s2,1
    800046e0:	07252e23          	sw	s2,124(a0)
    800046e4:	f75ff06f          	j	80004658 <acquire+0x3c>

00000000800046e8 <release>:
    800046e8:	fe010113          	addi	sp,sp,-32
    800046ec:	00813823          	sd	s0,16(sp)
    800046f0:	00113c23          	sd	ra,24(sp)
    800046f4:	00913423          	sd	s1,8(sp)
    800046f8:	01213023          	sd	s2,0(sp)
    800046fc:	02010413          	addi	s0,sp,32
    80004700:	00052783          	lw	a5,0(a0)
    80004704:	00079a63          	bnez	a5,80004718 <release+0x30>
    80004708:	00001517          	auipc	a0,0x1
    8000470c:	be850513          	addi	a0,a0,-1048 # 800052f0 <digits+0x28>
    80004710:	fffff097          	auipc	ra,0xfffff
    80004714:	1dc080e7          	jalr	476(ra) # 800038ec <panic>
    80004718:	01053903          	ld	s2,16(a0)
    8000471c:	00050493          	mv	s1,a0
    80004720:	fffff097          	auipc	ra,0xfffff
    80004724:	810080e7          	jalr	-2032(ra) # 80002f30 <mycpu>
    80004728:	fea910e3          	bne	s2,a0,80004708 <release+0x20>
    8000472c:	0004b823          	sd	zero,16(s1)
    80004730:	0ff0000f          	fence
    80004734:	0f50000f          	fence	iorw,ow
    80004738:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	7f4080e7          	jalr	2036(ra) # 80002f30 <mycpu>
    80004744:	100027f3          	csrr	a5,sstatus
    80004748:	0027f793          	andi	a5,a5,2
    8000474c:	04079a63          	bnez	a5,800047a0 <release+0xb8>
    80004750:	07852783          	lw	a5,120(a0)
    80004754:	02f05e63          	blez	a5,80004790 <release+0xa8>
    80004758:	fff7871b          	addiw	a4,a5,-1
    8000475c:	06e52c23          	sw	a4,120(a0)
    80004760:	00071c63          	bnez	a4,80004778 <release+0x90>
    80004764:	07c52783          	lw	a5,124(a0)
    80004768:	00078863          	beqz	a5,80004778 <release+0x90>
    8000476c:	100027f3          	csrr	a5,sstatus
    80004770:	0027e793          	ori	a5,a5,2
    80004774:	10079073          	csrw	sstatus,a5
    80004778:	01813083          	ld	ra,24(sp)
    8000477c:	01013403          	ld	s0,16(sp)
    80004780:	00813483          	ld	s1,8(sp)
    80004784:	00013903          	ld	s2,0(sp)
    80004788:	02010113          	addi	sp,sp,32
    8000478c:	00008067          	ret
    80004790:	00001517          	auipc	a0,0x1
    80004794:	b8050513          	addi	a0,a0,-1152 # 80005310 <digits+0x48>
    80004798:	fffff097          	auipc	ra,0xfffff
    8000479c:	154080e7          	jalr	340(ra) # 800038ec <panic>
    800047a0:	00001517          	auipc	a0,0x1
    800047a4:	b5850513          	addi	a0,a0,-1192 # 800052f8 <digits+0x30>
    800047a8:	fffff097          	auipc	ra,0xfffff
    800047ac:	144080e7          	jalr	324(ra) # 800038ec <panic>

00000000800047b0 <holding>:
    800047b0:	00052783          	lw	a5,0(a0)
    800047b4:	00079663          	bnez	a5,800047c0 <holding+0x10>
    800047b8:	00000513          	li	a0,0
    800047bc:	00008067          	ret
    800047c0:	fe010113          	addi	sp,sp,-32
    800047c4:	00813823          	sd	s0,16(sp)
    800047c8:	00913423          	sd	s1,8(sp)
    800047cc:	00113c23          	sd	ra,24(sp)
    800047d0:	02010413          	addi	s0,sp,32
    800047d4:	01053483          	ld	s1,16(a0)
    800047d8:	ffffe097          	auipc	ra,0xffffe
    800047dc:	758080e7          	jalr	1880(ra) # 80002f30 <mycpu>
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	40a48533          	sub	a0,s1,a0
    800047ec:	00153513          	seqz	a0,a0
    800047f0:	00813483          	ld	s1,8(sp)
    800047f4:	02010113          	addi	sp,sp,32
    800047f8:	00008067          	ret

00000000800047fc <push_off>:
    800047fc:	fe010113          	addi	sp,sp,-32
    80004800:	00813823          	sd	s0,16(sp)
    80004804:	00113c23          	sd	ra,24(sp)
    80004808:	00913423          	sd	s1,8(sp)
    8000480c:	02010413          	addi	s0,sp,32
    80004810:	100024f3          	csrr	s1,sstatus
    80004814:	100027f3          	csrr	a5,sstatus
    80004818:	ffd7f793          	andi	a5,a5,-3
    8000481c:	10079073          	csrw	sstatus,a5
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	710080e7          	jalr	1808(ra) # 80002f30 <mycpu>
    80004828:	07852783          	lw	a5,120(a0)
    8000482c:	02078663          	beqz	a5,80004858 <push_off+0x5c>
    80004830:	ffffe097          	auipc	ra,0xffffe
    80004834:	700080e7          	jalr	1792(ra) # 80002f30 <mycpu>
    80004838:	07852783          	lw	a5,120(a0)
    8000483c:	01813083          	ld	ra,24(sp)
    80004840:	01013403          	ld	s0,16(sp)
    80004844:	0017879b          	addiw	a5,a5,1
    80004848:	06f52c23          	sw	a5,120(a0)
    8000484c:	00813483          	ld	s1,8(sp)
    80004850:	02010113          	addi	sp,sp,32
    80004854:	00008067          	ret
    80004858:	0014d493          	srli	s1,s1,0x1
    8000485c:	ffffe097          	auipc	ra,0xffffe
    80004860:	6d4080e7          	jalr	1748(ra) # 80002f30 <mycpu>
    80004864:	0014f493          	andi	s1,s1,1
    80004868:	06952e23          	sw	s1,124(a0)
    8000486c:	fc5ff06f          	j	80004830 <push_off+0x34>

0000000080004870 <pop_off>:
    80004870:	ff010113          	addi	sp,sp,-16
    80004874:	00813023          	sd	s0,0(sp)
    80004878:	00113423          	sd	ra,8(sp)
    8000487c:	01010413          	addi	s0,sp,16
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	6b0080e7          	jalr	1712(ra) # 80002f30 <mycpu>
    80004888:	100027f3          	csrr	a5,sstatus
    8000488c:	0027f793          	andi	a5,a5,2
    80004890:	04079663          	bnez	a5,800048dc <pop_off+0x6c>
    80004894:	07852783          	lw	a5,120(a0)
    80004898:	02f05a63          	blez	a5,800048cc <pop_off+0x5c>
    8000489c:	fff7871b          	addiw	a4,a5,-1
    800048a0:	06e52c23          	sw	a4,120(a0)
    800048a4:	00071c63          	bnez	a4,800048bc <pop_off+0x4c>
    800048a8:	07c52783          	lw	a5,124(a0)
    800048ac:	00078863          	beqz	a5,800048bc <pop_off+0x4c>
    800048b0:	100027f3          	csrr	a5,sstatus
    800048b4:	0027e793          	ori	a5,a5,2
    800048b8:	10079073          	csrw	sstatus,a5
    800048bc:	00813083          	ld	ra,8(sp)
    800048c0:	00013403          	ld	s0,0(sp)
    800048c4:	01010113          	addi	sp,sp,16
    800048c8:	00008067          	ret
    800048cc:	00001517          	auipc	a0,0x1
    800048d0:	a4450513          	addi	a0,a0,-1468 # 80005310 <digits+0x48>
    800048d4:	fffff097          	auipc	ra,0xfffff
    800048d8:	018080e7          	jalr	24(ra) # 800038ec <panic>
    800048dc:	00001517          	auipc	a0,0x1
    800048e0:	a1c50513          	addi	a0,a0,-1508 # 800052f8 <digits+0x30>
    800048e4:	fffff097          	auipc	ra,0xfffff
    800048e8:	008080e7          	jalr	8(ra) # 800038ec <panic>

00000000800048ec <push_on>:
    800048ec:	fe010113          	addi	sp,sp,-32
    800048f0:	00813823          	sd	s0,16(sp)
    800048f4:	00113c23          	sd	ra,24(sp)
    800048f8:	00913423          	sd	s1,8(sp)
    800048fc:	02010413          	addi	s0,sp,32
    80004900:	100024f3          	csrr	s1,sstatus
    80004904:	100027f3          	csrr	a5,sstatus
    80004908:	0027e793          	ori	a5,a5,2
    8000490c:	10079073          	csrw	sstatus,a5
    80004910:	ffffe097          	auipc	ra,0xffffe
    80004914:	620080e7          	jalr	1568(ra) # 80002f30 <mycpu>
    80004918:	07852783          	lw	a5,120(a0)
    8000491c:	02078663          	beqz	a5,80004948 <push_on+0x5c>
    80004920:	ffffe097          	auipc	ra,0xffffe
    80004924:	610080e7          	jalr	1552(ra) # 80002f30 <mycpu>
    80004928:	07852783          	lw	a5,120(a0)
    8000492c:	01813083          	ld	ra,24(sp)
    80004930:	01013403          	ld	s0,16(sp)
    80004934:	0017879b          	addiw	a5,a5,1
    80004938:	06f52c23          	sw	a5,120(a0)
    8000493c:	00813483          	ld	s1,8(sp)
    80004940:	02010113          	addi	sp,sp,32
    80004944:	00008067          	ret
    80004948:	0014d493          	srli	s1,s1,0x1
    8000494c:	ffffe097          	auipc	ra,0xffffe
    80004950:	5e4080e7          	jalr	1508(ra) # 80002f30 <mycpu>
    80004954:	0014f493          	andi	s1,s1,1
    80004958:	06952e23          	sw	s1,124(a0)
    8000495c:	fc5ff06f          	j	80004920 <push_on+0x34>

0000000080004960 <pop_on>:
    80004960:	ff010113          	addi	sp,sp,-16
    80004964:	00813023          	sd	s0,0(sp)
    80004968:	00113423          	sd	ra,8(sp)
    8000496c:	01010413          	addi	s0,sp,16
    80004970:	ffffe097          	auipc	ra,0xffffe
    80004974:	5c0080e7          	jalr	1472(ra) # 80002f30 <mycpu>
    80004978:	100027f3          	csrr	a5,sstatus
    8000497c:	0027f793          	andi	a5,a5,2
    80004980:	04078463          	beqz	a5,800049c8 <pop_on+0x68>
    80004984:	07852783          	lw	a5,120(a0)
    80004988:	02f05863          	blez	a5,800049b8 <pop_on+0x58>
    8000498c:	fff7879b          	addiw	a5,a5,-1
    80004990:	06f52c23          	sw	a5,120(a0)
    80004994:	07853783          	ld	a5,120(a0)
    80004998:	00079863          	bnez	a5,800049a8 <pop_on+0x48>
    8000499c:	100027f3          	csrr	a5,sstatus
    800049a0:	ffd7f793          	andi	a5,a5,-3
    800049a4:	10079073          	csrw	sstatus,a5
    800049a8:	00813083          	ld	ra,8(sp)
    800049ac:	00013403          	ld	s0,0(sp)
    800049b0:	01010113          	addi	sp,sp,16
    800049b4:	00008067          	ret
    800049b8:	00001517          	auipc	a0,0x1
    800049bc:	98050513          	addi	a0,a0,-1664 # 80005338 <digits+0x70>
    800049c0:	fffff097          	auipc	ra,0xfffff
    800049c4:	f2c080e7          	jalr	-212(ra) # 800038ec <panic>
    800049c8:	00001517          	auipc	a0,0x1
    800049cc:	95050513          	addi	a0,a0,-1712 # 80005318 <digits+0x50>
    800049d0:	fffff097          	auipc	ra,0xfffff
    800049d4:	f1c080e7          	jalr	-228(ra) # 800038ec <panic>

00000000800049d8 <__memset>:
    800049d8:	ff010113          	addi	sp,sp,-16
    800049dc:	00813423          	sd	s0,8(sp)
    800049e0:	01010413          	addi	s0,sp,16
    800049e4:	1a060e63          	beqz	a2,80004ba0 <__memset+0x1c8>
    800049e8:	40a007b3          	neg	a5,a0
    800049ec:	0077f793          	andi	a5,a5,7
    800049f0:	00778693          	addi	a3,a5,7
    800049f4:	00b00813          	li	a6,11
    800049f8:	0ff5f593          	andi	a1,a1,255
    800049fc:	fff6071b          	addiw	a4,a2,-1
    80004a00:	1b06e663          	bltu	a3,a6,80004bac <__memset+0x1d4>
    80004a04:	1cd76463          	bltu	a4,a3,80004bcc <__memset+0x1f4>
    80004a08:	1a078e63          	beqz	a5,80004bc4 <__memset+0x1ec>
    80004a0c:	00b50023          	sb	a1,0(a0)
    80004a10:	00100713          	li	a4,1
    80004a14:	1ae78463          	beq	a5,a4,80004bbc <__memset+0x1e4>
    80004a18:	00b500a3          	sb	a1,1(a0)
    80004a1c:	00200713          	li	a4,2
    80004a20:	1ae78a63          	beq	a5,a4,80004bd4 <__memset+0x1fc>
    80004a24:	00b50123          	sb	a1,2(a0)
    80004a28:	00300713          	li	a4,3
    80004a2c:	18e78463          	beq	a5,a4,80004bb4 <__memset+0x1dc>
    80004a30:	00b501a3          	sb	a1,3(a0)
    80004a34:	00400713          	li	a4,4
    80004a38:	1ae78263          	beq	a5,a4,80004bdc <__memset+0x204>
    80004a3c:	00b50223          	sb	a1,4(a0)
    80004a40:	00500713          	li	a4,5
    80004a44:	1ae78063          	beq	a5,a4,80004be4 <__memset+0x20c>
    80004a48:	00b502a3          	sb	a1,5(a0)
    80004a4c:	00700713          	li	a4,7
    80004a50:	18e79e63          	bne	a5,a4,80004bec <__memset+0x214>
    80004a54:	00b50323          	sb	a1,6(a0)
    80004a58:	00700e93          	li	t4,7
    80004a5c:	00859713          	slli	a4,a1,0x8
    80004a60:	00e5e733          	or	a4,a1,a4
    80004a64:	01059e13          	slli	t3,a1,0x10
    80004a68:	01c76e33          	or	t3,a4,t3
    80004a6c:	01859313          	slli	t1,a1,0x18
    80004a70:	006e6333          	or	t1,t3,t1
    80004a74:	02059893          	slli	a7,a1,0x20
    80004a78:	40f60e3b          	subw	t3,a2,a5
    80004a7c:	011368b3          	or	a7,t1,a7
    80004a80:	02859813          	slli	a6,a1,0x28
    80004a84:	0108e833          	or	a6,a7,a6
    80004a88:	03059693          	slli	a3,a1,0x30
    80004a8c:	003e589b          	srliw	a7,t3,0x3
    80004a90:	00d866b3          	or	a3,a6,a3
    80004a94:	03859713          	slli	a4,a1,0x38
    80004a98:	00389813          	slli	a6,a7,0x3
    80004a9c:	00f507b3          	add	a5,a0,a5
    80004aa0:	00e6e733          	or	a4,a3,a4
    80004aa4:	000e089b          	sext.w	a7,t3
    80004aa8:	00f806b3          	add	a3,a6,a5
    80004aac:	00e7b023          	sd	a4,0(a5)
    80004ab0:	00878793          	addi	a5,a5,8
    80004ab4:	fed79ce3          	bne	a5,a3,80004aac <__memset+0xd4>
    80004ab8:	ff8e7793          	andi	a5,t3,-8
    80004abc:	0007871b          	sext.w	a4,a5
    80004ac0:	01d787bb          	addw	a5,a5,t4
    80004ac4:	0ce88e63          	beq	a7,a4,80004ba0 <__memset+0x1c8>
    80004ac8:	00f50733          	add	a4,a0,a5
    80004acc:	00b70023          	sb	a1,0(a4)
    80004ad0:	0017871b          	addiw	a4,a5,1
    80004ad4:	0cc77663          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004ad8:	00e50733          	add	a4,a0,a4
    80004adc:	00b70023          	sb	a1,0(a4)
    80004ae0:	0027871b          	addiw	a4,a5,2
    80004ae4:	0ac77e63          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004ae8:	00e50733          	add	a4,a0,a4
    80004aec:	00b70023          	sb	a1,0(a4)
    80004af0:	0037871b          	addiw	a4,a5,3
    80004af4:	0ac77663          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004af8:	00e50733          	add	a4,a0,a4
    80004afc:	00b70023          	sb	a1,0(a4)
    80004b00:	0047871b          	addiw	a4,a5,4
    80004b04:	08c77e63          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b08:	00e50733          	add	a4,a0,a4
    80004b0c:	00b70023          	sb	a1,0(a4)
    80004b10:	0057871b          	addiw	a4,a5,5
    80004b14:	08c77663          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b18:	00e50733          	add	a4,a0,a4
    80004b1c:	00b70023          	sb	a1,0(a4)
    80004b20:	0067871b          	addiw	a4,a5,6
    80004b24:	06c77e63          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b28:	00e50733          	add	a4,a0,a4
    80004b2c:	00b70023          	sb	a1,0(a4)
    80004b30:	0077871b          	addiw	a4,a5,7
    80004b34:	06c77663          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b38:	00e50733          	add	a4,a0,a4
    80004b3c:	00b70023          	sb	a1,0(a4)
    80004b40:	0087871b          	addiw	a4,a5,8
    80004b44:	04c77e63          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b48:	00e50733          	add	a4,a0,a4
    80004b4c:	00b70023          	sb	a1,0(a4)
    80004b50:	0097871b          	addiw	a4,a5,9
    80004b54:	04c77663          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b58:	00e50733          	add	a4,a0,a4
    80004b5c:	00b70023          	sb	a1,0(a4)
    80004b60:	00a7871b          	addiw	a4,a5,10
    80004b64:	02c77e63          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b68:	00e50733          	add	a4,a0,a4
    80004b6c:	00b70023          	sb	a1,0(a4)
    80004b70:	00b7871b          	addiw	a4,a5,11
    80004b74:	02c77663          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b78:	00e50733          	add	a4,a0,a4
    80004b7c:	00b70023          	sb	a1,0(a4)
    80004b80:	00c7871b          	addiw	a4,a5,12
    80004b84:	00c77e63          	bgeu	a4,a2,80004ba0 <__memset+0x1c8>
    80004b88:	00e50733          	add	a4,a0,a4
    80004b8c:	00b70023          	sb	a1,0(a4)
    80004b90:	00d7879b          	addiw	a5,a5,13
    80004b94:	00c7f663          	bgeu	a5,a2,80004ba0 <__memset+0x1c8>
    80004b98:	00f507b3          	add	a5,a0,a5
    80004b9c:	00b78023          	sb	a1,0(a5)
    80004ba0:	00813403          	ld	s0,8(sp)
    80004ba4:	01010113          	addi	sp,sp,16
    80004ba8:	00008067          	ret
    80004bac:	00b00693          	li	a3,11
    80004bb0:	e55ff06f          	j	80004a04 <__memset+0x2c>
    80004bb4:	00300e93          	li	t4,3
    80004bb8:	ea5ff06f          	j	80004a5c <__memset+0x84>
    80004bbc:	00100e93          	li	t4,1
    80004bc0:	e9dff06f          	j	80004a5c <__memset+0x84>
    80004bc4:	00000e93          	li	t4,0
    80004bc8:	e95ff06f          	j	80004a5c <__memset+0x84>
    80004bcc:	00000793          	li	a5,0
    80004bd0:	ef9ff06f          	j	80004ac8 <__memset+0xf0>
    80004bd4:	00200e93          	li	t4,2
    80004bd8:	e85ff06f          	j	80004a5c <__memset+0x84>
    80004bdc:	00400e93          	li	t4,4
    80004be0:	e7dff06f          	j	80004a5c <__memset+0x84>
    80004be4:	00500e93          	li	t4,5
    80004be8:	e75ff06f          	j	80004a5c <__memset+0x84>
    80004bec:	00600e93          	li	t4,6
    80004bf0:	e6dff06f          	j	80004a5c <__memset+0x84>

0000000080004bf4 <__memmove>:
    80004bf4:	ff010113          	addi	sp,sp,-16
    80004bf8:	00813423          	sd	s0,8(sp)
    80004bfc:	01010413          	addi	s0,sp,16
    80004c00:	0e060863          	beqz	a2,80004cf0 <__memmove+0xfc>
    80004c04:	fff6069b          	addiw	a3,a2,-1
    80004c08:	0006881b          	sext.w	a6,a3
    80004c0c:	0ea5e863          	bltu	a1,a0,80004cfc <__memmove+0x108>
    80004c10:	00758713          	addi	a4,a1,7
    80004c14:	00a5e7b3          	or	a5,a1,a0
    80004c18:	40a70733          	sub	a4,a4,a0
    80004c1c:	0077f793          	andi	a5,a5,7
    80004c20:	00f73713          	sltiu	a4,a4,15
    80004c24:	00174713          	xori	a4,a4,1
    80004c28:	0017b793          	seqz	a5,a5
    80004c2c:	00e7f7b3          	and	a5,a5,a4
    80004c30:	10078863          	beqz	a5,80004d40 <__memmove+0x14c>
    80004c34:	00900793          	li	a5,9
    80004c38:	1107f463          	bgeu	a5,a6,80004d40 <__memmove+0x14c>
    80004c3c:	0036581b          	srliw	a6,a2,0x3
    80004c40:	fff8081b          	addiw	a6,a6,-1
    80004c44:	02081813          	slli	a6,a6,0x20
    80004c48:	01d85893          	srli	a7,a6,0x1d
    80004c4c:	00858813          	addi	a6,a1,8
    80004c50:	00058793          	mv	a5,a1
    80004c54:	00050713          	mv	a4,a0
    80004c58:	01088833          	add	a6,a7,a6
    80004c5c:	0007b883          	ld	a7,0(a5)
    80004c60:	00878793          	addi	a5,a5,8
    80004c64:	00870713          	addi	a4,a4,8
    80004c68:	ff173c23          	sd	a7,-8(a4)
    80004c6c:	ff0798e3          	bne	a5,a6,80004c5c <__memmove+0x68>
    80004c70:	ff867713          	andi	a4,a2,-8
    80004c74:	02071793          	slli	a5,a4,0x20
    80004c78:	0207d793          	srli	a5,a5,0x20
    80004c7c:	00f585b3          	add	a1,a1,a5
    80004c80:	40e686bb          	subw	a3,a3,a4
    80004c84:	00f507b3          	add	a5,a0,a5
    80004c88:	06e60463          	beq	a2,a4,80004cf0 <__memmove+0xfc>
    80004c8c:	0005c703          	lbu	a4,0(a1)
    80004c90:	00e78023          	sb	a4,0(a5)
    80004c94:	04068e63          	beqz	a3,80004cf0 <__memmove+0xfc>
    80004c98:	0015c603          	lbu	a2,1(a1)
    80004c9c:	00100713          	li	a4,1
    80004ca0:	00c780a3          	sb	a2,1(a5)
    80004ca4:	04e68663          	beq	a3,a4,80004cf0 <__memmove+0xfc>
    80004ca8:	0025c603          	lbu	a2,2(a1)
    80004cac:	00200713          	li	a4,2
    80004cb0:	00c78123          	sb	a2,2(a5)
    80004cb4:	02e68e63          	beq	a3,a4,80004cf0 <__memmove+0xfc>
    80004cb8:	0035c603          	lbu	a2,3(a1)
    80004cbc:	00300713          	li	a4,3
    80004cc0:	00c781a3          	sb	a2,3(a5)
    80004cc4:	02e68663          	beq	a3,a4,80004cf0 <__memmove+0xfc>
    80004cc8:	0045c603          	lbu	a2,4(a1)
    80004ccc:	00400713          	li	a4,4
    80004cd0:	00c78223          	sb	a2,4(a5)
    80004cd4:	00e68e63          	beq	a3,a4,80004cf0 <__memmove+0xfc>
    80004cd8:	0055c603          	lbu	a2,5(a1)
    80004cdc:	00500713          	li	a4,5
    80004ce0:	00c782a3          	sb	a2,5(a5)
    80004ce4:	00e68663          	beq	a3,a4,80004cf0 <__memmove+0xfc>
    80004ce8:	0065c703          	lbu	a4,6(a1)
    80004cec:	00e78323          	sb	a4,6(a5)
    80004cf0:	00813403          	ld	s0,8(sp)
    80004cf4:	01010113          	addi	sp,sp,16
    80004cf8:	00008067          	ret
    80004cfc:	02061713          	slli	a4,a2,0x20
    80004d00:	02075713          	srli	a4,a4,0x20
    80004d04:	00e587b3          	add	a5,a1,a4
    80004d08:	f0f574e3          	bgeu	a0,a5,80004c10 <__memmove+0x1c>
    80004d0c:	02069613          	slli	a2,a3,0x20
    80004d10:	02065613          	srli	a2,a2,0x20
    80004d14:	fff64613          	not	a2,a2
    80004d18:	00e50733          	add	a4,a0,a4
    80004d1c:	00c78633          	add	a2,a5,a2
    80004d20:	fff7c683          	lbu	a3,-1(a5)
    80004d24:	fff78793          	addi	a5,a5,-1
    80004d28:	fff70713          	addi	a4,a4,-1
    80004d2c:	00d70023          	sb	a3,0(a4)
    80004d30:	fec798e3          	bne	a5,a2,80004d20 <__memmove+0x12c>
    80004d34:	00813403          	ld	s0,8(sp)
    80004d38:	01010113          	addi	sp,sp,16
    80004d3c:	00008067          	ret
    80004d40:	02069713          	slli	a4,a3,0x20
    80004d44:	02075713          	srli	a4,a4,0x20
    80004d48:	00170713          	addi	a4,a4,1
    80004d4c:	00e50733          	add	a4,a0,a4
    80004d50:	00050793          	mv	a5,a0
    80004d54:	0005c683          	lbu	a3,0(a1)
    80004d58:	00178793          	addi	a5,a5,1
    80004d5c:	00158593          	addi	a1,a1,1
    80004d60:	fed78fa3          	sb	a3,-1(a5)
    80004d64:	fee798e3          	bne	a5,a4,80004d54 <__memmove+0x160>
    80004d68:	f89ff06f          	j	80004cf0 <__memmove+0xfc>

0000000080004d6c <__putc>:
    80004d6c:	fe010113          	addi	sp,sp,-32
    80004d70:	00813823          	sd	s0,16(sp)
    80004d74:	00113c23          	sd	ra,24(sp)
    80004d78:	02010413          	addi	s0,sp,32
    80004d7c:	00050793          	mv	a5,a0
    80004d80:	fef40593          	addi	a1,s0,-17
    80004d84:	00100613          	li	a2,1
    80004d88:	00000513          	li	a0,0
    80004d8c:	fef407a3          	sb	a5,-17(s0)
    80004d90:	fffff097          	auipc	ra,0xfffff
    80004d94:	b3c080e7          	jalr	-1220(ra) # 800038cc <console_write>
    80004d98:	01813083          	ld	ra,24(sp)
    80004d9c:	01013403          	ld	s0,16(sp)
    80004da0:	02010113          	addi	sp,sp,32
    80004da4:	00008067          	ret

0000000080004da8 <__getc>:
    80004da8:	fe010113          	addi	sp,sp,-32
    80004dac:	00813823          	sd	s0,16(sp)
    80004db0:	00113c23          	sd	ra,24(sp)
    80004db4:	02010413          	addi	s0,sp,32
    80004db8:	fe840593          	addi	a1,s0,-24
    80004dbc:	00100613          	li	a2,1
    80004dc0:	00000513          	li	a0,0
    80004dc4:	fffff097          	auipc	ra,0xfffff
    80004dc8:	ae8080e7          	jalr	-1304(ra) # 800038ac <console_read>
    80004dcc:	fe844503          	lbu	a0,-24(s0)
    80004dd0:	01813083          	ld	ra,24(sp)
    80004dd4:	01013403          	ld	s0,16(sp)
    80004dd8:	02010113          	addi	sp,sp,32
    80004ddc:	00008067          	ret

0000000080004de0 <console_handler>:
    80004de0:	fe010113          	addi	sp,sp,-32
    80004de4:	00813823          	sd	s0,16(sp)
    80004de8:	00113c23          	sd	ra,24(sp)
    80004dec:	00913423          	sd	s1,8(sp)
    80004df0:	02010413          	addi	s0,sp,32
    80004df4:	14202773          	csrr	a4,scause
    80004df8:	100027f3          	csrr	a5,sstatus
    80004dfc:	0027f793          	andi	a5,a5,2
    80004e00:	06079e63          	bnez	a5,80004e7c <console_handler+0x9c>
    80004e04:	00074c63          	bltz	a4,80004e1c <console_handler+0x3c>
    80004e08:	01813083          	ld	ra,24(sp)
    80004e0c:	01013403          	ld	s0,16(sp)
    80004e10:	00813483          	ld	s1,8(sp)
    80004e14:	02010113          	addi	sp,sp,32
    80004e18:	00008067          	ret
    80004e1c:	0ff77713          	andi	a4,a4,255
    80004e20:	00900793          	li	a5,9
    80004e24:	fef712e3          	bne	a4,a5,80004e08 <console_handler+0x28>
    80004e28:	ffffe097          	auipc	ra,0xffffe
    80004e2c:	6dc080e7          	jalr	1756(ra) # 80003504 <plic_claim>
    80004e30:	00a00793          	li	a5,10
    80004e34:	00050493          	mv	s1,a0
    80004e38:	02f50c63          	beq	a0,a5,80004e70 <console_handler+0x90>
    80004e3c:	fc0506e3          	beqz	a0,80004e08 <console_handler+0x28>
    80004e40:	00050593          	mv	a1,a0
    80004e44:	00000517          	auipc	a0,0x0
    80004e48:	3fc50513          	addi	a0,a0,1020 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004e4c:	fffff097          	auipc	ra,0xfffff
    80004e50:	afc080e7          	jalr	-1284(ra) # 80003948 <__printf>
    80004e54:	01013403          	ld	s0,16(sp)
    80004e58:	01813083          	ld	ra,24(sp)
    80004e5c:	00048513          	mv	a0,s1
    80004e60:	00813483          	ld	s1,8(sp)
    80004e64:	02010113          	addi	sp,sp,32
    80004e68:	ffffe317          	auipc	t1,0xffffe
    80004e6c:	6d430067          	jr	1748(t1) # 8000353c <plic_complete>
    80004e70:	fffff097          	auipc	ra,0xfffff
    80004e74:	3e0080e7          	jalr	992(ra) # 80004250 <uartintr>
    80004e78:	fddff06f          	j	80004e54 <console_handler+0x74>
    80004e7c:	00000517          	auipc	a0,0x0
    80004e80:	4c450513          	addi	a0,a0,1220 # 80005340 <digits+0x78>
    80004e84:	fffff097          	auipc	ra,0xfffff
    80004e88:	a68080e7          	jalr	-1432(ra) # 800038ec <panic>
	...
