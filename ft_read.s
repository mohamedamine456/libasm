SYS_READ   equ 0x02000003

global		_ft_read
extern		___error

section		.text
	_ft_read:
		mov		rax, SYS_READ
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
