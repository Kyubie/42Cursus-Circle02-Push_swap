#!/bin/bash

clear

#To include a bash library:
#. ./BashColorsLibrary.sh
# Combinations generator: dcode.fr/arrangements

Bee="🐝"
Bees="🐝🐝🐝"
Beees="🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"

K="🔮🧡🍁🐞🍄🍀🌸🐹🌳🦊🐼🌿🧡🦊🧡🌿🐼🦊🌳🐹🌸🍀🍄🐞🍁🧡🔮\n"
Y="⛩ 🌸🦊`tput setaf 46`  by Crash Ban-bee-coot Tutor 🐝 grannou  `tput sgr0`🦊🌸⛩\n"
A="⛩ 🌸🦊                                          🦊🌸⛩\n"

INT_MIN=-2147483648
INT_MAX=2147483647

mininum_score=0
maximum_score=0
average_score=0
median_score=0

Reset="\033[0m"
Red="\033[1;49;31m"
Green="\033[1;49;32m"
Yellow="\033[1;49;33m"
Blue="\033[1;49;34m"
Purple="\033[1;49;35m"
Cyan="\033[1;49;36m"

Valgrind="valgrind --tool=memcheck --leak-check=full --show-leak-kinds=all --leak-resolution=high --show-reachable=yes --trace-children=yes --verbose --log-file=valgrind.log"

#Multilines comment syntax:
: << 'COMM'
Blabla
blabla
COMM

ft_continue()
{
	while true;
	do
		read -p "${Bees} `tput setaf 46`CONTINUE?`tput sgr0` ${Bees}   [Y/n] " input
		case $input in
			[Yy]* ) break;;
			[Nn]* ) exit;;
			* ) echo -e "Please answer y or n";;
		esac
	done
}

echo -e "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
echo -e "`tput setaf 213`                                               ___  ___     _ _                                                                                        `tput sgr0`"
echo -e "`tput setaf 207`              ██████                           |  \/  |    | (_)                                                     ██████                            `tput sgr0`"
echo -e "`tput setaf 201`            ██      ██          ██             | .  . | ___| |_ ___ ___  __ _                                      ██      ██          ██              `tput sgr0`"
echo -e "`tput setaf 200`          ██          ██        ██             | |\/| |/ _ \ | / __/ __|/ _\` |                                   ██          ██        ██             `tput sgr0`"
echo -e "`tput setaf 199`          ██          ██      ████             | |  | |  __/ | \__ \__ \ (_| |                                   ██          ██      ████              `tput sgr0`"
echo -e "`tput setaf 198`          ██          ██████████               \_|  |_/\___|_|_|___/___/\__,_|                                   ██          ██████████                `tput sgr0`"
echo -e "`tput setaf 197`      ██████          ██░░░░░░██    ██████                                                                   ██████          ██░░░░░░██    ██████      `tput sgr0`"
echo -e "`tput setaf 196`    ██      ██      ██░░░░██░░░░██████                                                                     ██      ██      ██░░░░██░░░░██████          `tput sgr0`"
echo -e "`tput setaf 202`  ██        ██      ██▒▒░░░░░░░░░░██            _____     _                   _____                      ██        ██      ██▒▒░░░░░░░░░░██            `tput sgr0`"
echo -e "`tput setaf 208`  ██        ██████████░░░░░░░░██░░██           |_   _|   | |                 |_   _|                     ██        ██████████░░░░░░░░██░░██            `tput sgr0`"
echo -e "`tput setaf 214`  ██      ██░░████░░░░██░░░░░░░░░░██             | |_   _| |_ ___  _ __ ___    | | ___  __ _ _ __ ___    ██      ██░░████░░░░██░░░░░░░░░░██            `tput sgr0`"
echo -e "`tput setaf 220`    ████████░░░░████░░░░██░░▒▒░░████████         | | | | | __/ _ \| '__/ __|   | |/ _ \/ _\` | '_ \` _ \     ████████░░░░████░░░░██░░▒▒░░████████      `tput sgr0`"
echo -e "`tput setaf 226`        ▒▒████░░░░████░░░░██████        ██       | | |_| | || (_) | |  \__ \   | |  __/ (_| | | | | | |        ▒▒████░░░░████░░░░██████        ██      `tput sgr0`"
echo -e "`tput setaf 220`        ██░░████░░░░████░░██              ██     \_/\__,_|\__\___/|_|  |___/   \_/\___|\__,_|_| |_| |_|        ██░░████░░░░████░░██              ██    `tput sgr0`"
echo -e "`tput setaf 214`        ▒▒░░░░████░░░░██████              ██                                                                   ▒▒░░░░████░░░░██████              ██    `tput sgr0`"
echo -e "`tput setaf 208`        ▒▒▒▒░░░░████░░░░████              ██                                                                   ▒▒▒▒░░░░████░░░░████              ██    `tput sgr0`"
echo -e "`tput setaf 202`        ██▒▒██░░░░████░░░░████          ██                                     _                               ██▒▒██░░░░████░░░░████          ██      `tput sgr0`"
echo -e "`tput setaf 196`      ██▒▒██████░░░░██████    ██████████                                      | |                            ██▒▒██████░░░░██████    ██████████        `tput sgr0`"
echo -e "`tput setaf 197`      ██████████████████      ██                _ __  _ __ ___  ___  ___ _ __ | |_ ___                       ██████████████████      ██                `tput sgr0`"
echo -e "`tput setaf 198`      ████          ██        ██               | '_ \| '__/ _ \/ __|/ _ \ '_ \| __/ __|                      ████          ██        ██                `tput sgr0`"
echo -e "`tput setaf 199`                    ██      ██                 | |_) | | |  __/\__ \  __/ | | | |_\__ \                                    ██      ██                  `tput sgr0`"
echo -e "`tput setaf 200`                      ██████                   | .__/|_|  \___||___/\___|_| |_|\__|___/                                      ██████                    `tput sgr0`"
echo -e "`tput setaf 201`                                               | |                                                                                                     `tput sgr0`"
echo -e "`tput setaf 207`                                               |_|                                                                                                     `tput sgr0`"
echo -e "`tput setaf 213`                                                                                                                                                       `tput sgr0`"
echo -e "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"

: << "COM"
getRand()
{
# min is the first parameter, or 1 if no parameter is given
	min="${$INT_MIN}"
# max is the second parameter, or 100 if no parameter is given
	max="${$INT_MAX}"
# get a random value using /dev/urandom
	rnd_count=$(( RANDOM % ( $max - $min + 1 ) + $min ));
	echo -e "$rnd_count"
}
min=-2147483648
max=2147483647
random_int="${getRand} "
echo -e "random int: ${random_int}"
COM

: << 'COM'
function random_ints()
{
	str=""
	case '$#' in
		3)
			if [[ $3 <= $2  ] || [ $3 > ${INT_MAX} ] || [ $2 < ${INT_MIN} ]]; then
				return ""
			fi
			while (( "$1" )); do
				ran=$(expr $(shuf -i 0-$(expr ${2} + ${3}) -n 1) - ${2})
#				ran=$(expr $(shuf -i 0-$(expr ${2} + ${3}) -n 1) - ${2})
				shift
				if [ "$1" != "0" ]; then
					str="$str$ran "
				fi
			done
		;;
		*)
			echo -e "Wrong arguments number"
			return ""
		;;
		esac
		
}
COM

echo -e "\n";
echo -e "`tput setaf 226`\t\t\t\t██████╗ ██╗   ██╗███████╗██╗  ██╗    ███████╗██╗    ██╗ █████╗ ██████╗`tput sgr0`";
echo -e "`tput setaf 220`\t\t\t\t██╔══██╗██║   ██║██╔════╝██║  ██║    ██╔════╝██║    ██║██╔══██╗██╔══██╗`tput sgr0`";
echo -e "`tput setaf 214`\t\t\t\t██████╔╝██║   ██║███████╗███████║    ███████╗██║ █╗ ██║███████║██████╔╝`tput sgr0`";
echo -e "`tput setaf 208`\t\t\t\t██╔═══╝ ██║   ██║╚════██║██╔══██║    ╚════██║██║███╗██║██╔══██║██╔═══╝`tput sgr0`";
echo -e "`tput setaf 202`\t\t\t\t██║     ╚██████╔╝███████║██║  ██║    ███████║╚███╔███╔╝██║  ██║██║`tput sgr0`";
echo -e "`tput setaf 196`\t\t\t\t╚═╝      ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚══════╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝`tput sgr0`";
echo -e "\n";
echo -e "\n\t\t\t\t\t${K}\t\t\t\t\t${A}\t\t\t\t\t${Y}\t\t\t\t\t${A}\t\t\t\t\t${K}"

echo -e "\n";
while true;
do
	read -p "${Bees} `tput setaf 46`ARE YOU READY?`tput sgr0` ${Bees}   [Y/n] " input
	case $input in
		[Yy]* ) break;;
		[Nn]* ) exit;;
		* ) echo -e "Please answer y or n";;
	esac
done

echo -e "\n"
echo -e "`tput setaf 201`███╗   ██╗ ██████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗███████╗████████╗████████╗███████╗`tput sgr0`"
echo -e "`tput setaf 200`████╗  ██║██╔═══██╗██╔══██╗████╗ ████║██║████╗  ██║██╔════╝╚══██╔══╝╚══██╔══╝██╔════╝`tput sgr0`"
echo -e "`tput setaf 199`██╔██╗ ██║██║   ██║██████╔╝██╔████╔██║██║██╔██╗ ██║█████╗     ██║      ██║   █████╗`tput sgr0`"
echo -e "`tput setaf 198`██║╚██╗██║██║   ██║██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══╝     ██║      ██║   ██╔══`tput sgr0`"
echo -e "`tput setaf 197`██║ ╚████║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║██║ ╚████║███████╗   ██║      ██║   ███████╗`tput sgr0`"
echo -e "`tput setaf 196`╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝      ╚═╝   ╚══════╝`tput sgr0`"
echo -e "\n"

