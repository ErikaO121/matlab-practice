clc
clear

image = imread('image/handXray.png');
image_gray = rgb2gray(image);
image_gray_double = im2double(image_gray);

result = im2bw(image_gray_double,0.1);

figure;
imshow(result);