FLAGS = -Wall -Wextra -Werror
NAME = libasm.a
SRCO = ft_read.s ft_writ.s ft_strcpy.s ft_strcmp.s ft_strdup.a ft_strlen.s

all : $(NAME)
	    @echo "Building Library."

$(NAME) :
	    nasm $(FLAGS) -c $(SRCO)
		    ar rc $(NAME) *.o

clean :
	    rm -rf *.o

fclean : clean
	    rm -rf $(NAME)

re : fclean all