# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: grannou <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/10 16:17:36 by grannou           #+#    #+#              #
#    Updated: 2021/12/31 00:35:59 by grannou          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###############
# Compilation #
###############
CC = gcc
CFLAGS = -Wall -Wextra -Werror
# CFLAGS = -Wall -Wextra -Werror -g3 -fsanitize=address
NORME = norminette .
RM = rm -rf
HEADER = .

###########
# CHECKER #
###########

CHECKER_NAME = checker
CHECKER_SRCS = main_checker.c \
			ft_parsing_bonus.c \
			ft_strjoin_argv_bonus.c \
			ft_split_bonus.c \
			ft_check_numbers_bonus.c \
			ft_fill_sa_bonus.c \
			ft_error_free_bonus.c \
			ft_get_next_line.c \
			ft_apply_operations_bonus.c \
	 		ft_utils_bonus.c \
			ft_utils2_bonus.c \
			ft_utils3_bonus.c \
			ft_lst_utils_bonus.c \
			ft_lst_utils2_bonus.c \
			ft_stack_utils_bonus.c \
			ft_stack_utils2_bonus.c \
			ft_stack_utils3_bonus.c \
			ft_swap_bonus.c \
			ft_push_bonus.c \
			ft_rotate_bonus.c \
			ft_reverse_rotate_bonus.c

CHECKER_OBJS = $(CHECKER_SRCS:.c=.o)

#############
# PUSH_SWAP #
#############

PUSH_SWAP_NAME = push_swap
PUSH_SWAP_SRCS = main_push_swap.c \
			ft_parsing.c \
			ft_strjoin_argv.c \
			ft_split.c \
			ft_check_numbers.c \
			ft_fill_sa.c \
			ft_error_free.c \
			ft_choose_sort_size.c \
			ft_sort_small.c \
			ft_insert_sort.c \
			ft_insert_sort2.c \
			ft_insert_sort3.c \
			ft_apply_instructions.c \
			ft_utils.c \
			ft_utils2.c \
			ft_utils3.c \
			ft_lst_utils.c \
			ft_lst_utils2.c \
			ft_stack_utils.c \
			ft_stack_utils2.c \
			ft_stack_utils3.c \
			ft_swap.c \
			ft_push.c \
			ft_rotate.c \
			ft_reverse_rotate.c

PUSH_SWAP_OBJS = $(PUSH_SWAP_SRCS:.c=.o)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $< -I $(HEADER)

.PHONY: all
all: $(PUSH_SWAP_NAME)

$(PUSH_SWAP_NAME): $(PUSH_SWAP_OBJS)

	@echo "\n"
	@echo "$(shell tput setaf 198)██████╗ ██╗   ██╗███████╗██╗  ██╗    ███████╗██╗    ██╗ █████╗ ██████╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 197)██╔══██╗██║   ██║██╔════╝██║  ██║    ██╔════╝██║    ██║██╔══██╗██╔══██╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 196)██████╔╝██║   ██║███████╗███████║    ███████╗██║ █╗ ██║███████║██████╔╝$(shell tput sgr0)"
	@echo "$(shell tput setaf 202)██╔═══╝ ██║   ██║╚════██║██╔══██║    ╚════██║██║███╗██║██╔══██║██╔═══╝$(shell tput sgr0)"
	@echo "$(shell tput setaf 208)██║     ╚██████╔╝███████║██║  ██║    ███████║╚███╔███╔╝██║  ██║██║$(shell tput sgr0)"
	@echo "$(shell tput setaf 214)╚═╝      ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚══════╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝$(shell tput sgr0)"
	@echo "\n"

	$(CC) $(CFLAGS) $(PUSH_SWAP_OBJS) -o $(PUSH_SWAP_NAME) -I $(dir push_swap.h)

.PHONY: norme
norme:

	@echo "\n"
	@echo "$(shell tput setaf 201)███╗   ██╗ ██████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗███████╗████████╗████████╗███████╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 200)████╗  ██║██╔═══██╗██╔══██╗████╗ ████║██║████╗  ██║██╔════╝╚══██╔══╝╚══██╔══╝██╔════╝$(shell tput sgr0)"
	@echo "$(shell tput setaf 199)██╔██╗ ██║██║   ██║██████╔╝██╔████╔██║██║██╔██╗ ██║█████╗     ██║      ██║   █████╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 198)██║╚██╗██║██║   ██║██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══╝     ██║      ██║   ██╔══$(shell tput sgr0)"
	@echo "$(shell tput setaf 197)██║ ╚████║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║██║ ╚████║███████╗   ██║      ██║   ███████╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 196)╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝      ╚═╝   ╚══════╝$(shell tput sgr0)"
	@echo "\n"
	@$(NORME)

