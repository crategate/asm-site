.data

message:
  .ascii "hii\n"

var:
  .ascii "new\n"
.text

.global _start

_start:
  mov x0, #1
  ldr x1, =message
  mov x2, #4
  mov w8, #64
  svc #0

  mov x0, #1
  ldr x1, =var
  mov w8, #64

  svc #0
  b .

