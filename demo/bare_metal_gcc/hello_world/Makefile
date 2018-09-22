#
# Created by Nhi Pham @ 2018
#

# include compiler
include ../../../ToolConfig.mk

BUILD_DIR  := build
SRCS       := $(wildcard *.c)
OBJECTS    := $(addprefix build/,$(subst .c,.o, $(SRCS)))
TARGET     := demoApp

all: credir $(BUILD_DIR)/$(TARGET).axf

# Compile
$(BUILD_DIR)/%.o: %.c
	$(CC) $(CFLAGS) -o $(@) -MD -MF $(addprefix build/,$(subst .c,.d,$<)) $(^)

# Linking
$(BUILD_DIR)/$(TARGET).axf: $(OBJECTS)
	@$(LD) $(OBJECTS) -T tm4c123.ld --entry ResetISR $(LDFLAGS) -o $(@) -Map=$(BUILD_DIR)/$(TARGET).map
	@$(OBJCOPY) -O binary ${@} ${@:.axf=.bin}
	@$(OBJDUMP) -Sd -W $(@) > ${BUILD_DIR}/$(TARGET).lss
	@$(OBJSIZE) ${@}

# Load demoApp to device
flash:
	sudo lm4flash $(BUILD_DIR)/$(TARGET).bin

clean:
	rm -rf build

credir:
	mkdir -p build

app_info: $(BUILD_DIR)/${TARGET}.axf
	arm-none-eabi-readelf -a $(^)

.PHONY: all clean flash compiling app_info