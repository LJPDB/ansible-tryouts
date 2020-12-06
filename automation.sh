#!/bin/bash

export ID_RSA_NAME="id_automation"
export ID_RSA_PASS="Qwerty01."

SSHKEYGEN="yes | ssh-keygen -t rsa -f ~/.ssh/$ID_RSA_NAME -q -P \"$ID_RSA_PASS\""



echo $SSHKEYGEN

eval $SSHKEYGEN