.PHONY: display_bonus
display_bonus:
	@echo "\n"
	@echo "$(shell tput setaf 226)██████╗  ██████╗ ███╗   ██╗██╗   ██╗███████╗     ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗███████╗██████╗$(shel tput sgr0)"
	@echo "$(shell tput setaf 220)██╔══██╗██╔═══██╗████╗  ██║██║   ██║██╔════╝    ██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝██╔════╝██╔══██╗$(shel tput sgr0)"
	@echo "$(shell tput setaf 214)██████╔╝██║   ██║██╔██╗ ██║██║   ██║███████╗    ██║     ███████║█████╗  ██║     █████╔╝ █████╗  ██████╔╝$(shel tput sgr0)"
	@echo "$(shell tput setaf 208)██╔══██╗██║   ██║██║╚██╗██║██║   ██║╚════██║    ██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ ██╔══╝  ██╔══██╗$(shel tput sgr0)"
	@echo "$(shell tput setaf 202)██████╔╝╚██████╔╝██║ ╚████║╚██████╔╝███████║    ╚██████╗██║  ██║███████╗╚██████╗██║  ██╗███████╗██║  ██║$(shel tput sgr0)"
	@echo "$(shell tput setaf 196)╚═════╝  ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚══════╝     ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝$(shel tput sgr0)"
	@echo "\n"

.PHONY: bonus
bonus: display_bonus re $(CHECKER_NAME)


$(CHECKER_NAME): $(CHECKER_OBJS)
	$(CC) $(CFLAGS) $(CHECKER_OBJS) -o $(CHECKER_NAME) -I $(dir checker.h)

.PHONY: bonus
bonus:  $(CHECKER_NAME)

.PHONY: clean
clean:

	@echo "\n"
	@echo "$(shell tput setaf 51) ██████╗██╗     ███████╗ █████╗ ███╗   ██╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 50)██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║$(shell tput sgr0)"
	@echo "$(shell tput setaf 49)██║     ██║     █████╗  ███████║██╔██╗ ██║$(shell tput sgr0)"
	@echo "$(shell tput setaf 48)██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║$(shell tput sgr0)"
	@echo "$(shell tput setaf 47)╚██████╗███████╗███████╗██║  ██║██║ ╚████║$(shell tput sgr0)"
	@echo "$(shell tput setaf 46) ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝$(shell tput sgr0)"
	@echo "\n"

	$(RM) $(CHECKER_OBJS) $(PUSH_SWAP_OBJS)

.PHONY: display_fclean
display_fclean:
	@echo "$(shell tput setaf 45)███████╗ ██████╗██╗     ███████╗ █████╗ ███╗   ██╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 44)██╔════╝██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║$(shell tput sgr0)"
	@echo "$(shell tput setaf 43)█████╗  ██║     ██║     █████╗  ███████║██╔██╗ ██║$(shell tput sgr0)"
	@echo "$(shell tput setaf 42)██╔══╝  ██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║$(shell tput sgr0)"
	@echo "$(shell tput setaf 41)██║     ╚██████╗███████╗███████╗██║  ██║██║ ╚████║$(shell tput sgr0)"
	@echo "$(shell tput setaf 40)╚═╝      ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝$(shell tput sgr0)"
	@echo "\n"

.PHONY: fclean
fclean: display_fclean clean
	$(RM) $(PUSH_SWAP_NAME) $(CHECKER_NAME)

.PHONY: display_make_re
display_make_re:
	@echo "$(shell tput setaf 201)███╗   ███╗ █████╗ ██╗  ██╗███████╗    ██████╗ ███████╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 200)████╗ ████║██╔══██╗██║ ██╔╝██╔════╝    ██╔══██╗██╔════╝$(shell tput sgr0)"
	@echo "$(shell tput setaf 199)██╔████╔██║███████║█████╔╝ █████╗      ██████╔╝█████╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 198)██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝      ██╔══██╗██╔══╝$(shell tput sgr0)"
	@echo "$(shell tput setaf 197)██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗    ██║  ██║███████╗$(shell tput sgr0)"
	@echo "$(shell tput setaf 196)╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═╝╚══════╝$(shell tput sgr0)"
	@echo "\n"

re: display_make_re fclean all

