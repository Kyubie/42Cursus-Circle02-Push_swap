/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utils3.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/26 12:34:47 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 14:44:43 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	ft_putstr_endl_fd(char *str, int fd)
{
	write(fd, str, ft_strlen(str));
	write(fd, "\n", 1);
}

int	ft_atoi(char *str)
{
	int	result;
	int	sign;

	result = 0;
	sign = 1;
	while (ft_isspace(*str))
		str++;
	if (ft_issign(*str))
	{
		if (*str == '-')
			sign *= -1;
		str++;
	}
	while (ft_isdigit(*str))
	{
		result = result * 10 + (*str - '0');
		str++;
	}
	return (sign * result);
}

long long	ft_atoll(char *str)
{
	long long int	result;
	int				sign;

	result = 0;
	sign = 1;
	while (ft_isspace(*str))
		str++;
	if (ft_issign(*str))
	{
		if (*str == '-')
			sign *= -1;
		str++;
	}
	while (ft_isdigit(*str))
	{
		result = result * 10 + (*str - '0');
		str++;
	}
	return (sign * result);
}

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
