algoritmo "Só ímpar"
// Função : Faz uma contagem mostrando somente os números ímpares
// Autor : Eduardo Barreto
// Data : 10/12/2021
// Seção de Declarações 
var
    inicioContagem, fimContagem, i, qtdImpar, numPasso: Inteiro
inicio
// Seção de Comandos
    escreva("Início da contagem: ")
    leia(inicioContagem)
    
    escreva("Fim da contagem: ")
    leia(fimContagem)

    numPasso <- 1
    se(inicioContagem > fimContagem) entao
        numPasso <- -1
    fimSe
    
    para i de inicioContagem ate fimContagem passo numPasso faca
        se (i%2 = 1) entao
            escreva(i, "... ")
            qtdImpar <- qtdImpar + 1
        fimSe
    fimPara
    
    escrevaL()
    escrevaL("Quantidade de números ímpares:", qtdImpar)
fimalgoritmo
