#include <stdio.h>


int main(void) {
    // Declaração das variáveis utilizadas
    int a, b, result;

    // Pergunta ao usuário o primeiro número
    printf("Digite o primeiro número: ");
    scanf("%i", &a);

    // Pergunta ao usuário o segundo número
    printf("Digite o segundo número: ");
    scanf("%i", &b);

    // Armazena a soma na variável result
    result = a+b;

    // Apresenta o resultado ao usuário
    printf("A soma desses dois números é igual a %i", result);
    return 0;
}