#!/bin/bash
# use clearmf.sh PASS USER

# In DNS server
# List with
# tcpdump -v -n port 53 -i eth1 | grep -i nxdomain | cut -f5-8 -d "." | cut -f3 -d " " > /opt/remove_ubnt_mf/iplist2.txt
# cat /opt/remove_ubnt_mf/iplist2.txt | sort -n | uniq > /opt/remove_ubnt_mf/iplist.txt

_input=/opt/remove_ubnt_mf/iplist.txt
pass=$1
user=$2

for ip in `grep -v ^# $_input | awk '{print $1}'`; do
        echo "Checking $ip..."
        sshpass -p $pass ssh -o StrictHostKeyChecking=no $user@$ip "wget -qO- htt$
done
