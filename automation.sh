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



#!/bin/bash

# Update all packages that have available updates.
sudo yum update -y

# Install Python 3 and pip.
sudo yum install -y python3-pip

# Install Ansible.
pip3 install ansible[azure]

# Install Ansible modules and plugins for interacting with Azure.
ansible-galaxy collection install azure.azcollection

# Install required modules for Ansible on Azure
wget https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt

# Install Ansible modules => i think this solves the problem with 'ansible[azure] (azure="2.0.0rcd") error in ansible'
sudo pip3 install -r requirements-azure.txt


apt-get update
sudo apt-get update
sudo apt update
sudo apt list --upgradable
sudo apt install software-properties-common
sudo apt install git
#sudo apt-add-repository --yes --update ppa:ansible/ansible
#which python
sudo apt install python3-pip
pip3 --version
sudo apt install python-pip
sudo apt-get install python3-venv

python3 -m venv ansible-controller
source ansible-controller/bin/activate
#try to figure out if this command:
pip install "azure==2.0.0rc5"
#or this one should be run:
pip install ansible[azure] --upgrade --force
#or this one:
sudo pip install "azure==2.0.0rc5"
#
pip install "pywinrm>=0.2.2"
pip install msrestazure
pip install msrest

export AZURE_SUBSCRIPTION_ID=45d75553-0f88-4efd-b859-050ec7ab4fe7
export AZURE_CLIENT_ID=c2acf85a-f417-499f-9926-17823d127d8c
export AZURE_SECRET=pV_mFMamitKCrF__RmWxZ1Aqz.X4SbfGej
export AZURE_TENANT=405baca0-0b2e-4d29-89a4-bfa5acb1a117

export AZURE_subscription_id=45d75553-0f88-4efd-b859-050ec7ab4fe7
export AZURE_client_id=c2acf85a-f417-499f-9926-17823d127d8c
export AZURE_secret=pV_mFMamitKCrF__RmWxZ1Aqz.X4SbfGej
export AZURE_tenant=405baca0-0b2e-4d29-89a4-bfa5acb1a117