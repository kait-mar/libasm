#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

extern size_t   ft_strlen(const char *s);
extern  void start(int fd, char *str, int len);
extern char *ft_strcpy(char * dst, const char * src);
extern  int ft_strcmp(const char *s1, const char *s2);
extern  ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
extern ssize_t ft_read(int fildes, void *buf, size_t nbyte);

int main()
{
    char    dst[20];
    const char *src = "hi";
    const char *s1 = "khaoula";
    const char *s2 = "ha";
    char  buff[32];
    //int fd = open("scene3.rt", O_RDONLY);
   // printf("my ft_strlen: %lu\n", ft_strlen("hello"));
   // printf("original strlen: %lu\n", strlen("hello"));
  // printf("my ft_strcpy: %s\n", ft_strcpy(dst, src));
  // printf("the original strcpy: %s\n", strcpy(dst, src));


 // printf("  my ft_write: %lu\n", ft_write(1, "hello", 5));
    errno = 0;
   printf("  the original read: %lu\n", ft_read(5, buff, 6));
   //if (errno == EIO)
   printf("%d\n", errno);
    printf("error ====>  %s\n", strerror(errno));
    //test the read function


  //printf("my ft_strcmp: %d\n", ft_strcmp(s1, s2));
  //printf("the original strcmp: %d\n", strcmp(s1, s2));
    return (0);
}