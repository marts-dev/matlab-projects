%Fibonacci  Profiler
function [f trace]=fibo_trace(n, v)
    trace=[v n];
    if n<=2
        f=1;
    else
        [f1 trace] =fibo_trace(n-2, trace);
        [f2 trace] =fibo_trace(n-1, trace);
        f=f1+f2;
    end

%To test
[f trace] = fibo_trace(10, []);
histogram(trace)