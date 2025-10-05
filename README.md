# 24-Hour Digital Clock Design on FPGA

## ⏰ Overview
[cite_start]A behavioral and structural Verilog implementation of a 24-hour digital clock, suitable for synthesis and demonstration on an FPGA development board[cite: 28]. The design includes counter logic and a driver for a multiplexed 7-segment display.

## ✨ Key Features
* [cite_start]**Functionality:** Full 24-hour cycle (00:00:00 to 23:59:59) digital clock[cite: 30].
* [cite_start]**HDL:** Designed entirely in Verilog[cite: 30].
* **Display:** Includes a driver module for controlling a multiplexed 7-segment display (to show hours, minutes, and seconds).
* [cite_start]**Optimization:** Achieved a **12% reduction in flip-flop (FF) count** through optimized counter logic[cite: 32].

## ⚙️ Design and Optimization
### Modular Design
The clock is composed of several key modules:
1.  [cite_start]**Time Counters:** Separate modules for Seconds, Minutes, and Hours with correct roll-over logic (e.g., 59 seconds to 00 seconds, 23 hours to 00 hours)[cite: 30].
2.  **Clock Divider:** Generates the 1Hz signal required for the seconds counter from the system clock.
3.  **7-Segment Driver:** Handles BCD-to-7-segment encoding and time-division multiplexing for the display.

### Counter Optimization
[cite_start]The logic was optimized to reduce redundant state registers[cite: 32].
* *\[Improvement Note: Explain how you achieved the 12% FF reduction. E.g., Used synchronous counters with enable signals instead of cascading asynchronous logic, or optimized reset/load signals.]*

## ✅ Verification and Synthesis
* [cite_start]**Simulation:** Functionality was verified via a full **24-hour cycle simulation**[cite: 30].
* [cite_start]**Timing Closure:** Successfully achieved timing closure during synthesis in Xilinx Vivado[cite: 31].
* [cite_start]**Efficiency Metric:** Verified **12% FF count reduction** in the synthesis report compared to an initial implementation[cite: 32].

## 🛠️ Technology Stack
* [cite_start]**HDL:** Verilog [cite: 30]
* [cite_start]**EDA Tool:** Xilinx Vivado [cite: 31]
* **Target:** Generic FPGA
