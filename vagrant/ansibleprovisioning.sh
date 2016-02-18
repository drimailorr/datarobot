#Called from vagrant file to provision ansible server 
#yum update -y
yum install epel-release -y
yum install ansible -y
yum install git -y
git clone https://github.com/drimailorr/datarobot.git ~/git_repo
ansible-playbook ~/git_repo/ansible_repo/site.yml
