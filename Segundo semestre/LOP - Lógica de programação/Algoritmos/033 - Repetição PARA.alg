algoritmo "Repetição para"
// Função : Aplicar laço de repetição PARA
// Autor : Eduardo Barreto
// Data : 10/12/2021
// Seção de Declarações 
var
    i, j, k: Inteiro
inicio
// Seção de Comandos
    escrevaL("Laço enquanto")
    i <- 1
    enquanto (i <= 5) faca
        escrevaL(i)
        i <- i+1
    fimEnquanto
    
    escrevaL("Laço repita")
    j <- 10
    repita
        escrevaL(j)
        j <- j+10
    ate j > 50
    
    escrevaL("Laço para")
    para k de 100 ate 500 passo 100 faca
        escrevaL(k)
    fimPara
fimalgoritmo
