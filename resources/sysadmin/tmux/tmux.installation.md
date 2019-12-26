## Building from source
### Let's first install dependencies for building on our machine:
```
sudo apt-get -y remove tmux
sudo apt-get -y install wget tar libevent-dev libncurses-dev
```
#### then let's download source and unpack it:
```
VERSION=3.0a
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz
```
#### Now let's build and install it and cleanit up:
```
VERSION=3.0.a
cd tmux-${VERSION}
./configure
make
sudo make install
cd -
sudo rm -rf /usr/local/src/tmux-\*
sudo mv tmux-${VERSION} /usr/local/src
```