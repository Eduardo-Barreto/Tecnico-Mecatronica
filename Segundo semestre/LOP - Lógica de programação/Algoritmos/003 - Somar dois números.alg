algoritmo "Somar dois n�meros"
// Fun��o : Soma dois n�meros informados pelo usu�rio
// Autor : Eduardo Barreto
// Data : 05/11/2021
// Se��o de Declara��es 
var
   numero1: Real
   numero2: Real
   resultadoSoma: Real
inicio
// Se��o de Comandos
   escrevaL("Esse programa soma dois n�meros informados pelo usu�rio (voc�)!")
   escrevaL("")

   escreva("Digite o primeiro n�mero: ")
   leia(numero1)
   escreva("Digite o segundo n�mero: ")
   leia(numero2)

   resultadoSoma <- numero1 + numero2
   escrevaL("A soma entre", numero1, " e", numero2, " � igual a", resultadoSoma)
fimalgoritmo
