SYS_WRITE   equ 0x02000004

global		_ft_write
extern		___error

section		.text
	_ft_write:
		mov		rax, SYS_WRITE
		syscall
		jc		_error
		ret

	_error:
		push	rax
		call	___error
		pop		r8
		mov		[rax], r8
		mov		rax, -1
		ret
