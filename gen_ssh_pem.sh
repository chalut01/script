#!/bin/bash
    #Based on https://linuxaws.wordpress.com/2017/07/17/how-to-generate-pem-file-to-ssh-the-server-without-password-in-linux/
    # if SSQ edir file /etc/ssh/sshd_config 
    # line number 22 : AllowUsers ewimaint ansible root
    # line number 48 : PubkeyAuthentication yes
    
    user="id_rsa"
    ssh-keygen
    mv $user $user.pem
    sudo chmod    700   ~/.ssh
    touch  ~/.ssh/authorized_keys
    sudo chmod   600  ~/.ssh/authorized_keys
    cat $user.pub >> ~/.ssh/authorized_keys
    echo "Copy the $user.pem to your computer."
