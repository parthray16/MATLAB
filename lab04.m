% lab04.m
% Parth Ray

clear;
format short;
format compact;

%%p02
format bank;
years = (10:30);
r = .0485;
monthlypay = 100000 *(r/12) ./ (1-(1+(r/12)).^(-12*years));
p02 = [years', monthlypay' , (monthlypay*12.*years)'];
display(p02);
clear r years monthlypay;

%%p03
format short;
K = (.2:.1:.7);
b = ((32000/(pi^2))./((K+1).*((1-K).^2))).^(1/3);
a = K .* b;
S = pi^2 * (b.^2 - a.^2);
p03 = [a', b', S'];
display(p03);
clear K a b S
%%p08
time = (0:.02:.5);
displacement = 4.219*(exp(-1.58*time) - exp(-6.32*time));
velocity = (26.67*exp(-6.32*time)) - (6.67*exp(-1.58*time));
p08 = [time', displacement', velocity'];
display(p08);
clear time displacement velocity;

%%p10
format bank;
p10 = [(2:.5:6)', (10000*(1 + (2:.5:6)/100).^10)'];
display(p10);

%p18
format short;
p18 = [(0:2:42)',(10.^(7.9622 - (0.05223*34172./(273.15 + (0:2:42)))))'];
display(p18);

%p22
format bank;
A = [-cosd(45) 0 0 1 0 0 0 0 0
     -sind(45) 0 -1 0 0 0 0 0 0
      0 -1 0 0 sind(45) 1 0 0 0
      0 0 0 -1 -cosd(48.81) 0 0 1 0
      0 0 0 0 -sind(48.81) 0 -1 0 0
      0 0 0 0 0 0 0 0 -sind(48.81)
      0 0 0 0 0 0 0 -1 -cosd(48.81)
      0 0 0 0 0 0 1 0 sind(48.81)
      0 0 0 0 0 -1 0 0 cosd(48.81)];
b = [0 0 0 0 600 1800 0 4800 0]';
p22 = [(1:9)', A\b];
display(p22);
clear A b;

who



