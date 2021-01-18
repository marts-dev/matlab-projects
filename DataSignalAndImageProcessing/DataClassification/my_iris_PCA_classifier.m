function class = my_iris_PCA_classifier(feat)
    class = zeros(size(feat,1), 1);
    b=-1.5;
    m=1;
    for i=1:size(feat,1)
        if feat(i,1) < -1.5
            class(i) = 1;
        elseif feat(i,1)*m+b > feat(i,2)
            class(i) = 3;
        else
            class(i) = 2;
        end
    end
end

