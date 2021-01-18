function class = my_iris_classifier(feat)
    class = zeros(size(feat,1), 1);
    for i=1:size(feat,1)
        if feat(i,1)>6
            class(i) = 3;
        elseif feat(i,2)>3
            class(i) = 1;
        else
            class(i) = 2;
        end
    end
end

