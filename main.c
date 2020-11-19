#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

extern size_t   ft_strlen(const char *s);
extern char *ft_strcpy(char * dst, const char * src);
extern  int ft_strcmp(const char *s1, const char *s2);
extern  ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
extern ssize_t ft_read(int fildes, void *buf, size_t nbyte);
extern char *ft_strdup(const char *s1);

int main(int argc, char **argv)
{
    char    dst[30];
    const char *src = "hello";
    const char *s1 = "khaoula";
    const char *s2 = "ha";
    char  buff[32];
    int fd = open("test", O_RDONLY | O_WRONLY);
    
    //printf("my ft_strlen: %lu\n", ft_strlen(argv[1]));
  // printf("-------------------------\n");
   // printf("the original strlen: %lu\n", strlen(argv[1]));

   //printf("my ft_strcpy: %s\n", ft_strcpy(dst, src));
   //printf("-------------------------\n");
  //printf("the original strcpy: %s\n", strcpy(dst, src));

  printf("my ft_strcmp: %d\n", ft_strcmp(argv[1], argv[2]));
   printf("-------------------------\n");
  printf("the original strcmp: %d\n", strcmp(argv[1], argv[2]));

 // printf("  my ft_write: %lu\n", ft_write(1, argv[1], 5));
 // printf("-------------------------\n");
 // printf("  the original read: %lu\n", write(1, argv[1], 5));

  // printf("  my ft_read: %lu\n", ft_read(fd, buff, 50));
  // printf("-------------------------\n");
  // printf("  the original read: %lu\n", read(fd, buff, 50));

 // printf("the original strdup %s\n", strdup(argv[1]));
 // printf("-------------------------\n");
 // printf("the original strdup %s\n", ft_strdup(argv[1]));
    return (0);
}