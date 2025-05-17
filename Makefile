CXX = g++
CC = gcc

CXXFLAGS = -Wall -O3 -o
CFLAGS = -Wall -pedantic -O3 -o

all: chunk

chunk: 
	$(CXX) $(CFLAGS) build/chunk src/chunk.cpp

clean:
	rm -f chunk