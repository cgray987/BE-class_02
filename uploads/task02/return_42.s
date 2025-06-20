BITS 32

global _start

section .text
_start:
    mov eax, 1
    mov ebx, 42        ; Store 42 in AX (16-bit register)
    int 0x80