O9004

(Configuraçãoo padrão inicial)
N10 G21 G40 G54 G90 G95;
N20 G92 S2500;
(Vai ao ponto de troca)
N30 M5;
N40 M9;
N50 G28 U0;
W0;

N60 T0202; (Ferramenta de desbaste)
N80 G96 S250; (Velocidade de corte em 250 mm/rot)
N90 G92 S3600 M4; (Rotação máxima de 3600 em sentido anti-horário)

(Ponto de aproximação)
G00 Z3 M8; (Eixo Z e liga refrigerante)
G00 X65; (Eixo X)

(Zero peça e faceamento)
N112 G72 W1 R1;
N114 G72 P116 Q119 U0 W0 F.35;
 N116 G00 Z00;
 N117 G01 X-1.6;
 N118 G01 Z1;
N119;

(Ponto de aproximação)
G00 Z3 M8; (Eixo Z e liga refrigerante)
G00 X65; (Eixo X)



N120 G71 U1.5 R2;
N121 G71 P122 Q175 U.5 W.05 F.35;

    (Ponto de ataque)
    N122 G00 X8 Z1;

    N123 G01 Z0;

    (Big raio)
    N124 G03 X16 Z-4 R4;

    (Primeiro nível)
    N125 G01 Z-10;

    (Big chanfro)
    N130 G01 X22 Z-21;

    N135 G01 X28;

    (Baby raio)
    N140 G03 X34 Z-24 R3;

    N145 G01 Z-32;
    N147 G01 X39;

    (Baby chanfro)
    N150 G01 X43 Z-34;

    N155 G01 Z-46;

    (Baby raio 2)
    N160 G02 X49 Z-49 R3;

    N165 G01 X52;

    (Big big raio)
    N170 G03 X62 Z-54 R5;

    N172 G01 Z-65;

N175;

(Troca de ferramenta para a 01)
N180 M5;
N190 M9;
N200 G28 U0;
W0;
N210 T0404;
N220 G96 S220;
N230 G92 S4000 M4;

(Ponto de aproximação)
N240 G00 Z3 M8; (Eixo Z e liga refrigerante)
N250 G00 X65; (Eixo X)

(Acabamento)
N260 G42;
N261 G70 P122 Q175 F.2;
N262 G40;

(Volta ao ponto de troca)
N270 M5;
N280 M9;
N290 G28 U0;
W0;

M30;

%

