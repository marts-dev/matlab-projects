% Recursive function optimized using vectorization
function y=reversal(v)
    if (length(v) > 1)
        half=round(length(v)/2);
        y=[reversal(v(half+1:end)) reversal(v(1:half))];
    else
        y=v;
    end
end