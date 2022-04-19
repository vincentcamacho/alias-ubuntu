#!/bin/bash
# Ejemplo de IF..ELSE en la misma linea
#      echo -n "Introduce numero: " && read VAR && if [[ $VAR -gt 10 ]]; then echo "El numero $VAR es mayor que 10";else echo "Numero menor que 9"; fi

# OJO SELECCIONAR SHELL:  bashrc  o  zshrc
el_shell=zshrc

#Configuracion para WSL para usar Vagrant desde ahi hacia un VirtualBox instalado en Windows
echo -e "\n#WSL + VirtualBox + Vagrant" | sudo tee -a ~/.$el_shell
echo 'export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"' | sudo tee -a ~/.$el_shell
echo 'export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"' | sudo tee -a ~/.$el_shell
echo 'export USUARIO_WINDOWS="jvinc"' | sudo tee -a ~/.zshrc

# CREACION DE ALIAS

echo -e "\n#ALIAS NECESARIOS" | sudo tee -a ~/.$el_shell
# echo "alias cna='rm -rf alias.sh && touch alias.sh && chmod +x alias.sh && vim alias.sh'" | sudo tee -a ~/.$el_shell
echo "alias cnz='rm -rf ~/.zshrc && cp ~/.zshrc-backup ~/.zshrc && source ~/ps/alias-ubuntu/alias.sh && source ~/.zshrc'" | sudo tee -a ~/.$el_shell
echo "alias bsh='sudo cat ~/.bashrc'" | sudo tee -a ~/.$el_shell
echo "alias zsh='sudo cat ~/.zshrc'" | sudo tee -a ~/.$el_shell
echo "alias zg='sudo cat ~/.zshrc | grep'" | sudo tee -a ~/.$el_shell
echo "alias ssha='eval \$(ssh-agent) && ssh-add'" | sudo tee -a ~/.$el_shell
echo "alias fb='eval \$(ssh-agent) && ssh-add && ssh fac-bastion'" | sudo tee -a ~/.$el_shell
# echo "alias cns='echo \"#!/bin/bash\" >> script.sh && chmod +x script.sh && vim script.sh'" | sudo tee -a ~/.$el_shell
echo "alias cns='echo -e \"#!/bin/bash\n\" >> script.sh && chmod +x script.sh && vim script.sh'" | sudo tee -a ~/.$el_shell
echo "alias lc='colorls -lA --sd'" | sudo tee -a ~/.$el_shell
echo "alias lx='exa -lhgi'" | sudo tee -a ~/.$el_shell
echo "alias scf='cat ~/.ssh/config'" | sudo tee -a ~/.$el_shell
echo "alias srz='source ~/.zshrc'" | sudo tee -a ~/.$el_shell
echo "alias sps='touch super-script.sh && chmod +x super-script.sh && sudo vim super-script.sh'" | sudo tee -a ~/.$el_shell
echo "alias rslv='echo \"nameserver 8.8.8.8\" | sudo tee /etc/resolv.conf > /dev/null'" | sudo tee -a ~/.$el_shell

