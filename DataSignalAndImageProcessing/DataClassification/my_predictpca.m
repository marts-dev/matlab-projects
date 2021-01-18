function [class, score] = my_predictpca(mdl, data)
    % Identify number of points to classify
    [r, c] = size(data);
    class = zeros(r,1);
    score = zeros(r,1);
    for i=1:r
        for j=1:length(mdl.class)
            mdscore(j) = mahalanobis(mdl.class(j), data(i,:));
        end
        [score(i), class(i)] = min(mdscore);
    end
end