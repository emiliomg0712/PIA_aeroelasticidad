% FFT of simple periodic signals

% sine signal.
% 
% fs = 100;                    % Sampling frequency
% T = 1/fs;                     % Sample time
% L = 10000;                     % Length of signal
% t = (0:L-1)*T;                % Time vector
% x1 = sin(2.*pi.*t);
% subplot(2,1,1)
% plot(t,x1);
% 
% 
% NFFT = 2^nextpow2(L); % Next power of 2 from length of y
% Y = fft(x1,NFFT)/L;
% f = fs/2*linspace(0,1,NFFT/2);
% % Plot single-sided amplitude spectrum.
% 
% subplot(2,1,2)
% plot(f,2*abs(Y(1:NFFT/2))) 
% title('Single-Sided Amplitude Spectrum of y(t)')
% xlabel('Frequency (Hz)')
% ylabel('|Y(f)|')

% Sum of sines

fs = 100;                    % Sampling frequency
T = 1/fs;                     % Sample time
L = 4000;                     % Length of signal
t = (0:L-1)*T;                % Time vector
xa = sin(2.*pi.*t);
xb = 0.5.*sin(3.*2.*pi.*t);
 xc = 0.25.*sin(5.*2.*pi.*t);
 xd = 0.1.*sin(7.*2.*pi.*t);
% xf = 0.05.*sin(11.*2.*pi.*t);

x1=xa+xb+xc+xd;
subplot(2,1,1)
hold on;
plot(t,x1);


NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(x1,NFFT)/L;
f = fs/2*linspace(0,1,NFFT/2);
% Plot single-sided amplitude spectrum.

subplot(2,1,2)
plot(f,2*abs(Y(1:NFFT/2))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')