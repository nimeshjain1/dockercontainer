#!/bin/bash


echo $SERVER_NAME
echo $RUNLIST

node_name=$(cat /etc/hostname)
echo $node_name
chef-client --runlist ${RUNLIST} -l info  -S ${SERVER_NAME}  -K /etc/cheftest/validation.pem -N $node_name 1>err 2>&1
#chef-client -runlist $RUNLIST -l info  -S $SERVER_NAME  -K /etc/cheftest/validation.pem -N {#node['hostname']} 1>err 2>&1

tail -f err

