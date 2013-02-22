function result = nmsupnl(im, siz)
%NMSUPNL Non-Maxima SUPpression with NLfilter
% input : 
%         im   input image
%        siz   size of the suppression window
% output:
%     result   output image
 
max2 = @(x) max(max(x));
immax = nlfilter(im, [siz siz], max2);
im(im ~= immax) = 0;
result = im;

end

