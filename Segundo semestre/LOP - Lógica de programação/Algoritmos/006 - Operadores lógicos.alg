algoritmo "Operadores l�gicos"
// Fun��o : Apresentar os operadores l�gicos e sua ordem de preced�ncia
// Autor : Eduardo Barreto
// Data : 12/11/2021
// Se��o de Declara��es

// Aritim�ticos -> (), ^, *, /, +, -
// Relacionais -> Todos
// L�gicos -> E, OU, nao
var
   A, B, C: inteiro

inicio
// Se��o de Comandos 
   A <- 2
   B <- 3
   C <- 5
   
   escrevaL("Sendo:")
   escrevaL("A =", A)
   escrevaL("B =", B)
   escrevaL("C =", C)
   
   escrevaL()
   escrevaL("------Operadores relacionais (com aritim�ticos)-----------------------------------")
   escrevaL("A > 2:   ", A>2)
   escrevaL("A >= 2:  ", A>=2)
   escrevaL("C = A+B: ", C = A+B)
   escrevaL("B <= C%2:", B <= C%2)
   
   escrevaL()
   escrevaL("----Operadores l�gicos----")
   escrevaL("(A=B) ou (C>A):",
   escrevaL("nao((A=B) ou (C>A)):", nao((A=B) ou (C>A)))

fimalgoritmo
