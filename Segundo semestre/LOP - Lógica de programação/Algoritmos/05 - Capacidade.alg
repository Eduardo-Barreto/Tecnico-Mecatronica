algoritmo "Capacidade"
// Função : Calcula e informa o a capacidade (em litros) de um recipiente, de acordo com as medidas (em centímetros) informadas pelo usuário
// Autor : Eduardo Barreto
// Data : 05/11/2021
// Seção de Declarações 
var
   lado, altura, profundidade: Real
   capacidade: Real
inicio
// Seção de Comandos
   escrevaL("Esse programa calcula a capacidade de um recipiente em litros!")
   escrevaL("")
   
   escreva("Digite o lado (em cm): ")
   leia(lado)
   
   escreva("Digite a altura (em cm): ")
   leia(altura)
   
   escreva("Digite a profundidade (em cm): ")
   leia(profundidade)
   
   capacidade <- (lado*altura*profundidade)/1000
   escreva("A capacidade é de", capacidade, "L")
fimalgoritmo
