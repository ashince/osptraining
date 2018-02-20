source /home/stack/overcloudrc
openstack network list --external | grep [0-9] | cut -d'|' -f2 > external.networks
COUNT="$(wc -l external.networks | cut -d' ' -f1)"
echo $COUNT
for i in `seq 1 $COUNT`; do var1=$(openstack subnet list | grep $(sed -n $[i]p external.networks)|cut -d'|' -f5) && echo $var1 >> ipsubnet; done
cat ipsubnet | cut -d'/' -f1 >> hello.txt
cat hello.txt
echo "---
fpips:" >> vars.yml
COUNT2="$(wc -l ipsubnet | cut -d' ' -f1)"
for i in `seq 1 $COUNT2`; do var1=$( sed -n $[i]p ipsubnet) && echo " - $var1" >> vars.yml; done
cat vars.yml
