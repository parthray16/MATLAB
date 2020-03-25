% lab03.m
% Parth Ray

format short;
format compact;
clear;

%%p01 
x = [-2 -1 0 1 2 3 4];
p01 = x.^3 - 2*(x.^2)+ x;
display(p01);
clear x;

%%p03
x = [1:7];
p03 = ((x - 3).*(x.^2 + 3))./(x.^2);
display(p03);
clear x;

%%p05
n = [1:8];
v0 = sqrt(2*9.81*2);
v = v0 * 0.85.^n;
t = v/9.81;
p05 = [n',t'];
display(p05);
clear n v0 v t;

%%p11
u = [-3; 8; -2];
v = [6.5; -5; -4];
p11a = sum(u .* v);
display(p11a);
u = u';
p11b = u * v;
display(p11b);
p11c = dot(u, v);
display(p11c);
clear u v;

%%p12
format rat;

v = [2:2:10];
p12a = v.^(-1); 
p12b = p12a.^2;
p12c = v/2;
p12d = v./v;
display(p12a);
display(p12b);
display(p12c);
display(p12d);
clear v;

%%p13
format short;

v = [5:-1:1];
p13a = v.^2;
p13b = v.^v;
p13c = v*5;
p13d = v - 1;
display(p13a);
display(p13b);
display(p13c);
display(p13d);
clear v;

%%p15
p = 2.3;
w = 5.67;
t = [1, 2, 3, 4, 5];
x = [2.8, 2.5, 2.2, 1.9, 1.6]; 
y = [4, 7, 10, 13, 17];
p15a = ((p*(x + y).^2)*w)./y;
display(p15a);
p15b = (p15a / w^2) + (w/p)*((x.*t)./y);
display(p15b);
clear p w t x y;

%%p19
t = [1:5:31];
x = 162 * cos(deg2rad(70)) * t;
y = 162 * sin(deg2rad(70)) * t - (.5*9.81) * t.^2;
r = sqrt((x.^2) + (y.^2));
q = atand(y ./ x);
p19 = [r', q'];
display(p19);
clear t x y r q;

%%p23
format long;

x = [linspace(2,2,10)];
y = [1:10];
x = 1 ./ (x.^y);
p23a = sum(x);
display(p23a);
clear x y;

%%p24
format long;

n = [0:10];
x = (sqrt(12)*(-3).^(-n))./ (2*n + 1);
p24a = sum(x);
display(p24a);
clear n x;

%%p31
format short;

x = [3; -4.5; 5];
y = [-2; 2; 1];
z = [5; 3; -2.5];
b = [7.5; 5.5; 4.5];
A = [x, y, z];
p31 = A \ b;
display(p31);
clear A b x y z;

%%p32
u = [3; -2; 6; 1; 3];
v = [1.5; 1; -3; 4; 2];
w = [1; 4; 2; -3; -1];
x = [.5; -3.5; 2.5; .5; 1.5 ];
y = [4; 2; 1; -2; -3];
b = [-11.75; 19; -23; -1.5; -3.5];
A = [u, v, w, x, y];
p32 = A \ b;
display(p32);
clear A b u v w x y;

who