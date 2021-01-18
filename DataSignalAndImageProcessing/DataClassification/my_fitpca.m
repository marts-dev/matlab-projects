function mdl = my_fitpca(D, class)
    %Identify number of classes since pca will be aplied for data of
    %each class
    class_labels = unique(class);
    numClasses = length(class_labels);
    
    for i=1:numClasses
        [eigvect, ~, eigvals, ~,~, mu] = pca(D(class==class_labels(i), :));
        mdl.class(i).eigvect = eigvect';
        mdl.class(i).eigvals = eigvals;
        mdl.class(i).mu = mu;
    end
end

