function distance=get_distance(point1, point2)
    [dist, txt]=xlsread("Distances.xlsx");
    row=find(cellfun('length',regexp(txt(1,:),point1)) == 1,1);
    col=find(cellfun('length',regexp(txt(:,1),point2)) == 1,1);
    if (isempty(row) | isempty(col))
        distance=-1;
        return
    end
    distance=dist(row-1, col-1);
end

distance = get_distance('Seattle, WA','Miami, FL')