function wsat = wsat(img)
r = double(img(:, :, 1));
g = double(img(:, :, 2));
b = double(img(:, :, 3));
l = r * .3 + g * .59 + b * .11;
wsat = (r - l).^2 + (g - l).^2 + (b - l).^2;
wsat = sqrt(wsat ./ 3);
end
