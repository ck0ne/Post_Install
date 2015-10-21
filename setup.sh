# Elementary post install script
su

cd $home
mkdir install
cd install

# installation de Filezilla
apt-get install filezilla

# installation de putty
apt-get install putty

# installation de Keepass
apt-get install keepass2

# installation de skype
 echo -n "Installer Skype ?  Y/N"
 read instskype
 if [ $instskype = "y"] || [ $instskype = "Y"]; then   
    mkdir skype
    cd skype
    wget -O skype.deb http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
    sudo dpkg -i skype.deb
    sudo apt-get -f install;rm skype.deb
 fi 

# instalaltion de firefox
apt-get install firefox

# installatin de VLC
apt-get install vlc

# installation de Brightness indicator
#   ajout du PPA
sudo add-apt-repository ppa:indicator-brightness/ppa
#   installation
sudo apt-get update && sudo apt-get install indicator-brightness

# Customization
# enable double-click on files 
gsettings set org.pantheon.files.preferences single-click false




