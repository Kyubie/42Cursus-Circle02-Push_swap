/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin_argv_bonus.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/30 18:43:27 by grannou           #+#    #+#             */
/*   Updated: 2021/12/30 18:57:13 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

static int	ft_all_argv_len(int argc, char **argv)
{
	int	i;
	int	all_argv_len;

	i = 1;
	all_argv_len = 0;
	while (i < argc)
	{
		all_argv_len += ft_strlen(argv[i]);
		i++;
	}
	return (all_argv_len);
}

char	*ft_strjoin_argv(int argc, char **argv, char **joined_argv)
{
	int	i;
	int	j;
	int	total_len;

	(*joined_argv) = NULL;
	i = 1;
	j = 0;
	total_len = ft_all_argv_len(argc, argv);
	*joined_argv = (char *)malloc((total_len + (argc - 2)) + 1);
	if (!(*joined_argv))
		return (NULL);
	while (i < argc)
	{
		while (argv[i] && *argv[i])
			(*joined_argv)[j++] = *argv[i]++;
		if (i != argc - 1)
			(*joined_argv)[j++] = ' ';
		i++;
	}
	(*joined_argv)[j] = '\0';
	return (*joined_argv);
}
