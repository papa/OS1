
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	f4813103          	ld	sp,-184(sp) # 80005f48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3f5020ef          	jal	ra,80002c10 <start>

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
    80001080:	464010ef          	jal	ra,800024e4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000141c:	f90080e7          	jalr	-112(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001420:	00001097          	auipc	ra,0x1
    80001424:	f68080e7          	jalr	-152(ra) # 80002388 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001428:	00005497          	auipc	s1,0x5
    8000142c:	b7848493          	addi	s1,s1,-1160 # 80005fa0 <_ZN3PCB7runningE>
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
    80001458:	f54080e7          	jalr	-172(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    })
    80001484:	00e53023          	sd	a4,0(a0)
    80001488:	00b53423          	sd	a1,8(a0)
    8000148c:	00c53823          	sd	a2,16(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001490:	000017b7          	lui	a5,0x1
    80001494:	00f686b3          	add	a3,a3,a5
    })
    80001498:	02d53023          	sd	a3,32(a0)
    8000149c:	00000797          	auipc	a5,0x0
    800014a0:	f6078793          	addi	a5,a5,-160 # 800013fc <_ZN3PCB6runnerEv>
    800014a4:	02f53423          	sd	a5,40(a0)
}
    800014a8:	00813403          	ld	s0,8(sp)
    800014ac:	01010113          	addi	sp,sp,16
    800014b0:	00008067          	ret

00000000800014b4 <_ZN3PCB5sleepEm>:
{
    800014b4:	ff010113          	addi	sp,sp,-16
    800014b8:	00813423          	sd	s0,8(sp)
    800014bc:	01010413          	addi	s0,sp,16
}
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret

00000000800014cc <_ZN3PCB5startEv>:
{
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00113423          	sd	ra,8(sp)
    800014d4:	00813023          	sd	s0,0(sp)
    800014d8:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	2e8080e7          	jalr	744(ra) # 800017c4 <_ZN9Scheduler3putEP3PCB>
}
    800014e4:	00813083          	ld	ra,8(sp)
    800014e8:	00013403          	ld	s0,0(sp)
    800014ec:	01010113          	addi	sp,sp,16
    800014f0:	00008067          	ret

00000000800014f4 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800014f4:	fe010113          	addi	sp,sp,-32
    800014f8:	00113c23          	sd	ra,24(sp)
    800014fc:	00813823          	sd	s0,16(sp)
    80001500:	00913423          	sd	s1,8(sp)
    80001504:	01213023          	sd	s2,0(sp)
    80001508:	02010413          	addi	s0,sp,32
    Riscv::printString("Dispatch called...\n");
    8000150c:	00004517          	auipc	a0,0x4
    80001510:	b4450513          	addi	a0,a0,-1212 # 80005050 <CONSOLE_STATUS+0x40>
    80001514:	00001097          	auipc	ra,0x1
    80001518:	e94080e7          	jalr	-364(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
    PCB* old = running;
    8000151c:	00005497          	auipc	s1,0x5
    80001520:	a844b483          	ld	s1,-1404(s1) # 80005fa0 <_ZN3PCB7runningE>
    State getState() {return state;}
    80001524:	0184a703          	lw	a4,24(s1)
    if(old->getState() == PCB::RUNNING) Scheduler::put(old);
    80001528:	00100793          	li	a5,1
    8000152c:	04f70e63          	beq	a4,a5,80001588 <_ZN3PCB8dispatchEv+0x94>
    PCB::running = Scheduler::get();
    80001530:	00000097          	auipc	ra,0x0
    80001534:	330080e7          	jalr	816(ra) # 80001860 <_ZN9Scheduler3getEv>
    80001538:	00005917          	auipc	s2,0x5
    8000153c:	a6890913          	addi	s2,s2,-1432 # 80005fa0 <_ZN3PCB7runningE>
    80001540:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80001544:	00100793          	li	a5,1
    80001548:	00f52c23          	sw	a5,24(a0)
    PCB::running->setState(PCB::RUNNING);
    Riscv::printString("Switching context...\n");
    8000154c:	00004517          	auipc	a0,0x4
    80001550:	b1c50513          	addi	a0,a0,-1252 # 80005068 <CONSOLE_STATUS+0x58>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	e54080e7          	jalr	-428(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>

    PCB::contextSwitch(&old->context, &running->context);
    8000155c:	00093583          	ld	a1,0(s2)
    80001560:	02058593          	addi	a1,a1,32
    80001564:	02048513          	addi	a0,s1,32
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	ca0080e7          	jalr	-864(ra) # 80001208 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001570:	01813083          	ld	ra,24(sp)
    80001574:	01013403          	ld	s0,16(sp)
    80001578:	00813483          	ld	s1,8(sp)
    8000157c:	00013903          	ld	s2,0(sp)
    80001580:	02010113          	addi	sp,sp,32
    80001584:	00008067          	ret
    if(old->getState() == PCB::RUNNING) Scheduler::put(old);
    80001588:	00048513          	mv	a0,s1
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	238080e7          	jalr	568(ra) # 800017c4 <_ZN9Scheduler3putEP3PCB>
    80001594:	f9dff06f          	j	80001530 <_ZN3PCB8dispatchEv+0x3c>

0000000080001598 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80001598:	ff010113          	addi	sp,sp,-16
    8000159c:	00113423          	sd	ra,8(sp)
    800015a0:	00813023          	sd	s0,0(sp)
    800015a4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	478080e7          	jalr	1144(ra) # 80002a20 <_Z7kmallocm>
}
    800015b0:	00813083          	ld	ra,8(sp)
    800015b4:	00013403          	ld	s0,0(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00113423          	sd	ra,8(sp)
    800015c8:	00813023          	sd	s0,0(sp)
    800015cc:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	478080e7          	jalr	1144(ra) # 80002a48 <_Z5kfreePv>
}
    800015d8:	00813083          	ld	ra,8(sp)
    800015dc:	00013403          	ld	s0,0(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.h"

void Queue::pop() {
    800015e8:	fe010113          	addi	sp,sp,-32
    800015ec:	00113c23          	sd	ra,24(sp)
    800015f0:	00813823          	sd	s0,16(sp)
    800015f4:	00913423          	sd	s1,8(sp)
    800015f8:	01213023          	sd	s2,0(sp)
    800015fc:	02010413          	addi	s0,sp,32
    80001600:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80001604:	00053503          	ld	a0,0(a0)
    80001608:	00853903          	ld	s2,8(a0)
    kfree(first);
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	43c080e7          	jalr	1084(ra) # 80002a48 <_Z5kfreePv>
    first = newFirst;
    80001614:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80001618:	00090e63          	beqz	s2,80001634 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    8000161c:	01813083          	ld	ra,24(sp)
    80001620:	01013403          	ld	s0,16(sp)
    80001624:	00813483          	ld	s1,8(sp)
    80001628:	00013903          	ld	s2,0(sp)
    8000162c:	02010113          	addi	sp,sp,32
    80001630:	00008067          	ret
        first = last = 0;
    80001634:	0004b423          	sd	zero,8(s1)
    80001638:	0004b023          	sd	zero,0(s1)
}
    8000163c:	fe1ff06f          	j	8000161c <_ZN5Queue3popEv+0x34>

0000000080001640 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80001640:	fe010113          	addi	sp,sp,-32
    80001644:	00113c23          	sd	ra,24(sp)
    80001648:	00813823          	sd	s0,16(sp)
    8000164c:	00913423          	sd	s1,8(sp)
    80001650:	01213023          	sd	s2,0(sp)
    80001654:	02010413          	addi	s0,sp,32
    80001658:	00050493          	mv	s1,a0
    8000165c:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80001660:	01000513          	li	a0,16
    80001664:	00001097          	auipc	ra,0x1
    80001668:	3bc080e7          	jalr	956(ra) # 80002a20 <_Z7kmallocm>
    newElem->data = t;
    8000166c:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80001670:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80001674:	0004b783          	ld	a5,0(s1)
    80001678:	02078463          	beqz	a5,800016a0 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    8000167c:	0084b783          	ld	a5,8(s1)
    80001680:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80001684:	00a4b423          	sd	a0,8(s1)
    }
}
    80001688:	01813083          	ld	ra,24(sp)
    8000168c:	01013403          	ld	s0,16(sp)
    80001690:	00813483          	ld	s1,8(sp)
    80001694:	00013903          	ld	s2,0(sp)
    80001698:	02010113          	addi	sp,sp,32
    8000169c:	00008067          	ret
        first = newElem;
    800016a0:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800016a4:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800016a8:	00053423          	sd	zero,8(a0)
    800016ac:	0004b783          	ld	a5,0(s1)
    800016b0:	0007b423          	sd	zero,8(a5)
    800016b4:	fd5ff06f          	j	80001688 <_ZN5Queue4pushEP3PCB+0x48>

00000000800016b8 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    800016b8:	ff010113          	addi	sp,sp,-16
    800016bc:	00813423          	sd	s0,8(sp)
    800016c0:	01010413          	addi	s0,sp,16
    if(first == 0)
    800016c4:	00053503          	ld	a0,0(a0)
    800016c8:	00050463          	beqz	a0,800016d0 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    800016cc:	00053503          	ld	a0,0(a0)
}
    800016d0:	00813403          	ld	s0,8(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_ZN5QueueC1Ev>:

Queue::Queue() {
    800016dc:	ff010113          	addi	sp,sp,-16
    800016e0:	00813423          	sd	s0,8(sp)
    800016e4:	01010413          	addi	s0,sp,16
    first = last = 0;
    800016e8:	00053423          	sd	zero,8(a0)
    800016ec:	00053023          	sd	zero,0(a0)
}
    800016f0:	00813403          	ld	s0,8(sp)
    800016f4:	01010113          	addi	sp,sp,16
    800016f8:	00008067          	ret

00000000800016fc <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    800016fc:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80001700:	04050063          	beqz	a0,80001740 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80001704:	fe010113          	addi	sp,sp,-32
    80001708:	00113c23          	sd	ra,24(sp)
    8000170c:	00813823          	sd	s0,16(sp)
    80001710:	00913423          	sd	s1,8(sp)
    80001714:	02010413          	addi	s0,sp,32
    {
        //todo
        //vrati ovo
        //sad je zakomentarisano zbog kfree
        Elem* old = curr;
        curr = curr->next;
    80001718:	00853483          	ld	s1,8(a0)
        kfree(old);
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	32c080e7          	jalr	812(ra) # 80002a48 <_Z5kfreePv>
        curr = curr->next;
    80001724:	00048513          	mv	a0,s1
    while(curr != 0)
    80001728:	fe0498e3          	bnez	s1,80001718 <_ZN5QueueD1Ev+0x1c>
    }
}
    8000172c:	01813083          	ld	ra,24(sp)
    80001730:	01013403          	ld	s0,16(sp)
    80001734:	00813483          	ld	s1,8(sp)
    80001738:	02010113          	addi	sp,sp,32
    8000173c:	00008067          	ret
    80001740:	00008067          	ret

0000000080001744 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80001744:	ff010113          	addi	sp,sp,-16
    80001748:	00813423          	sd	s0,8(sp)
    8000174c:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80001750:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80001754:	00000513          	li	a0,0
    while(curr != 0)
    80001758:	00078863          	beqz	a5,80001768 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    8000175c:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80001760:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80001764:	ff5ff06f          	j	80001758 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80001768:	00813403          	ld	s0,8(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    80001774:	ff010113          	addi	sp,sp,-16
    80001778:	00113423          	sd	ra,8(sp)
    8000177c:	00813023          	sd	s0,0(sp)
    80001780:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001784:	00001097          	auipc	ra,0x1
    80001788:	29c080e7          	jalr	668(ra) # 80002a20 <_Z7kmallocm>
}
    8000178c:	00813083          	ld	ra,8(sp)
    80001790:	00013403          	ld	s0,0(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00113423          	sd	ra,8(sp)
    800017a4:	00813023          	sd	s0,0(sp)
    800017a8:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	29c080e7          	jalr	668(ra) # 80002a48 <_Z5kfreePv>
}
    800017b4:	00813083          	ld	ra,8(sp)
    800017b8:	00013403          	ld	s0,0(sp)
    800017bc:	01010113          	addi	sp,sp,16
    800017c0:	00008067          	ret

00000000800017c4 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800017c4:	fe010113          	addi	sp,sp,-32
    800017c8:	00113c23          	sd	ra,24(sp)
    800017cc:	00813823          	sd	s0,16(sp)
    800017d0:	00913423          	sd	s1,8(sp)
    800017d4:	01213023          	sd	s2,0(sp)
    800017d8:	02010413          	addi	s0,sp,32
    800017dc:	00050493          	mv	s1,a0
    if(scheduler == 0)
    800017e0:	00004797          	auipc	a5,0x4
    800017e4:	7d07b783          	ld	a5,2000(a5) # 80005fb0 <_ZN9Scheduler9schedulerE>
    800017e8:	02078863          	beqz	a5,80001818 <_ZN9Scheduler3putEP3PCB+0x54>
    scheduler->queuePCB.push(pcb);
    800017ec:	00048593          	mv	a1,s1
    800017f0:	00004517          	auipc	a0,0x4
    800017f4:	7c053503          	ld	a0,1984(a0) # 80005fb0 <_ZN9Scheduler9schedulerE>
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	e48080e7          	jalr	-440(ra) # 80001640 <_ZN5Queue4pushEP3PCB>
}
    80001800:	01813083          	ld	ra,24(sp)
    80001804:	01013403          	ld	s0,16(sp)
    80001808:	00813483          	ld	s1,8(sp)
    8000180c:	00013903          	ld	s2,0(sp)
    80001810:	02010113          	addi	sp,sp,32
    80001814:	00008067          	ret
        scheduler = new Scheduler();
    80001818:	01000513          	li	a0,16
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	f58080e7          	jalr	-168(ra) # 80001774 <_ZN9SchedulernwEm>
    80001824:	00050913          	mv	s2,a0
    80001828:	00053023          	sd	zero,0(a0)
    8000182c:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.h"
#include "Queue.h"

class PCB;

class Scheduler
    80001830:	00000097          	auipc	ra,0x0
    80001834:	eac080e7          	jalr	-340(ra) # 800016dc <_ZN5QueueC1Ev>
    80001838:	00004797          	auipc	a5,0x4
    8000183c:	7727bc23          	sd	s2,1912(a5) # 80005fb0 <_ZN9Scheduler9schedulerE>
    80001840:	fadff06f          	j	800017ec <_ZN9Scheduler3putEP3PCB+0x28>
    80001844:	00050493          	mv	s1,a0
    80001848:	00090513          	mv	a0,s2
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	f50080e7          	jalr	-176(ra) # 8000179c <_ZN9SchedulerdlEPv>
    80001854:	00048513          	mv	a0,s1
    80001858:	00006097          	auipc	ra,0x6
    8000185c:	840080e7          	jalr	-1984(ra) # 80007098 <_Unwind_Resume>

0000000080001860 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001860:	fe010113          	addi	sp,sp,-32
    80001864:	00113c23          	sd	ra,24(sp)
    80001868:	00813823          	sd	s0,16(sp)
    8000186c:	00913423          	sd	s1,8(sp)
    80001870:	01213023          	sd	s2,0(sp)
    80001874:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80001878:	00004797          	auipc	a5,0x4
    8000187c:	7387b783          	ld	a5,1848(a5) # 80005fb0 <_ZN9Scheduler9schedulerE>
    80001880:	04078263          	beqz	a5,800018c4 <_ZN9Scheduler3getEv+0x64>
    PCB* fr = scheduler->queuePCB.front();
    80001884:	00004917          	auipc	s2,0x4
    80001888:	72c90913          	addi	s2,s2,1836 # 80005fb0 <_ZN9Scheduler9schedulerE>
    8000188c:	00093503          	ld	a0,0(s2)
    80001890:	00000097          	auipc	ra,0x0
    80001894:	e28080e7          	jalr	-472(ra) # 800016b8 <_ZN5Queue5frontEv>
    80001898:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    8000189c:	00093503          	ld	a0,0(s2)
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	d48080e7          	jalr	-696(ra) # 800015e8 <_ZN5Queue3popEv>
}
    800018a8:	00048513          	mv	a0,s1
    800018ac:	01813083          	ld	ra,24(sp)
    800018b0:	01013403          	ld	s0,16(sp)
    800018b4:	00813483          	ld	s1,8(sp)
    800018b8:	00013903          	ld	s2,0(sp)
    800018bc:	02010113          	addi	sp,sp,32
    800018c0:	00008067          	ret
        scheduler = new Scheduler();
    800018c4:	01000513          	li	a0,16
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	eac080e7          	jalr	-340(ra) # 80001774 <_ZN9SchedulernwEm>
    800018d0:	00050493          	mv	s1,a0
    800018d4:	00053023          	sd	zero,0(a0)
    800018d8:	00053423          	sd	zero,8(a0)
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	e00080e7          	jalr	-512(ra) # 800016dc <_ZN5QueueC1Ev>
    800018e4:	00004797          	auipc	a5,0x4
    800018e8:	6c97b623          	sd	s1,1740(a5) # 80005fb0 <_ZN9Scheduler9schedulerE>
    800018ec:	f99ff06f          	j	80001884 <_ZN9Scheduler3getEv+0x24>
    800018f0:	00050913          	mv	s2,a0
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	ea4080e7          	jalr	-348(ra) # 8000179c <_ZN9SchedulerdlEPv>
    80001900:	00090513          	mv	a0,s2
    80001904:	00005097          	auipc	ra,0x5
    80001908:	794080e7          	jalr	1940(ra) # 80007098 <_Unwind_Resume>

000000008000190c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    8000190c:	fe010113          	addi	sp,sp,-32
    80001910:	00113c23          	sd	ra,24(sp)
    80001914:	00813823          	sd	s0,16(sp)
    80001918:	00913423          	sd	s1,8(sp)
    8000191c:	01213023          	sd	s2,0(sp)
    80001920:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80001924:	00004797          	auipc	a5,0x4
    80001928:	68c7b783          	ld	a5,1676(a5) # 80005fb0 <_ZN9Scheduler9schedulerE>
    8000192c:	02078663          	beqz	a5,80001958 <_ZN9Scheduler7getSizeEv+0x4c>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    80001930:	00004517          	auipc	a0,0x4
    80001934:	68053503          	ld	a0,1664(a0) # 80005fb0 <_ZN9Scheduler9schedulerE>
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	e0c080e7          	jalr	-500(ra) # 80001744 <_ZN5Queue4sizeEv>
}
    80001940:	01813083          	ld	ra,24(sp)
    80001944:	01013403          	ld	s0,16(sp)
    80001948:	00813483          	ld	s1,8(sp)
    8000194c:	00013903          	ld	s2,0(sp)
    80001950:	02010113          	addi	sp,sp,32
    80001954:	00008067          	ret
        scheduler = new Scheduler();
    80001958:	01000513          	li	a0,16
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	e18080e7          	jalr	-488(ra) # 80001774 <_ZN9SchedulernwEm>
    80001964:	00050493          	mv	s1,a0
    80001968:	00053023          	sd	zero,0(a0)
    8000196c:	00053423          	sd	zero,8(a0)
    80001970:	00000097          	auipc	ra,0x0
    80001974:	d6c080e7          	jalr	-660(ra) # 800016dc <_ZN5QueueC1Ev>
    80001978:	00004797          	auipc	a5,0x4
    8000197c:	6297bc23          	sd	s1,1592(a5) # 80005fb0 <_ZN9Scheduler9schedulerE>
    80001980:	fb1ff06f          	j	80001930 <_ZN9Scheduler7getSizeEv+0x24>
    80001984:	00050913          	mv	s2,a0
    80001988:	00048513          	mv	a0,s1
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	e10080e7          	jalr	-496(ra) # 8000179c <_ZN9SchedulerdlEPv>
    80001994:	00090513          	mv	a0,s2
    80001998:	00005097          	auipc	ra,0x5
    8000199c:	700080e7          	jalr	1792(ra) # 80007098 <_Unwind_Resume>

00000000800019a0 <_Z15thread1FunctionPv>:
    Riscv::printInteger(x);
    Riscv::printString("\n");*/
}

