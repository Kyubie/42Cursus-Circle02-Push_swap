/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_insert_sort.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/22 16:39:00 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 16:00:49 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static void	ft_replace_stack(t_stack **sa)
{
	int	min;
	int	size_sa;

	min = ft_get_stack_min(*sa);
	size_sa = ft_stack_size(*sa);
	while ((*sa)->nbr != min)
	{
		if (ft_nbr_position(*sa, min) < size_sa / 2)
			ft_ra(sa, 1);
		else
			ft_rra(sa, 1);
	}
}

static int	ft_best_push(t_stack **sa, t_stack **sb, int size_b)
{
	int	*counter;
	int	i;

	counter = NULL;
	counter = (int *)ft_calloc(sizeof(int), 8);
	if (!counter)
		return (-1);
	counter[NBR_OPS] = INT_MAX;
	i = 0;
	while (i < counter[NBR_OPS] && i < size_b)
	{
		ft_search_push(*sa, *sb, i, &counter);
		ft_search_push(*sa, *sb, size_b - i - 1, &counter);
		i++;
	}
	ft_apply_instructions(sa, sb, counter);
	free(counter);
	return (0);
}

static void	ft_pb_median_sides(t_stack **sa, t_stack **sb)
{
	int	i;
	int	min;
	int	max;
	int	median;

	i = 0;
	min = ft_get_stack_min(*sa);
	max = ft_get_stack_max(*sa);
	median = ft_get_stack_median(*sa, ft_stack_size(*sa));
	while (i < ft_stack_size(*sa))
	{
		if ((*sa)->nbr > median && (*sa)->nbr != max)
			ft_pb(sa, sb, 1);
		else
			ft_ra(sa, 1);
		i++;
	}
	while (ft_stack_size(*sa) > 3)
	{
		if ((*sa)->nbr != min && (*sa)->nbr != max)
			ft_pb(sa, sb, 1);
		else
			ft_ra(sa, 1);
	}
}

int	ft_insert_sort(t_stack **sa, t_stack **sb)
{
	ft_pb_median_sides(sa, sb);
	ft_sort_three(sa);
	while (*sb)
		if (ft_best_push(sa, sb, ft_stack_size(*sb)))
			return (-1);
	ft_replace_stack(sa);
	return (0);
}
