SYS_WRITE   equ 0x02000004

global		_ft_write

section		.text
	_ft_write:
		mov		rax, SYS_WRITE
		syscall
		ret