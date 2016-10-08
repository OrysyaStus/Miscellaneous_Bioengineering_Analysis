function [T, X, Y, Z, U, V, W] = trackprojectile(Xo, Yo, Zo, Umag, theta, phi, C)
% The inputs are the initial position (Xo, Yo, Zo), initial velocity
% (Umag), lauch direction (theta, phi), and the coefficient of friction (C). 
% The function solves for the positions and velocities along the
% trajectories of the ball incorporating a terrain.
% This function calls upon function bilinear to interpolate the values of x
% and y depending on the value of z.
% function [T, X, Y, Z, U, V, W] = trackprojectile(Xo, Yo, Zo, Umag, theta, phi, C)

r = 0.04; m = 0.15; p = 1.2;
A = pi*r^2;

X(1) = Xo;
Y(1) = Yo;
Z(1) = Zo;
W(1) = Umag*(cosd(phi));
U(1) = Umag*sind(phi)*cosd(theta);
V(1) = Umag*sind(phi)*sind(theta);
n=1;
T(n)=0;
dt = 0.001

load 'terrain.mat';
Zterrain = 0;

while Z(n) >= Zterrain
    T(n+1)=T(n)+dt;
    X(n+1)=X(n)+U(n)*dt;
    Y(n+1)=Y(n)+V(n)*dt;
    Z(n+1)=Z(n)+W(n)*dt;
    U(n+1)=U(n) + ( (-C*p*A/(2*m)) * U(n) * ((U(n)^2 + V(n)^2 + W(n)^2)^(1/2))) * dt; 
    V(n+1)=V(n) + ( (-C*p*A/(2*m)) * V(n) * ((U(n)^2 + V(n)^2 + W(n)^2)^(1/2))) * dt; 
    W(n+1)=W(n) +(-9.81 + ( (-C*p*A/(2*m)) * W(n) * ((U(n)^2 + V(n)^2 + W(n)^2)^(1/2)))) * dt;
    n=n+1;
    Zterrain = bilinear(terrain.x, terrain.y, terrain.z, X(n), Y(n));
end

end