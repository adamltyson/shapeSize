function [shapetype, shapecolour, colourtext] = displayinfo(shape, colour)
%displayinfo.m
%assigns variables for displayinstructions.m and displaystim.m


if shape==1; % for each shape
    shapetype='circle'; %assign string info for instructions
elseif shape==2
    shapetype='square'; %assign string info for instructions
elseif shape==3;
    shapetype='triangle'; %assign string info for instructions
end
 

if colour==1 %for each colour
    shapecolour=[255 0 0]; %set colour of shape to red
    colourtext='red'; %assign string info for instructions
elseif colour==2
    shapecolour=[0 255 0];%set colour of shape to green
    colourtext='green';%assign string info for instructions
elseif colour==3
       shapecolour=[0 0 255]; %set colour of shape to blue
    colourtext='blue';%assign string info for instructions
end

end

