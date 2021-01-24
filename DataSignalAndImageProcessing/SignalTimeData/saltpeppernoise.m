function spnoise = saltpeppernoise(sprate, t, fs)
    spnoise = zeros(size(t));
    [~, index] = sort(rand(size(t)));
    
    index = index(1:floor(sprate/fs*length(t)));
    spnoise(index) = randn(size(index));
end