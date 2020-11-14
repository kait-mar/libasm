          global    ft_strlen

                section     .text
            push    rax
            push    rsi
ft_strlen:
    mov         rax, 0

    if:
    mov         eax, [eax+8]
    inc         rax
    cmp         rsi, 0x0
    jnz         if
        ret





section .text
    [GLOBAL ft_strlen:]

ft_strlen:
    mov ebp, esp

    mov edx, [ebp+8]    ; the string
    xor eax, eax        ; loop counter

    jmp if

then:
    inc eax

if:
    mov cl, [edx+eax]
    cmp cl, 0x0
    jne then

end:
    ret