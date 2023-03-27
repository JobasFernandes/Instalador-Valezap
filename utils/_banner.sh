#!/bin/bash
#
# Print banner art.

#######################################
# Print a board. 
# Globals:
#   BG_BROWN
#   NC
#   RED
#   CYAN_LIGHT
#   RED
#   GREEN
#   YELLOW
# Arguments:
#   None
#######################################
print_banner() {

  clear

  printf "\n\n"

printf "${WHITE}";
printf ${WHITE}"██╗   ██╗ █████╗ ██╗     ███████╗███████╗ █████╗ ██████╗ \n";
printf ${WHITE}"██║   ██║██╔══██╗██║     ██╔════╝╚══███╔╝██╔══██╗██╔══██╗\n";
printf ${WHITE}"██║   ██║███████║██║     █████╗    ███╔╝ ███████║██████╔╝\n";
printf ${WHITE}"╚██╗ ██╔╝██╔══██║██║     ██╔══╝   ███╔╝  ██╔══██║██╔═══╝ \n";
printf ${WHITE}" ╚████╔╝ ██║  ██║███████╗███████╗███████╗██║  ██║██║     \n";
printf ${WHITE}"  ╚═══╝  ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝     \n";
printf "${WHITE}";
  printf "\n"
}
