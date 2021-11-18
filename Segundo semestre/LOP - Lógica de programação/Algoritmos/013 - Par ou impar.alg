algoritmo "Par ou ímpar"
// Função : Informa se um número inteiro digitado pelo usuário é par ou ímpar
// Autor : Eduardo Barreto
// Data : 12/11/2021
// Seção de Declarações
var
   numero: Inteiro
   par: Logico
inicio
// Seção de Comandos
   escrevaL("Esse programa informa se um número inteiro digitado pelo usuário (você) é par ou ímpar")
   escrevaL()

   escreva("Digite o número: ")
   leia(numero)
   
   par <- numero%2 = 0

   escrevaL("O número", numero, " é par?", par)
fimalgoritmo
