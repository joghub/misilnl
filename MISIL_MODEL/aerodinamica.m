function sol3=aerodinamica(input)

% Entradas
u=input(1);
v=input(2);
w=input(3);
p=input(4);
q=input(5);
r=input(6);
phi=input(7);
theta=input(8);
psi=input(9);
ro=input(10);
delta_e=input(11);
delta_r=input(12);
delta_a=input(13);
T=input(14);

% Parámetros
m=15; %100 % Masa del misil
g=9.80665; % Gravedad

% Coeficientes
U_inf=sqrt(u^2+v^2+w^2);
c = 0.2; 
Long=2;
h=0.7;
b_ala=3;
L_ala=0.25;
b_est=1;
L_est=0.1;
S_ala=L_ala*b_ala;
S_est=L_est*b_est;
S_front=pi*(h/2)^2;
S_lat=h*Long;
% Ángulo de ataque
alpha=atan(w/(u+10^-12));
% Ángulo de deslizamiento
beta=atan(v/(U_inf+10^-12));
% Oswald's coefficient
e = 0.75;
% Aspect ratio
AR = b_ala^2/S_ala;

%%%Coeficiente de sustentación 
CL0=0.25;
CLalpha=5.5;
CL= CL0+CLalpha*alpha;

%%%Coeficiente de resistencia
Cd0=0.045;
Cd=Cd0+(CL-CL0)^2/(pi*AR*e);

%%Fuerzas
Dx=-0.5*ro*U_inf*S_front*Cd*u;
Dy=-0.5*ro*U_inf*S_lat*Cd*v;
Dz=-0.5*ro*U_inf*S_lat*Cd*w;

lift =-0.5*ro*(U_inf^2)*S_est*CL; %lift, sustentacion

gx=-m*g*sin(theta);
gy=m*g*cos(theta)*sin(phi);
gz=m*g*cos(theta)*cos(phi);

% Ecuaciones
Fx = T+Dx+gx;
Fy = Dy+gy;
Fz = Dz+lift+gz; 

% Coeficientes
Cl_p=0.51;
Cl_deltaa=0.17;

Cm_w=0.0005;
Cm_fq=0.1;
Cm_deltae=1;

Cn_v=0.002;
Cn_fr=0.1;
Cn_deltar=0.07;

% Momentos
L=-0.5*ro*U_inf^2*S_est*b_est*(Cl_p*p-Cl_deltaa*delta_a);
M=-0.5*ro*U_inf^2*S_ala*b_ala*(Cm_w*w/U_inf+Cm_fq*q+Cm_deltae*delta_e);
N=-0.5*ro*U_inf^2*S_ala*b_ala*(Cn_v*v/U_inf+Cn_fr*r+Cn_deltar*delta_r);

% Salida
sol3=[Fx,Fy,Fz,L,M,N];
end