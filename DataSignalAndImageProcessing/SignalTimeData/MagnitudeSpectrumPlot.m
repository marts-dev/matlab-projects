function MagnitudeSpectrumplot(yfft,f,color)
    if nargin<3
        color="b";
    end
    plot(f,abs(yfft),color);
    xlabel('frequency (Hz)');
    ylabel('|Y(f)|');
    title('Magnitude Spectrum');
end