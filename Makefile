SFILES =	ft_strlen.s\
			ft_memset.s\
			ft_bzero.s\
			ft_strcat.s\
			ft_isalpha.s\
			ft_isdigit.s\
			ft_isalnum.s\
			ft_isascii.s\
			ft_memcpy.s\
			ft_strdup.s

SDIR		=	srcs
SRCS		=	$(addprefix $(SDIR)/,$(SFILES))
OBJ			=	$(SRCS:.s=.o)

NAME =		libasm.a

$(ODIR):
	@mkdir -p $@

$(SDIR)/%.o: $(SDIR)/%.s
	@nasm -f macho64 $< -o $@

all:		$(ODIR) $(NAME)

$(NAME):	$(OBJ)
			@ar -rc $(NAME) $(OBJ)
			@ranlib $(NAME)

main:		re
			@gcc main.c libasm.a
			@rm srcs/*.o
			@./a.out

clean:
			@rm -f $(OBJ)

fclean:		clean
			@rm -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re