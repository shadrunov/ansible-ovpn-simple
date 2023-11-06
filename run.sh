# amazon
https://rockylinux.org/cloud-images/

# python
python3 -m venv .venv
source .venv/bin/activate.fish
python3 -m pip install --upgrade -r requirements.txt

# sudo without password
sudo -i
echo "%wheel        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
useradd -m alex
usermod -aG wheel alex
su - alex
mkdir .ssh
chmod 700 .ssh/
cd .ssh
vi authorized_keys
chmod 644 authorized_keys

# ansible
ansible-playbook -i inventories/prod/hosts.yml openvpn.yml -vv --forks 3