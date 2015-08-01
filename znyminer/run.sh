cd cpuminer
./autogen.sh
./configure CFLAGS="-O3 -march=native -funroll-loops -fomit-frame-pointer"
make
mkdir -p /target
