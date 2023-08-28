clc;
close all;
clear all;
a = input('Enter the amplitude = ');
f = input('Enter the frequency  = ');
t = 0:0.02:2; % for a total of 16 samples
x1 = 1; %generation of an impulse signal
x2 = a*sin(2*pi*f*t); %generation of sine wave
y = x1.*x2; %modulation step

subplot(3,1,1); %for impulse signal plot
stem(x1);
title('Impulse Signal');
xlabel('Time');
ylabel('Amplitude ');

subplot(3,1,2) %for sine wave plot
plot(t,x2);
title('Sine Wave');
xlabel('Time ');
ylabel('Amplitude ');

subplot(3,1,3) %for PAM wave plot
stem(t,y);
title('PAM Wave');
xlabel('Time');
ylabel('Amplitude');


% Sample Input At MATLAB Command Window:
% Enter the amplitude = 4
% Enter the frequency  = 3 