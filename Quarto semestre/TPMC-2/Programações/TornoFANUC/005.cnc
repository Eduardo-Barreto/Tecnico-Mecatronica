O9005

(Configuração padrão inicial)
N10 G21 G40 G54 G90 G95;
N20 G92 S2500;
(Vai ao ponto de troca)
N30 M5;
N40 M9;
N50 G28 U0;
W0;

N60 T0202; (Ferramenta de desbaste)
N80 G96 S220; (Velocidade de corte em 220 mm/rot)
N90 G92 S3500 M4; (Rotação máxima de 3500 em sentido anti-horário)

(Ponto de aproximação)
G00 Z3 M8; (Eixo Z e liga refrigerante)
G00 X30; (Eixo X)

(Zero peçaa e faceamento)
N112 G72 W1 R1;
N114 G72 P116 Q119 U0 W0 F.4;
 N116 G00 Z00;
 N117 G01 X-1.6;
 N118 G01 Z1;
N119;

(Ponto de aproximação)
G00 Z3 M8; (Eixo Z e liga refrigerante)
G00 X30; (Eixo X)



N120 G71 U1.5 R2;
N121 G71 P122 Q175 U.5 W.05 F.4;

    (Ponto de ataque)
    N122 G00 X8 Z1;

    N123 G01 Z0.5;

    (Baby chanfro)
    N124 G01 X9 Z-0.5;

    (Muito Big Raio)
    N125 G02 X21 Z-22 R40;

    N130 G01 Z-26;

    (Big chanfro)
    N140 G01 X17 Z-28;

    N145 G01 Z-30;

N175;

(Troca de ferramenta para a 01)
N180 M5;
N190 M9;
N200 G28 U0;
W0;
N210 T0404;
N220 G96 S180;
N230 G92 S4000 M4;

(Ponto de aproximação)
N240 G00 Z3 M8; (Eixo Z e liga refrigerante)
N250 G00 X30; (Eixo X)

(Acabamento)
N260 G42;
N261 G70 P122 Q175 F.15;
N262 G40;

(Volta ao ponto de troca)
N270 M5;
N280 M9;
N290 G28 U0;
W0;

(Furação)

T0707;(Broca Centro)
G97 S1800 M3;
G00 Z3 M8;
G00 X0;
G01 Z-2 F.1;
G00 Z3;
G00 G28 U0;
W0;
T0909;(Broca D4)
G97 S1100 M3;
G00 Z3 M8;
G00 X0;
G74 R3;
G74 Z-14 Q4000 F.1;
G80; (Cancela Ciclo)

(Volta ao ponto de troca)
M5;
M9;
G28 U0;
W0;


M30;

%