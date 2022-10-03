O9002
(Bracinho)

(Configuração padrão inicial)
N10 G21 G40 G54 G90 G95
N20 G92 S2500
(Vai ao ponto de troca)
N30 M5
N40 M9
N50 G28 U0
W0

N60 T0202 (Ferramenta de desbaste)
N80 G96 S280 (Velocidade de corte em 280 mm/rot)
N90 G92 S3000 M4 (Rotação máxima de 3000 em sentido anti-horário)

(Ponto de aproximação)
G00 Z3 M8(Eixo Z e liga refrigerante)
G00 X25(Eixo X)

(Zero peça e faceamento)
N112 G72 W1 R1
N114 G72 P116 Q119 U0 W0 F.4
N116 G00 Z00
N117 G01 X-1.6
N118 G01 Z1
N119

(Ponto de aproximação)
G00 Z3 M8 (Eixo Z e liga refrigerante)
G00 X25 (Eixo X)

(Delimitação da peça)
G71 U1 R2
G71 P120 Q121 U.5 W.05 F.4
(Ponto de ataque)
N120 G01 X15 Z1
G01 Z-52
N121

(Recuo)
G01 X22

(Ferramenta de acabamento)
M5
M9
G28 U0
W0
T0404
G96 S250
G92 S4000 M4

(Ponto de aproximação)
G00 Z3 M8(Eixo Z e liga refrigerante)
G00 X15(Eixo X)

G71 U1 R2
G71 P122 Q175 U.5 W.05 F.3
    (Ponto de ataque)
    G00 X-1.6 Z1
    N122 G01 Z0
    G01 X0

    (Big raio)
    G03 X10.626 Z-10.245 R6.5

    (Baby raio)
    G02 X10 Z-15.5 R5

    (Big chanfro)
    G01 X14 Z-40

    (Nível reto)
    G01 Z-49

    (Finaliza)
    G01 Z-52
N175

G42
G70 P122 Q175 F.08
G40

(Recuo)
G01 X22

(Volta ao ponto de troca)
M5
M9
G28 U0
W0

(Bedame)
T0808
G96 S120
G92 S3000 M4

(Ponto de ataque)
G00 X15
G00 Z-53

(Canal)
G75 X10 Z-53 P5000 Q2500 R2 F.08

(Baby chanfro)
G01 X14 F.08
G01 Z-52
G01 X12 Z-53

G01 Z-53 F.08
(Corte)
G75 X2 Z-53 P10000 Q2500 R2 F.08


(Volta ao ponto de troca)
M5
M9
G28 U0
W0
M30
%