void thread1Function(void* p)
{
    800019a0:	fe010113          	addi	sp,sp,-32
    800019a4:	00113c23          	sd	ra,24(sp)
    800019a8:	00813823          	sd	s0,16(sp)
    800019ac:	00913423          	sd	s1,8(sp)
    800019b0:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    800019b4:	00003517          	auipc	a0,0x3
    800019b8:	6cc50513          	addi	a0,a0,1740 # 80005080 <CONSOLE_STATUS+0x70>
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	9ec080e7          	jalr	-1556(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < 10;i++)
    800019c4:	00000493          	li	s1,0
    800019c8:	0340006f          	j	800019fc <_Z15thread1FunctionPv+0x5c>
    {
        Riscv::printInteger(Scheduler::getSize());
        if(i % 4 == 0 && i > 0)
            thread_dispatch();
        Riscv::printString("i : ");
    800019cc:	00003517          	auipc	a0,0x3
    800019d0:	6cc50513          	addi	a0,a0,1740 # 80005098 <CONSOLE_STATUS+0x88>
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	9d4080e7          	jalr	-1580(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800019dc:	00048513          	mv	a0,s1
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	a38080e7          	jalr	-1480(ra) # 80002418 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800019e8:	00004517          	auipc	a0,0x4
    800019ec:	89850513          	addi	a0,a0,-1896 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	9b8080e7          	jalr	-1608(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < 10;i++)
    800019f8:	0014849b          	addiw	s1,s1,1
    800019fc:	00900793          	li	a5,9
    80001a00:	0297c663          	blt	a5,s1,80001a2c <_Z15thread1FunctionPv+0x8c>
        Riscv::printInteger(Scheduler::getSize());
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	f08080e7          	jalr	-248(ra) # 8000190c <_ZN9Scheduler7getSizeEv>
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	a0c080e7          	jalr	-1524(ra) # 80002418 <_ZN5Riscv12printIntegerEm>
        if(i % 4 == 0 && i > 0)
    80001a14:	0034f793          	andi	a5,s1,3
    80001a18:	fa079ae3          	bnez	a5,800019cc <_Z15thread1FunctionPv+0x2c>
    80001a1c:	fa9058e3          	blez	s1,800019cc <_Z15thread1FunctionPv+0x2c>
            thread_dispatch();
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	8d8080e7          	jalr	-1832(ra) # 800012f8 <thread_dispatch>
    80001a28:	fa5ff06f          	j	800019cc <_Z15thread1FunctionPv+0x2c>
    }
}
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	00813483          	ld	s1,8(sp)
    80001a38:	02010113          	addi	sp,sp,32
    80001a3c:	00008067          	ret

0000000080001a40 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001a40:	fe010113          	addi	sp,sp,-32
    80001a44:	00113c23          	sd	ra,24(sp)
    80001a48:	00813823          	sd	s0,16(sp)
    80001a4c:	00913423          	sd	s1,8(sp)
    80001a50:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001a54:	00003517          	auipc	a0,0x3
    80001a58:	64c50513          	addi	a0,a0,1612 # 800050a0 <CONSOLE_STATUS+0x90>
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	94c080e7          	jalr	-1716(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
    for(int j = 0; j < 10;j++)
    80001a64:	00000493          	li	s1,0
    80001a68:	0340006f          	j	80001a9c <_Z15thread2FunctionPv+0x5c>
    {
        Riscv::printInteger(Scheduler::getSize());
        if(j % 5 == 0 && j > 0)
            thread_dispatch();
        Riscv::printString("j : ");
    80001a6c:	00003517          	auipc	a0,0x3
    80001a70:	64c50513          	addi	a0,a0,1612 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001a74:	00001097          	auipc	ra,0x1
    80001a78:	934080e7          	jalr	-1740(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	998080e7          	jalr	-1640(ra) # 80002418 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001a88:	00003517          	auipc	a0,0x3
    80001a8c:	7f850513          	addi	a0,a0,2040 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	918080e7          	jalr	-1768(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
    for(int j = 0; j < 10;j++)
    80001a98:	0014849b          	addiw	s1,s1,1
    80001a9c:	00900793          	li	a5,9
    80001aa0:	0297c863          	blt	a5,s1,80001ad0 <_Z15thread2FunctionPv+0x90>
        Riscv::printInteger(Scheduler::getSize());
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	e68080e7          	jalr	-408(ra) # 8000190c <_ZN9Scheduler7getSizeEv>
    80001aac:	00001097          	auipc	ra,0x1
    80001ab0:	96c080e7          	jalr	-1684(ra) # 80002418 <_ZN5Riscv12printIntegerEm>
        if(j % 5 == 0 && j > 0)
    80001ab4:	00500793          	li	a5,5
    80001ab8:	02f4e7bb          	remw	a5,s1,a5
    80001abc:	fa0798e3          	bnez	a5,80001a6c <_Z15thread2FunctionPv+0x2c>
    80001ac0:	fa9056e3          	blez	s1,80001a6c <_Z15thread2FunctionPv+0x2c>
            thread_dispatch();
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	834080e7          	jalr	-1996(ra) # 800012f8 <thread_dispatch>
    80001acc:	fa1ff06f          	j	80001a6c <_Z15thread2FunctionPv+0x2c>
    }
}
    80001ad0:	01813083          	ld	ra,24(sp)
    80001ad4:	01013403          	ld	s0,16(sp)
    80001ad8:	00813483          	ld	s1,8(sp)
    80001adc:	02010113          	addi	sp,sp,32
    80001ae0:	00008067          	ret

0000000080001ae4 <_Z9testQueuev>:
{
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00813423          	sd	s0,8(sp)
    80001aec:	01010413          	addi	s0,sp,16
}
    80001af0:	00813403          	ld	s0,8(sp)
    80001af4:	01010113          	addi	sp,sp,16
    80001af8:	00008067          	ret

0000000080001afc <_Z11threadTestsv>:

void threadTests()
{
    80001afc:	fe010113          	addi	sp,sp,-32
    80001b00:	00113c23          	sd	ra,24(sp)
    80001b04:	00813823          	sd	s0,16(sp)
    80001b08:	00913423          	sd	s1,8(sp)
    80001b0c:	01213023          	sd	s2,0(sp)
    80001b10:	02010413          	addi	s0,sp,32
    Thread* t = new Thread(0, 0);
    80001b14:	00800513          	li	a0,8
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	6fc080e7          	jalr	1788(ra) # 80002214 <_Znwm>
    80001b20:	00050493          	mv	s1,a0
    80001b24:	00000613          	li	a2,0
    80001b28:	00000593          	li	a1,0
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	7a0080e7          	jalr	1952(ra) # 800022cc <_ZN6ThreadC1EPFvPvES0_>
    PCB::running = t->myHandle;
    80001b34:	0004b783          	ld	a5,0(s1)
    80001b38:	00004717          	auipc	a4,0x4
    80001b3c:	41873703          	ld	a4,1048(a4) # 80005f50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b40:	00f73023          	sd	a5,0(a4)
    80001b44:	00100713          	li	a4,1
    80001b48:	00e7ac23          	sw	a4,24(a5)
    PCB::running->setState(PCB::RUNNING);
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b4c:	00800513          	li	a0,8
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	6c4080e7          	jalr	1732(ra) # 80002214 <_Znwm>
    80001b58:	00050493          	mv	s1,a0
    80001b5c:	00000613          	li	a2,0
    80001b60:	00000597          	auipc	a1,0x0
    80001b64:	e4058593          	addi	a1,a1,-448 # 800019a0 <_Z15thread1FunctionPv>
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	764080e7          	jalr	1892(ra) # 800022cc <_ZN6ThreadC1EPFvPvES0_>
    Scheduler::put(t1->myHandle);
    80001b70:	0004b503          	ld	a0,0(s1)
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	c50080e7          	jalr	-944(ra) # 800017c4 <_ZN9Scheduler3putEP3PCB>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001b7c:	00800513          	li	a0,8
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	694080e7          	jalr	1684(ra) # 80002214 <_Znwm>
    80001b88:	00050913          	mv	s2,a0
    80001b8c:	00000613          	li	a2,0
    80001b90:	00000597          	auipc	a1,0x0
    80001b94:	eb058593          	addi	a1,a1,-336 # 80001a40 <_Z15thread2FunctionPv>
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	734080e7          	jalr	1844(ra) # 800022cc <_ZN6ThreadC1EPFvPvES0_>
    Scheduler::put(t2->myHandle);
    80001ba0:	00093503          	ld	a0,0(s2)
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	c20080e7          	jalr	-992(ra) # 800017c4 <_ZN9Scheduler3putEP3PCB>
    80001bac:	00c0006f          	j	80001bb8 <_Z11threadTestsv+0xbc>
    //Riscv::enableInterrupts();

    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    {

        thread_dispatch();
    80001bb0:	fffff097          	auipc	ra,0xfffff
    80001bb4:	748080e7          	jalr	1864(ra) # 800012f8 <thread_dispatch>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    80001bb8:	0004b783          	ld	a5,0(s1)
    State getState() {return state;}
    80001bbc:	0187a703          	lw	a4,24(a5)
    80001bc0:	00300793          	li	a5,3
    80001bc4:	fef716e3          	bne	a4,a5,80001bb0 <_Z11threadTestsv+0xb4>
    80001bc8:	00093783          	ld	a5,0(s2)
    80001bcc:	0187a703          	lw	a4,24(a5)
    80001bd0:	00300793          	li	a5,3
    80001bd4:	fcf71ee3          	bne	a4,a5,80001bb0 <_Z11threadTestsv+0xb4>
    }

    Riscv::printString("End...\n");
    80001bd8:	00003517          	auipc	a0,0x3
    80001bdc:	4e850513          	addi	a0,a0,1256 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	7c8080e7          	jalr	1992(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
}
    80001be8:	01813083          	ld	ra,24(sp)
    80001bec:	01013403          	ld	s0,16(sp)
    80001bf0:	00813483          	ld	s1,8(sp)
    80001bf4:	00013903          	ld	s2,0(sp)
    80001bf8:	02010113          	addi	sp,sp,32
    80001bfc:	00008067          	ret
    80001c00:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    80001c04:	00048513          	mv	a0,s1
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	634080e7          	jalr	1588(ra) # 8000223c <_ZdlPv>
    80001c10:	00090513          	mv	a0,s2
    80001c14:	00005097          	auipc	ra,0x5
    80001c18:	484080e7          	jalr	1156(ra) # 80007098 <_Unwind_Resume>
    80001c1c:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001c20:	00048513          	mv	a0,s1
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	618080e7          	jalr	1560(ra) # 8000223c <_ZdlPv>
    80001c2c:	00090513          	mv	a0,s2
    80001c30:	00005097          	auipc	ra,0x5
    80001c34:	468080e7          	jalr	1128(ra) # 80007098 <_Unwind_Resume>
    80001c38:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001c3c:	00090513          	mv	a0,s2
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	5fc080e7          	jalr	1532(ra) # 8000223c <_ZdlPv>
    80001c48:	00048513          	mv	a0,s1
    80001c4c:	00005097          	auipc	ra,0x5
    80001c50:	44c080e7          	jalr	1100(ra) # 80007098 <_Unwind_Resume>

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
    80001c74:	738080e7          	jalr	1848(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001cb8:	6f4080e7          	jalr	1780(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001d0c:	6a0080e7          	jalr	1696(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001d54:	658080e7          	jalr	1624(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001d98:	614080e7          	jalr	1556(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
            return;
    80001d9c:	f21ff06f          	j	80001cbc <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001da0:	00003517          	auipc	a0,0x3
    80001da4:	34050513          	addi	a0,a0,832 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	600080e7          	jalr	1536(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001dd0:	5dc080e7          	jalr	1500(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001dd4:	00004797          	auipc	a5,0x4
    80001dd8:	1847b783          	ld	a5,388(a5) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ddc:	0007b503          	ld	a0,0(a5)
    80001de0:	00004797          	auipc	a5,0x4
    80001de4:	1507b783          	ld	a5,336(a5) # 80005f30 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001e0c:	5a0080e7          	jalr	1440(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
}
    80001e10:	00813083          	ld	ra,8(sp)
    80001e14:	00013403          	ld	s0,0(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret
        Riscv::printString("OK\n");
    80001e20:	00003517          	auipc	a0,0x3
    80001e24:	2c050513          	addi	a0,a0,704 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	580080e7          	jalr	1408(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001e5c:	550080e7          	jalr	1360(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001ea8:	574080e7          	jalr	1396(ra) # 80002418 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001eac:	00003517          	auipc	a0,0x3
    80001eb0:	3d450513          	addi	a0,a0,980 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	4f4080e7          	jalr	1268(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001ed8:	4d4080e7          	jalr	1236(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001f04:	4a8080e7          	jalr	1192(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001f28:	484080e7          	jalr	1156(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001f54:	458080e7          	jalr	1112(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001f74:	438080e7          	jalr	1080(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001fa4:	408080e7          	jalr	1032(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80001fe8:	3c4080e7          	jalr	964(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    8000201c:	390080e7          	jalr	912(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(sz);
    80002020:	00090993          	mv	s3,s2
    80002024:	00090513          	mv	a0,s2
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	3f0080e7          	jalr	1008(ra) # 80002418 <_ZN5Riscv12printIntegerEm>
        for(int i = 0 ; i < num;i+=2)
    80002030:	00000493          	li	s1,0
    80002034:	06300793          	li	a5,99
    80002038:	0a97ca63          	blt	a5,s1,800020ec <_Z13stressTestingv+0x170>
            Riscv::printString("i : ");
    8000203c:	00003517          	auipc	a0,0x3
    80002040:	05c50513          	addi	a0,a0,92 # 80005098 <CONSOLE_STATUS+0x88>
    80002044:	00000097          	auipc	ra,0x0
    80002048:	364080e7          	jalr	868(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    8000204c:	00048513          	mv	a0,s1
    80002050:	00000097          	auipc	ra,0x0
    80002054:	3c8080e7          	jalr	968(ra) # 80002418 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80002058:	00003517          	auipc	a0,0x3
    8000205c:	0e050513          	addi	a0,a0,224 # 80005138 <CONSOLE_STATUS+0x128>
    80002060:	00000097          	auipc	ra,0x0
    80002064:	348080e7          	jalr	840(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80002090:	31c080e7          	jalr	796(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    800020d0:	2dc080e7          	jalr	732(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
                return;
    800020d4:	f19ff06f          	j	80001fec <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    800020d8:	00003517          	auipc	a0,0x3
    800020dc:	07050513          	addi	a0,a0,112 # 80005148 <CONSOLE_STATUS+0x138>
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	2c8080e7          	jalr	712(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80002104:	2a8080e7          	jalr	680(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80002108:	00048513          	mv	a0,s1
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	30c080e7          	jalr	780(ra) # 80002418 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80002114:	00003517          	auipc	a0,0x3
    80002118:	02450513          	addi	a0,a0,36 # 80005138 <CONSOLE_STATUS+0x128>
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	28c080e7          	jalr	652(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    8000214c:	260080e7          	jalr	608(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    80002184:	228080e7          	jalr	552(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
                return;
    80002188:	e65ff06f          	j	80001fec <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    8000218c:	00003517          	auipc	a0,0x3
    80002190:	fbc50513          	addi	a0,a0,-68 # 80005148 <CONSOLE_STATUS+0x138>
    80002194:	00000097          	auipc	ra,0x0
    80002198:	214080e7          	jalr	532(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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
    800021b4:	1f8080e7          	jalr	504(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
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

00000000800021e4 <main>:
{
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	130080e7          	jalr	304(ra) # 80002324 <_ZN5Riscv10initSystemEv>
    memoryAllocationTests();
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	fc0080e7          	jalr	-64(ra) # 800021bc <_Z21memoryAllocationTestsv>
}
    80002204:	00813083          	ld	ra,8(sp)
    80002208:	00013403          	ld	s0,0(sp)
    8000220c:	01010113          	addi	sp,sp,16
    80002210:	00008067          	ret

0000000080002214 <_Znwm>:

#include "../h/syscall_cpp.h"

//general
void * operator new(size_t size)
{
    80002214:	ff010113          	addi	sp,sp,-16
    80002218:	00113423          	sd	ra,8(sp)
    8000221c:	00813023          	sd	s0,0(sp)
    80002220:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002224:	fffff097          	auipc	ra,0xfffff
    80002228:	ff8080e7          	jalr	-8(ra) # 8000121c <mem_alloc>
}
    8000222c:	00813083          	ld	ra,8(sp)
    80002230:	00013403          	ld	s0,0(sp)
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00008067          	ret

000000008000223c <_ZdlPv>:

void operator delete(void * p)
{
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00113423          	sd	ra,8(sp)
    80002244:	00813023          	sd	s0,0(sp)
    80002248:	01010413          	addi	s0,sp,16
   mem_free(p);
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	000080e7          	jalr	ra # 8000124c <mem_free>
}
    80002254:	00813083          	ld	ra,8(sp)
    80002258:	00013403          	ld	s0,0(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret

0000000080002264 <_ZN6Thread5startEv>:

//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00813423          	sd	s0,8(sp)
    8000226c:	01010413          	addi	s0,sp,16

}
    80002270:	00813403          	ld	s0,8(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00113423          	sd	ra,8(sp)
    80002284:	00813023          	sd	s0,0(sp)
    80002288:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	06c080e7          	jalr	108(ra) # 800012f8 <thread_dispatch>
}
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00113423          	sd	ra,8(sp)
    800022ac:	00813023          	sd	s0,0(sp)
    800022b0:	01010413          	addi	s0,sp,16
    PCB::sleep(time);
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	200080e7          	jalr	512(ra) # 800014b4 <_ZN3PCB5sleepEm>
}
    800022bc:	00813083          	ld	ra,8(sp)
    800022c0:	00013403          	ld	s0,0(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00113423          	sd	ra,8(sp)
    800022d4:	00813023          	sd	s0,0(sp)
    800022d8:	01010413          	addi	s0,sp,16
    int retval = thread_create((void**)&myHandle, body, args);
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	f9c080e7          	jalr	-100(ra) # 80001278 <thread_create>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800022e4:	00813083          	ld	ra,8(sp)
    800022e8:	00013403          	ld	s0,0(sp)
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret

00000000800022f4 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00813423          	sd	s0,8(sp)
    800022fc:	01010413          	addi	s0,sp,16

}
    80002300:	00813403          	ld	s0,8(sp)
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00008067          	ret

000000008000230c <_ZN9Semaphore4waitEv>:

void Semaphore::wait() {
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813423          	sd	s0,8(sp)
    80002314:	01010413          	addi	s0,sp,16

}
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_ZN5Riscv10initSystemEv>:
#include "../h/PCB.h"
#include "../lib/console.h"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00813423          	sd	s0,8(sp)
    8000232c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002330:	00004797          	auipc	a5,0x4
    80002334:	c087b783          	ld	a5,-1016(a5) # 80005f38 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002338:	10579073          	csrw	stvec,a5
    //todo
    //no need for comment, but sync context switch
    //should be tested, before hardware interrupts are enabled
    //Riscv::enableInterrupts();
}
    8000233c:	00813403          	ld	s0,8(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZN5Riscv16enableInterruptsEv>:

void Riscv::enableInterrupts() {
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00813423          	sd	s0,8(sp)
    80002350:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002354:	00200793          	li	a5,2
    80002358:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
}
    8000235c:	00813403          	ld	s0,8(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00813423          	sd	s0,8(sp)
    80002370:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002374:	00200793          	li	a5,2
    80002378:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
}
    8000237c:	00813403          	ld	s0,8(sp)
    80002380:	01010113          	addi	sp,sp,16
    80002384:	00008067          	ret

0000000080002388 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002388:	ff010113          	addi	sp,sp,-16
    8000238c:	00813423          	sd	s0,8(sp)
    80002390:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002394:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002398:	10200073          	sret
}
    8000239c:	00813403          	ld	s0,8(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    800023a8:	fd010113          	addi	sp,sp,-48
    800023ac:	02113423          	sd	ra,40(sp)
    800023b0:	02813023          	sd	s0,32(sp)
    800023b4:	00913c23          	sd	s1,24(sp)
    800023b8:	01213823          	sd	s2,16(sp)
    800023bc:	03010413          	addi	s0,sp,48
    800023c0:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800023c4:	100027f3          	csrr	a5,sstatus
    800023c8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800023cc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800023d0:	00200793          	li	a5,2
    800023d4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    800023d8:	0004c503          	lbu	a0,0(s1)
    800023dc:	00050a63          	beqz	a0,800023f0 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800023e0:	00003097          	auipc	ra,0x3
    800023e4:	8ec080e7          	jalr	-1812(ra) # 80004ccc <__putc>
        string++;
    800023e8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800023ec:	fedff06f          	j	800023d8 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800023f0:	0009091b          	sext.w	s2,s2
    800023f4:	00297913          	andi	s2,s2,2
    800023f8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800023fc:	10092073          	csrs	sstatus,s2
}
    80002400:	02813083          	ld	ra,40(sp)
    80002404:	02013403          	ld	s0,32(sp)
    80002408:	01813483          	ld	s1,24(sp)
    8000240c:	01013903          	ld	s2,16(sp)
    80002410:	03010113          	addi	sp,sp,48
    80002414:	00008067          	ret

0000000080002418 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002418:	fc010113          	addi	sp,sp,-64
    8000241c:	02113c23          	sd	ra,56(sp)
    80002420:	02813823          	sd	s0,48(sp)
    80002424:	02913423          	sd	s1,40(sp)
    80002428:	03213023          	sd	s2,32(sp)
    8000242c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002430:	100027f3          	csrr	a5,sstatus
    80002434:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002438:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000243c:	00200793          	li	a5,2
    80002440:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002444:	0005051b          	sext.w	a0,a0

    i = 0;
    80002448:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    8000244c:	00a00613          	li	a2,10
    80002450:	02c5773b          	remuw	a4,a0,a2
    80002454:	02071693          	slli	a3,a4,0x20
    80002458:	0206d693          	srli	a3,a3,0x20
    8000245c:	00003717          	auipc	a4,0x3
    80002460:	d0470713          	addi	a4,a4,-764 # 80005160 <_ZZN5Riscv12printIntegerEmE6digits>
    80002464:	00d70733          	add	a4,a4,a3
    80002468:	00074703          	lbu	a4,0(a4)
    8000246c:	fe040693          	addi	a3,s0,-32
    80002470:	009687b3          	add	a5,a3,s1
    80002474:	0014849b          	addiw	s1,s1,1
    80002478:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    8000247c:	0005071b          	sext.w	a4,a0
    80002480:	02c5553b          	divuw	a0,a0,a2
    80002484:	00900793          	li	a5,9
    80002488:	fce7e2e3          	bltu	a5,a4,8000244c <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000248c:	fff4849b          	addiw	s1,s1,-1
    80002490:	0004ce63          	bltz	s1,800024ac <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002494:	fe040793          	addi	a5,s0,-32
    80002498:	009787b3          	add	a5,a5,s1
    8000249c:	ff07c503          	lbu	a0,-16(a5)
    800024a0:	00003097          	auipc	ra,0x3
    800024a4:	82c080e7          	jalr	-2004(ra) # 80004ccc <__putc>
    800024a8:	fe5ff06f          	j	8000248c <_ZN5Riscv12printIntegerEm+0x74>

    Riscv::printString("\n");
    800024ac:	00003517          	auipc	a0,0x3
    800024b0:	dd450513          	addi	a0,a0,-556 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	ef4080e7          	jalr	-268(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800024bc:	0009091b          	sext.w	s2,s2
    800024c0:	00297913          	andi	s2,s2,2
    800024c4:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800024c8:	10092073          	csrs	sstatus,s2
}
    800024cc:	03813083          	ld	ra,56(sp)
    800024d0:	03013403          	ld	s0,48(sp)
    800024d4:	02813483          	ld	s1,40(sp)
    800024d8:	02013903          	ld	s2,32(sp)
    800024dc:	04010113          	addi	sp,sp,64
    800024e0:	00008067          	ret

00000000800024e4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800024e4:	f9010113          	addi	sp,sp,-112
    800024e8:	06113423          	sd	ra,104(sp)
    800024ec:	06813023          	sd	s0,96(sp)
    800024f0:	04913c23          	sd	s1,88(sp)
    800024f4:	05213823          	sd	s2,80(sp)
    800024f8:	05313423          	sd	s3,72(sp)
    800024fc:	05413023          	sd	s4,64(sp)
    80002500:	03513c23          	sd	s5,56(sp)
    80002504:	03613823          	sd	s6,48(sp)
    80002508:	07010413          	addi	s0,sp,112

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    8000250c:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002510:	142027f3          	csrr	a5,scause
    80002514:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002518:	f9843703          	ld	a4,-104(s0)

    uint64 scause = Riscv::r_scause();
    switch(scause) {
    8000251c:	00900793          	li	a5,9
    80002520:	08f70a63          	beq	a4,a5,800025b4 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    80002524:	fff00793          	li	a5,-1
    80002528:	03f79793          	slli	a5,a5,0x3f
    8000252c:	00178793          	addi	a5,a5,1
    80002530:	0af71e63          	bne	a4,a5,800025ec <_ZN5Riscv20handleSupervisorTrapEv+0x108>

        case timerInterrupt:

            Riscv::printString("timerInterrupt\n");
    80002534:	00003517          	auipc	a0,0x3
    80002538:	c1c50513          	addi	a0,a0,-996 # 80005150 <CONSOLE_STATUS+0x140>
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	e6c080e7          	jalr	-404(ra) # 800023a8 <_ZN5Riscv11printStringEPKc>
            PCB::timeSliceCounter++;
    80002544:	00004717          	auipc	a4,0x4
    80002548:	9fc73703          	ld	a4,-1540(a4) # 80005f40 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000254c:	00073783          	ld	a5,0(a4)
    80002550:	00178793          	addi	a5,a5,1
    80002554:	00f73023          	sd	a5,0(a4)
            if(PCB::running == 0)
    80002558:	00004717          	auipc	a4,0x4
    8000255c:	9f873703          	ld	a4,-1544(a4) # 80005f50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002560:	00073703          	ld	a4,0(a4)
    80002564:	08070463          	beqz	a4,800025ec <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    uint64 getTimeSlice() { return timeSlice;}
    80002568:	00073703          	ld	a4,0(a4)
                break;
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    8000256c:	00e7f863          	bgeu	a5,a4,8000257c <_ZN5Riscv20handleSupervisorTrapEv+0x98>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002570:	00200793          	li	a5,2
    80002574:	1447b073          	csrc	sip,a5
}
    80002578:	0740006f          	j	800025ec <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000257c:	141027f3          	csrr	a5,sepc
    80002580:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002584:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002588:	100027f3          	csrr	a5,sstatus
    8000258c:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002590:	fa043903          	ld	s2,-96(s0)
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    80002594:	00004797          	auipc	a5,0x4
    80002598:	9ac7b783          	ld	a5,-1620(a5) # 80005f40 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000259c:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	f54080e7          	jalr	-172(ra) # 800014f4 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800025a8:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800025ac:	14149073          	csrw	sepc,s1
}
    800025b0:	fc1ff06f          	j	80002570 <_ZN5Riscv20handleSupervisorTrapEv+0x8c>
            break;

        case ecallSystemInterupt:

            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800025b4:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800025b8:	14102773          	csrr	a4,sepc
    800025bc:	fae43823          	sd	a4,-80(s0)
    return sepc;
    800025c0:	fb043483          	ld	s1,-80(s0)

            uint64 sepc = Riscv::r_sepc();
            sepc+=4;
    800025c4:	00448493          	addi	s1,s1,4

            if(operation == MemoryAllocator::MEM_ALLOC) {
    800025c8:	00100713          	li	a4,1
    800025cc:	04e78463          	beq	a5,a4,80002614 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
                __asm__ volatile("mv %0, a1" : "=r"(size));
                size*=MEM_BLOCK_SIZE;
                void* allocatedAddr = kmalloc(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == MemoryAllocator::MEM_FREE) {
    800025d0:	00200713          	li	a4,2
    800025d4:	04e78c63          	beq	a5,a4,8000262c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                uint64 addr = 0;
                __asm__ volatile("mv %0, a1" : "=r"(addr));
                uint64 retval = kfree((void*)addr);
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == PCB::THREAD_CREATE)
    800025d8:	01100713          	li	a4,17
    800025dc:	06e78263          	beq	a5,a4,80002640 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
                    __asm__ volatile("li a0, 0");
                    //__asm__ volatile("mv a1, %0" : :"r"((uint64)newPCB));
                }

            }
            else if(operation == PCB::THREAD_DISPATCH)
    800025e0:	01300713          	li	a4,19
    800025e4:	0ae78463          	beq	a5,a4,8000268c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800025e8:	14149073          	csrw	sepc,s1

            break;
    }

    //console_handler();
}
    800025ec:	06813083          	ld	ra,104(sp)
    800025f0:	06013403          	ld	s0,96(sp)
    800025f4:	05813483          	ld	s1,88(sp)
    800025f8:	05013903          	ld	s2,80(sp)
    800025fc:	04813983          	ld	s3,72(sp)
    80002600:	04013a03          	ld	s4,64(sp)
    80002604:	03813a83          	ld	s5,56(sp)
    80002608:	03013b03          	ld	s6,48(sp)
    8000260c:	07010113          	addi	sp,sp,112
    80002610:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002614:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002618:	00651513          	slli	a0,a0,0x6
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	404080e7          	jalr	1028(ra) # 80002a20 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002624:	00050513          	mv	a0,a0
    80002628:	fc1ff06f          	j	800025e8 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    8000262c:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002630:	00000097          	auipc	ra,0x0
    80002634:	418080e7          	jalr	1048(ra) # 80002a48 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002638:	00050513          	mv	a0,a0
    8000263c:	fadff06f          	j	800025e8 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002640:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002644:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002648:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 2UL);
    8000264c:	04000513          	li	a0,64
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	f48080e7          	jalr	-184(ra) # 80001598 <_ZN3PCBnwEm>
    80002658:	00050993          	mv	s3,a0
    8000265c:	00200713          	li	a4,2
    80002660:	00090693          	mv	a3,s2
    80002664:	000b0613          	mv	a2,s6
    80002668:	000a8593          	mv	a1,s5
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	e0c080e7          	jalr	-500(ra) # 80001478 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80002674:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002678:	00098663          	beqz	s3,80002684 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                    __asm__ volatile("li a0, 0");
    8000267c:	00000513          	li	a0,0
    80002680:	f69ff06f          	j	800025e8 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002684:	fff00513          	li	a0,-1
    80002688:	f61ff06f          	j	800025e8 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000268c:	100027f3          	csrr	a5,sstatus
    80002690:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002694:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80002698:	00004797          	auipc	a5,0x4
    8000269c:	8a87b783          	ld	a5,-1880(a5) # 80005f40 <_GLOBAL_OFFSET_TABLE_+0x18>
    800026a0:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	e50080e7          	jalr	-432(ra) # 800014f4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800026ac:	10091073          	csrw	sstatus,s2
}
    800026b0:	f39ff06f          	j	800025e8 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    800026b4:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 2UL);
    800026b8:	00098513          	mv	a0,s3
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	f04080e7          	jalr	-252(ra) # 800015c0 <_ZN3PCBdlEPv>
    800026c4:	00048513          	mv	a0,s1
    800026c8:	00005097          	auipc	ra,0x5
    800026cc:	9d0080e7          	jalr	-1584(ra) # 80007098 <_Unwind_Resume>

00000000800026d0 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00813423          	sd	s0,8(sp)
    800026d8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800026dc:	00004717          	auipc	a4,0x4
    800026e0:	8dc72703          	lw	a4,-1828(a4) # 80005fb8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800026e4:	00100793          	li	a5,1
    800026e8:	04f70263          	beq	a4,a5,8000272c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800026ec:	00004797          	auipc	a5,0x4
    800026f0:	8cc78793          	addi	a5,a5,-1844 # 80005fb8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800026f4:	00100713          	li	a4,1
    800026f8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800026fc:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002700:	00004717          	auipc	a4,0x4
    80002704:	83073703          	ld	a4,-2000(a4) # 80005f30 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002708:	00073703          	ld	a4,0(a4)
    8000270c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002710:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002714:	00004797          	auipc	a5,0x4
    80002718:	8447b783          	ld	a5,-1980(a5) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000271c:	0007b783          	ld	a5,0(a5)
    80002720:	40e787b3          	sub	a5,a5,a4
    80002724:	ff178793          	addi	a5,a5,-15
    80002728:	00f73023          	sd	a5,0(a4)
}
    8000272c:	00813403          	ld	s0,8(sp)
    80002730:	01010113          	addi	sp,sp,16
    80002734:	00008067          	ret

0000000080002738 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002738:	fe010113          	addi	sp,sp,-32
    8000273c:	00113c23          	sd	ra,24(sp)
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	01213023          	sd	s2,0(sp)
    8000274c:	02010413          	addi	s0,sp,32
    80002750:	00050493          	mv	s1,a0
    80002754:	00058913          	mv	s2,a1

    initMemory();
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	f78080e7          	jalr	-136(ra) # 800026d0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002760:	00004797          	auipc	a5,0x4
    80002764:	8607b783          	ld	a5,-1952(a5) # 80005fc0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002768:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    8000276c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80002770:	00000713          	li	a4,0
    while(curr != 0)
    80002774:	00078c63          	beqz	a5,8000278c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002778:	00f4e863          	bltu	s1,a5,80002788 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    8000277c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002780:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002784:	ff1ff06f          	j	80002774 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80002788:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000278c:	02070063          	beqz	a4,800027ac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002790:	00973423          	sd	s1,8(a4)
}
    80002794:	01813083          	ld	ra,24(sp)
    80002798:	01013403          	ld	s0,16(sp)
    8000279c:	00813483          	ld	s1,8(sp)
    800027a0:	00013903          	ld	s2,0(sp)
    800027a4:	02010113          	addi	sp,sp,32
    800027a8:	00008067          	ret
        headAllocated = newAllocated;
    800027ac:	00004797          	auipc	a5,0x4
    800027b0:	8097ba23          	sd	s1,-2028(a5) # 80005fc0 <_ZN15MemoryAllocator13headAllocatedE>
    800027b4:	fe1ff06f          	j	80002794 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

00000000800027b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800027b8:	fe010113          	addi	sp,sp,-32
    800027bc:	00113c23          	sd	ra,24(sp)
    800027c0:	00813823          	sd	s0,16(sp)
    800027c4:	00913423          	sd	s1,8(sp)
    800027c8:	01213023          	sd	s2,0(sp)
    800027cc:	02010413          	addi	s0,sp,32
    800027d0:	00050913          	mv	s2,a0
    initMemory();
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	efc080e7          	jalr	-260(ra) # 800026d0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800027dc:	00003497          	auipc	s1,0x3
    800027e0:	7ec4b483          	ld	s1,2028(s1) # 80005fc8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800027e4:	00000713          	li	a4,0
    while(curr != 0) {
    800027e8:	0a048863          	beqz	s1,80002898 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>

        if(curr->size >= size) {
    800027ec:	0004b783          	ld	a5,0(s1)
    800027f0:	0127f863          	bgeu	a5,s2,80002800 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800027f4:	00048713          	mv	a4,s1
        curr = curr->next;
    800027f8:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    800027fc:	fedff06f          	j	800027e8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80002800:	01090693          	addi	a3,s2,16
    80002804:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80002808:	00003617          	auipc	a2,0x3
    8000280c:	75063603          	ld	a2,1872(a2) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002810:	00063603          	ld	a2,0(a2)
    80002814:	04d66c63          	bltu	a2,a3,8000286c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80002818:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    8000281c:	01000613          	li	a2,16
    80002820:	02f67663          	bgeu	a2,a5,8000284c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80002824:	0084b603          	ld	a2,8(s1)
    80002828:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    8000282c:	ff078793          	addi	a5,a5,-16
    80002830:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80002834:	00070663          	beqz	a4,80002840 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80002838:	00d73423          	sd	a3,8(a4)
    8000283c:	0380006f          	j	80002874 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80002840:	00003797          	auipc	a5,0x3
    80002844:	78d7b423          	sd	a3,1928(a5) # 80005fc8 <_ZN15MemoryAllocator8headFreeE>
    80002848:	02c0006f          	j	80002874 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    8000284c:	00070863          	beqz	a4,8000285c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80002850:	0084b783          	ld	a5,8(s1)
    80002854:	00f73423          	sd	a5,8(a4)
    80002858:	01c0006f          	j	80002874 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    8000285c:	0084b783          	ld	a5,8(s1)
    80002860:	00003717          	auipc	a4,0x3
    80002864:	76f73423          	sd	a5,1896(a4) # 80005fc8 <_ZN15MemoryAllocator8headFreeE>
    80002868:	00c0006f          	j	80002874 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    8000286c:	02070063          	beqz	a4,8000288c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80002870:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80002874:	00090593          	mv	a1,s2
    80002878:	00048513          	mv	a0,s1
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	ebc080e7          	jalr	-324(ra) # 80002738 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80002884:	01048513          	addi	a0,s1,16
            break;
    80002888:	0140006f          	j	8000289c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    8000288c:	00003797          	auipc	a5,0x3
    80002890:	7207be23          	sd	zero,1852(a5) # 80005fc8 <_ZN15MemoryAllocator8headFreeE>
    80002894:	fe1ff06f          	j	80002874 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80002898:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000289c:	01813083          	ld	ra,24(sp)
    800028a0:	01013403          	ld	s0,16(sp)
    800028a4:	00813483          	ld	s1,8(sp)
    800028a8:	00013903          	ld	s2,0(sp)
    800028ac:	02010113          	addi	sp,sp,32
    800028b0:	00008067          	ret

00000000800028b4 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00113423          	sd	ra,8(sp)
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	ef4080e7          	jalr	-268(ra) # 800027b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800028cc:	00813083          	ld	ra,8(sp)
    800028d0:	00013403          	ld	s0,0(sp)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret

00000000800028dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800028dc:	fe010113          	addi	sp,sp,-32
    800028e0:	00113c23          	sd	ra,24(sp)
    800028e4:	00813823          	sd	s0,16(sp)
    800028e8:	00913423          	sd	s1,8(sp)
    800028ec:	01213023          	sd	s2,0(sp)
    800028f0:	02010413          	addi	s0,sp,32
    800028f4:	00050493          	mv	s1,a0
    800028f8:	00058913          	mv	s2,a1
    initMemory();
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	dd4080e7          	jalr	-556(ra) # 800026d0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002904:	00003797          	auipc	a5,0x3
    80002908:	6c47b783          	ld	a5,1732(a5) # 80005fc8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    8000290c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80002910:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80002914:	00000713          	li	a4,0
    while(curr != 0)
    80002918:	00078c63          	beqz	a5,80002930 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    8000291c:	00f4e863          	bltu	s1,a5,8000292c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80002920:	00078713          	mv	a4,a5
        curr = curr->next;
    80002924:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002928:	ff1ff06f          	j	80002918 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    8000292c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002930:	02070063          	beqz	a4,80002950 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80002934:	00973423          	sd	s1,8(a4)
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }*/

}
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	00013903          	ld	s2,0(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret
        headFree = newSegment;
    80002950:	00003797          	auipc	a5,0x3
    80002954:	6697bc23          	sd	s1,1656(a5) # 80005fc8 <_ZN15MemoryAllocator8headFreeE>
    80002958:	fe1ff06f          	j	80002938 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>

000000008000295c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    8000295c:	fe010113          	addi	sp,sp,-32
    80002960:	00113c23          	sd	ra,24(sp)
    80002964:	00813823          	sd	s0,16(sp)
    80002968:	00913423          	sd	s1,8(sp)
    8000296c:	01213023          	sd	s2,0(sp)
    80002970:	02010413          	addi	s0,sp,32
    80002974:	00050913          	mv	s2,a0
    initMemory();
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	d58080e7          	jalr	-680(ra) # 800026d0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80002980:	00003497          	auipc	s1,0x3
    80002984:	6404b483          	ld	s1,1600(s1) # 80005fc0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80002988:	00000713          	li	a4,0
    while(curr != 0)
    8000298c:	02048a63          	beqz	s1,800029c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80002990:	01048793          	addi	a5,s1,16
    80002994:	01278863          	beq	a5,s2,800029a4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80002998:	00048713          	mv	a4,s1
        curr = curr->next;
    8000299c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800029a0:	fedff06f          	j	8000298c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800029a4:	02070e63          	beqz	a4,800029e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800029a8:	0084b783          	ld	a5,8(s1)
    800029ac:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800029b0:	0004b583          	ld	a1,0(s1)
    800029b4:	00048513          	mv	a0,s1
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	f24080e7          	jalr	-220(ra) # 800028dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800029c0:	02048863          	beqz	s1,800029f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800029c4:	00000513          	li	a0,0
    else
        return 1;
}
    800029c8:	01813083          	ld	ra,24(sp)
    800029cc:	01013403          	ld	s0,16(sp)
    800029d0:	00813483          	ld	s1,8(sp)
    800029d4:	00013903          	ld	s2,0(sp)
    800029d8:	02010113          	addi	sp,sp,32
    800029dc:	00008067          	ret
                headAllocated = curr->next;
    800029e0:	0084b783          	ld	a5,8(s1)
    800029e4:	00003717          	auipc	a4,0x3
    800029e8:	5cf73e23          	sd	a5,1500(a4) # 80005fc0 <_ZN15MemoryAllocator13headAllocatedE>
    800029ec:	fc5ff06f          	j	800029b0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800029f0:	00100513          	li	a0,1
    800029f4:	fd5ff06f          	j	800029c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800029f8 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	00813023          	sd	s0,0(sp)
    80002a04:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	f54080e7          	jalr	-172(ra) # 8000295c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00013403          	ld	s0,0(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80002a20:	ff010113          	addi	sp,sp,-16
    80002a24:	00113423          	sd	ra,8(sp)
    80002a28:	00813023          	sd	s0,0(sp)
    80002a2c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	e84080e7          	jalr	-380(ra) # 800028b4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002a38:	00813083          	ld	ra,8(sp)
    80002a3c:	00013403          	ld	s0,0(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80002a48:	ff010113          	addi	sp,sp,-16
    80002a4c:	00113423          	sd	ra,8(sp)
    80002a50:	00813023          	sd	s0,0(sp)
    80002a54:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	fa0080e7          	jalr	-96(ra) # 800029f8 <_ZN15MemoryAllocator8mem_freeEPv>
    80002a60:	00813083          	ld	ra,8(sp)
    80002a64:	00013403          	ld	s0,0(sp)
    80002a68:	01010113          	addi	sp,sp,16
    80002a6c:	00008067          	ret

0000000080002a70 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.h"
#include "../h/MemoryAllocator.h"

KSemaphore::KSemaphore(int val) {
    80002a70:	fe010113          	addi	sp,sp,-32
    80002a74:	00113c23          	sd	ra,24(sp)
    80002a78:	00813823          	sd	s0,16(sp)
    80002a7c:	00913423          	sd	s1,8(sp)
    80002a80:	01213023          	sd	s2,0(sp)
    80002a84:	02010413          	addi	s0,sp,32
    80002a88:	00050493          	mv	s1,a0
    80002a8c:	00058913          	mv	s2,a1
    80002a90:	00850513          	addi	a0,a0,8
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	c48080e7          	jalr	-952(ra) # 800016dc <_ZN5QueueC1Ev>
    this->val = this->beginVal = val;
    80002a9c:	0124a223          	sw	s2,4(s1)
    80002aa0:	0124a023          	sw	s2,0(s1)
}
    80002aa4:	01813083          	ld	ra,24(sp)
    80002aa8:	01013403          	ld	s0,16(sp)
    80002aac:	00813483          	ld	s1,8(sp)
    80002ab0:	00013903          	ld	s2,0(sp)
    80002ab4:	02010113          	addi	sp,sp,32
    80002ab8:	00008067          	ret

0000000080002abc <_ZN10KSemaphoreD1Ev>:
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00113423          	sd	ra,8(sp)
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    80002acc:	00850513          	addi	a0,a0,8
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	c2c080e7          	jalr	-980(ra) # 800016fc <_ZN5QueueD1Ev>
    //todo
}
    80002ad8:	00813083          	ld	ra,8(sp)
    80002adc:	00013403          	ld	s0,0(sp)
    80002ae0:	01010113          	addi	sp,sp,16
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN10KSemaphore5blockEv>:

//todo
void KSemaphore::block() {
    80002ae8:	ff010113          	addi	sp,sp,-16
    80002aec:	00113423          	sd	ra,8(sp)
    80002af0:	00813023          	sd	s0,0(sp)
    80002af4:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80002af8:	00003797          	auipc	a5,0x3
    80002afc:	4587b783          	ld	a5,1112(a5) # 80005f50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b00:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80002b04:	00200713          	li	a4,2
    80002b08:	00e7ac23          	sw	a4,24(a5)
    PCB::dispatch();
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	9e8080e7          	jalr	-1560(ra) # 800014f4 <_ZN3PCB8dispatchEv>
}
    80002b14:	00813083          	ld	ra,8(sp)
    80002b18:	00013403          	ld	s0,0(sp)
    80002b1c:	01010113          	addi	sp,sp,16
    80002b20:	00008067          	ret

0000000080002b24 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80002b24:	00052783          	lw	a5,0(a0)
    80002b28:	fff7879b          	addiw	a5,a5,-1
    80002b2c:	00f52023          	sw	a5,0(a0)
    80002b30:	02079713          	slli	a4,a5,0x20
    80002b34:	00074463          	bltz	a4,80002b3c <_ZN10KSemaphore4waitEv+0x18>
    80002b38:	00008067          	ret
void KSemaphore::wait() {
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00113423          	sd	ra,8(sp)
    80002b44:	00813023          	sd	s0,0(sp)
    80002b48:	01010413          	addi	s0,sp,16
        block();
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	f9c080e7          	jalr	-100(ra) # 80002ae8 <_ZN10KSemaphore5blockEv>
}
    80002b54:	00813083          	ld	ra,8(sp)
    80002b58:	00013403          	ld	s0,0(sp)
    80002b5c:	01010113          	addi	sp,sp,16
    80002b60:	00008067          	ret

0000000080002b64 <_ZN10KSemaphore7unblockEv>:

//todo
void KSemaphore::unblock() {
    80002b64:	fe010113          	addi	sp,sp,-32
    80002b68:	00113c23          	sd	ra,24(sp)
    80002b6c:	00813823          	sd	s0,16(sp)
    80002b70:	00913423          	sd	s1,8(sp)
    80002b74:	01213023          	sd	s2,0(sp)
    80002b78:	02010413          	addi	s0,sp,32
    PCB* fr = queueBlocked.front();
    80002b7c:	00850913          	addi	s2,a0,8
    80002b80:	00090513          	mv	a0,s2
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	b34080e7          	jalr	-1228(ra) # 800016b8 <_ZN5Queue5frontEv>
    80002b8c:	00050493          	mv	s1,a0
    queueBlocked.pop();
    80002b90:	00090513          	mv	a0,s2
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	a54080e7          	jalr	-1452(ra) # 800015e8 <_ZN5Queue3popEv>
    if(fr != 0)
    80002b9c:	00048a63          	beqz	s1,80002bb0 <_ZN10KSemaphore7unblockEv+0x4c>
    80002ba0:	0004ac23          	sw	zero,24(s1)
    {
        fr->setState(PCB::READY);
        Scheduler::put(fr);
    80002ba4:	00048513          	mv	a0,s1
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	c1c080e7          	jalr	-996(ra) # 800017c4 <_ZN9Scheduler3putEP3PCB>
    }
}
    80002bb0:	01813083          	ld	ra,24(sp)
    80002bb4:	01013403          	ld	s0,16(sp)
    80002bb8:	00813483          	ld	s1,8(sp)
    80002bbc:	00013903          	ld	s2,0(sp)
    80002bc0:	02010113          	addi	sp,sp,32
    80002bc4:	00008067          	ret

0000000080002bc8 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80002bc8:	00052783          	lw	a5,0(a0)
    80002bcc:	0017879b          	addiw	a5,a5,1
    80002bd0:	0007871b          	sext.w	a4,a5
    80002bd4:	00f52023          	sw	a5,0(a0)
    80002bd8:	00e05863          	blez	a4,80002be8 <_ZN10KSemaphore6signalEv+0x20>
        val = beginVal;
    80002bdc:	00452783          	lw	a5,4(a0)
    80002be0:	00f52023          	sw	a5,0(a0)
    80002be4:	00008067          	ret
void KSemaphore::signal() {
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00113423          	sd	ra,8(sp)
    80002bf0:	00813023          	sd	s0,0(sp)
    80002bf4:	01010413          	addi	s0,sp,16
        unblock();
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	f6c080e7          	jalr	-148(ra) # 80002b64 <_ZN10KSemaphore7unblockEv>
}
    80002c00:	00813083          	ld	ra,8(sp)
    80002c04:	00013403          	ld	s0,0(sp)
    80002c08:	01010113          	addi	sp,sp,16
    80002c0c:	00008067          	ret

0000000080002c10 <start>:
    80002c10:	ff010113          	addi	sp,sp,-16
    80002c14:	00813423          	sd	s0,8(sp)
    80002c18:	01010413          	addi	s0,sp,16
    80002c1c:	300027f3          	csrr	a5,mstatus
    80002c20:	ffffe737          	lui	a4,0xffffe
    80002c24:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff75cf>
    80002c28:	00e7f7b3          	and	a5,a5,a4
    80002c2c:	00001737          	lui	a4,0x1
    80002c30:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002c34:	00e7e7b3          	or	a5,a5,a4
    80002c38:	30079073          	csrw	mstatus,a5
    80002c3c:	00000797          	auipc	a5,0x0
    80002c40:	16078793          	addi	a5,a5,352 # 80002d9c <system_main>
    80002c44:	34179073          	csrw	mepc,a5
    80002c48:	00000793          	li	a5,0
    80002c4c:	18079073          	csrw	satp,a5
    80002c50:	000107b7          	lui	a5,0x10
    80002c54:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c58:	30279073          	csrw	medeleg,a5
    80002c5c:	30379073          	csrw	mideleg,a5
    80002c60:	104027f3          	csrr	a5,sie
    80002c64:	2227e793          	ori	a5,a5,546
    80002c68:	10479073          	csrw	sie,a5
    80002c6c:	fff00793          	li	a5,-1
    80002c70:	00a7d793          	srli	a5,a5,0xa
    80002c74:	3b079073          	csrw	pmpaddr0,a5
    80002c78:	00f00793          	li	a5,15
    80002c7c:	3a079073          	csrw	pmpcfg0,a5
    80002c80:	f14027f3          	csrr	a5,mhartid
    80002c84:	0200c737          	lui	a4,0x200c
    80002c88:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c8c:	0007869b          	sext.w	a3,a5
    80002c90:	00269713          	slli	a4,a3,0x2
    80002c94:	000f4637          	lui	a2,0xf4
    80002c98:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c9c:	00d70733          	add	a4,a4,a3
    80002ca0:	0037979b          	slliw	a5,a5,0x3
    80002ca4:	020046b7          	lui	a3,0x2004
    80002ca8:	00d787b3          	add	a5,a5,a3
    80002cac:	00c585b3          	add	a1,a1,a2
    80002cb0:	00371693          	slli	a3,a4,0x3
    80002cb4:	00003717          	auipc	a4,0x3
    80002cb8:	31c70713          	addi	a4,a4,796 # 80005fd0 <timer_scratch>
    80002cbc:	00b7b023          	sd	a1,0(a5)
    80002cc0:	00d70733          	add	a4,a4,a3
    80002cc4:	00f73c23          	sd	a5,24(a4)
    80002cc8:	02c73023          	sd	a2,32(a4)
    80002ccc:	34071073          	csrw	mscratch,a4
    80002cd0:	00000797          	auipc	a5,0x0
    80002cd4:	6e078793          	addi	a5,a5,1760 # 800033b0 <timervec>
    80002cd8:	30579073          	csrw	mtvec,a5
    80002cdc:	300027f3          	csrr	a5,mstatus
    80002ce0:	0087e793          	ori	a5,a5,8
    80002ce4:	30079073          	csrw	mstatus,a5
    80002ce8:	304027f3          	csrr	a5,mie
    80002cec:	0807e793          	ori	a5,a5,128
    80002cf0:	30479073          	csrw	mie,a5
    80002cf4:	f14027f3          	csrr	a5,mhartid
    80002cf8:	0007879b          	sext.w	a5,a5
    80002cfc:	00078213          	mv	tp,a5
    80002d00:	30200073          	mret
    80002d04:	00813403          	ld	s0,8(sp)
    80002d08:	01010113          	addi	sp,sp,16
    80002d0c:	00008067          	ret

0000000080002d10 <timerinit>:
    80002d10:	ff010113          	addi	sp,sp,-16
    80002d14:	00813423          	sd	s0,8(sp)
    80002d18:	01010413          	addi	s0,sp,16
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
    80002d54:	28070713          	addi	a4,a4,640 # 80005fd0 <timer_scratch>
    80002d58:	00b7b023          	sd	a1,0(a5)
    80002d5c:	00d70733          	add	a4,a4,a3
    80002d60:	00f73c23          	sd	a5,24(a4)
    80002d64:	02c73023          	sd	a2,32(a4)
    80002d68:	34071073          	csrw	mscratch,a4
    80002d6c:	00000797          	auipc	a5,0x0
    80002d70:	64478793          	addi	a5,a5,1604 # 800033b0 <timervec>
    80002d74:	30579073          	csrw	mtvec,a5
    80002d78:	300027f3          	csrr	a5,mstatus
    80002d7c:	0087e793          	ori	a5,a5,8
    80002d80:	30079073          	csrw	mstatus,a5
    80002d84:	304027f3          	csrr	a5,mie
    80002d88:	0807e793          	ori	a5,a5,128
    80002d8c:	30479073          	csrw	mie,a5
    80002d90:	00813403          	ld	s0,8(sp)
    80002d94:	01010113          	addi	sp,sp,16
    80002d98:	00008067          	ret

0000000080002d9c <system_main>:
    80002d9c:	fe010113          	addi	sp,sp,-32
    80002da0:	00813823          	sd	s0,16(sp)
    80002da4:	00913423          	sd	s1,8(sp)
    80002da8:	00113c23          	sd	ra,24(sp)
    80002dac:	02010413          	addi	s0,sp,32
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	0c4080e7          	jalr	196(ra) # 80002e74 <cpuid>
    80002db8:	00003497          	auipc	s1,0x3
    80002dbc:	1b848493          	addi	s1,s1,440 # 80005f70 <started>
    80002dc0:	02050263          	beqz	a0,80002de4 <system_main+0x48>
    80002dc4:	0004a783          	lw	a5,0(s1)
    80002dc8:	0007879b          	sext.w	a5,a5
    80002dcc:	fe078ce3          	beqz	a5,80002dc4 <system_main+0x28>
    80002dd0:	0ff0000f          	fence
    80002dd4:	00002517          	auipc	a0,0x2
    80002dd8:	3cc50513          	addi	a0,a0,972 # 800051a0 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80002ddc:	00001097          	auipc	ra,0x1
    80002de0:	a70080e7          	jalr	-1424(ra) # 8000384c <panic>
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	9c4080e7          	jalr	-1596(ra) # 800037a8 <consoleinit>
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	150080e7          	jalr	336(ra) # 80003f3c <printfinit>
    80002df4:	00002517          	auipc	a0,0x2
    80002df8:	48c50513          	addi	a0,a0,1164 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	aac080e7          	jalr	-1364(ra) # 800038a8 <__printf>
    80002e04:	00002517          	auipc	a0,0x2
    80002e08:	36c50513          	addi	a0,a0,876 # 80005170 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	a9c080e7          	jalr	-1380(ra) # 800038a8 <__printf>
    80002e14:	00002517          	auipc	a0,0x2
    80002e18:	46c50513          	addi	a0,a0,1132 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80002e1c:	00001097          	auipc	ra,0x1
    80002e20:	a8c080e7          	jalr	-1396(ra) # 800038a8 <__printf>
    80002e24:	00001097          	auipc	ra,0x1
    80002e28:	4a4080e7          	jalr	1188(ra) # 800042c8 <kinit>
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	148080e7          	jalr	328(ra) # 80002f74 <trapinit>
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	16c080e7          	jalr	364(ra) # 80002fa0 <trapinithart>
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	5b4080e7          	jalr	1460(ra) # 800033f0 <plicinit>
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	5d4080e7          	jalr	1492(ra) # 80003418 <plicinithart>
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	078080e7          	jalr	120(ra) # 80002ec4 <userinit>
    80002e54:	0ff0000f          	fence
    80002e58:	00100793          	li	a5,1
    80002e5c:	00002517          	auipc	a0,0x2
    80002e60:	32c50513          	addi	a0,a0,812 # 80005188 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80002e64:	00f4a023          	sw	a5,0(s1)
    80002e68:	00001097          	auipc	ra,0x1
    80002e6c:	a40080e7          	jalr	-1472(ra) # 800038a8 <__printf>
    80002e70:	0000006f          	j	80002e70 <system_main+0xd4>

0000000080002e74 <cpuid>:
    80002e74:	ff010113          	addi	sp,sp,-16
    80002e78:	00813423          	sd	s0,8(sp)
    80002e7c:	01010413          	addi	s0,sp,16
    80002e80:	00020513          	mv	a0,tp
    80002e84:	00813403          	ld	s0,8(sp)
    80002e88:	0005051b          	sext.w	a0,a0
    80002e8c:	01010113          	addi	sp,sp,16
    80002e90:	00008067          	ret

0000000080002e94 <mycpu>:
    80002e94:	ff010113          	addi	sp,sp,-16
    80002e98:	00813423          	sd	s0,8(sp)
    80002e9c:	01010413          	addi	s0,sp,16
    80002ea0:	00020793          	mv	a5,tp
    80002ea4:	00813403          	ld	s0,8(sp)
    80002ea8:	0007879b          	sext.w	a5,a5
    80002eac:	00779793          	slli	a5,a5,0x7
    80002eb0:	00004517          	auipc	a0,0x4
    80002eb4:	15050513          	addi	a0,a0,336 # 80007000 <cpus>
    80002eb8:	00f50533          	add	a0,a0,a5
    80002ebc:	01010113          	addi	sp,sp,16
    80002ec0:	00008067          	ret

0000000080002ec4 <userinit>:
    80002ec4:	ff010113          	addi	sp,sp,-16
    80002ec8:	00813423          	sd	s0,8(sp)
    80002ecc:	01010413          	addi	s0,sp,16
    80002ed0:	00813403          	ld	s0,8(sp)
    80002ed4:	01010113          	addi	sp,sp,16
    80002ed8:	fffff317          	auipc	t1,0xfffff
    80002edc:	30c30067          	jr	780(t1) # 800021e4 <main>

0000000080002ee0 <either_copyout>:
    80002ee0:	ff010113          	addi	sp,sp,-16
    80002ee4:	00813023          	sd	s0,0(sp)
    80002ee8:	00113423          	sd	ra,8(sp)
    80002eec:	01010413          	addi	s0,sp,16
    80002ef0:	02051663          	bnez	a0,80002f1c <either_copyout+0x3c>
    80002ef4:	00058513          	mv	a0,a1
    80002ef8:	00060593          	mv	a1,a2
    80002efc:	0006861b          	sext.w	a2,a3
    80002f00:	00002097          	auipc	ra,0x2
    80002f04:	c54080e7          	jalr	-940(ra) # 80004b54 <__memmove>
    80002f08:	00813083          	ld	ra,8(sp)
    80002f0c:	00013403          	ld	s0,0(sp)
    80002f10:	00000513          	li	a0,0
    80002f14:	01010113          	addi	sp,sp,16
    80002f18:	00008067          	ret
    80002f1c:	00002517          	auipc	a0,0x2
    80002f20:	2ac50513          	addi	a0,a0,684 # 800051c8 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80002f24:	00001097          	auipc	ra,0x1
    80002f28:	928080e7          	jalr	-1752(ra) # 8000384c <panic>

0000000080002f2c <either_copyin>:
    80002f2c:	ff010113          	addi	sp,sp,-16
    80002f30:	00813023          	sd	s0,0(sp)
    80002f34:	00113423          	sd	ra,8(sp)
    80002f38:	01010413          	addi	s0,sp,16
    80002f3c:	02059463          	bnez	a1,80002f64 <either_copyin+0x38>
    80002f40:	00060593          	mv	a1,a2
    80002f44:	0006861b          	sext.w	a2,a3
    80002f48:	00002097          	auipc	ra,0x2
    80002f4c:	c0c080e7          	jalr	-1012(ra) # 80004b54 <__memmove>
    80002f50:	00813083          	ld	ra,8(sp)
    80002f54:	00013403          	ld	s0,0(sp)
    80002f58:	00000513          	li	a0,0
    80002f5c:	01010113          	addi	sp,sp,16
    80002f60:	00008067          	ret
    80002f64:	00002517          	auipc	a0,0x2
    80002f68:	28c50513          	addi	a0,a0,652 # 800051f0 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80002f6c:	00001097          	auipc	ra,0x1
    80002f70:	8e0080e7          	jalr	-1824(ra) # 8000384c <panic>

0000000080002f74 <trapinit>:
    80002f74:	ff010113          	addi	sp,sp,-16
    80002f78:	00813423          	sd	s0,8(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    80002f80:	00813403          	ld	s0,8(sp)
    80002f84:	00002597          	auipc	a1,0x2
    80002f88:	29458593          	addi	a1,a1,660 # 80005218 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80002f8c:	00004517          	auipc	a0,0x4
    80002f90:	0f450513          	addi	a0,a0,244 # 80007080 <tickslock>
    80002f94:	01010113          	addi	sp,sp,16
    80002f98:	00001317          	auipc	t1,0x1
    80002f9c:	5c030067          	jr	1472(t1) # 80004558 <initlock>

0000000080002fa0 <trapinithart>:
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00813423          	sd	s0,8(sp)
    80002fa8:	01010413          	addi	s0,sp,16
    80002fac:	00000797          	auipc	a5,0x0
    80002fb0:	2f478793          	addi	a5,a5,756 # 800032a0 <kernelvec>
    80002fb4:	10579073          	csrw	stvec,a5
    80002fb8:	00813403          	ld	s0,8(sp)
    80002fbc:	01010113          	addi	sp,sp,16
    80002fc0:	00008067          	ret

0000000080002fc4 <usertrap>:
    80002fc4:	ff010113          	addi	sp,sp,-16
    80002fc8:	00813423          	sd	s0,8(sp)
    80002fcc:	01010413          	addi	s0,sp,16
    80002fd0:	00813403          	ld	s0,8(sp)
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00008067          	ret

0000000080002fdc <usertrapret>:
    80002fdc:	ff010113          	addi	sp,sp,-16
    80002fe0:	00813423          	sd	s0,8(sp)
    80002fe4:	01010413          	addi	s0,sp,16
    80002fe8:	00813403          	ld	s0,8(sp)
    80002fec:	01010113          	addi	sp,sp,16
    80002ff0:	00008067          	ret

0000000080002ff4 <kerneltrap>:
    80002ff4:	fe010113          	addi	sp,sp,-32
    80002ff8:	00813823          	sd	s0,16(sp)
    80002ffc:	00113c23          	sd	ra,24(sp)
    80003000:	00913423          	sd	s1,8(sp)
    80003004:	02010413          	addi	s0,sp,32
    80003008:	142025f3          	csrr	a1,scause
    8000300c:	100027f3          	csrr	a5,sstatus
    80003010:	0027f793          	andi	a5,a5,2
    80003014:	10079c63          	bnez	a5,8000312c <kerneltrap+0x138>
    80003018:	142027f3          	csrr	a5,scause
    8000301c:	0207ce63          	bltz	a5,80003058 <kerneltrap+0x64>
    80003020:	00002517          	auipc	a0,0x2
    80003024:	24050513          	addi	a0,a0,576 # 80005260 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80003028:	00001097          	auipc	ra,0x1
    8000302c:	880080e7          	jalr	-1920(ra) # 800038a8 <__printf>
    80003030:	141025f3          	csrr	a1,sepc
    80003034:	14302673          	csrr	a2,stval
    80003038:	00002517          	auipc	a0,0x2
    8000303c:	23850513          	addi	a0,a0,568 # 80005270 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80003040:	00001097          	auipc	ra,0x1
    80003044:	868080e7          	jalr	-1944(ra) # 800038a8 <__printf>
    80003048:	00002517          	auipc	a0,0x2
    8000304c:	24050513          	addi	a0,a0,576 # 80005288 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80003050:	00000097          	auipc	ra,0x0
    80003054:	7fc080e7          	jalr	2044(ra) # 8000384c <panic>
    80003058:	0ff7f713          	andi	a4,a5,255
    8000305c:	00900693          	li	a3,9
    80003060:	04d70063          	beq	a4,a3,800030a0 <kerneltrap+0xac>
    80003064:	fff00713          	li	a4,-1
    80003068:	03f71713          	slli	a4,a4,0x3f
    8000306c:	00170713          	addi	a4,a4,1
    80003070:	fae798e3          	bne	a5,a4,80003020 <kerneltrap+0x2c>
    80003074:	00000097          	auipc	ra,0x0
    80003078:	e00080e7          	jalr	-512(ra) # 80002e74 <cpuid>
    8000307c:	06050663          	beqz	a0,800030e8 <kerneltrap+0xf4>
    80003080:	144027f3          	csrr	a5,sip
    80003084:	ffd7f793          	andi	a5,a5,-3
    80003088:	14479073          	csrw	sip,a5
    8000308c:	01813083          	ld	ra,24(sp)
    80003090:	01013403          	ld	s0,16(sp)
    80003094:	00813483          	ld	s1,8(sp)
    80003098:	02010113          	addi	sp,sp,32
    8000309c:	00008067          	ret
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	3c4080e7          	jalr	964(ra) # 80003464 <plic_claim>
    800030a8:	00a00793          	li	a5,10
    800030ac:	00050493          	mv	s1,a0
    800030b0:	06f50863          	beq	a0,a5,80003120 <kerneltrap+0x12c>
    800030b4:	fc050ce3          	beqz	a0,8000308c <kerneltrap+0x98>
    800030b8:	00050593          	mv	a1,a0
    800030bc:	00002517          	auipc	a0,0x2
    800030c0:	18450513          	addi	a0,a0,388 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	7e4080e7          	jalr	2020(ra) # 800038a8 <__printf>
    800030cc:	01013403          	ld	s0,16(sp)
    800030d0:	01813083          	ld	ra,24(sp)
    800030d4:	00048513          	mv	a0,s1
    800030d8:	00813483          	ld	s1,8(sp)
    800030dc:	02010113          	addi	sp,sp,32
    800030e0:	00000317          	auipc	t1,0x0
    800030e4:	3bc30067          	jr	956(t1) # 8000349c <plic_complete>
    800030e8:	00004517          	auipc	a0,0x4
    800030ec:	f9850513          	addi	a0,a0,-104 # 80007080 <tickslock>
    800030f0:	00001097          	auipc	ra,0x1
    800030f4:	48c080e7          	jalr	1164(ra) # 8000457c <acquire>
    800030f8:	00003717          	auipc	a4,0x3
    800030fc:	e7c70713          	addi	a4,a4,-388 # 80005f74 <ticks>
    80003100:	00072783          	lw	a5,0(a4)
    80003104:	00004517          	auipc	a0,0x4
    80003108:	f7c50513          	addi	a0,a0,-132 # 80007080 <tickslock>
    8000310c:	0017879b          	addiw	a5,a5,1
    80003110:	00f72023          	sw	a5,0(a4)
    80003114:	00001097          	auipc	ra,0x1
    80003118:	534080e7          	jalr	1332(ra) # 80004648 <release>
    8000311c:	f65ff06f          	j	80003080 <kerneltrap+0x8c>
    80003120:	00001097          	auipc	ra,0x1
    80003124:	090080e7          	jalr	144(ra) # 800041b0 <uartintr>
    80003128:	fa5ff06f          	j	800030cc <kerneltrap+0xd8>
    8000312c:	00002517          	auipc	a0,0x2
    80003130:	0f450513          	addi	a0,a0,244 # 80005220 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80003134:	00000097          	auipc	ra,0x0
    80003138:	718080e7          	jalr	1816(ra) # 8000384c <panic>

000000008000313c <clockintr>:
    8000313c:	fe010113          	addi	sp,sp,-32
    80003140:	00813823          	sd	s0,16(sp)
    80003144:	00913423          	sd	s1,8(sp)
    80003148:	00113c23          	sd	ra,24(sp)
    8000314c:	02010413          	addi	s0,sp,32
    80003150:	00004497          	auipc	s1,0x4
    80003154:	f3048493          	addi	s1,s1,-208 # 80007080 <tickslock>
    80003158:	00048513          	mv	a0,s1
    8000315c:	00001097          	auipc	ra,0x1
    80003160:	420080e7          	jalr	1056(ra) # 8000457c <acquire>
    80003164:	00003717          	auipc	a4,0x3
    80003168:	e1070713          	addi	a4,a4,-496 # 80005f74 <ticks>
    8000316c:	00072783          	lw	a5,0(a4)
    80003170:	01013403          	ld	s0,16(sp)
    80003174:	01813083          	ld	ra,24(sp)
    80003178:	00048513          	mv	a0,s1
    8000317c:	0017879b          	addiw	a5,a5,1
    80003180:	00813483          	ld	s1,8(sp)
    80003184:	00f72023          	sw	a5,0(a4)
    80003188:	02010113          	addi	sp,sp,32
    8000318c:	00001317          	auipc	t1,0x1
    80003190:	4bc30067          	jr	1212(t1) # 80004648 <release>

0000000080003194 <devintr>:
    80003194:	142027f3          	csrr	a5,scause
    80003198:	00000513          	li	a0,0
    8000319c:	0007c463          	bltz	a5,800031a4 <devintr+0x10>
    800031a0:	00008067          	ret
    800031a4:	fe010113          	addi	sp,sp,-32
    800031a8:	00813823          	sd	s0,16(sp)
    800031ac:	00113c23          	sd	ra,24(sp)
    800031b0:	00913423          	sd	s1,8(sp)
    800031b4:	02010413          	addi	s0,sp,32
    800031b8:	0ff7f713          	andi	a4,a5,255
    800031bc:	00900693          	li	a3,9
    800031c0:	04d70c63          	beq	a4,a3,80003218 <devintr+0x84>
    800031c4:	fff00713          	li	a4,-1
    800031c8:	03f71713          	slli	a4,a4,0x3f
    800031cc:	00170713          	addi	a4,a4,1
    800031d0:	00e78c63          	beq	a5,a4,800031e8 <devintr+0x54>
    800031d4:	01813083          	ld	ra,24(sp)
    800031d8:	01013403          	ld	s0,16(sp)
    800031dc:	00813483          	ld	s1,8(sp)
    800031e0:	02010113          	addi	sp,sp,32
    800031e4:	00008067          	ret
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	c8c080e7          	jalr	-884(ra) # 80002e74 <cpuid>
    800031f0:	06050663          	beqz	a0,8000325c <devintr+0xc8>
    800031f4:	144027f3          	csrr	a5,sip
    800031f8:	ffd7f793          	andi	a5,a5,-3
    800031fc:	14479073          	csrw	sip,a5
    80003200:	01813083          	ld	ra,24(sp)
    80003204:	01013403          	ld	s0,16(sp)
    80003208:	00813483          	ld	s1,8(sp)
    8000320c:	00200513          	li	a0,2
    80003210:	02010113          	addi	sp,sp,32
    80003214:	00008067          	ret
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	24c080e7          	jalr	588(ra) # 80003464 <plic_claim>
    80003220:	00a00793          	li	a5,10
    80003224:	00050493          	mv	s1,a0
    80003228:	06f50663          	beq	a0,a5,80003294 <devintr+0x100>
    8000322c:	00100513          	li	a0,1
    80003230:	fa0482e3          	beqz	s1,800031d4 <devintr+0x40>
    80003234:	00048593          	mv	a1,s1
    80003238:	00002517          	auipc	a0,0x2
    8000323c:	00850513          	addi	a0,a0,8 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003240:	00000097          	auipc	ra,0x0
    80003244:	668080e7          	jalr	1640(ra) # 800038a8 <__printf>
    80003248:	00048513          	mv	a0,s1
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	250080e7          	jalr	592(ra) # 8000349c <plic_complete>
    80003254:	00100513          	li	a0,1
    80003258:	f7dff06f          	j	800031d4 <devintr+0x40>
    8000325c:	00004517          	auipc	a0,0x4
    80003260:	e2450513          	addi	a0,a0,-476 # 80007080 <tickslock>
    80003264:	00001097          	auipc	ra,0x1
    80003268:	318080e7          	jalr	792(ra) # 8000457c <acquire>
    8000326c:	00003717          	auipc	a4,0x3
    80003270:	d0870713          	addi	a4,a4,-760 # 80005f74 <ticks>
    80003274:	00072783          	lw	a5,0(a4)
    80003278:	00004517          	auipc	a0,0x4
    8000327c:	e0850513          	addi	a0,a0,-504 # 80007080 <tickslock>
    80003280:	0017879b          	addiw	a5,a5,1
    80003284:	00f72023          	sw	a5,0(a4)
    80003288:	00001097          	auipc	ra,0x1
    8000328c:	3c0080e7          	jalr	960(ra) # 80004648 <release>
    80003290:	f65ff06f          	j	800031f4 <devintr+0x60>
    80003294:	00001097          	auipc	ra,0x1
    80003298:	f1c080e7          	jalr	-228(ra) # 800041b0 <uartintr>
    8000329c:	fadff06f          	j	80003248 <devintr+0xb4>

00000000800032a0 <kernelvec>:
    800032a0:	f0010113          	addi	sp,sp,-256
    800032a4:	00113023          	sd	ra,0(sp)
    800032a8:	00213423          	sd	sp,8(sp)
    800032ac:	00313823          	sd	gp,16(sp)
    800032b0:	00413c23          	sd	tp,24(sp)
    800032b4:	02513023          	sd	t0,32(sp)
    800032b8:	02613423          	sd	t1,40(sp)
    800032bc:	02713823          	sd	t2,48(sp)
    800032c0:	02813c23          	sd	s0,56(sp)
    800032c4:	04913023          	sd	s1,64(sp)
    800032c8:	04a13423          	sd	a0,72(sp)
    800032cc:	04b13823          	sd	a1,80(sp)
    800032d0:	04c13c23          	sd	a2,88(sp)
    800032d4:	06d13023          	sd	a3,96(sp)
    800032d8:	06e13423          	sd	a4,104(sp)
    800032dc:	06f13823          	sd	a5,112(sp)
    800032e0:	07013c23          	sd	a6,120(sp)
    800032e4:	09113023          	sd	a7,128(sp)
    800032e8:	09213423          	sd	s2,136(sp)
    800032ec:	09313823          	sd	s3,144(sp)
    800032f0:	09413c23          	sd	s4,152(sp)
    800032f4:	0b513023          	sd	s5,160(sp)
    800032f8:	0b613423          	sd	s6,168(sp)
    800032fc:	0b713823          	sd	s7,176(sp)
    80003300:	0b813c23          	sd	s8,184(sp)
    80003304:	0d913023          	sd	s9,192(sp)
    80003308:	0da13423          	sd	s10,200(sp)
    8000330c:	0db13823          	sd	s11,208(sp)
    80003310:	0dc13c23          	sd	t3,216(sp)
    80003314:	0fd13023          	sd	t4,224(sp)
    80003318:	0fe13423          	sd	t5,232(sp)
    8000331c:	0ff13823          	sd	t6,240(sp)
    80003320:	cd5ff0ef          	jal	ra,80002ff4 <kerneltrap>
    80003324:	00013083          	ld	ra,0(sp)
    80003328:	00813103          	ld	sp,8(sp)
    8000332c:	01013183          	ld	gp,16(sp)
    80003330:	02013283          	ld	t0,32(sp)
    80003334:	02813303          	ld	t1,40(sp)
    80003338:	03013383          	ld	t2,48(sp)
    8000333c:	03813403          	ld	s0,56(sp)
    80003340:	04013483          	ld	s1,64(sp)
    80003344:	04813503          	ld	a0,72(sp)
    80003348:	05013583          	ld	a1,80(sp)
    8000334c:	05813603          	ld	a2,88(sp)
    80003350:	06013683          	ld	a3,96(sp)
    80003354:	06813703          	ld	a4,104(sp)
    80003358:	07013783          	ld	a5,112(sp)
    8000335c:	07813803          	ld	a6,120(sp)
    80003360:	08013883          	ld	a7,128(sp)
    80003364:	08813903          	ld	s2,136(sp)
    80003368:	09013983          	ld	s3,144(sp)
    8000336c:	09813a03          	ld	s4,152(sp)
    80003370:	0a013a83          	ld	s5,160(sp)
    80003374:	0a813b03          	ld	s6,168(sp)
    80003378:	0b013b83          	ld	s7,176(sp)
    8000337c:	0b813c03          	ld	s8,184(sp)
    80003380:	0c013c83          	ld	s9,192(sp)
    80003384:	0c813d03          	ld	s10,200(sp)
    80003388:	0d013d83          	ld	s11,208(sp)
    8000338c:	0d813e03          	ld	t3,216(sp)
    80003390:	0e013e83          	ld	t4,224(sp)
    80003394:	0e813f03          	ld	t5,232(sp)
    80003398:	0f013f83          	ld	t6,240(sp)
    8000339c:	10010113          	addi	sp,sp,256
    800033a0:	10200073          	sret
    800033a4:	00000013          	nop
    800033a8:	00000013          	nop
    800033ac:	00000013          	nop

00000000800033b0 <timervec>:
    800033b0:	34051573          	csrrw	a0,mscratch,a0
    800033b4:	00b53023          	sd	a1,0(a0)
    800033b8:	00c53423          	sd	a2,8(a0)
    800033bc:	00d53823          	sd	a3,16(a0)
    800033c0:	01853583          	ld	a1,24(a0)
    800033c4:	02053603          	ld	a2,32(a0)
    800033c8:	0005b683          	ld	a3,0(a1)
    800033cc:	00c686b3          	add	a3,a3,a2
    800033d0:	00d5b023          	sd	a3,0(a1)
    800033d4:	00200593          	li	a1,2
    800033d8:	14459073          	csrw	sip,a1
    800033dc:	01053683          	ld	a3,16(a0)
    800033e0:	00853603          	ld	a2,8(a0)
    800033e4:	00053583          	ld	a1,0(a0)
    800033e8:	34051573          	csrrw	a0,mscratch,a0
    800033ec:	30200073          	mret

00000000800033f0 <plicinit>:
    800033f0:	ff010113          	addi	sp,sp,-16
    800033f4:	00813423          	sd	s0,8(sp)
    800033f8:	01010413          	addi	s0,sp,16
    800033fc:	00813403          	ld	s0,8(sp)
    80003400:	0c0007b7          	lui	a5,0xc000
    80003404:	00100713          	li	a4,1
    80003408:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000340c:	00e7a223          	sw	a4,4(a5)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret

0000000080003418 <plicinithart>:
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00813023          	sd	s0,0(sp)
    80003420:	00113423          	sd	ra,8(sp)
    80003424:	01010413          	addi	s0,sp,16
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	a4c080e7          	jalr	-1460(ra) # 80002e74 <cpuid>
    80003430:	0085171b          	slliw	a4,a0,0x8
    80003434:	0c0027b7          	lui	a5,0xc002
    80003438:	00e787b3          	add	a5,a5,a4
    8000343c:	40200713          	li	a4,1026
    80003440:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003444:	00813083          	ld	ra,8(sp)
    80003448:	00013403          	ld	s0,0(sp)
    8000344c:	00d5151b          	slliw	a0,a0,0xd
    80003450:	0c2017b7          	lui	a5,0xc201
    80003454:	00a78533          	add	a0,a5,a0
    80003458:	00052023          	sw	zero,0(a0)
    8000345c:	01010113          	addi	sp,sp,16
    80003460:	00008067          	ret

0000000080003464 <plic_claim>:
    80003464:	ff010113          	addi	sp,sp,-16
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	00113423          	sd	ra,8(sp)
    80003470:	01010413          	addi	s0,sp,16
    80003474:	00000097          	auipc	ra,0x0
    80003478:	a00080e7          	jalr	-1536(ra) # 80002e74 <cpuid>
    8000347c:	00813083          	ld	ra,8(sp)
    80003480:	00013403          	ld	s0,0(sp)
    80003484:	00d5151b          	slliw	a0,a0,0xd
    80003488:	0c2017b7          	lui	a5,0xc201
    8000348c:	00a78533          	add	a0,a5,a0
    80003490:	00452503          	lw	a0,4(a0)
    80003494:	01010113          	addi	sp,sp,16
    80003498:	00008067          	ret

000000008000349c <plic_complete>:
    8000349c:	fe010113          	addi	sp,sp,-32
    800034a0:	00813823          	sd	s0,16(sp)
    800034a4:	00913423          	sd	s1,8(sp)
    800034a8:	00113c23          	sd	ra,24(sp)
    800034ac:	02010413          	addi	s0,sp,32
    800034b0:	00050493          	mv	s1,a0
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	9c0080e7          	jalr	-1600(ra) # 80002e74 <cpuid>
    800034bc:	01813083          	ld	ra,24(sp)
    800034c0:	01013403          	ld	s0,16(sp)
    800034c4:	00d5179b          	slliw	a5,a0,0xd
    800034c8:	0c201737          	lui	a4,0xc201
    800034cc:	00f707b3          	add	a5,a4,a5
    800034d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800034d4:	00813483          	ld	s1,8(sp)
    800034d8:	02010113          	addi	sp,sp,32
    800034dc:	00008067          	ret

00000000800034e0 <consolewrite>:
    800034e0:	fb010113          	addi	sp,sp,-80
    800034e4:	04813023          	sd	s0,64(sp)
    800034e8:	04113423          	sd	ra,72(sp)
    800034ec:	02913c23          	sd	s1,56(sp)
    800034f0:	03213823          	sd	s2,48(sp)
    800034f4:	03313423          	sd	s3,40(sp)
    800034f8:	03413023          	sd	s4,32(sp)
    800034fc:	01513c23          	sd	s5,24(sp)
    80003500:	05010413          	addi	s0,sp,80
    80003504:	06c05c63          	blez	a2,8000357c <consolewrite+0x9c>
    80003508:	00060993          	mv	s3,a2
    8000350c:	00050a13          	mv	s4,a0
    80003510:	00058493          	mv	s1,a1
    80003514:	00000913          	li	s2,0
    80003518:	fff00a93          	li	s5,-1
    8000351c:	01c0006f          	j	80003538 <consolewrite+0x58>
    80003520:	fbf44503          	lbu	a0,-65(s0)
    80003524:	0019091b          	addiw	s2,s2,1
    80003528:	00148493          	addi	s1,s1,1
    8000352c:	00001097          	auipc	ra,0x1
    80003530:	a9c080e7          	jalr	-1380(ra) # 80003fc8 <uartputc>
    80003534:	03298063          	beq	s3,s2,80003554 <consolewrite+0x74>
    80003538:	00048613          	mv	a2,s1
    8000353c:	00100693          	li	a3,1
    80003540:	000a0593          	mv	a1,s4
    80003544:	fbf40513          	addi	a0,s0,-65
    80003548:	00000097          	auipc	ra,0x0
    8000354c:	9e4080e7          	jalr	-1564(ra) # 80002f2c <either_copyin>
    80003550:	fd5518e3          	bne	a0,s5,80003520 <consolewrite+0x40>
    80003554:	04813083          	ld	ra,72(sp)
    80003558:	04013403          	ld	s0,64(sp)
    8000355c:	03813483          	ld	s1,56(sp)
    80003560:	02813983          	ld	s3,40(sp)
    80003564:	02013a03          	ld	s4,32(sp)
    80003568:	01813a83          	ld	s5,24(sp)
    8000356c:	00090513          	mv	a0,s2
    80003570:	03013903          	ld	s2,48(sp)
    80003574:	05010113          	addi	sp,sp,80
    80003578:	00008067          	ret
    8000357c:	00000913          	li	s2,0
    80003580:	fd5ff06f          	j	80003554 <consolewrite+0x74>

0000000080003584 <consoleread>:
    80003584:	f9010113          	addi	sp,sp,-112
    80003588:	06813023          	sd	s0,96(sp)
    8000358c:	04913c23          	sd	s1,88(sp)
    80003590:	05213823          	sd	s2,80(sp)
    80003594:	05313423          	sd	s3,72(sp)
    80003598:	05413023          	sd	s4,64(sp)
    8000359c:	03513c23          	sd	s5,56(sp)
    800035a0:	03613823          	sd	s6,48(sp)
    800035a4:	03713423          	sd	s7,40(sp)
    800035a8:	03813023          	sd	s8,32(sp)
    800035ac:	06113423          	sd	ra,104(sp)
    800035b0:	01913c23          	sd	s9,24(sp)
    800035b4:	07010413          	addi	s0,sp,112
    800035b8:	00060b93          	mv	s7,a2
    800035bc:	00050913          	mv	s2,a0
    800035c0:	00058c13          	mv	s8,a1
    800035c4:	00060b1b          	sext.w	s6,a2
    800035c8:	00004497          	auipc	s1,0x4
    800035cc:	ae048493          	addi	s1,s1,-1312 # 800070a8 <cons>
    800035d0:	00400993          	li	s3,4
    800035d4:	fff00a13          	li	s4,-1
    800035d8:	00a00a93          	li	s5,10
    800035dc:	05705e63          	blez	s7,80003638 <consoleread+0xb4>
    800035e0:	09c4a703          	lw	a4,156(s1)
    800035e4:	0984a783          	lw	a5,152(s1)
    800035e8:	0007071b          	sext.w	a4,a4
    800035ec:	08e78463          	beq	a5,a4,80003674 <consoleread+0xf0>
    800035f0:	07f7f713          	andi	a4,a5,127
    800035f4:	00e48733          	add	a4,s1,a4
    800035f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800035fc:	0017869b          	addiw	a3,a5,1
    80003600:	08d4ac23          	sw	a3,152(s1)
    80003604:	00070c9b          	sext.w	s9,a4
    80003608:	0b370663          	beq	a4,s3,800036b4 <consoleread+0x130>
    8000360c:	00100693          	li	a3,1
    80003610:	f9f40613          	addi	a2,s0,-97
    80003614:	000c0593          	mv	a1,s8
    80003618:	00090513          	mv	a0,s2
    8000361c:	f8e40fa3          	sb	a4,-97(s0)
    80003620:	00000097          	auipc	ra,0x0
    80003624:	8c0080e7          	jalr	-1856(ra) # 80002ee0 <either_copyout>
    80003628:	01450863          	beq	a0,s4,80003638 <consoleread+0xb4>
    8000362c:	001c0c13          	addi	s8,s8,1
    80003630:	fffb8b9b          	addiw	s7,s7,-1
    80003634:	fb5c94e3          	bne	s9,s5,800035dc <consoleread+0x58>
    80003638:	000b851b          	sext.w	a0,s7
    8000363c:	06813083          	ld	ra,104(sp)
    80003640:	06013403          	ld	s0,96(sp)
    80003644:	05813483          	ld	s1,88(sp)
    80003648:	05013903          	ld	s2,80(sp)
    8000364c:	04813983          	ld	s3,72(sp)
    80003650:	04013a03          	ld	s4,64(sp)
    80003654:	03813a83          	ld	s5,56(sp)
    80003658:	02813b83          	ld	s7,40(sp)
    8000365c:	02013c03          	ld	s8,32(sp)
    80003660:	01813c83          	ld	s9,24(sp)
    80003664:	40ab053b          	subw	a0,s6,a0
    80003668:	03013b03          	ld	s6,48(sp)
    8000366c:	07010113          	addi	sp,sp,112
    80003670:	00008067          	ret
    80003674:	00001097          	auipc	ra,0x1
    80003678:	1d8080e7          	jalr	472(ra) # 8000484c <push_on>
    8000367c:	0984a703          	lw	a4,152(s1)
    80003680:	09c4a783          	lw	a5,156(s1)
    80003684:	0007879b          	sext.w	a5,a5
    80003688:	fef70ce3          	beq	a4,a5,80003680 <consoleread+0xfc>
    8000368c:	00001097          	auipc	ra,0x1
    80003690:	234080e7          	jalr	564(ra) # 800048c0 <pop_on>
    80003694:	0984a783          	lw	a5,152(s1)
    80003698:	07f7f713          	andi	a4,a5,127
    8000369c:	00e48733          	add	a4,s1,a4
    800036a0:	01874703          	lbu	a4,24(a4)
    800036a4:	0017869b          	addiw	a3,a5,1
    800036a8:	08d4ac23          	sw	a3,152(s1)
    800036ac:	00070c9b          	sext.w	s9,a4
    800036b0:	f5371ee3          	bne	a4,s3,8000360c <consoleread+0x88>
    800036b4:	000b851b          	sext.w	a0,s7
    800036b8:	f96bf2e3          	bgeu	s7,s6,8000363c <consoleread+0xb8>
    800036bc:	08f4ac23          	sw	a5,152(s1)
    800036c0:	f7dff06f          	j	8000363c <consoleread+0xb8>

00000000800036c4 <consputc>:
    800036c4:	10000793          	li	a5,256
    800036c8:	00f50663          	beq	a0,a5,800036d4 <consputc+0x10>
    800036cc:	00001317          	auipc	t1,0x1
    800036d0:	9f430067          	jr	-1548(t1) # 800040c0 <uartputc_sync>
    800036d4:	ff010113          	addi	sp,sp,-16
    800036d8:	00113423          	sd	ra,8(sp)
    800036dc:	00813023          	sd	s0,0(sp)
    800036e0:	01010413          	addi	s0,sp,16
    800036e4:	00800513          	li	a0,8
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	9d8080e7          	jalr	-1576(ra) # 800040c0 <uartputc_sync>
    800036f0:	02000513          	li	a0,32
    800036f4:	00001097          	auipc	ra,0x1
    800036f8:	9cc080e7          	jalr	-1588(ra) # 800040c0 <uartputc_sync>
    800036fc:	00013403          	ld	s0,0(sp)
    80003700:	00813083          	ld	ra,8(sp)
    80003704:	00800513          	li	a0,8
    80003708:	01010113          	addi	sp,sp,16
    8000370c:	00001317          	auipc	t1,0x1
    80003710:	9b430067          	jr	-1612(t1) # 800040c0 <uartputc_sync>

0000000080003714 <consoleintr>:
    80003714:	fe010113          	addi	sp,sp,-32
    80003718:	00813823          	sd	s0,16(sp)
    8000371c:	00913423          	sd	s1,8(sp)
    80003720:	01213023          	sd	s2,0(sp)
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	02010413          	addi	s0,sp,32
    8000372c:	00004917          	auipc	s2,0x4
    80003730:	97c90913          	addi	s2,s2,-1668 # 800070a8 <cons>
    80003734:	00050493          	mv	s1,a0
    80003738:	00090513          	mv	a0,s2
    8000373c:	00001097          	auipc	ra,0x1
    80003740:	e40080e7          	jalr	-448(ra) # 8000457c <acquire>
    80003744:	02048c63          	beqz	s1,8000377c <consoleintr+0x68>
    80003748:	0a092783          	lw	a5,160(s2)
    8000374c:	09892703          	lw	a4,152(s2)
    80003750:	07f00693          	li	a3,127
    80003754:	40e7873b          	subw	a4,a5,a4
    80003758:	02e6e263          	bltu	a3,a4,8000377c <consoleintr+0x68>
    8000375c:	00d00713          	li	a4,13
    80003760:	04e48063          	beq	s1,a4,800037a0 <consoleintr+0x8c>
    80003764:	07f7f713          	andi	a4,a5,127
    80003768:	00e90733          	add	a4,s2,a4
    8000376c:	0017879b          	addiw	a5,a5,1
    80003770:	0af92023          	sw	a5,160(s2)
    80003774:	00970c23          	sb	s1,24(a4)
    80003778:	08f92e23          	sw	a5,156(s2)
    8000377c:	01013403          	ld	s0,16(sp)
    80003780:	01813083          	ld	ra,24(sp)
    80003784:	00813483          	ld	s1,8(sp)
    80003788:	00013903          	ld	s2,0(sp)
    8000378c:	00004517          	auipc	a0,0x4
    80003790:	91c50513          	addi	a0,a0,-1764 # 800070a8 <cons>
    80003794:	02010113          	addi	sp,sp,32
    80003798:	00001317          	auipc	t1,0x1
    8000379c:	eb030067          	jr	-336(t1) # 80004648 <release>
    800037a0:	00a00493          	li	s1,10
    800037a4:	fc1ff06f          	j	80003764 <consoleintr+0x50>

00000000800037a8 <consoleinit>:
    800037a8:	fe010113          	addi	sp,sp,-32
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	02010413          	addi	s0,sp,32
    800037bc:	00004497          	auipc	s1,0x4
    800037c0:	8ec48493          	addi	s1,s1,-1812 # 800070a8 <cons>
    800037c4:	00048513          	mv	a0,s1
    800037c8:	00002597          	auipc	a1,0x2
    800037cc:	ad058593          	addi	a1,a1,-1328 # 80005298 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800037d0:	00001097          	auipc	ra,0x1
    800037d4:	d88080e7          	jalr	-632(ra) # 80004558 <initlock>
    800037d8:	00000097          	auipc	ra,0x0
    800037dc:	7ac080e7          	jalr	1964(ra) # 80003f84 <uartinit>
    800037e0:	01813083          	ld	ra,24(sp)
    800037e4:	01013403          	ld	s0,16(sp)
    800037e8:	00000797          	auipc	a5,0x0
    800037ec:	d9c78793          	addi	a5,a5,-612 # 80003584 <consoleread>
    800037f0:	0af4bc23          	sd	a5,184(s1)
    800037f4:	00000797          	auipc	a5,0x0
    800037f8:	cec78793          	addi	a5,a5,-788 # 800034e0 <consolewrite>
    800037fc:	0cf4b023          	sd	a5,192(s1)
    80003800:	00813483          	ld	s1,8(sp)
    80003804:	02010113          	addi	sp,sp,32
    80003808:	00008067          	ret

000000008000380c <console_read>:
    8000380c:	ff010113          	addi	sp,sp,-16
    80003810:	00813423          	sd	s0,8(sp)
    80003814:	01010413          	addi	s0,sp,16
    80003818:	00813403          	ld	s0,8(sp)
    8000381c:	00004317          	auipc	t1,0x4
    80003820:	94433303          	ld	t1,-1724(t1) # 80007160 <devsw+0x10>
    80003824:	01010113          	addi	sp,sp,16
    80003828:	00030067          	jr	t1

000000008000382c <console_write>:
    8000382c:	ff010113          	addi	sp,sp,-16
    80003830:	00813423          	sd	s0,8(sp)
    80003834:	01010413          	addi	s0,sp,16
    80003838:	00813403          	ld	s0,8(sp)
    8000383c:	00004317          	auipc	t1,0x4
    80003840:	92c33303          	ld	t1,-1748(t1) # 80007168 <devsw+0x18>
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00030067          	jr	t1

000000008000384c <panic>:
    8000384c:	fe010113          	addi	sp,sp,-32
    80003850:	00113c23          	sd	ra,24(sp)
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	02010413          	addi	s0,sp,32
    80003860:	00050493          	mv	s1,a0
    80003864:	00002517          	auipc	a0,0x2
    80003868:	a3c50513          	addi	a0,a0,-1476 # 800052a0 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    8000386c:	00004797          	auipc	a5,0x4
    80003870:	9807ae23          	sw	zero,-1636(a5) # 80007208 <pr+0x18>
    80003874:	00000097          	auipc	ra,0x0
    80003878:	034080e7          	jalr	52(ra) # 800038a8 <__printf>
    8000387c:	00048513          	mv	a0,s1
    80003880:	00000097          	auipc	ra,0x0
    80003884:	028080e7          	jalr	40(ra) # 800038a8 <__printf>
    80003888:	00002517          	auipc	a0,0x2
    8000388c:	9f850513          	addi	a0,a0,-1544 # 80005280 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003890:	00000097          	auipc	ra,0x0
    80003894:	018080e7          	jalr	24(ra) # 800038a8 <__printf>
    80003898:	00100793          	li	a5,1
    8000389c:	00002717          	auipc	a4,0x2
    800038a0:	6cf72e23          	sw	a5,1756(a4) # 80005f78 <panicked>
    800038a4:	0000006f          	j	800038a4 <panic+0x58>

00000000800038a8 <__printf>:
    800038a8:	f3010113          	addi	sp,sp,-208
    800038ac:	08813023          	sd	s0,128(sp)
    800038b0:	07313423          	sd	s3,104(sp)
    800038b4:	09010413          	addi	s0,sp,144
    800038b8:	05813023          	sd	s8,64(sp)
    800038bc:	08113423          	sd	ra,136(sp)
    800038c0:	06913c23          	sd	s1,120(sp)
    800038c4:	07213823          	sd	s2,112(sp)
    800038c8:	07413023          	sd	s4,96(sp)
    800038cc:	05513c23          	sd	s5,88(sp)
    800038d0:	05613823          	sd	s6,80(sp)
    800038d4:	05713423          	sd	s7,72(sp)
    800038d8:	03913c23          	sd	s9,56(sp)
    800038dc:	03a13823          	sd	s10,48(sp)
    800038e0:	03b13423          	sd	s11,40(sp)
    800038e4:	00004317          	auipc	t1,0x4
    800038e8:	90c30313          	addi	t1,t1,-1780 # 800071f0 <pr>
    800038ec:	01832c03          	lw	s8,24(t1)
    800038f0:	00b43423          	sd	a1,8(s0)
    800038f4:	00c43823          	sd	a2,16(s0)
    800038f8:	00d43c23          	sd	a3,24(s0)
    800038fc:	02e43023          	sd	a4,32(s0)
    80003900:	02f43423          	sd	a5,40(s0)
    80003904:	03043823          	sd	a6,48(s0)
    80003908:	03143c23          	sd	a7,56(s0)
    8000390c:	00050993          	mv	s3,a0
    80003910:	4a0c1663          	bnez	s8,80003dbc <__printf+0x514>
    80003914:	60098c63          	beqz	s3,80003f2c <__printf+0x684>
    80003918:	0009c503          	lbu	a0,0(s3)
    8000391c:	00840793          	addi	a5,s0,8
    80003920:	f6f43c23          	sd	a5,-136(s0)
    80003924:	00000493          	li	s1,0
    80003928:	22050063          	beqz	a0,80003b48 <__printf+0x2a0>
    8000392c:	00002a37          	lui	s4,0x2
    80003930:	00018ab7          	lui	s5,0x18
    80003934:	000f4b37          	lui	s6,0xf4
    80003938:	00989bb7          	lui	s7,0x989
    8000393c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003940:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003944:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003948:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000394c:	00148c9b          	addiw	s9,s1,1
    80003950:	02500793          	li	a5,37
    80003954:	01998933          	add	s2,s3,s9
    80003958:	38f51263          	bne	a0,a5,80003cdc <__printf+0x434>
    8000395c:	00094783          	lbu	a5,0(s2)
    80003960:	00078c9b          	sext.w	s9,a5
    80003964:	1e078263          	beqz	a5,80003b48 <__printf+0x2a0>
    80003968:	0024849b          	addiw	s1,s1,2
    8000396c:	07000713          	li	a4,112
    80003970:	00998933          	add	s2,s3,s1
    80003974:	38e78a63          	beq	a5,a4,80003d08 <__printf+0x460>
    80003978:	20f76863          	bltu	a4,a5,80003b88 <__printf+0x2e0>
    8000397c:	42a78863          	beq	a5,a0,80003dac <__printf+0x504>
    80003980:	06400713          	li	a4,100
    80003984:	40e79663          	bne	a5,a4,80003d90 <__printf+0x4e8>
    80003988:	f7843783          	ld	a5,-136(s0)
    8000398c:	0007a603          	lw	a2,0(a5)
    80003990:	00878793          	addi	a5,a5,8
    80003994:	f6f43c23          	sd	a5,-136(s0)
    80003998:	42064a63          	bltz	a2,80003dcc <__printf+0x524>
    8000399c:	00a00713          	li	a4,10
    800039a0:	02e677bb          	remuw	a5,a2,a4
    800039a4:	00002d97          	auipc	s11,0x2
    800039a8:	924d8d93          	addi	s11,s11,-1756 # 800052c8 <digits>
    800039ac:	00900593          	li	a1,9
    800039b0:	0006051b          	sext.w	a0,a2
    800039b4:	00000c93          	li	s9,0
    800039b8:	02079793          	slli	a5,a5,0x20
    800039bc:	0207d793          	srli	a5,a5,0x20
    800039c0:	00fd87b3          	add	a5,s11,a5
    800039c4:	0007c783          	lbu	a5,0(a5)
    800039c8:	02e656bb          	divuw	a3,a2,a4
    800039cc:	f8f40023          	sb	a5,-128(s0)
    800039d0:	14c5d863          	bge	a1,a2,80003b20 <__printf+0x278>
    800039d4:	06300593          	li	a1,99
    800039d8:	00100c93          	li	s9,1
    800039dc:	02e6f7bb          	remuw	a5,a3,a4
    800039e0:	02079793          	slli	a5,a5,0x20
    800039e4:	0207d793          	srli	a5,a5,0x20
    800039e8:	00fd87b3          	add	a5,s11,a5
    800039ec:	0007c783          	lbu	a5,0(a5)
    800039f0:	02e6d73b          	divuw	a4,a3,a4
    800039f4:	f8f400a3          	sb	a5,-127(s0)
    800039f8:	12a5f463          	bgeu	a1,a0,80003b20 <__printf+0x278>
    800039fc:	00a00693          	li	a3,10
    80003a00:	00900593          	li	a1,9
    80003a04:	02d777bb          	remuw	a5,a4,a3
    80003a08:	02079793          	slli	a5,a5,0x20
    80003a0c:	0207d793          	srli	a5,a5,0x20
    80003a10:	00fd87b3          	add	a5,s11,a5
    80003a14:	0007c503          	lbu	a0,0(a5)
    80003a18:	02d757bb          	divuw	a5,a4,a3
    80003a1c:	f8a40123          	sb	a0,-126(s0)
    80003a20:	48e5f263          	bgeu	a1,a4,80003ea4 <__printf+0x5fc>
    80003a24:	06300513          	li	a0,99
    80003a28:	02d7f5bb          	remuw	a1,a5,a3
    80003a2c:	02059593          	slli	a1,a1,0x20
    80003a30:	0205d593          	srli	a1,a1,0x20
    80003a34:	00bd85b3          	add	a1,s11,a1
    80003a38:	0005c583          	lbu	a1,0(a1)
    80003a3c:	02d7d7bb          	divuw	a5,a5,a3
    80003a40:	f8b401a3          	sb	a1,-125(s0)
    80003a44:	48e57263          	bgeu	a0,a4,80003ec8 <__printf+0x620>
    80003a48:	3e700513          	li	a0,999
    80003a4c:	02d7f5bb          	remuw	a1,a5,a3
    80003a50:	02059593          	slli	a1,a1,0x20
    80003a54:	0205d593          	srli	a1,a1,0x20
    80003a58:	00bd85b3          	add	a1,s11,a1
    80003a5c:	0005c583          	lbu	a1,0(a1)
    80003a60:	02d7d7bb          	divuw	a5,a5,a3
    80003a64:	f8b40223          	sb	a1,-124(s0)
    80003a68:	46e57663          	bgeu	a0,a4,80003ed4 <__printf+0x62c>
    80003a6c:	02d7f5bb          	remuw	a1,a5,a3
    80003a70:	02059593          	slli	a1,a1,0x20
    80003a74:	0205d593          	srli	a1,a1,0x20
    80003a78:	00bd85b3          	add	a1,s11,a1
    80003a7c:	0005c583          	lbu	a1,0(a1)
    80003a80:	02d7d7bb          	divuw	a5,a5,a3
    80003a84:	f8b402a3          	sb	a1,-123(s0)
    80003a88:	46ea7863          	bgeu	s4,a4,80003ef8 <__printf+0x650>
    80003a8c:	02d7f5bb          	remuw	a1,a5,a3
    80003a90:	02059593          	slli	a1,a1,0x20
    80003a94:	0205d593          	srli	a1,a1,0x20
    80003a98:	00bd85b3          	add	a1,s11,a1
    80003a9c:	0005c583          	lbu	a1,0(a1)
    80003aa0:	02d7d7bb          	divuw	a5,a5,a3
    80003aa4:	f8b40323          	sb	a1,-122(s0)
    80003aa8:	3eeaf863          	bgeu	s5,a4,80003e98 <__printf+0x5f0>
    80003aac:	02d7f5bb          	remuw	a1,a5,a3
    80003ab0:	02059593          	slli	a1,a1,0x20
    80003ab4:	0205d593          	srli	a1,a1,0x20
    80003ab8:	00bd85b3          	add	a1,s11,a1
    80003abc:	0005c583          	lbu	a1,0(a1)
    80003ac0:	02d7d7bb          	divuw	a5,a5,a3
    80003ac4:	f8b403a3          	sb	a1,-121(s0)
    80003ac8:	42eb7e63          	bgeu	s6,a4,80003f04 <__printf+0x65c>
    80003acc:	02d7f5bb          	remuw	a1,a5,a3
    80003ad0:	02059593          	slli	a1,a1,0x20
    80003ad4:	0205d593          	srli	a1,a1,0x20
    80003ad8:	00bd85b3          	add	a1,s11,a1
    80003adc:	0005c583          	lbu	a1,0(a1)
    80003ae0:	02d7d7bb          	divuw	a5,a5,a3
    80003ae4:	f8b40423          	sb	a1,-120(s0)
    80003ae8:	42ebfc63          	bgeu	s7,a4,80003f20 <__printf+0x678>
    80003aec:	02079793          	slli	a5,a5,0x20
    80003af0:	0207d793          	srli	a5,a5,0x20
    80003af4:	00fd8db3          	add	s11,s11,a5
    80003af8:	000dc703          	lbu	a4,0(s11)
    80003afc:	00a00793          	li	a5,10
    80003b00:	00900c93          	li	s9,9
    80003b04:	f8e404a3          	sb	a4,-119(s0)
    80003b08:	00065c63          	bgez	a2,80003b20 <__printf+0x278>
    80003b0c:	f9040713          	addi	a4,s0,-112
    80003b10:	00f70733          	add	a4,a4,a5
    80003b14:	02d00693          	li	a3,45
    80003b18:	fed70823          	sb	a3,-16(a4)
    80003b1c:	00078c93          	mv	s9,a5
    80003b20:	f8040793          	addi	a5,s0,-128
    80003b24:	01978cb3          	add	s9,a5,s9
    80003b28:	f7f40d13          	addi	s10,s0,-129
    80003b2c:	000cc503          	lbu	a0,0(s9)
    80003b30:	fffc8c93          	addi	s9,s9,-1
    80003b34:	00000097          	auipc	ra,0x0
    80003b38:	b90080e7          	jalr	-1136(ra) # 800036c4 <consputc>
    80003b3c:	ffac98e3          	bne	s9,s10,80003b2c <__printf+0x284>
    80003b40:	00094503          	lbu	a0,0(s2)
    80003b44:	e00514e3          	bnez	a0,8000394c <__printf+0xa4>
    80003b48:	1a0c1663          	bnez	s8,80003cf4 <__printf+0x44c>
    80003b4c:	08813083          	ld	ra,136(sp)
    80003b50:	08013403          	ld	s0,128(sp)
    80003b54:	07813483          	ld	s1,120(sp)
    80003b58:	07013903          	ld	s2,112(sp)
    80003b5c:	06813983          	ld	s3,104(sp)
    80003b60:	06013a03          	ld	s4,96(sp)
    80003b64:	05813a83          	ld	s5,88(sp)
    80003b68:	05013b03          	ld	s6,80(sp)
    80003b6c:	04813b83          	ld	s7,72(sp)
    80003b70:	04013c03          	ld	s8,64(sp)
    80003b74:	03813c83          	ld	s9,56(sp)
    80003b78:	03013d03          	ld	s10,48(sp)
    80003b7c:	02813d83          	ld	s11,40(sp)
    80003b80:	0d010113          	addi	sp,sp,208
    80003b84:	00008067          	ret
    80003b88:	07300713          	li	a4,115
    80003b8c:	1ce78a63          	beq	a5,a4,80003d60 <__printf+0x4b8>
    80003b90:	07800713          	li	a4,120
    80003b94:	1ee79e63          	bne	a5,a4,80003d90 <__printf+0x4e8>
    80003b98:	f7843783          	ld	a5,-136(s0)
    80003b9c:	0007a703          	lw	a4,0(a5)
    80003ba0:	00878793          	addi	a5,a5,8
    80003ba4:	f6f43c23          	sd	a5,-136(s0)
    80003ba8:	28074263          	bltz	a4,80003e2c <__printf+0x584>
    80003bac:	00001d97          	auipc	s11,0x1
    80003bb0:	71cd8d93          	addi	s11,s11,1820 # 800052c8 <digits>
    80003bb4:	00f77793          	andi	a5,a4,15
    80003bb8:	00fd87b3          	add	a5,s11,a5
    80003bbc:	0007c683          	lbu	a3,0(a5)
    80003bc0:	00f00613          	li	a2,15
    80003bc4:	0007079b          	sext.w	a5,a4
    80003bc8:	f8d40023          	sb	a3,-128(s0)
    80003bcc:	0047559b          	srliw	a1,a4,0x4
    80003bd0:	0047569b          	srliw	a3,a4,0x4
    80003bd4:	00000c93          	li	s9,0
    80003bd8:	0ee65063          	bge	a2,a4,80003cb8 <__printf+0x410>
    80003bdc:	00f6f693          	andi	a3,a3,15
    80003be0:	00dd86b3          	add	a3,s11,a3
    80003be4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003be8:	0087d79b          	srliw	a5,a5,0x8
    80003bec:	00100c93          	li	s9,1
    80003bf0:	f8d400a3          	sb	a3,-127(s0)
    80003bf4:	0cb67263          	bgeu	a2,a1,80003cb8 <__printf+0x410>
    80003bf8:	00f7f693          	andi	a3,a5,15
    80003bfc:	00dd86b3          	add	a3,s11,a3
    80003c00:	0006c583          	lbu	a1,0(a3)
    80003c04:	00f00613          	li	a2,15
    80003c08:	0047d69b          	srliw	a3,a5,0x4
    80003c0c:	f8b40123          	sb	a1,-126(s0)
    80003c10:	0047d593          	srli	a1,a5,0x4
    80003c14:	28f67e63          	bgeu	a2,a5,80003eb0 <__printf+0x608>
    80003c18:	00f6f693          	andi	a3,a3,15
    80003c1c:	00dd86b3          	add	a3,s11,a3
    80003c20:	0006c503          	lbu	a0,0(a3)
    80003c24:	0087d813          	srli	a6,a5,0x8
    80003c28:	0087d69b          	srliw	a3,a5,0x8
    80003c2c:	f8a401a3          	sb	a0,-125(s0)
    80003c30:	28b67663          	bgeu	a2,a1,80003ebc <__printf+0x614>
    80003c34:	00f6f693          	andi	a3,a3,15
    80003c38:	00dd86b3          	add	a3,s11,a3
    80003c3c:	0006c583          	lbu	a1,0(a3)
    80003c40:	00c7d513          	srli	a0,a5,0xc
    80003c44:	00c7d69b          	srliw	a3,a5,0xc
    80003c48:	f8b40223          	sb	a1,-124(s0)
    80003c4c:	29067a63          	bgeu	a2,a6,80003ee0 <__printf+0x638>
    80003c50:	00f6f693          	andi	a3,a3,15
    80003c54:	00dd86b3          	add	a3,s11,a3
    80003c58:	0006c583          	lbu	a1,0(a3)
    80003c5c:	0107d813          	srli	a6,a5,0x10
    80003c60:	0107d69b          	srliw	a3,a5,0x10
    80003c64:	f8b402a3          	sb	a1,-123(s0)
    80003c68:	28a67263          	bgeu	a2,a0,80003eec <__printf+0x644>
    80003c6c:	00f6f693          	andi	a3,a3,15
    80003c70:	00dd86b3          	add	a3,s11,a3
    80003c74:	0006c683          	lbu	a3,0(a3)
    80003c78:	0147d79b          	srliw	a5,a5,0x14
    80003c7c:	f8d40323          	sb	a3,-122(s0)
    80003c80:	21067663          	bgeu	a2,a6,80003e8c <__printf+0x5e4>
    80003c84:	02079793          	slli	a5,a5,0x20
    80003c88:	0207d793          	srli	a5,a5,0x20
    80003c8c:	00fd8db3          	add	s11,s11,a5
    80003c90:	000dc683          	lbu	a3,0(s11)
    80003c94:	00800793          	li	a5,8
    80003c98:	00700c93          	li	s9,7
    80003c9c:	f8d403a3          	sb	a3,-121(s0)
    80003ca0:	00075c63          	bgez	a4,80003cb8 <__printf+0x410>
    80003ca4:	f9040713          	addi	a4,s0,-112
    80003ca8:	00f70733          	add	a4,a4,a5
    80003cac:	02d00693          	li	a3,45
    80003cb0:	fed70823          	sb	a3,-16(a4)
    80003cb4:	00078c93          	mv	s9,a5
    80003cb8:	f8040793          	addi	a5,s0,-128
    80003cbc:	01978cb3          	add	s9,a5,s9
    80003cc0:	f7f40d13          	addi	s10,s0,-129
    80003cc4:	000cc503          	lbu	a0,0(s9)
    80003cc8:	fffc8c93          	addi	s9,s9,-1
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	9f8080e7          	jalr	-1544(ra) # 800036c4 <consputc>
    80003cd4:	ff9d18e3          	bne	s10,s9,80003cc4 <__printf+0x41c>
    80003cd8:	0100006f          	j	80003ce8 <__printf+0x440>
    80003cdc:	00000097          	auipc	ra,0x0
    80003ce0:	9e8080e7          	jalr	-1560(ra) # 800036c4 <consputc>
    80003ce4:	000c8493          	mv	s1,s9
    80003ce8:	00094503          	lbu	a0,0(s2)
    80003cec:	c60510e3          	bnez	a0,8000394c <__printf+0xa4>
    80003cf0:	e40c0ee3          	beqz	s8,80003b4c <__printf+0x2a4>
    80003cf4:	00003517          	auipc	a0,0x3
    80003cf8:	4fc50513          	addi	a0,a0,1276 # 800071f0 <pr>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	94c080e7          	jalr	-1716(ra) # 80004648 <release>
    80003d04:	e49ff06f          	j	80003b4c <__printf+0x2a4>
    80003d08:	f7843783          	ld	a5,-136(s0)
    80003d0c:	03000513          	li	a0,48
    80003d10:	01000d13          	li	s10,16
    80003d14:	00878713          	addi	a4,a5,8
    80003d18:	0007bc83          	ld	s9,0(a5)
    80003d1c:	f6e43c23          	sd	a4,-136(s0)
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	9a4080e7          	jalr	-1628(ra) # 800036c4 <consputc>
    80003d28:	07800513          	li	a0,120
    80003d2c:	00000097          	auipc	ra,0x0
    80003d30:	998080e7          	jalr	-1640(ra) # 800036c4 <consputc>
    80003d34:	00001d97          	auipc	s11,0x1
    80003d38:	594d8d93          	addi	s11,s11,1428 # 800052c8 <digits>
    80003d3c:	03ccd793          	srli	a5,s9,0x3c
    80003d40:	00fd87b3          	add	a5,s11,a5
    80003d44:	0007c503          	lbu	a0,0(a5)
    80003d48:	fffd0d1b          	addiw	s10,s10,-1
    80003d4c:	004c9c93          	slli	s9,s9,0x4
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	974080e7          	jalr	-1676(ra) # 800036c4 <consputc>
    80003d58:	fe0d12e3          	bnez	s10,80003d3c <__printf+0x494>
    80003d5c:	f8dff06f          	j	80003ce8 <__printf+0x440>
    80003d60:	f7843783          	ld	a5,-136(s0)
    80003d64:	0007bc83          	ld	s9,0(a5)
    80003d68:	00878793          	addi	a5,a5,8
    80003d6c:	f6f43c23          	sd	a5,-136(s0)
    80003d70:	000c9a63          	bnez	s9,80003d84 <__printf+0x4dc>
    80003d74:	1080006f          	j	80003e7c <__printf+0x5d4>
    80003d78:	001c8c93          	addi	s9,s9,1
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	948080e7          	jalr	-1720(ra) # 800036c4 <consputc>
    80003d84:	000cc503          	lbu	a0,0(s9)
    80003d88:	fe0518e3          	bnez	a0,80003d78 <__printf+0x4d0>
    80003d8c:	f5dff06f          	j	80003ce8 <__printf+0x440>
    80003d90:	02500513          	li	a0,37
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	930080e7          	jalr	-1744(ra) # 800036c4 <consputc>
    80003d9c:	000c8513          	mv	a0,s9
    80003da0:	00000097          	auipc	ra,0x0
    80003da4:	924080e7          	jalr	-1756(ra) # 800036c4 <consputc>
    80003da8:	f41ff06f          	j	80003ce8 <__printf+0x440>
    80003dac:	02500513          	li	a0,37
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	914080e7          	jalr	-1772(ra) # 800036c4 <consputc>
    80003db8:	f31ff06f          	j	80003ce8 <__printf+0x440>
    80003dbc:	00030513          	mv	a0,t1
    80003dc0:	00000097          	auipc	ra,0x0
    80003dc4:	7bc080e7          	jalr	1980(ra) # 8000457c <acquire>
    80003dc8:	b4dff06f          	j	80003914 <__printf+0x6c>
    80003dcc:	40c0053b          	negw	a0,a2
    80003dd0:	00a00713          	li	a4,10
    80003dd4:	02e576bb          	remuw	a3,a0,a4
    80003dd8:	00001d97          	auipc	s11,0x1
    80003ddc:	4f0d8d93          	addi	s11,s11,1264 # 800052c8 <digits>
    80003de0:	ff700593          	li	a1,-9
    80003de4:	02069693          	slli	a3,a3,0x20
    80003de8:	0206d693          	srli	a3,a3,0x20
    80003dec:	00dd86b3          	add	a3,s11,a3
    80003df0:	0006c683          	lbu	a3,0(a3)
    80003df4:	02e557bb          	divuw	a5,a0,a4
    80003df8:	f8d40023          	sb	a3,-128(s0)
    80003dfc:	10b65e63          	bge	a2,a1,80003f18 <__printf+0x670>
    80003e00:	06300593          	li	a1,99
    80003e04:	02e7f6bb          	remuw	a3,a5,a4
    80003e08:	02069693          	slli	a3,a3,0x20
    80003e0c:	0206d693          	srli	a3,a3,0x20
    80003e10:	00dd86b3          	add	a3,s11,a3
    80003e14:	0006c683          	lbu	a3,0(a3)
    80003e18:	02e7d73b          	divuw	a4,a5,a4
    80003e1c:	00200793          	li	a5,2
    80003e20:	f8d400a3          	sb	a3,-127(s0)
    80003e24:	bca5ece3          	bltu	a1,a0,800039fc <__printf+0x154>
    80003e28:	ce5ff06f          	j	80003b0c <__printf+0x264>
    80003e2c:	40e007bb          	negw	a5,a4
    80003e30:	00001d97          	auipc	s11,0x1
    80003e34:	498d8d93          	addi	s11,s11,1176 # 800052c8 <digits>
    80003e38:	00f7f693          	andi	a3,a5,15
    80003e3c:	00dd86b3          	add	a3,s11,a3
    80003e40:	0006c583          	lbu	a1,0(a3)
    80003e44:	ff100613          	li	a2,-15
    80003e48:	0047d69b          	srliw	a3,a5,0x4
    80003e4c:	f8b40023          	sb	a1,-128(s0)
    80003e50:	0047d59b          	srliw	a1,a5,0x4
    80003e54:	0ac75e63          	bge	a4,a2,80003f10 <__printf+0x668>
    80003e58:	00f6f693          	andi	a3,a3,15
    80003e5c:	00dd86b3          	add	a3,s11,a3
    80003e60:	0006c603          	lbu	a2,0(a3)
    80003e64:	00f00693          	li	a3,15
    80003e68:	0087d79b          	srliw	a5,a5,0x8
    80003e6c:	f8c400a3          	sb	a2,-127(s0)
    80003e70:	d8b6e4e3          	bltu	a3,a1,80003bf8 <__printf+0x350>
    80003e74:	00200793          	li	a5,2
    80003e78:	e2dff06f          	j	80003ca4 <__printf+0x3fc>
    80003e7c:	00001c97          	auipc	s9,0x1
    80003e80:	42cc8c93          	addi	s9,s9,1068 # 800052a8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80003e84:	02800513          	li	a0,40
    80003e88:	ef1ff06f          	j	80003d78 <__printf+0x4d0>
    80003e8c:	00700793          	li	a5,7
    80003e90:	00600c93          	li	s9,6
    80003e94:	e0dff06f          	j	80003ca0 <__printf+0x3f8>
    80003e98:	00700793          	li	a5,7
    80003e9c:	00600c93          	li	s9,6
    80003ea0:	c69ff06f          	j	80003b08 <__printf+0x260>
    80003ea4:	00300793          	li	a5,3
    80003ea8:	00200c93          	li	s9,2
    80003eac:	c5dff06f          	j	80003b08 <__printf+0x260>
    80003eb0:	00300793          	li	a5,3
    80003eb4:	00200c93          	li	s9,2
    80003eb8:	de9ff06f          	j	80003ca0 <__printf+0x3f8>
    80003ebc:	00400793          	li	a5,4
    80003ec0:	00300c93          	li	s9,3
    80003ec4:	dddff06f          	j	80003ca0 <__printf+0x3f8>
    80003ec8:	00400793          	li	a5,4
    80003ecc:	00300c93          	li	s9,3
    80003ed0:	c39ff06f          	j	80003b08 <__printf+0x260>
    80003ed4:	00500793          	li	a5,5
    80003ed8:	00400c93          	li	s9,4
    80003edc:	c2dff06f          	j	80003b08 <__printf+0x260>
    80003ee0:	00500793          	li	a5,5
    80003ee4:	00400c93          	li	s9,4
    80003ee8:	db9ff06f          	j	80003ca0 <__printf+0x3f8>
    80003eec:	00600793          	li	a5,6
    80003ef0:	00500c93          	li	s9,5
    80003ef4:	dadff06f          	j	80003ca0 <__printf+0x3f8>
    80003ef8:	00600793          	li	a5,6
    80003efc:	00500c93          	li	s9,5
    80003f00:	c09ff06f          	j	80003b08 <__printf+0x260>
    80003f04:	00800793          	li	a5,8
    80003f08:	00700c93          	li	s9,7
    80003f0c:	bfdff06f          	j	80003b08 <__printf+0x260>
    80003f10:	00100793          	li	a5,1
    80003f14:	d91ff06f          	j	80003ca4 <__printf+0x3fc>
    80003f18:	00100793          	li	a5,1
    80003f1c:	bf1ff06f          	j	80003b0c <__printf+0x264>
    80003f20:	00900793          	li	a5,9
    80003f24:	00800c93          	li	s9,8
    80003f28:	be1ff06f          	j	80003b08 <__printf+0x260>
    80003f2c:	00001517          	auipc	a0,0x1
    80003f30:	38450513          	addi	a0,a0,900 # 800052b0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	918080e7          	jalr	-1768(ra) # 8000384c <panic>

0000000080003f3c <printfinit>:
    80003f3c:	fe010113          	addi	sp,sp,-32
    80003f40:	00813823          	sd	s0,16(sp)
    80003f44:	00913423          	sd	s1,8(sp)
    80003f48:	00113c23          	sd	ra,24(sp)
    80003f4c:	02010413          	addi	s0,sp,32
    80003f50:	00003497          	auipc	s1,0x3
    80003f54:	2a048493          	addi	s1,s1,672 # 800071f0 <pr>
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	00001597          	auipc	a1,0x1
    80003f60:	36458593          	addi	a1,a1,868 # 800052c0 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	5f4080e7          	jalr	1524(ra) # 80004558 <initlock>
    80003f6c:	01813083          	ld	ra,24(sp)
    80003f70:	01013403          	ld	s0,16(sp)
    80003f74:	0004ac23          	sw	zero,24(s1)
    80003f78:	00813483          	ld	s1,8(sp)
    80003f7c:	02010113          	addi	sp,sp,32
    80003f80:	00008067          	ret

0000000080003f84 <uartinit>:
    80003f84:	ff010113          	addi	sp,sp,-16
    80003f88:	00813423          	sd	s0,8(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    80003f90:	100007b7          	lui	a5,0x10000
    80003f94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003f98:	f8000713          	li	a4,-128
    80003f9c:	00e781a3          	sb	a4,3(a5)
    80003fa0:	00300713          	li	a4,3
    80003fa4:	00e78023          	sb	a4,0(a5)
    80003fa8:	000780a3          	sb	zero,1(a5)
    80003fac:	00e781a3          	sb	a4,3(a5)
    80003fb0:	00700693          	li	a3,7
    80003fb4:	00d78123          	sb	a3,2(a5)
    80003fb8:	00e780a3          	sb	a4,1(a5)
    80003fbc:	00813403          	ld	s0,8(sp)
    80003fc0:	01010113          	addi	sp,sp,16
    80003fc4:	00008067          	ret

0000000080003fc8 <uartputc>:
    80003fc8:	00002797          	auipc	a5,0x2
    80003fcc:	fb07a783          	lw	a5,-80(a5) # 80005f78 <panicked>
    80003fd0:	00078463          	beqz	a5,80003fd8 <uartputc+0x10>
    80003fd4:	0000006f          	j	80003fd4 <uartputc+0xc>
    80003fd8:	fd010113          	addi	sp,sp,-48
    80003fdc:	02813023          	sd	s0,32(sp)
    80003fe0:	00913c23          	sd	s1,24(sp)
    80003fe4:	01213823          	sd	s2,16(sp)
    80003fe8:	01313423          	sd	s3,8(sp)
    80003fec:	02113423          	sd	ra,40(sp)
    80003ff0:	03010413          	addi	s0,sp,48
    80003ff4:	00002917          	auipc	s2,0x2
    80003ff8:	f8c90913          	addi	s2,s2,-116 # 80005f80 <uart_tx_r>
    80003ffc:	00093783          	ld	a5,0(s2)
    80004000:	00002497          	auipc	s1,0x2
    80004004:	f8848493          	addi	s1,s1,-120 # 80005f88 <uart_tx_w>
    80004008:	0004b703          	ld	a4,0(s1)
    8000400c:	02078693          	addi	a3,a5,32
    80004010:	00050993          	mv	s3,a0
    80004014:	02e69c63          	bne	a3,a4,8000404c <uartputc+0x84>
    80004018:	00001097          	auipc	ra,0x1
    8000401c:	834080e7          	jalr	-1996(ra) # 8000484c <push_on>
    80004020:	00093783          	ld	a5,0(s2)
    80004024:	0004b703          	ld	a4,0(s1)
    80004028:	02078793          	addi	a5,a5,32
    8000402c:	00e79463          	bne	a5,a4,80004034 <uartputc+0x6c>
    80004030:	0000006f          	j	80004030 <uartputc+0x68>
    80004034:	00001097          	auipc	ra,0x1
    80004038:	88c080e7          	jalr	-1908(ra) # 800048c0 <pop_on>
    8000403c:	00093783          	ld	a5,0(s2)
    80004040:	0004b703          	ld	a4,0(s1)
    80004044:	02078693          	addi	a3,a5,32
    80004048:	fce688e3          	beq	a3,a4,80004018 <uartputc+0x50>
    8000404c:	01f77693          	andi	a3,a4,31
    80004050:	00003597          	auipc	a1,0x3
    80004054:	1c058593          	addi	a1,a1,448 # 80007210 <uart_tx_buf>
    80004058:	00d586b3          	add	a3,a1,a3
    8000405c:	00170713          	addi	a4,a4,1
    80004060:	01368023          	sb	s3,0(a3)
    80004064:	00e4b023          	sd	a4,0(s1)
    80004068:	10000637          	lui	a2,0x10000
    8000406c:	02f71063          	bne	a4,a5,8000408c <uartputc+0xc4>
    80004070:	0340006f          	j	800040a4 <uartputc+0xdc>
    80004074:	00074703          	lbu	a4,0(a4)
    80004078:	00f93023          	sd	a5,0(s2)
    8000407c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004080:	00093783          	ld	a5,0(s2)
    80004084:	0004b703          	ld	a4,0(s1)
    80004088:	00f70e63          	beq	a4,a5,800040a4 <uartputc+0xdc>
    8000408c:	00564683          	lbu	a3,5(a2)
    80004090:	01f7f713          	andi	a4,a5,31
    80004094:	00e58733          	add	a4,a1,a4
    80004098:	0206f693          	andi	a3,a3,32
    8000409c:	00178793          	addi	a5,a5,1
    800040a0:	fc069ae3          	bnez	a3,80004074 <uartputc+0xac>
    800040a4:	02813083          	ld	ra,40(sp)
    800040a8:	02013403          	ld	s0,32(sp)
    800040ac:	01813483          	ld	s1,24(sp)
    800040b0:	01013903          	ld	s2,16(sp)
    800040b4:	00813983          	ld	s3,8(sp)
    800040b8:	03010113          	addi	sp,sp,48
    800040bc:	00008067          	ret

00000000800040c0 <uartputc_sync>:
    800040c0:	ff010113          	addi	sp,sp,-16
    800040c4:	00813423          	sd	s0,8(sp)
    800040c8:	01010413          	addi	s0,sp,16
    800040cc:	00002717          	auipc	a4,0x2
    800040d0:	eac72703          	lw	a4,-340(a4) # 80005f78 <panicked>
    800040d4:	02071663          	bnez	a4,80004100 <uartputc_sync+0x40>
    800040d8:	00050793          	mv	a5,a0
    800040dc:	100006b7          	lui	a3,0x10000
    800040e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800040e4:	02077713          	andi	a4,a4,32
    800040e8:	fe070ce3          	beqz	a4,800040e0 <uartputc_sync+0x20>
    800040ec:	0ff7f793          	andi	a5,a5,255
    800040f0:	00f68023          	sb	a5,0(a3)
    800040f4:	00813403          	ld	s0,8(sp)
    800040f8:	01010113          	addi	sp,sp,16
    800040fc:	00008067          	ret
    80004100:	0000006f          	j	80004100 <uartputc_sync+0x40>

0000000080004104 <uartstart>:
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00813423          	sd	s0,8(sp)
    8000410c:	01010413          	addi	s0,sp,16
    80004110:	00002617          	auipc	a2,0x2
    80004114:	e7060613          	addi	a2,a2,-400 # 80005f80 <uart_tx_r>
    80004118:	00002517          	auipc	a0,0x2
    8000411c:	e7050513          	addi	a0,a0,-400 # 80005f88 <uart_tx_w>
    80004120:	00063783          	ld	a5,0(a2)
    80004124:	00053703          	ld	a4,0(a0)
    80004128:	04f70263          	beq	a4,a5,8000416c <uartstart+0x68>
    8000412c:	100005b7          	lui	a1,0x10000
    80004130:	00003817          	auipc	a6,0x3
    80004134:	0e080813          	addi	a6,a6,224 # 80007210 <uart_tx_buf>
    80004138:	01c0006f          	j	80004154 <uartstart+0x50>
    8000413c:	0006c703          	lbu	a4,0(a3)
    80004140:	00f63023          	sd	a5,0(a2)
    80004144:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004148:	00063783          	ld	a5,0(a2)
    8000414c:	00053703          	ld	a4,0(a0)
    80004150:	00f70e63          	beq	a4,a5,8000416c <uartstart+0x68>
    80004154:	01f7f713          	andi	a4,a5,31
    80004158:	00e806b3          	add	a3,a6,a4
    8000415c:	0055c703          	lbu	a4,5(a1)
    80004160:	00178793          	addi	a5,a5,1
    80004164:	02077713          	andi	a4,a4,32
    80004168:	fc071ae3          	bnez	a4,8000413c <uartstart+0x38>
    8000416c:	00813403          	ld	s0,8(sp)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret

0000000080004178 <uartgetc>:
    80004178:	ff010113          	addi	sp,sp,-16
    8000417c:	00813423          	sd	s0,8(sp)
    80004180:	01010413          	addi	s0,sp,16
    80004184:	10000737          	lui	a4,0x10000
    80004188:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000418c:	0017f793          	andi	a5,a5,1
    80004190:	00078c63          	beqz	a5,800041a8 <uartgetc+0x30>
    80004194:	00074503          	lbu	a0,0(a4)
    80004198:	0ff57513          	andi	a0,a0,255
    8000419c:	00813403          	ld	s0,8(sp)
    800041a0:	01010113          	addi	sp,sp,16
    800041a4:	00008067          	ret
    800041a8:	fff00513          	li	a0,-1
    800041ac:	ff1ff06f          	j	8000419c <uartgetc+0x24>

00000000800041b0 <uartintr>:
    800041b0:	100007b7          	lui	a5,0x10000
    800041b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800041b8:	0017f793          	andi	a5,a5,1
    800041bc:	0a078463          	beqz	a5,80004264 <uartintr+0xb4>
    800041c0:	fe010113          	addi	sp,sp,-32
    800041c4:	00813823          	sd	s0,16(sp)
    800041c8:	00913423          	sd	s1,8(sp)
    800041cc:	00113c23          	sd	ra,24(sp)
    800041d0:	02010413          	addi	s0,sp,32
    800041d4:	100004b7          	lui	s1,0x10000
    800041d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800041dc:	0ff57513          	andi	a0,a0,255
    800041e0:	fffff097          	auipc	ra,0xfffff
    800041e4:	534080e7          	jalr	1332(ra) # 80003714 <consoleintr>
    800041e8:	0054c783          	lbu	a5,5(s1)
    800041ec:	0017f793          	andi	a5,a5,1
    800041f0:	fe0794e3          	bnez	a5,800041d8 <uartintr+0x28>
    800041f4:	00002617          	auipc	a2,0x2
    800041f8:	d8c60613          	addi	a2,a2,-628 # 80005f80 <uart_tx_r>
    800041fc:	00002517          	auipc	a0,0x2
    80004200:	d8c50513          	addi	a0,a0,-628 # 80005f88 <uart_tx_w>
    80004204:	00063783          	ld	a5,0(a2)
    80004208:	00053703          	ld	a4,0(a0)
    8000420c:	04f70263          	beq	a4,a5,80004250 <uartintr+0xa0>
    80004210:	100005b7          	lui	a1,0x10000
    80004214:	00003817          	auipc	a6,0x3
    80004218:	ffc80813          	addi	a6,a6,-4 # 80007210 <uart_tx_buf>
    8000421c:	01c0006f          	j	80004238 <uartintr+0x88>
    80004220:	0006c703          	lbu	a4,0(a3)
    80004224:	00f63023          	sd	a5,0(a2)
    80004228:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000422c:	00063783          	ld	a5,0(a2)
    80004230:	00053703          	ld	a4,0(a0)
    80004234:	00f70e63          	beq	a4,a5,80004250 <uartintr+0xa0>
    80004238:	01f7f713          	andi	a4,a5,31
    8000423c:	00e806b3          	add	a3,a6,a4
    80004240:	0055c703          	lbu	a4,5(a1)
    80004244:	00178793          	addi	a5,a5,1
    80004248:	02077713          	andi	a4,a4,32
    8000424c:	fc071ae3          	bnez	a4,80004220 <uartintr+0x70>
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	00813483          	ld	s1,8(sp)
    8000425c:	02010113          	addi	sp,sp,32
    80004260:	00008067          	ret
    80004264:	00002617          	auipc	a2,0x2
    80004268:	d1c60613          	addi	a2,a2,-740 # 80005f80 <uart_tx_r>
    8000426c:	00002517          	auipc	a0,0x2
    80004270:	d1c50513          	addi	a0,a0,-740 # 80005f88 <uart_tx_w>
    80004274:	00063783          	ld	a5,0(a2)
    80004278:	00053703          	ld	a4,0(a0)
    8000427c:	04f70263          	beq	a4,a5,800042c0 <uartintr+0x110>
    80004280:	100005b7          	lui	a1,0x10000
    80004284:	00003817          	auipc	a6,0x3
    80004288:	f8c80813          	addi	a6,a6,-116 # 80007210 <uart_tx_buf>
    8000428c:	01c0006f          	j	800042a8 <uartintr+0xf8>
    80004290:	0006c703          	lbu	a4,0(a3)
    80004294:	00f63023          	sd	a5,0(a2)
    80004298:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000429c:	00063783          	ld	a5,0(a2)
    800042a0:	00053703          	ld	a4,0(a0)
    800042a4:	02f70063          	beq	a4,a5,800042c4 <uartintr+0x114>
    800042a8:	01f7f713          	andi	a4,a5,31
    800042ac:	00e806b3          	add	a3,a6,a4
    800042b0:	0055c703          	lbu	a4,5(a1)
    800042b4:	00178793          	addi	a5,a5,1
    800042b8:	02077713          	andi	a4,a4,32
    800042bc:	fc071ae3          	bnez	a4,80004290 <uartintr+0xe0>
    800042c0:	00008067          	ret
    800042c4:	00008067          	ret

00000000800042c8 <kinit>:
    800042c8:	fc010113          	addi	sp,sp,-64
    800042cc:	02913423          	sd	s1,40(sp)
    800042d0:	fffff7b7          	lui	a5,0xfffff
    800042d4:	00004497          	auipc	s1,0x4
    800042d8:	f5b48493          	addi	s1,s1,-165 # 8000822f <end+0xfff>
    800042dc:	02813823          	sd	s0,48(sp)
    800042e0:	01313c23          	sd	s3,24(sp)
    800042e4:	00f4f4b3          	and	s1,s1,a5
    800042e8:	02113c23          	sd	ra,56(sp)
    800042ec:	03213023          	sd	s2,32(sp)
    800042f0:	01413823          	sd	s4,16(sp)
    800042f4:	01513423          	sd	s5,8(sp)
    800042f8:	04010413          	addi	s0,sp,64
    800042fc:	000017b7          	lui	a5,0x1
    80004300:	01100993          	li	s3,17
    80004304:	00f487b3          	add	a5,s1,a5
    80004308:	01b99993          	slli	s3,s3,0x1b
    8000430c:	06f9e063          	bltu	s3,a5,8000436c <kinit+0xa4>
    80004310:	00003a97          	auipc	s5,0x3
    80004314:	f20a8a93          	addi	s5,s5,-224 # 80007230 <end>
    80004318:	0754ec63          	bltu	s1,s5,80004390 <kinit+0xc8>
    8000431c:	0734fa63          	bgeu	s1,s3,80004390 <kinit+0xc8>
    80004320:	00088a37          	lui	s4,0x88
    80004324:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004328:	00002917          	auipc	s2,0x2
    8000432c:	c6890913          	addi	s2,s2,-920 # 80005f90 <kmem>
    80004330:	00ca1a13          	slli	s4,s4,0xc
    80004334:	0140006f          	j	80004348 <kinit+0x80>
    80004338:	000017b7          	lui	a5,0x1
    8000433c:	00f484b3          	add	s1,s1,a5
    80004340:	0554e863          	bltu	s1,s5,80004390 <kinit+0xc8>
    80004344:	0534f663          	bgeu	s1,s3,80004390 <kinit+0xc8>
    80004348:	00001637          	lui	a2,0x1
    8000434c:	00100593          	li	a1,1
    80004350:	00048513          	mv	a0,s1
    80004354:	00000097          	auipc	ra,0x0
    80004358:	5e4080e7          	jalr	1508(ra) # 80004938 <__memset>
    8000435c:	00093783          	ld	a5,0(s2)
    80004360:	00f4b023          	sd	a5,0(s1)
    80004364:	00993023          	sd	s1,0(s2)
    80004368:	fd4498e3          	bne	s1,s4,80004338 <kinit+0x70>
    8000436c:	03813083          	ld	ra,56(sp)
    80004370:	03013403          	ld	s0,48(sp)
    80004374:	02813483          	ld	s1,40(sp)
    80004378:	02013903          	ld	s2,32(sp)
    8000437c:	01813983          	ld	s3,24(sp)
    80004380:	01013a03          	ld	s4,16(sp)
    80004384:	00813a83          	ld	s5,8(sp)
    80004388:	04010113          	addi	sp,sp,64
    8000438c:	00008067          	ret
    80004390:	00001517          	auipc	a0,0x1
    80004394:	f5050513          	addi	a0,a0,-176 # 800052e0 <digits+0x18>
    80004398:	fffff097          	auipc	ra,0xfffff
    8000439c:	4b4080e7          	jalr	1204(ra) # 8000384c <panic>

00000000800043a0 <freerange>:
    800043a0:	fc010113          	addi	sp,sp,-64
    800043a4:	000017b7          	lui	a5,0x1
    800043a8:	02913423          	sd	s1,40(sp)
    800043ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800043b0:	009504b3          	add	s1,a0,s1
    800043b4:	fffff537          	lui	a0,0xfffff
    800043b8:	02813823          	sd	s0,48(sp)
    800043bc:	02113c23          	sd	ra,56(sp)
    800043c0:	03213023          	sd	s2,32(sp)
    800043c4:	01313c23          	sd	s3,24(sp)
    800043c8:	01413823          	sd	s4,16(sp)
    800043cc:	01513423          	sd	s5,8(sp)
    800043d0:	01613023          	sd	s6,0(sp)
    800043d4:	04010413          	addi	s0,sp,64
    800043d8:	00a4f4b3          	and	s1,s1,a0
    800043dc:	00f487b3          	add	a5,s1,a5
    800043e0:	06f5e463          	bltu	a1,a5,80004448 <freerange+0xa8>
    800043e4:	00003a97          	auipc	s5,0x3
    800043e8:	e4ca8a93          	addi	s5,s5,-436 # 80007230 <end>
    800043ec:	0954e263          	bltu	s1,s5,80004470 <freerange+0xd0>
    800043f0:	01100993          	li	s3,17
    800043f4:	01b99993          	slli	s3,s3,0x1b
    800043f8:	0734fc63          	bgeu	s1,s3,80004470 <freerange+0xd0>
    800043fc:	00058a13          	mv	s4,a1
    80004400:	00002917          	auipc	s2,0x2
    80004404:	b9090913          	addi	s2,s2,-1136 # 80005f90 <kmem>
    80004408:	00002b37          	lui	s6,0x2
    8000440c:	0140006f          	j	80004420 <freerange+0x80>
    80004410:	000017b7          	lui	a5,0x1
    80004414:	00f484b3          	add	s1,s1,a5
    80004418:	0554ec63          	bltu	s1,s5,80004470 <freerange+0xd0>
    8000441c:	0534fa63          	bgeu	s1,s3,80004470 <freerange+0xd0>
    80004420:	00001637          	lui	a2,0x1
    80004424:	00100593          	li	a1,1
    80004428:	00048513          	mv	a0,s1
    8000442c:	00000097          	auipc	ra,0x0
    80004430:	50c080e7          	jalr	1292(ra) # 80004938 <__memset>
    80004434:	00093703          	ld	a4,0(s2)
    80004438:	016487b3          	add	a5,s1,s6
    8000443c:	00e4b023          	sd	a4,0(s1)
    80004440:	00993023          	sd	s1,0(s2)
    80004444:	fcfa76e3          	bgeu	s4,a5,80004410 <freerange+0x70>
    80004448:	03813083          	ld	ra,56(sp)
    8000444c:	03013403          	ld	s0,48(sp)
    80004450:	02813483          	ld	s1,40(sp)
    80004454:	02013903          	ld	s2,32(sp)
    80004458:	01813983          	ld	s3,24(sp)
    8000445c:	01013a03          	ld	s4,16(sp)
    80004460:	00813a83          	ld	s5,8(sp)
    80004464:	00013b03          	ld	s6,0(sp)
    80004468:	04010113          	addi	sp,sp,64
    8000446c:	00008067          	ret
    80004470:	00001517          	auipc	a0,0x1
    80004474:	e7050513          	addi	a0,a0,-400 # 800052e0 <digits+0x18>
    80004478:	fffff097          	auipc	ra,0xfffff
    8000447c:	3d4080e7          	jalr	980(ra) # 8000384c <panic>

0000000080004480 <kfree>:
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	00813823          	sd	s0,16(sp)
    80004488:	00113c23          	sd	ra,24(sp)
    8000448c:	00913423          	sd	s1,8(sp)
    80004490:	02010413          	addi	s0,sp,32
    80004494:	03451793          	slli	a5,a0,0x34
    80004498:	04079c63          	bnez	a5,800044f0 <kfree+0x70>
    8000449c:	00003797          	auipc	a5,0x3
    800044a0:	d9478793          	addi	a5,a5,-620 # 80007230 <end>
    800044a4:	00050493          	mv	s1,a0
    800044a8:	04f56463          	bltu	a0,a5,800044f0 <kfree+0x70>
    800044ac:	01100793          	li	a5,17
    800044b0:	01b79793          	slli	a5,a5,0x1b
    800044b4:	02f57e63          	bgeu	a0,a5,800044f0 <kfree+0x70>
    800044b8:	00001637          	lui	a2,0x1
    800044bc:	00100593          	li	a1,1
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	478080e7          	jalr	1144(ra) # 80004938 <__memset>
    800044c8:	00002797          	auipc	a5,0x2
    800044cc:	ac878793          	addi	a5,a5,-1336 # 80005f90 <kmem>
    800044d0:	0007b703          	ld	a4,0(a5)
    800044d4:	01813083          	ld	ra,24(sp)
    800044d8:	01013403          	ld	s0,16(sp)
    800044dc:	00e4b023          	sd	a4,0(s1)
    800044e0:	0097b023          	sd	s1,0(a5)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	02010113          	addi	sp,sp,32
    800044ec:	00008067          	ret
    800044f0:	00001517          	auipc	a0,0x1
    800044f4:	df050513          	addi	a0,a0,-528 # 800052e0 <digits+0x18>
    800044f8:	fffff097          	auipc	ra,0xfffff
    800044fc:	354080e7          	jalr	852(ra) # 8000384c <panic>

0000000080004500 <kalloc>:
    80004500:	fe010113          	addi	sp,sp,-32
    80004504:	00813823          	sd	s0,16(sp)
    80004508:	00913423          	sd	s1,8(sp)
    8000450c:	00113c23          	sd	ra,24(sp)
    80004510:	02010413          	addi	s0,sp,32
    80004514:	00002797          	auipc	a5,0x2
    80004518:	a7c78793          	addi	a5,a5,-1412 # 80005f90 <kmem>
    8000451c:	0007b483          	ld	s1,0(a5)
    80004520:	02048063          	beqz	s1,80004540 <kalloc+0x40>
    80004524:	0004b703          	ld	a4,0(s1)
    80004528:	00001637          	lui	a2,0x1
    8000452c:	00500593          	li	a1,5
    80004530:	00048513          	mv	a0,s1
    80004534:	00e7b023          	sd	a4,0(a5)
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	400080e7          	jalr	1024(ra) # 80004938 <__memset>
    80004540:	01813083          	ld	ra,24(sp)
    80004544:	01013403          	ld	s0,16(sp)
    80004548:	00048513          	mv	a0,s1
    8000454c:	00813483          	ld	s1,8(sp)
    80004550:	02010113          	addi	sp,sp,32
    80004554:	00008067          	ret

0000000080004558 <initlock>:
    80004558:	ff010113          	addi	sp,sp,-16
    8000455c:	00813423          	sd	s0,8(sp)
    80004560:	01010413          	addi	s0,sp,16
    80004564:	00813403          	ld	s0,8(sp)
    80004568:	00b53423          	sd	a1,8(a0)
    8000456c:	00052023          	sw	zero,0(a0)
    80004570:	00053823          	sd	zero,16(a0)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret

000000008000457c <acquire>:
    8000457c:	fe010113          	addi	sp,sp,-32
    80004580:	00813823          	sd	s0,16(sp)
    80004584:	00913423          	sd	s1,8(sp)
    80004588:	00113c23          	sd	ra,24(sp)
    8000458c:	01213023          	sd	s2,0(sp)
    80004590:	02010413          	addi	s0,sp,32
    80004594:	00050493          	mv	s1,a0
    80004598:	10002973          	csrr	s2,sstatus
    8000459c:	100027f3          	csrr	a5,sstatus
    800045a0:	ffd7f793          	andi	a5,a5,-3
    800045a4:	10079073          	csrw	sstatus,a5
    800045a8:	fffff097          	auipc	ra,0xfffff
    800045ac:	8ec080e7          	jalr	-1812(ra) # 80002e94 <mycpu>
    800045b0:	07852783          	lw	a5,120(a0)
    800045b4:	06078e63          	beqz	a5,80004630 <acquire+0xb4>
    800045b8:	fffff097          	auipc	ra,0xfffff
    800045bc:	8dc080e7          	jalr	-1828(ra) # 80002e94 <mycpu>
    800045c0:	07852783          	lw	a5,120(a0)
    800045c4:	0004a703          	lw	a4,0(s1)
    800045c8:	0017879b          	addiw	a5,a5,1
    800045cc:	06f52c23          	sw	a5,120(a0)
    800045d0:	04071063          	bnez	a4,80004610 <acquire+0x94>
    800045d4:	00100713          	li	a4,1
    800045d8:	00070793          	mv	a5,a4
    800045dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800045e0:	0007879b          	sext.w	a5,a5
    800045e4:	fe079ae3          	bnez	a5,800045d8 <acquire+0x5c>
    800045e8:	0ff0000f          	fence
    800045ec:	fffff097          	auipc	ra,0xfffff
    800045f0:	8a8080e7          	jalr	-1880(ra) # 80002e94 <mycpu>
    800045f4:	01813083          	ld	ra,24(sp)
    800045f8:	01013403          	ld	s0,16(sp)
    800045fc:	00a4b823          	sd	a0,16(s1)
    80004600:	00013903          	ld	s2,0(sp)
    80004604:	00813483          	ld	s1,8(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	00008067          	ret
    80004610:	0104b903          	ld	s2,16(s1)
    80004614:	fffff097          	auipc	ra,0xfffff
    80004618:	880080e7          	jalr	-1920(ra) # 80002e94 <mycpu>
    8000461c:	faa91ce3          	bne	s2,a0,800045d4 <acquire+0x58>
    80004620:	00001517          	auipc	a0,0x1
    80004624:	cc850513          	addi	a0,a0,-824 # 800052e8 <digits+0x20>
    80004628:	fffff097          	auipc	ra,0xfffff
    8000462c:	224080e7          	jalr	548(ra) # 8000384c <panic>
    80004630:	00195913          	srli	s2,s2,0x1
    80004634:	fffff097          	auipc	ra,0xfffff
    80004638:	860080e7          	jalr	-1952(ra) # 80002e94 <mycpu>
    8000463c:	00197913          	andi	s2,s2,1
    80004640:	07252e23          	sw	s2,124(a0)
    80004644:	f75ff06f          	j	800045b8 <acquire+0x3c>

0000000080004648 <release>:
    80004648:	fe010113          	addi	sp,sp,-32
    8000464c:	00813823          	sd	s0,16(sp)
    80004650:	00113c23          	sd	ra,24(sp)
    80004654:	00913423          	sd	s1,8(sp)
    80004658:	01213023          	sd	s2,0(sp)
    8000465c:	02010413          	addi	s0,sp,32
    80004660:	00052783          	lw	a5,0(a0)
    80004664:	00079a63          	bnez	a5,80004678 <release+0x30>
    80004668:	00001517          	auipc	a0,0x1
    8000466c:	c8850513          	addi	a0,a0,-888 # 800052f0 <digits+0x28>
    80004670:	fffff097          	auipc	ra,0xfffff
    80004674:	1dc080e7          	jalr	476(ra) # 8000384c <panic>
    80004678:	01053903          	ld	s2,16(a0)
    8000467c:	00050493          	mv	s1,a0
    80004680:	fffff097          	auipc	ra,0xfffff
    80004684:	814080e7          	jalr	-2028(ra) # 80002e94 <mycpu>
    80004688:	fea910e3          	bne	s2,a0,80004668 <release+0x20>
    8000468c:	0004b823          	sd	zero,16(s1)
    80004690:	0ff0000f          	fence
    80004694:	0f50000f          	fence	iorw,ow
    80004698:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000469c:	ffffe097          	auipc	ra,0xffffe
    800046a0:	7f8080e7          	jalr	2040(ra) # 80002e94 <mycpu>
    800046a4:	100027f3          	csrr	a5,sstatus
    800046a8:	0027f793          	andi	a5,a5,2
    800046ac:	04079a63          	bnez	a5,80004700 <release+0xb8>
    800046b0:	07852783          	lw	a5,120(a0)
    800046b4:	02f05e63          	blez	a5,800046f0 <release+0xa8>
    800046b8:	fff7871b          	addiw	a4,a5,-1
    800046bc:	06e52c23          	sw	a4,120(a0)
    800046c0:	00071c63          	bnez	a4,800046d8 <release+0x90>
    800046c4:	07c52783          	lw	a5,124(a0)
    800046c8:	00078863          	beqz	a5,800046d8 <release+0x90>
    800046cc:	100027f3          	csrr	a5,sstatus
    800046d0:	0027e793          	ori	a5,a5,2
    800046d4:	10079073          	csrw	sstatus,a5
    800046d8:	01813083          	ld	ra,24(sp)
    800046dc:	01013403          	ld	s0,16(sp)
    800046e0:	00813483          	ld	s1,8(sp)
    800046e4:	00013903          	ld	s2,0(sp)
    800046e8:	02010113          	addi	sp,sp,32
    800046ec:	00008067          	ret
    800046f0:	00001517          	auipc	a0,0x1
    800046f4:	c2050513          	addi	a0,a0,-992 # 80005310 <digits+0x48>
    800046f8:	fffff097          	auipc	ra,0xfffff
    800046fc:	154080e7          	jalr	340(ra) # 8000384c <panic>
    80004700:	00001517          	auipc	a0,0x1
    80004704:	bf850513          	addi	a0,a0,-1032 # 800052f8 <digits+0x30>
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	144080e7          	jalr	324(ra) # 8000384c <panic>

0000000080004710 <holding>:
    80004710:	00052783          	lw	a5,0(a0)
    80004714:	00079663          	bnez	a5,80004720 <holding+0x10>
    80004718:	00000513          	li	a0,0
    8000471c:	00008067          	ret
    80004720:	fe010113          	addi	sp,sp,-32
    80004724:	00813823          	sd	s0,16(sp)
    80004728:	00913423          	sd	s1,8(sp)
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	02010413          	addi	s0,sp,32
    80004734:	01053483          	ld	s1,16(a0)
    80004738:	ffffe097          	auipc	ra,0xffffe
    8000473c:	75c080e7          	jalr	1884(ra) # 80002e94 <mycpu>
    80004740:	01813083          	ld	ra,24(sp)
    80004744:	01013403          	ld	s0,16(sp)
    80004748:	40a48533          	sub	a0,s1,a0
    8000474c:	00153513          	seqz	a0,a0
    80004750:	00813483          	ld	s1,8(sp)
    80004754:	02010113          	addi	sp,sp,32
    80004758:	00008067          	ret

000000008000475c <push_off>:
    8000475c:	fe010113          	addi	sp,sp,-32
    80004760:	00813823          	sd	s0,16(sp)
    80004764:	00113c23          	sd	ra,24(sp)
    80004768:	00913423          	sd	s1,8(sp)
    8000476c:	02010413          	addi	s0,sp,32
    80004770:	100024f3          	csrr	s1,sstatus
    80004774:	100027f3          	csrr	a5,sstatus
    80004778:	ffd7f793          	andi	a5,a5,-3
    8000477c:	10079073          	csrw	sstatus,a5
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	714080e7          	jalr	1812(ra) # 80002e94 <mycpu>
    80004788:	07852783          	lw	a5,120(a0)
    8000478c:	02078663          	beqz	a5,800047b8 <push_off+0x5c>
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	704080e7          	jalr	1796(ra) # 80002e94 <mycpu>
    80004798:	07852783          	lw	a5,120(a0)
    8000479c:	01813083          	ld	ra,24(sp)
    800047a0:	01013403          	ld	s0,16(sp)
    800047a4:	0017879b          	addiw	a5,a5,1
    800047a8:	06f52c23          	sw	a5,120(a0)
    800047ac:	00813483          	ld	s1,8(sp)
    800047b0:	02010113          	addi	sp,sp,32
    800047b4:	00008067          	ret
    800047b8:	0014d493          	srli	s1,s1,0x1
    800047bc:	ffffe097          	auipc	ra,0xffffe
    800047c0:	6d8080e7          	jalr	1752(ra) # 80002e94 <mycpu>
    800047c4:	0014f493          	andi	s1,s1,1
    800047c8:	06952e23          	sw	s1,124(a0)
    800047cc:	fc5ff06f          	j	80004790 <push_off+0x34>

00000000800047d0 <pop_off>:
    800047d0:	ff010113          	addi	sp,sp,-16
    800047d4:	00813023          	sd	s0,0(sp)
    800047d8:	00113423          	sd	ra,8(sp)
    800047dc:	01010413          	addi	s0,sp,16
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	6b4080e7          	jalr	1716(ra) # 80002e94 <mycpu>
    800047e8:	100027f3          	csrr	a5,sstatus
    800047ec:	0027f793          	andi	a5,a5,2
    800047f0:	04079663          	bnez	a5,8000483c <pop_off+0x6c>
    800047f4:	07852783          	lw	a5,120(a0)
    800047f8:	02f05a63          	blez	a5,8000482c <pop_off+0x5c>
    800047fc:	fff7871b          	addiw	a4,a5,-1
    80004800:	06e52c23          	sw	a4,120(a0)
    80004804:	00071c63          	bnez	a4,8000481c <pop_off+0x4c>
    80004808:	07c52783          	lw	a5,124(a0)
    8000480c:	00078863          	beqz	a5,8000481c <pop_off+0x4c>
    80004810:	100027f3          	csrr	a5,sstatus
    80004814:	0027e793          	ori	a5,a5,2
    80004818:	10079073          	csrw	sstatus,a5
    8000481c:	00813083          	ld	ra,8(sp)
    80004820:	00013403          	ld	s0,0(sp)
    80004824:	01010113          	addi	sp,sp,16
    80004828:	00008067          	ret
    8000482c:	00001517          	auipc	a0,0x1
    80004830:	ae450513          	addi	a0,a0,-1308 # 80005310 <digits+0x48>
    80004834:	fffff097          	auipc	ra,0xfffff
    80004838:	018080e7          	jalr	24(ra) # 8000384c <panic>
    8000483c:	00001517          	auipc	a0,0x1
    80004840:	abc50513          	addi	a0,a0,-1348 # 800052f8 <digits+0x30>
    80004844:	fffff097          	auipc	ra,0xfffff
    80004848:	008080e7          	jalr	8(ra) # 8000384c <panic>

000000008000484c <push_on>:
    8000484c:	fe010113          	addi	sp,sp,-32
    80004850:	00813823          	sd	s0,16(sp)
    80004854:	00113c23          	sd	ra,24(sp)
    80004858:	00913423          	sd	s1,8(sp)
    8000485c:	02010413          	addi	s0,sp,32
    80004860:	100024f3          	csrr	s1,sstatus
    80004864:	100027f3          	csrr	a5,sstatus
    80004868:	0027e793          	ori	a5,a5,2
    8000486c:	10079073          	csrw	sstatus,a5
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	624080e7          	jalr	1572(ra) # 80002e94 <mycpu>
    80004878:	07852783          	lw	a5,120(a0)
    8000487c:	02078663          	beqz	a5,800048a8 <push_on+0x5c>
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	614080e7          	jalr	1556(ra) # 80002e94 <mycpu>
    80004888:	07852783          	lw	a5,120(a0)
    8000488c:	01813083          	ld	ra,24(sp)
    80004890:	01013403          	ld	s0,16(sp)
    80004894:	0017879b          	addiw	a5,a5,1
    80004898:	06f52c23          	sw	a5,120(a0)
    8000489c:	00813483          	ld	s1,8(sp)
    800048a0:	02010113          	addi	sp,sp,32
    800048a4:	00008067          	ret
    800048a8:	0014d493          	srli	s1,s1,0x1
    800048ac:	ffffe097          	auipc	ra,0xffffe
    800048b0:	5e8080e7          	jalr	1512(ra) # 80002e94 <mycpu>
    800048b4:	0014f493          	andi	s1,s1,1
    800048b8:	06952e23          	sw	s1,124(a0)
    800048bc:	fc5ff06f          	j	80004880 <push_on+0x34>

00000000800048c0 <pop_on>:
    800048c0:	ff010113          	addi	sp,sp,-16
    800048c4:	00813023          	sd	s0,0(sp)
    800048c8:	00113423          	sd	ra,8(sp)
    800048cc:	01010413          	addi	s0,sp,16
    800048d0:	ffffe097          	auipc	ra,0xffffe
    800048d4:	5c4080e7          	jalr	1476(ra) # 80002e94 <mycpu>
    800048d8:	100027f3          	csrr	a5,sstatus
    800048dc:	0027f793          	andi	a5,a5,2
    800048e0:	04078463          	beqz	a5,80004928 <pop_on+0x68>
    800048e4:	07852783          	lw	a5,120(a0)
    800048e8:	02f05863          	blez	a5,80004918 <pop_on+0x58>
    800048ec:	fff7879b          	addiw	a5,a5,-1
    800048f0:	06f52c23          	sw	a5,120(a0)
    800048f4:	07853783          	ld	a5,120(a0)
    800048f8:	00079863          	bnez	a5,80004908 <pop_on+0x48>
    800048fc:	100027f3          	csrr	a5,sstatus
    80004900:	ffd7f793          	andi	a5,a5,-3
    80004904:	10079073          	csrw	sstatus,a5
    80004908:	00813083          	ld	ra,8(sp)
    8000490c:	00013403          	ld	s0,0(sp)
    80004910:	01010113          	addi	sp,sp,16
    80004914:	00008067          	ret
    80004918:	00001517          	auipc	a0,0x1
    8000491c:	a2050513          	addi	a0,a0,-1504 # 80005338 <digits+0x70>
    80004920:	fffff097          	auipc	ra,0xfffff
    80004924:	f2c080e7          	jalr	-212(ra) # 8000384c <panic>
    80004928:	00001517          	auipc	a0,0x1
    8000492c:	9f050513          	addi	a0,a0,-1552 # 80005318 <digits+0x50>
    80004930:	fffff097          	auipc	ra,0xfffff
    80004934:	f1c080e7          	jalr	-228(ra) # 8000384c <panic>

0000000080004938 <__memset>:
    80004938:	ff010113          	addi	sp,sp,-16
    8000493c:	00813423          	sd	s0,8(sp)
    80004940:	01010413          	addi	s0,sp,16
    80004944:	1a060e63          	beqz	a2,80004b00 <__memset+0x1c8>
    80004948:	40a007b3          	neg	a5,a0
    8000494c:	0077f793          	andi	a5,a5,7
    80004950:	00778693          	addi	a3,a5,7
    80004954:	00b00813          	li	a6,11
    80004958:	0ff5f593          	andi	a1,a1,255
    8000495c:	fff6071b          	addiw	a4,a2,-1
    80004960:	1b06e663          	bltu	a3,a6,80004b0c <__memset+0x1d4>
    80004964:	1cd76463          	bltu	a4,a3,80004b2c <__memset+0x1f4>
    80004968:	1a078e63          	beqz	a5,80004b24 <__memset+0x1ec>
    8000496c:	00b50023          	sb	a1,0(a0)
    80004970:	00100713          	li	a4,1
    80004974:	1ae78463          	beq	a5,a4,80004b1c <__memset+0x1e4>
    80004978:	00b500a3          	sb	a1,1(a0)
    8000497c:	00200713          	li	a4,2
    80004980:	1ae78a63          	beq	a5,a4,80004b34 <__memset+0x1fc>
    80004984:	00b50123          	sb	a1,2(a0)
    80004988:	00300713          	li	a4,3
    8000498c:	18e78463          	beq	a5,a4,80004b14 <__memset+0x1dc>
    80004990:	00b501a3          	sb	a1,3(a0)
    80004994:	00400713          	li	a4,4
    80004998:	1ae78263          	beq	a5,a4,80004b3c <__memset+0x204>
    8000499c:	00b50223          	sb	a1,4(a0)
    800049a0:	00500713          	li	a4,5
    800049a4:	1ae78063          	beq	a5,a4,80004b44 <__memset+0x20c>
    800049a8:	00b502a3          	sb	a1,5(a0)
    800049ac:	00700713          	li	a4,7
    800049b0:	18e79e63          	bne	a5,a4,80004b4c <__memset+0x214>
    800049b4:	00b50323          	sb	a1,6(a0)
    800049b8:	00700e93          	li	t4,7
    800049bc:	00859713          	slli	a4,a1,0x8
    800049c0:	00e5e733          	or	a4,a1,a4
    800049c4:	01059e13          	slli	t3,a1,0x10
    800049c8:	01c76e33          	or	t3,a4,t3
    800049cc:	01859313          	slli	t1,a1,0x18
    800049d0:	006e6333          	or	t1,t3,t1
    800049d4:	02059893          	slli	a7,a1,0x20
    800049d8:	40f60e3b          	subw	t3,a2,a5
    800049dc:	011368b3          	or	a7,t1,a7
    800049e0:	02859813          	slli	a6,a1,0x28
    800049e4:	0108e833          	or	a6,a7,a6
    800049e8:	03059693          	slli	a3,a1,0x30
    800049ec:	003e589b          	srliw	a7,t3,0x3
    800049f0:	00d866b3          	or	a3,a6,a3
    800049f4:	03859713          	slli	a4,a1,0x38
    800049f8:	00389813          	slli	a6,a7,0x3
    800049fc:	00f507b3          	add	a5,a0,a5
    80004a00:	00e6e733          	or	a4,a3,a4
    80004a04:	000e089b          	sext.w	a7,t3
    80004a08:	00f806b3          	add	a3,a6,a5
    80004a0c:	00e7b023          	sd	a4,0(a5)
    80004a10:	00878793          	addi	a5,a5,8
    80004a14:	fed79ce3          	bne	a5,a3,80004a0c <__memset+0xd4>
    80004a18:	ff8e7793          	andi	a5,t3,-8
    80004a1c:	0007871b          	sext.w	a4,a5
    80004a20:	01d787bb          	addw	a5,a5,t4
    80004a24:	0ce88e63          	beq	a7,a4,80004b00 <__memset+0x1c8>
    80004a28:	00f50733          	add	a4,a0,a5
    80004a2c:	00b70023          	sb	a1,0(a4)
    80004a30:	0017871b          	addiw	a4,a5,1
    80004a34:	0cc77663          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004a38:	00e50733          	add	a4,a0,a4
    80004a3c:	00b70023          	sb	a1,0(a4)
    80004a40:	0027871b          	addiw	a4,a5,2
    80004a44:	0ac77e63          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004a48:	00e50733          	add	a4,a0,a4
    80004a4c:	00b70023          	sb	a1,0(a4)
    80004a50:	0037871b          	addiw	a4,a5,3
    80004a54:	0ac77663          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004a58:	00e50733          	add	a4,a0,a4
    80004a5c:	00b70023          	sb	a1,0(a4)
    80004a60:	0047871b          	addiw	a4,a5,4
    80004a64:	08c77e63          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004a68:	00e50733          	add	a4,a0,a4
    80004a6c:	00b70023          	sb	a1,0(a4)
    80004a70:	0057871b          	addiw	a4,a5,5
    80004a74:	08c77663          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004a78:	00e50733          	add	a4,a0,a4
    80004a7c:	00b70023          	sb	a1,0(a4)
    80004a80:	0067871b          	addiw	a4,a5,6
    80004a84:	06c77e63          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004a88:	00e50733          	add	a4,a0,a4
    80004a8c:	00b70023          	sb	a1,0(a4)
    80004a90:	0077871b          	addiw	a4,a5,7
    80004a94:	06c77663          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004a98:	00e50733          	add	a4,a0,a4
    80004a9c:	00b70023          	sb	a1,0(a4)
    80004aa0:	0087871b          	addiw	a4,a5,8
    80004aa4:	04c77e63          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004aa8:	00e50733          	add	a4,a0,a4
    80004aac:	00b70023          	sb	a1,0(a4)
    80004ab0:	0097871b          	addiw	a4,a5,9
    80004ab4:	04c77663          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004ab8:	00e50733          	add	a4,a0,a4
    80004abc:	00b70023          	sb	a1,0(a4)
    80004ac0:	00a7871b          	addiw	a4,a5,10
    80004ac4:	02c77e63          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004ac8:	00e50733          	add	a4,a0,a4
    80004acc:	00b70023          	sb	a1,0(a4)
    80004ad0:	00b7871b          	addiw	a4,a5,11
    80004ad4:	02c77663          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004ad8:	00e50733          	add	a4,a0,a4
    80004adc:	00b70023          	sb	a1,0(a4)
    80004ae0:	00c7871b          	addiw	a4,a5,12
    80004ae4:	00c77e63          	bgeu	a4,a2,80004b00 <__memset+0x1c8>
    80004ae8:	00e50733          	add	a4,a0,a4
    80004aec:	00b70023          	sb	a1,0(a4)
    80004af0:	00d7879b          	addiw	a5,a5,13
    80004af4:	00c7f663          	bgeu	a5,a2,80004b00 <__memset+0x1c8>
    80004af8:	00f507b3          	add	a5,a0,a5
    80004afc:	00b78023          	sb	a1,0(a5)
    80004b00:	00813403          	ld	s0,8(sp)
    80004b04:	01010113          	addi	sp,sp,16
    80004b08:	00008067          	ret
    80004b0c:	00b00693          	li	a3,11
    80004b10:	e55ff06f          	j	80004964 <__memset+0x2c>
    80004b14:	00300e93          	li	t4,3
    80004b18:	ea5ff06f          	j	800049bc <__memset+0x84>
    80004b1c:	00100e93          	li	t4,1
    80004b20:	e9dff06f          	j	800049bc <__memset+0x84>
    80004b24:	00000e93          	li	t4,0
    80004b28:	e95ff06f          	j	800049bc <__memset+0x84>
    80004b2c:	00000793          	li	a5,0
    80004b30:	ef9ff06f          	j	80004a28 <__memset+0xf0>
    80004b34:	00200e93          	li	t4,2
    80004b38:	e85ff06f          	j	800049bc <__memset+0x84>
    80004b3c:	00400e93          	li	t4,4
    80004b40:	e7dff06f          	j	800049bc <__memset+0x84>
    80004b44:	00500e93          	li	t4,5
    80004b48:	e75ff06f          	j	800049bc <__memset+0x84>
    80004b4c:	00600e93          	li	t4,6
    80004b50:	e6dff06f          	j	800049bc <__memset+0x84>

0000000080004b54 <__memmove>:
    80004b54:	ff010113          	addi	sp,sp,-16
    80004b58:	00813423          	sd	s0,8(sp)
    80004b5c:	01010413          	addi	s0,sp,16
    80004b60:	0e060863          	beqz	a2,80004c50 <__memmove+0xfc>
    80004b64:	fff6069b          	addiw	a3,a2,-1
    80004b68:	0006881b          	sext.w	a6,a3
    80004b6c:	0ea5e863          	bltu	a1,a0,80004c5c <__memmove+0x108>
    80004b70:	00758713          	addi	a4,a1,7
    80004b74:	00a5e7b3          	or	a5,a1,a0
    80004b78:	40a70733          	sub	a4,a4,a0
    80004b7c:	0077f793          	andi	a5,a5,7
    80004b80:	00f73713          	sltiu	a4,a4,15
    80004b84:	00174713          	xori	a4,a4,1
    80004b88:	0017b793          	seqz	a5,a5
    80004b8c:	00e7f7b3          	and	a5,a5,a4
    80004b90:	10078863          	beqz	a5,80004ca0 <__memmove+0x14c>
    80004b94:	00900793          	li	a5,9
    80004b98:	1107f463          	bgeu	a5,a6,80004ca0 <__memmove+0x14c>
    80004b9c:	0036581b          	srliw	a6,a2,0x3
    80004ba0:	fff8081b          	addiw	a6,a6,-1
    80004ba4:	02081813          	slli	a6,a6,0x20
    80004ba8:	01d85893          	srli	a7,a6,0x1d
    80004bac:	00858813          	addi	a6,a1,8
    80004bb0:	00058793          	mv	a5,a1
    80004bb4:	00050713          	mv	a4,a0
    80004bb8:	01088833          	add	a6,a7,a6
    80004bbc:	0007b883          	ld	a7,0(a5)
    80004bc0:	00878793          	addi	a5,a5,8
    80004bc4:	00870713          	addi	a4,a4,8
    80004bc8:	ff173c23          	sd	a7,-8(a4)
    80004bcc:	ff0798e3          	bne	a5,a6,80004bbc <__memmove+0x68>
    80004bd0:	ff867713          	andi	a4,a2,-8
    80004bd4:	02071793          	slli	a5,a4,0x20
    80004bd8:	0207d793          	srli	a5,a5,0x20
    80004bdc:	00f585b3          	add	a1,a1,a5
    80004be0:	40e686bb          	subw	a3,a3,a4
    80004be4:	00f507b3          	add	a5,a0,a5
    80004be8:	06e60463          	beq	a2,a4,80004c50 <__memmove+0xfc>
    80004bec:	0005c703          	lbu	a4,0(a1)
    80004bf0:	00e78023          	sb	a4,0(a5)
    80004bf4:	04068e63          	beqz	a3,80004c50 <__memmove+0xfc>
    80004bf8:	0015c603          	lbu	a2,1(a1)
    80004bfc:	00100713          	li	a4,1
    80004c00:	00c780a3          	sb	a2,1(a5)
    80004c04:	04e68663          	beq	a3,a4,80004c50 <__memmove+0xfc>
    80004c08:	0025c603          	lbu	a2,2(a1)
    80004c0c:	00200713          	li	a4,2
    80004c10:	00c78123          	sb	a2,2(a5)
    80004c14:	02e68e63          	beq	a3,a4,80004c50 <__memmove+0xfc>
    80004c18:	0035c603          	lbu	a2,3(a1)
    80004c1c:	00300713          	li	a4,3
    80004c20:	00c781a3          	sb	a2,3(a5)
    80004c24:	02e68663          	beq	a3,a4,80004c50 <__memmove+0xfc>
    80004c28:	0045c603          	lbu	a2,4(a1)
    80004c2c:	00400713          	li	a4,4
    80004c30:	00c78223          	sb	a2,4(a5)
    80004c34:	00e68e63          	beq	a3,a4,80004c50 <__memmove+0xfc>
    80004c38:	0055c603          	lbu	a2,5(a1)
    80004c3c:	00500713          	li	a4,5
    80004c40:	00c782a3          	sb	a2,5(a5)
    80004c44:	00e68663          	beq	a3,a4,80004c50 <__memmove+0xfc>
    80004c48:	0065c703          	lbu	a4,6(a1)
    80004c4c:	00e78323          	sb	a4,6(a5)
    80004c50:	00813403          	ld	s0,8(sp)
    80004c54:	01010113          	addi	sp,sp,16
    80004c58:	00008067          	ret
    80004c5c:	02061713          	slli	a4,a2,0x20
    80004c60:	02075713          	srli	a4,a4,0x20
    80004c64:	00e587b3          	add	a5,a1,a4
    80004c68:	f0f574e3          	bgeu	a0,a5,80004b70 <__memmove+0x1c>
    80004c6c:	02069613          	slli	a2,a3,0x20
    80004c70:	02065613          	srli	a2,a2,0x20
    80004c74:	fff64613          	not	a2,a2
    80004c78:	00e50733          	add	a4,a0,a4
    80004c7c:	00c78633          	add	a2,a5,a2
    80004c80:	fff7c683          	lbu	a3,-1(a5)
    80004c84:	fff78793          	addi	a5,a5,-1
    80004c88:	fff70713          	addi	a4,a4,-1
    80004c8c:	00d70023          	sb	a3,0(a4)
    80004c90:	fec798e3          	bne	a5,a2,80004c80 <__memmove+0x12c>
    80004c94:	00813403          	ld	s0,8(sp)
    80004c98:	01010113          	addi	sp,sp,16
    80004c9c:	00008067          	ret
    80004ca0:	02069713          	slli	a4,a3,0x20
    80004ca4:	02075713          	srli	a4,a4,0x20
    80004ca8:	00170713          	addi	a4,a4,1
    80004cac:	00e50733          	add	a4,a0,a4
    80004cb0:	00050793          	mv	a5,a0
    80004cb4:	0005c683          	lbu	a3,0(a1)
    80004cb8:	00178793          	addi	a5,a5,1
    80004cbc:	00158593          	addi	a1,a1,1
    80004cc0:	fed78fa3          	sb	a3,-1(a5)
    80004cc4:	fee798e3          	bne	a5,a4,80004cb4 <__memmove+0x160>
    80004cc8:	f89ff06f          	j	80004c50 <__memmove+0xfc>

0000000080004ccc <__putc>:
    80004ccc:	fe010113          	addi	sp,sp,-32
    80004cd0:	00813823          	sd	s0,16(sp)
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	02010413          	addi	s0,sp,32
    80004cdc:	00050793          	mv	a5,a0
    80004ce0:	fef40593          	addi	a1,s0,-17
    80004ce4:	00100613          	li	a2,1
    80004ce8:	00000513          	li	a0,0
    80004cec:	fef407a3          	sb	a5,-17(s0)
    80004cf0:	fffff097          	auipc	ra,0xfffff
    80004cf4:	b3c080e7          	jalr	-1220(ra) # 8000382c <console_write>
    80004cf8:	01813083          	ld	ra,24(sp)
    80004cfc:	01013403          	ld	s0,16(sp)
    80004d00:	02010113          	addi	sp,sp,32
    80004d04:	00008067          	ret

0000000080004d08 <__getc>:
    80004d08:	fe010113          	addi	sp,sp,-32
    80004d0c:	00813823          	sd	s0,16(sp)
    80004d10:	00113c23          	sd	ra,24(sp)
    80004d14:	02010413          	addi	s0,sp,32
    80004d18:	fe840593          	addi	a1,s0,-24
    80004d1c:	00100613          	li	a2,1
    80004d20:	00000513          	li	a0,0
    80004d24:	fffff097          	auipc	ra,0xfffff
    80004d28:	ae8080e7          	jalr	-1304(ra) # 8000380c <console_read>
    80004d2c:	fe844503          	lbu	a0,-24(s0)
    80004d30:	01813083          	ld	ra,24(sp)
    80004d34:	01013403          	ld	s0,16(sp)
    80004d38:	02010113          	addi	sp,sp,32
    80004d3c:	00008067          	ret

0000000080004d40 <console_handler>:
    80004d40:	fe010113          	addi	sp,sp,-32
    80004d44:	00813823          	sd	s0,16(sp)
    80004d48:	00113c23          	sd	ra,24(sp)
    80004d4c:	00913423          	sd	s1,8(sp)
    80004d50:	02010413          	addi	s0,sp,32
    80004d54:	14202773          	csrr	a4,scause
    80004d58:	100027f3          	csrr	a5,sstatus
    80004d5c:	0027f793          	andi	a5,a5,2
    80004d60:	06079e63          	bnez	a5,80004ddc <console_handler+0x9c>
    80004d64:	00074c63          	bltz	a4,80004d7c <console_handler+0x3c>
    80004d68:	01813083          	ld	ra,24(sp)
    80004d6c:	01013403          	ld	s0,16(sp)
    80004d70:	00813483          	ld	s1,8(sp)
    80004d74:	02010113          	addi	sp,sp,32
    80004d78:	00008067          	ret
    80004d7c:	0ff77713          	andi	a4,a4,255
    80004d80:	00900793          	li	a5,9
    80004d84:	fef712e3          	bne	a4,a5,80004d68 <console_handler+0x28>
    80004d88:	ffffe097          	auipc	ra,0xffffe
    80004d8c:	6dc080e7          	jalr	1756(ra) # 80003464 <plic_claim>
    80004d90:	00a00793          	li	a5,10
    80004d94:	00050493          	mv	s1,a0
    80004d98:	02f50c63          	beq	a0,a5,80004dd0 <console_handler+0x90>
    80004d9c:	fc0506e3          	beqz	a0,80004d68 <console_handler+0x28>
    80004da0:	00050593          	mv	a1,a0
    80004da4:	00000517          	auipc	a0,0x0
    80004da8:	49c50513          	addi	a0,a0,1180 # 80005240 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004dac:	fffff097          	auipc	ra,0xfffff
    80004db0:	afc080e7          	jalr	-1284(ra) # 800038a8 <__printf>
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	01813083          	ld	ra,24(sp)
    80004dbc:	00048513          	mv	a0,s1
    80004dc0:	00813483          	ld	s1,8(sp)
    80004dc4:	02010113          	addi	sp,sp,32
    80004dc8:	ffffe317          	auipc	t1,0xffffe
    80004dcc:	6d430067          	jr	1748(t1) # 8000349c <plic_complete>
    80004dd0:	fffff097          	auipc	ra,0xfffff
    80004dd4:	3e0080e7          	jalr	992(ra) # 800041b0 <uartintr>
    80004dd8:	fddff06f          	j	80004db4 <console_handler+0x74>
    80004ddc:	00000517          	auipc	a0,0x0
    80004de0:	56450513          	addi	a0,a0,1380 # 80005340 <digits+0x78>
    80004de4:	fffff097          	auipc	ra,0xfffff
    80004de8:	a68080e7          	jalr	-1432(ra) # 8000384c <panic>
	...
