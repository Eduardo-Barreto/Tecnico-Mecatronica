algoritmo "Repetição com pulo"
// Função : Demonstrar os laços de repetição com a função ENQUANTO
// Autor : Eduardo Santos Barreto
// Data : 03/12/2021
// Seção de Declarações
var
   contagem, valor, pulo: Inteiro
inicio
// Seção de Comandos
   contagem <- 0
   
   escreva("Informe até quanto será a contagem: ")
   leia(valor)
   
   escreva("Informe o valor do pulo: ")
   leia(pulo)

   enquanto (contagem <= valor) faca
      escrevaL(contagem)
      contagem <- contagem + pulo
   fimEnquanto

   escrevaL("Fim da contagem")
fimalgoritmo

