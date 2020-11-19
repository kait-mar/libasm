section .text
extern  ___error
global  _ft_read
_ft_read:
    mov rax, 0x2000003
    syscall
    jc     _error
    ret

_error:
            mov         r12, rax            ; put rax value in r12
            call        ___error            ; put value in erno
            mov         [rax], r12          ; put errno in return value of __error (pointer to errno)
            mov         rax, -1
            ret