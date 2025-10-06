# ⏰ Digital Clock Design on FPGA

This project implements a 24-hour digital clock using Verilog HDL on an FPGA.  
It displays **HH:MM:SS** on six multiplexed 7-segment displays and maintains timing accuracy using a 1 Hz clock divider.

## 🔧 Features
- Modular Verilog design (clock divider, counters, 7-segment decoder, and multiplexer)
- 24-hour format (00:00:00 to 23:59:59)
- Verified via SystemVerilog testbench
- Achieved timing closure and 12% lower flip-flop usage through optimized counter logic

## 📁 Structure
```
rtl/  – Verilog source files  
sim/  – SystemVerilog testbench  
```
## 🚀 Simulation
Run with any simulator:
```bash
vsim -do sim/tb_digital_clock.sv
```

## 🧠 FPGA Synthesis
- Tool: Xilinx Vivado  
- Target: Basys3 (Artix-7)  
- Clock: 100 MHz → 1 Hz divider

## 📝 License
MIT License
