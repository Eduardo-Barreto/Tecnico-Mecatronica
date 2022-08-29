O0002

(Configuração padrão inicial)
N10 G21 G40 G54 G90 G95;
N20 G92 S3000;
(Vai ao ponto de troca)
N30 M5;
N40 M9;
N50 G28 U0 W0;

N60 T0202; (Ferramenta de desbaste)
N80 G96 S200; (Velocidade de corte em 200 mm/rot)
N90 G92 S3000 M4; (Rotação máxima de 2500 em sentido anti-horário)

(Ponto de aproximação)
N100 G00 Z3 M8; (Eixo Z e liga refrigerante)
N110 G00 X85; (Eixo X)

(Zero peça e faceamento)
N112 G72 W1 R1;
N114 G72 P116 Q119 U0 W0 F.4;
    N116 G00 Z00;
    N117 G01 X-1.6;
    N118 G01 Z1;
N119;

N120 G71 U1.5 R2;
N121 G71 P122 Q135 U.5 W.05 F.4;
    (Ponto de ataque)
    N122 G00 X19 Z1;

    (Baby chanfro)
    N124 G01 X24 Z-1.5;

    (Primeiro nível)
    N125 G01 Z-30;

    (Big raio)
    N126 G02 X44 Z-40 R10;

    (Big chanfro)
    N127 G01 X60 Z-55;

    (Baby raio)
    N128 G01 X74;
    N129 G03 X80 Z-58 R3;
    N130 G01 Z-83;
    N132 G01 X83;
N135;

(Troca de ferramenta para a 01)
N140 M5;
N150 M9;
N160 G28 U0 W0;
N170 T0101;
N180 G96 S300;
N190 G92 S4000 M4;

(Ponto de aproximação)
N200 G00 Z3 M8; (Eixo Z e liga refrigerante)
N210 G00 X85; (Eixo X)

(Acabamento)
N220 G42;
N221 G70 P122 Q135 F.08;
N222 G40;

(Volta ao ponto de troca)
N230 M5;
N240 M9;
N250 G28 U0 W0;

N300 M30;