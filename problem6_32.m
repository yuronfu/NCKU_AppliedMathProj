function problem6_32
x = 3*pi/2-0.01 % initial x; from asymptote approximate, we know that the answer is close to 3*pi/2 
y = 3*pi/2;
n = 0;
while y-x > 10^-8 % x_n+1 - x_n < 10^-8 will end the calculation
    y = x;
    x = x - (tan(x)-x)/tan(x)^2; % Newton method x_n+1 = x_n -f(x_n)/f'(x_n) f(x) = tan(x)-x
    n = n + 1;
end
sprintf('After %d times iteration, we get the solution %.5f for tan(x)-x=0 with error smaller than 10^-8.',n,x)
end