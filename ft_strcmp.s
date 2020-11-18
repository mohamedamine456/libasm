global		_ft_strcmp

section		.text
	_ft_strcmp:
	_compare:
		movzx	r8, byte[rdi]
		movzx	r9, byte[rsi]	
		cmp		r8, 0
		je		_rdi_done
		cmp		r9, 0
		je		_rsi_done
		cmp		r8, r9
		jne		_not_equal
		inc		rdi
		inc		rsi
		jmp	_compare

	_not_equal:
		cmp		r8, r9
		jl		_finish_rsi_greater
		cmp		r8, r9
		jg		_finish_rdi_greater

	_rsi_done:
		cmp		r8, 0
		je		_finish_equal
		cmp		r8, 0
		jne		_finish_rdi_greater
	
	_rdi_done:
		cmp		r9, 0
		je		_finish_equal
		cmp		r9, 0
		jne		_finish_rsi_greater

	_finish_equal:
		mov		rax, 0
		ret
	
	_finish_rdi_greater:
		mov		rax, 1
		ret
	
	_finish_rsi_greater:
		mov		rax, -1
		ret
