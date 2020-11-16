

section .text
global _my_strlen:

_my_strlen:
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