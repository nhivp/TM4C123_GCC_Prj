#
# Created by Nhi Pham @ 05-2018
#

PROJECTS += blinky_prj

all: $(PROJECTS)

$(PROJECTS):
	make -C $@

clean:
	@for i in ${PROJECTS};      \
	    do                      \
	       make -C $${i} clean; \
	    done

.PHONY: all clean $(PROJECTS)