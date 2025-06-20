global _start

section .text
_start:
  mov rax, 59               ; execve(
  lea rdi, [rel binsh]       ;   path="bin/sh"
  lea rsi, [rel argv]       ; argv
  xor rdx, rdx              ; envp = NULL
  syscall                   ; );

binsh:  db "/bin/sh", 0
argv:   dq binsh, 0