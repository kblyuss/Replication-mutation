clear all
close all

x0=[0.55;0.45;0.15;0.23];
x1=[0.7;0.2;0.005;0.01];

mu=0.05;
a=0.3; %0.1; 0.5; 0.95
k1=0.7;

N=500;

tr_range=linspace(1.5,2.5,N);
te_range=linspace(0,15,N);

z0=zeros(N);
z1=zeros(N);
ll=zeros(N);


for i=1:N
    for j=1:N
        z0(i,j)=NaN;
        z1(i,j)=NaN;
        ll(i,j)=NaN;
    end;
end;

for i=1:N
    tr=tr_range(i);
    for j=1:N
        te=te_range(j);
        
        p0=0;
        n0=0;
        p1=0;
        n1=0;
        
        phi=p0+n0+p1+n1;
        
        J=[-1-(1-mu)*tr*n0 (1-mu)*tr*(1-n0-phi) te-(1-mu)*tr*n0 -(1-mu)*tr*n0;
            a*(1-mu)*tr*(1-phi-p0) -1-a*(1-mu)*tr*p0 -a*(1-mu)*tr*p0 te-a*(1-mu)*tr*p0;
            -tr*(k1*n1+mu*n0) tr*(mu*(1-n0-phi)-k1*n1) -te-1-tr*(k1*n1+mu*n0) tr*(-mu*n0+k1*(1-n1-phi));
            a*tr*(mu*(1-p0-phi)-k1*n1) -a*tr*(mu*p0+k1*p1) a*tr*(-mu*p0+k1*(1-p1-phi)) -te-1-a*tr*(mu*p0+k1*p1)];
            
            
        lambda=eigs(J);
        if (max(real(lambda))>1e-7)
                z0(i,j)=0;
        else
                z0(i,j)=1;
        end;
        
    end;
    
end;

bounds=[];
npts=0;

for j=1:N
    for i=2:N
        if (z0(i,j)<1) && (z0(i-1,j)>0)
            npts=npts+1;
            bounds(npts,1)=tr_range(i);
            bounds(npts,2)=te_range(j);
            break;
        end;
    end;
end;

figure;
plot(bounds(:,1),bounds(:,2));
axis([0 5 0 15])

fid=fopen('trtea03.dat','w');
for i=1:npts
    fprintf(fid,'%g %g\n',bounds(i,1),bounds(i,2));
end;

fclose(fid);