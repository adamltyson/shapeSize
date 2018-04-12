function [colours, shapes] =set_cols_shapes
%sets the colour and shape data for each possible stimulus type,
% to be passed to the function displaystim

colours(1:3)=1;  %1 for red, 2 for green, 3 for blue
colours(4:6)=2;
colours(7:9)=3;

shapes(1:3:7)=1;  %1 for circle, 2 for square, 3 for triangle
shapes(2:3:8)=2;
shapes(3:3:9)=3;

end

