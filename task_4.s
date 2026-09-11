.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl ff_ram

ff_ram:

    movb $1, %ah
    movb $0, %al

    sum_loop:
        addb %ah, %al
        incb %ah
        cmpb $10, %ah
        jle sum_loop

    movb %al, ram+0x50

    ret

.section .note.GNU-stack,"",@progbits