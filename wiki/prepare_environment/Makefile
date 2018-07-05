#
# Created by Nhi Pham @ 2018
#

include ../../ToolConfig.mk

src := $(wildcard *.c)
obj := $(subst .c,.o, $(src))

all: demoApp.axf

%.o: %.c
	@echo ${CC} ${CFLAGS} -o ${@} ${^}
	${CC} ${CFLAGS} -o ${@} ${^}

# Linking
demoApp.axf: ${obj}
	@echo ${LD} ${obj} -T tm4c123.ld --entry ResetISR ${LDFLAGS} -o ${@}
	${LD} ${obj} -T tm4c123.ld --entry ResetISR ${LDFLAGS} -o ${@}

clean:
	rm -f *.o *.d *.axf

.PHONY: all clean