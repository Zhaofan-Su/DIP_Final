function [nw1, nw2] = norm_weight(w1, w2, w3, w4, w5, w6)
nw1 = w1 + w2 + w3;
nw2 = w4 + w5 + w6;
w = nw1 + nw2;
nw1 = (nw1 + 0.1) ./ (w + 0.2);
nw2 = (nw2 + 0.1) ./ (w + 0.2);
end

