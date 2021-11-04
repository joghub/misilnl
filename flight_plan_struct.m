function [fp] = flight_plan_struct(tabla1,tabla2,tabla3,sid,pista,iap)

% Hay que proporcionarle 3 cadenas de carácteres SID,Pista de SID y el IAP.
% EJEMPLO: fp = flight_plan(tabla1,tabla2,tabla3,'DEEZZ5','22R','RNAVZRWY34L')

%% Antes de usar
%{
tabla1 = readtable('SIDs.xlsx');
tabla2 = readtable('WPs.xlsx');
tabla3 = readtable('IAPs.xlsx');
tabla1=table2struct(tabla1);
tabla2=table2struct(tabla2);
tabla3=table2struct(tabla3);
%}
%% Creación plan de vuelo (en tabla)

t111 = tabla1(strcmp({tabla1.SID},sid));
t11 = t111(strcmp({t111.Runway},pista));
t1 = rmfield(rmfield(rmfield(t11,'Airport'),'SID'),'Runway');
t33 = tabla3(strcmp({tabla3.IAP},iap));
t3 = rmfield(rmfield(rmfield(t33,'Airport'),'IAP'),'Runway');
fp=[t1;tabla2;t3];

%% Cálculo de distancias entre waypoints

for i=2:length(fp)
    fp(i).Leg_distance=60*distance('gc',fp(i).Latitude,fp(i).Longitude,fp(i-1).Latitude,fp(i-1).Longitude);
end


end