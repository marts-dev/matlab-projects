function matrix=sparse2matrix(cellvec)
    matrix=ones(cellvec{1}(1),cellvec{1}(2)).*cellvec{2};
    for i=3:length(cellvec)
        row=cellvec{i}(1);
        col=cellvec{i}(2);
        matrix(row,col)=cellvec{i}(3);
    end
end