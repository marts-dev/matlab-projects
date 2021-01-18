function mdl = my_fitsvm(D, class, kernelscale)
    class_labels = unique(class);
    numClasses = length(class_labels);
    for i=1:numClasses
        s = class == class_labels(i);
        mdl.class(i).svm = fitcsvm(D,s,"KernelFunction","rbf","KernelScale",kernelscale);
    end
end