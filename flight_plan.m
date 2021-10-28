function [fp] = flight_plan(sid,wps,iap)
% crear plan de vuelo
%{
sid=DATA.Airport.KJFK.SID.DEEZZ5.RW4L;
wps=DATA.Waypoints;
iap=DATA.Airport.KSEA.IAP.RNAVZRWY34L;
%}


fp=[sid,wps,iap];

% calculo vector de distancias entre waypoints
xa = struct2cell(fp);
xb = cell2mat(xa(4:5,1,:));
len(1)=0;
for i=2:length(xb)
    len(i)=60*distance('gc',xb(1,i),xb(2,i),xb(1,i-1),xb(2,i-1));
end

altx = cell2mat(xa(2,1,:));
for i=1:length(altx)
    alt(i)=altx(:,i)
end
speedx = cell2mat(xa(3,1,:));
for i=1:length(speedx)
    speed(i)=speedx(:,i)
end
salida=[alt;speed]

end