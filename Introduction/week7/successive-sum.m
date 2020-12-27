function [summa, index]=max_sum(v,n)
if (n>length(v))
    summa=0;
    index=-1;
    return;
end
summa=sum(v(1:n));
index=1;
for i=2:length(v)-n+1
    temp_sum=sum(v(i:(i+n-1)));
    if (temp_sum>summa)
        summa=temp_sum;
        index=i;
    end
end
