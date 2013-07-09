INCDIR = -I.
DBG    = -g
OPT    = -O3
CPP    = g++
CFLAGS = $(DBG) $(OPT) $(INCDIR)
LINK   = -lm 
MATLABDIR ?= /usr/local/matlab

.cpp.o:
	$(CPP) $(CFLAGS) -c $< -o $@

all: segment pfsegment

segment: segment.cpp segment-image.h segment-graph.h disjoint-set.h
	$(CPP) $(CFLAGS) -o segment segment.cpp $(LINK)

pfsegment: pfsegment.cpp segment-image.h segment-graph.h disjoint-set.h
	$(MATLABDIR)/bin/mex $(INCDIR) pfsegment.cpp $(LINK)

clean:
	rm -f segment *.o pfsegment.mex*

clean-all: clean
	rm -f *~ 



