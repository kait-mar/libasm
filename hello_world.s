;global  _main
   ;extern  _printf

    ;section .text
;_main:
  ;  push    message
   ; call    _printf
   ; add     esp, 4
   ; ret
;message:
  ;  db      'Hello, World', 10, 0

section .text
global _start
_start:
  mov rax, 0x2000004 ; write
  mov rdi, 1 ; stdout
  mov rsi, msg
  mov rdx, msg.len
  syscall
  mov rax, 0x2000001 ; exit
  mov rdi, 0
  syscall
section .data
msg:    db      "Hello, world!", 10
.len:   equ     $ - msg