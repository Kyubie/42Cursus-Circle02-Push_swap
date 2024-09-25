/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_fill_sa_bonus.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/30 17:24:46 by grannou           #+#    #+#             */
/*   Updated: 2021/12/30 19:37:30 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

int	ft_fill_sa(t_stack **sa, char **numbers)
{
	int		i;
	int		number;
	t_stack	*elem;

	i = 0;
	number = 0;
	elem = NULL;
	while (numbers[i])
	{
		number = ft_atoi(numbers[i]);
		elem = ft_lst_create(number);
		if (!elem)
		{
			ft_lst_clear(sa);
			ft_print_error();
		}
		*sa = ft_lst_addback(sa, elem);
		i++;
	}
	ft_init_sorted_index(sa);
	return (EXIT_SUCCESS);
}
