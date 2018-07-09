#
# Created by Nhi Pham @ 2018
#

# include compiler
include ../../../ToolConfig.mk

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
	@${OBJCOPY} -O binary ${@} ${@:.axf=.bin}

# Load demoApp to device
flash:
	sudo lm4flash demoApp.bin

clean:
	rm -f *.o *.d *.axf *.bin

app_info: demoApp.axf
	arm-none-eabi-readelf -a demoApp.axf

.PHONY: all clean flash compiling app_info