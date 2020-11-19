# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlachheb <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/17 17:38:02 by mlachheb          #+#    #+#              #
#    Updated: 2020/11/18 13:19:00 by mlachheb         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s\
	  ft_write.s ft_read.s ft_strdup.s

OBJ = ft_strlen.o ft_strcpy.o ft_strcmp.o\
	  ft_write.o ft_read.o ft_strdup.o

NAME = libasm.a

all: $(NAME)

$(NAME):
	nasm -f macho64 ft_strlen.s -o ft_strlen.o
	nasm -f macho64 ft_strcpy.s -o ft_strcpy.o
	nasm -f macho64 ft_strcmp.s -o ft_strcmp.o
	nasm -f macho64 ft_write.s -o ft_write.o
	nasm -f macho64 ft_read.s -o ft_read.o
	nasm -f macho64 ft_strdup.s -o ft_strdup.o
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean:
	/bin/rm -f $(NAME)
re: fclean all
