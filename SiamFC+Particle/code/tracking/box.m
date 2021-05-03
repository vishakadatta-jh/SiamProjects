function pixel = box(image,groundtruth_region)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

[cx, cy, w, h] = get_axis_aligned_BB(groundtruth_region);

a = [cx cy w h];
xLeft = cx - w;
yBottom = cy - h/4;
a = [xLeft, yBottom, w, h/4];
imshow(image);
hold on
plot(cx,cy,'r*');
rectangle('Position', a, 'EdgeColor', 'y', 'LineWidth', 4);
hold off
pixel = (impixel(image,cx,cy))';
end

