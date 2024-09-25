/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lst_utils.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/26 12:25:59 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 10:47:47 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	ft_lst_size(t_stack *stack)
{
	int	i;

	i = 0;
	while (stack)
	{
		i++;
		stack = stack->next;
	}
	return (i);
}

t_stack	*ft_lst_create(int nbr)
{
	t_stack	*number;

	number = (t_stack *)malloc(sizeof(t_stack));
	if (!number)
		return (NULL);
	number->nbr = nbr;
	number->next = NULL;
	return (number);
}

void	ft_lst_clear(t_stack **stack)
{
	t_stack	*tmp;

	tmp = *stack;
	while (tmp)
	{
		*stack = tmp->next;
		free(tmp);
		tmp = *stack;
	}
}
