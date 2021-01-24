hsv = rgb2hsv(img);
subplot(3,2,1);
imagesc(hsv(:,:,3));
title("Value channel");
axis tight;
axis equal;
subplot(3,2,2);
imhist(hsv(:,:,3));
title("Value channel");
subplot(3,2,3);
imagesc(hsv(:,:,2));
title("Saturation channel");
axis tight;
axis equal;
subplot(3,2,4);
imhist(hsv(:,:,2));
title("Saturation channel");
subplot(3,2,5);
imagesc(hsv(:,:,1));
cmap = hsv2rgb([[0:1/255:1]',ones(256,2)]);
colormap(gca,cmap);
title("Hue channel");
axis tight;
axis equal;
subplot(3,2,6);
imhist(round(hsv(:,:,1)*255)+1,cmap);
title("Hue channel");