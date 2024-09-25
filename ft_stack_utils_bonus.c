/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_stack_utils_bonus.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/28 11:05:31 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 11:06:59 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

t_stack	*ft_stack_last(t_stack *stack)
{
	if (!stack)
		return (NULL);
	while (stack->next)
		stack = stack->next;
	return (stack);
}

t_stack	*ft_stack_secondtolast(t_stack *stack)
{
	if (!stack)
		return (NULL);
	while (stack->next->next)
		stack = stack->next;
	return (stack);
}

t_stack	*ft_stack_addback(t_stack **stack, t_stack *element)
{
	if (*stack)
		ft_stack_last(*stack)->next = element;
	else
		*stack = element;
	return (*stack);
}

t_stack	*ft_stack_addfront(t_stack **stack, t_stack *element)
{
	element->next = *stack;
	*stack = element;
	return (*stack);
}
