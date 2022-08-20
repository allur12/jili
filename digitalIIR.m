clc
clear
format long
rp=input('Enter the pass band ripple:');
rs=input('Enter the stop band ripple:');
wp=input('Enter the passband frequency:');
ws=input('Enter the stopband frequency:');
fs=input('Enter the sampling frequency:');
w1=2*wp/fs;
w2=2*ws/fs;
%low pass filter
[n,wn]=buttord(w1,w2,rp,rs);
[b,a]=butter(n,wn);
[b,a]=butter(n,wn)
W=0:0.01:pi;
[h,om]=freqz(b,a,W);
m=20*log10(abs(h));
an=angle(h);
subplot(2,1,1);
plot(om/pi,m);
ylabel('gain in db...>');
xlabel('(a)normalized frequency...>');
subplot(2,1,2);
plot(om/pi,an);
xlabel('(b)normalized frequency...>');
ylabel('phase in radians...>');
%high pass filter
[n,wn]=buttord(w1,w2,rp,rs);
[b,a]=butter(n,wn,'high');
W=0:0.01:pi;
[h,om]=freqz(b,a,W);
m=20*log10(abs(h));
an=angle(h);
figure(2);
subplot(2,1,1);
plot(om/pi,m);
ylabel('gain in db...>');
xlabel('(a)normalized frequency...>');
subplot(2,1,2);
plot(om/pi,an);
xlabel('(b)normalized frequency...>');
ylabel('phase in radians...>');
%band pass filter
[n]=buttord(w1,w2,rp,rs);
wn=[w1,w2];
[b,a]=butter(n,wn,'bandpass');
W=0:0.01:pi;
[h,om]=freqz(b,a,W);
m=20*log10(abs(h));
an=angle(h);
figure(3);
subplot(2,1,1);
plot(om/pi,m);
ylabel('gain in db...>');
xlabel('(a)normalized frequency...>');
figure(3);
subplot(2,1,2);
plot(om/pi,an);
