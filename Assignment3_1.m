clc
clear

image = imread('image/pout.tif');
imhist(image);

image_eq = histeq(image);
figure;
subplot(1,2,1);
imshow(image);
title('origin');

subplot(1,2,2);
imshow(image_eq);
title('hist equalization');
