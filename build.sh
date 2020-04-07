export CXXFLAGS=-std=c++11
MINC=../minisat/build/install/include
MLIB=../minisat/build/install/lib
MPREFIX=install

make config MINISAT_INCLUDE=-I$MINC
make config MINISAT_LIB="-L$MLIB -lminisat"
make config prefix=$MPREFIX
make install
