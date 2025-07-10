clear all
close all

x=linspace(0.5,1,1000);
y=1./(2*x);

fid=fopen('bound.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x(i),y(i));
end;

fclose(fid);

m=0.15;
k1=1-m;
a=1/(2*k1);

xa=linspace(a,1,1000);
ya=k1*ones(1000,1);

fid=fopen('bound15h.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',xa(i),ya(i));
end;

fclose(fid);

xa=a*ones(1000,1);
ya=linspace(k1,0,1000);

fid=fopen('bound15v.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',xa(i),ya(i));
end;

fclose(fid);

x1=linspace(0.5,a,1000);
y1=1./(2*x1);

fid=fopen('bound15upper.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);

x2=linspace(a,1,1000);
y2=1./(2*x2);

fid=fopen('bound15lower.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x2(i),y2(i));
end;

fclose(fid);

m=0.3;
k1=1-m;
a=1/(2*k1);

xa=linspace(a,1,1000);
ya=k1*ones(1000,1);

fid=fopen('bound30h.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',xa(i),ya(i));
end;

fclose(fid);

x1=linspace(0.5,a,1000);
y1=1./(2*x1);

fid=fopen('bound30upper.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);

x2=linspace(a,1,1000);
y2=1./(2*x2);

fid=fopen('bound30lower.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x2(i),y2(i));
end;

fclose(fid);

xa=a*ones(1000,1);
ya=linspace(k1,0,1000);

fid=fopen('bound30v.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',xa(i),ya(i));
end;

fclose(fid);

x1=linspace(0,0.5,1000);
y1=ones(1000);

fid=fopen('tbound.dat','w');

for i=1:1000
    fprintf(fid,'%g %g\n',x1(i),y1(i));
end;

fclose(fid);








