%atajos

in1u = inaero.velocidades.u;
in2v = inaero.velocidades.v;
in3w = inaero.velocidades.w;
in4p = inaero.velocidades.p;
in5q = inaero.velocidades.q;
in6r = inaero.velocidades.r;
in7phi = inaero.pos_angulos.phi;
in8tetha = inaero.pos_angulos.tetha;
in9psi = inaero.pos_angulos.psi;
in10ro = inaero.densidad;
in11de = inaero.control.delta_e;
in12dr = inaero.control.delta_r;
in13da = inaero.control.delta_a;
in14thrust = inaero.control.thrust;
save('datos.mat',"in1u","in2v","in3w","in4p","in5q","in6r","in7phi","in8tetha","in9psi","in10ro","in11de","in12dr","in13da","in14thrust");

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%con xyz

in1u = inaero.velocidades.u;
in2v = inaero.velocidades.v;
in3w = inaero.velocidades.w;
in4p = inaero.velocidades.p;
in5q = inaero.velocidades.q;
in6r = inaero.velocidades.r;
in7x = inaero.pos_angulos.x;
in8y = inaero.pos_angulos.y;
in9z = inaero.pos_angulos.z;
in10phi = inaero.pos_angulos.phi;
in11tetha = inaero.pos_angulos.tetha;
in12psi = inaero.pos_angulos.psi;
in13ro = inaero.densidad;
in14de = inaero.control.delta_e;
in15dr = inaero.control.delta_r;
in16da = inaero.control.delta_a;
in17thrust = inaero.control.thrust;
save('datos.mat',"in1u","in2v","in3w","in4p","in5q","in6r","in7x","in8y","in9z","in10phi","in11tetha","in12psi","in13ro","in14de","in15dr","in16da","in17thrust");                                        

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%con xyz

u = inaero.velocidades.u;
v = inaero.velocidades.v;
w = inaero.velocidades.w;
p = inaero.velocidades.p;
q = inaero.velocidades.q;
r = inaero.velocidades.r;
x = inaero.pos_angulos.x;
y = inaero.pos_angulos.y;
z = inaero.pos_angulos.z;
phi = inaero.pos_angulos.phi;
tetha = inaero.pos_angulos.tetha;
psi = inaero.pos_angulos.psi;
ro = inaero.densidad;
delta_e = inaero.control.delta_e;
delta_r = inaero.control.delta_r;
delta_a = inaero.control.delta_a;
thrust = inaero.control.thrust;
save('datos.mat',"u","v","w","p","q","r","x","y","z","phi","tetha","psi","ro","delta_e","delta_r","delta_a","thrust");                                        


%% > busInfo = Simulink.Bus.createObject(inaero)




