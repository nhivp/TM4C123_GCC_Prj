# README.md

## TM4C123GH6PM Microcontroller Overview

### ARM Cortex-M4 Processor

#### Processor Core

* 32-bit ARM Cortex-M4F processor core
* Little Edian - Hardvard Architecture
* [AMBA 3 Bus Architechture](https://anysilicon.com/understanding-amba-bus-architechture-protocols/): Advanced Performance Bus (APB), Advanced High Performance Bus AHB, Advanced System Bus (ASB).
* 18 x 32-bit [core registers](README-coreregister.md)
* 80-MHz operation; 100 [DMIPS](https://en.wikipedia.org/wiki/Dhrystone) performance
* Pipeline
* Thumb-2 mixed 16-/32-bit instruction set
* IEEE754-compliant single-precision Floating-Point Unit (FPU)
* Memory protection unit (MPU) to provide a privileged mode for protected operating system functionality
* [Bit Banding](README-bitbanding.md)
* Fixed memory map
* Non-Maskable Interrupt (NMI)
* Exceptions programmed in C
* No Cache - No MMU

#### System Timer (SysTick)

#### Nested Vectored Interrupt Controller (NVIC)

#### System Control Block (SCB)

#### Memory Protection Unit (MPU)

#### Floating-Point Unit (FPU)

### On-Chip Memory

* 32 KB single-cycle __SRAM__
* 256 KB __Flash__ memory
* 2KB __EEPROM__
* Internal __ROM__ loaded with TivaWare software:
  * Tivaware Peripheral Driver Library
  * TivaWare Boot Loader
  * TivaWare Boot Loader
  * Advanced Encryption Standard (AES) cryptography tables
  * Cyclic Redundancy Check (CRC) error detection functionality

### TM4C123GH6PM Supports

#### Serial Communications Peripherals

#### Controller Area Network (CAN)

#### System Integration

#### Advanced Motion Control

#### Analog

### JTAG and ARM Serial Wire Debug
