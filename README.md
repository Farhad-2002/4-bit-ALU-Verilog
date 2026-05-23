# 4-Bit ALU using Verilog HDL

## Overview

This project implements a 4-Bit Arithmetic Logic Unit (ALU) using Verilog HDL.

The ALU performs arithmetic and logical operations on two 4-bit inputs based on a 3-bit opcode.

---

## Features

- 4-bit combinational ALU
- Arithmetic operations
- Logical operations
- Carry flag
- Zero flag
- Verilog testbench included
- Waveform generation support

---

## Supported Operations

| Opcode | Operation | Description |
|--------|-----------|-------------|
| 000    | A + B     | Addition    |
| 001    | A - B     | Subtraction |
| 010    | A & B     | Bitwise AND |
| 011    | A \| B    | Bitwise OR  |
| 100    | A ^ B     | Bitwise XOR |
| 101    | ~A        | Bitwise NOT |

---

## Inputs

- `A [3:0]`
- `B [3:0]`
- `Opcode [2:0]`

---

## Outputs

- `Output [3:0]`
- `Carry_out`
- `zero`

---

## Files

|      File      |       Description        |
|----------------|--------------------------|
|   `design.sv`  |     ALU design module    |
| `testbench.sv` | Testbench for simulation |

---

## Simulation

Compatible with:

- Icarus Verilog
- EDA Playground
- ModelSim
- Vivado

---

## Example Testbench Output

```text
 A     B     Opcode   Output   Carry_out   zero
0001  1111    000      0000        1        1
0001  1110    000      1111        0        0
```

---

## Concepts Used

- Combinational Logic
- Case Statements
- Bitwise Operations
- Arithmetic Operations
- Carry Handling
- Zero Flag Detection

---

## Author

Farhad-2002

---
