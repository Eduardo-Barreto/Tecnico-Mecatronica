algoritmo "Operadores lógicos"
// Função : Apresentar os operadores lógicos e sua ordem de precedência
// Autor : Eduardo Barreto
// Data : 12/11/2021
// Seção de Declarações

// Aritiméticos -> (), ^, *, /, +, -
// Relacionais -> Todos
// Lógicos -> E, OU, nao
var
   A, B, C: inteiro

inicio
// Seção de Comandos 
   A <- 2
   B <- 3
   C <- 5
   
   escrevaL("Sendo:")
   escrevaL("A =", A)
   escrevaL("B =", B)
   escrevaL("C =", C)
   
   escrevaL()
   escrevaL("------Operadores relacionais (com aritiméticos)-----------------------------------")
   escrevaL("A > 2:   ", A>2)
   escrevaL("A >= 2:  ", A>=2)
   escrevaL("C = A+B: ", C = A+B)
   escrevaL("B <= C%2:", B <= C%2)
   
   escrevaL()
   escrevaL("----Operadores lógicos----")
   escrevaL("(A=B) ou (C>A):",
   escrevaL("nao((A=B) ou (C>A)):", nao((A=B) ou (C>A)))

fimalgoritmo
