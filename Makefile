TOPDIR = $(CURDIR)

all: Driver Demo

Driver:
	make -C driver

Demo:
	make -C demo

clean:
	rm -f *.o *.a *.d *.axf

.PHONY: all clean