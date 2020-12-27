function output=blur(img, w)
    step=floor((2*w+1)/2);
    [row, col]=size(img);
    output=zeros(row,col);
    for i=1:row
        for j=1:col
            up=i-step;
            down=i+step;
            left=j-step;
            right=j+step;
            if (up<1)
                up=1;
            end
            if (down>row)
                down=row;
            end
            if (left<1)
                left=1;
            end
            if (right>col)
                right=col;
            end
            submat=img([up:down],[left:right]);
            output(i,j)=mean(submat,"all");
        end
    end
    output=uint8(output);
end

img = imread('vandy.png');
output = blur(img,2);
imshow(output);