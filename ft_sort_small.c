/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sort_small.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/21 11:01:16 by grannou           #+#    #+#             */
/*   Updated: 2021/12/29 13:16:21 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

/*
** SORT TWO
** 2 combinations for 2 int stack
** 1 2 (already sorted)
** 2 1 -> sa -> 1 2
*/

void	ft_sort_two(t_stack **sa)
{
	if (!ft_stack_is_sorted(*sa))
		ft_sa(sa, 1);
}

/*
** SORT THREE
** 6 combinations for 3 int stack
** 3 1 2 (max in 1st pos) -> ra -> 1 2 3
** 3 2 1 (max in 1st pos) -> ra -> 2 1 3 (max in 3rd pos) -> sa - 1 2 3
** 2 3 1 (max in 2nd pos) -> rra -> 1 2 3
** 1 3 2 (max in 2nd pos) -> rra -> 2 1 3 (max in 3rd pos) -> sa -> 1 2 3
** 2 1 3 (max in 3rd pos) -> sa -> 1 2 3
** 1 2 3
*/

void	ft_sort_three(t_stack **sa)
{
	int	max;

	max = ft_get_stack_max(*sa);
	while (!ft_stack_is_sorted(*sa))
	{
		if (ft_nbr_position(*sa, max) == 0 && !ft_stack_is_sorted(*sa))
			ft_ra(sa, 1);
		if (ft_nbr_position(*sa, max) == 1 && !ft_stack_is_sorted(*sa))
			ft_rra(sa, 1);
		if (ft_nbr_position(*sa, max) == 2 && !ft_stack_is_sorted(*sa))
			ft_sa(sa, 1);
	}
}

/*
** SORT FOUR
*/

void	ft_sort_four(t_stack **sa, t_stack **sb)
{
	int	min;

	min = ft_get_stack_min(*sa);
	while (!ft_stack_is_sorted(*sa))
	{
		ft_best_pb(sa, sb, min);
		if (!ft_stack_is_sorted(*sa))
			ft_sort_three(sa);
		ft_pa(sa, sb, 1);
	}
}

/*
** SORT FIVE
*/
//works, under 12 ops but not under 8

void	ft_sort_five(t_stack **sa, t_stack **sb)
{
	int	min;
	int	max;

	min = ft_get_stack_min(*sa);
	max = ft_get_stack_max(*sa);
	if (ft_stack_is_sorted(*sa))
		return ;
	else
	{
		ft_best_pb(sa, sb, min);
		ft_best_pb(sa, sb, max);
		if (!ft_stack_is_sorted(*sa))
			ft_sort_three(sa);
		ft_pa(sa, sb, 1);
		ft_ra(sa, 1);
		ft_pa(sa, sb, 1);
	}
}
