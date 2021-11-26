algoritmo "Calcular IMC"
// Função : Calcula o IMC de uma pessoa
// Autor : Eduardo Barreto
// Data : 26/11/2021
// Seção de Declarações 
var
    massa, altura, imc: Real
inicio
// Seção de Comandos 
    escreva("Digite sua massa (kg): ")
    leia(massa)
    escreva("Digite sua altura (m): ")
    leia(altura)
    
    IMC <- massa/(altura^2)
    escrevaL("IMC = ", IMC:5:2)
    
    escrevaL()
    
    se((IMC >= 18.5) e (IMC < 25)) entao
        escrevaL("Você está no seu peso ideal")
    senao
        escrevaL("Você está fora do seu peso ideal")
    fimSe

fimalgoritmo
