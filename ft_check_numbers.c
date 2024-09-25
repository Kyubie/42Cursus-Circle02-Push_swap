/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_check_numbers.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 14:05:08 by grannou           #+#    #+#             */
/*   Updated: 2021/12/29 11:22:09 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static int	ft_check_sorted(char **numbers)
{
	int	i;

	i = 0;
	while (numbers[i] && numbers[i + 1])
	{
		if (ft_atoi(numbers[i]) < ft_atoi(numbers[i + 1]))
			i++;
		else
			return (EXIT_SUCCESS);
	}
	return (EXIT_FAILURE);
}

static int	ft_over_int_value(char **numbers)
{
	int	i;

	i = 0;
	while (numbers[i])
	{
		if (ft_atoll(numbers[i]) < INT_MIN || ft_atoll(numbers[i]) > INT_MAX)
			return (EXIT_FAILURE);
		i++;
	}
	return (EXIT_SUCCESS);
}

static int	ft_check_duplicates(char **numbers)
{
	int	i;
	int	j;

	i = 0;
	while (numbers[i])
	{
		j = 0;
		while (numbers[j])
		{
			if (ft_atoll(numbers[i]) == ft_atoll(numbers[j]) && i != j)
				return (EXIT_FAILURE);
			j++;
		}
		i++;
	}
	return (EXIT_SUCCESS);
}

int	ft_check_numbers(char **numbers)
{
	if (ft_check_sorted(numbers))
	{
		ft_free_splitted(numbers);
		exit (0);
	}
	else if (ft_over_int_value(numbers) || ft_check_duplicates(numbers))
	{
		ft_free_splitted(numbers);
		ft_print_error();
	}
	return (EXIT_SUCCESS);
}
