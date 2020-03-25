% lab09.m
% Parth Ray

clear;
format compact;
format short;
close all;

%%p01
F =  @(x) exp(.5*x) - sqrt(x) - 3;
fplot(F, [1 5]);
ylim([-3 7]);
hold on;
x0 = fzero(F, 3);
y0 = F(x0);
plot(x0, y0, "or");
t = "(" + num2str(x0, "%.4f") + ", " + num2str(y0, "%.0f") + ")";
text(x0 + .07, y0, t, "FontSize", 8);
title("p01 Parth Ray");
xlabel("x");
ylabel("y");
p01r = [x0];
display(p01r);
clear F x0 y0 t;

%%p02
figure;
F =  @(x) 3 + (3*sin(x)) - (0.5*x.^3);
fplot(F, [0 5]);
ylim([-70 10]);
hold on;
x0 = fzero(F, 2);
y0 = F(x0);
plot(x0, y0, "or");
t = "(" + num2str(x0, "%.4f") + ", 0"  + ")";
text(x0 + .1, y0 + .5, t, "FontSize", 8);
title("p02 Parth Ray");
xlabel("x");
ylabel("y");
p02r = [x0];
display(p02r);
clear F x0 y0 t;

%%p03
figure;
F = @(x) x.^3 - 8*x.^2 + 17*x + sqrt(x) - 10;
fplot(F, [.5 5]);
ylim([-5 3]);
title("p03 Parth Ray");
xlabel("x");
ylabel("y");
hold on;

x1 = fzero(F, 1);
y1 = F(x1);
plot(x1, 0, "or");
t1 = "(" + num2str(x1, "%.5f") + ", 0"  + ")";
text(x1 + .1, y1, t1, "FontSize", 8);
hold on;

x2 = fzero(F, 2.5);
y2 = F(x2);
plot(x2, 0, "or");
t2 = "(" + num2str(x2, "%.4f") + ", 0"  + ")";
text(x2 + .1, y2, t2, "FontSize", 8);
hold on;

x3 = fzero(F, 4.5);
y3 = F(x3);
plot(x3, 0, "or");
t3 = "(" + num2str(x3, "%.4f") + ", 0"  + ")";
text(x3 + .1, y3, t3, "FontSize", 8);

p03r = [x1, x2, x3];
display(p03r);
clear F t1 t2 t3 x1 x2 x3 y1 y2 y3;

%%p04
figure;
F = @(x) x.^2 - 5*x.*sin(3*x) + 3;
fplot(F, [0 6]);
title("p04 Parth Ray");
xlabel("x");
ylabel("y");
ylim([-10 70]);
hold on;

x1 = fzero(F, 2);
y1 = F(x1);
plot(x1, 0, "or");
t1 = "(" + num2str(x1, "%.4f") + ", 0"  + ")";
text(x1 - .8, y1, t1, "FontSize", 8);
hold on;

x2 = fzero(F, 3);
y2 = F(x2);
plot(x2, 0, "or");
t2 = "(" + num2str(x2, "%.4f") + ", 0"  + ")";
text(x2 + .1, y2, t2, "FontSize", 8);

p04r = [x1 x2];
display(p04r);
clear F t1 t2 x1 x2 y1 y2;

%%p09
figure;
F = @(x) (x-2)./((x-2).^4 + 2).^1.8;
fplot(F, [0 9]);
title("p09 Parth Ray");
xlabel("x");
ylabel("y");
ylim([-.2 .2]);
hold on;

xmin = fminbnd(F, 1, 2);
ymin = F(xmin);
plot(xmin, ymin, "or");
tmin = "(" + num2str(xmin, "%.4f") + ", " + num2str(ymin, "%.5f") + ")";
text(xmin + .1, ymin, tmin, "FontSize", 8);
hold on;

xmax = abs(fminbnd(@(x) -F(x), 2, 3));
ymax = abs(F(xmax));
plot(xmax, ymax, "or");
tmax = "(" + num2str(xmax, "%.4f") + ", " + num2str(ymax, "%.5f") + ")";
text(xmax + .1, ymax, tmax, "FontSize", 8);

p09xmax = xmax;
p09ymax = ymax;
p09xmin = xmin;
p09ymin = ymin;
display(p09xmin);
display(p09ymin);
display(p09xmax);
display(p09ymax);

clear xmin ymin xmax ymax F tmin tmax;

%%p16
F = @(x) (2*(x.^2))./sqrt(1 + x);
p16 = integral(F, 1, 6);
display(p16);
clear F;

%%p17
F = @(x) (cos(2*x))./x;
p17 = integral(F, 1, 2);
display(p17);
clear F;

%%p18
F = @(x) (exp(2*x))./x;
p18 = integral(F, 1, 2);
display(p18);
clear F;

%%p19
F = @(x) exp(-(x).^2);
p19 = integral(F, -1, 1);
display(p19);
clear F;

%%p20
t = [0:7];
v = [0 14 39 69 95 114 129 139] * 1.46667;
p20 = round(trapz(t, v), 1);
display(p20);
clear t v;

%%p24
w = [0 40 80 120 160 200 240 280 320 360 400, 440];
h = [0 40 96 140 147 121 117 139 140 62 18, 0];
p = polyfit(w, h, 3);
F = @(x) p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4);
p24 = round(integral(F, 0, 400));
display(p24);
clear h w p F;

%%p29
figure;
F = @(x, y) sqrt(x) + (x.^2 .* sqrt(y))/4;
[x, y] = ode45(F, [1 5], 1);
plot(x, y);
title("p29 Parth Ray");
xlabel("x-axis");
ylabel("y-axis");
ylim([0 60]);
clear x y F;

%%p30
figure;
F = @(x, y) sqrt(x.*y) - .5*y.*(exp(-.1*x));
[x, y] = ode45(F, linspace(0, 4, 200), 6.5);
plot(x, y);
title("p30 Parth Ray");
xlabel("x-axis");
ylabel("y-axis");
ylim([5 10]);
clear x y F;

%%p31
figure;
F = @(t, y) 80*exp(-1.6*t) .* cos(4*t) - .4*y;
[t, y] = ode45(F, linspace(0, 4, 200), 0);
plot(t, y);
title("p31 Parth Ray");
xlabel("x-axis");
ylabel("y-axis");
ylim([0 15]);
clear t y F;

%%p38
figure;
F = @(t, A) .8*A.*(1 - (A/60)^.25);
[t, A] = ode45(F, linspace(0, 30, 200), 1);
plot(t, A);
title("p38 Parth Ray");
xlabel("x-axis");
ylabel("y-axis");
ylim([0 60]);
clear t A F;

who;