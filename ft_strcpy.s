section     .text
global  _ft_strcpy
_ft_strcpy:
    mov r12, -1
    loop:
        inc r12
        mov r11, [rsi + r12]
        mov [rdi + r12], r11
        cmp byte [rdi + r12], 0x0
        jne loop
    mov r11, [rsi + r12]
    mov [rdi + r12], r11
    mov rax, rdi
ret