# pi_asm
Exploring assembly with RPi 3B+

## System

* Hardware: Raspberry Pi 3B+
* OS: Ubuntu 22.04.4 LTS

## Prerequisite

Install the following packages.

```bash
sudo apt install gcc-arm-linux-gnueabi gdb
```

## Compilation

### Default

Compile the file.
```bash
# Create obj file via assembler
arm-linux-gnueabi-as hello.s -o hello.o
# Create executable file
arm-linux-gnueabi-gcc hello.o -o hello -nostdlib
```
Run the executable.
```bash
./hello
```

### Debug

Compile the file.
```bash
# Create obj file via assembler
arm-linux-gnueabi-as hello.s -g -o hello.o
# Create executable file
arm-linux-gnueabi-gcc hello.o -o hello -nostdlib
```
Run with gdb.
```bash
gdb ./hello
```
Display gdb in `asm` layout.
```bash
(gdb) layout asm
(gdb) break 1    # Breakpoint at line 1
```

# References
## Notes

### Mnemonics

* Could be upper or lower: `add` or `ADD` is okay.
* Use 'S' in the mnemonic to set the flags in the CPSR (Current Program Status Register) register.

| Options \ Instructions | MOV | ADD | SUB | MUL |
| :--: | :--: | :--: | :--: | :--: |
| Immediate | Yes | Yes | Yes | No |
| Register | Yes | Yes | Yes | Yes | 

### Registers

> ARMv7 register length: 32 Bits

* `r0` - `r6`: General purpose registers, could be used as required.
* `r7`: Special register, holds system call number.
* `sp`: Stack pointer, point to the next available location in the stack. Use to store variables like strings, arrays, etc. (Extra places to store values)

## Links

* Tutorial: https://www.youtube.com/watch?v=kKtWsuuJEDs&list=PLn_It163He32Ujm-l_czgEBhbJjOUgFhg
* ARMv7 emulator: https://cpulator.01xz.net/
* Linux system call table: https://www.chromium.org/chromium-os/developer-library/reference/linux-constants/syscalls/ 
