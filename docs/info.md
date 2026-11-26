<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a firmware-reprogrammable protocol emulator chip. A small custom processor core executes micro-programs that bit-bang serial protocols (UART, SPI, I2C, and more) on the GPIO pins.

Programs are loaded through the dedicated input pins (`ui_in[7:0]`) after reset. Once loaded, the engine executes instructions that directly read and write the bidirectional GPIO pins (`uio[7:0]`) and output pins (`uo_out[7:0]`) at cycle-level precision, enabling flexible protocol emulation without hardware changes.

## How to test

1. Assert `rst_n` low for at least one clock cycle to reset the core.
2. Load a micro-program via `ui_in[7:0]` using the programming interface.
3. Release reset and observe protocol signals on `uo_out` and `uio` pins.
4. Use a logic analyzer or oscilloscope to verify protocol timing.

Example programs for UART TX, SPI master, and I2C master are provided in the `programs/` directory with corresponding cocotb testbenches.

## External hardware

No external hardware is strictly required for basic testing. For protocol-level verification, connect to a target device or use a logic analyzer on the output pins.
