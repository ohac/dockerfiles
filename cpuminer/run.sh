cd sha1coin-cpuminer
./autogen.sh
./configure CFLAGS="-O2 -msse2"
make
mkdir -p /target
