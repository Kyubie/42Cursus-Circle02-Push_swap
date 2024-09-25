/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_error_free_bonus.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 11:00:19 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 15:58:12 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

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

void	ft_free_all(char **numbers, t_stack **sa, t_stack **sb, int n)
{
	ft_free_splitted(numbers);
	ft_lst_clear(sa);
	ft_lst_clear(sb);
	exit(n);
}
