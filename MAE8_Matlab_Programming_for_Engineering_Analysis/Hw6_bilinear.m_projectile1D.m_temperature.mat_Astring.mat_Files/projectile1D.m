function [ T, Z, W] = projectile1D(Zo, Wo, Tf, dt)
% projectile1D numerically solves for the motion of a ball considering the
% following equations using Euler's method: Z^(n+1) = Z^n + W*(dt) and
% W^(n+1) = W^n - g*(dt) where t is time, Z is height, W is vertical
% velocity of the ball, and g is gravity. Outputs are vectors T for time, Z
% for height, and W for vertical velocity. 

T = [0:dt:Tf]
W(1) = Wo
Z(1) = Zo

for i = 2: length(T)
    W(i) = W(i-1) - 9.81*dt
end

for i= 2:length(T)
    Z(i) = Z(i-1) + W(i-1)*dt    
end

end

