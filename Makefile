LLVMBUILD=../../code/llvmBuild
LLVMBIN=$(LLVMBUILD)/bin
CLANG=$(LLVMBIN)/clang++
CLANG=g++
CXXFLAGS=-I../../../googletest/include -fprofile-arcs -ftest-coverage
LDFLAGS=-L../../code/gtestBuild
LIBS=-lgtest -lgtest_main -lpthread -lgcov

all: test

clean:
	rm -rf *.o
	rm -rf test
	rm -rf *.gcda
	rm -rf *.gcno

canaryTest.o: canaryTest.cpp
	$(CLANG) $(CXXFLAGS) -c canaryTest.cpp

add.o: add.cpp add.h
	$(CLANG) $(CXXFLAGS) -c add.cpp

Car.o: Car.cpp Car.h
	$(CLANG) $(CXXFLAGS) -c Car.cpp

addTest.o: addTest.cpp add.h
	$(CLANG) $(CXXFLAGS) -c addTest.cpp

CarTest.o: CarTest.cpp Car.h
	$(CLANG) $(CXXFLAGS) -c CarTest.cpp

test: canaryTest.o addTest.o add.o CarTest.o Car.o
	$(CLANG) $(LDFLAGS) $^ -o $@ $(LIBS)