norminette;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n";
echo -e "`tput setaf 51`███╗   ███╗ █████╗ ██╗  ██╗███████╗███████╗██╗██╗     ███████╗    ██████╗ ██╗   ██╗██╗     ███████╗███████╗`tput sgr0`";
echo -e "`tput setaf 50`████╗ ████║██╔══██╗██║ ██╔╝██╔════╝██╔════╝██║██║     ██╔════╝    ██╔══██╗██║   ██║██║     ██╔════╝██╔════╝`tput sgr0`";
echo -e "`tput setaf 49`██╔████╔██║███████║█████╔╝ █████╗  █████╗  ██║██║     █████╗      ██████╔╝██║   ██║██║     █████╗  ███████╗`tput sgr0`";
echo -e "`tput setaf 48`██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝  ██╔══╝  ██║██║     ██╔══╝      ██╔══██╗██║   ██║██║     ██╔══╝  ╚════██║`tput sgr0`";
echo -e "`tput setaf 47`██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗██║     ██║███████╗███████╗    ██║  ██║╚██████╔╝███████╗███████╗███████║`tput sgr0`";
echo -e "`tput setaf 46`╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝╚══════╝    ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚══════╝`tput sgr0`";
echo -e "\n";

echo -e "${Bees} `tput setaf 46`make`tput sgr0` ${Bees}\n"; make;
echo -e "\n"
ft_continue
echo -e "\n"

echo -e "${Bees} `tput setaf 46`make clean`tput sgr0` ${Bees}\n"; make clean;
echo -e "\n"
ft_continue
echo -e "\n"

echo -e "${Bees} `tput setaf 46`make fclean`tput sgr0` ${Bees}\n"; make fclean;
echo -e "\n"
ft_continue
echo -e "\n"

echo -e "${Bees} `tput setaf 46`make re`tput sgr0` ${Bees}\n"; make re
echo -e "\n"
ft_continue
echo -e "\n"

echo -e "${Bees} `tput setaf 46`make`tput sgr0` ${Bees}\n"; make
echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n"
echo -e "`tput setaf 51` ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗    ██████╗ ██████╗  ██████╗  ██████╗ ██████╗  █████╗ ███╗   ███╗    ███╗   ██╗ █████╗ ███╗   ███╗███████╗`tput sgr0`"
echo -e "`tput setaf 45`██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝    ██╔══██╗██╔══██╗██╔═══██╗██╔════╝ ██╔══██╗██╔══██╗████╗ ████║    ████╗  ██║██╔══██╗████╗ ████║██╔════╝`tput sgr0`"
echo -e "`tput setaf 39`██║     ███████║█████╗  ██║     █████╔╝     ██████╔╝██████╔╝██║   ██║██║  ███╗██████╔╝███████║██╔████╔██║    ██╔██╗ ██║███████║██╔████╔██║█████╗`tput sgr0`"
echo -e "`tput setaf 33`██║     ██╔══██║██╔══╝  ██║     ██╔═██╗     ██╔═══╝ ██╔══██╗██║   ██║██║   ██║██╔══██╗██╔══██║██║╚██╔╝██║    ██║╚██╗██║██╔══██║██║╚██╔╝██║██╔══╝`tput sgr0`"
echo -e "`tput setaf 27`╚██████╗██║  ██║███████╗╚██████╗██║  ██╗    ██║     ██║  ██║╚██████╔╝╚██████╔╝██║  ██║██║  ██║██║ ╚═╝ ██║    ██║ ╚████║██║  ██║██║ ╚═╝ ██║███████╗`tput sgr0`"
echo -e "`tput setaf 21` ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝    ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝`tput sgr0`"
echo -e "\n"

echo -e "${Bees} `tput setaf 46`ls | grep -x push_swap`tput sgr0` ${Bees}\n"; ls | grep -x push_swap;

if [[ $(ls | grep -x "push_swap") = "push_swap" ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n"
echo -e "`tput setaf 201` ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗    ██╗     ██╗███████╗████████╗`tput sgr0`"
echo -e "`tput setaf 200` ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝    ██║     ██║██╔════╝╚══██╔══╝`tput sgr0`"
echo -e "`tput setaf 199` █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗    ██║     ██║███████╗   ██║`tput sgr0`"
echo -e "`tput setaf 198` ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║    ██║     ██║╚════██║   ██║`tput sgr0`"
echo -e "`tput setaf 197` ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║    ███████╗██║███████║   ██║`tput sgr0`"
echo -e "`tput setaf 196` ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝    ╚══════╝╚═╝╚══════╝   ╚═╝`tput sgr0`"
echo -e "\n"

echo -e "${Bees} `tput setaf 46`Allowed functions: write, read, malloc, free, exit`tput sgr0` ${Bees}\n";
echo -e "${Bees} `tput setaf 46`nm -u push_swap`tput sgr0` ${Bees}i\n"; nm -u push_swap;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n"
echo -e "`tput setaf 129` ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗███████╗██████╗`tput sgr0`"
echo -e "`tput setaf 128`██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝██╔════╝██╔══██╗`tput sgr0`"
echo -e "`tput setaf 127`██║     ███████║█████╗  ██║     █████╔╝ █████╗  ██████╔╝`tput sgr0`"
echo -e "`tput setaf 126`██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ ██╔══╝  ██╔══██╗`tput sgr0`"
echo -e "`tput setaf 125`╚██████╗██║  ██║███████╗╚██████╗██║  ██╗███████╗██║  ██║`tput sgr0`"
echo -e "`tput setaf 124` ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝`tput sgr0`"
echo -e "\n"

echo -e "\n${Yellow}CHECKER ERROR MANAGING TESTS:${Reset}\n";

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}./checker_linux norminet -> ${Reset}"; ./checker_linux norminet
echo -e -n "${Purple}./checker_linux 42 42 -> ${Reset}"; ./checker_linux 42 42
echo -e -n "${Purple}./checker_linux 987654321987654321987654321 -> ${Reset}"; ./checker_linux 987654321987654321987654321
echo -e -n "${Purple}./checker_linux -> ${Reset}"; ./checker_linux
echo -e "${Purple}./checker_linux 23 4 16 42 15 8 + non valid instructions${Reset}"; ./checker_linux 23 4 16 42 15 8
echo -e "${Purple}./checker_linux 23 4 16 42 15 8 + valid instructions with spaces${Reset}"; ./checker_linux 23 4 16 42 15 8
echo -e "${Purple}./checker_linux 23 4 16 42 15 8 + valid UPPERCASE instructions${Reset}"; ./checker_linux 23 4 16 42 15 8

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Yellow}CHECKER FALSE TESTS:${Reset}\n";
echo -e -n "${Purple}./checker_linux 0 9 1 8 2 7 3 6 4 5 + sa pb rrr + ctrl D -> ${Reset}"; ./checker_linux 0 9 1 8 2 7 3 6 4 5
echo -e -n "${Purple}./checker_linux 0 9 1 8 2 7 3 6 4 5 with non sorting valid instruction + ctrl D -> ${Reset}"; ./checker_linux 0 9 1 8 2 7 3 6 4 5

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Yellow}CHECKER TRUE TESTS:${Reset}\n";
echo -e "${Purple}./checker_linux 0 1 2 + ctrl D${Reset}"; ./checker_linux 0 1 2
echo -e "${Purple}valgrind ./checker_linux 0 1 2 + ctrl D${Reset}"; valgrind ./checker_linux 0 1 2
echo -e "${Purple}./checker_linux 0 9 1 8 2 + pb ra pb ra sa ra pa pa + ctrl D${Reset}"; ./checker_linux 0 9 1 8 2
echo -e "${Purple}valgrind ./checker_linux 0 9 1 8 2 + pb ra pb ra sa ra pa pa + ctrl D${Reset}"; valgrind ./checker_linux 0 9 1 8 2

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n";
echo -e "`tput setaf 226`██████╗ ██╗   ██╗███████╗██╗  ██╗    ███████╗██╗    ██╗ █████╗ ██████╗`tput sgr0`";
echo -e "`tput setaf 220`██╔══██╗██║   ██║██╔════╝██║  ██║    ██╔════╝██║    ██║██╔══██╗██╔══██╗`tput sgr0`";
echo -e "`tput setaf 214`██████╔╝██║   ██║███████╗███████║    ███████╗██║ █╗ ██║███████║██████╔╝`tput sgr0`";
echo -e "`tput setaf 208`██╔═══╝ ██║   ██║╚════██║██╔══██║    ╚════██║██║███╗██║██╔══██║██╔═══╝`tput sgr0`";
echo -e "`tput setaf 202`██║     ╚██████╔╝███████║██║  ██║    ███████║╚███╔███╔╝██║  ██║██║`tput sgr0`";
echo -e "`tput setaf 196`╚═╝      ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚══════╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝`tput sgr0`";
echo -e "\n";

