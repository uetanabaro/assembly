SECTION .text

global _start

_new_line: mov ecx,NEWLINE ;
        call _imprimir
        ret
_fim:   mov eax,0x1
	mov ebx,0x0
	int 0x80
	ret


;----------------------------------------------------
; MAIN
;----------------------------------------------------
_start: pop edi ;qtd de parametros
        jmp _loop

_loop_with_new_line: call _new_line


_loop:
	cmp edi,0x0 ;ainda tem parametro?
	je _fim
        dec edi ; descremento a qtd de paramtro processado
        pop esi ;pego o endereco de memoria do prox parametro na pilha




_loop_imprime_par:  mov ecx, esi

        jmp _loop_imprime_par  ;end loop impressao

_imprimir: mov eax,4 ;imprime n caracteres no stdout
        mov ebx,1  
        mov edx,1
        int 0x80
        ret



section .data
  NEWLINE: db 0xa