# Basicos
echo -e "\n#ALIAS BASICOS" | sudo tee -a ~/.$el_shell
echo "alias c='cat'" | sudo tee -a ~/.$el_shell
echo "alias sc='sudo cat'" | sudo tee -a ~/.$el_shell
echo "alias t='touch'" | sudo tee -a ~/.$el_shell
echo "alias st='sudo touch'" | sudo tee -a ~/.$el_shell
echo "alias md='mkdir'" | sudo tee -a ~/.$el_shell
echo "alias smd='sudo mkdir'" | sudo tee -a ~/.$el_shell
echo "alias rrf='sudo rm -rf'" | sudo tee -a ~/.$el_shell
echo "alias nt='sudo netstat -tulpn'" | sudo tee -a ~/.$el_shell
echo "alias hs='history'" | sudo tee -a ~/.$el_shell
echo "alias hm='cd ~'" | sudo tee -a ~/.$el_shell
echo "alias l1='ls -la'" | sudo tee -a ~/.$el_shell
echo "alias sycs='sudo systemctl status'" | sudo tee -a ~/.$el_shell
echo "alias syce='sudo systemctl start'" | sudo tee -a ~/.$el_shell
echo "alias syca='sudo systemctl stop'" | sudo tee -a ~/.$el_shell
echo "alias sycr='sudo systemctl restart'" | sudo tee -a ~/.$el_shell
echo "alias pw='sudo cat /etc/passwd'" | sudo tee -a ~/.$el_shell
echo "alias sdr='sudo cat /etc/sudoers'" | sudo tee -a ~/.$el_shell
echo "alias sdr90='sudo cat /etc/sudoers.d/90-cloud-init-users'" | sudo tee -a ~/.$el_shell
echo "alias fws='sudo ufw status'" | sudo tee -a ~/.$el_shell
echo "alias ain='sudo apt install'" | sudo tee -a ~/.$el_shell
echo "alias aup='sudo apt update -y'" | sudo tee -a ~/.$el_shell
echo "alias aug='sudo apt update -y && sudo apt upgrade -y'" | sudo tee -a ~/.$el_shell
echo "alias lsbr='lsb_release -a'" | sudo tee -a ~/.$el_shell
echo "alias lsbc='lsb_release -c'" | sudo tee -a ~/.$el_shell
echo "alias osr='cat /etc/os-release'" | sudo tee -a ~/.$el_shell

# Disco, RAM, Procesos, etc
echo "alias lsbl='sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL'" | sudo tee -a ~/.$el_shell
echo "alias dfh='df -h | sort -k 1'" | sudo tee -a ~/.$el_shell
echo "alias duh='du -sh * | sort -h'" | sudo tee -a ~/.$el_shell
echo "alias psa='ps auxww'" | sudo tee -a ~/.$el_shell
echo "alias psag='ps auxww | grep'" | sudo tee -a ~/.$el_shell
echo "alias psuf='ps --user $(id -u) f'" | sudo tee -a ~/.$el_shell
echo "alias psuff='ps --user $(id -u) -F'" | sudo tee -a ~/.$el_shell
echo "alias psmw='ps auxww --sort -%mem | head -15'" | sudo tee -a ~/.$el_shell
echo "alias psm='ps -eo comm,pmem,pcpu,uname,pid,etime --sort -pmem | head -15'" | sudo tee -a ~/.$el_shell
echo "alias pscw='ps auxww --sort -%cpu | head -15'" | sudo tee -a ~/.$el_shell
echo "alias psc='ps -eo comm,pmem,pcpu,uname,pid,etime --sort -pcpu | head -15'" | sudo tee -a ~/.$el_shell

#Configurar Formas de Autenticacion /etc/ssh/sshd_config
echo -e "\n#ALIAS SSHD" | sudo tee -a ~/.$el_shell
echo "alias sshd='sudo cat /etc/ssh/sshd_config'" | sudo tee -a ~/.$el_shell
echo 'alias sshda="cat /etc/ssh/sshd_config | grep -e PubkeyAuthentication -e PasswordAuthentication -e PermitRootLogin -e PermitEmptyPasswords"' | sudo tee -a ~/.$el_shell

