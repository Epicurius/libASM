
#include "unistd.h"

char *text = "Hello World\n";

int main()
{
	write(1, text, 14);
	return (0);
}
