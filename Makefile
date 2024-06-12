# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arissane <arissane@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/18 10:31:09 by arissane          #+#    #+#              #
#    Updated: 2024/05/22 11:25:14 by arissane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = \
	   ft_printf.c ft_putchar_printf.c ft_putstr_printf.c ft_nbr_len_printf.c \
	   ft_puthex_printf.c ft_putptr_printf.c ft_putnbr_printf.c

OFILES = $(SRCS:.c=.o)

CC = cc
CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(LIBFT) $(OFILES)
	ar -rcs $(NAME) $(OFILES)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
