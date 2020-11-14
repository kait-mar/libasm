#include <stdio.h>
#include <string.h>

extern  int ft_strlen(char *str);
int main()
{
    char    *s1;
    const char    *s2;

    s1 = "girl1";
    s2 = "girl2";
    printf("my strlen: %i\n", ft_strlen(s1));
    printf("original strlen: %lu\n", strlen(s2));
    return (0);
}