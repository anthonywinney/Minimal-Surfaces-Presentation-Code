% Plotting a paraboloid and showing its principal curvatures via circles in
% the x-y plane

x = -1:.05:1;
y = x;

[X,Y] = meshgrid(x,y);

% Paraboloid aas a function of x and y
Z = X.^2/20 + Y.^2/5;

% Generating independent variables twice, for each principal axis
xlong = -1:.05:1;
ylong = xlong.*0;
zlong = xlong.^2./20 + ylong.^2./5;

yshort = -1:.05:1;
xshort = yshort.*0;
zshort = xshort.^2./20 + yshort.^2./5;

% Plotting the circles, the radii of which correspond to the principal
% curvatures
angles = 0:.05:2*pi;
xCircleLarge = .8 * cos(angles);
yCircleLarge = .8 * sin(angles);
zCircleLarge = xCircleLarge .* 0;

xCircleSmall = .2 * cos(angles);
yCircleSmall = .2* sin(angles);
zCircleSmall = zCircleLarge;


% Plotting the paraboloid
surf(X,Y,Z,'DisplayName','');
title('Surface plot: $\frac{x^2}{20}+\frac{y^2}{5}=z$','Interpreter','Latex','FontSize',20)


% Plotting the circles
wide = plot3(xlong,ylong,zlong,'LineWidth',2.0,'DisplayName','Wide principal axis');
hold on;
narrow = plot3(xshort,yshort,zshort,'LineWidth',2.0,'DisplayName','Narrow principal axis');
plot3(xCircleLarge,yCircleLarge,zCircleLarge,'Color',get(wide,'Color'),'LineWidth',.8);
plot3(xCircleSmall,yCircleSmall,zCircleSmall,'Color',get(narrow,'Color'),'LineWidth',.8);

hold off;

legend([wide,narrow], 'FontSize',15);