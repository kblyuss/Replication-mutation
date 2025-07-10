clear all
close all

a=0.1;
theta=4;

x1=linspace(0,1/(sqrt(a)*theta),1000);
y1=1/(sqrt(a)*theta)*ones(1000,1);

fid=fopen('curvea01t4c1.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);

x2=linspace(1/(sqrt(a)*theta),1,1000);

fid=fopen('curvea01t4c2.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x2(i),x2(i));
end;

fclose(fid);

%%%%%%%%%%%

a=0.1;
theta=10;

x1=linspace(0,1/(sqrt(a)*theta),1000);
y1=1/(sqrt(a)*theta)*ones(1000,1);

fid=fopen('curvea01t10c1.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);

x2=linspace(1/(sqrt(a)*theta),1,1000);

fid=fopen('curvea01t10c2.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x2(i),x2(i));
end;

fclose(fid);

%%%%%%%%%%%

a=0.5;
theta=2;

x1=linspace(0,1/(sqrt(a)*theta),1000);
y1=1/(sqrt(a)*theta)*ones(1000,1);

fid=fopen('curvea05t2c1.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);

x2=linspace(1/(sqrt(a)*theta),1,1000);

fid=fopen('curvea05t2c2.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x2(i),x2(i));
end;

fclose(fid);

%%%%%%%%%%%

a=0.5;
theta=4;

x1=linspace(0,1/(sqrt(a)*theta),1000);
y1=1/(sqrt(a)*theta)*ones(1000,1);

fid=fopen('curvea05t4c1.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);

x2=linspace(1/(sqrt(a)*theta),1,1000);

fid=fopen('curvea05t4c2.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x2(i),x2(i));
end;

fclose(fid);

%%%%%%%%%%%

a=0.9;
theta=2;

x1=linspace(0,1/(sqrt(a)*theta),1000);
y1=1/(sqrt(a)*theta)*ones(1000,1);

fid=fopen('curvea09t2c1.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);

x2=linspace(1/(sqrt(a)*theta),1,1000);

fid=fopen('curvea09t2c2.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x2(i),x2(i));
end;

fclose(fid);

%%%%%%%%%%%

a=0.9;
theta=4;

x1=linspace(0,1/(sqrt(a)*theta),1000);
y1=1/(sqrt(a)*theta)*ones(1000,1);

fid=fopen('curvea09t4c1.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);

x2=linspace(1/(sqrt(a)*theta),1,1000);

fid=fopen('curvea09t4c2.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x2(i),x2(i));
end;

fclose(fid);

%%%%%%%%%%%





