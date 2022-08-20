clc
clear

L=input('Enter the upsampling factor:');
N=input('Enter the length of the input signal:'); 
f1=input('Enter the frequency of first sinusodal:');
f2=input('Enter the frequency of second sinusodal:');
n=0:N-1;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
y=interp(x,L);
subplot(2,1,1)
stem(n,x(1:N))
title('Input sequence');
xlabel('time(n)');
ylabel('amplitude');
subplot(2,1,2)
m=0:N*L-1;
stem(m,y(1:N*L))
title('Output sequence ');
xlabel('time(n)');
ylabel('amplitude');
