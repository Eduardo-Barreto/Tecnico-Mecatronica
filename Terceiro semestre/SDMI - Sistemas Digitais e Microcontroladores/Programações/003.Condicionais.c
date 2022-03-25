#include <stdio.h>


int main(void) {
    // Declaração das variáveis usadas
    int a, b;

    // Pergunta ao usuário o valor de A
    printf("Digite o valor de A: ");
    // Recebe o valor digitado e armazena na variáve a
    scanf("%i", &a);
    // Pergunta ao usuário o valor de B
    printf("Digite o valor de B: ");
    // Recebe o valor digitado e armazena na variáve b
    scanf("%i", &b);

    // Verifica se A é maior que B
    if(a>b){
        printf("A é maior do que B");
    }
    // Se não for, verifica se A é menor que B
    else if (a<b){
        printf("A é menor do que B");
    }
    // Se não é maior e nem menor, considera igual
    else{
        printf("A é igual a B");
    }

    return 0;
}