
\# FPGA-Based Real-Time FFT Audio Signal Analyzer



\## 📌 Overview

This project implements a real-time audio signal analyzer using FPGA. The system captures audio input via an I2S microphone, processes it using FFT, and displays frequency spectrum data on an LCD.



\## 🎯 Features

\- Real-time audio acquisition (I2S interface)

\- FFT processing (hardware-based)

\- Magnitude calculation

\- LCD visualization (SPI interface)

\- Modular Verilog design



\## 🏗️ System Architecture

!\[System Diagram](Docs/your\_diagram\_name.png)



=======
# FPGA-Based Real-Time FFT Audio Signal Analyzer

## 📌 Overview

This project implements a real-time audio signal analyzer on FPGA. The system captures audio using an I2S microphone, processes it using FFT, and visualizes the frequency spectrum on a color LCD.

---

## 🧠 System Architecture

![Block Diagram](results/block_diagram.png)

---

## 🔧 Modules

### 🔹 I2S Receiver

Converts serial audio data into parallel digital samples.

### 🔹 FFT Module

Performs frequency transformation (currently pass-through for simulation).

### 🔹 Magnitude Calculator

Computes magnitude of FFT output for visualization.

### 🔹 LCD Driver

SPI-based interface to display frequency data on LCD.

### 🔹 Top Module

Integrates all modules into a complete system.

---

## 🧪 Simulation Results

* Clock signal verified (10 ns period)
* Random input samples generated
* valid_in controls processing
* Output follows input correctly
* valid_out synchronized with valid_in

![Waveform](results/waveform.png)

---

## 📂 Project Structure

```
src/            → Verilog source files  
tb/             → Testbench  
constraints/    → FPGA constraints  
results/        → Simulation + diagrams  
```

---

## ⚙️ Tools Used

* ModelSim (Simulation)
* Verilog HDL
* Xilinx ISE
* GitHub

---

## 🚀 Future Improvements

* Integrate Xilinx FFT IP core
* Real-time I2S audio capture
* LCD spectrum visualization
* Power BI integration for analysis

---

## 👨‍💻 Author

Amin Uddin Qureshi
FPGA & Electronics Engineer
Pakistan Navy
>>>>>>> da3bc793e772fbefba9bd7b1c670c1d3027b12ef
