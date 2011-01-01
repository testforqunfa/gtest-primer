CC=g++
CXXFLAGS=-I../../../googletest/include
LDFLAGS=-L../../code/gtestBuild
LIBS=-lgtest -lgtest_main -lpthread -lgcov

all: test

clean:
	rm -rf *.o
	rm -rf test
	rm -rf *.gcda
	rm -rf *.gcno
	rm -rf *.gcov
	rm -rf *.html
	rm -rf *.css
	rm -rf *.png

canaryTest.o: canaryTest.cpp
	$(CC) $(CXXFLAGS) -c canaryTest.cpp

add.o: add.cpp add.h
	$(CC) $(CXXFLAGS) -fprofile-arcs -ftest-coverage -c add.cpp

Car.o: Car.cpp Car.h
	$(CC) $(CXXFLAGS) -fprofile-arcs -ftest-coverage -c Car.cpp

addTest.o: addTest.cpp add.h
	$(CC) $(CXXFLAGS) -c addTest.cpp

CarTest.o: CarTest.cpp Car.h
	$(CC) $(CXXFLAGS) -c CarTest.cpp

test: canaryTest.o addTest.o add.o CarTest.o Car.o
	$(CC) $(LDFLAGS) $^ -o $@ $(LIBS)

