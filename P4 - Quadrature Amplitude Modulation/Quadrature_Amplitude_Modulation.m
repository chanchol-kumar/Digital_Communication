% Parameters
fs = 1000;           % Sampling frequency
fc = 50;             % Carrier frequency
M = 4;               % Number of symbols
Am = 1;              % Modulation depth
t = 0:1/fs:1-1/fs;   % Time vector
message_symbols = randi([0 M-1], 1, length(t)); % Random symbol sequence

% Constellation mapping for 4-QAM
constellation = [1+1i, -1+1i, -1-1i, 1-1i];

% QAM modulation
qam_modulated_signal = constellation(message_symbols + 1);

% Plotting
subplot(3,1,1);
stem(t, message_symbols);
title('Message Symbols');
xlabel('Time');
ylabel('Symbol Index');

subplot(3,1,2);
plot(real(constellation), imag(constellation), 'o');
title('4-QAM Constellation');
xlabel('In-phase');
ylabel('Quadrature');
grid on;

subplot(3,1,3);
plot(t, real(qam_modulated_signal), 'b', t, imag(qam_modulated_signal), 'r');
title('4-QAM Modulated Signal (In-phase and Quadrature)');
xlabel('Time');
ylabel('Amplitude');
legend('In-phase', 'Quadrature');

% Display the plots
sgtitle('4-QAM Modulation Example');



