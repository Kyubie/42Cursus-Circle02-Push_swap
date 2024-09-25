/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grannou <grannou@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/15 07:49:04 by grannou           #+#    #+#             */
/*   Updated: 2021/12/31 16:09:03 by grannou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PUSH_SWAP_H

# define PUSH_SWAP_H

# include <stdlib.h>
# include <stdio.h>
# include <limits.h>
# include <unistd.h>
/*
** Symbolic constants of file streams in unistd.h:
** STDIN_FILENO  File number of stdin = 0
** STDOUT_FILENO File number of stdout = 1
** STDERR_FILENO File number of stderr = 2
*/

# define RED "\033[1;31m"
# define GREEN "\033[1;32m"
# define YELLOW "\033[1;33m"
# define BLUE "\033[1;34m"
# define PURPLE "\033[1;35m"
# define CYAN "\033[1;36m"
# define RESET "\033[0m"

enum	e_COUNTS
{
	RA,
	RB,
	RR,
	RRA,
	RRB,
	RRR,
	METHOD,
	NBR_OPS
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

typedef struct s_stack	t_stack;

struct s_stack
{
	int		nbr;
	int		sorted_index;
	t_stack	*next;
};

// ft_parsing.c
char		**ft_check_and_parse(int argc, char **argv);

// ft_strjoin_argv.c
char		*ft_strjoin_argv(int argc, char **argv, char **joined_argv);

// ft_split.c
int			ft_count_words(char *str, char sep);
char		**ft_split(char *str, char sep);

// ft_check_numbers.c
int			ft_check_numbers(char **numbers);

// ft_fill_sa.c
int			ft_fill_sa(t_stack **sa, char **numbers);

// ft_error_free.c
void		ft_print_error(void);
void		ft_free_splitted(char **splitted);
void		ft_free_all(char **numbers, t_stack **sa, int n);

// ft_choose_sort_size.c
void		ft_choose_sort_size(t_stack **sa);

// ft_sort_small.c
void		ft_sort_two(t_stack **sa);
void		ft_sort_three(t_stack **sa);
void		ft_sort_four(t_stack **sa, t_stack **sb);
void		ft_sort_five(t_stack **sa, t_stack **sb);

// ft_insert_sort.c
int			ft_insert_sort(t_stack **sa, t_stack **sb);

// ft_insert_sort2.c
void		ft_search_push(t_stack *sa, t_stack *sb, int i, int **counter);

// ft_insert_sort3.c
int			ft_take_value(t_stack *sb, int i);
int			ft_place_value(t_stack *sa, int value);

// ft_apply_instructions.c
void		ft_apply_instructions(t_stack **sa, t_stack **sb, int *counter);

// ft_utils.c
int			ft_issign(char c);
int			ft_isdigit(char c);
int			ft_isspace(char c);
int			ft_issign_digit_or_space(char c);
int			ft_is_empty_str(char *str);

// ft_utils2.c
int			ft_smaller(int a, int b);
int			ft_is_even(int nbr);
int			ft_strlen(char *str);
int			ft_strcmp(char *str1, char *str2);
int			ft_strncmp(char *str1, char *str2, int len);

// ft_utils3.c
void		ft_putstr_endl_fd(char *str, int fd);
int			ft_atoi(char *str);
long long	ft_atoll(char *str);
void		*ft_memset(void *area, int character, size_t len);
void		*ft_calloc(int count, int len);

// ft_lst_utils.c
int			ft_lst_size(t_stack *stack);
t_stack		*ft_lst_create(int nbr);
void		ft_lst_clear(t_stack **stack);

// ft_lst_utils2.c
t_stack		*ft_lstlast(t_stack *stack);
t_stack		*ft_lstsecondtolast(t_stack *stack);
t_stack		*ft_lst_addback(t_stack **stack, t_stack *element);
t_stack		*ft_lst_addfront(t_stack **stack, t_stack *element);

// ft_stack_utils.c
t_stack		*ft_create_stack(int nbr);
t_stack		*ft_stack_last(t_stack *stack);
t_stack		*ft_stack_secondtolast(t_stack *stack);
t_stack		*ft_saddback(t_stack **stack, t_stack *element);
t_stack		*ft_saddfront(t_stack **stack, t_stack *element);

// ft_stack_utils2.c
t_stack		*ft_clear_stack(t_stack *stack);
int			ft_stack_size(t_stack *stack);
int			ft_get_stack_min(t_stack *stack);
int			ft_get_stack_max(t_stack *stack);
int			ft_get_stack_median(t_stack *stack, int stack_size);

// ft_stack_utils3.c
int			ft_stack_is_sorted(t_stack *stack);
int			ft_nbr_position(t_stack *stack, int number);
void		ft_init_sorted_index(t_stack **stack);
void		ft_best_pb(t_stack **sa, t_stack **sb, int number);

// ft_swap.c
void		ft_sa(t_stack **sa, int mode);
void		ft_sb(t_stack **sb, int mode);
void		ft_ss(t_stack **sa, t_stack **sb, int mode);

// ft_push.c
void		ft_pa(t_stack **sa, t_stack **sb, int mode);
void		ft_pb(t_stack **sa, t_stack **sb, int mode);

// ft_rotate.c
void		ft_ra(t_stack **sa, int mode);
void		ft_rb(t_stack **sb, int mode);
void		ft_rr(t_stack **sa, t_stack **sb, int mode);

// ft_reverse_rotate.c
void		ft_rra(t_stack **sa, int mode);
void		ft_rrb(t_stack **sb, int mode);
void		ft_rrr(t_stack **sa, t_stack **sb, int mode);

// main_push_swap.c
int			main(int argc, char **argv);

#endif
