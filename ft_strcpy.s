global		_ft_strcpy

section		.text
	_ft_strcpy:
		;cmp		rsi, 0x00
		;je		_src_is_null
		;cmp		rdi, 0x00
		;je		_dest_is_null	
	_copy_src:
		mov		cl, [rsi]
		mov		[rdi], cl
		inc		rsi
		inc		rdi
		cmp		cl, 0
		jne		_copy_src
		ret

	_src_is_null:
		mov		rax, rdi
		ret

	_dest_is_null:
		mov		rax, rsi
		ret

