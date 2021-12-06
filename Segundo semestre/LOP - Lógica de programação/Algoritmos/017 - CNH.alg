algoritmo "Departamento de trânsito"
// Função : Verifica se o usuário está apto a tirar uma CNH, de acordo com sua idade e suas notas na prova teórica
// Autor : Eduardo Barreto
// Data : 19/11/2021
// Seção de Declarações 
var
   anoAtual, mesAtual, diaAtual: Inteiro
   anoNascimento, mesNascimento, diaNascimento: Inteiro
   idade: Inteiro
   nota1, nota2, media: Real
   aptoIdade, aptoNota: Logico

inicio

   escreva("Digite o ano do seu nascimento [AAAA]: ")
   leia(anoNascimento)
   escreva("Digite o mês do seu nascimento [MM]: ")
   leia(mesNascimento)
   escreva("Digite o dia do seu nascimento [DD]: ")
   leia(diaNascimento)
   
   escrevaL("----------------------------------------")

   escreva("Digite o ano atual [AAAA]: ")
   leia(anoAtual)
   escreva("Digite o mês atual [MM]: ")
   leia(mesAtual)
   escreva("Digite o dia atual [DD]: ")
   leia(diaAtual)
   
   idade <- anoAtual - anoNascimento
   Se(mesAtual < mesNascimento) entao
       idade <- idade - 1
   fimSe
   Se(mesAtual = mesNascimento) entao
       Se(diaAtual < diaNascimento) entao
           idade <- idade - 1
       fimSe
   fimSe

   aptoIdade <- idade >= 18
   
   escrevaL("----------------------------------------")
   escreva("Digite sua primeira nota: ")
   leia(nota1)
   escreva("Digite sua segunda nota: ")
   leia(nota2)
   
   media <- (nota1 + nota2)/2
   
   aptoNota <- media >= 5
   
   escrevaL()
   escrevaL("---------------STATUS---------------")
   
   escreva("Você tem", idade, " anos")
   se(aptoIdade) entao
        escrevaL(" - APTO")
   senao
        escrevaL(" - INAPTO")
   fimSe
   
   escreva("Sua média final foi", media)
   se(aptoNota) entao
        escrevaL(" - APROVADO")
   senao
        escrevaL(" - REPROVADO")
   fimSe

fimalgoritmo
