% lab02.m
% Parth Ray

clear;
format short;
format compact;

%%p01
    p01=[sqrt((5.2)^3), 6.71 * 10^3, ((3+(5.1)^2)*cos(deg2rad(53))), 15.8];
    p01(5)=90^(1/3);
    p01(6)= (sin(pi/3))/(tan(deg2rad(20)));
    display(p01);
    
%%p02
    p02=[(2.1*10^-2); sin(1.7*pi); 28.5; 2.7^(4/3); exp(3)];
    display(p02);
   
%%p03
    p03 = [0.75*(5.2)^.7; 11.1; 60^(1/3); tan((10*pi/11)); ...
        (cos(deg2rad(5)))^2; .116];
    display(p03);
    
%%p04
    p04= [(3:4:27)];
    display(p04);
    
%%p05
    p05= [68:-8:12];
    display(p05);
    
%%p06
    p06= [(6.4:0.8:12)'];
    display(p06);
    
%%p07
    p07= linspace(7,7,9);
    display(p07);
    
%%p08
    p08(1:8) = 8;
    display(p08);
    
%%p09
    p09(4:7)= 7;
    display(p09);
    
%%p10
    p10(7)=2.5;
    display(p10);
    
%%p11
    p11= [0:8,7:-1:0];
    display(p11);
    
%%p12
    p12 = [0:5:30
           600:-100:0
           0:(5/6):5];
    display(p12);
    
%%p13
    p13= [(1:5)', zeros(1,5)', linspace(3,3,5)'];
    display(p13);
    
%%p14
    p14(3,5) = 8;
    display(p14);
    
%%p15
    p15(2:3,3:4) = 6;
    display(p15);
    
%%p16
    p16 = [zeros(1,5); zeros(3,2), linspace(1,7,3)', linspace(2,8,3)'...
            linspace(3,9,3)'];
    display(p16);
    
%%p17
    p17= [zeros(1,5); zeros(3,2), linspace(1,3,3)', linspace(10,6,3)'...
            linspace(20,32,3)'];
    display(p17);
    
%%p18
    p18 = [ones(2,4); zeros(1,4); ones(1,4)];
    display(p18);
    
%%p19
    p19 = [eye(2),(zeros(1,2))', ones(2,2)];
    display(p19);
    
%%p20
    p20= [zeros(2,2), ones(2,2); zeros(1,4); ones(1,4)];
    display(p20);
    
who