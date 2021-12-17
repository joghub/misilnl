function sol2=vel_euler(input)

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

% Variables auxiliares
ctheta=cos(theta); stheta=sin(theta); ttheta=tan(theta); 
sectheta=sec(theta); % Para theta
cphi=cos(phi); sphi=sin(phi); % Para phi
cpsi=cos(psi); spsi=sin(psi); % Para psi

% Ángulos de Euler
xdot=(ctheta*cpsi)*u+(-cphi*spsi+sphi*stheta*cpsi)*v+(sphi*spsi+cphi*stheta*cpsi)*w;
ydot=(ctheta*spsi)*u+(cphi*cpsi+sphi*stheta*spsi)*v+(-sphi*cpsi+cphi*stheta*spsi)*w;
zdot=(-stheta)*u+(sphi*ctheta)*v+(cphi*ctheta)*w;

phidot=p+(q*sphi+r*cphi)*ttheta;
thetadot=q*cphi-r*sphi;
psidot=(q*sphi+r*cphi)*sectheta;

% Salida
sol2=[xdot,ydot,zdot,phidot,thetadot,psidot];
end