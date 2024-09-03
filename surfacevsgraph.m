% Simple code plotting two different structures to highlight the difference
% between a surface and a graph


% A sphere is a surface
sphere
axis equal
grid off
axis off


% This is a graph because Z can be expressed as a function of X and Y
x = -1:.05:1;
y = x;
[X,Y] = meshgrid(x,y);

Z = exp(-X.^2-Y.^2);

surf(X,Y,Z);
grid off;
axis off;