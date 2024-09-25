/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_get_next_line.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/29 15:46:42 by grannou           #+#    #+#             */
/*   Updated: 2021/12/30 18:25:07 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

int	ft_get_next_line(char **line, int i, int fd)
{
	char	buffer;
	int		ret;

	ret = read(fd, &buffer, 1);
	if (ret == 1 && buffer != '\n')
	{
		ret = ft_get_next_line(line, i + 1, fd);
		if (ret != -1)
			(*line)[i] = buffer;
	}
	else if (ret != -1)
	{
		*line = (char *)malloc(sizeof(char) * (i + 1));
		if (!*line)
			return (-1);
		(*line)[i] = '\0';
	}
	return (ret);
}
