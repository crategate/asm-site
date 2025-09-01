.data

message:
  .ascii "hii\n"

.text

.global _start

_start:
  mov x0, #1
  ldr x1, =message
  mov x2, #4
  mov w8, #64
  svc #0
  b .

