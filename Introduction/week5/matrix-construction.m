function T = trio(n,m)
top=ones(n,m);
middle=ones(n,m).*2;
bottom=ones(n,m).*3;
T=[top;middle;bottom];
end