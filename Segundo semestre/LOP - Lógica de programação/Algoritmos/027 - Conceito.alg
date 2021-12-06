algoritmo "Nota conceito"
// Função: Classifica o conceito do aluno de acordo com a nota
// Autor : Eduardo Barreto
// Data : 06/12/2021
// Seção de Declarações
var
    nota1, nota2, media: Real
    conceito: Caractere
inicio
    escrevaL("--------------------------------------")
    escrevaL("        EEPSG SILDAVIA CANSADA")
    escrevaL("--------------------------------------")

    escrevaL()

    escreva("Primeira nota: ")
    leia(nota1)
    escreva("Segunda nota: ")
    leia(nota2)
    
    escrevaL()

    media <- (nota1 + nota2)/2

    conceito <- "F"

    se(media >= 500)entao
       conceito <- "E"
    fimSe

    se(media >= 600)entao
       conceito <- "D"
    fimSe

    se(media >= 700)entao
       conceito <- "C"
    fimSe

    se(media >= 800)entao
       conceito <- "B"
    fimSe

    se(media >= 900)entao
       conceito <- "A"
    fimSe
    
    
    escrevaL("----------------STATUS----------------")
    escrevaL("Média:", media)
    escrevaL("Conceito: ", conceito)
    escrevaL("--------------------------------------")

fimalgoritmo
