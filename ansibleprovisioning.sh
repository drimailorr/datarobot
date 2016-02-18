#Called from vagrant file to provision ansible server
#yum update -y
yum install epel-release -y
yum install ansible -y
yum install git -y