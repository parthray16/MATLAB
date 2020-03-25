% lab09.m
% Parth Ray

clear;
format compact;
format short;
close all;

%%p01
syms x;
s1 = (x^2)*(x-6) + 4*(3*x - 2);
s2 = (x+2)^2 - 8*x;
p01a = simplify((s1*s2));
display(p01a);
ezplot(p01a, [-6 6]);
ylim([-500 100]);
xlabel("x");
ylabel("y");
hold on;
p01b = simplify(s1/s2);
display(p01b);
ezplot(p01b, [-6 6]);
hold on;
p01c = simplify(s1 + s2);
display(p01c);
ezplot(p01c, [-6 6]);
title("p01 Parth Ray");
p01d = subs(p01c, x, 5);
display(p01d);
clear s1 s2 x;

%%p02
figure;
syms x;
s1 = x * (x^2 + 6*x + 12) + 8;
s2 = (x-3)^2 + 10*x - 5;
p02a = simplify((s1*s2));
display(p02a);
ezplot(p02a, [-6 6]);
xlabel("x");
ylabel("y");
hold on;
p02b = simplify(s1/s2);
display(p02b);
ezplot(p02b, [-6 6]);
hold on;
p02c = simplify(s1 + s2);
display(p02c);
ezplot(p02c, [-6 6]);
ylim([-300 300]);
title("p02 Parth Ray");
p02d = subs(p02c, x, 3);
display(p02d);
clear s1 s2 x;

%%p03
syms x y;
s = x + sqrt(x) * y^2 + y^4;
t = sqrt(x) - y^2;
p = simplify(s * t);
p03 = subs(p, [x y], [9 2]);
display(p03);
clear s x y p t

%%p04
syms x;
p04a = expand((x+2)*(x+.5)*(x-2)*(x-4.5));
display(p04a);
p04b = factor(x^6 - 6.5*x^5 - 58*x^4 + 167.5*x^3 + 728*x^2 - 890*x - 1400);
display(p04b);
clear x

%%p05
syms x y
p05a = simplify(4*sin(x)*cos(x) - 8*((sin(x))^3)*cos(x));
display(p05a);
p05b = simplify((1/2) * (cos(x - y) + cos(x + y)));
display(p05b);
clear x y

%%p06
syms x y z
p06a = simplify((3*tan(x) - (tan(x))^3) / (1 - 3*(tan(x))^2));
display(p06a);
p06b = simplify(sin(x)*cos(y)*cos(z) + cos(x)*sin(y)*cos(z) + ... 
        cos(x)*cos(y)*sin(z) - sin(x)*sin(y)*sin(z));
display(p06b);
clear x y z

%%p07
figure;
syms x y t;
x = 3*t / (1 + t^3);
y = 3*t^2 / (1 + t^3);
p07a = simplify(x^3 + y^3);
display(p07a);
p07b = 3 * x * y;
display(p07b);
clear x y;
syms x y;
ezplot(x^3 + y^3 - 3*x*y);
xlabel("x");
ylabel("y");
axis([-2 2 -3 2]);
title("p07 Parth Ray");
clear x y t

%%p08
syms R;
s1 = 1050 == pi*10*R^2 + (2/3)*pi*R^3;
p08 = double(solve(s1, R, "Real", true));
display(p08);
clear R s1

%%p10
figure;
syms x y;
s1 = (((x-1)^2) / 6^2) + (y^2 / 3^2) - 1;
s2 = ((x+2)^2 / 2^2) + ((y-5)^2 / 4^2) - 1;
ezplot(s1, [-6 8 -6 10]);
xlabel("x");
ylabel("y");
hold on;
ezplot(s2, [-6 8 -6 10]);
title("p10 Parth Ray");
hold on;
int = solve(s1, s2, "Real", true);
X = double(int.x);
Y = double(int.y);
plot(X,Y, "or");
t = "(" + num2str(X, "%.2f") + ", " + num2str(Y, "%.2f") + ")";
text(X + .2, Y - .1, t, "FontSize", 8);
clear x y s1 s2 X Y int t

%%p16
syms x;
s1 = x^3 / (sqrt(1- x^2));
s2 = x^2 * cos(x);
p16a = int(s1, x);
display(p16a);
p16b = int(s2, x);
display(p16b);
clear x s1 s2

%%p17
figure;
syms x;
s = (cos(x))^2 / (1 + (sin(x))^2);
ezplot(s, [0 pi]);
xlabel("x");
ylabel("y");
title("p17 Parth Ray");
hold on;
p17 = double(int(s, [0 pi]));
display(p17);
x0 = double(solve(s));
plot(x0, 0, "or");
t = "(" + num2str(x0, "%.2f") + ", 0.00) min";
text(x0 + .03, -0.03, t, "FontSize", 10);
clear s x t x0

who;