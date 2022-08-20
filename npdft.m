clc
clear
N=input('Enter the value of N(Value of N in N-point DFT): ');
x=input('Enter the sequence for which DFT is to be calculated: ');
n=[0:1:N-1];
k=[0:1:N-1];
WN=exp(-1j*2*pi/N);
nk=n'*k;
WNnk=WN.^nk;
Xk=x*WNnk;
MagX=abs(Xk)
PhaseX=angle(Xk)*180/pi
figure(1);
subplot(2,1,1);
plot(k,MagX);
subplot(2,1,2);
plot(k,PhaseX);
