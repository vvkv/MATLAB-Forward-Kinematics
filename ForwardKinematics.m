%The MATLAB code/Lab 2:
%Spring 2017
%Vivek Vyas & Zahra Haeri
%% Forward Kinematics


%Define the dimensions for the AL5D System
d1 = 6.193; %Height
l2 = 14.605; %Arm
l3 = 18.733; %Forearm
d5 = 9.843; %Max Length

%Assign the variable joint angles to the associated variables
t1 = -33.7;
t2 = -8.1;
t3 = -23.4;
t4 = -58.4;
t5 = -33.7;

%Input the variable joint angles (case specific), converting to RAD each
time

%Initialize the required transformations
T_01 = [cos(t1*pi/180) 0 sin(t1*pi/180) 0; sin(t1*pi/180) 0 -cos(t1*pi/180)0; 0 1 0 d1; 0 0 0 1];

T_12 = [cos((t2*pi/180)+ pi/2) -sin((t2*pi/180)+ pi/2) 0
l2*cos((t2*pi/180)+pi/2); sin((t2*pi/180)+ pi/2) cos((t2*pi/180)+ pi/2) 0 l2*sin((t2*pi/180)+
pi/2); 0 0 1 0; 0 0 0 1];

T_23 = [cos((t3*pi/180)- pi/2) -sin((t3*pi/180)- pi/2) 0
l3*cos((t3*pi/180)-pi/2); sin((t3*pi/180)- pi/2) cos((t3*pi/180)- pi/2) 0 l3*sin((t3*pi/180)-pi/2); 0 0 1 0; 0 0 0 1];

T_34 = [cos((t4*pi/180)+ pi/2) 0 sin((t4*pi/180)+ pi/2) 0; sin((t4*pi/180)+pi/2) 0 -cos((t4*pi/180)+ pi/2) 0; 0 1 0 0; 0 0 0 1];

T_45 = [cos(t5*pi/180) -sin(t5*pi/180) 0 0; sin(t5*pi/180) cos(t5*pi/180) 0
0; 0 0 1 d5; 0 0 0 1];

%Complete the matrix multiplication for the complete transformation matrix
T_05 = T_01*T_12*T_23*T_34*T_45 %Evaluate the solution