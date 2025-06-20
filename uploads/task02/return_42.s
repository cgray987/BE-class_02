global _start

section .text
_start:
    mov ebx, 42
    
    mov eax, 1
    int 0x80