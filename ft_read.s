SYS_READ   equ 0x02000003

global		_ft_read

section		.bss
	num:	resb 0

section		.text
	_ft_read:
		mov		rax, SYS_READ
		syscall
		ret
