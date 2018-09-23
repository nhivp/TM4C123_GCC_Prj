# README-decoding-startup-code.md

## Overview

The start-up code contains the minimal set of code required to __configure a vector table__, __initialize memory__, __copy the boot loader from flash to SRAM__, and execute from SRAM.

Accompanying the startup code are is a linker script that used to place the vector table, code segment, data segment initializers, and data segments in the approriate locations memory.

## Organization of the Startup code

There are 5 parts of the startup code:

* Vector table
* Reset handler code
* Other exception handler code

### Vector table

The vector table must be placed at begin of _.text_ section (address 0x00000000 for TM4C123G MCU). And this value is specified in the linker script. For instance,

```
    .text :
    {
        _text = .;
        KEEP(*(.isr_vector)) // <<< Here! Begin of .text section will keep vector table >>>
        *(.text*)
        *(.rodata*)
        _etext = .;
    } > FLASH
```

The vector table contains:

* Initial value of the Stack Pointer
* Starting address of the reset handler i.e. the code which will be executed on reset (ResetHandler for TM4C123G MCU)
* Starting addresses of all other exceptions and interrupts including the NMI handler, Hard fault handler and so on.

The following is vector table in ARM Cortex-M4:

![Vector table in ARM Cortex-M4 Processor](https://raw.githubusercontent.com/nhivp/TM4C123_GCC_Prj/docs/imgs/vectortable-generic.png "Vector table in ARM Cortex-M4 Processor")

Definition of vector table:

```c
__attribute__ ((section(".isr_vector")))
void (* const g_pfnVectors[])(void) =
{
    /* The initial stack pointer */
    /* Processor Exceptions */
    /* ISRs */
}
```

### Interrupt Service Routines (ISRs)

And TM4C123G has defined some ISRs (Interrupt Serverice Routines) as follows:

![ISR definition in TM4C123G](https://raw.githubusercontent.com/nhivp/TM4C123_GCC_Prj/docs/imgs/vectortable-tivac.png "ISR definition in TM4C123G")

#### Reset Handler

Reset is invoked on power up or a warm reset. The reset handler will perform some tasks:

* Copying the initialized variables from ROM to RAM
* Setting all bytes from the .bss segment (it contains global and static variables without initial values) to zero.
* Calling main()

#### NMI Interrupt Handler

A non-maskable Interrupt (NMI) can be signaled using the NMI signal or triggered by software using the Interrupt Control and State (INTCTRL) register. This exception has the highest priority other than reset.

#### Fault Handler

A hard fault is an exception that occurs because of an error during exception processing, or because an exception cannot be managed by any other exception mechanism.

#### Default Interrupt Handler

This handler is used to handle some unexpected interrupt or unregister interrupt. This simply enters an infinite loop, preserving the system state for examination by a debugger.

## Reference

* http://www.ti.com/lit/ug/spmu301d/spmu301d.pdf
* https://www.youtube.com/watch?v=uFBNf7F3l60&t=1s
* https://community.arm.com/processors/b/blog/posts/decoding-the-startup-file-for-arm-cortex-m4
* https://community.arm.com/processors/b/blog/posts/condition-codes-3-conditional-execution-in-thumb-2
* http://fastbitlab.com/arm-cortex-m-processor-reset-sequence/