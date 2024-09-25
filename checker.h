/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   checker.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/26 13:19:53 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 00:43:51 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CHECKER_H

# define CHECKER_H

# include <unistd.h>
# include <stdlib.h>
# include <stdio.h>
# include <limits.h>
# include <fcntl.h>

# define RED "\033[1;31m"
# define GREEN "\033[1;32m"
# define YELLOW "\033[1;33m"
# define BLUE "\033[1;34m"
# define PURPLE "\033[1;35m"
# define CYAN "\033[1;36m"
# define RESET "\033[0m"

# define FOX "🦊"
# define KO "❌ Les calculs sont pas bons Kevin ❌"

typedef struct s_stack	t_stack;

struct s_stack
{
	int		nbr;
	int		sorted_index;
	t_stack	*next;
};

enum	e_DATA
{
	SIZE,
	MIN,
	MAX,
	MEDIAN
};

enum	e_PRINT_MODE
{
	NO_PRINT,
	PRINT
};

// ft_parsing_bonus.c
char		**ft_check_and_parse(int argc, char **argv);

// ft_strjoin_argv_bonus.c
char		*ft_strjoin_argv(int argc, char **argv, char **joined_argv);

// ft_split_bonus.c
int			ft_count_words(char *str, char sep);
char		**ft_split(char *str, char sep);

// ft_check_numbers_bonus.c
int			ft_check_numbers(char **numbers);

// ft_fill_sa_bonus.c
int			ft_fill_sa(t_stack **sa, char **numbers);

// ft_error_free_bonus.c
void		ft_print_error(void);
void		ft_free_splitted(char **splitted);
void		ft_free_all(char **numbers, t_stack **sa, t_stack **sb, int n);

// ft_get_next_line.c
int			ft_get_next_line(char **line, int i, int fd);

// ft_apply_operations_bonus.c
void		ft_apply_operations(t_stack **sa, t_stack **sb, char *line);

// ft_utils_bonus.c
int			ft_issign(char c);
int			ft_isdigit(char c);
int			ft_isspace(char c);
int			ft_issign_digit_or_space(char c);
int			ft_is_empty_str(char *str);

// ft_utils2_bonus.c
int			ft_smaller(int a, int b);
int			ft_is_even(int nbr);
int			ft_strlen(char *str);
int			ft_strcmp(char *str1, char *str2);
int			ft_strncmp(char *str1, char *str2, int len);

// ft_utils3_bonus.c
void		ft_putstr_endl_fd(char *str, int fd);
int			ft_atoi(char *str);
long long	ft_atoll(char *str);
void		*ft_memset(void *area, int character, size_t len);
void		*ft_calloc(int count, int size);

// ft_lst_utils_bonus.c
int			ft_lst_size(t_stack *stack);
t_stack		*ft_lst_create(int nbr);
void		ft_lst_clear(t_stack **stack);

// ft_lst_utils2_bonus.c
t_stack		*ft_lstlast(t_stack *stack);
t_stack		*ft_lstsecondtolast(t_stack *stack);
t_stack		*ft_lst_addback(t_stack **stack, t_stack *element);
t_stack		*ft_lst_addfront(t_stack **stack, t_stack *element);

// ft_stack_utils_bonus.c
t_stack		*ft_create_stack(int nbr);
t_stack		*ft_stack_last(t_stack *stack);
t_stack		*ft_stack_secondtolast(t_stack *stack);
t_stack		*ft_saddback(t_stack **stack, t_stack *element);
t_stack		*ft_saddfront(t_stack **stack, t_stack *element);

// ft_stack_utils2_bonus.c
t_stack		*ft_clear_stack(t_stack *stack);
int			ft_stack_size(t_stack *stack);
int			ft_get_stack_min(t_stack *stack);
int			ft_get_stack_max(t_stack *stack);
int			ft_get_stack_median(t_stack *stack, int stack_size);

// ft_stack_utils3_bonus.c
int			ft_stack_is_sorted(t_stack *stack);
int			ft_nbr_position(t_stack *stack, int number);
void		ft_init_sorted_index(t_stack **stack);

// ft_swap_bonus.c
void		ft_sa(t_stack **sa, int mode);
void		ft_sb(t_stack **sb, int mode);
void		ft_ss(t_stack **sa, t_stack **sb, int mode);

// ft_push_bonus.c
void		ft_pa(t_stack **sa, t_stack **sb, int mode);
void		ft_pb(t_stack **sa, t_stack **sb, int mode);

// ft_rotate_bonus.c
void		ft_ra(t_stack **sa, int mode);
void		ft_rb(t_stack **sb, int mode);
void		ft_rr(t_stack **sa, t_stack **sb, int mode);

// ft_reverse_rotate_bonus.c
void		ft_rra(t_stack **sa, int mode);
void		ft_rrb(t_stack **sb, int mode);
void		ft_rrr(t_stack **sa, t_stack **sb, int mode);

// main_checker.c
int			main(int argc, char **argv);

#endif
