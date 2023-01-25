# This script installs :
    # https://github.com/manilarome/the-glorious-dotfiles/wiki/
    #

sudo apt install libxcb-xfixes0-d ev -y

sudo apt build-dep awesome -y
git clone https://github.com/awesomewm/awesome
cd awesome
make package
cd build
sudo apt install ./*.deb