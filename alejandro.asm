
; PAUSA: 0, DO: 4400, DO#4200, RE: 4000, RE#: 3800, MI: 3600, FA: 3400, FA#: 3200
; SOL: 3000, SOL#: 2800, LA: 2700, LA#: 2600, SI: 2400
;
; PAUSA: 0, DO: 2200, DO#2100, RE: 2000, RE#: 1900, MI: 1800, FA: 1700, FA#: 1600
; SOL: 1500, SOL#: 1400, LA: 1350, LA#: 1300, SI: 1200
; 

		; Jason Mraz - Lucky by Rafael Pinho Carlos da Silva (Cusquito)
		; Data: 08/12/2010 @ 12:34:10

mov bx, 1			; Quantas vezes executar esta parte? (padrão: 1)
InicioAlejandro:
mov ax, 0			; Começa sempre com uma pausa!
call Som_ON
mov ax, 1500		; sol
call Som_ON
mov ax, 1500		; sol
call Som_ON
mov ax, 1600		; fa#
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 0			; PAUSA
call Som_ON
mov ax, 1500		; sol
call Som_ON
mov ax, 1500		; sol
call Som_ON
mov ax, 1600		; fa#
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 0			; PAUSA
call Som_ON

mov ax, 1800		; mi
call Som_ON
mov ax, 1600		; fa#
call Som_ON
mov ax, 1800		; mi
call Som_ON
mov ax, 2100		; do#
call Som_ON
cmp bx, 0						; Compara com 0 (já repetido)
jz Parte1_2
mov bx, 0					; Informa q reperirá a função Inicio
jmp InicioAlejandro

Parte1_2:
mov ax, 0			; PAUSA
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2400		; si
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2400		; si
call Som_ON
mov ax, 0			; PAUSA
call Som_ON

mov ax, 2000		; re
call Som_ON
mov ax, 2100		; do#
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2100		; do#
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2400		; si
call Som_ON
mov ax, 0			; PAUSA
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2100		; do#
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2100		; do#
call Som_ON
mov ax, 2000		; re
call Som_ON
mov ax, 2700		; la
call Som_ON
mov ax, 0			; PAUSA
call Som_ON

	; Fim da música
jmp Som_OFF

; ---- Fim do código
