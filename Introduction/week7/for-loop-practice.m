function summa=halfsum(M)
total=0;
[row, col] = size(M);
for r=1:row
   for c=r:col
      total=total + M(r,c);
   end
end
summa=total;