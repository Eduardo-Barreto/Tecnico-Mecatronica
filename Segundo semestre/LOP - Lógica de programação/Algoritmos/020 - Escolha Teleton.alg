algoritmo "Escolha Teleton"
// Função : Apresentação da função escolha
// Autor : Eduardo Barreto
// Data : 26/11/2021
// Seção de Declarações 
var
   opcao, valor: Inteiro
inicio
// Seção de Comandos 
    escrevaL("=======================================================")
    escrevaL("                         TELETON")
    escrevaL("=======================================================")
    escreval()
    escrevaL("Muito obrigado pela ajuda, veja as opções abaixo:")
    
    escrevaL("  - [1] para doar R$10")
    escrevaL("  - [2] para doar R$25")
    escrevaL("  - [3] para doar R$50")
    escrevaL("  - [4] para doar outro valor")
    escrevaL("  - [5] para cancelar")
    escrevaL()
    
    escreva("Digite sua escolha (apenas o número): ")
    leia(opcao)
    
    escolha(opcao)
        caso 1
            valor <- 10
        caso 2
            valor <- 25
        caso 3
            valor <- 50
        caso 4
            escreva("Qual é o valor da doação? R$ ")
            leia(valor)
        outroCaso
            valor <- 0

    fimEscolha
    
    escrevaL()
    escrevaL("=======================================================")
    escreval("                  Valor doado de R$", valor)
    
    se(valor = 0) entao
        escrevaL("=============== Quem sabe da próxima vez... ===========")
    senao
        escrevaL("==================== Muito obrigado! ==================")
    fimSe
    

fimalgoritmo
