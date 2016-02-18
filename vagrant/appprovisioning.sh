#For webserver1 host application requirements
yum install -y epel-release
yum install -y python-pip
pip install --upgrade pip
pip install flask pymongo
service iptables stop
chkconfig iptables off
