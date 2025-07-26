clc; clear; close all;

% Simulate a simple voice-like audio signal
fs = 16000;                    % Sampling rate
t = 0:1/fs:1;                  % 1 second duration
audio = sin(2*pi*300*t) + 0.1*randn(size(t));  % Sine wave + noise

% Extract MFCC features
coeffs = mfcc(audio', fs);

% Plot MFCC
figure;
imagesc(coeffs');
axis xy;
xlabel('Frame Index');
ylabel('MFCC Coefficients');
title('MFCC Features');
colorbar;

% Display success message
disp("✅ Code ran successfully. MFCC extracted and plotted.");
