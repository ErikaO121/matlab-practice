clc
clear

image = imread('image/city.png');
% ����??��v�Lcity?�����C��������?�����\?����
image_gray = rgb2gray(image);
image_gray_double = im2double(image_gray);

result_g2 = image_gray_double.^2;
result_g5 = image_gray_double.^5;
result_g10 = image_gray_double.^10;

figure;
subplot(2,2,1);
imshow(image_gray_double);
title('origin');

subplot(2,2,2);
imshow(result_g2);
title('��=2');

subplot(2,2,3);
imshow(result_g5);
title('��=5');

subplot(2,2,4);
imshow(result_g10);
title('��=10');