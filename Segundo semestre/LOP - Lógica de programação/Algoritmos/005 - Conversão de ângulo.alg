algoritmo "Conversão de ângulo"
// Função : Conversão de Graus para Radianos e cálculos de Seno, Cosseno e Tangente
// Autor : Eduardo Santos Barreto
// Data : 12/11/2021
// Seção de Declarações 
var
graus: Inteiro
radianos: Real
seno, cosseno, tangente: Real
inicio
// Seção de Comandos
   escreval("Esse programa converte graus para radianos!")
   escreval()
   
   escreva("Digite o ângulo em graus: ")
   leia(graus)
   radianos <- grauPRad(graus)
   
   seno <- Sen(radianos)
   cosseno <- Cos(radianos)
   tangente <- Tan(radianos)

   escreval()
   escreval(graus, " graus é igual ", radianos, " radianos!")
   escreval()
   escreval("Seno = ", seno)
   escreval("Cosseno = ", cosseno)
   escreval("Tangente = ", tangente)
fimalgoritmo
