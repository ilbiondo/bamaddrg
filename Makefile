CXX ?= g++
CXXFLAGS ?= -O3 -I$(BAMTOOLS_ROOT)/include/bamtools  -L$(BAMTOOLS_ROOT)/lib64
PREFIX ?= .

all: bamaddrg

# statically compiles bamaddrg against bamtools static lib
bamaddrg: bamaddrg.cpp
	$(CXX) $(CXXFLAGS) bamaddrg.cpp -o bamaddrg -lbamtools -lz


install: bamaddrg
	install -d $(PREFIX)/bin/
	install -m 755 bamaddrg $(PREFIX)/bin/

clean:
	rm -f bamaddrg  *.o

.PHONY: clean