echo -e "\n${Green}PUSH SWAP ERROR MANAGING TESTS:${Reset}\n";
echo -e -n "${Purple}./push_swap -> ${Reset}"; ./push_swap
echo -e -n "${Purple}./push_swap Norminet -> ${Reset}"; ./push_swap "Norminet"
echo -e -n "${Purple}./push_swap 42 42 -> ${Reset}"; ./push_swap 42 42
echo -e -n "${Purple}./push_swap 2147483649 -2147483648 0${Reset}"; ./push_swap 2147483649 -2147483648 0
echo -e -n "${Purple}./push_swap 2147483647 -2147483649 0${Reset}"; ./push_swap 2147483647 -2147483649 0
echo -e -n "${Purple}./push_swap 0 1 3 42 2 21474836484749 -> ${Reset}"; ./push_swap 0 1 3 42 2 21474836484749
echo -e -n "${Purple}./push_swap 0 1 3 42 2 2147483648474933333333333333 -> ${Reset}"; ./push_swap 0 1 3 42 2 21474836484749333333333333333
echo -e -n "${Purple}./push_swap "0 1 3" 42 \"2 21474836484749\" -> ${Reset}"; ./push_swap "0 1 3" 42 "2 21474836484749"
echo -e -n "${Purple}./push_swap \"\" \"\" \"\" -> ${Reset}"; ./push_swap "" "" ""
echo -e -n "${Purple}./push_swap \"\" -> ${Reset}"; ./push_swap ""
echo -e -n "${Purple}./push_swap \"\" 3 2 1 -> ${Reset}"; ./push_swap "" 3 2 1
echo -e -n "${Purple}./push_swap \"\" 2 -> ${Reset}"; ./push_swap "" 2
echo -e -n "${Purple}./push_swap "0" 2 -> ${Reset}"; ./push_swap "0" 2
echo -e -n "${Purple}./push_swap \"\" 2 1 -> ${Reset}"; ./push_swap "" 2 1
echo -e -n "${Purple}./push_swap 2 \"\" 1 -> ${Reset}"; ./push_swap 2 "" 1
echo -e -n "${Purple}./push_swap 2 1 \"\" -> ${Reset}"; ./push_swap 2 1 ""
echo -e -n "${Purple}./push_swap \"1\" 1 2 3 2 -> ${Reset}"; ./push_swap "1" 1 2 3 2
echo -e -n "${Purple}./push_swap \" 1\" 2 3 2 -> ${Reset}"; ./push_swap " 1" 2 3 2
echo -e -n "${Purple}./push_swap 42 \"       43\" 2 -> ${Reset}"; ./push_swap 42 "       43" 2
echo -e -n "${Purple}./push_swap 0 1 2 3 \"--1\" 2 -> ${Reset}"; ./push_swap 0 1 2 3 "--1" 2
echo -e -n "${Purple}./push_swap 0 1 2 3 \"&\" 2 -> ${Reset}"; ./push_swap 0 1 2 3 "&" 2
echo -e -n "${Purple}./push_swap 0 1 2 3 -5 2 -> ${Reset}"; ./push_swap 0 1 2 3 -5 2
echo -e -n "${Purple}./push_swap --0 1 2 3 -5 -> ${Reset}"; ./push_swap "--0" 1 2 3 -5
echo -e -n "${Purple}./push_swap 5   2   3   \"   4\" -> ${Reset}"; ./push_swap 5   2   3   "   4"
echo -e -n "${Purple}./push_swap "++5"   2   3   4 -> ${Reset}"; ./push_swap "++5"   2   3   4
echo -e -n "${Purple}./push_swap "--5"   2   3   4 -> ${Reset}"; ./push_swap "--5"   2   3   4
echo -e -n "${Purple}./push_swap 0 1 +-2 3 -> ${Reset}"; ./push_swap 0 1 +-2 3
echo -e -n "${Purple}./push_swap 0 1 + 3 -> ${Reset}"; ./push_swap 0 1 + 3
echo -e -n "${Purple}./push_swap 0 1 - 3 -> ${Reset}"; ./push_swap 0 1 - 3
echo -e -n "${Purple}./push_swap 0 1 + -> ${Reset}"; ./push_swap 0 1 +
echo -e -n "${Purple}./push_swap 0 1 - -> ${Reset}"; ./push_swap 0 1 -
echo -e -n "${Purple}./push_swap 0 - 1 -> ${Reset}"; ./push_swap 0 - 1
echo -e -n "${Purple}./push_swap 0 1 @ -> ${Reset}"; ./push_swap 0 1 @
echo -e -n "${Purple}./push_swap 0 1 -+2 3 -> ${Reset}"; ./push_swap 0 1 -+2 3
echo -e -n "${Purple}./push_swap \"\" 2 4 3 -> ${Reset}"; ./push_swap "" 2 4 3
echo -e -n "${Purple}./push_swap 2 \"\" -> ${Reset}"; ./push_swap 2 ""
echo -e -n "${Purple}./push_swap \"\" 2 -> ${Reset}"; ./push_swap "" 2
echo -e -n "${Purple}./push_swap \"\" 2 4 3 -> ${Reset}"; ./push_swap "" 2 4 3
echo -e -n "${Purple}./push_swap 2 + -> ${Reset}"; ./push_swap 2 +
echo -e -n "${Purple}./push_swap 2 - -> ${Reset}"; ./push_swap 2 -
echo -e -n "${Purple}./push_swap 2 \" \" -> ${Reset}"; ./push_swap 2 " "
echo -e -n "${Purple}./push_swap +8 008 3 -> ${Reset}"; ./push_swap +8 008 3
echo -e -n "${Purple}./push_swap +8 008 8 -> ${Reset}"; ./push_swap +8 008 3

echo -e "\n"
ft_continue
echo -e "\n"

#echo -e "\n${Green}PUSH SWAP STANDARD ERROR OUTPUT TEST:${Reset}\n";
#echo -e -n "${Purple}./push_swap Norminet >/dev/null 2>tmp; cat tmp ${Reset}\n"; ./push_swap "Norminet">/dev/null 2>tmp; cat tmp;
#echo -e -n "\n${Purple}./push_swap Norminet >/dev/null 1>tmp; cat tmp ${Reset}\n"; ./push_swap "Norminet">/dev/null 1>tmp; cat tmp;
#echo -e -n "\n${Purple} Standard output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp; if [[ $? -eq 0 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi
#echo -e -n "${Purple} Error output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp; if [[ $? -eq 2 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi

:<< COM
echo -e "\n${Green}PUSH SWAP STANDARD ERROR OUTPUT TEST:${Reset}\n";
echo -e -n "${Purple}./push_swap Norminet >/dev/null 2>tmp; cat tmp ${Reset}\n"; ./push_swap "Norminet">/dev/null 2>tmp; cat tmp;
echo -e -n "${Purple} Standard output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp; if [[ $? -eq 0 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi
echo -e -n "${Purple} Error output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp; if [[ $? -eq 2 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi

echo -e -n "\n${Purple}./push_swap Norminet >/dev/null 1>tmp2; cat tmp2 ${Reset}\n"; ./push_swap "Norminet">/dev/null 1>tmp2; cat tmp2;
echo -e -n "${Purple} Standard output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp2; if [[ $? -eq 0 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi
echo -e -n "${Purple} Error output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp2; if [[ $? -eq 2 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi

echo -e -n "${Purple}rm -rf tmp tmp2${Reset}\n"; rm -rf tmp tmp2
COM

# Check strcmp sortie standard + diff et check code de sortie

echo -e "\n${Green}PUSH SWAP STANDARD ERROR OUTPUT TEST:${Reset}\n";
echo -e -n "${Purple}./push_swap Norminet >/dev/null 2>tmp; cat tmp ${Reset}\n"; ./push_swap "Norminet">/dev/null 2>tmp; cat tmp;
echo -e -n "${Purple} Standard output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp; if [[ $? -eq 0 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi
echo -e -n "${Purple} Error output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp; if [[ $? -ne 0 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi

echo -e -n "\n${Purple}./push_swap Norminet >/dev/null 1>tmp2; cat tmp2 ${Reset}\n"; ./push_swap "Norminet">/dev/null 1>tmp2; cat tmp2;
echo -e -n "${Purple} Standard output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp2; if [[ $? -eq 0 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi
echo -e -n "${Purple} Error output -> ${Reset}"; ./push_swap "Norminet" > /dev/null 2>tmp2; if [[ $? -ne 0 ]]; then echo -e "${Green}OK${Reset}"; else echo -e "${Red}KO${Reset}"; fi

echo -e -n "${Purple}rm -rf tmp tmp2${Reset}\n"; rm -rf tmp tmp2

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}PUSH SWAP IDENTITY TESTS:${Reset}\n";
echo -e "${Purple}./push_swap 42${Reset}"; ./push_swap 42
echo -e "${Purple}./push_swap 0 1 2 3${Reset}"; ./push_swap 0 1 2 3
echo -e "${Purple}./push_swap 0     1     2     3     4${Reset}"; ./push_swap 0     1     2     3     4
echo -e "${Purple}./push_swap 0 1 2 3 4 5 6 7 8 9${Reset}"; ./push_swap 0 1 2 3 4 5 6 7 8 9
sleep 1;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}PUSH SWAP SIMPLE VERSION TESTS:${Reset}\n"
echo -e "${Green}• 2 ints -> ${Purple}./push_swap 2 1 ${Reset}"; ./push_swap 2 1
echo -e "${Green}• 3 ints -> ${Purple}./push_swap 2 1 3${Reset}"; ./push_swap 2 1 3
echo -e "${Green}• 3 ints -> ${Purple}./push_swap 2147483647 -2147483648 0${Reset}"; ./push_swap 2147483647 -2147483648 0
echo -e "${Green}• 4 ints -> ${Purple}./push_swap 4 2 1 3${Reset}"; ./push_swap 4 2 1 3

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n"
echo -e "`tput setaf 93`██████╗     ██╗███╗   ██╗████████╗    ███████╗████████╗ █████╗  ██████╗██╗  ██╗`tput sgr0`"
echo -e "`tput setaf 92`╚════██╗    ██║████╗  ██║╚══██╔══╝    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝`tput sgr0`"
echo -e "`tput setaf 91` █████╔╝    ██║██╔██╗ ██║   ██║       ███████╗   ██║   ███████║██║     █████╔╝`tput sgr0`"
echo -e "`tput setaf 91` ╚═══██╗    ██║██║╚██╗██║   ██║       ╚════██║   ██║   ██╔══██║██║     ██╔═██╗`tput sgr0`"
echo -e "`tput setaf 92`██████╔╝    ██║██║ ╚████║   ██║       ███████║   ██║   ██║  ██║╚██████╗██║  ██╗`tput sgr0`"
echo -e "`tput setaf 93`╚═════╝     ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝`tput sgr0`"
echo -e "\n"

