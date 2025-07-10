clear all
close all

x0=[0.55;0.45;0.15;0.23];
x1=[0.7;0.2;0.005;0.01];

k1=0.7;

N=400;

tr=2.3;
tel_range=linspace(-5.5,-2,N);

mu_range=linspace(0,1,N);

z0=zeros(N);
z1=zeros(N);
ll=zeros(N);

a=0.36;

for i=1:N
    for j=1:N
        z0(i,j)=NaN;
        z1(i,j)=NaN;
        ll(i,j)=NaN;
    end;
end;

for i=1:N
    te=exp(tel_range(i));
    for j=1:N
        mu=mu_range(j);
        
        p0=0;
        n0=0;
        p1=0;
        n1=0;
        
        phi=p0+n0+p1+n1;
        
        J=[-1-(1-mu)*tr*n0 (1-mu)*tr*(1-n0-phi) te-(1-mu)*tr*n0 -(1-mu)*tr*n0;
            a*(1-mu)*tr*(1-phi-p0) -1-a*(1-mu)*tr*p0 -a*(1-mu)*tr*p0 te-a*(1-mu)*tr*p0;
            -tr*(k1*n1+mu*n0) tr*(mu*(1-n0-phi)+k1*n1) -te-1-tr*(k1*n1+mu*n0) tr*(-mu*n0+k1*(1-n1-phi));
            a*tr*(mu*(1-p0-phi)-k1*n1) -a*tr*(mu*p0+k1*p1) a*tr*(-mu*p0+k1*(1-p1-phi)) -te-1-a*tr*(mu*p0+k1*p1)];
            
            
        lambda=eigs(J);
        if (max(real(lambda))>1e-7)
                z0(i,j)=0;
        else
                z0(i,j)=1;
        end;
        
    end;
    
end;

bound=[];
npts=0;

for j=1:N
    if z0(1,j)>0
        npts=npts+1;
        for i=1:N
            if z0(i,j)<1
                bound(npts,1)=tel_range(i);
                bound(npts,2)=1-mu_range(j);
                break;
            end;
        end;
    end;
end;

figure
plot(bound(:,1),bound(:,2));

fid=fopen('temutr23.dat','w');

for i=1:length(bound)
    fprintf(fid,'%g %g\n',bound(i,1),bound(i,2));
end;

fclose(fid);

