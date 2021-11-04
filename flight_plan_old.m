function [fp] = flight_plan_old(sid,wps,iap)
% crear plan de vuelo
%{
sid=DATA.Airport.KJFK.SID.DEEZZ5.RW4L;
wps=DATA.Waypoints;
iap=DATA.Airport.KSEA.IAP.RNAVZRWY34L;

fp = flight_plan(DATA.Airport.KJFK.SID.DEEZZ5.RW31L,DATA.Waypoints,DATA.Airport.KSEA.IAP.RNAVZRWY34L)
%}


fp=[sid,wps,iap];

% calculo vector de distancias entre waypoints
xa = struct2cell(fp);
xb = cell2mat(xa(4:5,1,:));
len(1)=0;
for i=2:length(xb)
    fp(i).Leg_distance=60*distance('gc',xb(1,i),xb(2,i),xb(1,i-1),xb(2,i-1));
end

end