# SSH KEYS
echo -e "\n#SSH KEYS" | sudo tee -a ~/.$el_shell
echo "alias skged='echo -n \"Introduce nombre de la llave:\" && read LLAVE && echo -n \"Introduce contrasena de la llave: (v = vacia, sin contrasena)\" && read CONTRASENA && if [[ \$CONTRASENA = v ]]; then ssh-keygen -t ed25519 -b 521 -f ~/.ssh/\$LLAVE -q -N \"\";else ssh-keygen -t ed25519 -b 521 -f ~/.ssh/\$LLAVE -q -N \$CONTRASENA; fi'" | sudo tee -a ~/.$el_shell
echo "alias skgrsa='echo -n \"Introduce nombre de la llave:\" && read LLAVE && echo -n \"Introduce contrasena de la llave: (v = vacia, sin contrasena)\" && read CONTRASENA && if [[ \$CONTRASENA = v ]]; then ssh-keygen -t rsa -b 4096 -f ~/.ssh/\$LLAVE -q -N \"\";else ssh-keygen -t rsa -b 4096 -f ~/.ssh/\$LLAVE -q -N \$CONTRASENA; fi'" | sudo tee -a ~/.$el_shell
#     Asi seria el comando de arriba sin usar alias:
#     echo -n "Introduce nombre de la llave:" && read LLAVE && echo -n "Introduce contrasena de la llave: (v = vacia, sin contrasena)" && read CONTRASENA && if [[ $CONTRASENA = v ]]; then ssh-keygen -t ed25519 -b 521 -f ~/.ssh/$LLAVE -q -N "";else ssh-keygen -t ed25519 -b 521 -f ~/.ssh/$LLAVE -q -N $CONTRASENA; fi
echo "alias skgdip='echo -n \"Introduce NOMBRE o IP del servidor que deseas remover de known_hosts:\" && read SERVIDOR_IP && ssh-keygen -f ~/.ssh/known_hosts -R \$SERVIDOR_IP'" | sudo tee -a ~/.$el_shell
echo "alias skgy='echo -n \"PROBAR UNA KEY - Introduce llave que deseas probar:\" && read LLAVE && ssh-keygen -y -f ~/.ssh/\$LLAVE'" | sudo tee -a ~/.$el_shell
echo "alias lsk='ls ~/.ssh'" | sudo tee -a ~/.$el_shell








# Vagrant
echo -e "\n#VAGRANT" | sudo tee -a ~/.$el_shell
echo "alias vgu='vagrant up'" | sudo tee -a ~/.$el_shell
echo "alias vgh='vagrant halt'" | sudo tee -a ~/.$el_shell
echo "alias vgka='vagrant destroy -f && NOMBRE_VM=\${PWD##*/} && sudo rm -rf \"/mnt/c/Users/\$USUARIO_WINDOWS/VirtualBox VMs/\$NOMBRE_VM\" && sudo rm -rf .vagrant/ && SERVIDOR_IP=\$(VBoxManage guestproperty get \$NOMBRE_VM \"/VirtualBox/GuestInfo/Net/1/V4/IP\" | cut -b 8-20) && ssh-keygen -f ~/.ssh/known_hosts -R \$SERVIDOR_IP && ssh-keygen -f ~/.ssh/known_hosts -R \$NOMBRE_VM && echo -n \"Deseas borrar la Interfaz de Red? No recomendado si tienes varias VMs creadas (n/y): \" && read RESPUESTA && if [[ \$RESPUESTA = y ]]; then echo \"Eliminando la interfaz de red de Virtual Box, el resto de la limpieza se ha realizo con EXITO\" && VBoxManage hostonlyif remove \"VirtualBox Host-Only Ethernet Adapter\" ;else echo \"La limpieza se ha realido con EXITO sin borrar la NIC de VirtualBox\"; fi'" | sudo tee -a ~/.$el_shell






# VirtualBox
echo -e "\n#VIRTUAL BOX" | sudo tee -a ~/.$el_shell
echo "alias vbrn='echo -n \"Deseas borrar la Interfaz de Red? No recomendado si tienes varias VMs creadas (n/y): \" && read RESPUESTA && if [[ \$RESPUESTA = y ]]; then echo \"Eliminando la interfaz de red de Virtual Box, el resto de la limpieza se ha realizo con EXITO\" && VBoxManage hostonlyif remove \"VirtualBox Host-Only Ethernet Adapter\" ;else echo \"La limpieza se ha realido con EXITO sin borrar la NIC de VirtualBox\"; fi'" | sudo tee -a ~/.$el_shell
echo "alias vbun='mi_vm=\${PWD##*/} && VBoxManage unregistervm \$mi_vm -delete'" | sudo tee -a ~/.$el_shell

