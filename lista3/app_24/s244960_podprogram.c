#include "program.h"

void s244960_podprogram() {
	printf("Student o nr indeksu: 244960\n");
	printf("Program wczytuje liczbę całkowitą i drukuje trójkąt o wysokości równej wartości liczby\n");
	int x;
	printf("Podaj liczbę x: ");
	scanf("%d", &x);
    for(int i=1; i<=x; i++) {
        for(int j=1; j<=i; j++) {
            printf("X");
        }
        printf("\n");
    }
}

