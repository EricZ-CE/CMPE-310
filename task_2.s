.globl ram
.lcomm ram, 256

.section .text
.globl ff_ram

ff_ram:

    leaq ram+0x50, %rax
    leaq ram+0x58, %rbx

    address_loop:
        movb $0xFF, %rax
        incq %rax
        cmpq %rbx, %rax
        jle address_loop

    ret

.section .note.GNU-stack,"",@progbits