clc
close all
clear all

%% Part 1
d = 9.375 * 10^-3;
mu0 = 120*pi;
epsilon = 2.56;
c = 3*10^8 / epsilon^0.5;
mu = mu0/epsilon^0.5;
f = linspace(5*10^9, 15*10^9, 10000);
Zin = @(f) mu*(mu0 + 1i*mu*tan(2*pi*f*d/c))/(mu + 1i*mu0*tan(2*pi*f*d/c));
reflection = @(f) (Zin(f)-mu0)/(Zin(f)+mu0);


for i = 1:10000
    ref(i) = abs(reflection(f(i)));
end
plot(f,ref)
grid minor
xlabel("Frequency(hz)");
ylabel("Reflection coefficiant");
title("Reflection")

%% Part 2
mu0 = 120*pi;
epsilon = 2;
c = 3*10^8 / epsilon^0.5;
mu = mu0/epsilon^0.5;
mu2 = mu0/2;
d = 0.25*c/10^10;
f = linspace(0*10^9, 20*10^9, 10000);
Zin = @(f) mu*(mu2 + 1i*mu*tan(2*pi*f*d/c))/(mu + 1i*mu2*tan(2*pi*f*d/c));
reflection = @(f) (Zin(f)-mu0)/(Zin(f)+mu0);


for i = 1:10000
    ref(i) = abs(reflection(f(i)));
end
plot(f,ref)
grid minor
xlabel("Frequency(hz)");
ylabel("Reflection coefficiant");
title("Reflection")