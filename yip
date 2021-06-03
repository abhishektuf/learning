echo "icanhazip"
#echo "^---ipv4"
#curl -4 icanhazip.com
#echo "^---ipv6"
curl -6 icanhazip.com
echo "~~~~~~~~~~~~~~~"
echo "cisco"
host myip.opendns.com resolver1.opendns.com | grep "myip.opendns.com has" | awk '{print $4}'
echo "~~~~~~~~~~~~~~~"
echo "google"
dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}'
