/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mlachheb <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/19 16:07:38 by mlachheb          #+#    #+#             */
/*   Updated: 2020/11/23 10:39:53 by mlachheb         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include "libasm.h"

int		main(int argv, char **args)
{
	int		len;
	int		leno;
	char	*str;
	char	*stro;
	int		fd;
	int		fdo;

	str = malloc(10);
	stro = malloc(10);
	/*len = ft_strlen("");
	printf("my ft_strlen : %d\n", len);
	leno = ft_strlen("");
	printf("original strlen : %d\n", leno);*/
	//------------------------------------------//
	/*len = ft_strcmp("", "ldfgkjgfk");
	printf("%d\n", len);
	leno = strcmp("", "ldfgkjgfk");
	printf("%d\n", leno);*/
	//------------------------------------------//
	/*str = ft_strcpy(str, "hello");
	printf("%s|\n", str);
	stro = ft_strcpy(stro, "hello");
	printf("%s|\n", stro);*/
	//------------------------------------------//
	/*str = ft_strdup("");
	printf("%s|\n", str);
	stro = strdup("");
	printf("%s|\n", stro);*/
	//------------------------------------------//
	/*fd = open("ttttt", O_RDONLY);
	len = ft_write(1, "hello World", 9);
	printf("|:%d\n", len);
	fdo = open("ttttt", O_RDONLY);
	leno = write(1, "hello World", 9);
	printf("|:%d\n", leno);*/
	//------------------------------------------//
	fdo = open("test", O_RDONLY);
	leno = read(fdo, stro, 30);
	printf("\n%d: |%s|\n", leno, stro);
	fd = open("test", O_RDONLY);
	len = ft_read(fd, str, 30);
	printf("\n%d: |%s|\n", len, str);
	return (0);
}
