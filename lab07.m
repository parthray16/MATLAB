% lab07.m
% Parth Ray

clear;
format short;
format compact;

%%p01
p01b = kmlTOmpg(14);
display(p01b);
help kmlTOmpg;

%%p02
p02b = problem2b([-3:4]);
display(p02b);
help problem2b;

%%p04
p04 = mphTOmets(55);
display(p04);
help mphTOmets;

%%p06
p06a = triangle(3, 8, 10);
display(p06a);
help triangle;

%%p18
p18b = TriArea([-1.5,-4.2,-3], [-5.1,6.3,2], [12.1,0,-0.5]);
display(p18b);
help TriArea;

%%p25
[t, r] = CartToPolar(5,2);
p25a = [t, r];
display(p25a);
[t, r] = CartToPolar(-2,3);
p25b = [t, r];
display(p25b);
[t, r] = CartToPolar(-4,-8);
p25c = [t, r];
display(p25c);
[t, r] = CartToPolar(4,-3);
p25d = [t, r];
display(p25d);
clear r t
help CartToPolar,

%%p34
p34 = centroidT(240, 380, 60, 42);
display(p34);
help centroidT

who