echo -e "\n${Green}• ${Valgrind} ./push_swap with 3 shuffled int -> 2 instructions max:${Reset}\n";
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ${Valgrind} ./push_swap $ARG | ${Valgrind} ./checker_linux $ARG; ./push_swap $ARG | wc -l; cat valgrind.log;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}• Launching 10 tests of ./push_swap with 3 shuffled int -> 2 instructions max:${Reset}\n";
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (0..2).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}• TEST ALL 6 COMBINATIONS OF 3 INTS -> 2 INSTRUCTIONS MAX:${Reset}\n";
echo -e -n "${Purple}• ./push_swap 1 2 3 -> ${Reset}"; ARG="1 2 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• ./push_swap 2 1 3 -> ${Reset}"; ARG="2 1 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• ./push_swap 3 1 2 -> ${Reset}"; ARG="3 1 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• ./push_swap 1 3 2 -> ${Reset}"; ARG="1 3 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• ./push_swap 2 3 1 -> ${Reset}"; ARG="2 3 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• ./push_swap 1 2 3 -> ${Reset}"; ARG="1 2 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}********** SPECIAL TESTS **********${Reset}\n";
echo -e "• ${Purple}./push_swap of 3 shuffled int (-1, 0, 1):${Reset}"; ARG=`ruby -e "puts (-1..1).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e "• ${Purple}./push_swap of 3 shuffed int (-3, -2, -1):${Reset}"; ARG=`ruby -e "puts (-3..-1).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e "• ${Purple}./push_swap \"42 -42 0\":${Reset}"; ARG="42 -42 0"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e "• ${Purple}./push_swap \"42\" \"-42\" \"0\":${Reset}"; ARG1="42"; ARG2="-42"; ARG3="0"; ./push_swap $ARG1 $ARG2 $ARG3 | ./checker_linux $ARG1 $ARG2 $ARG3; ./push_swap $ARG1 $ARG2 $ARG3 | wc -l;
echo -e "• ${Purple}./push_swap \"42 -42\" \"0\":${Reset}"; ARG1="42 -42"; ARG2="0"; ./push_swap $ARG1 $ARG2 | ./checker_linux $ARG1 $ARG2; ./push_swap $ARG1 $ARG2 | wc -l;
echo -e "• ${Purple}./push_swap \"42\" \"-42 0\":${Reset}"; ARG1="42"; ARG2="-42 0"; ./push_swap $ARG1 $ARG2 | ./checker_linux $ARG1 $ARG2 ; ./push_swap $ARG1 $ARG2 | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n"
echo -e "`tput setaf 93`███████╗    ██╗███╗   ██╗████████╗    ███████╗████████╗ █████╗  ██████╗██╗  ██╗`tput sgr0`"
echo -e "`tput setaf 92`██╔════╝    ██║████╗  ██║╚══██╔══╝    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝`tput sgr0`"
echo -e "`tput setaf 91`███████╗    ██║██╔██╗ ██║   ██║       ███████╗   ██║   ███████║██║     █████╔╝`tput sgr0`"
echo -e "`tput setaf 91`╚════██║    ██║██║╚██╗██║   ██║       ╚════██║   ██║   ██╔══██║██║     ██╔═██╗`tput sgr0`"
echo -e "`tput setaf 92`███████║    ██║██║ ╚████║   ██║       ███████║   ██║   ██║  ██║╚██████╗██║  ██╗`tput sgr0`"
echo -e "`tput setaf 93`╚══════╝    ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝`tput sgr0`"
echo -e "\n"

echo -e "\n${Green}PUSH SWAP SIMPLE VERSION TESTS:${Reset}\\n"
echo -e "\n${Green}• ${Valgrind} ./push_swap with 5 shuffled int -> 12 instructions max:${Reset}\n";
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ${Valgrind} ./push_swap $ARG | ${Valgrind} ./checker_linux $ARG; ./push_swap $ARG | wc -l; cat valgrind.log;

echo -e "\n"
ft_continue
echo -e "\n"

: << "COM"
echo -e "\n${Green}• Launching 10 tests of ./push_swap with 5 shuffled int -> 12 instructions max:${Reset}\n";
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..5).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
COM

