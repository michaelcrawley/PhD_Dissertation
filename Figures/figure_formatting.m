font = 'Times New Roman';
fontsize = 14;
boxsize  = [0 0 5 3];
% boxsize  = [0 0 6 2.75];
% boxsize  = [0 0 4.75 3.75];
% boxsize = [0 0 6.5 4];

set(gcf,'windowstyle','normal');
set(gcf,'paperpositionmode','auto');
drawnow;
set(gcf,'units','inches');
set(gcf,'position',boxsize);
set(gca,'layer','top');
set(gca,'linewidth',1);

h = gcf;
children = get(h,'children');

for n=1:length(children)
    set(children(n),'fontname',font);
    set(children(n),'fontsize',fontsize);
    
    grandchildren = get(children(n));
    try
        set(grandchildren.XLabel,'fontname',font);
        set(grandchildren.YLabel,'fontname',font);
        set(grandchildren.XLabel,'fontsize',fontsize);
        set(grandchildren.YLabel,'fontsize',fontsize);
    catch
        
    end
end

filename = input('Input file name: ','s');

saveas(h,[filename,'.fig']);
export_fig(filename,'-png','-transparent','-r600');
close(h);