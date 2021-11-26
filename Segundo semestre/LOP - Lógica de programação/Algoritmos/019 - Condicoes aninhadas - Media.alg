algoritmo "Condições aninhadas - Média"
// Função : Realiza e informa a média entre 3 notas fornecidas pelo usuário, além de descobrir se está aprovado ou não
// Autor : Eduardo Barreto
// Data : 05/11/2021
// Seção de Declarações
var
    nota1, nota2: Real
    media: Real
inicio
// Seção de Comandos
    escreva("Informe a primeira nota: ")
    leia(nota1)

    escreva("Informe a segunda nota: ")
    leia(nota2)

    media <- (nota1 + nota2)/2

    escrevaL()
    escrevaL("A média do aluno é", media)

    se(media >= 7) entao
        escrevaL("Vou para Acapulco, irra!")
    senao

        se(media >= 5) entao
            escrevaL("Ainda dá pra recuperar!")
        senao
            escrevaL("Parabéns, você ganhou mais 6 meses de 1/2 entrada!")
        fimSe

    fimSe
fimalgoritmo
