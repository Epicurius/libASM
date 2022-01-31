
#include <stdio.h>
#include <stdlib.h>
#include "libasm.h"
#include <time.h>
#include <string.h>

clock_t	g_clock_start;

void	ft_timer_start(void)
{
	g_clock_start = clock();
}

double	ft_timer_end(void)
{
	double	cpu_time_used;
	clock_t	end;

	end = clock();
	cpu_time_used = ((double)(end - g_clock_start)) / CLOCKS_PER_SEC;
	return (cpu_time_used);
}

char *text = "LorEm IPsuM doloR SIT AMeT, CoNSECteTUr aDIPisCING ELit, sed do EIuSmoD TEmpoR INciDIdunT UT laBorE Et doLORe MAGNA AlIqua. Ut eNIM AD MINIM VenIam, QUIS nOsTRud eXERcITatIoN uLlamcO lABoRiS niSi uT AliqUip eX Ea CoMMoDo coNSEquat. DuiS Aute IRURE doLOR IN RePReHEnDeRIT iN VolupTaTe VEliT eSSe cILLum DOLorE eu FugIAT nuLlA PARiatuR. ExcepTeUR SinT OCcaecAT CuPIDATat Non pROIdENT, suNT in CULpa quI ofFIciA DeSerUnT MOLLiT ANIm iD esT LAboRUM.\n";

int main()
{

	ft_putstr(text);

	//for (int i = 0; i < 446; i++)
	//	printf("%c", ft_tolower(text[i]));
	//for (int i = 0; i < 446; i++)
	//	printf("%c", ft_toupper(text[i]));

	//char str1[] = {"Hello World!\n"};
	//char *str2 = ft_strdup(str1);
	//printf("%s", str2), fflush(stdout);
	//int i = 0;
	//while (str2[i] != '\0')
	//	printf("%d %d\n", str2[i], i), i++;


	//char str1[10];
	//char str2[10];
	//memset(str1, 0, 10);
	//memset(str2, 9, 10);
	//ft_memcpy(str1, str2, 9);
	//for (int i = 0; i < 10; i++)
	//	printf("%d ", str1[i]);	
	//printf("\n");

	//for (int c = -24; c < 200; c++)
	//	printf("%d %d\n", c, ft_isascii(c));

	//for (int c = 0; c < 128; c++)
	//	printf("%c | %s\x1b[0m | %s\x1b[0m | %s\x1b[0m | %s\x1b[0m | %s\x1b[0m\n", c,
	//		ft_isalnum(c) == 1 ? "\x1b[36m1" : "\x1b[31;1m0",
	//		ft_isdigit(c) == 1 ? "\x1b[36m1" : "\x1b[31;1m0",
	//		ft_isascii(c) == 1 ? "\x1b[36m1" : "\x1b[31;1m0",
	//		ft_isprint(c) == 1 ? "\x1b[36m1" : "\x1b[31;1m0",
	//		ft_isalpha(c) == 1 ? "\x1b[36m1" : "\x1b[31;1m0");

	//char str1[100] = "This is ", str2[] = "programiz.com";
	//ft_strcat(str1, str2);
	//printf("%s\n", str1);

	//char str[10];
	//memset(str, 0, 10);
	//ft_memset(str, 9, 10);
	//ft_bzero(str, 2);
	//for (int i = 0; i < 10; i++)
	//	printf("%d ", str[i]);	
	//printf("\n");	

	//int len;
	//ft_timer_start();
	//for (int i = 0; i < 10000; i++)
	//	len = ft_strlen(text);
	////printf("%s\n", text);
	//printf("MY: %f %d/%lu\n", ft_timer_end(), len, strlen(text));
	return (0);
}
