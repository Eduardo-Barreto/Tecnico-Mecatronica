// Conta até o número N desejado, sendo 100 > N >0

#include <stdio.h>
// Inclui o header com nossa função de contagem
#include "count.h"


int verifyNumber(int num){
    // Verifica se o número digitado está dentro dos limites estipulados
    if(num < 0){
        printf("Número inválido. A entrada deve ser maior que zero.\n");
        return 0;
    }
    if(num > 100){
        printf("Número inválido. A entrada deve ser menor que cem.\n");
        return 0;
    }
    return 1;
}

int main(void) {
    // Declaração das variáveis utilizadas
    int N; // N digitado pelo usuário (limite da contagem)
    int repeat = 1; // Controle de repetição

    // Enquanto o usuário quiser contar
    while(repeat == 1){
        // Pergunta o limite da contagem (N)
        printf("\nAté quanto você quer contar? ");
        scanf("%i", &N);
        printf("\n");

        // Se o número for válido
        if(verifyNumber(N) == 1){
            // Conta até o valor desejado
            count(N);
        }

        // Pergunta se o usuário deseja continuar criando contagens
        printf("\nVocê deseja continuar?\n[0] Não    [1] Sim\n");
        scanf("%i", &repeat);
    }
    return 0;
}
