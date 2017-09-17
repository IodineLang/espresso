#! /bin/bash

git clone https://github.com/IodineLang/Iodine
mono -V
make
sudo make install
sudo make install-ion
ion run
