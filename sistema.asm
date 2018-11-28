		; Sistema.asm by Rafael (Cusquito)
		; Data: 08/12/2010 @ 12:34:10
        
    
; ------------------------------------------------------------------
; Som_ON -- Emite som pela CPU
; IN: AX com o tom de saida

Som_ON:
	pusha

	mov cx, ax			; Store note value for now

	mov al, 182
	out 43h, al
	mov ax, cx			; Set up frequency
	out 42h, al
	mov al, ah
	out 42h, al

	in al, 61h			; Switch PC speaker on
	or al, 03h
	out 61h, al

	mov ah, 0h					; Subfuncao de aguardar tecla
	int 16h							; Int de teclado

	popa
	ret
    
    
; ------------------------------------------------------------------
; Som_OFF -- Desliga o som emitido pela CPU
; IN: (Nada)

Som_OFF:
	pusha

	in al, 61h
	and al, 0FCh
	out 61h, al

	popa
	ret
    
    
; ------------------------------------------------------------------
; EsperarTecla -- Espera uma tecla qualquer ser acionada
; IN: (Nada)

EsperarTecla:
	pusha
	mov ah, 10h					; Chamada da BIOS para esperar tecla
	int 16h								; Int de teclado
	popa
	ret
    
    
; ------------------------------------------------------------------
; Reiniciar -- Reinicia o computador pulando de endereço
; IN: (nada)

Reiniciar:		; Função que reinicia o computador
	call PulaLinha					; Pula uma linha antes de mostrar o texto
	mov si, Str_Reiniciar			; Mensagem de reiniciar
	call String							; Chama a função de mostrar texto
	mov ah, 0h							; Subfuncao de aguardar tecla
	int 16h
	mov ax, 0x0040
	mov ds, ax
	mov ax, 0x1234					; Seta o valor do endereço 0x0040:0x0072
	mov [0x0072], ax				; para 0x1234 e em seguida pular pro
	jmp 0x0FFFF:0x0000			; endereço 0x0FFFF:0x0000 (inicio do POST)
	; Agora a CPU não bipa mais quando é reiniciada! Bipava quando o pulo era pra 0x7C00.
    
    
; ------------------------------------------------------------------
; Desligar (Só funciona no VirtualBox)
; IN: (nada)

Desliga:
	mov si, Str_Desliga
	call String
	call PulaLinha
	mov ax, 10
	call Pausa

	mov ah, 42h
	mov al, 00
	mov bx, 0001h
	mov cx, 0003h
	int 15h					; Off! Desliga a cpu (VirtualBox)
	mov ah, 53h
	mov al, 07
	mov bx, 0001h
	mov cx, 0003h
	int 15h					; Se falhou, tenta desligar novamente (PC nao desligou)
    
    
    
; Fim do código
