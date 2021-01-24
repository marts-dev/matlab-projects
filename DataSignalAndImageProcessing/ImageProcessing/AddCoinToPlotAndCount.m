function [coinvalue,x_plot,y_plot,col] = AddCoinToPlotAndCount(x,y,cls)
% initialize radians for defining x_plot and y_plot using cos and sin functions
rads = 0:2*pi/32:2*pi;
% initialize parameters for radius and color of circle for each type of coin
coin_r = [22,30,40];
colors = ['r','g','m'];
% use if-elseif statement to define x_plot, y_plot, col
%   when cls is 1, we found a dime
%   when cls is 2, we found a nickel
%   when cls is 3, we found a quarter
switch cls
    case 1
        coinvalue = 10;
        x_plot = coin_r(1)*cos(rads)+x;
        y_plot = coin_r(1)*sin(rads)+y;
        col = colors(1);
    case 2
        coinvalue = 5;
        x_plot = coin_r(2)*cos(rads)+x;
        y_plot = coin_r(2)*sin(rads)+y;
        col = colors(2);
    case 3
        coinvalue = 25;
        x_plot = coin_r(3)*cos(rads)+x;
        y_plot = coin_r(3)*sin(rads)+y;
        col = colors(3);
end
plot(x_plot,y_plot,col);
end
