echo "Configuring and building MoveSenseLib..."

mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local .. 
make
sudo make install

