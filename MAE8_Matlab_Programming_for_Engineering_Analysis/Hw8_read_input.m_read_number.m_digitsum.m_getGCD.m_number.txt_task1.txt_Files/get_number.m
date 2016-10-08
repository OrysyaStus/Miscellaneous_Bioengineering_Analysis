function [ number ] = get_number( numberfile )
% The input is the string numberfile denoting the name of the file.
% The function computes a vector, the number, containing the numbers of each line in the file. 
% function number = get_number(numberfile)

%format longg
fclose('all');
fid = fopen(numberfile);
A = textscan(fid,'%s%s%s%s%s%s%s%s%n',1);
B = textscan(fid,'%s%s%s%n',1);
C = textscan(fid,'%s%s%s%s%n',1);
D = textscan(fid,'%s%s%s%n',1);
E = textscan(fid,'%s%s%s%n',1);
F = textscan(fid,'%s%s%s%s%n',1);
G = textscan(fid,'%s%s%s%n',1);
H = textscan(fid,'%s%s%s%n',1);
I = textscan(fid,'%s%s%s%n',1);
J = textscan(fid,'%s%s%s%s%s%s%n',1);
number = [A{9},B{4},C{5},D{4},E{4},F{5},G{4},H{4},I{4},J{7}];
fclose('all');

end

