/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_push.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 14:30:18 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 14:53:30 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

/*
ft_pa = push a: remove fisrt element of stack b and add it to stack a
does nothing if stack b is empty
*/

void	ft_pa(t_stack **sa, t_stack **sb, int mode)
{
	t_stack	*first_b;

	if (!*sb)
		return ;
	first_b = *sb;
	*sb = (*sb)->next;
	ft_lst_addfront(sa, first_b);
	if (mode == PRINT)
		ft_putstr_endl_fd("pa", STDOUT_FILENO);
}

/*
pb = push b: remove fisrt element of stack a and add it to stack b
does nothing if stack a is empty
*/

void	ft_pb(t_stack **sa, t_stack **sb, int mode)
{
	t_stack	*first_a;

	if (!*sa)
		return ;
	first_a = *sa;
	*sa = (*sa)->next;
	ft_lst_addfront(sb, first_a);
	if (mode == PRINT)
		ft_putstr_endl_fd("pb", STDOUT_FILENO);
}
