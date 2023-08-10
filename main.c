#include <stdio.h>
#include <string.h>

int ft_strcmp(const char *s1, const char *s2);

int main(int ac, char **av)
{
	char *str = "salut bonjour";
	//ft_strcpy(str, av[1]);
	printf("%d\n", strcmp(str, av[1]));
	printf("%d\n", ft_strcmp(str, av[1]));
	return 0;
}