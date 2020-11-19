BUILD = ar rc
NASM = nasm
FLAGS = -f macho64

NAME = libasm.a
FILES = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJECTS = $(FILES:.s=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	$(BUILD) $(NAME) $(OBJECTS)

%.o: %.s
	$(NASM) $(FLAGS) -o $@ $<

clean:
	rm -rf *.o

fclean: clean
	rm -rf *.o *.a

re: fclean all