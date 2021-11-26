algoritmo "Escolha RH"
// Função : Praticar a função escolha
// Autor : Eduardo Barreto
// Data : 26/11/2021
// Seção de Declarações 
var
    nome: Caractere
    salarioAtual, novoSalario: Real
    dependentes: Inteiro
inicio
// Seção de Comandos
    escreva("Digite o nome do funcionário(a): ")
    leia(nome)
    escreva("Digite o salário atual: ")
    leia(salarioAtual)
    escreva("Digite o número de dependentes: ")
    leia(dependentes)
    
    Escolha dependentes
        caso 0
            novoSalario <- salarioAtual * 1.05
        caso 1,2,3
            novoSalario <- salarioAtual * 1.10
        caso 4,5,6
            novoSalario <- salarioAtual * 1.15
        outroCaso
            novoSalario <- salarioAtual * 1.20
    fimEscolha
    
    escrevaL("O novo salário de ", nome, " é R$", novoSalario:5:2)
fimalgoritmo
