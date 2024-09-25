/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_error_free.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/30 17:58:30 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 15:57:56 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	ft_print_error(void)
{
	ft_putstr_endl_fd("Error", STDERR_FILENO);
	exit (EXIT_FAILURE);
}

void	ft_free_splitted(char **splitted)
{
	int	i;

	i = 0;
	while (splitted[i])
	{
		free(splitted[i]);
		i++;
	}
	free(splitted);
}

void	ft_free_all(char **numbers, t_stack **sa, int n)
{
	ft_free_splitted(numbers);
	ft_lst_clear(sa);
	exit(n);
}
