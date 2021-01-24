function y = BandPassFilter(x, Fs, freq_range, W)
    %Create the filter using 'fir1'
    fltr = fir1(W,freq_range/(Fs/2),'high');
    %Apply the filter using 'conv'
    y = conv(x,fltr,'same')
end