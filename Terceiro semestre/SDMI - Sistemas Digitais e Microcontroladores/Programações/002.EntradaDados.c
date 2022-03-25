#include <stdio.h>


int main(void) {
    // Declaração da variável usada
    int age;

    // Pergunta ao usuário a sua idade
    printf("Digite a sua idade: ");
    // Recebe o valor e armazena na variável age
    scanf("%i", &age);

    // Apresenta o valor digitado
    printf("Você tem %i anos!\n", age);
    return 0;
}
