format ELF64 executable 3

segment readable executable

entry main

main:
  lea   rdi, [msg]      ; address of msg to rdi
  mov   rax, 16         ;put length of msg to rax
  mov   rdx, rax        ;rax to rdx
  mov   rsi, rdi
  mov   rdi, 1          ; std out
  mov   rax, 1          ; sys_write
  syscall
  xor   rdi, rdi      ; exit code 0
  mov   rax, 60       ; sys_exit


segment readable writeable


msg   db 'hell u made it' , 10, 0
