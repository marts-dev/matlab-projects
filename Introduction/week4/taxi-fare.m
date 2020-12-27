function fare = taxi_fare(d, t)
d_ceil = ceil(d);
total = 0;
total = total+5;
d_ceil = d_ceil - 1;
total = total + (d_ceil*2);
total = total + (ceil(t)*0.25);
fare = total;
end