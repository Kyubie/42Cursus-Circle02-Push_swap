/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_check_arguments.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/25 07:43:41 by grannou           #+#    #+#             */
/*   Updated: 2021/12/30 19:08:50 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static int	ft_empty_argument(int argc, char **argv)
{
	int	i;

	i = 1;
	while (i < argc)
	{
		if (ft_strcmp(argv[i], "") == 0 || ft_is_empty_str(argv[i]))
			return (EXIT_FAILURE);
		i++;
	}
	return (EXIT_SUCCESS);
}

static int	ft_wrong_chars_argument(int argc, char **argv)
{
	int	i;
	int	j;

	i = 1;
	j = 0;
	while (i < argc)
	{
		j = 0;
		if (ft_isspace(argv[i][j]))
			return (EXIT_FAILURE);
		while (argv[i][j])
		{
			if (!ft_issign_digit_or_space(argv[i][j]))
				return (EXIT_FAILURE);
			if (ft_issign(argv[i][j]) && !ft_isdigit(argv[i][j + 1]))
				return (EXIT_FAILURE);
			if (ft_isdigit(argv[i][j]) && ft_issign(argv[i][j + 1]))
				return (EXIT_FAILURE);
			j++;
		}
		i++;
	}
	return (EXIT_SUCCESS);
}

static int	ft_over_int_len(int argc, char **argv)
{
	int	i;
	int	j;
	int	len;

	i = 1;
	while (i < argc)
	{
		j = 0;
		len = 0;
		while (argv[i][j])
		{
			if (!ft_isdigit(argv[i][j]))
				len = 0;
			if (ft_isdigit(argv[i][j]))
				len++;
			if (len > 10)
				return (EXIT_FAILURE);
			j++;
		}
		i++;
	}
	return (EXIT_SUCCESS);
}

static int	ft_check_arguments(int argc, char **argv)
{
	if (argc == 1)
		exit (0);
	if (ft_empty_argument(argc, argv)
		|| ft_wrong_chars_argument(argc, argv)
		|| ft_over_int_len(argc, argv))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

char	**ft_check_and_parse(int argc, char **argv)
{
	char	*joined_argv;
	char	**numbers;

	joined_argv = NULL;
	if (ft_check_arguments(argc, argv))
		ft_print_error();
	if (!ft_strjoin_argv(argc, argv, &joined_argv))
		ft_print_error();
	numbers = ft_split(joined_argv, ' ');
	free(joined_argv);
	if (!numbers)
		ft_print_error();
	return (numbers);
}
