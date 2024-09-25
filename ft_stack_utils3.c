/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_stack_utils3.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/25 18:05:59 by grannou           #+#    #+#             */
/*   Updated: 2021/12/25 18:39:07 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	ft_stack_is_sorted(t_stack *stack)
{
	while (stack && stack->next)
	{
		if (stack->nbr < stack->next->nbr)
			stack = stack->next;
		else
			return (0);
	}
	return (1);
}

int	ft_nbr_position(t_stack *stack, int number)
{
	int		position;

	position = 0;
	while (stack && stack->nbr != number)
	{
		position++;
		stack = stack->next;
	}
	return (position);
}

void	ft_init_sorted_index(t_stack **stack)
{
	t_stack	*first;
	t_stack	*second;
	int		sorted_index;

	first = *stack;
	while (first)
	{
		second = *stack;
		sorted_index = 0;
		while (second)
		{
			if (first->nbr >= second->nbr)
				first->sorted_index = sorted_index++;
			second = second->next;
		}
		first = first->next;
	}
}

void	ft_best_pb(t_stack **sa, t_stack **sb, int number)
{
	int	middle_index;
	int	number_position;

	middle_index = ft_stack_size(*sa) / 2;
	number_position = ft_nbr_position(*sa, number);
	if (number_position <= middle_index)
		while (ft_nbr_position(*sa, number) != 0)
			ft_ra(sa, 1);
	else
		while (ft_nbr_position(*sa, number) != 0)
			ft_rra(sa, 1);
	ft_pb(sa, sb, 1);
}
