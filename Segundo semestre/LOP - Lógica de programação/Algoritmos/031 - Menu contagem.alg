algoritmo "Contagem menu"
// Função : Apresenta um menu onde o usuário escolhe uma contagem de 1 a 10 ou o contrário
// Autor : Eduardo Barreto
// Data : 06/12/2021
// Seção de Declarações
var
    escolhido, numeroInicio, numeroFim: Inteiro
inicio
    enquanto (escolhido <> 3) faca

       escrevaL("=================")
       escrevaL("|      MENU     |")
       escrevaL("=================")
       escrevaL("| [1] De 1 a 10 |")
       escrevaL("| [2] De 10 a 1 |")
       escrevaL("| [3] Sair      |")
       escrevaL("=================")
       leia(escolhido)

       escolha (escolhido)
       caso 1
          numeroInicio <- 1
          numeroFim <- 10
          repita
             escreva(numeroInicio, "..")
             numeroInicio <- numeroInicio + 1
          ate (numeroInicio > numeroFim)
       caso 2
          numeroInicio <- 1
          numeroFim <- 10
          repita
             escreva(numeroInicio, "..")
             numeroInicio <- numeroInicio + 1
          ate (numeroInicio > numeroFim)
       outrocaso
          escrevaL("SAINDO...")

       fimEscolha
       escrevaL()
    fimEnquanto
fimalgoritmo

