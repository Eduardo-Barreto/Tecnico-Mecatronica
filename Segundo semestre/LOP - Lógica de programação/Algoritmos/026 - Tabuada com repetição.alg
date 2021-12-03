algoritmo "Tabuada com repetição"
// Função : Mostra a tabuada de um número informado pelo usuário
// Autor : Eduardo Barreto
// Data : 03/12/2021
// Seção de Declarações 
var
   numero, contador: Inteiro
inicio
// Seção de Comandos 

   contador <- 0
   
   escreva("Digite o número: ")
   leia(numero)
   
   repita
      escrevaL(numero, " *", contador, " =", numero*contador)
      contador <- contador + 1
   ate (contador > 10)

fimalgoritmo
