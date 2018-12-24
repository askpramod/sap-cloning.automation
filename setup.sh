#!/bin/bash
# Ask user to define resources name
read -p 'Resource Group name: ' rgname
read -e -p 'Resource Group region: ' -i 'centralindia' region 
read -p 'VM name: ' vmname
read -p 'KeyVault name: ' kvname
#read -p 'Storage Account name: ' saname


az group create --name $rgname --location $region && az vm create -n $vmname -g $rgname --image UbuntuLTS --admin-username azureadmin --generate-ssh-keys --custom-data cloud-init.txt
az vm open-port --port 80 --resource-group $rgname --name $vmname
az vm identity assign --name $vmname --resource-group $rgname
az keyvault create --name $kvname --resource-group $rgname --enabled-for-deployment true
az keyvault secret set --vault-name $kvname --name "password" --value "secret"
