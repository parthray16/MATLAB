% lab09.m
% Parth Ray

clear;
format compact;
close all;

%%p01
t = linspace(0, 30);
x = (4 - .1*t).*sin(.8*t);
y = (4 - .1*t).*cos(.8*t);
z = .4*t.^(3/2);
plot3(x, y, z);
title("p01 Parth Ray");
xlabel("X");
ylabel("Y");
zlabel("Z");
zlim([0, 70]);
clear t x y z;

%%p04
figure;
x = linspace(-3, 3);
y = linspace(-3, 3);
[x, y] = meshgrid(x, y);
z = ((x.^2) / 3) + 2*sin(3*y);
mesh(x, y, z);
title("p04 Parth Ray");
xlabel("x");
ylabel("y");
zlabel("z");
axis([-3 3 -3 3 -2 5]);
clear x y z

%%p05
figure;
x = linspace(-2, 2);
y = linspace(-2, 2);
[x, y] = meshgrid(x, y);
z = .5*abs(x) + .5*abs(y);
surfl(x, y, z);
title("p05 Parth Ray");
xlabel("x");
ylabel("y");
zlabel("z");
axis([-2 2 -2 2 0 2]);
clear x y z

%%p06
figure;
x = linspace(-10, 10);
y = linspace(-10, 10);
[x, y] = meshgrid(x, y);
R = sqrt(x.^2 + y.^2);
z = sin(R) ./ R; 
surfl(x, y, z);
title("p06 Parth Ray");
xlabel("x");
ylabel("y");
zlabel("z");
axis([-10 10 -10 10 -0.4 1]);
clear x y z R

%%p08
figure;
x = linspace(-3, 3);
y = linspace(-3, 3);
[x, y] = meshgrid(x, y);
w = 0.01*(x.^2 - y.^2);
surf(x, y, w);
title("p08 Parth Ray");
xlabel("x");
ylabel("y");
zlabel("w");
axis([-3 3 -3 3 -0.1 0.1]);
clear x y w
