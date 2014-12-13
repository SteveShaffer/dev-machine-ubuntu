echo "Adding repositories..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'


sudo apt-get update

echo "Installing Java JDK..."
sudo apt-get install -y openjdk-7-jdk

echo "Installing git..."
sudo apt-get install -y git

echo "Installing Desktop Environment..."
sudo apt-get install -y ubuntu-desktop

echo "Creating Development Directory..."
mkdir /home/vagrant/Development

echo "Installing Google App Engine SDK..."
echo "  Removing Previous Install..."
rm -r /home/vagrant/Development/google_appengine/*
rmdir /home/vagrant/Development/google_appengine
echo "  Downloading..."
wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip -qO google_appengine.zip
echo "  Installing..."
unzip -q google_appengine.zip
mv google_appengine /home/vagrant/Development/google_appengine
echo "  Cleaning Up..."
rm google_appengine.zip

echo "Installing PyCharm..."
echo "  Removing Previous Install..."
rm -r /home/vagrant/Development/pycharm/*
rmdir /home/vagrant/Development/pycharm
echo "  Downloading..."
wget http://download-cf.jetbrains.com/python/pycharm-professional-4.0.2.tar.gz -qO pycharm.tar.gz
echo "  Installing..."
tar -xf pycharm.tar.gz
mv pycharm-4.0.2 /home/vagrant/Development/pycharm
echo "  Cleaning Up..."
rm pycharm.tar.gz

echo "Giving Development folder over to vagrant..."
chown -R vagrant /home/vagrant/Development

echo "Installing Chrome..."
sudo apt-get install -y google-chrome-unstable

echo "All Done.  Enjoy!"
