## check storage iptables service and entry in /etc/sysconfig/iptables file

cd ~
git clone https://github.com/ashince/osptraining.git
cp /home/stack/osptraining/instackenv.json .
cp /home/stack/osptraining/storage-environment.yaml /home/stack/templates/storage-environment.yaml
cp /home/stack/osptraining/compute.yaml /home/stack/templates/nic-configs/compute.yaml
cp  /home/stack/osptraining/controller.yaml /home/stack/templates/nic-configs/controller.yaml
cp /home/stack/osptraining/network-environment.yaml /home/stack/templates/network-environment.yaml