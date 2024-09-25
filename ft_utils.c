/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utils.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/26 12:50:41 by grannou           #+#    #+#             */
/*   Updated: 2021/11/26 12:51:39 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	ft_issign(char c)
{
	return (c == '+' || c == '-');
}

int	ft_isdigit(char c)
{
	return (c >= '0' && c <= '9');
}

int	ft_isspace(char c)
{
	return (c == ' ' || (c >= '\t' && c <= '\r'));
}

int	ft_issign_digit_or_space(char c)
{
	return (ft_issign(c) || ft_isdigit(c) || ft_isspace(c));
}

int	ft_is_empty_str(char *str)
{
	int	i;

	i = 0;
	while (str[i])
	{
		if (!ft_isspace(str[i]))
			return (0);
		i++;
	}
	return (1);
}
