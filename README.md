# beep-asm


Usa o buzzer da BIOS para reproduzir musiquinhas.

Necessário testar em sistemas UEFI. Funciona em BIOS legado (legacy).

Nesta versão, tem que ir apertando as teclas (qualquer tecla, exceto ESC) do teclado no ritmo, pois dentro
da chamada Som_ON possui uma chamada para EsperarTecla. Se retirar a chamada a música vai tocar numa velocidade incrível!

Fiz isso para não precisar criar um counter para casa música.
Estou pensando numa forma de melhorar isto passando mais um registrador para usar no counter dentro da call Som_ON.

As notas para criação de novos sons devem ser passadas para o registrador AX.

```Assembly
mov ax, 1500    ; sol
call Som_ON
```

Não lembro quais são graves ou agudos. Me desculpe por isso. Eu cosnegui estas tonalidades usando uma Escaleta.

Se a primeira nota não for uma pausa, a nota era pulada.
Iniciando com a pausa dá pra ouvir um ruído saindo do Buzzer na placa-mãe (testei no VM Ware e no meu PC antigo, Virtual Box ainda não reproduz os bips).

PAUSA: 0, DO: 4400, DO#4200, RE: 4000, RE#: 3800, MI: 3600, FA: 3400, FA#: 3200.
SOL: 3000, SOL#: 2800, LA: 2700, LA#: 2600, SI: 2400.


PAUSA: 0, DO: 2200, DO#2100, RE: 2000, RE#: 1900, MI: 1800, FA: 1700, FA#: 1600.
SOL: 1500, SOL#: 1400, LA: 1350, LA#: 1300, SI: 1200.

