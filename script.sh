# Set up sudoers

apt-get install sudo apt
adduser ethan sudo

# Change repos to use Sid

sed -i 's/buster/sid/g' /etc/apt-get/sources.list
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade

# Install basic terminal programs

apt-get -y install git
apt-get -y install python-pip
apt-get -y install curl
apt-get -y install wget
apt-get -y install jq
apt-get -y install htop
apt-get -y install elinks
apt-get -y install nudoku
apt-get -y install rxvt-unicode
apt-get -y install nmap
apt-get -y install fish
apt-get -y install neofetch

# Install Kaaedit

apt-get -y install python3-dev
apt-get -y install libnculibncursesw5
apt-get -y install libncurses5-dev
apt-get -y install libncursesw5-dev
apt-get -y install python3-pip
pip3 install kaaedit


# Install desktop enviornment

apt-get -y install openbox
apt-get -y install obconf
apt-get -y install obmenu
apt-get -y install tint2
apt-get -y install conky
apt-get -y install feh
apt-get -y install volti
apt-get -y install network-manager-gnome
apt-get -y install xcompmgr


# Install programs outside of apt-get

pip install tldr.py
pip install rtv
curl -L https://get.oh-my.fish | fish
apt-get-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt-get/sources.list.d/spotify.list
apt-get -y update
apt-get -y install spotify-client

# Configure fish/omf

chsh -s /usr/local/bin/fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells

omf install will
omf theme will

# Install omf plugins

fish " \
    omf install apt \
    omf install wttr \
    omf install bang-bang \
    omf install cd \
    omf install errno \
    omf install lucky \
"

# Install chrome

mkdir ~/Downloads
cd ~/Downloads
wget -O https://download1.operacdn.com/pub/opera/desktop/52.0.2871.30/linux/opera-stable_52.0.2871.30_amd64.deb opera.deb
dpkg -i opera.deb
apt-get install -f

# Download wallpaper

cd ~
mkdir Pictures
cd Pictures
wget https://wallpaper.wiki/wp-content/uploads/2017/05/Pictures-download-abstract-minimalist-wallpaper-HD.jpg wallpaper.jpg

# Download openbox themes

git clone https://github.com/addy-dclxvi/Openbox-Theme-Collections ~/.themes

# Set up autostart

cd ~/.config/tint2/
wget -O https://raw.githubusercontent.com/addy-dclxvi/Tint2-Theme-Collections/master/triste/triste-orange.tint2rc tint2rc
