clear all
close all

figure

subplot(2,2,1)

z1=load('k6.dat');
z2=load('k10.dat');
z3=load('k14.dat');
z4=load('k18.dat');

plot(z1(:,1),z1(:,2),z2(:,1),z2(:,2),z3(:,1),z3(:,2),z4(:,1),z4(:,2),'LineWidth',2)
axis([0 180 0 65])

legend('k_2=6','k_2=10','k_2=14','k_2=18');
set(gca,'FontSize',28,'LineWidth',2,'XTick',[0;50;100;150],'YTick',[0;20;40;60]);
xlabel('\theta_{E50}','FontSize',28);
ylabel('M_{50}','FontSize',28,'Rotation',0);
title('(a)','FontSize',28,'FontWeight','normal');

subplot(2,2,2)

z1=load('k6LMRdRp.dat');
z2=load('k10LMRdRp.dat');
z3=load('k14LMRdRp.dat');
z4=load('k18LMRdRp.dat');

plot(z1(:,1),z1(:,2),z2(:,1),z2(:,2),z3(:,1),z3(:,2),z4(:,1),z4(:,2),'LineWidth',2)
axis([0 50 33.6 35.2])

legend('k_2=6','k_2=10','k_2=14','k_2=18');
set(gca,'FontSize',28,'LineWidth',2,'XTick',[0;20;40],'YTick',[0;33.6;34.4;35.2]);
xlabel('M_{50}','FontSize',28);
ylabel('RI_{50}','FontSize',28,'Rotation',0);
title('(b)','FontSize',28,'FontWeight','normal');