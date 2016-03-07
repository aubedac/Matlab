%% Ejercicio coste almacenaje 7/3/2016
% Modelo:
% Problema con exceso de recursos.
% min Z = 100x11 + 107x12 + 114x13 + 121x14 + Mx21 + 110x22 + 117x23 + 124x24 +
%         Mx31 + Mx32 + 105x33 + 112x34 + Mx41 + Mx42 + Mx43 + 125X44
%         
%         x11 + x12 + x13 + x14 <= 260
%         x21 + x22 + x23 + 24 <= 310
%         x31 + x32 + x33 + x34 <= 290
%         x41 + x42 + x43 + x44 <= 90
%         
%         x11 + x21 + x31 + x41 = 90
%         x12 + x22 + x32 + x42 = 160
%         x13 + x23 + x33 + x43 = 220
%         x14 + x24 + x34 + x44 = 190
%% Resolución:
M = 9999;

f = [100; 107; 114; 121; M; 110; 117; 124; M; M; 105; 112; M; M; M; 125];

A = [1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1];

b = [260; 310; 290; 90];

Aeq = [1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
       0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
       0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
       0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1];

beq = [90; 160; 220; 190];

lb = zeros(16,1);

intcont = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];

[x,fval] = intlinprog(f,intcont,A,b,Aeq,beq,lb)
%% Solución:
% x =
%     90
%     50
%    120
%      0
%      0
%    110
%      0
%      0
%      0
%      0
%    100
%    190
%      0
%      0
%      0
%      0
% fval =
%        71910