global		_ft_strcmp

section		.text
	_ft_strcmp:
	_compare:
		mov		al, [rdi]
		mov		cl, [rsi]	
		cmp		al, 0
		je		_rdi_done
		cmp		cl, 0
		je		_rsi_done
		cmp		al, cl
		jne		_not_equal
		inc		rdi
		inc		rsi
		jmp	_compare

	_not_equal:
		cmp		al, cl
		jl		_finish_rsi_greater
		cmp		al, cl
		jg		_finish_rdi_greater

	_rsi_done:
		cmp		al, 0
		je		_finish_equal
		cmp		al, 0
		jne		_finish_rdi_greater
	
	_rdi_done:
		cmp		cl, 0
		je		_finish_equal
		cmp		cl, 0
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
