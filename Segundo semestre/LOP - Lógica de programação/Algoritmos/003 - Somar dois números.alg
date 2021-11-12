algoritmo "Somar dois números"
// Função : Soma dois números informados pelo usuário
// Autor : Eduardo Barreto
// Data : 05/11/2021
// Seção de Declarações 
var
   numero1: Real
   numero2: Real
   resultadoSoma: Real
inicio
// Seção de Comandos
   escrevaL("Esse programa soma dois números informados pelo usuário (você)!")
   escrevaL("")

   escreva("Digite o primeiro número: ")
   leia(numero1)
   escreva("Digite o segundo número: ")
   leia(numero2)

   resultadoSoma <- numero1 + numero2
   escrevaL("A soma entre", numero1, " e", numero2, " é igual a", resultadoSoma)
fimalgoritmo
