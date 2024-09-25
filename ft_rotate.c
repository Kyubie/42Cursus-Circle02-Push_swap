/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_rotate.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 14:19:22 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 15:07:51 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

/*
** ft_ra = rotate a : shift up all elements of stack a, first becomes last
*/

void	ft_ra(t_stack **sa, int mode)
{
	t_stack	*first;

	if (!*sa || ft_lst_size(*sa) == 1)
		return ;
	first = *sa;
	*sa = (*sa)->next;
	first->next = NULL;
	ft_lst_addback(sa, first);
	if (mode == PRINT)
		ft_putstr_endl_fd("ra", STDOUT_FILENO);
}

/*
** ft_rb = rotate b : shift up all elements of stack b, first becomes last
*/

void	ft_rb(t_stack **sb, int mode)
{
	t_stack	*first;

	if (!*sb || ft_lst_size(*sb) == 1)
		return ;
	first = *sb;
	*sb = (*sb)->next;
	first->next = NULL;
	ft_lst_addback(sb, first);
	if (mode == PRINT)
		ft_putstr_endl_fd("rb", STDOUT_FILENO);
}

/*
** ft_rr : execute both ra and rb
*/

void	ft_rr(t_stack **sa, t_stack **sb, int mode)
{
	if ((!*sa || ft_lst_size(*sa) == 1) \
		&& (!*sb || ft_lst_size(*sb) == 1))
		return ;
	ft_ra(sa, 0);
	ft_rb(sb, 0);
	if (mode == PRINT)
		ft_putstr_endl_fd("rr", STDOUT_FILENO);
}
