function [a,b,c,d] = corners(M)
a = M(1,1);
b = M(1,end);
d = M(end, end);
c = M(end, 1);
end