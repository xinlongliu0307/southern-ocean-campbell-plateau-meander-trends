% Fig.1: ADT and ADT gradient
for p1 = 1:32:10013
    date_plot = datestr(alti_time(p1),'dd mmm yyyy');
    date2 = datestr(alti_time(p1),'yyyy_mm_dd');
    fig100 = figure('Name','100','Visible','off');
    hold on;
    % ADT Figure
    subplot(2,1,1)
    pcolor(repmat(alti_lon,1,length(alti_lat)),repmat(alti_lat,length(alti_lon),1),alti_ADT(:,:,p1));
    shading flat;
    hcb1 = colorbar;
    mapshow(coastlon,coastlat,'DisplayType','polygon','FaceColor','black');
    set(get(hcb1,'xlabel'),'string','ADT (m)','fontsize',10,'FontWeight','normal','Interpreter','latex');
    xlim([150 210]);
    ylim([-70 -30]);
    set(gca,'TickLabelInterpreter','latex');
    ylabel('Latitude','Interpreter','latex');
    title('Absolute dynamic topography (ADT)','Interpreter','latex');
    % ADT Gradient Figure
    subplot(2,1,2)
    pcolor(repmat(alti_lon,1,length(alti_lat)),repmat(alti_lat,length(alti_lon),1),d_ADT(:,:,p1)*100000); % from m/m to m/100km
    caxis([0 1.5]);
    shading flat;
    hcb1 = colorbar;
    mapshow(coastlon,coastlat,'DisplayType','polygon','FaceColor','black');
    xlim([150 210]);
    ylim([-70 -30]);
    set(gca,'TickLabelInterpreter','latex');
    set(get(hcb1,'xlabel'),'string','gradient ADT (m/100km)','fontsize',10,'FontWeight','normal','Interpreter','latex');
    hold on
    xlabel('Longitude','Interpreter','latex');
    ylabel('Latitude','Interpreter','latex');
    set(gca,'TickLabelInterpreter','latex');
    title('Gradient of ADT','Interpreter','latex');
    annotation('textbox','String',['' date_plot ''],'FontSize',9,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.80 0.95 0.15 0.05],'backgroundcolor','none','Interpreter','latex');
    set(gcf,'PaperPositionMode','auto');
    set(gcf,'renderer','painters');
    print(fig100,'-dpng',['D:\Desktop\Honours Research Project\Matlab code for Meander analysis\CP_SLA_Data\ADT_Grad_ADT_Plot\Fig1_ADT_' date2 '.png']);
end