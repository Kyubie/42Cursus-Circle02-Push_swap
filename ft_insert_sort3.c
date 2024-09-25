/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_insert_sort3.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/25 17:57:46 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 16:08:20 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static int	ft_while_lower(t_stack *sa, int value)
{
	int	ra_count;

	ra_count = 0;
	while (sa->nbr < value)
	{
		ra_count++;
		sa = sa->next;
	}
	return (ra_count);
}

static int	ft_while_upper(t_stack *sa, int value)
{
	int	ra_count;

	ra_count = 0;
	while (sa->nbr > value)
	{
		ra_count++;
		sa = sa->next;
	}
	return (ra_count + ft_while_lower(sa, value));
}

int	ft_take_value(t_stack *sb, int index)
{
	int	i;

	i = 0;
	while (sb && i != index)
	{
		sb = sb->next;
		i++;
	}
	return (sb->nbr);
}

int	ft_place_value(t_stack *sa, int value)
{
	int	ra_count;

	ra_count = 0;
	if (sa->nbr < value)
		ra_count += ft_while_lower(sa, value);
	else
	{
		if (ft_lstlast(sa)->nbr < value)
			return (0);
		else
			ra_count += ft_while_upper(sa, value);
	}
	return (ra_count);
}
