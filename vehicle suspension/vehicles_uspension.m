clc;
clear all;
    k1=1;k2=2;m1=3;m2=2;b=.1;

A=[0 1 0 0;
    -(k1+k2)/m1 -b/m1 0 b/m1;
    0 0 0 1;
    k2/m2 b/m2 -k2/m2 -b/m2;];

B=[0;k1/m1;0;0];
C=[0 0 1 0];
D=0;

a_bar=[A zeros(4,1);
    -C 0;];
b_bar=[B;0];

q=10*eye(5);
r=1;

K=lqr(a_bar,b_bar,q,r)

% eig(a_bar-b_bar*K)