# Sistema
echo -e "\n#ALIAS SISTEMA" | sudo tee -a ~/.$el_shell
echo "alias vmmc='sudo sysctl vm.max_map_count'" | sudo tee -a ~/.$el_shell
echo "alias ffm='sudo sysctl fs.file-max'" | sudo tee -a ~/.$el_shell

# IP Tables
# sudo iptables -L
# sudo iptables -A INPUT -p icmp --icmp-type echo-request -j REJECT
# sudo iptables -D INPUT -p icmp --icmp-type echo-request -j REJECT
# sudo iptables -F

# Tmux
echo -e "\n#ALIAS TMUX" | sudo tee -a ~/.$el_shell
echo "alias tml='tmux ls'" | sudo tee -a ~/.$el_shell
echo "alias tma='tmux attach -t'" | sudo tee -a ~/.$el_shell
echo "alias tmr='tmux rename-session -t'" | sudo tee -a ~/.$el_shell
echo "alias tmn='tmux new -s'" | sudo tee -a ~/.$el_shell
echo "alias tmk='tmux kill-session -t'" | sudo tee -a ~/.$el_shell

# IDN
echo -e "\n#ALIAS IDN" | sudo tee -a ~/.$el_shell
echo 'alias tprx="curl -k -x "http://proxy.dev.idnomic.com:3128" -L "https://www.amazon.com""' | sudo tee -a ~/.$el_shell
echo 'alias proxyon="export http_proxy="http://proxy.dev.idnomic.com:3128";export https_proxy="http://proxy.dev.idnomic.com:3128""' | sudo tee -a ~/.$el_shell
echo 'alias proxyoff="unset http_proxy;unset https_proxy"' | sudo tee -a ~/.$el_shell

# Como obtener todos los plugins de un server corriendo Jenkins
# JENKINS_HOST=vincent:123@localhost:8080
# curl -sSL "http://$JENKINS_HOST/pluginManager/api/xml?depth=1&xpath=/*/*/shortName|/*/*/version&wrapper=plugins" | perl -pe 's/.*?<shortName>([\w-]+).*?<version>([^<]+)()(<\/\w+>)+/\1 \2\n/g'|sed 's/ /:/'

# Git Alias
echo -e "\n#ALIAS GIT" | sudo tee -a ~/.$el_shell
echo "alias gst='git status'" | sudo tee -a ~/.$el_shell
echo "alias gad='git add'" | sudo tee -a ~/.$el_shell
echo "alias gaa='git add .'" | sudo tee -a ~/.$el_shell
echo "alias gcm='git commit -m'" | sudo tee -a ~/.$el_shell
echo "alias gph='git push'" | sudo tee -a ~/.$el_shell
echo "alias gpho='git push -u origin'" | sudo tee -a ~/.$el_shell
echo "alias gck='git checkout'" | sudo tee -a ~/.$el_shell
echo "alias gpl='git pull'" | sudo tee -a ~/.$el_shell
echo "alias gacp='git add . && git commit -m \"NewChanges\" && git push'" | sudo tee -a ~/.$el_shell
echo "alias gacpm='git add . && git commit -m \"NewChanges\" && git push -u origin master'" | sudo tee -a ~/.$el_shell
echo "alias gacpn='git add . && git commit -m \"NewChanges\" && git push -u origin main'" | sudo tee -a ~/.$el_shell
echo "alias gcn='git clone'" | sudo tee -a ~/.$el_shell
echo "alias gcna='git clone https://github.com/jvinc86/web-astronauta.git'" | sudo tee -a ~/.$el_shell
echo "alias grso='git remote show origin'" | sudo tee -a ~/.$el_shell
echo "alias grao='git remote add origin'" | sudo tee -a ~/.$el_shell
echo "alias gbr='git branch -r'" | sudo tee -a ~/.$el_shell
echo "alias gft='git fetch'" | sudo tee -a ~/.$el_shell
echo "alias gfa='git fetch -all'" | sudo tee -a ~/.$el_shell
echo "alias gpa='git pull -all'" | sudo tee -a ~/.$el_shell

