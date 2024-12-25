% Parameters for Band-Pass Filter
f0 = 1000; % Center frequency in Hz
Q = 10; % Quality factor
omega0 = 2*pi*f0; % Center angular frequency

% Band-Pass Filter Transfer Function H(s) = sRC / (s^2 + (1/Q)s + omega0^2)
H_bpf = (1j * omega * R * C) ./ (1 + 1j * omega / (R*C) + (omega.^2) / (omega0^2));

% Plot Frequency Response (Magnitude and Phase)
figure;
subplot(2,1,1);
semilogx(f, 20*log10(abs(H_bpf))); % Magnitude in dB
title('Band-Pass Filter Frequency Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

subplot(2,1,2);
semilogx(f, angle(H_bpf) * (180/pi)); % Phase in degrees
title('Band-Pass Filter Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
