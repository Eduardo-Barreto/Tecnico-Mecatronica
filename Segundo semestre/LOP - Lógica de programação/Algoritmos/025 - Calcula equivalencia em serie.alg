algoritmo "Calculo resistor equivalente em serie"
// Função : Calcula a resistência equivalente de 5 resistores em série
// Autor : Eduardo Barreto
// Data : 03/12/2021
// Seção de Declarações 
var
   resistenciaEquivalente, resistor, contador, maiorResistor: Inteiro
inicio
// Seção de Comandos 
   contador <- 1
   
   enquanto (contador <= 5) faca
       escreva("Informe o valor do", contador, "° resistor (em ohms): ")
       leia(resistor)
       resistenciaEquivalente <- resistenciaEquivalente + resistor

       se (resistor > maiorResistor) entao
           maiorResistor <- resistor
       fimSe

       contador <- contador + 1
   fimEnquanto

   se (resistenciaEquivalente > maiorResistor) entao
       escrevaL("A resistência equivalente é de", resistenciaEquivalente, " ohms")
   senao
       escrevaL("Algo deu errado, o maior resistor é de", maiorResistor, " ohms, mas a resistência equivalente deu", resistenciaEquivalente, " ohms")
   fimSe
fimalgoritmo
