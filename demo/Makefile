#
# Created by Nhi Pham @ 05-2018
#

PROJECTS =         \
	bare_metal_gcc \
	freeRTOS_gcc

all: $(PROJECTS)

$(PROJECTS):
	make -C $@

clean:
	@for i in ${PROJECTS};      \
	    do                      \
	       make -C $${i} clean; \
	    done

.PHONY: all clean $(PROJECTS)