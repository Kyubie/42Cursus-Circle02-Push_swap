/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_checker.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/26 13:37:39 by grannou           #+#    #+#             */
/*   Updated: 2021/12/30 20:37:48 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

static void	ft_print_checker_output(t_stack *sa, t_stack *sb)
{
	if (ft_stack_is_sorted(sa) && sb == NULL)
		ft_putstr_endl_fd(GREEN "OK " FOX RESET, 1);
	else
		ft_putstr_endl_fd(RED "KO " KO RESET, 2);
}

int	main(int argc, char **argv)
{
	t_stack	*sa;
	t_stack	*sb;
	char	**numbers;
	char	*line;

	sa = NULL;
	sb = NULL;
	line = NULL;
	numbers = ft_check_and_parse(argc, argv);
	ft_check_numbers(numbers);
	ft_fill_sa(&sa, numbers);
	while (ft_get_next_line(&line, 0, 0) > 0)
	{
		ft_apply_operations(&sa, &sb, line);
		free(line);
	}
	if (ft_strlen(line))
	{
		free(line);
		ft_print_error();
	}
	free(line);
	ft_print_checker_output(sa, sb);
	ft_free_all(numbers, &sa, &sb, 0);
	return (EXIT_SUCCESS);
}
