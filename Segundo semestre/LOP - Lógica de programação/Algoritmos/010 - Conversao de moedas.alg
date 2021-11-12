algoritmo "Conversão de moedas"
// Função : Eduardo Barreto
// Autor : Converte reais para dólares de acordo com a cotação informada
// Data : 12/11/2021
// Seção de Declarações
var
   cotacao, reais, dolares: Real
inicio
// Seção de Comandos
   escrevaL("Esse programa converte reais para dólares de acordo com a cotação informada")
   escrevaL()

   escreva("Digite a cotaçao atual do dólar: ")
   leia(cotacao)
   
   escreva("Digite quantos reais você tem: ")
   leia(reais)
   
   dolares <- reais * cotacao
   
   escrevaL("R$", reais, " são equivalentes a U$", dolares)
fimalgoritmo
