#!/bin/sh
#echo  ""
#sudo apt install samba
#cat ./samba.config | grep "path" | sed -e 's/path = //' -e 's/ //g'
bash_config()
{
    echo "alias c=clear" >> ~/.bashrc
#    source ~/.bashrc
}
vim_basic_config()
{
    echo "set nu" >> ~/.vimrc
    #source ~/.vimrc
}
samba_config()
{
WORK_DIR=$(cat ./samba.config | grep "path" | sed -e 's/path = //' -e 's/ //g' -e 's/\n//g' -e 's/\g//g' -e 's/\t//g' -e 's/\r//g')
if [ -d  $WORK_DIR ]
then
    echo "dir exist"
else  
    mkdir $WORK_DIR -p
    chmod  777 $WORK_DIR
fi
sudo cat ./samba.config >> /etc/samba/smb.conf
}
app_install()
{
    sudo apt update
    sudo apt install cmake make git samba vim  pkg-config
}
#app_install
#samba_config
vim_basic_config
#echo $WORK_DIR
#work_space_path= $(cat ./samba.config | grep "path" | sed -eq 's/path = //' | sed -eq 's/ //g')
#echo $work_space_path
#sudo cat ./samba.config >> /etc/samba/smb.conf
#sudo smbpasswd -a yayi
#sudo /etc/init.d/samba restart