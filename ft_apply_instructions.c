/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_apply_instructions.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/25 16:59:00 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 14:55:30 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static void	ft_method_zero(t_stack **sa, t_stack **sb, int *counter)
{
	while (counter[RA]--)
		ft_ra(sa, 1);
	while (counter[RB]--)
		ft_rb(sb, 1);
	while (counter[RR]--)
		ft_rr(sa, sb, 1);
	ft_pa(sa, sb, 1);
}

static void	ft_method_one(t_stack **sa, t_stack **sb, int *counter)
{
	while (counter[RRA]--)
		ft_rra(sa, 1);
	while (counter[RRB]--)
		ft_rrb(sb, 1);
	while (counter[RRR]--)
		ft_rrr(sa, sb, 1);
	ft_pa(sa, sb, 1);
}

static void	ft_method_two(t_stack **sa, t_stack **sb, int *counter)
{
	while (counter[RA]--)
		ft_ra(sa, 1);
	while (counter[RRB]--)
		ft_rrb(sb, 1);
	ft_pa(sa, sb, 1);
}

static void	ft_method_three(t_stack **sa, t_stack **sb, int *counter)
{
	while (counter[RB]--)
		ft_rb(sb, 1);
	while (counter[RRA]--)
		ft_rra(sa, 1);
	ft_pa(sa, sb, 1);
}

void	ft_apply_instructions(t_stack **sa, t_stack **sb, int *counter)
{
	if (counter[METHOD] == 0)
		ft_method_zero(sa, sb, counter);
	if (counter[METHOD] == 1)
		ft_method_one(sa, sb, counter);
	if (counter[METHOD] == 2)
		ft_method_two(sa, sb, counter);
	if (counter[METHOD] == 3)
		ft_method_three(sa, sb, counter);
}
