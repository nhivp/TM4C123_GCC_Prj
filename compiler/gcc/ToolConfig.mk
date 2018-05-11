#
# ARM GCC Compiler configuration for make
# Created by Nhi Pham @ 2018
#

COMPILER ?= arm-none-eabi

# Compiler command
CC		= $(COMPILER)-gcc
LD		= $(COMPILER)-ld
AR		= $(COMPILER)-ar
AS		= $(COMPILER)-as
UTIL	= $(COMPILER)-cp

# Definition of architecture
CPU		=
ARCH	=
FPU		=

# Debug flag
DEBUG_CFLAGS	= -O0 -g
EXTRA_CFLAGS	= -c
C_CONFIG		=
A_CONFIG		=
export CC LD AR AS UTIL
export DEBUG_CFLAGS EXTRA_CFLAGS C_CONFIG A_CONFIG
