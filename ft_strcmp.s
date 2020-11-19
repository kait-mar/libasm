section .text
global  _ft_strcmp
_ft_strcmp:
			xor		rcx, rcx
			xor		rdx, rdx	
			cmp		rdi, 0	
			jz		if_null
			cmp		rsi, 0
			jz		if_null
			jmp		loop
if_null:
			cmp		rdi, rsi
			jz		equal	
			jg		positif
			jmp		negatif
compare:
			mov		dl, BYTE [rsi + rcx]
			cmp		BYTE [rdi + rcx], dl
			jne		last
increment:
			inc		rcx
loop:
			cmp		BYTE [rdi + rcx], 0	
			je		last
			cmp		BYTE [rsi + rcx], 0	
			je		last
			jmp		compare
last:
			mov		dl, BYTE [rdi + rcx]
			sub		dl, BYTE [rsi + rcx]
			cmp		dl, 0		
			jz		equal
			jl		negatif
positif:
			mov		rax, 1
			ret
negatif:
		mov		rax, -1
			ret
equal:
			mov		rax, 0
			ret