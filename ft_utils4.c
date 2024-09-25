/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utils4.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/25 10:48:24 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 14:43:55 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	*ft_memset(void *area, int character, size_t len)
{
	while (len--)
		((unsigned char *)area)[len] = (unsigned char)character;
	return (area);
}

void	*ft_calloc(int count, int size)
{
	void	*area;

	area = (void *)malloc(count * size);
	if (!area)
		return (NULL);
	ft_memset(area, 0, count * size);
	return (area);
}
