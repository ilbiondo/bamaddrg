CXX ?= g++
CXXFLAGS ?= -O3 -I$(BAMTOOLS_ROOT)/include/bamtools  -L$(BAMTOOLS_ROOT)/lib64

all: bamaddrg

# statically compiles bamaddrg against bamtools static lib
bamaddrg: bamaddrg.cpp
	$(CXX) $(CXXFLAGS) bamaddrg.cpp -o bamaddrg -lbamtools -lz

clean:
	rm -f bamaddrg  *.o

.PHONY: clean
