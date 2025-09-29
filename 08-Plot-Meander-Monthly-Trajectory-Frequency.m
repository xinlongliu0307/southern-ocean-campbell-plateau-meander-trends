for i = floor(x_months/2+1) : length(meand_time) - floor(x_months/2)
    % Fig.5 Meander monthly position based on the 4-month sum map
    fig500 = figure('Name','5','Visible','off','Position',[30 100 800 400]);
    date_plot = datestr(meand_time(i),'mmm yyyy');
    date2 = datestr(meand_time(i),'yyyy_mm');
    hold on
    pcolor(repmat(meand_lon,1,length(meand_lat)),repmat(meand_lat,length(meand_lon),1),meand_sumfront(:,:,i));
%     colormap('jet')
    plot(meand_loc_lon(:,i),meand_loc_lat(:,i),'color',rgb('red'),'linewidth',3);
    %      plot(meand_loc_lon(:,i),meand_N_lat(:,i),'color',rgb('Red'),'linewidth',0.5);
    %      plot(meand_loc_lon(:,i),meand_S_lat(:,i),'color',rgb('Red'),'linewidth',0.5);
    shading flat;
    hcb1 = colorbar;
    caxis([0 x_days]);
    mapshow(coastlon,coastlat,'DisplayType','polygon','FaceColor','black');
    set(get(hcb1,'xlabel'),'string','Frequency','fontsize',12,'FontWeight','normal','Interpreter','latex');
    xlabel('Longitude','Interpreter','latex');
    ylabel('Latitude','Interpreter','latex');
    xlim([150 210]);
    ylim([-70 -30]);
    set(gca,'TickLabelInterpreter','latex','FontSize',12);
%     title(['Meander monthly trajectory (based on the ' int2str(x_months) ' month sum)'],'FontSize',9,'Interpreter','latex');
    annotation('textbox','String',['' date_plot ''],'FontSize',12,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.80 0.95 0.15 0.05],'backgroundcolor','none','Interpreter','latex');
    %      annotation('textbox','String',['Relative detection threshold ' int2str(relat_thresh*100) '\%'],'FontSize',8,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.65 0.01 0.35 0.05],'backgroundcolor','none','Interpreter','latex');
    set(gcf,'PaperPositionMode','auto');
    set(gcf,'renderer','painters');
    print(fig500,'-dpdf',['G:\meander_monthly_position_jumps\Meander_monthly_position_' date2 '.pdf']);
end
