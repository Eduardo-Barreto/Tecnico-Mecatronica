algoritmo "Tabuada com repeti��o"
// Fun��o : Mostra a tabuada de um n�mero informado pelo usu�rio
// Autor : Eduardo Barreto
// Data : 03/12/2021
// Se��o de Declara��es 
var
   numero, contador: Inteiro
inicio
// Se��o de Comandos 

   contador <- 0
   
   escreva("Digite o n�mero: ")
   leia(numero)
   
   repita
      escrevaL(numero, " *", contador, " =", numero*contador)
      contador <- contador + 1
   ate (contador > 10)

fimalgoritmo
