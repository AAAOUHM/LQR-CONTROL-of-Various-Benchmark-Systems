clc;clear all; close all;
M=1;
m=.15;
g=9.8;
l=.5;
A=[0 1 0 0;
    ((M+m)*g)/(m*l) 0 0 0;
    0 0 0 1;
    ((-m*g)/M) 0 0 0];
B=[0;
    -1/(m*l);
    0;
    1/M];
C=[0 0 1 0];
cl_poles=[-1+1.73i -1-1.73i -5 -10 -12] ; 

A_bar=[A zeros(4,1);-C 0;];
B_bar=[B;0];

k=acker(A_bar,B_bar,cl_poles);
% eig(A)
% eig(A-B*k)
