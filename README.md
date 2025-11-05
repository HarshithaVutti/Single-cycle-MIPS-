# Single-cycle-MIPS
---
This project implements a simplified *32-bit MIPS single-cycle processor* using Verilog HDL.
The processor is capable of executing a small subset of MIPS instructions such as ADD, SUB, AND, LW, SW, BEQ, and  ADDI.
The design was developed and simulated using Vivado and follows the classical single-cycle MIPS architecture structure.

---

## 🧠 Architecture

The processor architecture consists of the following major modules:

1. *Program Counter (PC)* – Holds the address of the next instruction.
2. *Instruction Memory* – Stores program instructions.
3. *Control Unit* – Generates control signals based on opcode and function fields.
4. *Register File* – Contains 32 general-purpose 32-bit registers.
5. *ALU (Arithmetic Logic Unit)* – Performs arithmetic and logical operations.
6. *Data Memory* – Handles load and store operations.
7. *Branch Logic* – Implements conditional branching based on ALU zero signal.

The modules are interconnected in the **top-level module (mips_cpu.v), which coordinates instruction fetching, decoding, execution, memory access, and write-back.

---

## 📚 Theoretical Overview

The MIPS processor is a *RISC (Reduced Instruction Set Computer)* architecture that emphasizes:

* Simple, fixed-length 32-bit instructions
* Load/store architecture
* Three instruction types (R-type, I-type, J-type)
* Register-based computation with few addressing modes

*Instruction execution flow:*

1. *Instruction Fetch* – PC provides address to Instruction Memory.
2. *Decode* – Control unit interprets opcode/funct fields.
3. *Execute* – ALU performs the desired operation.
4. *Memory Access* – Data memory accessed if needed.
5. *Write-Back* – Result stored back to register file.

The control unit determines the values of:

* RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, and ALUControl.

---

## ⚙ Structural Characteristics (for 32-bit Implementation)

| Component       | Bit Width     | Description                               |
| --------------- | ------------- | ----------------------------------------- |
| Data Bus        | 32 bits       | Used for data transfer between components |
| Address Bus     | 32 bits       | Used by PC, instruction, and data memory  |
| Registers       | 32 × 32 bits  | 32 general-purpose registers              |
| ALU             | 32-bit        | Performs addition, subtraction, AND       |
| Memory          | 256 × 32 bits | Instruction and data memories             |
| Control Signals | Varying       | Based on instruction type                 |

*Supported Instructions*

* R-Type: ADD, SUB, AND
* I-Type: LW, SW, BEQ, ADDI

---

## 🧩 Simulation Results

### Testbench: mips_cpu_tb.v

The testbench initializes the processor, toggles the clock, and displays register and memory contents after execution.

*Key Simulation Steps:*

* Reset asserted for 15 ns
* Clock toggled every 5 ns
* Instruction memory preloaded with a small MIPS program
* Register and data memory contents displayed after 600 ns

*Expected Output (example):*


>> CPU running...
R[0] = 00000000
R[1] = 0000000A
R[2] = 00000003
R[3] = 0000000D
R[4] = 00000007
R[5] = 0000000F
MEM[0] = 0000000D
MEM[1] = DEADBEEF
...
Simulation finished.

---

## ⚠ Disadvantages

* Single-cycle architecture → all instructions take the same cycle time (slow for memory ops)
* No pipelining → lower throughput compared to multi-cycle/pipelined MIPS
* Limited instruction set (for simplicity)
* No hazard detection or forwarding mechanisms

---

## 🏗 Complete ASIC Design

For ASIC design flow:

1. *RTL Design:* Verilog modules written and verified
2. *Synthesis:* RTL → gate-level netlist
3. *Floorplanning:* Define chip area and power distribution
4. *Placement:* Positioning of standard cells
5. *Clock Tree Synthesis (CTS):* Clock signal balancing
6. *Routing:* Interconnects between cells
7. *DRC/LVS Checks:* Design rule and layout vs schematic verification
8. *Tape-out:* Final GDSII generation for fabrication

---

## 📊 Results & Design Flow

| Stage                 | Tool                               | Output                     |
| --------------------- | ---------------------------------- | -------------------------- |
| RTL Coding            | Verilog                            | Behavioral Models          |
| Functional Simulation | Vivado                             | Waveform Verification      |
| Synthesis             | cadence                            | Netlist & Resource Reports |
| Implementation        | cadence                            | Placement & Routing        |
| ASIC Flow             | cadence                            | GDSII Layout               |

*Performance Summary*

* Word Length: 32 bits
* Clock Frequency: 100 MHz (nominal)
* Instruction Memory: 256 words
* Data Memory: 256 words
* Average CPI: 1 (single-cycle)

---

## 🧾 File Structure


mips_cpu/
│
├── alu.v
├── register_file.v
├── instruction_memory.v
├── data_memory.v
├── control_unit.v
├── program_counter.v
├── mips_cpu.v          # Top-level
├── mips_cpu_tb.v       # Testbench
├── README.md           # Project documentation
└── sim/                # (Optional) Simulation outputs or waveforms


---

## 🧩 How to Simulate

1. Open *Vivado* or *ModelSim*.
2. Create a new project and add all .v source files.
3. Set mips_cpu_tb.v as the top module.
4. Run behavioral simulation.
5. Observe waveforms and console output.

---

## 🧠 Future Enhancements

* Add pipeline stages (IF, ID, EX, MEM, WB)
* Implement forwarding and hazard detection units
* Include J-type instructions (e.g., JUMP)
* Add support for branch delay slots

# Project Reference

For more details on the design and implementation of a 32-bit Single-Cycle MIPS Processor, refer to the following report:

[Design and Implementation of a 32-bit Single-Cycle MIPS Processor - ResearchGate](https://www.researchgate.net/publication/392345357_Design_and_Implementation_of_a_32-bit_Single-Cycle_MIPS_Processor_A_PROJECT_REPORT_OF_Course_Computer_Organization_and_Assembly)

