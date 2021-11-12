algoritmo "Conversão de temperatura"
// Função : Eduardo Barreto
// Autor : Converte temperaturas em °C para °F
// Data : 12/11/2021
// Seção de Declarações 
var
   celsius, farenheight: Real
inicio
// Seção de Comandos
   escrevaL("Esse programa converte temperaturas em °C para °F")
   escrevaL()
   
   escreva("Digite a temperatura em °C: ")
   leia(celsius)
   
   // °F = °C x 9 ÷ 5 + 32
   farenheight <- celsius * 1.8 + 32
   escrevaL(celsius, "°C é equivalente a", farenheight, "°F")
fimalgoritmo
