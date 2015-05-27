function problem6_32
i = 3:2:21
x = i*pi/2-0.01 % initial x; from asymptote approximate, we know that the answer is close to 3*pi/2 
y = i*pi/2;

while y-x > 10^-8 % x_n+1 - x_n < 10^-8 will end the calculation
    y = x;
    x = x - (tan(x)-x)./tan(x).^2; % Newton method x_n+1 = x_n -f(x_n)/f'(x_n) f(x) = tan(x)-x
end

sprintf('summation =%.5f.',sum(x.^-4))
end