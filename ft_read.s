section .text
global  _ft_read
_ft_read:
    mov rax, 0x2000003
    syscall
    jc     _error
    ret

_error:
            mov         r15, rax            ; save errno
            call       extern ___error            ; retrieve address to errno
            mov         [rax], r15          ; put errno in return value of __error (pointer to errno)
            mov         rax, -1
            ret

;error:
      ;  mov         rax, -1
      ;  ret