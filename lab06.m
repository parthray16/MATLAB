% lab06.m
% Parth Ray

clear;
format short;
format compact;

%%p06
TCH = [75 79 86 86 79 81 73 89 91 86 81 82 86 88 89 90 82 84 81 79 73 69 ...
        73 79 82 72 66 71 69 66 66];
TSF = [69 68 70 73 72 71 69 76 85 87 74 84 76 68 79 75 68 68 73 72 79 68 ...
        68 69 71 70 89 95 90 66 69];
total1 = 0;
total2 = 0;
i = 1;
while i <= length(TCH)
    total1 = total1 + TCH(i);
    total2 = total2 + TSF(i);
    i = i + 1;
end
p06a = total1 / length(TCH);
display(p06a);
p06b = total2 / length(TSF);
display(p06b);

i = 1;
numday1 = 0;
p06d = [];
p06e = [];
p06f = [];
while i <= length(TCH)
    if TCH(i) > p06a
       numday1 = numday1 + 1;
    end
    if TSF(i) > p06b
       p06d = [p06d, i];
    end
    if TSF(i) < TCH(i)
       p06e = [p06e, i];
    end
    if TSF(i) == TCH(i)
       p06f = [p06f, i];
    end
    i = i + 1;
end
p06c = numday1;
p06d = p06d';
p06e = p06e';
display(p06c);
display(p06d);
display(p06e);
display(p06f);
p06g = length(TCH(TCH > p06a));
display(p06g);
p06h = find(TSF > p06b)';
display(p06h);
p06i = find(TSF < TCH)';
display(p06i);
p06j = find(TCH == TSF);
display(p06j);
clear i numday1 TCH TSF total1 total2


%%p07
p07 = [0 1];
n = [3:20];
for i = n
    p07 = [p07, p07(i - 1) + p07(i - 2)];
end
p07 = p07';
display(p07);
clear i n


%%p09
n = 1:4;
p09a = [];
for i = n
    for j = n
        if i - j < 0
            p09a(i, j) = 0;
        else
            p09a(i, j) = factorial(i - 1)/((factorial(j - 1))*(factorial(i - j)));
        end
    end
end
display(p09a);

n = 1:5;
p09b = [];
for i = n
    for j = n
        if i - j < 0
            p09b(i, j) = 0;
        else
            p09b(i, j) = factorial(i - 1)/((factorial(j - 1))*(factorial(i - j)));
        end
    end
end
display(p09b);

n = 1:6;
p09c = [];
for i = n
    for j = n
        if i - j < 0
            p09c(i, j) = 0;
        else
            p09c(i, j) = factorial(i - 1)/((factorial(j - 1))*(factorial(i - j)));
        end
    end
end
display(p09c);

n = 1:7;
p09d = [];
for i = n
    for j = n
        if i - j < 0
            p09d(i, j) = 0;
        else
            p09d(i, j) = factorial(i - 1)/((factorial(j - 1))*(factorial(i - j)));
        end
    end
end
display(p09d);
clear n i j


%%p13
format long;
m = 0:5;
sum = 0;
for i = m
    sum = sum + (sqrt(12)*(-1/3)^i)/(2*i + 1);
end
p13a = sum;
display(p13a);

m = 0:10;
sum = 0;
for i = m
    sum = sum + (sqrt(12)*(-1/3)^i)/(2*i + 1);
end
p13b = sum;
display(p13b);

m = 0:20;
sum = 0;
for i = m
    sum = sum + (sqrt(12)*(-1/3)^i)/(2*i + 1);
end
p13c = sum;
display(p13c);
clear i m sum


%%17
format bank
scores = [73 91 37 81 63 66 50 90 75 43 88 80 79 69 26 82 89 99 71 59];
scores = sort(scores, 'descend');
i = 1;
sum = 0;
while i <= 8
    sum = sum + scores(i);
    i = i + 1;
end
p17a = sum / 8;
display(p17a);
clear sum
p17b = sum(scores(1:8)) / 8;
display(p17b);
clear i scores


%%18
format long
x = deg2rad(45);
n = 0;
sum = 0;
while 1
    sumpre = sum;
    sum = sum + ((-1)^n /factorial(2*n + 1))*x^(2*n + 1);
    n = n + 1;
    if abs((sum - sumpre)/sumpre) <= 0.000001
        break
    end
end
p18a = sum;
display(p18a);

x = deg2rad(195);
n = 0;
sum = 0;
while 1
    sumpre = sum;
    sum = sum + ((-1)^n /factorial(2*n + 1))*x^(2*n + 1);
    n = n + 1;
    if abs((sum - sumpre)/sumpre) <= 0.000001
        break
    end
end
p18b = sum;
display(p18b);
clear n x sum sumpre

who