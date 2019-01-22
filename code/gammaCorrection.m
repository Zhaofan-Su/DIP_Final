function [ res ] = gammaCorrection( im,a,gamma )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

im = im2double(im);
r=im(:,:,1);
g=im(:,:,2);
b=im(:,:,3);

res_r = a *(r .^ gamma);
res_g = a *(g .^ gamma);
res_b = a *(b .^ gamma);

res(:,:,1) = res_r;
res(:,:,2) = res_g;
res(:,:,3) = res_b;


end

