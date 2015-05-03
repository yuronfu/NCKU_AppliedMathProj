% A code to solve a wave equation

clear;
close all;


Ln=1;
Kn=1;
Mn=1;
T=4;
% N-mass
N=80
m=Mn/N;
h=Ln/N;
k=Kn*N;


w02=k/m;

tspan = [0 T];
x(1:N)=h:h:1;
y0(2*N,1)=0;

for i=1:N
    if abs(x(i)-1/2)>1/4
        y0(i,1)=0;
        
    else
        y0(i,1)=(x(i)-1/4)^2*(x(i)-3/4)^2*2^8;
        y0(i+N,1)=-(x(i)-1/4)*(x(i)-3/4)*(x(i)-1/2)*2^10;
    end
end


% Solve the problem using ode45
options=odeset('RelTol',1e-3);
[tout,yout]=ode45(@(t,y) mywave(t,y,w02,N) , tspan,y0,options);

%  figure(1)
% % set(axes,'fontsize',18)
%  yz=zeros(N);
%  x_loc=x+yout(1,1:N);
%  wave_handle=plot(x_loc(1,:),yz,'.');
%  axis([0, 2, -1, 1]); 
%  xlabel('x'); ylabel('u(x,t)')

 figure(2)
 set(axes,'fontsize',18)
 wave2_handle=plot(x(1,:)',yout(1,1:N),'.');
 axis([0, 1, -1, 1]); 
 xlabel('x'); ylabel('u(x,t)')
 
 
 
pause(1)
for i=1:length(tout)
%     x_loc=x+yout(i,1:N);
%       set(wave_handle,'XData',x_loc(1,:)); 
      set(wave2_handle,'YData',yout(i,1:N)); 
 drawnow
end

