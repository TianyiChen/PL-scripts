git clone https://github.com/secure-software-engineering/phasar.git
cd phasar/
sudo ./bootstrap.sh

# https://stackoverflow.com/a/41954177

sudo apt-get install libgtest-dev

cd /usr/src/gtest
sudo cmake CMakeLists.txt
sudo make install

sudo cp /usr/lib/libguestlib.so.0.0.0 /usr/lib/libgtest.so
