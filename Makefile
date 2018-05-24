#
# Created by Nhi Pham @ 05/2018
#

TOPDIR = $(CURDIR)
export $(TOPDIR)

DIRS = driver demo

all: $(DIRS)

$(DIRS):
	make -C $@

clean:
	@for i in ${DIRS};          \
	    do                      \
	       make -C $${i} clean; \
	    done

.PHONY: all clean ${DIRS}