/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utils3_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 11:07:55 by grannou           #+#    #+#             */
/*   Updated: 2021/12/29 13:44:52 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

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

long long int	ft_atoll(char *str)
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

int	ft_all_argv_len(int argc, char **argv)
{
	int	i;
	int	all_argv_len;

	i = 1;
	all_argv_len = 0;
	while (i < argc)
	{
		all_argv_len += ft_strlen(argv[i]);
		i++;
	}
	return (all_argv_len);
}
