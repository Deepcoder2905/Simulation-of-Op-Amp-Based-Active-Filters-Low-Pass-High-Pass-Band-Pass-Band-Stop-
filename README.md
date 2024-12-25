# Active Filter Design and Signal Processing in MATLAB

## Project Overview

This project demonstrates the design and analysis of basic active filters (Low-Pass, High-Pass, Band-Pass, and Band-Stop) using MATLAB. It also includes the application of these filters on a sample signal to visualize the effects of filtering in both the frequency and time domains.

The filters are designed based on the standard RC (Resistor-Capacitor) components, and their performance is evaluated using frequency response plots (Magnitude and Phase). A signal composed of multiple frequencies is filtered using each of the designed filters to showcase their practical applications.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Project Requirements](#project-requirements)
- [How to Run the Project](#how-to-run-the-project)
- [Results and Output](#results-and-output)

## Introduction

This project is aimed at demonstrating the functionality and application of basic analog filters designed using MATLAB. The main goal is to:
1. Design and simulate Low-Pass, High-Pass, Band-Pass, and Band-Stop filters.
2. Analyze the frequency response of each filter.
3. Apply each filter on a mixed-frequency signal and observe the time-domain results.

## Features

- **Low-Pass Filter (LPF)**: Allows frequencies below the cutoff frequency to pass while attenuating higher frequencies.
- **High-Pass Filter (HPF)**: Allows frequencies above the cutoff frequency to pass while attenuating lower frequencies.
- **Band-Pass Filter (BPF)**: Allows a certain range of frequencies (the band) to pass while attenuating frequencies outside this range.


The project provides:
- Frequency response plots (Magnitude and Phase).
- Time-domain signal filtering using each of the filters.
- MATLAB code to simulate each filter type.

## Project Requirements

To run this project, you will need:
- MATLAB (preferably with the Signal Processing Toolbox).
- Basic understanding of signal processing and filter design.

The project does **not** require the **Control System Toolbox**, as it uses direct mathematical formulas for filter design and signal processing.

## How to Run the Project

1. **Download the Project:**
   - Clone this repository to your local machine or download the ZIP file from GitHub.
   - ```bash
     git clone https://github.com/your-username/active-filter-design.git
     ```

2. **Open MATLAB:**
   - Navigate to the folder where the project is stored.
   - Open MATLAB and change the current directory to the project directory.

3. **Run the Code:**
   - Open the `filter_design.m` file in MATLAB and run the code.
   - The code will automatically generate frequency response plots and filter a test signal.

4. **View the Results:**
   - The frequency response of each filter (Magnitude and Phase) will be displayed in logarithmic scale.
   - The original and filtered signals will be plotted for each filter type.


## Results and Output

### Frequency Response:
For each filter (LPF, HPF, BPF, BSF), the project generates the following plots:
1. **Magnitude Response (dB)**: Shows how the filter attenuates or amplifies different frequencies.
2. **Phase Response (degrees)**: Shows the phase shift introduced by the filter.

### Signal Filtering in Time Domain:
The project generates plots comparing the original signal and the filtered signals after applying each of the filters. For example:
1. **Low-Pass Filter (LPF)**: Attenuates the high-frequency component in the time domain.
2. **High-Pass Filter (HPF)**: Removes the low-frequency component in the time domain.
3. **Band-Pass Filter (BPF)**: Retains a specific frequency band while removing others.


### Example Output:
- A frequency response plot for each filter.
- Time-domain signal plots before and after filtering.

---

## Author

**Deepansh Garg**  
Bachelor of Technology (BTech) in Electronics & Communication Engineering  
Netaji Subhas University of Technology  
