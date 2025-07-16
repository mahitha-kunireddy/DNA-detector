# # DNA Sequence Detector - Verilog Project

This project is a Verilog-based implementation of a **DNA Sequence Detector**. The module scans input binary sequences and detects a specific DNA pattern encoded in binary format. This can be extended for bioinformatics applications such as basic DNA matching or pattern recognition simulations in digital logic systems.

##  Description

The module is designed to detect a predefined DNA sequence using a finite state machine (FSM). Each DNA base (A, T, G, C) is represented in binary and the FSM transitions through states as it scans the sequence, asserting a detection signal when the full target pattern is matched.

##  File Structure

- `Dna_detector.v` — Verilog source code implementing the DNA sequence detection logic.

##  How It Works

- Input: Serial input bits representing a DNA sequence.
- Output: A high signal (`1`) on `detected` when the sequence matches the expected DNA pattern.
- Internals: Finite State Machine transitions through states based on current bit and previous history.

##  Technologies Used

- Verilog HDL
- FSM (Finite State Machine) design
- Synthesizable digital logic

##  Getting Started

To simulate or synthesize this module:
1. Load `Dna_detector.v` into any Verilog simulator (e.g., ModelSim, Vivado, Icarus Verilog).
2. Apply test patterns via a testbench (not included here).
3. Observe the output signal to verify detection.

##  Applications

- Bioinformatics simulation
- Pattern recognition
- Educational demonstration of FSM-based detection logic
