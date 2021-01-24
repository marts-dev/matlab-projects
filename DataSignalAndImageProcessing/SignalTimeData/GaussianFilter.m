function y = GaussianFilter(x, sigma)
% Compute W by rounding up 6*sigma
W = round(6*sigma);
% Use fspecial to create our Gaussian filter
fgauss = fspecial('gaussian', [1,W], sigma);
% convolve the signal with the filter
y=conv(x,fgauss,'same');