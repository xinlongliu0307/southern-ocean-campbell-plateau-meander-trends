% Quick plot check peaks positions at each time step 
for i = floor(x_months/2+1) : length(meand_time) - floor(x_months/2);
    date_plot = datestr(meand_time(i),'mmm yyyy');
    date2 = datestr(meand_time(i),'yyyy_mm');
    fig100 = figure('Name','1','Visible','off','Position',[30 100 800 400]);
    hold on
    pcolor(repmat(meand_lon,1,length(meand_lat)),repmat(meand_lat,length(meand_lon),1),meand_sumfront(:,:,i))
    plot(meand_loc_lon(:,i),meand_loc_lat_rollmean(:,i),'color',rgb('Black'),'linewidth',1)
    plot(meand_pks_lon(:,i),meand_pks_lat(:,i),'x','markersize',10,'MarkerEdgeColor',[1 0 0])
    shading flat;
    hcb1 = colorbar;
    caxis([0 x_days]);
    mapshow(coastlon,coastlat,'DisplayType','polygon','FaceColor','black')
    set(get(hcb1,'xlabel'),'string','Frequency','fontsize',12,'FontWeight','normal','Interpreter','latex');
    xlabel('Longitude','Interpreter','latex');
    ylabel('Latitude','Interpreter','latex');
    xlim([150 210]);
    ylim([-70 -30]);
    set(gca,'TickLabelInterpreter','latex');
    title(['' int2str(x_yr_rollmean) 'yr rolling mean meander and peaks positions (' int2str(x_months) ' month mean probability)'],'FontSize',9,'Interpreter','latex')
    annotation('textbox','String',['' date_plot ''],'FontSize',9,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.80 0.95 0.15 0.05],'backgroundcolor','none','Interpreter','latex');
    annotation('textbox','String',['Relative detection threshold ' int2str(relat_thresh*100) '\%'],'FontSize',8,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.65 0.01 0.35 0.05],'backgroundcolor','none','Interpreter','latex');
    annotation('textbox','String',['Min peak prominence ' num2str(pk_prom_min) ''],'FontSize',8,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.10 0.01 0.35 0.05],'backgroundcolor','none','Interpreter','latex');
    set(gcf,'PaperPositionMode','auto');
    set(gcf,'renderer','painters');
    print(fig100,'-dpng',['G:\Fig_Mean_meander_peaks_positions\Threshold_25%_Month_4_Roll_10\Method2_Fig1_' int2str(x_yr_rollmean) 'yr rolling mean meander and peaks positions (' int2str(x_months) ' month mean probability)_' date2 '.png']);
end
