function ret = grayWorld( im )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
r=im(:,:,1);
g=im(:,:,2);
b=im(:,:,3);

avgR = mean(mean(r));
avgG = mean(mean(g));
avgB = mean(mean(b));

avgRGB = [avgR avgG avgB];
grayValue = (avgR + avgG + avgB)/3;
scaleValue = grayValue./avgRGB;

ret(:,:,1) = scaleValue(1) * r;
ret(:,:,2) = scaleValue(2) * g;
ret(:,:,3) = scaleValue(3) * b;
end