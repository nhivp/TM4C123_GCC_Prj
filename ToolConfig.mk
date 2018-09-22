#
# ARM GCC Compiler configuration for make
# Created by Nhi Pham @ 2018
#

# The command for calling the compiler.
CC		= arm-none-eabi-gcc
LD		= arm-none-eabi-ld
AR		= arm-none-eabi-ar
AS		= arm-none-eabi-as
OBJSIZE	= arm-none-eabi-size
OBJDUMP	= arm-none-eabi-objdump
OBJCOPY	= arm-none-eabi-objcopy

# Determine the compiler CPU/FPU options based on the processor variant.
CPU		= -mcpu=cortex-m4
ARCH	=
FPU		= -mfpu=fpv4-sp-d16 -mfloat-abi=softfp

#
# The flags passed to the assembler.
#
AFLAGS		= -mthumb     \
	          ${CPU}      \
	          ${FPU}      \
	          -MD

#
# The flags passed to the compiler.
#
CFLAGS		= -mthumb             \
	          ${CPU}              \
	          ${FPU}              \
	          -Os                 \
	          -ffunction-sections \
	          -fdata-sections     \
	          -MD                 \
	          -std=c99            \
	          -Wall               \
	          -pedantic           \
	          -c                  \
	          -Dgcc
#
# Tell the compiler to include debugging information if the DEBUG environment
# variable is set.
#
CFLAGS	+= -O0 -g

#
# User definition
#
CFLAGS	+= -DPART_TM4C123GH6PM           \
	       -DTARGET_IS_BLIZZARD_RA1      \

#
# The flags passed to the linker.
#
LDFLAGS=--gc-sections

#
# Add the include file paths to AFLAGS and CFLAGS.
#
AFLAGS+=${patsubst %,-I%,${subst :, ,${IPATH}}}
CFLAGS+=${patsubst %,-I%,${subst :, ,${IPATH}}}

export CC LD AR AS OBJCOPY
export CFLAGS AFLAGS LDFLAGS
