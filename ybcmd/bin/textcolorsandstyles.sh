#!/bin/bash
# Welcome to the csguide
# Author:	Jorge Buenabad-Chavez
# Date:		20210917
#
NO_COLOR="\e[0m"		# is default/white --  \e replaced \033
BLACK="\e[1;30m"
RED="\e[1;31m"
GREEN="\e[1;32m"
BROWN="\e[1;33m"
BLUE="\e[1;34m"
PURPLE="\e[1;35m"
CYAN="\e[1;36m"
GRAY="\e[1;37m"			# this and above are bold (thicker) type and some a bit brighter
COL1="\e[1;38m"			# white, so it seems the above are all the colours available.
COL2="\e[1;39m"			# white
COL3="\e[1;40m"			# white
LIGHT_BLACK="\e[0;30m"
LIGHT_RED="\e[0;31m"
LIGHT_GREEN="\e[0;32m"
LIGHT_BROWN="\e[0;33m"
LIGHT_BLUE="\e[0;34m"
LIGHT_PURPLE="\e[0;35m"
LIGHT_CYAN="\e[0;36m"
LIGHT_GRAY="\e[0;37m"

newline() {
    printf "\n"
}

shell="Bash"
echo -e "The best shell in NO_COLOR (white): $NO_COLOR$shell$NO_COLOR. What do you think?"
echo -e "The best shell in BLACK: $BLACK$shell$NO_COLOR. What do you think?"
echo -e "The best shell in RED: $RED $shell $NO_COLOR. What do you think?"
echo -e "The best shell in GREEN: $GREEN $shell $NO_COLOR. What do you think?"
echo -e "The best shell in BROWN: $BROWN $shell $NO_COLOR. What do you think?"
echo -e "The best shell in BLUE: $BLUE$shell$NO_COLOR. What do you think?"
echo -e "The best shell in PURPLE: $PURPLE $shell $NO_COLOR. What do you think?"
echo -e "The best shell in CYAN: $CYAN $shell $NO_COLOR. What do you think?"
echo -e "The best shell in GRAY: $GRAY $shell $NO_COLOR. What do you think?"

echo -e "The best shell in LIGHT_BLACK: $LIGHT_BLACK $shell $NO_COLOR. What do you think?"
echo -e "The best shell in LIGHT_RED: $LIGHT_RED $shell $NO_COLOR. What do you think?"
echo -e "The best shell in LIGHT_GREEN: $LIGHT_GREEN $shell $NO_COLOR. What do you think?"
echo -e "The best shell in LIGHT_BROWN: $LIGHT_BROWN $shell $NO_COLOR. What do you think?"
echo -e "The best shell in LIGHT_BLUE: $LIGHT_BLUE $shell $NO_COLOR. What do you think?"
echo -e "The best shell in LIGHT_PURPLE: $LIGHT_PURPLE $shell $NO_COLOR. What do you think?"
echo -e "The best shell in LIGHT_CYAN: $LIGHT_CYAN $shell $NO_COLOR. What do you think?"
echo -e "The best shell in LIGHT_GRAY: $LIGHT_GRAY $shell $NO_COLOR. What do you think?"

echo -e "The best shell in COL1: $COL1 $shell $NO_COLOR. What do you think?"
echo -e "The best shell in COL2: $COL2 $shell $NO_COLOR. What do you think?"
echo -e "The best shell in COL3: $COL3 $shell $NO_COLOR. What do you think?"

echo -e "The best shell in [normal]: $shell"
echo -e "The best shell in [bold]: `tput bold`$shell`tput sgr0`"
echo -e "The best shell in [background]: `tput setab 6`$shell`tput setab 0`$NO_COLOR" # $NO_COLOR turns off background
echo -e "The best shell in [underline]: `tput smul`$shell`tput rmul`"

