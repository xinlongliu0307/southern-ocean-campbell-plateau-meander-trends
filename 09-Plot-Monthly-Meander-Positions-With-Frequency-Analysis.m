% For every months:
for i = floor(x_months/2+1) + 87 : length(meand_time) - floor(x_months/2)
    date_plot = datestr(meand_time(i),'mmm yyyy');
    date2 = datestr(meand_time(i),'yyyy_mm');
    % Fig.6 Meander position with long term average
    fig600 = figure('Name','6','Visible','off','Position',[30 100 800 400]);
    hold on
    % Plot mean meander location for whole time period
    plot(nanmean(meand_loc_lon(:,:),2),nanmean(meand_loc_lat(:,:),2),'color',rgb('red'),'Linewidth',3,'linestyle','-')
    % Plot mean meander position for that month
    plot(meand_loc_lon(:,i),meand_loc_lat(:,i),'color',rgb('black'),'linewidth',0.8)
    pcolor(repmat(meand_lon,1,length(meand_lat)),repmat(meand_lat,length(meand_lon),1),meand_sumfront(:,:,i));
    plot(nanmean(meand_loc_lon(:,:),2),nanmean(meand_loc_lat(:,:),2),'color',rgb('red'),'Linewidth',3,'linestyle','-')
    plot(meand_loc_lon(:,i),meand_loc_lat(:,i),'color',rgb('black'),'linewidth',0.8)
    shading flat;
    hcb1 = colorbar;
    caxis([0 x_days]);
    mapshow(coastlon, coastlat, 'DisplayType','polygon','FaceColor','black');
    set(get(hcb1,'xlabel'),'string','Meander frequency','fontsize',12,'FontWeight','normal','Interpreter','latex');
    xlim([150 210]);
    ylim([-70 -30]);
    set(gca,'TickLabelInterpreter','latex');
    xlabel('Longitude','Interpreter','latex');
    ylabel('Latitude','Interpreter','latex');
    legend({'Mean meander position 1993-2020'},'Location','southwest','fontsize',10,'Interpreter','latex');
    title(['Meander position (' int2str(x_months) ' month mean)'],'Interpreter','latex');
    annotation('textbox','String',['' date_plot ''],'FontSize',9,'FitBoxToText','off','LineStyle','none','FontWeight','bold','Position',[0.75 0.94 0.15 0.05],'backgroundcolor','none','Interpreter','latex');
    annotation('textbox','String',['Relative detection threshold ' int2str(relat_thresh*100) '\%'],'FontSize',8,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.65 0.01 0.35 0.05],'backgroundcolor','none','Interpreter','latex');
    set(gcf,'PaperPositionMode','auto');
    set(gcf,'renderer','painters');
    print(fig600,'-dpng',['G:\Fig6_Meander_position_with_long_term_average\Experiment9_25%_Fourteen_Month\Fig6_' int2str(x_months) 'm_Meander_position_map_' date2 '.png']);
end