# Docker
echo -e "\n#ALIAS DOCKER" | sudo tee -a ~/.$el_shell
echo "alias d='docker'" | sudo tee -a ~/.$el_shell
echo "alias dp='docker ps'" | sudo tee -a ~/.$el_shell
echo "alias dpa='docker ps -a'" | sudo tee -a ~/.$el_shell
echo "alias di='docker images'" | sudo tee -a ~/.$el_shell
echo "alias dst='docker start'" | sudo tee -a ~/.$el_shell
echo "alias dsp='docker stop'" | sudo tee -a ~/.$el_shell
echo "alias drm='docker rm -f'" | sudo tee -a ~/.$el_shell
echo "alias dka='docker rm \$(docker stop \$(docker ps -aq))'" | sudo tee -a ~/.$el_shell
echo "alias dki='docker rmi -f \$(docker images -aq)'" | sudo tee -a ~/.$el_shell
echo "alias dri='docker rmi -f'" | sudo tee -a ~/.$el_shell
echo "alias drn='docker run'" | sudo tee -a ~/.$el_shell
echo "alias drd='docker run -d'" | sudo tee -a ~/.$el_shell
echo "alias drdn='docker run -d --name'" | sudo tee -a ~/.$el_shell
echo "alias drdinull='docker run -d -it --name servidor ubuntu:latest tail -f /dev/null'" | sudo tee -a ~/.$el_shell
echo "alias din='docker inspect'" | sudo tee -a ~/.$el_shell
echo "alias dipid='docker inspect --format '{{.State.Pid}}''" | sudo tee -a ~/.$el_shell
echo "alias dxi='docker exec -it'" | sudo tee -a ~/.$el_shell
echo "alias dv='docker volume'" | sudo tee -a ~/.$el_shell
echo "alias dvl='docker volume ls'" | sudo tee -a ~/.$el_shell
echo "alias dvc='docker volume create'" | sudo tee -a ~/.$el_shell
echo "alias dvi='docker volume inspect'" | sudo tee -a ~/.$el_shell
echo "alias dvr='docker volume rm'" | sudo tee -a ~/.$el_shell
echo "alias dvp='docker volume prune'" | sudo tee -a ~/.$el_shell
echo "alias dnl='docker network ls'" | sudo tee -a ~/.$el_shell
echo "alias dnc='docker network create'" | sudo tee -a ~/.$el_shell
echo "alias dni='docker network inspect'" | sudo tee -a ~/.$el_shell
echo "alias dncn='docker network connect'" | sudo tee -a ~/.$el_shell
echo "alias dndc='docker network disconnect'" | sudo tee -a ~/.$el_shell
echo "alias dnr='docker network rm'" | sudo tee -a ~/.$el_shell
echo "alias dnp='docker network prune'" | sudo tee -a ~/.$el_shell
echo "alias dcmu='docker-compose up -d'" | sudo tee -a ~/.$el_shell
echo "alias dcmd='docker-compose down'" | sudo tee -a ~/.$el_shell
echo "alias dcmd='docker-compose down'" | sudo tee -a ~/.$el_shell
echo "alias ddd='docker ps && docker ps -a && docker images'" | sudo tee -a ~/.$el_shell
echo "alias ddd2='docker ps && docker ps -a && docker images'" | sudo tee -a ~/.$el_shell
echo "alias dlg='docker logs'" | sudo tee -a ~/.$el_shell
echo "alias dlf='docker logs -f'" | sudo tee -a ~/.$el_shell
echo "alias dlf10='docker logs --tail 10 -f'" | sudo tee -a ~/.$el_shell
echo "alias dstt='sudo service docker status'" | sudo tee -a ~/.$el_shell
echo "alias dsta='sudo service docker start'" | sudo tee -a ~/.$el_shell
echo "alias dsto='sudo service docker stop'" | sudo tee -a ~/.$el_shell