**24-Hour Digital Clock Design on FPGA**

**Overview**
This project involved designing and implementing a 24-hour digital clock on an FPGA using Verilog. The clock supports a full 24-hour cycle, displaying hours, minutes, and seconds on a multiplexed 7-segment display. The design combines behavioral and structural Verilog to ensure both correctness and synthesizability on an FPGA development board.

**Key Features**

* Implements a complete 24-hour cycle from 00:00:00 to 23:59:59.
* Entirely designed in Verilog.
* Includes a driver for a multiplexed 7-segment display to show time.
* Optimized counter logic reduced flip-flop usage by around 12%, making the design more resource-efficient.

**Design and Implementation**

*Modular Approach*
The clock is structured into several modules for clarity and maintainability:

* **Time Counters:** Separate modules for seconds, minutes, and hours, each handling proper roll-over (e.g., 59 seconds → 00 seconds, 23 hours → 00 hours).
* **Clock Divider:** Converts the FPGA’s system clock into a 1Hz signal to drive the seconds counter.
* **7-Segment Display Driver:** Converts BCD outputs into 7-segment signals and handles time-division multiplexing for the display.

*Optimization*

* Counter logic was optimized to eliminate unnecessary state registers.
* By using synchronous counters with enable signals instead of cascading asynchronous logic, the design achieved a 12% reduction in flip-flop usage.

**Verification and Synthesis**

* Full 24-hour simulation verified correct functionality.
* Timing closure was successfully achieved in Xilinx Vivado.
* The synthesis report confirmed a 12% reduction in flip-flops compared to the initial design, demonstrating improved resource efficiency.

**Technology Stack**

* **HDL:** Verilog
* **EDA Tool:** Xilinx Vivado
* **Target Platform:** Generic FPGA
