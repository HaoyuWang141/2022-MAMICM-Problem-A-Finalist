x=0:0.1:44.2
f=@(x) -30.57.*(x>=0&x<3.5)+44.2*(x>=5&x<10)-36.67*(x>=10&x<14.8)+45*(x>16&x<18)-45.01*(x>22&x<24)+30.44*(x>27.5&x<32)-27.2*(x>32&x<37)+30*(x>37&x<40)
g1=@(x) 236.93*(x>=0&x<3.5)+263.25*(x>=3.5&x<5)+530*(x>=5&x<10)+236.93*(x>=10&x<14.8)+263.25*(x>=14.8&x<16)+530*(x>=16&x<18)+263.25*(x>=18&x<22)+236.93*(x>=22&x<24)+263.25*(x>=24&x<27.5)+500*(x>=27.5&x<32)+236.93*(x>=32&x<37)+500*(x>=37&x<40)+263.25*(x>=40&x<=44.2)
g2=@(x) 318.33*(x>=0&x<3.5)+353.70*(x>=3.5&x<5)+515*(x>=5&x<10)+318.33*(x>=10&x<14.8)+353.70*(x>=14.8&x<16)+515*(x>=16&x<18)+353.70*(x>=18&x<22)+318.33*(x>=22&x<24)+353.70*(x>=24&x<27.5)+460*(x>=27.5&x<32)+318.33*(x>=32&x<37)+460*(x>=37&x<40)+353.70*(x>=40&x<=44.2)
g3=@(x) 200*(x>=0&x<3.5)+225*(x>=3.5&x<5)+335*(x>=5&x<10)+200*(x>=10&x<14.8)+225*(x>=14.8&x<16)+335*(x>=16&x<18)+225*(x>=18&x<22)+200*(x>=22&x<24)+225*(x>=24&x<27.5)+330*(x>=27.5&x<32)+200*(x>=32&x<37)+330*(x>=37&x<40)+225*(x>=40&x<=44.2)
figure(1)
plot(x,f(x),LineWidth=3)

figure(2)
hold on;
%plot(x,g1(x),LineWidth=2.5)
plot(x,g2(x),LineWidth=2.5)
%plot(x,g3(x),LineWidth=2.5)
xlabel('distance / km');
ylabel('Power / W');
set(gca,'FontName','Times New Roman','FontSize',25,'LineWidth',2);
title('Power-distance','FontSize',35);
%hl=legend('Sprinter','Time Specialist','Female bicyclist','FontSize',25);
yticks(150:50:600)
ylim([150,600])