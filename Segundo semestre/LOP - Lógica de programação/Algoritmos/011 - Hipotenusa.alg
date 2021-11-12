algoritmo "Hipotenusa"
// Função : Calcla a hipotenusa de um triângulo retângulo de acordo com o teorema de pitágoras
// Autor : Eduardo Barreto
// Data : 12/11/2021
// Seção de Declarações 
var
   cateto1, cateto2, hipotenusa: Real
inicio
// Seção de Comandos 
   escrevaL("Esse programa calcla a hipotenusa de um triângulo retângulo de acordo com o teorema de pitágoras")
   escrevaL()

   escreva("Digite o primeiro cateto: ")
   leia(cateto1)
   
   escreva("Digite o segundo cateto: ")
   leia(cateto2)
   
   hipotenusa <- raizQ(cateto1^2 + cateto2^2)
   escrevaL("A hipotenusa é de", hipotenusa)
fimalgoritmo
