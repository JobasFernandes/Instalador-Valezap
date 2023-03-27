#!/bin/bash

get_mysql_root_password() {
  
  print_banner
  printf "${WHITE} 💻 Insira senha padrão para o sistema (senha root mysql):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_root_password
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Digite o nome da empresa a ser configurada (Utilizar Letras minusculas):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_link_git() {
  
  print_banner
  printf "${WHITE} 💻 Insira o link da sua instalção Valezap que deseja instalar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " link_git
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Digite o numero maximo de conexões que a empresa ${instancia_add} poderá cadastrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Digite o numero maximo de atendentes que a empresa ${instancia_add} poderá cadastrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o domínio do FRONTEND/PAINEL para a ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o domínio do BACKEND/API para a ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do FRONTEND para a ${instancia_add}; Ex: 3000 A 3999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}


get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do BACKEND para esta instancia; Ex: 4000 A 4999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_phpmyadmin_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do PHPMYADMIN  para a ${instancia_add}; Ex: 8080 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " phpmyadmin_port
}

get_mysql_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta MYSQL para ${instancia_add}; Ex: 3306 (3306, 3307...) ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_port
}

get_empresa_atualizar() {
  
  print_banner
  printf "${WHITE} 💻 Digite o nome da Instancia/Empresa que deseja Atualizar (Digite o mesmo nome de quando instalou):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_atualizar
}



get_urls() {
  get_mysql_root_password
  get_instancia_add
  get_link_git
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_phpmyadmin_port
  get_mysql_port
}

software_update() {
  get_empresa_atualizar
  frontend_update
  backend_update
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bem vindo(a) ao instalador Valezap, Selecione abaixo a proxima ação!${GRAY_LIGHT}"
  printf "\n\n"
  printf "${GREEN}   [0] ${WHITE} • ${YELLOW} INSTALAR\n"
  printf "${GREEN}   [1] ${WHITE} • ${YELLOW} ATUALIZAR\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    0) get_urls ;;

    1) 
      software_update 
      exit
      ;;

    *) exit ;;
  esac
}


