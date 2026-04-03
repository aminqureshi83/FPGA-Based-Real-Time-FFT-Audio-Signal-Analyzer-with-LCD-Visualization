# FPGA-Based-Real-Time-FFT-Audio-Signal-Analyzer-with-LCD-Visualization
This project presents a real-time audio signal processing system implemented on a Spartan-6 FPGA. The system captures audio input via an I2S microphone, performs Fast Fourier Transform (FFT) computation in hardware, and visualizes the frequency spectrum on an SPI-based ST7735 color LCD.
# FPGA-Based Real-Time FFT Audio Signal Analyzer with LCD Visualization

## 📌 Overview

This project implements a real-time audio signal processing system on a Spartan-6 FPGA. Audio is captured via an I2S microphone, processed using Fast Fourier Transform (FFT), and displayed as a frequency spectrum on an SPI-based ST7735 LCD.

The design demonstrates efficient hardware-based DSP implementation for real-time embedded systems.

---

## 🎯 Objectives

* Capture real-time audio using I2S interface
* Implement FFT in FPGA (hardware-based)
* Analyze frequency components
* Display spectrum on LCD
* Validate using simulation tools

---

## 🧱 System Architecture

I2S Microphone → I2S Receiver → FFT Module → Magnitude Calculation → LCD Driver (SPI) → ST7735 Display

---

## 🔧 Hardware Used

* Spartan-6 LX9 FPGA (100 MHz)
* I2S Microphone
* ST7735 SPI LCD
* Supporting circuitry

---

## 💻 Software & Tools

* Xilinx ISE 14.7 (Synthesis, Implementation, Timing)
* ISim / ModelSim (Simulation & Waveform Analysis)
* MATLAB (FFT verification & signal analysis)
* Python (NumPy, Matplotlib for visualization)
* Git & GitHub
* MS Excel / Power BI

---

## ⚙️ Modules

### I2S Receiver

Converts serial audio input into parallel samples.

### FFT Module

Performs frequency domain transformation.

### Magnitude Calculation

Computes amplitude of frequency bins.

### LCD Driver

Displays real-time spectrum on ST7735.

---

## 📊 Results & Performance

### Key Results

* Real-time audio processing achieved
* Accurate frequency detection
* Stable LCD visualization
* Low-latency operation

### Performance

* Sampling Rate: ~8–16 kHz
* FFT Size: 256 / 512
* Fully hardware-based processing

### Verification

* Verified using MATLAB
* Simulation validated using ISim/ModelSim

---

## 📁 Project Structure

FPGA-FFT-Audio-Analyzer/
│
├── README.md
├── src/
├── tb/
├── docs/
└── constraints/

---

## 📸 Demonstration

(Add real hardware + LCD output images here)

---

## 🚀 Future Work

* Higher FFT resolution
* VGA/HDMI output
* Data logging + Power BI integration

---

## 👨‍💻 Author

Amin Uddin Qureshi
Senior Systems Engineer | FPGA | Electronics | Data Analytics

---

## 📎 License

For educational and research purposes.
