/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_choose_sort_size.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/30 17:57:05 by grannou           #+#    #+#             */
/*   Updated: 2021/12/30 17:57:18 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	ft_choose_sort_size(t_stack **sa)
{
	t_stack	*sb;
	int		stack_size;

	stack_size = ft_stack_size(*sa);
	sb = NULL;
	if (stack_size == 2)
		ft_sort_two(sa);
	if (stack_size == 3)
		ft_sort_three(sa);
	if (stack_size == 4)
		ft_sort_four(sa, &sb);
	if (stack_size == 5)
		ft_sort_five(sa, &sb);
	if (stack_size > 5)
		ft_insert_sort(sa, &sb);
}
