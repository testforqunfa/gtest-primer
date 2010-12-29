LLVMBUILD=../../code/llvmBuild
LLVMBIN=$(LLVMBUILD)/bin
CLANG=$(LLVMBIN)/clang++
CXXFLAGS=-I../../../googletest/include
LDFLAGS=-L../../code/gtestBuild
LIBS=-lgtest -lgtest_main -lpthread

all: canary

canary.o: canary.cpp
	$(CLANG) $(CXXFLAGS) -c canary.cpp

canary: canary.o
	$(CLANG) $(LDFLAGS) $^ -o $@ $(LIBS)