function [fp] = flight_plan_eval(tabla1,tabla2,tabla3,sid,pista,iap)

% Hay que proporcionarle 3 cadenas de carácteres SID, Pista de SID y el IAP.
% EJEMPLO: fp = flight_plan_eval(tabla1,tabla2,tabla3,3,8,5)

%% Antes de usar
%{
tabla1 = readtable('SIDs.xlsx');
tabla2 = readtable('WPs.xlsx');
tabla3 = readtable('IAPs.xlsx');
tabla1=table2struct(tabla1);
tabla2=table2struct(tabla2);
tabla3=table2struct(tabla3);
fp = flight_plan_eval(tabla1,tabla2,tabla3,3,8,5)
busInfo = Simulink.Bus.createObject(tabla1);
BUS_SID = evalin('base',busInfo.busName);
busInfo = Simulink.Bus.createObject(tabla2);
BUS_WP = evalin('base',busInfo.busName);
busInfo = Simulink.Bus.createObject(tabla3);
BUS_IAP = evalin('base',busInfo.busName);
busInfo = Simulink.Bus.createObject(fp);
BUS_FP = evalin('base',busInfo.busName);
%}
%% Creación plan de vuelo (en tabla)

t111 = tabla1([tabla1.SID] == sid);
t11 = t111([t111.Runway] == pista);
f={'Airport','SID','Runway','Waypoint','Altitude','Speed_CAS','Latitude','Longitude','Leg_distance'};

t1=[];
for k=1:length(t11)
    t11k=t11(k);
    
    for i=4:length(f)
        fi=f{i};
        eval(strcat('t1i.',fi,'=t11k.',fi))
    end
    t1=[t1;t1i];
end

t33 = tabla3([tabla3.IAP] == iap);
f={'Airport','IAP','Runway','Waypoint','Altitude','Speed_CAS','Latitude','Longitude','Leg_distance'};
t3=[];
for k=1:length(t33)
    t33k=t33(k);
    
    for i=4:length(f)
        fi=f{i};
        eval(strcat('t3i.',fi,'=t33k.',fi))
    end
    t3=[t3;t3i];
end


fp=[t1;tabla2;t3];

%% Cálculo de distancias entre waypoints

for i=2:length(fp)
    fp(i).Leg_distance=fp(i-1).Leg_distance + (60*distance('gc',fp(i).Latitude,fp(i).Longitude,fp(i-1).Latitude,fp(i-1).Longitude));
    
end


end