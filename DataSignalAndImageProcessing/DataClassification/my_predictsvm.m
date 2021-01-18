function class = my_predictsvm(mdl, data)
    [r, c] = size(data);
    for j=1:length(mdl.class)
        [~, mdlscores] = predict(mdl.class(j).svm, data);
        score(:,j) = mdlscores(:,1);
    end
    [~, class] = min(score');
    class = class';
end