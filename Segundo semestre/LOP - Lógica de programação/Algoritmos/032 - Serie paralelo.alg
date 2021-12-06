algoritmo "Serie ou paralelo"
// Função : Calcula a associação de 5 resistores em série ou em paralelo
// Autor : Eduardo Barreto
// Data : 06/12/2021
// Seção de Declarações
var
    escolhido, rAtual, rEquivalente, contador: Real
inicio

    escrevaL("===================")
    escrevaL("| [1] Em série    |")
    escrevaL("| [2] Em paralelo |")
    escrevaL("===================")
    leia(escolhido)

    escolha (escolhido)
        caso 1
           contador <- 1
           enquanto (contador < 6) faca
              escreva("Digite a resistência do", contador, "° resistor (em ohms): ")
              leia(rAtual)
              rEquivalente <- rEquivalente + rAtual
              contador <- contador + 1
           fimEnquanto

        caso 2
           contador <- 1
           enquanto (contador < 6) faca
              escreva("Digite a resistência do", contador, "° resistor (em ohms): ")
              leia(rAtual)
              rEquivalente <- rEquivalente + (1/rAtual)
              contador <- contador + 1
           fimEnquanto

           rEquivalente <- 1/rEquivalente

        outrocaso
           escrevaL("Da próxima vez, escolha um número válido!")
    fimEscolha

    se ((escolhido = 1) ou (escolhido = 2)) entao
       escrevaL("=========================================================")
       escrevaL("A resistência equivalente é de", rEquivalente, " ohms")
    fimSe
fimalgoritmo
