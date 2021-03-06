%% 29/02/2016 Problema de transporte P & T company.
% Modelización:
%  Z = 464x11 +  513x12 + 654x13 + 867x14 +  352x21 + 416x22 + 690x23 + 791x24
%        995x31 + 682x32 + 388x33  685x34
%  x11 + x12 + x13 + x14 0 = 75
%   x21 + x22 + x23 + x24 = 125
%   x31 + x32 + x33 + x34 = 1100
%   x11 + x21 + x31 = 80
%   x12 + x22 + x32 = 65
%   x13 + x23 + x33 = 70
%   x41 + x24 + x34 = 85
%% Resolución:
%  x11  x12  x13   x14  x21  x22  x23  x24  x31  x32  x33  x34
f=[464  513  654  867   352  416  690  791  995  682  388  685];

Aeq=[1   1    1     1    0    0    0    0    0    0    0    0
     0   0    0     0    1    1    1    1    0    0    0    0
     0   0    0     0    0    0    0    0    1    1    1    1
     1   0    0     0    1    0    0    0    1    0    0    0
     0   1    0     0    0    1    0    0    0    1    0    0
     0   0    1     0    0    0    1    0    0    0    1    0
     0   0    0     1    0    0    0    1    0    0    0    1];
 beq = [75; 125; 100; 80; 65; 70; 85];
 lb = zeros(12,1);
 ub = [inf inf inf inf inf inf inf inf inf inf inf inf];
 
 [x,fval] = linprog(f,[],[],Aeq,beq,lb,ub)
 %% Solucion:
%  x =
%     0.0000
%    20.0000
%     0.0000
%    55.0000
%    80.0000
%    45.0000
%     0.0000
%     0.0000
%     0.0000
%     0.0000
%    70.0000
%    30.0000
% fval =
%    1.5254e+05