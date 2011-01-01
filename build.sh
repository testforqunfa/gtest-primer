rm -rf report
make clean
make
./test
python zcov-bin/zcov-scan output.zcov .
python zcov-bin/zcov-genhtml output.zcov report --root=`pwd`