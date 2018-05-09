# Build project template for TM4C123 using GCC (Linux)

## First get a GCC cross compiler for ARM.

* Download a latest compiler arm-none-eabi-gcc at [link](https://launchpad.net/gcc-arm-embedded)
* Extract
* Create environmnet by adding the compiler path to the $PATH. Edit your ~/.bashrc file and add new line:
```sh
export PATH=$PATH:$HOME/tools/gcc-arm-none-eabi-4_7-2013q1/bin
```

## Install the lm4flash tool

* Get source code of tool:
```sh
git clone https://github.com/utzig/lm4tools.git
```
* Compile
```sh
cd lm4ftools/lm4flash/
make
```
* And finish
```
sudo cp lm4flash /usr/bin
```

## Compile and flash a demo project

### Introduce about the demo project

*TBD*

### Compile

*TBD*

### Flash

*TBD*

## Debug

*TBD*

## Reference

