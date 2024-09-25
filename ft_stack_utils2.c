/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_stack_utils2.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/25 18:05:47 by grannou           #+#    #+#             */
/*   Updated: 2021/12/25 18:08:00 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

t_stack	*ft_clear_stack(t_stack *stack)
{
	t_stack	*tmp;

	tmp = NULL;
	if (!stack)
		return (NULL);
	while (stack)
	{
		tmp = stack->next;
		free(stack);
		stack = tmp;
	}
	return (NULL);
}

int	ft_stack_size(t_stack *stack)
{
	int	i;

	i = 0;
	while (stack)
	{
		i++;
		stack = stack->next;
	}
	return (i);
}

int	ft_get_stack_min(t_stack *stack)
{
	int		min;

	min = INT_MAX;
	while (stack)
	{
		if (min > stack->nbr)
			min = stack->nbr;
		stack = stack->next;
	}
	return (min);
}

int	ft_get_stack_max(t_stack *stack)
{
	int		max;

	max = INT_MIN;
	while (stack)
	{
		if (max < stack->nbr)
			max = stack->nbr;
		stack = stack->next;
	}
	return (max);
}

int	ft_get_stack_median(t_stack *stack, int stack_size)
{
	int		median_index;

	if (ft_is_even(stack_size))
		median_index = (stack_size / 2) - 1;
	else
		median_index = (stack_size / 2);
	while (stack && stack->sorted_index != median_index)
		stack = stack->next;
	return (stack->nbr);
}
