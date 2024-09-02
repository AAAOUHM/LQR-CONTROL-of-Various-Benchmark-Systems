clc;
clear all; close all;
C1=5;C2=4;R1=4;R2=2.5;
A=[-1/(R1*C1) 1/(R1*C1);
    1/(R1*C2) -1/(R1*C2)-1/(R2*C2)];
B=[1/C1 0;
    0 1/C2];
C=eye(2);
D=0;
rank(ctrb(A,B))
rank(obsv(A,C))
sys=ss(A,B,C,D)
tf(sys)
eig(A)
step(sys)
%design stete fb controller
A_bar=[A zeros(2,2);
    -C zeros(2,2)];
B_bar=[B;zeros(2,2)];
Q=eye(4);
R=.01*eye(2);
K=lqr(A_bar,B_bar,Q,R)
eig(A_bar-B_bar*K)