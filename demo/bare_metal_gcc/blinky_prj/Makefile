#******************************************************************************
#
# Makefile - Rules for building the Project Zero Example.
#
# Copyright (c) 2012 Texas Instruments Incorporated.  All rights reserved.
# Software License Agreement
#
# Texas Instruments (TI) is supplying this software for use solely and
# exclusively on TI's microcontroller products. The software is owned by
# TI and/or its suppliers, and is protected under applicable copyright
# laws. You may not combine this software with "viral" open-source
# software in order to form a larger program.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND WITH ALL FAULTS.
# NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT
# NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. TI SHALL NOT, UNDER ANY
# CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
# DAMAGES, FOR ANY REASON WHATSOEVER.
#
# This is part of revision 9453 of the EK-LM4F120XL Firmware Package.
#
#******************************************************************************

COMPILER=gcc

#
# The base directory for StellarisWare.
#
ROOT=../../../

#
# Include the common make definitions.
#
include ${ROOT}/makedefs.mk
include ${ROOT}/ToolConfig.mk

#
# Where to find header files that do not live in the source directory.
#
IPATH=..
IPATH+=../../../driver/
# IPATH+=../../../driver/driverlib

#
# The default rule, which causes the Project Zero Example to be built.
#
all: blinky.axf

#
# The rule to clean out all the build products.
#
clean:
	@rm -rf *.o *.d *.axf ${wildcard *~}

#
# Rules for building the Project Zero Example.
#
blinky.axf: main.o
blinky.axf: startup_${COMPILER}.o
blinky.axf: ${ROOT}/driver/driverlib/libs/libdriver.a
blinky.axf: blinky.ld
SCATTERgcc_blinky=blinky.ld
ENTRY_blinky=ResetISR
CFLAGSgcc=-DTARGET_IS_BLIZZARD_RA2

#
# Include the automatically generated dependency files.
#
ifneq (${MAKECMDGOALS},clean)
-include ${wildcard *.d} __dummy__
endif
