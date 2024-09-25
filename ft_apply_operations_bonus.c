/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_apply_operations_bonus.c                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 15:01:37 by grannou           #+#    #+#             */
/*   Updated: 2021/12/30 20:17:52 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

void	ft_apply_operations(t_stack **sa, t_stack **sb, char *line)
{
	if (ft_strcmp("sa", line) == 0)
		ft_sa(sa, NO_PRINT);
	else if (ft_strcmp("sb", line) == 0)
		ft_sb(sb, NO_PRINT);
	else if (ft_strcmp("ss", line) == 0)
		ft_ss(sa, sb, NO_PRINT);
	else if (ft_strcmp("ra", line) == 0)
		ft_ra(sa, NO_PRINT);
	else if (ft_strcmp("rb", line) == 0)
		ft_rb(sb, NO_PRINT);
	else if (ft_strcmp("rr", line) == 0)
		ft_rr(sa, sb, NO_PRINT);
	else if (ft_strcmp("rra", line) == 0)
		ft_rra(sa, NO_PRINT);
	else if (ft_strcmp("rrb", line) == 0)
		ft_rrb(sb, NO_PRINT);
	else if (ft_strcmp("rrr", line) == 0)
		ft_rrr(sa, sb, NO_PRINT);
	else if (ft_strcmp("pa", line) == 0)
		ft_pa(sa, sb, NO_PRINT);
	else if (ft_strcmp("pb", line) == 0)
		ft_pb(sa, sb, NO_PRINT);
	else
		ft_print_error();
}
