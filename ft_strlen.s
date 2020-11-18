global		_ft_strlen

section		.text
	_ft_strlen:
		mov		rbx, 0
		movzx	r8, byte[rdi]
		cmp		r8, 0
		je		_finish
	_counter:
		add		rdi, 1
		add		rbx, 1
		movzx	r8, byte[rdi]
		cmp		r8, 0
		jne		_counter
		call	_finish
	_finish:
		mov		rax, rbx
		ret
