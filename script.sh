# Set up sudoers

apt-get install sudo apt
adduser ethan sudo

# Change repos to use Sid

sed -i 's/buster/sid/g' /etc/apt/sources.list
apt -y update
apt -y upgrade
apt -y dist-upgrade

# Install basic terminal programs

apt -y install git
apt -y install python-pip
apt -y install curl
apt -y install wget
apt -y install jq
apt -y install htop
apt -y install elinks
apt -y install nudoku
apt -y install rxvt-unicode
apt -y install nmap
apt -y install fish

# Install Kaaedit

apt -y install python3-dev
apt -y install libnculibncursesw5
apt -y install libncurses5-dev
apt -y install libncursesw5-dev
apt -y install python3-pip
pip3 install kaaedit


# Install other programs with apt

apt -y install feh
apt -y install qtile
apt -y install chromium-common

# Install programs outside of apt

pip install tldr.py
pip install rtv
curl -L https://get.oh-my.fish | fish
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt -y update
apt -y install spotify-client

# Configure fish/omf

chsh -s /usr/local/bin/fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells

omf install will
omf theme will

# Install omf plugins

omf install apt
omf install wttr
omf install bang-bang
omf install cd
omf install errno
omf install lucky