echo -e "\n${Green}• TEST ALL 120 COMBINATIONS OF 5 INTS -> 12 INSTRUCTIONS MAX:${Reset}\n";
echo -e -n "${Purple}• 001 ./push_swap 1 2 3 4 5 -> ${Reset}"; ARG="1 2 3 4 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 002 ./push_swap 1 2 3 5 4 -> ${Reset}"; ARG="1 2 3 5 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 003 ./push_swap 1 2 4 3 5 -> ${Reset}"; ARG="1 2 4 3 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 004 ./push_swap 1 2 4 5 3 -> ${Reset}"; ARG="1 2 4 5 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 005 ./push_swap 1 2 5 3 4 -> ${Reset}"; ARG="1 2 5 3 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 005 ./push_swap 1 2 5 4 3 -> ${Reset}"; ARG="1 2 5 4 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 006 ./push_swap 1 3 2 4 5 -> ${Reset}"; ARG="1 3 2 4 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 007 ./push_swap 1 3 2 5 4 -> ${Reset}"; ARG="1 3 2 5 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 008 ./push_swap 1 3 4 2 5 -> ${Reset}"; ARG="1 3 4 2 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 009 ./push_swap 1 3 4 5 2 -> ${Reset}"; ARG="1 3 4 5 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 010 ./push_swap 1 3 5 2 4 -> ${Reset}"; ARG="1 3 5 2 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 011 ./push_swap 1 3 5 4 2 -> ${Reset}"; ARG="1 3 5 4 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 012 ./push_swap 1 4 2 3 5 -> ${Reset}"; ARG="1 4 2 3 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 013 ./push_swap 1 4 2 5 3 -> ${Reset}"; ARG="1 4 2 5 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 014 ./push_swap 1 4 3 2 5 -> ${Reset}"; ARG="1 4 3 2 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 015 ./push_swap 1 4 3 5 2 -> ${Reset}"; ARG="1 4 3 5 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 016 ./push_swap 1 4 5 2 3 -> ${Reset}"; ARG="1 4 5 2 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 017 ./push_swap 1 4 5 3 2 -> ${Reset}"; ARG="1 4 5 3 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 018 ./push_swap 1 5 2 3 4 -> ${Reset}"; ARG="1 5 2 3 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 019 ./push_swap 1 5 2 4 3 -> ${Reset}"; ARG="1 5 2 4 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 020 ./push_swap 1 5 3 2 4 -> ${Reset}"; ARG="1 5 3 2 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 021 ./push_swap 1 5 3 4 2 -> ${Reset}"; ARG="1 5 3 4 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 022 ./push_swap 1 5 4 2 3 -> ${Reset}"; ARG="1 5 4 2 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 023 ./push_swap 1 5 4 3 2 -> ${Reset}"; ARG="1 5 4 3 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 024 ./push_swap 2 1 3 4 5 -> ${Reset}"; ARG="2 1 3 4 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 025 ./push_swap 2 1 3 5 4 -> ${Reset}"; ARG="2 1 3 5 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 026 ./push_swap 2 1 4 3 5 -> ${Reset}"; ARG="2 1 4 3 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 027 ./push_swap 2 1 4 5 3 -> ${Reset}"; ARG="2 1 4 5 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 028 ./push_swap 2 1 5 3 4 -> ${Reset}"; ARG="2 1 5 3 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 029 ./push_swap 2 1 5 4 3 -> ${Reset}"; ARG="2 1 5 4 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 030 ./push_swap 2 3 1 4 5 -> ${Reset}"; ARG="2 3 1 4 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 031 ./push_swap 2 3 1 5 4 -> ${Reset}"; ARG="2 3 1 5 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 032 ./push_swap 2 3 4 1 5 -> ${Reset}"; ARG="2 3 4 1 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 033 ./push_swap 2 3 4 5 1 -> ${Reset}"; ARG="2 3 4 5 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 034 ./push_swap 2 3 5 1 4 -> ${Reset}"; ARG="2 3 5 1 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 035 ./push_swap 2 3 5 4 1 -> ${Reset}"; ARG="2 3 5 4 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 036 ./push_swap 2 4 1 3 5 -> ${Reset}"; ARG="2 4 1 3 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 037 ./push_swap 2 4 1 5 3 -> ${Reset}"; ARG="2 4 1 5 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 038 ./push_swap 2 4 3 1 5 -> ${Reset}"; ARG="2 4 3 1 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 039 ./push_swap 2 4 3 5 1 -> ${Reset}"; ARG="2 4 3 5 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 040 ./push_swap 2 4 5 1 3 -> ${Reset}"; ARG="2 4 5 1 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 041 ./push_swap 2 4 5 3 1 -> ${Reset}"; ARG="2 4 5 3 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 042 ./push_swap 2 5 1 3 4 -> ${Reset}"; ARG="2 5 1 3 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 043 ./push_swap 2 5 1 4 3 -> ${Reset}"; ARG="2 5 1 4 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 044 ./push_swap 2 5 3 1 4 -> ${Reset}"; ARG="2 5 3 1 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 045 ./push_swap 2 5 3 4 1 -> ${Reset}"; ARG="2 5 3 4 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 046 ./push_swap 2 5 4 1 3 -> ${Reset}"; ARG="2 5 4 1 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 047 ./push_swap 2 5 4 3 1 -> ${Reset}"; ARG="2 5 4 3 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 048 ./push_swap 3 1 2 4 5 -> ${Reset}"; ARG="3 1 2 4 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 049 ./push_swap 3 1 2 5 4 -> ${Reset}"; ARG="3 1 2 5 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 050 ./push_swap 3 1 4 2 5 -> ${Reset}"; ARG="3 1 4 2 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 051 ./push_swap 3 1 4 5 2 -> ${Reset}"; ARG="3 1 4 5 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 052 ./push_swap 3 1 5 2 4 -> ${Reset}"; ARG="3 1 5 2 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 053 ./push_swap 3 1 5 4 2 -> ${Reset}"; ARG="3 1 5 4 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 054 ./push_swap 3 2 1 4 5 -> ${Reset}"; ARG="3 2 1 4 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 055 ./push_swap 3 2 1 5 4 -> ${Reset}"; ARG="3 2 1 5 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 056 ./push_swap 3 2 4 1 5 -> ${Reset}"; ARG="3 2 4 1 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 057 ./push_swap 3 2 4 5 1 -> ${Reset}"; ARG="3 2 4 5 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 058 ./push_swap 3 2 5 1 4 -> ${Reset}"; ARG="3 2 5 1 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 059 ./push_swap 3 2 5 4 1 -> ${Reset}"; ARG="3 2 5 4 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 060 ./push_swap 3 4 1 2 5 -> ${Reset}"; ARG="3 4 1 2 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 061 ./push_swap 3 4 1 5 2 -> ${Reset}"; ARG="3 4 1 5 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 062 ./push_swap 3 4 2 1 5 -> ${Reset}"; ARG="3 4 2 1 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 063 ./push_swap 3 4 2 5 1 -> ${Reset}"; ARG="3 4 2 5 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 064 ./push_swap 3 4 5 1 2 -> ${Reset}"; ARG="3 4 5 1 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 065 ./push_swap 3 4 5 2 1 -> ${Reset}"; ARG="3 4 5 2 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 066 ./push_swap 3 5 1 2 4 -> ${Reset}"; ARG="3 5 1 2 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 067 ./push_swap 3 5 1 4 2 -> ${Reset}"; ARG="3 5 1 4 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 068 ./push_swap 3 5 2 1 4 -> ${Reset}"; ARG="3 5 2 1 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 069 ./push_swap 3 5 2 4 1 -> ${Reset}"; ARG="3 5 2 4 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 070 ./push_swap 3 5 4 1 2 -> ${Reset}"; ARG="3 5 4 1 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 071 ./push_swap 3 5 4 2 1 -> ${Reset}"; ARG="3 5 4 2 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 072 ./push_swap 4 1 2 3 5 -> ${Reset}"; ARG="4 1 2 3 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 073 ./push_swap 4 1 2 5 3 -> ${Reset}"; ARG="4 1 2 5 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 074 ./push_swap 4 1 3 2 5 -> ${Reset}"; ARG="4 1 3 2 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 075 ./push_swap 4 1 3 5 2 -> ${Reset}"; ARG="4 1 3 5 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 076 ./push_swap 4 1 5 2 3 -> ${Reset}"; ARG="4 1 5 2 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 077 ./push_swap 4 1 5 3 2 -> ${Reset}"; ARG="4 1 5 3 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 078 ./push_swap 4 2 1 3 5 -> ${Reset}"; ARG="4 2 1 3 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 079 ./push_swap 4 2 1 5 3 -> ${Reset}"; ARG="4 2 1 5 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 080 ./push_swap 4 2 3 1 5 -> ${Reset}"; ARG="4 2 3 1 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 081 ./push_swap 4 2 3 5 1 -> ${Reset}"; ARG="4 2 3 5 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 082 ./push_swap 4 2 5 1 3 -> ${Reset}"; ARG="4 2 5 1 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 083 ./push_swap 4 2 5 3 1 -> ${Reset}"; ARG="4 2 5 3 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 084 ./push_swap 4 3 1 2 5 -> ${Reset}"; ARG="4 3 1 2 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 085 ./push_swap 4 3 1 5 2 -> ${Reset}"; ARG="4 3 1 5 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 086 ./push_swap 4 3 2 1 5 -> ${Reset}"; ARG="4 3 2 1 5"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 087 ./push_swap 4 3 2 5 1 -> ${Reset}"; ARG="4 3 2 5 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 088 ./push_swap 4 3 5 1 2 -> ${Reset}"; ARG="4 3 5 1 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 089 ./push_swap 4 3 5 2 1 -> ${Reset}"; ARG="4 3 5 2 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 090 ./push_swap 4 5 1 2 3 -> ${Reset}"; ARG="4 5 1 2 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 091 ./push_swap 4 5 1 3 2 -> ${Reset}"; ARG="4 5 1 3 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 092 ./push_swap 4 5 2 1 3 -> ${Reset}"; ARG="4 5 2 1 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 093 ./push_swap 4 5 2 3 1 -> ${Reset}"; ARG="4 5 2 3 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 094 ./push_swap 4 5 3 1 2 -> ${Reset}"; ARG="4 5 3 1 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 095 ./push_swap 4 5 3 2 1 -> ${Reset}"; ARG="4 5 3 2 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 096 ./push_swap 5 1 2 3 4 -> ${Reset}"; ARG="5 1 2 3 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 097 ./push_swap 5 1 2 4 3 -> ${Reset}"; ARG="5 1 2 4 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 098 ./push_swap 5 1 3 2 4 -> ${Reset}"; ARG="5 1 3 2 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 099 ./push_swap 5 1 3 4 2 -> ${Reset}"; ARG="5 1 3 4 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 100 ./push_swap 5 1 4 2 3 -> ${Reset}"; ARG="5 1 4 2 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 101 ./push_swap 5 1 4 3 2 -> ${Reset}"; ARG="5 1 4 3 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 102 ./push_swap 5 2 1 3 4 -> ${Reset}"; ARG="5 2 1 3 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 103 ./push_swap 5 2 1 4 3 -> ${Reset}"; ARG="5 2 1 4 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 104 ./push_swap 5 2 3 1 4 -> ${Reset}"; ARG="5 2 3 1 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 105 ./push_swap 5 2 3 4 1 -> ${Reset}"; ARG="5 2 3 4 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 106 ./push_swap 5 2 4 1 3 -> ${Reset}"; ARG="5 2 4 1 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 107 ./push_swap 5 2 4 3 1 -> ${Reset}"; ARG="5 2 4 3 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 108 ./push_swap 5 3 1 2 4 -> ${Reset}"; ARG="5 3 1 2 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 109 ./push_swap 5 3 1 4 2 -> ${Reset}"; ARG="5 3 1 4 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 110 ./push_swap 5 3 2 1 4 -> ${Reset}"; ARG="5 3 2 1 4"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e -n "${Purple}• 111 ./push_swap 5 3 2 4 1 -> ${Reset}"; ARG="5 3 2 4 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 112 ./push_swap 5 3 4 1 2 -> ${Reset}"; ARG="5 3 4 1 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 113 ./push_swap 5 3 4 2 1 -> ${Reset}"; ARG="5 3 4 2 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 114 ./push_swap 5 4 1 2 3 -> ${Reset}"; ARG="5 4 1 2 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 115 ./push_swap 5 4 1 3 2 -> ${Reset}"; ARG="5 4 1 3 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 116 ./push_swap 5 4 2 1 3 -> ${Reset}"; ARG="5 4 2 1 3"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 117 ./push_swap 5 4 2 3 1 -> ${Reset}"; ARG="5 4 2 3 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 118 ./push_swap 5 4 3 1 2 -> ${Reset}"; ARG="5 4 3 1 2"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
echo -e -n "${Purple}• 119 ./push_swap 5 4 3 2 1 -> ${Reset}"; ARG="5 4 3 2 1"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
echo -e "`tput setaf 46`Minimum_score = `tput sgr0`$minimum_score\n";
echo -e "`tput setaf 46`Maximum_score = `tput sgr0`$maximum_score\n";
echo -e "`tput setaf 46`Average_score = `tput sgr0`$average_score\n";
echo -e "`tput setaf 46`Median_score = `tput sgr0`$median_score\n";

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}********** SPECIAL TESTS **********${Reset}";
ARG=`ruby -e "puts (-3..1).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (-42..-38).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG="42 -42 0 -77 1024"  ;./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG1="42"; ARG2="-42"; ARG3="0"; ARG4="-77"; ARG5="1024";./push_swap $ARG1 $ARG2 $ARG3 $ARG4 $ARG5 | ./checker_linux $ARG1 $ARG2 $ARG3 $ARG4 $ARG5; \
./push_swap $ARG1 $ARG2 $ARG3 $ARG4 $ARG5 | wc -l;
ARG1="42 -42 0"; ARG2="-77 1024";./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG1="42 -42 0 -77"; ARG2="1024";./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG1="42 +42 0 -77"; ARG2="1024";./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "`tput setaf 46`Minimum_score = `tput sgr0`$minimum_score\n";
echo -e "`tput setaf 46`Maximum_score = `tput sgr0`$maximum_score\n";
echo -e "`tput setaf 46`Average_score = `tput sgr0`$average_score\n";
echo -e "`tput setaf 46`Median_score = `tput sgr0`$median_score\n";

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n"
echo -e "`tput setaf 93` ██╗ ██████╗  ██████╗     ██╗███╗   ██╗████████╗    ███████╗████████╗ █████╗  ██████╗██╗  ██╗`tput sgr0`"
echo -e "`tput setaf 92`███║██╔═████╗██╔═████╗    ██║████╗  ██║╚══██╔══╝    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝`tput sgr0`"
echo -e "`tput setaf 91`╚██║██║██╔██║██║██╔██║    ██║██╔██╗ ██║   ██║       ███████╗   ██║   ███████║██║     █████╔╝`tput sgr0`"
echo -e "`tput setaf 91` ██║████╔╝██║████╔╝██║    ██║██║╚██╗██║   ██║       ╚════██║   ██║   ██╔══██║██║     ██╔═██╗`tput sgr0`"
echo -e "`tput setaf 92` ██║╚██████╔╝╚██████╔╝    ██║██║ ╚████║   ██║       ███████║   ██║   ██║  ██║╚██████╗██║  ██╗`tput sgr0`"
echo -e "`tput setaf 93` ╚═╝ ╚═════╝  ╚═════╝     ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝`tput sgr0`"
echo -e "\n"

echo -e "\n${Green}PUSH SWAP INTERMEDIATE VERSION TESTS:${Reset}\n"
echo -e "\n${Green}• ${Valgrind} ./push_swap with 100 shuffled int -> 700/900/1100/1300/1500 instructions max:${Reset}\n";
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ${Valgrind} ./push_swap $ARG | ${Valgrind} ./checker_linux $ARG; ./push_swap $ARG | wc -l; cat valgrind.log;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}Launching 50 tests of ./push_swap with 100 shuffled int -> 700/900/1100/1300/1500 instructions max:${Reset}\n";

ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..100).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "`tput setaf 46`Minimum_score = `tput sgr0`$minimum_score\n";
echo -e "`tput setaf 46`Maximum_score = `tput sgr0`$maximum_score\n";
echo -e "`tput setaf 46`Average_score = `tput sgr0`$average_score\n";
echo -e "`tput setaf 46`Median_score = `tput sgr0`$median_score\n";

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}********** SPECIAL TESTS **********${Reset}\n"; sleep 3;
ARG=`ruby -e "puts (-50..49).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (-100..-1).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG="-898559283 187816814 1763325167 1911345874 804820950 1164757943 -2015837126 491402873 -984990861 1698369042 740047574 1438792766 \
2035181278 1233881184 654679430 700333770 -954808175 -371907914 422750862 1047685161 -1853665794 381613618 696014203 -171794500 923525871 \
1916599021 -487358480 -1373924260 1717014587 -425006489 -216971393 -21893449 -1842695526 966298136 -1963016564 -40722413 -708105870 \
1395364134 -290065351 391996401 932775339 1234011948 88542239 1728966373 -591169059 -1009202914 -1763581457 -1098940445 897473171 \
-775489578 2129637307 1225988991 2083024994 -463979690 435061488 -2044628035 106031346 -861283800 -1913813295 -683806169 -244072787 \
-357662830 -995808477 1562759707 -639143802 1625444214 -1187044798 -1200287723 1451428023 -679476022 1620788919 -1031438617 -1712939605 \
452065618 -273244022 -600712954 481984486 -1787205872 -1945064612 -989190136 -313628414 -311958266 1325804489 371424841 1710639901 \
-1475727946 -1046714436 -2026146829 -123588241 -143036366 -1600542880 1981617352 -1976466093 -718989263 -956169582 513381265 1750972164 \
-401386283 1926437540 1706760344"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG="+898559283 187816814 1763325167 1911345874 804820950 1164757943 -2015837126 491402873 -984990861 1698369042 740047574 1438792766 \
2035181278 1233881184 654679430 700333770 -954808175 -371907914 422750862 1047685161 -1853665794 381613618 696014203 -171794500 923525871 \
1916599021 -487358480 -1373924260 1717014587 -425006489 -216971393 -21893449 -1842695526 966298136 -1963016564 -40722413 -708105870 \
1395364134 -290065351 391996401 932775339 1234011948 88542239 1728966373 -591169059 -1009202914 -1763581457 -1098940445 897473171 \
-775489578 2129637307 1225988991 2083024994 -463979690 435061488 -2044628035 106031346 -861283800 -1913813295 -683806169 -244072787 \
-357662830 -995808477 1562759707 -639143802 1625444214 -1187044798 -1200287723 1451428023 -679476022 1620788919 -1031438617 -1712939605 \
452065618 -273244022 -600712954 481984486 -1787205872 -1945064612 -989190136 -313628414 -311958266 1325804489 371424841 1710639901 \
-1475727946 -1046714436 -2026146829 -123588241 -143036366 -1600542880 1981617352 -1976466093 -718989263 -956169582 513381265 1750972164 \
-401386283 1926437540 +1706760344"; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
echo -e "`tput setaf 46`Minimum_score = `tput sgr0`$minimum_score\n";
echo -e "`tput setaf 46`Maximum_score = `tput sgr0`$maximum_score\n";
echo -e "`tput setaf 46`Average_score = `tput sgr0`$average_score\n";
echo -e "`tput setaf 46`Median_score = `tput sgr0`$median_score\n";

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n"
echo -e "`tput setaf 93`███████╗ ██████╗  ██████╗     ██╗███╗   ██╗████████╗    ███████╗████████╗ █████╗  ██████╗██╗  ██╗`tput sgr0`"
echo -e "`tput setaf 92`██╔════╝██╔═████╗██╔═████╗    ██║████╗  ██║╚══██╔══╝    ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝`tput sgr0`"
echo -e "`tput setaf 91`███████╗██║██╔██║██║██╔██║    ██║██╔██╗ ██║   ██║       ███████╗   ██║   ███████║██║     █████╔╝`tput sgr0`"
echo -e "`tput setaf 91`╚════██║████╔╝██║████╔╝██║    ██║██║╚██╗██║   ██║       ╚════██║   ██║   ██╔══██║██║     ██╔═██╗`tput sgr0`"
echo -e "`tput setaf 92`███████║╚██████╔╝╚██████╔╝    ██║██║ ╚████║   ██║       ███████║   ██║   ██║  ██║╚██████╗██║  ██╗`tput sgr0`"
echo -e "`tput setaf 93`╚══════╝ ╚═════╝  ╚═════╝     ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝`tput sgr0`"
echo -e "\n"

