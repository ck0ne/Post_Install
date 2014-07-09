# Mon premier script d'install

cd $home

# installation de Filezilla
apt-get install filezilla

# installation de putty
apt-get install putty

# installation de  Dropbox
wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -

# execution du démon drpobox en arrière plan
~/.dropbox-dist/dropboxd &

# installation de Keepass
sudo apt-get install keepass2
