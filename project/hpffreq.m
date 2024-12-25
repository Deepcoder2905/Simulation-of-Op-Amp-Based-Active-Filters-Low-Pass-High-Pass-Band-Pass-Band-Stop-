% High-Pass Filter Transfer Function H(s) = sRC / (sRC + 1)
H_hpf = 1j * omega * R * C ./ (1 + 1j * omega * R * C);

% Plot Frequency Response (Magnitude and Phase)
figure;
subplot(2,1,1);
semilogx(f, 20*log10(abs(H_hpf))); % Magnitude in dB
title('High-Pass Filter Frequency Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

subplot(2,1,2);
semilogx(f, angle(H_hpf) * (180/pi)); % Phase in degrees
title('High-Pass Filter Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
