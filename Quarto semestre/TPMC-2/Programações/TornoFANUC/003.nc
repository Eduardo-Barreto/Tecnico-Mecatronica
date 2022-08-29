(Configuração padrão inicial)
N10 G21 G40 G54 G90 G95;
N20 G92 S2500;
(Vai ao ponto de troca)
N30 M5;
N40 M9;
N50 G28 U0 W0;

N60 T0202; (Ferramenta de desbaste)
N80 G96 S200; (Velocidade de corte em 200 mm/rot)
N90 G92 S2500 M4; (Rotação máxima de 2500 em sentido anti-horário)

(Ponto de aproximação)
N100 G00 Z3 M8; (Eixo Z e liga refrigerante)
N110 G00 X58; (Eixo X)

(Zero peça e faceamento)
N112 G72 W1 R1;
N114 G72 P116 Q119 U0 W0 F.4;
 N116 G00 Z00;
 N117 G01 X-1.6;
 N118 G01 Z1;
N119;

N120 G71 U1.5 R2;
N121 G71 P122 Q171 U.5 W.05 F.4;
    (Ponto de ataque)
    N122 G00 X14 Z1;
    (Baby chanfro A até o B)
    N124 G01 X20 Z-2;
    (Primeiro nível do B até o C)
    N125 G01 Z-15;
    (Big chanfro do C até o D)
    N130 G01 X30 Z-35;
    (Big raio D até o E)
    N140 G02 X40 Z-40 R5;
    (E até o F)
    N150 G01 X45 Z-40;
    (Baby raio F até o G)
    N160 G02 X50 Z-42.5;
    (G até o H)
    N170 G01 X50 Z-50
N171;

(Troca de ferramenta para a 01)
N180 M5;
N190 M9;
N200 G28 U0 W0;
N210 T0101;
N220 G96 S300;
N230 G92 S3500 M4;

(Ponto de aproximação)
N240 G00 Z3 M8; (Eixo Z e liga refrigerante)
N250 G00 X58; (Eixo X)

(Acabamento)
N260 G42;
N261 G70 P122 Q171 F.08;
N262 G40;

(Volta ao ponto de troca)
N270 M5;
N280 M9;
N290 G28 U0 W0;

N300 M30;
