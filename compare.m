%% Bit Planes from 1 to 8. Output Format: Binary
clc, clear all, close all

A=imread('coins.png');

B1=im2uint8(logical(bitget(A,1)));
figure,
subplot(2,2,1);imshow(logical(B1));title('Bit plane 1');

B2=im2uint8(logical(bitget(A,2)));
subplot(2,2,2);imshow(logical(B2));title('Bit plane 2');

B3=im2uint8(logical(bitget(A,3)));
subplot(2,2,3);imshow(logical(B3));title('Bit plane 3');

B4=im2uint8(logical(bitget(A,4)));
subplot(2,2,4);imshow(logical(B4));title('Bit plane 4');

B5=im2uint8(logical(bitget(A,5)));
figure,
subplot(2,2,1);imshow(logical(B5));title('Bit plane 5');

B6=im2uint8(logical(bitget(A,6)));
subplot(2,2,2);imshow(logical(B6));title('Bit plane 6');

B7=im2uint8(logical(bitget(A,7)));
subplot(2,2,3);imshow(logical(B7));title('Bit plane 7');

B8=im2uint8(logical(bitget(A,8)));
subplot(2,2,4);imshow(logical(B8));title('Bit plane 8');

[ps1, snr1] = psnr(A, B1);
[ps2, snr2] = psnr(A, B2);
[ps3, snr3] = psnr(A, B3);
[ps4, snr4] = psnr(A, B4);
[ps5, snr5] = psnr(A, B5);
[ps6, snr6] = psnr(A, B6);
[ps7, snr7] = psnr(A, B7);
[ps8, snr8] = psnr(A, B8);

fprintf('\n Bit plane 1 %0.4f \n', snr1);
fprintf('\n Bit plane 2 %0.4f \n', snr2);
fprintf('\n Bit plane 3 %0.4f \n', snr3);
fprintf('\n Bit plane 4 %0.4f \n', snr4);
fprintf('\n Bit plane 5 %0.4f \n', snr5);
fprintf('\n Bit plane 6 %0.4f \n', snr6);
fprintf('\n Bit plane 7 %0.4f \n', snr7);
fprintf('\n Bit plane 8 %0.4f \n', snr8);

plotData = [snr1,snr2,snr3, snr4, snr5, snr6, snr7, snr8];
figure
plot(plotData);
