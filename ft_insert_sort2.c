/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_insert_sort2.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/25 17:56:11 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 16:05:29 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static void	ft_replace_counter(int *tab, int **counter)
{
	(*counter)[RA] = (tab[METHOD] == 0) * (tab[RA] - tab[RR])
		+ (tab[METHOD] != 0) * (tab[RA]);
	(*counter)[RB] = (tab[METHOD] == 0) * (tab[RB] - tab[RR])
		+ (tab[METHOD] != 0) * (tab[RB]);
	(*counter)[RR] = tab[RR];
	(*counter)[RRA] = (tab[METHOD] == 1) * (tab[RRA] - tab[RRR])
		+ (tab[METHOD] != 1) * (tab[RRA]);
	(*counter)[RRB] = (tab[METHOD] == 1) * (tab[RRB] - tab[RRR])
		+ (tab[METHOD] != 1) * (tab[RRB]);
	(*counter)[RRR] = tab[RRR];
	(*counter)[METHOD] = tab[METHOD];
	(*counter)[NBR_OPS] = tab[NBR_OPS];
}

static int	ft_best_method(int *method)
{
	return (1 * ((method[1] < method[0])
			&& (method[1] < method[2])
			&& (method[1] < method[3]))
		+ 2 * ((method[2] < method[0])
			&& (method[2] < method[1])
			&& (method[2] < method[3]))
		+ 3 * ((method[3] < method[0])
			&& (method[3] < method[1])
			&& (method[3] < method[2]))
		+ 0);
}

static void	ft_compute_method(int *method, int *tab)
{
	method[0] = tab[RA] - tab[RR] + tab[RB] - tab[RR] + tab[RR];
	method[1] = tab[RRA] - tab[RRR] + tab [RRB] - tab[RRR] + tab[RRR];
	method[2] = tab[RA] + tab[RRB];
	method[3] = tab[RB] + tab[RRA];
}

static void	ft_compute_tab(int *tab, t_stack *sa, t_stack *sb, int i)
{
	tab[RA] = ft_place_value(sa, ft_take_value(sb, i));
	tab[RB] = i;
	tab[RR] = ft_smaller(tab[RA], tab[RB]);
	tab[RRA] = ft_stack_size(sa) - tab[RA];
	tab[RRB] = ft_stack_size(sb) - i;
	tab[RRR] = ft_smaller(tab[RRA], tab [RRB]);
}

void	ft_search_push(t_stack *sa, t_stack *sb, int i, int **counter)
{
	int	tab[8];
	int	method[4];

	ft_compute_tab(tab, sa, sb, i);
	ft_compute_method(method, tab);
	tab[METHOD] = ft_best_method(method);
	tab[NBR_OPS] = method[0] * (tab[METHOD] == 0)
		+ method[1] * (tab[METHOD] == 1)
		+ method[2] * (tab[METHOD] == 2)
		+ method[3] * (tab[METHOD] == 3);
	if (tab[NBR_OPS] < (*counter)[NBR_OPS])
		ft_replace_counter(tab, counter);
}
