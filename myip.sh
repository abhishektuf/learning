#!/bin/sh
# Author : Abhishek Kumar
# No Copyright
# Script follows here:

#Getting IP from icanhazip.com
ip1=`curl -s -4 icanhazip.com`
#Getting IP from Cisco opendns
ip2=`host myip.opendns.com resolver1.opendns.com | grep "myip.opendns.com has" | awk '{print $4}'`
#Getting IP from Google DNS
ip3=`dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}'`
#Comparing the IPs from diff providers
if [[ $ip1 == $ip2 ]]; then
  if [[ $ip2 == $ip3 ]]; then
    # Output the IP on screen
    echo "Your IPv4 address is :" $ip3
    whois $ip3 |grep descr |uniq
  fi
fi
ipv6=`curl -s -6 icanhazip.com`
if [[ $ipv6 == $ip1 ]]; then
  echo "Date                 :" `date`
else
  echo "Your IPv6 address is :" $ipv6
  #Trying to find the owner/provider of the IP
  whois $ipv6 |grep descr |uniq
  echo "Date                 :" `date`
fi
