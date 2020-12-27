A = [1:5; 6:10; 11:15; 16:20];
row = ones(1, height(A))
col = ones(width(A), 1)
[size(row), size(A), size(col)]
result = row*A*col