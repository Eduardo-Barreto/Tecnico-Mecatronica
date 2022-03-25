#include <stdio.h>


int main(void) {
    // Declaração das variáveis utilizadas
    int a; // Número digitado pelo usuário
    int repeat = 1; // Controle de repetição

    // Enquanto o usuário quiser digitar números
    while (repeat == 1){
        // Recebe o valor digitado
        printf("\nDigite um número: ");
        scanf("%i", &a);

        // Apresenta o valor digitado
        printf("O número digitado foi %i\n\n", a);

        // Pergunta se o usuário deseja continuar a inserir números
        printf("Deseja continuar?    [0] Não    [1] Sim\n");
        // Armazena o resultado na variável repeat
        scanf("%i", &repeat);
    }
  return 0;
}