echo -e "\n${Green}PUSH SWAP ADVANCED VERSION TESTS:${Reset}\n"
echo -e "\n${Green}• ${Valgrind} ./push_swap with 500 shuffled int -> 5500/7000/8500/10000/11500 instructions max:${Reset}\n"; sleep 1
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ${Valgrind} ./push_swap $ARG | ${Valgrind} ./checker_linux $ARG; ./push_swap $ARG | wc -l; cat valgrind.log;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}• LAUNCHING 50 TESTS OF 500 SHUFFLED INT -> 5500/7000/8500/10000/11500 INSTRUCTIONS MAX:${Reset}\n"; sleep 3;

#average_score=0
#score=0
#ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;./push_swap $ARG | wc -l); sleep 1;
#average_score=$[$average_score+$score];
#ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l; score="$(./push_swap $ARG | wc -l)"; sleep 1;
#average_score=$[$average_score+$score];

ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (1..500).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n${Green}********** SPECIAL TESTS **********${Reset}\n"; sleep 3;
ARG=`ruby -e "puts (-250..249).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG=`ruby -e "puts (-500..-1).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;
ARG="-1647471579 482476212 178696205 -298634703 1197299293 1482701235 -434045584 1643339086 433087115 -973392669 -497560884 1378317748 \
-55401157 1892477501 156216281 607086697 1836877585 -1960928772 877201017 -1446510214 1553096786 1426912165 1374220049 2141747136 \
-2014645987 62425016 -531181764 -1064240897 -990508877 -1596954515 -477466802 -1105424460 -1342289476 2036273982 299402949 -1970721534 \
828725915 -1843131454 1278623989 -1674466990 389373283 857288186 -306661920 -486728745 -1784191079 -1327452736 808870995 -1554947322 \
-1859827099 1595147666 -1979848518 -821313075 -857628956 94407931 -1151749208 -1452080883 1352075913 1871931826 2103384413 -1843939772 \
-1495498325 -263646074 1201779117 -919275052 654259435 420255928 715272905 -795576069 -1562818525 1186588405 899712457 1505510161 \
322854872 1551294886 1612885472 615944696 1676332246 -1755773100 -830859009 -163160250 147645244 -445950238 -958675385 -1174912216 \
-206747486 -92899187 -1229620026 -1173790804 -987566634 -443939924 1255791284 100489842 383655289 1617497452 -1250120532 -175145787 \
605736071 -720055711 -1552759366 -659573848 -383716871 -1917772020 89910534 -1471830390 199695761 1092828412 -1752660313 37252515 \
619896754 1498953288 320100335 -253249071 -1972781995 -598953716 413396131 -1213586385 -1145072479 -572427278 76904097 -354050775 \
560187973 1584237711 -445561113 1884775123 383192705 -455575789 -890639021 -242902093 981996887 277149190 1722729145 1680553291 \
-751443360 1980401499 1492392133 793264204 -127968531 -1916262455 599188696 -1995653677 2016724493 1313601103 1857534615 1021292526 \
-380265487 2008177180 920777135 30665599 1553898732 645057091 895924494 -1272664240 892691771 -1351588555 387638219 -1275613687 \
-1976327454 -799686807 1278313889 -85778476 751630597 -1534567701 -139930840 -969861067 1321002602 -929254689 -108974639 -1708301797 \
798717850 -1728856164 1306191263 395374847 1426479031 -1389317542 -1315524609 423086581 62560217 -140138652 -1066049555 -990189676 \
1556678669 -1755032756 1265659279 -1889290701 1316628709 807471494 -1938564048 185247070 1866573053 -217054149 -659094948 1288434910 \
-589945504 -848821978 -655294629 1815705661 -1599587197 2104135713 -968183511 -236464603 -188393528 -280047461 800117211 1250816804 \
-624469343 1718677376 -1541059065 -1140483503 132219195 -446664681 1806365961 260816836 -1303084189 25390657 1838742054 -1494577481 \
-79263650 -556050088 744995963 -1558045028 -1588384799 2126332967 1517886683 -1743971696 -1987695926 -938402165 -1212203661 -93574549 \
-273349282 1263111808 -868411909 -1315961460 802615908 1975727972 1390074897 1407009965 67111729 91651312 -1974543644 1162816401 \
 1899992679 -1973446276 -125145783 810151370 -1022158302 -194412505 -407759646 205546850 -228190092 1766717699 -1721105622 -1598027952 \
 849062679 -1166612097 -1507018093 929075583 -2125868064 -1480702242 -1367513952 1539360270 -2110660146 2108949971 938679769 1072564424 \
 1138755916 253592019 -413739686 -953113214 -510985799 101141659 2021524209 1049011458 -559196275 1127371260 -197078714 990233177 \
 75231024 148879111 637377150 1586546919 -550710651 1632582040 -300007347 -915343868 -261012066 958940033 -1787638553 1545886312 \
 1087162621 -998444038 147032536 2140063886 999018662 -28775123 2047718860 -1235022337 766919222 -386749500 -1272977075 -198826024 \
 382621207 1141318802 1167829772 1037776653 -2092866295 1893331693 -1098847210 -269420528 -1956214354 546052610 -925572027 -1899739891 \
 1409889518 -1234341963 -1151367657 -1803478063 -1310549945 993252357 -634580813 -1301057440 -1281594792 -707533836 -589747682 \
 -2121617431 -1769201229 -1596719818 -8126343 -1092732570 695891430 2119174754 358388410 -599746328 -22756279 -428895741 653016617 \
 679319652 -482922720 -161091431 1737622157 7305559 -631844346 -1833343139 1712121433 1116875090 589406417 -864734465 83672744 \
 1655262072 -605501339 2010842488 -1990790397 -83341489 1384413548 -213249601 1217698316 -875646487 773943725 839858042 -811679978 \
 54042844 955604283 455291190 -1494004797 1775706018 365481777 1516577989 623922903 1390122543 -1973843609 -582038145 1885061275 \
 355206320 -1246749898 844113109 -364034506 2095421095 -1515134419 -406394010 -1826129879 1816011627 1016152990 -1504367692 216176355 \
 -901351725 -1874772188 2057376997 -581822134 87340418 1566488594 1009813221 852266333 -1211693379 -1631463119 2070017129 856116876 \
 1721394312 -336386773 -1934747742 -1158575392 546525234 -819801327 -66563293 197143681 -1927774583 191908011 1837492713 918471012 \
 449326207 -821392917 -877524365 -467149337 1262039881 -1152068950 -1591549711 -205728357 1454756351 332993248 126644066 -701950406 \
 598211018 -1381051690 179772697 295022165 722555959 -1129930538 1220914797 1472973736 -335493594 1885187517 1301657743 -1147247302 \
 1008827690 1723557852 464373827 -531702494 682988082 2076282569 652336429 1249090706 -247305134 873977105 -2103895294 -1399049014 \
 -1569292727 -1861323274 642658487 498238458 -1487238272 404640295 -1582283810 -1122803047 -2038681378 -420482281 2095781743 \
 -1472761308 1694361244 2080060365 1010490367 2083509641 -696103952 416716563 1197151180 -1446304692 -475806597 -63753918 2117654589 \
 -965397837 2086110343 811467544 1269940437 373966200 1719804776 1998181421 -1271138751 -1507351305 1080954953 774321011 -1046213471 \
 100700402 453822438 -776369503 -23548169 -1424428053 -1954586013 1782755289 5898235 -1275632445 -244036039 969048046 644617833 \
 685962315 1300919777 1562976174 808919890 1412068494 -252794720 1153441846 -1983303317 2051412124 -1060938535";
 ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

