CC = g++

SRCS = $(wildcard */*.cpp)

PROGS = $(patsubst %.cpp,%,$(SRCS))

CFLAGS = 

all: $(PROGS)

%: %.cpp
	$(CC) -o $@ $< $(CFLAGS)
test: $(PROGS)
	./$<
clean: 
	rm -f $(PROGS)