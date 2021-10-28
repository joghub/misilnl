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
