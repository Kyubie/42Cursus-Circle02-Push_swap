/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_swap_bonus.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 11:02:49 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 15:09:07 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

/*
ft_sa = swap a : swap the 2 first top elements of stack a
does nothing if stack a is empty or has only one element
*/

void	ft_sa(t_stack **sa, int mode)
{
	t_stack	*first;
	t_stack	*second;
	t_stack	*third;

	if (!*sa || ft_lst_size(*sa) == 1)
		return ;
	first = *sa;
	second = (*sa)->next;
	third = (*sa)->next->next;
	first->next = third;
	second->next = first;
	*sa = second;
	if (mode == PRINT)
		ft_putstr_endl_fd("sa", STDOUT_FILENO);
}

/*
ft_sb = swap b : swap the 2 first top elements of stack b
does nothing if stack b is empty or has only one element
*/

void	ft_sb(t_stack **sb, int mode)
{
	t_stack	*first;
	t_stack	*second;
	t_stack	*third;

	if (!*sb || ft_lst_size(*sb) == 1)
		return ;
	first = *sb;
	second = (*sb)->next;
	third = (*sb)->next->next;
	first->next = third;
	second->next = first;
	*sb = second;
	if (mode == PRINT)
		ft_putstr_endl_fd("sb", STDOUT_FILENO);
}

/*
ft_ss : execute both sa and sb
does nothing if stack a or stack b is empty or has only one element
*/

void	ft_ss(t_stack **sa, t_stack **sb, int mode)
{
	if ((!*sa || ft_lst_size(*sa) == 1) \
		&& (!*sb || ft_lst_size(*sb) == 1))
		return ;
	ft_sa(sa, 0);
	ft_sb(sb, 0);
	if (mode == PRINT)
		ft_putstr_endl_fd("ss", STDOUT_FILENO);
}
