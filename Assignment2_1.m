clc
clear

image = imread('image/handXray.png');
negative = imcomplement(image);

figure;
subplot(1,2,1);
imshow(image);
title('original');

subplot(1,2,2);
imshow(negative);
title('negative');

