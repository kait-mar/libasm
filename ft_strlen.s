section     .text
global    _ft_strlen
_ft_strlen:

    mov         r12, -1
    jmp     if
    if:
        inc         r12
        cmp        byte [rdi + r12], 0x0
        jne         if

    mov         rax, r12
ret