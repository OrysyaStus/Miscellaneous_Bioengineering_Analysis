clear all; close all; clc; format long; 

name='Orysya Stus';
id='A10743411';
hw_num=9;

%% Task 1A
see 'projectile3d.m';

%% Task 1B
[T1, X1, Y1, Z1, U1, V1, W1] = projectile3d(0,0,0,40,0,45);
[T2, X2, Y2, Z2, U2, V2, W2] = projectile3d(0,0,0,40,90,45);
[T3, X3, Y3, Z3, U3, V3, W3] = projectile3d(5,5,5,40,30,45);
[T4, X4, Y4, Z4, U4, V4, W4] = projectile3d(5,5,5,40,60,45);

i1 = find(Z1 == max(Z1(:)));
table1(1) = struct('Trajectory', 1, 'total_time', T1(end),'max_height_position', [max(X1(i1))],'final_position', [X1(end)]);
table1(1).max_height_position = [max(X1(i1)), max(Y1(i1)), max(Z1),(U1(i1)), (V1(i1)), (W1(i1))];
table1(1).final_position = [X1(end), Y1(end), Z1(end), U1(end), V1(end), W1(end)];

i2 = find(Z2 == max(Z2(:)));
table1(2) = struct('Trajectory', 2, 'total_time', T2(end),'max_height_position', [max(X2(i2))],'final_position', [X2(end)]);
table1(2).max_height_position = [max(X2(i2)), max(Y2(i2)), max(Z2),(U2(i2)), (V2(i2)), (W2(i2))];
table1(2).final_position = [X2(end), Y2(end), Z2(end), U2(end), V2(end), W2(end)];

i3 = find(Z3 == max(Z3(:)));
table1(3) = struct('Trajectory', 3, 'total_time', T3(end),'max_height_position', [max(X3(i3))],'final_position', [X3(end)]);
table1(3).max_height_position = [max(X3(i3)), max(Y3(i3)), max(Z3), (U3(i3)), (V3(i3)), (W3(i3))];
table1(3).final_position = [X3(end), Y3(end), Z3(end), U3(end), V3(end), W3(end)];

i4 = find(Z4 == max(Z4(:)));
table1(4) = struct('Trajectory', 4, 'total_time', T4(end),'max_height_position', [max(X4(i4))],'final_position', [X4(end)]);
table1(4).max_height_position = [max(X4(i4)), max(Y4(i4)), max(Z4), (U4(i4)), (V4(i4)), (W4(i4))];
table1(4).final_position = [X4(end), Y4(end), Z4(end), U4(end), V4(end), W4(end)];

p1a = table1(1);
p1b = table1(2);
p1c = table1(3);
p1d = table1(4);
%% Task 1C
figure
plot3(X1,Y1,Z1,'k',X2,Y2,Z2,'r', X3,Y3,Z3,'b', X4,Y4,Z4,'g');
title('Projectile of a tennis ball with Umag = 40 m/s at different initial positions and launch angles');
xlabel('x(m)'), ylabel('y(m)'), zlabel('z(m)');
axis([0, 200, 0, 200, 0, 50]);
legend('Traj. 1', 'Traj. 2', 'Traj. 3', 'Traj. 4');
grid on;

p1e = 'See Figure 1';

%% Task 2A
see 'projectile3d_2.m';

%% Task 2B
[t1, x1, y1, z1, u1, v1, w1] = projectile3d_2(0,0,0,40,45,45,0.0);
[t2, x2, y2, z2, u2, v2, w2] = projectile3d_2(0,0,0,40,45,45,0.2);
[t3, x3, y3, z3, u3, v3, w3] = projectile3d_2(0,0,0,40,45,45,0.4);
[t4, x4, y4, z4, u4, v4, w4] = projectile3d_2(0,0,0,40,45,45,0.6);

i1 = find(z1 == max(z1(:)));
table2(1) = struct('Trajectory', 1, 'total_time', t1(end),'max_height_position', [max(x1(i1))],'final_position', [x1(end)]);
table2(1).max_height_position = [max(x1(i1)), max(y1(i1)), max(z1),(u1(i1)), (v1(i1)),(w1(i1))];
table2(1).final_position = [x1(end), y1(end), z1(end), u1(end), v1(end), w1(end)];

