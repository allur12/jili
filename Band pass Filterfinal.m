clc;
Wc1=input('Enter the value of Wc1=');
Wc2=input('Enter the value of Wc2=');
N=input('Enter the value of N=');
alpha=(N-1)/2;
eps=0.001;
%Rectangular Window
n=0:1:N-1;
hd=(sin(Wc1*(n-alpha+eps))-sin(Wc2*(n-alpha+eps)*pi))./((n-alpha+eps)*pi);
hn=hd;
W=0:0.01:pi;
h=freqz(hn,1,W);
plot(W/pi,abs(h));
hold on;
%Hamming Window
n=0:1:N-1;
Wn=0.54-0.46*cos((2*pi*n)/(N-1));
hn=hd.*Wn;
W=0:0.01:pi;
h=freqz(hn,1,W);
plot(W/pi,abs(h),'green');
hold on;
%Hanning Window
n=0:1:N-1;
Wn=0.5-0.5*cos((2*pi*n)/(N-1));
hn=hd.*Wn;
W=0:0.01:pi;
h=freqz(hn,1,W);
plot(W/pi,abs(h),'red');
hold off;
%Blackman Window
n=0:1:N-1;
wh=042-0.5*cos((2*pi*n)/(N-1))-0.08*cos((4*pi*n)/(N-1));
hn=hd.*wh;
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(W/pi,abs(h),'green');
hold off; 