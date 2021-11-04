%Creación estructuras en sucio:

DATA.airport.KJFK.sid.DEEZZ5.runway.RW4L.WP(1).name = 'RW4L';
DATA.airport.KJFK.sid.DEEZZ5.runway.RW4L.WP(2).name = 'DEEZZ';

DATA.airport.KJFK.sid.DEEZZ5.runway.RW4L.WP(1).altitude = 190;

DATA.airport.KJFK.sid.DEEZZ5.runway.RW4L.WP(1).CAS = 150;

DATA.airport.KJFK.sid.DEEZZ5.runway.RW4L.WP(1).legdistance = 0;
DATA.airport.KJFK.sid.DEEZZ5.runway.RW4L=DATA.airport.KJFK.sid.DEEZZ5.runway.RW4L.WP

DATA.airport.KJFK.sid.DEEZZ5.RW22R=DATA.airport.KJFK.sid.DEEZZ5.RW4L
DATA.airport.KJFK.sid.DEEZZ5.RW31R=DATA.airport.KJFK.sid.DEEZZ5.RW31L

DATA.airport.KJFK.sid.DEEZZ5=DATA.airport.KJFK.sid.DEEZZ5.runway

DATA.airport.KJFK.sid.SKORR4.RW31R=DATA.airport.KJFK.sid.SKORR4.RW31L
DATA.Airport.KSEA.IAP.RNAVZRWY34L=DATA.Airport.KJFK.SID.SKORR4.RW31R
table2struct( readtable('IAPs.xlsx') )
DATA.Waypoints=ans
save DATA.mat

DATA_bus_info = Simulink.Bus.createObject(DATA);
DATA_bus = evalin('base',DATA_bus_info.busName);


tabla1 = readtable('SIDs.xlsx')
tabla2 = readtable('WPs.xlsx')
tabla3 = readtable('IAPs.xlsx')
tabla1=tabla.Altitude(tabla.Altitude>5000)

% funciona---> da indices
tabla1 = find(tabla.Altitude>5000)
tabla1 = find(tabla.Altitude==11000)

%para strings
ismember(tabla.SID(i), 'DEEZZ5')   %responde 1 o 0
strcmp(tabla.SID{i}, 'DEEZZ5')     %responde 1 o 0

tabla1 = find(ismember(tabla.SID, 'DEEZZ5')==1) %responde indice

tablae = [tabla.Altitude, tabla.Leg_distance] %no titulo

tabla1(find(ismember(tabla1.SID, 'DEEZZ5')==1) ,:) %seleccionar filas
tabla(: ,[1,3,4]) %seleccionar columnas

%% 

tabla1 = readtable('SIDs.xlsx')
tabla2 = readtable('WPs.xlsx')
tabla3 = readtable('IAPs.xlsx')

t11 = tabla1(ismember(tabla1.SID, 'DEEZZ5')==1 ,:);
t1 = t11(ismember(t11.Runway, '22R')==1 ,[4:9]);
t3 = tabla3(ismember(tabla3.IAP, 'RNAVZRWY34L')==1 , [4:9]);
tt = [t1;t2;t3];
fpa.Waypoint=tt(:,1)
fpa.Altitude=tt(:,2)
fpa(1)=tt(1,:)

t11 = tabla1(ismember(tabla1.SID, 'DEEZZ5')==1 ,:);
j=0
for i=1:lenght(tabla1)
    x=strcmp(tabla1(i).SID, 'DEEZZ5')
    if x==1
        j=j+1;
        t11(j)=

%%% Filtrar numeros
tabla1([tabla1.Altitude] == 190)

%%% Filtrar strings
t111 = tabla1(strcmp({tabla1.SID},'DEEZZ5'));
t11 = t111(strcmp({t111.Runway},'22R'));
t1 = rmfield(rmfield(rmfield(t11,'Airport'),'SID'),'Runway');
t33 = tabla3(strcmp({tabla3.IAP},'RNAVZRWY34L'));
t3 = rmfield(rmfield(rmfield(t33,'Airport'),'IAP'),'Runway');
fp=[t1;t2;t3]

%%
busInfo = Simulink.Bus.createObject(tabla1);
BUS_SID = evalin('base',busInfo.busName);
busInfo = Simulink.Bus.createObject(tabla2);
BUS_WP = evalin('base',busInfo.busName);
busInfo = Simulink.Bus.createObject(tabla3);
BUS_IAP = evalin('base',busInfo.busName);

busInfo = Simulink.Bus.createObject(fp);
BUS_FP = evalin('base',busInfo.busName);

M = containers.Map('KeyType', 'int32'  ,'ValueType', 'char'  )
M(1)='KSEA';
M(1)