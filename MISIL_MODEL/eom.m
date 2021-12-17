function sol1=eom(input)

% Parámetros
m=15; % Masa del misil
g=9.80665; % Gravedad
Ix=0.83;
Iy=1.2;
Iz=1.8;
Ixz=0.13;

% Entradas (inputs)
u=input(1);
v=input(2);
w=input(3);
p=input(4);
q=input(5);
r=input(6);
Fx=input(7);
Fy=input(8);
Fz=input(9);
L=input(10);
M=input(11);
N=input(12);

% Ecuaciones de Fuerza
udot=((1/m)*Fx)-q*w+r*v;
vdot=((1/m)*Fy)-r*u+p*w;
wdot=((1/m)*Fz)-p*v+q*u;

rdot=(1/(Iz-(Ixz^2/Ix)))*(N-p*q*(Iy-Ix)+q*r*Ixz-(Ixz/Ix)*(L-q*r*(Iz-Iy)-p*q*Ixz));
pdot=(1/Ix)*(L-Ixz*rdot-q*r*(Iz-Iy)-p*q*Ixz);
qdot=(1/Iy)*(M-r*p*(Ix-Iz)-((r^2)-(p^2))*Ixz);

% Salidas
sol1=[udot,vdot,wdot,pdot,qdot,rdot];
end