
#include "stdio.h"
#include "libasm.h"
#include <time.h>
#include <stdio.h>
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

char *text = "Hello Worldqwef qwrgqw ewrg ethdrt herdthrth \
	srthsetg aerg aerg aerg edgbsdgbse rg aewrg aerg sdgbs \
	dbert gaewrgaeth rw erad rawe";

int main()
{

	char str1[100] = "This is ", str2[] = "programiz.com";
	ft_strcat(str1, str2);
	printf("%s\n", str1);

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
