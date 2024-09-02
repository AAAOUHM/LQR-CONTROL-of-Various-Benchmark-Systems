close all; clear all; clc;

M=1; R=1; L=0.01; g=32.2; k=1; 
A=[0 1 0;
    64.4 0 -16; 
    0 0 -100]; 
B=[0; 0; 100]; 
C=[1 0 0]; 
D=[0];

sys=ss(A, B, C, D);
% pole(sys)
% tf(sys)
A_bar=[A zeros(3, 1); 
    -C zeros(1,1)]; 
B_bar=[0; 0; 100; 0];
C_bar=[1 0 0 0]; 
D_bar=[0];

% eig(A)                 
eig(A_bar)
cl_poles=[-6+4.9i -6-4.9i -20 -50];
K=acker(A_bar, B_bar, cl_poles);
eig(A_bar-B_bar*K);
sys_cl=ss(A_bar-B_bar*K, B_bar, C_bar, D_bar);
% pole(sys_cl)
%X0=[1, 0, 0];
%initial(sys_cl, X0, 10);
% tf(sys_cl)
% step(sys_cl, 20);

    