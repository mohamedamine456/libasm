global		_ft_strdup
extern		_malloc


section		.text
	_ft_strdup:
		mov		rsi, rdi
	_ft_strlen:
		mov		rbx, 0
		mov		cl, [rdi]
		cmp		cl, 0
		je		_finish
	_counter:
		inc		rdi
		inc		rbx
		mov		cl, [rdi]
		cmp		cl, 0
		jne		_counter
	_finish:
		mov		rdi, rbx
		push	rbx
		push	rsi
		sub		rsp, 8	
		call	_malloc
		add		rsp, 8
		pop		rsi
		pop		rbx
		mov		rax, rdi

	_ft_strcpy:
		jmp		_copy_src
	_copy_src:
		mov		cl, [rsi]
		mov		[rdi], cl
		inc		rsi
		inc		rdi
		cmp		cl, 0
		jne		_copy_src
		
		mov		rax, rdi
		ret
