algoritmo "Condicionais aninhadas - Disney"
// Função : Demonstrar a estrutura condicional aninhada e descobrir se você poderia ir à Disney
// Autor : Eduardo Barreto
// Data : 26/11/2021
// Seção de Declarações
var
   dinheiro: Inteiro
inicio
// Seção de Comandos
   escreva("Você tem R$ ")
   leia(dinheiro)

   se(dinheiro > 10000) entao
       escreval("Partiu Disney!")
       
       se(dinheiro > 20000)entao
           escrevaL("Vou de primeira classe, que maravilha!")
       senao
           escrevaL("Vou apertado na econômica")
       fimSe
   senao
       escreval("Chora na rampa, fique em casa!")
   fimSe
fimalgoritmo
