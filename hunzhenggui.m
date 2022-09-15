clc;clear all
f = [-4;-2;-3];
intcon = 3;
a = ones(1,3);
b = 12;
aeq = [2 8 3];
beq = 12;
lb = zeros(3,1);
ub = [inf;inf;1];
x = intlinprog(f,intcon,a,b,aeq,beq,lb,ub);