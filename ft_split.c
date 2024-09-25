/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/26 09:44:26 by grannou           #+#    #+#             */
/*   Updated: 2021/12/28 13:53:34 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	ft_count_words(char *str, char sep)
{
	int	word_count;

	word_count = 0;
	while (str && *str)
	{
		if (*str != sep && (*(str + 1) == sep || *(str + 1) == '\0'))
			word_count++;
		str++;
	}
	return (word_count);
}

static int	ft_word_len(char *str, char sep)
{
	int	i;

	i = 0;
	while (str[i] && str[i] != sep)
		i++;
	return (i);
}

static char	*ft_strndup(char *str, int n)
{
	char	*new_str;
	int		i;

	i = 0;
	new_str = (char *)malloc(sizeof(char) * (n + 1));
	if (!new_str)
		return (NULL);
	while (i < n)
	{
		new_str[i] = str[i];
		i++;
	}
	new_str[i] = '\0';
	return (new_str);
}

static int	ft_fill_split(char **splitted, int word_count, char *str, char sep)
{
	int	i;
	int	word_len;

	i = 0;
	word_len = 0;
	while (*str && i < word_count)
	{
		while (*str == sep)
			str++;
		word_len = ft_word_len(str, sep);
		splitted[i] = ft_strndup(str, word_len);
		if (!splitted[i])
		{
			ft_free_splitted(splitted);
			return (EXIT_FAILURE);
		}
		i++;
		str += word_len;
	}
	return (EXIT_SUCCESS);
}

char	**ft_split(char *str, char sep)
{
	char	**splitted;
	int		word_count;

	splitted = NULL;
	word_count = ft_count_words(str, sep);
	splitted = (char **)malloc(sizeof(char *) * (word_count + 1));
	if (!splitted)
		return (NULL);
	splitted[word_count] = NULL;
	if (ft_fill_split(splitted, word_count, str, sep))
		return (NULL);
	return (splitted);
}
