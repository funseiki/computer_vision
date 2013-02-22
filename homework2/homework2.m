%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vinit Shah
% CS 543 Homework 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Get the image
Original = imread('Images/Test/butterfly.jpg');
GrayScaled = rgb2gray(Original);
image = im2double(GrayScaled);

% Generate a Laplacian of Gaussian filter

image_f3 = GetBlobsKernel(image);

figure, imshow(mat2gray(image_f3)); title('Normalized squared');

tic
%image_f4 = nmsupnl(image_f3, 12);
toc

%figure, imshow(mat2gray(image_f4)); title('Non Max suppression');
% Build a Laplacian scale space, starting with an initial scale and going
% for n iterations:
%   1. Filter image with scale-normalized Laplacian at current scale
%   2. Save square of Laplacian response for current level of scale space
%   3. Increase scale by a factor of k

% Perform nonmaximum suppression in scale space

% Display resulting circles at their characteristic scales