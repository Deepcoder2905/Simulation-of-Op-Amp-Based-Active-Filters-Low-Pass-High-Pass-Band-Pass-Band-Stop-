% Filter Design Parameters
R = 1e3; % 1 kOhm
C = 1e-6; % 1 uF
wc = 1 / (R * C); % Cutoff angular frequency
f_c = wc / (2 * pi); % Cutoff frequency in Hz

% Signal Generation (100 Hz and 1000 Hz Components)
fs = 10000; % Sampling frequency (10 kHz)
t = 0:1/fs:1; % Time vector (1 second)
signal = sin(2 * pi * 100 * t) + sin(2 * pi * 1000 * t); % Mixed-frequency signal

% Frequency Range for Filter Design
n = length(signal); % Length of the signal
f = (0:n-1) * (fs / n); % Frequency vector for FFT

% FFT of the Signal
signal_fft = fft(signal); % Transform signal to frequency domain

% **1. Low-Pass Filter (LPF)**
H_lpf = 1 ./ (1 + 1j * (2 * pi * f) * R * C); % Frequency response of LPF
filtered_signal_lpf = real(ifft(signal_fft .* H_lpf)); % Apply LPF

% **2. High-Pass Filter (HPF)**
H_hpf = 1j * (2 * pi * f) * R * C ./ (1 + 1j * (2 * pi * f) * R * C); % Frequency response of HPF
filtered_signal_hpf = real(ifft(signal_fft .* H_hpf)); % Apply HPF

% **3. Band-Pass Filter (BPF)**
f0 = 1000; % Center frequency (1 kHz)
Q = 10; % Quality factor
omega0 = 2 * pi * f0; % Angular frequency of center frequency
H_bpf = (1j * (2 * pi * f) * R * C) ./ (1 + 1j * (2 * pi * f) / (R * C) + ((2 * pi * f).^2) / omega0^2); % Frequency response of BPF
filtered_signal_bpf = real(ifft(signal_fft .* H_bpf)); % Apply BPF

% **Plot Results**

% Plot LPF Results
figure;
subplot(2,1,1);
plot(t, signal);
title('Original Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, filtered_signal_lpf);
title('Signal After Low-Pass Filtering');
xlabel('Time (seconds)');
ylabel('Amplitude');

% Plot HPF Results
figure;
subplot(2,1,1);
plot(t, signal);
title('Original Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, filtered_signal_hpf);
title('Signal After High-Pass Filtering');
xlabel('Time (seconds)');
ylabel('Amplitude');

% Plot BPF Results
figure;
subplot(2,1,1);
plot(t, signal);
title('Original Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, filtered_signal_bpf);
title('Signal After Band-Pass Filtering');
xlabel('Time (seconds)');
ylabel('Amplitude');
