#!/bin/bash
apt install gufw ufw
read -rp "Quiere instalar los servicios todos/algunos: " respuesta
if [ "$respuesta" == "todos" ]; then
    apt install openssh-server vsftpd apache2 bind9
    systemctl enable ssh.service && systemctl start ssh.service
    ufw allow 21 && ufw allow 22/tcp && ufw allow 53/tcp && ufw allow 80/tcp && ufw allow 443/tcp
else
apt install ufw
read -rp "Que servicio desea instalar -> SSH/FTP/HTTP/DNS: " servicio
    if [ "$servicio" = "SSH" ]; then
        apt install openssh-server
        ufw allow 22
    elif [ "$servicio" = "FTP" ]; then
        apt install vsftpd
        ufw allow 21
    elif [ "$servicio" = "HTTP" ]; then
        apt install apache2
        ufw allow 80
        ufw allow 443
    elif [ "$servicio" = "DNS" ]; then
        apt install bind9
        ufw allow 53
    elif [ "$servicio" = "" ]; then
        ip a
    else
        ip a
    fi
fi