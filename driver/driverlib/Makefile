#******************************************************************************
#
# Makefile - Rules for building the driver library.
#
# Copyright (c) 2005-2017 Texas Instruments Incorporated.  All rights reserved.
# Software License Agreement
#
#   Redistribution and use in source and binary forms, with or without
#   modification, are permitted provided that the following conditions
#   are met:
#
#   Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
#
#   Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in the
#   documentation and/or other materials provided with the
#   distribution.
#
#   Neither the name of Texas Instruments Incorporated nor the names of
#   its contributors may be used to endorse or promote products derived
#   from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# This is part of revision 2.1.4.178 of the Tiva Peripheral Driver Library.
#
#******************************************************************************

#
# The base directory for TivaWare.
#
ROOT=../..
LIBS=libs

#
# Include the common make definitions.
#
include ${ROOT}/makedefs.mk
include ${ROOT}/ToolConfig.mk

#
# Where to find header files that do not live in the source directory.
#
IPATH=..
IPATH+=../inc
IPATH+=../common

#
# The default rule, which causes the driver library to be built.
#
all: ${LIBS}
all: ${LIBS}/libdriver.a

#
# The rule to clean out all the build products.
#
clean:
	@rm -rf ${LIBS} ${wildcard *~}

#
# The rule to create the target directory.
#
${LIBS}:
	@mkdir -p ${LIBS}

#
# Rules for building the driver library.
#
${LIBS}/libdriver.a: ${LIBS}/adc.o
${LIBS}/libdriver.a: ${LIBS}/aes.o
${LIBS}/libdriver.a: ${LIBS}/can.o
${LIBS}/libdriver.a: ${LIBS}/comp.o
${LIBS}/libdriver.a: ${LIBS}/cpu.o
${LIBS}/libdriver.a: ${LIBS}/crc.o
${LIBS}/libdriver.a: ${LIBS}/des.o
${LIBS}/libdriver.a: ${LIBS}/eeprom.o
${LIBS}/libdriver.a: ${LIBS}/emac.o
${LIBS}/libdriver.a: ${LIBS}/epi.o
${LIBS}/libdriver.a: ${LIBS}/flash.o
${LIBS}/libdriver.a: ${LIBS}/fpu.o
${LIBS}/libdriver.a: ${LIBS}/gpio.o
${LIBS}/libdriver.a: ${LIBS}/hibernate.o
${LIBS}/libdriver.a: ${LIBS}/i2c.o
${LIBS}/libdriver.a: ${LIBS}/interrupt.o
${LIBS}/libdriver.a: ${LIBS}/lcd.o
${LIBS}/libdriver.a: ${LIBS}/mpu.o
${LIBS}/libdriver.a: ${LIBS}/onewire.o
${LIBS}/libdriver.a: ${LIBS}/pwm.o
${LIBS}/libdriver.a: ${LIBS}/qei.o
${LIBS}/libdriver.a: ${LIBS}/shamd5.o
${LIBS}/libdriver.a: ${LIBS}/ssi.o
${LIBS}/libdriver.a: ${LIBS}/sw_crc.o
${LIBS}/libdriver.a: ${LIBS}/sysctl.o
${LIBS}/libdriver.a: ${LIBS}/sysexc.o
${LIBS}/libdriver.a: ${LIBS}/systick.o
${LIBS}/libdriver.a: ${LIBS}/timer.o
${LIBS}/libdriver.a: ${LIBS}/uart.o
${LIBS}/libdriver.a: ${LIBS}/udma.o
${LIBS}/libdriver.a: ${LIBS}/usb.o
${LIBS}/libdriver.a: ${LIBS}/watchdog.o

#
# Include the automatically generated dependency files.
#
ifneq (${MAKECMDGOALS},clean)
-include ${wildcard ${LIBS}/*.d} __dummy__
endif
