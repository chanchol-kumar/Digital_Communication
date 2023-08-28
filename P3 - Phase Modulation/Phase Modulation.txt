% Parameters
fs = 1000;               % Sampling frequency
fc = 50;                 % Carrier frequency
Am = 1;                  % Modulation depth
Ac = 1;                  % Carrier amplitude
t = 0:1/fs:1-1/fs;       % Time vector
message_signal = Am * sin(2 * pi * 10 * t); % Information signal

% Phase modulation
kf = 2 * pi * 5;         % Modulation index (sensitivity)
phase_modulated_signal = Ac * cos(2 * pi * fc * t + kf * message_signal);

% Plotting
subplot(3,1,1);
plot(t, message_signal);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, Ac * cos(2 * pi * fc * t));
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, phase_modulated_signal);
title('Phase Modulated Signal');
xlabel('Time');
ylabel('Amplitude');

% Display the plots
sgtitle('Phase Modulation Example');
