#include <stdio.h>
#include <string.h>

char *ft_strcpy(char *dst, char *src);

int main(int ac, char **av)
{
	if (ac != 2)
		return 1;
	char str[10];
	//ft_strcpy(str, av[1]);
	printf("%s\n", ft_strcpy(str, av[1]));
	return 0;
}