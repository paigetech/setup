# Script for setting up new personalized Linux dev environment

# 0) Update
chmod +x update.sh
./update.sh

# 1) Basics
sudo apt-get install update
sudo apt-get install wget curl vim build-essential htop

# 2) Compilers and runtimes
sudo apt-get install g++
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install openjdk-8-jdk

# 3) Git
cp git-completion.bash ~/git-completion.bash
cp git-prompt.sh ~/git-prompt.sh
git config --global user.name "Federico Menozzi"
git config --global user.email "federicogmenozzi@gmail.com"

# 4) Python and related tools
sudo apt-get install python-pip python-dev -y
sudo pip install joe harvey thefuck howdoi

# 5) Flat icon theme
sudo add-apt-repository ppa:tualatrix/ppa -y
sudo add-apt-repository ppa:noobslab/icons -y
sudo apt-get update
sudo apt-get install ubuntu-tweak ultra-flat-icons
mkdir ~/.themes

# 6) Bash and vim
cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp -r .vim ~/.vim
