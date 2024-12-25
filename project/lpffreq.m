% Parameters
R = 1e3; % 1 kOhm
C = 1e-6; % 1 uF
wc = 1/(R*C); % Cutoff angular frequency
f_c = wc / (2*pi); % Cutoff frequency in Hz

% Frequency range for plotting
f = logspace(1, 5, 500); % Frequency range from 10 Hz to 100 kHz
omega = 2 * pi * f; % Angular frequency

% Low-Pass Filter Transfer Function H(s) = 1 / (RCs + 1)
H_lpf = 1 ./ (1 + 1j * omega * R * C);

% Plot Frequency Response (Magnitude and Phase)
figure;
subplot(2,1,1);
semilogx(f, 20*log10(abs(H_lpf))); % Magnitude in dB
title('Low-Pass Filter Frequency Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

subplot(2,1,2);
semilogx(f, angle(H_lpf) * (180/pi)); % Phase in degrees
title('Low-Pass Filter Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
