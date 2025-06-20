global _start

section .data
  path: db "/bin/sh", 0
  argv: dq path, 0

section .text
_start:

  mov rax, 59               ; execve(
  lea rdi, [rel path]       ;   path="bin/sh"
  lea rsi, [rel argv]       ; argv
  xor rdx, rdx              ; envp = NULL
  syscall                   ; );
