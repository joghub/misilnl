function [fp] = flight_plan(sid,wps,iap)
% crear plan de vuelo
%{
sid=DATA.Airport.KJFK.SID.DEEZZ5.RW4L;
wps=DATA.Waypoints;
iap=DATA.Airport.KSEA.IAP.RNAVZRWY34L;
%}


fp=[sid,wps,iap];

%{
x = struct2cell(fp);
len(1)=0
for i=2:length(x)
len(i)=60*distance('gc',x(4,i),x(5,i),x(4,i-1),x(5,i-1));
i=i+1
end
%}


end