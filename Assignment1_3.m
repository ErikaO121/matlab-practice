clc 
clear

Image = imread('image/colorImage.png');
grayImage = rgb2gray(Image);

double = im2double(grayImage);

% figure;
% imshow(double);

save('result/grayImage_double.mat');