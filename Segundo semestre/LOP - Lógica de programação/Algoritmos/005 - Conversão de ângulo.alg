algoritmo "Convers�o de �ngulo"
// Fun��o : Convers�o de Graus para Radianos e c�lculos de Seno, Cosseno e Tangente
// Autor : Eduardo Santos Barreto
// Data : 12/11/2021
// Se��o de Declara��es 
var
graus: Inteiro
radianos: Real
seno, cosseno, tangente: Real
inicio
// Se��o de Comandos
   escreval("Esse programa converte graus para radianos!")
   escreval()
   
   escreva("Digite o �ngulo em graus: ")
   leia(graus)
   radianos <- grauPRad(graus)
   
   seno <- Sen(radianos)
   cosseno <- Cos(radianos)
   tangente <- Tan(radianos)

   escreval()
   escreval(graus, " graus � igual ", radianos, " radianos!")
   escreval()
   escreval("Seno = ", seno)
   escreval("Cosseno = ", cosseno)
   escreval("Tangente = ", tangente)
fimalgoritmo
