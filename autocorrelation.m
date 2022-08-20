clc;
close all;
clear all;
% two input sequences
x=input('Enter input sequence:')
subplot(1,2,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('Input Sequence');
% auto correlation of input sequence
z=xcorr(x,x);
disp('The values of z are = ');
disp(z);
subplot(1,2,2);
stem(z);
xlabel('n');
ylabel('z(n)');
title('Auto correlation of input sequence');
