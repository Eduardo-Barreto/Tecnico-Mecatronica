algoritmo "Identificação de triângulo"
// Função : Recebe três lados de um triângulo e classifica em Equilátero, Isóceles ou Escaleno
// Autor : Eduardo Barreto
// Data : 12/11/2021
// Seção de Declarações 
var
   lado1, lado2, lado3: Real
   valoresValidos, equilatero, isoceles, escaleno: Logico
inicio
// Seção de Comandos 
   escrevaL("Esse programa recebe três lados de um triângulo e classifica em Equilátero, Isóceles ou Escaleno")
   escrevaL()
   
   escreva("Digite o primeiro lado: ")
   leia(lado1)
   
   escreva("Digite o segundo lado: ")
   leia(lado2)
   
   escreva("Digite o terceiro lado: ")
   leia(lado3)
   
   valoresValidos <- ((lado1 > 0) e (lado2 > 0) e (lado3 > 0))
   
   equilatero <- (valoresValidos e ((lado1=lado2) e (lado2=lado3)))
   isoceles <- (valoresValidos e ((nao equilatero) e ((lado1=lado2) ou (lado1=lado3) ou (lado2=lado3))))
   escaleno <- (valoresValidos e ((nao equilatero) e (nao isoceles)))

   escrevaL()
   escrevaL("O triângulo é equilátero?", equilatero)
   escrevaL("O triângulo é isóceles?", isoceles)
   escrevaL("O triângulo é escaleno?", escaleno)
fimalgoritmo
