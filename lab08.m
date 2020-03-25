% lab08.m
% Parth Ray

clear;
format compact;
close all;

%%p01
p = [-.4 0 7 -20.5 -28];
x = linspace(-5, 4, 100);
plot(x, polyval(p, x));
ylim([-120, 80]);
title("p01 Parth Ray");
xlabel("x");
ylabel("y");
clear p x;

%%p02
figure;
plot(linspace(1, 14, 100), polyval([-.001 .051 -.76 3.8 -1.4],... 
    linspace(1, 14, 100)));
title("p02 Parth Ray");
xlabel("x");
ylabel("y");

%%p03
x = [2, 0, 3];
y = [1, 3.5, 5, -16];
p03 = round(conv(x, y));
display(p03);
clear x y

%%p04
figure;
p = conv([1, 1.4], conv([1, -.4], conv([1, .6], [1, -1.4])));
plot(linspace(-1.5, 1.5, 100), polyval(p, linspace(-1.5, 1.5, 100)));
title("p04 Parth Ray");
xlabel("x");
ylabel("y");
clear p

%%p05
p = [-0.6 0 7.7 -8 -24.6 48];
p1 = [-0.6 0 4.1 -8];
[p05q, p05r] = deconv(p, p1); 
display(p05q);
display(p05r);
clear p p1

%%p06
p = [1 -6 13 -12 4];
p1 = [1 -3 0 2];
[p06q, p06r] = deconv(p, p1); 
display(p06q);
display(p06r);
clear p p1

%%p07
p = conv([1 0], conv([1 1], [1, 2]));
p(length(p)) = p(length(p)) - 1716;
r = roots(p);
n = r(r == real(r));
p07 = [n n+1 n+2];
display(p07);
clear r p r n

%%p08
p = conv([1 0], conv([1 2], conv([1 4], [1 6])));
p(length(p)) = p(length(p)) - 13440;
r = roots(p);
n = round(r(r == real(r) & r >= 0));
p08 = [n n+2 n+4 n+6];
display(p08);
clear r p r n

%%p18
figure;
x = [0 2000 5000 7500 10000 20000 26000];
y = [212 210 203 198 194 178 168];
plot(x, y, "og");
hold on;
p = polyfit(x, y, 1);
p18h = p;
display(p18h);
p18T = polyval(p, 16000);
display(p18T);
plot(16000, p18T, "*r");
plot([x(1) x(length(x))], polyval(p, [x(1) x(length(x))]), "b");
title("p18 Parth Ray");
ylabel("T(deg F)");
xlabel("h(ft)");
clear x y p

%%p22
figure;
x = [-5, -3.4, -2.0, -.8, 0, 1.2, 2.5, 4, 5.0, 7, 8.5];
y = [4.4, 4.5, 4, 3.6, 3.9, 3.8, 3.5, 2.5, 1.2, .5, -.2];

subplot(2, 2, 1);
plot(x, y, "ob");
ylim([-2 6]);
hold on;

subplot(2, 2, 2);
plot(x, y, "ob");
ylim([-1 5]);
hold on;

subplot(2, 2, 3);
plot(x, y, "ob");
ylim([-1 5]);
hold on;

subplot(2, 2, 4);
plot(x, y, "ob");
ylim([-1 5]);
hold on;

subplot(2, 2, 1);
p1 = polyfit(x, y, 1);
xfit = [x(1) x(length(x))];
yfit = polyval(p1, xfit);
plot(xfit, yfit, "g");
title("p22a");
xlabel("x");
ylabel("y");

subplot(2, 2, 2);
p2 = polyfit(x, y, 2);
xfit = linspace(x(1), x(length(x)), 100);
yfit = polyval(p2, xfit);
plot(xfit, yfit, "g");
title("p22b");
xlabel("x");
ylabel("y");

subplot(2, 2, 3);
p3 = polyfit(x, y, 4);
yfit = polyval(p3, xfit);
plot(xfit, yfit, "g");
title("p22c");
xlabel("x");
ylabel("y");

subplot(2, 2, 4);
p4 = polyfit(x, y, 8);
yfit = polyval(p4, xfit);
plot(xfit, yfit, "g");
title("p22d");
xlabel("x");
ylabel("y");

clear p1 p2 p3 p4 x xfit y yfit

%%p24
figure;
x = [0.5, 2.4, 3.2, 4.9, 6.5, 7.8];
y = [0.8, 9.3, 37.9, 68.2, 155, 198];
plot(x, y, "ob");
title("p24 Parth Ray");
xlabel("x");
ylabel("y");
hold on;
p = polyfit(log(x), log(y), 1);
xfit = linspace(x(1), x(length(x)), 100);
p24m = p(1);
p24b = exp(p(2));
display(p24b);
display(p24m);
yfit = p24b *xfit .^ p24m;
plot(xfit, yfit, "g");
clear x y m b p xfit yfit

who

