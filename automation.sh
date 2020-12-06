#!/bin/bash

export ID_RSA_NAME="id_automation"
export ID_RSA_PASS="Qwerty01."

KEYPATH="$PWD/automation/.ssh"
mkdir -p $KEYPATH

SSHKEYGEN="yes | ssh-keygen -t rsa -f $KEYPATH/$ID_RSA_NAME -q -P \"$ID_RSA_PASS\""
HOST_IPS=("188.166.24.188" "174.138.8.187")
for HOST_IP in "${HOST_IPS[@]}"
do
    echo $HOST_IP
    #eval "ssh-copy-id -i $KEYPATH/$ID_RSA_NAME.pub  ansible@$HOST_IP"
done

echo $SSHKEYGEN

eval $SSHKEYGEN