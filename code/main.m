clear all

%建议用第一张图进行测评，最终gamma校正的数据保存在input1.mat，锐化的数据保存在input2.mat中
im = imread('7.jpg');
% subplot(2,2,1);
% imshow(im);
% xlabel('origin image');

% 红色通道补充
im1 = redCompensate(im,5);
subplot(2,2,1)
imshow(im1);
xlabel('red channel compensate')

% 蓝色通道补充，在浑浊水域或者高水位或者浮游生物的大量存在，导致蓝色通道衰减强烈时，对蓝色通道进行补充
%im1 = blueCompensate(im1);
%subplot(2,3,3)
%imshow(im1);
%xlabel('blue channel compensate')

% 灰度世界变换
im2 = grayWorld(im1);
subplot(2,2,2)
imshow(im2);
xlabel('white balance')

% 伽马校正
im3 = gammaCorrection(im2,1,2);
subplot(2,2,3)
imshow(im3);
xlabel('gamma correction');
%save('input1.mat','im3');
imwrite(im3,'result7_input1.jpg');

% 锐化
im4 = sharp(im2);
subplot(2,2,4)
imshow(im4);
xlabel('sharp')
%save('input2.mat','im4');
imwrite(im4,'result7_input2.jpg');

