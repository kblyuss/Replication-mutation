clear all
close all

k1=0.6;

x=linspace(0.5,1/(2*k1),1000);
y=1./(2*x);

fid=fopen('curve1k06.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

x=linspace(1/(2*k1),1,100);
y=k1*ones(100,1);

fid=fopen('curve2k06.dat','w');

for i=1:100
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

x=(1/(2*k1))*ones(100,1);
y=linspace(k1,1,100);

fid=fopen('curve3k06.dat','w');

for i=1:100
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

x=(1/(2*k1))*ones(100,1);
y=linspace(0,k1,100);

fid=fopen('curve4k06.dat','w');

for i=1:100
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

%%%%%%%%%%%%%%

k1=0.7;

x=linspace(0.5,1/(2*k1),1000);
y=1./(2*x);

fid=fopen('curve1k07.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

x=linspace(1/(2*k1),1,100);
y=k1*ones(100,1);

fid=fopen('curve2k07.dat','w');

for i=1:100
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

x=(1/(2*k1))*ones(100,1);
y=linspace(k1,1,100);

fid=fopen('curve3k07.dat','w');

for i=1:100
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

x=(1/(2*k1))*ones(100,1);
y=linspace(0,k1,100);

fid=fopen('curve4k07.dat','w');

for i=1:100
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

%%%%%%%%%%%%%

x=0.5*ones(100,1);
y=linspace(0,1,100);

fid=fopen('curvek1.dat','w');

for i=1:100
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);