.PHONY: fox
fox:
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)        $(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)        $(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0) $(shell tput setaf 94)∂∂∂∂$(shell tput setaf 202)ΩΩΩ$(tput sgr0)     $(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)      $(shell tput setaf 202)ΩΩ$(shell tput setaf 94)∂∂∂$(shell tput sgr0)  $(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0) $(shell tput setaf 94)∂∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩ$(tput sgr0)     $(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)     $(shell tput setaf 202)ΩΩΩΩΩΩ$(shell tput setaf 94)∂∂∂$(shell tput sgr0)  $(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)  $(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)  $(shell tput setaf 94)∂$(shell tput setaf 0)≈≈≈≈≈≈$(shell tput setaf 94)∂∂∂∂∂∂∂∂∂∂∂∂∂$(shell tput setaf 0)≈≈≈≈≈$(shell tput setaf 94)∂$(shell tput sgr0)   $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput sgr0)  $(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)  $(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)  $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)  $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂$(shell tput sgr0)  $(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)  $(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩ$(shell tput sgr0)  $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)  $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂$(shell tput sgr0)  $(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)  $(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩ$(shell tput setaf 94)∂$(shell tput sgr0)  $(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)  $(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩ$(shell tput setaf 94)∂$(shell tput sgr0)  $(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)  $(shell tput setaf 202)ΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)ππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩ  $(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput sgr0)  $(shell tput setaf 202)ΩΩ$(shell tput sgr0)  $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)πππππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)  $(shell tput setaf 202)ΩΩΩΩ$(shell tput sgr0)  $(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)πππππππππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)πππππππππππππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)πππππππππππππππππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)πππππππππππππππππππππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)ππππππππππππππππππππππππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)ππππππππππππππππππππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 208)ππππππππππππππππππππππ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂$(shell tput setaf 208)ππππππππππππππππ$(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂$(shell tput setaf 208)ππππππππππππππ$(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 208)ππππππππππ$(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@@$(shell tput setaf 40)@$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩ$(shell tput setaf 94)∂$(shell tput setaf 208)ππππππππ$(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@@@@$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@@@@$(shell tput setaf 40)@$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 208)ππππππππ$(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@@@$(shell tput setaf 40)@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@@@@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 208)πππππππππ$(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@@@@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 208)πππππππππππ$(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 208)πππππππππππππ$(shell tput setaf 94)∂$(shell tput setaf 202)ΩΩ$(shell tput sgr0) $(shell tput setaf 40)@@@$(shell tput sgr0) $(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈$(shell tput setaf 94)∂∂∂∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 208)ππππππππππππππ$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ∂∂$(shell tput setaf 0)≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂∂$(shell tput setaf 208)ππππππππππ$(shell tput setaf 94)∂∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂∂$(shell tput setaf 208)ππππππππ$(shell tput setaf 94)∂∂∂$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ∂∂$(shell tput setaf 0)≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 94)∂$(shell tput sgr0)ΩΩ$(shell tput setaf 94)∂∂∂∂∂∂∂∂∂∂∂∂∂∂∂∂∂$(shell tput sgr0)ΩΩΩΩΩΩ:::$(shell tput sgr0)ΩΩΩΩΩΩΩ$(shell tput setaf 202)ΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)ΩΩΩΩΩΩ:::$(shell tput sgr0)ΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂∂∂∂∂∂∂∂∂∂∂∂∂∂$(shell tput sgr0)ΩΩ$(shell tput setaf 94)∂$(shell tput sgr0)"
	@echo "$(shell tput setaf 94)∂∂$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩ$(shell tput sgr0)     :::::$(shell tput sgr0)     $(shell tput sgr0)ΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)             $(shell tput sgr0)ΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 0)≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)           $(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 0)≈≈∂∂$(shell tput setaf 0)≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈$(shell tput setaf 94)∂∂∂∂$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ:ΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput sgr0)         ΩΩΩΩΩΩΩΩΩΩ:ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂∂∂$(shell tput setaf 0)≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂∂∂∂∂$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂∂∂$(shell tput sgr0)ΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩΩΩ:$(shell tput sgr0)ΩΩΩΩ$(shell tput setaf 94)∂∂∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂∂$(shell tput sgr0)ΩΩΩΩΩΩΩΩΩΩ::$(shell tput sgr0)$(shell tput setaf 196)ΩΩΩ$(shell tput sgr0)::ΩΩΩΩΩΩΩΩ$(shell tput setaf 94)∂∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput sgr0):::$(shell tput sgr0)ΩΩΩΩ$(shell tput setaf 196)ΩΩΩ$(shell tput sgr0)ΩΩΩΩ:::$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂$(shell tput sgr0)ΩΩΩ$(shell tput setaf 196)Ω$(shell tput sgr0)ΩΩΩΩ$(shell tput setaf 94)∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
	@echo "$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput setaf 94)∂∂∂∂∂∂$(shell tput setaf 0)≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈$(shell tput sgr0)"
