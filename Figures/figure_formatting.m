font = 'Times New Roman';
fontsize = 14;
% boxsize  = [0 0 5 3.75];
boxsize  = [0 0 6 3];
% boxsize  = [0 0 4.75 3.75];

set(gcf,'windowstyle','normal');
set(gcf,'paperpositionmode','auto');
drawnow;
set(gcf,'units','inches');
set(gcf,'position',boxsize);
set(gca,'layer','top');
set(gca,'linewidth',1.5);

children = get(gcf,'children');

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

saveas(gcf,[filename,'.fig']);
export_fig(filename,'-png','-transparent','-r600');
close(gcf);