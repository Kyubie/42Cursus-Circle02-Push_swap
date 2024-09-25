/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_reverse_rotate_bonus.c                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 14:20:23 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 14:21:01 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

/*
** ft_rra = reverse rotate a = shift down all elem of stack a, last becomes first
*/

void	ft_rra(t_stack **sa, int mode)
{
	t_stack	*last;
	t_stack	*secondtolast;

	if (!*sa || ft_lst_size(*sa) == 1)
		return ;
	last = ft_lstlast(*sa);
	secondtolast = ft_lstsecondtolast(*sa);
	secondtolast->next = NULL;
	ft_lst_addfront(sa, last);
	if (mode == PRINT)
		ft_putstr_endl_fd("rra", STDOUT_FILENO);
}

/*
** ft_rrb = reverse rotate b = shift down all elem of stack b, last becomes first
*/

void	ft_rrb(t_stack **sb, int mode)
{
	t_stack	*last;
	t_stack	*secondtolast;

	if (!*sb || ft_lst_size(*sb) == 1)
		return ;
	last = ft_lstlast(*sb);
	secondtolast = ft_lstsecondtolast(*sb);
	secondtolast->next = NULL;
	ft_lst_addfront(sb, last);
	if (mode == PRINT)
		ft_putstr_endl_fd("rrb", STDOUT_FILENO);
}

/*
** ft_rrr = execute both rra and rrb
*/

void	ft_rrr(t_stack **sa, t_stack **sb, int mode)
{
	if ((!*sa || ft_lst_size(*sa) == 1) \
		&& (!*sb || ft_lst_size(*sb) == 1))
		return ;
	ft_rra(sa, 0);
	ft_rrb(sb, 0);
	if (mode == PRINT)
		ft_putstr_endl_fd("rrr", STDOUT_FILENO);
}
