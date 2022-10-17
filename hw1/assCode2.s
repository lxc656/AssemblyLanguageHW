	global	gauss 
	global	addbyloop 
 
	SECTION .text 
; argument rdi: unsigned  
; return rax:  ulong 
gauss: 
	mov rax,rdi 
	inc rax 
	mul rdi 
	shr rax,1 
	ret 
 
; arguments as gauss 
; used: rcx, which is scrap in ABI64, needs not to be saved 
addbyloop: 
	xor rax,rax 
	mov rcx,rdi 
.loop: 
	add rax,rcx 
	loop .loop 
	ret 