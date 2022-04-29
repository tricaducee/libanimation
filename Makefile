NAME = prog

SRC = $(willcard *.c)

OBJ = $(SRC:.c=.o)

CC = gcc -Wall -Wextra -Werror

RM = rm -rf

all : $(NAME)

%.o : %.c
	$(CC) -o $@ -c $^

$(NAME) : $(OBJ)
	$(CC) -o $@ $^

clean :
	$(RM) $(OBJ)

fclean : clean	
	$(RM) $(OBJ)

re : fclean all

