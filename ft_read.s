SYS_READ   equ 0x02000003

global		_ft_read

section		.text
	_ft_read:
		mov		rax, SYS_READ
		syscall
		jc		_error
		ret

	_error:
		mov		rax, -1
		ret
