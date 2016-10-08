Orysya Stus

function E=expectedvalue (pmf, indices)
E=sum(pmf.*indices);
end

function V=variance(pmf,indices)
E=sum(pmf.*indices);
aj=(indices-E).^2;
V=sum(pmf.*aj);
end

x=[.4;.2;.3;.1];
y=[.3,.2,.3,.2;.2,.3,.2,.3;.3,.2,.3,.2;.2,.3,.2,.3];
A=x(1)*y(1,:);
B=x(2)*y(2,:);
C=x(3)*y(3,:);
D=x(4)*y(4,:);
jointPMFXY=[A;B;C;D]

function [PX,PY]=marginalizeJointPMF(jointPMFXY)
j1=sum(jointPMFXY(1,:));
j2=sum(jointPMFXY(2,:));
j3=sum(jointPMFXY(3,:));
j4=sum(jointPMFXY(4,:));
PX=[j1;j2;j3;j4];
k1=sum(jointPMFXY(:,1));
k2=sum(jointPMFXY(:,2));
k3=sum(jointPMFXY(:,3));
k4=sum(jointPMFXY(:,4));
PY=[k1;k2;k3;k4];
end

function PXgivenY=conditionalPMFk(jointPMFXY,k)
PY=[.27;.23;.27;.23];
PXgivenY=jointPMFXY(:,k)/PY(k);
end

function PYgivenX=conditionalPMFi(jointPMFXY,i)
PX=[0.4;0.2;0.3;0.1];
PYgivenX=jointPMFXY(:,i)./PX
end

k=1;
pmf=conditionalPMFk(jointPMFXY,k);
indices=[1;2;3;4];
varXgivenY1=variance(pmf,indices)
k=2;
pmf=conditionalPMFk(jointPMFXY,k);
EXgivenY2=expectedvalue(pmf,indices)