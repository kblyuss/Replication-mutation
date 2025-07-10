clear all
close all

t0=cputime;

mu0=0.05;
a=0.95;
tr=1.4;
k1=0.7;

N=400;

M50_range=linspace(0,55,N); 
RI50_range=linspace(33.8,35,N);

TE=20;
TE50=50;
X=TE50/(TE50+TE); % percentage of RdRp inhibiting drugs NOT excised by ExoN

M=20;
RI=20;

z0=zeros(N);
z1=zeros(N);

for i=1:N
    for j=1:N
        z0(i,j)=NaN;
        z1(i,j)=NaN;
     end;
end;

k2=18;

for i=1:N
    M50=M50_range(i);
    mu=mu0*(1+k2*M*X/(M+M50));
    
    for j=1:N
        
        RI50=RI50_range(j);
        redR=1-(RI/(RI+RI50))*X; % reduction in theta_R as a result of RdRp inhibiting drug, with account for its excision by ExoN
        
        J0=[-1 (1-mu)*tr*redR TE 0;
            a*(1-mu)*tr*redR -1 0 TE;
            0 tr*redR*mu -TE-1 tr*redR*k1;
            a*tr*redR*mu 0 a*tr*redR*k1 -TE-1];
            
        lambda=eigs(J0);
        if (max(real(lambda))>1e-7)
                z0(i,j)=0;
        else
                z0(i,j)=1;
        end;
        
    end;
    
end;

bounds=[];
npts=0;

for j=N:(-1):1
    if (z0(1,j)>0) && (z0(end,j)<1)
    for i=1:(N-1)
        if (z0(i,j)>0) && (z0(i+1,j)<1)
            npts=npts+1;
            bounds(npts,1)=M50_range(i);
            bounds(npts,2)=RI50_range(j);
            break;
        end;
    end;
    end;
end;

figure;
plot(bounds(:,1),bounds(:,2));

fid=fopen('k18LMRdRp.dat','w');
for i=1:npts
    fprintf(fid,'%g %g\n',bounds(i,1),bounds(i,2));
end;

fclose(fid);

