/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utils4_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 11:08:18 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 11:08:27 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

void	*ft_memset(void *area, int character, size_t len)
{
	while (len--)
		((unsigned char *)area)[len] = (unsigned char)character;
	return (area);
}

void	*ft_calloc(int count, int size)
{
	void	*area;

	area = (void *)malloc(count * size);
	if (!area)
		return (NULL);
	ft_memset(area, 0, count * size);
	return (area);
}

char	*ft_strndup(char *str, int n)
{
	char	*new_str;
	int		i;

	i = 0;
	new_str = (char *)malloc(sizeof(char) * (n + 1));
	if (!new_str)
		return (NULL);
	while (i < n)
	{
		new_str[i] = str[i];
		i++;
	}
	new_str[i] = '\0';
	return (new_str);
}
