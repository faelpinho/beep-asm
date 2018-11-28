
; PAUSA: 0, DO: 4400, DO#4200, RE: 4000, RE#: 3800, MI: 3600, FA: 3400, FA#: 3200
; SOL: 3000, SOL#: 2800, LA: 2700, LA#: 2600, SI: 2400
;
; PAUSA: 0, DO: 2200, DO#2100, RE: 2000, RE#: 1900, MI: 1800, FA: 1700, FA#: 1600
; SOL: 1500, SOL#: 1400, LA: 1350, LA#: 1300, SI: 1200
; 

		; Funk dos Havaianos (instrumental) by Rafael Pinho Carlos da Silva (Cusquito)
		; Data: 03/12/2010 @ 12:52:01

;mov bx, 0			; Quantas vezes executar esta parte? (padrão: 1)
InicioFunk:
mov ax, 0			; Começa sempre com uma pausa! SEMPRE! (PODE SER um bug da bios)
call Som_ON
mov ax, 1800		; mi
call Som_ON

mov ax, 0			; PAUSA
call Som_ON

mov ax, 1200		; si
call Som_ON
mov ax, 1350		; la
call Som_ON
mov ax, 1800		; mi
call Som_ON

mov ax, 0			; PAUSA
call Som_ON

mov ax, 1200		; si
call Som_ON
mov ax, 1350		; la
call Som_ON
mov ax, 1800		; mi
call Som_ON

mov ax, 0			; PAUSA
call Som_ON

mov ax, 1200		; si
call Som_ON
mov ax, 1350		; la
call Som_ON
mov ax, 1200		; si
call Som_ON
mov ax, 1350		; la
call Som_ON
mov ax, 1500		; sol
call Som_ON
mov ax, 1600		; fa#
call Som_ON
mov ax, 1800		; mi
call Som_ON

mov ax, 0			; PAUSA
call Som_ON

; PAUSA
;mov ax, 0
;call Som_ON
; /PAUSA

;mov ax, 1700		; fa²
;call Som_ON
;mov ax, 1500		; sol²
;call Som_ON
;mov ax, 1350		; la²
;call Som_ON
;mov ax, 1300		; la#²
;call Som_ON
;mov ax, 1350		; la²
;call Som_ON
;mov ax, 0
;call Som_ON
;cmp bx, 0						; Compara com 0 (já repetido)
;jz Parte1_2
;mov bx, 0					; Informa q reperirá a função Inicio
;jmp Inicio

;Parte1_2:
;mov ax, 0
;call Som_ON

	; Fim da música
jmp Som_OFF

; -----------------------------------------

Espera:
	mov ah, 0h					; Subfuncao de aguardar tecla
	int 16h							; Int de teclado



; ---- Fim do código
