#Called from vagrant file to provision ansible server 
#yum update -y
yum install epel-release -y
yum install ansible -y
yum install git -y
git clone https://github.com/drimailorr/datarobot.git ~/ansible_repo
#ansible-playbook ~/ansible_repo/site.yml
