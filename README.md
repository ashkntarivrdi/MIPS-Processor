# Simplified MIPS Processor Project

This project is a simplified version of a MIPS processor, designed and implemented as part of an architecture course. The MIPS processor supports a subset of MIPS instructions and features a complete datapath and control unit. It can execute basic programs and perform simple arithmetic, logic, memory, and branching operations.

## Features

- **Datapath:** The processor includes all major components like the ALU, registers, and memory.
- **Control Unit:** Generates the necessary control signals to manage the processor’s operations.
- **Instruction Set:** The processor supports three types of instructions:
  - **Register Instructions:** `ADD`, `SUB`, `AND`, `OR`, `MULT`, `XOR`, and `JR`.
  - **Immediate Instructions:** `ADDi`, `SUBi`, `ANDi`, `ORi`, `SB`, `LB`, `BEQ`, and `BNQ`.
  - **Jump Instructions:** `J` and `JAL`.

## Instruction Formats

The processor uses three instruction formats:

### 1.Register Instructions

| Field   | opcode | rs    | rt    | rd    | funct |
|---------|--------|-------|-------|-------|-------|
| Length  | 4 bits | 3 bits| 3 bits| 3 bits| 3 bits|



#### Operation Mnemonics:

| Mnemonic | Operation          | funct |
|----------|--------------------|-------|
| ADD      | rd ← rs + rt        | 000   |
| SUB      | rd ← rs - rt        | 001   |
| AND      | rd ← rs & rt        | 010   |
| OR       | rd ← rs | rt        | 011   |
| MULT     | rd ← rs * rt        | 100   |
| XOR      | rd ← rs ^ rt        | 101   |
| JR       | PC ← rs             | 111   |

---
### 2.Immediate Instructions


| Field   | opcode | rs    | rt    | immediate |
|---------|--------|-------|-------|------------|
| Length  | 4 bits | 3 bits| 3 bits| 6 bits     |


#### Operation Mnemonics:

| Mnemonic | Operation                                 | opcode |
|----------|-------------------------------------------|--------|
| ADDi     | rt ← rs + SIGN_EXTEND(immediate)          | 0010   |
| SUBi     | rt ← rs - SIGN_EXTEND(immediate)          | 0011   |
| ANDi     | rt ← rs & immediate                       | 0100   |
| ORi      | rt ← rs | immediate                       | 0101   |
| SB       | MEM[rs + SIGN_EXTEND(immediate)] ← rt     | 0110   |
| LB       | rt ← MEM[rs + SIGN_EXTEND(immediate)]     | 0111   |
| BEQ      | if (rt == rs): PC ← PC + SIGN_EXTEND(immediate << 1) | 1000 |
| BNQ      | if (rt != rs): PC ← PC + SIGN_EXTEND(immediate << 1) | 1000 |

---

### 3.Jump Instructions

| Field   | opcode | address |
|---------|--------|---------|
| Length  | 4 bits | 7 bits  |


#### Operation Mnemonics:
| Mnemonic | Operation                         | opcode |
|----------|-----------------------------------|--------|
| J        | PC ← address << 1                 | 1110   |
| JAL      | R[7] ← PC + 2, PC ← address << 1  | 1111   |


## Project Components

- **Datapath:** Handles data flow and operations in the processor.
- **Control Logic:** Manages signals for operations such as register writes, memory access, and ALU operations.
- **Test Programs:** Several test programs have been developed to validate the functionality of the processor.

## Testing

### Fibonacci Program

A Fibonacci program is provided to test the processor. The program calculates Fibonacci numbers using a recursive approach.

### Additional Test Programs

Two additional test programs are used to verify the processor’s handling of complex operations and branch conditions. These programs include:

- Multiple arithmetic operations
- Branching conditions (e.g., loops, if-else structures)

All test programs are evaluated for correctness, and the results are verified against expected outputs.

## How to Run

1. Clone the repository:
```bash
git clone https://github.com/yourusername/mips-processor.git
```
2. Compile the project:
```bash
cd MIPS-Processor


