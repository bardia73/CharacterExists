global exists
exists:
        push    ebp             ; create stack frame
        mov     ebp, esp
        mov     eax, [ebp+8]    ; grab the first argument
        mov     ecx, [ebp+12]   ; grab the second argument

	;mov edx,0
	;mov	edx, [eax]
	;mov eax, edx
        ;pop     ebp             
        ;ret

LOOP:
        mov     edx, [eax]        ; sum the arguments
	and	edx, 0x00FF
	cmp	edx, 0
	je	RETURN_FALSE
	cmp 	edx, ecx
	je 	RETURN_TRUE
	
	add	eax, 1
	
	jmp	LOOP

RETURN_TRUE:
	mov	eax, 0x0001
        pop     ebp             ; restore the base pointer
        ret

RETURN_FALSE:
	mov	eax, 0x0000
        pop     ebp             ; restore the base pointer
        ret

