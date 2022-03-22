clc
clear

Image = imread('image/colorImage.png');

image_r = Image(:,:,1);
image_g = Image(:,:,2);
image_b = Image(:,:,3);

figure;

subplot(2,2,1);
imshow(Image);
title('RGB');

subplot(2,2,2);
imshow(image_r);
title('R');

subplot(2,2,3);
imshow(image_g);
title('G');

subplot(2,2,4);
imshow(image_b);
title('B');

imwrite(image_r,'result/red.png');
imwrite(image_g,'result/green.png');
imwrite(image_b,'result/blue.png');

