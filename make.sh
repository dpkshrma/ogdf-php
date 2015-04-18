#!/bin/bash
swig -c++ -php5 ogdf.i &&\
g++ -fPIC -c -I /home/deepak/repos/ogdf/include/ `php-config --includes` *.cpp 2> compile_errors.log &&\
g++ -shared *.o -o ogdf.so -L/home/deepak/repos/ogdf/_release/ -lOGDF -lCOIN 2> link_errors.log &&\
sudo service apache2 restart
