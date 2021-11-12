algoritmo "Media de 3 notas"
// Função : Realiza e informa a média entre 3 notas fornecidas pelo usuário
// Autor : Eduardo Barreto
// Data : 05/11/2021
// Seção de Declarações 
var
   nota1, nota2, nota3: Real
   resultadoMedia: Real
inicio
// Seção de Comandos 
   escrevaL("Esse programa realiza e informa a média de 3 notas informadas pelo usuário (você)!")
   escrevaL("")
   
   escreva("Informe a primeira nota: ")
   leia(nota1)
   
   escreva("Informe a segunda nota: ")
   leia(nota2)
   
   escreva("Informe a terceira nota: ")
   leia(nota3)
   
   resultadoMedia <- (nota1 + nota2 + nota3)/3
   escrevaL("A nota final é", resultadoMedia)
fimalgoritmo
