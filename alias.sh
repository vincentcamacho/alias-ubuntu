mi_shell=zshrc

# Ports / Puertos
echo -e "\n#PORTS" | sudo tee -a ~/.$mi_shell
echo "alias portss='ss -tulpn | grep'" | sudo tee -a ~/.$mi_shell
echo "alias portns='netstat -tulpn | grep'" | sudo tee -a ~/.$mi_shell
echo "alias portls='lsof -i -P -n | grep'" | sudo tee -a ~/.$mi_shell