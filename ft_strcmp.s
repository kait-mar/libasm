section .text
global  _ft_strcmp
_ft_strcmp:
    mov r12, -1
    loop1:
        inc r12
        mov r11, [rdi + r12]
        sub r11, [rsi + r12]
        cmp r11, 0
        je  loop1
    cmp r11, 0
    mov rax, r11
ret
 ;add a condition of if (s1[i] != '\0' && s2[i] != '\0)