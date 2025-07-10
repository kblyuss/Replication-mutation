clear all
close all

mu=0.05;
a=0.95;
tr=1.2;
k1=0.7;

N=400;

RI50_range=linspace(15,35,N); 
TE_range=linspace(0,6,N);

z0=zeros(N);
z1=zeros(N);

for i=1:N
    for j=1:N
        z0(i,j)=NaN;
        z1(i,j)=NaN;
     end;
end;

RI=3;

for i=1:N
    TE=TE_range(i);
    
    for j=1:N
        RI50=RI50_range(j);
        
        redR=1-(RI/(RI+RI50)); % reduction in theta_R as a result of RdRp inhibiting drug, with account for its excision by ExoN
        
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
            bounds(npts,1)=TE_range(i);
            bounds(npts,2)=RI50_range(j);
            break;
        end;
    end;
    end;
end;

figure;
plot(bounds(:,1),bounds(:,2));
axis([0 5 0 30])

fid=fopen('rdrpnon3.dat','w');
for i=1:npts
    fprintf(fid,'%g %g\n',bounds(i,1),bounds(i,2));
end;

fclose(fid);
