ssh root@undercloud.example.com
cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0.100
DEVICE=eth0.100
BOOTPROTO=none
ONBOOT=yes
IPADDR=10.1.1.1
PREFIX=24
NETWORK=10.1.1.0
VLAN=yes
EOF
cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0.201
DEVICE=eth0.201
BOOTPROTO=none
ONBOOT=yes
IPADDR=172.16.0.1
PREFIX=24
NETWORK=172.16.0.0
VLAN=yes
EOF
cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0.202
DEVICE=eth0.202
BOOTPROTO=none
ONBOOT=yes
IPADDR=172.17.0.1
PREFIX=24
NETWORK=172.17.0.0
VLAN=yes
EOF
cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0.203
DEVICE=eth0.203
BOOTPROTO=none
ONBOOT=yes
IPADDR=172.18.0.1
PREFIX=24
NETWORK=172.18.0.0
VLAN=yes
EOF
cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0.204
DEVICE=eth0.204
BOOTPROTO=none
ONBOOT=yes
IPADDR=172.19.0.1
PREFIX=24
NETWORK=172.19.0.0
VLAN=yes
EOF
cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0.205
DEVICE=eth0.205
BOOTPROTO=none
ONBOOT=yes
IPADDR=172.20.0.1
PREFIX=24
NETWORK=172.20.0.0
VLAN=yes
EOF
systemctl restart network.service
ip addr
hostname; hostname -f
ping -c 3 redhat.com
useradd stack
passwd stack
echo 'stack ALL=(root) NOPASSWD:ALL' | tee -a /etc/sudoers.d/stack
chmod 0440 /etc/sudoers.d/stack
su - stack
mkdir ~/images
mkdir ~/templates
sudo sed -i "/localhost4.localdomain4/ s/$/ `hostname -f` `hostname -s`/" /etc/hosts
cat /etc/hosts
sudo systemctl disable firewalld
sudo systemctl stop firewalld
sudo yum makecache fast
sudo yum repolist
sudo yum update -y
sudo reboot
 
