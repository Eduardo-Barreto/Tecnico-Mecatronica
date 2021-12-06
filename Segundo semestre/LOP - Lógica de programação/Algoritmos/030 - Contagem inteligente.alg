algoritmo "Contagem inteligente"
// Função : Faz a contagem crescente ou decrescente de acordo com os valores do usuário
// Autor : Eduardo Barreto
// Data : 06/12/2021
// Seção de Declarações 
var
    numeroInicio, numeroFim: Inteiro
inicio
// Seção de Comandos 
    escrevaL("CONTAGEM INTELIGENTE")
    escrevaL("--------------------")

    escreva("Início: ")
    leia(numeroInicio)
    escreva("Fim: ")
    leia(numeroFim)
    escrevaL("--------------------")
    escrevaL("  C O N T A N D O")
    escrevaL("--------------------")
    
    se(numeroInicio < numeroFim) entao
        repita
            escreva(numeroInicio, "..")
            numeroInicio <- numeroInicio + 1
        ate (numeroInicio > numeroFim)

    senao
        repita
            escreva(numeroInicio, "..")
            numeroInicio <- numeroInicio -  1
        ate (numeroInicio < numeroFim)

    fimSe
   
fimalgoritmo
