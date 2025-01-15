# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pbret <pbret@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/19 16:28:39 by pbret             #+#    #+#              #
#    Updated: 2024/07/08 15:22:57 by pbret            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_printf.c \
	tools.c \
	printers.c

OBJS = $(SRCS:.c=.o)
NAME = libftprintf.a
FLAGS = -Wall -Wextra -Werror -I.

all: $(NAME)

bonus:

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re:	fclean all

.PHONY:	all clean fclean re bonus
