% Fig.3: X-month Mean Meander Occurrence
for p3 = floor(x_months/2+1) : length(meand_time) - floor(x_months/2)
    date_plot = datestr(alti_time_monthly(p3),'mmm yyyy');
    date4 = datestr(alti_time_monthly(p3),'yyyy_mm');
    fig300 = figure('Name','300','Visible','off');
    hold on;
    pcolor(repmat(alti_lon,1,length(alti_lat)),repmat(alti_lat,length(alti_lon),1),alti_sumfront(:,:,p3));
    shading flat;
    hcb1 = colorbar;
    caxis([0 x_days]);
    mapshow(coastlon,coastlat,'DisplayType','polygon','FaceColor','black');
    set(get(hcb1,'xlabel'),'string','Meander frequency','fontsize',10,'FontWeight','normal','Interpreter','latex');
    xlim([150 210]);
    ylim([-70 -30]);
    set(gca,'TickLabelInterpreter','latex');
    xlabel('Longitude','Interpreter','latex');
    ylabel('Latitude','Interpreter','latex');
    title(['Mean meander occurrence over a ' int2str(x_months) ' month period'],'Interpreter','latex');
    annotation('textbox','String',['' date_plot ''],'FontSize',9,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.80 0.95 0.15 0.05],'backgroundcolor','none','Interpreter','latex');
    annotation('textbox','String',['Relative detection threshold ' int2str(relat_thresh*100) '\%'],'FontSize',8,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.65 0.01 0.35 0.05],'backgroundcolor','none','Interpreter','latex');
    set(gcf,'PaperPositionMode','auto');
    set(gcf,'renderer','painters');
    print(fig300,'-dpng',['G:\Fig3_Mean_Meander_Occur_x_Month\Threshold_25%_Fourteen_Month\Fig3_Mean_Meander_' date4 '.png']);
end