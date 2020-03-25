% lab05.m
% Parth Ray

clear;
close all;
format short;
format compact;

%%p01
fplot(@(x) ((x + 5)^2) / (4 + 3*x^2), [-3, 5]);
axis([-3, 5, 0, 7]);
xlabel("x");
ylabel("y");
title("p01 Parth Ray");

%%p02
figure;
fplot(@(x) 5*sin(x) / (x + exp(-.75*x)), [-5, 10]);
xlabel("x");
ylabel("y");
title("p02 Parth Ray");

%%p03
figure;
subplot(2, 1, 1);
fplot(@(x) (x + 1)*(x - 2)*(2*x - .25) - exp(x));
axis([0, 3, -10, 5]);
xlabel("x");
ylabel("y");
title("p03a Parth Ray");
subplot(2, 1, 2);
fplot(@(x) (x + 1)*(x - 2)*(2*x - .25) - exp(x));
axis([-3, 6, -100, 50]);
xlabel("x");
ylabel("y");
title("p03b Parth Ray");

%%p04
figure;
fplot(@(x) sqrt(abs(cos(3*x))) + (sin(4*x))^2, [-2, 2]);
xlabel("x");
ylabel("y");
title("p04 Parth Ray");

%%p05
figure;
fplot(@(x) exp(2*sin(.4*x))*5*cos(4*x), [-20, 30]);
xlabel("x");
ylabel("y");
title("p05 Parth Ray");

%%p07
figure;
x1 = linspace(-4, -1.1, 100);
x2 = linspace(-0.9, 3, 100);
y1 = (x1.^2 + 3*x1 + 3) ./ (0.8 * (x1 + 1));
y2 = (x2.^2 + 3*x2 + 3) ./ (0.8 * (x2 + 1));
plot(x1, y1);
hold on;
plot(x2, y2);
axis([-4, 3, -15, 15]);
xlabel("x");
ylabel("y");
title("p07 Parth Ray");
clear x1 x2 y2 y1;

%%p08
figure;
x = @(t) (3 * t) / (1 + t^3);
y = @(t) (3 * t^2) / (1 + t^3);
fplot(x, y, [-30, -1.6]);
hold on;
fplot(x, y, [-0.6, 40]);
axis([-2.5, 2, -2.5, 2]);
xlabel("x");
ylabel("y");
title("p08 Parth Ray");
clear x y

%%p12
figure;
fplot(@(x) 693.8 - 68.8*cosh(x /99.7), [-300, 300]);
ylabel("Height (ft)");
xlabel("Length (ft)");
title("p12 Parth Ray");

%%p18
figure;
subplot(3, 1, 1);
fplot(@(t) .41*t^4 - 10.8*t^3 + 64*t^2 - 8.2*t + 4.4, [0, 8]);
ylim([0, 500]);
xlabel("Time (s)", 'FontSize', 8);
ylabel("Pos (ft)", 'FontSize', 8);
title("p18 Parth Ray");
subplot(3, 1, 2);
fplot(@(t) 1.64*t^3 - 32.4*t^2 + 128*t - 8.2, [0, 8]);
ylim([-500, 500]);
xlabel("Time (s)", 'FontSize', 8);
ylabel("Vel (ft/s)", 'FontSize', 8);
subplot(3, 1, 3);
fplot(@(t) 4.92*t^2 - 64.8*t + 128, [0, 8]);
ylim([-200, 200]);
xlabel("Time (s)", 'FontSize', 8);
ylabel("Acc (ft/s^2)", 'FontSize', 8);