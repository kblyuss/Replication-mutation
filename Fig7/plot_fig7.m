clear all
close all

figure

subplot(2,2,1)

z11=load('trtea01.dat');
z12=load('trtea03.dat');
z13=load('trtea05.dat');
z14=load('trtea095.dat');

plot(z11(:,1),z11(:,2),'k-',z12(:,1),z12(:,2),'r--',z13(:,1),z13(:,2),'b-.',z14(:,1),z14(:,2),'m:','LineWidth',2);
axis([0 5 0 15])

legend('\alpha=0.1','\alpha=0.3','\alpha=0.5','\alpha=0.95');
set(gca,'FontSize',32,'LineWidth',2,'XTick',[0;2;4]);
xlabel('\theta_R','FontSize',32);
ylabel('\theta_E','FontSize',32,'Rotation',0);
title('(a)','FontSize',32,'FontWeight','normal');

subplot(2,2,2);

z21=load('temutr17.dat');
z22=load('temutr19.dat');
z23=load('temutr21.dat');
z24=load('temutr23.dat');

plot(z21(:,1),z21(:,2),'k-',z22(:,1),z22(:,2),'r--',z23(:,1),z23(:,2),'b-.',z24(:,1),z24(:,2),'m:','LineWidth',2);

legend('\theta_R=1.7','\theta_R=1.9','\theta_R=2.1','\theta_R=2.3');
axis([-5 3 0 1])
set(gca,'FontSize',32,'LineWidth',2,'XTick',[-4;-2;0;2],'YTick',[0;0.3;0.6;1]);
xlabel('log(\theta_E)','FontSize',32);%,Interpreter='latex');
ylabel('1-\mu','FontSize',32,'Rotation',0);
title('(b)','FontSize',32,'FontWeight','normal');

subplot(2,2,3);

z21=load('tek1a01m045.dat');
z22=load('tek1a01m06.dat');
z23=load('tek1a01m075.dat');
z24=load('tek1a01m09.dat');

plot(z21(:,1),z21(:,2),'k-',z22(:,1),z22(:,2),'r--',z23(:,1),z23(:,2),'b-.',z24(:,1),z24(:,2),'m:','LineWidth',2);

legend('\mu=0.45','\mu=0.6','\mu=0.75','\mu=0.9');

axis([0 1.5 0 0.7])
set(gca,'FontSize',32,'LineWidth',2,'XTick',[0;0.5;1;1.5],'YTick',[0;0.3;0.6]);
xlabel('\theta_E','FontSize',32);
ylabel('k_1','FontSize',32,'Rotation',0);
title('(c)','FontSize',32,'FontWeight','normal');

subplot(2,2,4);

z21=load('tek1a09m08.dat');
z22=load('tek1a09m085.dat');
z23=load('tek1a09m09.dat');
z24=load('tek1a09m095.dat');

plot(z21(:,1),z21(:,2),'k-',z22(:,1),z22(:,2),'r--',z23(:,1),z23(:,2),'b-.',z24(:,1),z24(:,2),'m:','LineWidth',2);

legend('\mu=0.8','\mu=0.85','\mu=0.9','\mu=0.95');

axis([0 0.23 0 0.25])
set(gca,'FontSize',32,'LineWidth',2,'XTick',[0;0.1;0.2],'YTick',[0;0.1;0.2]);
xlabel('\theta_E','FontSize',32);
ylabel('k_1','FontSize',32,'Rotation',0);
title('(d)','FontSize',32,'FontWeight','normal');

% figure(1)
% hold on
% annotation('textbox', [0.5, 0.2, 0.25, 0.1], 'String', 'Copying fidelity','FontSize',30,'Rotation',90)

