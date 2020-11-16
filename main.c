#include <stdio.h>
#include <string.h>

//extern size_t   ft_strlen(const char *s);
extern  void start(int fd, char *str, int len);
//extern char *ft_strcpy(char * dst, const char * src);
extern  int ft_strcmp(const char *s1, const char *s2);
int main()
{
    char    dst[20];
    const char *src = "hi";
    const char *s1 = "khaoula";
    const char *s2 = "ha";
   // printf("my ft_strlen: %lu\n", ft_strlen("hello"));
   // printf("original strlen: %lu\n", strlen("hello"));
  // printf("my ft_strcpy: %s\n", ft_strcpy(dst, src));
  // printf("the original strcpy: %s\n", strcpy(dst, src));
  printf("my ft_strcmp: %d\n", ft_strcmp(s2, s2));
   printf("the original strcmp: %d\n", strcmp(s2, s2));
    return (0);
}