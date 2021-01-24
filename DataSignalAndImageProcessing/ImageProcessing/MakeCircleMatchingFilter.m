function [filter,xc,yc] = MakeCircleMatchingFilter(diameter,W)
% initialize filter
filter = zeros(W);
% define coordinates for the center of the WxW filter
yc = (W+1)/2;
xc = (W+1)/2;
radius = diameter/2;
% Use double-for loops to check if each pixel lies in the foreground of the circle
for i=1:length(filter)
    for j=1:width(filter)
        if ((i-yc)^2+(j-xc)^2) <= (radius^2)
            filter(i,j) = 1;
        end
    end
end

end
