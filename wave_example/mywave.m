function dydt = mycoupled(t,y,w02,N)
%Only left end fixed
%{
dydt(1:N,1)=y(N+1:2*N,1);
dydt(N+2:2*N-1,1)=w02*(y(1:N-2,1)-2*y(2:N-1,1)+y(3:N,1));
dydt(N+1,1)=w02*(-2*y(1,1)+y(2,1));
dydt(2*N,1)=w02*(y(N-1,1)-1*y(N,1));
%}
%both ends fixed
% {
dydt(1:N,1)=y(N+1:2*N,1);
dydt(N+2:2*N-1,1)=w02*(y(1:N-2,1)-2*y(2:N-1,1)+y(3:N,1));
dydt(N+1,1)=w02*(-2*y(1,1)+y(2,1));
dydt(2*N,1)=w02*(y(N-1,1)-2*y(N,1));
%}