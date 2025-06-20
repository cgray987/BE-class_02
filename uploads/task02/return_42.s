global _start

section .text
_start:
    mov rax, 60         ;syscall number
    mov rdi, 42         ;add 42 to register
    syscall             ;make syscall