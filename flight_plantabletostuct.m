function [fpe] = flight_plan(sid,pista,iap)

% Hay que proporcionarle 3 cadenas de carácteres SID,Pista de SID y el IAP.
% EJEMPLO: fp = flight_plan('DEEZZ5','22R','RNAVZRWY34L')

%% Creación plan de vuelo (en tabla)

tabla1 = readtable('SIDs.xlsx');
t2 = readtable('WPs.xlsx');
tabla3 = readtable('IAPs.xlsx');

t11 = tabla1(ismember(tabla1.SID, sid)==1 ,:);
t1 = t11(ismember(t11.Runway, pista)==1 ,[4:9]);
t3 = tabla3(ismember(tabla3.IAP, iap)==1 , [4:9]);
fp = [t1;t2;t3];

%% Cálculo de distancias entre waypoints

fp.Leg_distance(1)=0;
for i=2:size(fp,1)
    fp.Leg_distance(i)=60*distance('gc',table2array(fp(i,4)),...
        table2array(fp(i,5)),table2array(fp(i-1,4)),table2array(fp(i-1,5)));
end
fpe = table2struct(fp)
end