ARG="-1647471579 +482476212 178696205 -298634703 1197299293 1482701235 -434045584 1643339086 433087115 -973392669 -497560884 1378317748 \
-55401157 1892477501 156216281 607086697 1836877585 -1960928772 877201017 -1446510214 1553096786 1426912165 1374220049 2141747136 \
-2014645987 62425016 -531181764 -1064240897 -990508877 -1596954515 -477466802 -1105424460 -1342289476 2036273982 299402949 -1970721534 \
828725915 -1843131454 1278623989 -1674466990 389373283 857288186 -306661920 -486728745 -1784191079 -1327452736 808870995 -1554947322 \
-1859827099 1595147666 -1979848518 -821313075 -857628956 94407931 -1151749208 -1452080883 1352075913 1871931826 2103384413 -1843939772 \
-1495498325 -263646074 1201779117 -919275052 654259435 420255928 715272905 -795576069 -1562818525 1186588405 899712457 1505510161 \
322854872 1551294886 1612885472 615944696 1676332246 -1755773100 -830859009 -163160250 147645244 -445950238 -958675385 -1174912216 \
-206747486 -92899187 -1229620026 -1173790804 -987566634 -443939924 1255791284 100489842 383655289 1617497452 -1250120532 -175145787 \
605736071 -720055711 -1552759366 -659573848 -383716871 -1917772020 89910534 -1471830390 199695761 1092828412 -1752660313 37252515 \
619896754 1498953288 320100335 -253249071 -1972781995 -598953716 413396131 -1213586385 -1145072479 -572427278 76904097 -354050775 \
560187973 1584237711 -445561113 1884775123 383192705 -455575789 -890639021 -242902093 981996887 277149190 1722729145 1680553291 \
-751443360 1980401499 1492392133 793264204 -127968531 -1916262455 599188696 -1995653677 2016724493 1313601103 1857534615 1021292526 \
-380265487 2008177180 920777135 30665599 1553898732 645057091 895924494 -1272664240 892691771 -1351588555 387638219 -1275613687 \
-1976327454 -799686807 1278313889 -85778476 751630597 -1534567701 -139930840 -969861067 1321002602 -929254689 -108974639 -1708301797 \
798717850 -1728856164 1306191263 395374847 1426479031 -1389317542 -1315524609 423086581 62560217 -140138652 -1066049555 -990189676 \
1556678669 -1755032756 1265659279 -1889290701 1316628709 807471494 -1938564048 185247070 1866573053 -217054149 -659094948 1288434910 \
-589945504 -848821978 -655294629 1815705661 -1599587197 2104135713 -968183511 -236464603 -188393528 -280047461 800117211 1250816804 \
-624469343 1718677376 -1541059065 -1140483503 132219195 -446664681 1806365961 260816836 -1303084189 25390657 1838742054 -1494577481 \
-79263650 -556050088 744995963 -1558045028 -1588384799 2126332967 1517886683 -1743971696 -1987695926 -938402165 -1212203661 -93574549 \
-273349282 1263111808 -868411909 -1315961460 802615908 1975727972 1390074897 1407009965 67111729 91651312 -1974543644 1162816401 \
 1899992679 -1973446276 -125145783 810151370 -1022158302 -194412505 -407759646 205546850 -228190092 1766717699 -1721105622 -1598027952 \
 849062679 -1166612097 -1507018093 929075583 -2125868064 -1480702242 -1367513952 1539360270 -2110660146 2108949971 938679769 1072564424 \
 1138755916 253592019 -413739686 -953113214 -510985799 101141659 2021524209 1049011458 -559196275 1127371260 -197078714 990233177 \
 75231024 148879111 637377150 1586546919 -550710651 1632582040 -300007347 -915343868 -261012066 958940033 -1787638553 1545886312 \
 1087162621 -998444038 147032536 2140063886 999018662 -28775123 2047718860 -1235022337 766919222 -386749500 -1272977075 -198826024 \
 382621207 1141318802 1167829772 1037776653 -2092866295 1893331693 -1098847210 -269420528 -1956214354 546052610 -925572027 -1899739891 \
 1409889518 -1234341963 -1151367657 -1803478063 -1310549945 993252357 -634580813 -1301057440 -1281594792 -707533836 -589747682 \
 -2121617431 -1769201229 -1596719818 -8126343 -1092732570 695891430 2119174754 358388410 -599746328 -22756279 -428895741 653016617 \
 679319652 -482922720 -161091431 1737622157 7305559 -631844346 -1833343139 1712121433 1116875090 589406417 -864734465 83672744 \
 1655262072 -605501339 2010842488 -1990790397 -83341489 1384413548 -213249601 1217698316 -875646487 773943725 839858042 -811679978 \
 54042844 955604283 455291190 -1494004797 1775706018 365481777 1516577989 623922903 1390122543 -1973843609 -582038145 1885061275 \
 355206320 -1246749898 844113109 -364034506 2095421095 -1515134419 -406394010 -1826129879 1816011627 1016152990 -1504367692 216176355 \
 -901351725 -1874772188 2057376997 -581822134 87340418 1566488594 1009813221 852266333 -1211693379 -1631463119 2070017129 856116876 \
 1721394312 -336386773 -1934747742 -1158575392 546525234 -819801327 -66563293 197143681 -1927774583 191908011 1837492713 918471012 \
 449326207 -821392917 -877524365 -467149337 1262039881 -1152068950 -1591549711 -205728357 1454756351 332993248 126644066 -701950406 \
 598211018 -1381051690 179772697 295022165 722555959 -1129930538 1220914797 1472973736 -335493594 1885187517 1301657743 -1147247302 \
 1008827690 1723557852 464373827 -531702494 682988082 2076282569 652336429 1249090706 -247305134 873977105 -2103895294 -1399049014 \
 -1569292727 -1861323274 642658487 498238458 -1487238272 404640295 -1582283810 -1122803047 -2038681378 -420482281 2095781743 \
 -1472761308 1694361244 2080060365 1010490367 2083509641 -696103952 416716563 1197151180 -1446304692 -475806597 -63753918 2117654589 \
 -965397837 2086110343 811467544 1269940437 373966200 1719804776 1998181421 -1271138751 -1507351305 1080954953 774321011 -1046213471 \
 100700402 453822438 -776369503 -23548169 -1424428053 -1954586013 1782755289 5898235 -1275632445 -244036039 969048046 644617833 \
 685962315 1300919777 1562976174 808919890 1412068494 -252794720 1153441846 -1983303317 +2051412124 -1060938535";
 ./push_swap $ARG | ./checker_linux $ARG; ./push_swap $ARG | wc -l;

echo -e "\n"
echo -e "`tput setaf 46`Minimum_score = `tput sgr0`$minimum_score\n";
echo -e "`tput setaf 46`Maximum_score = `tput sgr0`$maximum_score\n";
echo -e "`tput setaf 46`Average_score = `tput sgr0`$average_score\n";
echo -e "`tput setaf 46`Median_score = `tput sgr0`$median_score\n";

echo -e "\n"
ft_continue
echo -e "\n"

