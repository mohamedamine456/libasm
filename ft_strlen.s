global		_ft_strlen

section		.text
	_ft_strlen:
		mov		rbx, 0
		;cmp		rdi, 0x00
		;je		_finish
		mov		cl, [rdi]
		cmp		cl, 0
		je		_finish
	_counter:
		inc		rdi
		inc		rbx
		mov		cl, [rdi]
		cmp		cl, 0
		jne		_counter
		call	_finish
	_finish:
		mov		rax, rbx
		ret
