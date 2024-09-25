/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lst_utils2.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/26 12:24:11 by grannou           #+#    #+#             */
/*   Updated: 2021/12/27 23:29:16 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

t_stack	*ft_lstlast(t_stack *stack)
{
	if (!stack)
		return (NULL);
	while (stack->next)
		stack = stack->next;
	return (stack);
}

t_stack	*ft_lstsecondtolast(t_stack *stack)
{
	if (!stack)
		return (NULL);
	while (stack->next->next)
		stack = stack->next;
	return (stack);
}

t_stack	*ft_lst_addback(t_stack **stack, t_stack *element)
{
	if (*stack)
		ft_lstlast(*stack)->next = element;
	else
		*stack = element;
	return (*stack);
}

t_stack	*ft_lst_addfront(t_stack **stack, t_stack *element)
{
	element->next = *stack;
	*stack = element;
	return (*stack);
}
