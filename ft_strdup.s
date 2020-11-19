section .text
extern _malloc
global  _ft_strdup

_ft_strdup:									; rdi = src
			cmp		rdi, 0
			jz		error					; src is NULL
length:
			xor		rcx, rcx				; i = 0
			jmp		len_compare
increment:
			inc		rcx						; i++
len_compare:
			cmp		BYTE [rdi + rcx], 0		; str[i] == 0
			jne		increment
allocate:
			inc		rcx						; length++
			push	rdi						; save src
			mov		rdi, rcx
			call	_malloc					; rax = _malloc(length)
			pop		rdi						; restore src
			cmp		rax, 0
			jz		error					; malloc return NULL
start:
			xor		rcx, rcx				; i = 0
			xor		rdx, rdx				; tmp = 0
			jmp		start_copy
copy:
			inc		rcx
start_copy:
			mov		dl, BYTE [rdi + rcx]
			mov		BYTE [rax + rcx], dl
			cmp		dl, 0
			jnz		copy
			jmp		return
error:
mov         r12, 12          ; put errno in return value of __error (pointer to errno)
			mov         [rax], r12
            mov         rax, 0
            ret

return:
			ret