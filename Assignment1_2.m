clc 
clear

Image = imread('image/colorImage.png');
grayImage = rgb2gray(Image);

figure;
imshow(grayImage);

imwrite(grayImage,'result/grayImage.png');
