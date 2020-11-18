global		_ft_strcpy

section		.text
	_ft_strcpy:
		mov		rax, rdi
	_copy_src:
		movzx	r8, byte[rsi]
		mov		[rdi], r8
		add		rsi, 1
		add		rdi, 1
		cmp		r8, 0
		jne		_copy_src
		ret
