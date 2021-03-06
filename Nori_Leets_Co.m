%%  1/2/2016  Problema de la Nori & Leets.Co.
% Modelización:
%   min Z = 8x1 + 7x3 + 11x5 + 10x2 + 6x4 + 9x6
% 12x1 + 9x2 + 25x3 + 20x4 + 17x5 + 13x6 >= 60
% 35x1 + 42x2 + 18x3 + 31x4 + 56x5 + 49x6 >= 150
% 37x1 + 53x2 + 28x3 + 24x4 + 29x5 + 20x6 >= 125

%% Resolución:
f = [8 10 7 6 11 9];
A =[-12 -9 -25 -20 -17 -13
    -35 -42 -18 -31 -56 -49
    -37 -53 -28 -24 -29 -20];
b =[-60; -150; -125];

lb = zeros(6,1);
ub = ones(6,1);

[x,fval] = linprog(f,A,b,[],[],lb,ub)

%% Solución:
% x =
%    1.0000
%    0.6227
%    0.3435
%    1.0000
%    0.0476
%    1.0000
%fval =
%   32.1546