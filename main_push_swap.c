/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_push_swap.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/25 07:47:09 by grannou           #+#    #+#             */
/*   Updated: 2021/12/30 19:05:48 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	main(int argc, char **argv)
{
	t_stack	*sa;
	char	**numbers;

	sa = NULL;
	numbers = ft_check_and_parse(argc, argv);
	ft_check_numbers(numbers);
	ft_fill_sa(&sa, numbers);
	ft_choose_sort_size(&sa);
	ft_free_all(numbers, &sa, 0);
	return (EXIT_SUCCESS);
}
