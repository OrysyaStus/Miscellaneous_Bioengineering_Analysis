function [Xo, Yo, Zo, Umag, theta, phi, C] = read_input(inputfile, traj_num)
% The inputs are inputfile or the string denoting the name of the file to
% be read and trag_num which is an integer indicating the trajectory
% number.
% The function computes the initial positions (Xo,Yo,Zo), magnitude of initial velcity (Umag), direction (theta,phi), and coefficient of fricton (C).
% function [Xo,Yo,Zo,Umag,theta,phi,C] = read input(inputfile, traj_num)

f = importdata(inputfile);
if traj_num > 4 
    Xo = NaN; Yo = NaN; Zo = NaN; Umag = NaN; theta = NaN; phi = NaN; C = NaN; disp('error');
else
    Xo = f.data(traj_num, 2); Yo = f.data(traj_num,3); Zo = f.data(traj_num,4); Umag = f.data(traj_num,5); theta = f.data(traj_num,6); phi = f.data(traj_num,7); C = f.data(traj_num,8);
    end
end
