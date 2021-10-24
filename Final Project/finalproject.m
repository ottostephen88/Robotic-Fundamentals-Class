% robotics final project
%% bowl 1 position (inverse)
clc
clear
%end position
x=0;
y=4;
z=10;
%lengths inches
l1=5.1;
l2=6;
l3=6;
l4=9;
 r2=y-l1;
 r1=(x^2+z^2)^.5;
 r3=(r1^2+r2^2)^.5
 phi=atand(r2/r1)
 x2=r1-l4*cosd(phi)
 y2=r2-l4*sind(phi)
theta1=atand(x/z)
theta3 = -acosd((y2^2+x2^2-l3^2-l2^2)/(2*l2*l3))
theta2x =((l2+l3*cosd(theta3))*x2+l3*sind(theta3)*y2);
theta2y=((l2+l3*cosd(theta3))*y2+l3*sind(theta3)*x2);
theta2 = 180+atand(theta2y/theta2x)
theta4= phi-theta2-theta3
%% mouth (inverse)
clc
clear
%end position
x=0;
y=12;
z=19.5;
%lengths inches
l1=5.1;
l2=6;
l3=6;
l4=9;
 r2=y-l1;
 r1=(x^2+z^2)^.5;
 r3=(r1^2+r2^2)^.5
 phi=atand(r2/r1)
 x2=r1-l4*cosd(phi)
 y2=r2-l4*sind(phi)
 theta1=atand(x/z)
theta3 = acosd((y2^2+x2^2-l3^2-l2^2)/(2*l2*l3))
theta2x =((l2+l3*cosd(theta3))*x2+l3*sind(theta3)*y2);
theta2y=((l2+l3*cosd(theta3))*y2+l3*sind(theta3)*x2);
theta2 = atand(theta2y/theta2x)
theta4= phi-theta2-theta3
%% bowl 2
clc
clear
%end position
x=1;
y=4;
z=11;
%lengths inches
l1=5.1;
l2=6;
l3=6;
l4=9;
 r2=y-l1;
 r1=(x^2+z^2)^.5;
 r3=(r1^2+r2^2)^.5
 phi=atand(r2/r1)
 x2=r1-l4*cosd(phi)
 y2=r2-l4*sind(phi)
theta1=atand(x/z)
theta3 = -acosd((y2^2+x2^2-l3^2-l2^2)/(2*l2*l3))
theta2x =((l2+l3*cosd(theta3))*x2+l3*sind(theta3)*y2);
theta2y=((l2+l3*cosd(theta3))*y2+l3*sind(theta3)*x2);
theta2 = 180+atand(theta2y/theta2x)
theta4= phi-theta2-theta3

%% bow3
clc
clear
%end position
x=-1;
y=4;
z=9;
%lengths inches
l1=5.1;
l2=6;
l3=6;
l4=9;
 r2=y-l1;
 r1=(x^2+z^2)^.5;
 r3=(r1^2+r2^2)^.5
 phi=atand(r2/r1)
 x2=r1-l4*cosd(phi)
 y2=r2-l4*sind(phi)
theta1=atand(x/z)
theta3 = -acosd((y2^2+x2^2-l3^2-l2^2)/(2*l2*l3))
theta2x =((l2+l3*cosd(theta3))*x2+l3*sind(theta3)*y2);
theta2y=((l2+l3*cosd(theta3))*y2+l3*sind(theta3)*x2);
theta2 = 180+atand(theta2y/theta2x)
theta4= phi-theta2-theta3
%% forward kinematics
theta1 = 0;
theta2 = 101.13;
theta3 = -169.86;
theta4 = 62.45;
theta5 = 0;
theta6 = 0;
T01=[cosd(theta1),-sind(theta1),0,0;
    sind(theta1),cosd(theta1),0,0;
    0,0,1,5.1;
    0,0,0,1];
T12=[cosd(theta2-90),-sind(theta2-90),0,0;
    0, 0,-1,0;
    sind(theta2-90),cosd(theta2-90),0,0;
    0,0,0,1];
T23=[cosd(theta3),-sind(theta3),0,-6;
    sind(theta3),cosd(theta3),0,0;
    0,0,1,0;
    0,0,0,1];
T34=[cosd(theta4),-sind(theta4),0,-6;
    sind(theta4),cosd(theta4),0,0;
    0,0,1,1;
    0,0,0,1];
T45=[cosd(theta5+180),-sind(theta5+180),0,4;
    sind(theta5+180),cosd(theta5+180),0,0;
    0,0,1,2.2;
    0,0,0,1];
T56=[cosd(theta6+90),-sind(theta6+90),0,2;
    0, 0,-1,1.1;
    sind(theta6+90),cosd(theta6+90),0,0;
    0,0,0,1];
T67=[1,0,0,0;
    0,1,0,0;
    0,0,1,-3;
    0,0,0,1];

TPoint1=T01*T12*T23*T34*T45*T56*T67
%% mouth forward kinematics
theta1 = 0;
theta2 = 28.5;
theta3 = 26.3;
theta4 = -35.3;
theta5 = 0;
theta6 = 0;
T01=[cosd(theta1),-sind(theta1),0,0;
    sind(theta1),cosd(theta1),0,0;
    0,0,1,10.1;
    0,0,0,1];
T12=[cosd(theta2-90),-sind(theta2-90),0,0;
    0, 0,-1,0;
    sind(theta2-90),cosd(theta2-90),0,0;
    0,0,0,1];
T23=[cosd(theta3),-sind(theta3),0,-6;
    sind(theta3),cosd(theta3),0,0;
    0,0,1,0;
    0,0,0,1];
T34=[cosd(theta4),-sind(theta4),0,-6;
    sind(theta4),cosd(theta4),0,0;
    0,0,1,1;
    0,0,0,1];
T45=[cosd(theta5+180),-sind(theta5+180),0,4;
    sind(theta5+180),cosd(theta5+180),0,0;
    0,0,1,2.2;
    0,0,0,1];
T56=[cosd(theta6+90),-sind(theta6+90),0,2;
    0, 0,-1,1.1;
    sind(theta6+90),cosd(theta6+90),0,0;
    0,0,0,1];
T67=[1,0,0,0;
    0,1,0,0;
    0,0,1,-3;
    0,0,0,1];

TPoint1=T01*T12*T23*T34*T45*T56*T67