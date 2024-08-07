# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: artmarti <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/10 08:06:32 by artmarti          #+#    #+#              #
#    Updated: 2023/03/22 10:46:39 by artmarti         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ALLFILES = ft_printf.c ft_putnbr.c ft_convert_hexa.c ft_takecareofp.c

OBJECTS = $(ALLFILES:.c=.o)

CFLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a

all : $(NAME)

$(NAME) : $(OBJECTS)
	ar rcs $(NAME) $(OBJECTS)

clean :
	rm -rf $(OBJECTS)

fclean : clean
	rm -rf $(NAME)

re : fclean all
