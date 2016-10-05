%% Bit Planes from 1 to 8. Output Format: Binary
clc, clear all, close all

A=imread('coins.png');

B1=bitget(A,1);
figure,
subplot(2,2,1);imshow(logical(B1));title('Bit plane 1');

B2=bitget(A,2);
subplot(2,2,2);imshow(logical(B2));title('Bit plane 2');

B3=bitget(A,3);
subplot(2,2,3);imshow(logical(B3));title('Bit plane 3');

B4=bitget(A,4);
subplot(2,2,4);imshow(logical(B4));title('Bit plane 4');

B5=bitget(A,5);
figure,
subplot(2,2,1);imshow(logical(B5));title('Bit plane 5');

B6=bitget(A,6);
subplot(2,2,2);imshow(logical(B6));title('Bit plane 6');

B7=bitget(A,7);
subplot(2,2,3);imshow(logical(B7));title('Bit plane 7');

B8=bitget(A,8);
subplot(2,2,4);imshow(logical(B8));title('Bit plane 8');

[ps1, snr1] = psnr(B1, A);
[ps2, snr2] = psnr(B2, A);
[ps3, snr3] = psnr(B3, A);
[ps4, snr4] = psnr(B4, A);
[ps5, snr5] = psnr(B5, A);
[ps6, snr6] = psnr(B6, A);
[ps7, snr7] = psnr(B7, A);
[ps8, snr8] = psnr(B8, A);

fprintf('\n Bit plane 1 %0.4f \n', snr1);
fprintf('\n Bit plane 2 %0.4f \n', snr2);
fprintf('\n Bit plane 3 %0.4f \n', snr3);
fprintf('\n Bit plane 4 %0.4f \n', snr4);
fprintf('\n Bit plane 5 %0.4f \n', snr5);
fprintf('\n Bit plane 6 %0.4f \n', snr6);
fprintf('\n Bit plane 7 %0.4f \n', snr7);
fprintf('\n Bit plane 8 %0.4f \n', snr8);
