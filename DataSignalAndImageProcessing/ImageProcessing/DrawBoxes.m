function DrawBoxes(boxr, boxc, color)
    if nargin<3
        color='r';
    end
    %0 centered box
    verts_boxc = 7*[-1,1,1,-1,-1];
    verts_boxr = 7*[-1,-1,1,1,-1];
    hold on;
    for i=1:length(boxr)
        plot(boxc(i)+verts_boxc, verts_boxr+boxr(i), color);
    end
    hold off;
end