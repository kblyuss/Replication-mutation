clear all
close all

figure

subplot(2,2,1)

z1=load('rdrp5.dat');
z2=load('rdrp10.dat');
z3=load('rdrp15.dat');
z4=load('rdrp20.dat');

plot(z1(:,1),z1(:,2),z2(:,1),z2(:,2),z3(:,1),z3(:,2),z4(:,1),z4(:,2),'LineWidth',2)
axis([0 90 0 45])

legend('\theta_E=5','\theta_E=10','\theta_E=15','\theta_E=20');
set(gca,'FontSize',28,'LineWidth',2,'XTick',[0;30;60;90],'YTick',[0;15;30;45]);
xlabel('\theta_{E50}','FontSize',28);
ylabel('RI_{50}','FontSize',28,'Rotation',0);
title('(a)','FontSize',28,'FontWeight','normal');

subplot(2,2,2)

z1=load('rdrpnon3.dat');
z2=load('rdrpnon5.dat');
z3=load('rdrpnon7.dat');
z4=load('rdrpnon9.dat');

plot(z1(:,1),z1(:,2),z2(:,1),z2(:,2),z3(:,1),z3(:,2),z4(:,1),z4(:,2),'LineWidth',2)
axis([0 5.3 0 90])
legend('RI=3','RI=5','RI=7','RI=9');
set(gca,'FontSize',28,'LineWidth',2,'XTick',[0;2;4],'YTick',[0;20;40;60;80]);
xlabel('\theta_{E}','FontSize',28);
ylabel('RI_{50}','FontSize',28,'Rotation',0);
title('(b)','FontSize',28,'FontWeight','normal');

subplot(2,2,3)

z1=load('exon06.dat');
z2=load('exon09.dat');
z3=load('exon12.dat');
z4=load('exon15.dat');

plot(z1(:,1),z1(:,2),z2(:,1),z2(:,2),z3(:,1),z3(:,2),z4(:,1),z4(:,2),'LineWidth',2)
axis([0 45 0 30])

legend('\theta_E=0.6','\theta_E=0.9','\theta_E=1.2','\theta_E=1.5');
set(gca,'FontSize',28,'LineWidth',2,'XTick',[0;15;30;45],'YTick',[0;15;30;45]);
xlabel('\theta_{E50}','FontSize',28);
ylabel('EI_{50}','FontSize',28,'Rotation',0);
title('(c)','FontSize',28,'FontWeight','normal');

subplot(2,2,4)

z1=load('exon12rdrp.dat');
z2=load('exon13rdrp.dat');
z3=load('exon14rdrp.dat');
z4=load('exon15rdrp.dat');

plot(z1(:,1),z1(:,2),z2(:,1),z2(:,2),z3(:,1),z3(:,2),z4(:,1),z4(:,2),'LineWidth',2)
axis([0 15 0 7])

legend('\theta_R=1.2','\theta_R=1.3','\theta_R=1.4','\theta_R=1.5');
set(gca,'FontSize',28,'LineWidth',2,'XTick',[0;5;10;15],'YTick',[0;2;4;6]);
xlabel('\theta_{E50}^{EI}','FontSize',28);
ylabel('\theta_{E50}^{RI}','FontSize',28,'Rotation',0);
title('(d)','FontSize',28,'FontWeight','normal');

