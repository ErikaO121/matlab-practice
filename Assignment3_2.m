clc
clear


image=imread('image/salt_pepper.tif');
image_double = im2double(image);
[MM,NN]=size(image_double);



% ---------??‘œg—pÅ‘å??”g--------------------
%Å‘å??”g?‡?—?—LgŒÓ£š„ºh“I?‘œ
%’è?qâxŒû“IÚ¡
m=3;
n=3;
%?’è—v?“W“Is—ñ”
len_m=floor(m/2);
len_n=floor(n/2);
%«Œ´n?‘œ?s?“WC?—¢Ñ—p—¹?‘œ?“WCˆÈ?s?‘œ???Z
image_double_pad=padarray(image_double,[len_m,len_n],'symmetric');
%?“¾?“W@“I?‘œÚ¡
[M,N]=size(image_double_pad);
result_Max=zeros(MM,NN);
%’€“_?ZqâxŒû“IÅ‘å?
for i=1+len_m:M-len_m
    for j=1+len_n:N-len_n
        %˜¸?“W?‘œ’†æoq?‘œ
        Block=image_double_pad(i-len_m:i+len_m,j-len_n:j+len_n);
        %Å‘å??”g        
        result_Max(i-len_m,j-len_n)=max(max(Block));     
    end
end



% ---------??‘œg—pÅ¬??”g--------------------
%Å¬??”gŠí?‡?—?—Lg?hš„º“I?‘œ
result_Min=zeros(MM,NN);
%’€“_?ZqâxŒû“IÅ¬?
for i=1+len_m:M-len_m
    for j=1+len_n:N-len_n
        %˜¸?“W?‘œ’†æoq?‘œ
        Block=image_double_pad(i-len_m:i+len_m,j-len_n:j+len_n);
        %Å¬??”g        
         result_Min(i-len_m,j-len_n)=min(min(Block));        
    end
end


% ---------??‘œg—p’†??”g--------------------
result_Mid = medfilt2(image_double);




% ?¦?‰Ê
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