echo -e "\n"
echo -e "`tput setaf 51` ██████╗██╗     ███████╗ █████╗ ███╗   ██╗██╗███╗   ██╗ ██████╗     ███████╗██╗██╗     ███████╗███████╗`tput sgr0`"
echo -e "`tput setaf 50`██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║██║████╗  ██║██╔════╝     ██╔════╝██║██║     ██╔════╝██╔════╝`tput sgr0`"
echo -e "`tput setaf 49`██║     ██║     █████╗  ███████║██╔██╗ ██║██║██╔██╗ ██║██║  ███╗    █████╗  ██║██║     █████╗  ███████╗`tput sgr0`"
echo -e "`tput setaf 48`██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║██║██║╚██╗██║██║   ██║    ██╔══╝  ██║██║     ██╔══╝  ╚════██║`tput sgr0`"
echo -e "`tput setaf 47`╚██████╗███████╗███████╗██║  ██║██║ ╚████║██║██║ ╚████║╚██████╔╝    ██║     ██║███████╗███████╗███████║`tput sgr0`"
echo -e "`tput setaf 46` ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝`tput sgr0`"
echo -e "\n"
echo -e "${Bees} `tput setaf 46`make fclean`tput sgr0` ${Bees}"; make fclean;
echo -e "${Bees} `tput setaf 46`remove valgrind.log`tput sgr0` ${Bees}"; rm -rf valgrind.log;

echo -e "\n"
while true;
do
	read -p "${Bees} `tput setaf 46`ARE YOU STILL ALIVE AND READY TO DEFENSE YOUR CODE?`tput sgr0` ${Bees}   [Y/n] " input
	case $input in
		[Yy]* ) break;;
		[Nn]* ) exit;;
		* ) echo -e "Please answer y or n";;
	esac
done

echo -e "\n"
echo -e "`tput setaf 208`77777777777777777777777777777777777777777777777777777777777777777==,?777777777~,,=I777777777?777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`77777777777777777777777777777777777777777777777777777777 77777777?=:,+7777777~,,:=77777777=7 777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777777777777777777777777777=7777777=::,+77777,,,:~+777777?~777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777++I77 77777777777777777777=~7 777~:,,,~77.:.,:~~?7777?~=7777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777==.~==7777777777777777777 7=~=777?:~::,,,,,,,:~+7777~~=77777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777+,..,,?++777777777777777 7?~~:+=,,,,,,,,,,:::~+77~=~=777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777+~,,,,,,:=+?7  777777777777=:,,,,,,:,.,..,,:::7+~:=+7777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777+=,,::::::::++?7777777777777~,,,=+=======,.::~~:~~=77777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`77777777777777777777777777777777777=::::::::::::+++7777+?77777~:+++++=======::::::==777777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`77777777777777777777777777777777777==:::::::~::~~~==?777=:=777+=~=====+:~~===::::~77777::::77777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777 7=~:::::::~~~~~~==+777:,:~====~+77777II~~~~:::7 77~:,7 777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777777+=::::~~~~~~~~~~~~~~~~~~~==+=7777777III:=~::7777,,,,,:::7777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777777=:~~=~~~~~~~~~==~~~~~~~====77777I77III+==::::,,,,,,,,,.,:::~77777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`77777777777777777777777777777777777777=:~~~~~~~~~~~=~==~~~~~==~777777I=,?III~~~~~:,,==~=~=~~,:~=777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`77777777777777777777777777777777777777+~:::~~~~~~~~======~~===?777+77.,=,III===~===?I777====:::7777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777777777?:,::::~~~~=======~=~==7777=,.:.,,?II+~~==I777777777=:==7777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777777777 I+::::::~========~===77777~=...=,III~=~=+77~~,77777=~~77777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777777777777++================== 777I:====?III~=~,~,7I.,.777I+~777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777++III+++=:=7I?+=====7777777777777777I===================+I777.,=?III,~~~:~....~.IIII++777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777 7:::::~:~~~+++~~:~::=====77 777777777777=======+IIIIII~==========~~~~~~~~~~=,::~=,IIIII~7777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777,,,::~~~::~~=~=~:~~~~:+~~~===77777777777======+IIIIIIIII=============~~~~:~::~:.7IIII7?777777 I 77777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777~,,,,,,~~~~:::~~~~===::::~~=======7777777~~====????III777777===========~~~~=~:::~::=++~=7777I~+~.,~777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777=~,::..,,,,:::::~~~~==~~:::~=========77777====??????++IIIIIIIII+==============~:::::~~:I77 .,~:...,77 777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7 ====,,==:.,,,,~~~:,,,:~==~~::~=========+777~===IIIIIII=++IIIIIIIIIII?============::::~=+++=.....,:~~777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7==========:::,,,~::,::::~~~~~~~==========~~=~~~=III?7I+III+?I??IIIIIIIIIIII+++++++=========~.,:::~=+7777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`========+===~::::,:.::::::~.,:~~=============~~~~?I?II,,??++?I?II?IIIIIIIIIIIIIIIIIIIIIIIII?+=~=++?777 77777777777777777`tput sgr0`"
echo -e "`tput setaf 208`===========~:=~~:::.,::~~:,,,::,,===========~~=~~~I?77,,777II???++??IIII???????IIIIIII???+=?+?77777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`~=========~,==+==~~::::,,,,~::,,:===========~~=~~~??7I,,7I7?IIII++I++++?????????++???++===+?I777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`=:~~=====~:+========~~~~.=====,,,,7+=+======~~==~~~+II~,,I7I7777III?+++==~~~~======++====+I77777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7I:,====::========+==~~====~~~~~.,777I======~====~~=II=77III7777IIIIII+=+~~:~~~~~~==+=+I777777777 777777 777I~~+=7777777`tput sgr0`"
echo -e "`tput setaf 208`7777:,,,,,=========+===~~~~~~~::,7777 77?==~=======~III77II,7777I77777????+,,:~~~~~=77 7777777777777777?,:~~:~===7777777`tput sgr0`"
echo -e "`tput setaf 208`77777?=:,:~~==========~~:::::::777777777777~~~======IIIII7777~?I777777IIIII+???+???I~I77777777777777?::::~:::~~~77777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777:::~::~~~~~~=:::::::7777777777777+~~:======77?I77I7777I??IIIIIII?+???????I~~~~==77777777~~:::::~:::+7777777777`tput sgr0`"
echo -e "`tput setaf 208`77777777777~::::~~~~~~~~~~~~7777777777777777:::=======IIII7I7777I7777I7I?+++++++==?I~========?77+~~=~~:~~~::777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777?~:~:~~~777777777777777777777:::===+==I77I??III?IIIIIIII????+?+++=??~===~~~~=====~==+~~~~~~~777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777+=7777777777777777777777777::==+=???77IIIIIIIIIII7II7777IIIII++++~~========~======::~~~~~~======77777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777777777777777,,=?77I???+IIIIIIIII77????77IIII+????+??777?=++====+==:~~:~~~~~~=====77777`tput sgr0`"
echo -e "`tput setaf 208`77777777777777777777777777777777777777777777777:7777?????+=IIIIII7??????7====+I7 77777777777777777777==~::,,:?:::~+77777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777777777777777777777?????+===+++=~~~~~~~====?7777777777777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777777777777777777777I?II++====++~~~~~~~===?777777777777777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777777777777777777777777I7777+++++~~~~~~=++77777777777777777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`77777777777777777777777777777777777777777777777777777777777777?+~~~=++++777777777777777777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777777777777777777777777777777777?==++++77777777777777777777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777777777777777777777777777777777?I??+7777777777777777777777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`7777777777777777777777777777777777777777777777777777777777777777III77777777777777777777777777777777777777777777777777777`tput sgr0`"
echo -e "`tput setaf 208`777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777`tput sgr0`"

echo -e "\n"
echo -e "`tput setaf 198` ██████╗ ██████╗ ███╗   ██╗ ██████╗ ██████╗  █████╗ ████████╗███████╗      ██╗██████╗       ██╗██████╗       ██╗██████╗`tput sgr0`"
echo -e "`tput setaf 197`██╔════╝██╔═══██╗████╗  ██║██╔════╝ ██╔══██╗██╔══██╗╚══██╔══╝██╔════╝     ██╔╝╚════██╗     ██╔╝╚════██╗     ██╔╝╚════██╗`tput sgr0`"
echo -e "`tput setaf 196`██║     ██║   ██║██╔██╗ ██║██║  ███╗██████╔╝███████║   ██║   ███████╗    ██╔╝  █████╔╝    ██╔╝  █████╔╝    ██╔╝  █████╔╝`tput sgr0`"
echo -e "`tput setaf 202`██║     ██║   ██║██║╚██╗██║██║   ██║██╔══██╗██╔══██║   ██║   ╚════██║    ╚██╗  ╚═══██╗    ╚██╗  ╚═══██╗    ╚██╗  ╚═══██╗`tput sgr0`"
echo -e "`tput setaf 208`╚██████╗╚██████╔╝██║ ╚████║╚██████╔╝██║  ██║██║  ██║   ██║   ███████║     ╚██╗██████╔╝     ╚██╗██████╔╝     ╚██╗██████╔╝`tput sgr0`"
echo -e "`tput setaf 214` ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝      ╚═╝╚═════╝       ╚═╝╚═════╝       ╚═╝╚═════╝`tput sgr0`"

echo -e "\n"
while true;
do
	read -p "${Bees} `tput setaf 46`ARE YOU SURE?`tput sgr0` ${Bees}   [Y/n] " input
	case $input in
		[Yy]* ) break;;
		[Nn]* ) exit;;
		* ) echo -e "Please answer y or n";;
	esac
done

#echo -e "${Bees} `tput setaf 46`Opening in VSCode...`tput sgr0` ${Bees}"; sleep 1; open -a "Visual Studio Code" .
echo -e "${Bees} `tput setaf 46`Opening in VSCode...`tput sgr0` ${Bees}"; code .

: << 'END'
echo -e "\n${Green}END OF TESTS${Reset}\n"; sleep 1;
echo -e "\n${Yellow}Executing make fclean command and opening code in VSCode...${Reset}\n";

code .
END
