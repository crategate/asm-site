.data

.text
.global _start

_start:
  mov x0, #42
  mov x7, #1
  svc #0
  b .
