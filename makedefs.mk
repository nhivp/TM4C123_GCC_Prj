#******************************************************************************
#
# makedefs - Definitions common to all makefiles.
#
#******************************************************************************

#
# Include the tool configuration.
#
# include ToolConfig.mk

#
# The rule for building the object file from each C source file.
#
${LIBS}/%.o: %.c
	echo ${CC} ${CFLAGS} -o ${@} ${<}
	@${CC} ${CFLAGS} -o ${@} ${<}

#
# The rule for building the object file from each assembly source file.
#
${LIBS}/%.o: %.S
	echo ${CC} ${AFLAGS} -o ${@} -c ${<}
	@${CC} ${AFLAGS} -o ${@} -c ${<}

#
# The rule for creating an object library.
#
${LIBS}/%.a:
	echo ${AR} -cr ${@} ${^}
	@${AR} -cr ${@} ${^}

#
# The rule for linking the application.
#
%.axf:
	ldname="${SCATTERgcc_${notdir ${@:.axf=}}}"
	echo ${LD} -T blinky.ld                            \
		--entry ${ENTRY_${notdir ${@:.axf=}}}           \
		${LDFLAGS} -o ${@} $(filter %.o %.a, ${^})
	${LD} -T blinky.ld                                 \
		  --entry ${ENTRY_${notdir ${@:.axf=}}}         \
		  ${LDFLAGS} -o ${@} $(filter %.o %.a, ${^})
		#   '${LIBC}' '${LIBGCC}' '${LIBM}'
	@${OBJCOPY} -O binary ${@} ${@:.axf=.bin}
