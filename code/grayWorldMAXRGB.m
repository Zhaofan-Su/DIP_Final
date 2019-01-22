function ret = grayWorldMAXRGB( im )

% 暂时未用
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
im = im2double(im);
r=im(:,:,1);
g=im(:,:,2);
b=im(:,:,3);

avgR = mean(mean(r));
avgG = mean(mean(g));
avgB = mean(mean(b));

% avgRGB = [avgR avgG avgB];
grayValue = (avgR + avgG + avgB)/3;
% scaleValue = grayValue./avgRGB;

% ret(:,:,1) = scaleValue(1) * r;
% ret(:,:,2) = scaleValue(2) * g;
% ret(:,:,3) = scaleValue(3) * b;
if avgR == 0
    retR=r;
else
    retR=(grayValue/avgR).*r;
end

if avgG == 0
    retG=g;
else
    retG=(grayValue/avgG).*g;
end

if avgB == 0
    retB=b;
else
    retB=(grayValue/avgB).*b;
end

maxRGB = [max(max(retR)) max((max(retG))) max(max(retB))];

factor = max(maxRGB);
if factor > 1
    retR = retR./factor;
    retG = retG./factor;
    retB = retB./factor;
end

ret(:,:,1)=retR;
ret(:,:,2)=retG;
ret(:,:,3)=retB;
    
end

