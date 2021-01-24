function [y,Fs_min] = IsNyquistSatisfied(fmax,Fs)
    if Fs > 2*fmax
        y = true;
        Fs_min = 2*fmax;
    else
        y = false;
        Fs_min = 2*fmax;
    end
end