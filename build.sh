make clean
make
./test --gtest_output=xml:coverage.junit.xml
chmod a+x gcovr
./gcovr -x -r . -e "(.+)Test\.cpp" > coverage.xml