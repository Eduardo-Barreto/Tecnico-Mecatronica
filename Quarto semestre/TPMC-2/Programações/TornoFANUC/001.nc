O0001

(Configuração padrão inicial)
N10 G21 G40 G54 G90 G95;
N20 G92 S3000;
(Vai ao ponto de troca)
N30 M5;
N40 M9;
N50 G28 U0 W0;

N60 T0202; (Ferramenta de desbaste)
N80 G96 S200; (Velocidade de corte em 200 mm/rot)
N90 G92 S2500 M4; (Rotação máxima de 2500 em sentido anti-horário)

(Ponto de aproximação)
N100 G00 Z3 M8; (Eixo Z e liga refrigerante)
N110 G00 X80; (Eixo X)

(Zero peça e faceamento)
N112 G72 W1 R1;
N114 G72 P116 Q119 U0 V0 W0 F.3;
    N116 G00 Z00;
    N117 G01 X-1.6;
    N118 G01 Z1;
N119;

N120 G71 U2 R1;
N121 G71 P122 Q210 U.5 W.05 F.3;
    (Ponto de ataque)
    N122 G00 X27;

    (Primeiro nível)
    N130 G01 Z-35;
    N140 G01 X30;

    (Segundo nível)
    N150 G01 Z-43;
    N160 G01 X50;

    (Terceiro nível)
    N170 G01 Z-55;
    N180 G01 X70;

    (Quarto nível)
    N190 G01 Z-73;
    N200 G01 X80;
N210;

(Troca de ferramenta para a 01)
N220 M5;
N230 M9;
N240 G28 U0 W0;
N250 T0101;
N270 G96 S300;
N280 G92 S3500 M4;

(Ponto de aproximação)
N280 G00 Z3 M8; (Eixo Z e liga refrigerante)
N290 G00 X80; (Eixo X)

(Acabamento)
N300 G42;
N310 G70 P122 Q210 F.1;
N320 G40;

(Volta ao ponto de troca)
N330 M5;
N340 M9;
N350 G28 U0 W0;

N300 M30;
