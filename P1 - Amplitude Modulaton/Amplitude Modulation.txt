clc;
clear all;
close all;

Ac=input("Enter carrier amplitude = "); % carrier amplitude
fc=input("Enter carrier signal = ");% carrier frequency
Am=input("Enter message signal amplitude = "); %message signal amplitude
fm=input("Enter message signal frequency = "); %message signal frequency
Fs=100;%sampling rate/frequency


ka=1;%amplitude sensitivity
t=[0:0.1:50];% defining the time range and disseminating it into sample
ct=Ac*sin(2*pi*fc*t);%defining the carrier signal wave
mt=Am*cos(2*pi*fm*t);%defining message signal wave
AM =ct.*(1+ka*mt);%amplitude modulated wave,according to the standard definition


subplot(3,1,1);%plotting the message signal wave
plot(mt);
title('Message signal');
xlabel('Time');
ylabel('Messaging signal');

subplot(3,1,2);%plotting the carrier signal wave
plot(ct);
title('Carrier Signal');
xlabel('Time');
ylabel('carrier');

subplot(3,1,3);%plotting the amplitude modulated wave
plot(AM);
title('Amplitude Modulated Signal');
xlabel('Time')
ylabel('AM signal');


% Sample input : 
% Enter carrier amplitude = 2
% Enter carrier signal = .5
% Enter message signal amplitude = .5
% Enter message signal frequency = .05








