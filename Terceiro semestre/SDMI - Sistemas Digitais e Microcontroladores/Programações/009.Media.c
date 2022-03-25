#include <stdio.h>

int main(void) {
    // Declaração das variáveis
    int count = 0; // Contador de números digitados
    int repeat = 1; // Controle de repetição
    float current_number = 0; // Número digitado pelo usuário
    float sum = 0; // Soma total dos números digitados
    float result = 0; // Resultado final da média


    // Enquanto o usuário quiser inserir números
    while(repeat == 1){

        // Pergunta o número ao usuário
        printf("\nDigite o %iº número: ", count+1);
        // Recebe o valor digitado
        scanf("%f", &current_number);

        // Atualiza a soma adicionando o número atual
        sum += current_number;

        // Incrementa o contador de números digitados
        count++;

        // Pergunta se o usuário quer continuar digitando números
        int validRepeat = 0;
        while(validRepeat == 0){
            printf("\nDeseja inserir mais um número?    [0] Não    [1] Sim\n");
            scanf("%i", &repeat);

            if (repeat == 0 || repeat == 1){
                validRepeat = 1;
            }
            else{
                printf("Você digitou um valor inválido, tente novamente!\n");
            }
        }
    }

    // Calcula o resultado final pela soma dividida pela quantidade de números
    result = sum/count;

    // Apresenta o resultado ao usuário
    printf("\nA média desses números é igual a %.2f\n", result);

    return 0;
}