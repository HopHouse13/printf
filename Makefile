# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pbret <pbret@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/19 16:28:39 by pbret             #+#    #+#              #
#    Updated: 2025/01/16 12:49:04 by pbret            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# SRCS =	ft_printf.c \
# 	tools.c \
# 	printers.c

# OBJS = $(SRCS:.c=.o)
# NAME = libftprintf.a
# FLAGS = -Wall -Wextra -Werror -I.

# all: $(NAME)

# bonus:

# $(NAME): $(OBJS)
# 	ar rcs $(NAME) $(OBJS)

# clean:
# 	rm -f $(OBJS)

# fclean: clean
# 	rm -f $(NAME)

# re:	fclean all

# .PHONY:	all clean fclean re bonus



NAME		= printf
LIBRARY		= $(NAME).a
SRCS_DIR	= srcs
OBJ_DIR 	= obj_$(NAME)

SRCS		= srcs/ft_printf.c srcs/tools.c srcs/printers.c
			
OBJS		= $(SRCS:$(SRCS_DIR)/%.c=$(OBJ_DIR)/%.o)
CC			= cc
RM			= rm -rf
AR			= ar rcs
CFLAGS		= -Wall -Wextra -Werror -ggdb -I$(SRCS_DIR)

all:		$(LIBRARY)

$(LIBRARY):	$(OBJS) 
			$(AR) $(LIBRARY) $(OBJS)
			@echo "\033[32m""Compilation de $(LIBRARY) est terminée!""\033[0m"

$(OBJ_DIR)/%.o : $(SRCS_DIR)/%.c
			@mkdir -p $(@D)
			$(CC) $(CFLAGS) -c $< -o $@
	
clean:
			$(RM) $(OBJ_DIR)
			@echo "\033[36m""Répertoire $(OBJ_DIR) supprimé.""\033[0m"

fclean:		clean
			$(RM) $(LIBRARY)
			@echo "\033[36m""Fichier $(LIBRARY) supprimé.""\033[0m"

re:			fclean 	all

.PHONY: all clean fclean re