/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utils2.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/26 12:52:02 by grannou           #+#    #+#             */
/*   Updated: 2021/12/25 18:11:05 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	ft_smaller(int a, int b)
{
	if (a < b)
		return (a);
	else
		return (b);
}

int	ft_is_even(int nbr)
{
	return (nbr % 2 == 0);
}

int	ft_strlen(char *str)
{
	int	i;

	i = 0;
	while (str[i])
		i++;
	return (i);
}

int	ft_strcmp(char *str1, char *str2)
{
	int	i;

	i = 0;
	while (str1[i] && str2[i] && str1[i] == str2[i])
		i++;
	return (str1[i] - str2[i]);
}

int	ft_strncmp(char *str1, char *str2, int len)
{
	int	i;

	i = 0;
	while (i < len && (str1[i] && str2[i]) && (str1[i] == str2[i]))
		i++;
	return (str1[i] - str2[i]);
}
