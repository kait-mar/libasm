section .text
global  _ft_read
_ft_read:
    mov rax, 0x2000003
    syscall
cmp rax, 0
jl  _perror
ret