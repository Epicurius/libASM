SRC =		ft_strlen.s\
			ft_memset.s\
			ft_bzero.s\
			ft_strcat.s

OBJ =		$(SRC:%.s=%.o)

NAME =		libasm.a

%.o: %.s
	@nasm -f macho64 $<

all:		$(NAME)

$(NAME):	$(OBJ)
			@ar -rc $(NAME) $(OBJ)
			@ranlib $(NAME)

main:		re
			@gcc main.c libasm.a
			@./a.out

clean:
			@rm -f $(OBJ)

fclean:		clean
			@rm -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re