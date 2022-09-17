plot(1./exp(linspace(0,6,1000)),'k'); hold on
plot(1./exp(linspace(0,4,1000)),'k--'); hold on
plot(1./exp(linspace(0,3,1000)),'k--'); hold on
plot(1./exp(linspace(0,2.5,1000)),'k--'); hold on
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
xlabel('Subsystem separation')
ylabel('Correlation')
box off
ax = gca;
ax.FontSize = 20;

X = [0.3 .5];
Y = [.4   0.4];
annotation('arrow',X,Y);

outerpos = ax.OuterPosition;
ti = ax.TightInset;
left = outerpos(1) + ti(1);
bottom = outerpos(2) + ti(2);
ax_width = outerpos(3) - ti(1) - ti(3);
ax_height = outerpos(4) - ti(2) - ti(4);
ax.Position = [left bottom ax_width ax_height];

% inset plot
axes('Position',[.7 .7 .25 .25])
box on
x2 = [-3:.1:3];
y2 = normpdf(x2,0,0.6);
plot(x2,y2,'k')
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
xlabel('Mean firing rate')
ylabel('Probability')

ax = gca;
ax.FontSize = 20;