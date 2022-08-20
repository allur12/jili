clc
clear
x1=input('Enter the first sequence:');
subplot(3,1,1);
stem(x1);
ylabel('amplitude');
title('Plot the first sequence');
x2=input('Enter second sequence:');
subplot(3,1,2);
stem(x2);
ylabel('amplitude');
title('Plot of second sequence');
f=conv(x1,x2);
disp('Output of linear convolution is');
disp(f);
xlabel('time index n');
ylabel('amplitude f');
subplot(3,1,3);
stem(f);
title('Linear convolution of sequence');
