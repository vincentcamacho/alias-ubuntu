NOMBRE_VM=${PWD##*/}
SERVIDOR_IP=$(VBoxManage guestproperty get $NOMBRE_VM "/VirtualBox/GuestInfo/Net/1/V4/IP\" | cut -b 8-20)
vagrant destroy -f
sudo rm -rf "/mnt/c/Users/$USUARIO_WINDOWS/VirtualBox VMs/$NOMBRE_VM"
sudo rm -rf .vagrant/
ssh-keygen -f ~/.ssh/known_hosts -R $SERVIDOR_IP
ssh-keygen -f ~/.ssh/known_hosts -R $NOMBRE_VM
sudo rm -rf ~/.ssh/known_hosts.old
echo -n "Deseas borrar la Interfaz de Red? No recomendado si tienes varias VMs creadas (n/y): "
read RESPUESTA
if [[ $RESPUESTA = y ]]; then echo "Eliminando la interfaz de red de Virtual Box, el resto de la limpieza se ha realizo con EXITO"
VBoxManage hostonlyif remove "VirtualBox Host-Only Ethernet Adapter" ;else echo "La limpieza se ha realido con EXITO sin borrar la NIC de VirtualBox"; fi
