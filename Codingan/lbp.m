function filtered_img = lbp(img)
%% LBP image descriptor
[nrows, ncols] = size(img);

filtered_img = zeros(nrows, ncols, 'uint8');
for j = 3:ncols-2
    for i = 3:nrows-2
        nhood = nhood8(i, j);
        for k = 1:size(nhood, 1)
            filtered_img(i, j) = filtered_img(i, j) + ...
                (int8(img(nhood(k, 1), nhood(k, 2)))-int8(img(i, j)) >= 0) * 2^(k-1);
        end
    end
end

end

function idx = nhood8(i, j)
%% Computes the 8-neighborhood of a pixel
idx = [
    i-2, j-2;
    i-2, j;
    i-2, j+2;
    
    i, j-2;
    i, j+2;

    i+2, j-2;
    i+2, j;
    i+2, j+2
];

end
