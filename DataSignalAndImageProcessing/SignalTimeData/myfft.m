function [yfft,f] = myfft(y,Fs)
    yfft = fft(y);
%trim away the redundant part
    yfft = yfft(1:ceil((length(y)+1)/2));
%compute the frequencies to which each fft entry corresponds.
    sampnum = [0:(length(yfft)-1)]';
    f = sampnum*Fs/length(y);
    %Recall the units of Fs is samples per second, in other words, hertz 
    % times samples and length y is the number of samples, so we convert 
    % our sample numbers to hertz, which are our frequencies in f in hertz
end