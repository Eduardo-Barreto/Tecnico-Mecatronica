// Calcula opreações de soma, subração, multiplicação e divisão com 2 números
#include <stdio.h>


int main(void) {
    // Declaração das variáveis utilizadas
    int operation = 0; // Operação desejada
    int repeat = 1; // Controle de repetições
    float a = 0; // Primeiro valor digitado
    float b = 0; // Segundo valor digitado
    float result = 0; // Resultado da operação

    // Enquanto o usuário quiser continuar
    while(repeat == 1){

        // Pergunta o primeiro número
        printf("\nDigite o primeiro número: ");
        scanf("%f", &a);

        // Pergunta o segundo número
        printf("Digite o segundo número: ");
        scanf("%f", &b);

        // Informa as operações disponíveis e pergunta qual deve ser feita
        printf("Digite a operação desejada\n");
        printf("[1] Soma\n[2] Subtração\n[3] Multiplicação\n[4] Divisão\n");
        scanf("%i", &operation);
        printf("\n");

        switch(operation){
            case 1:
                // Se a operação for 1, realiza uma soma e mostra o resultado
                result = a+b;
                printf("%.2f + %.2f = %.2f", a, b, result);
                break;

            case 2:
                // Se a operação for 2, realiza uma subtração e mostra o resultado
                result = a-b;
                printf("%.2f - %.2f = %.2f", a, b, result);
                break;

            case 3:
                // Se a operação for 3, realiza uma multiplicação e mostra o resultado
                result = a*b;
                printf("%.2f * %.2f = %.2f", a, b, result);
                break;

            case 4:
                // Se a operação for 4, realiza uma divisão e mostra o resultado
                result = a/b;
                printf("%.2f / %.2f = %.2f", a, b, result);
                break;

            default:
                printf("Operação inválida.");
        }

        printf("\n\nVocê deseja continuar?\n[0] Não    [1] Sim\n");
        scanf("%i", &repeat);

    }

    return 0;
}