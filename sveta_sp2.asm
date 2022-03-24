
global _start

section .data
arr1 db 01100100b, 11001000b, 11111111b, 10001010b, 00000001b, 00001010b, 10001000b, 10101010b, 11111010b, 11110000b

section .bss
arr2 resb 10

section .text
_start:
	mov ecx, 10
	mov esi, arr1
	mov edi, arr2
	xor eax, eax

lp1:
	lodsb
	or eax, 01101011b
	stosb
	loop lp1

	mov ecx, 10
	mov esi, arr2
	xor ebx, ebx
	jmp lp2

add_count:
        add ebx, 1
        loop lp2

lp2:
	lodsb
	bt eax, 7
	jae add_count
	loop lp2

end:
	mov eax, 1
	mov ebx, 0
	int 0x80

