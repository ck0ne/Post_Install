# Mon premier script d'install

cd $home
mkdir install
cd install

# installation de Filezilla
apt-get install filezilla

# installation de putty
apt-get install putty

# installation de  Dropbox
  mkdir dropbox
  cd dropbox
  wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -
  # execution du démon dropbox en arrière plan
  ~/.dropbox-dist/dropboxd &
  cd ../..
# installation de Keepass
  sudo apt-get install keepass2

# desactiver les pus dans le dash
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"

# installation de skype
  mkdir skype
  cd skype
  wget -O skype.deb http://download.skype.com/linux/skype-ubuntu-precise_4.2.0.13-1_i386.deb
  sudo dpkg -i skype.deb
  sudo apt-get -f install;rm skype.deb
  


