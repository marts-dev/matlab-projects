function output=echo_gen(input, fs, delay, amp)
    if (isrow(input))
        input=input';
    end
    amped=input*amp;
    dp=round(fs*delay);
    echo=[zeros(dp,1);amped];
    output=input+echo(1:length(input), 1);
    output=[output;echo(length(input)+1:end, 1)];
    max_amp=max(abs(output));
    if (max_amp > 1.0)
        output=output./max_amp;
    end
end

% Load splat which adds y and Fs to the workspace
load splat
% Call echo_gen to create the new audio data
output = echo_gen(y, Fs, 0.25, 0.6);
% The time between points is 1/Fs;
dt = 1/Fs;
% Plot the original sound
plot(0:dt:dt*(length(y)-1), y)
% Plot the new data to see visualize the echo
figure
plot(0:dt:dt*(length(output)-1), output)

% sound (output, Fs) % Uncomment in MATLAB to listen to the new sound data