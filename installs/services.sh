#!/bin/bash
read -rp "Quiere instalar los servicios todos/algunos: " respuesta
if [ "$respuesta" == "todos" ]; then
    apt install ufw openssh-server vsftpd apache2 bind9
else
read -rp "Que servicio desea instalar -> SSH/FTP/HTTP/DNS: " servicio
    if [ "$servicio" = "SSH" ]; then
        apt install openssh-server
    elif [ "$servicio" = "FTP" ]; then
        apt install vsftpd
    elif [ "$servicio" = "HTTP" ]; then
        apt install apache2
    elif [ "$servicio" = "DNS" ]; then
        apt install bind9
    elif [ "$servicio" = "" ]; then
        ip a
    else
        ip a
    fi
fi