function [ out_image ] = GetBlobsKernel( image )

%GetBlobsKernel Returns a matrix with points containing centers of blobs1;

radius = 12*sqrt(2);
% Get the minimum dimension of the image and use that as the maximum radius
minDimension = min(size(image));
%while(radius < minDimension)
    sigma = radius/sqrt(2);
    filter_size = floor(sigma*6);
    if(mod(filter_size, 2) == 0) % even
        filter_size = filter_size + 1;
    end
    filter = fspecial('log', filter_size, sigma);
    image_f = imfilter(image, filter, 'replicate');
    image_f2 = (sigma*sigma)*image_f;
    image_f3 = (image_f2 .^ 2) .^ .5;
    radius = radius * 2;
%end

out_image = image_f3;

end

