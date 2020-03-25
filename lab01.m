% lab01.m
% Parth Ray

format short;
format compact;
clear;

%% p01
x = ((14.8)^2 + (6.5)^2)/(3.8)^2;
y = 55/(((2)^(1/2)) + 14);
p01 = x + y;
display(p01);
clear x y;

%% p02
x= (-3.5)^3; sind
y= (exp(6))/(log(524));
z= 206^(1/3);
p02 = x + y + z;
display(p02);
clear x y z;

%% p03
x= (16.5^2)*(8.4-sqrt(70));
y= 4.3^2  - 17.3;
p03= x/y;
display(p03);
clear x y;

%% p04
x=(((5.2)^3)-(6.4^2)+3)/((1.6^8)-2);
y=((13.3)/5)^1.5;
p04= x + y;
display(p04);
clear y x;

%% p05
x= sqrt(10) + 3.7^2;
y= log(1365)/log(10) + 1.9;
p05=15*(x/y);
display(p05);
clear x y;

%% p06
x= (2.5^3)*(16-(216/22));
y= (1.7^4) + 14;
z=(2050)^.25;
p06= x/y +z;
display(p06);
clear x y z;

%% p07
x=2.3^2 *1.7;
y=sqrt((1-(.8^2))^2 + (2 - sqrt(.87))^2);
p07= x/y;
display(p07);
clear x y;

%% p08
x= (.5)*2.7*((5.9^2)-(2.4^2));
y=9.8*log(51);
p08=2.34+x+y;
display(p08);
clear x y;

%% p09
x= (sin(7*pi/9))/(cos(5*pi/7))^2;
y= (1/7)*tan(5*pi/12);
p09=x + y;
display(p09);
clear x y;

%% p10
x=(tan(deg2rad(64)))/((cos(deg2rad(14)))^2);
y=((3*sin(deg2rad(80)))/((0.9)^(1/3)));
z=(cos(deg2rad(55)))/sin(deg2rad(11));
p10=x-y+z;
display(p10);
clear x y z;

%% p11ab
x = 2.34;
p11a= (2*x^4)-(6*x^3)+(14.8*x^2)+9.1;
display(p11a);
p11b= exp(2*x)/(sqrt(14+(x^2)-x));
display(p11b);
clear x;

%% p12ab
t=6.8;
p12a=log(abs((t^2)-(t^3)));
display(p12a);
p12b=(75/(2*t))*cos(0.8*t - 3);
display(p12b);
clear t;

%% p13ab
x= 8.3;
y= 2.4;
p13a=(x^2)+(y^2)-((x^2)/(y^2));
display(p13a);
p13b=sqrt(x*y) - sqrt(x+y)+((x-y)/(x-(2*y)))^2 - sqrt(x/y);
display(p13b);
clear x y;

%% p14ab
a = 13;
b = 4.2;
c = (4*b)/a;
d = (a*b*c)/(a + b + c);
p14a = ((a*b)/(c+d)) + ((d*a)/(c*b)) - ((a-(b^2))*(c+d));
display(p14a);
p14b = ((sqrt(a^2 + b^2))/(d-c))+ (log(abs(b-a+c-d)));
display(p14b);
clear a b c d;

%% p15ab
p15a = (log(0.085))/(log(4));
display(p15a);
p15b = (log(1500))/(log(6));
display(p15b);

who