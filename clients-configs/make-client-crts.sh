cd /home/vpn/easy-rsa-3.0.5/easyrsa3/
./easyrsa gen-req ${1} nopass
cp pki/private/${1}.key /home/pun/clients-configs/keys/
./easyrsa import-req pki/reqs/${1}.req ${1}
./easyrsa sign-req client ${1}
cp pki/issued/${1}.crt /home/pun/clients-configs/keys/





