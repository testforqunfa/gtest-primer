LLVMBUILD=../../code/llvmBuild
LLVMBIN=$(LLVMBUILD)/bin
CLANG=$(LLVMBIN)/clang++
CXXFLAGS=-I../../../googletest/include
LDFLAGS=-L../../code/gtestBuild
LIBS=-lgtest -lgtest_main -lpthread

all: test

clean:
	rm -rf *.o
	rm -rf test

canary.o: canary.cpp
	$(CLANG) $(CXXFLAGS) -c canary.cpp

add.o: add.cpp add.h
	$(CLANG) $(CXXFLAGS) -c add.cpp

Car.o: Car.cpp Car.h
	$(CLANG) $(CXXFLAGS) -c Car.cpp

addTest.o: addTest.cpp add.h
	$(CLANG) $(CXXFLAGS) -c addTest.cpp

CarTest.o: CarTest.cpp Car.h
	$(CLANG) $(CXXFLAGS) -c CarTest.cpp

test: canary.o addTest.o add.o CarTest.o Car.o
	$(CLANG) $(LDFLAGS) $^ -o $@ $(LIBS)

