#include "program.h"

void s245162_podprogram()
{
    printf("Student o nr indeksu: 245162\n");
	printf("Program wczytuje liczbę całkowitą i drukuje jej Ośmiokrotność\n");
	int n;
	printf("Podaj liczbę: ");
	scanf("%d", &n);
	printf("Ośmiokrotność liczby %d wynosi: %d\n", n, n*8);
}
