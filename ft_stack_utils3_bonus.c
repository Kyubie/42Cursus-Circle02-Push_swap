/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_stack_utils3_bonus.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 11:04:41 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 14:01:47 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

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
