function [T, X, Y, Z, U, V, W] = projectile3d(Xo, Yo, Zo, Umag, theta, phi)
% The inputs are the initial position (Xo, Yo, Zo), initial velocity
% (Umag), and launch direction (theta, phi). 
% The function solves for the positions and velocities along the
% trajectories of the ball.
% function [T, X, Y, Z, U, V, W] = projectile3d(Xo, Yo, Zo, Umag, theta, phi)

X(1) = Xo;
Y(1) = Yo;
Z(1) = Zo;
W(1) = Umag*(cosd(phi));
U(1) = Umag*sind(phi)*cosd(theta);
V(1) = Umag*sind(phi)*sind(theta);
n=1;
T(n)=0;
dt = 0.001

while Z(n)>=0
    T(n+1)=T(n)+dt;
    X(n+1)=X(n)+U(n)*dt;
    Y(n+1)=Y(n)+V(n)*dt;
    Z(n+1)=Z(n)+W(n)*dt;
    U(n+1)=U(n);
    V(n+1)=V(n);
    W(n+1)=W(n)-9.81*dt;
    n=n+1;
end

if Z(n)<0
    Z(end) = 0;
    newdt = (Z(end)-Z(end-1))/W(end-1)
    
    %dt=.0009708183428
    X(end)=X(end-1)+U(end-1)*newdt
    Y(end)=Y(end-1)+V(end-1)*newdt;
    U(end)=U(end-1);
    V(end)=V(end-1);
    W(end)=W(end-1)-9.81*dt;
end

end