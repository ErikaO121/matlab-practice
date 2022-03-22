clc
clear


image=imread('image/salt_pepper.tif');
image_double = im2double(image);
[MM,NN]=size(image_double);



% ---------??���g�p�ő�??�g--------------------
%�ő�??�g?��?��?�L�g�Ӟ������h�I?��
%��?�q�x���I�ڐ�
m=3;
n=3;
%?��v?�W�I�s��
len_m=floor(m/2);
len_n=floor(n/2);
%�����n?��?�s?�W�C?���їp��?��?�W�C��?�s?��???�Z
image_double_pad=padarray(image_double,[len_m,len_n],'symmetric');
%?��?�W�@�I?���ڐ�
[M,N]=size(image_double_pad);
result_Max=zeros(MM,NN);
%���_?�Z�q�x���I�ő�?
for i=1+len_m:M-len_m
    for j=1+len_n:N-len_n
        %��?�W?������o�q?��
        Block=image_double_pad(i-len_m:i+len_m,j-len_n:j+len_n);
        %�ő�??�g        
        result_Max(i-len_m,j-len_n)=max(max(Block));     
    end
end



% ---------??���g�p�ŏ�??�g--------------------
%�ŏ�??�g��?��?��?�L�g?�h�����I?��
result_Min=zeros(MM,NN);
%���_?�Z�q�x���I�ŏ�?
for i=1+len_m:M-len_m
    for j=1+len_n:N-len_n
        %��?�W?������o�q?��
        Block=image_double_pad(i-len_m:i+len_m,j-len_n:j+len_n);
        %�ŏ�??�g        
         result_Min(i-len_m,j-len_n)=min(min(Block));        
    end
end


% ---------??���g�p��??�g--------------------
result_Mid = medfilt2(image_double);




% ?��?��
figure;

subplot(2,2,1);
imshow(image_double);
title('original')

subplot(2,2,2);
imshow(result_Max);
title('Max');

subplot(2,2,3);
imshow(result_Min);
title('Min');


subplot(2,2,4);
imshow(result_Mid);
title('Mid');