i2 = find(z2 == max(z2(:)));
table2(2) = struct('Trajectory', 2, 'total_time', t2(end),'max_height_position', [max(x2(i2))],'final_position', [x2(end)]);
table2(2).max_height_position = [max(x2(i2)), max(y2(i2)), max(z2),(u2(i2)),(v2(i2)), (w2(i2))];
table2(2).final_position = [x2(end), y2(end), z2(end), u2(end), v2(end), w2(end)];

i3 = find(z3 == max(z3(:)));
table2(3) = struct('Trajectory', 3, 'total_time', t3(end),'max_height_position', [max(x3(i3))],'final_position', [x3(end)]);
table2(3).max_height_position = [max(x3(i3)), max(y3(i3)), max(z3), (u3(i3)), (v3(i3)),(w3(i3))];
table2(3).final_position = [x3(end), y3(end), z3(end), u3(end), v3(end), w3(end)];

i4 = find(z4 == max(z4(:)));
table2(4) = struct('Trajectory', 4, 'total_time', t4(end),'max_height_position', [max(x4(i4))],'final_position', [x4(end)]);
table2(4).max_height_position = [max(x4(i4)), max(y4(i4)), max(z4),(u4(i4)),(v4(i4)),(w4(i4))];
table2(4).final_position = [x4(end), y4(end), z4(end), u4(end), v4(end), w4(end)];

p2a = table2(1);
p2b = table2(2);
p2c = table2(3);
p2d = table2(4);

%% Task 2C
figure
plot3(x1,y1,z1,'b',x2,y2,z2,'r', x3,y3,z3,'y', x4,y4,z4,'m');
title('Trajectory of a tennis ball launched with Umag = 40 m/s, phi = 45, theta = 45 with different coefficients of friction');
xlabel('x(m)'), ylabel('y(m)'), zlabel('z(m)');
axis([0, 120, 0, 120, 0, 40]);
legend('C = 0.0', 'C = 0.2', 'C = 0.4', 'C = 0.6');
grid on;

p2e = 'See Figure 2';

%% Task 3A
see 'trackprojectile.m';

%% Task 3B
[T1, X1, Y1, Z1, U1, V1, W1] = trackprojectile(0,0,0,40,45,45,0.2);
[T2, X2, Y2, Z2, U2, V2, W2] = trackprojectile(1,2,3,40,10,60,0.2);
[T3, X3, Y3, Z3, U3, V3, W3] = trackprojectile(2,3,4,40,60,55,0.2);

table3(1) = struct('Trajectory', 1, 'total_time', T1(end),'final_position', [X1(end)]);
table3(1).final_position = [X1(end), Y1(end), Z1(end), U1(end), V1(end), W1(end)];

table3(2) = struct('Trajectory', 2, 'total_time', T2(end),'final_position', [X2(end)]);
table3(2).final_position = [X2(end), Y2(end), Z2(end), U2(end), V2(end), W2(end)];

table3(3) = struct('Trajectory', 3, 'total_time', T3(end),'final_position', [X3(end)]);
table3(3).final_position = [X3(end), Y3(end), Z3(end), U3(end), V3(end), W3(end)];

p3a = table3(1);
p3b = table3(2);
p3c = table3(3);

%% Task 3C
load 'terrain.mat';
figure
plot3(X1,Y1,Z1,'k',X2,Y2,Z2,'r', X3,Y3,Z3,'b');
hold on;
plot3(X1(end),Y1(end),Z1(end),'.k','MarkerSize',30);
hold on;
plot3(X2(end),Y2(end),Z2(end),'.r','MarkerSize',30);
hold on;
plot3(X3(end),Y3(end),Z3(end),'.b','MarkerSize',30);
hold on;
title('Projectile of a tennis ball on a terrain with Umag = 40 m/s; C = 0.2');
xlabel('x(m)'), ylabel('y(m)'), zlabel('z(m)');
axis([0, 100, 0, 100, 0, 40]);
legend('Traj. 1', 'Traj. 2', 'Traj. 3');
grid on;
hold on;
b = surf(terrain.x, terrain.y, terrain.z);
set (b, 'edgecolor', 'none');

p3d = 'See Figure 3';