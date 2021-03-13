wget https://luarocks.org/releases/luarocks-3.5.0.tar.gz
tar zxpf luarocks-3.5.0.tar.gz
cd luarocks-3.5.0
./configure && make && sudo make install
sudo luarocks install luasocket
sudo rm -rf ./luarocks-3.5.0/
rm -f ./luarocks-3.5.0.tar.gz
