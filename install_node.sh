mkdir ~/local
echo 'export PATH=$HOME/Development/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc

cd ~/Development
git clone git://github.com/joyent/node.git
cd node
./configure --prefix=/home/vagrant/local
make install

cd ~/Development
git clone git://github.com/isaacs/npm.git
cd npm
make install
